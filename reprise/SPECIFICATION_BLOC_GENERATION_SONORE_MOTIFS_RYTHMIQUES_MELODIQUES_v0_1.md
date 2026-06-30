# SPECIFICATION BLOC GENERATION SONORE MOTIFS RYTHMIQUES MELODIQUES v0.1

Projet : Vesperare
Date : 2026-06-21
Statut : specification conceptuelle du bloc generation

Sources actives :

- `AUDIT_METHODOLOGIQUE_PRO_ACADEMIQUE_PRE_GENERATION_v0_1.md`
- `SPECIFICATION_NOYAU_JOUABLE_SCENES_COUCHES_v0_1.md`
- `BESOINS_GENERATION_v0_4.md`
- `BESOINS_STYLISTIQUES_v0_4.md`
- `CARACTERISATION_DETAILLEE_ELEMENTS_v0_4.md`
- `REVERBS_ESPACE_REACTIF_v0_2.md`
- `SPECIFICATION_CONTROLES_LIVE_ET_MODES_SCENE_v0_1.md`
- `SPECIFICATION_CONCEPTUELLE_FONCTIONS_CONTROLES_PRIORITES_v0_1.md`

Cadres externes pris en compte :

- NIME, mapping, instruments numeriques ;
- live electronics et cross-adaptive processing ;
- automatic / semantic mixing ;
- generation musicale interactive ;
- machine listening et analyse de features ;
- rythme/groove/interlocking ;
- spectromorphologie et source-bonding ;
- spatial audio, reverb perceptive, room acoustics ;
- acoustique didgeridoo, gong, voix, metaux, souffle.

But :

- specifier le bloc generation comme systeme de fonctions musicales ;
- definir les objets sonores generables ;
- definir les motifs rythmiques et melodiques ;
- definir les mappings conceptuels source -> feature -> interpretation -> fonction ;
- definir l'autonomie maximale des generateurs ;
- definir les modes de naturalisation ;
- definir les risques, protections et sorties ;
- rester avant architecture technique.

Hors perimetre :

- choix d'algorithmes ;
- choix de plugins ;
- devices Max for Live ;
- routings ;
- sidechains techniques ;
- interface ;
- controleur physique ;
- seuils numeriques ;
- evaluation pratique.

---

## 1. Decision centrale

La generation Vesperare n'est pas un compositeur autonome.

Elle est un ensemble de fonctions generatives situees :

```text
source -> feature -> interpretation -> fonction -> role -> controle -> protection -> sortie
```

Regle :

```text
Un objet genere doit appartenir a une DOM, une LAYER, un GESTE ou un ETAT.
```

Interdit par defaut :

```text
motif autonome hors scene ;
ligne qui devient lead banal ;
objet sonore sans fonction ;
generation qui choisit le retour ;
generation qui choisit la transgression ;
generation qui remplace une source live essentielle ;
generation qui impose un style identifiable non decide.
```

Objectif :

```text
produire des fonctions musicales situees,
pas des sons interessants mais flottants.
```

---

## 2. Vocabulaire du bloc generation

### 2.1. GEN

`GEN` designe une fonction generative.

Une fonction generative peut produire :

- son ;
- motif ;
- ligne ;
- texture ;
- pression ;
- espace ;
- halo ;
- retour ;
- transformation ;
- crise ;
- consequence.

Mais elle doit toujours dire :

```text
a quoi elle sert ;
ou elle se situe ;
qui la controle ;
comment elle sort ;
ce qu'elle risque de detruire.
```

### 2.2. Objet genere

Un objet genere est un evenement ou une matiere identifiable.

Exemples :

```text
micro-pulse ;
basse-motif ;
accent fantome ;
halo source ;
ligne acid naturalisee ;
bloom grave ;
fragment vocal ;
interlocking ;
souffle cyclique ;
partiels instables ;
masse rugueuse ;
retour de cadre.
```

Regle :

```text
Un objet genere peut etre reconnaissable.
Il ne doit pas devenir autonome hors fonction.
```

### 2.3. Motif

Un motif est une forme qui peut etre reconnue, repetee, transformee ou attendue.

Types :

```text
motif rythmique ;
motif spectral ;
motif de timbre ;
motif de partiels ;
motif vocal ;
basse-motif ;
ligne acid naturalisee ;
hook minimal ;
retour de cadre.
```

Regle :

```text
Un motif doit avoir une fonction de forme, de corps, de tension, de memoire ou de retour.
```

### 2.4. Mapping conceptuel

Le mapping conceptuel decrit la relation musicale.

Format :

```text
source :
feature :
interpretation :
fonction generee :
role DOM/LAYER/GESTE/ETAT :
controle live :
Auto-Pro :
sortie :
```

Exemple :

```text
source : didgeridoo
feature : partiels stables + souffle
interpretation : centre vivant / matiere respirante
fonction generee : ligne acid naturalisee ou halo source
role : LAYER-LIN ou LAYER-HAL
controle live : apparition, reconnaissance, retrait
Auto-Pro : proteger source et grave
sortie : re-naturaliser, dissoudre, retirer motif
```

### 2.5. Autonomie

Echelle obligatoire :

```text
AUT-0 - Off
Pas de generation.

AUT-1 - Reponse
La generation repond a une source, une scene ou un geste.

AUT-2 - Variation
La generation varie un objet deja autorise.

AUT-3 - Proposition
La generation propose une couche ou un motif, mais ne dirige pas.

AUT-4 - Maintien
La generation maintient un etat ou une couche autorisee.

AUT-5 - Autonomie forte
Autorisee seulement par scene ou choix live explicite.

AUT-X - Interdite
Autonomie interdite pour cette fonction.
```

Regle :

```text
AUT-5 ne peut jamais etre le mode par defaut.
```

Precision :

```text
Les reglages par defaut indiques dans les familles GEN valent seulement
quand la famille generative est deja autorisee par scene, couche, geste,
etat ou choix live.

Ils ne signifient pas que cette famille est active par defaut dans tout le set.
```

### 2.6. Naturalisation

Naturalisation ne veut pas dire cacher sous une reverb.

Elle signifie :

```text
donner au son une appartenance perceptive plausible ou decidee.
```

Modes :

```text
NAT-SRC - source acoustique ;
NAT-CAV - cavite / tube / corps / bouche ;
NAT-FOR - formants ;
NAT-FRI - friction / souffle / air ;
NAT-MET - metal / gong / partiels ;
NAT-PEAU - peau / bois / membrane ;
NAT-ESP - espace commun / reverb proche ;
NAT-HAL - halo / queue / memoire ;
NAT-IRR - irregularite corporelle ;
NAT-HYB - hybridation source + artefact ;
NAT-FNC - fonction de scene explicitement assumee.
```

