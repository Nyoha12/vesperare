# 14_SOUND_ENGINE_MAPPER_CONFLICT_ROUTER_INTERFACE

Version : v0.1  
Statut : audit d’interface entre modules, sans prototypage.

## Objet

Ce document vérifie la cohérence entre :

```text
13_SOUND_ENGINES_INSTRUMENTS ;
11_TIMBRE_MATERIAL_MAPPER ;
07_CONFLICT_PROTECTION_MANAGER ;
05_CONTEXTUAL_CONTROL_ROUTER ;
12_TIMBRE_REGISTRY_CONFLICT_PITCH_INTERFACE.
```

Il sert à vérifier que les Sound Engines restent :

```text
subordonnés aux fonctions musicales ;
contrôlables ;
remplaçables ;
compatibles live ;
capables de signaler leurs risques ;
capables de recevoir des protections ;
capables de séparer contrôles performables et contrôles profonds ;
incapables de prendre seuls les décisions esthétiques.
```

Il ajoute aussi une décision importante sur la sélection des samples et matériaux : aucune sélection automatique ne doit avoir lieu sans cadre, rôle, pool autorisé et garde-fous.

---

# 1. Question centrale

```text
Quand un moteur sonore reçoit une demande de matière, comment vérifier qu’il peut l’incarner sans imposer son propre son, sans surcharger le live, et sans court-circuiter le Mapper, le Conflict Manager ou le Router ?
```

Réponse générale :

```text
Mapper = demande une matière et une stratégie ;
Sound Engine = déclare ce qu’il peut faire et ses limites ;
Conflict Manager = décide si les risques sont acceptables ;
Router = rend uniquement les contrôles utiles jouables ;
Conductor = reste responsable du contexte de scène.
```

---

# 2. Contrat Mapper → Sound Engine

Le Mapper envoie à un engine une demande structurée :

```text
material_candidate ;
source_strategy ;
role_requested ;
phenomenon_requested ;
recognition_level ;
abstraction_level ;
trajectory_phase ;
scene_context ;
transformation_chain ;
hybridization_plan ;
pitch_constraints ;
formant_constraints ;
sub_constraints ;
protected_dimensions ;
allowed_risk_level ;
required_performable_controls ;
required_emergency_controls ;
selection_policy.
```

Le Mapper ne doit pas seulement dire :

```text
joue ce son.
```

Il doit dire :

```text
incarne cette matière, dans ce rôle, avec cette reconnaissance, cette abstraction, cette trajectoire et ces protections.
```

---

# 3. Contrat Sound Engine → Mapper

L’engine répond :

```text
can_do ;
cannot_do ;
can_do_with_limitations ;
requires_offline_preparation ;
requires_external_tool ;
requires_hybrid_engine ;
quality_estimate ;
latency_estimate ;
cpu_estimate ;
source_trace_support ;
abstraction_support ;
formant_support ;
partial_support ;
sub_support ;
safe_control_ranges ;
missing_capabilities ;
replacement_suggestion.
```

Le Sound Engine doit pouvoir dire non.

Exemples :

```text
je peux préserver l’attaque du gong mais pas contrôler finement ses partiels ;
je peux générer l’eau procédurale mais pas garantir absence de masque ;
je peux traiter la voix comme matière mais pas préserver l’intelligibilité ;
je peux renforcer le didgeridoo mais avec latence trop forte ;
je dois être remplacé par une préparation offline.
```

---

# 4. Contrat Sound Engine → Conflict Manager

L’engine doit signaler :

```text
masking_risk ;
mid_load_risk ;
fatigue_risk ;
sub_instability_risk ;
latency_risk ;
cpu_risk ;
feedback_risk ;
source_loss_risk ;
live_agency_risk ;
polyphony_risk ;
control_safety_risk ;
unprotected_state.
```

Un engine qui ne peut pas signaler ses risques doit être considéré fragile pour le live.

---

# 5. Contrat Conflict Manager → Sound Engine

Le Conflict Manager peut demander :

