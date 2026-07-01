# Max harness Vesperare

Statut : dossier de conventions, artefact documentaire comment-only v0, patch harness fichiers v1 separe et voie Node for Max v2 strictement bornee au harness, avec smoke Max local stabilise par patch temporaire genere.
Date : 2026-07-01.
Perimetre : conventions de fichiers et artefacts `.maxpat` separes ; diagnostic du smoke test Max v1 ; bridge Node for Max v2 dans `_harness` ; smoke Max local via `.codex_tmp/` ; aucune UI de performance, aucun mapping, aucun asset, aucune sample bank, aucun seuil numerique, aucune validation audio, DSP, musicale ou architecturale.

## Role du dossier

Decision :

`projects/max/_harness/` est le lieu de rangement Max-side pour l'observabilite du harness commandes/logs.

Il accueille maintenant un premier artefact documentaire comment-only, un patch v1 separe destine a investiguer le contrat fichier, une voie Node for Max v2 strictement bornee au harness et un probe `node.script` separe.

Documents de reference :

```text
docs/specs/INTEGRATION_MAX_HARNESS_FICHIERS_V0.md
docs/specs/PRE_SPEC_IMPLEMENTATION_MAX_HARNESS_FICHIERS_V1.md
docs/reprise/37_DIAGNOSTIC_LOGS_MAX_PATCH_HARNESS_FICHIERS_V1.md
docs/specs/PRE_SPEC_NODE_FOR_MAX_HARNESS_FICHIERS_V2.md
docs/reprise/38_TRACE_DIAGNOSTIC_NODE_SCRIPT_MAX_HARNESS_V2.md
docs/reprise/39_TRACE_STABILISATION_RUNTIME_HARNESS_MAX_CODEX.md
```

Fait :

Le dossier contient :

- `projects/max/_harness/README.md`
- `projects/max/_harness/node/vesperare-harness-bridge-v2.js`
- `projects/max/_harness/node/vesperare-node-script-probe-v2.js`
- `projects/max/_harness/patches/vesperare-harness-file-observer-v0.maxpat`
- `projects/max/_harness/patches/vesperare-harness-files-v1.maxpat`
- `projects/max/_harness/patches/vesperare-harness-node-bridge-v2.maxpat`
- `projects/max/_harness/patches/vesperare-harness-node-script-probe-v2.maxpat`
- `tools/vesperare-harness/powershell/Invoke-VesperareMaxHarnessSmoke.ps1`

Decision :

`vesperare-harness-file-observer-v0.maxpat` est un artefact d'observabilite documentaire, provisoire et separe. Il ne lit pas de fichier, n'ecrit pas de fichier, ne traite pas de commande et ne choisit aucun objet Max final.

Decision :

`vesperare-harness-files-v1.maxpat` est un patch harness file-only provisoire, separe du patch 01. Il vise a importer `command.pending.json`, router `ping` et `request_state`, et demander l'ecriture de `ack.json`, `error.json`, `harness-session.jsonl` et `state.current.json`.

Limite :

Le v1 a ete lance dans Max lors d'un smoke test borne, mais aucun `ack.json`, `error.json`, `harness-session.jsonl` ou `state.current.json` n'a ete produit. Ce resultat est un blocage d'observabilite Max-side, pas une validation Max.

Decision :

Le diagnostic v1 retient que le probleme observe vient probablement de l'implementation Max `message` / `text` / `dict` pour JSON brut, chemins relatifs et ecriture fichier, pas de l'installation Max.

Decision :

`vesperare-harness-bridge-v2.js` est un bridge Node for Max autorise seulement dans `_harness`. Il lit `commands/command.pending.json`, accepte `ping` et `request_state`, puis ecrit `ack.json` ou `error.json`, `harness-session.jsonl` et `state.current.json` pour `request_state`.

Fait :

Le diagnostic `node.script` a montre que le chemin relatif `../node/...` n'etait pas resolu par Max dans le contexte de lancement local. Le meme probe a fonctionne avec un chemin absolu local.

