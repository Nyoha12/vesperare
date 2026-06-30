# 23_SCENES_COMME_CHAMPS_OUVERTS_DE_PERFORMANCE

Version : v0.1  
Statut : clarification opératoire des scènes comme champs ouverts. Sans interface graphique, sans mapping, sans Max for Live, sans prototype.

## Objet

Ce document précise l’idée de scène comme **champ ouvert de performance**.

Il ne remplace pas :

```text
08_PERFORMANCE_SCENES_TRAJECTOIRES_OBJETS.md
09_FICHES_MODELES_OBJETS_TRAJECTOIRES_SCENES.md
19_LIVE_CONTROL_LAYERS_AND_PERFORMANCE_STATES.md
20_TEMPORAL_INFRASTRUCTURE_MEASURE_LOOP_REPEAT_FREEZE.md
22_CONTEXTUAL_VISUALIZATION_REQUIREMENTS.md
```

Il les relit ensemble.

But : éviter que les scènes deviennent :

```text
presets fermés ;
morceaux figés ;
clips ;
catégories exclusives ;
ambiances séparées ;
modes d’interface isolés.
```

Une scène doit être :

```text
un champ orienté ;
un ensemble de relations ;
un espace de bifurcations ;
un régime de cohérence ;
un espace de jeu pour objets, rôles, trajectoires, sources, temps, contrôles et protections.
```

---

# 1. Principe central

Formule :

```text
scène = fonction centrale + ouvertures + trajectoires + sources + contrôles + temps + protections + sorties possibles
```

Une scène doit avoir une fonction claire.

Mais elle ne doit jamais fermer les autres possibilités.

Elle doit permettre :

```text
plusieurs trajectoires ;
plusieurs rôles d’objets ;
plusieurs niveaux d’implication ;
plusieurs bifurcations ;
plusieurs états voisins ;
plusieurs retours possibles ;
plusieurs degrés d’autonomie.
```

Mais elle doit aussi empêcher :

```text
tout en même temps ;
confusion ;
perte du corps ;
accumulation sans fonction ;
ambientisation ;
remplacement du live ;
effets reconnaissables non nécessaires ;
interface trop large.
```

Principe court :

```text
ouvrir sans diluer ;
structurer sans fermer.
```

---

# 2. Congruence avec les documents existants

## 2.1 Avec `08_PERFORMANCE_SCENES_TRAJECTOIRES_OBJETS.md`

Le document 08 pose déjà qu’une scène :

```text
programme des situations performatives ;
définit des états ou familles d’états ;
active des objets ;
autorise des rôles ;
arme des événements ;
présente certains contrôles ;
garde des bifurcations possibles ;
active des garde-fous.
```

Donc l’idée de champ ouvert n’ajoute pas une nouvelle théorie.

Elle explicite ce qui était déjà implicite :

```text
une scène programme des relations, pas seulement des objets actifs.
```

## 2.2 Avec `09_FICHES_MODELES_OBJETS_TRAJECTOIRES_SCENES.md`

Le document 09 montre déjà que chaque objet peut changer de rôle selon scène et trajectoire.

Exemples compatibles :

```text
gong = impact, halo, champ de partiels, résolution, beauté autonome ;
voix = signal, matière, cri, halo, fragment ;
sub = fondation, trace, tension, résolution ;
polytexture = densité, contrepoint, propulsion, raréfaction ;
didgeridoo = sub vivant, formants, pression, trace corporelle.
```

Donc une scène ouverte doit permettre ces changements de rôle sans perdre la fonction centrale.

## 2.3 Avec `19_LIVE_CONTROL_LAYERS_AND_PERFORMANCE_STATES.md`

Les couches de contrôle ne deviennent pertinentes que si elles sont rattachées à des champs de scène.

Une scène ouverte doit dire :

```text
quels contrôles sont prioritaires ;
quels contrôles restent accessibles ;
quelles protections sont actives ;
quelle visualisation est pertinente ;
quels objets temporels sont autorisés.
```

