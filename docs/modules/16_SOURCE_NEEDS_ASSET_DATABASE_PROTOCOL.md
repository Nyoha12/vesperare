# 16_SOURCE_NEEDS_ASSET_DATABASE_PROTOCOL

Version : v0.3  
Statut : protocole structurel de préparation de base de données, sans prototypage.

## Objet

Ce document définit comment transformer les décisions esthétiques, les instruments candidats, les sources réelles de Yohan, les besoins de samples, les possibilités d’engine et les scènes en données préparatoires cohérentes.

Il ne crée pas encore :

```text
une banque audio ;
un asset final ;
un module Max for Live ;
un système de suggestion live ;
un prototype esthétique.
```

Il définit plutôt l’ordre de passage entre :

```text
instrument_source_candidate ;
source_need ;
material_asset_schema ;
scene_use_case ;
function_test ;
decision_gate ;
engine_sketch ;
material_asset ;
material_pool ;
selection_policy ;
quality_evaluation.
```

---

# 1. Problème à résoudre

Le projet dispose maintenant de beaucoup de niveaux documentaires. Le risque est de confondre :

```text
un possible instrument ;
un besoin réel ;
un schéma de description ;
un cas de scène ;
un test de fonction ;
une porte de décision ;
un croquis d’engine ;
un vrai asset ;
un prototype ;
un sample.
```

Le protocole 16 sert à éviter ces passages prématurés.

Règle centrale :

```text
source_need ≠ material_asset ;
material_asset_schema ≠ asset réel ;
scene_use_case ≠ prototype ;
function_test ≠ module ;
decision_gate ≠ décision déjà prise ;
engine_sketch ≠ implémentation.
```

---

# 2. Contraintes actuelles de Vesperare

```text
didgeridoo: toujours live ;
guimbardes: toujours live, environ 20 instruments ;
gong: parfois live ;
tambour sur cadre: parfois live ;
samples initiaux: zéro ;
samples futurs: seulement si un besoin réel les justifie ;
génération / résonateurs / engines: à tester besoin par besoin ;
prototypes: interdits tant que le rôle final n’est pas clair.
```

Conséquence :

```text
on commence par l’existant et les fonctions ;
on ne cherche pas directement des instruments supplémentaires ;
on ne constitue pas de banque de samples ;
on ne crée pas d’assets individuels sans rôle validé.
```

---

# 3. Chaîne de décision actuelle

La chaîne complète est désormais :

```text
besoin esthétique / phénomène / lacune / intuition
→ instrument_source_candidate
→ affordances sonores
→ fonctions possibles
→ source_need
→ material_asset_schema si le besoin doit être documenté
→ scene_use_case si le besoin dépend d’une scène
→ function_test si la fonction doit être vérifiée
→ decision_gate pour interpréter le test
→ engine_sketch si un engine/résonateur est à cadrer
→ material_asset seulement si le rôle est validé
→ material_pool si plusieurs assets sont autorisés
→ selection_policy si un choix live ou assisté est possible
→ quality_evaluation avant intégration performative
```

Cette chaîne n’est pas toujours entièrement parcourue. Elle sert de garde-fou.

---

# 4. Types de documents et statuts

## 4.1 `instrument_source_candidate`

Rôle : accueillir une source possible avant validation.

Exemples :

```text
shruti ;
harmonium ;
orgue ;
cordes frottées ;
cloches ;
vibraphone ;
cuivres ;
anches ;
field recordings ;
objets frappés ;
éléments naturels procéduraux.
```

Statuts possibles :

```text
open_candidate ;
interesting_but_unvalidated ;
linked_to_remaining_need ;
rejected ;
deferred.
```

## 4.2 `source_need`

Rôle : décrire un besoin musical avant de parler de fichiers.

Un `source_need` doit répondre à au moins une question :

```text
quelle fonction reste mal couverte ?
quelle source live fixe couvre déjà le besoin ?
quelle source optionnelle couvre le besoin si présente ?
quelle compensation est obligatoire si absente ?
quelle source candidate pourrait couvrir un manque réel ?
```

Statuts possibles :

```text
live_fixed ;
live_optional ;
engine_required ;
conditional_sample_possible ;
reference_only ;
real_source_needed ;
deferred ;
rejected.
```

## 4.3 `material_asset_schema`

Rôle : définir comment décrire un futur asset sans créer l’asset.

Exemples récents :

