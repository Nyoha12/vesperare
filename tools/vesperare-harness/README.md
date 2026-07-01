# Vesperare harness commandes/logs v0

Statut : flux local v0 d'outillage fichiers pour le harness Max <-> Codex.

Perimetre : schemas, exemples, validateurs JSON/JSONL et stub local fichier-only. Aucun lancement Max, aucun lancement Ableton, aucune modification de patch, aucune UI, aucun mapping, aucun asset, aucune sample bank, aucun seuil numerique.

## Sources consultees

Fait :

- `README.md`
- `docs/00_INDEX_METHODE_DECISIONS.md`
- `docs/PROJECT_ROADMAP_VESPERARE.md`
- `docs/AI_WORKFLOW_CONTRACT.md`
- `projects/max/MANIFEST_MAX_PATCHES.md`
- `docs/specs/CONCEPTION_HARNESS_COMMANDES_LOGS_MAX_CODEX.md`
- `docs/reprise/05_NEXT_ACTIONS.md`
- `projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat`

## Role du dossier

Fait :

Ce dossier contient le flux local v0 du harness commandes/logs/state :

- schemas JSON pour commande, log, ack, error et state ;
- exemple de commande `ping` ;
- exemple de commande `request_state` ;
- exemple d'ack `ping` ;
- exemple d'error pour commande non acceptee par le stub local ;
- exemple de `state.current.json` ;
- exemple de session log JSONL ;
- script PowerShell de creation d'une commande JSON ;
- scripts PowerShell de verification command / ack / error / log / state ;
- stub PowerShell local qui lit une commande et produit ack ou error, log JSONL et state technique pour `request_state`.

Inference :

Ce flux rend possible une verification machine-lisible minimale avant toute integration Max future. Il ne valide pas Max, le DSP, l'audio, la jouabilite, la musicalite, une architecture finale, un routage final ou un objet Max final.

## Contrats v0

Fait :

- `schemas/command.schema.json` decrit une commande bornee.
- `schemas/log.schema.json` decrit une ligne JSONL de log.
- `schemas/ack.schema.json` decrit un accuse de reception.
- `schemas/error.schema.json` decrit une erreur explicite.
- `schemas/state.schema.json` decrit `state.current.json`, etat technique minimal.

Decision :

Les schemas restent fermes au niveau racine avec `additionalProperties: false`. Les champs `payload` et `data` restent des objets libres pour ne pas transformer le harness v0 en architecture musicale ou technique finale. Les champs `capabilities` et `errors` du state restent des tableaux simples de chaines.

## Scripts

### Creer une commande JSON

```powershell
powershell -ExecutionPolicy Bypass -File tools/vesperare-harness/powershell/New-VesperareHarnessCommand.ps1 -OutputPath .codex_tmp/harness-command.json
```

Le script cree seulement un fichier JSON de commande. Il ne lit pas Max, ne lance pas Max, ne lance pas Ableton et ne modifie aucun `.maxpat`.

### Verifier une commande JSON

```powershell
powershell -ExecutionPolicy Bypass -File tools/vesperare-harness/powershell/Test-VesperareHarnessCommand.ps1 -CommandPath tools/vesperare-harness/examples/command.ping.json
```

### Verifier un ack JSON

```powershell
powershell -ExecutionPolicy Bypass -File tools/vesperare-harness/powershell/Test-VesperareHarnessAck.ps1 -AckPath tools/vesperare-harness/examples/ack.ping.sample.json
```

### Verifier un error JSON

```powershell
powershell -ExecutionPolicy Bypass -File tools/vesperare-harness/powershell/Test-VesperareHarnessError.ps1 -ErrorPath tools/vesperare-harness/examples/error.unknown-command.sample.json
```

### Verifier un log JSONL

```powershell
powershell -ExecutionPolicy Bypass -File tools/vesperare-harness/powershell/Test-VesperareHarnessLog.ps1 -LogPath tools/vesperare-harness/examples/log.session.sample.jsonl
```

Le script verifie que chaque ligne non vide est un evenement JSON conforme au contrat v0 local. Il ne valide pas l'audio, la musicalite, l'architecture ou le patch.

### Verifier un state JSON

```powershell
powershell -ExecutionPolicy Bypass -File tools/vesperare-harness/powershell/Test-VesperareHarnessState.ps1 -StatePath tools/vesperare-harness/examples/state.current.sample.json
```

Le script verifie seulement que `state.current.json` est un etat technique minimal conforme au contrat v0. Il ne valide pas Max, l'audio, le DSP, la musicalite, l'architecture ou le patch.

### Executer le stub local fichier-only

```powershell
$out = Join-Path $env:TEMP "vesperare-harness-local-stub"
powershell -ExecutionPolicy Bypass -File tools/vesperare-harness/powershell/Invoke-VesperareHarnessStub.ps1 -CommandPath tools/vesperare-harness/examples/command.ping.json -OutputDirectory $out -Force
powershell -ExecutionPolicy Bypass -File tools/vesperare-harness/powershell/Test-VesperareHarnessLog.ps1 -LogPath (Join-Path $out "harness-session.jsonl")
```

Pour tester `request_state` sans Max :

```powershell
$out = Join-Path $env:TEMP "vesperare-harness-local-state"
powershell -ExecutionPolicy Bypass -File tools/vesperare-harness/powershell/Invoke-VesperareHarnessStub.ps1 -CommandPath tools/vesperare-harness/examples/command.request-state.json -OutputDirectory $out -Force
powershell -ExecutionPolicy Bypass -File tools/vesperare-harness/powershell/Test-VesperareHarnessState.ps1 -StatePath (Join-Path $out "state.current.json")
powershell -ExecutionPolicy Bypass -File tools/vesperare-harness/powershell/Test-VesperareHarnessLog.ps1 -LogPath (Join-Path $out "harness-session.jsonl")
```

Regles du stub local v0 :

- lire une commande JSON conforme ;
- accepter seulement `ping` et `request_state` ;
- produire `ack.json` pour une commande acceptee ;
- produire `error.json` pour une commande refusee ;
- produire `state.current.json` pour `request_state` ;
- produire `harness-session.jsonl` avec au moins `boot`, `command_received`, `state_snapshot` pour `request_state`, `command_ack` ou `command_error`, `log_flush`, `shutdown` ;
- ecrire les sorties dans le dossier donne par `-OutputDirectory` ;
- ne jamais lancer Max ou Ableton ;
- ne jamais modifier de `.maxpat`.

## Limites maintenues

Decision :

Le harness v0 n'est pas une condition `P0/P1`, `direct/safe`, protection ou `MIN-DID-PC`.

Interdictions :

- ne pas lancer Max depuis ces scripts ;
- ne pas lancer Ableton ;
- ne pas modifier `projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat` ;
- ne pas creer de nouveau `.maxpat` ;
- ne pas fixer de seuil numerique ;
- ne pas choisir d'objet Max final ;
- ne pas definir de routage final ;
- ne pas produire mapping, UI, asset ou sample bank.
