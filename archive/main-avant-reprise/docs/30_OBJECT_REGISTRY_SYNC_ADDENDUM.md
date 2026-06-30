# 30_OBJECT_REGISTRY_SYNC_ADDENDUM

Version : v0.1  
Statut : addendum de synchronisation ciblé pour `docs/modules/01_OBJECT_REGISTRY.md`. Sans format final, sans patch, sans prototype.

## Objet

Ce document synchronise le module **Object Registry** avec les décisions récentes :

```text
17_LIVE_CONTROL_REQUIREMENTS_MATRIX_REDUCED.md
19_LIVE_CONTROL_LAYERS_AND_PERFORMANCE_STATES.md
20_TEMPORAL_INFRASTRUCTURE_MEASURE_LOOP_REPEAT_FREEZE.md
21_TEMPORAL_INFRASTRUCTURE_DECISION_QUESTIONS.md
22_CONTEXTUAL_VISUALIZATION_REQUIREMENTS.md
23_SCENES_COMME_CHAMPS_OUVERTS_DE_PERFORMANCE.md
24_SCENES_PIVOTS_CHAMPS_OUVERTS_PREMIERE_SERIE.md
25_SCENES_PIVOTS_TO_MODULE_RESPONSIBILITIES_MAP.md
26_SCENE_PIVOT_MODULE_CONGRUENCE_AUDIT.md
27_SCENE_PERFORMANCE_CONDUCTOR_SYNC_ADDENDUM.md
28_CONTEXTUAL_CONTROL_ROUTER_SYNC_ADDENDUM.md
29_CONFLICT_PROTECTION_MANAGER_SYNC_ADDENDUM.md
```

Il ne remplace pas `01_OBJECT_REGISTRY.md`.

Il ajoute les champs nécessaires pour :

```text
sources live fixes ;
sources live optionnelles ;
source configuration ;
objets temporels ;
scènes-pivots ;
live priority ;
anti-ambient ;
loop / repeat / freeze ;
retour au corps ;
visualisation contextuelle.
```

---

# 1. Rappel du rôle du registre

L’Object Registry ne doit pas devenir une banque de samples.

Il doit décrire ce qu’un objet peut faire musicalement :

```text
matière ;
source ;
fonction ;
rôle ;
trajectoire compatible ;
scène compatible ;
relations ;
risques ;
protections ;
priorité live ;
comportement temporel possible.
```

Nouvelle formulation synchronisée :

```text
Object Registry = mémoire des capacités, rôles, risques et conditions d’existence des objets dans une scène ouverte.
```

---

# 2. Distinction obligatoire : source / objet / rôle / trace / objet temporel

Le registre doit distinguer :

```text
source : origine matérielle ou synthétique ;
objet : entité musicale manipulable ;
rôle : fonction momentanée dans une scène ;
trace : empreinte sensible conservée après transformation ;
objet temporel : loop, repeat ou freeze attaché à une source ou couche.
```

Exemples :

```text
didgeridoo live = source fixe ;
didgeridoo grave traité = objet ;
trace corporelle = rôle ;
souffle / formant / centre grave = trace ;
loop court de didgeridoo = objet temporel, pas asset.
```

Autre exemple :

```text
guimbarde live = source fixe ;
micropulse formantique = objet ;
polytexture articulée = rôle ;
attaque métallique / formant bouche = trace ;
repeat de guimbarde = objet temporel fragile.
```

---

# 3. Nouveaux champs à ajouter

Ajouter aux fiches internes d’objet :

