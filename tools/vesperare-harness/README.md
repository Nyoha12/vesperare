# Vesperare harness commandes/logs v0

Statut : squelette v0 d'outillage fichiers pour le harness Max <-> Codex.

Perimetre : schemas, exemples et scripts PowerShell de creation/verification JSON/JSONL. Aucun lancement Max, aucun lancement Ableton, aucune modification de patch, aucune UI, aucun mapping, aucun asset, aucune sample bank, aucun seuil numerique.

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

Ce dossier contient le squelette v0 du harness commandes/logs :

- schemas JSON pour commande, log, ack et error ;
- exemple de commande `ping` ;
- exemple de session log JSONL ;
- script PowerShell de creation d'une commande JSON ;
- script PowerShell de verification d'un log JSONL.

Inference :

Ce squelette rend possible une verification machine-lisible minimale avant toute integration Max future. Il ne valide pas Max, le DSP, l'audio, la jouabilite, la musicalite, une architecture finale, un routage final ou un objet Max final.

## Contrats v0

Fait :

- `schemas/command.schema.json` decrit une commande bornee.
- `schemas/log.schema.json` decrit une ligne JSONL de log.
- `schemas/ack.schema.json` decrit un accuse de reception.
- `schemas/error.schema.json` decrit une erreur explicite.

Decision :

Les schemas restent fermes au niveau racine avec `additionalProperties: false`. Les champs `payload` et `data` restent des objets libres pour ne pas transformer le harness v0 en architecture musicale ou technique finale.

## Scripts

### Creer une commande JSON

```powershell
powershell -ExecutionPolicy Bypass -File tools/vesperare-harness/powershell/New-VesperareHarnessCommand.ps1 -OutputPath .codex_tmp/harness-command.json
```

Le script cree seulement un fichier JSON de commande. Il ne lit pas Max, ne lance pas Max, ne lance pas Ableton et ne modifie aucun `.maxpat`.

### Verifier un log JSONL

```powershell
powershell -ExecutionPolicy Bypass -File tools/vesperare-harness/powershell/Test-VesperareHarnessLog.ps1 -LogPath tools/vesperare-harness/examples/log.session.sample.jsonl
```

Le script verifie que chaque ligne non vide est un evenement JSON conforme au contrat v0 local. Il ne valide pas l'audio, la musicalite, l'architecture ou le patch.

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
