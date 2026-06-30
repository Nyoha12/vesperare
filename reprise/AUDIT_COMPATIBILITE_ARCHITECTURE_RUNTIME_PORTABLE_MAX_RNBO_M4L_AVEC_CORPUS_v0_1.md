# AUDIT COMPATIBILITE ARCHITECTURE RUNTIME PORTABLE MAX RNBO M4L AVEC CORPUS v0.1

Projet : Vesperare
Statut : audit compatibilite runtime portable, corrige par decision Max standalone
Date : 2026-06-22

Sources actives principales :

- `DECISION_RUNTIME_MAX_STANDALONE_LATENCE_SANS_COMPROMIS_VESPERARE_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_RUNTIME_PORTABLE_MAX_RNBO_M4L_VESPERARE_v0_1.md`
- `ARBITRAGE_RUNTIME_HOST_PORTABILITE_LATENCE_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_FOR_LIVE_DETAILLEE_NIVEAU_3_TRADUCTION_SESSION_ABSTRAITE_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_MAX_FOR_LIVE_DETAILLEE_NIVEAU_3_TRADUCTION_SESSION_ABSTRAITE_VESPERARE_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_MAX_FOR_LIVE_DETAILLEE_NIVEAU_2_MODULES_MESSAGES_VESPERARE_v0_1.md`
- `SPECIFICATION_BLOC_GENERATION_SONORE_MOTIFS_RYTHMIQUES_MELODIQUES_v0_1.md`
- `REVERBS_ESPACE_REACTIF_v0_2.md`
- `SPECIFICATION_SYSTEME_DECISIONNEL_CONCEPTUEL_VESPERARE_v0_1.md`
- `AUDIT_TRACABILITE_CAHIER_CHARGES_GENERATIF_STYLISTIQUE_v0_1.md`

But :

```text
verifier que l'architecture runtime portable reste exploitable apres
la decision Max standalone, conserve les besoins stylistiques et generatifs,
traite la latence comme contrainte reelle, et ne transforme pas la portabilite
en priorite superieure au host principal.
```

Hors perimetre :

```text
choix materiel final ;
interface audio finale ;
implementation reelle ;
patch Max final ;
export RNBO final ;
device Max for Live final ;
test pratique ;
seuils definitifs.
```

---

## 1. Verdict general

Verdict :

```text
compatible comme support historique, avec correction de trajectoire.
```

La fiche est compatible parce qu'elle :

- corrige la dependance implicite a Ableton ;
- conserve Max for Live comme cible secondaire possible ;
- integre Max standalone comme host principal apres correction ;
- integre RNBO comme horizon de sous-modules exportables ;
- traite Linux/embarque comme cible future, pas comme garantie ;
- formalise la latence en classes LAT-0 a LAT-3 ;
- donne des estimations prudentes et non definitives ;
- preserve le setup minimum didgeridoo + PC ;
- preserve `GEN-PACKET` ;
- preserve la separation CORE / HOST / TARGET ;
- garde la latence comme contrainte de conception, pas comme promesse.

Correction immediate requise :

```text
ne plus lire cette fiche comme une trajectoire portable prioritaire.
la trajectoire active est Max standalone sans compromis musical reel.
```

---

## 2. Compatibilite avec l'arbitrage runtime

L'arbitrage historique demandait :

```text
ne pas continuer directement vers Ableton ;
concevoir Vesperare comme runtime-portable ;
garder Max standalone, Max for Live, RNBO et embarque comme cibles possibles ;
ne pas supposer Linux meilleur ;
ne pas supposer RNBO capable de porter tout Vesperare.
```

La fiche respecte cela historiquement par :

```text
CORE-* ;
HOST-ADAPTER ;
TARGET-ADAPTER ;
TARGET-MAX-STANDALONE ;
TARGET-MAX-FOR-LIVE ;
TARGET-RNBO-SUBMODULE ;
TARGET-RASPBERRY-PI ;
TARGET-VST3 ;
TARGET-EMBEDDED-FUTURE.
```

Verdict :

```text
compatible.
```

---

## 3. Compatibilite latence

La fiche distingue :