```text
SOURCE STATUS
source_status
fixed_live_source
optional_live_source
source_configuration_dependency
presence_state
absence_consequence
replacement_allowed
replacement_conditions

LIVE PRIORITY
live_priority_weight
performer_agency_level
analysis_authority_limit
human_override_required
live_masking_sensitivity
live_replacement_forbidden

SCENE RELATION
scene_field_affinities
scene_pivot_affinities
central_function_candidates
return_to_body_capacity
anti_ambient_sensitivity
exit_mode_contribution

TEMPORAL AFFORDANCES
loop_allowed
loop_roles_allowed
loop_roles_forbidden
repeat_allowed
repeat_roles_allowed
repeat_roles_forbidden
freeze_allowed
freeze_roles_allowed
freeze_release_required
temporal_object_risk_profile

VISUALIZATION
source_configuration_view_relevance
pitch_partials_view_relevance
loop_repeat_freeze_view_relevance
guard_warning_relevance
touched_control_context_relevance

PROTECTION
low_mid_risk
ambientization_risk
masking_live_risk
source_recognition_risk
return_to_body_block_risk
```

Ces champs restent conceptuels.

Ils ne définissent pas encore un format final de données.

---

# 4. Sources fixes : didgeridoo et guimbardes

## Didgeridoo

Statut :

```text
source_status: fixed_live_source
fixed_live_source: true
live_priority_weight: high
replacement_allowed: no by default
analysis_authority_limit: suggest_only
```

Rôles possibles :

```text
fondation organique ;
trace corporelle ;
pression grave ;
centre formantique ;
ligne vivante ;
sub vivant ;
source de torsion ;
source de suspension avec corps restant.
```

Risques :

```text
masquage par sub ;
boue bas-médium ;
réduction à une basse ;
perte d’agency live ;
analyse trop déterministe.
```

Protections :

```text
live priority ;
low-mid safety ;
sub relation guard ;
analysis confidence guard ;
return-to-body relevance.
```

## Guimbardes

Statut :

```text
source_status: fixed_live_source
fixed_live_source: true
live_priority_weight: high
replacement_allowed: no by default
analysis_authority_limit: suggest_only
```

Rôles possibles :

```text
micropulse ;
formant rhythm ;
polytexture articulation ;
metallic speech ;
accent microtonal ;
friction rythmique ;
signal de tension ;
trace vivante dans suspension.
```

Risques :

```text
masquage par polytexture ;
repeat démonstratif ;
confusion d’accents ;
perte de finesse formantique ;
loop qui remplace le geste.
```

Protections :

```text
live priority ;
rhythmic readability ;
formant clarity ;
anti-loop-replacement ;
anti-repeat-effect.
```

---

# 5. Sources optionnelles : gong et tambour

## Gong

Statut :

```text
source_status: optional_live_source
optional_live_source: true
presence_state: present | absent
absence_consequence: resolution_gong_unavailable
```

Rôles possibles :

```text
masse de résolution ;
rugissement ;
halo ;
post-résonance ;
champ partiel ;
fermeture ;
beauté exposée ;
ponctuation de seuil.
```

Règle :

```text
ne pas armer résolution gong si gong absent.
```

## Tambour sur cadre

Statut :

```text
source_status: optional_live_source
optional_live_source: true
presence_state: present | absent
absence_consequence: skin_impact_unavailable
```

Rôles possibles :

```text
impact peau ;
ancrage corporel ;
contrepoids acoustique ;
retour au corps ;
ponctuation sèche ;
rupture de suspension.
```

Règle :

```text
ne pas supposer impact peau si tambour absent.
```

---

# 6. Objets temporels dans le registre

Le registre ne doit pas classer loop/repeat/freeze comme assets.

Il doit les décrire comme objets temporels attachés à une source, un rôle, une scène et une sortie.

## Loop object

Champs :

```text
temporal_object_type: loop
source_object
captured_role
allowed_scene_fields
forbidden_scene_fields
live_priority_relation
max_duration
exit_required
replacement_risk
```

Rôles possibles :

```text
trace ;
shadow ;
double ;
post-trace ;
transition ;
réincorporation.
```

Rôles interdits par défaut :

```text
banque ;
remplacement live ;
fondation autonome ;
loop décoratif.
```

## Repeat event

Champs :

