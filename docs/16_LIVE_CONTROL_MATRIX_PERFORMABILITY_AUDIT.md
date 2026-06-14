# 16_LIVE_CONTROL_MATRIX_PERFORMABILITY_AUDIT

Version : v0.1  
Statut : audit de performabilité et charge cognitive. Sans interface graphique, sans Max for Live, sans mapping matériel, sans prototype.

## Objet

Ce document audite `15_LIVE_CONTROL_REQUIREMENTS_MATRIX.md`.

Il répond à :

```text
quels contrôles sont vraiment jouables ?
lesquels sont trop abstraits ?
lesquels doublonnent ?
lesquels doivent devenir des protections automatiques ou des états plutôt que des macros ?
lesquels doivent être différés ?
```

Ce document ne crée pas une nouvelle couche d’interface.

Il empêche au contraire de créer trop vite :

```text
16_LIVE_CONTROL_LAYERS_AND_PERFORMANCE_STATES.md
```

si la matrice `15` n’est pas encore assez nettoyée.

---

# 1. Critères d’audit

Un contrôle est performable s’il répond à plusieurs critères :

```text
P1. effet musical perceptible immédiatement ou dans une trajectoire claire ;
P2. geste possible sans réflexion analytique excessive ;
P3. fonction distincte d’un autre contrôle ;
P4. risque limité de confusion en live ;
P5. possibilité de retour / annulation / retrait ;
P6. compatibilité avec didgeridoo et guimbardes live ;
P7. utilité dans plusieurs scènes ou fonctions ;
P8. non-réduction à un paramètre technique brut.
```

Un contrôle est problématique s’il :

```text
C1. répète un autre contrôle ;
C2. décrit une logique de système plutôt qu’un geste de musicien ;
C3. exige trop d’analyse pendant la performance ;
C4. invite à chercher des sons plutôt qu’à piloter une fonction ;
C5. risque de masquer le live ;
C6. risque de devenir un bouton esthétique vague ;
C7. devrait être une protection ou un readout plutôt qu’un contrôle actif.
```

---

# 2. Résultat global

La matrice `15` est utile, mais elle contient encore trop de niveaux mélangés.

Elle mélange :

```text
macros performables ;
états de scène ;
protections ;
arbitrages de sources ;
readouts ;
logiques backend ;
sous-paramètres ;
concepts trop généraux.
```

La suite ne doit donc pas être immédiatement un design de couches d’interface.

La suite doit d’abord nettoyer la matrice en trois groupes :

```text
A. contrôles performables centraux ;
B. états / guards / readouts nécessaires mais pas forcément joués comme macros ;
C. logiques à différer ou à reléguer au système.
```

---

# 3. Contrôles performables centraux

## 3.1 CTRL_BODY_RETURN

Décision : garder comme macro centrale.

Pourquoi :

```text
fonction claire ;
lié au corps ;
lié au retrait ;
lié au retour après suspension ;
utile dans plusieurs scènes ;
contrôle musicalement compréhensible.
```

Correction :

```text
ne pas le confondre avec CTRL_WITHDRAWAL.
```

Interprétation :

```text
CTRL_BODY_RETURN = but musical / état recherché.
CTRL_WITHDRAWAL = mécanisme ou geste de retrait permettant parfois ce retour.
```

Statut : priorité A.

## 3.2 CTRL_PRESSURE

Décision : garder comme macro centrale, mais subdiviser en types.

Problème actuel :

```text
pression est trop large si non qualifiée.
```

Sous-types à distinguer :

```text
pression physique ;
pression spectrale ;
pression de densité ;
pression rythmique.
```

Statut : priorité A, mais nécessite un futur profil de contrôle.

## 3.3 CTRL_IMPACT

Décision : garder comme macro centrale.

Pourquoi :

```text
fonction claire ;
valeur live forte ;
lié au corps ;
lié aux options gong/tambour ;
lié au contour et à la résolution.
```

Correction :

```text
CTRL_CONTOUR ne doit pas devenir un doublon ;
il doit devenir un sous-contrôle partagé.
```

Statut : priorité A.

## 3.4 CTRL_WITHDRAWAL

Décision : garder, mais comme macro-geste transversal plutôt que comme concept autonome.

Pourquoi :

```text
indispensable pour anti-ambientisation ;
indispensable pour retour au corps ;
indispensable pour tension longue ;
indispensable pour préserver le live.
```

Risque :

```text
si trop visible, il devient un bouton technique de mute/fade.
```

