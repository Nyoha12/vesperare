# 02_SPECIFICATION_MAX_FOR_LIVE

Version : v0.1  
Statut : spécification initiale à synchroniser avec le style techno personnel naturalisé.

## Objet

Ce document décrit l’architecture future du système Max for Live / Ableton Live de Vesperare.

Il doit évoluer à partir du cahier des phénomènes sonores et de la cartographie du style personnel techno. Il ne s’agit plus seulement de concevoir un générateur de polytextures percussives, mais un système live complet pour composer et performer une techno personnelle naturalisée.

## Formulation technique actuelle

Système de composition et performance live dans Ableton Live / Max for Live, capable de générer, traiter, organiser et contrôler :

```text
fonctions techno naturalisées ;
impact-fondation corporel ;
pression spectrale corporelle ;
contours sculptés ;
polytextures percussives ;
voix ;
instruments live ;
sons naturels / instrumentaux ;
sons synthétisés comme physiques ;
formes complètes de performance.
```

## Principe général

Le système ne doit pas seulement générer des sons ou des notes. Il doit coordonner des fonctions musicales et des phénomènes perceptifs.

Principe :

```text
fonction musicale
→ support sonore
→ paramètres de contrôle
→ effets secondaires
→ risques de perte de fonction
→ régulation par le système
```

## Architecture modulaire prévue

```text
[Macro Control Layer]
        ↓
[Global State / Conductor]
        ↓
[Function Engines]
        ↓
[Timbre & Material Mapper]
        ↓
[Sound Engines / Drum Racks / Instruments]
        ↓
[Spectral & Comfort Governor]
        ↓
[Halo / Space / Resonance Controller]
        ↓
[Output / Mix / Performance Layer]
```

En parallèle :

```text
[Live Instrument Inputs]
        ↓
[Audio Feature Extractor]
        ↓
[Impact Matrix]
        ↓
[Global State / Governors / Processing]
```

## Module 1 — Macro Control Layer

### Rôle

Exposer les contrôles principaux pour la performance et la composition. Les macros doivent être jouables, lisibles et non redondantes.

### Macros candidates

```text
Impact / Fondation
Pression corporelle
Densité
Contour / Netteté
Halo / Espace
Hypnose / Stabilité
Mutation
Polytexture
Brillance rythmique
Intensité
Confort spectral
Voix / Présence
Live Influence
```

Ces macros ne sont pas encore les catégories finales de contrôle live. Elles sont des candidates à organiser plus tard.

## Module 2 — Global State / Conductor

### Rôle

Maintenir les états globaux : forme, tension, stabilité, densité, pression, espace, degré d’activité live.

### Variables internes possibles

```text
cycle_phase
phrase_position
tension_state
body_pressure_state
hypnotic_stability
loop_identity
mutation_rate
spectral_pressure
comfort_guard
halo_budget
live_influence_state
```

### Fonction musicale

Éviter que les modules agissent séparément. Le Conductor garantit que les transformations restent compatibles avec la forme globale et la performance.

## Module 3 — Function Engines

### Rôle

Produire ou organiser les fonctions musicales plutôt que seulement des patterns.

Fonctions à prendre en charge :

```text
impact-fondation corporel ;
pression spectrale ;
brillance rythmique ;
polytexture percussive ;
hypnose active ;
répétition non redondante ;
beauté autonome ;
voix comme matière / signal ;
transitions et retours corporels.
```

## Module 4 — Timbre & Material Mapper

### Rôle

Associer une fonction à un support sonore.

Exemple :

```text
fonction : brillance rythmique
supports possibles : cymbalette, clochette, insecte, froissement, petit métal, souffle court
```

Le mapper doit tenir compte de :

```text
attaque ;
queue ;
registre ;
brillance ;
naturalisation ;
fonction à remplir ;
risque de halo ;
risque de masquage ;
connotation stylistique.
```

## Module 5 — Sound Engines

### Sources possibles

```text
Drum Rack ;
Drum Sampler ;
Simpler / Sampler ;
Operator ;
Wavetable ;
Meld ;
DS devices ;
Granulator ;
field recordings ;
banques instrumentales ;
voix ;
instruments live traités ;
objets acoustiques enregistrés.
```

### Principe

Choisir les sons selon leur capacité à porter une fonction, pas seulement selon leur beauté isolée.

## Module 6 — Spectral & Comfort Governor

### Rôle

Préserver l’intensité sans agression, le confort de diffusion, la lisibilité du spectre et la stabilité corporelle.

### Variables possibles

```text
spectral_pressure
sub_stability
mid_pressure
harshness_limit
brightness_comfort
air_fatigue
comfort_guard
impact_without_loudness
```

### Actions possibles

```text
réduire certains aigus ;
raccourcir des queues ;
limiter un halo ;
réduire une densité ;
contrôler une saturation ;
stabiliser le sub ;
préserver l’impact principal ;
laisser de la place aux instruments live.
```

## Module 7 — Halo / Space / Resonance Controller

### Rôle

Gérer les halos, queues, résonances, espaces, delays et profondeurs sans ambientiser automatiquement la musique.

### Variables possibles

```text
halo_depth
space_depth
front_back_relief
resonance_field
dry_wet_functional_balance
spatial_pressure
```

### Principe

L’espace doit être musical, pas décoratif.

## Module 8 — Live Audio Listener

### Rôle

Analyser les entrées live sans leur imposer de rôle fixe.

### Instruments anticipés

```text
didgeridoo ;
gongs ;
tambours ;
voix ;
percussions ;
autres instruments acoustiques.
```

### Caractéristiques à extraire

```text
énergie ;
registre ;
attaque ;
sustain ;
brillance ;
résonance ;
densité ;
présence ;
instabilité ;
saillance.
```

## Module 9 — Impact Matrix

### Rôle

Définir comment les sons live influencent le système.

Le système ne doit pas dire automatiquement :

```text
ce son = fondation
```

mais plutôt :

```text
ce son occupe le grave ;
il a une longue résonance ;
il est saillant ;
il influence le halo à tel degré ;
il réduit ou non la densité générée.
```

## Module 10 — Ableton Extensions SDK

### Rôle

Outil satellite hors temps réel.

Usages possibles :

```text
créer automatiquement la structure du Set ;
générer des clips MIDI de test ;
créer des scènes ;
annoter des pistes ;
documenter des états ;
préparer des banques ;
auditer la structure du projet.
```

Ne remplace pas Max for Live pour le temps réel.

## Prochaine tâche pour ce document

Développer chaque module avec :

```text
entrées ;
sorties ;
variables internes ;
interactions ;
risques ;
priorité de développement ;
besoin de recherche.
```
