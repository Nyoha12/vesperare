# 29_CONFLICT_PROTECTION_MANAGER_SYNC_ADDENDUM

Version : v0.1  
Statut : addendum de synchronisation ciblé pour `docs/modules/07_CONFLICT_PROTECTION_MANAGER.md`. Sans patch, sans mapping, sans prototype.

## Objet

Ce document synchronise le module **Conflict / Protection Manager** avec les décisions récentes :

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
```

Il ne remplace pas `07_CONFLICT_PROTECTION_MANAGER.md`.

Il ajoute les conflits et protections liés à :

```text
scènes-pivots ;
objets temporels ;
loop / repeat / freeze ;
live priority ;
anti-ambient ;
source configuration ;
visualisation d’urgence ;
retour au corps.
```

---

# 1. Rappel du rôle du module

Le Conflict / Protection Manager ne rend pas la musique prudente.

Il doit :

```text
protéger sans figer ;
réduire sans neutraliser ;
retarder plutôt qu’annuler si la tension reste féconde ;
laisser vivre un conflit s’il est lisible, situé, réversible et musicalement utile.
```

Nouvelle formulation synchronisée :

```text
Conflict / Protection Manager = arbitre des risques entre corps, live, objets temporels, scène, matière, espace, interface et sortie formelle.
```

---

# 2. Nouveaux types de conflits à ajouter

## 2.1 Conflits temporels

```text
loop_replaces_live ;
loop_becomes_bank ;
loop_without_exit ;
repeat_becomes_effect ;
repeat_breaks_hypnosis ;
repeat_over_quantizes_live ;
freeze_without_release ;
freeze_becomes_drone ;
freeze_blocks_return_to_body ;
temporal_object_ambientizes_scene.
```

## 2.2 Conflits live

```text
didgeridoo_masked_by_sub ;
jaw_harps_masked_by_polytexture ;
live_input_replaced_by_loop ;
live_analysis_overrules_performer ;
optional_gong_assumed_present ;
optional_frame_drum_assumed_present ;
live_agency_reduced_by_autonomy.
```

## 2.3 Conflits anti-ambient

```text
halo_without_function ;
field_recording_as_background ;
freeze_creates_ambient_stasis ;
beauty_exposed_without_formal_exit ;
space_masks_body ;
long_tail_blocks_transition ;
scene_loses_pressure_and_body_without_reason.
```

## 2.4 Conflits de scène ouverte

```text
scene_field_overexpanded ;
too_many_bifurcations_visible ;
central_function_lost ;
scene_pivot_becomes_preset ;
all_sources_active_without_hierarchy ;
exit_modes_unclear ;
return_to_body_unavailable.
```

## 2.5 Conflits de visualisation / contrôle

```text
emergency_not_visible ;
wrong_view_priority ;
touched_control_context_missing ;
too_many_controls_visible ;
technical_controls_promoted_too_early ;
release_freeze_hidden ;
live_priority_warning_hidden.
```

---

# 3. Gravité synchronisée

Les niveaux existants restent valides.

Ajouter une lecture spécifique aux objets temporels et au live :

```text
G0 : tension féconde, aucune action ;
G1 : surveiller discrètement ;
G2 : informer Router / Conductor ;
G3 : réduire doucement ;
G4 : protéger activement ;
G5 : retarder ;
G6 : verrouiller temporairement ;
G7 : désarmer ;
G8 : urgence performative.
```

Cas G8 typiques :

```text
freeze sans release visible ;
loop remplace didgeridoo ou guimbardes ;
sub couvre didgeridoo live ;
polytexture masque guimbardes live ;
retour au corps impossible ;
halo dissout la scène ;
source optionnelle supposée présente alors qu’elle est absente.
```

---

# 4. Entrées nouvelles

Depuis Scene / Performance Conductor :

```text
scene_field_id ;
scene_pivot_id ;
central_function ;
current_state ;
exit_modes ;
return_to_body_modes ;
live_priority_state ;
source_configuration_state ;
anti_ambient_state ;
temporal_policy ;
armed_events ;
forbidden_bifurcations.
```

Depuis Contextual Control Router :

```text
visible_controls ;
priority_view ;
touched_control_context ;
emergency_controls ;
locked_controls ;
hidden_controls ;
view_priority_request ;
release_freeze_visibility ;
live_priority_visibility.
```

Depuis Temporal Infrastructure :

```text
active_loop_objects ;
loop_source ;
loop_role ;
loop_duration ;
loop_exit_status ;
active_repeat_events ;
repeat_quantization ;
repeat_function ;
active_freezes ;
freeze_source ;
freeze_type ;
freeze_duration ;
freeze_release_status.
```

Depuis Object Registry / Live Interpreter :

```text
fixed_live_sources ;
optional_live_sources ;
active_live_objects ;
protected_live_objects ;
analysis_confidence ;
performer_agency_level ;
object_roles ;
source_recognition_risk.
```

---

# 5. Sorties nouvelles

Le module doit pouvoir produire :

```text
temporal_conflict_state ;
live_priority_conflict ;
anti_ambient_conflict ;
source_configuration_warning ;
return_to_body_blocked_warning ;
release_required ;
router_emergency_promotion ;
view_priority_override ;
control_lock_request ;
conductor_delay_request ;
conductor_cancel_request ;
temporal_release_request ;
object_protection_update.
```

---

# 6. Protections temporelles

## Loop

Le module doit détecter :

```text
loop remplace live ;
loop devient banque ;
loop masque source active ;
loop n’a pas de sortie ;
loop stabilise trop la scène ;
loop empêche retour au corps.
```

Actions possibles :

```text
signaler ;
réduire loop ;
retarder capture ;
verrouiller commit ;
forcer repassage live ;
demander sortie temporelle ;
promouvoir Stop loop / Repasser live.
```

## Repeat

Le module doit détecter :

```text
repeat décoratif ;
repeat trop identifiable ;
repeat casse hypnose ;
repeat rigidifie le live ;
repeat masque articulation guimbardes ;
repeat rend le pré-drop trop démonstratif.
```

Actions possibles :

```text
réduire accent ;
raréfier ;
réaligner ;
stop repeat ;
retarder résolution ;
promouvoir Lisibilité / Raréfier / Retour corps.
```

## Freeze

Le module doit détecter :

```text
freeze sans release ;
freeze trop long ;
freeze devient drone ;
freeze dissout corps ;
freeze masque live ;
freeze bloque sortie ;
freeze ambientise.
```

Actions possibles :

```text
exiger release ;
réduire halo ;
promouvoir Release freeze ;
promouvoir Retour corps ;
verrouiller nouveau freeze ;
retarder pré-drop ;
demander Conductor exit_mode.
```

---

# 7. Protections live

Sources fixes :

```text
didgeridoo ;
guimbardes.
```

Règles :

```text
ne jamais les traiter comme sources ordinaires ;
ne pas les remplacer par loop sans décision explicite ;
ne pas laisser sub ou polytexture les masquer ;
ne pas laisser analyse automatique imposer leur rôle ;
préserver agency du performeur ;
maintenir des contrôles d’urgence liés au live.
```

Sources optionnelles :

```text
gong ;
tambour.
```

Règles :

```text
ne pas supposer leur présence ;
ne pas armer résolution gong si gong absent ;
ne pas supposer impact peau si tambour absent ;
prévoir compensation seulement si fonction nécessaire et documentée.
```

---

# 8. Anti-ambient guard

Le module doit suivre un état anti-ambient.

Valeurs :

```text
clear ;
watch ;
risk ;
active_guard ;
emergency_return_required.
```

Déclencheurs :

```text
halo sans fonction ;
field recording décoratif ;
freeze trop long ;
loop stabilisant une ambiance ;
beauté exposée sans sortie ;
perte du corps sans trace ;
reverb qui masque fonction ;
scène qui ne peut plus réincorporer.
```

Actions :

```text
Réduire halo ;
Réduire système ;
Release freeze ;
Retour corps ;
Repasser live ;
Fermer espace ;
Désarmer ambiance.
```

---

# 9. Application aux scènes-pivots

## SCENE_PIVOT_CORPS_VIVANT_POLYTEXTURE

Risques principaux :

```text
polytexture confuse ;
sub masque didgeridoo ;
guimbardes masquées ;
repeat décoratif ;
loop remplace live ;
low-mid overload.
```

Protections prioritaires :

```text
live priority ;
sub stability ;
polytexture readability ;
low-mid safety ;
anti-loop-as-bank.
```

## SCENE_PIVOT_TENSION_ARMEE_PRE_DROP

Risques principaux :

```text
drop automatique ;
repeat démonstratif ;
freeze sans release ;
gong spectaculaire non préparé ;
voix-gimmick ;
sub instable.
```

Protections prioritaires :

```text
retarder ;
annuler ;
fausse résolution ;
stabiliser sub ;
release freeze ;
anti-effect recognizability.
```

## SCENE_PIVOT_SUSPENSION_MATIERE_RETOUR

Risques principaux :

```text
freeze-drone ;
halo permanent ;
field recording décoratif ;
perte du corps ;
beauté exposée sans conséquence ;
sortie absente.
```

Protections prioritaires :

```text
anti-ambient ;
freeze release ;
return_to_body ;
reduce halo ;
protect material ;
protect live trace.
```

---

# 10. Interaction avec Router

Le module doit pouvoir promouvoir au Router :

```text
Release freeze ;
Stop loop ;
Repasser live ;
Réduire halo ;
Réduire densité ;
Stabiliser sub ;
Protéger voix ;
Protéger live ;
Retour corps ;
Mode sûr.
```

Règle :

```text
si un risque est G8, le Router doit recevoir une promotion P0.
```

Le module peut aussi demander au Router de masquer :

```text
contrôles profonds ;
macro-autonomie ;
densification ;
halo large ;
repeat ;
freeze ;
drop.
```

---

# 11. Risques si non synchronisé

```text
loop/repeat/freeze restent traités comme effets ;
anti-ambient reste esthétique au lieu d’être protection ;
live priority reste invisible ;
source configuration optionnelle est ignorée ;
Router ne promeut pas les urgences ;
Conductor arme des événements impossibles ;
scènes-pivots deviennent trop ouvertes ;
retour au corps n’est pas protégé.
```

---

# 12. Décision actuelle

Le module `07_CONFLICT_PROTECTION_MANAGER.md` reste valide.

Il doit être lu comme :

```text
base v0.1 solide ;
à compléter par cet addendum pour les décisions 17–28.
```

Prochaine étape recommandée :

```text
mettre à jour README et REPO_TREE_SNAPSHOT ;
puis décider si l’on synchronise Object Registry / Trajectory Engine,
ou si l’on revient à une passe musicale sur les scènes-pivots.
```

Ne pas encore créer :

```text
patch ;
layout ;
mapping ;
prototype ;
format final de données.
```