Regle :

```text
Plus un son est impossible,
plus sa source ou sa fonction doit etre lisible.
```

---

## 3. Sources et features generatives

Ces features sont conceptuelles.

Elles ne fixent pas de seuils ni d'algorithmes.

### 3.1. DID - Didgeridoo

Sources/features :

```text
bourdon ;
fondamental ressenti ;
partiels ;
formants ;
souffle ;
attaques langue/gorge ;
vocalisation ;
rugosite ;
stabilite ;
energie ;
charge grave ;
continuite ;
saillance ;
variation de timbre.
```

Interpretations possibles :

```text
centre harmonique ;
guide ;
source libre ;
souffle ;
micro-pulse ;
matiere de ligne ;
perturbateur ;
halo source ;
conflit grave ;
retour corporel.
```

Generations autorisees :

```text
ligne acid naturalisee ;
basse-motif guidee ;
halo source ;
pression rythmique par attaques ;
partiels prolonges ;
grave retire/adapte ;
texture souffle/friction ;
microtonalite ;
retour de cadre.
```

Garde-fous :

```text
ne pas forcer en basse ;
ne pas ignorer ;
ne pas masquer ;
ne pas transformer en simple input technique.
```

### 3.2. GNG - Gong / metal

Sources/features :

```text
impact ;
attaque metallique ;
queue ;
partiels inharmoniques ;
battements ;
decay long ;
bloom grave ;
bas-mediums ;
rugosite ;
seuil de saturation ;
resolution ;
signal.
```

Interpretations possibles :

```text
bloom ;
metal-gong ;
microtonalite ;
souffle grave ;
signal ;
peak ;
resolution ;
rugissement ;
halo long ;
hors-monde.
```

Generations autorisees :

```text
queues prolongees ;
partiels synthetises/naturalises ;
bloom grave ;
halo metal ;
rugosite ;
espace metal-gong ;
retour commun apres queue ;
transition de crise.
```

Garde-fous :

```text
pas de nappe indistincte ;
pas de gong decoratif subi ;
proteger sub et didgeridoo ;
signaliser conflits de grave.
```

### 3.3. VOX - Voix

Sources/features :

```text
souffle ;
voisement ;
formants ;
phoneme ;
consonne ;
voyelle ;
cri ;
murmure ;
intelligibilite ;
brillance ;
grain ;
attaque ;
fragment ;
continuite.
```

Interpretations possibles :

```text
presence ;
souffle ;
signal ;
fragment ;
texture ;
cri ;
choeur spectral ;
quasi-melodie ;
transgression ;
halo vocal.
```

Generations autorisees :

```text
souffle filtre ;
formants prolonges ;
fragment vocal integre ;
choeur spectral ;
cri ponctuel ;
texture vocale ;
halo source ;
quasi-melodie sous controle.
```

Garde-fous :

```text
pas de chanson par defaut ;
pas de pitch correction reconnaissable ;
pas de lead vocal banal ;
voix exposee toujours integree.
```

### 3.4. PRC - Tambour / peau / bois / attaque

Statut :

```text
source possible, meme si setup minimum = didgeridoo seul.
```

Sources/features :

```text
attaque ;
corps de peau ;
bois ;
resonance courte ;
rebond ;
accent ;
cycle ;
micro-decalage ;
densite ;
interlocking.
```

Interpretations possibles :

```text
corps ;
pulse ;
retour ;
appel ;
reponse ;
interlocking ;
pression rythmique ;
attaque directrice.
```

Generations autorisees :

```text
micro-pulse ;
accent fantome ;
interlocking naturalise ;
retour de cadre ;
matiere rythmique peau/bois ;
densite d'attaques.
```

Garde-fous :

```text
pas de kit techno standard par defaut ;
pas de percussion illustrative ;
fonction corporelle obligatoire.
```

### 3.5. SPC - Salle / espace / reverb

Sources/features :

```text
reponse de salle ;
early reflections ;
queue ;
distance ;
proximite ;
immersion ;
metal ;
cavite ;
hors-monde ;
densite spatiale ;
grave spatial ;
clarte ;
masquage.
```

Interpretations possibles :

```text
monde commun ;
proximite ;
memoire ;
halo ;
immersion ;
suspension ;
decor decide ;
retour ;
hors-monde ;
pression par espace.
```

Generations autorisees :

```text
halo ;
espace reactif ;
freeze ponctuel ;
queue longue ;
cavite ;
proximite ;
immersion ;
contraction espace ;
retour commun.
```

Garde-fous :

```text
pas de grande reverb non decidee ;
pas de decor subi ;
pas de boue grave ;
proteger attaque/source/sub.
```

### 3.6. SCN - Scene / forme / decisions

La scene elle-meme peut etre source de generation.

Features :

```text
DOM active ;
couches actives ;
etat de forme ;
mode didgeridoo ;
mode grave ;
monde spatial ;
halo ;
corps/retour ;
transgression ;
risque accepte.
```

Interpretations possibles :

```text
autorisation ;
retrait ;
densification ;
retour ;
maintien ;
transition ;
resolution ;
consequence.
```

Garde-fou :

```text
La scene autorise ou cadre.
Elle ne doit pas devenir pilote automatique de composition.
```

---

## 4. Familles generatives

### 4.1. GEN-SRC - Generation issue des sources live

Fonction :

```text
prolonger, repondre ou transformer une source live sans l'effacer.
```

Scenes concernees :

```text
SCN-1 Didgeridoo ;
SCN-3 Suspension ;
SCN-4 Gong ;
SCN-6 Voix ;
SCN-8 Polytexture ;
SCN-9 Transgression.
```

Roles possibles :

```text
LAYER-SRC ;
LAYER-HAL ;
LAYER-TEX ;
GESTE ;
ETAT.
```

Sources :

```text
didgeridoo ;
gong ;
voix ;
tambour/peau ;
salle ;
silence actif.
```

Types d'objets :

```text
prolongement de partiels ;
halo source ;
reponse courte ;
doublure spectrale ;
queue transformee ;
micro-pulse derive ;
texture souffle ;
fragment vocal ;
crise issue d'une source.
```

Autonomie :

```text
Par defaut : AUT-1 Reponse.
Possible : AUT-2 Variation, AUT-4 Maintien si halo/etat decide.
AUT-5 seulement par scene explicite.
```

Controle live :

```text
apparition ;
densite ;
source dominante ;
degre de transformation ;
retrait ;
lock/cut halo si pertinent.
```

Auto-Pro :

