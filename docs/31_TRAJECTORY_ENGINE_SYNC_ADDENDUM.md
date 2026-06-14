# 31_TRAJECTORY_ENGINE_SYNC_ADDENDUM

Version : v0.1  
Statut : addendum de synchronisation ciblé pour `docs/modules/02_TRAJECTORY_ENGINE.md`. Sans format final, sans patch, sans prototype.

## Objet

Ce document synchronise le module **Trajectory Engine** avec les décisions récentes :

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
30_OBJECT_REGISTRY_SYNC_ADDENDUM.md
```

Il ne remplace pas `02_TRAJECTORY_ENGINE.md`.

Il ajoute ce que les scènes-pivots et les objets temporels imposent :

```text
scene_field_id ;
scene_pivot_id ;
opérations temporelles ;
loop / repeat / freeze ;
release ;
exit modes ;
return_to_body ;
live priority ;
anti-ambient ;
source configuration ;
visualization requests.
```

---

# 1. Rappel du rôle du Trajectory Engine

Le Trajectory Engine ne doit pas devenir une automation.

Il représente des transformations musicales situées :

```text
trajectoire = intention + opérations + phases + objets + rôles + dimensions + conditions + garde-fous.
```

Nouvelle formulation synchronisée :

```text
Trajectory Engine = moteur de transformations ouvertes, phasées, bifurcables, compatibles avec les scènes-pivots et les objets temporels.
```

---

# 2. Ajout : trajectoire attachée à un champ de scène

Depuis `23` et `24`, une trajectoire ne doit pas seulement connaître `allowed_scenes`.

Elle doit connaître :

```text
scene_field_id ;
scene_pivot_id ;
central_function ;
opened_fields ;
exit_modes ;
return_to_body_modes.
```

Exemple :

```text
trajectory_id: PRE_DROP_NATURALISE
scene_pivot_id: SCENE_PIVOT_TENSION_ARMEE_PRE_DROP
central_function: armer une résolution sans l’imposer
exit_modes: resolution, false_resolution, cancellation, suspension, return_to_body
```

---

# 3. Opérations temporelles à ajouter

Les opérations existantes restent valides.

Ajouter :

```text
capturer ;
looper ;
répéter ;
geler ;
relâcher ;
repasser_live ;
réduire_trace ;
désarmer_capture ;
réaligner_temporellement ;
forcer_sortie_temporelle.
```

Ces opérations ne sont pas des effets.

Elles doivent être reliées à :

```text
source ;
rôle ;
phase ;
fonction ;
durée ;
sortie ;
risque ;
protection.
```

---

# 4. Loop / repeat / freeze dans les trajectoires

## Loop

Le Trajectory Engine peut demander un loop seulement si :

```text
la scène l’autorise ;
la source est connue ;
le rôle du loop est défini ;
le loop ne remplace pas le live ;
une sortie est prévue ;
la durée maximale est claire.
```

Rôles compatibles :

```text
trace ;
shadow ;
double ;
post-trace ;
transition ;
réincorporation.
```

Rôles interdits :

```text
banque ;
remplacement live ;
fondation autonome ;
loop décoratif.
```

## Repeat

Le Trajectory Engine peut demander un repeat si :

```text
il sert hypnose, tension, articulation, pré-drop ou raréfaction ;
il ne devient pas démonstratif ;
il ne rigidifie pas le live ;
il conserve une fonction de scène.
```

Rôles compatibles :

```text
micropulse ;
pré-drop ;
tension rythmique ;
accent ;
raréfaction ;
réalignement.
```

## Freeze

Le Trajectory Engine peut demander un freeze seulement si :

```text
la source ou couche est claire ;
la scène l’autorise ;
la durée maximale est claire ;
le corps restant est identifié ;
la release est obligatoire ;
une sortie est prévue.
```

Règle centrale :

```text
freeze sans release = interdit.
```

---

# 5. Phases synchronisées

Les phases existantes restent valides :

```text
armement ;
préparation ;
engagement ;
seuil ;
résolution ;
bifurcation ;
post-trace ;
désarmement.
```

Ajouter les précisions suivantes :

## Armement

Une trajectoire peut armer :

```text
retour au corps ;
release freeze ;
stop loop ;
répétition contrôlée ;
gong si présent ;
tambour si présent ;
fausse résolution ;
annulation ;
bifurcation vers suspension.
```

## Engagement

Une trajectoire engagée doit envoyer au Router :

```text
contrôles prioritaires ;
vues nécessaires ;
objets actifs ;
risques ;
sorties possibles.
```

## Seuil

Au seuil, la trajectoire doit pouvoir proposer :

```text
résoudre ;
retarder ;
annuler ;
fausse résolution ;
bifurquer ;
release ;
retour au corps.
```

## Post-trace

La post-trace peut être :

```text
résonance ;
loop réduit ;
freeze relâché ;
halo court ;
sub stabilisé ;
guimbarde résiduelle ;
didgeridoo trace corporelle.
```

---

# 6. Nouvelles conditions de trajectoire

Ajouter :

```text
live_priority_condition ;
source_configuration_condition ;
temporal_object_condition ;
anti_ambient_condition ;
return_to_body_condition ;
visualization_condition ;
release_condition ;
exit_condition.
```

Exemples :

```text
si gong absent → trajectoire résolution gong interdite ;
si freeze actif sans release → trajectoire suspendue devient urgence ;
si didgeridoo live central → sub concurrent doit être réduit ou protégé ;
si scène perd le corps → return_to_body_condition devient active ;
si loop remplace guimbarde → trajectory_constraint: stop_or_shadow_only.
```

---

# 7. Application aux trois scènes-pivots

## SCENE_PIVOT_CORPS_VIVANT_POLYTEXTURE

Trajectoires principales :

```text
densification polytexturale ;
pression corporelle ;
retour au corps ;
pré-drop possible ;
suspension avec trace.
```

Opérations privilégiées :

```text
densifier ;
articuler ;
raréfier ;
retenir ;
réaligner ;
réincorporer ;
répéter ;
réduire_trace.
```

Conditions :

```text
live_priority_condition: active ;
low_mid_safety: active ;
repeat_function: articulation or hypnosis ;
loop_role: trace only ;
freeze_allowed: rare / discouraged.
```

## SCENE_PIVOT_TENSION_ARMEE_PRE_DROP

Trajectoires principales :

```text
pré-drop naturalisé ;
long tension ;
false resolution ;
cancellation ;
resolution ;
bifurcation to suspension.
```

Opérations privilégiées :

```text
retirer ;
retenir ;
fragmenter ;
armer ;
retarder ;
résoudre ;
annuler ;
bifurquer ;
répéter ;
relâcher.
```

Conditions :

```text
drop_automatic_forbidden: true ;
repeat_function: tension or pre_drop ;
freeze_release_required: true ;
source_configuration_condition: gong/tambour/voix present or validated.
```

## SCENE_PIVOT_SUSPENSION_MATIERE_RETOUR

Trajectoires principales :

```text
suspension ;
exposition matière ;
withdrawal ;
return_to_body ;
transfer_to_polytexture ;
pre_drop_from_suspension.
```

Opérations privilégiées :

```text
retirer ;
suspendre ;
exposer ;
geler ;
relâcher ;
réduire halo ;
réincorporer ;
transférer ;
repasser_live.
```

Conditions :

```text
anti_ambient_condition: watch/risk ;
freeze_release_required: true ;
body_trace_remaining: required ;
return_to_body_condition: always available ;
field_recording_allowed: conditional only.
```

---

# 8. Sorties nouvelles du Trajectory Engine

Le module doit pouvoir produire :

```text
trajectory_scene_field_state ;
trajectory_pivot_context ;
operation_stack_with_temporal_ops ;
temporal_object_request ;
loop_role_request ;
repeat_function_request ;
freeze_release_requirement ;
exit_mode_request ;
return_to_body_request ;
router_control_request ;
visualization_request ;
conflict_guard_request ;
object_registry_query ;
source_configuration_check.
```

Vers :

```text
Scene / Performance Conductor ;
Contextual Control Router ;
Conflict / Protection Manager ;
Temporal Infrastructure ;
Object Registry ;
Pitch / Harmonic Field Manager ;
Timbre & Material Mapper.
```

---

# 9. Risques si non synchronisé

```text
les trajectoires deviennent des presets ;
loop/repeat/freeze restent des effets ;
pré-drop devient automatique ;
suspension devient ambient ;
retour au corps devient recette ;
source configuration ignorée ;
guimbardes et didgeridoo non protégés ;
Router ne sait pas quels contrôles montrer ;
Conflict Manager ne reçoit pas les bons risques.
```

---

# 10. Décision actuelle

Le module `02_TRAJECTORY_ENGINE.md` reste valide.

Il doit être lu comme :

```text
base v0.1 solide ;
à compléter par cet addendum pour les décisions 17–30.
```

Prochaine étape recommandée :

```text
mettre à jour README et REPO_TREE_SNAPSHOT ;
puis revenir à une passe musicale sur les scènes-pivots,
car les modules centraux de contrôle et d’arbitrage sont maintenant synchronisés.
```

Ne pas encore créer :

```text
format final de données ;
patch ;
layout ;
mapping ;
prototype.
```