```text
LAT-0 : critique immediate ;
LAT-1 : interaction jouee ;
LAT-2 : generation musicale non immediate ;
LAT-3 : espace, halo, analyse lente.
```

Compatibilite :

- le didgeridoo direct est en LAT-0 ;
- Auto-Pro P0/P1 est en LAT-0 ;
- transformation jouee est en LAT-1 ;
- generation musicale non immediate est en LAT-2 ;
- halo/reverbs longues/analyse lente sont en LAT-3 ;
- LAT-0/LAT-1 doivent rester separables de LAT-2/LAT-3 ;
- les reverbs longues ne doivent pas porter l'attaque critique ;
- les analyses lentes ne doivent pas bloquer le son.

Verdict :

```text
compatible.
```

Fragilite `FRAG-RT-1` :

```text
les chiffres de latence restent des estimations.
```

Traitement :

```text
les chiffres doivent rester des budgets de conception jusqu'a mesure
future eventuelle ou choix materiel final.
```

---

## 4. Compatibilite musicale

La fiche conserve :

```text
pression rythmique ;
espace ;
grave ;
densite ;
rarete ;
attente ;
resolution ;
techno suspendue ;
transgression decidee ;
naturalisation ;
ambiguites acoustiques ;
inspirations tracees.
```

Compatibilite :

- l'architecture runtime ne remplace pas l'intention musicale ;
- les inspirations restent tracees par phenomene ;
- les styles ne deviennent pas des cibles techniques ;
- les choix de host ne dictent pas les fonctions Vesperare.

Verdict :

```text
compatible.
```

---

## 5. Compatibilite generation

La fiche conserve :

```text
CORE-GEN-RHY ;
CORE-GEN-LIN ;
CORE-GEN-GRV ;
CORE-GEN-TEX ;
CORE-GEN-VOX ;
CORE-GEN-HALSPC ;
CORE-GEN-TRG ;
CORE-GEN-RET.
```

Elle impose :

```text
GEN-PACKET obligatoire.
```

Compatibilite :

- generation sonore et motifs restent centraux ;
- RNBO est possible pour moteurs DSP stables ;
- scene/decision/interface ne sont pas forcees en RNBO ;
- retour, transgression et motif ne deviennent pas automatiques.

Verdict :

```text
compatible.
```

Fragilite `FRAG-RT-2` :

```text
les moteurs GEN candidats RNBO ne sont pas encore classes par priorite.
```

Traitement :

```text
a traiter dans une future partition technique des noyaux exportables.
```

---

## 6. Compatibilite didgeridoo / sources / setup minimum

La fiche preserve :

```text
source directe protegee ;
didgeridoo direct ;
didgeridoo libre ;
didgeridoo integre si decide ;
adaptation didgeridoo / systeme ;
setup minimum didgeridoo + PC ;
source optionnelle neutre.
```

Compatibilite :

- LAT-0 protege le direct ;
- LAT-1 couvre la transformation jouee ;
- les traitements non critiques peuvent etre separes ;
- la degradation doit revenir au direct protege.

Verdict :

```text
compatible.
```

---

## 7. Compatibilite espace / halo / reverb

La fiche preserve :

```text
CORE-SPC-PROX ;
CORE-SPC-WORLD ;
CORE-SPC-IMM ;
CORE-SPC-REACT ;
CORE-SPC-ROOM ;
CORE-SPC-GRV ;
CORE-HAL-SRC ;
CORE-HAL-MEM ;
CORE-HAL-LOCK ;
CORE-HAL-FORCE ;
CORE-HAL-CUT ;
CORE-HAL-EXIT.
```

Compatibilite :

- espace et halo restent separables ;
- reverb longue hors attaque critique ;
- halo voulu non retire hors P0/P1 ;
- certains moteurs SPC/HAL peuvent devenir RNBO seulement si stabilises.

Verdict :

```text
compatible.
```

---

## 8. Compatibilite Auto-Pro / degradation

La fiche preserve :

