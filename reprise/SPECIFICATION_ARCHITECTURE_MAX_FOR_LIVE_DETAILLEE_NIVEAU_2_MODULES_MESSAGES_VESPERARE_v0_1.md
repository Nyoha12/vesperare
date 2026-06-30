# SPECIFICATION ARCHITECTURE MAX FOR LIVE DETAILLEE NIVEAU 2 MODULES MESSAGES VESPERARE v0.1

Projet : Vesperare
Statut : specification d'architecture Max for Live detaillee niveau 2 modules/messages
Date : 2026-06-22

Sources actives principales :

- `AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_FOR_LIVE_DETAILLEE_NIVEAU_1_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_MAX_FOR_LIVE_DETAILLEE_NIVEAU_1_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_FOR_LIVE_CONCEPTUELLE_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_MAX_FOR_LIVE_CONCEPTUELLE_VESPERARE_v0_1.md`
- `SPECIFICATION_SYSTEME_DECISIONNEL_CONCEPTUEL_VESPERARE_v0_1.md`
- `SPECIFICATION_BLOC_GENERATION_SONORE_MOTIFS_RYTHMIQUES_MELODIQUES_v0_1.md`
- `SPECIFICATION_PROTOCOLS_SIDECHAINS_CONCEPTUELS_v0_1.md`
- `SPECIFICATION_ANALYSES_INDICES_CONCEPTUELS_ET_CONFIANCE_v0_1.md`
- `REVERBS_ESPACE_REACTIF_v0_2.md`
- `AUDIT_TRACABILITE_CAHIER_CHARGES_GENERATIF_STYLISTIQUE_v0_1.md`

But :

```text
preciser les modules generiques et les messages conceptuels necessaires
a l'architecture Max for Live niveau 1, sans choisir encore les objets Max,
devices, plugins, algorithmes, seuils, routages finaux ou interface finale.
```

Cette fiche peut definir :

```text
responsabilites de modules generiques ;
familles de messages conceptuels ;
champs obligatoires des packets ;
causes de limitation ;
priorites de signalisation ;
flux de messages niveau 2 ;
subset minimal didgeridoo + PC.
```

Cette fiche ne doit pas definir :

```text
objets Max exacts ;
devices precis ;
plugins ;
algorithmes ;
seuils numeriques ;
routage Ableton final ;
mapping controleur final ;
interface graphique finale ;
mise en oeuvre reelle.
```

---

## 1. Decision centrale niveau 2

Decision :

```text
le niveau 2 doit etre une architecture de contrats.
```

Contrat signifie :

```text
un module annonce ce qu'il recoit, ce qu'il produit,
ce qu'il peut limiter, ce qu'il ne doit jamais decider seul,
et quels messages rendent son action lisible.
```

Principe :

```text
les modules restent des responsabilites.
les messages restent des contrats de conception.
les packets restent des structures conceptuelles.
```

Interdit central :

```text
aucun nom de module ou message de cette fiche ne doit etre traite
comme objet Max, device, routage ou mapping final.
```

---

## 2. Grammaire conceptuelle des messages

Convention niveau 2 :

```text
MSG-DOMAIN-ACTION
```

Domaines :

```text
SRC : source ;
DID : didgeridoo ;
GNG : gong ;
PRC : percussion / peaux ;
VOX : voix ;
SAL : salle ;
ANA : analyse ;
CONF : confiance ;
SCN : scene ;
ROLE : role musical ;
PERM : permission ;
DEC : decision / arbitrage ;
PROTO : protocole relationnel ;
GEN : generation ;
GRV : grave / sub / basse ;
SPC : espace / reverb ;
HAL : halo / memoire / queue ;
AP : Auto-Pro ;
SIG : signalisation ;
RET : retour ;
OUT : sortie / coherence audible.
```

Types d'action :

```text
STATE      : etat ;
REQUEST    : demande ;
ALLOW      : autorisation ;
LIMIT      : limitation ;
BLOCK      : blocage ;
RELEASE    : relachement ;
ACTIVE     : actif ;
EXIT       : sortie ;
CONFLICT   : conflit ;
RISK       : risque ;
CAUSE      : cause ;
VISIBLE    : visible ;
ACK        : acquitte ;
HISTORY    : memoire de signal.
```

Champs communs possibles :

```text
source ;
scene ;
role ;
fonction ;
inspiration ;
phenomene ;
permission ;
cause ;
priorite ;
risque ;
confiance ;
etat ;
sortie ;
visibilite ;
trace ;
commentaire.
```

Champs interdits comme obligations de niveau 2 :