```text
MATERIAL_ASSET_SCHEMA_LIVE_JAW_HARPS ;
MATERIAL_ASSET_SCHEMA_LIVE_DIDGERIDOO ;
MATERIAL_ASSET_SCHEMA_HARMONIC_DRONE_FIELDS.
```

Règle :

```text
un schema prépare les champs ;
il ne valide pas une source ;
il ne crée pas une banque ;
il ne remplace pas un test de scène.
```

## 4.4 `scene_use_case`

Rôle : tester si une fonction est réellement nécessaire dans une scène.

Exemple :

```text
SCENE_USE_CASE_HARMONIC_DRONE_SUSPENSION
```

Règle :

```text
un cas de scène peut rejeter une source_need localement ;
il peut aussi confirmer qu’un test fonctionnel est nécessaire ;
il ne valide pas encore sample, source ou module.
```

## 4.5 `function_test`

Rôle : vérifier une fonction musicale minimale, sans chercher encore le son final.

Exemple :

```text
FUNCTION_TEST_HARMONIC_DRONE_SUSPENSION_ENGINE
```

Un test fonctionnel doit observer :

```text
ce que la base couvre seule ;
ce que la fonction ajoute ;
ce qu’elle masque ;
ce qu’elle fragilise ;
ce qu’elle rend plus lisible ;
si elle prépare un retrait ou un retour au corps.
```

## 4.6 `decision_gate`

Rôle : interpréter les résultats d’un test avant tout passage à l’action.

Exemple :

```text
DECISION_GATE_HARMONIC_DRONE_AFTER_FUNCTION_TEST
```

Sorties possibles :

```text
rejected ;
deferred ;
valid_as_engine ;
real_source_needed ;
sample_minimal_allowed ;
material_asset_allowed.
```

## 4.7 `engine_sketch`

Rôle : cadrer les paramètres d’un engine ou résonateur sans l’implémenter.

Exemple :

```text
HARMONIC_DRONE_ENGINE_PARAMETER_SKETCH
```

Règle :

```text
un engine_sketch n’est pas un module ;
il ne déclenche pas automatiquement Max for Live ;
il sert à définir les contrôles minimaux et protections.
```

---

# 5. Tables de données principales

Le système de données repose sur ces tables conceptuelles :

```text
INSTRUMENT_SOURCE_CANDIDATE ;
SOURCE_NEED ;
MATERIAL_ASSET_SCHEMA ;
SCENE_USE_CASE ;
FUNCTION_TEST ;
DECISION_GATE ;
ENGINE_SKETCH ;
MATERIAL_ASSET ;
MATERIAL_POOL ;
SELECTION_POLICY ;
QUALITY_EVALUATION.
```

Les tables `MATERIAL_ASSET`, `MATERIAL_POOL`, `SELECTION_POLICY` et `QUALITY_EVALUATION` restent futures tant que les besoins ne sont pas validés.

---

# 6. Champs minimaux par table

## 6.1 INSTRUMENT_SOURCE_CANDIDATE

```text
candidate_id
candidate_name
source_kind
sonic_affordances
possible_functions
possible_phenomena
possible_roles
aesthetic_links
live_potential
sample_potential
generation_potential
hybrid_potential
risk_profile
priority_guess
status
```

## 6.2 SOURCE_NEED

```text
source_need_id
source_need_origin
linked_candidates
function_tags
phenomenon_tags
role_target
object_candidates
scene_affinities
trajectory_affinities
centrality_level
quality_requirement
live_requirement
generation_viability
sample_viability
hybrid_viability
selection_mode_default
risk_profile
protected_dimensions
router_controls_expected
priority_level
status
```

## 6.3 MATERIAL_ASSET_SCHEMA

```text
schema_id
linked_source_need
asset_type_expected
source_family
identity_fields
sonic_dimensions_to_document
role_fields
risk_fields
protection_fields
control_fields
validation_requirements
status
```

## 6.4 SCENE_USE_CASE

```text
scene_id
linked_source_need
function_in_scene
base_without_source
missing_function
entry_condition
withdrawal_condition
return_to_body_relation
risk_profile
validation_criteria
rejection_criteria
status
```

## 6.5 FUNCTION_TEST

```text
test_id
linked_scene
linked_source_need
function_to_test
base_condition
variants_to_test
observations_required
success_criteria
failure_criteria
next_decisions
status
```

## 6.6 DECISION_GATE

