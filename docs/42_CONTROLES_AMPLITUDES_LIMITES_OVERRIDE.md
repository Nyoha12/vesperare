# 42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE

Version : v0.1  
Statut : fiche de consolidation stratégique pour contrôle live, amplitudes, limites et override. Sans patch, sans mapping, sans prototype.

## Objet

Ce document consolide la logique de contrôle dans Vesperare.

Il ne définit pas un layout, un mapping matériel ou une interface finale.

Il précise comment penser les contrôles comme :

```text
sélection ;
organisation ;
amplitude ;
contexte ;
risque ;
sortie ;
override.
```

Il complète :

```text
15_LIVE_CONTROL_REQUIREMENTS_MATRIX.md
16_LIVE_CONTROL_MATRIX_PERFORMABILITY_AUDIT.md
17_LIVE_CONTROL_REQUIREMENTS_MATRIX_REDUCED.md
18_LIVE_CONTROL_DECISION_QUESTIONS_BEFORE_LAYERS.md
19_LIVE_CONTROL_LAYERS_AND_PERFORMANCE_STATES.md
22_CONTEXTUAL_VISUALIZATION_REQUIREMENTS.md
28_CONTEXTUAL_CONTROL_ROUTER_SYNC_ADDENDUM.md
29_CONFLICT_PROTECTION_MANAGER_SYNC_ADDENDUM.md
40_STRATEGIE_SYSTEME_CONTROLE_LIMITES_HARMONISATION.md
41_CORPS_COMME_FONCTION_COMPOSEE_ET_SITUEE.md
```

---

# 1. Définition directrice

Un contrôle dans Vesperare n’est pas un paramètre technique exposé directement.

Définition :

```text
contrôle = accès performatif organisé à une fonction musicale,
avec amplitude calibrée,
risques lisibles,
sorties disponibles,
et override humain possible.
```

Le système ne doit pas faire la musique à la place de Yohan.

Il doit :

```text
sélectionner les dimensions réellement utiles ;
les rendre jouables au bon moment ;
calibrer leurs plages d’action ;
rendre visibles les risques de bord ;
préserver le live ;
permettre des dépassements assumés ;
proposer des sorties ;
laisser la décision finale au musicien.
```

---

# 2. Pourquoi organiser les contrôles

Le projet comporte beaucoup de dimensions :

```text
corps ;
pression ;
impact ;
hypnose ;
répétition ;
tension ;
retour ;
polytexture ;
halo ;
pitch center ;
partiels ;
source live ;
objets temporels ;
risques ;
limites ;
sorties.
```

Il ne faut pas les rendre toutes visibles ou manipulables au même niveau.

Le système doit augmenter l’efficacité musicale en faisant :

```text
moins de gestion ;
plus de gestes pertinents ;
moins d’écran mental ;
plus de relation directe au son ;
moins de paramètres décoratifs ;
plus de contrôle sur les fonctions centrales.
```

---

# 3. Types de contrôle

## 3.1 Macro performative

Contrôle large, jouable, sensible.

Exemples :

```text
Pressure ;
Body Return ;
Withdrawal ;
Long Tension ;
Polytexture Density ;
Impact ;
Suspension ;
Live Priority.
```

Une macro ne doit pas cacher ses conséquences.

Elle doit pouvoir afficher :

```text
sources affectées ;
rôles affectés ;
amplitude actuelle ;
risque de bord ;
sorties possibles.
```

## 3.2 Sous-contrôle

Contrôle plus spécifique, souvent contextuel.

```text
beating_rate ;
formant_focus ;
high_safety ;
low_mid_safety ;
sub_relation ;
freeze_release ;
repeat_density ;
loop_trace_amount ;
halo_tail ;
partial_density.
```

## 3.3 Guard / limite visible

Un guard ne doit pas seulement bloquer.

Il doit dire :

```text
quelle limite est proche ;
ce qui est menacé ;
quelle sortie existe ;
si l’override est possible ;
ce qui sera perdu si on continue.
```

## 3.4 Override

L’override est une décision humaine assumée de franchir ou prolonger une zone de risque.

Il ne doit pas être confondu avec une erreur.

