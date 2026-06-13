# 00_INDEX_METHODE_DECISIONS

Version : v1.8  
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
8. Établir les fiches de données et validations abstraites.
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
formes possibles dans Max for Live / Ableton ;
liens éventuels vers assets, sources et corpus ciblés.
```

## G. Validation, outils et mémoire

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
10. Propagation vers validation/tests seulement si le système futur est assez clair
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

Les inventaires d’instruments, matrices de source_needs, fiches d’assets, pools et politiques de sélection ne sont pas des prototypes. Ce sont des validations de données et de structure.

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
prévoir une couche mix/master subtile, professionnelle et intégrée ;
ne pas laisser les outils guider l’esthétique trop tôt ;
prévoir des recherches d’outils à des seuils précis.
```

---

# 8. Terminologie

Pour éviter les confusions, on distingue :

## Axes de conception

Servent à réfléchir au système.

Exemples :

```text
techno ↔ hors-techno ;
machine ↔ organique ;
réel ↔ synthétique ;
dense ↔ lisible ;
sec ↔ résonant ;
corporel ↔ spectral ;
contrôlé ↔ sauvage.
```

## Fonctions musicales

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

## Phénomènes sonores

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

## Instruments / sources candidates

Désignent des instruments, sources, objets, lieux, gestes ou matières qui peuvent être envisagés avant d’être transformés en source_need ou asset.

Ils peuvent venir de :

```text
fonctions ;
esthétique ;
inspirations ;
intuition personnelle ;
instruments disponibles ;
lacunes du système ;
qualités sonores désirables.
```

Ils doivent être évalués par affordances :

```text
attaque ;
queue ;
partiels ;
formants ;
souffle ;
corps ;
brillance ;
instabilité ;
reconnaissance ;
risques ;
potentiel live / sample / génération / hybride.
```

## Source needs

Désignent des besoins de sources reliés à une fonction, un phénomène, un rôle, une scène, une trajectoire ou une affordance.

Ils précèdent les assets.

## Material assets

Désignent les matériaux concrets : sample, prise live préparée, source offline, variante d’objet, preset paramétrique, engine ou préparation.

Un asset ne doit pas entrer dans la base performative sans source_need.

## Objets sonores

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

## Rôles musicaux

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

## Trajectoires

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

## Contrôles

Désignent des intentions performatives jouables.

## Paramètres

Désignent des variables techniques ou musicales internes, pas nécessairement exposées.

---

# 9. Décisions stylistiques majeures

## Techno

La techno est l’influence stylistique principale et doit rester perceptible par ses fonctions : pulsation, impact, répétition, pression corporelle, hypnose, tension longue, efficacité de diffusion et forme performative.

## Naturalisation

Naturaliser une fonction techno ne change pas forcément sa fonction. Cela change son support sonore.

Exemple :

```text
fonction : micro-pulsation aiguë
support techno habituel : hi-hat électronique
support possible : insecte, oiseau, clochette, cymbalette, frottement, grain, petit métal
```

## Polytexture percussive

La facette Keita Ogawa / polytexture percussive est une facette esthétique opératoire : elle apporte interlocking, groove composite, richesse percussive, harmonie de timbres, complexité lisible et densité articulée.

Elle ne doit pas devenir une importation de style latino, cubain, tribal, folklorique ou world music.

## Influences supplémentaires

Dubstep, jazz, trance et acid sont étudiés comme sources d’éléments intégrables à Vesperare, et non comme styles à importer en bloc.

## Pitch, harmoniques et microtonalité

La microtonalité, les partiels, les formants, les hauteurs ressenties et les centres spectraux constituent un nœud transversal du projet.

## Performance, scènes, trajectoires et objets

La performance doit être pensée comme un réseau programmable d’états, scènes, trajectoires, objets sonores, rôles, implications, contrôles contextuels et autonomies situées.

## Sound design, mix/master, sources et outils

Le sound design doit être pensé comme écologie d’objets et de relations : sources, comportements, densité, espace, masquage, hybridation, reconnaissance, abstraction.

La couche mix/master doit être intégrée plus tard comme contrainte subtile, professionnelle, adaptable aux contextes club / hors-club / ingénieur son / autonomie.

Les recherches d’outils doivent intervenir à des seuils précis, sans guider l’esthétique trop tôt.

## Instruments live et sources candidates

Les instruments live ne doivent pas être classés rigidement. Didgeridoo, gongs, tambours, voix ou autres instruments peuvent être des phénomènes multidimensionnels.

Les nouveaux instruments ou sources candidates peuvent être proposés spontanément par le compositeur. Ils doivent ensuite être évalués par affordances, fonctions possibles, stratégies de source, risques et compatibilité avec le système.

---

# 10. Documents actifs

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
/checkpoints/checkpoint_maitre_v0_1.md
```

---

# 11. Flux conceptuel actuel

```text
05_CARTOGRAPHIE_STYLE_PERSONNEL_TECHNO
        ↓
06_CARTOGRAPHIE_INFLUENCES_STYLE_VESPERARE
        ↓
07_PITCH_HARMONIQUES_MICROTONALITE
        ↓
08_PERFORMANCE_SCENES_TRAJECTOIRES_OBJETS
        ↓
10_SOUND_DESIGN_MIX_OUTILS_CONTRAINTES
        ↓
01_CAHIER_DES_PHENOMENES_SONORES
        ↓
01A_SYNCHRONISATION_PHENOMENES_MODULES
        ↓
02_SPECIFICATION_MAX_FOR_LIVE
        ↓
02A_SYNCHRONISATION_ARCHITECTURE_MODULES
        ↓
09_FICHES_MODELES_OBJETS_TRAJECTOIRES_SCENES
        ↓
docs/modules/01–14 modules et audits d’interface
        ↓
docs/modules/15 audit cohérence sources / samples / engines
        ↓
docs/modules/16 Source Needs / Asset Database Protocol
        ↓
03_VALIDATION_TESTS_EXTENSIONS
```

Le document `04_RESSOURCES_ET_BOITE_A_OUTILS` alimente surtout la spécification technique et les recherches futures.

Le document `09_FICHES_MODELES_OBJETS_TRAJECTOIRES_SCENES` est un appendice de vérification : il peut rétroagir vers `01` et `02` si une fiche révèle une incohérence ou un manque.

Le document `10_SOUND_DESIGN_MIX_OUTILS_CONTRAINTES` est une contrainte transversale : il doit influencer `01`, `02`, les modules, le protocole d’assets et les recherches d’outils au bon moment.

Les documents `docs/modules/` développent progressivement les modules prioritaires de `02` lorsque les fiches et audits montrent que leur rôle est assez clair.

---

# 12. Prochaine synchronisation documentaire

À ce stade :

```text
01 et 02 sont maintenus par addenda 01A / 02A ;
10 est synchronisé avec la logique instruments / sources / corpus ciblés ;
03 est synchronisé avec les validations de données et protocoles d’assets ;
16 devient la référence pour préparer instruments, sources, samples, assets, pools et politiques de sélection ;
Output / Mix est repoussé après premières fiches source_need / instrument candidates.
```

Prochaine étape recommandée :

```text
créer INSTRUMENT_SOURCE_CANDIDATES_INITIAL ;
créer les premières fiches source_need prioritaires ;
puis seulement ensuite reprendre Output / Mix / Performance Layer.
```
