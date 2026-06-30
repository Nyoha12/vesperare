# SPECIFICATION ARCHITECTURE MAX FOR LIVE DETAILLEE NIVEAU 3 TRADUCTION SESSION ABSTRAITE VESPERARE v0.1

Projet : Vesperare
Statut : specification d'architecture Max for Live detaillee niveau 3 traduction de session abstraite
Date : 2026-06-22

Sources actives principales :

- `AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_FOR_LIVE_DETAILLEE_NIVEAU_2_MODULES_MESSAGES_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_MAX_FOR_LIVE_DETAILLEE_NIVEAU_2_MODULES_MESSAGES_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_FOR_LIVE_DETAILLEE_NIVEAU_1_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_MAX_FOR_LIVE_DETAILLEE_NIVEAU_1_VESPERARE_v0_1.md`
- `SPECIFICATION_SYSTEME_DECISIONNEL_CONCEPTUEL_VESPERARE_v0_1.md`
- `SPECIFICATION_BLOC_GENERATION_SONORE_MOTIFS_RYTHMIQUES_MELODIQUES_v0_1.md`
- `SPECIFICATION_PROTOCOLS_SIDECHAINS_CONCEPTUELS_v0_1.md`
- `SPECIFICATION_ANALYSES_INDICES_CONCEPTUELS_ET_CONFIANCE_v0_1.md`
- `REVERBS_ESPACE_REACTIF_v0_2.md`
- `AUDIT_TRACABILITE_CAHIER_CHARGES_GENERATIF_STYLISTIQUE_v0_1.md`

Cadrage externe consulte :

- manuel Ableton Live : routage, entrees/sorties, sends, retours, monitoring ;
- documentation Ableton / Max for Live : controle de Live par Max for Live et acces a l'etat de Live ;
- litterature NIME / interaction musicale : importance de separer instrument, mapping, feedback et jouabilite.

But :

```text
traduire les groupes, modules, messages et packets des niveaux 1 et 2
en emplacements abstraits de session, plus proches d'Ableton Live,
sans choisir encore devices, plugins, objets Max, algorithmes, seuils,
mappings, routages finaux ou interface finale.
```

Cette fiche peut definir :

```text
emplacements abstraits de session ;
classes de pistes candidates ;
points d'observation ;
points d'action ;
retours ou bus abstraits ;
zones de controle ;
zones de monitoring ;
relations entre packets et emplacements ;
contraintes de traduction future.
```

Cette fiche ne doit pas definir :

```text
noms definitifs de pistes ;
routage Ableton final ;
devices Ableton ;
devices Max for Live exacts ;
objets Max exacts ;
plugins ;
algorithmes ;
seuils ;
mapping controleur ;
interface finale ;
mise en oeuvre reelle.
```

---

## 1. Decision centrale niveau 3

Decision :

```text
le niveau 3 doit etre une carte d'emplacements de responsabilite.
```

Un emplacement de responsabilite indique :

```text
ou une fonction pourrait vivre dans une session Live ;
quel type de signal ou message elle manipule ;
quels packets elle doit recevoir ou produire ;
quels risques elle doit signaler ;
ce qu'elle ne doit pas decider.
```

Un emplacement ne fixe pas :

```text
une piste definitive ;
un device definitif ;
un bus definitif ;
un routage definitif ;
un objet Max definitif.
```

Interdit central :

```text
la traduction de session abstraite ne doit pas devenir une session Ableton.
```

---

## 2. Convention niveau 3

Identifiants :

```text
SLOT-* : emplacement abstrait de session ;
LANE-* : voie candidate de responsabilite ;
TAP-*  : point d'observation non audible ;
ACT-*  : point d'action autorise ;
BUS-*  : bus ou retour abstrait ;
VIEW-* : vue de jeu conceptuelle ;
CHK-*  : point de verification ;
MIN-*  : subset minimum didgeridoo + PC.
```

Regle :

```text
un SLOT peut devenir plus tard une piste, un groupe, un device,
un rack, un retour, un bus, une scene, une vue ou une combinaison.
```

Interdit :

```text
un SLOT ne doit pas etre traite comme piste Live finale.
```

---

## 3. Carte de session abstraite candidate

