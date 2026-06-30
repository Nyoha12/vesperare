# AUDIT COMPATIBILITE ARCHITECTURE TECHNIQUE ABSTRAITE PRE MAX FOR LIVE AVEC CORPUS v0.1

Projet : Vesperare
Statut : audit de compatibilite pre-Max for Live
Date : 2026-06-21

Sources actives principales :

- `SPECIFICATION_ARCHITECTURE_TECHNIQUE_ABSTRAITE_PRE_MAX_FOR_LIVE_VESPERARE_v0_1.md`
- `MATRICE_BLOCS_RESPONSABILITES_PACKETS_CONTROLES_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_ARCHITECTURE_FONCTIONNELLE_ABSTRAITE_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_FONCTIONNELLE_ABSTRAITE_VESPERARE_v0_1.md`
- `SPECIFICATION_SYSTEME_DECISIONNEL_CONCEPTUEL_VESPERARE_v0_1.md`
- `SPECIFICATION_PROTOCOLS_SIDECHAINS_CONCEPTUELS_v0_1.md`
- `SPECIFICATION_ANALYSES_INDICES_CONCEPTUELS_ET_CONFIANCE_v0_1.md`
- `SPECIFICATION_BLOC_GENERATION_SONORE_MOTIFS_RYTHMIQUES_MELODIQUES_v0_1.md`
- `REVERBS_ESPACE_REACTIF_v0_2.md`
- `INDEX_ACTIF_VESPERARE_CONCEPTION.md`

But :

```text
verifier que l'architecture technique abstraite pre-Max for Live
reste compatible avec le corpus actif, sans devenir une architecture
Ableton / Max for Live reelle trop tot.
```

Hors perimetre :

```text
choix de devices ;
choix de plugins ;
choix d'algorithmes ;
choix de seuils ;
patch Max ;
routage Ableton final ;
interface graphique ;
controleur physique ;
evaluation pratique.
```

---

## 1. Verdict general

Verdict :

```text
compatible apres corrections mineures appliquees.
```

La fiche est compatible parce qu'elle :

- traduit les blocs en familles techniques sans fixer les devices ;
- definit des pistes potentielles sans les transformer en pistes Ableton finales ;
- garde les flux comme flux conceptuels ;
- maintient la separation audio / analyse / controle / permission / signalisation ;
- preserve la matrice P0/P1/P2/P3/P4/P5 ;
- maintient `ANA` comme observation ;
- maintient `DEC` comme arbitrage ;
- maintient `GEN` comme production fonctionnelle bornee ;
- maintient `SPC` et `HAL` comme fonctions distinctes ;
- maintient `AUTO-PRO` comme protection et coherence douce, pas comme compositeur ;
- couvre le setup minimum didgeridoo + PC.

Corrections appliquees pendant audit :

```text
COR-TECH-A : completer la liste des familles techniques
             avec FAM-STATE, FAM-PROTO et FAM-OUT.

COR-TECH-B : remplacer les references incorrectes FAM-SCN
             et FAM-LIVE par FAM-STATE / STATE-SCN
             et FAM-STATE / STATE-LIVE.

COR-TECH-C : remplacer FAM-GEN-RET par FAM-GEN / GEN-RET.

COR-TECH-D : remplacer une formulation d'essai par "evaluation pratique"
             dans le hors perimetre.
```

Pas de correction structurante requise.

---

## 2. Compatibilite avec le niveau pre-Max

### 2.1. Ce qui reste bien abstrait

La fiche parle de :

```text
familles techniques ;
pistes potentielles ;
groupes fonctionnels ;
flux conceptuels ;
cycles de jeu ;
contraintes de performance live ;
contraintes de future architecture Max for Live.
```

Elle ne choisit pas :

```text
device ;
plugin ;
algorithme ;
seuil ;
controleur ;
patch ;
routage final.
```

Verdict :

```text
niveau d'abstraction correct.
```

### 2.2. Risque restant

Risque :

```text
"piste potentielle" peut etre lue comme "piste Ableton obligatoire".
```

Garde-fou :

```text
une piste potentielle est une place logique.
elle peut devenir piste, groupe, retour, module, etat, ou simple
partie d'un module plus large.
```

