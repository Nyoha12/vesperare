# 32_TRACE_HARNESS_LOCAL_STUB_COMMANDES_LOGS_V0

Statut : trace de flux local v0 du harness commandes/logs.
Date : 2026-07-01.
Perimetre : commande JSON -> stub local fichier-only -> ack/error JSON -> log JSONL -> validation Codex. Sans Max, sans Ableton, sans audio, sans DSP, sans patch Max, sans validation musicale.

## Sources consultees

Fait :

- `README.md`
- `docs/00_INDEX_METHODE_DECISIONS.md`
- `docs/42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md`
- `docs/45_REPRISE_DEPUIS_FICHE_MESURES_INSTRUMENTS.md`
- `docs/modules/18_CONTEXTUAL_CONTROL_ROUTER_AMPLITUDES_LIMITES_OVERRIDE_ADDENDUM.md`
- `docs/assets/00_ASSETS_INDEX.md`
- `docs/assets/15_DONNEES_INSTRUMENTALES_MANQUANTES_PRIORITAIRES.md`
- `docs/assets/16_ACOUSTICARCHIVE_MAPPING_DONNEES_VESPERARE.md`
- `docs/PROJECT_ROADMAP_VESPERARE.md`
- `docs/AI_WORKFLOW_CONTRACT.md`
- `docs/specs/CONCEPTION_HARNESS_COMMANDES_LOGS_MAX_CODEX.md`
- `tools/vesperare-harness/README.md`
- `tools/vesperare-harness/schemas/command.schema.json`
- `tools/vesperare-harness/schemas/log.schema.json`
- `tools/vesperare-harness/schemas/ack.schema.json`
- `tools/vesperare-harness/schemas/error.schema.json`
- `tools/vesperare-harness/powershell/New-VesperareHarnessCommand.ps1`
- `tools/vesperare-harness/powershell/Test-VesperareHarnessLog.ps1`
- `docs/reprise/05_NEXT_ACTIONS.md`

## 1. Objet

Decision :

La phase transforme le squelette v0 du harness en flux local testable sans Max.

Flux prouve :

```text
commande JSON
-> stub local fichier-only
-> ack JSON ou error JSON
-> log JSONL
-> validation par scripts PowerShell et Codex CLI
```

Limite :

Ce flux ne valide pas Max, Ableton, le DSP, l'audio, la jouabilite, la musicalite, une architecture finale, un routage final ou un objet Max final.

## 2. Fichiers crees

Fait :

- `tools/vesperare-harness/powershell/Test-VesperareHarnessCommand.ps1`
- `tools/vesperare-harness/powershell/Test-VesperareHarnessAck.ps1`
- `tools/vesperare-harness/powershell/Test-VesperareHarnessError.ps1`
- `tools/vesperare-harness/powershell/Invoke-VesperareHarnessStub.ps1`
- `tools/vesperare-harness/examples/ack.ping.sample.json`
- `tools/vesperare-harness/examples/error.unknown-command.sample.json`
- `docs/reprise/32_TRACE_HARNESS_LOCAL_STUB_COMMANDES_LOGS_V0.md`

## 3. Fichiers mis a jour

Fait :

- `tools/vesperare-harness/README.md`
- `tools/vesperare-harness/examples/log.session.sample.jsonl`
- `docs/PROJECT_ROADMAP_VESPERARE.md`
- `docs/reprise/05_NEXT_ACTIONS.md`

## 4. Regles du stub local

Fait :

Le stub local :

- lit une commande JSON conforme au contrat `vesperare.max_harness.command.v0` ;
- accepte seulement `ping` et `request_state` ;
- produit `ack.json` si la commande est acceptee ;
- produit `error.json` si la commande est refusee ;
- produit `harness-session.jsonl` avec `boot`, `command_received`, `command_ack` ou `command_error`, `log_flush`, `shutdown` ;
- ecrit ses sorties dans le dossier fourni par `-OutputDirectory` ;
- ne lance pas Max ;
- ne lance pas Ableton ;
- ne modifie aucun `.maxpat`.

Inference :

Le stub teste le contrat local commandes/logs et la lisibilite machine des traces. Il ne teste pas un patch Max futur.

## 5. Validations locales realisees

Fait :

Les validations locales executees couvrent :

- exemple `command.ping.json` parse par `Test-VesperareHarnessCommand.ps1` ;
- exemple `ack.ping.sample.json` parse par `Test-VesperareHarnessAck.ps1` ;
- exemple `error.unknown-command.sample.json` parse par `Test-VesperareHarnessError.ps1` ;
- exemple `log.session.sample.jsonl` parse par `Test-VesperareHarnessLog.ps1` ;
- stub local execute sur `command.ping.json` dans un dossier temporaire hors repo ;
- `ack.json` produit par le stub parse par `Test-VesperareHarnessAck.ps1` ;
- log `harness-session.jsonl` produit par le stub parse par `Test-VesperareHarnessLog.ps1` ;
- stub local execute sur une commande `load_patch` generee en dossier temporaire ;
- `error.json` produit par le stub parse par `Test-VesperareHarnessError.ps1` ;
- log d'erreur produit par le stub parse par `Test-VesperareHarnessLog.ps1`.

A verifier avant commit :

- `git diff --check` ;
- `git diff --cached --check`.

## 6. Decision de statut

Decision :

Le flux local v0 est une preuve du contrat fichier commandes/logs uniquement.

Il ne doit pas etre presente comme :

- integration Max ;
- test audio ;
- validation DSP ;
- validation musicale ;
- validation technique du patch 01 ;
- architecture validee ;
- routage final ;
- choix d'objet Max final.

## 7. Prochaine action minimale

Recommandation :

Apres merge de cette phase, la prochaine action minimale est de relire la trace 32 et de decider une suite bornee pour un futur patch observable seulement si le contrat local commandes/logs reste suffisant et si la phase n'exige pas de validation musicale prematuree.