```text
gate_id
linked_function_test
required_inputs
possible_outputs
rejection_conditions
deferral_conditions
engine_sufficient_conditions
real_source_conditions
sample_minimal_conditions
material_asset_conditions
matrix_update_rules
status
```

## 6.7 ENGINE_SKETCH

```text
engine_sketch_id
linked_function_test
linked_decision_gate
parameters
inputs
outputs
safety_checks
failure_conditions
success_conditions
implementation_status
```

## 6.8 MATERIAL_ASSET

```text
asset_id
asset_type
source_identity
source_need_links
schema_links
scene_links
material_tags
possible_roles
forbidden_roles
recognition_level
abstraction_potential
quality_status
selection_mode_allowed
provenance
required_protections
status
```

---

# 7. Politique de samples

Un sample n’est autorisé que si :

```text
un source_need existe ;
la fonction ne peut pas être couverte par live fixe, live optionnel, engine ou génération ;
le besoin est lié à une scène ou trajectoire ;
la decision_gate autorise explicitement un sample minimal ;
le nombre de samples est limité ;
le sample ne devient pas banque décorative.
```

Statuts :

```text
sample_forbidden_now ;
conditional_sample_possible ;
sample_minimal_allowed ;
sample_asset_later ;
sample_rejected ;
sample_deferred.
```

Exemples de limites actuelles :

```text
harmonic drone: 1–3 drones/accords seulement si confirmé ;
cordes frottées: 3–5 gestes si friction réelle indispensable ;
métaux accordés: 3–5 sons si signaux harmoniques confirmés ;
field recordings: 1–5 lieux ou prises si lieu réel exposé confirmé ;
voix: fragments minimaux si fonction vocale réelle confirmée.
```

---

# 8. Politique de sélection live

Modes possibles :

```text
M0_FIXED_SOURCE ;
M1_MANUAL_SELECTION ;
M2_ASSISTED_SELECTION ;
M3_CONSTRAINED_AUTO_SELECTION ;
M4_AUTO_SELECTION_FORBIDDEN.
```

Règles :

```text
M0_FIXED_SOURCE: didgeridoo, guimbardes, sub principal.
M1_MANUAL_SELECTION: choix humain, rôle central, source sensible.
M2_ASSISTED_SELECTION: proposition système avec validation humaine.
M3_CONSTRAINED_AUTO_SELECTION: rare, secondaire, pool restreint, métadonnées solides.
M4_AUTO_SELECTION_FORBIDDEN: sub principal, impact critique, voix signal, résolution centrale, live fixe.
```

---

# 9. Politique de qualité

La qualité ne se mesure pas seulement à la beauté du son.

Un matériau doit être évalué selon :

```text
role_fit ;
function_fit ;
scene_fit ;
trajectory_fit ;
source_recognition_fit ;
transformation_potential ;
live_stability ;
latency_safety ;
cpu_safety ;
mix_translation_potential ;
conflict_risk_level ;
performer_trust.
```

Refus ou limitation si :

```text
il masque une voix protégée ;
il rend le sub instable ;
il empêche le retour au corps ;
il devient décoratif ;
il impose un style trop identifiable ;
il remplace un live input prioritaire ;
il ne peut pas être contrôlé ou protégé.
```

---

# 10. Workflow actuel recommandé

Pour chaque nouvelle idée de source ou instrument :

```text
1. vérifier si elle répond à un besoin restant ;
2. la placer comme candidate si elle n’est pas validée ;
3. créer un source_need seulement si un manque réel existe ;
4. créer un material_asset_schema si le besoin demande une description future ;
5. créer un scene_use_case si le besoin dépend d’une scène ;
6. créer un function_test si la fonction doit être prouvée ;
7. créer une decision_gate avant toute source/sample/asset ;
8. créer un engine_sketch seulement si un engine est plausible ;
9. créer un material_asset seulement après validation ;
10. créer un material_pool seulement si plusieurs assets sont autorisés ;
11. créer une selection_policy seulement si une sélection live est nécessaire.
```

---

# 11. Prochaine étape après ce protocole

Ce protocole est maintenant aligné avec la carte locale des assets.

Prochaine étape recommandée :

```text
reprendre le travail musical depuis docs/assets/00_ASSETS_INDEX.md ;
choisir entre :
A. revenir aux autres priorités hautes ;
B. revenir aux scènes globales ;
C. créer des fiches material_asset individuelles didgeridoo / guimbardes ;
D. continuer harmonic drone seulement si nécessaire.
```
