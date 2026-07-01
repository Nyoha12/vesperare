# Manifest Max patches Vesperare

Statut : manifeste minimal des artefacts Max presents dans `projects/max` et des conventions de harness Max-side.
Date : 2026-07-01.
Perimetre : inventaire documentaire ; sans modification de patch, sans lancement Max, sans validation technique ou musicale.

## Sources consultees

Fait :

- `docs/reprise/27_TRACE_CREATION_PREMIER_PATCH_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/28_TRACE_TEST_CHARGEMENT_PATCH_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/05_NEXT_ACTIONS.md`
- `docs/reprise/32_TRACE_HARNESS_LOCAL_STUB_COMMANDES_LOGS_V0.md`
- `docs/specs/CONCEPTION_HARNESS_COMMANDES_LOGS_MAX_CODEX.md`
- `docs/specs/INTEGRATION_MAX_HARNESS_FICHIERS_V0.md`
- `tools/vesperare-harness/README.md`
- `projects/max/_harness/README.md`
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

## 2. Dossier harness Max-side

### `projects/max/_harness/`

Statut :

```text
dossier documentaire de convention pour futur harness Max-side observable
```

Fait :

Le dossier contient actuellement :

- `projects/max/_harness/README.md`

Fait :

Aucun `.maxpat` n'est cree dans ce dossier par la presente phase.

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

L'integration Max-side fichier v0 est en cours de conception dans :

```text
docs/specs/INTEGRATION_MAX_HARNESS_FICHIERS_V0.md
```

Recommandation :

Le prochain artefact Max, s'il est cree plus tard, devra etre un premier artefact observable seulement si la spec reste conforme. Options futures possibles : une lib Max observable ou un patch `02` observable. Il ne devra pas definir de routage final, choisir d'objet Max final, modifier le patch 01 ou se presenter comme validation Max, audio, DSP ou musicale.

## 4. Conditions d'arret

Arreter si la suite tente de :

- modifier `min-did-pc-minimal-01.maxpat` dans la phase actuelle ;
- creer un nouveau patch sans autorisation explicite ;
- lancer Max ;
- lancer Ableton ;
- faire un test humain comme prochaine preuve ;
- valider musicalement ou techniquement le patch 01 ;
- transformer le harness en module musical final ;
- definir UI, mapping, asset, sample bank, seuil numerique, objet Max final ou routage final.
