# 38_TRACE_DIAGNOSTIC_NODE_SCRIPT_MAX_HARNESS_V2

Statut : diagnostic borne du chargement `node.script` du patch Max harness v2 et correction minimale de chemin.
Date : 2026-07-01.
Perimetre : `projects/max/_harness/` seulement ; sans modification du patch 01, sans audio, sans DSP, sans musicalite, sans UI de performance, sans mapping, sans asset, sans sample bank, sans seuil numerique, sans objet Max final, sans routage final et sans architecture validee.

## Sources consultees

Fait :

- `docs/reprise/37_DIAGNOSTIC_LOGS_MAX_PATCH_HARNESS_FICHIERS_V1.md`
- `docs/specs/PRE_SPEC_NODE_FOR_MAX_HARNESS_FICHIERS_V2.md`
- `docs/reprise/05_NEXT_ACTIONS.md`
- `projects/max/_harness/README.md`
- `projects/max/MANIFEST_MAX_PATCHES.md`
- `projects/max/_harness/node/vesperare-harness-bridge-v2.js`
- `projects/max/_harness/patches/vesperare-harness-node-bridge-v2.maxpat`
- `C:\Program Files\Cycling '74\Max 9\resources\packages\Node for Max\docs\refpages\node.script.maxref.xml`
- `C:\Program Files\Cycling '74\Max 9\resources\packages\Node for Max\source\lib\nsProcess.js`
- `C:\Program Files\Cycling '74\Max 9\resources\packages\Node for Max\source\lib\nsProcessManager.js`
- `C:\Users\User\AppData\Roaming\Cycling '74\Max 9\Logs\Max.log`
- `C:\Users\User\AppData\Roaming\Cycling '74\Max 9\Crash Recovery\maxworkspace-104312.txt`

## 1. Etat initial du depot

Fait :

La reprise a commence depuis `main` :

```text
git switch main
git pull --ff-only origin main
```

Fait :

`main` etait deja a jour avec `origin/main`.

Fait :

Avant creation de branche, `git status --short` montrait des artefacts runtime non suivis :

```text
?? .codex_tmp/
?? projects/max/_harness/commands/
?? projects/max/_harness/patches/ack.json
?? projects/max/_harness/patches/harness-session.jsonl
```

Fait :

Les artefacts sous `patches/` etaient des sorties runtime v1 mal placees, pas des sources suivies. Ils n'ont pas ete inclus dans le travail.

Inference :

La condition de nettoyage automatique avant branche n'etait pas strictement remplie, car tous les artefacts non suivis n'etaient pas sous `.codex_tmp/` ou `projects/max/_harness/{commands,responses,logs,state}`.

Fait :

La branche de travail creee est :

```text
max/diagnostic-node-script-v2
```

## 2. Objet `node.script` initial

Fait :

Le patch v2 contenait l'objet suivant :

```text
node.script ../node/vesperare-harness-bridge-v2.js @autostart 1 @watch 0
```

Fait :

Le bridge v2 restait valide hors Max et determinait `_harness` depuis `__dirname`.

Inference :

Le bridge n'etait pas le premier endroit a modifier. Le blocage devait etre isole au chargement `node.script` ou a la resolution du chemin du script dans Max.

## 3. Probe `node.script`

Fait :

Un probe strictement minimal a ete cree :

```text
projects/max/_harness/node/vesperare-node-script-probe-v2.js
projects/max/_harness/patches/vesperare-harness-node-script-probe-v2.maxpat
```

Fait :

Le probe ecrit uniquement :

```text
projects/max/_harness/logs/node-script-probe-proof.json
```

Fait :

Premier essai du probe avec chemin relatif :

```text
node.script ../node/vesperare-node-script-probe-v2.js @autostart 1 @watch 0 @log_path C:/Users/User/Documents/GitHub/vesperare/projects/max/_harness/logs/node-script-probe-n4m-debug.log
```

Fait :

Le log Max local a indique :

```text
"log_path" is not a valid attribute argument
can't find file ../node/vesperare-node-script-probe-v2.js
Max: unable to open
```

Fait :

Aucun `node-script-probe-proof.json` et aucun log `@log_path` n'ont ete produits dans cet essai relatif.

Inference :

Max reconnaissait l'objet `node.script`, mais la resolution relative `../node/...` ne pointait pas vers le dossier du patch dans ce contexte de lancement. L'attribut `@log_path`, bien present dans la ref locale, est rejete par l'objet Max local pendant ce test.

Fait :

Second essai du meme probe avec chemin absolu du script et sans `@log_path` :

```text
node.script C:/Users/User/Documents/GitHub/vesperare/projects/max/_harness/node/vesperare-node-script-probe-v2.js @autostart 1 @watch 0
```

Fait :

Le probe a produit :

```text
projects/max/_harness/logs/node-script-probe-proof.json
```

Fait :