## 2.4 Avec `20` et `21` sur l’infrastructure temporelle

Loop, repeat et freeze doivent être intégrés à la scène comme fonctions.

Ils ne doivent pas être des effets génériques.

Une scène doit préciser :

```text
si loop est autorisé ;
si repeat est quantifié ou libre ;
si freeze est source-based, layer-based ou interdit ;
quelle sortie temporelle est nécessaire ;
comment éviter le remplacement du live.
```

## 2.5 Avec `22_CONTEXTUAL_VISUALIZATION_REQUIREMENTS.md`

La visualisation doit dépendre de la scène.

Une scène ouverte doit donc indiquer :

```text
quelles vues peuvent devenir utiles ;
ce qui doit apparaître quand un contrôle est touché ;
quels risques doivent être visibles ;
quels objets / rôles / trajectoires doivent être lisibles.
```

---

# 3. Structure d’un champ de scène

Chaque champ de scène devrait être décrit avec les champs suivants :

```text
scene_field_id ;
central_function ;
state_family ;
techno_functions_preserved ;
primary_sources ;
optional_sources ;
object_roles ;
global_trajectories ;
local_trajectories ;
operations_available ;
temporal_affordances ;
priority_controls ;
contextual_controls ;
visualization_needs ;
armed_events ;
possible_bifurcations ;
required_guards ;
forbidden_drifts ;
exit_modes ;
return_to_body_modes.
```

Note de statut : les champs `priority_controls`, `temporal_affordances` et `return_to_body_modes` ne stabilisent pas des macros, objets temporels ou retours définitifs. Ils nomment ce qui doit rester disponible ou lisible dans une scène. En particulier, `MACRO_BODY_RETURN` reste un raccourci pour plusieurs modes de sortie ; `MACRO_PRESSURE` reste subdivisible ; loop / repeat / freeze restent des moyens temporels attachés à une fonction de scène et à une sortie, pas des synonymes de répétition non redondante ou d’hypnose active.

Cette fiche ne doit pas être un preset.

Elle doit être une matrice de jeu.

---

# 4. Champs de scène initiaux

Ces champs ne sont pas des morceaux.

Ils sont des zones de performance ouvertes.

## 4.1 SCENE_FIELD_BASE_BODY

Fonction centrale : établir ou rétablir le corps.

Sources privilégiées :

```text
didgeridoo ;
guimbardes ;
sub ;
impact minimal ;
tambour si présent.
```

Ouvertures possibles :

```text
pression ;
polytexture ;
pré-drop ;
long tension ;
retour après suspension ;
loop temporaire comme trace.
```

Contrôles prioritaires :

```text
MACRO_BODY_RETURN ;
MACRO_PRESSURE ;
MACRO_IMPACT ;
STATE_LIVE_PRIORITY ;
GUARD_LOW_MID_SAFETY.
```

Interdits :

```text
halo permanent ;
remplacement du live ;
loop comme clip principal ;
sub spectaculaire sans fonction.
```

## 4.2 SCENE_FIELD_PRESSURE_BUILD

Fonction centrale : construire pression et énergie sans perdre lisibilité.

Ouvertures possibles :

```text
impact ;
pré-drop ;
polytexture ;
repeat rythmique ;
long tension ;
retour au corps.
```

Contrôles prioritaires :

```text
MACRO_PRESSURE ;
MACRO_IMPACT ;
MACRO_LONG_TENSION ;
GUARD_LOW_MID_SAFETY ;
VIEW_GUARDS_WARNINGS.
```

Interdits :

```text
pression = volume ;
saturation globale ;
boue bas-médium ;
perte du didgeridoo ;
fatigue spectaculaire.
```

## 4.3 SCENE_FIELD_POLYTEXTURE_BODY

Fonction centrale : densité articulée, lisible et corporelle.

Sources privilégiées :

```text
guimbardes ;
percussions ;
tambour si présent ;
objets courts ;
repeats contrôlés.
```

Ouvertures possibles :

