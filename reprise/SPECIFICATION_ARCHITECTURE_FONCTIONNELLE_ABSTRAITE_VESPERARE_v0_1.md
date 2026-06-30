# SPECIFICATION ARCHITECTURE FONCTIONNELLE ABSTRAITE VESPERARE v0.1

Projet : Vesperare
Date : 2026-06-21
Statut : specification d'architecture fonctionnelle abstraite

Sources actives :

- `AUDIT_TRACABILITE_CAHIER_CHARGES_GENERATIF_STYLISTIQUE_v0_1.md`
- `AUDIT_COMPATIBILITE_SYSTEME_DECISIONNEL_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_SYSTEME_DECISIONNEL_CONCEPTUEL_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_ANALYSES_INDICES_CONFIANCE_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_ANALYSES_INDICES_CONCEPTUELS_ET_CONFIANCE_v0_1.md`
- `AUDIT_COMPATIBILITE_PROTOCOLS_SIDECHAINS_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_PROTOCOLS_SIDECHAINS_CONCEPTUELS_v0_1.md`
- `AUDIT_COMPATIBILITE_BLOC_GENERATION_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_BLOC_GENERATION_SONORE_MOTIFS_RYTHMIQUES_MELODIQUES_v0_1.md`
- `SPECIFICATION_NOYAU_JOUABLE_SCENES_COUCHES_v0_1.md`
- `SPECIFICATION_CONTROLES_LIVE_ET_MODES_SCENE_v0_1.md`
- `REVERBS_ESPACE_REACTIF_v0_2.md`
- `BESOINS_GENERATION_v0_4.md`
- `BESOINS_STYLISTIQUES_v0_4.md`
- `CARACTERISATION_DETAILLEE_ELEMENTS_v0_4.md`

But :

- transformer le corpus conceptuel en blocs fonctionnels abstraits ;
- definir les responsabilites de chaque bloc ;
- definir les entrees/sorties conceptuelles de chaque bloc ;
- definir les etats partages necessaires ;
- definir comment les scenes, sources, analyses, protocoles, generation, reverb/espace, Auto-Pro, controles live et signalisation communiquent conceptuellement ;
- conserver la tracabilite inspiration -> fonction generative ;
- preparer une future architecture technique sans la commencer.

Hors perimetre :

- algorithmes ;
- seuils numeriques ;
- devices Max for Live ;
- pistes Ableton ;
- bus audio ou MIDI ;
- routings reels ;
- plugins ;
- interface finale ;
- controleur physique ;
- evaluation pratique.

---

## 1. Decision centrale

L'architecture fonctionnelle Vesperare n'est pas encore une architecture technique.

Elle decrit :

```text
quels blocs existent ;
ce que chaque bloc sait ;
ce que chaque bloc peut demander ;
ce que chaque bloc peut produire ;
ce que chaque bloc ne doit jamais decider seul ;
quels etats doivent etre partages ;
quelles sorties doivent rester possibles.
```

Formule generale :

```text
sources + scene + choix live
-> observations
-> interpretation/confiance
-> decision/permission
-> protocoles relationnels
-> fonctions generatives/spatiales/protectrices
-> signalisation
-> sortie ou maintien
```

Regle principale :

```text
Un bloc fonctionnel ne compose pas seul.
Il remplit une responsabilite bornee dans un contexte musical.
```

Architecture minimale :

```text
SRC -> ANA -> DEC -> PROTO -> GEN/SPC/HAL -> OUT
      ^       ^       ^       ^             |
      |       |       |       |             v
     LIVE -> SCN ---- PERM --- AUTO-PRO -> SIG
```

Lecture :

```text
SRC observe les sources.
SCN et LIVE donnent le contexte et les permissions.
ANA qualifie.
DEC arbitre.
PROTO relie.
GEN/SPC/HAL produisent ou transforment seulement si autorises.
AUTO-PRO protege.
SIG rend les limites lisibles.
OUT represente le resultat musical coherent, pas un bus technique.
```

---

## 2. Vocabulaire architectural

### 2.1. BLOC

`BLOC` designe une fonction abstraite du systeme.

Un bloc a :

```text
role ;
entrees conceptuelles ;
sorties conceptuelles ;
autorites possibles ;
interdits ;
garde-fous ;
etat partage si necessaire.
```

### 2.2. FLUX

`FLUX` designe une circulation d'information conceptuelle.

Il ne designe pas :

```text
routage audio ;
routage MIDI ;
sidechain technique ;
bus Ableton ;
patch.
```

Un flux peut transporter :

```text
etat de scene ;
permission ;
indice ;
confiance ;
demande ;
conflit ;
reaction autorisee ;
signalisation ;
sortie preparee.
```