Carte candidate :

```text
SLOT-00-CONTROL-STATE
SLOT-01-INPUTS-ACOUSTIC
SLOT-02-SOURCE-DIRECT-PROTECTED
SLOT-03-SOURCE-TRANSFORMED
SLOT-04-ANALYSIS-TAPS
SLOT-05-GENERATION
SLOT-06-SPACE-RETURNS
SLOT-07-HALO-MEMORY
SLOT-08-AUTOPRO-ACTION-POINTS
SLOT-09-SIGNAL-VIEWS
SLOT-10-OUTPUT-CHECK
SLOT-11-SCENE-LIBRARY
SLOT-12-MIN-DID-PC
```

Principe :

```text
la carte suit les responsabilites, pas l'ordre final des pistes.
```

Correspondance niveau 1 :

```text
G00-CONTROL          -> SLOT-00
G01-INPUTS           -> SLOT-01
G02-SOURCE-DIRECT    -> SLOT-02
G03-SOURCE-TRANSFORM -> SLOT-03
G04-ANALYSIS         -> SLOT-04
G05-GENERATION       -> SLOT-05
G06-SPACE            -> SLOT-06
G07-HALO             -> SLOT-07
G08-AUTOPRO          -> SLOT-08
G09-SIGNAL           -> SLOT-09
G10-OUT              -> SLOT-10
SCENE MATRICES       -> SLOT-11
SETUP MINIMUM        -> SLOT-12
```

---

## 4. SLOT-00-CONTROL-STATE

Role :

```text
tenir l'etat conceptuel, les permissions, les scenes, les modes,
les decisions d'arbitrage et les signaux prioritaires.
```

Peut devenir plus tard :

```text
piste de controle ;
device de controle ;
groupe de devices ;
vue de performance ;
module distribue ;
combinaison de plusieurs elements.
```

Packets recus :

```text
SRC-PACKET ;
ANA-PACKET ;
PERM-PACKET ;
GEN-PACKET ;
SPC-PACKET ;
HAL-PACKET ;
AP-PACKET ;
SIG-PACKET ;
OUT-PACKET.
```

Messages produits :

```text
MSG-STATE-SNAPSHOT ;
MSG-PERM-ALLOW ;
MSG-PERM-LIMIT ;
MSG-PERM-BLOCK ;
MSG-DEC-ARBITRATION ;
MSG-SIG-REQUEST ;
MSG-LIVE-STATE.
```

Emplacements internes :

```text
LANE-STATE ;
LANE-SCENE ;
LANE-PERM ;
LANE-DEC ;
LANE-PROTO ;
LANE-SIG-PRIORITY.
```

Interdits :

```text
composer ;
choisir motif ;
choisir retour musical ;
choisir transgression ;
remplacer une decision live.
```

Question ouverte :

```text
SLOT-00 doit-il rester centralise ou distribue techniquement ?
```

Position provisoire :

```text
centralise conceptuellement, distribuable techniquement plus tard.
```

---

## 5. SLOT-01-INPUTS-ACOUSTIC

Role :

```text
recevoir les sources acoustiques et creer les copies conceptuelles
necessaires aux autres emplacements.
```

Voies candidates :

```text
LANE-IN-DID ;
LANE-IN-GNG ;
LANE-IN-PRC ;
LANE-IN-VOX ;
LANE-IN-SAL ;
LANE-IN-AUX.
```

Sorties conceptuelles :

```text
audio direct ;
TAP analyse ;
copie transformation ;
copie generation ;
copie espace ;
copie halo ;
SRC-PACKET.
```

Messages produits :

```text
MSG-SRC-PRESENCE ;
MSG-SRC-ROLE-POSSIBLE ;
MSG-SRC-PROTECT ;
MSG-SAL-ROOM-INFO ;
MSG-SAL-UNKNOWN.
```

Contraintes :

```text
une source absente reste neutre ;
le micro de salle est optionnel ;
la salle informe mais ne decide pas ;
la source directe reste disponible hors P0/P1.
```

Setup minimum :

```text
LANE-IN-DID seul doit suffire.
```

Interdits :

```text
transformer dans SLOT-01 ;
baisser une source hors P0/P1 ;
forcer une source optionnelle ;
forcer le didgeridoo comme controleur.
```

