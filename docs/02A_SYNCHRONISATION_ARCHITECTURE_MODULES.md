# 02A_SYNCHRONISATION_ARCHITECTURE_MODULES

Version : v0.1  
Statut : addendum de synchronisation légère de l’architecture Max for Live, sans remplacement de `02_SPECIFICATION_MAX_FOR_LIVE.md`.

## Objet

Ce document synchronise la carte architecturale `02` avec les développements récents :

```text
01A_SYNCHRONISATION_PHENOMENES_MODULES ;
03_VALIDATION_TESTS_EXTENSIONS v0.5 ;
10_SOUND_DESIGN_MIX_OUTILS_CONTRAINTES ;
11_AUDIT_COHERENCE_NOTATION_CATEGORIES_RESPONSABILITES ;
docs/modules/01_OBJECT_REGISTRY ;
docs/modules/02_TRAJECTORY_ENGINE ;
docs/modules/03_REGISTRY_TRAJECTORY_INTERFACE ;
docs/modules/04_SCENE_PERFORMANCE_CONDUCTOR ;
docs/modules/05_CONTEXTUAL_CONTROL_ROUTER ;
docs/modules/06_CONDUCTOR_ROUTER_INTERFACE.
```

Le document `02` reste la carte architecturale principale.  
Le présent addendum précise comment cette carte doit maintenant être lue avant une future refonte complète éventuelle.

---

# 1. Architecture actualisée de lecture

La chaîne technique doit désormais être comprise comme :

```text
Style / intentions
→ phénomènes
→ objets multi-profils
→ rôles contextuels
→ trajectoires décomposées
→ scènes / états / événements armés
→ autorisations Conductor
→ contrôles Router
→ protections / conflits
→ sound design / timbre / engines
→ pitch / harmonie / partiels
→ espace / halo / résonance
→ gouvernance spectrale / confort
→ output / mix / performance.
```

Cette chaîne n’est pas strictement linéaire. Plusieurs modules échangent en boucle.

---

# 2. Modules déjà stabilisés conceptuellement

Les modules suivants ont maintenant une spécification ou un audit dédié :

```text
Object Registry ;
Trajectory Engine ;
Registry ↔ Trajectory Interface ;
Scene / Performance Conductor ;
Contextual Control Router ;
Conductor ↔ Router Interface.
```

Conséquence : dans `02`, ces modules ne doivent plus être compris comme de simples intentions générales, mais comme des composants conceptuels déjà partiellement spécifiés.

---

# 3. Responsabilités techniques confirmées

## Object Registry

Responsabilité : objets, profils, rôles possibles, risques, protections, relations, données déclarées / analysées / contextuelles / dynamiques.

Ne décide pas :

```text
forme globale ;
autorisation de scène ;
interface visible ;
trajectoire active finale.
```

## Trajectory Engine

Responsabilité : opérations, phases, objets impliqués, rôles, dimensions, conditions, résolution, bifurcation, annulation, retard.

Ne décide pas :

```text
scène active ;
autorisation stylistique globale ;
contrôles visibles ;
existence des objets.
```

## Scene / Performance Conductor

Responsabilité : contexte musical global.

```text
état actif ;
scène active ;
trajectoires autorisées ;
événements armés ;
protections ;
priorités ;
interdictions ;
autonomie ;
bifurcations.
```

## Contextual Control Router

Responsabilité : rendre le contexte jouable.

```text
contrôles visibles ;
contrôles masqués ;
contrôles permanents ;
contrôles contextuels ;
contrôles profonds ;
contrôles d’urgence ;
priorités d’interface.
```

## Conflict / Protection Manager

Statut : module désormais prioritaire à détailler.

Raison : protections, conflits, urgences, live input, sound design, mix/master et Conductor/Router dépendent maintenant d’un arbitre clair.

---

# 4. Schéma conceptuel actualisé

```text
[Scene / Performance Conductor]
        ↓ contexte / autorisations / protections
[Contextual Control Router]
        ↓ contrôles visibles / profonds / urgents
[Object Registry] ←→ [Trajectory Engine]
        ↓ objets, rôles, opérations, phases
[Registry ↔ Trajectory Interface]
        ↓ compatibilité objets / trajectoires
[Pitch / Harmonic Field Manager]
        ↓ pitch, partiels, formants, sub relation
[Timbre & Material Mapper]
        ↓ source, matière, reconnaissance / abstraction
[Sound Engines / Live Inputs]
        ↓ son concret / traitement / génération
[Live Object Interpreter]
        ↓ influence live / agency / analyse douce
[Halo / Space / Resonance Controller]
        ↓ espace / queue / distance / post-résonance
[Spectral & Comfort Governor]
        ↓ confort / fatigue / lisibilité / pression
[Conflict / Protection Manager]
        ↓ arbitrage / urgence / limitation / promotion
[Output / Mix / Performance Layer]
        ↓ diffusion / mix / stabilité / performance
```