### 2.3. PAQUET

`PAQUET` designe un ensemble stable d'informations.

Exemples :

```text
SRC-PACKET ;
SCN-PACKET ;
ANA-PACKET ;
DEC-PACKET ;
PROTO-PACKET ;
GEN-PACKET ;
SPC-PACKET ;
PROTECT-PACKET ;
SIG-PACKET ;
OUT-PACKET.
```

### 2.4. ETAT PARTAGE

`ETAT PARTAGE` designe une information accessible a plusieurs blocs.

Exemples :

```text
DOM active ;
couches actives ;
mode didgeridoo ;
mode grave ;
mode halo ;
permission generation ;
conflit P1 ;
retour prepare ;
inspiration/fonction d'un objet genere ;
sortie prevue.
```

Regle :

```text
Un etat partage ne doit pas devenir une decision cachee.
```

---

## 3. Vue globale des blocs

### BLOC-SRC - Sources

Role :

```text
representer les sources presentes ou imaginables.
```

Sources :

```text
didgeridoo ;
gong ;
voix ;
tambour/peau ;
percussion corporelle ;
souffle ;
friction ;
silence ;
salle ;
objet genere ;
scene ;
choix live.
```

Sortie :

```text
SRC-PACKET.
```

### BLOC-SCN - Scene / contexte

Role :

```text
definir DOM, LAYER, GESTE, ETAT, TRACE et sorties preparees.
```

Sortie :

```text
SCN-PACKET ;
PERM-PACKET.
```

### BLOC-LIVE - Choix live

Role :

```text
porter P2, les modes explicites, les verrouillages, les cuts,
les forces et les refus.
```

Sortie :

```text
LIVE-PACKET ;
PERM-PACKET ;
SIG-PACKET si un choix est limite.
```

### BLOC-ANA - Analyses / indices / confiance

Role :

```text
observer et qualifier sans decider.
```

Sortie :

```text
ANA-PACKET.
```

### BLOC-DEC - Decision / arbitrage

Role :

```text
appliquer P0/P1/P2/P3/P4/P5,
les portes GATE-0 a GATE-11,
et transformer demandes + permissions + indices en statuts de reaction.
```

Sortie :

```text
DEC-PACKET.
```

### BLOC-PROTO - Protocoles relationnels

Role :

```text
relier source, indice, cible, reaction, priorite et sortie.
```

Sortie :

```text
PROTO-PACKET.
```

### BLOC-GEN - Generation sonore / rythmique / melodique

Role :

```text
produire, varier, maintenir, retirer ou preparer des objets generatifs
situes dans une fonction.
```

Sortie :

```text
GEN-PACKET ;
DEMANDE vers SPC/HAL/GEN-RET/SIG si necessaire.
```

### BLOC-SPC - Reverb / espace / monde

Role :

```text
porter proximite, immersion, espace commun, hors-monde,
espace reactif, salle reelle et coherence spatiale.
```

Sortie :

```text
SPC-PACKET.
```

### BLOC-HAL - Halo / queues / memoire

Role :

```text
porter prolongation, memoire, lock, force, cut, momentary,
safe force et appartenance de source.
```

Sortie :

```text
HAL-PACKET.
```

### BLOC-AUTO-PRO - Protection / coherence

Role :

```text
proteger securite, lisibilite vitale, headroom, feedback,
sub, source essentielle, attaque, densite et boue grave/reverb.
```

Sortie :

```text
PROTECT-PACKET ;
SIG-PACKET si P0/P1/P2 limite.
```

### BLOC-SIG - Signalisation

Role :

```text
rendre lisibles les protections, limites, blocages, preparations,
conflits et retours possibles.
```

Sortie :

```text
SIG-PACKET.
```

### BLOC-OUT - Resultat musical coherent

Role :

```text
representer le resultat musical entendu comme scene coherente.
```

Important :

```text
OUT n'est pas un master, un bus ou un routing.
OUT est le point de verification conceptuelle :
est-ce coherent, lisible, decide, protege, et sorti correctement ?
```

---

## 4. Paquets conceptuels

### 4.1. SRC-PACKET

Contient :

```text
source ;
presence ;
role possible ;
energie ;
attaques ;
souffle ;
friction ;
partiels ;
formants ;
grave ;
queue ;
rugosite ;
silence ;
relation a la salle ;
risque source essentielle masquee.
```

Interdit :

```text
SRC-PACKET ne decide pas le role musical final.
```

### 4.2. SCN-PACKET

Contient :

