# 19_LIVE_CONTROL_LAYERS_AND_PERFORMANCE_STATES

Version : v0.1  
Statut : organisation abstraite des couches de contrôle et états de performance. Sans interface graphique, sans Max for Live, sans mapping matériel, sans prototype.

## Objet

Ce document organise le noyau validé dans :

```text
17_LIVE_CONTROL_REQUIREMENTS_MATRIX_REDUCED.md
18_LIVE_CONTROL_DECISION_QUESTIONS_BEFORE_LAYERS.md
```

en couches de performance.

Il intègre aussi une couche d’infrastructure temporelle et une couche de visualisation contextuelle :

```text
mesure ;
tempo ;
création de loop ;
repeat ;
freeze temporel ;
visualisation des rythmes, paramètres mélodiques, proportions et contenus de scènes.
```

Ces éléments ne sont pas des ajouts décoratifs. Ils sont des conditions de pilotage live.

---

# 1. Principe général

L’interface future ne doit pas opposer :

```text
musicalité d’un côté ;
outils techniques de l’autre.
```

Elle doit permettre au musicien de piloter :

```text
fonctions musicales ;
temps ;
mesure ;
cycles ;
loops ;
répétitions ;
freeze ;
scènes ;
proportions ;
protections ;
relations live / engine / matière préparée.
```

Mais tout ne doit pas être joué au même niveau.

Il faut distinguer :

```text
macros musicales ;
états de performance ;
outils temporels ;
protections ;
routing / configuration ;
visualisations contextuelles ;
logiques backend.
```

---

# 2. Couches de performance

## LAYER_0_TEMPORAL_INFRASTRUCTURE

Rôle : gérer le temps performatif.

Ce n’est pas une couche esthétique. C’est une couche de condition de jeu.

Contient :

```text
TEMPO_STATE ;
METER_STATE ;
MEASURE_POSITION ;
LOOP_CAPTURE ;
LOOP_LENGTH ;
LOOP_COMMIT ;
REPEAT_TRIGGER ;
REPEAT_RATE ;
TEMPORAL_FREEZE ;
FREEZE_RELEASE ;
SYNC_STATE ;
QUANTIZATION_STATE.
```

Questions à résoudre plus tard :

```text
quels gestes doivent être quantifiés ?
quels gestes doivent rester libres ?
quels repeats doivent suivre la mesure ?
quels freezes doivent préserver le groove ?
quels loops doivent devenir scènes, objets ou matières ?
```

Risques :

```text
interface de looper générique ;
freeze gadget ;
repeat trop démonstratif ;
quantification qui tue le live ;
mesure trop rigide pour les sources organiques.
```

## LAYER_1_BODY_ENERGY

Rôle : piloter corps, impact, pression, retour.

Contrôles principaux :

```text
MACRO_BODY_RETURN ;
MACRO_PRESSURE ;
MACRO_IMPACT ;
STATE_BODY_FOCUS.
```

Readouts / guards liés :

```text
GUARD_LOW_MID_SAFETY ;
STATE_LIVE_PRIORITY ;
sub stability ;
impact clarity ;
body loss warning.
```

Fonction : garder l’ancrage physique de la performance.

Cette couche doit rester immédiatement accessible.

## LAYER_2_SCENE_TRAJECTORY

Rôle : piloter durée, tension, transitions, retraits, états de scène.

Contrôles principaux :

```text
MACRO_LONG_TENSION ;
MACRO_WITHDRAWAL ;
MACRO_BODY_RETURN ;
STATE_BODY_FOCUS.
```

États de scène possibles :

```text
BASE_BODY ;
BUILD_PRESSURE ;
LONG_TENSION ;
SUSPENSION ;
PRE_DROP ;
WITHDRAWAL ;
RETURN_TO_BODY ;
EXPOSED_MATERIAL.
```

Fonction : permettre au musicien de conduire la forme, pas seulement de modifier des sons.

## LAYER_3_LIVE_PRIORITY

Rôle : protéger et valoriser les sources live fixes.

Sources concernées :