Decision :

Le patch source v2 ne porte plus le chemin absolu local committe. Le smoke officiel passe par :

```text
tools/vesperare-harness/powershell/Invoke-VesperareMaxHarnessSmoke.ps1
```

Fait :

Ce script genere un `.maxpat` temporaire sous `.codex_tmp/` avec `node.script` pointant vers le chemin absolu local du bridge, lance Max via `VESPERARE_MAX_EXE`, puis valide `ack/log/state` avec les validateurs PowerShell existants.

Limite :

Cette stabilisation valide un workflow local reproductible sur cette machine si `VESPERARE_MAX_EXE` pointe vers Max. Elle ne valide pas une strategie portable d'emballage Max, ni l'audio, ni le DSP, ni le patch 01, ni une architecture.

## Emplacements futurs possibles

Emplacements possibles :

```text
projects/max/_harness/commands/
projects/max/_harness/responses/
projects/max/_harness/logs/
projects/max/_harness/state/
projects/max/_harness/archive/
projects/max/_harness/lib/
projects/max/_harness/node/
projects/max/_harness/patches/
```

Fichiers de session possibles :

```text
command.pending.json
ack.json
error.json
harness-session.jsonl
state.current.json
```

Decision :

Ces emplacements sont des conventions de travail possibles. Ils ne valent pas architecture Max finale et ne choisissent aucun objet Max final.

## Artefact present

### `patches/vesperare-harness-file-observer-v0.maxpat`

Statut :

```text
artefact documentaire observable v0, non teste dans Max
```

Fait :

Le patch materialise seulement les noms et roles du contrat fichier v0 :

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

Il contient uniquement des boites `comment` et aucune ligne de patch.

Limite :

Les objets Max possibles comme `dict`, `text`, `message`, `comment` et `loadbang` y sont cites seulement comme candidats provisoires. Ils ne sont pas choisis comme implementation finale.

### `patches/vesperare-harness-files-v1.maxpat`

Statut :

```text
patch Max harness fichiers v1 separe, provisoire, smoke Max non concluant
```

Fait :

Le patch v1 est parseable comme JSON et contient la cle top-level `patcher`.

Fait :

Il utilise seulement les classes suivantes :

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

Le smoke test Max borne a depose une commande `ping`, lance Max avec le seul patch v1, puis collecte les sorties attendues. Max n'a produit aucun fichier harness exploitable.

Limite :

Le v1 ne prouve pas encore le traitement Max-side de `command.pending.json`. Il ne valide pas Max, l'audio, le DSP, le patch 01, une architecture, un routage final, un objet final ou la musicalite.

### `node/vesperare-harness-bridge-v2.js`

Statut :

```text
bridge Node for Max v2, strictement borne au contrat fichier _harness
```

Fait :

Le script lit :

```text
projects/max/_harness/commands/command.pending.json
```

Fait :

Il produit selon la commande :

```text
projects/max/_harness/responses/ack.json
projects/max/_harness/responses/error.json
projects/max/_harness/logs/harness-session.jsonl
projects/max/_harness/state/state.current.json
```

Fait :

Il accepte seulement `ping` et `request_state`, ne depend d'aucun package npm externe, n'utilise pas le reseau et ne contient aucune logique audio, musicale ou de patch 01.

Fait :

Hors Max, le bridge produit des fichiers conformes aux validateurs PowerShell existants pour `ping` et `request_state`.

Fait :

Depuis la trace 39, cette verification standalone est completee par deux smoke tests Max lances par script : `ping` et `request_state`.

Limite :

Ces smoke tests prouvent l'execution locale par `node.script` avec chemin absolu genere temporairement, pas une strategie portable ni une validation audio, DSP, patch 01, architecturale ou musicale.

### `node/vesperare-node-script-probe-v2.js`

Statut :

```text
probe node.script v2, strictement borne au diagnostic de chargement
```

Fait :

Le script ecrit seulement :

```text
projects/max/_harness/logs/node-script-probe-proof.json
```

Fait :

