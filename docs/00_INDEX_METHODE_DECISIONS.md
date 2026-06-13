# 00_INDEX_METHODE_DECISIONS

Version : v2.0  
Statut : document directeur de méthode et de décisions.

## Objet

Ce document garde les décisions structurantes du projet Vesperare : méthode, terminologie, ordre de travail, statut des documents, règles de mise à jour et grandes orientations validées.

Il sert aussi à organiser le workflow documentaire : quels documents définissent l’esprit, lesquels développent les couches transversales, lesquels servent de pont vers la technique, et dans quel ordre les mettre à jour.

---

# 1. Formulation actuelle du projet

Vesperare est un projet de recherche-création visant à concevoir un système de composition et de performance live dans Ableton Live / Max for Live, composé de plusieurs dispositifs configurables.

L’objectif est d’inventer un genre musical personnel dont la techno est l’influence stylistique principale, mais dont les fonctions peuvent être portées par des matières sonores naturelles, acoustiques, instrumentales, percussives, vocales, naturalisées, hybrides ou synthétisées comme phénomènes physiques.

Le projet ne cherche pas simplement à “faire de la techno avec des sons naturels”. Il cherche à conserver les forces techno — corps, impact, hypnose, pression, tension, forme longue — en les réincarnant dans des matières sonores réelles, organiques, acoustiques, vocales, instrumentales ou hybrides.

---

# 2. Méthode générale

Décision majeure : conception approfondie avant prototypage.

Le projet suit l’ordre général suivant :

```text
1. Clarifier l’ambition musicale globale.
2. Définir les fonctions techno situées dans le style recherché.
3. Définir les phénomènes sonores du projet.
4. Concevoir l’architecture Max for Live.
5. Définir les modules et leurs responsabilités.
6. Auditer les interfaces entre modules.
7. Identifier les besoins de sources, instruments, samples, engines et assets.
8. Établir les protocoles, inventaires, fiches de données et validations abstraites.
9. Seulement ensuite : prototyper et tester.
```

Principe :

```text
penser avant de prototyper ;
propager les décisions stables ;
ne pas confondre idée, module, asset, prototype ou outil ;
garder les catégories comme facettes ;
mettre à jour les documents anciens quand les modules récents stabilisent une décision.
```

---

# 3. Organisation documentaire actuelle

Les documents sont organisés par fonction dans le projet, et non seulement par ordre numérique.

## A. Documents directeurs

```text
README.md
00_INDEX_METHODE_DECISIONS.md
```

Rôle : présenter le projet, garder les décisions structurantes, organiser la méthode, le vocabulaire et le workflow.

## B. Documents de style et d’influences

```text
05_CARTOGRAPHIE_STYLE_PERSONNEL_TECHNO.md
06_CARTOGRAPHIE_INFLUENCES_STYLE_VESPERARE.md
```

Rôle : définir l’esprit musical, les fonctions retenues de la techno, puis les éléments extraits d’autres styles sans les importer comme blocs stylistiques.

## C. Documents conceptuels transversaux

```text
07_PITCH_HARMONIQUES_MICROTONALITE.md
08_PERFORMANCE_SCENES_TRAJECTOIRES_OBJETS.md
10_SOUND_DESIGN_MIX_OUTILS_CONTRAINTES.md
11_AUDIT_COHERENCE_NOTATION_CATEGORIES_RESPONSABILITES.md
```

Rôle : organiser les grands nœuds qui traversent tous les phénomènes et toute la technique : pitch, partiels, microtonalité, objets sonores, scènes, trajectoires, contrôles contextuels, sound design, contraintes de mix/master, recherche future d’outils, responsabilités et cohérence terminologique.

Le document `10` est une contrainte transversale différée : il ne remplace pas les modules, mais empêche l’architecture de devenir incompatible avec les futures méthodes de sound design, la couche mix/master, les recherches d’outils, les corpus ciblés et la préparation des assets.

## D. Documents phénoménologiques et techniques de transfert

