# 33_TRACE_CONTRAT_STATE_SESSION_HARNESS_FICHIERS_V0

Statut : trace de finalisation du contrat state/session du harness fichiers v0.
Date : 2026-07-01.
Perimetre : `request_state` -> `ack.json` + `harness-session.jsonl` avec `state_snapshot` + `state.current.json` -> validation Codex locale. Sans Max, sans Ableton, sans audio, sans DSP, sans patch Max, sans validation musicale.

## Sources consultees

Fait :

- `docs/PROJECT_ROADMAP_VESPERARE.md`
- `docs/AI_WORKFLOW_CONTRACT.md`
- `docs/specs/CONCEPTION_HARNESS_COMMANDES_LOGS_MAX_CODEX.md`
- `docs/specs/INTEGRATION_MAX_HARNESS_FICHIERS_V0.md`
- `docs/reprise/32_TRACE_HARNESS_LOCAL_STUB_COMMANDES_LOGS_V0.md`
- `docs/reprise/05_NEXT_ACTIONS.md`
- `tools/vesperare-harness/README.md`
- `tools/vesperare-harness/schemas/command.schema.json`
- `tools/vesperare-harness/schemas/log.schema.json`
- `tools/vesperare-harness/schemas/ack.schema.json`
- `tools/vesperare-harness/schemas/error.schema.json`
- `tools/vesperare-harness/powershell/Invoke-VesperareHarnessStub.ps1`
- `tools/vesperare-harness/powershell/Test-VesperareHarnessCommand.ps1`
- `tools/vesperare-harness/powershell/Test-VesperareHarnessLog.ps1`
- `projects/max/MANIFEST_MAX_PATCHES.md`
- `projects/max/_harness/README.md`

## 1. Objet

Decision :

La presente action complete le contrat fichier v0 autour de `request_state` et `state.current.json` cote harness local.

Fait :

Le flux local attendu est :

```text
command.request-state.json
-> Invoke-VesperareHarnessStub.ps1
-> ack.json
-> harness-session.jsonl avec state_snapshot
-> state.current.json
-> validateurs PowerShell
```

Limite :

Ce flux reste un flux local fichier-only. Il ne lance pas Max, ne lance pas Ableton, ne modifie aucun `.maxpat` et ne valide ni Max, ni l'audio, ni le DSP, ni la musique, ni une architecture.

## 2. Fichiers crees

Fait :

- `tools/vesperare-harness/schemas/state.schema.json`
- `tools/vesperare-harness/examples/command.request-state.json`
- `tools/vesperare-harness/examples/state.current.sample.json`
- `tools/vesperare-harness/powershell/Test-VesperareHarnessState.ps1`
- `docs/reprise/33_TRACE_CONTRAT_STATE_SESSION_HARNESS_FICHIERS_V0.md`

## 3. Fichiers mis a jour

Fait :

- `tools/vesperare-harness/powershell/Invoke-VesperareHarnessStub.ps1`
- `tools/vesperare-harness/README.md`
- `tools/vesperare-harness/examples/log.session.sample.jsonl`
- `docs/specs/INTEGRATION_MAX_HARNESS_FICHIERS_V0.md`
- `docs/PROJECT_ROADMAP_VESPERARE.md`
- `docs/reprise/05_NEXT_ACTIONS.md`

## 4. Contrat state v0

Fait :

`state.current.json` contient les champs minimaux suivants :

- `schema`
- `run_id`
- `updated_at`
- `source`
- `status`
- `mode`
- `last_command_id`
- `last_event`
- `capabilities`
- `errors`
- `message`

Decision :

`capabilities` et `errors` restent des tableaux simples de chaines.

Limite :

`state.current.json` ne contient pas de seuil numerique, pas de score audio, pas de routage final, pas de choix d'objet Max final, pas de mapping, pas d'asset, pas de sample bank et pas de jugement musical.

## 5. Comportement du stub local

Fait :

Pour `request_state`, le stub local :

- lit une commande JSON valide ;
- ecrit `state.current.json` dans le dossier fourni par `-OutputDirectory` ;
- ecrit `ack.json` dans le meme dossier ;
- ecrit `harness-session.jsonl` dans le meme dossier ;
- ajoute un evenement `state_snapshot` dans le log ;
- expose explicitement que le state n'est pas une validation Max, audio, DSP ou musicale.

Inference :

Ce comportement suffit a verifier le contrat state/session local avant un futur artefact Max observable. Il ne suffit pas a prouver un chargement Max.

## 6. Validations locales realisees

Fait :

Les validations locales executees avant commit couvrent :

- tous les schemas JSON parseables ;
- `command.request-state.json` parseable et valide via `Test-VesperareHarnessCommand.ps1` ;
- `state.current.sample.json` parseable et valide via `Test-VesperareHarnessState.ps1` ;
- `Invoke-VesperareHarnessStub.ps1` fonctionne avec `command.request-state.json` dans un dossier temporaire ;
- `state.current.json` produit par le stub valide via `Test-VesperareHarnessState.ps1` ;
- `harness-session.jsonl` produit par le stub valide via `Test-VesperareHarnessLog.ps1` ;
- `ack.json` produit par le stub valide via `Test-VesperareHarnessAck.ps1` ;
- les exemples existants `command.ping.json`, `ack.ping.sample.json` et `error.unknown-command.sample.json` restent valides ;
- `git diff --check` ;
- `git diff --cached --check`.

## 7. Decision de statut

Decision :

Le contrat state/session v0 est un contrat local d'observabilite fichier.

Il ne doit pas etre presente comme :

- integration Max deja realisee ;
- preuve de chargement Max ;
- test audio ;
- validation DSP ;
- validation musicale ;
- validation technique du patch 01 ;
- architecture validee ;
- routage final ;
- choix d'objet Max final.

## 8. Prochaine action minimale

Recommandation :

Apres merge de cette phase, la prochaine action minimale pourra etre un premier artefact Max observable seulement si la spec d'integration fichier v0 et le contrat `state.current.json` restent conformes.

Limite :

Cette action future devra laisser le patch 01 inchange et ne devra pas presenter l'observabilite comme validation Max, audio, DSP ou musicale.
