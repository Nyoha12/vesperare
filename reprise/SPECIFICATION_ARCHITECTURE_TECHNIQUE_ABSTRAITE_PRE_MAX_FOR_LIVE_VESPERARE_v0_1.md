# SPECIFICATION ARCHITECTURE TECHNIQUE ABSTRAITE PRE MAX FOR LIVE VESPERARE v0.1

Projet : Vesperare
Statut : specification technique abstraite, pre-Max for Live
Date : 2026-06-21

Sources actives principales :

- `MATRICE_BLOCS_RESPONSABILITES_PACKETS_CONTROLES_VESPERARE_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_FONCTIONNELLE_ABSTRAITE_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_ARCHITECTURE_FONCTIONNELLE_ABSTRAITE_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_SYSTEME_DECISIONNEL_CONCEPTUEL_VESPERARE_v0_1.md`
- `SPECIFICATION_PROTOCOLS_SIDECHAINS_CONCEPTUELS_v0_1.md`
- `SPECIFICATION_ANALYSES_INDICES_CONCEPTUELS_ET_CONFIANCE_v0_1.md`
- `SPECIFICATION_BLOC_GENERATION_SONORE_MOTIFS_RYTHMIQUES_MELODIQUES_v0_1.md`
- `REVERBS_ESPACE_REACTIF_v0_2.md`
- `SPECIFICATION_CONTROLES_LIVE_ET_MODES_SCENE_v0_1.md`
- `SPECIFICATION_NOYAU_JOUABLE_SCENES_COUCHES_v0_1.md`

But :

```text
transformer l'architecture fonctionnelle et la matrice compacte
en architecture technique abstraite preparant Max for Live,
sans encore choisir de devices, plugins, algorithmes, seuils,
controleur physique ou patch reel.
```

Cette fiche peut parler de :

```text
familles de pistes potentielles ;
groupes fonctionnels ;
flux audio conceptuels ;
flux de controle conceptuels ;
flux d'analyse conceptuels ;
familles de modules ;
etat partage ;
permissions ;
priorites ;
contraintes de performance live.
```

Cette fiche ne doit pas parler de :

```text
nom de device Max for Live ;
nom de plugin ;
algorithme exact ;
seuil numerique ;
patcher exact ;
routage Ableton final ;
interface graphique finale ;
controleur physique ;
evaluation pratique.
```

---

## 1. Decision centrale

Decision :

```text
Vesperare doit etre pense comme un systeme de familles techniques
coordonnees par etat, permissions et priorites, pas comme une chaine
d'effets lineaire.
```

Architecture abstraite minimale :

```text
SOURCE AUDIO / SOURCE SALLE
        |
        v
FAMILLE ENTREE + QUALIFICATION SOURCE
        |
        +--> FAMILLE ANALYSE / INDICES / CONFIANCE
        |
        +--> FAMILLE AUDIO DIRECT / TRAITEMENTS SOURCE

FAMILLE LIVE + SCENE + ETAT
        |
        v
FAMILLE DECISION / PERMISSIONS / PRIORITES
        |
        v
FAMILLE PROTOCOLES RELATIONNELS
        |
        +--> FAMILLE GENERATION
        +--> FAMILLE ESPACE / REVERB / SALLE
        +--> FAMILLE HALO / MEMOIRE
        +--> FAMILLE AUTO-PRO
        |
        v
FAMILLE SIGNALISATION + SORTIE CONCEPTUELLE
```

Principe :

```text
l'audio circule dans des familles de traitement.
les decisions circulent dans un etat partage.
les analyses informent.
les permissions autorisent.
les protocoles relient.
les generations produisent seulement sous fonction.
```

---

## 2. Vocabulaire technique abstrait

### 2.1. Famille technique

Une famille technique est :

```text
un ensemble futur de pistes, modules, controles ou traitements
qui partagent une responsabilite.
```

Exemples :

```text
FAM-SRC ;
FAM-ANA ;
FAM-STATE ;
FAM-DEC ;
FAM-PROTO ;
FAM-GEN ;
FAM-SPC ;
FAM-HAL ;
FAM-AUTOPRO ;
FAM-SIG ;
FAM-OUT.
```

