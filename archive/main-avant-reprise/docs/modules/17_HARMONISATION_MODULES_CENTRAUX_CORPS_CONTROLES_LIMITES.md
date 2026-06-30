# 17_HARMONISATION_MODULES_CENTRAUX_CORPS_CONTROLES_LIMITES

Version : v0.1  
Statut : guide d’harmonisation transversal pour modules centraux. Sans patch, sans mapping, sans prototype.

## Objet

Ce document relit les modules centraux à la lumière de :

```text
40_STRATEGIE_SYSTEME_CONTROLE_LIMITES_HARMONISATION.md
41_CORPS_COMME_FONCTION_COMPOSEE_ET_SITUEE.md
42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md
43_HARMONISATION_CONTROLES_15_22.md
17A_HARMONISATION_MACROS_CORPS_AMPLITUDES_LIMITES.md
19A_HARMONISATION_ETATS_CORPS_LIMITES_SORTIES.md
22A_HARMONISATION_VISUALISATION_AMPLITUDES_LIMITES.md
```

Modules concernés :

```text
01_OBJECT_REGISTRY.md
02_TRAJECTORY_ENGINE.md
04_SCENE_PERFORMANCE_CONDUCTOR.md
05_CONTEXTUAL_CONTROL_ROUTER.md
07_CONFLICT_PROTECTION_MANAGER.md
09_PITCH_HARMONIC_FIELD_MANAGER.md
11_TIMBRE_MATERIAL_MAPPER.md
16_SOURCE_NEEDS_ASSET_DATABASE_PROTOCOL.md
```

Ce document ne remplace aucun module.  
Il précise comment les modules doivent faire circuler :

```text
corps comme fonction composée ;
amplitudes de contrôle ;
zones de bord ;
risques visibles ;
sorties ;
override humain ;
statuts documentaires et source_needs conditionnels.
```

---

# 1. Principe transversal

Les modules ne doivent pas transformer la musique en système fermé.

Ils doivent organiser la capacité de Yohan à :

```text
jouer efficacement son style ;
sélectionner les dimensions pertinentes ;
faire varier les paramètres avec des amplitudes musicales ;
préserver les sources live centrales ;
flirter avec les limites ;
franchir certaines limites sous contrôle ;
préserver des sorties ;
garder l’override humain.
```

Règle :

```text
un module ne doit pas décider seul ce qui relève du goût, du risque fertile ou du dépassement assumé.
```

---

# 2. Données transversales à faire circuler

Chaque module qui manipule des scènes, objets, contrôles, trajectoires ou risques devrait pouvoir transmettre ou recevoir :

```text
function_id ;
body_subfunction ;
source_carrier ;
control_amplitude_zone ;
edge_zone_status ;
risk_profile ;
output_or_exit_mode ;
override_status ;
live_priority_state ;
source_configuration_state ;
provenance_level.
```

Définitions minimales :

```text
body_subfunction:
- corps-pression ;
- corps-impact ;
- corps-pulsation ;
- corps-geste ;
- corps-ancrage ;
- corps-attente ;
- corps-hypnose ;
- corps-retour ;
- corps-limite.

control_amplitude_zone:
- safe ;
- expressive ;
- edge ;
- danger ;
- override.

provenance_level:
- acquis stylistique ;
- analyse phénoménale ;
- analyse extérieure approuvée ;
- donnée instrumentale ;
- dérivé opératoire ;
- hypothèse conditionnelle ;
- brouillon pratique.
```

---

# 3. Object Registry

## 3.1 Rôle actuel à préserver

L’Object Registry ne doit pas devenir une banque.

Il doit rester :

```text
mémoire des capacités, rôles, risques, conditions et relations des objets.
```

## 3.2 Harmonisation nécessaire

Chaque objet ou source importante devrait préciser :

```text
quelles sous-fonctions du corps il peut porter ;
quelles amplitudes il supporte ;
quelles zones de bord il peut approcher ;
quelles sorties il permet ;
quel override est autorisable ;
quel niveau de provenance justifie son rôle.
```

Exemples :

