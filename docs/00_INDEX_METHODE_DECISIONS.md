# 00_INDEX_METHODE_DECISIONS

Version : v1.4  
Statut : document directeur de méthode et de décisions.

## Objet

Ce document garde les décisions structurantes du projet Vesperare : méthode, terminologie, ordre de travail, statut des documents, règles de mise à jour et grandes orientations validées.

Il sert aussi à organiser le workflow documentaire : quels documents définissent l’esprit, lesquels développent les couches transversales, lesquels servent de pont vers la technique, et dans quel ordre les mettre à jour.

## Formulation actuelle du projet

Vesperare est un projet de recherche-création visant à concevoir un système de composition et de performance live dans Ableton Live / Max for Live, composé de plusieurs dispositifs configurables.

L’objectif est d’inventer un genre musical personnel dont la techno est l’influence stylistique principale, mais dont les fonctions peuvent être portées par des matières sonores naturelles, acoustiques, instrumentales, percussives, vocales, naturalisées ou synthétisées comme phénomènes physiques.

Le projet ne cherche pas simplement à “faire de la techno avec des sons naturels”. Il cherche à conserver les forces techno — corps, impact, hypnose, pression, tension, forme longue — en les réincarnant dans des matières sonores réelles, organiques, acoustiques, vocales, instrumentales ou hybrides.

## Méthode générale

Décision majeure : conception approfondie avant prototypage.

Le projet suit l’ordre suivant :

```text
1. Clarifier l’ambition musicale globale
2. Définir les fonctions techno situées dans le style recherché
3. Définir les phénomènes sonores du projet
4. Concevoir l’architecture Max for Live
5. Identifier les outils complémentaires
6. Établir les interactions entre paramètres
7. Définir les contrôles live
8. Seulement ensuite : prototyper et tester
```

## Organisation documentaire actuelle

Les documents sont organisés par fonction dans le projet, et non seulement par ordre numérique.

### A. Documents directeurs

```text
README.md
00_INDEX_METHODE_DECISIONS.md
```

Rôle : présenter le projet, garder les décisions structurantes, organiser la méthode, le vocabulaire et le workflow.

### B. Documents de style et d’influences

```text
05_CARTOGRAPHIE_STYLE_PERSONNEL_TECHNO.md
06_CARTOGRAPHIE_INFLUENCES_STYLE_VESPERARE.md
```

Rôle : définir l’esprit musical, les fonctions retenues de la techno, puis les éléments extraits d’autres styles sans les importer comme blocs stylistiques.

### C. Documents conceptuels transversaux

```text
07_PITCH_HARMONIQUES_MICROTONALITE.md
08_PERFORMANCE_SCENES_TRAJECTOIRES_OBJETS.md
```

Rôle : organiser les grands nœuds qui traversent tous les phénomènes et toute la technique : pitch, partiels, microtonalité, objets sonores, scènes, trajectoires, contrôles contextuels et autonomie située.

### D. Document phénoménologique de transfert

```text
01_CAHIER_DES_PHENOMENES_SONORES.md
```

Rôle : convertir les décisions stylistiques et transversales en phénomènes sonores manipulables : définitions, supports, risques, variables, rôles possibles, trajectoires possibles.

Ce document doit être relu après les documents `05–08`, car il sert de pont entre esthétique et technique.

### E. Document de spécification technique

```text
02_SPECIFICATION_MAX_FOR_LIVE.md
```

Rôle : traduire les phénomènes, objets, rôles, trajectoires, contrôles et garde-fous en architecture Max for Live / Ableton Live.

Ce document ne doit pas être mis à jour seulement par ajout de modules : il doit rester cohérent avec le système esthétique complet.

### F. Appendice de modélisation conceptuelle

```text
09_FICHES_MODELES_OBJETS_TRAJECTOIRES_SCENES.md
```

Rôle : tester concrètement les grilles de `02` par des fiches modèles : objets sonores, trajectoires, scènes et groupements de paramètres.

Ce document ne constitue pas une nouvelle couche théorique ni un prototype. Il sert à vérifier que les abstractions sont utilisables, cohérentes et non trop générales.

### G. Spécifications détaillées et audits de modules