Une famille technique n'est pas encore :

```text
une piste Ableton precise ;
un rack ;
un device ;
un patch Max ;
un bus audio final.
```

### 2.2. Piste potentielle

Une piste potentielle est :

```text
une place logique possible dans une future session.
```

Elle peut devenir plus tard :

```text
une piste audio ;
une piste MIDI ;
un groupe ;
un retour ;
un module Max ;
un ensemble de devices ;
une structure hybride.
```

Mais cette traduction n'est pas decidee ici.

### 2.3. Flux conceptuel

Un flux conceptuel peut etre :

```text
audio ;
controle ;
analyse ;
permission ;
demande ;
signalisation ;
etat.
```

Un flux conceptuel n'est pas encore :

```text
routage audio ;
routage MIDI ;
send ;
sidechain audio ;
cable Max ;
automation Ableton.
```

### 2.4. Etat partage

Etat partage :

```text
memoire technique abstraite de ce qui est vrai maintenant.
```

Il contient :

```text
scene ;
couches ;
etat de forme ;
permissions ;
modes live ;
P0/P1/P2/P3/P4/P5 ;
confiance ;
risques ;
objets generatifs actifs ;
monde spatial ;
halo ;
sortie prevue ;
signaux visibles.
```

Garde-fou :

```text
l'etat partage ne compose pas.
il informe les familles techniques.
```

---

## 3. Familles techniques globales

### FAM-SRC - Sources et entrees

Responsabilite :

```text
recevoir, proteger, identifier et qualifier les sources acoustiques
et la salle.
```

Sous-familles :

```text
SRC-DID : didgeridoo ;
SRC-GNG : gong / metaux ;
SRC-PRC : tambour / peau / percussion corporelle ;
SRC-VOX : voix ;
SRC-SAL : salle / ambience / retour de piece ;
SRC-GEN-IN : generation deja presente comme source secondaire.
```

Sorties conceptuelles :

```text
audio source direct ;
copie d'analyse ;
SRC-PACKET ;
risques source ;
presence source.
```

Interdits :

```text
forcer une source en controleur ;
forcer le didgeridoo en basse ;
ignorer une source essentielle ;
modifier le role musical sans permission.
```

### FAM-ANA - Analyses / indices / confiance

Responsabilite :

```text
observer les sources, la salle, la generation et le resultat,
puis produire des indices avec confiance.
```

Sous-familles :

```text
ANA-GLOB : energie, densite, silence, forme ;
ANA-DID : bourdon, partiels, souffle, attaques ;
ANA-GNG : attaque, queue, partiels, bloom ;
ANA-VOX : souffle, formants, cri, fragment ;
ANA-RHY : attaques, pulse, interlocking, densite rythmique ;
ANA-GRV : sub, conflit grave, lisibilite grave ;
ANA-SPC : queue, densite reverb, proximite, immersion ;
ANA-HAL : halo voulu/subi, maintien, masquage ;
ANA-SAL : salle, resonance, enrichissement, risque ;
ANA-GEN : motif utile, motif trop autonome, timbre reconnaissable.
```

Sorties conceptuelles :

```text
ANA-PACKET ;
CONF-0 a CONF-5 ;
CONF-X ;
alerte P0/P1 possible ;
doute utile.
```

Interdits :

```text
declencher une scene ;
lancer une generation ;
choisir un retour ;
supprimer un halo ;
baisser une source hors P0/P1.
```

### FAM-STATE - Scene / live / etat partage

Responsabilite :

```text
conserver les modes et intentions actives.
```

Sous-familles :

```text
STATE-SCN : scene dominante, couches, etat de forme ;
STATE-LIVE : choix explicites ;
STATE-PERM : permissions P0 a P5 ;
STATE-MODE : modes didgeridoo, grave, generation, espace, halo ;
STATE-OBJ : objets generatifs actifs ;
STATE-EXIT : sorties prevues ;
STATE-RISK : risques acceptes ou refuses.
```

Sorties conceptuelles :

```text
SCN-PACKET ;
LIVE-PACKET ;
PERM-PACKET ;
etat courant.
```