---

## 3. Compatibilite avec la matrice blocs / responsabilites

### 3.1. Correspondance blocs -> familles

Correspondance validee :

```text
SRC      -> FAM-SRC
SCN      -> FAM-STATE / STATE-SCN
LIVE     -> FAM-STATE / STATE-LIVE
ANA      -> FAM-ANA
DEC      -> FAM-DEC
PROTO    -> FAM-PROTO
GEN      -> FAM-GEN
SPC      -> FAM-SPC
HAL      -> FAM-HAL
AUTO-PRO -> FAM-AUTOPRO
SIG      -> FAM-SIG
OUT      -> FAM-OUT
```

Cette correspondance est compatible avec la matrice.

### 3.2. Packets conceptuels

La fiche ne transforme pas les packets en bus obligatoires.

Elle conserve :

```text
SRC-PACKET ;
ANA-PACKET ;
SCN-PACKET ;
LIVE-PACKET ;
PERM-PACKET ;
DEC-PACKET ;
PROTO-PACKET ;
GEN-PACKET ;
SPC-PACKET ;
HAL-PACKET ;
PROTECT-PACKET ;
SIG-PACKET ;
OUT-PACKET.
```

Verdict :

```text
compatible.
```

Point de vigilance :

```text
la future architecture Max for Live devra decider quels packets
deviennent de vrais messages, et lesquels restent des conventions
documentaires ou des etats internes.
```

---

## 4. Compatibilite avec generation et tracabilite stylistique

### 4.1. GEN reste borne

La fiche garde :

```text
PERM + DEC + SCN + inspiration/fonction + source/origine
-> famille GEN -> GEN-PACKET -> audio genere ou demande bornee.
```

Cela respecte :

- generation non autonome ;
- sortie prevue ;
- risque de cliche explicite ;
- autonomie bornee ;
- retour non choisi seul ;
- transgression non choisie seule.

Verdict :

```text
compatible.
```

### 4.2. Inspirations conservees

La fiche ne redetaille pas toutes les inspirations, mais elle preserve le point essentiel :

```text
GEN-PACKET obligatoire.
```

Cela suffit parce que le detail Keita, jazz, techno, trance, sound-system,
dubstep, acid, voix, microtonalite, didgeridoo, gong et peaux est deja
conserve dans les fiches generation et tracabilite.

Verdict :

```text
compatible, a condition que la future architecture garde GEN-PACKET
dans chaque objet generatif.
```

---

## 5. Compatibilite avec didgeridoo / grave / gong

### 5.1. Didgeridoo

La fiche pre-Max conserve :

```text
SRC-DID ;
ANA-DID ;
PROTO-DID ;
mode didgeridoo ;
didgeridoo libre protege ;
systeme adapte au didgeridoo ;
didgeridoo adapte au systeme si decide ;
guide harmonique ;
generation par souffle, attaques, partiels.
```

Interdits preserves :

```text
didgeridoo controleur cache ;
didgeridoo force en basse ;
baisse automatique hors P0/P1 ;
traitement sans fonction.
```

Verdict :

```text
compatible.
```

### 5.2. Grave / sub / gong

La fiche pre-Max conserve :

```text
ANA-GRV ;
PROTO-GRV ;
GEN-GRV ;
SPC-GRV ;
AP-SUB ;
GRP-OUT-SUB ;
mode grave ;
grave soutien, retrait ou libre ;
gong bloom ;
grave spatial distingue du sub porteur.
```

Verdict :

```text
compatible.
```

Point de vigilance :

```text
GRP-OUT-SUB ne doit pas etre lu comme sortie physique dediee obligatoire.
il designe seulement une responsabilite de grave surveillee.
```

---

## 6. Compatibilite avec reverb / espace / halo

### 6.1. Separation SPC / HAL / GEN-HAL

La fiche pre-Max maintient :

```text
FAM-SPC : espace, reverb, salle, monde, proximite, immersion ;
FAM-HAL : memoire, queue comme maintien, verrouillage ;
FAM-GEN / GEN-HAL : objet generatif lie au halo.
```

Verdict :

```text
compatible.
```

### 6.2. Salle reelle

