# 11_AUDIT_COHERENCE_NOTATION_CATEGORIES_RESPONSABILITES

Version : v0.1  
Statut : audit global de cohérence, sans prototypage.

## Objet

Ce document vérifie la cohérence globale de la notation, des catégories, des responsabilités de modules et du vocabulaire du projet Vesperare.

Il intervient après la définition des modules et audits suivants :

```text
01_OBJECT_REGISTRY ;
02_TRAJECTORY_ENGINE ;
03_REGISTRY_TRAJECTORY_INTERFACE ;
04_SCENE_PERFORMANCE_CONDUCTOR ;
05_CONTEXTUAL_CONTROL_ROUTER ;
06_CONDUCTOR_ROUTER_INTERFACE ;
10_SOUND_DESIGN_MIX_OUTILS_CONTRAINTES ;
03_VALIDATION_TESTS_EXTENSIONS v0.5.
```

But : éviter que l’architecture devienne contradictoire, trop rigide ou trop redondante avant de continuer vers d’autres modules.

---

# 1. Diagnostic global

L’architecture est cohérente dans son principe.

Elle distingue bien :

```text
objet ;
rôle ;
profil ;
phénomène ;
fonction ;
dimension ;
trajectoire ;
scène ;
événement ;
contrôle ;
protection ;
risque ;
autonomie ;
module ;
audit d’interface.
```

Le principal risque n’est pas une contradiction majeure.  
Le principal risque est une **surabondance de termes proches** qui pourraient finir par rendre le système difficile à implémenter ou à jouer.

Décision : conserver les distinctions, mais clarifier les responsabilités.

---

# 2. Termes à ne pas confondre

## Fonction musicale

Ce qu’un élément fait musicalement.

Exemples :

```text
porter le corps ;
créer de la tension ;
ouvrir l’espace ;
stabiliser ;
protéger ;
résoudre ;
fragmenter ;
densifier.
```

## Phénomène sonore

Comment une fonction devient perceptible dans la matière.

Exemples :

```text
impact-fondation ;
pression spectrale corporelle ;
brillance rythmique naturalisée ;
polytexture raffinée ;
halo fonctionnel ;
torsion résonante.
```

## Objet sonore

Source ou groupe de sources capable de porter plusieurs rôles.

Exemples :

```text
gong ;
voix ;
sub ;
polytexture ;
halo ;
didgeridoo ;
field recording.
```

## Rôle musical

Fonction momentanée d’un objet dans une scène ou trajectoire.

Exemples :

```text
gong = masse de résolution ;
voix = signal ;
sub = trace corporelle ;
polytexture = densité articulée ;
halo = espace principal.
```

## Profil

Facette descriptive activable d’un objet.

Exemples :

```text
profil corporel ;
profil spatial ;
profil rythmique ;
profil harmonique ;
profil live ;
profil de protection.
```

## Dimension

Axe musical ou perceptif affecté par une trajectoire, un objet ou un contrôle.

Exemples :

```text
corps ;
sub ;
halo ;
espace ;
densité ;
partiels ;
formants ;
confort ;
lisibilité.
```

## Trajectoire

Transformation organisée, composée d’opérations, phases, objets, rôles, dimensions et conditions.

Exemples :

```text
pré-drop naturalisé ;
suspension / expansion ;
torsion résonante ;
densification polytexturale ;
retour au corps.
```

## Scène

Configuration performative, ouverte, composée d’état, objets, rôles, trajectoires autorisées, événements armés, protections et contrôles prioritaires.

## Contrôle

Intention jouable qui peut agir sur plusieurs paramètres ou modules.

Exemples :

```text
Réduire halo ;
Stabiliser sub ;
Retour au corps ;
Retarder ;
Résoudre ;
Protéger voix.
```

## Paramètre

Variable technique ou musicale interne, pas nécessairement jouable directement.

Exemples :

```text
halo_budget ;
sub_stability ;
trajectory_phase ;
object_involvement ;
field_stability ;
mid_load.
```

---

# 3. Décisions de notation

## Objets

Notation recommandée :

```text
object_id
object_name
object_profiles
object_roles
object_risks
object_protections
```

Éviter :

```text
object_type unique ;
classe d’objet exclusive ;
rôle permanent codé dans l’objet.
```

## Rôles

Notation recommandée :

```text
current_role
role_candidates
forbidden_roles
role_constraints
```

Éviter :

```text
role = identity ;
role permanent ;
rôle attaché une fois pour toutes à une source.
```

## Profils

Notation recommandée :

```text
active_profiles: [corporel, spatial, rythmique, harmonique, live, protection]
```

Éviter :

```text
profile_type: single_profile
```

## Trajectoires

Notation recommandée :

```text
trajectory_id
trajectory_tags
operation_stack
trajectory_phase
dimension_targets
object_involvement
bifurcation_options
```