Il a prouve que `node.script` peut executer un script dans Max 9 quand le chemin du script est absolu.

Limite :

Le probe ne traite aucune commande harness, ne remplace pas le bridge v2 et ne valide aucun comportement audio, DSP, patch 01, architectural ou musical.

### `patches/vesperare-harness-node-bridge-v2.maxpat`

Statut :

```text
patch Node for Max v2 separe, source sans chemin absolu local committe
```

Fait :

Le patch contient seulement des commentaires de perimetre et un objet `node.script` avec `@autostart 1`.

Fait :

Le patch source reference `../node/vesperare-harness-bridge-v2.js`. Cette reference reste une trace/source separee et parseable, pas le support officiel du smoke local.

Fait :

Il ne lit pas, n'ouvre pas, ne modifie pas et ne valide pas :

```text
projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat
```

Fait :

Le smoke test officiel genere un patch temporaire sous `.codex_tmp/` avec chemin absolu local. Avec ce patch temporaire, `ping` produit `ack.json` et `harness-session.jsonl`, sans `error.json`.

Fait :

Avec le meme workflow temporaire, `request_state` produit `ack.json`, `harness-session.jsonl` et `state.current.json`, sans `error.json`.

Limite :

Le chemin absolu local reste une condition du patch temporaire genere, pas une donnee source commitee. Cela ne valide pas une strategie portable d'emballage Max.

### `patches/vesperare-harness-node-script-probe-v2.maxpat`

Statut :

```text
patch probe node.script v2 separe
```

Fait :

Le patch probe a d'abord reproduit l'echec de resolution relative `../node/...`, puis a prouve l'execution `node.script` avec chemin absolu local.

Fait :

L'attribut `@log_path`, bien present dans la reference locale, a ete rejete par l'objet Max local pendant le probe.

Limite :

Ce patch est un outil de diagnostic, pas un patch musical, pas un objet final et pas une validation Max generale.

## Trace v1

Documents de reference :

```text
docs/specs/PRE_SPEC_IMPLEMENTATION_MAX_HARNESS_FICHIERS_V1.md
docs/reprise/35_DECISION_PASSAGE_IMPLEMENTATION_MAX_HARNESS_FICHIERS_V1.md
docs/reprise/36_TRACE_CREATION_PATCH_MAX_HARNESS_FICHIERS_V1.md
docs/reprise/37_DIAGNOSTIC_LOGS_MAX_PATCH_HARNESS_FICHIERS_V1.md
docs/specs/PRE_SPEC_NODE_FOR_MAX_HARNESS_FICHIERS_V2.md
```

Decision :

Le patch Max harness fichiers v1 separe existe avec reserves. Il reste borne a :

- lire ou importer `command.pending.json` ;
- repondre a `ping` et `request_state` ;
- produire `ack.json` ou `error.json` ;
- produire `harness-session.jsonl` ;
- produire ou rafraichir `state.current.json` ;
- rester dans `projects/max/_harness/` ;
- laisser `projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat` inchange.

Limite :

Cette creation ne choisit pas d'objet Max final, ne definit pas de routage final et ne valide ni Max, ni l'audio, ni le DSP, ni la musique, ni une architecture.

## Limites maintenues

Le harness Max-side n'est pas :

- une condition `P0/P1` ;
- une condition `direct/safe` ;
- une condition de protection ;
- une condition de `MIN-DID-PC` ;
- une validation Max ;
- une validation audio ;
- une validation DSP ;
- une validation musicale ;
- une validation du patch 01 ;
- un routage final ;
- une architecture validee.

Decision :

Node for Max reste interdit hors `_harness`, notamment dans le noyau audio, `P0/P1`, `direct/safe`, protection, `MIN-DID-PC` et le patch 01.

Condition d'arret :

Arreter si la suite tente de convertir cet artefact en UI de performance, mapping, asset, sample bank, seuil numerique, objet Max final, routage final, architecture validee ou validation musicale.

Arreter aussi si la suite demande de modifier :

```text
projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat
```