```text
proteger la source essentielle ;
eviter feedback ;
eviter boue ;
eviter masquage ;
signaler adaptation.
```

Naturalisation :

```text
NAT-SRC, NAT-CAV, NAT-FOR, NAT-FRI, NAT-MET, NAT-HAL.
```

Risques :

```text
source effacee ;
effet gadget ;
transformation sans fonction ;
source reduite a un controleur.
```

Sorties :

```text
dissoudre ;
cut ;
retour source seche ;
transfert vers halo ;
transfert vers motif ;
silence.
```

### 4.2. GEN-RHY - Pression rythmique / motifs rythmiques

Fonction :

```text
orienter le corps par pulse, attaque, densite, cycle, interlocking ou retour de cadre.
```

Scenes concernees :

```text
SCN-2 Techno corporelle ;
SCN-3 Techno suspendue ;
SCN-7 Acid naturalise ;
SCN-8 Polytexture ;
SCN-9 Transgression.
```

Roles possibles :

```text
DOM si techno corporelle ou polytexture ;
LAYER-RHY dans les autres scenes ;
GESTE pour retour/impact ;
ETAT pour memoire techno.
```

Sources :

```text
attaques didgeridoo ;
souffle ;
tambour/peau ;
gong impact ;
voix consonnes ;
grave ;
silence ;
scene ;
espace rythmique.
```

Regimes rythmiques :

```text
RHY-0 - absent ;
RHY-1 - pulse implicite ;
RHY-2 - pulse lisible ;
RHY-3 - interlocking ;
RHY-4 - accent fantome ;
RHY-5 - respiration de matiere ;
RHY-6 - densite d'attaques ;
RHY-7 - rythme spatial ;
RHY-8 - retrait rythmique ;
RHY-9 - retour de cadre ;
RHY-10 - dissonance metrique / tension.
```

Types d'objets :

```text
micro-pulse naturalise ;
accent fantome ;
cycle instable ;
appel/reponse ;
interlocking de couches ;
syncope de masse ;
densification ;
contraction espace ;
retour grave/pulse ;
rythme de halo.
```

Autonomie :

```text
Par defaut : AUT-1 Reponse ou AUT-2 Variation.
AUT-3 Proposition possible pour couches rythmiques.
AUT-4 Maintien possible dans techno suspendue.
AUT-5 seulement si scene rythmique explicite.
```

Controle live :

```text
regime rythmique ;
densite ;
complexite ;
accent directeur ;
corps/retour ;
retrait ;
relation grave ;
relation espace.
```

Auto-Pro :

```text
densite qui efface forme ;
attaque principale masquee ;
source essentielle masquee ;
sub illisible ;
brillance agressive.
```

Naturalisation :

```text
NAT-FRI ;
NAT-PEAU ;
NAT-SRC ;
NAT-CAV ;
NAT-ESP ;
NAT-IRR.
```

Risques :

```text
kit techno implicite ;
complexite decorative ;
corps perdu sans decision ;
interlocking illisible ;
retour impose automatiquement.
```

Sorties :

```text
retrait rythmique ;
retour pulse ;
retour grave ;
simplification ;
contraction espace ;
silence ;
transfert vers suspension.
```

Questions restantes :

```text
Quel niveau de pulse explicite sera acceptable par scene ?
Quels motifs rythmiques peuvent devenir reconnaissables sans cliche techno ?
```

### 4.3. GEN-LIN - Lignes / motifs melodiques / acid naturalise

Fonction :

```text
produire ligne, motif, centre, basse-motif, melodie de timbre ou acid naturalise.
```

Scenes concernees :

```text
SCN-2 Techno corporelle ;
SCN-3 Suspension ;
SCN-6 Voix ;
SCN-7 Acid naturalise ;
SCN-8 Polytexture ;
SCN-1 Didgeridoo guide.
```

Roles possibles :

```text
LAYER-LIN ;
GESTE ;
ETAT ;
DOM seulement dans SCN-7 ou passage explicitement ligne.
```

Sources :

```text
partiels didgeridoo ;
formants voix ;
formants/tube/cavite ;
partiels gong ;
grave ;
attaque ;
centre spectral ;
scene.
```

Regimes melodiques :

```text
LIN-0 - absent ;
LIN-1 - centre ressenti ;
LIN-2 - accent-melody ;
LIN-3 - basse-motif ;
LIN-4 - melodie de timbre ;
LIN-5 - melodie de partiels ;
LIN-6 - ligne acid naturalisee ;
LIN-7 - fragment vocal ;
LIN-8 - hook minimal ;
LIN-9 - microtonal / non tempere.
```

Reconnaissance :

```text
REC-0 - imperceptible comme motif ;
REC-1 - trace ;
REC-2 - reconnaissable ;
REC-3 - memorable ;
REC-4 - seuil cliche ;
REC-5 - re-naturaliser / retirer.
```

Types d'objets :

```text
ligne vivante ;
glissement de formant ;
mutation timbrale ;
basse-motif ;
hook minimal ;
fragment vocal ;
motif de partiels ;
motif de resonance ;
acid naturalise ;
centre microtonal.
```

Autonomie :

```text
Par defaut : AUT-1 Reponse ou AUT-2 Variation.
AUT-3 Proposition possible si couche ligne autorisee.
AUT-4 Maintien possible si motif assume.
AUT-5 rarement, seulement dans scene ligne explicite.
AUT-X pour imitation TB-303/pattern acid cliche.
```

Controle live :

```text
apparition/retrait ligne ;
degre de reconnaissance ;
source du motif ;
torsion/naturalisation ;
relation corps/grave ;
anti-cliche.
```

Auto-Pro :

```text
pas de choix melodique automatique ;
masquage seulement ;
motif bloque si hors scene ;
signalisation si seuil cliche.
```

Naturalisation :

```text
NAT-FOR ;
NAT-CAV ;
NAT-SRC ;
NAT-MET ;
NAT-FRI ;
NAT-HYB ;
NAT-ESP.
```

Risques :

```text
lead banal ;
motif autonome ;
cliche acid ;
double lead voix + ligne ;
temperament banal impose ;
electronique reconnaissable.
```

Sorties :

```text
re-naturaliser ;
fragmenter ;
dissoudre en halo ;
retirer motif ;
basculer en texture ;
retour grave ;
silence.
```

Questions restantes :

```text
Quelle autonomie maximale pour un hook minimal ?
Quelle source doit prioritairement naturaliser l'acid : didgeridoo, voix, tube, partiels, grave ?
```

### 4.4. GEN-GRV - Graves / sub / bloom

Fonction :

```text
porter poids, centre, pression, retour, bloom ou domination sans imposer un timbre sub electronique.
```

Scenes concernees :

