# AUDIT COMPATIBILITE BUDGET LATENCE CHARGE DEGRADATION AVEC CORPUS v0.1

Projet : Vesperare
Statut : audit compatibilite estimation latence / charge / risques de surcharge
Date : 2026-06-22

Sources actives principales :

- `DECISION_RUNTIME_MAX_STANDALONE_LATENCE_SANS_COMPROMIS_VESPERARE_v0_1.md`
- `SPECIFICATION_BUDGET_LATENCE_CHARGE_DEGRADATION_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_ARCHITECTURE_RUNTIME_PORTABLE_MAX_RNBO_M4L_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_RUNTIME_PORTABLE_MAX_RNBO_M4L_VESPERARE_v0_1.md`
- `ARBITRAGE_RUNTIME_HOST_PORTABILITE_LATENCE_VESPERARE_v0_1.md`
- `SPECIFICATION_BLOC_GENERATION_SONORE_MOTIFS_RYTHMIQUES_MELODIQUES_v0_1.md`
- `REVERBS_ESPACE_REACTIF_v0_2.md`
- `SPECIFICATION_SYSTEME_DECISIONNEL_CONCEPTUEL_VESPERARE_v0_1.md`
- `AUDIT_TRACABILITE_CAHIER_CHARGES_GENERATIF_STYLISTIQUE_v0_1.md`

But :

```text
verifier que l'estimation latence / charge / risques de surcharge reste compatible
avec le corpus actif, ne transforme pas les estimations en seuils finaux,
ne deplace pas les choix artistiques vers la technique, et s'aligne sur
la decision Max standalone.
```

Hors perimetre :

```text
choix materiel final ;
interface audio finale ;
buffer final ;
driver final ;
patch Max final ;
export RNBO final ;
implementation reelle ;
test pratique ;
seuils definitifs.
```

---

## 1. Verdict general

Verdict :

```text
compatible apres correction de vocabulaire.
```

La fiche est compatible parce qu'elle :

- traite la latence comme contrainte forte ;
- garde les chiffres comme budgets de conception ;
- distingue LAT-0, LAT-1, LAT-2 et LAT-3 ;
- distingue CHG-0, CHG-1, CHG-2 et CHG-3 ;
- preserve le didgeridoo direct ;
- preserve P0/P1 ;
- preserve `GEN-PACKET` ;
- interdit la reduction non signalee des fonctions critiques ;
- conserve halo Lock / Force hors retrait automatique ;
- conserve scenes et motifs comme decisions artistiques ;
- choisit Max standalone comme host principal ;
- ne choisit pas encore materiel, interface, driver ou buffer final.

Correction immediate requise :

```text
ne plus presenter les leviers de surcharge comme des degradations autorisees.
ils restent des hypotheses a arbitrer scene par scene.
```

---

## 2. Compatibilite avec la latence comme enjeu reel

La fiche evite deux erreurs :

```text
latence ignoree ;
latence transformee en promesse.
```

Elle definit :

```text
LAT-0 : critique immediate ;
LAT-1 : interaction jouee ;
LAT-2 : reponse musicale non immediate ;
LAT-3 : etat, espace, halo, analyse lente.
```

Verdict :

```text
compatible.
```

Fragilite `FRAG-LAT-1` :

```text
les budgets restent approximatifs et dependront du host, driver,
interface audio, patch, charge CPU et routage.
```

Traitement :

```text
les garder comme budgets de conception, pas comme promesses.
```

---

## 3. Compatibilite avec fonctions non degradables

La fiche rend non degradables :

```text
source directe didgeridoo ;
sortie principale ;
P0 ;
P1 ;
signalisation P0/P1 ;
mode de repli direct ;
etat minimal ;
controle live minimal ;
GEN-PACKET pour tout objet GEN actif.
```

Verdict :

```text
compatible.
```

Point fort :

```text
le setup minimum didgeridoo + PC est preserve meme en surcharge.
```

---

## 4. Compatibilite avec arbitrage artistique

La fiche interdit correctement :

```text
changer scene dominante sans decision ;
changer motif principal sans decision ;
changer transgression sans decision ;
passer en timbre electronique reconnaissable par surcharge ;
retirer halo voulu hors P0/P1 ;
masquer limitation P1/P2.
```