```text
DOM ;
LAYER actives ;
GESTE actif ou preparable ;
ETAT actif ;
TRACE utile ;
scene precedente ;
scene suivante possible ;
sortie preparee ;
fonctions autorisees ;
fonctions interdites ;
inspirations actives ;
garde-fous de scene.
```

Interdit :

```text
SCN-PACKET ne peut pas contourner P0/P1 ou P2.
```

### 4.3. LIVE-PACKET

Contient :

```text
choix P2 ;
Lock ;
Force ;
Cut ;
Libre ;
Bloom ;
mode DID ;
mode GRV ;
mode HAL ;
mode SPC/GSP ;
permission generation ;
retour ;
refus de retour ;
transgression ;
risque accepte ;
maintien anti-retrait ;
priorite temporaire.
```

Interdit :

```text
LIVE-PACKET ne rend jamais P0 acceptable.
```

### 4.4. PERM-PACKET

Contient :

```text
fonction autorisee ;
fonction interdite ;
fonction preparable ;
role autorise : DOM / LAYER / GESTE / ETAT / TRACE ;
autorite : P0 / P1 / P2 / P3 / P4 / P5 ;
borne ;
sortie obligatoire ;
signalisation obligatoire.
```

Regle :

```text
pas de PERM-PACKET, pas de reaction expressive forte.
```

### 4.5. ANA-PACKET

Contient :

```text
IND ;
OBS ;
INT ;
CONF ;
temporalite ;
convergences ;
contradictions ;
risque P0/P1 ;
reaction possible ;
reaction interdite ;
ambiguite.
```

Interdit :

```text
ANA-PACKET ne declenche pas seul.
CONF-4 ne cree pas de permission.
```

### 4.6. DEC-PACKET

Contient :

```text
demande ;
autorite ;
permission ;
gate bloquante ;
statut reaction ;
priorite ;
conflit ;
limite ;
reaction autorisee ;
reaction bloquee ;
sortie ;
signalisation.
```

Statuts possibles :

```text
bloquee ;
preparee ;
trace ;
active douce ;
active forte ;
limitee ;
retiree ;
coupee ;
transferee.
```

### 4.7. PROTO-PACKET

Contient :

```text
source ecoutee ;
cible ;
indices utiles ;
interpretation ;
reaction autorisee ;
reaction interdite ;
priorite ;
permission requise ;
sortie ;
garde-fou ;
signalisation.
```

Interdit :

```text
PROTO-PACKET n'active pas la cible seul.
```

### 4.8. GEN-PACKET

Contient :

```text
objet genere ;
famille GEN ;
inspiration(s) ;
phenomene retenu ;
fonction Vesperare ;
role DOM/LAYER/GESTE/ETAT/TRACE ;
source ou origine perceptive ;
regime rythmique ;
regime melodique/spectral ;
mode grave ;
mode halo ;
mode espace ;
autonomie AUT ;
naturalisation NAT ;
degre de reconnaissance ;
condition d'apparition ;
condition de transformation ;
condition de retrait ;
risques ;
garde-fous.
```

Regle de tracabilite :

```text
GEN-PACKET doit toujours garder inspiration(s) + fonction Vesperare.
```

### 4.9. SPC-PACKET

Contient :

```text
monde spatial ;
distance ;
enveloppement ;
matiere ;
queue ;
grave spatial ;
reactivite ;
proximite ;
immersion ;
hors-monde ;
salle reelle ;
mesure prudente ;
protection P0/P1 ;
sortie spatiale.
```

### 4.10. HAL-PACKET

Contient :

```text
mode HAL ;
source du halo ;
duree ;
zone spectrale ;
fonction ;
Lock ;
Force ;
Cut ;
Momentary ;
Safe force ;
halo voulu ;
halo subi ;
relation attaque ;
relation grave ;
condition de baisse ;
signalisation si limite.
```

### 4.11. PROTECT-PACKET

Contient :

```text
P0 actif ;
P1 actif ;
P5 actif ;
source protegee ;
attaque protegee ;
sub protege ;
grave/reverb nettoye ;
densite limitee ;
halo limite ;
monde spatial degrade ;
choix live limite ;
raison ;
retour a etat stable de protection.
```

### 4.12. SIG-PACKET

Contient :

```text
niveau SIG-0/SIG-1/SIG-2/SIG-3 ;
P0 ;
P1 ;
P2 limite ;
reaction bloquee ;
reaction preparee ;
retour prepare ;
grave conflictuel ;
source protegee ;
halo limite ;
monde spatial limite ;
generation retiree ;
motif trop autonome ;
confiance faible ;
indices contradictoires.
```

### 4.13. OUT-PACKET

Contient :