```text
SCN-1 Didgeridoo ;
SCN-2 Techno corporelle ;
SCN-4 Gong ;
SCN-5 Sound-system immersion ;
SCN-9 Transgression.
```

Roles possibles :

```text
LAYER-GRV ;
ETAT ;
GESTE ;
DOM dans gong bloom ou immersion.
```

Sources :

```text
didgeridoo ;
gong ;
sub discret ;
basse naturalisee ;
voix transformee ;
friction grave ;
cavite ;
scene ;
retour corps.
```

Modes :

```text
GRV-0 - retrait ;
GRV-1 - trace ;
GRV-2 - soutien discret ;
GRV-3 - porteur ponctuel ;
GRV-4 - didgeridoo guide ;
GRV-5 - gong bloom porte ;
GRV-6 - graves libres ;
GRV-7 - sub ponctuel non identifiable.
```

Types d'objets :

```text
centre grave ;
sub trace ;
retour de masse ;
bloom gong ;
souffle grave ;
base microtonale ;
rugissement ;
pression par vide ;
impact rare.
```

Autonomie :

```text
Par defaut : AUT-1 Reponse.
AUT-2 Variation possible.
AUT-4 Maintien possible si immersion/bloom decide.
AUT-5 seulement graves libres explicites.
```

Controle live :

```text
role du grave ;
priorite conflit grave ;
relation didgeridoo ;
relation gong ;
relation corps ;
retrait ;
graves libres ;
retour grave.
```

Auto-Pro :

```text
P0 resonance dangereuse ;
P1 sub illisible ;
headroom ;
source essentielle masquee ;
grave spatial brouille ;
signal conflit didgeridoo/gong/sub.
```

Naturalisation :

```text
NAT-SRC ;
NAT-MET ;
NAT-CAV ;
NAT-FRI ;
NAT-ESP ;
NAT-HYB.
```

Risques :

```text
boue grave ;
sub electronique identifiable ;
didgeridoo force en basse ;
gong transforme en nappe ;
domination non decidee ;
grave libre sans fonction.
```

Sorties :

```text
retrait grave ;
retour grave ;
passage trace ;
cut sub ;
bloom vers halo ;
resolution ;
silence.
```

Questions restantes :

```text
Dans les conflits complexes, quel mode doit etre le plus accessible en live ?
Didgeridoo guide, gong bloom, sub porteur, soutien discret, retrait ou graves libres ?
```

### 4.5. GEN-HAL - Halos / memoires / queues

Fonction :

```text
produire memoire, liaison, queue, halo source, suspension ou consequence.
```

Scenes concernees :

```text
SCN-1 Didgeridoo ;
SCN-3 Suspension ;
SCN-4 Gong ;
SCN-6 Voix ;
SCN-9 Transgression ;
toutes scenes si halo decide.
```

Roles possibles :

```text
LAYER-HAL ;
ETAT ;
GESTE ;
consequence.
```

Sources :

```text
didgeridoo ;
gong ;
voix ;
attaque ;
reverb ;
freeze ;
scene ;
silence ;
retour.
```

Modes :

```text
HAL-0 - Off ;
HAL-1 - Auto ;
HAL-2 - Momentary ;
HAL-3 - Lock ;
HAL-4 - Force ;
HAL-5 - Safe force ;
HAL-6 - Cut.
```

Types d'objets :

```text
queue source ;
halo court ;
halo long ;
freeze ponctuel ;
memoire techno ;
halo vocal ;
halo metal ;
trace grave ;
halo de retour ;
halo de consequence.
```

Autonomie :

```text
Par defaut : AUT-1 Reponse.
AUT-4 Maintien possible si Lock/Force.
AUT-5 non necessaire : le musicien decide Lock/Force.
```

Controle live :

```text
Auto/Lock/Force/Cut/Momentary/Safe force ;
source du halo ;
droit au halo long ;
zone spectrale ;
moment de baisse ;
sortie.
```

Auto-Pro :

```text
filtrer ;
deplacer spectralement ;
ducking ;
proteger attaque/source/sub ;
signaler si Lock/Force limite.
```

Naturalisation :

```text
NAT-HAL ;
NAT-ESP ;
NAT-SRC ;
NAT-MET ;
NAT-FOR ;
NAT-CAV.
```

Risques :

```text
ambient subi ;
reverb decorative ;
masquage attaque ;
boue grave ;
halo qui remplace la forme ;
halo retire contre decision live.
```

Sorties :

```text
cut ;
dissolution ;
retour sec ;
retour corps ;
contraction espace ;
transfert vers texture ;
silence.
```

### 4.6. GEN-SPC - Spatialisation generee / espaces reactifs

Fonction :

```text
produire ou modifier un monde spatial comme fonction perceptive.
```

Scenes concernees :

```text
SCN-3 Suspension ;
SCN-4 Gong ;
SCN-5 Immersion ;
SCN-6 Voix ;
SCN-9 Transgression ;
toutes scenes par monde commun/proche.
```

Roles possibles :

```text
LAYER-SPC ;
ETAT ;
GESTE ;
DOM rarement, si espace dirige la scene.
```

Sources :

```text
salle ;
reverb naturelle ;
didgeridoo ;
gong ;
voix ;
attaque ;
grave ;
halo ;
scene.
```

Mondes :

```text
SPC-0 - sec protege ;
SPC-1 - proche enrichi ;
SPC-2 - commun ;
SPC-3 - souffle-air ;
SPC-4 - cavite ;
SPC-5 - immersif ;
SPC-6 - immense ;
SPC-7 - metal-gong ;
SPC-8 - rythme-pression ;
SPC-9 - hors-monde.
```

Types d'objets :

```text
proximite ;
enveloppement ;
cavite ;
espace reactif aux attaques ;
contraction ;
expansion ;
decor decide ;
hors-monde ;
retour commun ;
espace metal.
```

Autonomie :

```text
Par defaut : AUT-1 Reponse / coherence.
AUT-2 Variation possible.
AUT-4 Maintien si monde stable decide.
AUT-5 interdit par defaut : pas de changement de monde expressif automatique.
```

Controle live :

```text
monde principal ;
passage proche/immersif/immense/hors-monde ;
contraction/expansion ;
decor decide ;
retour commun ;
relation halo.
```

Auto-Pro :

```text
correction douce ;
adaptation salle ;
protection sub/attaque/source ;
pas de changement esthetique sans scene/choix live.
```

Naturalisation :

```text
NAT-ESP ;
NAT-CAV ;
NAT-MET ;
NAT-SRC ;
NAT-HAL.
```

Risques :

