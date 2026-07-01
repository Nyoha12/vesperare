# 39_TRACE_STABILISATION_RUNTIME_HARNESS_MAX_CODEX

Statut : trace de stabilisation du workflow local harness Max/Codex par script PowerShell et patch temporaire.
Date : 2026-07-01.
Perimetre : `projects/max/_harness/`, `tools/vesperare-harness/`, `.gitignore` et documents de reprise associes ; sans modification du patch 01, sans audio, sans DSP, sans musicalite, sans UI de performance, sans mapping, sans asset, sans sample bank, sans seuil numerique, sans objet Max final, sans routage final et sans architecture validee.

## Sources consultees

Fait :

- `README.md`
- `docs/00_INDEX_METHODE_DECISIONS.md`
- `docs/reprise/38_TRACE_DIAGNOSTIC_NODE_SCRIPT_MAX_HARNESS_V2.md`
- `docs/reprise/05_NEXT_ACTIONS.md`
- `projects/max/_harness/README.md`
- `projects/max/MANIFEST_MAX_PATCHES.md`
- `projects/max/_harness/patches/vesperare-harness-node-bridge-v2.maxpat`
- `projects/max/_harness/node/vesperare-harness-bridge-v2.js`
- `tools/vesperare-harness/README.md`
- `tools/vesperare-harness/powershell/New-VesperareHarnessCommand.ps1`
- `tools/vesperare-harness/powershell/Test-VesperareHarnessCommand.ps1`
- `tools/vesperare-harness/powershell/Test-VesperareHarnessAck.ps1`
- `tools/vesperare-harness/powershell/Test-VesperareHarnessError.ps1`
- `tools/vesperare-harness/powershell/Test-VesperareHarnessLog.ps1`
- `tools/vesperare-harness/powershell/Test-VesperareHarnessState.ps1`

## 1. Objet

Fait :

La trace 38 a valide localement que `node.script` execute le bridge v2 avec un chemin absolu, mais a laisse deux dettes :

- chemin absolu local committe dans le patch source v2 ;
- artefacts runtime non suivis produits par les smokes.

Decision :

La stabilisation ne change pas de fonction musicale et ne transforme pas le harness en module final. Elle rend seulement le smoke Max/Codex local reproductible par script.

## 2. Runtime ignore

Fait :

Un `.gitignore` a ete ajoute pour ignorer :

- `.codex_tmp/`
- `projects/max/_harness/commands/`
- `projects/max/_harness/responses/`
- `projects/max/_harness/logs/`
- `projects/max/_harness/state/`
- `projects/max/_harness/patches/ack.json`
- `projects/max/_harness/patches/error.json`
- `projects/max/_harness/patches/harness-session.jsonl`
- `projects/max/_harness/patches/state.current.json`

Inference :

Les sorties de session restent disponibles localement pour diagnostic, mais ne deviennent pas des sources a committer.

## 3. Patch source v2

Fait :

Le patch source suivant ne contient plus le chemin absolu local committe :

```text
projects/max/_harness/patches/vesperare-harness-node-bridge-v2.maxpat
```

Fait :

Il reference maintenant :

```text
node.script ../node/vesperare-harness-bridge-v2.js @autostart 1 @watch 0
```

Limite :

La trace 38 a deja montre que ce chemin relatif n'etait pas resolu dans le contexte local de lancement Max utilise pendant le diagnostic. Le patch source reste donc une trace/source separee, pas le support officiel du smoke local.

## 4. Script smoke officiel

Fait :

Le script suivant a ete cree :

```text
tools/vesperare-harness/powershell/Invoke-VesperareMaxHarnessSmoke.ps1
```

Fait :

Le script :

- verifie `VESPERARE_MAX_EXE` ;
- verifie le repo root ;
- accepte seulement `ping` ou `request_state` ;
- ecrit `projects/max/_harness/commands/command.pending.json` ;
- genere un patch temporaire sous `.codex_tmp/` avec `node.script` pointant vers le chemin absolu local du bridge ;
- lance Max avec ce patch temporaire ;
- attend `ack.json`, `harness-session.jsonl` et, pour `request_state`, `state.current.json` ;
- signale `error.json` comme echec ;
- valide les sorties avec les validateurs PowerShell existants ;
- ne modifie jamais `projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat`.

Inference :

Le chemin absolu reste un detail runtime local genere, pas une donnee source commitee.

## 5. Validations

Fait :

Validations realisees :

```text
node --check projects/max/_harness/node/vesperare-harness-bridge-v2.js
ConvertFrom-Json projects/max/_harness/patches/vesperare-harness-node-bridge-v2.maxpat
powershell -ExecutionPolicy Bypass -File tools/vesperare-harness/powershell/Invoke-VesperareMaxHarnessSmoke.ps1 -Type ping
powershell -ExecutionPolicy Bypass -File tools/vesperare-harness/powershell/Invoke-VesperareMaxHarnessSmoke.ps1 -Type request_state
```

Fait :

Le smoke `ping` a produit et valide :

```text
OK: ack JSON parsed
OK: 4 log event(s) parsed
```

Fait :

Le smoke `request_state` a produit et valide :

```text
OK: ack JSON parsed
OK: 5 log event(s) parsed
OK: state JSON parsed
```

Fait :

Le patch temporaire genere sous `.codex_tmp/` a ete parse comme JSON pendant chaque smoke.

Fait :

Le patch 01 n'a pas ete modifie.

## 6. Limites maintenues

Non valide :

- audio ;
- DSP ;
- musicalite ;
- patch 01 ;
- architecture ;
- routage final ;
- objet Max final ;
- mapping ;
- UI de performance ;
- asset ;
- sample bank ;
- seuil numerique.

Limite :

Le workflow local est reproductible si `VESPERARE_MAX_EXE` pointe vers le Max local. Cela ne valide pas encore une strategie portable Max project/search-path.

## 7. Prochaine action minimale

Recommandation :

Conserver le smoke Max/Codex local via script temporaire comme preuve technique bornee.

Recommandation :

Instruire une resolution portable Max project/search-path seulement dans une action separee, sans modifier le patch 01 et sans presenter cette portabilite comme validation audio, DSP, architecturale ou musicale.