```text
scene entendue ;
fonction dominante ;
couches audibles ;
source essentielle preservee ;
pression corporelle ;
espace ;
halo ;
grave ;
generation ;
sortie ou maintien ;
risque residuel ;
lisibilite musicale.
```

---

## 5. Ordre de fonctionnement conceptuel

### 5.1. Cycle principal

```text
1. LIVE/SCN definit contexte et permissions.
2. SRC decrit les sources presentes.
3. ANA produit indices et confiance.
4. DEC applique P0/P1/P2/P3/P4/P5.
5. PROTO selectionne les relations pertinentes.
6. GEN/SPC/HAL reagissent seulement si autorises.
7. AUTO-PRO limite/protege si necessaire.
8. SIG rend visible ce qui modifie la jouabilite.
9. OUT verifie coherence, lisibilite et sortie.
```

### 5.2. Principe de recurrence

Le cycle peut se repeter en continu conceptuellement.

Mais :

```text
une repetition du cycle ne signifie pas micro-decision permanente.
```

Les reactions doivent respecter :

```text
hysterese ;
maintien decide ;
sortie ;
reversibilite ;
droit au doute.
```

### 5.3. Regle de non-flottement

Tout objet actif doit pouvoir repondre a :

```text
quelle fonction ?
quelle scene ?
quelle inspiration ou phenomene ?
quelle source ou origine perceptive ?
quelle sortie ?
quel risque ?
qui peut l'arreter ?
```

Si une reponse manque :

```text
objet bloque, trace, ou retrait.
```

---

## 6. Architecture par couches logiques

### Couche 1 - Presence et sources

Blocs :

```text
BLOC-SRC ;
BLOC-LIVE ;
BLOC-SCN.
```

Responsabilite :

```text
dire ce qui existe, ce qui est decide, et ce qui peut exister.
```

### Couche 2 - Lecture et qualification

Blocs :

```text
BLOC-ANA ;
BLOC-PROTO.
```

Responsabilite :

```text
qualifier sans composer ;
relier sans activer seul.
```

### Couche 3 - Decision et permission

Blocs :

```text
BLOC-DEC ;
BLOC-AUTO-PRO.
```

Responsabilite :

```text
autoriser, limiter, proteger, bloquer ou preparer.
```

### Couche 4 - Production fonctionnelle

Blocs :

```text
BLOC-GEN ;
BLOC-SPC ;
BLOC-HAL.
```

Responsabilite :

```text
produire ou transformer seulement des fonctions autorisees.
```

### Couche 5 - Lisibilite et sortie

Blocs :

```text
BLOC-SIG ;
BLOC-OUT.
```

Responsabilite :

```text
rendre le systeme jouable et verifier le resultat musical.
```

---

## 7. Bloc source detaille

### 7.1. Didgeridoo

Fonctions possibles :

```text
source libre ;
guide harmonique ;
presence ;
perturbateur ;
matiere rythmique ;
source de souffle ;
source de partiels ;
source de formants ;
ancrage grave ;
source fonctionnalisee.
```

Flux vers :

```text
ANA-DID ;
PROTO-DID ;
GEN-SRC ;
GEN-RHY ;
GEN-LIN ;
GEN-GRV ;
GEN-HAL ;
GEN-TEX ;
SPC/HAL ;
AUTO-PRO source essentielle.
```

Interdits :

```text
didgeridoo baisse automatiquement hors P0/P1 ;
didgeridoo force en basse ;
didgeridoo reduit a controleur ;
didgeridoo traite sans fonction.
```

### 7.2. Gong / metaux

Fonctions possibles :

```text
impact ;
queue ;
bloom grave ;
base microtonale ;
souffle grave ;
rugissement ;
halo ;
signal ;
resolution ;
peak.
```

Flux vers :

```text
ANA-GNG ;
GEN-GRV ;
GEN-HAL ;
GEN-TEX ;
GEN-SPC ;
GEN-TRG ;
GEN-RET ;
SPC metal-gong.
```

### 7.3. Voix

Fonctions possibles :

```text
presence ;
souffle ;
formants ;
fragment ;
cri ;
texture ;
signal ;
rythme ;
transgression ;
ligne ou hook minimal integre.
```

Flux vers :

```text
ANA-VOX ;
GEN-VOX ;
GEN-RHY ;
GEN-LIN ;
GEN-HAL ;
GEN-SPC ;
GEN-TRG.
```

Interdits :

```text
voix non integree ;
auto-tune reconnaissable ;
chanson par defaut ;
lead vocal obligatoire.
```

### 7.4. Tambour / peau / percussion corporelle

Fonctions possibles :

