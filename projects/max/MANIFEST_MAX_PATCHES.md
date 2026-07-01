# Manifest Max patches Vesperare

Statut : manifeste minimal des artefacts Max presents dans `projects/max`.
Date : 2026-07-01.
Perimetre : inventaire documentaire ; sans modification de patch, sans lancement Max, sans validation technique ou musicale.

## Sources consultees

Fait :

- `docs/reprise/27_TRACE_CREATION_PREMIER_PATCH_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/28_TRACE_TEST_CHARGEMENT_PATCH_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/05_NEXT_ACTIONS.md`
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

## 2. Prochaine action Max

Decision :

La prochaine action Max n'est pas un test humain, pas une lecture visuelle dans Max et pas une extension du patch 01.

Prochaine action :

```text
concevoir et preparer un harness commandes/logs Max <-> Codex,
afin qu'un futur patch observable puisse emettre des logs machine-lisibles
et recevoir des commandes bornees avant toute validation humaine ou musicale.
```

Recommandation :

Le prochain artefact Max, s'il est cree plus tard, devra exposer observabilite, commandes, etats, fallback, SIG et modes absent/off/bypass/reduit. Il ne devra pas definir de routage final ni choisir d'objet Max final.

## 3. Conditions d'arret

Arreter si la suite tente de :

- modifier `min-did-pc-minimal-01.maxpat` dans la phase actuelle ;
- creer un nouveau patch sans autorisation explicite ;
- lancer Max ;
- lancer Ableton ;
- faire un test humain comme prochaine preuve ;
- valider musicalement ou techniquement le patch 01 ;
- transformer le harness en module musical final ;
- definir UI, mapping, asset, sample bank, seuil numerique, objet Max final ou routage final.