```text
valeurs chiffrees finales ;
seuils numeriques ;
frequences exactes ;
latences exactes ;
chaines de devices ;
objets Max exacts.
```

---

## 3. Packets obligatoires niveau 2

### 3.1. `SRC-PACKET`

Fonction :

```text
decrire une source disponible ou absente sans la transformer.
```

Champs :

```text
source ;
presence ;
role possible ;
protection ;
risque ;
copie disponible pour analyse ;
copie disponible pour transformation ;
copie disponible pour generation ;
copie disponible pour espace / halo ;
etat audible.
```

Interdit :

```text
decider la transformation ou la baisse de niveau.
```

### 3.2. `ANA-PACKET`

Fonction :

```text
transmettre indices, confiance, doutes et risques.
```

Champs :

```text
source ou fonction observee ;
indice ;
confiance ;
doute ;
risque ;
cause probable ;
impact musical possible ;
besoin de signalisation.
```

Interdit :

```text
prendre une decision musicale.
```

### 3.3. `PERM-PACKET`

Fonction :

```text
dire ce qui est autorise, limite, bloque ou demande.
```

Champs :

```text
fonction ;
source ;
role ;
scene ;
permission ;
cause ;
priorite ;
condition de sortie ;
signal requis.
```

Interdit :

```text
choisir le contenu musical.
```

### 3.4. `GEN-PACKET`

Fonction :

```text
decrire un objet generatif avant, pendant et apres son action.
```

Champs obligatoires :

```text
identifiant conceptuel ;
famille GEN ;
inspiration ;
phenomene retenu ;
fonction Vesperare ;
source ou origine perceptive ;
role DOM/LAYER/GESTE/ETAT/TRACE ;
regime ;
autonomie ;
naturalisation ;
reconnaissance ;
permission ;
sortie prevue ;
risques ;
signalisation utile.
```

Interdit :

```text
objet GEN sans trace stylistique et fonctionnelle.
```

### 3.5. `SPC-PACKET`

Fonction :

```text
decrire une action spatiale sans confondre espace, halo et generation.
```

Champs :

```text
source ;
fonction spatiale ;
monde ;
proximite ;
immersion ;
reactivite ;
salle ;
grave spatial ;
sortie prevue ;
risque de masquage ;
signal requis.
```

Interdit :

```text
reverb decorative non decidee.
```

### 3.6. `HAL-PACKET`

Fonction :

```text
decrire memoire, queue, halo source, lock, force, cut ou sortie de halo.
```

Champs :

```text
source ;
mode HAL ;
priorite ;
memoire ;
queue ;
fonction ;
permission ;
sortie prevue ;
risque de masquage ;
signal requis.
```

Interdit :

```text
retirer un halo voulu hors P0/P1.
```

### 3.7. `AP-PACKET`

Fonction :

```text
documenter une limitation ou protection Auto-Pro.
```

Champs obligatoires :

```text
cause ;
priorite P0/P1/P2/P5 ;
fonction limitee ;
source ou groupe concerne ;
effet perceptif attendu ;
condition de relachement ;
signal requis ;
visibilite.
```

Interdit :

```text
limitation sans cause nommee.
```

### 3.8. `SIG-PACKET`

Fonction :

```text
rendre visible ce qui change la jouabilite.
```

Champs :

```text
priorite ;
message court ;
cause ;
module source ;
action possible ;
etat visible ;
memoire ;
acquittement possible.
```

Interdit :

```text
diagnostic exhaustif impose en performance.
```

### 3.9. `OUT-PACKET`

Fonction :

```text
decrire l'etat audible global sans juger musicalement.
```

Champs :

```text
source essentielle audible ;
corps present ou absence decidee ;
grave lisible ou conflit decide ;
generation active ou sortie ;
halo actif ou sorti ;
espace coherent ou limite ;
P0/P1 visibles ;
retour prepare si necessaire ;
conflit global.
```

Interdit :

```text
composition, mastering ou jugement esthetique.
```

---

## 4. Modules controle / etat

### 4.1. `M-STATE-CORE`

Recoit :

```text
MSG-LIVE-STATE ;
MSG-SCN-STATE ;
MSG-SRC-STATE ;
MSG-GEN-STATE ;
MSG-SPC-STATE ;
MSG-HAL-STATE ;
MSG-AP-STATE ;
MSG-OUT-STATE.
```

Produit :

```text
MSG-STATE-SNAPSHOT ;
MSG-STATE-CHANGE ;
MSG-STATE-DOUBT.
```

Responsabilite :

```text
tenir l'etat conceptuel courant.
```

Interdits :

