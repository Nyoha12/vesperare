# Vesperare

Projet de recherche-création pour la conception d’un système de composition et de performance live dans Ableton Live / Max for Live.

Le projet vise l’invention d’un genre musical personnel, localement nommé **techno organique**. La techno constitue l’influence stylistique principale : corps, impact, pression, répétition, hypnose, tension et forme longue. Ces fonctions peuvent être portées par des sons naturels, acoustiques, instrumentaux, vocaux, percussifs, naturalisés ou synthétisés comme phénomènes physiques.

## État actuel

La phase actuelle est une phase de **conception, consolidation et harmonisation avant prototypage**.

Le dépôt contient déjà :

```text
analyses stylistiques ;
cahier des phénomènes sonores ;
concepts opératoires ;
spécifications de modules ;
source_needs ;
schémas de material_assets ;
scènes ouvertes ;
scènes-pivots ;
addenda de synchronisation ;
supports pratiques de jeu et d’écoute.
```

Le recentrage stratégique est documenté dans :

```text
docs/40_STRATEGIE_SYSTEME_CONTROLE_LIMITES_HARMONISATION.md
```

Les fiches de consolidation précisent les points sensibles :

```text
docs/41_CORPS_COMME_FONCTION_COMPOSEE_ET_SITUEE.md
docs/42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md
docs/43_HARMONISATION_CONTROLES_15_22.md
```

Des addenda ciblés complètent ensuite certains documents sans les remplacer :

```text
docs/17A_HARMONISATION_MACROS_CORPS_AMPLITUDES_LIMITES.md
docs/19A_HARMONISATION_ETATS_CORPS_LIMITES_SORTIES.md
docs/22A_HARMONISATION_VISUALISATION_AMPLITUDES_LIMITES.md
docs/modules/17_HARMONISATION_MODULES_CENTRAUX_CORPS_CONTROLES_LIMITES.md
```

Ces documents servent à harmoniser les statuts, les priorités et les corrections à appliquer aux autres fichiers. Ils ne remplacent pas les analyses stylistiques ni les modules déjà existants.

## Principes retenus

```text
techno comme influence stylistique principale ;
naturalisation des supports sonores sans perte des fonctions techno ;
corps comme faisceau de phénomènes stylistiques, perceptifs, instrumentaux et sensibles ;
didgeridoo et guimbardes comme sources live fixes centrales ;
gong et tambour comme sources live optionnelles non neutres ;
zéro sample initial ;
samples seulement si un besoin réel et documenté le justifie ;
microtonalité, harmoniques, partiels et centres spectraux comme nœud transversal ;
scènes, trajectoires, objets sonores et états de performance comme couche supérieure ;
scènes conçues comme champs ouverts orientés : ouvrir sans diluer, structurer sans fermer ;
contrôle live pensé par fonctions musicales, états, amplitudes, protections, arbitrages, limites et visualisations contextuelles ;
Max for Live comme cœur temps réel futur ;
Ableton Extensions SDK comme outil satellite de préparation et documentation.
```

## Principe central de contrôle

Dans Vesperare, un contrôle n’est pas un simple paramètre technique.

```text
contrôle = sélection + organisation + amplitude + contexte + risque + sortie + override.
```

Le système doit donner à Yohan une capacité efficace de variation sur les dimensions stylistiquement pertinentes de sa musique.

Il doit aussi permettre de flirter intelligemment avec les limites : ambientisation, surcharge, cliché, perte du corps, drop automatique, freeze-drone, loop qui remplace le live, etc.

Ces limites ne sont pas toujours des interdits absolus. Elles doivent être pensées comme zones de bord : visibles, mesurées, contextualisées, avec possibilité de retrait, retour, bifurcation ou override humain.

## Carte documentaire

### Documents directeurs de navigation et recentrage