```text
01_CAHIER_DES_PHENOMENES_SONORES.md
01A_SYNCHRONISATION_PHENOMENES_MODULES.md
02_SPECIFICATION_MAX_FOR_LIVE.md
02A_SYNCHRONISATION_ARCHITECTURE_MODULES.md
```

Rôle : convertir les décisions stylistiques et transversales en phénomènes sonores manipulables, puis en architecture Max for Live / Ableton Live.

Les fichiers `01A` et `02A` sont des addenda de synchronisation prudente : ils mettent à jour la lecture de `01` et `02` sans remplacer leurs contenus détaillés.

## E. Appendice de modélisation conceptuelle

```text
09_FICHES_MODELES_OBJETS_TRAJECTOIRES_SCENES.md
```

Rôle : tester concrètement les grilles de `02` par des fiches modèles : objets sonores, trajectoires, scènes et groupements de paramètres.

Ce document ne constitue pas une nouvelle couche théorique ni un prototype. Il sert à vérifier que les abstractions sont utilisables, cohérentes et non trop générales.

## F. Spécifications détaillées et audits de modules

```text
/docs/modules/01_OBJECT_REGISTRY.md
/docs/modules/02_TRAJECTORY_ENGINE.md
/docs/modules/03_REGISTRY_TRAJECTORY_INTERFACE.md
/docs/modules/04_SCENE_PERFORMANCE_CONDUCTOR.md
/docs/modules/05_CONTEXTUAL_CONTROL_ROUTER.md
/docs/modules/06_CONDUCTOR_ROUTER_INTERFACE.md
/docs/modules/07_CONFLICT_PROTECTION_MANAGER.md
/docs/modules/08_CONFLICT_CONDUCTOR_ROUTER_INTERFACE.md
/docs/modules/09_PITCH_HARMONIC_FIELD_MANAGER.md
/docs/modules/10_PITCH_CONFLICT_INTERFACE.md
/docs/modules/11_TIMBRE_MATERIAL_MAPPER.md
/docs/modules/12_TIMBRE_REGISTRY_CONFLICT_PITCH_INTERFACE.md
/docs/modules/13_SOUND_ENGINES_INSTRUMENTS.md
/docs/modules/14_SOUND_ENGINE_MAPPER_CONFLICT_ROUTER_INTERFACE.md
/docs/modules/15_AUDIT_COHERENCE_SOURCES_SAMPLES_ENGINES_RECENTS.md
/docs/modules/16_SOURCE_NEEDS_ASSET_DATABASE_PROTOCOL.md
```

Rôle : développer progressivement les modules décrits dans `02_SPECIFICATION_MAX_FOR_LIVE`, auditer leurs interfaces avant prototypage, puis préparer les données nécessaires aux instruments, sources, samples, engines et assets.

## G. Préparation des sources, samples et assets

```text
/docs/assets/01_INSTRUMENT_SOURCE_CANDIDATES_INITIAL.md
/docs/assets/02_SAMPLE_NEEDS_DISCOVERY_PROTOCOL.md
```

Rôle : accueillir les instruments / sources candidates, puis exécuter un protocole séparé pour décider quels genres de samples, prises, corpus ou références audio doivent réellement être préparés.

`01_INSTRUMENT_SOURCE_CANDIDATES_INITIAL` demande :

```text
quels instruments, sources, objets, lieux ou matières pourraient être intéressants ?
```

`02_SAMPLE_NEEDS_DISCOVERY_PROTOCOL` demande :

```text
quels genres de samples faut-il vraiment constituer pour réaliser les ambitions, fonctions, phénomènes, esthétiques et contraintes du projet ?
```

Ces documents ne constituent pas une banque de sons. Ils ne définissent pas non plus le futur système de suggestion live au musicien.

## H. Validation, outils et mémoire

```text
03_VALIDATION_TESTS_EXTENSIONS.md
04_RESSOURCES_ET_BOITE_A_OUTILS.md
/checkpoints/checkpoint_maitre_v0_1.md
```

Rôle : préparer les futures validations, maintenir la boîte à outils, garder des états de synthèse du projet.

---