---

## 6. SLOT-02-SOURCE-DIRECT-PROTECTED

Role :

```text
maintenir une presence directe, protegee et lisible des sources.
```

Voies candidates :

```text
LANE-DIR-DID ;
LANE-DIR-GNG ;
LANE-DIR-PRC ;
LANE-DIR-VOX ;
LANE-DIR-SUM.
```

Packets recus :

```text
SRC-PACKET ;
PERM-PACKET ;
AP-PACKET ;
SPC-PACKET ;
HAL-PACKET.
```

Messages produits :

```text
MSG-SRC-AUDIBLE ;
MSG-SRC-MASKED ;
MSG-SRC-CONFLICT ;
MSG-OUT-CHECK.
```

Points d'action autorises :

```text
ACT-SRC-PROTECT ;
ACT-SRC-LIMIT-P0 ;
ACT-SRC-LIMIT-P1 ;
ACT-SRC-SPACE-SEND ;
ACT-SRC-HAL-SEND.
```

Interdits :

```text
source directe effacee hors P0/P1 ;
voix exposee sans integration sonore ;
didgeridoo transforme en basse imposee ;
protection cachee.
```

---

## 7. SLOT-03-SOURCE-TRANSFORMED

Role :

```text
porter les transformations de sources seulement si elles sont autorisees,
fonctionnelles, sorties et signalees si elles changent la jouabilite.
```

Voies candidates :

```text
LANE-TR-DID ;
LANE-TR-GNG ;
LANE-TR-PRC ;
LANE-TR-VOX ;
LANE-TR-SUM.
```

Packets recus :

```text
SRC-PACKET ;
PERM-PACKET ;
ANA-PACKET ;
GEN-PACKET ;
SPC-PACKET ;
HAL-PACKET.
```

Messages produits :

```text
MSG-DID-TR-PERM ;
MSG-DID-ADAPT-TO-SYSTEM ;
MSG-DID-SYSTEM-ADAPT ;
MSG-VOX-INTEGRATION ;
MSG-GEN-SOURCE ;
MSG-HAL-SOURCE ;
MSG-SPC-SOURCE ;
MSG-TR-RISK.
```

Points d'action autorises :

```text
ACT-TR-INTEGRATE ;
ACT-TR-PARTIAL ;
ACT-TR-BREATH ;
ACT-TR-FORMANT ;
ACT-TR-HARM-ADAPT ;
ACT-TR-HALO-SOURCE ;
ACT-TR-GEN-SOURCE.
```

Interdits :

```text
transformation gratuite ;
timbre electronique reconnaissable non decide ;
voix nue non integree ;
source remplacee par transformation ;
transformation sans sortie.
```

---

## 8. SLOT-04-ANALYSIS-TAPS

Role :

```text
observer sans produire de son audible et sans decider.
```

Taps candidats :

```text
TAP-SRC ;
TAP-DID ;
TAP-GNG ;
TAP-PRC ;
TAP-VOX ;
TAP-SAL ;
TAP-GRV ;
TAP-RHY ;
TAP-SPC ;
TAP-HAL ;
TAP-GEN ;
TAP-OUT.
```

Packets produits :

```text
ANA-PACKET ;
CONF-STATE ;
CONF-DOUBT ;
CONF-UNAVAILABLE.
```

Messages produits :

```text
MSG-ANA-SRC ;
MSG-ANA-DID ;
MSG-ANA-GRV ;
MSG-ANA-RHY ;
MSG-ANA-SPC ;
MSG-ANA-HAL ;
MSG-ANA-OUT ;
MSG-ANA-RISK ;
MSG-ANA-SIG.
```

Contraintes :

```text
les taps sont non audibles ;
une analyse indisponible doit etre declaree ;
un doute peut limiter la confiance, pas composer ;
un risque doit passer par permission ou Auto-Pro.
```

Interdits :

```text
analyse comme decideur ;
analyse qui genere ;
analyse qui retire un halo ;
analyse qui baisse une source hors P0/P1.
```

---

## 9. SLOT-05-GENERATION

Role :

