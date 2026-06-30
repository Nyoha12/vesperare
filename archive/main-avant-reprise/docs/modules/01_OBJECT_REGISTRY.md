# 01_OBJECT_REGISTRY

Version : v0.2  
Statut : spécification détaillée de module, sans prototypage.

## Objet

Ce document détaille le futur module **Object Registry** décrit dans `02_SPECIFICATION_MAX_FOR_LIVE`.

Le rôle de l’Object Registry est de recenser, organiser et rendre utilisables les objets sonores de Vesperare : leurs matières, fonctions possibles, rôles, profils spectraux, profils de pitch/partiels, capacités de trajectoire, dépendances, protections et états contextuels.

Il ne s’agit pas d’une banque de samples.  
Il s’agit d’un registre musical et performatif permettant au système de savoir ce qu’un objet sonore peut faire, dans quelle scène, sous quel rôle, avec quels risques et quels contrôles.

## Principe général

Un objet sonore ne doit pas être réduit à une source audio.

Il doit être décrit comme :

```text
source matérielle ;
profil perceptif ;
fonction musicale possible ;
rôles contextuels ;
capacité de trajectoire ;
relations aux autres objets ;
risques ;
protections ;
contrôles associés.
```

Formule :

```text
objet sonore = matière + fonctions possibles + rôles contextuels + trajectoires compatibles + garde-fous.
```

---

# 1. Types d’informations dans l’Object Registry

Les fiches modèles de `09` montrent que le registre doit distinguer plusieurs types d’informations.

## A. Données déclarées

Informations fournies ou décidées par le compositeur.

Exemples :

```text
cet objet est un gong grave ;
cette voix peut être utilisée comme signal ;
ce field recording doit rester discret ;
ce sub doit rester central ;
ce groupe de clochettes peut porter la brillance rythmique.
```

Utilité : préserver l’intention artistique et éviter que le système interprète mal les sources.

## B. Données analysées

Informations extraites automatiquement ou semi-automatiquement par analyse.

Exemples :

```text
registre dominant ;
centre spectral ;
attaque ;
queue ;
brillance ;
densité ;
partiels ;
formants ;
énergie ;
instabilité ;
saillance.
```

Utilité : adapter le comportement du système aux propriétés réelles du son.

## C. Données contextuelles

Informations dépendant de la scène, du rôle ou de la trajectoire.

Exemples :

```text
gong = masse de résolution dans cette scène ;
voix = signal dans cette section ;
sub = trace corporelle dans cette suspension ;
polytexture = densité articulée dans cette montée ;
halo = espace principal dans cette beauté autonome.
```

Utilité : permettre à un même objet de changer de rôle sans changer de nature.

## D. Données dynamiques

Informations qui évoluent pendant la performance.

Exemples :

```text
niveau d’implication ;
priorité actuelle ;
degré d’ouverture ;
état de protection ;
phase de trajectoire ;
fatigue spectrale ;
présence dans le mix ;
relation au live input.
```

Utilité : permettre au système de réagir sans perdre le contexte.

## E. Données de protection

Informations liées aux risques et garde-fous.

Exemples :

```text
contrôler la queue du gong ;
préserver l’intelligibilité de la voix ;
stabiliser le sub ;
réduire le halo ;
limiter les aigus ;
empêcher la densité de masquer un instrument live.
```

Utilité : préserver la cohérence, la lisibilité et la jouabilité.

---

# 2. Structure possible d’une fiche objet

Chaque objet sonore pourrait être représenté par une fiche interne.

```text
object_id
object_name
source_type
material_family
is_simple_or_composite
parent_object
child_objects

DECLARED DATA
intended_functions
forbidden_functions
preferred_roles
forbidden_roles
stylistic_notes
composer_notes

ANALYZED DATA
spectral_profile
pitch_profile
partial_profile
formant_profile
attack_profile
tail_profile
energy_profile
density_profile
stability_profile
salience_profile

CONTEXTUAL DATA
current_scene
current_state
current_role
role_candidates
active_trajectories
allowed_trajectories
forbidden_trajectories
current_dimensions

DYNAMIC DATA
current_priority
object_involvement
autonomy_permission
live_availability
mix_presence
fatigue_state
trajectory_phase

PROTECTION DATA
risk_profile
protection_rules
conflict_rules
emergency_actions
comfort_limits
```