```text
impact ;
attaque de peau ;
micro-contact ;
pulse ;
roll naturalise ;
densification ;
interlocking ;
transition ;
retour de cadre.
```

Flux vers :

```text
ANA-RHY ;
GEN-RHY ;
GEN-TEX ;
GEN-SRC ;
GEN-RET ;
NAT-PEAU.
```

Interdits :

```text
tribal/world plaque ;
drum circle ;
snare roll EDM standard ;
tradition percussive comme style.
```

### 7.5. Salle

Fonctions possibles :

```text
information prudente ;
risque ;
enrichissement ;
presence ;
resonance ;
limite ;
coherence spatiale.
```

Flux vers :

```text
ANA-SAL ;
SPC ;
AUTO-PRO ;
SIG.
```

Regle :

```text
avec un seul micro de mesure, la salle informe prudemment.
Elle ne pilote pas brutalement l'esthetique.
```

---

## 8. Bloc scene / live / permissions

### 8.1. SCN comme structure

SCN doit produire :

```text
DOM ;
LAYER ;
GESTE ;
ETAT ;
TRACE ;
fonctions autorisees ;
familles GEN autorisees ;
mondes spatiaux autorises ;
risques acceptables ;
sorties preferables ;
inspirations actives.
```

### 8.2. LIVE comme autorite

LIVE doit pouvoir porter :

```text
mode DID ;
mode GRV ;
mode HAL ;
mode SPC/GSP ;
permission generation ;
regime generation ;
retour ;
refus de retour ;
transgression ;
Lock ;
Force ;
Cut ;
risque accepte ;
maintien anti-retrait.
```

### 8.3. Permissions obligatoires

Une permission doit toujours dire :

```text
fonction ;
role ;
autorite ;
duree ou etat ;
borne ;
sortie ;
signalisation.
```

Si elle concerne la generation :

```text
famille GEN ;
inspiration(s) ;
source ou origine perceptive ;
autonomie AUT ;
naturalisation NAT ;
degre de reconnaissance ;
condition de retrait.
```

---

## 9. Bloc analyse

### 9.1. Role

ANA produit :

```text
observations ;
indices ;
interpretations possibles ;
confiance ;
temporalite ;
ambiguite ;
risques.
```

ANA ne produit pas :

```text
scene ;
retour impose ;
transgression ;
generation autonome ;
monde spatial choisi.
```

### 9.2. Familles d'analyse

```text
ANA-GLOB : energie, densite, silence ;
ANA-DID : bourdon, partiels, souffle, attaques ;
ANA-GNG : attaque, queue, partiels, bas-medium ;
ANA-VOX : souffle, formants, cri/rugosite ;
ANA-RHY : attaques, pulse, irregularite ;
ANA-GRV : sub, illisibilite, conflit harmonique ;
ANA-SPC : queue, espace, halo ;
ANA-SAL : salle problematique/enrichissante/inconnue ;
ANA-GEN : motif utile, autonome, cliche ;
ANA-FRM : preparation, maintien, retour, sortie.
```

### 9.3. Confiance

ANA transmet `CONF`.

DEC interprete `CONF`.

Regle :

```text
CONF-4 ne cree pas de permission.
CONF-5 protege.
CONF-X bloque ou retire reaction expressive.
```

---

## 10. Bloc decision

### 10.1. Role

DEC applique :

```text
GATE-0 P0 ;
GATE-1 P1 ;
GATE-2 P2 ;
GATE-3 contexte ;
GATE-4 fonction nommee ;
GATE-5 permission ;
GATE-6 protocole ;
GATE-7 indices/confiance ;
GATE-8 conflits ;
GATE-9 borne ;
GATE-10 signalisation ;
GATE-11 sortie.
```

### 10.2. Sorties DEC

DEC peut produire :

```text
autoriser ;
bloquer ;
preparer ;
trace ;
active douce ;
active forte ;
limiter ;
retirer ;
couper ;
transferer ;
signaler.
```

### 10.3. Interdits

DEC ne doit pas devenir :

```text
composition automatique ;
choix de scene autonome ;
declencheur de retour ;
declencheur de transgression ;
correcteur esthetique contre P2.
```

---

## 11. Bloc protocoles

### 11.1. Role

PROTO transforme une relation musicale en dependance surveillee.

Format :

```text
source -> indice -> interpretation -> cible -> reaction -> priorite -> sortie
```

### 11.2. Familles relationnelles

```text
PROTO-AUTH : choix live, scene, Auto-Pro, signalisation ;
PROTO-GRV : didgeridoo, gong, sub, grave spatial, retour grave ;
PROTO-DID : libre, adapte, guide, perturbateur ;
PROTO-SPC/HAL : monde spatial, halo, salle, enrichissement ;
PROTO-GEN : permission, rythme, ligne, memoire, source scene ;
PROTO-VOX : voix, grave, espace ;
PROTO-RET : retour prepare, sortie, retour source ;
PROTO-TRG : transgression, feedback controle.
```

