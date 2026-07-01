{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 8,
      "minor": 6,
      "revision": 0,
      "architecture": "x64",
      "modernui": 1
    },
    "classnamespace": "box",
    "rect": [ 80.0, 80.0, 1280.0, 760.0 ],
    "bglocked": 0,
    "openinpresentation": 0,
    "default_fontsize": 12.0,
    "default_fontface": 0,
    "default_fontname": "Arial",
    "gridonopen": 1,
    "gridsize": [ 15.0, 15.0 ],
    "gridsnaponopen": 1,
    "objectsnaponopen": 1,
    "statusbarvisible": 2,
    "toolbarvisible": 1,
    "lefttoolbarpinned": 0,
    "toptoolbarpinned": 0,
    "righttoolbarpinned": 0,
    "bottomtoolbarpinned": 0,
    "toolbars_unpinned_last_save": 0,
    "tallnewobj": 0,
    "boxanimatetime": 200,
    "enablehscroll": 1,
    "enablevscroll": 1,
    "devicewidth": 0.0,
    "description": "Vesperare Max harness files v1. Separate file-only harness patch.",
    "digest": "",
    "tags": "vesperare harness files v1 file-only non-audio non-final",
    "style": "",
    "subpatcher_template": "",
    "boxes": [
      {
        "box": {
          "id": "obj-1",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [ 45.0, 25.0, 900.0, 22.0 ],
          "text": "Vesperare harness files v1 - separate file-only patch. It does not read or modify patch 01."
        }
      },
      {
        "box": {
          "id": "obj-2",
          "linecount": 3,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [ 45.0, 55.0, 900.0, 48.0 ],
          "text": "Scope: import one command.pending.json at load, route ping/request_state, write ack.json or error.json, write harness-session.jsonl, and write state.current.json for request_state. Technical observability only."
        }
      },
      {
        "box": {
          "id": "obj-3",
          "linecount": 4,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [ 45.0, 115.0, 500.0, 61.0 ],
          "text": "Relative files:\n../commands/command.pending.json\n../responses/ack.json or ../responses/error.json\n../logs/harness-session.jsonl and ../state/state.current.json"
        }
      },
      {
        "box": {
          "id": "obj-4",
          "linecount": 4,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [ 585.0, 115.0, 520.0, 61.0 ],
          "text": "Allowed commands in this v1 patch: ping and request_state. Any other parsed type is refused by error.json. This is not a final object choice, final routing, architecture, performance UI, asset or musical validation."
        }
      },
      {
        "box": {
          "id": "obj-5",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [ "bang" ],
          "patching_rect": [ 65.0, 210.0, 60.0, 22.0 ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "obj-6",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [ "" ],
          "patching_rect": [ 65.0, 245.0, 65.0, 22.0 ],
          "text": "deferlow"
        }
      },
      {
        "box": {
          "id": "obj-7",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [ "bang", "bang", "bang" ],
          "patching_rect": [ 65.0, 280.0, 85.0, 22.0 ],
          "text": "trigger b b b"
        }
      },
      {
        "box": {
          "id": "obj-8",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [ "" ],
          "patching_rect": [ 45.0, 320.0, 500.0, 22.0 ],
          "text": "clear, append {\\\"schema\\\":\\\"vesperare.max_harness.log.v0\\\"\\,\\\"event_id\\\":\\\"evt-max-v1-boot\\\"\\,\\\"run_id\\\":\\\"run-max-harness-files-v1\\\"\\,\\\"command_id\\\":null\\,\\\"timestamp\\\":\\\"2026-07-01T00:00:00Z\\\"\\,\\\"level\\\":\\\"info\\\"\\,\\\"source\\\":\\\"harness\\\"\\,\\\"event\\\":\\\"boot\\\"\\,\\\"status\\\":\\\"ok\\\"\\,\\\"mode\\\":\\\"active\\\"\\,\\\"message\\\":\\\"Max harness files v1 patch loaded; technical file observability only.\\\"\\,\\\"data\\\":{}}"
        }
      },
      {
        "box": {
          "id": "obj-9",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [ "" ],
          "patching_rect": [ 575.0, 320.0, 250.0, 22.0 ],
          "text": "import ../commands/command.pending.json"
        }
      },
      {
        "box": {
          "id": "obj-10",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [ "" ],
          "patching_rect": [ 855.0, 320.0, 70.0, 22.0 ],
          "text": "get type"
        }
      },
      {
        "box": {
          "id": "obj-11",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 4,
          "outlettype": [ "", "", "", "" ],
          "patching_rect": [ 575.0, 360.0, 175.0, 22.0 ],
          "text": "dict v1_command"
        }
      },
      {
        "box": {
          "id": "obj-12",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 5,
          "outlettype": [ "", "", "", "", "" ],
          "patching_rect": [ 575.0, 400.0, 245.0, 22.0 ],
          "text": "route type command_id run_id created_at"
        }
      },
      {
        "box": {
          "id": "obj-13",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 3,
          "outlettype": [ "bang", "bang", "" ],
          "patching_rect": [ 575.0, 440.0, 155.0, 22.0 ],
          "text": "select ping request_state"
        }
      },
      {
        "box": {
          "id": "obj-14",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [ "" ],
          "patching_rect": [ 850.0, 430.0, 190.0, 22.0 ],
          "text": "append   \\\"command_id\\\": \\\"$1\\\"\\,"
        }
      },
      {
        "box": {
          "id": "obj-15",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [ "" ],
          "patching_rect": [ 850.0, 460.0, 190.0, 22.0 ],
          "text": "append   \\\"command_id\\\": \\\"$1\\\"\\,"
        }
      },
      {
        "box": {
          "id": "obj-16",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [ "" ],
          "patching_rect": [ 850.0, 490.0, 215.0, 22.0 ],
          "text": "append   \\\"last_command_id\\\": \\\"$1\\\"\\,"
        }
      },
      {
        "box": {
          "id": "obj-17",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [ "" ],
          "patching_rect": [ 1085.0, 430.0, 155.0, 22.0 ],
          "text": "append   \\\"run_id\\\": \\\"$1\\\"\\,"
        }
      },
      {
        "box": {
          "id": "obj-18",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [ "" ],
          "patching_rect": [ 1085.0, 460.0, 155.0, 22.0 ],
          "text": "append   \\\"run_id\\\": \\\"$1\\\"\\,"
        }
      },
      {
        "box": {
          "id": "obj-19",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [ "" ],
          "patching_rect": [ 1085.0, 490.0, 155.0, 22.0 ],
          "text": "append   \\\"run_id\\\": \\\"$1\\\"\\,"
        }
      },
      {
        "box": {
          "id": "obj-20",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [ "" ],
          "patching_rect": [ 1085.0, 520.0, 170.0, 22.0 ],
          "text": "append   \\\"updated_at\\\": \\\"$1\\\"\\,"
        }
      },
      {
        "box": {
          "id": "obj-21",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 4,
          "outlettype": [ "bang", "bang", "bang", "bang" ],
          "patching_rect": [ 95.0, 500.0, 95.0, 22.0 ],
          "text": "trigger b b b b"
        }
      },
      {
        "box": {
          "id": "obj-22",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [ "" ],
          "patching_rect": [ 45.0, 535.0, 345.0, 22.0 ],
          "text": "clear, append {, append   \\\"schema\\\": \\\"vesperare.max_harness.ack.v0\\\"\\,"
        }
      },
      {
        "box": {
          "id": "obj-23",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [ "" ],
          "patching_rect": [ 410.0, 535.0, 95.0, 22.0 ],
          "text": "get command_id"
        }
      },
      {
        "box": {
          "id": "obj-24",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [ "" ],
          "patching_rect": [ 525.0, 535.0, 70.0, 22.0 ],
          "text": "get run_id"
        }
      },
      {
        "box": {
          "id": "obj-25",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [ "" ],
          "patching_rect": [ 615.0, 535.0, 510.0, 22.0 ],
          "text": "append   \\\"status\\\": \\\"ack\\\"\\,, append   \\\"accepted\\\": true\\,, append   \\\"message\\\": \\\"Ping command accepted by Max harness files v1.\\\", append }, write ../responses/ack.json"
        }
      },
      {
        "box": {
          "id": "obj-26",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [ "" ],
          "patching_rect": [ 615.0, 565.0, 550.0, 22.0 ],
          "text": "append {\\\"schema\\\":\\\"vesperare.max_harness.log.v0\\\"\\,\\\"event_id\\\":\\\"evt-max-v1-ping-received\\\"\\,\\\"run_id\\\":\\\"run-max-harness-files-v1\\\"\\,\\\"command_id\\\":\\\"cmd-from-command-pending-json\\\"\\,\\\"timestamp\\\":\\\"2026-07-01T00:00:01Z\\\"\\,\\\"level\\\":\\\"info\\\"\\,\\\"source\\\":\\\"harness\\\"\\,\\\"event\\\":\\\"command_received\\\"\\,\\\"status\\\":\\\"ok\\\"\\,\\\"mode\\\":\\\"active\\\"\\,\\\"message\\\":\\\"ping command routed by Max harness files v1.\\\"\\,\\\"data\\\":{}}, append {\\\"schema\\\":\\\"vesperare.max_harness.log.v0\\\"\\,\\\"event_id\\\":\\\"evt-max-v1-ping-ack\\\"\\,\\\"run_id\\\":\\\"run-max-harness-files-v1\\\"\\,\\\"command_id\\\":\\\"cmd-from-command-pending-json\\\"\\,\\\"timestamp\\\":\\\"2026-07-01T00:00:02Z\\\"\\,\\\"level\\\":\\\"info\\\"\\,\\\"source\\\":\\\"harness\\\"\\,\\\"event\\\":\\\"command_ack\\\"\\,\\\"status\\\":\\\"ok\\\"\\,\\\"mode\\\":\\\"active\\\"\\,\\\"message\\\":\\\"ping ack file write requested by Max harness files v1.\\\"\\,\\\"data\\\":{}}, append {\\\"schema\\\":\\\"vesperare.max_harness.log.v0\\\"\\,\\\"event_id\\\":\\\"evt-max-v1-ping-flush\\\"\\,\\\"run_id\\\":\\\"run-max-harness-files-v1\\\"\\,\\\"command_id\\\":\\\"cmd-from-command-pending-json\\\"\\,\\\"timestamp\\\":\\\"2026-07-01T00:00:03Z\\\"\\,\\\"level\\\":\\\"info\\\"\\,\\\"source\\\":\\\"harness\\\"\\,\\\"event\\\":\\\"log_flush\\\"\\,\\\"status\\\":\\\"ok\\\"\\,\\\"mode\\\":\\\"active\\\"\\,\\\"message\\\":\\\"ping log flush requested.\\\"\\,\\\"data\\\":{}}, write ../logs/harness-session.jsonl"
        }
      },
      {
        "box": {
          "id": "obj-27",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 5,
          "outlettype": [ "bang", "bang", "bang", "bang", "bang" ],
          "patching_rect": [ 95.0, 610.0, 110.0, 22.0 ],
          "text": "trigger b b b b b"
        }
      },
      {
        "box": {
          "id": "obj-28",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [ "" ],
          "patching_rect": [ 45.0, 645.0, 345.0, 22.0 ],
          "text": "clear, append {, append   \\\"schema\\\": \\\"vesperare.max_harness.ack.v0\\\"\\,"
        }
      },
      {
        "box": {
          "id": "obj-29",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [ "" ],
          "patching_rect": [ 45.0, 675.0, 350.0, 22.0 ],
          "text": "clear, append {, append   \\\"schema\\\": \\\"vesperare.max_harness.state.v0\\\"\\,"
        }
      },
      {
        "box": {
          "id": "obj-30",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [ "" ],
          "patching_rect": [ 410.0, 645.0, 85.0, 22.0 ],
          "text": "get created_at"
        }
      },
      {
        "box": {
          "id": "obj-31",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [ "" ],
          "patching_rect": [ 515.0, 645.0, 560.0, 22.0 ],
          "text": "append   \\\"status\\\": \\\"ack\\\"\\,, append   \\\"accepted\\\": true\\,, append   \\\"message\\\": \\\"request_state command accepted by Max harness files v1.\\\", append }, write ../responses/ack.json"
        }
      },
      {
        "box": {
          "id": "obj-32",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [ "" ],
          "patching_rect": [ 515.0, 675.0, 610.0, 22.0 ],
          "text": "append   \\\"source\\\": \\\"harness\\\"\\,, append   \\\"status\\\": \\\"ok\\\"\\,, append   \\\"mode\\\": \\\"active\\\"\\,, append   \\\"last_event\\\": \\\"state_snapshot\\\"\\,, append   \\\"capabilities\\\": [\\\"file_command_read\\\"\\,\\\"ack_json_write\\\"\\,\\\"jsonl_log_write\\\"\\,\\\"state_current_write\\\"]\\,, append   \\\"errors\\\": []\\,, append   \\\"message\\\": \\\"Max harness files v1 state only; not Max, audio, DSP or musical validation.\\\", append }, write ../state/state.current.json"
        }
      },
      {
        "box": {
          "id": "obj-33",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [ "" ],
          "patching_rect": [ 515.0, 705.0, 610.0, 22.0 ],
          "text": "append {\\\"schema\\\":\\\"vesperare.max_harness.log.v0\\\"\\,\\\"event_id\\\":\\\"evt-max-v1-state-received\\\"\\,\\\"run_id\\\":\\\"run-max-harness-files-v1\\\"\\,\\\"command_id\\\":\\\"cmd-from-command-pending-json\\\"\\,\\\"timestamp\\\":\\\"2026-07-01T00:00:01Z\\\"\\,\\\"level\\\":\\\"info\\\"\\,\\\"source\\\":\\\"harness\\\"\\,\\\"event\\\":\\\"command_received\\\"\\,\\\"status\\\":\\\"ok\\\"\\,\\\"mode\\\":\\\"active\\\"\\,\\\"message\\\":\\\"request_state command routed by Max harness files v1.\\\"\\,\\\"data\\\":{}}, append {\\\"schema\\\":\\\"vesperare.max_harness.log.v0\\\"\\,\\\"event_id\\\":\\\"evt-max-v1-state-snapshot\\\"\\,\\\"run_id\\\":\\\"run-max-harness-files-v1\\\"\\,\\\"command_id\\\":\\\"cmd-from-command-pending-json\\\"\\,\\\"timestamp\\\":\\\"2026-07-01T00:00:02Z\\\"\\,\\\"level\\\":\\\"info\\\"\\,\\\"source\\\":\\\"harness\\\"\\,\\\"event\\\":\\\"state_snapshot\\\"\\,\\\"status\\\":\\\"ok\\\"\\,\\\"mode\\\":\\\"active\\\"\\,\\\"message\\\":\\\"state.current.json write requested by Max harness files v1.\\\"\\,\\\"data\\\":{}}, append {\\\"schema\\\":\\\"vesperare.max_harness.log.v0\\\"\\,\\\"event_id\\\":\\\"evt-max-v1-state-ack\\\"\\,\\\"run_id\\\":\\\"run-max-harness-files-v1\\\"\\,\\\"command_id\\\":\\\"cmd-from-command-pending-json\\\"\\,\\\"timestamp\\\":\\\"2026-07-01T00:00:03Z\\\"\\,\\\"level\\\":\\\"info\\\"\\,\\\"source\\\":\\\"harness\\\"\\,\\\"event\\\":\\\"command_ack\\\"\\,\\\"status\\\":\\\"ok\\\"\\,\\\"mode\\\":\\\"active\\\"\\,\\\"message\\\":\\\"request_state ack file write requested.\\\"\\,\\\"data\\\":{}}, append {\\\"schema\\\":\\\"vesperare.max_harness.log.v0\\\"\\,\\\"event_id\\\":\\\"evt-max-v1-state-flush\\\"\\,\\\"run_id\\\":\\\"run-max-harness-files-v1\\\"\\,\\\"command_id\\\":\\\"cmd-from-command-pending-json\\\"\\,\\\"timestamp\\\":\\\"2026-07-01T00:00:04Z\\\"\\,\\\"level\\\":\\\"info\\\"\\,\\\"source\\\":\\\"harness\\\"\\,\\\"event\\\":\\\"log_flush\\\"\\,\\\"status\\\":\\\"ok\\\"\\,\\\"mode\\\":\\\"active\\\"\\,\\\"message\\\":\\\"request_state log flush requested.\\\"\\,\\\"data\\\":{}}, write ../logs/harness-session.jsonl"
        }
      },
      {
        "box": {
          "id": "obj-34",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 4,
          "outlettype": [ "bang", "bang", "bang", "bang" ],
          "patching_rect": [ 270.0, 500.0, 95.0, 22.0 ],
          "text": "trigger b b b b"
        }
      },
      {
        "box": {
          "id": "obj-35",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [ "" ],
          "patching_rect": [ 235.0, 475.0, 345.0, 22.0 ],
          "text": "clear, append {, append   \\\"schema\\\": \\\"vesperare.max_harness.error.v0\\\"\\,"
        }
      },
      {
        "box": {
          "id": "obj-36",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [ "" ],
          "patching_rect": [ 235.0, 445.0, 575.0, 22.0 ],
          "text": "append   \\\"status\\\": \\\"error\\\"\\,, append   \\\"error_code\\\": \\\"unknown_command\\\"\\,, append   \\\"recoverable\\\": true\\,, append   \\\"message\\\": \\\"Command refused by Max harness files v1; only ping and request_state are accepted.\\\", append }, write ../responses/error.json"
        }
      },
      {
        "box": {
          "id": "obj-37",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [ "" ],
          "patching_rect": [ 235.0, 415.0, 575.0, 22.0 ],
          "text": "append {\\\"schema\\\":\\\"vesperare.max_harness.log.v0\\\"\\,\\\"event_id\\\":\\\"evt-max-v1-error-received\\\"\\,\\\"run_id\\\":\\\"run-max-harness-files-v1\\\"\\,\\\"command_id\\\":\\\"cmd-from-command-pending-json\\\"\\,\\\"timestamp\\\":\\\"2026-07-01T00:00:01Z\\\"\\,\\\"level\\\":\\\"warning\\\"\\,\\\"source\\\":\\\"harness\\\"\\,\\\"event\\\":\\\"command_received\\\"\\,\\\"status\\\":\\\"blocked\\\"\\,\\\"mode\\\":\\\"active\\\"\\,\\\"message\\\":\\\"unsupported command type routed to refusal branch.\\\"\\,\\\"data\\\":{}}, append {\\\"schema\\\":\\\"vesperare.max_harness.log.v0\\\"\\,\\\"event_id\\\":\\\"evt-max-v1-command-error\\\"\\,\\\"run_id\\\":\\\"run-max-harness-files-v1\\\"\\,\\\"command_id\\\":\\\"cmd-from-command-pending-json\\\"\\,\\\"timestamp\\\":\\\"2026-07-01T00:00:02Z\\\"\\,\\\"level\\\":\\\"warning\\\"\\,\\\"source\\\":\\\"harness\\\"\\,\\\"event\\\":\\\"command_error\\\"\\,\\\"status\\\":\\\"blocked\\\"\\,\\\"mode\\\":\\\"active\\\"\\,\\\"message\\\":\\\"error.json write requested by Max harness files v1.\\\"\\,\\\"data\\\":{}}, append {\\\"schema\\\":\\\"vesperare.max_harness.log.v0\\\"\\,\\\"event_id\\\":\\\"evt-max-v1-error-flush\\\"\\,\\\"run_id\\\":\\\"run-max-harness-files-v1\\\"\\,\\\"command_id\\\":\\\"cmd-from-command-pending-json\\\"\\,\\\"timestamp\\\":\\\"2026-07-01T00:00:03Z\\\"\\,\\\"level\\\":\\\"info\\\"\\,\\\"source\\\":\\\"harness\\\"\\,\\\"event\\\":\\\"log_flush\\\"\\,\\\"status\\\":\\\"ok\\\"\\,\\\"mode\\\":\\\"active\\\"\\,\\\"message\\\":\\\"error log flush requested.\\\"\\,\\\"data\\\":{}}, write ../logs/harness-session.jsonl"
        }
      },
      {
        "box": {
          "id": "obj-50",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 4,
          "outlettype": [ "", "", "", "" ],
          "patching_rect": [ 1150.0, 535.0, 90.0, 22.0 ],
          "text": "text v1_ack"
        }
      },
      {
        "box": {
          "id": "obj-51",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 4,
          "outlettype": [ "", "", "", "" ],
          "patching_rect": [ 835.0, 530.0, 90.0, 22.0 ],
          "text": "text v1_error"
        }
      },
      {
        "box": {
          "id": "obj-52",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 4,
          "outlettype": [ "", "", "", "" ],
          "patching_rect": [ 1150.0, 675.0, 90.0, 22.0 ],
          "text": "text v1_state"
        }
      },
      {
        "box": {
          "id": "obj-53",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 4,
          "outlettype": [ "", "", "", "" ],
          "patching_rect": [ 45.0, 360.0, 90.0, 22.0 ],
          "text": "text v1_log"
        }
      }
    ],
    "lines": [
      { "patchline": { "source": [ "obj-5", 0 ], "destination": [ "obj-6", 0 ] } },
      { "patchline": { "source": [ "obj-6", 0 ], "destination": [ "obj-7", 0 ] } },
      { "patchline": { "source": [ "obj-7", 2 ], "destination": [ "obj-8", 0 ] } },
      { "patchline": { "source": [ "obj-7", 1 ], "destination": [ "obj-9", 0 ] } },
      { "patchline": { "source": [ "obj-7", 0 ], "destination": [ "obj-10", 0 ] } },
      { "patchline": { "source": [ "obj-8", 0 ], "destination": [ "obj-53", 0 ] } },
      { "patchline": { "source": [ "obj-9", 0 ], "destination": [ "obj-11", 0 ] } },
      { "patchline": { "source": [ "obj-10", 0 ], "destination": [ "obj-11", 0 ] } },
      { "patchline": { "source": [ "obj-11", 0 ], "destination": [ "obj-12", 0 ] } },
      { "patchline": { "source": [ "obj-12", 0 ], "destination": [ "obj-13", 0 ] } },
      { "patchline": { "source": [ "obj-12", 1 ], "destination": [ "obj-14", 0 ] } },
      { "patchline": { "source": [ "obj-12", 1 ], "destination": [ "obj-15", 0 ] } },
      { "patchline": { "source": [ "obj-12", 1 ], "destination": [ "obj-16", 0 ] } },
      { "patchline": { "source": [ "obj-12", 2 ], "destination": [ "obj-17", 0 ] } },
      { "patchline": { "source": [ "obj-12", 2 ], "destination": [ "obj-18", 0 ] } },
      { "patchline": { "source": [ "obj-12", 2 ], "destination": [ "obj-19", 0 ] } },
      { "patchline": { "source": [ "obj-12", 3 ], "destination": [ "obj-20", 0 ] } },
      { "patchline": { "source": [ "obj-14", 0 ], "destination": [ "obj-50", 0 ] } },
      { "patchline": { "source": [ "obj-15", 0 ], "destination": [ "obj-51", 0 ] } },
      { "patchline": { "source": [ "obj-16", 0 ], "destination": [ "obj-52", 0 ] } },
      { "patchline": { "source": [ "obj-17", 0 ], "destination": [ "obj-50", 0 ] } },
      { "patchline": { "source": [ "obj-18", 0 ], "destination": [ "obj-51", 0 ] } },
      { "patchline": { "source": [ "obj-19", 0 ], "destination": [ "obj-52", 0 ] } },
      { "patchline": { "source": [ "obj-20", 0 ], "destination": [ "obj-52", 0 ] } },
      { "patchline": { "source": [ "obj-13", 0 ], "destination": [ "obj-21", 0 ] } },
      { "patchline": { "source": [ "obj-13", 1 ], "destination": [ "obj-27", 0 ] } },
      { "patchline": { "source": [ "obj-13", 2 ], "destination": [ "obj-34", 0 ] } },
      { "patchline": { "source": [ "obj-21", 3 ], "destination": [ "obj-22", 0 ] } },
      { "patchline": { "source": [ "obj-21", 2 ], "destination": [ "obj-23", 0 ] } },
      { "patchline": { "source": [ "obj-21", 1 ], "destination": [ "obj-24", 0 ] } },
      { "patchline": { "source": [ "obj-21", 0 ], "destination": [ "obj-25", 0 ] } },
      { "patchline": { "source": [ "obj-21", 0 ], "destination": [ "obj-26", 0 ] } },
      { "patchline": { "source": [ "obj-22", 0 ], "destination": [ "obj-50", 0 ] } },
      { "patchline": { "source": [ "obj-23", 0 ], "destination": [ "obj-11", 0 ] } },
      { "patchline": { "source": [ "obj-24", 0 ], "destination": [ "obj-11", 0 ] } },
      { "patchline": { "source": [ "obj-25", 0 ], "destination": [ "obj-50", 0 ] } },
      { "patchline": { "source": [ "obj-26", 0 ], "destination": [ "obj-53", 0 ] } },
      { "patchline": { "source": [ "obj-27", 4 ], "destination": [ "obj-28", 0 ] } },
      { "patchline": { "source": [ "obj-27", 4 ], "destination": [ "obj-29", 0 ] } },
      { "patchline": { "source": [ "obj-27", 3 ], "destination": [ "obj-23", 0 ] } },
      { "patchline": { "source": [ "obj-27", 2 ], "destination": [ "obj-24", 0 ] } },
      { "patchline": { "source": [ "obj-27", 1 ], "destination": [ "obj-30", 0 ] } },
      { "patchline": { "source": [ "obj-27", 0 ], "destination": [ "obj-31", 0 ] } },
      { "patchline": { "source": [ "obj-27", 0 ], "destination": [ "obj-32", 0 ] } },
      { "patchline": { "source": [ "obj-27", 0 ], "destination": [ "obj-33", 0 ] } },
      { "patchline": { "source": [ "obj-28", 0 ], "destination": [ "obj-50", 0 ] } },
      { "patchline": { "source": [ "obj-29", 0 ], "destination": [ "obj-52", 0 ] } },
      { "patchline": { "source": [ "obj-30", 0 ], "destination": [ "obj-11", 0 ] } },
      { "patchline": { "source": [ "obj-31", 0 ], "destination": [ "obj-50", 0 ] } },
      { "patchline": { "source": [ "obj-32", 0 ], "destination": [ "obj-52", 0 ] } },
      { "patchline": { "source": [ "obj-33", 0 ], "destination": [ "obj-53", 0 ] } },
      { "patchline": { "source": [ "obj-34", 3 ], "destination": [ "obj-35", 0 ] } },
      { "patchline": { "source": [ "obj-34", 2 ], "destination": [ "obj-23", 0 ] } },
      { "patchline": { "source": [ "obj-34", 1 ], "destination": [ "obj-24", 0 ] } },
      { "patchline": { "source": [ "obj-34", 0 ], "destination": [ "obj-36", 0 ] } },
      { "patchline": { "source": [ "obj-34", 0 ], "destination": [ "obj-37", 0 ] } },
      { "patchline": { "source": [ "obj-35", 0 ], "destination": [ "obj-51", 0 ] } },
      { "patchline": { "source": [ "obj-36", 0 ], "destination": [ "obj-51", 0 ] } },
      { "patchline": { "source": [ "obj-37", 0 ], "destination": [ "obj-53", 0 ] } }
    ]
  }
}
