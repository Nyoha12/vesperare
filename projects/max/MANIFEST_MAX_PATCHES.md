# Manifest Max patches Vesperare

Statut : manifeste minimal des artefacts Max presents dans `projects/max`, des conventions de harness Max-side, du patch harness fichiers v1 separe et de la voie Node for Max v2 strictement bornee au harness avec chargement `node.script` diagnostique localement.
Date : 2026-07-01.
Perimetre : inventaire documentaire ; diagnostic smoke test Max v1 ; bridge Node for Max v2 dans `_harness` ; sans validation technique, audio, DSP ou musicale.

## Sources consultees

Fait :

- `docs/reprise/27_TRACE_CREATION_PREMIER_PATCH_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/28_TRACE_TEST_CHARGEMENT_PATCH_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/05_NEXT_ACTIONS.md`
- `docs/reprise/32_TRACE_HARNESS_LOCAL_STUB_COMMANDES_LOGS_V0.md`
- `docs/specs/CONCEPTION_HARNESS_COMMANDES_LOGS_MAX_CODEX.md`
- `docs/specs/INTEGRATION_MAX_HARNESS_FICHIERS_V0.md`
- `docs/specs/PRE_SPEC_IMPLEMENTATION_MAX_HARNESS_FICHIERS_V1.md`
- `docs/reprise/34_TRACE_ARTEFACT_MAX_OBSERVABLE_HARNESS_FICHIERS_V0.md`
- `docs/reprise/35_DECISION_PASSAGE_IMPLEMENTATION_MAX_HARNESS_FICHIERS_V1.md`
- `docs/reprise/36_TRACE_CREATION_PATCH_MAX_HARNESS_FICHIERS_V1.md`
- `docs/reprise/37_DIAGNOSTIC_LOGS_MAX_PATCH_HARNESS_FICHIERS_V1.md`
- `docs/specs/PRE_SPEC_NODE_FOR_MAX_HARNESS_FICHIERS_V2.md`
- `tools/vesperare-harness/README.md`
- `projects/max/_harness/README.md`
- `projects/max/_harness/patches/vesperare-harness-file-observer-v0.maxpat`
- `projects/max/_harness/patches/vesperare-harness-files-v1.maxpat`
- `projects/max/_harness/node/vesperare-harness-bridge-v2.js`
- `projects/max/_harness/patches/vesperare-harness-node-bridge-v2.maxpat`
- `projects/max/_harness/node/vesperare-node-script-probe-v2.js`
- `projects/max/_harness/patches/vesperare-harness-node-script-probe-v2.maxpat`
- `docs/reprise/38_TRACE_DIAGNOSTIC_NODE_SCRIPT_MAX_HARNESS_V2.md`
- `projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat`

## 1. Patches listes

### `projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat`

Statut :

```text
artefact minimal provisoire
```

Fait :

Le fichier existe dans l'emplacement autorise par la chaine documentaire des fiches 26, 27 et 28.

Fait :

La trace 28 indique que le fichier a ete lu comme JSON par l'environnement local. Dans la presente branche, Codex CLI a aussi confirme un parsing JSON avec cle `patcher` presente. Cette verification reste une lecture de fichier, pas un chargement Max.

Valide a ce stade :

- existence du fichier ;
- format `.maxpat` lisible comme JSON ;
- presence d'un contenant minimal strictement borne ;
- absence de modification du patch dans la phase actuelle.

Non valide a ce stade :

- chargement Max ;
- ouverture sans erreur dans Max ;
- console Max sans erreur ;
- DSP ;
- audio ;
- jouabilite ;
- relation musicale live didgeridoo / PC / sortie ;
- architecture ;
- niveau 6 ;
- routage final ;
- objet Max final ;
- mapping ;
- UI ;
- musicalite ;
- protection critique finale ;
- familles lourdes dans `P0/P1`, `direct/safe`, protection ou `MIN-DID-PC`.

Decision :

Le patch 01 ne doit pas etre corrige ni etendu tant que le prochain axe est la conception du harness commandes/logs.

Inference :

La lecture JSON permet seulement a Codex CLI de constater que le fichier est structurellement lisible. Elle ne prouve rien sur Max standalone, le DSP, l'audio, la latence, la protection, la jouabilite ou la musicalite.

### `projects/max/_harness/patches/vesperare-harness-file-observer-v0.maxpat`

Statut :

```text
artefact Max-side observable documentaire v0 comment-only
```

Fait :

Le fichier existe comme artefact separe du patch 01.

Fait :

Il materialise le contrat fichier v0 du harness :

- `command.pending.json`
- `ack.json`
- `error.json`
- `harness-session.jsonl`
- `state.current.json`

Fait :

Il represente les commandes minimales :

- `ping`
- `request_state`

Fait :

Il contient seulement des boites `comment`, aucune ligne de patch, aucun objet audio, aucun DSP, aucun objet lourd et aucune UI de performance.

Fait :

Il ne lit pas de fichier, n'ecrit pas de fichier et ne traite aucune commande.

Decision :