Verdict :

```text
compatible.
```

Fragilite `FRAG-LAT-2` :

```text
la fiche ne doit pas encore classer chaque scene prioritaire selon CHG-0 a CHG-3
comme si les arbitrages etaient valides.
```

Traitement :

```text
a traiter plus tard seulement si la matrice reste un outil de lecture,
pas une autorisation automatique de simplification musicale.
```

---

## 5. Compatibilite avec generation

La fiche preserve :

```text
pression rythmique ;
generation rythmique essentielle ;
motif genere ;
polytexture ;
textures ;
retours prepares ;
transgression preparee ;
GEN-PACKET.
```

Verdict :

```text
compatible.
```

Fragilite `FRAG-LAT-3` :

```text
les moteurs GEN prioritaires pour RNBO restent a classer.
```

Traitement :

```text
a traiter dans une partition des noyaux exportables.
```

---

## 6. Compatibilite avec espace / halo / reverb

La fiche preserve :

```text
reverb longue hors attaque critique ;
halo voulu non retire hors P0/P1 ;
halo Lock / Force protege ;
espace decoratif coupe en priorite s'il n'est pas decide ;
espace proche critique signale si limite.
```

Verdict :

```text
compatible.
```

Point de vigilance :

```text
certains espaces peuvent etre essentiels dans certaines scenes.
ils devront etre classes CHG-1 dans ces scenes, pas CHG-2 par defaut.
```

---

## 7. Compatibilite avec Auto-Pro

La fiche preserve :

```text
AP-CAUSE obligatoire ;
P0/P1 prioritaires ;
limitation audible signalee ;
reaction progressive non decidee comme automatisme ;
Auto-Pro non correcteur de gout.
```

Verdict :

```text
compatible.
```

Fragilite `FRAG-LAT-4` :

```text
la reaction a la surcharge n'est pas encore une logique de decision detaillee
et ne doit pas etre traitee comme telle.
```

Traitement :

```text
a traiter plus tard dans le systeme decisionnel seulement apres arbitrage
artistique explicite.
```

---

## 8. Compatibilite runtime

La fiche traite :

```text
Max standalone comme cible principale ;
Max for Live / Ableton comme cible secondaire eventuelle ;
RNBO comme horizon de sous-modules ;
Raspberry Pi / Linux / embarque comme horizon futur.
```

Elle evite :

```text
materiel definitif ;
latence finale promise ;
Linux suppose meilleur ;
Max standalone suppose toujours plus rapide sans optimisation concrete ;
RNBO suppose capable de porter tout Vesperare.
```

Verdict :

```text
compatible.
```

---

## 9. Questions restantes

Questions a traiter plus tard :

1. Quelles fonctions LAT-0 sont absolument non negociables dans Max standalone ?
2. Quelle pression rythmique minimale doit rester prioritaire conceptuellement ?
3. Quelles scenes rendent l'espace ou le halo CHG-1 plutot que CHG-2 ?
4. Quelles analyses lentes peuvent etre mises hors chemin critique sans risque musical ?
5. Quels moteurs GEN peuvent rester RNBO-compatibles sans contraindre Max standalone ?
6. Quelle signalisation surcharge est visible en live ?
7. Faut-il une matrice scenes / charge non prescriptive avant architecture Max standalone ?

---

## 10. Decision v0.1

Decision :

```text
l'estimation latence / charge / risques de surcharge est compatible avec le corpus actif
apres correction de vocabulaire.
```

Il peut servir de base au niveau suivant sous conditions :

```text
ne pas transformer les budgets en seuils finaux ;
ne pas remettre en question Max standalone comme host principal ;
ne pas choisir encore de materiel ;
ne pas promettre une latence finale ;
ne pas deplacer les decisions artistiques vers la surcharge technique ;
ne pas perdre didgeridoo direct, P0/P1, GEN-PACKET ou halo voulu.
```

Prochaine action recommandee :

```text
retour au fil principal : generation / architecture / scenes selon priorite artistique.
```

Raison :

```text
la fiche latence doit rester un garde-fou court.
la matrice scenes / charge pourra etre faite plus tard si elle reste utile,
mais elle ne doit pas prendre la place du cahier des charges musical.
```