```text
didgeridoo ;
guimbardes ;
gong optionnel ;
tambour optionnel.
```

Contrôles / états :

```text
STATE_LIVE_PRIORITY ;
ARBITRATE_SOURCE_CONFIGURATION ;
GUARD_LOW_MID_SAFETY ;
GUARD_ANTI_AMBIENT ;
live mask warning ;
live relation state.
```

Fonction : empêcher que les engines, samples ou matières préparées remplacent le live.

Règle :

```text
le live fixe doit être prolongé, soutenu ou transformé ;
il ne doit pas être décoré ou remplacé.
```

## LAYER_4_TEXTURE_MATERIAL_POLYTEXTURE

Rôle : piloter densité, matière, articulation et transformation timbrale.

Contrôles principaux :

```text
MACRO_POLYTEXTURE_DENSITY ;
SUBCTRL_POLYTEXTURE_ARTICULATION ;
SUBCTRL_CONTOUR ;
COND_HARMONIC_FRICTION ;
SUBCTRL_HARMONIC_DENSITY.
```

Fonctions :

```text
ouvrir / resserrer une densité articulée ;
rendre la densité lisible ;
sculpter contour ;
organiser matière par rôle ;
relier partiels, timbres, textures et sources live.
```

Risques :

```text
densité = confusion ;
banque de one-shots ;
ornementation ;
masquage des guimbardes ;
harmonic drone permanent ;
carillon décoratif ;
matière séduisante mais non fonctionnelle.
```

## LAYER_5_PROTECTIONS

Rôle : empêcher les dérives critiques.

Protections principales :

```text
GUARD_ANTI_AMBIENT ;
GUARD_LOW_MID_SAFETY ;
STATE_LIVE_PRIORITY ;
POLICY_SELECTION_MODE ;
body loss guard ;
sub stability guard ;
auto-selection guard.
```

Cette couche doit être partiellement visible, mais pas forcément jouée comme une couche expressive.

Fonction : garantir que le système reste jouable et congruent avec la techno organique.

## LAYER_6_SOURCE_CONFIGURATION

Rôle : gérer les configurations de sources disponibles.

Configuration de base :

```text
didgeridoo + guimbardes.
```

Configurations optionnelles :

```text
+ gong ;
+ tambour ;
+ gong et tambour ;
sans gong ni tambour ;
engine de compensation ;
matière préparée conditionnelle.
```

Contrôle principal :

```text
ARBITRATE_SOURCE_CONFIGURATION.
```

Règle :

```text
une absence de gong ou tambour n’est pas neutre si leur fonction est requise.
```

## LAYER_7_CONTEXTUAL_VISUALIZATION

Rôle : montrer ce qui est utile au moment utile.

Cette couche ne doit pas être décorative.

Elle doit dépendre :

```text
du contrôle touché ;
du paramètre actuellement modifié ;
de l’état de scène ;
des événements récents ;
des risques actifs ;
des sources présentes ;
des relations en tension.
```

Types de vues possibles :

```text
VIEW_MEASURE_RHYTHM ;
VIEW_LOOP_REPEAT_FREEZE ;
VIEW_PITCH_PARTIALS_MELODY ;
VIEW_SCENE_PROPORTIONS ;
VIEW_SOURCE_CONFIGURATION ;
VIEW_GUARDS_WARNINGS ;
VIEW_TOUCHED_CONTROL_CONTEXT.
```

Règle :

```text
visualiser pour décider, pas pour illustrer.
```

---

# 3. Vues contextuelles principales

## VIEW_MEASURE_RHYTHM

À montrer quand :

```text
tempo / mesure / loop / repeat sont manipulés ;
polytexture change ;
la densité rythmique évolue ;
une transition de scène approche.
```

Peut afficher :

```text
mesure courante ;
cycle ;
subdivisions ;
positions de repeat ;
longueur de loop ;
activité polytexturale ;
points de retour au corps possibles.
```

## VIEW_LOOP_REPEAT_FREEZE

À montrer quand :

```text
un loop est capturé ;
un repeat est activé ;
un freeze temporel est déclenché ;
la sortie du freeze doit être préparée.
```