```text
creer, maintenir, transformer, retirer et sortir des objets generatifs
sous GEN-PACKET, permission, fonction et trace stylistique.
```

Voies candidates :

```text
LANE-GEN-RHY ;
LANE-GEN-LIN ;
LANE-GEN-GRV ;
LANE-GEN-TEX ;
LANE-GEN-VOX ;
LANE-GEN-HALSPC ;
LANE-GEN-TRG ;
LANE-GEN-RET ;
LANE-GEN-SUM.
```

Packets recus :

```text
PERM-PACKET ;
ANA-PACKET ;
SRC-PACKET ;
GEN-PACKET ;
SPC-PACKET ;
HAL-PACKET ;
OUT-PACKET.
```

Packets produits :

```text
GEN-PACKET ;
SIG-PACKET ;
OUT-PACKET partiel.
```

Messages generatifs obligatoires :

```text
MSG-GEN-REQUEST ;
MSG-GEN-PREPARE ;
MSG-GEN-ACTIVE ;
MSG-GEN-HOLD ;
MSG-GEN-MORPH ;
MSG-GEN-RETIRE ;
MSG-GEN-EXIT ;
MSG-GEN-RISK ;
MSG-GEN-SIG.
```

Trace obligatoire par objet :

```text
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
risques.
```

Interdits :

```text
GEN sans GEN-PACKET ;
style entier ;
motif autonome non autorise ;
timbre electronique reconnaissable non decide ;
retour choisi par generation seule ;
transgression choisie par generation seule.
```

---

## 10. SLOT-06-SPACE-RETURNS

Role :

```text
organiser les espaces partages, proximites, immersions, mondes,
reactivites, salle et grave spatial.
```

Emplacements candidats :

```text
BUS-SPC-PROX ;
BUS-SPC-WORLD ;
BUS-SPC-IMM ;
BUS-SPC-REACT ;
BUS-SPC-ROOM ;
BUS-SPC-GRV ;
BUS-SPC-EXIT ;
LANE-SPC-SUM.
```

Pourquoi "BUS" :

```text
certains traitements d'espace peuvent etre partages par plusieurs sources.
le niveau 3 ne decide pas encore si ce partage devient retour, groupe,
send, piste audio, rack ou autre structure.
```

Packets recus :

```text
SRC-PACKET ;
SPC-PACKET ;
ANA-PACKET ;
GEN-PACKET ;
AP-PACKET ;
OUT-PACKET.
```

Messages produits :

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

Interdits :

```text
reverb decorative non decidee ;
monde spatial impose ;
SPC fusionne avec HAL ;
masquage d'attaque sans signal ;
suppression d'un choix spatial hors P0/P1.
```

---

## 11. SLOT-07-HALO-MEMORY

Role :

```text
organiser queues, memoires, halos sources, Lock, Force, Cut,
Momentary, Safe force et sorties de halo.
```

Emplacements candidats :

```text
BUS-HAL-SRC ;
BUS-HAL-MEM ;
BUS-HAL-LOCK ;
BUS-HAL-FORCE ;
BUS-HAL-CUT ;
BUS-HAL-EXIT ;
LANE-HAL-SUM.
```

Packets recus :

```text
SRC-PACKET ;
HAL-PACKET ;
ANA-PACKET ;
GEN-PACKET ;
SPC-PACKET ;
AP-PACKET ;
OUT-PACKET.
```

Messages produits :

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

Interdits :

```text
halo voulu retire hors P0/P1 ;
halo decoratif non decide ;
queue non sortie ;
HAL fusionne avec SPC ;
GEN-HAL qui decide HAL seul.
```

---

## 12. SLOT-08-AUTOPRO-ACTION-POINTS

Role :

```text
decrire ou les protections P0/P1/P5 peuvent agir et comment elles
doivent etre causees, relachees et signalees.
```

Points d'action candidats :

```text
ACT-AP-SAFE ;
ACT-AP-MIX ;
ACT-AP-SUB ;
ACT-AP-FEED ;
ACT-AP-ATTACK ;
ACT-AP-SRC ;
ACT-AP-DENSITY ;
ACT-AP-SPC ;
ACT-AP-HAL ;
ACT-AP-OUT.
```

Packets recus :