Statut : priorité A, à relier à CTRL_BODY_RETURN et CTRL_ANTI_AMBIENT.

## 3.5 CTRL_LIVE_PRIORITY

Décision : garder, mais comme état + guard, pas comme macro expressive principale.

Pourquoi :

```text
didgeridoo et guimbardes sont centraux ;
le système ne doit pas les remplacer ;
le live doit pouvoir reprendre priorité.
```

Risque :

```text
un bouton live priority trop grossier pourrait écraser des équilibres subtils.
```

Statut : priorité A, forme future à préciser.

## 3.6 CTRL_ANTI_AMBIENT

Décision : garder, mais principalement comme guard / mode de protection.

Pourquoi :

```text
risque central ;
évite le fond décoratif ;
évite drones permanents ;
évite field recordings ou halos sans scène.
```

Correction :

```text
ne pas en faire une macro esthétique jouée en permanence ;
le musicien doit pouvoir l’activer ou voir son état,
mais sa logique doit être surtout protectrice.
```

Statut : priorité A comme protection, pas forcément comme contrôle expressif.

---

# 4. Contrôles importants mais à requalifier

## 4.1 CTRL_BODY_FOCUS

Décision : garder comme état de scène, pas macro principale.

Relation :

```text
CTRL_BODY_RETURN = action / trajectoire de retour.
CTRL_BODY_FOCUS = état où le corps est référence principale.
```

À ne pas fusionner entièrement.

Statut : priorité B.

## 4.2 CTRL_LONG_TENSION

Décision : garder comme état / macro de trajectoire.

Problème :

```text
peut doubler CTRL_PRESSURE si mal défini.
```

Distinction :

```text
CTRL_PRESSURE = force / densité / énergie.
CTRL_LONG_TENSION = orientation temporelle / attente / non-résolution.
```

Statut : priorité B.

## 4.3 CTRL_CONTOUR

Décision : ne pas garder comme macro autonome de premier plan.

Rôle : sous-contrôle partagé.

S’applique à :

```text
impact ;
champs ;
halos ;
textures ;
résonances ;
sources live traitées.
```

Statut : priorité C / transversal.

## 4.4 CTRL_LOW_MID_SAFETY

Décision : guard + readout, pas macro musicale.

Pourquoi :

```text
important pour le mix, le sub, didgeridoo, tambour, gong, champs ;
mais difficile à jouer comme geste musical principal.
```

Statut : priorité B comme protection visible.

## 4.5 CTRL_SOURCE_ARBITRATION

Décision : garder comme logique d’arbitrage, mais pas comme macro continue.

Rôle : gérer les configurations :

```text
didgeridoo + guimbardes ;
avec gong ;
avec tambour ;
avec gong + tambour ;
sans gong ni tambour ;
source préparée conditionnelle ;
engine conditionnel.
```

Statut : priorité B, probablement état ou couche de routing.

---

# 5. Contrôles à différer ou surveiller

## 5.1 CTRL_NATURALIZATION_ROLE

Décision : différer comme contrôle live direct.

Pourquoi :

```text
concept très important ;
mais trop abstrait comme contrôle performable immédiat ;
risque de devenir bouton “organique” masqué ;
risque de conduire à des familles de sons plutôt qu’à des fonctions.
```

Usage actuel recommandé :

```text
principe de design ;
critère de source_need ;
critère de material_asset ;
critère de test ;
pas macro live immédiate.
```

Statut : différé / backend conceptuel.

## 5.2 CTRL_SELECTION_POLICY

Décision : ne pas faire contrôle live.

Rôle : logique de système / garde-fou.

Le musicien ne doit pas jouer directement :

```text
M0 / M1 / M2 / M3 / M4
```

Il doit ressentir les effets : choix manuel, assistance, interdiction automatique, mais pas gérer ce niveau en performance.

Statut : backend / policy.

## 5.3 CTRL_HARMONIC_DENSITY

Décision : différer comme sous-contrôle conditionnel.

Pourquoi :

```text
utile si harmonic drone ou métaux accordés sont confirmés ;
risque de nappe si traité comme macro générale ;
nécessite tests fonctionnels.
```

Statut : priorité C conditionnelle.

## 5.4 CTRL_HARMONIC_FRICTION

Décision : garder mais conditionnel.

Pourquoi :

```text
fort potentiel musical ;
lié aux partiels, battements, didgeridoo, sub, guimbardes ;
mais dépend de scènes et tests précis.
```

Statut : priorité C, à ne pas ouvrir avant confirmation des contextes.

