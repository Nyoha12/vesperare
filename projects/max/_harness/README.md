# Max harness Vesperare

Statut : dossier de conventions et premier artefact documentaire pour un harness Max-side observable.
Date : 2026-07-01.
Perimetre : conventions de fichiers et artefact `.maxpat` observable separe ; aucun lancement Max, aucune UI de performance, aucun mapping, aucun asset, aucune sample bank, aucun seuil numerique, aucune validation audio, DSP, musicale ou architecturale.

## Role du dossier

Decision :

`projects/max/_harness/` est le lieu de rangement Max-side pour l'observabilite du harness commandes/logs.

Il accueille maintenant un premier artefact documentaire et pourra accueillir plus tard des elements capables de lire ou ecrire le contrat fichier decrit dans :

```text
docs/specs/INTEGRATION_MAX_HARNESS_FICHIERS_V0.md
```

Fait :

Le dossier contient :

- `projects/max/_harness/README.md`
- `projects/max/_harness/patches/vesperare-harness-file-observer-v0.maxpat`

Decision :

`vesperare-harness-file-observer-v0.maxpat` est un artefact d'observabilite documentaire, provisoire et separe. Il ne lit pas de fichier, n'ecrit pas de fichier, ne traite pas de commande et ne choisit aucun objet Max final.

Limite :

L'artefact n'a pas ete charge dans Max. La seule validation locale attendue est une lecture JSON avec cle `patcher`, plus les checks du harness fichiers.

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