```text
ANA-PACKET ;
AP-PACKET ;
OUT-PACKET ;
SRC-PACKET ;
GEN-PACKET ;
SPC-PACKET ;
HAL-PACKET.
```

Messages produits :

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

Cause obligatoire :

```text
aucune limitation sans AP-CAUSE.
```

Causes autorisees :

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

Interdits :

```text
Auto-Pro comme correction de gout ;
choix de motif ;
choix de retour ;
choix de transgression ;
limitation invisible hors P0/P1.
```

---

## 13. SLOT-09-SIGNAL-VIEWS

Role :

```text
rendre visible ce qui change la jouabilite sans imposer un diagnostic
permanent.
```

Vues candidates :

```text
VIEW-LIVE ;
VIEW-DID-MIN ;
VIEW-SAFETY ;
VIEW-SCENE-PREP ;
VIEW-FULL.
```

Priorites :

```text
SIG-P0 ;
SIG-P1 ;
SIG-P2 ;
SIG-MAJ ;
SIG-RET ;
SIG-INFO.
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
P0 est prioritaire ;
P1 reste visible ;
P2 est visible quand un choix live est limite ;
un retrait important est visible ;
les informations non urgentes peuvent etre historisees.
```

Interdits :

```text
diagnostic exhaustif impose ;
interface finale ;
mapping controleur final ;
signalisation qui remplace l'ecoute.
```

---

## 14. SLOT-10-OUTPUT-CHECK

Role :

```text
verifier l'etat audible global, les conflits de sortie, la presence
corporelle decidee, le grave, l'espace, le halo, les retours et les signaux.
```

Emplacements candidats :

```text
CHK-OUT-MAIN ;
CHK-OUT-SUB ;
CHK-OUT-SPC ;
CHK-OUT-HAL ;
CHK-OUT-MONITOR ;
CHK-OUT-ROOM ;
CHK-OUT-SIG.
```

Packets recus :

```text
SRC-PACKET ;
GEN-PACKET ;
SPC-PACKET ;
HAL-PACKET ;
AP-PACKET ;
SIG-PACKET ;
RET messages.
```

Packets produits :

```text
OUT-PACKET ;
SIG-PACKET.
```

Verification conceptuelle :

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

Interdits :

```text
mastering ;
jugement esthetique ;
composition ;
choix de retour ;
choix de scene ;
choix de motif.
```

---

## 15. SLOT-11-SCENE-LIBRARY

Role :

```text
stocker scenes, roles, couches, permissions, familles GEN,
mondes SPC, modes HAL, sorties et risques sans figer des presets exclusifs.
```

Elements stockables :

```text
SCN-DOM ;
LAYER-ALLOW ;
ROLE-POSSIBLE ;
ROLE-CONFLICT ;
PERM-CONFLICT ;
GEN families autorisees ;
SPC worlds possibles ;
HAL modes possibles ;
RET strategies possibles ;
risques acceptes ;
signaux importants.
```

Messages produits :

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

Regle :

```text
une scene donne une dominante.
les couches, gestes, etats et traces peuvent venir d'autres scenes
si une lecture de priorite reste claire.
```

Interdits :

```text
scene preset exclusif ;
morceau fige ;
routage fixe ;
superposition opaque.
```

---

## 16. SLOT-12-MIN-DID-PC

Role :

```text
garantir que la carte abstraite reste viable avec didgeridoo seul + PC.
```

Subset minimal :

```text
MIN-IN-DID ;
MIN-DIR-DID ;
MIN-DID-MODE ;
MIN-ANA-DID ;
MIN-ANA-GRV ;
MIN-ANA-RHY ;
MIN-GEN-PACKET ;
MIN-GEN-RHY ;
MIN-GEN-LIN ;
MIN-GEN-GRV ;
MIN-SPC-PROX ;
MIN-SPC-IMM ;
MIN-HAL-SOURCE ;
MIN-AP-CAUSE ;
MIN-SIG-P0-P1-P2 ;
MIN-OUT-CHECK.
```

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

Interdits :

```text
setup minimum qui exige gong, percussion, voix ou micro de salle ;
setup minimum sans generation ;
setup minimum sans pression rythmique possible ;
setup minimum qui transforme le didgeridoo en simple controleur.
```

