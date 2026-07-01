"use strict";

const fs = require("fs");
const path = require("path");

let maxApi = null;
try {
  maxApi = require("max-api");
} catch (_error) {
  maxApi = null;
}

const HARNESS_DIR = path.resolve(__dirname, "..");
const COMMAND_PATH = path.join(HARNESS_DIR, "commands", "command.pending.json");
const RESPONSES_DIR = path.join(HARNESS_DIR, "responses");
const LOGS_DIR = path.join(HARNESS_DIR, "logs");
const STATE_DIR = path.join(HARNESS_DIR, "state");
const ACK_PATH = path.join(RESPONSES_DIR, "ack.json");
const ERROR_PATH = path.join(RESPONSES_DIR, "error.json");
const LOG_PATH = path.join(LOGS_DIR, "harness-session.jsonl");
const STATE_PATH = path.join(STATE_DIR, "state.current.json");
const FALLBACK_RUN_ID = "run-node-for-max-harness-v2";

const COMMAND_TYPES = new Set([
  "ping",
  "load_patch",
  "request_state",
  "set_mode",
  "request_log_flush",
  "stop_harness",
]);
const COMMAND_MODES = new Set(["absent", "off", "bypass", "reduit", "active"]);
const COMMAND_TARGETS = new Set(["harness", "patch", "module"]);

function nowIso() {
  return new Date().toISOString();
}

function ensureDirectories() {
  for (const directory of [RESPONSES_DIR, LOGS_DIR, STATE_DIR]) {
    fs.mkdirSync(directory, { recursive: true });
  }
}

function writeJson(filePath, value) {
  fs.writeFileSync(filePath, `${JSON.stringify(value, null, 2)}\n`, "utf8");
}

function appendLog(event) {
  fs.appendFileSync(LOG_PATH, `${JSON.stringify(event)}\n`, "utf8");
}

function eventFor(command, event, level, status, message, data = {}) {
  eventFor.counter = (eventFor.counter || 0) + 1;
  const mode = command && COMMAND_MODES.has(command.mode) ? command.mode : "active";
  return {
    schema: "vesperare.max_harness.log.v0",
    event_id: `evt-node-v2-${Date.now()}-${eventFor.counter}-${event}`,
    run_id: command?.run_id || FALLBACK_RUN_ID,
    command_id: command?.command_id || null,
    timestamp: nowIso(),
    level,
    source: "harness",
    event,
    status,
    mode,
    message,
    data,
  };
}

function validateCommand(command) {
  if (!command || Array.isArray(command) || typeof command !== "object") {
    return "Command file must contain one JSON object.";
  }

  const required = [
    "schema",
    "command_id",
    "run_id",
    "issued_by",
    "created_at",
    "type",
    "target",
    "mode",
    "payload",
    "expect_ack",
  ];
  const allowed = new Set([...required, "notes"]);

  for (const property of required) {
    if (!Object.prototype.hasOwnProperty.call(command, property)) {
      return `Command file is missing required property '${property}'.`;
    }
  }
  for (const property of Object.keys(command)) {
    if (!allowed.has(property)) {
      return `Command file has unsupported property '${property}'.`;
    }
  }
  if (command.schema !== "vesperare.max_harness.command.v0") {
    return `Command file has unsupported schema '${command.schema}'.`;
  }
  if (command.issued_by !== "codex_cli") {
    return `Command file has unsupported issued_by '${command.issued_by}'.`;
  }
  if (!COMMAND_TYPES.has(command.type)) {
    return `Command file has unsupported type '${command.type}'.`;
  }
  if (!COMMAND_TARGETS.has(command.target)) {
    return `Command file has unsupported target '${command.target}'.`;
  }
  if (!COMMAND_MODES.has(command.mode)) {
    return `Command file has unsupported mode '${command.mode}'.`;
  }
  for (const property of ["command_id", "run_id", "issued_by", "created_at", "type", "target", "mode"]) {
    if (typeof command[property] !== "string" || command[property].trim() === "") {
      return `Command file has empty string property '${property}'.`;
    }
  }
  if (Number.isNaN(Date.parse(command.created_at))) {
    return `Command file has an invalid created_at timestamp '${command.created_at}'.`;
  }
  if (typeof command.expect_ack !== "boolean") {
    return "Command file property 'expect_ack' must be a boolean.";
  }
  if (!command.payload || Array.isArray(command.payload) || typeof command.payload !== "object") {
    return "Command file payload must be a JSON object.";
  }
  if (Object.prototype.hasOwnProperty.call(command, "notes") && (typeof command.notes !== "string" || command.notes.trim() === "")) {
    return "Command file has empty optional property 'notes'.";
  }
  return null;
}

function readCommand() {
  const raw = fs.readFileSync(COMMAND_PATH, "utf8").replace(/^\uFEFF/, "");
  return JSON.parse(raw);
}