Peut afficher :

```text
source capturée ;
longueur ;
état gelé / non gelé ;
mode de sortie ;
risque de perte de corps ;
compatibilité tempo / mesure.
```

## VIEW_PITCH_PARTIALS_MELODY

À montrer quand :

```text
friction harmonique ;
champ harmonique ;
partiels ;
voix ;
guimbardes ;
didgeridoo ;
métaux accordés éventuels.
```

Peut afficher :

```text
centres spectraux ;
relation sub / didgeridoo ;
frictions ;
battements ;
formants ;
éléments mélodiques ou quasi-mélodiques ;
risque de conflit harmonique.
```

Cette vue ne doit pas forcer une théorie tonale trop stricte.

## VIEW_SCENE_PROPORTIONS

À montrer quand :

```text
long tension ;
pré-drop ;
suspension ;
retour au corps ;
arrangement de scène ;
changement de densité.
```

Peut afficher :

```text
proportion corps / champ / texture / live ;
densité relative ;
présence des sources ;
état de retrait ;
contenu de scène ;
étapes de trajectoire.
```

## VIEW_SOURCE_CONFIGURATION

À montrer quand :

```text
ARBITRATE_SOURCE_CONFIGURATION est pertinent ;
gong ou tambour sont présents / absents ;
une compensation est activée ;
une matière préparée entre ;
un engine prend une fonction habituellement live.
```

Peut afficher :

```text
configuration live actuelle ;
sources centrales ;
sources optionnelles ;
compensations ;
risques de remplacement ;
auto-sélection interdite ou autorisée.
```

## VIEW_GUARDS_WARNINGS

À montrer quand :

```text
anti-ambientisation est déclenchée ;
low-mid safety détecte un risque ;
le live est masqué ;
le retour au corps est affaibli ;
une auto-sélection est interdite ;
un champ harmonique devient trop permanent.
```

Peut afficher :

```text
risque actif ;
action recommandée ;
contrôle concerné ;
possibilité de retrait ;
source responsable probable.
```

## VIEW_TOUCHED_CONTROL_CONTEXT

À montrer quand :

```text
un bouton, macro, fader, encodeur ou état est touché / sélectionné.
```

Peut afficher :

```text
fonction musicale du contrôle ;
paramètres réellement modifiés ;
protections liées ;
risques possibles ;
état de scène affecté ;
relations live / engine / matières impactées.
```

Rôle : éviter que le musicien manipule un contrôle sans comprendre ce qu’il affecte.

---

# 4. États de performance abstraits

## STATE_BASE_BODY

État : corps clair, live lisible, densité contenue.

Contrôles prioritaires :

```text
MACRO_BODY_RETURN ;
MACRO_PRESSURE ;
MACRO_IMPACT ;
STATE_LIVE_PRIORITY.
```

## STATE_BUILD_PRESSURE

État : augmentation d’énergie sans perte de corps.

Contrôles prioritaires :

```text
MACRO_PRESSURE ;
MACRO_LONG_TENSION ;
GUARD_LOW_MID_SAFETY ;
STATE_LIVE_PRIORITY.
```

## STATE_LONG_TENSION

État : attente, non-résolution, orientation longue.

Contrôles prioritaires :

```text
MACRO_LONG_TENSION ;
MACRO_WITHDRAWAL ;
MACRO_PRESSURE ;
GUARD_ANTI_AMBIENT.
```

## STATE_SUSPENSION

État : tension suspendue, corps en retrait relatif mais non perdu.

Contrôles prioritaires :

```text
MACRO_WITHDRAWAL ;
MACRO_BODY_RETURN ;
GUARD_ANTI_AMBIENT ;
COND_HARMONIC_FRICTION si validé.
```

## STATE_POLYTEXTURE_OPENING

État : densité articulée, micro-variation, interaction guimbardes.

Contrôles prioritaires :

```text
MACRO_POLYTEXTURE_DENSITY ;
SUBCTRL_POLYTEXTURE_ARTICULATION ;
STATE_LIVE_PRIORITY ;
VIEW_MEASURE_RHYTHM.
```

