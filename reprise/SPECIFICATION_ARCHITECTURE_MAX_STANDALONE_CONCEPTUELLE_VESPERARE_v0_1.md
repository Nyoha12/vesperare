# SPECIFICATION ARCHITECTURE MAX STANDALONE CONCEPTUELLE VESPERARE v0.1

Projet : Vesperare
Statut : specification architecture Max standalone conceptuelle
Date : 2026-06-22

Sources actives principales :

- `DECISION_RUNTIME_MAX_STANDALONE_LATENCE_SANS_COMPROMIS_VESPERARE_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_FONCTIONNELLE_ABSTRAITE_VESPERARE_v0_1.md`
- `MATRICE_BLOCS_RESPONSABILITES_PACKETS_CONTROLES_VESPERARE_v0_1.md`
- `SPECIFICATION_SYSTEME_DECISIONNEL_CONCEPTUEL_VESPERARE_v0_1.md`
- `SPECIFICATION_PROTOCOLS_SIDECHAINS_CONCEPTUELS_v0_1.md`
- `SPECIFICATION_ANALYSES_INDICES_CONCEPTUELS_ET_CONFIANCE_v0_1.md`
- `SPECIFICATION_BLOC_GENERATION_SONORE_MOTIFS_RYTHMIQUES_MELODIQUES_v0_1.md`
- `REVERBS_ESPACE_REACTIF_v0_2.md`
- `SPECIFICATION_BUDGET_LATENCE_CHARGE_DEGRADATION_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_BUDGET_LATENCE_CHARGE_DEGRADATION_AVEC_CORPUS_v0_1.md`

But :

```text
traduire les blocs conceptuels Vesperare vers une architecture Max/MSP
standalone, avec chemin critique faible latence, chemins d'analyse separes,
etat partage, interface live, generation, espace, halo, Auto-Pro et sortie,
sans figer encore les objets Max, algorithmes, seuils, patchers definitifs
ou interface finale.
```

Cette fiche peut definir :

```text
patchers conceptuels ;
chemins audio conceptuels ;
chemins de controle conceptuels ;
chemins d'analyse ;
etat partage ;
priorites de latence ;
responsabilites internes a l'application Max ;
relations entre blocs ;
garde-fous d'optimisation ;
setup minimum didgeridoo + PC.
```

Cette fiche ne doit pas definir :

```text
objet Max exact ;
algorithme exact ;
seuil numerique ;
plugin definitif ;
controleur physique final ;
interface graphique finale ;
materiel final ;
driver final ;
buffer final ;
patch final ;
evaluation pratique.
```

---

## 1. Decision centrale

Decision :

```text
Vesperare est une application Max/MSP standalone.
```

Elle doit etre pensee comme :

```text
un instrument logiciel live,
pas comme une session Ableton,
pas comme une pile d'effets,
pas comme un generateur autonome,
pas comme un patch experimental monolithique.
```

Principe :

```text
le son direct et les protections critiques doivent rester courts.
les analyses lentes doivent observer sans bloquer.
les decisions doivent passer par un etat partage explicite.
les generations doivent garder GEN-PACKET.
les reverbs/halos doivent appartenir a des mondes ou fonctions decides.
la latence doit etre optimisee sans compromis musical reel.
```

Architecture courte :

```text
MAX-APP
  -> APP-AUDIO-IO
  -> APP-SRC
  -> APP-RT-CRITICAL
  -> APP-ANA-FAST / APP-ANA-SLOW
  -> APP-STATE
  -> APP-DEC
  -> APP-PROTO
  -> APP-GEN
  -> APP-SPC
  -> APP-HAL
  -> APP-AUTOPRO
  -> APP-MIX-OUT
  -> APP-LIVE-UI
  -> APP-SIG
```

Garde-fou :

```text
aucun patcher ne doit composer seul.
aucun patcher d'analyse ne doit decider seul.
aucun patcher de generation ne doit produire hors fonction.
aucun patcher spatial ne doit changer de monde sans permission.
```