La preuve fichier contenait notamment :

```text
status: ok
source: node.script
script_dir: C:\Users\User\Documents\GitHub\vesperare\projects\max\_harness\node
```

Inference :

`node.script` fonctionne dans Max 9 sur cette machine quand le chemin du script est resolu de facon absolue. Le blocage observe n'etait pas Node for Max en general, mais le chemin relatif du script dans le patch v2.

## 4. Correction du patch v2

Decision :

La correction appliquee au patch v2 est strictement limitee a la resolution de chemin du script Node.

Fait :

Le patch v2 utilise maintenant :

```text
node.script C:/Users/User/Documents/GitHub/vesperare/projects/max/_harness/node/vesperare-harness-bridge-v2.js @autostart 1 @watch 0
```

Fait :

Le patch v2 ajoute aussi les metadonnees Max usuelles observees dans les exemples Node for Max :

```text
saved_object_attributes
textfile
dependency_cache
```

Fait :

`@log_path` n'a pas ete conserve dans le patch v2, car l'objet Max local l'a rejete pendant le probe.

Limite :

Le chemin absolu est une correction locale de smoke test pour cette machine et ce checkout. Elle ne valide pas une strategie portable d'emballage Max.

## 5. Smoke Max v2 `ping`

Fait :

Une commande `ping` propre a ete deposee dans :

```text
projects/max/_harness/commands/command.pending.json
```

avec :

```text
command_id: cmd-node-v2-max-smoke-ping-absolute-path
run_id: run-node-v2-max-smoke-absolute-path
```

Fait :

Max a ete lance avec le seul patch v2 corrige :

```text
projects/max/_harness/patches/vesperare-harness-node-bridge-v2.maxpat
```

Fait :

Le smoke test `ping` a produit :

```text
projects/max/_harness/responses/ack.json
projects/max/_harness/logs/harness-session.jsonl
```

Fait :

Il n'a pas produit :

```text
projects/max/_harness/responses/error.json
projects/max/_harness/state/state.current.json
```

Inference :

L'absence de `state.current.json` est conforme a `ping`.

Fait :

Les validateurs ont passe :

```text
OK: ack JSON parsed
OK: 4 log event(s) parsed
```

## 6. Smoke Max v2 `request_state`

Fait :

Apres `ping` concluant, une commande `request_state` propre a ete deposee dans :

```text
projects/max/_harness/commands/command.pending.json
```

avec :

```text
command_id: cmd-node-v2-max-smoke-request-state-absolute-path
run_id: run-node-v2-max-smoke-request-state-absolute-path
```

Fait :

Max a ete relance avec le patch v2 corrige.

Fait :

Le smoke test `request_state` a produit :

```text
projects/max/_harness/responses/ack.json
projects/max/_harness/logs/harness-session.jsonl
projects/max/_harness/state/state.current.json
```

Fait :

Il n'a pas produit :

```text
projects/max/_harness/responses/error.json
```

Fait :

Les validateurs ont passe :

```text
OK: ack JSON parsed
OK: 5 log event(s) parsed
OK: state JSON parsed
```

Inference :

Max execute maintenant le bridge v2 via `node.script` quand le script est reference par chemin absolu local.

## 7. Validations techniques

Fait :

Validations realisees :

```text
node --check projects/max/_harness/node/vesperare-node-script-probe-v2.js
node --check projects/max/_harness/node/vesperare-harness-bridge-v2.js
ConvertFrom-Json sur les .maxpat crees/modifies
PowerShell Test-VesperareHarnessAck.ps1
PowerShell Test-VesperareHarnessLog.ps1
PowerShell Test-VesperareHarnessState.ps1
```

Fait :

Le patch 01 n'a pas ete modifie.

Limite :

Les sorties runtime produites par les smoke tests restent des artefacts de session et ne sont pas des sources a committer.

## 8. Blocages et limites

Fait :

`@log_path` est documente dans la ref locale `node.script.maxref.xml`, mais l'objet Max local l'a rejete comme attribut invalide pendant le probe.

Inference :

Pour cette phase, l'observabilite fiable vient des fichiers ecrits par le probe et par le bridge, pas du debug log `@log_path`.

Fait :

Le lancement d'un patch deja ouvert dans une instance Max persistante peut seulement produire :

```text
Max: unable to open
```

Inference :

Les smokes propres ont donc ete faits depuis une instance Max fraiche pour chaque commande.

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

## 9. Prochaine action minimale

Recommandation :

Conserver le diagnostic comme une preuve technique locale : `node.script` fonctionne avec chemin absolu local et le bridge v2 produit `ack/log/state` depuis Max.

Recommandation :

La prochaine action minimale, hors cette correction, est de decider si le harness doit garder un chemin absolu local pour les smoke tests ou si une phase separee doit instruire une resolution portable Max project/search-path, sans modifier le patch 01 et sans transformer Node for Max en architecture finale.