## STATE_PRE_DROP

État : tension orientée vers impact, retrait ou résolution.

Contrôles prioritaires :

```text
MACRO_LONG_TENSION ;
MACRO_IMPACT ;
MACRO_WITHDRAWAL ;
MACRO_BODY_RETURN.
```

## STATE_WITHDRAWAL

État : retrait d’une couche, respiration, préparation d’un retour ou d’un vide.

Contrôles prioritaires :

```text
MACRO_WITHDRAWAL ;
MACRO_BODY_RETURN ;
GUARD_ANTI_AMBIENT ;
STATE_LIVE_PRIORITY.
```

## STATE_RETURN_TO_BODY

État : réancrage physique.

Contrôles prioritaires :

```text
MACRO_BODY_RETURN ;
MACRO_IMPACT ;
MACRO_PRESSURE ;
STATE_BODY_FOCUS.
```

## STATE_EXPOSED_MATERIAL

État conditionnel : matière exposée, beauté autonome ou source fragile.

Contrôles prioritaires :

```text
SUBCTRL_CONTOUR ;
MACRO_WITHDRAWAL ;
GUARD_ANTI_AMBIENT ;
VIEW_SCENE_PROPORTIONS ;
STATE_LIVE_PRIORITY.
```

Règle : cet état doit rester rare et justifié par une scène.

---

# 5. Relations entre couches

## Corps / temps

```text
MACRO_BODY_RETURN dépend souvent de LAYER_0_TEMPORAL_INFRASTRUCTURE.
Un retour au corps peut être placé sur mesure, cycle, loop release ou sortie de freeze.
```

## Pression / visualisation

```text
MACRO_PRESSURE doit pouvoir appeler VIEW_GUARDS_WARNINGS si fatigue, volume, boue ou masquage apparaissent.
```

## Polytexture / mesure

```text
MACRO_POLYTEXTURE_DENSITY dépend fortement de VIEW_MEASURE_RHYTHM et des cycles.
```

## Freeze / anti-ambient

```text
TEMPORAL_FREEZE doit déclencher une surveillance anti-ambient.
Un freeze qui devient fond permanent doit être limité ou préparé à sortir.
```

## Repeat / corps

```text
REPEAT_TRIGGER doit être évalué selon son effet sur corps, hypnose, polytexture et tension.
Un repeat brillant mais décoratif doit être limité.
```

## Source configuration / live priority

```text
ARBITRATE_SOURCE_CONFIGURATION doit toujours informer STATE_LIVE_PRIORITY.
Si un engine compense gong ou tambour, la compensation doit rester lisible comme telle.
```

---

# 6. Ce qui reste interdit

Ne pas encore :

```text
dessiner l’interface ;
choisir contrôleur ou layout ;
mapper mesures / loops / freeze sur matériel ;
implémenter le freeze ;
implémenter le repeat ;
créer un looper générique ;
créer une visualisation décorative ;
créer un browser de samples ;
figer le nombre de vues ;
figer l’organisation graphique.
```

---

# 7. Décision actuelle

L’organisation en couches est maintenant suffisamment claire pour préparer un prochain document plus ciblé.

Mais la prochaine étape ne doit pas être l’implémentation.

Deux options sont possibles :

```text
A. préciser LAYER_0_TEMPORAL_INFRASTRUCTURE : mesure, tempo, loop, repeat, freeze ;
B. préciser LAYER_7_CONTEXTUAL_VISUALIZATION : quelles vues, quand, pourquoi, pour qui.
```

Choix recommandé :

```text
commencer par LAYER_0_TEMPORAL_INFRASTRUCTURE.
```

Raison :

```text
loop, repeat, freeze, mesure et tempo affectent directement la performance, les scènes, les repeats, les visualisations et la relation au corps.
```

---

# 8. Prochaine action recommandée

Créer :

```text
20_TEMPORAL_INFRASTRUCTURE_MEASURE_LOOP_REPEAT_FREEZE.md
```

Objectif : cadrer mesure, tempo, loop, repeat et freeze comme fonctions de performance, sans implémentation.