Cette structure est conceptuelle. Elle ne définit pas encore un format de données final.

---

# 3. Profils spécialisés optionnels

Les nouvelles fiches de `09` montrent que tous les objets ne doivent pas être décrits exactement avec les mêmes champs.

Le registre doit donc permettre des profils spécialisés optionnels. Un objet n’a pas besoin de tous ces profils ; il active seulement ceux qui sont pertinents pour sa matière, ses rôles et ses trajectoires.

## Profil corporel

Pour les objets qui portent ou influencent le corps : sub, impact, didgeridoo grave, tambour, gong grave.

```text
body_anchor_capacity
sub_relation
impact_dependency
low_authority
body_pressure_capacity
return_to_body_capacity
mono_center_requirement
```

Questions associées :

```text
cet objet peut-il fonder le corps ?
peut-il seulement en garder une trace ?
doit-il rester centré ?
peut-il remplacer temporairement l’impact ?
peut-il résoudre une suspension ?
```

## Profil spatial / halo

Pour les objets qui ouvrent, prolongent ou masquent l’espace : halo, gong, bol, voix-halo, field recording, résonateur.

```text
halo_behavior
space_behavior
tail_behavior
front_back_behavior
spatial_width_capacity
post_resonance_capacity
ambientization_risk
```

Questions associées :

```text
cet objet ouvre-t-il l’espace ou le floute-t-il ?
sa queue doit-elle être contrôlée ?
peut-il devenir post-résonance ?
risque-t-il d’ambientiser la scène ?
```

## Profil rythmique / polytextural

Pour les objets qui portent densité, accents, interlocking ou micro-pulsation : polytexture, clochettes, micro-percussions, fragments vocaux rythmiques.

```text
density_behavior
accent_hierarchy
interlock_capacity
micro_pulse_capacity
rhythmic_readability
mid_load_risk
complexity_readability
```

Questions associées :

```text
cet objet ajoute-t-il énergie ou confusion ?
porte-t-il une hiérarchie d’accents ?
peut-il densifier sans masquer ?
peut-il se raréfier sans perdre sa fonction ?
```

## Profil harmonique / microtonal

Pour les objets qui portent pitch, partiels, formants, battements ou centres spectraux : gong, sub, didgeridoo, voix, bol, cloche, halo harmonique.

```text
pitch_center
spectral_root
partial_profile
formant_profile
microtonal_behavior
inharmonicity_amount
field_stability
resolution_target_capacity
```

Questions associées :

```text
cet objet a-t-il une hauteur claire ou ressentie ?
porte-t-il des partiels utilisables ?
peut-il créer une microtension ?
peut-il résoudre ou stabiliser un champ ?
```

## Profil live / instrumental

Pour les objets joués en direct ou captés en entrée : voix live, gong live, didgeridoo live, tambour live.

```text
performer_agency
analysis_confidence
live_reactivity
role_suggestion_limit
latency_sensitivity
input_stability
human_priority
```

Questions associées :

```text
quelle part de décision reste au musicien ?
le système peut-il seulement proposer un rôle ?
quelle confiance accorder à l’analyse ?
quels paramètres peuvent réagir sans étouffer le jeu ?
```

## Profil de protection

Pour tous les objets sensibles.

```text
protected_dimensions
emergency_actions
conflict_sensitivity
comfort_limits
masking_risk
fatigue_risk
role_lock_conditions
```

Questions associées :

```text
quelles dimensions doivent être protégées ?
que faire en cas de surcharge ?
quels rôles ne doivent pas être écrasés ?
quels contrôles d’urgence doivent apparaître ?
```

---

# 4. Catégories d’objets sonores

## Objets simples

```text
gong ;
voix ;
tambour ;
cloche ;
bol ;
didgeridoo ;
field recording ;
sub ;
impact isolé.
```

## Objets composites

```text
sub + gong ;
voix + halo ;
polytexture de percussions ;
essaim de clochettes ;
field recording granulaire ;
masse sub + voix ;
gong + résonateur ;
halo de bols ;
texture de micro-brillance.
```

## Objets générés

```text
pattern percussif ;
ligne de matière ;
halo synthétisé comme physique ;
résonance contrôlée ;
cluster de partiels ;
texture granulaire ;
polytexture algorithmique.
```

