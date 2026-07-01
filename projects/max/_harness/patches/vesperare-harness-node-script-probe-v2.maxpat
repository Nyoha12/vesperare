{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 9,
      "minor": 0,
      "revision": 0,
      "architecture": "x64",
      "modernui": 1
    },
    "classnamespace": "box",
    "rect": [
      120.0,
      120.0,
      940.0,
      360.0
    ],
    "bglocked": 0,
    "openinpresentation": 0,
    "default_fontsize": 12.0,
    "default_fontface": 0,
    "default_fontname": "Arial",
    "gridonopen": 1,
    "gridsize": [
      15.0,
      15.0
    ],
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
    "description": "",
    "digest": "",
    "tags": "",
    "style": "",
    "subpatcher_template": "",
    "assistshowspatchername": 0,
    "boxes": [
      {
        "box": {
          "id": "obj-1",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            30.0,
            25.0,
            820.0,
            20.0
          ],
          "text": "Vesperare node.script probe v2 - separate _harness diagnostic patch only."
        }
      },
      {
        "box": {
          "id": "obj-2",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            30.0,
            55.0,
            820.0,
            36.0
          ],
          "text": "Scope: prove whether node.script can load a relative script from ../node and write a proof file under _harness/logs."
        }
      },
      {
        "box": {
          "id": "obj-3",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            30.0,
            95.0,
            820.0,
            36.0
          ],
          "text": "Strict diagnostic only: no audio, no DSP, no patch 01, no mapping, no asset, no sample bank, no routing and no final object decision."
        }
      },
      {
        "box": {
          "id": "obj-4",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            45.0,
            180.0,
            790.0,
            22.0
          ],
          "saved_object_attributes": {
            "autostart": 1,
            "defer": 0,
            "watch": 0
          },
          "text": "node.script C:/Users/User/Documents/GitHub/vesperare/projects/max/_harness/node/vesperare-node-script-probe-v2.js @autostart 1 @watch 0",
          "textfile": {
            "filename": "C:/Users/User/Documents/GitHub/vesperare/projects/max/_harness/node/vesperare-node-script-probe-v2.js",
            "flags": 0,
            "embed": 0,
            "autowatch": 0
          }
        }
      },
      {
        "box": {
          "id": "obj-5",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            45.0,
            230.0,
            640.0,
            36.0
          ],
          "text": "Expected proof: projects/max/_harness/logs/node-script-probe-proof.json. Relative path and @log_path failures are documented in the trace."
        }
      }
    ],
    "lines": [],
    "dependency_cache": [
      {
        "name": "vesperare-node-script-probe-v2.js",
        "bootpath": "C:/Users/User/Documents/GitHub/vesperare/projects/max/_harness/node",
        "patcherrelativepath": "../node",
        "type": "TEXT",
        "implicit": 1
      }
    ],
    "autosave": 0
  }
}