---

## 2. Vocabulaire Max standalone conceptuel

### 2.1. APP

`APP` designe l'application Max standalone complete.

Elle contient :

```text
audio ;
controle ;
etat ;
interface ;
scene ;
generation ;
reverb/espace ;
protections ;
signalisation ;
configuration.
```

### 2.2. PATCHER CONCEPTUEL

Un patcher conceptuel est :

```text
une responsabilite interne a l'application.
```

Il n'est pas encore :

```text
un fichier Max definitif ;
un sous-patcher definitif ;
un objet Max ;
une abstraction codee ;
une interface graphique.
```

### 2.3. CHEMIN CRITIQUE

Le chemin critique est :

```text
ce qui influence immediatement l'entree acoustique jouee ou la sortie vitale.
```

Il contient au minimum :

```text
entree audio ;
protection ;
didgeridoo direct ;
traitement source actif si decide ;
grave critique ;
mix principal ;
sortie audio.
```

Il ne doit pas contenir :

```text
analyse lente ;
historique ;
visualisation ;
diagnostic ;
reverb longue ;
convolution lourde ;
generation non immediate ;
decision de scene lente ;
UI lourde.
```

### 2.4. TAP

Un `TAP` est une prise d'information non bloquante.

Il sert a :

```text
observer une source ;
alimenter une analyse ;
alimenter un protocole ;
alimenter Auto-Pro ;
alimenter la signalisation.
```

Il ne doit pas :

```text
ralentir le chemin critique ;
modifier le son par lui-meme ;
creer une decision cachee.
```

### 2.5. BUS CONCEPTUEL

Un bus conceptuel designe :

```text
une circulation audio ou controle a responsabilite nommee.
```

Il ne designe pas encore :

```text
une implementation Max ;
un bus logiciel definitif ;
un nom de send/receive ;
une matrice audio finale.
```

---

## 3. Vue generale de l'application

Topologie :

```text
APP-BOOT
  -> APP-CONFIG
  -> APP-AUDIO-IO
  -> APP-STATE
  -> APP-LIVE-UI
  -> APP-SRC
  -> APP-RT-CRITICAL
  -> APP-ANA
  -> APP-DEC
  -> APP-PROTO
  -> APP-GEN / APP-SPC / APP-HAL
  -> APP-AUTOPRO
  -> APP-MIX-OUT
  -> APP-SIG
```

Lecture :

```text
APP-BOOT initialise.
APP-CONFIG charge les options.
APP-AUDIO-IO ouvre l'audio.
APP-STATE maintient l'etat partage.
APP-LIVE-UI recoit les choix.
APP-SRC qualifie les sources.
APP-RT-CRITICAL garde le chemin jouable.
APP-ANA observe.
APP-DEC arbitre.
APP-PROTO relie.
APP-GEN/SPC/HAL produisent sous permission.
APP-AUTOPRO protege.
APP-MIX-OUT sort le resultat.
APP-SIG rend les limites lisibles.
```

Regle de dependance :

```text
APP-RT-CRITICAL ne depend pas de APP-ANA-SLOW.
APP-AUDIO-IO ne depend pas de APP-LIVE-UI.
APP-MIX-OUT ne depend pas d'une visualisation.
APP-AUTOPRO-P0/P1 ne depend pas d'une generation.
```

---

## 4. Chemins de latence

### 4.1. LAT-0 - Direct vital

Fonctions :

```text
entree didgeridoo directe ;
sortie principale ;
protections P0 ;
protections P1 vitales ;
repli direct ;
controle minimum ;
grave critique si conflit immediat.
```

Architecture :

```text
APP-AUDIO-IO -> APP-RT-CRITICAL -> APP-MIX-OUT
```

Contraintes :

```text
chemin court ;
pas de reverb longue obligatoire ;
pas d'analyse lente obligatoire ;
pas de generation obligatoire ;
pas d'UI bloquante ;
pas de plugin latent ;
pas de routage circulaire.
```