```text
composer ;
choisir motif ;
choisir retour ;
choisir transgression.
```

### 4.2. `M-LIVE-MODES`

Recoit :

```text
MSG-LIVE-REQUEST ;
MSG-VIEW-STATE ;
MSG-SIG-ACK.
```

Produit :

```text
MSG-LIVE-STATE ;
MSG-LIVE-RISK ;
MSG-VIEW-REQUEST.
```

Responsabilite :

```text
decrire le mode de jeu, pas le contenu musical.
```

### 4.3. `M-SCENE-MATRIX`

Recoit :

```text
MSG-SCN-DOM ;
MSG-LAYER-ALLOW ;
MSG-ROLE-REQUEST ;
MSG-PERM-STATE.
```

Produit :

```text
MSG-SCN-STATE ;
MSG-ROLE-POSSIBLE ;
MSG-ROLE-CONFLICT ;
MSG-PERM-REQUEST.
```

Responsabilite :

```text
stocker scenes comme matrices de permissions, sources, roles,
familles GEN, mondes SPC, modes HAL, sorties et risques.
```

Interdit :

```text
scene comme preset exclusif.
```

### 4.4. `M-PERMISSION-MATRIX`

Recoit :

```text
MSG-PERM-REQUEST ;
MSG-AP-LIMIT ;
MSG-SCN-STATE ;
MSG-LIVE-STATE ;
MSG-ANA-RISK ;
MSG-OUT-CONFLICT.
```

Produit :

```text
MSG-PERM-ALLOW ;
MSG-PERM-LIMIT ;
MSG-PERM-BLOCK ;
MSG-PERM-RELEASE ;
MSG-PERM-CAUSE.
```

Responsabilite :

```text
autoriser ou limiter des fonctions selon priorites, causes et scenes.
```

Interdit :

```text
inventer une intention artistique.
```

### 4.5. `M-DECISION-MATRIX`

Recoit :

```text
MSG-PERM-STATE ;
MSG-ROLE-CONFLICT ;
MSG-PERM-CONFLICT ;
MSG-AP-LIMIT ;
MSG-OUT-CONFLICT ;
MSG-LIVE-REQUEST.
```

Produit :

```text
MSG-DEC-ARBITRATION ;
MSG-DEC-LIMIT ;
MSG-DEC-RELEASE ;
MSG-DEC-DOUBT ;
MSG-SIG-REQUEST.
```

Responsabilite :

```text
arbitrer les conflits declares.
```

Interdits :

```text
choisir le motif ;
choisir le retour musical ;
choisir le style ;
choisir la transgression.
```

### 4.6. `M-PROTOCOL-MATRIX`

Recoit :

```text
MSG-PROTO-REQUEST ;
MSG-SCN-STATE ;
MSG-GEN-STATE ;
MSG-SPC-STATE ;
MSG-HAL-STATE ;
MSG-RET-STATE.
```

Produit :

```text
MSG-PROTO-STATE ;
MSG-PROTO-RET ;
MSG-PROTO-SIDECHAIN ;
MSG-PROTO-EXIT.
```

Responsabilite :

```text
decrire les relations fonctionnelles entre elements.
```

Interdit :

```text
devenir un sidechain audio automatique non decide.
```

---

## 5. Sources et modes didgeridoo

### 5.1. Messages source communs

Messages :

```text
MSG-SRC-PRESENCE ;
MSG-SRC-ROLE-POSSIBLE ;
MSG-SRC-PROTECT ;
MSG-SRC-AUDIBLE ;
MSG-SRC-MASKED ;
MSG-SRC-CONFLICT ;
MSG-SRC-ROUTE-REQUEST ;
MSG-SRC-ROUTE-STATE.
```

Regle :

```text
une source peut etre directe, analysee, transformee, generatrice,
spatiale ou halo, mais chaque role doit etre nomme.
```

### 5.2. Modes didgeridoo

Messages :

```text
MSG-DID-MODE ;
MSG-DID-FREE ;
MSG-DID-INTEGRATE ;
MSG-DID-ADAPT-TO-SYSTEM ;
MSG-DID-SYSTEM-ADAPT ;
MSG-DID-GUIDE-GEN ;
MSG-DID-HARM-CONFLICT ;
MSG-DID-TR-PERM ;
MSG-DID-SOURCE-PROTECT.
```

Modes conceptuels :

```text
DID-FREE            : didgeridoo libre, protections seules.
DID-INTEGRATE       : didgeridoo integre au systeme.
DID-ADAPT-TO-SYSTEM : didgeridoo transforme ou ajuste pour mieux coexister.
DID-SYSTEM-ADAPT    : le systeme s'adapte au didgeridoo.
DID-GUIDE-GEN       : didgeridoo guide partiels, souffle, ligne ou generation.
```

