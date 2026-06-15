# 22A_HARMONISATION_VISUALISATION_AMPLITUDES_LIMITES

Version : v0.1  
Statut : addendum ciblé à `22_CONTEXTUAL_VISUALIZATION_REQUIREMENTS.md`. Sans interface graphique finale, sans layout, sans mapping, sans prototype.

## Objet

Ce document complète `22_CONTEXTUAL_VISUALIZATION_REQUIREMENTS.md` à la lumière de :

```text
41_CORPS_COMME_FONCTION_COMPOSEE_ET_SITUEE.md
42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md
43_HARMONISATION_CONTROLES_15_22.md
17A_HARMONISATION_MACROS_CORPS_AMPLITUDES_LIMITES.md
19A_HARMONISATION_ETATS_CORPS_LIMITES_SORTIES.md
```

Il ne remplace pas `22`.

Il précise ce que la visualisation contextuelle doit rendre lisible :

```text
amplitude ;
zone de bord ;
fonction menacée ;
fonction gagnée ;
source live concernée ;
sous-fonction du corps ;
sortie disponible ;
override possible.
```

---

# 1. Rappel du rôle de la visualisation

La visualisation ne doit pas illustrer la musique.

Elle doit aider à décider.

Elle doit donc répondre à :

```text
que suis-je en train de modifier ?
quelle fonction musicale est affectée ?
quelle amplitude suis-je en train de traverser ?
quelle limite est proche ?
qu’est-ce que je risque de perdre ?
qu’est-ce que je gagne ?
quelle sortie reste disponible ?
puis-je assumer l’override ?
```

---

# 2. Zones à afficher

Les contrôles importants peuvent traverser cinq zones :

```text
ZONE 1 — sûre ;
ZONE 2 — expressive ;
ZONE 3 — bord ;
ZONE 4 — danger ;
ZONE 5 — override.
```

La visualisation doit pouvoir rendre cette zone lisible sans devenir un tableau permanent.

Règle :

```text
montrer peu ;
montrer juste ;
montrer quand utile ;
retirer quand ce n’est plus utile.
```

---

# 3. Informations minimales par contrôle touché

Quand un contrôle important est touché, la vue contextuelle devrait pouvoir afficher :

```text
nom du contrôle ;
fonction musicale ;
sous-fonction du corps si pertinente ;
amplitude actuelle ;
zone actuelle ;
sources affectées ;
risque principal ;
fonction menacée ;
fonction gagnée ;
sorties disponibles ;
override possible : oui / non / sous condition.
```

Exemple :

```text
contrôle: MACRO_PRESSURE
fonction: pression corporelle / spectrale
corps: corps-pression + corps-ancrage
zone: bord
risque: didgeridoo masqué par sub
fonction gagnée: impact physique plus fort
fonction menacée: agency live / lisibilité bas-médium
sorties: retrait sub, split, retour didgeridoo, override temporaire
```

---

# 4. Visualisation des sous-fonctions du corps

Quand `corps` est invoqué, la vue ne doit pas seulement dire :

```text
body active.
```

Elle doit pouvoir préciser :

```text
corps-pression ;
corps-impact ;
corps-pulsation ;
corps-geste ;
corps-ancrage ;
corps-attente ;
corps-hypnose ;
corps-retour ;
corps-limite.
```

Exemple :

```text
état: SUSPENSION
corps: corps-limite + corps-retour latent
source: didgeridoo trace + sub discret
risque: ambientisation
sortie: return_to_body / withdrawal / pre_drop_from_suspension
```

---

# 5. Visualisation des limites jouables

Une limite ne doit pas seulement apparaître comme erreur.

Elle peut apparaître comme :

```text
approche ;
zone de bord ;
danger ;
override.
```

Exemples :

## 5.1 Anti-ambient

```text
approche: halo s’allonge ;
bord: corps latent encore présent ;
danger: scène devient paysage ;
override: Yohan maintient le halo mais garde sortie visible.
```

## 5.2 Loop remplace live

```text
approche: loop devient très présent ;
bord: live encore actif mais ombré ;
danger: live remplacé ;
override: remplacement temporaire assumé avec retour live prévu.
```