### 4.2. LAT-1 - Interaction jouee

Fonctions :

```text
didgeridoo transforme actif ;
adaptation didgeridoo/systeme ;
pression rythmique jouee ;
grave support reactif ;
retour prepare critique ;
espace proche si necessaire a la lisibilite ;
signalisation jouable.
```

Architecture :

```text
APP-SRC -> APP-RT-CRITICAL -> APP-DEC-FAST -> APP-GEN/SPC/HAL-FAST -> APP-MIX-OUT
```

Contraintes :

```text
temps de reaction court ;
controle live prioritaire ;
parametres lisses ;
pas de recalcul lourd en audio ;
sortie claire si limitation.
```

### 4.3. LAT-2 - Musical non immediat

Fonctions :

```text
motifs generes non immediats ;
reactions de scene ;
espaces immersifs ;
halos non verrouilles ;
analyses de tendance ;
preparation de retours ;
naturalisation progressive.
```

Architecture :

```text
APP-ANA -> APP-STATE -> APP-DEC -> APP-GEN/SPC/HAL -> APP-MIX-OUT
```

Contraintes :

```text
ne pas bloquer LAT-0/LAT-1 ;
supporter retard musical si fonction claire ;
sortie ou maintien prevu ;
signal si effet sur jouabilite.
```

### 4.4. LAT-3 - Etat lent / memoire / ambience longue

Fonctions :

```text
historique ;
diagnostic ;
visualisation ;
mesure lente ;
longues queues ;
memoire de halo ;
modeles lourds ;
preparation hors geste.
```

Architecture :

```text
APP-ANA-SLOW -> APP-STATE -> APP-PREPARE
```

Contraintes :

```text
jamais sur chemin critique ;
jamais porteur unique d'une attaque ;
jamais condition de sortie vitale ;
jamais decision expressive seule.
```

---

## 5. Patchers conceptuels

### 5.1. APP-BOOT

Role :

```text
initialiser l'application.
```

Responsabilites :

```text
charger configuration ;
verifier fichiers necessaires ;
initialiser etat minimal ;
mettre P0/P1 disponibles ;
preparer repli direct ;
charger scenes preparees ;
mettre audio en etat controle.
```

Interdits :

```text
lancer une scene expressive seule ;
lancer une generation seule ;
forcer un monde spatial.
```

### 5.2. APP-CONFIG

Role :

```text
porter les reglages persistants.
```

Contient :

```text
preferences audio ;
entrees/sorties attendues ;
buffer cible indicatif ;
mode standalone ;
modes instrumentaux disponibles ;
scenes preparees ;
presets conceptuels ;
chemins de fichiers ;
etat de securite par defaut.
```

Ne contient pas :

```text
decision artistique de scene active ;
permission permanente vague ;
compromis musical impose par CPU.
```

### 5.3. APP-AUDIO-IO

Role :

```text
connecter entrees et sorties audio.
```

Sources minimales :

```text
didgeridoo ;
micro ou entree principale ;
entree salle optionnelle ;
gong optionnel ;
voix optionnelle ;
tambour/peau optionnel.
```

Sorties :

```text
sortie principale stereo ou multicanal ;
monitoring si necessaire ;
sortie diagnostic non critique ;
sortie enregistrement eventuelle.
```

Regles :

```text
didgeridoo direct doit rester disponible ;
sortie principale doit rester disponible ;
P0/P1 doivent pouvoir agir sans scene chargee ;
les entrees absentes doivent etre explicites.
```

### 5.4. APP-SRC

Role :

```text
representer les sources presentes.
```

Produit :

```text
SRC-PACKET ;
presence source ;
role potentiel ;
statut de protection ;
taps vers analyse.
```

Sources :

```text
didgeridoo ;
gong ;
voix ;
tambour/peau ;
souffle ;
salle ;
silence ;
objet genere ;
scene.
```

Interdit :

