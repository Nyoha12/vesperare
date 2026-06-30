# 27_SCENE_PERFORMANCE_CONDUCTOR_SYNC_ADDENDUM

Version : v0.1  
Statut : addendum de synchronisation ciblé pour `docs/modules/04_SCENE_PERFORMANCE_CONDUCTOR.md`. Sans patch, sans mapping, sans prototype.

## Objet

Ce document synchronise le module **Scene / Performance Conductor** avec les décisions apparues dans :

```text
19_LIVE_CONTROL_LAYERS_AND_PERFORMANCE_STATES.md
20_TEMPORAL_INFRASTRUCTURE_MEASURE_LOOP_REPEAT_FREEZE.md
21_TEMPORAL_INFRASTRUCTURE_DECISION_QUESTIONS.md
22_CONTEXTUAL_VISUALIZATION_REQUIREMENTS.md
23_SCENES_COMME_CHAMPS_OUVERTS_DE_PERFORMANCE.md
24_SCENES_PIVOTS_CHAMPS_OUVERTS_PREMIERE_SERIE.md
25_SCENES_PIVOTS_TO_MODULE_RESPONSIBILITIES_MAP.md
26_SCENE_PIVOT_MODULE_CONGRUENCE_AUDIT.md
```

Il ne remplace pas `04_SCENE_PERFORMANCE_CONDUCTOR.md`.

Il ajoute ce que le Conductor doit savoir depuis les décisions récentes :

```text
scènes comme champs ouverts ;
scènes-pivots ;
loop / repeat / freeze comme objets temporels ;
visualisation contextuelle ;
live priority ;
anti-ambient ;
source configuration didgeridoo / guimbardes / gong / tambour ;
retour au corps comme sortie structurante.
```

---

# 1. Rappel du rôle du Conductor

Le Conductor ne produit pas le son.

Il ne compose pas à la place du musicien.

Il décide ce qui est :

```text
possible ;
préparé ;
armé ;
actif ;
retardé ;
interdit ;
protégé ;
désarmé ;
à rendre visible ;
à surveiller ;
à sortir.
```

Nouvelle formulation synchronisée :

```text
Conductor = arbitre de cohérence entre champ de scène, trajectoires, sources live, objets temporels, contrôles, visualisations et protections.
```

---

# 2. Ajout conceptuel : scene_field_id

Le module `04` parlait déjà de scènes comme configurations non fermées.

Depuis `23`, il faut distinguer :

```text
scene_id : scène concrète ou configuration performative ;
scene_field_id : champ ouvert de performance ;
scene_pivot_id : scène-pivot utilisée pour valider plusieurs champs.
```

Exemples :

```text
scene_field_id: SCENE_FIELD_PRE_DROP
scene_pivot_id: SCENE_PIVOT_TENSION_ARMEE_PRE_DROP
```

Une scène-pivot peut couvrir plusieurs champs :

```text
SCENE_PIVOT_TENSION_ARMEE_PRE_DROP
→ PRESSURE_BUILD
→ LONG_TENSION
→ PRE_DROP
→ WITHDRAWAL
→ RETURN_TO_BODY
```

Le Conductor doit donc éviter une logique de scène unique.

Il doit gérer un champ de possibilités orientées.

---

# 3. Structure de scène à ajouter

Ajouter aux fiches internes du Conductor :

```text
SCENE FIELD
scene_field_id
scene_pivot_id
central_function
opened_fields
state_family
current_state
possible_neighbor_states

FUNCTIONS
techno_functions_preserved
body_relation
pressure_relation
impact_relation
hypnosis_relation
long_tension_relation
return_to_body_modes

LIVE SOURCES
fixed_live_sources
optional_live_sources
source_configuration_state
live_priority_state
performer_agency_level
analysis_authority_limit

TEMPORAL OBJECTS
temporal_policy
allowed_loop_roles
forbidden_loop_roles
allowed_repeat_roles
forbidden_repeat_roles
allowed_freeze_roles
freeze_release_required
exit_conditions

VISUALIZATION
visualization_requests
priority_views
risk_views
touched_control_view_requirement
scene_proportion_view_requirement

GUARDS
guard_anti_ambient
guard_low_mid_safety
guard_live_priority
guard_loop_replaces_live
guard_freeze_without_release
guard_repeat_decorative

OUTPUTS
allowed_bifurcations
forbidden_bifurcations
armed_events
exit_modes
reincorporation_targets
```