### 11.3. Interdit

```text
Un protocole ne cree pas sa cible.
Il influence seulement une cible deja autorisee.
```

---

## 12. Bloc generation

### 12.1. Role

GEN produit des objets generatifs situes.

GEN doit toujours recevoir :

```text
PERM-PACKET ;
DEC-PACKET ;
SCN-PACKET ;
inspiration/fonction ;
source ou origine perceptive ;
sortie.
```

### 12.2. Familles GEN

```text
GEN-SRC : source live prolongee ou transformee ;
GEN-RHY : pression rythmique / motifs rythmiques ;
GEN-LIN : lignes / motifs melodiques / acid naturalise ;
GEN-GRV : grave / sub / bloom ;
GEN-HAL : halos / memoires / queues ;
GEN-SPC : spatialisation generee / espaces reactifs ;
GEN-TEX : textures / polytextures / partiels ;
GEN-VOX : voix / formants / fragments ;
GEN-TRG : transgression / masse / rugosite ;
GEN-RET : retours / sorties / consequences.
```

### 12.3. Trace inspiration/fonction

Chaque objet GEN doit garder :

```text
inspiration(s) ;
phenomene retenu ;
fonction Vesperare ;
risque de cliche ;
famille GEN ;
role DOM/LAYER/GESTE/ETAT/TRACE.
```

Exemples :

```text
Keita Ogawa -> interlocking -> pression polytexturale -> GEN-RHY/GEN-TEX.
Jazz -> tension/resolution retardee -> champ spectral -> GEN-TEX/GEN-RET.
Acid -> ligne vivante -> motif timbral naturalise -> GEN-LIN.
Sound-system -> pression par vide -> grave/espace -> GEN-GRV/GEN-SPC.
Trance -> suspension/expansion -> halo/espace/retour -> GEN-HAL/GEN-SPC/GEN-RET.
```

### 12.4. Interdits

```text
generation autonome hors fonction ;
motif principal non autorise ;
retour choisi par generation ;
transgression choisie par generation ;
timbre electronique reconnaissable non decide ;
source live essentielle remplacee ;
style identifiable impose.
```

---

## 13. Bloc espace / halo

### 13.1. SPC

SPC gere :

```text
monde principal ;
proximite ;
immersion ;
hors-monde ;
espace reactif ;
salle reelle ;
grave spatial ;
distance ;
enveloppement ;
queue comme effet de monde ou de distance ;
matiere ;
sortie spatiale.
```

### 13.2. HAL

HAL gere :

```text
Auto ;
Lock ;
Force ;
Cut ;
Momentary ;
Safe force ;
halo source ;
halo voulu ;
halo subi ;
memoire ;
queue comme memoire, maintien ou verrou ;
relation attaque ;
relation grave.
```

### 13.3. Interdits

```text
changement de monde expressif sans permission ;
suppression d'un Halo Lock hors P0/P1 ;
grande reverb decorative non decidee ;
espace qui efface le corps hors decision ;
queue qui masque attaque ou rythme sans signal.
```

### 13.4. Salle

La salle informe :

```text
risques ;
reverb naturelle ;
resonances ;
enrichissement possible ;
adaptation prudente.
```

La salle ne decide pas :

```text
monde expressif ;
esthetique ;
retour ;
transgression.
```

---

## 14. Bloc Auto-Pro

### 14.1. Role

AUTO-PRO protege :

```text
P0 securite critique ;
P1 protection mix vitale ;
P5 coherence douce.
```

### 14.2. Actions possibles

```text
limiter ;
couper si P0/P1 ;
reduire boue ;
clarifier attaque ;
proteger sub ;
proteger source essentielle ;
limiter halo ;
degrader monde spatial si necessaire ;
retirer generation non essentielle ;
signaler.
```

### 14.3. Interdits

```text
choisir scene ;
composer ;
choisir retour ;
choisir transgression ;
choisir motif principal ;
changer monde expressif hors P0/P1 ;
supprimer choix live hors P0/P1.
```

---

## 15. Bloc signalisation

### 15.1. Role

SIG rend le systeme jouable.

Il signale :

```text
P0 actif ;
P1 actif ;
P2 limite ;
reaction bloquee ;
reaction preparee ;
retour prepare ;
grave conflictuel ;
source protegee ;
halo limite ;
monde spatial limite ;
generation retiree ;
motif trop autonome ;
confiance faible ;
indices contradictoires.
```

