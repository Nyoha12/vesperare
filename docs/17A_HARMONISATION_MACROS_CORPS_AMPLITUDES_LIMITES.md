# 17A_HARMONISATION_MACROS_CORPS_AMPLITUDES_LIMITES

Version : v0.1  
Statut : addendum ciblé à `17_LIVE_CONTROL_REQUIREMENTS_MATRIX_REDUCED.md`. Sans interface, sans mapping, sans patch, sans prototype.

## Objet

Ce document complète `17_LIVE_CONTROL_REQUIREMENTS_MATRIX_REDUCED.md` à la lumière de :

```text
41_CORPS_COMME_FONCTION_COMPOSEE_ET_SITUEE.md
42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md
43_HARMONISATION_CONTROLES_15_22.md
```

Il ne remplace pas `17`.  
Il précise comment lire les macros réduites selon :

```text
sous-fonctions du corps ;
amplitudes ;
zones de bord ;
risques ;
sorties ;
override humain.
```

---

# 1. Rappel : contrôle ≠ paramètre

Les macros de `17` ne sont pas des paramètres techniques.

Elles sont des accès performatifs à des fonctions musicales.

```text
contrôle = sélection + organisation + amplitude + contexte + risque + sortie + override.
```

Chaque macro doit donc pouvoir être lue selon cinq zones :

```text
sûre ;
expressive ;
bord ;
dangereuse ;
override.
```

---

# 2. MACRO_BODY_RETURN

## 2.1 Sous-fonctions du corps concernées

```text
corps-retour ;
corps-impact ;
corps-pression ;
corps-pulsation ;
corps-geste ;
corps-ancrage.
```

`MACRO_BODY_RETURN` ne doit pas signifier automatiquement :

```text
drop ;
impact massif ;
retour brutal ;
retour sub-only.
```

Il peut signifier :

```text
réintroduire sub ;
redonner le didgeridoo comme sol ;
réarticuler les guimbardes ;
fermer un halo ;
relâcher un freeze ;
préparer un impact peau ;
ramener une pulsation implicite ;
faire sentir une réincorporation lente.
```

## 2.2 Amplitudes

```text
sûre : retour préparé, source claire, corps lisible ;
expressive : retour plus net, plus physique, plus contrasté ;
bord : retour très abrupt ou très retardé ;
dangereuse : drop automatique, retour-recette, rupture arbitraire ;
override : retour brutal assumé comme coupure formelle.
```

## 2.3 Sorties possibles

```text
retour sub ;
impact peau ;
gong court ;
didgeridoo sol ;
guimbardes réarticulées ;
fermeture de halo ;
arrêt ou release d’objet temporel.
```

---

# 3. MACRO_PRESSURE

## 3.1 Sous-fonctions du corps concernées

```text
corps-pression ;
corps-ancrage ;
corps-attente ;
corps-hypnose.
```

`MACRO_PRESSURE` ne doit pas être un volume général.

Il peut organiser :

```text
pression physique ;
pression spectrale ;
pression de densité ;
pression rythmique ;
pression organique du didgeridoo ;
pression stable du sub ;
pression par attente ou retenue.
```

## 3.2 Amplitudes

```text
sûre : pression lisible, corps présent, sources séparées ;
expressive : pression renforcée, tension plus physique ;
bord : bas-médium chargé mais encore lisible ;
dangereuse : sub masque didgeridoo, fatigue, boue, perte de finesse ;
override : surcharge assumée, avec warning et sortie rapide.
```

## 3.3 Points de vigilance

```text
relation sub / didgeridoo ;
low-mid load ;
fatigue ;
masquage guimbardes ;
mono compatibility ;
retour possible.
```

---

# 4. MACRO_IMPACT

## 4.1 Sous-fonctions du corps concernées

```text
corps-impact ;
corps-retour ;
corps-ancrage ;
corps-limite.
```

`MACRO_IMPACT` ne doit pas être un lanceur de one-shots.

Il peut désigner :

```text
impact peau ;
impact sub ;
impact gong ;
accent guimbarde ;
transitoire synthétique ;
coupure ;
retour corporel ;
seuil de bascule.
```

## 4.2 Amplitudes

```text
sûre : accent clair, source lisible ;
expressive : impact plus physique ou plus sec ;
bord : impact presque trop spectaculaire ;
dangereuse : drop standard, rituel plaqué, one-shot décoratif ;
override : coup très marqué assumé comme geste formel.
```

