# Max harness Vesperare

Statut : dossier de conventions, artefact documentaire comment-only v0 et patch harness fichiers v1 separe.
Date : 2026-07-01.
Perimetre : conventions de fichiers et artefacts `.maxpat` separes ; tentative de smoke test Max bornee pour le v1 ; aucune UI de performance, aucun mapping, aucun asset, aucune sample bank, aucun seuil numerique, aucune validation audio, DSP, musicale ou architecturale.

## Role du dossier

Decision :

`projects/max/_harness/` est le lieu de rangement Max-side pour l'observabilite du harness commandes/logs.

Il accueille maintenant un premier artefact documentaire comment-only et un patch v1 separe destine a investiguer le contrat fichier decrit dans :

```text
docs/specs/INTEGRATION_MAX_HARNESS_FICHIERS_V0.md
docs/specs/PRE_SPEC_IMPLEMENTATION_MAX_HARNESS_FICHIERS_V1.md
```

Fait :

Le dossier contient :

- `projects/max/_harness/README.md`
- `projects/max/_harness/patches/vesperare-harness-file-observer-v0.maxpat`
- `projects/max/_harness/patches/vesperare-harness-files-v1.maxpat`

Decision :

`vesperare-harness-file-observer-v0.maxpat` est un artefact d'observabilite documentaire, provisoire et separe. Il ne lit pas de fichier, n'ecrit pas de fichier, ne traite pas de commande et ne choisit aucun objet Max final.

Decision :

`vesperare-harness-files-v1.maxpat` est un patch harness file-only provisoire, separe du patch 01. Il vise a importer `command.pending.json`, router `ping` et `request_state`, et demander l'ecriture de `ack.json`, `error.json`, `harness-session.jsonl` et `state.current.json`.

Limite :

Le v1 a ete lance dans Max lors d'un smoke test borne, mais aucun `ack.json`, `error.json`, `harness-session.jsonl` ou `state.current.json` n'a ete produit. Ce resultat est un blocage d'observabilite Max-side, pas une validation Max.

## Emplacements futurs possibles

Emplacements possibles :

```text
projects/max/_harness/commands/
projects/max/_harness/responses/
projects/max/_harness/logs/
projects/max/_harness/state/
projects/max/_harness/archive/
projects/max/_harness/lib/
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

## Trace v1

Documents de reference :

```text
docs/specs/PRE_SPEC_IMPLEMENTATION_MAX_HARNESS_FICHIERS_V1.md
docs/reprise/35_DECISION_PASSAGE_IMPLEMENTATION_MAX_HARNESS_FICHIERS_V1.md
docs/reprise/36_TRACE_CREATION_PATCH_MAX_HARNESS_FICHIERS_V1.md
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

Condition d'arret :

Arreter si la suite tente de convertir cet artefact en UI de performance, mapping, asset, sample bank, seuil numerique, objet Max final, routage final, architecture validee ou validation musicale.

Arreter aussi si la suite demande de modifier :

```text
projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat
```