```text
espace decoratif subi ;
ambient automatique ;
source effacee ;
sub brouille ;
perte de corps non decidee.
```

Sorties :

```text
retour commun ;
contraction ;
cut halo ;
retour sec ;
silence ;
transfert vers suspension ou transgression.
```

### 4.7. GEN-TEX - Textures / polytextures / partiels

Fonction :

```text
produire densite lisible, couches, partiels, interlocking spectral, tension et matiere.
```

Scenes concernees :

```text
SCN-8 Polytexture ;
SCN-2 Techno corporelle ;
SCN-3 Suspension ;
SCN-4 Gong ;
SCN-9 Transgression.
```

Roles possibles :

```text
DOM dans SCN-8 ;
LAYER-TEX ;
ETAT ;
GESTE de densification ou retrait.
```

Sources :

```text
didgeridoo partiels ;
gong partiels ;
voix formants ;
attaques ;
frictions ;
grave ;
halo ;
scene.
```

Types d'objets :

```text
couche de partiels ;
grain souffle ;
interlocking spectral ;
texture de friction ;
contrepoint rythmico-spectral ;
champ microtonal ;
dissonance douce ;
densite d'attaques ;
matiere de seuil.
```

Autonomie :

```text
Par defaut : AUT-1 Reponse ou AUT-2 Variation.
AUT-3 Proposition possible comme couche.
AUT-4 Maintien possible si une couche reste directrice.
AUT-5 seulement scene polytexture explicite.
```

Controle live :

```text
nombre de couches ;
hierarchie ;
interlocking ;
densite ;
corps/tension ;
nettoyage ;
retrait couche.
```

Auto-Pro :

```text
densite qui efface forme ;
source essentielle masquee ;
surcharge medium ;
attaque directrice masquee ;
sub brouille.
```

Naturalisation :

```text
NAT-SRC ;
NAT-FRI ;
NAT-MET ;
NAT-FOR ;
NAT-IRR ;
NAT-HYB.
```

Risques :

```text
accumulation ;
hierarchie perdue ;
texture decorative ;
polytexture sans corps ;
transgression confuse.
```

Sorties :

```text
retrait couche ;
simplification volontaire ;
cut halo ;
retour clair ;
dissolution ;
silence.
```

### 4.8. GEN-VOX - Voix / formants / fragments

Fonction :

```text
generer ou transformer voix, souffle, formants, fragments, cris et textures vocales integrees.
```

Scenes concernees :

```text
SCN-6 Voix exposee integree ;
SCN-3 Suspension ;
SCN-8 Polytexture ;
SCN-9 Transgression.
```

Roles possibles :

```text
DOM ponctuelle dans SCN-6 ;
LAYER-SRC ;
LAYER-LIN ;
LAYER-TEX ;
GESTE ;
ETAT.
```

Sources :

```text
voix reelle ;
souffle ;
formant ;
didgeridoo vocalise ;
scene vocale ;
fragment genere ;
choeur spectral.
```

Types d'objets :

```text
souffle ;
phoneme ;
fragment ;
quasi-melodie ;
cri ;
texture ;
choeur spectral ;
halo vocal ;
formant rythmique.
```

Autonomie :

```text
Par defaut : AUT-0 Off ou AUT-1 Reponse.
AUT-2 Variation possible.
AUT-3 Proposition possible si voix autorisee.
AUT-5 interdit par defaut.
```

Controle live :

```text
role vocal ;
integration ;
intelligibilite ;
exposition ;
halo vocal ;
sortie voix.
```

Auto-Pro :

```text
feedback ;
brillance agressive ;
voix essentielle masquee ;
headroom ;
blocage pitch correction reconnaissable.
```

Naturalisation :

```text
NAT-FOR ;
NAT-FRI ;
NAT-CAV ;
NAT-SRC ;
NAT-HAL ;
NAT-ESP.
```

Risques :

```text
chanson involontaire ;
lead banal ;
intelligibilite imposee ;
gimmick vocal ;
pitch correction reconnaissable.
```

Sorties :

```text
cut ;
dissoudre en halo ;
retour rythme ;
silence ;
fragmenter ;
retour souffle.
```

### 4.9. GEN-TRG - Transgression / masse / rugosite

Fonction :

```text
produire crise, peak, rugissement, saturation organique, masse, dissonance ou domination.
```

Scenes concernees :

```text
SCN-9 Transgression ;
SCN-4 Gong ;
SCN-5 Immersion ;
SCN-6 Voix ;
SCN-8 Polytexture ;
toutes scenes comme geste si fonction claire.
```

Roles possibles :

```text
DOM dans SCN-9 ;
LAYER-TRG ;
GESTE ;
ETAT temporaire.
```

Sources :

```text
grave ;
gong ;
voix ;
espace ;
microtonalite ;
masse ;
densite ;
feedback controle ;
scene.
```

Types d'objets :

```text
rugosite ;
saturation organique ;
cri ;
masse ;
dissonance ;
espace immense ;
sub domination ;
bloom violent ;
matiere au seuil ;
rupture.
```

Autonomie :

```text
Par defaut : AUT-0 Off.
AUT-1 Reponse possible si transgression autorisee.
AUT-3 Proposition interdite par defaut.
AUT-4 Maintien seulement si scene decidee.
AUT-5 interdit sauf choix live explicite exceptionnel.
```

Controle live :

```text
regime transgression ;
source de crise ;
risque accepte ;
matiere extreme ;
espace/sortie ;
P1 accepte ;
P0 jamais.
```

Auto-Pro :

```text
P0 toujours ;
P1 sauf acceptation explicite ;
fatigue critique ;
headroom ;
resonance dangereuse ;
source essentielle effacee.
```

Naturalisation :

```text
NAT-MET ;
NAT-FRI ;
NAT-SRC ;
NAT-CAV ;
NAT-HYB ;
NAT-FNC.
```

Risques :

```text
agression gratuite ;
fatigue ;
perte de lisibilite ;
saturation non choisie ;
crise sans sortie ;
confusion erreur/decision.
```

Sorties :

```text
silence ;
retour commun ;
retour corps ;
retrait grave ;
cut ;
resolution ;
dissolution halo.
```

### 4.10. GEN-RET - Retours / sorties / consequences

Fonction :

```text
preparer et produire les retours, retraits, sorties et consequences formelles.
```

Scenes concernees :

```text
toutes scenes.
```

Roles possibles :

```text
LAYER-RET ;
GESTE ;
ETAT ;
consequence.
```

Sources :

```text
etat de forme ;
corps ;
grave ;
espace ;
halo ;
source live ;
scene ;
silence ;
transgression.
```

Types d'objets :