```text
temporal_object_type: repeat
source_object
repeat_function
quantization_state
rhythmic_relation
allowed_scene_fields
risk_profile
stop_condition
```

Rôles possibles :

```text
hypnose ;
pré-drop ;
articulation ;
micropulse ;
tension rythmique ;
raréfaction.
```

Rôles interdits :

```text
effet démonstratif ;
stutter décoratif ;
rigidification du live ;
repeat sans fonction.
```

## Freeze object

Champs :

```text
temporal_object_type: freeze
source_object
freeze_type
scene_function
body_trace_remaining
release_required
release_mode
max_duration
anti_ambient_risk
return_to_body_relation
```

Règle centrale :

```text
freeze sans release = interdit.
```

---

# 7. Affinités avec les scènes-pivots

## SCENE_PIVOT_CORPS_VIVANT_POLYTEXTURE

Objets prioritaires :

```text
didgeridoo ;
guimbardes ;
sub ;
tambour si présent ;
gong ponctuel si présent.
```

Le registre doit fournir :

```text
body_capacity ;
polytexture_capacity ;
micropulse_capacity ;
impact_capacity ;
live_masking_sensitivity ;
repeat_allowed ;
loop_replacement_risk.
```

## SCENE_PIVOT_TENSION_ARMEE_PRE_DROP

Objets prioritaires possibles :

```text
sub ;
didgeridoo ;
guimbardes ;
gong si présent ;
voix si validée ;
tambour si présent.
```

Le registre doit fournir :

```text
resolution_target_capacity ;
armed_event_compatibility ;
false_resolution_capacity ;
pre_drop_function ;
freeze_release_requirement ;
gong_presence_state ;
voice_validation_state.
```

## SCENE_PIVOT_SUSPENSION_MATIERE_RETOUR

Objets prioritaires possibles :

```text
didgeridoo comme trace corporelle ;
guimbardes comme détail formantique ;
gong comme halo/partials si présent ;
voix si validée ;
sub comme contrepoids ;
field recording seulement conditionnel.
```

Le registre doit fournir :

```text
body_trace_capacity ;
exposed_material_capacity ;
anti_ambient_sensitivity ;
freeze_allowed ;
freeze_release_required ;
halo_risk ;
return_to_body_capacity.
```

---

# 8. Sorties nouvelles du registre

Le registre doit pouvoir envoyer :

```text
source_configuration_state ;
fixed_live_sources ;
optional_live_sources ;
protected_live_objects ;
scene_pivot_affinities ;
temporal_affordances ;
loop_risk_profile ;
repeat_risk_profile ;
freeze_risk_profile ;
return_to_body_capacity ;
anti_ambient_sensitivity ;
visualization_relevance ;
replacement_forbidden_flags.
```

Vers :

```text
Scene / Performance Conductor ;
Contextual Control Router ;
Conflict / Protection Manager ;
Trajectory Engine ;
Temporal Infrastructure ;
Pitch / Harmonic Field Manager ;
Timbre & Material Mapper ;
Source Needs / Asset Database Protocol.
```

---

# 9. Risques si non synchronisé

```text
didgeridoo et guimbardes traités comme sources ordinaires ;
gong ou tambour supposés présents ;
loop/repeat/freeze confondus avec assets ou effets ;
scènes-pivots sans objets prioritaires clairs ;
source configuration invisible ;
retour au corps non soutenu ;
anti-ambient sans données d’objet ;
Router et Conflict Manager privés de risques précis.
```

---

# 10. Décision actuelle

Le module `01_OBJECT_REGISTRY.md` reste valide.

Il doit être lu comme :

```text
base v0.2 solide ;
à compléter par cet addendum pour les décisions 17–29.
```

Prochaine étape recommandée :

```text
mettre à jour README et REPO_TREE_SNAPSHOT ;
puis créer l’addendum léger pour Trajectory Engine.
```

Ne pas encore créer :

```text
format final de données ;
patch ;
layout ;
mapping ;
prototype.
```