```text
/docs/modules/01_OBJECT_REGISTRY.md
/docs/modules/02_TRAJECTORY_ENGINE.md
/docs/modules/03_REGISTRY_TRAJECTORY_INTERFACE.md
/docs/modules/04_SCENE_PERFORMANCE_CONDUCTOR.md
```

Rôle : développer progressivement les modules décrits dans `02_SPECIFICATION_MAX_FOR_LIVE`, et auditer leurs interfaces avant prototypage.

Ces documents doivent préciser :

```text
rôle du module ;
modèle de données ;
entrées ;
sorties ;
dépendances ;
relations avec les autres modules ;
contrats d’interface ;
risques ;
garde-fous ;
formes possibles dans Max for Live / Ableton.
```

Les premiers documents détaillent `Object Registry`, `Trajectory Engine`, leur contrat d’interaction, puis `Scene / Performance Conductor`.

### H. Validation, outils et mémoire

```text
03_VALIDATION_TESTS_EXTENSIONS.md
04_RESSOURCES_ET_BOITE_A_OUTILS.md
/checkpoints/checkpoint_maitre_v0_1.md
```

Rôle : préparer les futures validations, maintenir la boîte à outils, garder des états de synthèse du projet.

## Workflow documentaire actuel

Le workflow ne doit pas être une simple progression linéaire. Il doit fonctionner par propagation contrôlée.

```text
1. Décision esthétique ou conceptuelle
   ↓
2. Inscription dans le document source approprié
   ↓
3. Vérification de congruence avec les documents directeurs
   ↓
4. Propagation vers le cahier des phénomènes si la décision affecte les sons
   ↓
5. Propagation vers la spécification technique si la décision affecte l’architecture
   ↓
6. Vérification par fiches modèles si l’abstraction devient trop générale
   ↓
7. Développement d’une spécification détaillée de module si le module devient prioritaire
   ↓
8. Audit d’interface si plusieurs modules commencent à dépendre fortement l’un de l’autre
   ↓
9. Propagation vers validation/tests seulement si un module futur est assez clair
```

Principe :

```text
ne pas transformer immédiatement chaque idée en module ;
ne pas transformer immédiatement chaque phénomène en prototype ;
ne pas multiplier les documents sans nécessité ;
propager seulement ce qui est assez stable ;
utiliser les fiches modèles pour vérifier les abstractions avant prototypage ;
détailler les modules seulement quand leur rôle dans l’architecture est clair ;
ne jamais transformer les catégories en cases exclusives ;
auditer les interfaces avant que les modules ne divergent.
```

## Règle anti-prototype prématuré

Aucun prototype ne doit être lancé tant que son rôle dans l’architecture finale n’est pas clair.

Un prototype futur devra être :

```text
lié à un module final probable ;
réutilisable ou transformable ;
documenté ;
conçu pour répondre à une question précise ;
compatible avec l’architecture globale.
```

## Règle anti-classement limitant

Les catégories du projet sont des outils de lecture, pas des prisons conceptuelles.

Un objet, une trajectoire, une scène ou un groupement de paramètres peut appartenir à plusieurs familles à la fois.

Exemples :

```text
Didgeridoo = grave + formants + souffle + live + corps ;
Gong = impact + halo + partiels + beauté autonome + résolution ;
Sub = corps + pitch_center + pression + résolution ;
Pré-drop = rythmique + corporel + spectral + harmonique ;
Halo = espace + queue + harmonie + risque d’ambientisation.
```

Donc les documents et futurs modules doivent privilégier :

```text
profils activables ;
tags multiples ;
rôles contextuels ;
trajectoires composables ;
relations dynamiques ;
garde-fous selon contexte.
```

plutôt que :

```text
classement exclusif ;
mode fermé ;
preset stylistique ;
catégorie unique ;
rôle permanent imposé.
```

## Terminologie

Pour éviter les confusions, on distingue :

### Axes de conception

Servent à réfléchir au système.

Exemples :

```text
techno ↔ hors-techno
machine ↔ organique
réel ↔ synthétique
dense ↔ lisible
sec ↔ résonant
corporel ↔ spectral
contrôlé ↔ sauvage
```

### Fonctions musicales

Désignent ce qu’un élément fait musicalement.

Exemples :

```text
ancrer ;
frapper ;
porter le corps ;
propulser ;
créer du halo ;
articuler ;
ouvrir l’espace ;
créer de la tension.
```