```text
override = continuer malgré le warning,
parce que le risque produit un impact musical voulu.
```

---

# 4. Amplitudes de contrôle

Chaque contrôle important doit avoir des plages musicales.

## 4.1 Amplitude sûre

```text
la fonction est claire ;
le risque est faible ;
la source reste lisible ;
le système reste dans son cadre habituel.
```

## 4.2 Amplitude expressive

```text
la fonction se renforce ;
la tension augmente ;
la densité devient plus fertile ;
la pression devient plus physique ;
le geste reste maîtrisé.
```

## 4.3 Amplitude de bord

```text
la fonction gagne en impact mais approche une limite ;
le système doit rendre cette limite perceptible ;
le musicien peut encore revenir facilement.
```

## 4.4 Amplitude dangereuse

```text
une fonction centrale est menacée ;
le live peut être masqué ;
le corps peut disparaître ;
la sortie peut devenir floue ;
le décor peut remplacer la forme.
```

## 4.5 Amplitude override

```text
le danger est visible ;
le musicien choisit de rester ou pousser plus loin ;
le système ne bloque pas immédiatement ;
il maintient cependant une sortie, un retour ou une coupure possible.
```

---

# 5. Exemples par contrôle

## 5.1 Pressure

```text
sûr: pression lisible, corps présent ;
expressif: pression plus dense, sub/didgeridoo renforcés ;
bord: low-mid très chargé mais encore lisible ;
dangereux: sub masque didgeridoo, fatigue, perte de finesse ;
override: Yohan maintient la surcharge pour impact, avec warning et possibilité de retrait.
```

## 5.2 Body Return

```text
sûr: retour préparé, sub ou geste live revient ;
expressif: retour plus net, impact ou ancrage plus fort ;
bord: retour très abrupt ou très retardé ;
dangereux: drop automatique, retour-recette, rupture arbitraire ;
override: retour brutal assumé comme coupure formelle.
```

## 5.3 Polytexture Density

```text
sûr: articulation claire ;
expressif: densité fertile ;
bord: les couches frôlent la confusion ;
dangereux: guimbardes masquées, live perdu, complexité non lisible ;
override: chaos contrôlé temporaire, avec sortie vers raréfaction ou retour.
```

## 5.4 Long Tension / Pre-drop

```text
sûr: tension lisible, plusieurs sorties ;
expressif: attente plus forte, seuil plus chargé ;
bord: drop presque attendu ;
dangereux: recette de build-up, attente statique ;
override: prolonger au-delà de l’attente attendue pour frustrer ou bifurquer.
```

## 5.5 Suspension / Halo

```text
sûr: suspension active, corps latent ;
expressif: espace plus large, matière plus exposée ;
bord: quasi-ambient mais sortie encore lisible ;
dangereux: paysage, halo permanent, beauté sans conséquence ;
override: rester dans la zone ambient consciemment avec trace corporelle et sortie prévue.
```

## 5.6 Repeat

```text
sûr: articulation ou hypnose ;
expressif: tension rythmique plus forte ;
bord: effet identifiable mais encore fonctionnel ;
dangereux: stutter démonstratif, rigidification du live ;
override: repeat très marqué assumé puis raréfié ou coupé.
```

## 5.7 Loop

```text
sûr: trace, shadow ou double ;
expressif: loop rend la mémoire du live plus forte ;
bord: loop commence à prendre la fonction du geste ;
dangereux: loop remplace didgeridoo ou guimbardes ;
override: remplacement temporaire explicitement assumé, avec retour live prévu.
```

## 5.8 Freeze

```text
sûr: gel bref avec release claire ;
expressif: matière intensifiée ;
bord: gel proche du drone ;
dangereux: freeze-drone, stase, perte du corps ;
override: drone temporaire assumé avec warning, release et retour au corps disponibles.
```

---

# 6. Limites comme zones jouables

Les limites doivent être intégrées dans la conception du système.

Elles ne doivent pas être seulement empêchées.

Exemples de limites jouables :

```text
presque ambient ;
presque drop ;
presque loop-remplacement ;
presque freeze-drone ;
presque saturation ;
presque chaos polytextural ;
presque rituel gong ;
presque pathos voix/cordes ;
presque sub punitif.
```