Interdits :

```text
scene rigide ;
permission permanente non justifiee ;
P2 efface par automatisme ;
P0 rendu acceptable.
```

### FAM-DEC - Decisions / priorites

Responsabilite :

```text
arbitrer ce qui peut agir maintenant.
```

Sous-familles :

```text
DEC-P0 : securite critique ;
DEC-P1 : protection mix vitale ;
DEC-P2 : choix live explicite ;
DEC-P3 : preparation de scene ;
DEC-P4 : proposition ;
DEC-P5 : coherence douce.
```

Sorties conceptuelles :

```text
DEC-PACKET ;
permission mise a jour ;
reaction autorisee ;
reaction refusee ;
signal necessaire.
```

Interdits :

```text
composer ;
choisir une esthetique ;
choisir un motif principal ;
choisir retour ou transgression ;
rendre P1 invisible.
```

### FAM-PROTO - Relations / sidechains conceptuels

Responsabilite :

```text
relier source, indice, cible, reaction, priorite et sortie.
```

Sous-familles :

```text
PROTO-DID : didgeridoo libre, adapte, guide, source ;
PROTO-GRV : sub, grave genere, gong bloom, grave spatial ;
PROTO-GEN : generation rythmique, ligne, memoire, source ;
PROTO-SPC : monde spatial, reactivite, salle ;
PROTO-HAL : halo Auto/Lock/Force/Cut ;
PROTO-VOX : voix exposee integree, voix/grave ;
PROTO-RET : retour prepare, sortie, retour source ;
PROTO-TRG : transgression, feedback controle ;
PROTO-AUTH : autorite, signalisation, limitation.
```

Sorties conceptuelles :

```text
PROTO-PACKET ;
demande bornee ;
condition de reaction ;
sortie prevue.
```

Interdits :

```text
routage technique ;
activation automatique ;
relation sans permission ;
sidechain audio suppose.
```

### FAM-GEN - Generation sonore / motifs

Responsabilite :

```text
produire des objets sonores, rythmiques, melodiques, texturaux,
spatiaux ou de retour sous fonction Vesperare.
```

Sous-familles :

```text
GEN-SRC : source live prolongee ou transformee ;
GEN-RHY : pression rythmique / motifs rythmiques ;
GEN-LIN : lignes / motifs melodiques / acid naturalise ;
GEN-GRV : grave / sub / bloom ;
GEN-HAL : halos / memoires / queues comme objet generatif ;
GEN-SPC : spatialisation generee / espaces reactifs comme objet ;
GEN-TEX : textures / polytextures / partiels ;
GEN-VOX : voix / formants / fragments ;
GEN-TRG : transgression / masse / rugosite ;
GEN-RET : retours / sorties / consequences.
```

Sorties conceptuelles :

```text
audio genere ;
GEN-PACKET ;
demande vers SPC/HAL/GEN-RET/SIG ;
etat d'objet actif ;
sortie prevue.
```

Interdits :

```text
generation autonome ;
style entier ;
motif principal non autorise ;
retour choisi seul ;
transgression choisie seule ;
timbre electronique reconnaissable non decide ;
source essentielle remplacee.
```

### FAM-SPC - Espace / reverb / salle

Responsabilite :

```text
organiser proximite, immersion, monde spatial, espace reactif,
salle reelle et coherence spatiale.
```

Sous-familles :

```text
SPC-PROX : proximite ;
SPC-IMM : immersion ;
SPC-WORLD : monde spatial principal ;
SPC-REACT : espace reactif ;
SPC-ROOM : salle reelle ;
SPC-GRV : grave spatial ;
SPC-SRC : espace de source ;
SPC-EXIT : sortie spatiale.
```

Sorties conceptuelles :

```text
audio spatialise ;
SPC-PACKET ;
demande HAL si memoire necessaire ;
risque P0/P1 ;
signal si limite.
```

Interdits :

```text
reverb decorative ;
monde spatial impose ;
masquage d'attaque sans signal ;
effacement du corps non decide ;
suppression d'un choix spatial hors P0/P1.
```

### FAM-HAL - Halo / memoire

Responsabilite :

