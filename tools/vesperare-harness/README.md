# Vesperare harness commandes/logs v0

Statut : flux local v0 d'outillage fichiers pour le harness Max <-> Codex, avec smoke Max local borne par patch temporaire et schema/exemple documentaire P0 direct/safe/sortie.

Perimetre : schemas, exemples, validateurs JSON/JSONL, stub local fichier-only, script smoke Max local du bridge Node for Max v2 et artefacts documentaires d'observabilite P0. Aucun lancement Ableton, aucune modification du patch 01, aucune UI, aucun mapping, aucun asset, aucune sample bank, aucun seuil numerique.

## Sources consultees

Fait :

- `README.md`
- `docs/00_INDEX_METHODE_DECISIONS.md`
- `docs/PROJECT_ROADMAP_VESPERARE.md`
- `docs/AI_WORKFLOW_CONTRACT.md`
- `projects/max/MANIFEST_MAX_PATCHES.md`
- `docs/specs/CONCEPTION_HARNESS_COMMANDES_LOGS_MAX_CODEX.md`
- `docs/reprise/05_NEXT_ACTIONS.md`
- `docs/reprise/38_TRACE_DIAGNOSTIC_NODE_SCRIPT_MAX_HARNESS_V2.md`
- `docs/reprise/39_TRACE_STABILISATION_RUNTIME_HARNESS_MAX_CODEX.md`
- `projects/max/_harness/README.md`
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
- schema et exemple documentaires pour le contrat observable `P0-DIRECT / P0-SAFE / P0-SORTIE` ;
- script PowerShell de creation d'une commande JSON ;
- scripts PowerShell de verification command / ack / error / log / state ;
- stub PowerShell local qui lit une commande et produit ack ou error, log JSONL et state technique pour `request_state` ;
- smoke PowerShell Max local qui genere un `.maxpat` temporaire sous `.codex_tmp/`, lance Max via `VESPERARE_MAX_EXE`, puis valide `ack/log/state`.

Inference :

Ce flux rend possible une verification machine-lisible minimale du contrat fichier, puis un smoke Max local borne du bridge v2. Il ne valide pas le DSP, l'audio, la jouabilite, la musicalite, une architecture finale, un routage final ou un objet Max final.

## Contrats v0

Fait :

- `schemas/command.schema.json` decrit une commande bornee.
- `schemas/log.schema.json` decrit une ligne JSONL de log.
- `schemas/ack.schema.json` decrit un accuse de reception.
- `schemas/error.schema.json` decrit une erreur explicite.
- `schemas/state.schema.json` decrit `state.current.json`, etat technique minimal.
- `schemas/p0-direct-safe-sortie.observable.schema.json` decrit la forme machine-lisible documentaire du contrat observable `P0-DIRECT / P0-SAFE / P0-SORTIE`.
- `examples/p0-direct-safe-sortie.observable.sample.json` fournit un exemple conforme non validant pour ce contrat.

Decision :

Les schemas restent fermes au niveau racine avec `additionalProperties: false`. Les champs `payload` et `data` restent des objets libres pour ne pas transformer le harness v0 en architecture musicale ou technique finale. Les champs `capabilities` et `errors` du state restent des tableaux simples de chaines.

Decision :

Le schema et l'exemple `P0-DIRECT / P0-SAFE / P0-SORTIE` sont des artefacts documentaires d'observabilite. Ils ne creent pas de script, ne creent pas de validateur, ne lancent pas Max, ne modifient pas de patch et ne valident ni audio, ni DSP, ni musicalite, ni architecture.

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

### Executer le smoke Max local du bridge v2

Prerequis :

```powershell
$env:VESPERARE_MAX_EXE = "C:\Program Files\Cycling '74\Max 9\Max.exe"
```

Commandes :

```powershell
powershell -ExecutionPolicy Bypass -File tools/vesperare-harness/powershell/Invoke-VesperareMaxHarnessSmoke.ps1 -Type ping
powershell -ExecutionPolicy Bypass -File tools/vesperare-harness/powershell/Invoke-VesperareMaxHarnessSmoke.ps1 -Type request_state
```

Regles du smoke Max local :

- verifier `VESPERARE_MAX_EXE` et le repo root ;
- ecrire `projects/max/_harness/commands/command.pending.json` ;
- generer un patch temporaire ignore sous `.codex_tmp/` avec `node.script` pointant vers le chemin absolu local du bridge ;
- lancer Max avec ce patch temporaire ;
- attendre `ack.json`, `harness-session.jsonl` et, pour `request_state`, `state.current.json` ;
- valider les sorties avec les validateurs PowerShell existants ;
- ne jamais modifier `projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat`.

## Limites maintenues

Decision :

Le harness v0 n'est pas une condition `P0/P1`, `direct/safe`, protection ou `MIN-DID-PC`.

Interdictions :

- ne pas lancer Max depuis les scripts locaux, sauf `Invoke-VesperareMaxHarnessSmoke.ps1` pour un smoke strictement borne du bridge v2 ;
- ne pas lancer Ableton ;
- ne pas modifier `projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat` ;
- ne pas creer de nouveau `.maxpat` source ; le smoke Max peut seulement generer un `.maxpat` temporaire ignore sous `.codex_tmp/` ;
- ne pas fixer de seuil numerique ;
- ne pas choisir d'objet Max final ;
- ne pas definir de routage final ;
- ne pas produire mapping, UI, asset ou sample bank.