## 5.5 CTRL_POLYTEXTURE_ARTICULATION

Décision : garder comme sous-contrôle de CTRL_POLYTEXTURE_DENSITY.

Risque :

```text
trop technique si séparé trop tôt ;
charge cognitive élevée ;
peut devenir micro-management.
```

Statut : priorité B/C.

---

# 6. Fusions recommandées

## 6.1 Famille RETURN / WITHDRAWAL

À regrouper :

```text
CTRL_BODY_RETURN ;
CTRL_WITHDRAWAL ;
CTRL_ANTI_AMBIENT.
```

Mais ne pas les fusionner totalement.

Rôles :

```text
BODY_RETURN = objectif musical ;
WITHDRAWAL = geste ou mécanisme ;
ANTI_AMBIENT = garde-fou.
```

## 6.2 Famille PRESSURE / LONG_TENSION

À garder liés, mais distingués.

```text
PRESSURE = intensité / énergie / densité.
LONG_TENSION = orientation temporelle / attente / suspension.
```

## 6.3 Famille IMPACT / CONTOUR

```text
IMPACT = macro centrale.
CONTOUR = sous-contrôle transversal.
```

## 6.4 Famille LIVE_PRIORITY / SOURCE_ARBITRATION

```text
LIVE_PRIORITY = protection et état sensible.
SOURCE_ARBITRATION = logique de configuration / routing.
```

## 6.5 Famille POLYTEXTURE

```text
POLYTEXTURE_DENSITY = macro.
POLYTEXTURE_ARTICULATION = sous-contrôle.
```

---

# 7. Première matrice nettoyée

## Contrôles performables probables

```text
CTRL_BODY_RETURN ;
CTRL_PRESSURE ;
CTRL_IMPACT ;
CTRL_LONG_TENSION ;
CTRL_POLYTEXTURE_DENSITY ;
CTRL_WITHDRAWAL.
```

## États / guards visibles

```text
CTRL_BODY_FOCUS ;
CTRL_LIVE_PRIORITY ;
CTRL_ANTI_AMBIENT ;
CTRL_LOW_MID_SAFETY.
```

## Arbitrages / routing

```text
CTRL_SOURCE_ARBITRATION.
```

## Sous-contrôles

```text
CTRL_CONTOUR ;
CTRL_POLYTEXTURE_ARTICULATION ;
CTRL_HARMONIC_DENSITY.
```

## Contrôles conditionnels / différés

```text
CTRL_HARMONIC_FRICTION ;
CTRL_HARMONIC_DENSITY ;
CTRL_NATURALIZATION_ROLE.
```

## Backend / policy

```text
CTRL_SELECTION_POLICY.
```

---

# 8. Charge cognitive estimée

## Charge faible à moyenne

```text
CTRL_BODY_RETURN ;
CTRL_PRESSURE ;
CTRL_IMPACT ;
CTRL_WITHDRAWAL.
```

Ces contrôles ont un sens musical immédiat.

## Charge moyenne

```text
CTRL_LONG_TENSION ;
CTRL_POLYTEXTURE_DENSITY ;
CTRL_BODY_FOCUS ;
CTRL_LIVE_PRIORITY.
```

Ils nécessitent un contexte de scène.

## Charge élevée

```text
CTRL_SOURCE_ARBITRATION ;
CTRL_HARMONIC_FRICTION ;
CTRL_HARMONIC_DENSITY ;
CTRL_NATURALIZATION_ROLE ;
CTRL_SELECTION_POLICY.
```

Ces contrôles doivent être simplifiés, différés ou internalisés.

---

# 9. Décision sur la suite

Ne pas créer immédiatement :

```text
16_LIVE_CONTROL_LAYERS_AND_PERFORMANCE_STATES.md
```

Décision : créer d’abord une version nettoyée de la matrice de contrôles.

Nom recommandé :

```text
17_LIVE_CONTROL_REQUIREMENTS_MATRIX_REDUCED.md
```

Objectif :

```text
réduire la matrice à un noyau jouable ;
regrouper les familles ;
distinguer macros, states, guards, routing, sous-contrôles et backend ;
préparer ensuite seulement des couches de performance.
```

---

# 10. Prochaine étape recommandée

Créer :

```text
17_LIVE_CONTROL_REQUIREMENTS_MATRIX_REDUCED.md
```

Puis seulement après :

```text
18_LIVE_CONTROL_LAYERS_AND_PERFORMANCE_STATES.md
```

si le noyau réduit est cohérent.