```text
gerer prolongation, memoire, queue comme maintien,
source du halo et verrouillage.
```

Sous-familles :

```text
HAL-AUTO ;
HAL-LOCK ;
HAL-FORCE ;
HAL-CUT ;
HAL-MOMENT ;
HAL-SAFE ;
HAL-SRC ;
HAL-EXIT.
```

Sorties conceptuelles :

```text
audio halo ;
HAL-PACKET ;
etat de maintien ;
limite P0/P1 ;
signal si conflit.
```

Interdits :

```text
supprimer un halo voulu hors P0/P1 ;
halo decoratif non decide ;
queue non sortie ;
masquage sans signal.
```

### FAM-AUTOPRO - Protections / coherence douce

Responsabilite :

```text
proteger P0, P1 et stabiliser P5 sans composer.
```

Sous-familles :

```text
AP-SAFE : securite critique ;
AP-MIX : lisibilite vitale ;
AP-SUB : sub / grave / headroom ;
AP-FEED : feedback / resonance dangereuse ;
AP-ATT : attaque masquee ;
AP-SRC : source essentielle ;
AP-DENS : densite / boue ;
AP-SPC : boue grave/reverb ;
AP-SIG : signalisation protection.
```

Sorties conceptuelles :

```text
PROTECT-PACKET ;
limite ;
retrait autorise ;
signal P0/P1/P2 limite.
```

Interdits :

```text
choix esthetique ;
choix de scene ;
choix de motif ;
choix de retour ;
choix de transgression ;
changement de monde expressif hors P0/P1.
```

### FAM-SIG - Signalisation

Responsabilite :

```text
rendre visibles les limites qui changent la jouabilite.
```

Sous-familles :

```text
SIG-P0 ;
SIG-P1 ;
SIG-P2-LIMIT ;
SIG-GRV ;
SIG-HAL ;
SIG-GEN ;
SIG-RET ;
SIG-CONF ;
SIG-ROOM.
```

Sorties conceptuelles :

```text
SIG-PACKET ;
retour visuel, textuel, lumineux ou equivalent futur ;
priorite de signal.
```

Interdits :

```text
tout signaler ;
debug permanent ;
masquer P1 ;
laisser un retrait important invisible.
```

### FAM-OUT - Sortie / verification conceptuelle

Responsabilite :

```text
representer le resultat entendu et verifier coherence, lisibilite,
decision, protection et sortie.
```

Sous-familles :

```text
OUT-MAIN : resultat principal ;
OUT-MON : retour de lisibilite ;
OUT-ROOM : relation salle ;
OUT-CHECK : verification conceptuelle ;
OUT-REC : trace eventuelle future, non decidee.
```

Sorties conceptuelles :

```text
OUT-PACKET ;
alerte vers DEC/SIG si incoherence majeure.
```

Interdits :

```text
jugement esthetique autonome ;
mastering ;
composition ;
decision artistique.
```

---

## 4. Familles de pistes potentielles

Important :

```text
les lignes ci-dessous ne sont pas encore des pistes Ableton.
elles decrivent des places logiques possibles.
```

### 4.1. Entrees live potentielles

```text
POT-SRC-DID : entree didgeridoo ;
POT-SRC-GNG : entree gong / metaux ;
POT-SRC-PRC : entree tambour / peau ;
POT-SRC-VOX : entree voix ;
POT-SRC-SAL : entree mesure / salle / ambience ;
POT-SRC-AUX : entree instrument acoustique supplementaire.
```

Chaque entree live doit pouvoir fournir :

```text
audio direct ;
copie pour analyse ;
copie pour generation source ;
copie pour espace/halo si autorise ;
statut de protection.
```

### 4.2. Groupes source potentiels

```text
GRP-SRC-ACOUSTIC : sources acoustiques directes ;
GRP-SRC-TRANSFORMED : sources transformees autorisees ;
GRP-SRC-PROTECTED : sources essentielles protegees ;
GRP-SRC-ANALYSIS : copies d'analyse sans role audible direct.
```

Garde-fou :

```text
une copie d'analyse ne doit pas devenir source audible non decidee.
```

### 4.3. Groupes generation potentiels