Interdits :

```text
forcer le didgeridoo en controleur ;
forcer le didgeridoo en basse ;
modifier le didgeridoo sans fonction nommee ;
baisser le didgeridoo hors P0/P1 sans signal.
```

### 5.3. Messages gong / peaux / voix / salle

Gong :

```text
MSG-GNG-PRESENCE ;
MSG-GNG-GRV-BASE ;
MSG-GNG-MICROTONAL-BASE ;
MSG-GNG-SUB-BREATH ;
MSG-GNG-TAIL ;
MSG-GNG-RISK.
```

Peaux / percussion :

```text
MSG-PRC-PRESENCE ;
MSG-PRC-PULSE ;
MSG-PRC-ATTACK ;
MSG-PRC-INTERLOCK ;
MSG-PRC-RISK.
```

Voix :

```text
MSG-VOX-PRESENCE ;
MSG-VOX-INTEGRATION ;
MSG-VOX-FRAGMENT ;
MSG-VOX-BREATH ;
MSG-VOX-RAW-ENERGY ;
MSG-VOX-RISK.
```

Salle :

```text
MSG-SAL-PRESENCE ;
MSG-SAL-ROOM-INFO ;
MSG-SAL-ROOM-RISK ;
MSG-SAL-UNKNOWN.
```

Regles :

```text
le gong peut fonder grave, souffle, microtonalite ou queue.
la percussion peut nourrir pression rythmique, interlocking et attaques.
la voix doit rester integree sonorement, jamais exposee nue par accident.
la salle informe les choix, elle ne decide pas.
```

---

## 6. Analyse et confiance

Modules :

```text
M-ANA-ROUTER ;
M-ANA-CONFIDENCE ;
M-ANA-RISK ;
M-ANA-SOURCE ;
M-ANA-FORM ;
M-ANA-OUTPUT.
```

Messages :

```text
MSG-ANA-SRC ;
MSG-ANA-DID ;
MSG-ANA-GNG ;
MSG-ANA-PRC ;
MSG-ANA-VOX ;
MSG-ANA-GRV ;
MSG-ANA-RHY ;
MSG-ANA-SPC ;
MSG-ANA-HAL ;
MSG-ANA-OUT ;
MSG-CONF-STATE ;
MSG-CONF-DOUBT ;
MSG-CONF-UNAVAILABLE ;
MSG-ANA-RISK ;
MSG-ANA-SIG.
```

Etats de confiance :

```text
suffisant ;
partiel ;
douteux ;
indisponible.
```

Interdits :

```text
analyse qui decide ;
analyse qui genere ;
analyse qui retire un halo ;
analyse qui baisse une source hors P0/P1.
```

Regle :

```text
un message ANA peut augmenter la prudence, demander une signalisation
ou declencher une limitation via permission, mais ne decide pas seul.
```

---

## 7. Generation : modules et messages

### 7.1. Modules GEN

Modules generiques :

```text
M-GEN-MANAGER ;
M-GEN-OBJECT ;
M-GEN-TRACE ;
M-GEN-PERM ;
M-GEN-EXIT ;
M-GEN-SIG ;
M-GEN-RHY ;
M-GEN-LIN ;
M-GEN-GRV ;
M-GEN-TEX ;
M-GEN-VOX ;
M-GEN-HALSPC ;
M-GEN-TRG ;
M-GEN-RET.
```

Regle :

```text
M-GEN-MANAGER coordonne.
il ne compose pas.
```

### 7.2. Messages GEN communs

Messages :

```text
MSG-GEN-REQUEST ;
MSG-GEN-PREPARE ;
MSG-GEN-ACTIVE ;
MSG-GEN-HOLD ;
MSG-GEN-MORPH ;
MSG-GEN-RETIRE ;
MSG-GEN-EXIT ;
MSG-GEN-BLOCK ;
MSG-GEN-RISK ;
MSG-GEN-SIG ;
MSG-GEN-PACKET.
```

Regle :

```text
aucun objet GEN ne doit etre actif sans GEN-PACKET.
```

### 7.3. Messages par famille GEN

Rythme :

```text
MSG-GEN-RHY-PRESSURE ;
MSG-GEN-RHY-INTERLOCK ;
MSG-GEN-RHY-DISPLACEMENT ;
MSG-GEN-RHY-DENSITY ;
MSG-GEN-RHY-EXIT.
```

Ligne / melodie / motif :

