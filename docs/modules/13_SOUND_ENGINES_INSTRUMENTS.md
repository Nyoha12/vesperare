# 13_SOUND_ENGINES_INSTRUMENTS

Version : v0.1  
Statut : spécification détaillée de module, sans prototypage.

## Objet

Ce document détaille la couche **Sound Engines / Instruments**.

Les Sound Engines sont les dispositifs qui produisent, lisent, génèrent, transforment ou traitent concrètement le son.

Ils ne doivent pas devenir le point de départ esthétique du projet. Ils doivent incarner les décisions prises par :

```text
Object Registry ;
Timbre & Material Mapper ;
Pitch / Harmonic Field Manager ;
Conflict / Protection Manager ;
Scene / Performance Conductor ;
Contextual Control Router ;
Live Object Interpreter ;
Output / Mix / Performance Layer futur.
```

Un engine n’est donc pas seulement un instrument, un plugin, un device ou un rack. C’est une unité capable de porter une matière, un rôle, une trajectoire et des garde-fous.

---

# 1. Question centrale

```text
Quel moteur sonore peut incarner cette matière, dans ce rôle, avec ces contraintes de jeu, de stabilité, de transformation, de reconnaissance de source et de protection ?
```

Le module doit répondre à des questions comme :

```text
cette matière doit-elle être jouée live, échantillonnée, synthétisée, resynthétisée ou préparée offline ?
ce rôle nécessite-t-il un engine stable, réactif, aléatoire, granulaire, spectral, percussif ou hybride ?
le moteur doit-il préserver la source ou l’abstraire ?
le moteur doit-il être remplaçable plus tard ?
le moteur est-il sûr en live ?
le moteur expose-t-il trop de paramètres ?
le moteur respecte-t-il le corps, le sub, les formants et les protections ?
```

---

# 2. Principe général

Le système ne doit pas choisir un moteur sonore parce qu’il est séduisant, puissant ou disponible.

Principe :

```text
engine = capacité d’incarnation + contraintes musicales + contraintes techniques + garde-fous.
```

Un engine est valide si :

```text
il porte une fonction claire ;
il respecte l’objet ou la matière ;
il peut recevoir des contraintes de rôle ;
il peut être contrôlé en contexte ;
il peut signaler ses risques ;
il reste compatible avec la performance ;
il peut être remplacé ou adapté si l’architecture évolue.
```

---

# 3. Ce que les Sound Engines ne doivent pas faire

```text
décider seuls de l’esthétique ;
remplacer Object Registry ;
choisir eux-mêmes le rôle musical ;
forcer une catégorie d’objet ;
imposer une logique de plugin ;
exposer tous leurs paramètres au Router ;
créer une banque de sons non structurée ;
figer une matière trop tôt ;
réduire le live à un signal de contrôle ;
compenser une mauvaise architecture par des effets.
```

---

# 4. Types d’engines possibles

Les types suivants sont des familles de fonctionnement, pas des classes exclusives.

## Sample / Playback Engine

Lit ou déclenche des sons préparés.

```text
one-shots ;
longs samples ;
field recordings ;
gongs enregistrés ;
voix fragments ;
textures offline ;
impulsions pour convolution ;
matériaux resamplés.
```

Utile quand la source réelle est importante ou difficile à produire en live.

## Instrument / Synth Engine

Produit une matière par synthèse.

```text
sub stable ;
percussion synthétique naturalisée ;
vent synthétique ;
eau procédurale ;
résonance modale ;
ligne vivante ;
feedback contrôlé.
```

Utile quand le phénomène est plus important que la source réelle.

## Resonator / Modal Engine

Produit ou transforme des partiels, résonances, corps et queues.

```text
gong renforcé ;
bol virtuel ;
résonance de voix ;
résonateur spectral ;
champ de partiels ;
halo accordé ou inharmonique.
```

Utile pour lier matière, pitch, halo et partiels.

## Granular / Resynthesis Engine

Transforme des sources tout en gardant ou brouillant leur trace.

```text
voix matière ;
field recording fragmenté ;
eau granulaire ;
textures longues ;
partiels reconstruits ;
source presque abstraite.
```

Utile quand le degré de reconnaissance doit être modulable.

## Procedural / Generative Engine

Génère des événements, densités, microtextures ou flux.