---

## 17. Flux de session abstraite

### 17.1. Flux source direct

```text
SLOT-01 -> SRC-PACKET -> SLOT-02 -> OUT-PACKET -> SLOT-10.
```

Usage :

```text
conserver presence directe et protection.
```

### 17.2. Flux analyse non audible

```text
SLOT-01 / SLOT-02 / SLOT-05 / SLOT-06 / SLOT-07 / SLOT-10
-> TAP-* -> SLOT-04 -> ANA-PACKET -> SLOT-00.
```

Usage :

```text
observer sans decider.
```

### 17.3. Flux permission

```text
SLOT-04 + SLOT-10 + SLOT-11 -> SLOT-00
-> PERM-PACKET -> SLOT-03 / SLOT-05 / SLOT-06 / SLOT-07 / SLOT-08.
```

Usage :

```text
autoriser, limiter ou bloquer les fonctions.
```

### 17.4. Flux generation

```text
SLOT-00 -> PERM-PACKET -> SLOT-05 -> GEN-PACKET
-> SLOT-06 / SLOT-07 / SLOT-10 / SLOT-09.
```

Usage :

```text
generer avec trace et sortie.
```

### 17.5. Flux espace / halo

```text
SLOT-01 / SLOT-02 / SLOT-03 / SLOT-05
-> SPC-PACKET / HAL-PACKET
-> SLOT-06 / SLOT-07
-> SLOT-10.
```

Usage :

```text
partager espace ou halo sans fusionner SPC, HAL et GEN-HAL.
```

### 17.6. Flux Auto-Pro

```text
SLOT-04 + SLOT-10 -> AP-PACKET -> SLOT-08
-> ACT-* -> SLOT-09 + SLOT-10.
```

Usage :

```text
limiter seulement avec cause, priorite, relachement et signal.
```

### 17.7. Flux scene superposee

```text
SLOT-11 -> SCN-DOM + LAYER-ALLOW
-> SLOT-00 -> PERM-PACKET
-> slots concernes.
```

Usage :

```text
maintenir scene dominante et couches superposables.
```

---

## 18. Relations avec Ableton sans routage final

Possibilites abstraites :

```text
SLOT-01 peut devenir pistes audio d'entree ou groupes d'entree.
SLOT-02 peut devenir chemins directs proteges.
SLOT-03 peut devenir chaines de transformation.
SLOT-04 peut devenir taps d'analyse non audibles.
SLOT-05 peut devenir pistes de generation audio ou MIDI.
SLOT-06 peut devenir retours, groupes, sends, pistes ou bus d'espace.
SLOT-07 peut devenir retours, groupes, pistes ou dispositifs de memoire.
SLOT-08 peut devenir points d'action dans plusieurs zones.
SLOT-09 peut devenir vue de controle, signalisation ou feedback.
SLOT-10 peut devenir verification de sortie, monitoring et etats OUT.
SLOT-11 peut devenir bibliotheque de scenes / matrices.
```

Contraintes :

```text
un send partageable n'est pas forcement un retour final.
un retour n'est pas forcement le bon choix pour tous les halos.
un groupe n'est pas forcement la bonne separation fonctionnelle.
une piste dediee peut etre plus lisible qu'un device cache.
un device unique peut etre moins robuste qu'une separation conceptuelle.
```

Interdits :

```text
choisir maintenant les retours Ableton ;
choisir maintenant les routages ;
choisir maintenant les devices ;
choisir maintenant les objets Max ;
choisir maintenant le mapping.
```

---

## 19. Contraintes methodologiques issues du cadrage externe

Contraintes retenues :

```text
separer flux audio, flux de controle et flux d'observation ;
garder des chemins directs lisibles pour les sources ;
utiliser les espaces partages seulement quand leur fonction est claire ;
eviter les retours ou feedbacks implicites non controles ;
ne pas confondre mapping de performance et logique musicale ;
prevoir un feedback lisible pour les actions qui changent la jouabilite ;
garder l'instrument acoustique comme instrument, pas comme simple capteur.
```

Application Vesperare :