```text
hypnose ;
pression rythmique ;
pré-drop ;
réalignement ;
raréfaction ;
réponse au live.
```

Contrôles prioritaires :

```text
MACRO_POLYTEXTURE_DENSITY ;
SUBCTRL_POLYTEXTURE_ARTICULATION ;
VIEW_MEASURE_RHYTHM ;
STATE_LIVE_PRIORITY.
```

Interdits :

```text
virtuosité décorative ;
confusion ;
randomisation trop visible ;
masquage des guimbardes live.
```

## 4.4 SCENE_FIELD_LONG_TENSION

Fonction centrale : attente, non-résolution, tension longue.

Ouvertures possibles :

```text
suspension ;
pré-drop ;
freeze court ;
retrait ;
beauté exposée ;
retour au corps.
```

Contrôles prioritaires :

```text
MACRO_LONG_TENSION ;
MACRO_WITHDRAWAL ;
MACRO_PRESSURE ;
GUARD_ANTI_AMBIENT ;
VIEW_SCENE_PROPORTIONS.
```

Interdits :

```text
drone automatique ;
ambientisation ;
remplissage ;
absence de sortie.
```

## 4.5 SCENE_FIELD_PRE_DROP

Fonction centrale : armer une résolution sans l’imposer.

Ouvertures possibles :

```text
drop rare ;
annulation ;
fausse résolution ;
retour au corps ;
suspension ;
impact gong ;
impact sub ;
voix armée.
```

Contrôles prioritaires :

```text
MACRO_LONG_TENSION ;
MACRO_IMPACT ;
MACRO_WITHDRAWAL ;
MACRO_BODY_RETURN ;
VIEW_MEASURE_RHYTHM.
```

Interdits :

```text
drop automatique ;
effet de style identifiable ;
repeat spectaculaire gratuit ;
résolution non préparée.
```

## 4.6 SCENE_FIELD_SUSPENSION_EXPANSION

Fonction centrale : suspendre, ouvrir, exposer sans dissoudre le corps.

Sources possibles :

```text
didgeridoo comme trace ;
gong ;
halo ;
voix ;
partiels ;
field recording conditionnel ;
freeze source-based ou layer-based.
```

Ouvertures possibles :

```text
beauty exposed ;
champ harmonique ;
retrait ;
retour au corps ;
pré-drop ;
stabilisation.
```

Contrôles prioritaires :

```text
MACRO_WITHDRAWAL ;
MACRO_BODY_RETURN ;
GUARD_ANTI_AMBIENT ;
VIEW_PITCH_PARTIALS_MELODY ;
VIEW_SCENE_PROPORTIONS.
```

Interdits :

```text
freeze sans release ;
halo permanent ;
perte du corps ;
champ harmonique décoratif ;
ambientisation.
```

## 4.7 SCENE_FIELD_WITHDRAWAL

Fonction centrale : retirer, respirer, faire place, révéler.

Ouvertures possibles :

```text
retour au corps ;
exposition de matière ;
suspension ;
pré-drop ;
silence relatif ;
réorientation.
```

Contrôles prioritaires :

```text
MACRO_WITHDRAWAL ;
MACRO_BODY_RETURN ;
GUARD_ANTI_AMBIENT ;
STATE_LIVE_PRIORITY.
```

Interdits :

```text
simple mute technique ;
perte de trajectoire ;
fade infini ;
trou sans intention.
```

## 4.8 SCENE_FIELD_RETURN_TO_BODY

Fonction centrale : réincorporer, stabiliser, réancrer.

Ouvertures possibles :

```text
impact ;
sub stabilisé ;
polytexture ;
reprise live ;
post-résonance ;
cycle suivant.
```

Contrôles prioritaires :

```text
MACRO_BODY_RETURN ;
MACRO_IMPACT ;
MACRO_PRESSURE ;
STATE_BODY_FOCUS ;
STATE_LIVE_PRIORITY.
```

Interdits :

```text
retour mécanique ;
drop standard ;
écrasement des tensions fines ;
sub trop spectaculaire.
```

