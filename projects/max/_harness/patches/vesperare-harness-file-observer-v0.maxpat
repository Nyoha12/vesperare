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
    "rect": [ 100.0, 100.0, 980.0, 620.0 ],
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
    "description": "Vesperare harness file observer v0. Documentary observable artifact only; no Max validation.",
    "digest": "",
    "tags": "vesperare harness file observer v0 documentary non-audio non-tested",
    "style": "",
    "subpatcher_template": "",
    "boxes": [
      {
        "box": {
          "id": "obj-1",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [ 45.0, 30.0, 760.0, 22.0 ],
          "text": "Vesperare harness file observer v0 - provisional observable artifact, separate from patch 01."
        }
      },
      {
        "box": {
          "id": "obj-2",
          "linecount": 3,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [ 45.0, 70.0, 820.0, 48.0 ],
          "text": "Status: not tested in Max; Max not launched. This patch is non-audio, non-DSP, non-musical and non-architectural. JSON parsing only is the expected Codex-side check."
        }
      },
      {
        "box": {
          "id": "obj-3",
          "linecount": 6,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [ 45.0, 135.0, 420.0, 88.0 ],
          "text": "Contract files documented here:\ncommands/command.pending.json\nresponses/ack.json\nresponses/error.json\nlogs/harness-session.jsonl\nstate/state.current.json"
        }
      },
      {
        "box": {
          "id": "obj-4",
          "linecount": 5,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [ 500.0, 135.0, 380.0, 74.0 ],
          "text": "Input side, behavior not implemented:\ncommand.pending.json contains one v0 command.\nAllowed command labels for this observer artifact:\nping\nrequest_state"
        }
      },
      {
        "box": {
          "id": "obj-5",
          "linecount": 5,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [ 45.0, 250.0, 420.0, 74.0 ],
          "text": "Output side, behavior not implemented:\nack.json = accepted command response\nerror.json = explicit refusal or failure\nharness-session.jsonl = one JSON object per line\nstate.current.json = technical state only"
        }
      },
      {
        "box": {
          "id": "obj-6",
          "linecount": 6,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [ 500.0, 245.0, 430.0, 88.0 ],
          "text": "Expected event labels, not emitted by this artifact:\nboot, command_received, command_ack,\ncommand_error, state_snapshot, sig_emit,\nlog_flush, shutdown.\nEach future line must match log.schema.json."
        }
      },
      {
        "box": {
          "id": "obj-7",
          "linecount": 4,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [ 45.0, 360.0, 420.0, 61.0 ],
          "text": "Candidate Max classes for later investigation only:\n[dict], [text], [message], [comment], [loadbang].\nNo class is selected here as a final implementation object."
        }
      },
      {
        "box": {
          "id": "obj-8",
          "linecount": 4,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [ 500.0, 365.0, 430.0, 61.0 ],
          "text": "Explicit exclusions:\nno adc~/dac~, no DSP, no gen~, no poly~, no pfft/FFT,\nno buffer~, no corpus, no plugin, no ML, no UI performance,\nno mapping, no asset, no sample bank."
        }
      },
      {
        "box": {
          "id": "obj-9",
          "linecount": 4,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [ 45.0, 455.0, 885.0, 61.0 ],
          "text": "Patch 01 boundary: projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat is not read, changed, wrapped, extended or validated by this artifact. Observability is not Max, audio, DSP, musical or architectural validation."
        }
      },
      {
        "box": {
          "id": "obj-10",
          "linecount": 3,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [ 45.0, 535.0, 885.0, 48.0 ],
          "text": "Codex-side checks for this artifact: JSON parse succeeds; top-level patcher key exists; patch 01 stays unchanged; harness schemas and examples remain parseable; no Max launch is claimed."
        }
      }
    ],
    "lines": []
  }
}