```text
reduce_density ;
reduce_polyphony ;
reduce_tail ;
reduce_feedback ;
reduce_mid_load ;
stabilize_sub ;
protect_formants ;
protect_source_trace ;
lock_process ;
force_safe_mode ;
disable_auto_selection ;
disable_auto_influence ;
delay_transformation ;
stop_engine ;
freeze_engine.
```

Le Sound Engine doit répondre avec :

```text
action_applied ;
action_partially_applied ;
action_impossible ;
quality_loss_warning ;
function_loss_warning ;
latency_change ;
cpu_change ;
new_risk_state.
```

---

# 6. Contrat Sound Engine → Router

L’engine propose au Router :

```text
performable_controls ;
deep_controls ;
emergency_controls ;
control_labels ;
safe_ranges ;
current_state_display ;
risk_display ;
manual_override_controls ;
selection_controls ;
freeze_controls.
```

Le Router ne doit pas exposer :

```text
tous les paramètres internes ;
les détails d’algorithme ;
les sélecteurs de samples non contextualisés ;
les réglages techniques sans valeur performative.
```

---

# 7. Contrat Router → Sound Engine

Le Router envoie à l’engine :

```text
visible_controls ;
control_priority ;
manual_override ;
lock_state ;
emergency_state ;
performer_focus ;
scene_visibility_context ;
deep_view_open ;
selection_mode_visible.
```

Exemple :

```text
si rôle = voix signal,
Router peut rendre Protéger voix visible,
mais garder formant_shift en profond.
```

---

# 8. Décision sur les samples et banques

Le projet ne doit pas construire une grande banque de samples par défaut.

On distingue :

```text
corpus minimal de travail ;
pools de matériaux par rôle ;
variantes d’objet ;
matériaux offline ;
banque performative autorisée ;
banque décorative interdite.
```

Un sample est acceptable s’il répond à au moins une condition :

```text
source difficile à produire live ;
qualité acoustique nécessaire ;
source reconnaissable importante ;
matériau utile à plusieurs rôles ;
engine temps réel trop coûteux ;
texture longue mieux préparée offline ;
objet nécessaire à un test de module ;
source utile pour convolution / granulation / resynthèse.
```

Un sample est suspect si :

```text
il est seulement beau ;
il remplit une banque sans rôle ;
il rend la source décorative ;
il fige une matière trop tôt ;
il remplace inutilement le live ;
il empêche la transformation ;
il surcharge la préparation.
```

---

# 9. Modes de sélection des samples / matériaux

## Mode 0 — Aucun choix dynamique

```text
source fixée par la composition ;
aucune sélection automatique ;
utilisé pour objets centraux ou rôles critiques.
```

Exemples :

```text
voix signal importante ;
didgeridoo live ;
gong central de résolution ;
sub principal.
```

## Mode 1 — Sélection manuelle

```text
le performeur ou compositeur choisit la source ;
le système adapte ensuite selon rôle et protection ;
utilisé quand la source a forte valeur sensible ou formelle.
```

## Mode 2 — Sélection assistée

```text
le système propose des candidats ;
le performeur valide ;
utile en conception, préparation ou performance lente.
```

## Mode 3 — Sélection automatique contrainte

```text
le système choisit dans un pool autorisé ;
le rôle est faible ou secondaire ;
les risques sont bas ;
les critères sont clairs ;
le contrôle humain peut reprendre la main.
```

Exemples possibles :

```text
micro-variantes de cliquetis ;
grains de pluie ;
ornements de polytexture ;
textures secondaires ;
petites variations de halo ;
choix de one-shot équivalent dans un pool très restreint.
```

## Mode 4 — Sélection automatique interdite

```text
rôle central ;
source fortement signifiante ;
risque élevé ;
live input prioritaire ;
semantic_clarity requise ;
sub / impact / résolution principale.
```

---

# 10. Données minimales pour sélectionner un sample

Un sample ou matériau utilisable par le système doit porter au minimum :