```text
decider le role musical final d'une source.
```

### 5.5. APP-RT-CRITICAL

Role :

```text
proteger et maintenir le chemin jouable.
```

Contient :

```text
didgeridoo direct ;
repli direct ;
protection niveau ;
protection feedback ;
protection grave critique ;
protection masquage vital ;
traitements actifs LAT-0/LAT-1 ;
mix critique.
```

Regle :

```text
tout ce qui est ici doit etre justifie par jouabilite, protection,
source directe ou sortie vitale.
```

Interdit :

```text
placer ici une reverb longue par confort ;
placer ici une analyse lente ;
placer ici une generation non immediate ;
placer ici une visualisation.
```

### 5.6. APP-ANA-FAST

Role :

```text
observer les indices utiles a LAT-0/LAT-1.
```

Indices possibles :

```text
niveau ;
attaque ;
grave critique ;
risque feedback ;
masquage flagrant ;
presence source ;
energie rythmique ;
conflit immediat.
```

Produit :

```text
ANA-PACKET rapide ;
CONF rapide ;
risque P0/P1 ;
signalisation eventuelle.
```

Interdit :

```text
declencher une generation expressive seule.
```

### 5.7. APP-ANA-SLOW

Role :

```text
observer les tendances non critiques.
```

Indices possibles :

```text
densite globale ;
evolution de scene ;
stabilite rythmique ;
queues et halos ;
relation a la salle ;
profil spectral long ;
memoire de forme ;
contexte de retour.
```

Produit :

```text
ANA-PACKET lent ;
propositions ;
preparations ;
diagnostic ;
historique.
```

Interdit :

```text
bloquer l'audio ;
changer une scene ;
forcer un retour ;
retirer une source.
```

### 5.8. APP-STATE

Role :

```text
maintenir l'etat partage.
```

Contient :

```text
scene active ;
couches actives ;
modes didgeridoo ;
modes grave ;
modes halo ;
modes reverb/espace ;
permissions ;
objets GEN actifs ;
GEN-PACKET ;
SPC-PACKET ;
HAL-PACKET ;
risques P0/P1/P2 ;
sorties preparees ;
verrouillages live ;
signalisation active.
```

Regle :

```text
un etat partage ne doit pas etre une decision cachee.
```

### 5.9. APP-LIVE-UI

Role :

```text
recevoir les choix explicites du musicien.
```

Doit donner acces a :

```text
P0/P1 visibles ;
mode didgeridoo ;
mode grave ;
mode generation ;
mode espace ;
mode halo ;
scene/couche ;
lock/force/cut ;
retour prepare ;
transgression decidee ;
controle bypass/repli direct ;
signalisation.
```

Regle :

```text
P2 reste souverain hors P0/P1.
```

Interdit :

```text
UI indispensable au son direct ;
UI qui masque une limitation ;
UI qui cree une decision sans etat partage.
```

### 5.10. APP-DEC

Role :

```text
arbitrer permissions et priorites.
```

Entrees :

```text
LIVE-PACKET ;
SCN-PACKET ;
ANA-PACKET ;
PROTO-PACKET ;
GEN-PACKET ;
SPC-PACKET ;
HAL-PACKET ;
PROTECT-PACKET.
```

Sorties :

```text
DEC-PACKET ;
PERM-PACKET ;
reaction autorisee ;
reaction refusee ;
besoin de signalisation ;
sortie prevue.
```

Interdit :

```text
composer ;
choisir une scene dominante seule ;
choisir une transgression seule ;
transformer une analyse en action expressive sans permission.
```

### 5.11. APP-PROTO

Role :

```text
gerer les relations source -> cible.
```

Relations types :

```text
didgeridoo -> grave genere ;
didgeridoo -> ligne naturalisee ;
gong -> monde spatial metal/gong ;
attaque -> pression rythmique ;
sub -> protection grave ;
voix -> espace proche/cavite ;
halo -> protection masquage ;
scene -> retour prepare.
```