```text
MSG-GEN-LIN-FRAGMENT ;
MSG-GEN-LIN-PARTIAL ;
MSG-GEN-LIN-ACID-NATURALIZED ;
MSG-GEN-LIN-VOICE-FRAGMENT ;
MSG-GEN-LIN-HOOK-MINIMAL ;
MSG-GEN-LIN-EXIT.
```

Grave :

```text
MSG-GEN-GRV-SUPPORT ;
MSG-GEN-GRV-WITHDRAW ;
MSG-GEN-GRV-FREE ;
MSG-GEN-GRV-GNG-BASE ;
MSG-GEN-GRV-DID-GUIDED ;
MSG-GEN-GRV-EXIT.
```

Texture :

```text
MSG-GEN-TEX-MASS ;
MSG-GEN-TEX-BREATH ;
MSG-GEN-TEX-ROAR ;
MSG-GEN-TEX-FRICTION ;
MSG-GEN-TEX-MICROTONAL ;
MSG-GEN-TEX-EXIT.
```

Voix :

```text
MSG-GEN-VOX-FRAGMENT ;
MSG-GEN-VOX-BREATH ;
MSG-GEN-VOX-RAW-INTEGRATED ;
MSG-GEN-VOX-NATURALIZED ;
MSG-GEN-VOX-EXIT.
```

Halo / espace source :

```text
MSG-GEN-HAL-SOURCE ;
MSG-GEN-SPC-SOURCE ;
MSG-GEN-HALSPC-RISK ;
MSG-GEN-HALSPC-EXIT.
```

Transgression :

```text
MSG-GEN-TRG-MASS ;
MSG-GEN-TRG-ROAR ;
MSG-GEN-TRG-VOICE ;
MSG-GEN-TRG-SATURATION ;
MSG-GEN-TRG-EXPOSITION-BRUTE ;
MSG-GEN-TRG-SPACE ;
MSG-GEN-TRG-DISSONANCE ;
MSG-GEN-TRG-EXIT.
```

Retour :

```text
MSG-GEN-RET-MATERIAL ;
MSG-GEN-RET-PREPARE ;
MSG-GEN-RET-REQUEST ;
MSG-GEN-RET-COMPLETE.
```

Interdits GEN :

```text
style entier ;
timbre electronique reconnaissable non decide ;
voix nue non integree ;
motif principal non autorise ;
retour choisi par generation seule ;
transgression choisie par generation seule.
```

---

## 8. Grave / sub / gong : messages de role

Messages :

```text
MSG-GRV-ROLE ;
MSG-GRV-OWNER ;
MSG-GRV-SOURCE ;
MSG-GRV-SUPPORT ;
MSG-GRV-WITHDRAW ;
MSG-GRV-FREE ;
MSG-GRV-CONFLICT ;
MSG-GRV-HARM-ADAPT ;
MSG-GRV-GNG-BASE ;
MSG-GRV-DID-GUIDE ;
MSG-GRV-SUB-STATE ;
MSG-OUT-SUB-STATE.
```

Roles possibles :

```text
grave source ;
grave support ;
grave genere ;
grave gong ;
grave spatial ;
grave libre ;
grave retire ;
grave en conflit decide ;
grave en conflit deletere.
```

Regles :

```text
le grave peut soutenir, se retirer, rester libre ou etre guide.
le conflit grave doit etre nomme avant limitation.
le gong peut proposer base microtonale, harmonique, souffle et sub riche.
```

Interdits :

```text
grave impose comme centre permanent ;
didgeridoo automatiquement ecrase par la basse ;
sub incoherent masque comme choix artistique.
```

---

## 9. Espace et halo : separation des messages

### 9.1. Messages SPC

Messages :

```text
MSG-SPC-SEND ;
MSG-SPC-FUNCTION ;
MSG-SPC-SOURCE ;
MSG-SPC-WORLD ;
MSG-SPC-PROX ;
MSG-SPC-IMM ;
MSG-SPC-REACT ;
MSG-SPC-ROOM ;
MSG-SPC-GRV ;
MSG-SPC-WEIGHT ;
MSG-SPC-LIMIT ;
MSG-SPC-EXIT ;
MSG-SPC-SIG.
```

Regle :

```text
SPC gere distance, monde, immersion, proximite, reactivite,
salle et grave spatial.
```

### 9.2. Messages HAL

Messages :

```text
MSG-HAL-MODE ;
MSG-HAL-SOURCE ;
MSG-HAL-MEMORY ;
MSG-HAL-LOCK ;
MSG-HAL-FORCE ;
MSG-HAL-CUT ;
MSG-HAL-MOMENTARY ;
MSG-HAL-SAFE-FORCE ;
MSG-HAL-PRIORITY ;
MSG-HAL-LIMIT ;
MSG-HAL-EXIT ;
MSG-HAL-SIG.
```