Cette structure reste conceptuelle.

Elle ne définit pas encore un format de données final.

---

# 4. Source configuration state

Le Conductor doit connaître la configuration live du moment.

État minimal :

```text
DIDGERIDOO: always_live
JAW_HARPS: always_live
GONG: present | absent
FRAME_DRUM: present | absent
VOICE: live | prepared | absent
FIELD_RECORDINGS: allowed | absent | conditional
```

Pourquoi : la présence ou absence du gong et du tambour n’est pas neutre.

Le Conductor doit donc pouvoir dire :

```text
si gong absent → ne pas armer une résolution gong ;
si tambour absent → ne pas supposer impact peau live ;
si didgeridoo actif → protéger centre grave / agency live ;
si guimbardes actives → protéger micro-pulses et formants ;
si field recording absent → ne pas créer une scène reposant dessus ;
si voix non validée → ne pas armer cri vocal ou signal vocal.
```

---

# 5. Live priority state

Le Conductor doit intégrer `STATE_LIVE_PRIORITY` comme état transversal.

Valeurs possibles :

```text
live_primary ;
live_supported ;
live_shadowed ;
live_traced ;
live_protected ;
live_replaced_forbidden.
```

Règles :

```text
didgeridoo et guimbardes ne doivent jamais être remplacés par un loop sans décision explicite ;
le système peut doubler, soutenir, prolonger ou ombrer le live ;
le système ne doit pas voler la fonction live centrale ;
les analyses live proposent, elles n’imposent pas.
```

---

# 6. Temporal policy par scène

Le Conductor ne doit pas déléguer entièrement loop / repeat / freeze à Temporal Infrastructure.

Il doit d’abord dire si l’objet temporel est autorisé dans la scène.

## Loop

Questions :

```text
quelle source est capturée ?
le loop est-il trace, double, ombre, prolongement ou remplacement ?
quelle sortie est prévue ?
quelle durée maximale ?
la source live reste-t-elle prioritaire ?
```

Interdits :

```text
loop comme banque ;
loop remplaçant didgeridoo ou guimbardes ;
loop sans sortie ;
loop déclenché parce que technologiquement possible.
```

## Repeat

Questions :

```text
repeat rythmique ou matériel ?
quantifié ou semi-libre ?
sert-il hypnose, tension, articulation ou pré-drop ?
risque-t-il de devenir effet démonstratif ?
```

## Freeze

Questions :

```text
source-based ou layer-based ?
quelle release ?
quelle durée maximale ?
qu’est-ce qui reste corporel pendant le freeze ?
quelle vue doit apparaître ?
```

Interdit central :

```text
freeze sans release.
```

---

# 7. Visualisation demandée par le Conductor

Le Conductor ne dessine pas l’interface.

Mais il doit demander les vues nécessaires au Router / système de visualisation.

Types de demandes :

```text
VIEW_MEASURE_RHYTHM ;
VIEW_LOOP_REPEAT_FREEZE ;
VIEW_PITCH_PARTIALS_MELODY ;
VIEW_SCENE_PROPORTIONS ;
VIEW_SOURCE_CONFIGURATION ;
VIEW_GUARDS_WARNINGS ;
VIEW_TOUCHED_CONTROL_CONTEXT.
```

Règles de priorité :

```text
risque critique > contrôle touché > objet temporel actif > état de scène > source configuration > vue de fond.
```

Exemples :

```text
si freeze actif → VIEW_LOOP_REPEAT_FREEZE prioritaire ;
si sub instable → VIEW_GUARDS_WARNINGS prioritaire ;
si retour au corps armé → VIEW_MEASURE_RHYTHM + VIEW_SCENE_PROPORTIONS ;
si guimbardes masquées → VIEW_SOURCE_CONFIGURATION + warning live priority ;
si pitch/partiels deviennent structurels → VIEW_PITCH_PARTIALS_MELODY.
```