## Objets live

```text
voix live ;
gong live ;
didgeridoo live ;
tambour live ;
percussion live ;
objet acoustique amplifié.
```

Un objet live doit pouvoir être décrit par analyse, mais aussi par intention : il ne doit pas être automatiquement classé dans un rôle fixe.

---

# 5. Rôles musicaux

Un rôle est la fonction momentanée d’un objet dans une scène ou une trajectoire.

## Exemples de rôles

```text
fondation ;
trace corporelle ;
masse de résolution ;
préparation de drop ;
halo ;
objet exposé ;
champ harmonique ;
signal ;
fragment rythmique ;
voix-matière ;
rugissement ;
brillance rythmique ;
densité articulée ;
post-résonance ;
beauté autonome.
```

## Règle importante

Un objet peut changer de rôle, mais son changement de rôle doit être cohérent avec :

```text
sa matière ;
son profil spectral ;
son contexte de scène ;
la trajectoire active ;
les autres objets présents ;
les garde-fous.
```

Exemple :

```text
un gong peut passer de halo à masse de résolution ;
mais il faut contrôler sa queue, sa densité spectrale et sa relation au sub.
```

---

# 6. Capacités de trajectoire

Chaque objet doit indiquer quelles trajectoires il peut porter, subir ou accompagner.

## Types de participation

```text
porteur principal ;
participant ;
réactif ;
préparé ;
armé ;
protégé ;
exclu ;
en arrière-plan ;
en résistance.
```

## Exemples

```text
gong → expansion, pré-drop, résolution, beauté autonome, tension microtonale ;
voix → fragmentation, exposition, signal, cri, halo, pré-drop vocal ;
sub → fondation, retrait, tension, résolution, trace corporelle ;
polytexture → densification, raréfaction, interlocking, pré-drop, réalignement ;
halo → suspension, expansion, post-résonance, beauté autonome, retrait ;
didgeridoo → torsion, trace corporelle, sub vivant, formants, influence live.
```

---

# 7. Relations entre objets

L’Object Registry doit pouvoir noter des relations.

```text
renforce ;
masque ;
prépare ;
résout ;
protège ;
remplace ;
prolonge ;
contraste ;
partage des partiels avec ;
entre en conflit avec ;
doit laisser de la place à ;
peut être transféré vers.
```

Exemples :

```text
le gong peut préparer ou résoudre une tension du sub ;
la voix peut entrer en conflit avec le halo si elle doit rester intelligible ;
les clochettes peuvent renforcer une expansion mais fatiguer les aigus ;
la polytexture peut densifier une scène mais masquer un instrument live ;
le didgeridoo peut stabiliser le centre grave ou créer une tension formantique.
```

---

# 8. Relation aux autres modules

## Scene / Performance Conductor

Utilise l’Object Registry pour savoir quels objets sont disponibles, prioritaires, protégés ou armés dans une scène.

## Trajectory Engine

Utilise l’Object Registry pour savoir quels objets peuvent participer à une trajectoire et dans quel rôle.

## Pitch / Harmonic Field Manager

Utilise les profils de pitch, partiels, formants et centres spectraux des objets.

## Timbre & Material Mapper

Utilise les capacités, risques et rôles possibles pour choisir un support sonore adapté à une fonction.

## Contextual Control Router

Utilise les objets prioritaires et rôles actifs pour afficher les bons contrôles.

## Conflict / Protection Manager

Utilise les risques, protections et relations entre objets pour éviter les contradictions ou les composer.

## Live Object Interpreter

Alimente l’Object Registry avec des profils issus d’entrées live.

---

# 9. Niveaux de certitude

Toutes les informations du registre n’ont pas la même fiabilité.

Il faudra probablement distinguer :

```text
certain : information décidée ou stable ;
probable : information issue d’analyse fiable ;
hypothétique : information proposée par le système ;
contextuel : valide seulement dans une scène ;
dynamique : change pendant la performance.
```

Cela évite que le système traite une hypothèse d’analyse comme une décision artistique.

---

# 10. Exemple condensé — Gong