```text
didgeridoo:
body_subfunctions: corps-geste, corps-pression, corps-ancrage, corps-attente ;
edge_zones: sub masking, drone static, exotic color ;
outputs: redevenir sol, retrait, pression, trace corporelle.

guimbardes:
body_subfunctions: corps-geste, corps-pulsation, corps-hypnose, corps-attente ;
edge_zones: fatigue aiguë, gimmick bouche, repeat démonstratif ;
outputs: micro-pulse, trace, seuil, raréfaction.
```

## 3.3 À éviter

```text
classer les objets seulement par famille instrumentale ;
confondre source, objet, rôle, trace et temporal_object ;
faire d’un objet une fonction permanente ;
archiver les risques sans indiquer les sorties.
```

---

# 4. Trajectory Engine

## 4.1 Rôle actuel à préserver

Le Trajectory Engine ne doit pas devenir une automation.

Il doit représenter :

```text
transformations musicales situées ;
phases ;
bifurcations ;
retards ;
annulations ;
retours ;
transferts ;
post-traces.
```

## 4.2 Harmonisation nécessaire

Chaque trajectoire devrait porter :

```text
fonction dominante ;
sous-fonction du corps concernée ;
amplitude ou intensité de transformation ;
zone de bord potentielle ;
condition de sortie ;
override possible ;
risque principal ;
provenance.
```

Exemple :

```text
PRE_DROP_NATURALISE:
body_subfunction: corps-attente / corps-impact potentiel / corps-retour différé ;
amplitude: tension sûre → bord drop attendu → override prolongé ;
edge_zone: drop automatique ;
outputs: résolution, fausse résolution, annulation, suspension, retour au corps.
```

## 4.3 À éviter

```text
trajectoire comme preset ;
pré-drop automatique ;
suspension sans sortie ;
retour au corps comme recette ;
loop/repeat/freeze comme effets non situés.
```

---

# 5. Scene / Performance Conductor

## 5.1 Rôle actuel à préserver

Le Conductor ne compose pas à la place du musicien.

Il arbitre :

```text
possibilités ;
états ;
scènes ;
trajectoires ;
sources ;
risques ;
sorties ;
priorité live.
```

## 5.2 Harmonisation nécessaire

Le Conductor doit pouvoir savoir :

```text
quelle fonction domine ;
quelle sous-fonction du corps est active ;
quelle zone d’amplitude est atteinte ;
quelle limite peut être flirtée ;
quelle sortie reste ouverte ;
si l’override est possible ;
si une source live est menacée ;
si une source conditionnelle est supposée à tort.
```

## 5.3 Nouvelles décisions à porter

```text
une scène peut être autorisée à entrer en zone de bord ;
une limite peut être maintenue sous override ;
un guard peut signaler sans bloquer ;
un retour au corps peut être différé ;
un drop peut rester possible sans être armé automatiquement.
```

## 5.4 À éviter

```text
Conductor trop autoritaire ;
Conductor qui bloque tous les risques ;
Conductor qui autorise tout sans sortie ;
Conductor qui convertit les scènes-pivots en presets.
```

---

# 6. Contextual Control Router

## 6.1 Rôle actuel à préserver

Le Router répond à :

```text
qu’est-ce qui devient jouable maintenant ?
```

Il ne dessine pas l’interface et ne choisit pas la musique.

## 6.2 Harmonisation nécessaire

Le Router doit pouvoir router :

```text
contrôles performables ;
amplitudes ;
zones de bord ;
contrôles de sortie ;
contrôles d’urgence ;
contrôles d’override ;
visualisation contextuelle minimale.
```

Quand un contrôle est touché, le Router doit pouvoir demander :

```text
fonction musicale ;
sous-fonction du corps ;
amplitude actuelle ;
zone de risque ;
sortie ;
override possible.
```

## 6.3 À éviter

```text
surcharge de contrôles ;
dashboard permanent ;
contrôles techniques promus trop tôt ;
risques cachés ;
override impossible alors qu’une limite musicale pourrait être féconde.
```

---

# 7. Conflict / Protection Manager

## 7.1 Rôle actuel à préserver