Les classes Max citees dans l'artefact, comme `dict`, `text`, `message`, `comment` et `loadbang`, restent des candidats provisoires pour investigation future. Elles ne sont pas choisies comme objets finaux.

Limite :

Ce fichier n'a pas ete charge dans Max. Sa lecture JSON n'est pas une validation Max, audio, DSP, musicale, technique ou architecturale.

### `projects/max/_harness/patches/vesperare-harness-files-v1.maxpat`

Statut :

```text
patch Max harness fichiers v1 separe, provisoire, smoke Max non concluant
```

Fait :

Le fichier existe comme artefact separe du patch 01.

Fait :

Il est parseable comme JSON et contient la cle top-level `patcher`.

Fait :

Il vise a importer :

```text
projects/max/_harness/commands/command.pending.json
```

Fait :

Il vise a produire ou rafraichir :

```text
projects/max/_harness/responses/ack.json
projects/max/_harness/responses/error.json
projects/max/_harness/logs/harness-session.jsonl
projects/max/_harness/state/state.current.json
```

Fait :

Les classes Max detectees dans le fichier sont seulement :

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

Fait :

Il ne contient pas `adc~`, `dac~`, `gen~`, `poly~`, MC, `buffer~`, `pfft/FFT`, corpus, plugin, ML ou external.

Fait :

Un smoke test Max strictement borne a ete tente avec une commande `ping`. Le patch 01 n'a pas ete ouvert. Max n'a produit ni `ack.json`, ni `error.json`, ni `harness-session.jsonl`, ni `state.current.json`.

Inference :

Le smoke test prouve seulement qu'une tentative de lancement local du patch v1 a ete effectuee. Il ne prouve pas que le traitement Max-side de `command.pending.json` fonctionne.

Limite :

Le v1 ne valide pas Max, l'audio, le DSP, la jouabilite, le patch 01, une architecture, un routage final, un objet final, un niveau 6, un mapping, une UI ou la musicalite.

### `projects/max/_harness/node/vesperare-harness-bridge-v2.js`

Statut :

```text
bridge Node for Max v2, strictement borne au harness fichiers
```

Fait :

Le fichier existe comme bridge separe du patch 01.

Fait :

Il lit :

```text
projects/max/_harness/commands/command.pending.json
```

Fait :

Il produit :

```text
projects/max/_harness/responses/ack.json
projects/max/_harness/responses/error.json
projects/max/_harness/logs/harness-session.jsonl
projects/max/_harness/state/state.current.json
```

Fait :

Il accepte seulement `ping` et `request_state`, sans dependance npm externe, sans reseau et sans logique musicale.

Fait :

Le bridge fonctionne hors Max avec Node local pour `ping` et `request_state`, et les fichiers produits passent les validateurs PowerShell existants.

Fait :

Depuis la trace 38, le bridge v2 a aussi ete execute par Max via `node.script` avec chemin absolu local. Les smokes Max `ping` et `request_state` produisent les fichiers contractuels attendus.

Limite :

Cette verification ne prouve pas une strategie portable d'emballage Max, ni l'audio, ni le DSP, ni le patch 01, ni une architecture.

### `projects/max/_harness/patches/vesperare-harness-node-bridge-v2.maxpat`

Statut :

```text
patch Node for Max v2 separe, chargement node.script local corrige
```

Fait :

Le patch contient des commentaires de perimetre et un `node.script` avec `@autostart 1`.

Fait :

Le script est reference par chemin absolu local, car le diagnostic a montre que le chemin relatif `../node/...` n'etait pas resolu dans le smoke test Max local.

Fait :

Il reste separe du patch 01 et ne contient aucun objet audio, DSP, mapping, UI de performance, asset, sample bank, seuil numerique, routage final ou objet final.

Fait :

Le smoke test Max v2 `ping` produit :

```text
projects/max/_harness/responses/ack.json
projects/max/_harness/logs/harness-session.jsonl
```

Fait :

Le smoke test Max v2 `request_state` produit :

```text
projects/max/_harness/responses/ack.json
projects/max/_harness/logs/harness-session.jsonl
projects/max/_harness/state/state.current.json
```

Fait :

Les validateurs PowerShell `ack`, `log` et `state` passent sur les fichiers produits.

Inference :

Le blocage `node.script` etait la resolution relative du script, pas le contrat fichier du bridge.

Limite :

Le v2 ne valide pas une strategie portable d'emballage Max, l'audio, le DSP, la jouabilite, le patch 01, une architecture, un routage final, un objet final, un niveau 6, un mapping, une UI ou la musicalite.

### `projects/max/_harness/node/vesperare-node-script-probe-v2.js`

Statut :

```text
probe node.script v2, strictement borne au diagnostic de chargement
```

Fait :

Le fichier existe comme probe separe du patch 01.

Fait :

Il ecrit seulement :

```text
projects/max/_harness/logs/node-script-probe-proof.json
```

Fait :

Le probe a reproduit l'echec du chemin relatif `../node/...`, puis a prouve que `node.script` execute le script avec chemin absolu local.

Limite :