```text
sample_id ;
source_identity ;
object_id ;
material_tags ;
possible_roles ;
forbidden_roles ;
recognition_level ;
abstraction_potential ;
attack_profile ;
tail_profile ;
spectral_profile ;
partial_profile ;
formant_profile ;
pitch_center_if_any ;
sub_relation_if_any ;
density_behavior ;
masking_risk ;
mid_load_risk ;
fatigue_risk ;
source_loss_risk ;
recommended_transformations ;
forbidden_transformations ;
required_protections ;
selection_mode_allowed ;
quality_status ;
replaceability.
```

Sans ces données, le sample peut être utilisé manuellement, mais il ne doit pas être sélectionné automatiquement par le système.

---

# 11. Sélection automatique : score minimal

Si sélection automatique contrainte existe un jour, elle doit scorer :

```text
role_fit ;
function_fit ;
trajectory_fit ;
scene_fit ;
recognition_fit ;
pitch_fit ;
conflict_risk ;
masking_risk ;
fatigue_risk ;
variation_value ;
novelty_limit ;
cpu_cost ;
latency_cost ;
live_safety ;
replaceability.
```

Le meilleur score ne doit pas suffire si un seuil critique échoue.

Exemple :

```text
sample très beau mais voix masquée → refus ;
source parfaite mais CPU trop haut → offline ou rejet ;
one-shot intéressant mais rôle incompatible → refus ;
texture riche mais retour au corps impossible → refus ou mode manuel seulement.
```

---

# 12. Traitement automatique des samples

Les samples peuvent être traités automatiquement, mais pas aveuglément.

## Prétraitements possibles

```text
trim ;
normalisation prudente ;
détection attaque ;
détection queue ;
analyse spectrale ;
profil de partiels ;
profil formantique ;
pitch_center probable ;
tagging densité ;
estimation masking_risk ;
versions resamplées ;
versions low CPU.
```

## Traitements live possibles

```text
envelope / tail control ;
filtrage ;
gain staging ;
pitch léger ;
granulation ;
convolution ;
résonateur ;
density control ;
spatialisation ;
réduction masque ;
protection sub / voix / live.
```

## Interdit

```text
traiter tous les samples de la même manière ;
normaliser la singularité ;
forcer pitch / tempo / grille ;
détruire la source sans intention ;
rendre tous les sons interchangeables.
```

---

# 13. Cas test — Pool de gongs

## Situation

```text
plusieurs gongs enregistrés ;
usage possible : résolution, halo, rugissement, beauté autonome ;
source recognition moyenne ou haute ;
risque : queue, bas-médium, masquage sub.
```

## Attendu

```text
sélection automatique interdite pour gong central ;
sélection assistée possible en préparation ;
pools par rôle : résolution / halo / beauté ;
metadata partial_profile + tail_profile obligatoire ;
engine doit permettre tail control ;
Conflict surveille mid_load et sub masking.
```

## Échec

```text
gong choisi automatiquement pour résolution majeure sans validation ;
gong classé seulement par nom ;
queue non contrôlable ;
partiels forcés propres ;
banque de gongs décorative.
```

---

# 14. Cas test — Microtexture eau / pluie

## Situation

```text
pool de grains, gouttes, pluie ou eau procédurale ;
rôle = microtexture secondaire, halo ou masque contrôlé ;
risque faible si contrôlé.
```

## Attendu

```text
sélection automatique contrainte possible ;
pool restreint ;
scoring par densité, masque, fatigue, scène ;
contrôle Densité matière / Réduire masque ;
source recognition modulable ;
corpus minimal.
```

## Échec

```text
banque énorme ;
sélection décorative ;
texture permanente ;
masquage non détecté ;
système choisit eau parce que “naturel”.
```

---

# 15. Cas test — Voix fragmentée

## Situation

```text
pool de fragments vocaux ;
rôles possibles : signal, matière, cri, hook minimal, halo ;
risque : chanson involontaire, gimmick, sémantique, masque.
```