# 4. Workflow documentaire actuel

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
9. Création de protocoles de données si la décision affecte sources / instruments / assets / engines
   ↓
10. Création d’inventaires et fiches de données préparatoires
   ↓
11. Propagation vers validation/tests seulement si le système futur est assez clair
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
auditer les interfaces avant que les modules ne divergent ;
intégrer les contraintes sound design / mix / outils sans les développer trop tôt ;
mettre à jour les documents anciens quand des modules récents déplacent le workflow.
```

---

# 5. Règle anti-prototype prématuré

Aucun prototype ne doit être lancé tant que son rôle dans l’architecture finale n’est pas clair.

Un prototype futur devra être :

```text
lié à un module final probable ;
réutilisable ou transformable ;
documenté ;
conçu pour répondre à une question précise ;
compatible avec l’architecture globale ;
compatible avec les besoins de sources / assets quand ils sont impliqués.
```

Les inventaires d’instruments, protocoles de sample needs, matrices de source_needs, fiches d’assets, pools et politiques de sélection ne sont pas des prototypes. Ce sont des validations de données et de structure.

---

# 6. Règle anti-classement limitant

Les catégories du projet sont des outils de lecture, pas des prisons conceptuelles.

Un objet, une trajectoire, une scène, un instrument candidat ou un groupement de paramètres peut appartenir à plusieurs familles à la fois.

Exemples :

```text
Didgeridoo = grave + formants + souffle + live + corps ;
Gong = impact + halo + partiels + beauté autonome + résolution ;
Sub = corps + pitch_center + pression + résolution ;
Pré-drop = rythmique + corporel + spectral + harmonique ;
Halo = espace + queue + harmonie + risque d’ambientisation ;
Tambour sur cadre = peau + corps + impact + risque de cliché rituel ;
Shruti / harmonium = bourdon + souffle + battements + halo harmonique + risque décoratif.
```

Donc les documents et futurs modules doivent privilégier :

```text
profils activables ;
tags multiples ;
rôles contextuels ;
trajectoires composables ;
relations dynamiques ;
garde-fous selon contexte ;
affordances sonores plutôt que classes fermées.
```

plutôt que :

```text
classement exclusif ;
mode fermé ;
preset stylistique ;
catégorie unique ;
rôle permanent imposé.
```

---

# 7. Règle sound design / mix / outils / assets

Les méthodes de sound design, la couche mix/master, les recherches d’outils et les corpus d’assets doivent être intégrés comme contraintes d’architecture, mais développés au bon moment.

Principes :

```text
préserver la reconnaissance de source quand elle sert la musique ;
accepter l’abstraction quand la fonction l’exige ;
permettre sources réelles, samples, live, synthèse, resynthèse et hybridation ;
ne pas construire de corpus massif non justifié ;
accepter qu’une banque ciblée devienne grande si les besoins réels l’exigent ;
faire du sound design une écologie d’objets et de relations, pas une banque décorative ;
commencer la base par instruments / sources candidates et source_needs, pas par fichiers audio ;
avant de constituer un corpus, exécuter le protocole de découverte des besoins en samples ;
prévoir une couche mix/master subtile, professionnelle et intégrée ;
ne pas laisser les outils guider l’esthétique trop tôt ;
prévoir des recherches d’outils à des seuils précis.
```

---

# 8. Terminologie

Pour éviter les confusions, on distingue :

## Instruments / sources candidates

Désignent des instruments, sources, objets, lieux, gestes ou matières qui peuvent être envisagés avant d’être transformés en source_need ou asset.

Question :

```text
quels instruments, sources, objets, lieux ou matières pourraient être intéressants ?
```

## Sample needs

Désignent des genres de samples, prises, références audio ou corpus qui semblent nécessaires pour réaliser une fonction, un phénomène, une ambition esthétique ou une contrainte technique.

Question :

```text
quels genres de samples faut-il vraiment constituer ?
```

Un sample need n’est pas encore un fichier audio. C’est un manque fonctionnel / esthétique / technique à documenter.

## Source needs

Désignent des besoins de sources reliés à une fonction, un phénomène, un rôle, une scène, une trajectoire ou une affordance.

Ils précèdent les assets.

## Material assets

Désignent les matériaux concrets : sample, prise live préparée, source offline, variante d’objet, preset paramétrique, engine ou préparation.

Un asset ne doit pas entrer dans la base performative sans source_need.

## Contrôles live / suggestion live

La décision de proposer au musicien un instrument, un matériau ou une configuration pendant la performance est un sujet séparé, qui relèvera plus tard du Router / interface live.

Elle ne doit pas être confondue avec les protocoles de préparation des samples.

---

# 9. Documents actifs

```text
README.md
/docs/00_INDEX_METHODE_DECISIONS.md
/docs/01_CAHIER_DES_PHENOMENES_SONORES.md
/docs/01A_SYNCHRONISATION_PHENOMENES_MODULES.md
/docs/02_SPECIFICATION_MAX_FOR_LIVE.md
/docs/02A_SYNCHRONISATION_ARCHITECTURE_MODULES.md
/docs/03_VALIDATION_TESTS_EXTENSIONS.md
/docs/04_RESSOURCES_ET_BOITE_A_OUTILS.md
/docs/05_CARTOGRAPHIE_STYLE_PERSONNEL_TECHNO.md
/docs/06_CARTOGRAPHIE_INFLUENCES_STYLE_VESPERARE.md
/docs/07_PITCH_HARMONIQUES_MICROTONALITE.md
/docs/08_PERFORMANCE_SCENES_TRAJECTOIRES_OBJETS.md
/docs/09_FICHES_MODELES_OBJETS_TRAJECTOIRES_SCENES.md
/docs/10_SOUND_DESIGN_MIX_OUTILS_CONTRAINTES.md
/docs/11_AUDIT_COHERENCE_NOTATION_CATEGORIES_RESPONSABILITES.md
/docs/modules/01_OBJECT_REGISTRY.md
/docs/modules/02_TRAJECTORY_ENGINE.md
/docs/modules/03_REGISTRY_TRAJECTORY_INTERFACE.md
/docs/modules/04_SCENE_PERFORMANCE_CONDUCTOR.md
/docs/modules/05_CONTEXTUAL_CONTROL_ROUTER.md
/docs/modules/06_CONDUCTOR_ROUTER_INTERFACE.md
/docs/modules/07_CONFLICT_PROTECTION_MANAGER.md
/docs/modules/08_CONFLICT_CONDUCTOR_ROUTER_INTERFACE.md
/docs/modules/09_PITCH_HARMONIC_FIELD_MANAGER.md
/docs/modules/10_PITCH_CONFLICT_INTERFACE.md
/docs/modules/11_TIMBRE_MATERIAL_MAPPER.md
/docs/modules/12_TIMBRE_REGISTRY_CONFLICT_PITCH_INTERFACE.md
/docs/modules/13_SOUND_ENGINES_INSTRUMENTS.md
/docs/modules/14_SOUND_ENGINE_MAPPER_CONFLICT_ROUTER_INTERFACE.md
/docs/modules/15_AUDIT_COHERENCE_SOURCES_SAMPLES_ENGINES_RECENTS.md
/docs/modules/16_SOURCE_NEEDS_ASSET_DATABASE_PROTOCOL.md
/docs/assets/01_INSTRUMENT_SOURCE_CANDIDATES_INITIAL.md
/docs/assets/02_SAMPLE_NEEDS_DISCOVERY_PROTOCOL.md
/checkpoints/checkpoint_maitre_v0_1.md
```

---

# 10. Prochaine étape recommandée

```text
1. Exécuter 02_SAMPLE_NEEDS_DISCOVERY_PROTOCOL une première fois.
2. Produire SAMPLE_NEEDS_INITIAL.
3. Enrichir l’inventaire d’instruments / sources candidates avec les propositions de Yohan.
4. Créer les premières fiches source_need prioritaires.
5. Puis seulement ensuite reprendre Output / Mix / Performance Layer.
```
