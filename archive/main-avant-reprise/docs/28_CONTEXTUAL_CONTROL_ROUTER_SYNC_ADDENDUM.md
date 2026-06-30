# 28_CONTEXTUAL_CONTROL_ROUTER_SYNC_ADDENDUM

Version : v0.1  
Statut : addendum de synchronisation ciblé pour `docs/modules/05_CONTEXTUAL_CONTROL_ROUTER.md`. Sans layout, sans mapping matériel, sans patch, sans prototype.

## Objet

Ce document synchronise le module **Contextual Control Router** avec les décisions récentes :

```text
17_LIVE_CONTROL_REQUIREMENTS_MATRIX_REDUCED.md
18_LIVE_CONTROL_DECISION_QUESTIONS_BEFORE_LAYERS.md
19_LIVE_CONTROL_LAYERS_AND_PERFORMANCE_STATES.md
20_TEMPORAL_INFRASTRUCTURE_MEASURE_LOOP_REPEAT_FREEZE.md
21_TEMPORAL_INFRASTRUCTURE_DECISION_QUESTIONS.md
22_CONTEXTUAL_VISUALIZATION_REQUIREMENTS.md
23_SCENES_COMME_CHAMPS_OUVERTS_DE_PERFORMANCE.md
24_SCENES_PIVOTS_CHAMPS_OUVERTS_PREMIERE_SERIE.md
25_SCENES_PIVOTS_TO_MODULE_RESPONSIBILITIES_MAP.md
26_SCENE_PIVOT_MODULE_CONGRUENCE_AUDIT.md
27_SCENE_PERFORMANCE_CONDUCTOR_SYNC_ADDENDUM.md
```

Il ne remplace pas `05_CONTEXTUAL_CONTROL_ROUTER.md`.

Il ajoute ce que le Router doit savoir depuis les scènes-pivots, les objets temporels, la visualisation contextuelle, la priorité live et les guards.

---

# 1. Rappel du rôle du Router

Le Router répond à :

```text
qu’est-ce qui devient jouable maintenant ?
```

Il ne choisit pas la musique.

Il ne dessine pas l’interface.

Il ne fixe pas le mapping matériel.

Il décide :

```text
ce qui reste toujours accessible ;
ce qui devient prioritaire ;
ce qui doit être visible temporairement ;
ce qui doit être profond ;
ce qui doit être masqué ;
ce qui doit être verrouillé ;
ce qui doit devenir urgence ;
quelle vue contextuelle doit accompagner le geste.
```

---

# 2. Nouvelle distinction : macro / state / guard / routing / temporal object / view

Le Router doit distinguer plusieurs types de choses à rendre jouables ou visibles.

```text
MACRO : geste performatif continu ou semi-continu.
STATE : état musical ou fonctionnel lisible.
GUARD : protection active ou risque.
ROUTING : arbitrage de sources, rôles, objets.
TEMPORAL_OBJECT : loop, repeat, freeze, release.
VIEW : visualisation contextuelle utile.
```

Exemples :

```text
MACRO_BODY_RETURN ≠ GUARD_ANTI_AMBIENT ;
STATE_LIVE_PRIORITY ≠ SOURCE_CONFIGURATION ;
TEMPORAL_FREEZE ≠ VIEW_LOOP_REPEAT_FREEZE ;
LOOP_OBJECT ≠ material_asset ;
VIEW_MEASURE_RHYTHM ≠ contrôle musical.
```

Cette distinction empêche l’interface de mélanger gestes, informations, protections et objets temporels.

---

# 3. Entrées nouvelles à recevoir

Depuis le Conductor :

```text
scene_field_id ;
scene_pivot_id ;
central_function ;
current_state ;
opened_fields ;
live_priority_state ;
source_configuration_state ;
temporal_policy ;
anti_ambient_state ;
exit_modes ;
return_to_body_modes ;
visualization_requests.
```

Depuis Temporal Infrastructure :

```text
active_loop_objects ;
active_repeat_events ;
active_freezes ;
freeze_release_status ;
loop_source ;
repeat_function ;
quantization_state ;
cycle_position ;
measure_position.
```

Depuis Conflict / Protection Manager :