```text
GRP-GEN-RHY : generation rythmique ;
GRP-GEN-LIN : lignes / motifs ;
GRP-GEN-GRV : grave / bloom ;
GRP-GEN-TEX : textures / partiels ;
GRP-GEN-VOX : voix / formants / fragments ;
GRP-GEN-HAL-SPC : objets generatifs lies a espace / halo ;
GRP-GEN-TRG : transgression ;
GRP-GEN-RET : sorties / retours.
```

Garde-fou :

```text
chaque groupe GEN doit garder son GEN-PACKET.
```

### 4.4. Groupes espace / halo potentiels

```text
GRP-SPC-PROX : proximite ;
GRP-SPC-WORLD : monde principal ;
GRP-SPC-IMM : immersion ;
GRP-SPC-REACT : espace reactif ;
GRP-SPC-ROOM : salle reelle ;
GRP-SPC-GRV : grave spatial ;
GRP-HAL-SRC : halo source ;
GRP-HAL-MEM : memoire / queue / lock ;
GRP-HAL-EXIT : sorties de halo.
```

Garde-fou :

```text
SPC place dans un monde.
HAL maintient une memoire.
GEN-HAL produit ou demande un objet de halo.
```

### 4.5. Groupes controle / etat potentiels

```text
CTRL-SCN : scene et couches ;
CTRL-LIVE : controles explicites ;
CTRL-PERM : permissions P0 a P5 ;
CTRL-DEC : arbitrage ;
CTRL-PROTO : relations ;
CTRL-OBJ : objets generatifs actifs ;
CTRL-SIG : signalisation ;
CTRL-MEM : memoire courte/longue ;
CTRL-SAFE : protections P0/P1/P5.
```

Garde-fou :

```text
les groupes controle ne doivent pas etre confondus avec l'audio.
```

### 4.6. Groupes sortie potentiels

```text
GRP-OUT-MAIN : sortie principale ;
GRP-OUT-SUB : grave principal ou surveille ;
GRP-OUT-SPC : sortie spatiale conceptuelle ;
GRP-OUT-MON : retour de monitoring conceptuel ;
GRP-OUT-SIG : signalisation non musicale ;
GRP-OUT-ROOM : interaction salle.
```

Garde-fou :

```text
ces groupes ne fixent pas la sortie physique.
```

---

## 5. Flux techniques abstraits

### 5.1. Flux audio source

```text
source acoustique -> entree source -> protection minimale
-> traitements source autorises -> sortie directe ou transformee.
```

Contraintes :

```text
source essentielle respectee ;
pas de transformation sans fonction ;
pas de baisse automatique hors P0/P1 ;
copie d'analyse separee du son audible.
```

### 5.2. Flux analyse

```text
source ou sortie -> copie d'analyse -> indices -> confiance
-> ANA-PACKET -> DEC/PROTO/AUTO-PRO/SIG.
```

Contraintes :

```text
ANA informe ;
ANA ne decide pas ;
CONF-4 ne cree pas de permission ;
CONF-X bloque ou signale les reactions fortes.
```

### 5.3. Flux permission

```text
SCN + LIVE + DEC + P0/P1/P2/P3/P4/P5 -> PERM-PACKET
-> familles autorisees ou bloquees.
```

Contraintes :

```text
pas de PERM-PACKET, pas de reaction expressive forte ;
P0 toujours prioritaire ;
P1 visible si limitation ;
P2 souverain hors P0/P1.
```

### 5.4. Flux generation

```text
PERM + DEC + SCN + inspiration/fonction + source/origine
-> famille GEN -> GEN-PACKET -> audio genere ou demande bornee
-> SPC/HAL/OUT/SIG.
```

Contraintes :

```text
GEN-PACKET obligatoire ;
sortie prevue ;
risque de cliche explicite ;
autonomie bornee ;
retour non choisi seul.
```

### 5.5. Flux espace / halo

```text
SCN + LIVE + DEC + PROTO + source + risque salle
-> SPC/HAL -> SPC-PACKET/HAL-PACKET -> OUT/SIG.
```

Contraintes :