```text
pluie ;
eau ;
insectes stylisés ;
cliquetis ;
grains ;
polytexture ;
variations de densité ;
répétitions micro-instables.
```

Utile si le processus sert une fonction musicale précise. Interdit comme décor automatique.

## Live Input Engine

Traite ou relaie une source jouée en direct.

```text
didgeridoo ;
voix ;
gong live ;
tambour ;
objet acoustique ;
percussion live.
```

Doit protéger l’agency humaine et éviter de transformer le performeur en simple modulateur.

## Hybrid Engine

Combine source réelle, synthèse, renfort, traitement ou resynthèse.

```text
didgeridoo + renfort sub ;
gong + synthèse de partiels ;
voix + résonateur ;
field recording + bruit filtré ;
peau + sub synthétique ;
halo réel + résonance générée.
```

Utile quand aucun moteur seul ne tient la fonction.

## Offline Preparation Engine

Prépare des matériaux avant performance.

```text
stacking ;
resampling ;
rendu de textures longues ;
optimisation CPU ;
corpus minimal ;
impulses ;
versions alternatives ;
banques de tests.
```

Utile pour éviter de surcharger le live.

---

# 5. Entrées du module

## Depuis Timbre & Material Mapper

```text
material_candidate ;
source_strategy ;
recognition_level ;
abstraction_level ;
hybridization_plan ;
transformation_chain ;
processing_constraints ;
sound_engine_requirements ;
corpus_request ;
offline_preparation_request.
```

## Depuis Object Registry

```text
object_id ;
object_name ;
source_type ;
material_family ;
role_candidates ;
protected_dimensions ;
relations_to_other_objects ;
live_availability ;
risk_profile.
```

## Depuis Pitch / Harmonic Field Manager

```text
pitch_center ;
spectral_root ;
sub_center ;
partial_alignment ;
formant_focus ;
halo_tuning ;
field_stability ;
pitch_modulation_limits ;
resonator_constraints.
```

## Depuis Conflict / Protection Manager

```text
reduction_request ;
lock_request ;
protected_dimensions ;
source_recognition_warning ;
material_conflict_warning ;
mid_load_warning ;
latency_risk ;
cpu_risk ;
emergency_promotion.
```

## Depuis Conductor / Router

```text
scene_id ;
state_family ;
trajectory_phase ;
priority_objects ;
controls_visible ;
controls_deep_available ;
emergency_controls ;
manual_override ;
performer_focus.
```

---

# 6. Sorties du module

Les Sound Engines peuvent produire ou déclarer :

```text
audio_output ;
midi_output ;
control_output ;
engine_status ;
engine_capabilities ;
engine_limits ;
latency_estimate ;
cpu_estimate ;
voice_count ;
polyphony_state ;
source_trace_status ;
recognition_status ;
pitch_response ;
formant_response ;
partial_response ;
sub_response ;
risk_state ;
router_control_map ;
conflict_feedback ;
registry_update_request.
```

---

# 7. Structure possible d’une fiche engine

```text
engine_id
engine_name
engine_family
engine_tags

PURPOSE
supported_functions
supported_phenomena
supported_roles
supported_materials
forbidden_roles

SOURCE
source_type
source_required
sample_based
synthesis_based
live_input_based
hybrid
offline_prepared

PITCH / TIMBRE
pitch_capabilities
partial_capabilities
formant_capabilities
sub_capabilities
halo_capabilities
recognition_support
abstraction_support

CONTROL
performable_controls
deep_controls
emergency_controls
safe_ranges
mapping_targets

PERFORMANCE
cpu_profile
latency_profile
stability_profile
polyphony_limits
preset_dependency
replaceability

RISKS
masking_risk
mid_load_risk
fatigue_risk
source_loss_risk
live_agency_risk
style_drift_risk
technical_failure_risk

OUTPUTS
registry_data
mapper_feedback
pitch_feedback
conflict_feedback
router_feedback
```

---

# 8. Règles de sélection d’un engine

Pour choisir un engine, demander :

```text
1. Quelle fonction doit être portée ?
2. Quel phénomène doit être perceptible ?
3. Quel objet ou matière est concerné ?
4. Quel rôle est actif ?
5. Quel degré de reconnaissance de source est requis ?
6. Quelle abstraction est permise ?
7. Quelle relation au sub, aux partiels ou aux formants est nécessaire ?
8. Quel risque de conflit existe ?
9. Le moteur doit-il être jouable live ou préparé offline ?
10. Le moteur est-il remplaçable ?
11. Le moteur expose-t-il des contrôles performables ou seulement profonds ?
12. Le moteur sert-il l’architecture ou impose-t-il sa propre logique ?
```