---

# 8. Anti-ambient state

Le Conductor doit suivre un état anti-ambient transversal.

Valeurs possibles :

```text
clear ;
watch ;
risk ;
active_guard ;
emergency_return_required.
```

Déclencheurs typiques :

```text
halo trop long ;
freeze sans mouvement de sortie ;
field recording décoratif ;
perte du corps ;
beauté exposée sans conséquence formelle ;
reverb ou espace qui masque la fonction ;
loop qui stabilise une ambiance au lieu de transformer une trajectoire.
```

Actions possibles :

```text
réduire halo ;
réduire queue ;
retarder freeze ;
forcer release ;
promouvoir retour au corps ;
réduire système ;
réorienter vers live.
```

---

# 9. Application aux trois scènes-pivots

## 9.1 SCENE_PIVOT_CORPS_VIVANT_POLYTEXTURE

Le Conductor doit maintenir :

```text
body_relation: active
live_priority: didgeridoo + guimbardes protégés
temporal_policy: repeat rythmique autorisé, loop trace autorisé, freeze déconseillé
visualization: mesure / rythme / source configuration / warnings
exit_modes: pressure_build, pre_drop, long_tension, suspension_with_body_trace, return_to_body
```

Règle critique :

```text
polytexture peut s’ouvrir mais ne doit pas masquer les sources live centrales.
```

## 9.2 SCENE_PIVOT_TENSION_ARMEE_PRE_DROP

Le Conductor doit gérer :

```text
armement ;
préparation ;
seuil ;
retard ;
résolution ;
fausse résolution ;
annulation ;
bifurcation vers suspension.
```

Temporal policy :

```text
repeat quantifié autorisé si rythmique ;
loop courte autorisée si trace ;
freeze bref autorisé seulement avec release claire.
```

Règle critique :

```text
aucun drop automatique.
```

## 9.3 SCENE_PIVOT_SUSPENSION_MATIERE_RETOUR

Le Conductor doit maintenir :

```text
body_relation: trace or latent ;
anti_ambient_state: watch or risk ;
freeze_release_required: true ;
exit_modes: return_to_body, withdrawal, pre_drop, long_tension, transfer_to_polytexture.
```

Règle critique :

```text
la suspension doit toujours garder une sortie ou une trace corporelle.
```

---

# 10. Sorties nouvelles du Conductor

Le module doit pouvoir envoyer :

```text
scene_field_state_update ;
scene_pivot_context ;
temporal_policy_request ;
freeze_release_requirement ;
loop_live_priority_constraint ;
repeat_function_constraint ;
visualization_priority_request ;
anti_ambient_guard_state ;
live_priority_state ;
source_configuration_state ;
return_to_body_request.
```

Vers :

```text
Trajectory Engine ;
Contextual Control Router ;
Conflict / Protection Manager ;
Temporal Infrastructure ;
Object Registry ;
Pitch / Harmonic Field Manager ;
Timbre & Material Mapper.
```

---

# 11. Risques si le module n’est pas synchronisé

```text
les scènes-pivots deviennent des presets ;
loop/repeat/freeze deviennent des effets génériques ;
la visualisation ne sait pas quoi montrer ;
le Router affiche trop ou pas assez ;
les guimbardes et didgeridoo live sont traités comme sources ordinaires ;
le gong/tambour optionnels sont supposés présents ;
la suspension devient ambient ;
le pré-drop devient automatique ;
le retour au corps devient une recette de drop.
```

---

# 12. Décision actuelle

Le module `04_SCENE_PERFORMANCE_CONDUCTOR.md` reste valide.

Il faut le considérer comme :

```text
base v0.1 solide ;
à compléter par cet addendum pour les décisions 19–26.
```

Prochaine étape recommandée :

```text
créer l’addendum équivalent pour Contextual Control Router.
```

Ne pas encore créer :

```text
format final de données ;
patch ;
layout ;
mapping ;
prototype.
```