Regle :

```text
un protocole influence une cible deja autorisee.
il n'active pas une cible seul.
```

### 5.12. APP-GEN

Role :

```text
produire sons, motifs, lignes, textures et retours generatifs autorises.
```

Sous-familles minimales :

```text
GEN-DID ;
GEN-GONG ;
GEN-RHY ;
GEN-MEL ;
GEN-ACID-NAT ;
GEN-JAZZ-OGAWA ;
GEN-SOUNDSYSTEM ;
GEN-DUBSTEP-TRACE ;
GEN-TRANCE-SUSPENDUE ;
GEN-VOX ;
GEN-RET ;
GEN-TEXTURE.
```

Chaque objet doit garder :

```text
GEN-PACKET ;
inspiration ;
phenomene retenu ;
fonction ;
role DOM/LAYER/GESTE/ETAT/TRACE ;
autonomie ;
naturalisation ;
sortie ;
risque.
```

Interdits :

```text
lead banal non decide ;
motif autonome hors scene ;
style entier plaque ;
timbre electronique reconnaissable non decide ;
retour impose ;
transgression imposee ;
source live essentielle remplacee.
```

### 5.13. APP-SPC

Role :

```text
gerer espace, reverb, monde, proximite, immersion et salle.
```

Dimensions separees :

```text
monde principal ;
distance ;
enveloppement ;
queue ;
matiere ;
grave spatial ;
reactivite ;
proximite ;
relation a la salle ;
protection.
```

Regle :

```text
les mondes spatiaux sont combinables comme dimensions,
pas comme empilement de reverbs completes.
```

Interdits :

```text
decor automatique ;
grande reverb sans fonction ;
masquage d'attaque sans signal ;
changement de monde sans permission ;
espace qui retire le corps sans decision.
```

### 5.14. APP-HAL

Role :

```text
gerer halo, memoire, queue, freeze, maintien et sorties longues.
```

Modes :

```text
Auto ;
Lock ;
Force ;
Cut ;
Momentary ;
Safe force.
```

Regles :

```text
halo voulu non retire hors P0/P1 ;
freeze rattache a source ou monde par defaut ;
exception libre possible seulement si decidee ;
halo ne doit pas masquer la source essentielle sans signal.
```

### 5.15. APP-AUTOPRO

Role :

```text
hygiene sonore, coherence et protection.
```

Peut agir sur :

```text
niveau critique ;
feedback ;
headroom ;
grave illisible ;
masquage flagrant ;
boue de reverb ;
brillance dure ;
sibilance ;
queue trop envahissante ;
coherence de sortie.
```

Ne doit pas decider :

```text
scene ambient ;
retour corporel ;
transgression ;
perte longue du corps ;
freeze ;
shimmer ;
monde spatial expressif ;
coupure de halo voulu hors danger critique.
```

### 5.16. APP-MIX-OUT

Role :

```text
assembler le resultat audible.
```

Doit recevoir :

```text
direct ;
traitements source ;
grave ;
generation ;
espace ;
halo ;
retours ;
protections ;
signalisation sonore si utile.
```

Regles :

```text
la sortie doit rester musicale et lisible ;
le didgeridoo direct doit pouvoir sortir ;
le grave critique doit rester gere ;
les protections doivent etre prioritaires ;
les limitations audibles doivent etre signalees.
```

### 5.17. APP-SIG

Role :

```text
rendre lisibles les changements qui affectent la jouabilite.
```

Signale :

```text
P0 ;
P1 ;
limitation audible ;
conflit grave ;
halo protege ;
source en direct protege ;
analyse incertaine ;
objet GEN refuse ;
latence/charge a risque ;
mode actif.
```

Interdit :

```text
masquer une limitation ;
inonder l'interface ;
remplacer le choix live par alerte permanente.
```

---

## 6. Audio routing conceptuel Max standalone

### 6.1. Entrees

Entrees conceptuelles :