---

# 9. Relation au Mapper

Le Mapper dit :

```text
quelle matière ;
quelle source ;
quel degré de reconnaissance ;
quelle abstraction ;
quelle transformation ;
quelle hybridation ;
quel risque ;
quelle exigence.
```

Le Sound Engine dit :

```text
je peux / je ne peux pas ;
je peux mais avec latence ;
je peux mais offline ;
je peux mais avec risque CPU ;
je peux préserver la source ;
je peux abstraire ;
je ne peux pas protéger les formants ;
je dois être remplacé par un moteur hybride.
```

Le Sound Engine ne doit pas inverser la hiérarchie : il ne choisit pas la matière, il répond à la matière demandée.

---

# 10. Relation à Object Registry

Un engine peut incarner un objet existant ou créer une variante.

Exemples :

```text
Gong_sample_engine → objet Gong ;
Gong_resonant_hybrid_engine → variante Gong_masse_resolution ;
Voice_grain_engine → variante Voix_matière_grain ;
Sub_physical_engine → objet Sub ou variante Sub_naturalise ;
Rain_procedural_engine → objet Texture_pluie si usage récurrent.
```

Toute variante récurrente doit être renvoyée au Registry.

---

# 11. Relation à Pitch / Harmonic Field Manager

Les engines doivent pouvoir recevoir ou respecter :

```text
pitch_center ;
sub_center ;
partial_alignment ;
formant_focus ;
pitch_modulation_limits ;
resonator_constraints ;
halo_tuning ;
field_stability.
```

Mais tous les engines ne doivent pas être forcés à répondre à tout.

Exemple :

```text
un gong sample peut surtout déclarer ses partiels et sa queue ;
un sub synthétique doit respecter sub_center et sub_stability ;
une voix live doit préserver formants plutôt que pitch exact ;
un engine pluie peut ne pas avoir pitch_center mais doit signaler densité / masque.
```

---

# 12. Relation à Conflict / Protection Manager

Les engines doivent pouvoir être limités, réduits, verrouillés ou mis en sécurité.

Exemples :

```text
réduire polyphonie ;
réduire densité ;
réduire queue ;
réduire feedback ;
réduire bas-médium ;
stabiliser sub ;
protéger formants ;
désactiver influence automatique ;
passer en mode sûr ;
signaler CPU / latence.
```

Un engine qui ne peut pas être protégé doit être considéré dangereux pour le live.

---

# 13. Relation au Router

Les engines ne doivent pas exposer tous leurs paramètres.

Ils doivent proposer :

```text
contrôles performables ;
contrôles profonds ;
contrôles d’urgence ;
labels compréhensibles ;
états de sécurité ;
feedback de risque.
```

Exemples de contrôles performables :

```text
Grain ;
Contour ;
Densité matière ;
Trace source ;
Abstraction ;
Rugissement ;
Stabiliser sub ;
Réduire queue ;
Protéger live ;
Réduire masque.
```

Exemples de contrôles profonds :

```text
granular density ;
resonator ratio ;
formant shift ;
sample start distribution ;
convolution source ;
CPU quality mode ;
polyphony limit.
```

---

# 14. Cas test — Gong comme masse de résolution

## Situation

```text
Mapper demande : gong dense, attaque préservée, partiels non tempérés, queue contrôlée ;
Pitch demande : ne pas forcer accordage propre ;
Conflict surveille : bas-médium, queue, sub masqué.
```

## Engine possible

```text
sample engine + resonator léger + envelope / tail control ;
ou hybrid engine sample + synthèse de partiels discrète.
```

## Attendu

```text
préserver attaque ;
contrôler queue ;
déclarer partial_profile ;
permettre réduction de bas-médium ;
permettre contrôle Résoudre / Queue / Partiels ;
rester remplaçable.
```

## Échec

```text
gong figé comme sample non contrôlable ;
queue incontrôlée ;
partiels trop nettoyés ;
aucune information au Conflict Manager.
```

---

# 15. Cas test — Voix signal / voix matière

## Voix signal

Engine attendu :

