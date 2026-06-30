# 42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE

Version : v0.2  
Statut : fiche de consolidation stratégique pour contrôle live, automation située, amplitudes, limites et override. Sans patch, sans mapping, sans prototype.

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
override ;
automation située ;
réglage performatif contextualisé.
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
automation située quand elle soulage ou protège,
et override humain possible.
```

Le système ne doit pas faire la musique à la place de Yohan.

Il doit :

```text
sélectionner les dimensions réellement utiles ;
les rendre jouables au bon moment ;
calibrer leurs plages d’action ;
automatiser certaines coordinations quand cela réduit la gestion inutile ;
rendre visibles les risques de bord ;
préserver le live ;
permettre des dépassements assumés ;
proposer des sorties ;
laisser la décision musicale finale au musicien.
```

---

# 2. Automation située et contrôle manuel contextualisé

Le système ne doit être ni entièrement manuel, ni entièrement automatique.

Il doit distinguer :

```text
ce que le système peut gérer automatiquement ;
ce que le système peut préparer ou suggérer ;
ce qui doit rester réglable par Yohan ;
ce qui doit rester seulement sous override humain ;
ce qui doit être bloqué ou rendu très contraint pour des raisons de sécurité.
```

## 2.1 Fonctions automatisables

Certaines fonctions peuvent être automatisées ou semi-automatisées parce qu’elles relèvent surtout de coordination, protection, suivi ou maintenance.

Exemples :

```text
low-mid safety ;
sub / didgeridoo protection ;
high fatigue guard ;
release obligatoire d’un freeze ;
réduction douce d’un halo trop long ;
prévention de feedback ;
priorité live si une source est masquée ;
affichage ou promotion d’une sortie ;
masquage de contrôles non pertinents ;
routing contextuel des contrôles ;
rappel de risque lorsque la zone de bord approche.
```

Ces automatisations doivent rester :

```text
situées ;
réversibles ;
lisibles ;
proportionnées ;
subordonnées à la fonction musicale ;
compatibles avec l’override humain lorsque le risque est musical et non technique.
```

## 2.2 Fonctions à laisser au réglage de Yohan

Certaines fonctions doivent rester réglables par Yohan, mais le système doit présenter les bons contrôles au bon moment.

Exemples :

```text
pression ;
retour au corps ;
densité polytexturale ;
long tension ;
pré-drop : retarder / résoudre / annuler ;
intensité de halo ;
degré de torsion ;
degré de repeat ;
relation sub / live ;
exposition ou retrait d’une matière ;
franchissement d’une limite esthétique.
```

Le système ne doit donc pas dire seulement :

```text
voici tous les paramètres.
```

Il doit plutôt dire :

```text
voici les 2–6 gestes les plus pertinents maintenant ;
voici la plage sûre ;
voici la plage expressive ;
voici la zone de bord ;
voici la sortie disponible ;
voici ce qui peut être override.
```

## 2.3 Fonctions hybrides

Certaines fonctions peuvent être à la fois automatisées et réglables.

Exemples :

```text
Pressure : système protège low-end, Yohan règle intensité et retenue.
Freeze : système garantit release, Yohan règle durée, matière et risque.
Loop : système empêche remplacement involontaire, Yohan décide trace / shadow / double.
Halo : système surveille ambientisation, Yohan pousse ou retire l’espace.
Pre-drop : système garde sorties ouvertes, Yohan décide retarder / annuler / résoudre.
Polytexture : système surveille lisibilité, Yohan règle densité, friction et chaos temporaire.
```

C’est cette zone hybride qui est centrale pour Vesperare.

---

# 3. Pourquoi organiser les contrôles

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
sorties ;
automations ;
réglages manuels.
```

Il ne faut pas les rendre toutes visibles ou manipulables au même niveau.

Le système doit augmenter l’efficacité musicale en faisant :

```text
moins de gestion ;
plus de gestes pertinents ;
moins d’écran mental ;
plus de relation directe au son ;
moins de paramètres décoratifs ;
plus de contrôle sur les fonctions centrales ;
plus d’automatisation utile là où elle libère le jeu ;
moins d’automatisation là où elle déciderait à la place du musicien.
```

