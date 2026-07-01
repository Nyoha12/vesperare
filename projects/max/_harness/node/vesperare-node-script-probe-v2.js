"use strict";

const fs = require("fs");
const path = require("path");

const harnessDir = path.resolve(__dirname, "..");
const logsDir = path.join(harnessDir, "logs");
const proofPath = path.join(logsDir, "node-script-probe-proof.json");

fs.mkdirSync(logsDir, { recursive: true });
fs.writeFileSync(
  proofPath,
  `${JSON.stringify({
    schema: "vesperare.max_harness.node_script_probe.v0",
    status: "ok",
    source: "node.script",
    script_dir: __dirname,
    proof_path: proofPath,
    timestamp: new Date().toISOString(),
  }, null, 2)}\n`,
  "utf8"
);

console.log(`vesperare node.script probe wrote ${proofPath}`);
