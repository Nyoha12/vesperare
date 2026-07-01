# 36_TRACE_CREATION_PATCH_MAX_HARNESS_FICHIERS_V1

Statut : trace de creation du patch Max harness fichiers v1 separe, avec tentative de smoke test Max bornee.
Date : 2026-07-01.
Perimetre : patch Max file-only separe ; sans modification du patch 01, sans test audio, sans DSP, sans musicalite, sans UI de performance, sans mapping, sans asset, sans sample bank, sans seuil numerique, sans objet Max final, sans routage final et sans architecture validee.

## Sources consultees

Fait :

- `README.md`
- `docs/00_INDEX_METHODE_DECISIONS.md`
- `docs/45_REPRISE_DEPUIS_FICHE_MESURES_INSTRUMENTS.md`
- `docs/42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md`
- `docs/modules/18_CONTEXTUAL_CONTROL_ROUTER_AMPLITUDES_LIMITES_OVERRIDE_ADDENDUM.md`
- `docs/assets/00_ASSETS_INDEX.md`
- `docs/assets/15_DONNEES_INSTRUMENTALES_MANQUANTES_PRIORITAIRES.md`
- `docs/assets/16_ACOUSTICARCHIVE_MAPPING_DONNEES_VESPERARE.md`
- `docs/PROJECT_ROADMAP_VESPERARE.md`
- `docs/AI_WORKFLOW_CONTRACT.md`
- `docs/specs/CONCEPTION_HARNESS_COMMANDES_LOGS_MAX_CODEX.md`
- `docs/specs/INTEGRATION_MAX_HARNESS_FICHIERS_V0.md`
- `docs/specs/PRE_SPEC_IMPLEMENTATION_MAX_HARNESS_FICHIERS_V1.md`
- `docs/reprise/35_DECISION_PASSAGE_IMPLEMENTATION_MAX_HARNESS_FICHIERS_V1.md`
- `docs/reprise/05_NEXT_ACTIONS.md`
- `tools/vesperare-harness/README.md`
- `tools/vesperare-harness/schemas/command.schema.json`
- `tools/vesperare-harness/schemas/ack.schema.json`
- `tools/vesperare-harness/schemas/error.schema.json`
- `tools/vesperare-harness/schemas/log.schema.json`
- `tools/vesperare-harness/schemas/state.schema.json`
- `tools/vesperare-harness/examples/command.ping.json`
- `tools/vesperare-harness/examples/command.request-state.json`
- `tools/vesperare-harness/examples/ack.ping.sample.json`
- `tools/vesperare-harness/examples/error.unknown-command.sample.json`
- `tools/vesperare-harness/examples/log.session.sample.jsonl`
- `tools/vesperare-harness/examples/state.current.sample.json`
- `projects/max/_harness/README.md`
- `projects/max/MANIFEST_MAX_PATCHES.md`
- `projects/max/_harness/patches/vesperare-harness-file-observer-v0.maxpat`
- `projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat`

## 1. Creation du patch v1

Fait :

Le patch suivant a ete cree :

```text
projects/max/_harness/patches/vesperare-harness-files-v1.maxpat
```

Fait :

Il est separe du patch 01 :

```text
projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat
```

Fait :

Le patch 01 n'a pas ete modifie. Le hash SHA256 observe avant et apres l'action est :

```text
7D01D3F343B1384526190B7B155110CA4E335B5DDC287319E871BEB3C49A34B9
```

Decision :

Le v1 reste un patch harness file-only provisoire. Il ne corrige pas, n'enveloppe pas, n'etend pas et ne valide pas le patch 01.

## 2. Comportement vise par le patch v1

Fait :

Le patch v1 materialise les chemins de travail suivants :

```text
projects/max/_harness/commands/command.pending.json
projects/max/_harness/responses/ack.json
projects/max/_harness/responses/error.json
projects/max/_harness/logs/harness-session.jsonl
projects/max/_harness/state/state.current.json
```

Fait :

Le patch v1 est borne a :

- importer `command.pending.json` ;
- router `ping` ;
- router `request_state` ;
- refuser les autres types de commande par `error.json` ;
- demander l'ecriture de `ack.json` ou `error.json` ;
- demander l'ecriture de `harness-session.jsonl` ;
- demander l'ecriture de `state.current.json` pour `request_state`.

Fait :

Les classes Max detectees dans le patch v1 sont :

```text
comment
deferlow
dict
loadbang
message
route
select
text
trigger
```

Decision :

Ces objets restent des objets provisoires de harness. Ils ne sont pas des objets Max finaux et ne definissent pas un routage final.

## 3. Interdictions respectees

Fait :

Le patch v1 ne contient pas les classes ou domaines interdits suivants :

```text
adc~
dac~
gen~
poly~
MC
buffer~
pfft/FFT
corpus
plugin
ML
external
```

Fait :

Il ne cree pas d'UI de performance, mapping, asset, sample bank, seuil numerique, objet Max final, routage final ou architecture validee.

## 4. Verifications locales hors Max

Fait :

Le nouveau fichier `.maxpat` est parseable comme JSON et contient la cle top-level :