```text
IN-DID ;
IN-GONG ;
IN-VOX ;
IN-DRUM ;
IN-ROOM ;
IN-AUX.
```

Setup minimum :

```text
IN-DID seul doit suffire.
```

Regle :

```text
les entrees optionnelles absentes ne doivent pas casser l'application.
```

### 6.2. Bus internes conceptuels

Bus minimaux :

```text
BUS-DIRECT ;
BUS-SRC-TREAT ;
BUS-GRAVE ;
BUS-GEN ;
BUS-SPC ;
BUS-HAL ;
BUS-RET ;
BUS-PROTECT ;
BUS-MIX ;
BUS-MONITOR ;
BUS-TAP-ANA.
```

Regle :

```text
BUS-TAP-ANA observe.
BUS-TAP-ANA ne porte pas le son vital.
```

### 6.3. Sorties

Sorties conceptuelles :

```text
OUT-MAIN ;
OUT-MONITOR ;
OUT-REC ;
OUT-DIAG.
```

Priorite :

```text
OUT-MAIN avant tout.
OUT-DIAG jamais critique.
```

---

## 7. Setup minimum didgeridoo + PC

Le setup minimum doit fonctionner avec :

```text
un ordinateur ;
Max standalone ;
une interface audio ;
une entree didgeridoo ;
une sortie principale.
```

Modes didgeridoo :

```text
DID-FREE-PROTECTED ;
DID-SYSTEM-FOLLOWS ;
DID-ADAPTED-TO-SYSTEM ;
DID-HARMONIC-GUIDE ;
DID-SOURCE-TRANSFORM ;
DID-PERTURBATOR.
```

Contraintes :

```text
didgeridoo direct toujours recuperable ;
traitement source jamais obligatoire ;
adaptation harmonique signalee si elle change la jouabilite ;
grave et didgeridoo doivent pouvoir coexister selon modes decides ;
mode libre avec protections par defaut disponible.
```

---

## 8. Grave / sub / gong

Modes grave :

```text
GRV-DID-GUIDE ;
GRV-DISCREET-SUPPORT ;
GRV-DID-HARMONICS-ADAPT ;
GRV-WITHDRAW-IF-DELETERIOUS ;
GRV-FREE.
```

Role gong :

```text
base microtonale ou harmonique possible ;
souffle grave ;
bloom ;
presence sub precise ;
basses riches, harmonieuses et complexes ;
source de monde spatial metal/gong.
```

Architecture :

```text
APP-SRC-GONG -> APP-ANA -> APP-PROTO -> APP-GEN-GONG / APP-SPC-GONG / APP-GRAVE
```

Garde-fous :

```text
vrai sub prioritaire ;
conflit deletere prioritaire ;
grave libre seulement si decide ;
support grave non retire comme automatisme artistique ;
modelisation lourde hors chemin critique si possible.
```

---

## 9. Generation dans Max standalone

APP-GEN doit etre separe en moteurs :

```text
GEN-RT-PULSE ;
GEN-RHY-INTERLOCK ;
GEN-MEL-FRAG ;
GEN-ACID-NAT ;
GEN-JAZZ-OGAWA ;
GEN-TRANCE-SUSP ;
GEN-SOUNDSYSTEM ;
GEN-DUBSTEP-TRACE ;
GEN-VOX-FRAG ;
GEN-GONG-BLOOM ;
GEN-DID-HARM ;
GEN-RET.
```

Regle commune :

```text
aucun moteur GEN ne sort sans GEN-PACKET.
```

GEN-JAZZ-OGAWA doit porter :

```text
precision rythmique ;
interlocking ;
micro-deplacements ;
energie percussive ;
jeu de timbres ;
tension dynamique ;
pas accord jazz plaque ;
pas style entier impose.
```

GEN-ACID-NAT doit porter :

```text
ligne possible ;
filtre/forme naturalisee ;
fonction de tension ;
pas 303 identifiable par defaut ;
pas squelch caricatural non decide ;
scene ou passage favorable anticipe.
```

