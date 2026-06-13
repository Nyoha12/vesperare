# Vesperare

Projet de recherche-création pour la conception d’un système de composition et de performance live dans Ableton Live / Max for Live.

Le projet vise l’invention d’un genre musical personnel dont la techno constitue l’influence stylistique principale, mais dont les fonctions peuvent être portées par des sons naturels, acoustiques, instrumentaux, vocaux, percussifs, naturalisés ou synthétisés comme phénomènes physiques.

## État actuel

La phase actuelle est une phase de conception approfondie avant prototypage.

Principes retenus :

- conception détaillée avant prototypes ;
- techno comme influence stylistique principale ;
- naturalisation des supports sonores sans perte des fonctions techno ;
- polytexture percussive comme facette esthétique opératoire ;
- microtonalité, harmoniques, partiels et centres spectraux comme nœud transversal ;
- scènes, trajectoires et objets sonores comme couche supérieure de performance programmable ;
- sound design comme organisation d’objets, de comportements, de relations et de milieux sonores ;
- mix / master comme contrainte future intégrée, subtile et professionnelle ;
- système live configurable, non réducteur, orienté performance complète ;
- Max for Live comme cœur temps réel ;
- Ableton Extensions SDK comme outil satellite pour préparation, génération de fichiers/clips/scènes, documentation et accélération de tests futurs.

## Carte documentaire

### Documents directeurs

```text
00_INDEX_METHODE_DECISIONS.md
```

Méthode, décisions, vocabulaire, organisation documentaire et workflow.

### Style et influences

```text
05_CARTOGRAPHIE_STYLE_PERSONNEL_TECHNO.md
06_CARTOGRAPHIE_INFLUENCES_STYLE_VESPERARE.md
```

Définition du style personnel, des fonctions techno retenues et des éléments extraits d’autres styles sans importation en bloc.

### Nœuds transversaux

```text
07_PITCH_HARMONIQUES_MICROTONALITE.md
08_PERFORMANCE_SCENES_TRAJECTOIRES_OBJETS.md
10_SOUND_DESIGN_MIX_OUTILS_CONTRAINTES.md
11_AUDIT_COHERENCE_NOTATION_CATEGORIES_RESPONSABILITES.md
```

Organisation du pitch, des partiels, de la microtonalité, des objets sonores, des rôles, des scènes, des trajectoires, des contrôles contextuels, du sound design, du mix/master, des recherches d’outils futures et de la cohérence globale de notation / catégories / responsabilités.

### Pont vers la technique

```text
01_CAHIER_DES_PHENOMENES_SONORES.md
01A_SYNCHRONISATION_PHENOMENES_MODULES.md
02_SPECIFICATION_MAX_FOR_LIVE.md
02A_SYNCHRONISATION_ARCHITECTURE_MODULES.md
```

Conversion des décisions esthétiques en phénomènes sonores, puis en architecture Max for Live / Ableton Live. Les fichiers `01A` et `02A` sont des addenda de synchronisation prudente : ils mettent à jour la lecture de `01` et `02` sans remplacer leurs contenus détaillés.

### Appendice de modélisation

```text
09_FICHES_MODELES_OBJETS_TRAJECTOIRES_SCENES.md
```

Fiches modèles permettant de vérifier concrètement la grille objets / rôles / trajectoires / scènes / paramètres, sans prototypage.

### Spécifications détaillées et audits de modules

```text
/docs/modules/01_OBJECT_REGISTRY.md
/docs/modules/02_TRAJECTORY_ENGINE.md
/docs/modules/03_REGISTRY_TRAJECTORY_INTERFACE.md
/docs/modules/04_SCENE_PERFORMANCE_CONDUCTOR.md
/docs/modules/05_CONTEXTUAL_CONTROL_ROUTER.md
/docs/modules/06_CONDUCTOR_ROUTER_INTERFACE.md
/docs/modules/07_CONFLICT_PROTECTION_MANAGER.md
```

Développement progressif des modules de l’architecture technique et audits d’interface entre modules. Les documents actuels détaillent Object Registry, Trajectory Engine, leur contrat d’interaction, Scene / Performance Conductor, Contextual Control Router, l’audit Conductor ↔ Router, puis Conflict / Protection Manager.

### Validation, outils et mémoire

```text
03_VALIDATION_TESTS_EXTENSIONS.md
04_RESSOURCES_ET_BOITE_A_OUTILS.md
/checkpoints/checkpoint_maitre_v0_1.md
```

Préparation des futures validations, ressources techniques, outils et points d’état du projet.

## Workflow actuel

```text
05 style personnel techno
  ↓
06 influences supplémentaires
  ↓
07 pitch / harmoniques / microtonalité
  ↓
08 performance / scènes / trajectoires / objets
  ↓
10 sound design / mix / outils — contraintes transversales
  ↓
11 audit cohérence notation / catégories / responsabilités
  ↓
01 phénomènes sonores
  ↓
01A synchronisation phénomènes / modules
  ↓
02 spécification Max for Live
  ↓
02A synchronisation architecture / modules
  ↓
09 fiches modèles
  ↓
docs/modules spécifications détaillées / audits d’interface
  ↓
03 validation / tests
```

Le prochain travail recommandé est de réaliser un audit léger `Conflict / Protection ↔ Conductor / Router`, puis de détailler `Pitch / Harmonic Field Manager`.
