# Vesperare

Projet de recherche-création pour la conception d’un système de composition et de performance live dans Ableton Live / Max for Live.

Le projet vise l’invention d’un genre musical personnel, localement nommé **techno organique**. La techno constitue l’influence stylistique principale : corps, impact, pression, répétition, hypnose, tension et forme longue. Ces fonctions peuvent être portées par des sons naturels, acoustiques, instrumentaux, vocaux, percussifs, naturalisés ou synthétisés comme phénomènes physiques.

## État actuel

La phase actuelle est une phase de conception approfondie avant prototypage.

Principes retenus :

- conception détaillée avant prototypes ;
- techno comme influence stylistique principale ;
- naturalisation des supports sonores sans perte des fonctions techno ;
- didgeridoo et guimbardes comme sources live fixes centrales ;
- gong et tambour comme sources live optionnelles non neutres ;
- microtonalité, harmoniques, partiels et centres spectraux comme nœud transversal ;
- scènes, trajectoires, objets sonores et états de performance comme couche supérieure ;
- contrôle live pensé par fonctions musicales, états, protections, arbitrages et visualisations contextuelles ;
- Max for Live comme cœur temps réel futur ;
- Ableton Extensions SDK comme outil satellite de préparation et documentation.

## Carte documentaire

### Documents directeurs

```text
00_INDEX_METHODE_DECISIONS.md
```

Méthode, décisions, vocabulaire, organisation documentaire et workflow.

### Style, phénomènes et architecture historique

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

Ces documents définissent les bases : style, phénomènes sonores, scènes, trajectoires, objets, contraintes de timbre/mix et architecture Max for Live future.

### Cadre opératoire techno organique et interface de contrôle

```text
12_TECHNO_ORGANIQUE_CADRE_OPERATOIRE.md
13_CONCEPTS_OPERATOIRES_TECHNO_ORGANIQUE_DEPENDANCES.md
14_CONCEPT_CORE_TO_INTERFACE_SYSTEM_REQUIREMENTS.md
15_LIVE_CONTROL_REQUIREMENTS_MATRIX.md
16_LIVE_CONTROL_MATRIX_PERFORMABILITY_AUDIT.md
17_LIVE_CONTROL_REQUIREMENTS_MATRIX_REDUCED.md
18_LIVE_CONTROL_DECISION_QUESTIONS_BEFORE_LAYERS.md
19_LIVE_CONTROL_LAYERS_AND_PERFORMANCE_STATES.md
20_TEMPORAL_INFRASTRUCTURE_MEASURE_LOOP_REPEAT_FREEZE.md
21_TEMPORAL_INFRASTRUCTURE_DECISION_QUESTIONS.md
22_CONTEXTUAL_VISUALIZATION_REQUIREMENTS.md
```

Ces documents traduisent les concepts musicaux récents en exigences de système, contrôle live, couches de performance, infrastructure temporelle et visualisation contextuelle. Ils ne définissent pas encore de layout, de mapping matériel, de patch Max for Live ou de prototype.

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

Le dossier `docs/assets` est cartographié par `00_ASSETS_INDEX.md`.

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
croquis de paramètres ;
audit de cohérence ;
index local assets.
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

## Workflow actuel

```text
style / influences / techno organique
→ concepts opératoires
→ exigences système et interface
→ noyau de contrôle live
→ couches de performance
→ infrastructure temporelle
→ visualisation contextuelle
→ consolidation documentaire
→ reprise musicale ou technique ciblée
```

## Prochaine étape recommandée

La prochaine étape n’est pas de créer un nouveau concept, un engine profile, un sample, un asset concret ou un prototype.

La prochaine étape est :

```text
1. mettre à jour docs/00_INDEX_METHODE_DECISIONS.md ;
2. relire la documentation map ;
3. décider ensuite si l’on reprend :
   - la visualisation contextuelle en détail ;
   - les scènes globales / trajectoires ;
   - les sources et assets ;
   - ou une première spécification technique ciblée.
```