Regle :

```text
HAL gere queue, memoire, maintien, verrouillage, forcer, couper,
momentane et sortie.
```

### 9.3. Separation GEN-HAL / GEN-SPC / HAL / SPC

Regle :

```text
MSG-GEN-HAL-SOURCE decrit une matiere generee destinee au halo.
MSG-GEN-SPC-SOURCE decrit une matiere generee destinee a l'espace.
MSG-HAL-SOURCE decide comment une source nourrit le halo.
MSG-SPC-SOURCE decide comment une source nourrit l'espace.
```

Interdit :

```text
une generation destinee au halo ou a l'espace ne decide pas seule
le comportement HAL ou SPC.
```

### 9.4. Meme source vers plusieurs espaces

Messages utiles :

```text
MSG-SOURCE-SPACE-ROLE ;
MSG-SPC-WEIGHT ;
MSG-HAL-PRIORITY ;
MSG-OUT-COHERENCE ;
MSG-SIG-SPC-HAL-CONFLICT.
```

Regle :

```text
une meme source peut alimenter proximite, immersion, halo et monde spatial
si chaque role est nomme et si la sortie reste coherentement audible.
```

---

## 10. Auto-Pro : causes obligatoires

Messages :

```text
MSG-AP-CAUSE ;
MSG-AP-LIMIT ;
MSG-AP-BLOCK ;
MSG-AP-RELEASE ;
MSG-AP-P0 ;
MSG-AP-P1 ;
MSG-AP-P2-LIMIT ;
MSG-AP-P5-COHERENCE ;
MSG-AP-SIG.
```

Causes autorisees au niveau 2 :

```text
P0 securite ;
P1 lisibilite vitale ;
P2 limite visible ;
conflit grave deletere ;
source essentielle masquee ;
attaque essentielle masquee ;
halo limitant ;
espace limitant ;
densite limitante ;
sortie incoherente ;
doute critique d'analyse.
```

Champs obligatoires pour toute limitation :

```text
cause ;
priorite ;
fonction limitee ;
source ou groupe concerne ;
condition de relachement ;
signalisation.
```

Interdits :

```text
correction de gout ;
choix de motif ;
choix de retour ;
choix de scene ;
limitation invisible hors P0/P1.
```

---

## 11. Signalisation : priorites

Priorites de signalisation :

```text
SIG-P0 : securite immediate.
SIG-P1 : lisibilite vitale ou protection forte.
SIG-P2 : choix live limite ou contredit.
SIG-MAJ : conflit musical majeur a arbitrer.
SIG-RET : retour prepare, bloque, actif ou termine.
SIG-INFO : etat utile mais non urgent.
```

Messages :

```text
MSG-SIG-P0 ;
MSG-SIG-P1 ;
MSG-SIG-P2-LIMIT ;
MSG-SIG-MAJOR-CONFLICT ;
MSG-SIG-RET ;
MSG-SIG-INFO ;
MSG-SIG-VISIBLE ;
MSG-SIG-HIDDEN ;
MSG-SIG-ACK ;
MSG-SIG-HISTORY.
```

Regles :

```text
P0 masque tout sauf action critique.
P1 reste visible.
P2 est visible quand un choix live est limite.
les informations non urgentes peuvent etre historisees.
```

Interdits :

```text
diagnostic permanent impose ;
signalisation exhaustive ;
retrait important invisible.
```

---

## 12. Retours et sorties

Messages RET :

```text
MSG-RET-PREPARE ;
MSG-RET-ARM ;
MSG-RET-TRIGGER ;
MSG-RET-CANCEL ;
MSG-RET-COMPLETE ;
MSG-RET-BLOCKED ;
MSG-RET-SOURCE ;
MSG-RET-GRV ;
MSG-RET-HAL ;
MSG-RET-SPC ;
MSG-RET-SIG.
```

Messages de sortie distincts :

```text
MSG-GEN-RET-MATERIAL ;
MSG-PROTO-RET ;
MSG-HAL-EXIT ;
MSG-SPC-EXIT ;
MSG-OUT-CHECK ;
MSG-OUT-COHERENCE.
```

Regle :

```text
GEN-RET produit ou prepare une matiere de retour.
PROTO-RET decrit la relation de retour.
HAL-EXIT sort memoire ou queue.
SPC-EXIT sort monde spatial ou distance.
OUT-CHECK verifie que le retour est audible, decide et coherent.
```