```text
risk_severity ;
emergency_promotion ;
lock_request ;
delay_request ;
cancel_request ;
anti_ambient_warning ;
live_masking_warning ;
low_mid_warning.
```

Depuis Object Registry / Live Interpreter :

```text
fixed_live_sources ;
optional_live_sources ;
active_live_objects ;
object_roles ;
protected_objects ;
analysis_confidence ;
performer_agency_level.
```

---

# 4. Priorité de visibilité synchronisée

Le Router doit appliquer une priorité générale :

```text
P0 : urgence ou protection critique ;
P1 : contrôle touché / contexte immédiat ;
P2 : objet temporel actif ;
P3 : fonction centrale de scène ;
P4 : source live prioritaire ;
P5 : trajectoire armée ou active ;
P6 : contrôle permanent ;
P7 : objet / rôle secondaire ;
P8 : profondeur technique ;
P9 : configuration hors-performance.
```

Règle :

```text
un risque critique peut promouvoir un contrôle profond en contrôle d’urgence.
```

Exemples :

```text
freeze sans release → P0 : Release / Retour corps ;
loop remplace guimbarde → P0 : Live priority / Stop loop ;
halo ambientise → P0/P1 : Réduire halo / Withdrawal ;
contrôle Pressure touché → P1 : montrer dimensions affectées, sources, risques ;
pre-drop armé → P3/P5 : Retarder / Annuler / Résoudre ;
sub instable → P0/P1 : Stabiliser sub / Low-mid safety.
```

---

# 5. Règles pour les trois scènes-pivots

## 5.1 SCENE_PIVOT_CORPS_VIVANT_POLYTEXTURE

Contrôles prioritaires :

```text
MACRO_BODY_RETURN ;
MACRO_PRESSURE ;
MACRO_IMPACT ;
MACRO_POLYTEXTURE_DENSITY ;
STATE_LIVE_PRIORITY ;
GUARD_LOW_MID_SAFETY.
```

Vues prioritaires :

```text
VIEW_MEASURE_RHYTHM ;
VIEW_SOURCE_CONFIGURATION ;
VIEW_GUARDS_WARNINGS ;
VIEW_TOUCHED_CONTROL_CONTEXT.
```

À masquer ou reléguer :

```text
halo large ;
freeze long ;
field recording décoratif ;
macro-autonomie ;
résonance profonde non demandée.
```

Urgences possibles :

```text
Réduire densité ;
Stabiliser sub ;
Protéger live ;
Réduire bas-médium ;
Retour corps.
```

## 5.2 SCENE_PIVOT_TENSION_ARMEE_PRE_DROP

Contrôles prioritaires :

```text
MACRO_LONG_TENSION ;
MACRO_PRESSURE ;
MACRO_IMPACT ;
MACRO_WITHDRAWAL ;
MACRO_BODY_RETURN ;
Retarder ;
Annuler ;
Résoudre ;
Fausse résolution.
```

Vues prioritaires :

```text
VIEW_MEASURE_RHYTHM ;
VIEW_LOOP_REPEAT_FREEZE ;
VIEW_SCENE_PROPORTIONS ;
VIEW_GUARDS_WARNINGS.
```

À masquer ou verrouiller :

```text
drop automatique ;
repeat démonstratif ;
freeze sans release ;
voice gimmick ;
gong spectaculaire non préparé.
```

Urgences possibles :

```text
Annuler ;
Retarder ;
Retour corps ;
Stabiliser sub ;
Stop repeat ;
Release freeze.
```

## 5.3 SCENE_PIVOT_SUSPENSION_MATIERE_RETOUR

Contrôles prioritaires :

```text
MACRO_WITHDRAWAL ;
MACRO_BODY_RETURN ;
MACRO_LONG_TENSION ;
SUBCTRL_CONTOUR ;
STATE_LIVE_PRIORITY ;
GUARD_ANTI_AMBIENT ;
Release freeze.
```

Vues prioritaires :

```text
VIEW_LOOP_REPEAT_FREEZE ;
VIEW_PITCH_PARTIALS_MELODY ;
VIEW_SCENE_PROPORTIONS ;
VIEW_GUARDS_WARNINGS ;
VIEW_TOUCHED_CONTROL_CONTEXT.
```

