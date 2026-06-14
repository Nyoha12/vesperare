# 26_SCENE_PIVOT_MODULE_CONGRUENCE_AUDIT

Version : v0.1  
Statut : audit de congruence entre scènes-pivots et modules existants. Sans nouveau module, sans patch, sans mapping, sans prototype.

## Objet

Ce document audite la cohérence entre :

```text
24_SCENES_PIVOTS_CHAMPS_OUVERTS_PREMIERE_SERIE.md
25_SCENES_PIVOTS_TO_MODULE_RESPONSIBILITIES_MAP.md
```

et les documents de modules déjà présents dans le repo.

Modules relus ou vérifiés pour cet audit :

```text
docs/modules/01_OBJECT_REGISTRY.md
docs/modules/02_TRAJECTORY_ENGINE.md
docs/modules/04_SCENE_PERFORMANCE_CONDUCTOR.md
docs/modules/05_CONTEXTUAL_CONTROL_ROUTER.md
docs/modules/07_CONFLICT_PROTECTION_MANAGER.md
docs/modules/09_PITCH_HARMONIC_FIELD_MANAGER.md
docs/modules/11_TIMBRE_MATERIAL_MAPPER.md
docs/modules/16_SOURCE_NEEDS_ASSET_DATABASE_PROTOCOL.md
```

But : déterminer si les scènes-pivots peuvent être reliées aux modules sans contredire les spécifications déjà écrites.

---

# 1. Diagnostic global

Les modules existants sont globalement congruents avec les scènes-pivots.

Ils anticipaient déjà plusieurs idées qui sont devenues centrales plus tard :

```text
scènes non fermées ;
objets distingués de leurs rôles ;
trajectoires globales / locales / dimensionnelles ;
armement, retard, résolution, bifurcation ;
contrôles contextuels ;
protections ;
priorité live ;
corps / sub / halo / polytexture ;
anti-preset ;
autonomie située.
```

Ils ne sont donc pas à remplacer.

Mais ils doivent être synchronisés avec les décisions récentes :

```text
scènes-pivots ouvertes ;
infrastructure temporelle ;
loop / repeat / freeze ;
visualisation contextuelle ;
priorité didgeridoo + guimbardes ;
source configuration gong/tambour ;
anti-ambient et live priority comme guards transversaux.
```

---

# 2. Object Registry

## Congruent

Le module distingue déjà :

```text
source matérielle ;
fonction musicale ;
rôles contextuels ;
capacités de trajectoire ;
relations ;
risques ;
protections ;
contrôles associés.
```

Cela correspond très bien aux scènes ouvertes et aux scènes-pivots.

Il prévoit aussi que les objets live ne doivent pas être réduits à un rôle fixe.

## À mettre à jour plus tard

Ajouter explicitement :

```text
scene_field_affinities ;
scene_pivot_roles ;
temporal_affordances ;
loop_allowed ;
repeat_allowed ;
freeze_allowed ;
source_configuration_dependency ;
live_fixed_priority ;
live_optional_status ;
anti_ambient_sensitivity.
```

Point important : les guimbardes doivent apparaître explicitement comme objets live fixes, au même niveau de centralité que didgeridoo.

## Décision

```text
Object Registry: valide, mais à synchroniser avec scènes-pivots et objets temporels.
```

---

# 3. Trajectory Engine

## Congruent

Le module est très compatible.

Il pose déjà :

```text
trajectoire = intention + opérations + phases + objets + rôles + dimensions + conditions + garde-fous.
```

Il refuse les presets, prévoit retard, annulation, bifurcation et coexistence de trajectoires.

Les trois scènes-pivots utilisent exactement cette logique.

## À mettre à jour plus tard

Ajouter explicitement :

```text
scene_field_id ;
scene_pivot_id ;
temporal_operations ;
loop_as_operation ;
repeat_as_operation ;
freeze_as_operation ;
release_condition ;
live_priority_constraint ;
anti_ambient_guard_request.
```

Les opérations existantes sont déjà assez riches, mais loop/repeat/freeze doivent être définis comme opérations temporelles ou objets temporels associés, pas comme effets.

## Décision

```text
Trajectory Engine: fortement congruent ; mise à jour légère nécessaire pour temporal objects.
```

---

# 4. Scene / Performance Conductor

## Congruent

Le module est déjà aligné avec l’idée de scène ouverte.

Il dit qu’une scène n’est pas un mode fermé mais un ensemble de facettes :

```text
scene_tags ;
state_family ;
active_objects ;
allowed_trajectories ;
protected_dimensions ;
armed_events ;
control_priorities ;
bifurcation_options.
```

Il prévoit exactement ce dont les scènes-pivots ont besoin : autoriser, préparer, armer, retarder, interdire, protéger, désarmer.

## À mettre à jour plus tard

Ajouter :

```text
scene_field_id ;
open_field_function ;
exit_modes ;
return_to_body_modes ;
temporal_object_policy ;
live_source_configuration ;
visualization_requests ;
anti_ambient_state ;
live_priority_state.
```

Les scènes-pivots peuvent devenir des cas de test directs pour le Conductor.

## Décision

```text
Scene / Performance Conductor: très congruent ; doit être synchronisé avec 23/24/25.
```

---

# 5. Contextual Control Router

## Congruent

Le module dit déjà qu’un contrôle n’est pas un paramètre.

Il reçoit :

```text
état actif ;
scène active ;
objets prioritaires ;
rôles actifs ;
trajectoires autorisées / armées ;
risques ;
protections ;
niveau d’autonomie.
```

Il produit :

```text
contrôles permanents ;
contextuels ;
objet ;
trajectoire ;
profonds ;
d’urgence ;
masqués ;
verrouillés.
```