Interdits :

```text
retour impose hors decision ;
retour choisi par generation seule ;
sortie de halo ou espace sans signal si elle change la jouabilite.
```

---

## 13. Scenes superposables

Messages :

```text
MSG-SCN-DOM ;
MSG-SCN-STATE ;
MSG-LAYER-ALLOW ;
MSG-ROLE-REQUEST ;
MSG-ROLE-POSSIBLE ;
MSG-ROLE-CONFLICT ;
MSG-PERM-CONFLICT ;
MSG-DEC-ARBITRATION ;
MSG-SCN-EXIT.
```

Roles :

```text
DOM ;
LAYER ;
GESTE ;
ETAT ;
TRACE.
```

Regle :

```text
une scene donne une dominante.
des couches peuvent venir d'autres scenes si les permissions,
roles et risques restent compatibles.
```

Resolution conceptuelle :

```text
SCN-DOM fixe la lecture principale.
LAYER-ALLOW autorise une couche secondaire.
ROLE-CONFLICT nomme un conflit de role.
PERM-CONFLICT nomme un conflit de permission.
DEC-ARBITRATION tranche seulement le conflit declare.
```

Interdits :

```text
scene preset exclusif ;
scene morceau fige ;
superposition sans lecture dominante ;
arbitrage opaque.
```

---

## 14. Subset minimal didgeridoo + PC

Messages indispensables :

```text
MSG-SRC-PRESENCE ;
MSG-DID-MODE ;
MSG-DID-FREE ;
MSG-DID-INTEGRATE ;
MSG-DID-GUIDE-GEN ;
MSG-DID-HARM-CONFLICT ;
MSG-ANA-DID ;
MSG-ANA-GRV ;
MSG-ANA-RHY ;
MSG-CONF-STATE ;
MSG-PERM-ALLOW ;
MSG-PERM-LIMIT ;
MSG-GEN-PACKET ;
MSG-GEN-RHY-PRESSURE ;
MSG-GEN-LIN-PARTIAL ;
MSG-GEN-GRV-SUPPORT ;
MSG-GEN-GRV-WITHDRAW ;
MSG-GEN-RET-PREPARE ;
MSG-GRV-ROLE ;
MSG-GRV-CONFLICT ;
MSG-SPC-PROX ;
MSG-SPC-IMM ;
MSG-HAL-SOURCE ;
MSG-HAL-MODE ;
MSG-AP-CAUSE ;
MSG-AP-LIMIT ;
MSG-SIG-P0 ;
MSG-SIG-P1 ;
MSG-SIG-P2-LIMIT ;
MSG-OUT-CHECK.
```

Fonctions minimales couvertes :

```text
didgeridoo libre protege ;
didgeridoo integre si decide ;
didgeridoo guidant la generation si decide ;
pression rythmique minimale ;
ligne par partiels ou souffle ;
grave support, retrait ou conflit ;
espace proche ou immersif ;
halo source ;
retour prepare ;
signalisation P0/P1/P2.
```

Interdits :

```text
setup minimum qui exige gong, percussion, voix ou micro de salle ;
setup minimum sans generation ;
setup minimum sans pression rythmique possible ;
setup minimum qui transforme le didgeridoo en simple controleur.
```

---

## 15. Flux niveau 2

### 15.1. Didgeridoo libre protege

Flux :

```text
MSG-SRC-PRESENCE -> MSG-DID-MODE -> MSG-DID-FREE
-> MSG-SRC-PROTECT -> MSG-OUT-CHECK -> MSG-SIG-INFO.
```

Limitation possible :

```text
si P0/P1 : MSG-AP-CAUSE -> MSG-AP-LIMIT -> MSG-SIG-P1.
```

### 15.2. Didgeridoo guide une generation

Flux :

```text
MSG-DID-GUIDE-GEN -> MSG-GEN-REQUEST -> MSG-GEN-PACKET
-> MSG-GEN-LIN-PARTIAL ou MSG-GEN-RHY-PRESSURE
-> MSG-OUT-COHERENCE.
```

Garde-fou :

```text
GEN-PACKET doit garder inspiration, phenomene, fonction,
source, role, regime, naturalisation, sortie et risque.
```

### 15.3. Conflit grave

Flux :

```text
MSG-ANA-GRV -> MSG-GRV-CONFLICT -> MSG-PERM-LIMIT
-> MSG-GEN-GRV-WITHDRAW ou MSG-GRV-HARM-ADAPT
-> MSG-SIG-P2-LIMIT ou MSG-SIG-P1.
```

Garde-fou :