---

# 4. Types de contrôle

## 4.1 Macro performative

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
sorties possibles ;
automations actives si elles influencent le geste.
```

## 4.2 Sous-contrôle

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

## 4.3 Automation située

Fonction automatisée, semi-automatisée ou assistée par contexte.

Exemples :

```text
safe release ;
low-end guard ;
high fatigue guard ;
contextual ducking ;
control promotion ;
control masking ;
risk warning ;
source-priority protection ;
scene-dependent range limiting.
```

Une automation située doit indiquer :

```text
ce qu’elle protège ;
ce qu’elle modifie ;
si elle est temporaire ;
si elle est overrideable ;
quelle sortie elle préserve.
```

## 4.4 Guard / limite visible

Un guard ne doit pas seulement bloquer.

Il doit dire :

```text
quelle limite est proche ;
ce qui est menacé ;
quelle sortie existe ;
si l’override est possible ;
ce qui sera perdu si on continue.
```

## 4.5 Override

L’override est une décision humaine assumée de franchir ou prolonger une zone de risque.

Il ne doit pas être confondu avec une erreur.

```text
override = continuer malgré le warning,
parce que le risque produit un impact musical voulu.
```

---

# 5. Amplitudes de contrôle

Chaque contrôle important doit avoir des plages musicales.

```text
amplitude sûre : fonction claire, risque faible, source lisible ;
amplitude expressive : fonction renforcée, tension accrue, geste maîtrisé ;
amplitude de bord : impact augmenté mais limite proche ;
amplitude dangereuse : fonction centrale menacée ;
amplitude override : danger visible, décision humaine, sortie maintenue.
```

Les amplitudes ne sont pas seulement des valeurs numériques. Elles peuvent aussi déterminer :

```text
quelle automation devient active ;
quelle automation reste passive ;
quel contrôle manuel est promu ;
quelle sortie devient visible ;
quel override devient disponible.
```

---

# 6. Exemples par contrôle

## 6.1 Pressure

```text
sûr: pression lisible, corps présent ;
expressif: pression plus dense, sub/didgeridoo renforcés ;
bord: low-mid très chargé mais encore lisible ;
dangereux: sub masque didgeridoo, fatigue, perte de finesse ;
override: Yohan maintient la surcharge pour impact, avec warning et possibilité de retrait.
automation possible: low-end guard, relation sub/didgeridoo, ceiling doux.
réglage Yohan: intensité, retenue, résolution, surcharge assumée.
```

## 6.2 Body Return

```text
sûr: retour préparé, sub ou geste live revient ;
expressif: retour plus net, impact ou ancrage plus fort ;
bord: retour très abrupt ou très retardé ;
dangereux: drop automatique, retour-recette, rupture arbitraire ;
override: retour brutal assumé comme coupure formelle.
automation possible: garder sortie disponible, relâcher freeze/halo si nécessaire.
réglage Yohan: type, timing, intensité et violence du retour.
```

## 6.3 Polytexture Density

```text
sûr: articulation claire ;
expressif: densité fertile ;
bord: les couches frôlent la confusion ;
dangereux: guimbardes masquées, live perdu, complexité non lisible ;
override: chaos contrôlé temporaire, avec sortie vers raréfaction ou retour.
automation possible: lisibility guard, high fatigue guard, contrôle de masque.
réglage Yohan: densité, friction, retrait, chaos temporaire.
```

## 6.4 Long Tension / Pre-drop

```text
sûr: tension lisible, plusieurs sorties ;
expressif: attente plus forte, seuil plus chargé ;
bord: drop presque attendu ;
dangereux: recette de build-up, attente statique ;
override: prolonger au-delà de l’attente attendue pour frustrer ou bifurquer.
automation possible: garder sorties retarder/annuler/fausse résolution accessibles.
réglage Yohan: résoudre, retarder, annuler, bifurquer.
```

## 6.5 Suspension / Halo

```text
sûr: suspension active, corps latent ;
expressif: espace plus large, matière plus exposée ;
bord: quasi-ambient mais sortie encore lisible ;
dangereux: paysage, halo permanent, beauté sans conséquence ;
override: rester dans la zone ambient consciemment avec trace corporelle et sortie prévue.
automation possible: anti-ambient warning, release freeze, halo guard.
réglage Yohan: durée, profondeur, exposition, maintien au bord.
```

## 6.6 Repeat

```text
sûr: articulation ou hypnose ;
expressif: tension rythmique plus forte ;
bord: effet identifiable mais encore fonctionnel ;
dangereux: stutter démonstratif, rigidification du live ;
override: repeat très marqué assumé puis raréfié ou coupé.
automation possible: empêcher rigidification permanente, maintenir arrêt disponible.
réglage Yohan: densité, durée, seuil démonstratif.
```

## 6.7 Loop

```text
sûr: trace, shadow ou double ;
expressif: loop rend la mémoire du live plus forte ;
bord: loop commence à prendre la fonction du geste ;
dangereux: loop remplace didgeridoo ou guimbardes ;
override: remplacement temporaire explicitement assumé, avec retour live prévu.
automation possible: détecter remplacement involontaire, garder retour live.
réglage Yohan: trace / shadow / double / remplacement assumé.
```

## 6.8 Freeze

```text
sûr: gel bref avec release claire ;
expressif: matière intensifiée ;
bord: gel proche du drone ;
dangereux: freeze-drone, stase, perte du corps ;
override: drone temporaire assumé avec warning, release et retour au corps disponibles.
automation possible: release obligatoire, sortie visible, anti-stase guard.
réglage Yohan: matière, durée, intensité, maintien au bord.
```

---

# 7. Limites comme zones jouables

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

# 8. Rôle du système dans les zones de bord

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

# 9. Override humain

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

# 10. Implications pour les modules

## 10.1 Contextual Control Router

Le Router doit :

```text
rendre les bons contrôles visibles ;
garder les contrôles profonds cachés ;
promouvoir les urgences ;
montrer l’amplitude et la zone de risque ;
choisir ce qui est automatisé, réglable, suggéré, masqué ou verrouillé ;
permettre l’override lorsque pertinent.
```

## 10.2 Scene / Performance Conductor

Le Conductor doit :

```text
savoir quelle scène ou champ est actif ;
savoir quelles sorties sont disponibles ;
savoir quelles limites peuvent être flirtées ;
savoir quelles automatisations sont autorisées dans ce contexte ;
empêcher le passage automatique vers une recette ;
préserver les bifurcations.
```

## 10.3 Conflict / Protection Manager

Le Conflict Manager doit :

```text
protéger sans figer ;
réduire sans neutraliser ;
retarder plutôt qu’annuler ;
distinguer tension féconde et conflit dangereux ;
gérer les zones de bord ;
distinguer correction automatique, suggestion et blocage strict.
```

## 10.4 Object Registry

L’Object Registry doit décrire :

```text
ce qu’un objet peut porter ;
quelles amplitudes il supporte ;
quels risques il présente ;
quelles limites il peut approcher ;
quelles protections et sorties sont nécessaires ;
quelles automatisations ou réglages humains sont compatibles avec lui.
```

## 10.5 Trajectory Engine

Le Trajectory Engine doit :

```text
représenter les transformations ;
permettre retard, annulation, bifurcation, retrait, retour ;
ne pas automatiser la forme globale ;
permettre des micro-automations locales de suivi, transition ou sécurité ;
transporter les zones de bord comme états de trajectoire.
```

---

# 11. Questions à reporter dans les documents existants

Pour chaque contrôle important, préciser :

```text
fonction musicale ;
source porteuse ;
ce qui peut être automatisé ;
ce qui doit rester réglable ;
ce qui doit rester sous override ;
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
automation de protection possible ?
réglage humain prioritaire ?
sortie obligatoire ?
override possible ?
qu’est-ce qui est gagné si on le frôle ?
qu’est-ce qui est perdu si on y reste ?
```

---

# 12. Décision actuelle

Ce document consolide la logique suivante :

```text
Le système doit maximiser l’efficacité stylistique de Yohan,
organiser les contrôles selon les fonctions réelles de la musique,
automatiser seulement ce qui soutient, protège ou coordonne,
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