```text
retour grave ;
retour pulse ;
contraction espace ;
cut halo ;
retrait couche ;
resolution ;
silence ;
impact rare ;
retour commun ;
dissolution.
```

Autonomie :

```text
Par defaut : AUT-0 Off.
AUT-1 Reponse si retour prepare.
AUT-2 Variation possible.
AUT-3 Proposition possible seulement comme signal, pas decision.
AUT-5 interdit : la generation ne choisit pas le retour.
```

Controle live :

```text
retour latent ;
retour prepare ;
retour force ;
refus du retour ;
sortie scene ;
sortie crise ;
cut ;
dissolution.
```

Auto-Pro :

```text
peut signaler besoin de clarification ;
ne doit pas imposer retour expressif ;
peut proteger si P0/P1.
```

Naturalisation :

```text
depend de la source :
grave, espace, halo, source live, silence, corps.
```

Risques :

```text
retour arbitraire ;
sortie absente ;
transition automatique ;
forme composee par l'outil ;
maintien infini non decide.
```

Sorties :

```text
la sortie est la fonction :
cut, retrait, dissolution, retour corps, retour grave, retour pulse,
silence, resolution, transfert DOM, transfert couche.
```

---

## 5. Motifs rythmiques

Un motif rythmique Vesperare doit etre defini par :

```text
fonction corporelle ;
source perceptive ;
cycle ou non-cycle ;
degre de repetition ;
degre de variation ;
accent directeur ;
relation au grave ;
relation a l'espace ;
condition de retrait ;
risque de cliche.
```

### 5.1. Types prioritaires

```text
MR-1 - Micro-pulse naturalise
Petit moteur corporel, souvent souffle/friction/attaque.

MR-2 - Interlocking
Plusieurs couches se repondent ; une reste directrice.

MR-3 - Accent fantome
Cadre ressenti sans attaque frontale.

MR-4 - Respiration de matiere
Cycle percu comme souffle, pression, frottement ou halo.

MR-5 - Retour de cadre
Un motif signale qu'un corps techno peut revenir.

MR-6 - Rythme spatial
Espace, halo ou contraction portent une pulsation.

MR-7 - Densite d'attaques
Pression par accumulation, avec hierarchie.

MR-8 - Retrait rythmique
Le motif organise l'absence ou la suspension.

MR-9 - Syncope de masse
Grave, espace et attaque creent une poussee decalee.

MR-10 - Dissonance metrique
Tension temporaire, pas demonstration.
```

### 5.2. Autonomie des motifs rythmiques

```text
Par defaut : reponse ou variation.
Maintien possible dans techno corporelle ou suspension.
Proposition possible si couche rythmique autorisee.
Autonomie forte seulement dans scene preparee.
```

### 5.3. Interdits par defaut

```text
pattern techno standard ;
kick/hat/clap implicite non naturalise ;
complexite qui n'oriente pas le corps ;
motif qui impose un retour ;
interlocking sans couche directrice ;
generateur rythmique qui ignore les sources live.
```

---

## 6. Motifs melodiques

Un motif melodique Vesperare doit etre defini par :

```text
origine perceptive ;
source de hauteur ;
degre de reconnaissance ;
rapport au timbre ;
rapport au grave ;
rapport au corps ;
fonction formelle ;
condition de retrait ;
risque de lead banal.
```

### 6.1. Types prioritaires

```text
MM-1 - Centre ressenti
Pas une melodie, mais une gravite perceptive.

MM-2 - Accent-melody
Hauteur percue par accents, timbre ou registre.

MM-3 - Basse-motif
Grave ou bas-medium qui porte une forme courte.

MM-4 - Melodie de timbre
Variation de couleur percue comme ligne.

MM-5 - Melodie de partiels
Partiels didgeridoo/gong/voix qui dessinent une direction.

MM-6 - Acid naturalise
Torsion, resonance, formants, glissements, sans cliche 303.

MM-7 - Fragment vocal
Phoneme, souffle, quasi-chant, texture integree.

MM-8 - Hook minimal
Possible, mais rattache a une scene et retirabile.

MM-9 - Microtonal / non tempere
Tension, couleur, resolution ou naturalisation.

MM-10 - Ligne de retour
Motif qui prepare ou accompagne une sortie.
```

### 6.2. Reconnaissance melodique

Echelle :

```text
REC-0 - absent ;
REC-1 - trace ;
REC-2 - reconnaissable ;
REC-3 - memorable ;
REC-4 - seuil cliche ;
REC-5 - re-naturaliser / retirer.
```

Regle :

```text
Le motif peut etre reconnaissable.
Le probleme n'est pas la reconnaissance.
Le probleme est l'autonomie hors fonction ou le cliche.
```

### 6.3. Interdits par defaut

```text
lead synth banal ;
auto-tune reconnaissable ;
pattern acid cliche ;
melodie temperee imposee ;
fragment vocal qui devient chanson sans decision ;
double lead voix + ligne sans hierarchie.
```

---

## 7. Controles conceptuels du bloc generation

Ces controles ne sont pas une interface.

Ils nomment ce qui doit rester decidable.

### 7.1. GEN-C1 - Permission generation

Valeurs :

```text
Off ;
Scene ;
Layer ;
Geste ;
Etat ;
Libre explicite.
```

Regle :

```text
La generation libre n'est jamais le mode par defaut.
```

### 7.2. GEN-C2 - Regime principal

Valeurs :

```text
source ;
rythme ;
ligne ;
grave ;
halo ;
espace ;
texture ;
voix ;
transgression ;
retour.
```

### 7.3. GEN-C3 - Autonomie

Valeurs :

```text
Off ;
Reponse ;
Variation ;
Proposition ;
Maintien ;
Autonomie forte ;
Interdite.
```

### 7.4. GEN-C4 - Source / mapping

Valeurs :

```text
didgeridoo ;
gong ;
voix ;
tambour/peau ;
salle ;
grave ;
attaque ;
halo ;
scene ;
silence ;
retour.
```

### 7.5. GEN-C5 - Naturalisation

Valeurs :

```text
source acoustique ;
cavite ;
formants ;
friction ;
air ;
metal ;
peau/bois ;
espace commun ;
halo ;
irregularite ;
hybridation ;
fonction de scene.
```

### 7.6. GEN-C6 - Reconnaissance / cliche

Valeurs :

```text
ambigu ;
reconnaissable ;
memorable ;
seuil cliche ;
re-naturaliser ;
retirer.
```

### 7.7. GEN-C7 - Sortie

Valeurs :

```text
cut ;
retrait ;
dissolution ;
retour corps ;
retour grave ;
retour pulse ;
silence ;
resolution ;
transfert DOM ;
transfert couche.
```

