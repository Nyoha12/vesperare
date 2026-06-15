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
- scènes conçues comme champs ouverts orientés : ouvrir sans diluer, structurer sans fermer ;
- contrôle live pensé par fonctions musicales, états, protections, arbitrages et visualisations contextuelles ;
- Max for Live comme cœur temps réel futur ;
- Ableton Extensions SDK comme outil satellite de préparation et documentation.

## Carte documentaire

### Documents directeurs

```text
00_INDEX_METHODE_DECISIONS.md
REPO_TREE_SNAPSHOT.md
```

Méthode, décisions, vocabulaire, organisation documentaire, workflow et trace d’arborescence à tenir à jour.

### Style, phénomènes et architecture historique

```text
05_CARTOGRAPHIE_STYLE_PERSONNEL_TECHNO.md
06_CARTOGRAPHIE_INFLUENCES_STYLE_VESPERARE.md
07_PITCH_HARMONIQUES_MICROTONALITE.md
08_PERFORMANCE_SCENES_TRAJECTOIRES_OBJETS.md
09_FICHES_MODELES_OBJETS_TRAJECTOIRES_SCENES.md
10_SOUND_DESIGN_MIX_OUTILS_CONTRAINTES.md
11_AUDIT_COHERENCE_NOTATION_CATEGORIES_RESPONSABILITES.md
01_CAHIER_DES_PHENOMENES_SONORES.md
01A_SYNCHRONISATION_PHENOMENES_MODULES.md
02_SPECIFICATION_MAX_FOR_LIVE.md
02A_SYNCHRONISATION_ARCHITECTURE_MODULES.md
```

Ces documents définissent les bases : style, phénomènes sonores, scènes, trajectoires, objets, contraintes de timbre/mix et architecture Max for Live future.

### Cadre opératoire techno organique, contrôle live et scènes ouvertes

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
23_SCENES_COMME_CHAMPS_OUVERTS_DE_PERFORMANCE.md
24_SCENES_PIVOTS_CHAMPS_OUVERTS_PREMIERE_SERIE.md
25_SCENES_PIVOTS_TO_MODULE_RESPONSIBILITIES_MAP.md
26_SCENE_PIVOT_MODULE_CONGRUENCE_AUDIT.md
27_SCENE_PERFORMANCE_CONDUCTOR_SYNC_ADDENDUM.md
28_CONTEXTUAL_CONTROL_ROUTER_SYNC_ADDENDUM.md
29_CONFLICT_PROTECTION_MANAGER_SYNC_ADDENDUM.md
30_OBJECT_REGISTRY_SYNC_ADDENDUM.md
31_TRAJECTORY_ENGINE_SYNC_ADDENDUM.md
32_SCENES_PIVOTS_DRAMATURGIES_MUSICALES.md
33_FICHE_PERFORMANCE_CORPS_VIVANT_POLYTEXTURE.md
34_FICHE_PERFORMANCE_TENSION_ARMEE_PRE_DROP.md
35_FICHE_PERFORMANCE_SUSPENSION_MATIERE_RETOUR.md
36_PROTOCOLE_JOURNAL_REPETITION_ECOUTE_SCENES_PIVOTS.md
37_MODELE_FICHE_SESSION_REPETITION_ECOUTE.md
38_QUESTIONS_MUSICALES_A_VERIFIER_AVANT_PROTOTYPE.md
```

Ces documents traduisent les concepts musicaux récents en exigences de système, contrôle live, couches de performance, infrastructure temporelle, visualisation contextuelle, scènes ouvertes, scènes-pivots, responsabilités de modules futurs, audits, synchronisations de modules centraux, dramaturgies musicales concrètes, fiches de performance jouables, protocole de journal de répétition/écoute et synthèse des questions musicales à vérifier avant prototype. Ils ne définissent pas encore de layout, de mapping matériel, de patch Max for Live ou de prototype.

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
→ scènes comme champs ouverts
→ scènes-pivots ouvertes
→ liaison scènes-pivots / modules futurs
→ audit de congruence scènes-pivots / modules
→ synchronisation modules centraux
→ dramaturgies musicales des scènes-pivots
→ fiches de performance jouables
→ journal de répétition et d’écoute
→ modèle de fiche de session
→ questions musicales à vérifier avant prototype
→ décision musicale avant prototype
```

## Prochaine étape recommandée

La prochaine étape n’est pas de créer un nouveau concept, un engine profile, un sample, un asset concret ou un prototype.

La prochaine étape est :

```text
préparer une liste de premières sessions de test,
avec ordre, durée et conditions minimales,
pour les trois fiches jouables.
```