function writeAck(command, message) {
  writeJson(ACK_PATH, {
    schema: "vesperare.max_harness.ack.v0",
    command_id: command.command_id,
    run_id: command.run_id,
    status: "ack",
    accepted: true,
    message,
  });
}

function writeError(command, errorCode, recoverable, message) {
  writeJson(ERROR_PATH, {
    schema: "vesperare.max_harness.error.v0",
    command_id: command?.command_id || "cmd-node-v2-unreadable",
    run_id: command?.run_id || FALLBACK_RUN_ID,
    status: "error",
    error_code: errorCode,
    recoverable,
    message,
  });
}

function writeState(command) {
  writeJson(STATE_PATH, {
    schema: "vesperare.max_harness.state.v0",
    run_id: command.run_id,
    updated_at: nowIso(),
    source: "harness",
    status: "ok",
    mode: command.mode,
    last_command_id: command.command_id,
    last_event: "state_snapshot",
    capabilities: [
      "node_for_max_file_harness_v2",
      "command_json_read",
      "ack_json_write",
      "jsonl_log_write",
      "state_current_write",
    ],
    errors: [],
    message: "Node for Max harness v2 state only; not audio, DSP, patch 01 or musical validation.",
  });
}

async function outlet(message) {
  if (maxApi) {
    await maxApi.outlet(message);
  } else {
    console.log(message);
  }
}

async function processCommand() {
  ensureDirectories();
  appendLog(eventFor(null, "boot", "info", "ok", "Node for Max harness bridge v2 started; file observability only."));

  let command = null;
  try {
    command = readCommand();
  } catch (error) {
    const message = `Cannot read command.pending.json: ${error.message}`;
    writeError(null, "invalid_payload", true, message);
    appendLog(eventFor(null, "command_error", "error", "failed", message));
    appendLog(eventFor(null, "log_flush", "info", "ok", "Node for Max harness bridge v2 log flush after command read failure."));
    await outlet("error");
    return;
  }

  const validationError = validateCommand(command);
  if (validationError) {
    writeError(command, "invalid_payload", true, validationError);
    appendLog(eventFor(command, "command_error", "error", "failed", validationError));
    appendLog(eventFor(command, "log_flush", "info", "ok", "Node for Max harness bridge v2 log flush after invalid command."));
    await outlet("error");
    return;
  }

  appendLog(eventFor(command, "command_received", "info", "ok", `Command '${command.type}' read by Node for Max harness bridge v2.`));

  if (command.target !== "harness") {
    const message = "Command refused by Node for Max harness bridge v2; only target 'harness' is accepted here.";
    writeError(command, "target_absent", true, message);
    appendLog(eventFor(command, "command_error", "warning", "blocked", message));
    appendLog(eventFor(command, "log_flush", "info", "ok", "Node for Max harness bridge v2 log flush after target refusal."));
    await outlet("error");
    return;
  }

  if (command.type === "ping") {
    writeAck(command, "ping command accepted by Node for Max harness bridge v2.");
    appendLog(eventFor(command, "command_ack", "info", "ok", "ping ack.json written by Node for Max harness bridge v2."));
    appendLog(eventFor(command, "log_flush", "info", "ok", "Node for Max harness bridge v2 log flush after ping."));
    await outlet("ack");
    return;
  }

  if (command.type === "request_state") {
    writeState(command);
    appendLog(eventFor(command, "state_snapshot", "info", "ok", "state.current.json written by Node for Max harness bridge v2."));
    writeAck(command, "request_state command accepted by Node for Max harness bridge v2.");
    appendLog(eventFor(command, "command_ack", "info", "ok", "request_state ack.json written by Node for Max harness bridge v2."));
    appendLog(eventFor(command, "log_flush", "info", "ok", "Node for Max harness bridge v2 log flush after request_state."));
    await outlet("ack");
    return;
  }

  const message = "Command refused by Node for Max harness bridge v2; only ping and request_state are accepted.";
  writeError(command, "unknown_command", true, message);
  appendLog(eventFor(command, "command_error", "warning", "blocked", message));
  appendLog(eventFor(command, "log_flush", "info", "ok", "Node for Max harness bridge v2 log flush after command refusal."));
  await outlet("error");
}

if (maxApi) {
  maxApi.addHandler("bang", processCommand);
  maxApi.addHandler("process", processCommand);
}

processCommand().catch(async (error) => {
  ensureDirectories();
  writeError(null, "max_error", true, `Node for Max harness bridge v2 failed: ${error.message}`);
  appendLog(eventFor(null, "command_error", "error", "failed", `Node for Max harness bridge v2 failed: ${error.message}`));
  await outlet("error");
  process.exitCode = 1;
});
