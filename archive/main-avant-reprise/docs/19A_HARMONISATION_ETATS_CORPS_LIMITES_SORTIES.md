# 19A_HARMONISATION_ETATS_CORPS_LIMITES_SORTIES

Version : v0.1  
Statut : addendum ciblé à `19_LIVE_CONTROL_LAYERS_AND_PERFORMANCE_STATES.md`. Sans interface, sans mapping, sans patch, sans prototype.

## Objet

Ce document complète `19_LIVE_CONTROL_LAYERS_AND_PERFORMANCE_STATES.md` à la lumière de :

```text
41_CORPS_COMME_FONCTION_COMPOSEE_ET_SITUEE.md
42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md
43_HARMONISATION_CONTROLES_15_22.md
17A_HARMONISATION_MACROS_CORPS_AMPLITUDES_LIMITES.md
```

Il ne remplace pas `19`.  
Il précise comment lire les états de performance selon :

```text
fonction centrale ;
sous-fonction du corps ;
amplitude dominante ;
zone de bord ;
sortie ;
override.
```

---

# 1. Principe général

Un état de performance ne doit pas être un preset.

Il doit être compris comme :

```text
une situation musicale temporaire,
avec fonction dominante,
corps plus ou moins présent,
risques spécifiques,
limites jouables,
et sorties disponibles.
```

Chaque état devrait pouvoir répondre à :

```text
quelle fonction est dominante ?
quelle sous-fonction du corps est active ?
quelle source porte cette fonction ?
quelle amplitude est atteinte ?
quelle limite est proche ?
quelle sortie est disponible ?
l’override humain est-il possible ?
```

---

# 2. BASE_BODY

Fonction : établir une prise corporelle.

Sous-fonctions possibles :

```text
corps-pression ;
corps-ancrage ;
corps-pulsation ;
corps-geste.
```

Sources possibles :

```text
sub ;
didgeridoo ;
guimbardes ;
tambour si présent.
```

Zones :

```text
sûr : corps lisible, source live claire ;
expressif : pression ou pulsation plus forte ;
bord : sub ou densité commence à dominer ;
danger : didgeridoo ou guimbardes masqués ;
override : surcharge corporelle assumée avec sortie rapide.
```

Sorties :

```text
BUILD_PRESSURE ;
POLYTEXTURE_OPENING ;
LONG_TENSION ;
WITHDRAWAL ;
SUSPENSION avec trace corporelle.
```

---

# 3. BUILD_PRESSURE

Fonction : augmenter ou orienter une pression.

Sous-fonctions :

```text
corps-pression ;
corps-attente ;
corps-hypnose.
```

Zones :

```text
sûr : pression lisible, grave clair ;
expressif : pression plus forte, tension accrue ;
bord : low-mid chargé, densité limite ;
danger : boue, fatigue, live masqué ;
override : pression excessive assumée, avec retrait ou retour disponible.
```

Sorties :

```text
LONG_TENSION ;
PRE_DROP ;
RETURN_TO_BODY ;
WITHDRAWAL ;
SUSPENSION si trace corporelle reste.
```

---

# 4. LONG_TENSION

Fonction : tenir une attente ou une tension sans résolution immédiate.

Sous-fonctions :

```text
corps-attente ;
corps-hypnose ;
corps-pression retenue ;
corps-limite.
```

Zones :

```text
sûr : tension changeante, sorties ouvertes ;
expressif : seuil plus chargé ;
bord : drop presque attendu, attente prolongée ;
danger : build-up reconnaissable, attente statique ;
override : prolongement volontaire au-delà de l’attente, avec annulation ou bifurcation prête.
```

Sorties :

```text
PRE_DROP ;
FALSE_RESOLUTION ;
CANCELLATION ;
SUSPENSION ;
RETURN_TO_BODY.
```

---

# 5. PRE_DROP

Fonction : armer une résolution sans l’imposer.

Sous-fonctions :

```text
corps-attente ;
corps-impact potentiel ;
corps-retour différé ;
tension longue ;
seuil.
```

Zones :

```text
sûr : résolution possible mais non obligatoire ;
expressif : seuil fort, attente corporelle ;
bord : drop presque évident ;
danger : recette de build-up ;
override : pousser l’attente trop loin pour bifurquer ou annuler.
```

Sorties :

```text
résolution ;
fausse résolution ;
annulation ;
retour au corps ;
suspension ;
long tension.
```

Règle :

```text
aucun drop automatique.
```

---

# 6. SUSPENSION