---

# 5. MACRO_WITHDRAWAL

## 5.1 Fonctions concernées

```text
retrait ;
respiration ;
préparation du retour ;
anti-ambient ;
révélation du live ;
corps-attente ;
corps-limite.
```

Le retrait ne doit pas seulement retirer du volume.

Il doit indiquer :

```text
ce qui se retire ;
ce qui reste ;
ce qui devient plus audible ;
quelle sortie est préparée ;
quelle limite est approchée.
```

## 5.2 Amplitudes

```text
sûre : retrait partiel, corps encore lisible ;
expressive : manque actif, tension accrue ;
bord : scène presque vide mais chargée ;
dangereuse : panne, perte totale du corps, suspension passive ;
override : vide assumé, avec sortie ou retour explicitement disponible.
```

---

# 6. MACRO_LONG_TENSION

## 6.1 Sous-fonctions concernées

```text
corps-attente ;
corps-hypnose ;
corps-pression retenue ;
tension longue ;
pré-drop non automatique ;
seuil différé.
```

`MACRO_LONG_TENSION` ne doit pas devenir un mode drone ou un simple allongement.

## 6.2 Amplitudes

```text
sûre : tension lisible, sortie possible ;
expressive : attente plus forte, seuil plus chargé ;
bord : drop presque attendu, résolution presque imposée ;
dangereuse : build-up reconnaissable, attente statique, recette ;
override : prolongement excessif assumé, annulation ou bifurcation prête.
```

---

# 7. MACRO_POLYTEXTURE_DENSITY

## 7.1 Sous-fonctions concernées

```text
corps-pulsation ;
corps-geste ;
corps-hypnose ;
polytexture ;
articulation ;
interlocking ;
limite de lisibilité.
```

La densité ne doit pas signifier :

```text
plus de couches ;
plus de notes ;
plus de randomisation ;
plus de complexité.
```

Elle doit signifier :

```text
plus ou moins d’articulation ;
plus ou moins de friction ;
plus ou moins de hiérarchie ;
plus ou moins de place laissée au live.
```

## 7.2 Amplitudes

```text
sûre : polytexture claire, guimbardes lisibles ;
expressive : densité fertile, tensions de registres ;
bord : presque confusion, mais encore hiérarchisée ;
dangereuse : live masqué, complexité décorative, perte du corps ;
override : chaos temporaire assumé, avec retrait ou raréfaction prévue.
```

---

# 8. Guards et états

## 8.1 GUARD_ANTI_AMBIENT

`GUARD_ANTI_AMBIENT` ne doit pas interdire toute zone ambient.

Il doit distinguer :

```text
sûr : espace fonctionnel ;
expressif : suspension élargie ;
bord : quasi-ambient avec sortie ;
danger : paysage décoratif, halo permanent, corps perdu ;
override : maintien volontaire au bord, avec trace corporelle et sortie.
```

## 8.2 GUARD_LOW_MID_SAFETY

Ce guard peut être plus strict car il concerne aussi mix, fatigue et lisibilité.

Mais il doit distinguer :

```text
surcharge fertile temporaire ;
masquage dangereux ;
pression voulue ;
boue involontaire ;
override possible si niveau non dangereux et sortie prête.
```

## 8.3 STATE_LIVE_PRIORITY

`STATE_LIVE_PRIORITY` doit protéger :

```text
didgeridoo ;
guimbardes ;
agence humaine ;
non-remplacement involontaire ;
possibilité de trace, shadow ou double sous décision explicite.
```

Ce n’est pas forcément :

```text
aucune transformation du live.
```

C’est plutôt :

```text
aucune transformation ne doit voler la fonction centrale du live sans décision humaine.
```

---

# 9. Décision actuelle

`17` reste valide comme matrice réduite.

Cet addendum précise que le noyau jouable doit être interprété comme :

```text
macros de fonction ;
amplitudes musicales ;
zones de bord ;
risques visibles ;
sorties disponibles ;
override humain.
```

Prochaine étape recommandée :

```text
harmoniser 19_LIVE_CONTROL_LAYERS_AND_PERFORMANCE_STATES.md
avec la même logique : état = fonction + corps + amplitude + limite + sortie + override.
```

Ne pas encore créer :

```text
interface ;
mapping ;
patch ;
prototype.
```
