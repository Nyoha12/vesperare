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
      420.0
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
          "text": "Vesperare harness node bridge v2 - separate _harness file observability patch. It does not open, read, modify or validate patch 01."
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
          "text": "Scope: start one node.script bridge that reads ../commands/command.pending.json and writes ack/error/log/state files under projects/max/_harness only."
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
          "text": "Strict file harness only: no signal path, no performance UI, no mapping, no asset, no sample bank, no threshold, no final routing and no final Max object choice."
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
            500.0,
            22.0
          ],
          "text": "node.script ../node/vesperare-harness-bridge-v2.js @autostart 1 @watch 0"
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
            500.0,
            36.0
          ],
          "text": "The bridge processes ping/request_state on startup. Max console output is diagnostic only; file outputs are the harness contract."
        }
      }
    ],
    "lines": [],
    "dependency_cache": [],
    "autosave": 0
  }
}