Fonction : suspendre ou exposer une matière sans immobiliser la musique.

Sous-fonctions :

```text
corps-limite ;
corps-retour latent ;
corps-geste résiduel ;
corps-ancrage minimal.
```

Zones :

```text
sûr : suspension active, trace corporelle ;
expressif : matière plus exposée, espace plus tendu ;
bord : quasi-ambient mais sortie lisible ;
danger : paysage, halo permanent, freeze-drone ;
override : maintien volontaire dans la zone ambient avec trace et sortie préparée.
```

Sorties :

```text
RETURN_TO_BODY ;
WITHDRAWAL ;
PRE_DROP_FROM_SUSPENSION ;
POLYTEXTURE_OPENING ;
fermeture ;
annulation.
```

Règles :

```text
sortie obligatoire ;
trace corporelle souhaitable ;
freeze seulement avec release ;
field recording seulement si fonction claire.
```

---

# 7. POLYTEXTURE_OPENING

Fonction : ouvrir une densité articulée sans perdre lisibilité et corps.

Sous-fonctions :

```text
corps-pulsation ;
corps-geste ;
corps-hypnose ;
corps-limite.
```

Zones :

```text
sûr : polytexture claire ;
expressif : densité fertile ;
bord : presque confusion mais hiérarchie encore audible ;
danger : live masqué, complexité décorative ;
override : chaos temporaire assumé avec raréfaction ou retour prévu.
```

Sorties :

```text
BUILD_PRESSURE ;
LONG_TENSION ;
WITHDRAWAL ;
RETURN_TO_BODY ;
SUSPENSION.
```

---

# 8. WITHDRAWAL

Fonction : retirer pour faire place, révéler ou préparer un retour.

Sous-fonctions :

```text
corps-attente ;
corps-retour ;
corps-limite ;
trace live.
```

Zones :

```text
sûr : retrait lisible, corps restant ;
expressif : manque actif ;
bord : scène presque vide mais chargée ;
danger : panne, suspension passive, perte totale du corps ;
override : vide assumé avec sortie volontaire.
```

Sorties :

```text
RETURN_TO_BODY ;
LONG_TENSION ;
SUSPENSION ;
PRE_DROP ;
repasser live.
```

---

# 9. RETURN_TO_BODY

Fonction : réincorporer une scène après tension, retrait ou suspension.

Sous-fonctions :

```text
corps-retour ;
corps-impact ;
corps-pression ;
corps-pulsation ;
corps-geste.
```

Zones :

```text
sûr : retour préparé ;
expressif : retour plus net, plus physique ;
bord : retour très abrupt ou très tardif ;
danger : drop automatique, retour-recette ;
override : retour brutal assumé comme geste formel.
```

Sorties :

```text
BASE_BODY ;
POLYTEXTURE_OPENING ;
POST_TRACE ;
nouvelle tension ;
silence actif.
```

---

# 10. EXPOSED_MATERIAL

Fonction : exposer une matière sans la transformer en décor.

Sous-fonctions :

```text
corps-geste ;
corps-limite ;
trace ;
beauté fonctionnelle ;
écoute du seuil.
```

Zones :

```text
sûr : matière porte une fonction claire ;
expressif : matière plus présente ou plus fragile ;
bord : beauté presque autonome ;
danger : objet joli mais inutile ;
override : beauté maintenue volontairement avec sortie formelle.
```

Sorties :

```text
SUSPENSION ;
RETURN_TO_BODY ;
PRE_DROP ;
WITHDRAWAL ;
fermeture.
```

---

# 11. Règle de visualisation associée

Chaque état devrait fournir au Router / visualisation :

```text
état actif ;
fonction dominante ;
sous-fonction du corps ;
amplitude actuelle ;
zone actuelle : sûre / expressive / bord / danger / override ;
risque principal ;
sortie disponible ;
source live à protéger ;
override possible ou non.
```

---

# 12. Décision actuelle

`19` reste valide comme document de couches et états.

Cet addendum précise que les états ne doivent pas devenir des presets.

Ils doivent être lus comme :

```text
situations musicales ouvertes ;
fonctions orientées ;
relations au corps ;
amplitudes ;
zones de bord ;
sorties ;
overrides possibles.
```

Prochaine étape recommandée :

```text
harmoniser 22_CONTEXTUAL_VISUALIZATION_REQUIREMENTS.md
pour intégrer l’affichage des zones de bord, amplitudes, fonctions menacées, sorties et override.
```

Ne pas encore créer :

```text
interface ;
mapping ;
patch ;
prototype.
```