```text
object_id: gong_grave_01
material_family: métal résonant
source_type: acoustique / sample ou live
intended_functions: halo, masse, partiels, résolution, beauté autonome
preferred_roles: gong expansif, masse de résolution, champ microtonal
forbidden_roles: micro-brillance permanente, fondation trop régulière
spectral_profile: grave + partiels riches
pitch_profile: hauteur ressentie + inharmonicité
trajectory_capabilities: pré-drop, expansion, suspension, post-résonance
risk_profile: queue longue, boue, masquage, spectaculaire vide
protection_rules: contrôler queue, limiter bas-médium, protéger sub et voix
contextual_controls: Gong central, Partiels, Queue, Rugissement, Résolution
```

# 11. Exemple condensé — Voix

```text
object_id: voix_fragment_01
material_family: voix humaine
source_type: sample ou live
intended_functions: signal, matière, fragment, cri, halo
preferred_roles: voix signal, voix fragmentée, cri armé, voix-halo
forbidden_roles: chanson automatique, gimmick permanent
spectral_profile: médium / formants / souffle
pitch_profile: hauteur variable, formants structurants
trajectory_capabilities: fragmentation, exposition, pré-drop vocal, halo, signal
risk_profile: sur-signification, bascule chanson, fatigue cri, masquage
protection_rules: préserver intelligibilité si signal, limiter halo si flou, protéger présence
contextual_controls: Fragmentation, Sémantique, Cri armé, Formants, Voix-halo
```

# 12. Exemple condensé — Sub

```text
object_id: sub_central_01
material_family: grave corporel
source_type: synthèse, sample, traitement ou relation live
intended_functions: fondation, pression, trace corporelle, résolution
preferred_roles: fondation principale, sub retenu, masse de résolution
forbidden_roles: halo large, texture décorative, grave flou
spectral_profile: grave stable + bas-médium contrôlé
pitch_profile: centre grave, hauteur claire ou ressentie
trajectory_capabilities: pré-drop, retrait, retour au corps, stabilisation, résolution
risk_profile: instabilité, boue, excès de pression, perte de centre
protection_rules: mono / centre, stabilité, limite de pression, relation au kick/impact
contextual_controls: Sub retenu, Stabiliser sub, Trace corporelle, Résolution sub
```

# 13. Exemple condensé — Polytexture

```text
object_id: polytexture_perc_01
material_family: percussif composite
source_type: groupe de samples, live, génératif ou hybride
intended_functions: densité articulée, interlocking, propulsion, complexité lisible
preferred_roles: densité de scène, contrepoint, pré-drop fragmenté, maintien d’énergie
forbidden_roles: masse confuse, virtuosité décorative, style importé plaqué
spectral_profile: médiums/aigus distribués, charge spectrale variable
pitch_profile: surtout timbral, parfois tonal ou partiel
trajectory_capabilities: densification, raréfaction, réalignement, pré-drop, hypnose
risk_profile: mid_load, confusion, accents concurrents, masquage live/voix
protection_rules: hiérarchie d’accents, réduction densité, contrôle mid_load
contextual_controls: Densité, Interlocking, Lisibilité, Accents, Raréfier, Réaligner
```

# 14. Risques du module

```text
sur-documentation inutilisable ;
objets trop figés ;
rôles trop déterministes ;
confusion entre analyse automatique et décision artistique ;
interface noyée par les métadonnées ;
registre trop lourd pour le live ;
objets composites mal définis ;
relations entre objets trop nombreuses ;
profils spécialisés trop nombreux ou mal activés.
```

## Garde-fous de conception

```text
séparer déclaratif / analysé / contextuel / dynamique ;
prioriser les informations utiles à la performance ;
ne pas exposer toutes les métadonnées en live ;
garder le compositeur comme source des décisions fortes ;
autoriser l’analyse à proposer, pas à imposer ;
permettre aux objets de changer de rôle sans perdre leur nature ;
activer seulement les profils spécialisés nécessaires.
```

---

# 15. Prochaine étape conceptuelle

Avant tout prototype, il faudra vérifier l’Object Registry avec des objets encore plus contrastés :

```text
Field recording ;
Clochettes / micro-brillance ;
Impact-fondation ;
Objet composite sub + gong ;
Objet live voix + traitement ;
Objet généré : halo synthétisé comme physique.
```

Ces fiches permettront de tester plus précisément la frontière entre objet simple, objet composite, objet live, objet généré et groupement de paramètres.