## 5.3 Freeze-drone

```text
approche: freeze s’étend ;
bord: matière intensifiée ;
danger: stase / drone sans sortie ;
override: maintien volontaire avec release visible.
```

## 5.4 Pre-drop automatique

```text
approche: résolution attendue ;
bord: drop presque évident ;
danger: recette ;
override: prolonger, annuler ou fausse résolution.
```

---

# 6. Sorties visibles

La visualisation doit aider à voir les sorties disponibles.

Types de sorties :

```text
retour au corps ;
retrait ;
release ;
annulation ;
fausse résolution ;
bifurcation ;
réduction ;
repasser live ;
fermeture de halo ;
stabilisation sub ;
raréfaction ;
cut.
```

Une limite devient plus jouable si la sortie est visible.

Règle :

```text
pas de zone de bord sans sortie lisible.
```

---

# 7. Override visible

Si override est possible, il doit être lisible comme décision humaine, pas comme bug.

La visualisation peut indiquer :

```text
override possible ;
override actif ;
override dangereux ;
override impossible.
```

Override possible si :

```text
niveau sonore non dangereux ;
sortie disponible ;
risque compris ;
source live non remplacée involontairement ;
durée maîtrisable.
```

Override impossible ou très contraint si :

```text
feedback incontrôlé ;
freeze sans release ;
loop remplace live sans décision ;
source optionnelle absente mais supposée présente ;
sortie inexistante ;
risque technique critique.
```

---

# 8. Priorité de visualisation

La priorité générale de `22` reste valide :

```text
risque critique > contrôle touché > objet temporel actif > état de scène > source configuration > vue de fond.
```

Elle doit maintenant intégrer :

```text
P0 : risque critique ou sortie obligatoire ;
P1 : contrôle touché + amplitude + zone ;
P2 : objet temporel actif + release / sortie ;
P3 : état de scène + sous-fonction du corps ;
P4 : source live prioritaire ;
P5 : trajectoire armée ;
P6 : configuration de source ;
P7 : informations de fond.
```

---

# 9. Exemples de vues contextuelles

## 9.1 Pressure touché

```text
fonction: pression
corps: corps-pression / corps-ancrage
source: sub + didgeridoo
zone: expressive ou bord
risque: low-mid / didgeridoo mask
sorties: réduire sub, split, retrait, override court.
```

## 9.2 Withdrawal touché

```text
fonction: retrait
corps: corps-attente / corps-limite
source retirée: halo / sub / polytexture / live trace
zone: sûre / bord / danger
risque: panne ou perte du corps
sorties: retour au corps, repasser live, pre-drop, suspension.
```

## 9.3 Freeze actif

```text
fonction: exposition ou suspension
source gelée: nommée
release: visible
corps restant: indiqué
zone: sûre / bord / danger / override
sorties: release, cut, retour au corps, réduire halo.
```

## 9.4 Live priority warning

```text
source menacée: didgeridoo ou guimbardes
cause: sub / loop / polytexture / field / halo
fonction menacée: corps-geste, micro-pulse, formants, agency
sorties: réduire cause, repasser live, filtrer, override si temporaire.
```

---

# 10. Règle anti-dashboard

La visualisation des amplitudes et limites ne doit pas devenir un tableau permanent.

Elle doit rester :

```text
contextuelle ;
rare ;
priorisée ;
lisible ;
performative ;
retirable.
```

Ce qui est interdit :

```text
monitoring permanent de toutes les zones ;
page technique à chaque geste ;
vue décorative autonome ;
indicateurs qui remplacent l’écoute ;
surcharge de warnings.
```

---

# 11. Décision actuelle

`22` reste valide comme document de base sur la visualisation contextuelle.

Cet addendum précise que la visualisation doit aussi soutenir :

```text
amplitudes ;
zones de bord ;
limites jouables ;
corps comme sous-fonctions ;
sorties ;
override humain.
```

Prochaine étape recommandée :

```text
relire les modules Router / Conductor / Conflict pour vérifier que ces informations peuvent circuler sans créer de surcharge.
```

Ne pas encore créer :

```text
layout ;
interface graphique ;
patch ;
prototype.
```
