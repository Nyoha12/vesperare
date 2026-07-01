# 37_DIAGNOSTIC_LOGS_MAX_PATCH_HARNESS_FICHIERS_V1

Statut : diagnostic borne des logs Max du patch harness fichiers v1 et trace de passage vers une voie Node for Max v2 strictement limitee au dossier `_harness`.
Date : 2026-07-01.
Perimetre : diagnostic technique et observabilite fichier ; sans modification du patch 01, sans audio, sans DSP, sans musicalite, sans UI de performance, sans mapping, sans asset, sans sample bank, sans seuil numerique, sans objet Max final, sans routage final et sans architecture validee.

## Sources consultees

Fait :

- `docs/reprise/36_TRACE_CREATION_PATCH_MAX_HARNESS_FICHIERS_V1.md`
- `docs/specs/PRE_SPEC_IMPLEMENTATION_MAX_HARNESS_FICHIERS_V1.md`
- `docs/specs/INTEGRATION_MAX_HARNESS_FICHIERS_V0.md`
- `docs/AI_WORKFLOW_CONTRACT.md`
- `docs/PROJECT_ROADMAP_VESPERARE.md`
- `docs/reprise/05_NEXT_ACTIONS.md`
- `tools/vesperare-harness/README.md`
- `tools/vesperare-harness/schemas/command.schema.json`
- `tools/vesperare-harness/schemas/ack.schema.json`
- `tools/vesperare-harness/schemas/error.schema.json`
- `tools/vesperare-harness/schemas/log.schema.json`
- `tools/vesperare-harness/schemas/state.schema.json`
- `projects/max/_harness/README.md`
- `projects/max/MANIFEST_MAX_PATCHES.md`
- `projects/max/_harness/patches/vesperare-harness-files-v1.maxpat`
- `projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat`
- `.codex_tmp/max-diagnostic-20260701-184058/03_max_console.txt`
- `.codex_tmp/max-diagnostic-20260701-184332/03_max_console.txt`
- `C:\Users\User\AppData\Roaming\Cycling '74\Max 9\Settings\recentitems.txt`
- `C:\Users\User\AppData\Roaming\Cycling '74\Max 9\Crash Recovery\maxworkspace-104312.txt`
- `C:\Users\User\AppData\Roaming\Cycling '74\Max 9\Logs\Max.log`

## 1. Constat v1

Fait :

Le patch v1 existe et reste separe du patch 01 :

```text
projects/max/_harness/patches/vesperare-harness-files-v1.maxpat
```

Fait :

Max local est disponible :

```text
C:\Program Files\Cycling '74\Max 9\Max.exe
```

Fait :

Les traces locales montrent que Max a ete lance avec le patch v1 et a produit des logs console. Extraits observes :

```text
text: can't find file v1_ack
text: can't find file v1_error
text: can't find file v1_state
text: can't find file v1_log
dict: file not found: ../commands/command.pending.json
dict: could not retrieve key type
technical: no such object
not: no such object
audio: no such object
DSP: no such object
append: no such object
write: no such object
```

Fait :

Le smoke test v1 n'a pas produit les fichiers attendus :

```text
projects/max/_harness/responses/ack.json
projects/max/_harness/responses/error.json
projects/max/_harness/logs/harness-session.jsonl
projects/max/_harness/state/state.current.json
```

## 2. Diagnostic

Inference :

Le v1 a prouve que Max est installable/lancable localement, que le patch v1 peut etre ouvert assez loin pour produire des logs console, et que le probleme observe n'est pas une absence d'installation Max.

Inference :

Le v1 n'a pas prouve que Max traite correctement `command.pending.json`. Les erreurs `dict`, `text`, `append` et `write` indiquent plutot une implementation Max message/text/dict fragile pour :

- JSON brut ;
- chemins relatifs ;
- noms de `text` pris comme fichiers ;
- messages multi-fragments interpretes comme objets ou commandes Max inattendues.

Decision :

Le diagnostic retenu est :

```text
le probleme principal est l'implementation v1 message/text/dict,
pas l'installation Max.
```

Limite :

Ce diagnostic ne valide pas Max, l'audio, le DSP, la musicalite, le patch 01, une architecture, un routage final ou un objet Max final.