Éviter :

```text
trajectory_type: pre_drop_only ;
automation_name ;
preset_name.
```

## Scènes

Notation recommandée :

```text
scene_id
scene_tags
state_family
active_objects
allowed_trajectories
armed_events
protected_dimensions
control_priorities
```

Éviter :

```text
scene_type: one_mode_only ;
scene = Ableton scene only ;
scene = preset global.
```

## Contrôles

Notation recommandée :

```text
control_id
control_tags
control_level
priority_level
visibility_state
object_targets
trajectory_targets
dimension_targets
emergency_status
```

Éviter :

```text
control = one parameter ;
macro trop générale ;
knob technique directement exposé sans fonction musicale.
```

---

# 4. Responsabilités des modules

## Object Registry

Responsabilité : savoir ce que sont les objets et ce qu’ils peuvent devenir.

```text
matière ;
source ;
profils ;
rôles possibles ;
risques ;
protections ;
relations ;
données déclarées / analysées / contextuelles / dynamiques.
```

Ne doit pas décider :

```text
forme globale ;
autorisation de scène ;
interface visible ;
trajectoire active finale.
```

## Trajectory Engine

Responsabilité : organiser les transformations.

```text
opérations ;
phases ;
objets impliqués ;
rôles ;
dimensions ;
conditions ;
résolution ;
bifurcation ;
annulation ;
retard.
```

Ne doit pas décider seul :

```text
quelle scène est active ;
quelle transformation est stylistiquement autorisée ;
quels contrôles sont visibles ;
quel objet existe.
```

## Registry ↔ Trajectory Interface

Responsabilité : vérifier que les trajectoires demandent des rôles / dimensions / risques, pas des classes fermées d’objets.

## Scene / Performance Conductor

Responsabilité : maintenir le contexte musical global.

```text
état actif ;
scène ;
trajectoires autorisées ;
événements armés ;
protections ;
priorités ;
niveaux d’autonomie ;
interdictions ;
bifurcations possibles.
```

Ne doit pas :

```text
composer seul ;
produire le son ;
remplacer le Router ;
exposer les paramètres.
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
priorités d’interface ;
verrous temporaires.
```

Ne doit pas :

```text
changer seul la scène ;
autoriser une trajectoire interdite ;
remplacer le Conductor ;
exposer toute la base de données ;
confondre contrôle et paramètre.
```

## Conductor ↔ Router Interface

Responsabilité : vérifier que ce qui est autorisé ne devient pas automatiquement visible, et que ce qui est dangereux devient immédiatement jouable en protection.

## Sound Design / Mix / Outils

Responsabilité actuelle : contrainte transversale, pas module actif.

```text
préserver possibilités de sound design ;
prévoir mix/master intégré futur ;
prévoir recherches d’outils aux bons seuils ;
empêcher le système de devenir incompatible avec ces besoins.
```

Ne doit pas encore :

```text
définir tous les Sound Engines ;
choisir tous les plugins ;
concevoir le mastering final ;
forcer la recherche d’outils trop tôt.
```

---

# 5. Zones de chevauchement surveillées

## Scène vs trajectoire

Risque : confondre une scène avec une trajectoire.

Clarification :

```text
scène = situation performative ;
trajectoire = transformation dans ou entre situations.
```

## État vs scène

Risque : confondre état musical et scène programmable.

Clarification :

```text
état = régime musical actuel ;
scène = configuration complète incluant état, objets, rôles, trajectoires, protections, contrôles.
```

## Rôle vs profil

Risque : confondre ce qu’un objet fait maintenant avec ce qu’il est capable de porter.

Clarification :

```text
profil = capacité/facette ;
rôle = fonction momentanée.
```

## Contrôle vs paramètre

Risque : exposer la technique au lieu de l’intention jouable.

Clarification :

```text
contrôle = intention performative ;
paramètre = variable technique ou interne.
```

## Protection vs interdiction

Risque : rendre une protection trop rigide.

Clarification :

```text
protéger = surveiller / limiter / prioriser ;
interdire = empêcher dans un contexte donné.
```

## Retarder vs annuler

Risque : supprimer une possibilité qui pourrait rester musicalement pertinente.

Clarification :

```text
retarder = garder armé mais non déclenché ;
annuler = désarmer ou retirer la possibilité.
```

## Deep control vs emergency control

Risque : cacher une urgence dans le niveau profond.

Clarification :

```text
profond = technique, accessible si demandé ;
urgence = immédiatement jouable si risque actif.
```

---

# 6. Cohérence des catégories

Décision confirmée : les catégories sont des facettes, pas des classes.

Exemples :