```text
monde spatial nomme ;
source concernee nommee ;
fonction nommee ;
sortie nommee ;
Halo Lock respecte hors P0/P1.
```

### 5.6. Flux Auto-Pro

```text
ANA + OUT + etat P0/P1/P5 -> AUTO-PRO
-> PROTECT-PACKET -> limite/retrait/signal.
```

Contraintes :

```text
P0 coupe ou limite si necessaire ;
P1 protege lisibilite vitale ;
P5 stabilise sans choisir ;
intervention P1/P2 limitee signalee.
```

### 5.7. Flux signalisation

```text
DEC/AUTO-PRO/ANA/GEN/SPC/HAL/OUT -> SIG-PACKET
-> signal priorise.
```

Contraintes :

```text
signaler ce qui change la jouabilite ;
ne pas signaler chaque detail ;
P0/P1/P2 priorites.
```

---

## 6. Architecture par cycles de jeu

### 6.1. Cycle instant critique

But :

```text
gerer P0/P1 sans attendre.
```

Familles impliquees :

```text
FAM-ANA ;
FAM-DEC ;
FAM-AUTOPRO ;
FAM-SIG ;
FAM-OUT.
```

Reactions possibles :

```text
limite ;
coupe ;
retrait d'une generation non essentielle ;
reduction halo ou espace si P0/P1 ;
signal clair.
```

Interdits :

```text
choix esthetique ;
retour musical impose ;
transgression compensee automatiquement.
```

### 6.2. Cycle geste court

But :

```text
reagir a attaque, souffle, cri, gong, geste rythmique ou action live.
```

Familles impliquees :

```text
FAM-SRC ;
FAM-ANA ;
FAM-PROTO ;
FAM-GEN ;
FAM-SPC ;
FAM-HAL ;
FAM-SIG.
```

Reactions possibles :

```text
accent ;
trace ;
halo court ;
appel de generation ;
signal de risque ;
preparation de retour.
```

Condition :

```text
reaction forte seulement si PERM et DEC l'autorisent.
```

### 6.3. Cycle motif / micro-forme

But :

```text
gerer motifs rythmiques, lignes, acid naturalise, interlocking,
fragments vocaux et tensions.
```

Familles impliquees :

```text
FAM-GEN ;
FAM-STATE ;
FAM-DEC ;
FAM-PROTO ;
FAM-SPC ;
FAM-HAL ;
FAM-OUT.
```

Reactions possibles :

```text
maintien ;
variation ;
mutation ;
retrait ;
sortie ;
retour prepare.
```

Interdits :

```text
motif autonome hors fonction ;
lead banal ;
style impose.
```

### 6.4. Cycle etat long

But :

```text
tenir techno suspendue tres longue, halo, monde spatial,
pression grave, espace ou absence de corps decidee.
```

Familles impliquees :

```text
FAM-STATE ;
FAM-SPC ;
FAM-HAL ;
FAM-GEN / GEN-RET ;
FAM-AUTOPRO ;
FAM-OUT.
```

Reactions possibles :

```text
maintien ;
stabilisation ;
evolution lente ;
sortie preparee ;
retour non impose.
```

Interdits :

```text
rappel automatique au corps hors decision ;
suppression halo hors P0/P1 ;
reverb decorative.
```

### 6.5. Cycle scene / passage

But :

```text
porter la forme globale, les superpositions de scenes,
les roles DOM/LAYER/GESTE/ETAT/TRACE et les sorties.
```

Familles impliquees :

```text
FAM-STATE / STATE-SCN ;
FAM-STATE / STATE-LIVE ;
FAM-DEC ;
FAM-PROTO ;
FAM-GEN ;
FAM-SPC ;
FAM-HAL ;
FAM-SIG ;
FAM-OUT.
```

Reactions possibles :

```text
changement de dominante ;
ajout/retrait de couche ;
preparation de retour ;
sortie ;
transgression decidee ;
mode grave different.
```

Interdits :

```text
scene exclusive par contrainte technique ;
superposition impossible ;
perte de controle P2.
```

---

## 7. Setup minimum didgeridoo + PC

### 7.1. Architecture minimale obligatoire

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

### 7.2. Doit rester possible