## 4.9 SCENE_FIELD_EXPOSED_MATERIAL

Fonction centrale : exposer une matière sans la laisser devenir décor autonome.

Sources possibles :

```text
gong ;
voix ;
halo ;
field recording conditionnel ;
freeze source-based ;
partiels ;
objet rare.
```

Ouvertures possibles :

```text
retour au corps ;
withdrawal ;
long tension ;
suspension ;
transfert vers autre objet.
```

Contrôles prioritaires :

```text
SUBCTRL_CONTOUR ;
MACRO_WITHDRAWAL ;
GUARD_ANTI_AMBIENT ;
VIEW_SCENE_PROPORTIONS ;
STATE_LIVE_PRIORITY.
```

Interdits :

```text
beauté qui coupe la forme ;
source trop identifiable ;
objet fascinant mais non fonctionnel ;
exposition sans retrait.
```

---

# 5. Règles de transition

Une scène peut ouvrir vers plusieurs autres scènes, mais pas n’importe comment.

Chaque transition doit préciser :

```text
opération dominante ;
source ou rôle pivot ;
condition temporelle ;
contrôle principal ;
protection active ;
vue utile ;
possibilité d’annulation.
```

Exemples :

```text
BASE_BODY → PRESSURE_BUILD
opération: intensifier ;
pivot: sub / didgeridoo ;
contrôle: MACRO_PRESSURE ;
protection: GUARD_LOW_MID_SAFETY.

LONG_TENSION → PRE_DROP
opération: armer ;
pivot: sub / impact / gong / voix ;
contrôle: MACRO_LONG_TENSION ;
vue: VIEW_MEASURE_RHYTHM.

SUSPENSION_EXPANSION → RETURN_TO_BODY
opération: réincorporer ;
pivot: sub / didgeridoo / impact ;
contrôle: MACRO_BODY_RETURN ;
protection: GUARD_ANTI_AMBIENT.
```

---

# 6. Règles d’ouverture

Une scène ouverte doit toujours garder :

```text
une fonction centrale ;
un état de cohérence ;
des ouvertures ;
des bifurcations ;
des interdits ;
des protections ;
une sortie possible ;
un lien au corps ou à son retrait explicite.
```

Une scène ouverte ne doit pas devenir :

```text
un mode où tout est possible ;
un preset avec toutes les sources ;
une ambiance ;
un patch complet ;
un arrangement figé ;
un espace sans garde-fous.
```

---

# 7. Conséquence pour le reste du système

Les futurs modules devront respecter cette logique.

## Scene / Performance Conductor

Doit gérer :

```text
scene_field_id ;
état actif ;
trajectoires actives ;
transitions autorisées ;
événements armés ;
bifurcations ;
protections.
```

## Contextual Control Router

Doit afficher les contrôles selon :

```text
scène ;
état ;
trajectoire ;
phase ;
objet prioritaire ;
rôle ;
urgence ;
vues nécessaires.
```

## Conflict / Protection Manager

Doit protéger :

```text
corps ;
sub ;
live priority ;
anti-ambient ;
low-mid ;
retour au corps ;
sources centrales.
```

## Temporal Infrastructure

Doit servir les scènes, pas fonctionner comme looper autonome.

```text
loop / repeat / freeze doivent être attachés à une fonction de scène et à une sortie.
```

---

# 8. Décision actuelle

Cette clarification est congruente avec les documents existants.

Elle ne crée pas un nouveau système concurrent.

Elle transforme une intuition importante en règle opératoire :

```text
les scènes doivent maximiser les ouvertures possibles,
mais uniquement à partir d’un noyau fonctionnel clair,
de relations programmables,
de transitions contrôlées,
et de protections explicites.
```

Prochaine étape recommandée :

```text
ne pas créer tout de suite plus de scènes ;
choisir 2 ou 3 scènes-pivots et les remplir avec la fiche de champ de scène ;
ou relier cette logique aux modules Scene Conductor / Contextual Control Router.
```