```text
CORE-AP-SAFE ;
CORE-AP-MIX ;
CORE-AP-SUB ;
CORE-AP-FEED ;
CORE-AP-ATTACK ;
CORE-AP-SRC ;
CORE-AP-DENSITY ;
CORE-AP-SPC ;
CORE-AP-HAL ;
CORE-AP-OUT.
```

Elle impose :

```text
AP-CAUSE obligatoire avant limitation.
```

Elle ne doit plus prevoir de degradation musicale.
Reponses techniques acceptables :

```text
sortir analyse lente du chemin critique ;
precalculer ou alleger un calcul ;
optimiser routage et patch ;
ameliorer driver, buffer ou interface ;
garder source en direct protege ;
signaler P1/P2.
```

Verdict :

```text
compatible.
```

Fragilite `FRAG-RT-3` :

```text
la strategie d'optimisation sans compromis musical n'est pas encore assez detaillee.
```

Traitement :

```text
a traiter dans la future architecture Max standalone.
```

---

## 9. Compatibilite portabilite

La fiche distingue :

```text
candidates RNBO ou export DSP ;
non candidates RNBO au depart.
```

Compatible parce qu'elle interdit :

```text
RNBO suppose capable de porter tout Vesperare ;
Max standalone suppose toujours plus rapide ;
Linux suppose automatiquement meilleur ;
embarque choisi avant stabilisation du noyau.
```

Verdict :

```text
compatible.
```

Fragilite `FRAG-RT-4` :

```text
les frontieres entre CORE, HOST-ADAPTER et TARGET-ADAPTER devront etre
maintenues rigoureusement dans les fiches suivantes.
```

Traitement :

```text
chaque future traduction technique devra indiquer si elle touche CORE,
HOST ou TARGET.
```

---

## 10. Questions restantes

Questions a traiter plus tard :

1. Quelles fonctions LAT-0 doivent etre garanties absolument dans Max standalone ?
2. Quels moteurs GEN peuvent rester RNBO-compatibles sans contraindre Max standalone ?
3. Faut-il une fiche dediee optimisation latence / charge CPU sans compromis ?
4. Quels elements M4L/Ableton deviennent hors trajectoire active ?
5. Quel role secondaire garder a Ableton eventuellement ?
6. Quel sous-ensemble pourrait devenir Raspberry Pi ou Bela plus tard ?
7. Quels signaux live doivent informer d'une surcharge ou d'une limitation technique ?

---

## 11. Decision v0.1

Decision :

```text
l'architecture runtime portable Max / RNBO / M4L reste compatible comme support,
mais elle est corrigee par la decision Max standalone.
```

Elle peut servir de base au niveau suivant sous conditions :

```text
ne pas revenir a une absence de host principal ;
ne pas choisir encore de materiel definitif ;
ne pas promettre une latence sans cible ;
ne pas surestimer RNBO ;
ne pas supposer Linux meilleur ;
ne pas perdre LAT-0/LAT-1 ;
ne pas perdre le setup didgeridoo + PC ;
ne pas perdre GEN-PACKET ;
ne pas fusionner CORE, HOST et TARGET.
```

Prochaine action recommandee :

```text
SPECIFICATION_BUDGET_LATENCE_CHARGE_DEGRADATION_VESPERARE_v0_1
```

Raison :

```text
Max standalone est maintenant choisi comme runtime principal.
il faut formaliser les budgets de latence et les classes de charge
comme garde-fous d'optimisation, sans degradations musicales autorisees.
```

---

## 12. Suivi budget latence / charge / degradation

Action realisee :

```text
SPECIFICATION_BUDGET_LATENCE_CHARGE_DEGRADATION_VESPERARE_v0_1.md
```

Audit cree :

```text
AUDIT_COMPATIBILITE_BUDGET_LATENCE_CHARGE_DEGRADATION_AVEC_CORPUS_v0_1.md
```

Conclusion :

```text
l'estimation latence / charge / risques de surcharge est compatible avec le corpus actif.
elle precise les risques, les interdits, les signaux de surcharge
et les fonctions critiques, sans autoriser de compromis musical reel.
```

Prochaine action recommandee :

```text
SPECIFICATION_MATRICE_SCENES_CHARGE_DEGRADATION_RUNTIME_VESPERARE_v0_1
```