```text
Didgeridoo = live + grave + souffle + formants + corps ;
Gong = métal + impact + halo + partiels + résolution ;
Sub = corps + pression + pitch_center + résolution ;
Halo = espace + queue + harmonie + risque ;
Pré-drop = tension + rythme + corps + spectre + bifurcation ;
Suspension = espace + corps latent + harmonie + attente.
```

Notation préférée :

```text
tags ;
profiles ;
roles ;
dimensions ;
relationships ;
context.
```

Notation à éviter :

```text
type unique ;
category exclusive ;
mode fixed ;
preset identity.
```

---

# 7. Audit des noms actuels

## Noms stables à conserver

```text
Object Registry ;
Trajectory Engine ;
Scene / Performance Conductor ;
Contextual Control Router ;
Conflict / Protection Manager ;
Spectral & Comfort Governor ;
Pitch / Harmonic Field Manager ;
Timbre & Material Mapper ;
Live Object Interpreter ;
Output / Mix / Performance Layer.
```

## Noms à surveiller

### Spectral Governor vs Spectral & Comfort Governor

Décision : utiliser de préférence :

```text
Spectral & Comfort Governor
```

car le module doit protéger le spectre mais aussi le confort, la fatigue, la pression et la traduction.

### Halo / Space Controller vs Halo / Space / Resonance Controller

Décision : utiliser de préférence :

```text
Halo / Space / Resonance Controller
```

car le halo seul est trop limité : il faut aussi gérer espace, profondeur, queue, distance, post-résonance.

### Conflict Manager vs Conflict / Protection Manager

Décision : utiliser de préférence :

```text
Conflict / Protection Manager
```

car le module ne fait pas que détecter les conflits : il active protections et arbitrages.

### Mix / Master Intelligence Layer

Statut : nom provisoire futur, à ne pas figer encore.

Possibles alternatives :

```text
Output / Mix Intelligence Layer ;
Mix / Translation Governor ;
Output / Diffusion Governor ;
Spectral Translation Layer.
```

Décision : ne pas choisir maintenant.

---

# 8. Conflits potentiels actuels

## Trop de documents modules avant synchronisation de `02`

Risque : `02_SPECIFICATION_MAX_FOR_LIVE` peut devenir moins détaillé que ses modules satellites.

Décision : acceptable temporairement, mais `02` devra être synchronisé plus tard comme carte générale actualisée.

## `01_CAHIER_DES_PHENOMENES_SONORES` peut manquer les contraintes de `10`

Risque : le cahier des phénomènes ne reflète pas encore toutes les contraintes sound design / mix / outils.

Décision : relire `01` après l’audit global et propager seulement les éléments phénoménologiques nécessaires.

## `03_VALIDATION_TESTS_EXTENSIONS` vient d’être mis à jour

Risque : pas de conflit. Il joue bien son rôle de validation.

## Catégories live vs catégories conceptuelles

Risque : confondre catégories de paramètres live avec catégories d’objets ou de phénomènes.

Décision : conserver “catégories de paramètres live” uniquement pour l’organisation concrète de l’interface, jamais comme classification conceptuelle globale.

---

# 9. Décisions prises par l’audit

```text
1. Conserver les distinctions actuelles : objet / rôle / profil / dimension / trajectoire / scène / contrôle / paramètre.
2. Éviter les types uniques et préférer tags, profils, rôles et dimensions multiples.
3. Garder Object Registry comme module des objets, pas des scènes.
4. Garder Trajectory Engine comme module des transformations, pas de l’autorisation globale.
5. Garder Conductor comme module d’autorisation contextuelle, pas d’interface finale.
6. Garder Router comme module d’interface contextuelle, pas de composition formelle.
7. Garder `10` comme contrainte transversale, pas module technique.
8. Synchroniser plus tard `01` et `02` avec les modules détaillés.
9. Ne pas lancer de prototype avant un prochain choix de module ou synchronisation.
```

---

# 10. Prochaine étape recommandée

Deux chemins sont possibles.

## Chemin A — Synchronisation documentaire

```text
mettre à jour 01_CAHIER_DES_PHENOMENES_SONORES ;
mettre à jour 02_SPECIFICATION_MAX_FOR_LIVE ;
```

Objectif : faire remonter les modules détaillés dans les documents centraux.

## Chemin B — Nouveau module

Choisir un module suivant parmi :

```text
Pitch / Harmonic Field Manager ;
Conflict / Protection Manager ;
Timbre & Material Mapper ;
Output / Mix / Performance Layer.
```

## Avis actuel

Le meilleur chemin est probablement :

```text
A. Synchroniser légèrement 01 et 02 ;
B. puis détailler Conflict / Protection Manager.
```

Pourquoi : les protections, conflits, urgences, mix futur et live input apparaissent maintenant partout. Avant de développer Pitch ou Timbre, il faut clarifier qui arbitre les conflits.