### 7.8. GEN-C8 - Signalisation

Doit indiquer :

```text
motif bloque ;
autonomie limitee ;
source protegee ;
grave adapte ;
halo adapte ;
densite nettoyee ;
seuil cliche ;
retour prepare ;
P0/P1/P2.
```

---

## 8. Repartition live / scene / Auto-Pro

### 8.1. Sous la main en live

Doit pouvoir etre choisi ou force :

```text
permission generation ;
regime principal ;
autonomie ;
apparition/retrait ;
densite ;
reconnaissance ;
source dominante ;
naturalisation forte ;
sortie ;
risque accepte.
```

### 8.2. Prepare par scene

Doit pouvoir etre prepare :

```text
sources autorisees ;
features pertinentes ;
degre de variation ;
type de motifs ;
risque de cliche ;
relation au corps ;
relation au grave ;
relation au monde spatial ;
relation au halo ;
role DOM/LAYER/GESTE/ETAT.
```

### 8.3. Auto-Pro

Peut agir sur :

```text
masquage ;
headroom ;
feedback ;
sub illisible ;
attaque masquee ;
density overload ;
source essentielle masquee ;
brillance agressive ;
boue reverb/grave ;
seuil cliche signale.
```

Ne peut pas decider :

```text
retour ;
transgression ;
scene dominante ;
motif principal ;
changement de monde expressif ;
autonomie forte ;
domination.
```

---

## 9. Matrice scenes / generation

### SCN-1 Didgeridoo / systeme minimum

Generations prioritaires :

```text
GEN-SRC ;
GEN-RHY par attaques/souffle ;
GEN-LIN par partiels/formants ;
GEN-GRV par guide ou retrait ;
GEN-HAL source ;
GEN-RET.
```

Par defaut :

```text
DID libre protege.
Generation en reponse/variation.
```

### SCN-2 Techno corporelle naturalisee

Generations prioritaires :

```text
GEN-RHY ;
GEN-GRV ;
GEN-TEX ;
GEN-LIN en couche ;
GEN-RET.
```

Par defaut :

```text
corps oriente ;
motifs rythmiques fonction-bound ;
pas de timbres techno standards.
```

### SCN-3 Techno suspendue tres longue

Generations prioritaires :

```text
GEN-HAL ;
GEN-SPC ;
GEN-RHY memoire ;
GEN-LIN trace ;
GEN-GRV trace/soutien ;
GEN-RET prepare.
```

Par defaut :

```text
maintien long possible ;
retour preparable ;
pas de retour automatique.
```

### SCN-4 Gong / bloom grave / metal-gong

Generations prioritaires :

```text
GEN-GRV ;
GEN-HAL ;
GEN-TEX ;
GEN-SPC ;
GEN-TRG possible ;
GEN-RET.
```

Par defaut :

```text
bloom par scene ;
graves libres seulement si explicite ;
partiels et queue comme fonctions.
```

### SCN-5 Sound-system immersion / domination

Generations prioritaires :

```text
GEN-GRV ;
GEN-SPC ;
GEN-RHY ;
GEN-HAL safe ;
GEN-TRG si decide ;
GEN-RET.
```

Par defaut :

```text
immersion possible sans domination ;
domination explicite ;
sub protege.
```

### SCN-6 Voix exposee integree

Generations prioritaires :

```text
GEN-VOX ;
GEN-SRC ;
GEN-HAL ;
GEN-LIN fragment ;
GEN-SPC proche/cavite ;
GEN-RET.
```

Par defaut :

```text
voix off ou integree ;
pas de pitch correction reconnaissable.
```

### SCN-7 Acid naturalise / ligne vivante

Generations prioritaires :

```text
GEN-LIN ;
GEN-RHY ;
GEN-GRV basse-motif ;
GEN-TEX mutation ;
GEN-HAL court ;
GEN-RET.
```

Par defaut :

```text
ligne possible ;
pas de cliche 303/squelch/pattern acid par defaut ;
source de ligne obligatoire.
```

### SCN-8 Polytexture rythmico-spectrale

Generations prioritaires :

```text
GEN-TEX ;
GEN-RHY ;
GEN-SRC ;
GEN-LIN en couche ;
GEN-TRG possible ;
GEN-RET.
```

Par defaut :

```text
une couche directrice ;
densite lisible ;
nettoyage possible.
```

### SCN-9 Transgression controlee

Generations prioritaires :

```text
GEN-TRG ;
GEN-GRV ;
GEN-SPC ;
GEN-VOX cri ;
GEN-TEX masse ;
GEN-RET sortie obligatoire.
```

Par defaut :

```text
transgression off ;
fonction claire si active ;
P0 jamais contournable.
```

---

## 10. Risques transversaux

### 10.1. Autonomie non voulue

Symptome :

```text
le systeme continue, propose ou maintient sans role clair.
```

Correction :

```text
reduire autonomie ;
rattacher a DOM/LAYER/GESTE/ETAT ;
imposer sortie ;
signaler.
```

### 10.2. Cliche electronique

Symptome :

```text
techno standard, acid cliche, lead synth, auto-tune, preset reverb.
```

Correction :

```text
re-naturaliser ;
changer source ;
retirer reconnaissance ;
reduire autonomie ;
retour source acoustique.
```

### 10.3. Generation decorative

Symptome :

```text
son interessant sans fonction.
```

Correction :

```text
nommer fonction ;
sinon retirer.
```

### 10.4. Perte de source live

Symptome :

```text
didgeridoo, gong ou voix ne sont plus perceptivement respectes.
```

Correction :

```text
source protegee ;
retrait generation ;
mapping moins direct ;
halo cut ;
grave adapte.
```

### 10.5. Perte du corps non decidee

Symptome :

```text
plus de pulse, plus de retour, plus de pression lisible sans decision.
```

Correction :

```text
retour latent ;
accent directeur ;
grave trace ;
contraction espace ;
retour pulse.
```

### 10.6. Masquage / fatigue / boue

Symptome :

```text
sub illisible ;
medium surcharge ;
attaque masquee ;
halo trop dense ;
fatigue ;
boue de reverb.
```

Correction :

```text
Auto-Pro P0/P1 ;
signalisation ;
nettoyage couche ;
retrait grave ;
cut halo ;
protection source.
```

---

## 11. Questions restantes

Questions non bloquantes, a poser plus tard :