GEN-TRANCE-SUSP doit porter :

```text
suspension longue possible ;
retour corporel prepare mais non impose ;
espace et attente ;
pression rythmique latente ou reinstallation decidee.
```

GEN-VOX-FRAG doit porter :

```text
voix integree ;
fragment ;
souffle ;
matiere ;
cavite ;
pas voix nue non integree ;
pas auto-tune reconnaissable.
```

---

## 10. Reverb / espace / halo dans Max standalone

APP-SPC et APP-HAL doivent etre separes mais coordonnes.

APP-SPC gere :

```text
monde ;
distance ;
proximite ;
immersion ;
salle ;
grave spatial ;
matiere ;
reactivite.
```

APP-HAL gere :

```text
memoire ;
queue voulue ;
halo lock ;
halo force ;
freeze ;
sortie longue ;
trace.
```

Architecture :

```text
source directe -> tap espace court si necessaire
source/generation -> monde spatial
monde spatial -> halo possible
halo -> Auto-Pro masquage/protection
sortie -> signalisation si limitation
```

Regles :

```text
reverb longue hors attaque critique ;
espace proche possible sans grande queue ;
immersion possible sans distance ;
halo peut etre maintenu si decide ;
Auto-Pro adapte a l'interieur d'un monde, ne change pas de monde seul ;
reverb naturelle de salle peut informer, pas decider seule.
```

---

## 11. Analyses et confiance dans Max standalone

Separation obligatoire :

```text
ANA-FAST pour risques et jouabilite.
ANA-SLOW pour contexte, tendances, salle, memoire.
```

ANA-FAST peut informer :

```text
P0 ;
P1 ;
grave critique ;
feedback ;
attaque ;
presence source ;
lisibilite immediate.
```

ANA-SLOW peut informer :

```text
scene ;
retour prepare ;
espace ;
halo ;
densite ;
naturalisation ;
historique ;
propositions.
```

Regle :

```text
un indice ne decide pas.
CONF limite le droit de reaction.
```

---

## 12. Decision / permissions / priorites

APP-DEC doit appliquer :

```text
P0 securite critique ;
P1 protection mix vitale ;
P2 choix live explicite ;
P3 scene ;
P4 assignation preparee ;
P5 coherence douce.
```

Ordre :

```text
P0 gagne toujours.
P1 protege.
P2 reste souverain hors P0/P1.
P3 prepare le contexte.
P4 propose ou assigne.
P5 stabilise sans choisir.
```

Interdits :

```text
APP-DEC ne compose pas ;
APP-DEC ne choisit pas une scene dominante seul ;
APP-DEC ne transforme pas une analyse en style ;
APP-DEC ne retire pas un choix live hors P0/P1.
```

---

## 13. Interface live conceptuelle

L'interface doit rester jouable.

Zones minimales :

```text
P0/P1 ;
audio device / niveau essentiel ;
didgeridoo mode ;
grave mode ;
scene/couche ;
generation ;
espace ;
halo ;
retour prepare ;
transgression decidee ;
signalisation ;
repli direct.
```

Commandes importantes :

```text
Direct Safe ;
Halo Lock ;
Halo Force ;
Halo Cut ;
Grave Free ;
Grave Protect ;
Didg Free ;
System Follows Didg ;
Didg Adapts ;
Gen Enable ;
Gen Hold ;
Gen Exit ;
Space World ;
Near/Immersive ;
Return Prepare ;
Transgression Enable.
```

Regle :

```text
les controles doivent etre regroupes par fonction musicale,
pas par structure interne de patch.
```

---

## 14. Optimisation latence sans compromis

Optimisation autorisee :

```text
raccourcir le chemin critique ;
separer audio-rate et controle-rate ;
sortir analyses lentes du chemin critique ;
precalculer ;
lisser parametres ;
eviter plugins latents ;
eviter UI lourde sur audio ;
reduire routages circulaires ;
ameliorer interface audio, driver, buffer ou ordinateur ;
separer patchers critiques et non critiques.
```