Le probe ne traite pas le contrat harness, ne remplace pas le bridge v2 et ne valide pas Max en general, l'audio, le DSP, le patch 01, une architecture ou la musicalite.

### `projects/max/_harness/patches/vesperare-harness-node-script-probe-v2.maxpat`

Statut :

```text
patch probe node.script v2 separe
```

Fait :

Le fichier existe comme patch de diagnostic separe du patch 01.

Fait :

Il contient un seul objet `node.script` de probe et des commentaires de perimetre.

Fait :

L'attribut `@log_path`, bien present dans la reference locale, a ete rejete par l'objet Max local pendant le probe.

Limite :

Ce patch ne vaut pas objet final, routage final, architecture, validation audio, validation DSP ou validation musicale.

## 2. Dossier harness Max-side

### `projects/max/_harness/`

Statut :

```text
dossier documentaire de convention pour futur harness Max-side observable
```

Fait :

Le dossier contient actuellement :

- `projects/max/_harness/README.md`
- `projects/max/_harness/node/vesperare-harness-bridge-v2.js`
- `projects/max/_harness/node/vesperare-node-script-probe-v2.js`
- `projects/max/_harness/patches/vesperare-harness-file-observer-v0.maxpat`
- `projects/max/_harness/patches/vesperare-harness-files-v1.maxpat`
- `projects/max/_harness/patches/vesperare-harness-node-bridge-v2.maxpat`
- `projects/max/_harness/patches/vesperare-harness-node-script-probe-v2.maxpat`

Fait :

Un premier `.maxpat` documentaire existe dans ce dossier. Il ne lit pas de fichier, n'ecrit pas de fichier, ne traite pas de commande et ne valide pas Max.

Decision :

Ce dossier est le lieu futur possible pour les conventions Max-side de fichiers :

```text
command.pending.json
ack.json
error.json
harness-session.jsonl
state.current.json
```

Limite :

Ce dossier ne vaut pas patch Max, validation Max, validation audio, validation DSP, validation musicale, routage final, objet Max final ou architecture validee.

### Implementation harness fichiers v1

Statut :

```text
creee avec reserves ; smoke Max non concluant
```

Fait :

Les documents de preparation et de trace existent :

```text
docs/specs/PRE_SPEC_IMPLEMENTATION_MAX_HARNESS_FICHIERS_V1.md
docs/reprise/35_DECISION_PASSAGE_IMPLEMENTATION_MAX_HARNESS_FICHIERS_V1.md
docs/reprise/36_TRACE_CREATION_PATCH_MAX_HARNESS_FICHIERS_V1.md
```

Decision :

Le patch Max harness fichiers v1 separe reste borne a :

- lire ou importer `command.pending.json` ;
- repondre a `ping` et `request_state` ;
- produire `ack.json` ou `error.json` ;
- produire `harness-session.jsonl` ;
- produire ou rafraichir `state.current.json` ;
- rester dans `projects/max/_harness/` ;
- laisser le patch 01 inchange.

Limite :

Cette creation n'est pas une validation Max, audio, DSP, technique du patch 01, architecturale ou musicale.

## 3. Prochaine action Max

Decision :

La prochaine action Max n'est pas un test humain, pas une lecture visuelle dans Max, pas une extension du patch 01 et pas une validation musicale.

Fait :

```text
Le flux local v0 du harness commandes/logs existe dans tools/vesperare-harness/.
```

Il teste localement :

```text
commande JSON -> stub local -> ack/error JSON -> log JSONL -> validation Codex
```

Limite :

Ce flux local n'integre pas Max, ne lance pas Max, ne lance pas Ableton et ne modifie pas le patch 01.

Decision :

L'integration Max-side fichier v0 est specifiee dans :

```text
docs/specs/INTEGRATION_MAX_HARNESS_FICHIERS_V0.md
```

Decision :

Les artefacts Max-side crees pour le harness sont `vesperare-harness-file-observer-v0.maxpat` et `vesperare-harness-files-v1.maxpat`.

Recommandation :

La prochaine action Max eventuelle est de decider si le harness garde le chemin absolu local comme outil de smoke test, ou si une action separee instruit une resolution portable Max project/search-path. Elle ne devra pas definir de routage final, choisir d'objet Max final, modifier le patch 01 ou se presenter comme validation Max generale, audio, DSP ou musicale.

## 4. Conditions d'arret

Arreter si la suite tente de :

- modifier `min-did-pc-minimal-01.maxpat` dans la phase actuelle ;
- creer un nouveau patch sans autorisation explicite ;
- lancer Max hors smoke test strictement borne du patch v1 ;
- lancer Ableton ;
- faire un test humain comme prochaine preuve ;
- valider musicalement ou techniquement le patch 01 ;
- transformer le harness en module musical final ;
- faire entrer Node for Max hors `_harness`, notamment dans le noyau audio, `P0/P1`, `direct/safe`, protection, `MIN-DID-PC` ou le patch 01 ;
- definir UI, mapping, asset, sample bank, seuil numerique, objet Max final ou routage final.