## 3. Decision Node for Max

Decision :

Node for Max est autorise uniquement comme couche de harness fichier dans :

```text
projects/max/_harness/
```

Decision :

Node for Max reste interdit dans :

```text
noyau audio ;
P0/P1 ;
direct/safe ;
protection ;
MIN-DID-PC ;
projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat.
```

Inference :

Cette autorisation locale permet de deplacer la manipulation JSON/fichiers vers une couche plus fiable, sans transformer Node for Max en architecture finale ni en choix d'objet Max final.

## 4. Verification v2 realisee

Fait :

Le bridge Node for Max v2 a ete cree ici :

```text
projects/max/_harness/node/vesperare-harness-bridge-v2.js
```

Fait :

Le patch Max v2 separe a ete cree ici :

```text
projects/max/_harness/patches/vesperare-harness-node-bridge-v2.maxpat
```

Fait :

Le bridge Node a ete verifie hors Max avec Node local :

```text
node v24.15.0
```

Fait :

Hors Max, le bridge lit `command.pending.json`, accepte `ping`, produit `ack.json` et produit `harness-session.jsonl` conforme aux validateurs PowerShell.

Fait :

Hors Max, le bridge accepte `request_state`, produit `ack.json`, produit `state.current.json` et produit `harness-session.jsonl` conforme aux validateurs PowerShell.

Fait :

Le bridge tolere le BOM UTF-8 produit par Windows PowerShell lors de la creation de `command.pending.json`.

Limite :

Cette verification Node standalone prouve le contrat fichier du bridge, pas l'execution effective par `node.script` dans Max.

## 5. Smoke test Max v2

Fait :

Une commande `ping` conforme a ete deposee dans :

```text
projects/max/_harness/commands/command.pending.json
```

Fait :

Max a ete lance avec le seul patch v2 :

```text
projects/max/_harness/patches/vesperare-harness-node-bridge-v2.maxpat
```

Fait :

Un processus Max existait deja avant le lancement :

```text
PID 104312
```

Fait :

Le lancement Max du patch v2 a retourne un PID transitoire, puis seul le processus Max preexistant est reste actif. Aucun nouveau processus Max persistant n'a ete ferme.

Fait :

Les fichiers Max locaux indiquent que le patch v2 a bien ete vu par Max :

```text
C:/Users/User/Documents/GitHub/vesperare/projects/max/_harness/patches/vesperare-harness-node-bridge-v2.maxpat
```

Fait :

Le fichier de workspace Max liste le patch v2 ouvert avec une vue visible.

Fait :

Le log Max local contient :

```text
[2026-07-01 18:59:20.347711 error] [108080] Max: unable to open
```

Fait :

Malgre cela, le smoke test Max v2 n'a produit aucun fichier :

```text
ack.json absent
error.json absent
harness-session.jsonl absent
state.current.json absent
```

Inference :

Le blocage v2 observe est situe entre l'ouverture du patch dans Max et l'execution effective du bridge par `node.script`, ou dans la resolution du script par Max. Le bridge Node lui-meme fonctionne hors Max.

Limite :

Le smoke test Max v2 ne prouve pas encore que Node for Max execute le bridge dans Max. Il ne prouve pas non plus l'audio, le DSP, la musicalite, le patch 01, une architecture, un routage final ou un objet final.

## 6. Prochaine action minimale

Recommandation :

La prochaine action minimale est d'isoler le chargement `node.script` dans le patch v2, strictement dans `_harness`, sans modifier le patch 01 :

```text
verifier resolution du chemin du script par node.script ;
obtenir au moins ack.json ou error.json depuis Max pour ping ;
tenter request_state seulement apres une sortie observable ping ;
valider les fichiers produits par les scripts PowerShell ;
documenter tout blocage comme observabilite, pas comme jugement musical.
```

Condition d'arret :

Arreter si la suite demande de modifier le patch 01, de faire entrer Node for Max dans le noyau audio, P0/P1, direct/safe, protection ou MIN-DID-PC, de produire un mapping, une UI de performance, un asset, une sample bank, un seuil numerique, un objet Max final, un routage final, une architecture validee ou une validation musicale.