### Phénomènes sonores

Désignent la manière dont une fonction devient perceptible dans la matière sonore.

Exemples :

```text
impact-fondation ;
pression spectrale corporelle ;
contour sculpté ;
brillance rythmique naturalisée ;
polytexture percussive raffinée ;
espace musical occupé ;
beauté autonome.
```

### Objets sonores

Désignent des sources ou groupes de sources dotés d’une matière, d’une fonction possible et de comportements transformables.

Exemples :

```text
gong ;
voix ;
sub ;
polytexture ;
halo ;
clochettes ;
didgeridoo ;
field recording ;
impact-fondation.
```

### Rôles musicaux

Désignent la fonction momentanée qu’un objet sonore assume dans une scène ou une trajectoire.

Exemple : un gong peut être :

```text
impact ;
halo ;
rugissement ;
champ harmonique ;
masse de résolution ;
beauté autonome.
```

### Trajectoires

Désignent des transformations organisées de priorités musicales, appliquées à des objets, rôles et dimensions.

Exemples :

```text
pré-drop naturalisé ;
suspension ;
expansion ;
torsion ;
réincorporation du corps ;
densification polytexturale ;
résolution microtonale.
```

### Fiches modèles

Désignent des cas conceptuels concrets permettant de vérifier les abstractions sans prototyper.

Exemples :

```text
fiche objet : Gong ;
fiche objet : Voix ;
fiche trajectoire : Pré-drop naturalisé ;
fiche scène : Suspension avant résolution ;
fiche groupement : Tension / Résolution.
```

### Spécifications détaillées de modules

Désignent des documents qui approfondissent un module de `02` lorsque son rôle devient clair.

Exemples :

```text
Object Registry ;
Trajectory Engine ;
Scene / Performance Conductor ;
Pitch / Harmonic Field Manager ;
Contextual Control Router.
```

Ces documents ne sont pas des prototypes. Ils précisent les données, dépendances, interactions, risques et garde-fous avant toute implémentation.

### Audits d’interface

Désignent des documents qui vérifient qu’au moins deux modules communiquent sans contradiction de notation, dépendance ou responsabilité.

Exemples :

```text
Object Registry ↔ Trajectory Engine ;
Trajectory Engine ↔ Scene / Performance Conductor ;
Trajectory Engine ↔ Contextual Control Router.
```

### Variables internes

Servent au fonctionnement du patch Max for Live.

Exemples :

```text
spectral_pressure
halo_budget
crowding_index
sub_stability
accent_priority
air_fatigue
```

### Macros live

Contrôles principaux jouables en performance.

Exemples possibles :

```text
Densité
Tension
Halo
Grain
Impact
Respiration
Mutation
Lisibilité
```

### Catégories de paramètres live

Organisation concrète de l’interface performative.

Exemples possibles :

```text
Corps / Fondation
Texture / Grain
Espace / Halo
Tension / Intensité
Variation / Mutation
Live Input / Réaction
```

## Décisions stylistiques majeures

### Techno

La techno est l’influence stylistique principale et doit rester perceptible par ses fonctions : pulsation, impact, répétition, pression corporelle, hypnose, tension longue, efficacité de diffusion et forme performative.

### Naturalisation

Naturaliser une fonction techno ne change pas forcément sa fonction. Cela change son support sonore.

Exemple :

```text
fonction : micro-pulsation aiguë
support techno habituel : hi-hat électronique
support possible : insecte, oiseau, clochette, cymbalette, frottement, grain, petit métal
```

### Polytexture percussive

La facette Keita Ogawa / polytexture percussive est une facette esthétique opératoire : elle apporte interlocking, groove composite, richesse percussive, harmonie de timbres, complexité lisible et densité articulée.

Elle ne doit pas devenir une importation de style latino, cubain, tribal, folklorique ou world music.

### Influences supplémentaires

Dubstep, jazz, trance et acid sont étudiés comme sources d’éléments intégrables à Vesperare, et non comme styles à importer en bloc.

Ils sont organisés dans `06_CARTOGRAPHIE_INFLUENCES_STYLE_VESPERARE.md`.

### Pitch, harmoniques et microtonalité

La microtonalité, les partiels, les formants, les hauteurs ressenties et les centres spectraux constituent un nœud transversal du projet.