```text
live input ou sample engine léger ;
contrôle d’intelligibilité ;
protection formants ;
masquage réduit ;
peu de transformation au premier plan.
```

## Voix matière

Engine attendu :

```text
granular / spectral / sampler fragmenté ;
trace humaine conservée si nécessaire ;
contrôle Abstraction / Grain / Fragmentation ;
protection contre gimmick ou perte de source non voulue.
```

## Échec

```text
voix signal traitée comme texture ;
voix matière trop chanson ;
formants détruits sans intention ;
contrôles techniques trop visibles.
```

---

# 16. Cas test — Didgeridoo live + renfort

## Situation

```text
didgeridoo live central ;
renfort sub possible ;
formants protégés ;
agence humaine prioritaire.
```

## Engine possible

```text
live input engine ;
sub reinforcement engine discret ;
formant-sensitive processing ;
analysis confidence limiter.
```

## Attendu

```text
ne pas remplacer le live ;
renfort désactivable ;
latence minimale ;
contrôle Désactiver influence automatique ;
feedback au Conflict Manager si sub écrase la source.
```

## Échec

```text
didgeridoo transformé en basse automatique ;
latence gênante ;
source live masquée ;
formants ignorés.
```

---

# 17. Cas test — Eau / pluie procédurale

## Situation

```text
rôle = microtexture / halo / post-résonance / masque contrôlé ;
source recognition variable ;
scene = suspension ou transition.
```

## Engine possible

```text
procedural event generator ;
granular source engine ;
noise + droplets + density control ;
offline texture si CPU trop élevé.
```

## Attendu

```text
densité contrôlable ;
masque contrôlable ;
source recognition modulable ;
fonction claire ;
corpus minimal ;
contrôle Distance / Grain / Réduire masque.
```

## Échec

```text
paysage décoratif ;
texture permanente ;
CPU excessif ;
masquage non contrôlé ;
banque eau inutile.
```

---

# 18. Cas test — Sub synthétique naturalisé

## Situation

```text
fonction = corps / pression / fondation ;
source = synthèse ;
objectif = comportement physique, pas basse standard.
```

## Engine possible

```text
sub synth engine ;
modal low engine ;
layer peau + sub ;
engine hybride impact + grave.
```

## Attendu

```text
sub_center stable ;
contour sculpté ;
mono / centre compatible ;
relation au pitch field ;
contrôle Stabiliser sub ;
protection contre largeur excessive.
```

## Échec

```text
sub générique ;
pression = volume ;
sub trop large ;
sub instable ;
aucun retour au corps clair.
```

---

# 19. Recherche d’outils

La recherche d’outils devient possible seulement quand une famille d’engines révèle un besoin précis.

Questions autorisées :

```text
un moteur natif Ableton suffit-il ?
un device Max for Live doit-il être créé ?
un plugin externe est-il plus fiable ?
une préparation offline est-elle meilleure ?
un engine doit-il être remplacé par un rendu audio ?
le temps réel est-il nécessaire ?
le CPU / latence est-il compatible live ?
```

Interdit maintenant :

```text
chercher tous les meilleurs plugins ;
choisir des outils pour leur son avant la fonction ;
collectionner engines ;
installer une dépendance lourde avant besoin clair.
```

---

# 20. Risques du module

```text
partir des outils ;
multiplier les engines ;
créer une banque de sons ;
exposer trop de paramètres ;
figer les matières ;
ignorer le live ;
ignorer pitch / conflict ;
CPU trop lourd ;
latence ;
engines non remplaçables ;
sons beaux mais sans fonction ;
procédés techniques devenus esthétique par défaut.
```

## Garde-fous

```text
engines au service du Mapper ;
capabilities déclarées ;
risks déclarés ;
contrôles performables séparés des contrôles profonds ;
engines remplaçables ;
corpus minimal ;
recherche d’outils seulement au besoin ;
protection live ;
feedback vers Registry, Pitch, Conflict et Router.
```

---

# 21. Prochaine étape conceptuelle

Après ce module, deux directions sont possibles :

```text
1. Audit Sound Engines ↔ Mapper / Conflict / Router ;
2. Détail Output / Mix / Performance Layer.
```

Avis actuel : faire un audit léger avant Output / Mix, pour clarifier quelles informations les engines doivent envoyer à la couche de sortie et aux protections.