```text
1. Quels generateurs doivent etre les plus rapides a activer :
   rythme, ligne, grave, halo, texture, voix, transgression, retour ?

2. Quelle autonomie maximale est acceptable pour les motifs rythmiques ?

3. Quelle autonomie maximale est acceptable pour les motifs melodiques ?

4. Dans la ligne acid naturalisee, quelle source doit dominer :
   didgeridoo, voix, tube/cavite, partiels, grave, friction ?

5. Quels motifs peuvent etre memorables sans devenir hooks problematiques ?

6. Quelles fonctions de generation doivent etre disponibles en setup didgeridoo seul ?

7. Quels types de retours doivent etre les plus immediats :
   grave, pulse, contraction espace, source live, silence, impact rare ?

8. Quels objets generatifs peuvent rester longs :
   halo, micro-variation, grave trace, ligne, texture, espace ?
```

---

## 12. Decision v0.1

Le bloc generation est maintenant specifie au niveau conceptuel.

Le projet dispose de :

- sources et features generatives ;
- echelle d'autonomie ;
- modes de naturalisation ;
- familles GEN-SRC, GEN-RHY, GEN-LIN, GEN-GRV, GEN-HAL, GEN-SPC, GEN-TEX, GEN-VOX, GEN-TRG, GEN-RET ;
- regimes de motifs rythmiques ;
- regimes de motifs melodiques ;
- controles conceptuels du bloc generation ;
- repartition live / scene / Auto-Pro ;
- matrice scenes / generation ;
- risques transversaux ;
- questions restantes.

Cette fiche ne suffit pas encore pour :

- choisir des algorithmes ;
- definir des devices ;
- ecrire un patch ;
- definir des routings ;
- fixer des seuils ;
- choisir une interface.

Etape recommandee a la creation de cette fiche :

```text
AUDIT_COMPATIBILITE_BLOC_GENERATION_AVEC_CORPUS_v0_1
```

But :

- verifier que le bloc generation reste compatible avec le noyau jouable ;
- verifier que les motifs ne deviennent pas autonomes hors fonction ;
- verifier que les scenes et couches restent lisibles ;
- verifier que les risques stylistiques sont suffisamment encadres ;
- preparer ensuite les protocoles conceptuels et sidechains sans commencer l'architecture technique.

---

## 13. Suivi

Date : 2026-06-21

Action realisee :

- `AUDIT_COMPATIBILITE_BLOC_GENERATION_AVEC_CORPUS_v0_1.md` cree.

Conclusion :

```text
Le bloc generation est compatible avec le corpus actif.
Deux corrections mineures ont ete appliquees :
vocabulaire voix dans reverb/espace ;
precision sur les reglages par defaut par famille GEN.
```

Nouvelle prochaine etape :

```text
SPECIFICATION_PROTOCOLS_SIDECHAINS_CONCEPTUELS_v0_1
```

But :

- transformer les fonctions generatives en protocoles conceptuels ;
- definir les relations source -> analyse -> reaction ;
- definir les priorites de conflit ;
- distinguer protocoles expressifs, protections et signalisation ;
- rester avant architecture technique.

---

## 14. Suivi tracabilite stylistique generative

Date : 2026-06-21

Action realisee :

- `AUDIT_TRACABILITE_CAHIER_CHARGES_GENERATIF_STYLISTIQUE_v0_1.md` cree.

Conclusion :

```text
Le cahier des charges generatif stylistique existe deja.
Les inspirations concretes sont bien presentes dans les fiches besoins
et caracterisation, mais leur trace devient moins visible dans les
familles GEN recentes.
```

Correction de lecture :

```text
Les familles GEN ne doivent pas masquer les inspirations.
Chaque objet genere futur doit garder un lien inspiration/fonction.
```

Table de tracabilite active :

```text
Techno / Robert Hood
-> GEN-RHY, GEN-RET, GEN-TEX, GEN-GRV
-> temps long, repetition, detail rythmique, cadre, retour.

Keita Ogawa / polytexture
-> GEN-RHY, GEN-TEX, GEN-SRC, SCN-8
-> tissage, interlocking, plans, attaques differenciees,
   contrepoint rythmico-spectral, harmonie de timbres.

Dubstep
-> GEN-GRV, GEN-RET, GEN-TRG, GEN-SPC, GEN-VOX
-> trou, attente corporelle, retour rare, masse grave,
   rugissement, voix criee integree, resolution.

Dub / sound system
-> GEN-GRV, GEN-SPC, GEN-HAL, GEN-RET
-> profondeur, sub corporel, pression par vide,
   separation de plans, flow, domination decidee.

Jazz
-> GEN-TEX, GEN-LIN, GEN-GRV, GEN-HAL, GEN-RET, GEN-RHY
-> champ de tension, voicing distribue, harmonie comme matiere,
   micro-instabilite, ponctuation, resolution retardee.

Trance
-> GEN-HAL, GEN-SPC, GEN-RET, GEN-TEX, GEN-RHY, GEN-GRV
-> suspension, expansion, build, breakdown, peak naturalise,
   halo harmonique, seuil de retour.

Acid
-> GEN-LIN, GEN-RHY, GEN-TEX, GEN-GRV, GEN-HAL
-> ligne vivante, resonance controlee, torsion, accent,
   slide, mutation timbrale, acidite dosee.

Voix
-> GEN-VOX, GEN-SRC, GEN-LIN, GEN-RHY, GEN-HAL, GEN-SPC, GEN-TRG
-> presence, souffle, cri, fragment, hook minimal,
   formants, texture, integration virtualo-acoustique.

Microtonalite / partiels
-> GEN-TEX, GEN-LIN, GEN-GRV, GEN-HAL, GEN-SRC
-> battements, tension fine, centres spectraux, partiels,
   formants, resolution, couleur non temperee.

Didgeridoo
-> GEN-SRC, GEN-RHY, GEN-LIN, GEN-GRV, GEN-HAL, GEN-TEX, GEN-RET
-> bourdon, souffle, charge grave, partiels, formants,
   attaques langue/gorge, rugosite, liberte de jeu.

Gong / metaux
-> GEN-GRV, GEN-HAL, GEN-TEX, GEN-SPC, GEN-TRG, GEN-RET
-> impact, queue, partiels inharmoniques, battements,
   rugissement, bloom grave, base microtonale.

Tambours / peaux
-> GEN-RHY, GEN-TEX, GEN-SRC, GEN-RET, NAT-PEAU, PRC
-> impact physique, attaque de peau, micro-contact,
   roll naturalise, pulse, densification, interlocking.
```

Garde-fou :

```text
Aucune inspiration ne doit etre developpee comme style complet.
Chaque inspiration sert seulement les phenomenes retenus et leur
fonction Vesperare.
```

Nouvelle prochaine etape :

```text
SPECIFICATION_ARCHITECTURE_FONCTIONNELLE_ABSTRAITE_VESPERARE_v0_1
```
