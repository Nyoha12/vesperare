# Vesperare

Projet de recherche-création pour la conception d’un système de composition et de performance live dans Ableton Live / Max for Live.

Le projet vise l’invention d’un genre musical personnel dont la techno constitue l’influence stylistique principale. Les fonctions techno — corps, impact, pression, répétition, hypnose, tension et forme longue — peuvent être portées par des sons naturels, acoustiques, instrumentaux, vocaux, percussifs, naturalisés ou synthétisés comme phénomènes physiques.

## État actuel

La phase actuelle est une phase de conception approfondie avant prototypage.

Principes retenus :

- conception détaillée avant prototypes ;
- techno comme influence stylistique principale ;
- naturalisation des supports sonores sans perte des fonctions techno ;
- microtonalité, harmoniques, partiels et centres spectraux comme nœud transversal ;
- scènes, trajectoires et objets sonores comme couche supérieure de performance ;
- Max for Live comme cœur temps réel futur ;
- Ableton Extensions SDK comme outil satellite de préparation et documentation.

## Carte documentaire

### Documents directeurs

```text
00_INDEX_METHODE_DECISIONS.md
```

Méthode, décisions, vocabulaire, organisation documentaire et workflow.

### Style, phénomènes et architecture

```text
05_CARTOGRAPHIE_STYLE_PERSONNEL_TECHNO.md
06_CARTOGRAPHIE_INFLUENCES_STYLE_VESPERARE.md
07_PITCH_HARMONIQUES_MICROTONALITE.md
08_PERFORMANCE_SCENES_TRAJECTOIRES_OBJETS.md
10_SOUND_DESIGN_MIX_OUTILS_CONTRAINTES.md
11_AUDIT_COHERENCE_NOTATION_CATEGORIES_RESPONSABILITES.md
01_CAHIER_DES_PHENOMENES_SONORES.md
01A_SYNCHRONISATION_PHENOMENES_MODULES.md
02_SPECIFICATION_MAX_FOR_LIVE.md
02A_SYNCHRONISATION_ARCHITECTURE_MODULES.md
09_FICHES_MODELES_OBJETS_TRAJECTOIRES_SCENES.md
```

Ces documents définissent le style, les phénomènes sonores, les scènes, trajectoires, objets, contraintes de timbre/mix et l’architecture Max for Live future.

### Modules

```text
/docs/modules/
```

Le dossier `docs/modules` contient les spécifications détaillées et audits d’interface : Object Registry, Trajectory Engine, Scene / Performance Conductor, Contextual Control Router, Conflict / Protection Manager, Pitch / Harmonic Field Manager, Timbre & Material Mapper, Sound Engines / Instruments, Source Needs / Asset Database Protocol et leurs interfaces.

### Sources, besoins et assets

```text
/docs/assets/00_ASSETS_INDEX.md
/docs/assets/
```

Le dossier `docs/assets` est désormais cartographié par `00_ASSETS_INDEX.md`.

Il contient :

```text
matrices de besoins ;
protocoles de décision ;
audit de l’existant réel ;
source_needs ;
schémas de material_asset ;
cas de scène ;
tests fonctionnels ;
portes de décision ;
croquis de paramètres.
```

Règle centrale :

```text
source_need ≠ material_asset ;
material_asset_schema ≠ asset réel ;
scene_use_case ≠ prototype ;
function_test ≠ module ;
decision_gate ≠ décision déjà prise ;
engine_sketch ≠ implémentation.
```

Le workflow actuel des assets est :

```text
besoins du style
→ sources réellement disponibles
→ fonctions couvertes / non couvertes
→ compensations conditionnelles
→ manques restants
→ instruments candidats ciblés
→ source_needs prioritaires
→ comparaison
→ scène candidate
→ test fonctionnel
→ décision gate
→ croquis de paramètres
→ audit de cohérence
→ index local assets
```

## Workflow actuel

```text
style / influences
→ pitch, performance, sound design, cohérence
→ phénomènes sonores
→ architecture Max for Live
→ modules et audits
→ préparation sources / assets
→ validations futures
```

## Prochaine étape recommandée

La prochaine étape n’est pas de créer un engine profile, un sample, un asset concret ou un prototype.

La prochaine étape est :

```text
1. mettre à jour docs/00_INDEX_METHODE_DECISIONS.md ;
2. relire puis mettre à jour docs/modules/16_SOURCE_NEEDS_ASSET_DATABASE_PROTOCOL.md ;
3. reprendre ensuite le travail musical à partir d’une carte stabilisée.
```