```text
didgeridoo libre protege ;
systeme adapte au didgeridoo ;
didgeridoo adapte au systeme si decide ;
guide harmonique ;
generation par souffle/attaques/partiels ;
pression rythmique minimale ;
ligne ou basse-motif naturalisee ;
grave soutien, retrait ou libre ;
halo source ;
proximite ;
immersion ;
techno suspendue tres longue ;
retour prepare.
```

### 7.3. Ne doit pas etre requis

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

### 7.4. Risques propres au setup minimum

```text
didgeridoo devient controleur cache ;
didgeridoo force en basse ;
systeme trop ambient ;
perte de pression rythmique ;
generation pauvre par manque de sources ;
trop de controles pour une performance seul.
```

Garde-fou :

```text
la structure minimale doit proposer peu de controles de premier niveau,
mais des modes suffisamment puissants.
```

---

## 8. Groupes de controles pre-interface

Cette section ne dessine pas l'interface.

Elle identifie seulement les controles qui devront exister quelque part.

### 8.1. Premier niveau live

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

### 8.2. Deuxieme niveau scene

```text
sources autorisees ;
familles GEN autorisees ;
inspirations/phenomenes retenus ;
naturalisation ;
reconnaissance / cliche ;
autonomie ;
sorties ;
monde spatial secondaire ;
source du halo ;
mode salle ;
priorites P2/P3.
```

### 8.3. Niveau interne non joue directement

```text
indices detailles ;
confiance detaillee ;
memoire interne ;
etat des objets ;
relations PROTO detaillees ;
protections fines ;
diagnostic.
```

Garde-fou :

```text
les controles internes ne doivent pas envahir la performance.
```

---

## 9. Contraintes de performance live

### 9.1. Lisibilite

Le systeme doit rendre lisibles :

```text
P0 actif ;
P1 actif ;
P2 limite ;
generation retiree ;
halo limite ;
conflit grave ;
retour prepare ;
doute critique.
```

Il ne doit pas rendre tout visible.

### 9.2. Robustesse

Le systeme doit accepter :

```text
source absente ;
analyse incertaine ;
salle inconnue ;
didgeridoo seul ;
scene longue ;
absence de retour corporel decidee ;
transgression decidee ;
graves libres.
```

### 9.3. Degradation musicale

Quand une fonction ne peut pas agir correctement :

```text
elle se retire ;
elle propose ;
elle signale ;
elle passe en mode prudent ;
elle laisse le choix live reprendre la main.
```

Elle ne doit pas :

```text
inventer un retour ;
remplacer une source ;
forcer un style ;
composer une solution.
```

### 9.4. Charge mentale

Premier principe :

```text
moins de controles directs, mais des modes mieux definis.
```

Deuxieme principe :

```text
les signaux doivent expliquer les limitations, pas decrire tout le systeme.
```

Troisieme principe :

```text
les scenes preparent, le live decide, Auto-Pro protege.
```

---

## 10. Contraintes pour future architecture Max for Live

La future architecture Max for Live devra respecter :

```text
un chemin source direct protege ;
des copies d'analyse non audibles ;
un etat partage lisible ;
des permissions explicites ;
une separation GEN/SPC/HAL/AUTO-PRO ;
une signalisation priorisee ;
une strategie setup minimum didgeridoo + PC ;
une separation premier niveau live / scene / interne.
```

Elle ne devra pas :

```text
transformer les packets en bus obligatoires ;
transformer les protocoles en sidechains audio systematiques ;
faire de GEN un compositeur global ;
faire de SPC/HAL des presets decoratifs ;
faire d'AUTO-PRO un correcteur esthetique ;
faire d'ANA un decideur ;
faire de OUT un juge musical.
```

---

## 11. Correspondance blocs -> familles techniques

```text
SRC      -> FAM-SRC + POT-SRC + copies analyse
SCN      -> FAM-STATE / STATE-SCN
LIVE     -> FAM-STATE / STATE-LIVE + controles premier niveau
ANA      -> FAM-ANA
DEC      -> FAM-DEC
PROTO    -> FAM-PROTO
GEN      -> FAM-GEN + groupes GEN
SPC      -> FAM-SPC + groupes espace
HAL      -> FAM-HAL + groupes halo
AUTO-PRO -> FAM-AUTOPRO
SIG      -> FAM-SIG
OUT      -> FAM-OUT
```