Ces zones sont importantes parce qu’elles peuvent produire plus d’impact que la zone sûre.

Mais elles exigent :

```text
visibilité ;
conscience ;
durée maîtrisée ;
sortie ;
retour ;
possibilité de retrait ;
non-remplacement involontaire du live.
```

---

# 7. Rôle du système dans les zones de bord

Quand une zone de bord est atteinte, le système ne doit pas nécessairement bloquer.

Il doit d’abord :

```text
nommer le risque ;
montrer ce qui est menacé ;
montrer ce qui est gagné ;
proposer une sortie ;
préserver un contrôle d’urgence ;
laisser le musicien confirmer ou sortir.
```

Exemple :

```text
warning: anti-ambient risk
menacé: corps-retour, live agency, sortie
possible_gain: suspension plus intense, beauté exposée
sorties: réduire halo, release freeze, retour sub, fermer espace, override
```

---

# 8. Override humain

L’override humain est central.

Il doit être possible lorsque :

```text
la limite est musicalement voulue ;
la sécurité sonore n’est pas dangereuse ;
la sortie reste disponible ;
le live n’est pas remplacé involontairement ;
le musicien comprend le risque.
```

L’override doit être impossible ou très contraint lorsque :

```text
risque technique réel dangereux ;
feedback incontrôlé ;
niveau dangereux ;
perte complète de sortie ;
freeze sans release ;
loop remplaçant live sans conscience ;
source optionnelle supposée présente alors qu’elle est absente.
```

---

# 9. Implications pour les modules

## 9.1 Contextual Control Router

Le Router doit :

```text
rendre les bons contrôles visibles ;
garder les contrôles profonds cachés ;
promouvoir les urgences ;
montrer l’amplitude et la zone de risque ;
permettre l’override lorsque pertinent.
```

## 9.2 Scene / Performance Conductor

Le Conductor doit :

```text
savoir quelle scène ou champ est actif ;
savoir quelles sorties sont disponibles ;
savoir quelles limites peuvent être flirtées ;
empêcher le passage automatique vers une recette ;
préserver les bifurcations.
```

## 9.3 Conflict / Protection Manager

Le Conflict Manager doit :

```text
protéger sans figer ;
réduire sans neutraliser ;
retarder plutôt qu’annuler ;
distinguer tension féconde et conflit dangereux ;
gérer les zones de bord.
```

## 9.4 Object Registry

L’Object Registry doit décrire :

```text
ce qu’un objet peut porter ;
quelles amplitudes il supporte ;
quels risques il présente ;
quelles limites il peut approcher ;
quelles protections et sorties sont nécessaires.
```

## 9.5 Trajectory Engine

Le Trajectory Engine doit :

```text
représenter les transformations ;
permettre retard, annulation, bifurcation, retrait, retour ;
ne pas automatiser la forme ;
transporter les zones de bord comme états de trajectoire.
```

---

# 10. Questions à reporter dans les documents existants

Pour chaque contrôle important, préciser :

```text
fonction musicale ;
source porteuse ;
amplitude sûre ;
amplitude expressive ;
amplitude de bord ;
amplitude dangereuse ;
override possible ;
risque principal ;
sortie disponible ;
visualisation nécessaire.
```

Pour chaque risque, préciser :

```text
interdit strict ou zone de bord ?
autorisable sous condition ?
sortie obligatoire ?
override possible ?
qu’est-ce qui est gagné si on le frôle ?
qu’est-ce qui est perdu si on y reste ?
```

---

# 11. Décision actuelle

Ce document consolide la logique suivante :

```text
Le système doit maximiser l’efficacité stylistique de Yohan,
organiser les contrôles selon les fonctions réelles de la musique,
et lui permettre de pousser les limites avec conscience, impact et sortie.
```

Il doit servir à relire :

```text
15–19 documents de contrôle live ;
22 visualisation ;
27–31 addenda de synchronisation ;
32–39 documents pratiques ;
modules Router / Conductor / Conflict / Registry / Trajectory.
```

Ne pas créer maintenant :

```text
patch ;
layout ;
mapping ;
prototype ;
asset réel.
```