Cela correspond très bien à la matrice réduite et aux vues contextuelles.

## À mettre à jour plus tard

Ajouter :

```text
visualization_layer_requests ;
view_priority ;
touched_control_context ;
loop_repeat_freeze_controls ;
scene_pivot_control_sets ;
macro_vs_state_vs_guard distinctions ;
anti_dashboard_rule.
```

Le Router devra intégrer les exigences de visualisation contextuelle sans devenir interface finale.

## Décision

```text
Contextual Control Router: congruent ; doit intégrer explicitement la couche visualisation et les contrôles temporels.
```

---

# 6. Conflict / Protection Manager

## Congruent

Le module est très compatible avec les scènes-pivots.

Il prévoit déjà :

```text
conflit spectral ;
corporel ;
spatial ;
rythmique ;
harmonique / microtonal ;
de rôle ;
de scène ;
live ;
d’interface.
```

Il pose la bonne règle : protéger sans figer, réduire sans neutraliser, retarder plutôt qu’annuler si possible.

## À mettre à jour plus tard

Ajouter explicitement les conflits temporels :

```text
loop_replaces_live ;
repeat_becomes_effect ;
freeze_without_release ;
freeze_becomes_drone ;
live_capture_committed_too_early ;
temporal_object_ambientization ;
return_to_body_blocked_by_temporal_object.
```

## Décision

```text
Conflict / Protection Manager: très congruent ; mise à jour nécessaire sur loop/repeat/freeze.
```

---

# 7. Pitch / Harmonic Field Manager

## Congruent

Le module refuse déjà d’imposer harmonie classique, grille tempérée ou accord plaqué.

Il organise :

```text
sub ;
pitch_center ;
spectral_root ;
partiels ;
formants ;
microtonalité ;
inharmonicité ;
tensions / résolutions ;
halos accordés ;
relations entre objets.
```

Il est compatible avec :

```text
didgeridoo ;
guimbardes ;
gong ;
sub ;
halo ;
voix ;
champ harmonique conditionnel.
```

## À mettre à jour plus tard

Ajouter :

```text
scene_pivot_harmonic_roles ;
return_to_body_harmonic_condition ;
freeze_partial_hold_risk ;
loop_pitch_drift_risk ;
jaw_harp_formant_mapping ;
didgeridoo_formant_pressure_relation ;
visualization_requests_for_pitch_partials.
```

## Décision

```text
Pitch / Harmonic Field Manager: congruent ; doit intégrer les scènes-pivots et la visualisation des partiels/formants.
```

---

# 8. Timbre & Material Mapper

## Congruent

Le module distingue déjà source, matière, trace de source, transformation et rôle.

Il pose une règle essentielle : un son n’est pas validé parce qu’il est beau, naturel, rare ou impressionnant ; il l’est s’il tient un rôle dans une scène ou trajectoire.

C’est parfaitement cohérent avec techno organique et scènes ouvertes.

## À mettre à jour plus tard

Ajouter :

```text
scene_pivot_material_roles ;
temporal_material_origin ;
loop_material_trace ;
freeze_material_trace ;
repeat_material_function ;
naturalization_role_from_14_17 ;
anti_decorative_material_guard ;
live_fixed_material_protection.
```

## Décision

```text
Timbre & Material Mapper: fortement congruent ; mise à jour souhaitable sur temporal objects et naturalisation par rôle.
```

---

# 9. Source Needs / Asset Database Protocol

## Congruent

Le protocole v0.4 distingue maintenant :

```text
source_need ;
material_asset_schema ;
scene_use_case ;
function_test ;
decision_gate ;
engine_sketch ;
temporal_object ;
material_asset.
```

Il est aligné avec l’idée que loop/repeat/freeze ne sont pas des assets par défaut.

## À surveiller

Si une scène-pivot exige un nouvel objet ou une nouvelle source, il faudra repasser par :

```text
source_need ;
scene_use_case ;
function_test ;
decision_gate.
```

## Décision

```text
Protocole 16: suffisamment aligné pour continuer.
```

---

# 10. Résultat d’audit

## Modules valides sans réécriture immédiate

```text
Object Registry ;
Trajectory Engine ;
Scene / Performance Conductor ;
Contextual Control Router ;
Conflict / Protection Manager ;
Pitch / Harmonic Field Manager ;
Timbre & Material Mapper ;
Source Needs / Asset Database Protocol.
```

## Mise à jour nécessaire plus tard

Pas de réécriture complète.

Mais il faudra créer une synchronisation ou v0.2 pour certains modules si l’on passe à une spécification plus technique :

```text
Object Registry: ajouter scènes-pivots, guimbardes live fixes, temporal affordances.
Trajectory Engine: ajouter loop/repeat/freeze comme opérations temporelles.
Scene Conductor: ajouter scene_field_id, exit_modes, temporal policies.
Contextual Router: ajouter visualizations, touched-control context, temporal controls.
Conflict Manager: ajouter temporal conflicts.
Pitch Manager: ajouter visualisation partiels/formants, didgeridoo/guimbardes.
Timbre Mapper: ajouter temporal material traces et naturalisation par rôle.
```

---

# 11. Décision actuelle

Les scènes-pivots sont congruentes avec les modules existants.

On peut continuer sans refondre l’architecture.

Mais avant tout prototype, il faut choisir entre deux voies :

```text
A. créer des addenda de synchronisation pour les modules principaux ;
B. produire une première spécification technique ciblée sur un module, en s’appuyant sur les scènes-pivots.
```

Choix recommandé :

```text
A. addenda de synchronisation modules, en commençant par Scene / Performance Conductor et Contextual Control Router.
```

Raison : ces deux modules sont les plus directement affectés par scènes-pivots, contrôle live, visualisation et infrastructure temporelle.