Ils sont organisés dans `07_PITCH_HARMONIQUES_MICROTONALITE.md`.

### Performance, scènes, trajectoires et objets

La performance doit être pensée comme un réseau programmable d’états, scènes, trajectoires, objets sonores, rôles, implications, contrôles contextuels et autonomies situées.

Ce niveau est organisé dans `08_PERFORMANCE_SCENES_TRAJECTOIRES_OBJETS.md`.

### Instruments live

Les instruments live ne doivent pas être classés rigidement. Didgeridoo, gongs, tambours, voix ou autres instruments peuvent être des phénomènes multidimensionnels. Le système doit analyser ou recevoir leurs caractéristiques et permettre de configurer leur impact.

## Documents actifs

```text
README.md
/docs/00_INDEX_METHODE_DECISIONS.md
/docs/01_CAHIER_DES_PHENOMENES_SONORES.md
/docs/02_SPECIFICATION_MAX_FOR_LIVE.md
/docs/03_VALIDATION_TESTS_EXTENSIONS.md
/docs/04_RESSOURCES_ET_BOITE_A_OUTILS.md
/docs/05_CARTOGRAPHIE_STYLE_PERSONNEL_TECHNO.md
/docs/06_CARTOGRAPHIE_INFLUENCES_STYLE_VESPERARE.md
/docs/07_PITCH_HARMONIQUES_MICROTONALITE.md
/docs/08_PERFORMANCE_SCENES_TRAJECTOIRES_OBJETS.md
/docs/09_FICHES_MODELES_OBJETS_TRAJECTOIRES_SCENES.md
/docs/modules/01_OBJECT_REGISTRY.md
/docs/modules/02_TRAJECTORY_ENGINE.md
/docs/modules/03_REGISTRY_TRAJECTORY_INTERFACE.md
/docs/modules/04_SCENE_PERFORMANCE_CONDUCTOR.md
/checkpoints/checkpoint_maitre_v0_1.md
```

## Flux conceptuel

```text
05_CARTOGRAPHIE_STYLE_PERSONNEL_TECHNO
        ↓
06_CARTOGRAPHIE_INFLUENCES_STYLE_VESPERARE
        ↓
07_PITCH_HARMONIQUES_MICROTONALITE
        ↓
08_PERFORMANCE_SCENES_TRAJECTOIRES_OBJETS
        ↓
01_CAHIER_DES_PHENOMENES_SONORES
        ↓
02_SPECIFICATION_MAX_FOR_LIVE
        ↓
09_FICHES_MODELES_OBJETS_TRAJECTOIRES_SCENES
        ↓
docs/modules/01_OBJECT_REGISTRY
        ↓
docs/modules/02_TRAJECTORY_ENGINE
        ↓
docs/modules/03_REGISTRY_TRAJECTORY_INTERFACE
        ↓
docs/modules/04_SCENE_PERFORMANCE_CONDUCTOR
        ↓
03_VALIDATION_TESTS_EXTENSIONS
```

Le document `04_RESSOURCES_ET_BOITE_A_OUTILS` alimente surtout la spécification technique.

Le document `09_FICHES_MODELES_OBJETS_TRAJECTOIRES_SCENES` est un appendice de vérification : il peut rétroagir vers `01` et `02` si une fiche révèle une incohérence ou un manque.

Les documents `docs/modules/` développent progressivement les modules prioritaires de `02` lorsque les fiches et audits montrent que leur rôle est assez clair.

## Prochaine synchronisation documentaire

À ce stade, les documents `01–03` ont été synchronisés avec les documents `05–08`. Les modules Object Registry, Trajectory Engine, Registry ↔ Trajectory Interface et Scene / Performance Conductor sont détaillés.

Ordre recommandé maintenant :

```text
1. Développer Contextual Control Router.
2. Vérifier l’interface Conductor ↔ Control Router.
3. Revenir dans 03 pour définir les validations par module.
4. Prévoir ensuite un audit de cohérence notation / catégories / responsabilités.
```

## Règle de mise à jour

À chaque avancée majeure, mettre à jour le fichier concerné avec :

```text
Ajout :
Modification :
Raison musicale :
Conséquence technique :
Point à vérifier :
```

Ne pas multiplier les fichiers sans nécessité.