```text
00_INDEX_METHODE_DECISIONS.md
REPO_TREE_SNAPSHOT.md
40_STRATEGIE_SYSTEME_CONTROLE_LIMITES_HARMONISATION.md
41_CORPS_COMME_FONCTION_COMPOSEE_ET_SITUEE.md
42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md
43_HARMONISATION_CONTROLES_15_22.md
```

Méthode, décisions, vocabulaire, organisation documentaire, workflow, trace d’arborescence, recentrage stratégique et consolidation des notions sensibles.

### Socle stylistique, phénoménal et architectural

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

### Cadre opératoire, contrôle live, temporalité, visualisation

```text
12_TECHNO_ORGANIQUE_CADRE_OPERATOIRE.md
13_CONCEPTS_OPERATOIRES_TECHNO_ORGANIQUE_DEPENDANCES.md
14_CONCEPT_CORE_TO_INTERFACE_SYSTEM_REQUIREMENTS.md
15_LIVE_CONTROL_REQUIREMENTS_MATRIX.md
16_LIVE_CONTROL_MATRIX_PERFORMABILITY_AUDIT.md
17_LIVE_CONTROL_REQUIREMENTS_MATRIX_REDUCED.md
17A_HARMONISATION_MACROS_CORPS_AMPLITUDES_LIMITES.md
18_LIVE_CONTROL_DECISION_QUESTIONS_BEFORE_LAYERS.md
19_LIVE_CONTROL_LAYERS_AND_PERFORMANCE_STATES.md
19A_HARMONISATION_ETATS_CORPS_LIMITES_SORTIES.md
20_TEMPORAL_INFRASTRUCTURE_MEASURE_LOOP_REPEAT_FREEZE.md
21_TEMPORAL_INFRASTRUCTURE_DECISION_QUESTIONS.md
22_CONTEXTUAL_VISUALIZATION_REQUIREMENTS.md
22A_HARMONISATION_VISUALISATION_AMPLITUDES_LIMITES.md
```

Ces documents traduisent les analyses en exigences de contrôle, couches de performance, infrastructure temporelle et visualisation contextuelle. Les addenda `17A`, `19A` et `22A` ajoutent la lecture par corps composé, amplitudes, zones de bord, sorties et override.

### Scènes ouvertes, scènes-pivots et pont vers les modules

```text
23_SCENES_COMME_CHAMPS_OUVERTS_DE_PERFORMANCE.md
24_SCENES_PIVOTS_CHAMPS_OUVERTS_PREMIERE_SERIE.md
25_SCENES_PIVOTS_TO_MODULE_RESPONSIBILITIES_MAP.md
26_SCENE_PIVOT_MODULE_CONGRUENCE_AUDIT.md
```

Ces documents constituent un pont valide entre les analyses musicales et la distribution des responsabilités futures.

### Addenda de synchronisation secondaires

```text
27_SCENE_PERFORMANCE_CONDUCTOR_SYNC_ADDENDUM.md
28_CONTEXTUAL_CONTROL_ROUTER_SYNC_ADDENDUM.md
29_CONFLICT_PROTECTION_MANAGER_SYNC_ADDENDUM.md
30_OBJECT_REGISTRY_SYNC_ADDENDUM.md
31_TRAJECTORY_ENGINE_SYNC_ADDENDUM.md
```

Ces addenda ne remplacent pas les modules initiaux. Ils synchronisent les modules avec les décisions apparues après les scènes-pivots, les objets temporels, la visualisation, la priorité live et les guards.

### Supports musicaux pratiques

```text
32_SCENES_PIVOTS_DRAMATURGIES_MUSICALES.md
33_FICHE_PERFORMANCE_CORPS_VIVANT_POLYTEXTURE.md
34_FICHE_PERFORMANCE_TENSION_ARMEE_PRE_DROP.md
35_FICHE_PERFORMANCE_SUSPENSION_MATIERE_RETOUR.md
```

Ces fichiers sont utiles comme supports de jeu, d’écoute ou de réflexion dramaturgique. Ils ne sont pas des documents directeurs, ne sont pas obligatoires et ne bloquent pas la poursuite de l’analyse.