La salle reste :

```text
source ;
analyse ;
risque ;
enrichissement possible ;
relation a l'espace.
```

Elle ne devient pas :

```text
decideur musical ;
obligation de mesure permanente ;
source d'automatisation expressive non decidee.
```

Verdict :

```text
compatible.
```

### 6.3. Risque restant

Risque :

```text
les groupes SPC peuvent etre lus comme presets de reverb.
```

Garde-fou :

```text
chaque groupe SPC doit garder fonction, source, monde, sortie et risque.
```

---

## 7. Compatibilite avec analyses / confiance

La fiche pre-Max separe :

```text
copie d'analyse ;
source audible ;
ANA-PACKET ;
CONF ;
decision.
```

Elle conserve :

```text
ANA informe ;
ANA ne decide pas ;
CONF-4 ne cree pas de permission ;
CONF-X bloque ou signale les reactions fortes.
```

Verdict :

```text
compatible.
```

Point de vigilance :

```text
les sous-familles ANA ne doivent pas devenir une obligation
d'analyse exhaustive permanente.
```

---

## 8. Compatibilite avec Auto-Pro

La fiche pre-Max limite AUTO-PRO a :

```text
AP-SAFE ;
AP-MIX ;
AP-SUB ;
AP-FEED ;
AP-ATT ;
AP-SRC ;
AP-DENS ;
AP-SPC ;
AP-SIG.
```

Elle preserve les interdits :

```text
pas de choix esthetique ;
pas de choix de scene ;
pas de choix de motif ;
pas de choix de retour ;
pas de choix de transgression ;
pas de changement de monde expressif hors P0/P1.
```

Verdict :

```text
compatible.
```

Point de vigilance :

```text
AP-MIX et AP-SPC peuvent devenir trop intrusifs si P1 est mal defini.
P1 doit rester lisibilite vitale, pas gout de mix.
```

---

## 9. Compatibilite avec controles live

La fiche pre-Max separe :

```text
premier niveau live ;
deuxieme niveau scene ;
niveau interne non joue directement.
```

Premier niveau compatible :

```text
scene dominante ;
mode didgeridoo ;
mode grave ;
permission generation ;
regime generation ;
monde spatial ;
proximite/immersion ;
halo Auto/Lock/Force/Cut ;
retour / sortie ;
transgression autorisee ;
risque accepte/refuse ;
signal P0/P1/P2.
```

Verdict :

```text
compatible avec la charge mentale live.
```

Point de vigilance :

```text
le premier niveau reste encore large.
la future interface devra le hierarchiser sans perdre de fonction.
```

---

## 10. Compatibilite setup minimum didgeridoo + PC

La fiche pre-Max inclut explicitement :

```text
SRC-DID ;
ANA-DID ;
ANA-GRV ;
ANA-RHY ;
STATE-LIVE ;
STATE-SCN ;
DEC-P0/P1/P2 ;
PROTO-DID ;
PROTO-GRV ;
PROTO-GEN ;
GEN-SRC/RHY/LIN/GRV/HAL/RET selon permission ;
SPC-PROX ou SPC-IMM ;
HAL-SRC ;
AUTO-PRO ;
SIG ;
OUT.
```

Elle ne requiert pas :

```text
gong ;
voix ;
tambour ;
micro de salle permanent ;
controleur physique complexe ;
generation permanente ;
retour automatique ;
transgression obligatoire.
```

Verdict :

```text
compatible.
```

Point de vigilance :

```text
le setup minimum devra probablement avoir une vue live simplifiee,
mais cela releve de l'interface future, pas de cette fiche.
```

---

## 11. Compatibilite avec superposition des scenes

La fiche pre-Max ne rend pas les scenes exclusives.

Elle garde :

```text
STATE-SCN ;
couches ;
cycle scene / passage ;
roles DOM/LAYER/GESTE/ETAT/TRACE via les fiches amont ;
permissions ;
priorites P0/P1/P2.
```

Verdict :

```text
compatible.
```

Point de vigilance :

```text
si les futures pistes potentielles sont traduites trop rigidement,
elles pourraient recreer des scenes exclusives.
```

Garde-fou :