```text
le retrait grave doit etre signale s'il change la jouabilite.
```

### 15.4. Halo force

Flux :

```text
MSG-HAL-MODE -> MSG-HAL-FORCE -> MSG-HAL-PRIORITY
-> MSG-OUT-COHERENCE.
```

Limitation possible :

```text
hors P0/P1, un halo voulu ne doit pas etre retire automatiquement.
```

### 15.5. Techno suspendue longue

Flux :

```text
MSG-SCN-DOM -> MSG-LAYER-ALLOW -> MSG-GEN-RHY-PRESSURE
-> MSG-SPC-WORLD -> MSG-HAL-MEMORY -> MSG-RET-PREPARE.
```

Garde-fou :

```text
absence longue du corps acceptable si decidee.
retour corporel prepare mais non impose.
```

### 15.6. Scene superposee

Flux :

```text
MSG-SCN-DOM -> MSG-LAYER-ALLOW -> MSG-ROLE-POSSIBLE
-> MSG-ROLE-CONFLICT si besoin -> MSG-DEC-ARBITRATION
-> MSG-PERM-ALLOW ou MSG-PERM-LIMIT.
```

Garde-fou :

```text
une seule lecture de priorite doit rester claire.
```

---

## 16. Interdits niveau 2

```text
message conceptuel traite comme protocole Max final ;
module generique traite comme device final ;
packet traite comme structure logicielle finale ;
objet GEN actif sans GEN-PACKET ;
limitation Auto-Pro sans cause ;
scene traitee comme preset exclusif ;
analyse comme decideur ;
generation comme compositeur global ;
grave impose par architecture ;
halo retire hors P0/P1 ;
SPC, HAL et GEN-HAL fusionnes ;
retour choisi par generation seule ;
voix nue non integree ;
timbre electronique reconnaissable non decide ;
setup minimum didgeridoo perdu.
```

---

## 17. Decisions ouvertes pour niveau suivant

Decisions a laisser ouvertes :

```text
DO-N2-1 : vocabulaire final des messages.
DO-N2-2 : regroupement ou separation reelle des modules.
DO-N2-3 : densite d'affichage de chaque signal.
DO-N2-4 : traduction des packets en objets ou structures Max.
DO-N2-5 : routage Ableton final.
DO-N2-6 : mapping controleur.
DO-N2-7 : seuils et algorithmes.
DO-N2-8 : specification d'interface conceptuelle.
```

Position provisoire :

```text
conserver les messages comme langage de conception jusqu'a audit.
ne traduire techniquement qu'apres validation de compatibilite.
```

---

## 18. Decision v0.1

Decision :

```text
l'architecture Max for Live detaillee niveau 2 modules/messages est definie.
```

Elle etablit :

```text
grammaire conceptuelle des messages ;
packets obligatoires ;
modules controle / etat ;
messages sources et didgeridoo ;
messages analyse / confiance ;
messages generation ;
messages grave ;
messages espace / halo ;
causes Auto-Pro ;
priorites de signalisation ;
retours et sorties ;
scenes superposables ;
subset minimal didgeridoo + PC ;
flux niveau 2 ;
interdits niveau 2.
```

Prochaine action recommandee :

```text
AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_FOR_LIVE_DETAILLEE_NIVEAU_2_MODULES_MESSAGES_AVEC_CORPUS_v0_1
```

But de l'audit :

```text
verifier que les modules et messages niveau 2 restent des contrats
conceptuels, qu'ils ne figent pas l'implementation, qu'ils ne perdent pas
la trace stylistique, et qu'ils couvrent les fragilites FRAG-N1-1 a FRAG-N1-9.
```

---

## 19. Suivi audit niveau 2

Action realisee :

```text
AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_FOR_LIVE_DETAILLEE_NIVEAU_2_MODULES_MESSAGES_AVEC_CORPUS_v0_1.md
```

Correction appliquee avant audit :

```text
COR-N2-A : libelle de transgression reformule pour eviter la confusion
avec une voix nue non integree.
```

Conclusion :

```text
l'architecture Max for Live detaillee niveau 2 modules/messages est
compatible avec le corpus actif.
```

Prochaine action recommandee :

```text
SPECIFICATION_ARCHITECTURE_MAX_FOR_LIVE_DETAILLEE_NIVEAU_3_TRADUCTION_SESSION_ABSTRAITE_VESPERARE_v0_1
```

Condition :

```text
le niveau 3 peut commencer a organiser une traduction de session abstraite
plus proche d'Ableton, mais doit encore eviter devices, plugins, objets Max,
algorithmes, seuils, mappings, routages finaux et interface finale.
```