```text
le didgeridoo reste instrument libre ou integre selon mode.
les mappings futurs doivent suivre les fonctions, pas l'inverse.
la signalisation sert la jouabilite, pas le diagnostic permanent.
les espaces et halos doivent rester decidables et sortables.
```

---

## 20. Questions ouvertes niveau 3

Questions :

```text
DO-N3-1 : quels SLOT doivent devenir pistes separees dans la session reelle ?
DO-N3-2 : quels SLOT peuvent rester regroupes sans perdre la lisibilite ?
DO-N3-3 : quels BUS d'espace/halo doivent etre partages ou dedies ?
DO-N3-4 : quels TAP d'analyse doivent exister dans le setup minimum ?
DO-N3-5 : quels ACT Auto-Pro peuvent etre localises sans risque de decision opaque ?
DO-N3-6 : quelles informations de SLOT-09 doivent etre visibles en live ?
DO-N3-7 : faut-il une fiche interface conceptuelle avant mapping controleur ?
DO-N3-8 : faut-il une fiche traduction Ableton abstraite separee avant Max objects ?
```

Position provisoire :

```text
rester encore au niveau des emplacements.
ne traduire en pistes, retours, devices, API ou mappings qu'apres audit.
```

---

## 21. Interdits niveau 3

```text
SLOT traite comme piste finale ;
LANE traitee comme chaine definitive ;
BUS traite comme retour Ableton final ;
TAP traite comme analyse obligatoire permanente ;
ACT traite comme automatisation opaque ;
VIEW traitee comme interface finale ;
CHK traite comme mastering ;
SLOT-00 compositeur ;
SLOT-05 compositeur global ;
SLOT-08 correcteur esthetique ;
SLOT-10 juge musical ;
scene preset exclusif ;
GEN sans GEN-PACKET ;
SPC, HAL et GEN-HAL fusionnes ;
setup didgeridoo + PC perdu ;
timbre electronique reconnaissable non decide ;
voix nue non integree.
```

---

## 22. Decision v0.1

Decision :

```text
l'architecture Max for Live detaillee niveau 3 traduction de session
abstraite est definie.
```

Elle etablit :

```text
carte de session abstraite ;
SLOT-00 a SLOT-12 ;
voies candidates ;
points d'observation ;
points d'action ;
bus abstraits ;
vues candidates ;
subset minimal didgeridoo + PC ;
flux de session abstraite ;
relations avec Ableton sans routage final ;
contraintes methodologiques ;
questions ouvertes ;
interdits niveau 3.
```

Prochaine action recommandee :

```text
AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_FOR_LIVE_DETAILLEE_NIVEAU_3_TRADUCTION_SESSION_ABSTRAITE_AVEC_CORPUS_v0_1
```

But de l'audit :

```text
verifier que la traduction de session abstraite reste compatible avec le
corpus actif, ne fige pas l'implementation, conserve les contrats niveau 2,
et ne transforme pas les emplacements en pistes, retours ou devices finaux.
```

---

## 23. Suivi audit niveau 3

Action realisee :

```text
AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_FOR_LIVE_DETAILLEE_NIVEAU_3_TRADUCTION_SESSION_ABSTRAITE_AVEC_CORPUS_v0_1.md
```

Conclusion :

```text
l'architecture Max for Live detaillee niveau 3 traduction de session
abstraite est compatible avec le corpus actif.
```

Fragilites restantes :

```text
FRAG-N3-1 : visibilite / internalite des messages.
FRAG-N3-2 : proximite entre direct et transforme.
FRAG-N3-3 : separation generation audio / MIDI / source / controle.
FRAG-N3-4 : espaces et halos partages, dedies ou hybrides.
FRAG-N3-5 : hierarchie des points d'action Auto-Pro.
FRAG-N3-6 : densite visuelle par vue.
```

Prochaine action recommandee :

```text
SPECIFICATION_ARCHITECTURE_MAX_FOR_LIVE_DETAILLEE_NIVEAU_4_TRADUCTION_ABLETON_ABSTRAITE_VESPERARE_v0_1
```

Condition :

```text
le niveau 4 peut proposer pistes, groupes, retours candidats et zones de
devices, mais doit encore eviter devices exacts, objets Max, algorithmes,
seuils, mappings, routages finaux et interface finale.
```