### 15.2. Niveaux

```text
SIG-0 : interne seulement ;
SIG-1 : discret ;
SIG-2 : lisible en live ;
SIG-3 : alerte forte.
```

### 15.3. Garde-fou

```text
signaler ce qui modifie la jouabilite ;
ne pas signaler chaque micro-adaptation ;
prioriser P0/P1/P2.
```

---

## 16. Cas minimum didgeridoo + PC

Le systeme minimum doit fonctionner avec :

```text
didgeridoo ;
PC ;
eventuellement aucune autre source acoustique.
```

Blocs obligatoires dans ce cas :

```text
BLOC-SRC didgeridoo ;
BLOC-SCN ;
BLOC-LIVE ;
BLOC-ANA didgeridoo/rythme/grave/espace ;
BLOC-DEC ;
BLOC-PROTO didgeridoo/grave/generation/halo ;
BLOC-GEN ;
BLOC-SPC/HAL ;
BLOC-AUTO-PRO ;
BLOC-SIG ;
BLOC-OUT.
```

Fonctions minimales possibles :

```text
didgeridoo libre protege ;
systeme adapte au didgeridoo ;
didgeridoo adapte au systeme ;
guide harmonique ;
pression rythmique par attaques/souffle ;
ligne naturalisee par partiels/formants ;
grave soutien/retrait ;
halo source ;
retour grave/pulse/source ;
techno suspendue ;
transgression comme geste si decidee.
```

Interdits :

```text
setup minimum qui force le didgeridoo en controleur ;
setup minimum qui exige gong/voix/tambour ;
setup minimum qui perd la possibilite de club/corps ;
setup minimum qui produit seulement ambient/texture.
```

---

## 17. Exemples de flux conceptuels

### 17.1. Didgeridoo guide une ligne naturalisee

```text
SRC-DID : partiels + formants + souffle.
ANA-DID : partiels stables, CONF-3/4.
SCN : ligne ou didgeridoo guide autorise.
DEC : GEN-LIN active douce ou forte selon permission.
PROTO-DID-4 : didgeridoo -> ligne.
GEN-LIN : ligne naturalisee, source = partiels/formants.
SPC/HAL : integration source ou cavite.
SIG : signal si conflit grave ou motif bloque.
OUT : ligne vivante non 303, liee au didgeridoo.
```

### 17.2. Keita / polytexture comme couche

```text
SCN : SCN-8 ou LAYER-TEX/RHY autorisee.
TRACE : Keita Ogawa -> interlocking/attaques/plans.
SRC : didgeridoo, peau, voix, gong ou objets generes.
ANA-RHY : attaques, densite, interlocking plausible.
DEC : complexite autorisee mais bornee.
GEN-RHY/GEN-TEX : couches avec roles distincts.
AUTO-PRO : attaque/source/sub proteges.
SIG : densite limitee ou couche retiree si lisibilite menacee.
OUT : polytexture lisible, pas demonstration.
```

### 17.3. Jazz comme tension non stylistique

```text
TRACE : jazz -> tension, voicing distribue, resolution retardee.
SCN : suspension, polytexture, gong ou ligne autorisee.
ANA : partiels, centres, micro-instabilite.
DEC : pas de grille, pas d'accord plaque.
GEN-TEX/GEN-LIN : centres guides, frottements, mouvement interne.
GEN-RET : resolution retardee ou refusee.
OUT : tension harmonique comme matiere, pas jazz reconnaissable.
```

### 17.4. Trance comme suspension/expansion naturalisee

```text
TRACE : trance -> suspension, build, breakdown, peak naturalise.
SCN : techno suspendue ou espace long decide.
GEN-HAL/SPC/TEX : ouverture, respiration, densification.
DEC : pas de riser EDM, pas de supersaw.
GEN-RET : seuil de retour prepare, pas impose.
OUT : expansion longue, tension maintenue, retour optionnel.
```

### 17.5. Sound-system comme pression par espace

```text
TRACE : sound-system -> profondeur, sub corporel, pression par vide.
SCN : immersion/domination decidee.
GEN-GRV/SPC/HAL : grave lisible, espace corporel, separation plans.
AUTO-PRO : P0/P1 sub, fatigue, boue.
SIG : limite si grave libre ou monde degrade.
OUT : confort profond ou domination decidee, pas dub/reggae.
```

### 17.6. Retour prepare non impose

```text
SCN : retour possible ou sortie preparee.
ANA-FRM/RHY/GRV : pulse fantome, silence, grave trace.
DEC : STAT-1 preparee ou STAT-2 trace.
GEN-RET : centre grave, contraction espace, retour source.
LIVE : peut declencher ou refuser.
OUT : retour disponible, jamais impose.
```