```text
patcher
```

Fait :

Les schemas et exemples du harness sont parseables :

```text
tools/vesperare-harness/schemas/*.schema.json
tools/vesperare-harness/examples/*.json
tools/vesperare-harness/examples/log.session.sample.jsonl
```

Fait :

Les validateurs PowerShell locaux passent pour :

```text
command.ping.json
command.request-state.json
ack.ping.sample.json
error.unknown-command.sample.json
log.session.sample.jsonl
state.current.sample.json
```

Fait :

Le stub local fichier-only passe pour `request_state` et produit, hors Max :

```text
ack.json
state.current.json
harness-session.jsonl
```

Limite :

Cette validation PowerShell prouve seulement le contrat fichier local. Elle ne prouve pas Max, l'audio, le DSP, la musicalite, le patch 01, une architecture ou un routage final.

## 5. Verification Node / npm

Fait :

Node et npm sont disponibles localement :

```text
node v24.15.0
npm 11.12.1
```

Fait :

`npm` a ete verifie via `npm.cmd`, car `npm.ps1` est bloque par la politique d'execution PowerShell locale.

Limite :

Node/npm n'ont pas ete utilises pour piloter Max ni pour valider musicalement quoi que ce soit. Leur verification confirme seulement la disponibilite de l'outillage local attendu.

## 6. Analyse de pertinence du smoke test Max

Fait :

Avant lancement de Max, l'analyse de pertinence etait :

```text
un lancement Max borne peut prouver qu'un Max local accepte d'ouvrir le patch v1
et, si des fichiers sont produits, que le patch ecrit des sorties JSON/JSONL
validables par les scripts PowerShell.
```

Limite :

Ce lancement ne peut pas prouver :

- la musicalite ;
- l'audio ;
- le DSP ;
- le patch 01 ;
- une architecture Max finale ;
- un routage final ;
- un objet Max final ;
- la robustesse generale du harness au-dela du smoke test borne.

## 7. Smoke test Max borne

Fait :

Max local a ete detecte ici :

```text
C:\Program Files\Cycling '74\Max 9\Max.exe
```

Fait :

Une commande `ping` conforme a ete deposee temporairement dans :

```text
projects/max/_harness/commands/command.pending.json
```

Fait :

Max a ete lance avec le seul patch v1 :

```text
projects/max/_harness/patches/vesperare-harness-files-v1.maxpat
```

Fait :

Le patch 01 n'a pas ete ouvert ni teste.

Fait :

Le processus Max lance pour ce smoke test s'est termine avant la fin de l'attente.

Fait :

Aucun fichier de sortie n'a ete produit par Max :

```text
projects/max/_harness/responses/ack.json
projects/max/_harness/responses/error.json
projects/max/_harness/logs/harness-session.jsonl
projects/max/_harness/state/state.current.json
```

Decision :

La commande `request_state` n'a pas ete deposee pour un second lancement Max, car le `ping` n'a produit ni `ack.json`, ni `error.json`, ni log exploitable. Continuer aurait risque de confondre un blocage d'observabilite avec une preuve.

Inference :

Le lancement Max ne suffit pas ici a prouver que le patch v1 a effectivement traite `command.pending.json`. Le resultat a documenter est donc un blocage d'observabilite Max-side, pas un succes de harness Max.

## 8. Nettoyage des sorties temporaires

Fait :

Les fichiers et dossiers de session temporaires crees pour le smoke test ont ete supprimes apres collecte :

```text
projects/max/_harness/commands/
projects/max/_harness/responses/
projects/max/_harness/logs/
projects/max/_harness/state/
.codex_tmp/harness-stub-request-state/
```

Decision :

Le depot ne conserve pas les sorties de session temporaires comme preuve musicale ou comme artefacts de projet.

## 9. Verdict

Fait :

Le patch v1 est cree, parseable comme JSON, contient `patcher`, reste separe du patch 01 et respecte la liste d'objets autorises.

Fait :

Le harness PowerShell local et les schemas/exemples restent valides.

Fait :

Le smoke test Max borne n'a pas produit de fichiers harness.

Decision :

Le patch v1 est un artefact Max-side file-only provisoire conforme au perimetre documentaire et aux interdictions de cette action.

Limite :

Le patch v1 n'est pas valide par un traitement Max observe. Il n'est pas une validation audio, DSP, musicale, technique du patch 01, architecturale, de routage final ou d'objet final.

## 10. Prochaine action minimale

Recommandation :

La prochaine action minimale est de corriger ou instrumenter le patch v1 seulement sur le canal d'observabilite fichier, en restant dans le meme perimetre :

```text
ouvrir uniquement le patch v1 ;
obtenir au moins ack.json ou error.json pour ping ;
puis seulement ensuite tenter request_state ;
valider les fichiers produits par les scripts PowerShell ;
ne pas ouvrir le patch 01 ;
ne pas tester audio, DSP ou musicalite.
```

Condition d'arret :

Arreter si la suite demande de modifier le patch 01, de produire une UI de performance, un mapping, un asset, une sample bank, un seuil numerique, un objet Max final, un routage final, une architecture validee ou une validation musicale.
