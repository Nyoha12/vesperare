# 00_INDEX_METHODE_DECISIONS

Version : v0.7  
Statut : document directeur de méthode et de décisions.

## Objet

Ce document garde les décisions structurantes du projet Vesperare : méthode, terminologie, ordre de travail, statut des documents, règles de mise à jour et grandes orientations validées.

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
01_CAHIER_DES_PHENOMENES_SONORES
        ↓
02_SPECIFICATION_MAX_FOR_LIVE
        ↓
03_VALIDATION_TESTS_EXTENSIONS
```

Le document `04_RESSOURCES_ET_BOITE_A_OUTILS` alimente surtout la spécification technique.

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