---

## 18. Garde-fous architecturaux

### ARCH-R1 - Bloc trop puissant

Risque :

```text
un bloc devient compositeur cache.
```

Garde-fou :

```text
aucun bloc ne combine seul scene, permission, generation et sortie.
```

### ARCH-R2 - Analyse devenue decision

Garde-fou :

```text
ANA produit confiance, DEC decide.
```

### ARCH-R3 - Generation sans trace stylistique

Garde-fou :

```text
GEN-PACKET contient inspiration(s), phenomene retenu et fonction Vesperare.
```

### ARCH-R4 - Protocole devenu routing

Garde-fou :

```text
PROTO reste relation conceptuelle, pas circulation technique.
```

### ARCH-R5 - Reverb devenue decor

Garde-fou :

```text
SPC/HAL doivent nommer fonction, monde, source, sortie et droit au retrait.
```

### ARCH-R6 - Auto-Pro devenu esthetique

Garde-fou :

```text
AUTO-PRO protege P0/P1/P5.
Il ne choisit pas forme, retour, transgression ou monde expressif.
```

### ARCH-R7 - Signalisation surchargee

Garde-fou :

```text
SIG priorise ce qui modifie la jouabilite.
```

### ARCH-R8 - Setup minimum oublie

Garde-fou :

```text
toute architecture future doit fonctionner avec didgeridoo + PC.
```

---

## 19. Questions restantes

Questions non bloquantes :

```text
1. Quels paquets doivent etre consultables directement en live,
   et lesquels restent internes ?

2. Quels blocs doivent etre explicitement visibles dans une future interface :
   SCN, LIVE, SIG, GEN, SPC/HAL, AUTO-PRO ?

3. En setup didgeridoo seul, quelle famille GEN doit etre la plus immediate :
   GEN-RHY, GEN-LIN, GEN-GRV, GEN-HAL, GEN-RET ?

4. Quelle granularite de trace inspiration/fonction doit rester visible :
   inspiration seulement, phenomene, famille GEN, ou objet complet ?

5. A quel moment une future architecture technique devra separer
   generation, espace et protection sans multiplier la charge mentale ?

6. Quel niveau de signalisation est acceptable pendant une transgression ?

7. Quelle information de salle doit rester interne et laquelle doit devenir
   lisible comme limitation ou enrichissement ?
```

---

## 20. Decision v0.1

L'architecture fonctionnelle abstraite Vesperare est definie au niveau des blocs, paquets, flux conceptuels et garde-fous.

Elle confirme :

```text
le systeme reste avant technique ;
les flux ne sont pas des routings ;
les protocoles ne sont pas des sidechains techniques ;
la generation garde inspiration + fonction ;
Auto-Pro protege sans composer ;
ANA qualifie sans decider ;
DEC arbitre sans devenir compositeur ;
SPC/HAL portent des fonctions spatiales decidees ;
SIG rend le systeme jouable ;
le setup minimum didgeridoo + PC reste couvert.
```

Prochaine etape recommandee :

```text
AUDIT_COMPATIBILITE_ARCHITECTURE_FONCTIONNELLE_ABSTRAITE_AVEC_CORPUS_v0_1
```

But :

- verifier que cette architecture ne reintroduit pas de technique prematuree ;
- verifier que les blocs ne deviennent pas trop puissants ;
- verifier que la tracabilite stylistique reste preservee ;
- verifier que le setup minimum didgeridoo + PC reste viable ;
- verifier que les blocs couvrent bien generation, reverb, analyse, decision, signalisation et protections ;
- preparer ensuite une specification plus proche de l'architecture technique, seulement si l'audit est compatible.

Hors perimetre de l'audit :

```text
algorithmes ;
seuils ;
devices ;
pistes ;
bus ;
routings reels ;
interface finale.
```

---

## 21. Suivi

Audit de compatibilite cree :

```text
AUDIT_COMPATIBILITE_ARCHITECTURE_FONCTIONNELLE_ABSTRAITE_AVEC_CORPUS_v0_1.md
```

Corrections integrees pendant audit :

```text
COR-ARCH-A : remplacement de RET par GEN-RET.
COR-ARCH-B : clarification de la difference entre queue SPC
             et queue HAL.
```

Conclusion :

```text
l'architecture fonctionnelle abstraite est compatible avec le corpus actif.
elle peut servir de base a la prochaine couche de consolidation.
```

Prochaine action recommandee :

```text
MATRICE_BLOCS_RESPONSABILITES_PACKETS_CONTROLES_VESPERARE_v0_1
```