### Outils optionnels de répétition et d’écoute

```text
36_PROTOCOLE_JOURNAL_REPETITION_ECOUTE_SCENES_PIVOTS.md
37_MODELE_FICHE_SESSION_REPETITION_ECOUTE.md
```

Ces fichiers sont activables si une phase de répétition ou d’écoute enregistrée est engagée. Ils ne constituent pas un passage obligé.

### Documents optionnels corrigés / rétrogradés

```text
38_QUESTIONS_MUSICALES_A_VERIFIER_AVANT_PROTOTYPE.md
39_PREMIERES_SESSIONS_TEST_SCENES_PIVOTS.md
```

Ces documents freinent correctement le prototypage, mais doivent être lus comme supports optionnels, non comme méthode obligatoire.

### Modules

```text
/docs/modules/
```

Le dossier `docs/modules` contient les spécifications détaillées et audits d’interface : Object Registry, Trajectory Engine, Scene / Performance Conductor, Contextual Control Router, Conflict / Protection Manager, Pitch / Harmonic Field Manager, Timbre & Material Mapper, Sound Engines / Instruments, Source Needs / Asset Database Protocol et leurs interfaces.

Addendum transversal actuel :

```text
/docs/modules/17_HARMONISATION_MODULES_CENTRAUX_CORPS_CONTROLES_LIMITES.md
```

Il relit les modules centraux avec la grille corps composé / amplitudes / zones de bord / sorties / override.

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
engine_sketch ≠ implémentation ;
temporal_object ≠ sample ;
loop/repeat/freeze ≠ banque.
```

## Hiérarchie de statut

```text
NIVEAU 1 — DIRECTEUR
Analyses stylistiques, cahier des phénomènes, cadres opératoires, exigences système, modules centraux.

NIVEAU 2 — CONSOLIDATION TRANSVERSALE
40, 41, 42, 43.

NIVEAU 3 — ADDENDA CIBLÉS DE CONTRÔLE
17A, 19A, 22A.

NIVEAU 4 — PONT
Scènes ouvertes, scènes-pivots, mapping scènes → modules, audit de congruence.

NIVEAU 5 — ADDENDA DE SYNCHRONISATION
Synchronisations ciblées 27–31.

NIVEAU 6 — SUPPORTS PRATIQUES
Dramaturgies et fiches jouables 32–35.

NIVEAU 7 — OUTILS OPTIONNELS
Journal et modèle de session 36–37.

NIVEAU 8 — SUPPORTS OPTIONNELS CORRIGÉS
38–39.
```

## Workflow actuel corrigé

Le workflow ne doit plus être lu comme une ligne obligatoire allant vers les sessions de jeu.

Le workflow actuel est :

```text
relire et préserver les analyses ;
consolider la provenance des concepts ;
décompacter les notions trop larges, notamment corps ;
harmoniser les statuts documentaires ;
requalifier les interdits en zones de bord jouables lorsque c’est musicalement juste ;
préserver les sources live fixes ;
maintenir les sources conditionnelles comme conditionnelles ;
corriger 38–39 ;
mettre à jour l’index et le snapshot ;
puis décider entre plusieurs voies possibles.
```

Voies possibles ensuite :

```text
analyse documentaire ;
consolidation des concepts ;
audits des sources et instruments ;
préparation de données acoustiques ciblées ;
révision des contrôles et amplitudes ;
phase de répétition optionnelle ;
question technique ciblée ;
prototypage ultérieur seulement si une fonction est suffisamment stabilisée.
```

## Prochaine étape recommandée

La prochaine étape n’est pas de créer un patch, un layout, un mapping, un prototype, un engine profile, un asset concret ou une banque de samples.

La prochaine étape est :

```text
à partir du guide transversal des modules,
décider si les modules Router / Conductor / Conflict nécessitent chacun un addendum individuel,
ou si le guide transversal suffit pour l’instant.
```