Ce schéma n’est pas un ordre audio strict. C’est un schéma de responsabilités et d’échanges.

---

# 5. Conflit / Protection comme prochain pivot

Le futur `Conflict / Protection Manager` doit pouvoir arbitrer entre :

```text
sub vs halo ;
voix vs densité ;
gong vs bas-médium ;
polytexture vs lisibilité ;
didgeridoo live vs sub synthétique ;
beauté autonome vs retour au corps ;
pression phénoménale vs confort ;
source recognition vs abstraction ;
contrôle manuel vs autonomie ;
Conductor authorization vs risk emergency ;
Router visibility vs interface overload.
```

Il doit aussi décider si une action doit être :

```text
autorisée ;
réduite ;
retardée ;
annulée ;
protégée ;
verrouillée ;
promue en urgence ;
renvoyée au Conductor ;
renvoyée au Router ;
renvoyée au Spectral & Comfort Governor.
```

---

# 6. Impact sur les modules non encore détaillés

## Pitch / Harmonic Field Manager

À détailler plus tard. Il devra gérer :

```text
pitch_center ;
spectral_root ;
partial_alignment ;
formant_focus ;
microtonal_spread ;
sub_pitch_relation ;
field_stability ;
resolution_target.
```

Mais il dépendra de Conflict / Protection pour savoir quand une tension harmonique devient trop instable, trop boueuse ou trop éloignée du corps.

## Timbre & Material Mapper

À détailler plus tard. Il devra gérer :

```text
source recognition ;
source abstraction ;
objet / rôle / phénomène ;
hybridation ;
corpus minimal ;
samples vs live ;
procédés de sound design ;
compatibilité trajectoire.
```

Mais il dépendra de Conflict / Protection pour savoir quand une matière masque, fatigue, surcharge ou trahit le rôle.

## Output / Mix / Performance Layer

À détailler plus tard. Il devra gérer :

```text
sub / mono / centre ;
traduction club / hors-club ;
mode ingénieur son / autonomie ;
préservation dynamique ;
protection de l’impact ;
préservation de l’espace ;
limitation intelligente des risques.
```

Mais il dépendra de Conflict / Protection et Spectral & Comfort Governor pour distinguer protection musicale, confort, sécurité et mix.

---

# 7. Impact sur les recherches d’outils

Aucune recherche d’outils massive ne doit encore être lancée.

Recherches utiles seulement si :

```text
un module nécessite une fonction impossible ou coûteuse à concevoir soi-même ;
un prototype réutilisable devient nécessaire ;
un choix Max for Live / plugin / Ableton natif / script change l’architecture ;
une contrainte de performance temps réel doit être vérifiée ;
un risque de diffusion ou de mix/master doit être documenté.
```

Moment probable de recherche : après spécification de `Conflict / Protection Manager`, puis avant `Output / Mix / Performance Layer`.

---

# 8. Mise à jour de la priorité de développement

Ancienne priorité implicite :

```text
Pitch / Harmonic Field Manager ou Contextual Control Router.
```

Nouvelle priorité après modules et audits :

```text
1. Conflict / Protection Manager ;
2. Pitch / Harmonic Field Manager ;
3. Timbre & Material Mapper ;
4. Output / Mix / Performance Layer ;
5. Live Object Interpreter si le didgeridoo/live devient prioritaire techniquement ;
6. recherches d’outils ciblées selon module.
```

Pourquoi : les conflits et protections apparaissent maintenant comme nœud transversal entre scènes, trajectoires, objets, mix, live, sound design, sub, halo et contrôle.

---

# 9. Conditions de passage au prochain module

Avant de détailler `Conflict / Protection Manager`, il faut garder comme invariants :

```text
ne pas tout interdire ;
protéger sans figer ;
retarder plutôt qu’annuler quand possible ;
promouvoir les urgences sans paniquer l’interface ;
préserver l’intensité sans lisser ;
laisser place à l’agency live ;
distinguer conflit dangereux et tension féconde ;
préserver les catégories comme facettes multiples.
```

---

# 10. Statut de cette synchronisation

Ce document n’annule pas `02_SPECIFICATION_MAX_FOR_LIVE.md`.

Il sert de couche de lecture mise à jour jusqu’à une future refonte complète éventuelle de `02`.

Décision : ne pas réécrire tout `02` maintenant pour éviter de perdre les détails architecturaux déjà présents.