## Attendu

```text
sélection automatique interdite si rôle = signal ou sémantique ;
sélection assistée possible pour matière ;
metadata semantic_clarity + formant_profile obligatoire ;
Conflict protège voix si rôle signal ;
Router expose Protéger voix, pas tous les fragments.
```

## Échec

```text
fragment vocal choisi automatiquement comme signal ;
gimmick vocal ;
voix masquée ;
source abstraite sans intention ;
banque de voix non contextualisée.
```

---

# 16. Cas test — Sub synthétique

## Situation

```text
engine synthétique pour sub / fondation ;
pas de sample nécessaire par défaut ;
fonction critique ;
risque élevé.
```

## Attendu

```text
sélection automatique de preset interdite ;
engine paramétrique stable ;
contrôles safe ranges ;
Conflict peut stabiliser sub ;
Router peut exposer Corps / Stabiliser sub ;
Pitch vérifie sub_center.
```

## Échec

```text
preset bass choisi pour son ;
sub instable ;
largeur excessive ;
pression = volume ;
aucun garde-fou.
```

---

# 17. Règles de cohérence

```text
1. Un engine répond à une demande du Mapper, il ne choisit pas l’esthétique.
2. Un sample n’est automatiquement sélectionnable que s’il est métadonné et dans un pool autorisé.
3. Les rôles centraux privilégient sélection manuelle ou source fixée.
4. Les rôles secondaires peuvent utiliser sélection automatique contrainte.
5. Le live input prime sur tout renfort ou sample.
6. Les presets ne sont pas des décisions musicales.
7. Les engines doivent signaler CPU, latence et risques de masquage.
8. Le Router expose des intentions, pas des listes techniques.
9. Le Conflict Manager peut désactiver auto-selection ou auto-influence.
10. Les traitements automatiques doivent préserver la singularité quand elle sert la musique.
11. Une banque sans rôle est une dérive.
12. Un corpus minimal bien tagué vaut mieux qu’une grande bibliothèque non structurée.
```

---

# 18. Signaux minimaux à échanger

## Mapper → Engine

```text
material_candidate ;
source_strategy ;
recognition_level ;
abstraction_level ;
role_requested ;
trajectory_phase ;
selection_policy ;
required_controls ;
protected_dimensions.
```

## Engine → Mapper

```text
can_do ;
limitations ;
quality_estimate ;
latency_estimate ;
cpu_estimate ;
source_trace_support ;
missing_capabilities ;
replacement_suggestion.
```

## Engine → Conflict

```text
risk_state ;
masking_risk ;
mid_load_risk ;
latency_risk ;
cpu_risk ;
source_loss_risk ;
live_agency_risk ;
unprotected_state.
```

## Conflict → Engine

```text
reduce_density ;
reduce_tail ;
stabilize_sub ;
protect_formants ;
disable_auto_selection ;
lock_process ;
force_safe_mode.
```

## Engine → Router

```text
performable_controls ;
deep_controls ;
emergency_controls ;
control_labels ;
safe_ranges ;
selection_controls ;
risk_display.
```

---

# 19. Conclusion

L’interface Sound Engines ↔ Mapper / Conflict / Router est cohérente si :

```text
les engines restent au service des matières et fonctions ;
les samples sont des matériaux métadonnés, pas une banque décorative ;
la sélection automatique est rare, contrainte et réversible ;
les rôles centraux restent humains ou très encadrés ;
les risques CPU / latence / masquage sont signalés ;
les protections peuvent agir sur les engines ;
le Router affiche des contrôles musicaux, pas des listes d’outils ;
la recherche d’outils intervient seulement à partir d’un besoin moteur précis.
```

## Prochaine étape

Après cet audit, le projet peut passer à :

```text
Output / Mix / Performance Layer
```

Cette couche devra recevoir des informations des engines, du Conflict Manager et du Spectral & Comfort Governor pour gérer sortie, diffusion, sécurité, traduction club / hors-club et autonomie éventuelle.