À masquer ou reléguer :

```text
densification massive ;
polytexture active non préparée ;
repeat quantifié démonstratif ;
halo permanent ;
macro-autonomie.
```

Urgences possibles :

```text
Release freeze ;
Réduire halo ;
Retour corps ;
Réduire système ;
Protéger matière ;
Protéger live.
```

---

# 6. Touched control context

Quand un contrôle est touché, le Router doit pouvoir demander une vue contextuelle courte.

Elle doit indiquer :

```text
fonction musicale du contrôle ;
scène-pivot active ;
objets affectés ;
rôles affectés ;
dimensions affectées ;
protections actives ;
risques immédiats ;
sortie possible.
```

Exemples :

```text
MACRO_PRESSURE touché : montrer pression physique / spectrale / densité / rythmique, sources actives, low-mid risk.
MACRO_WITHDRAWAL touché : montrer ce qui se retire, ce qui reste corporel, sortie prévue.
MACRO_BODY_RETURN touché : montrer points de retour, sources d’ancrage, protections live.
Release freeze touché : montrer source gelée, durée, sortie, corps restant.
```

Interdit :

```text
ouvrir une page technique complète à chaque toucher.
```

---

# 7. Objets temporels : règles Router

## Loop

Si loop actif, le Router doit montrer :

```text
source ;
rôle ;
durée ;
statut live priority ;
sortie prévue ;
risque de remplacement.
```

Contrôles possibles :

```text
Stop loop ;
Réduire loop ;
Repasser live ;
Transformer en trace ;
Désarmer capture.
```

## Repeat

Si repeat actif, montrer :

```text
fonction ;
quantification ;
source ;
risque effet démonstratif ;
relation au groove.
```

Contrôles possibles :

```text
Stop repeat ;
Raréfier ;
Réduire accent ;
Réaligner ;
Retour au corps.
```

## Freeze

Si freeze actif, montrer immédiatement :

```text
source ;
type de freeze ;
durée ;
release prévue ;
corps restant ;
anti-ambient risk.
```

Contrôle obligatoire :

```text
Release freeze.
```

---

# 8. Anti-dashboard rule

Le Router ne doit pas produire un grand tableau permanent.

Règle :

```text
montrer peu ;
montrer juste ;
montrer quand c’est utile ;
retirer quand ce n’est plus utile.
```

La visualisation doit être contextuelle, pas décorative.

```text
pas de vue globale permanente si elle distrait ;
pas de monitoring technique hors besoin ;
pas de visualisation esthétique autonome ;
pas de multiplication d’états visuels concurrents.
```

---

# 9. Sorties nouvelles du Router

Le Router doit pouvoir produire :

```text
control_visibility_state ;
control_priority_update ;
control_lock_state ;
emergency_control_promotion ;
touched_control_context_request ;
view_priority_request ;
temporal_object_control_set ;
live_priority_warning ;
anti_ambient_warning ;
source_configuration_display_request ;
return_to_body_display_request.
```

Vers :

```text
visualization layer ;
Scene / Performance Conductor ;
Conflict / Protection Manager ;
Temporal Infrastructure ;
Object Registry ;
performer-facing control layer.
```

---

# 10. Risques si le Router n’est pas synchronisé

```text
trop de contrôles visibles ;
contrôles temporels traités comme effets ;
absence de release freeze visible ;
protections cachées ;
urgence non promue ;
visualisation décorative ;
live priority invisible ;
guimbardes/didgeridoo masqués sans alerte ;
scènes-pivots devenant des presets ;
contrôles profonds promus au mauvais moment.
```

---

# 11. Décision actuelle

Le module `05_CONTEXTUAL_CONTROL_ROUTER.md` reste valide.

Il doit être lu comme :

```text
base v0.1 solide ;
à compléter par cet addendum pour les décisions 17–27.
```

Prochaine étape recommandée :

```text
mettre à jour REPO_TREE_SNAPSHOT ;
mettre à jour README ;
puis décider si l’on synchronise Conflict / Protection Manager ou si l’on revient à une passe musicale.
```

Ne pas encore créer :

```text
layout ;
mapping ;
patch ;
prototype ;
format final de données.
```