---

## 12. Questions restantes

Ces questions ne bloquent pas cette fiche.

Elles devront etre traitees avant architecture Max for Live reelle :

1. Quelles familles devront devenir de vraies pistes Ableton, et lesquelles resteront dans un module de controle ?
2. Le controle d'etat partage doit-il etre centralise dans un seul noyau ou distribue par familles ?
3. Les objets GEN doivent-ils etre representes comme instances actives, scenes preparees ou modes globaux ?
4. Les analyses doivent-elles etre regroupees par source, par fonction musicale ou par risque P0/P1 ?
5. SPC et HAL doivent-ils etre techniquement separes ou seulement separes logiquement ?
6. La signalisation doit-elle etre un canal unique priorise ou plusieurs indicateurs specialises ?
7. Le setup didgeridoo seul doit-il avoir une session reduite dediee ou utiliser la meme structure avec sources absentes ?
8. Les permissions de scene doivent-elles etre stockees comme presets de scene, comme matrice de modes, ou comme etat editable ?

---

## 13. Decision v0.1

Decision :

```text
l'architecture technique abstraite pre-Max for Live est definie.
```

Elle etablit :

```text
familles techniques ;
pistes potentielles ;
groupes fonctionnels ;
flux conceptuels audio/controle/analyse/permission ;
cycles de jeu ;
setup minimum didgeridoo + PC ;
groupes de controles pre-interface ;
contraintes de performance live ;
contraintes pour la future architecture Max for Live.
```

Prochaine action recommandee :

```text
AUDIT_COMPATIBILITE_ARCHITECTURE_TECHNIQUE_ABSTRAITE_PRE_MAX_FOR_LIVE_AVEC_CORPUS_v0_1
```

But de l'audit :

```text
verifier que cette fiche ne glisse pas vers des choix techniques
prematures, respecte la matrice active, garde le setup minimum viable,
et ne transforme pas les familles techniques en patch Ableton cache.
```

---

## 14. Suivi

Audit de compatibilite cree :

```text
AUDIT_COMPATIBILITE_ARCHITECTURE_TECHNIQUE_ABSTRAITE_PRE_MAX_FOR_LIVE_AVEC_CORPUS_v0_1.md
```

Corrections integrees pendant audit :

```text
COR-TECH-A : ajout de FAM-STATE, FAM-PROTO et FAM-OUT
             dans la liste des familles.
COR-TECH-B : remplacement de FAM-SCN / FAM-LIVE par
             FAM-STATE / STATE-SCN et FAM-STATE / STATE-LIVE.
COR-TECH-C : remplacement de FAM-GEN-RET par FAM-GEN / GEN-RET.
COR-TECH-D : remplacement d'une formulation d'essai par
             "evaluation pratique" comme hors perimetre.
```

Conclusion :

```text
l'architecture technique abstraite pre-Max for Live est compatible
avec le corpus actif apres corrections.
```

Prochaine action recommandee :

```text
SPECIFICATION_ARCHITECTURE_MAX_FOR_LIVE_CONCEPTUELLE_VESPERARE_v0_1
```

---

## 15. Suivi architecture Max for Live conceptuelle

Action realisee :

```text
SPECIFICATION_ARCHITECTURE_MAX_FOR_LIVE_CONCEPTUELLE_VESPERARE_v0_1.md
```

Audit cree :

```text
AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_FOR_LIVE_CONCEPTUELLE_AVEC_CORPUS_v0_1.md
```

Conclusion :

```text
l'architecture Max for Live conceptuelle est compatible avec le corpus actif.
elle reste conceptuelle : pas de devices, plugins, algorithmes, seuils,
routages finaux ou mise en oeuvre reelle.
```

Prochaine action recommandee :

```text
SPECIFICATION_ARCHITECTURE_MAX_FOR_LIVE_DETAILLEE_NIVEAU_1_VESPERARE_v0_1
```