Le Conflict Manager doit :

```text
protéger sans figer ;
réduire sans neutraliser ;
retarder plutôt qu’annuler ;
laisser vivre un conflit s’il est lisible, situé, réversible et musicalement utile.
```

## 7.2 Harmonisation nécessaire

Il doit distinguer :

```text
risque technique ;
risque esthétique ;
risque de perte de corps ;
risque de perte live ;
zone de bord fertile ;
danger réel ;
override possible ;
override impossible.
```

Un conflit n’est pas automatiquement une erreur.

```text
une tension de bord peut être fertile ;
un masquage temporaire peut être voulu ;
une surcharge peut produire de l’impact ;
un quasi-décor peut être utilisé s’il reste une sortie.
```

## 7.3 À bloquer strictement

```text
feedback dangereux ;
freeze sans release ;
loop remplaçant live sans décision ;
source optionnelle supposée présente alors qu’elle est absente ;
absence totale de sortie ;
confusion de statut source_need / asset / prototype.
```

---

# 8. Pitch / Harmonic Field Manager

## 8.1 Rôle actuel à préserver

Le Pitch / Harmonic Field Manager organise :

```text
pitch centers ;
partials ;
formants ;
microtensions ;
battements ;
sub_center ;
felt pitch ;
relations harmoniques.
```

## 8.2 Harmonisation nécessaire

Il doit aussi indiquer :

```text
quand une relation de pitch est zone sûre ;
quand elle devient friction expressive ;
quand elle entre en conflit ;
quand elle est fertile ;
quand elle brouille le corps-ancrage ;
quand override est acceptable.
```

Exemple :

```text
didgeridoo / sub:
relation stable = corps-ancrage ;
friction légère = corps-attente / tension ;
conflit fort = risque de flou ;
override = surcharge ou battement assumé avec sortie.
```

---

# 9. Timbre / Material Mapper

## 9.1 Rôle actuel à préserver

Le Timbre / Material Mapper décide comment une fonction peut être portée par une matière.

Il ne choisit pas un son parce qu’il est beau.

## 9.2 Harmonisation nécessaire

Chaque matériau doit être évalué selon :

```text
fonction ;
corps concerné ;
amplitude ;
zone de bord ;
risque de décor ;
risque de cliché ;
relation au live ;
sortie ou retrait possible.
```

Exemple :

```text
field recording:
fonction possible: lieu, profondeur, mémoire ;
zone sûre: espace fonctionnel ;
zone de bord: quasi-paysage ;
danger: décor ambient/documentaire ;
override: lieu assumé avec corps ou sortie claire.
```

---

# 10. Source Needs / Asset Database Protocol

## 10.1 Rôle actuel à préserver

Le protocole `16` évite les confusions :

```text
source_need ≠ material_asset ;
material_asset_schema ≠ asset ;
function_test ≠ module ;
engine_sketch ≠ implémentation.
```

## 10.2 Harmonisation nécessaire

Les futurs besoins de source ou asset doivent préciser :

```text
quelle fonction ;
quelle sous-fonction du corps si pertinente ;
quelle amplitude ;
quelle zone de bord ;
quelle sortie ;
quelle nécessité réelle ;
quel niveau de provenance.
```

Une source conditionnelle ne doit pas être activée seulement parce qu’elle pourrait être belle.

Elle doit être activée parce qu’elle porte :

```text
une fonction non couverte ;
un risque assumé ;
une limite jouable ;
ou une sortie musicale nécessaire.
```

---

# 11. Décision actuelle

Les modules centraux restent valides.

Ce document ajoute une grille commune :

```text
corps composé ;
amplitude ;
zone de bord ;
sortie ;
override ;
provenance.
```

Prochaine étape recommandée :

```text
créer, si nécessaire, des addenda individuels pour :
05_CONTEXTUAL_CONTROL_ROUTER ;
07_CONFLICT_PROTECTION_MANAGER ;
04_SCENE_PERFORMANCE_CONDUCTOR.
```

Ne pas encore créer :

```text
patch ;
layout ;
mapping ;
prototype ;
asset réel.
```