Optimisation interdite :

```text
supprimer une fonction desiree ;
appauvrir une scene ;
retirer une couche musicale decidee ;
rendre le son electronique reconnaissable ;
couper halo voulu hors P0/P1 ;
degrader didgeridoo direct ;
degrader grave critique ;
supprimer GEN-PACKET ;
transformer limitation CPU en choix esthetique.
```

Si une fonction est lourde :

```text
changer architecture avant de changer intention.
```

---

## 15. Packaging standalone conceptuel

A prevoir plus tard :

```text
structure de dossiers ;
fichiers scenes ;
fichiers presets ;
dependances Max ;
externals eventuels ;
ressources audio ;
chemins relatifs ;
sauvegarde utilisateur ;
mode panic ;
mode diagnostic ;
chargement stable ;
versioning de scenes.
```

Interdit a ce niveau :

```text
figer le package final ;
choisir les externals ;
choisir les librairies ;
choisir le materiel.
```

---

## 16. Correspondance blocs -> patchers

```text
BLOC-SRC      -> APP-SRC + APP-AUDIO-IO
BLOC-SCN      -> APP-SCENE + APP-STATE
BLOC-LIVE     -> APP-LIVE-UI + APP-STATE
BLOC-ANA      -> APP-ANA-FAST + APP-ANA-SLOW
BLOC-DEC      -> APP-DEC
BLOC-PROTO    -> APP-PROTO
BLOC-GEN      -> APP-GEN
BLOC-SPC      -> APP-SPC
BLOC-HAL      -> APP-HAL
BLOC-AUTO-PRO -> APP-AUTOPRO
BLOC-SIG      -> APP-SIG
BLOC-OUT      -> APP-MIX-OUT
```

Regle :

```text
la correspondance n'autorise pas la fusion prematuree.
un patcher peut etre technique, mais sa responsabilite doit rester lisible.
```

---

## 17. Decisions ouvertes

Questions :

```text
MXQ-1 : quelles entrees physiques seront prevues par defaut en plus du didgeridoo ?
MXQ-2 : quel niveau de multicanal ou stereo doit etre suppose au depart ?
MXQ-3 : quelle granularite d'interface live est necessaire pour ne pas saturer le jeu ?
MXQ-4 : quels moteurs GEN doivent etre audio-rate, controle-rate ou hors temps reel ?
MXQ-5 : quelles reverbs doivent etre proches du chemin critique et lesquelles hors chemin critique ?
MXQ-6 : quelle signalisation de latence/charge est utile sans distraire ?
MXQ-7 : quels sous-modules doivent rester RNBO-compatibles sans contraindre Max standalone ?
MXQ-8 : quelle structure de scenes/presets Max standalone evite l'effet usine a gaz ?
```

Position actuelle :

```text
Max standalone est la cible.
didgeridoo + PC est le setup minimal.
latence faible est contrainte forte.
aucun compromis musical reel n'est autorise.
```

---

## 18. Decision v0.1

Decision :

```text
l'architecture Max standalone conceptuelle Vesperare est posee.
```

Elle etablit :

```text
patchers conceptuels ;
chemins LAT-0 a LAT-3 ;
chemin critique ;
taps non bloquants ;
etat partage ;
decision/permissions ;
generation bornee ;
reverb/espace/halo ;
Auto-Pro ;
mix-out ;
interface live ;
optimisation latence sans compromis ;
questions ouvertes.
```

Prochaine action recommandee :

```text
AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_CONCEPTUELLE_AVEC_CORPUS_v0_1
```

But de l'audit :

```text
verifier que la traduction Max standalone respecte le corpus musical,
ne reactive pas Ableton/M4L comme trajectoire principale,
ne transforme pas la latence en compromis artistique,
et conserve didgeridoo, generation, reverb, halo, grave, protocols,
analyses, decision et signalisation.
```