```text
les familles techniques doivent supporter superposition de roles,
pas seulement activation d'un preset de scene.
```

---

## 12. Corrections appliquees

### COR-TECH-A - Liste des familles techniques incomplete

Probleme :

```text
la liste d'exemples de familles ne citait pas toutes les familles
ensuite utilisees.
```

Correction :

```text
ajout de FAM-STATE, FAM-PROTO et FAM-OUT.
```

Statut :

```text
applique.
```

### COR-TECH-B - FAM-SCN / FAM-LIVE

Probleme :

```text
la fiche utilisait FAM-SCN et FAM-LIVE dans un cycle,
alors que ces responsabilites appartiennent a FAM-STATE.
```

Correction :

```text
FAM-SCN -> FAM-STATE / STATE-SCN.
FAM-LIVE -> FAM-STATE / STATE-LIVE.
```

Statut :

```text
applique.
```

### COR-TECH-C - FAM-GEN-RET

Probleme :

```text
FAM-GEN-RET pouvait etre lu comme famille technique autonome.
```

Correction :

```text
FAM-GEN-RET -> FAM-GEN / GEN-RET.
```

Statut :

```text
applique.
```

### COR-TECH-D - Formulation evaluation

Probleme :

```text
la fiche utilisait une formulation d'essai dans le hors perimetre.
```

Correction :

```text
remplace par "evaluation pratique".
```

Statut :

```text
applique.
```

---

## 13. Fragilites restantes

### FRAG-TECH-1 - Pistes potentielles trop concretes

Risque :

```text
les POT/GRP peuvent etre lus comme session Ableton deja decidee.
```

Garde-fou :

```text
POT/GRP = places logiques, pas pistes finales.
```

### FRAG-TECH-2 - Flux conceptuel devenu routage

Risque :

```text
les flux audio/controle/analyse peuvent etre traduits trop vite
en routages reels.
```

Garde-fou :

```text
la future architecture Max for Live doit justifier chaque routage
par une fonction, un packet ou un protocole.
```

### FRAG-TECH-3 - Premier niveau live encore large

Risque :

```text
trop de controles directs.
```

Garde-fou :

```text
separer controles vitaux, modes, scene et details internes.
```

### FRAG-TECH-4 - Analyse trop exhaustive

Risque :

```text
vouloir analyser toutes les sous-familles tout le temps.
```

Garde-fou :

```text
les analyses peuvent etre conditionnelles par scene, source et risque.
```

### FRAG-TECH-5 - Auto-Pro trop intrusif

Risque :

```text
AP-MIX ou AP-SPC deviennent corrections de gout.
```

Garde-fou :

```text
P1 = lisibilite vitale.
P5 = coherence douce non esthetique.
```

---

## 14. Questions restantes

Ces questions peuvent guider la prochaine fiche :

1. Quelles familles doivent devenir pistes audio, pistes MIDI, groupes, retours, modules de controle ou etats internes ?
2. Quel est le noyau minimal commun entre setup complet et setup didgeridoo seul ?
3. Quelle separation technique future entre source audible, copie d'analyse et source generative ?
4. Les espaces SPC et halos HAL doivent-ils etre separes en session, ou seulement separes en logique de controle ?
5. Comment representer les objets GEN actifs : liste d'objets, scenes preparees, modes globaux ou combinaisons ?
6. Quel niveau de signalisation peut etre vraiment supportable en live ?
7. A quel moment faudra-t-il transformer les permissions P0/P1/P2/P3/P4/P5 en controles reels ?

---

## 15. Decision v0.1

Decision :

```text
l'architecture technique abstraite pre-Max for Live est compatible
avec le corpus actif apres corrections.
```

Elle peut servir de base a une architecture Max for Live conceptuelle.

Condition :

```text
la prochaine fiche devra rester encore architecturale :
elle pourra proposer une organisation de session, de familles de pistes,
de modules de controle et de flux Ableton/Max possibles,
mais elle ne devra pas encore choisir de devices, plugins, algorithmes
ou seuils.
```

Prochaine action recommandee :

```text
SPECIFICATION_ARCHITECTURE_MAX_FOR_LIVE_CONCEPTUELLE_VESPERARE_v0_1
```
