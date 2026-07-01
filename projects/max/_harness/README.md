# Max harness Vesperare

Statut : dossier documentaire pour un futur harness Max-side observable.
Date : 2026-07-01.
Perimetre : conventions futures de fichiers et d'emplacements ; aucun patch Max cree ici, aucun `.maxpat`, aucun lancement Max, aucune UI, aucun mapping, aucun asset, aucune sample bank, aucun seuil numerique.

## Role du dossier

Decision :

`projects/max/_harness/` est le futur lieu de rangement Max-side pour l'observabilite du harness commandes/logs.

Il servira a accueillir, dans une action future seulement, des elements capables de lire ou ecrire le contrat fichier decrit dans :

```text
docs/specs/INTEGRATION_MAX_HARNESS_FICHIERS_V0.md
```

Fait :

Cette action cree seulement ce README. Elle ne cree aucun `.maxpat`, aucun patch Max, aucun objet Max final et aucun routage final.

## Emplacements futurs possibles

Emplacements possibles, non crees ici :

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

Arreter si la suite tente de convertir ce dossier en patch Max, UI, mapping, asset, sample bank, seuil numerique, objet Max final, routage final ou validation musicale.
