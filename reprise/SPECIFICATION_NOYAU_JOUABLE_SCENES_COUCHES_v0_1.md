# SPECIFICATION NOYAU JOUABLE SCENES COUCHES v0.1

Projet : Vesperare
Date : 2026-06-21
Statut : specification conceptuelle compacte du noyau jouable

Sources actives :

- `AUDIT_JOUABILITE_CONCEPTUELLE_SCENES_MACROS_v0_1.md`
- `SPECIFICATION_SCENES_PRIORITAIRES_ET_MACROS_v0_1.md`
- `SPECIFICATION_CONTROLES_LIVE_ET_MODES_SCENE_v0_1.md`
- `SPECIFICATION_CONCEPTUELLE_FONCTIONS_CONTROLES_PRIORITES_v0_1.md`
- `BESOINS_STYLISTIQUES_v0_4.md`
- `BESOINS_GENERATION_v0_4.md`
- `CARACTERISATION_DETAILLEE_ELEMENTS_v0_4.md`
- `REVERBS_ESPACE_REACTIF_v0_2.md`

But :

- compresser le corpus scenes/macros en noyau jouable ;
- definir le modele scene dominante + couches + gestes + etats ;
- reduire chaque scene prioritaire a un pack de 5 macros conceptuelles ;
- fixer les defaults provisoires ;
- reserver proprement la place de la generation sonore, rythmique et melodique sans l'ouvrir encore en detail ;
- preparer l'etape suivante : bloc generation sonore / motifs rythmiques et melodiques.

Hors perimetre :

- interface graphique ;
- controleur physique ;
- disposition Ableton ;
- devices Max for Live ;
- routings ;
- algorithmes ;
- seuils numeriques ;
- evaluation pratique.

---

## 1. Decision centrale

Vesperare doit etre pense comme un noyau jouable a trois niveaux :

```text
Niveau 1 - Ce qui dirige
Scene dominante + etat de forme.

Niveau 2 - Ce qui colore ou enrichit
Couches actives, gestes, etats persistants.

Niveau 3 - Ce qui protege
Auto-Pro, signalisation, priorites P0/P1/P2.
```

Regle principale :

```text
Une seule scene dominante dirige la forme principale.
Zero a deux couches peuvent enrichir cette scene.
Des gestes ponctuels peuvent intervenir.
Des etats peuvent persister.
Auto-Pro protege sans composer.
```

Cette regle ne limite pas la richesse musicale.
Elle limite seulement la confusion de direction.

---

## 2. Vocabulaire obligatoire

### 2.1. DOM - Scene dominante

La scene dominante repond a la question :

```text
Qu'est-ce qui dirige le moment ?
```

Exemples :

```text
DOM = Didgeridoo systeme minimum.
DOM = Techno corporelle naturalisee.
DOM = Techno suspendue tres longue.
DOM = Gong bloom grave.
DOM = Sound-system immersion.
```

Regle :

```text
Une seule DOM a la fois.
```

Si deux scenes veulent etre DOM :

```text
alternance ;
transition ;
une DOM devient couche ;
ou crise/transgression explicitement decidee.
```

### 2.2. LAYER - Couche active

Une couche active ajoute une fonction sans diriger toute la forme.

Types de couches :

```text
LAYER-SRC - source live : didgeridoo, voix, gong.
LAYER-GRV - grave, sub, bloom, support.
LAYER-RHY - pression rythmique, interlocking, attaque.
LAYER-LIN - ligne, motif, acid naturalise, fragment melodique.
LAYER-SPC - monde spatial, proximite, immersion, hors-monde.
LAYER-HAL - halo, queue, memoire, lock, force.
LAYER-TEX - polytexture, densite, partiels, spectre.
LAYER-TRG - transgression, rugosite, saturation, crise.
LAYER-RET - retour, contraction, sortie, consequence.
```

Regle :

```text
0 a 2 couches actives en continu.
Au-dela, le moment devient une forme composee ou une transition.
```

### 2.3. GESTE

Un geste est ponctuel.

Exemples :

```text
impact rare ;
bloom gong ;
cut halo ;
contraction espace ;
pic de transgression ;
retour grave ;
fragment vocal ;
mutation acid naturalisee.
```

Regle :

```text
Un geste doit produire une consequence musicale.
Il ne doit pas etre un effet gratuit.
```

### 2.4. ETAT

Un etat est une qualite persistante qui ne dirige pas forcement la scene.

Exemples :

```text
suspension ;
immersion ;
proximite ;
domination ;
hors-monde ;
halo force ;
grave retire ;
corps suspendu ;
retour prepare.
```

Regle :

```text
Un etat peut durer longtemps si decide.
Il doit rester lisible comme choix, pas comme derive automatique.
```

### 2.5. AUTO-PRO

Auto-Pro protege :

```text
headroom ;
feedback ;
resonance salle dangereuse ;
sub destructeur ;
sub illisible ;
attaque principale masquee ;
source essentielle masquee ;
boue de reverb ;
brillance agressive ;
densite qui efface la forme.
```

Auto-Pro ne choisit pas :

```text
scene dominante ;
retour corporel ;
transgression ;
grande reverb expressive ;
motif melodique ;
domination sound-system ;
halo expressif hors P0/P1.
```

### 2.6. SIGNAL

Signalisation obligatoire :

```text
P0 actif ;
P1 limite un choix ;
P2 actif ;
grave reduit ;
halo adapte ;
source protegee ;
monde spatial degrade ;
motif bloque ;
densite nettoyee ;
conflit grave/harmonique.
```

La signalisation n'est pas une decoration.
Elle rend le systeme jouable.

---

## 3. Noyau permanent

Le noyau permanent ne decrit pas une interface.

Il decrit les decisions qui doivent toujours rester disponibles ou lisibles.

### 3.1. STRUCT-1 - Scene dominante

Fonction :

```text
nommer ce qui dirige le moment.
```

Valeurs :

```text
SCN-1 Didgeridoo / systeme minimum
SCN-2 Techno corporelle naturalisee
SCN-3 Techno suspendue tres longue
SCN-4 Gong / bloom grave / metal-gong
SCN-5 Sound-system immersion / domination
SCN-6 Voix exposee integree
SCN-7 Acid naturalise / ligne vivante
SCN-8 Polytexture rythmico-spectrale
SCN-9 Transgression controlee
```

Regle :

```text
Changer de scene dominante change le centre de gravite musical.
Cela ne coupe pas forcement les couches.
```

### 3.2. STRUCT-2 - Etat de forme

Fonction :

```text
dire ou l'on est dans le geste.
```

Valeurs :

```text
preparation ;
maintien ;
retrait ;
retour ;
peak ;
consequence ;
sortie.
```

Regle :

```text
L'etat de forme ne choisit pas quoi jouer.
Il structure ce qui est deja choisi.
```

### 3.3. STRUCT-3 - Couches actives

Fonction :

```text
nommer les couches importees sans changer la scene dominante.
```

Valeurs possibles :

```text
aucune ;
didgeridoo source ;
gong bloom ;
voix presence ;
acid ligne ;
polytexture densite ;
halo memoire ;
espace immersif ;
transgression geste ;
retour prepare ;
grave soutien.
```

Regle :

```text
0 a 2 couches continues.
Les gestes ponctuels ne comptent pas comme couches continues.
```

### 3.4. PLAY-1 - Didgeridoo / source live

Fonction :

```text
definir le role du didgeridoo ou de la source live principale.
```

Valeurs :

```text
Libre protege ;
Guide ;
Systeme adapte ;
Didgeridoo adapte ;
Source traitee ;
Perturbateur.
```

Default :

```text
Libre protege.
```

Regle :

```text
Le didgeridoo ne doit pas etre force en basse par defaut.
Il peut guider, perturber, ou etre traite si la scene le demande.
```

### 3.5. PLAY-2 - Grave / conflit grave

Fonction :

```text
definir qui porte le grave et comment les conflits sont arbitres.
```

Valeurs de role :

```text
Retrait ;
Trace ;
Soutien discret ;
Porteur ponctuel ;
Bloom gong ;
Libre.
```

Valeurs de priorite grave :

```text
DID guide harmonique ;
Grave soutient discretement ;
DID adapte harmoniquement si conflit ;
Grave genere se retire ;
Gong bloom porte ;
Graves libres.
```

Default :

```text
Trace / soutien discret / retrait selon scene.
Graves libres seulement par choix explicite.
```

Regle :

```text
Le grave est une fonction, pas seulement un niveau.
Tout conflit didgeridoo/gong/sub doit etre signalable.
```

### 3.6. PLAY-3 - Espace monde

Fonction :

```text
choisir le monde spatial perceptif principal.
```

Valeurs :

```text
Commun ;
Proche enrichi ;
Immersif ;
Immense ;
Metal-gong ;
Hors-monde.
```

Default :

```text
Commun / proche enrichi.
```

Regle :

```text
Un monde spatial est une fonction perceptive.
Ce n'est pas un preset de reverb.
Les reglages fins restent pour le chapitre reverb/espace et les scenes.
```

### 3.7. PLAY-4 - Halo

Fonction :

```text
maintenir, forcer, couper ou laisser vivre une memoire/queue/liaison.
```

Valeurs :

```text
Auto ;
Lock ;
Force ;
Cut ;
Momentary ;
Safe force.
```

Default :

```text
Auto.
```

Regle :

```text
Lock, Force et Cut sont des decisions explicites.
Auto-Pro peut adapter seulement selon P0/P1.
```

### 3.8. PLAY-5 - Corps / retour

Fonction :

```text
definir la relation au corps et au retour.
```

Valeurs :

```text
Corps oriente ;
Suspension ;
Retrait decide ;
Retour latent ;
Retour prepare ;
Retour force ;
Refus du retour ;
Maintien prolonge.
```

Regle :

```text
La perte longue du corps est acceptable si decidee.
Le retour doit rester preparable.
```

### 3.9. MON-1 - Protection / signalisation

Fonction :

```text
rendre visibles les interventions qui limitent ou protegent.
```

Etats :

```text
P0 ;
P1 ;
P2 ;
source protegee ;
grave protege ;
halo adapte ;
monde adapte ;
densite nettoyee ;
motif bloque ;
retour prepare.
```

Regle :

```text
MON-1 n'est pas une macro expressive.
C'est l'etat de lisibilite du systeme.
```

---

## 4. Regle de charge mentale

Pendant un moment dense, la pensee active doit pouvoir se limiter a :

```text
1. Quelle scene domine ?
2. Quelles couches sont actives ?
3. Quelle sortie ou consequence est preparee ?
```

Le reste doit etre :

- prepare ;
- verrouille ;
- signale ;
- protege ;
- ou manipule seulement ponctuellement.

Regle :

```text
Si une scene demande plus de trois decisions expressives simultanees,
elle doit etre compressee ou scindee en scene + couche + geste.
```

---

## 5. Packs de scenes prioritaires

Chaque scene prioritaire est ramenee a 5 macros conceptuelles maximum.

Format :

```text
DOM :
Fonction :
Macros :
Couches compatibles :
Generation reservee :
Sortie :
Risques :
```

### 5.1. SCN-1 - Didgeridoo / systeme minimum

DOM :

```text
Didgeridoo source, guide, presence ou perturbateur.
```

Macros :

```text
M1 - Role didgeridoo
Libre protege -> Guide -> Systeme adapte -> Didgeridoo adapte -> Source traitee.

M2 - Relation grave
Soutien -> Adaptation -> Retrait grave genere -> Graves libres.

M3 - Presence / traitement
Sec -> Proche enrichi -> Cavite -> Halo source.

M4 - Articulation
Souffle -> Attaques -> Micro-pulse -> Perturbation.

M5 - Retour / sortie
Attente -> Retour grave -> Retour pulse -> Transfert scene.
```

Couches compatibles :

```text
halo ;
acid ligne ;
polytexture legere ;
gong signal ;
suspension ;
retour corps.
```

Generation reservee :

```text
La generation peut suivre souffle, attaques, partiels ou bourdon.
Elle ne devient pas autonome hors fonction.
```

Risques :

```text
didgeridoo ignore ;
didgeridoo force en basse ;
conflit grave non signale.
```

### 5.2. SCN-2 - Techno corporelle naturalisee

DOM :

```text
Pression rythmique naturalisee.
```

Macros :

```text
M1 - Corps / pulse
Retrait -> Pulse implicite -> Pulse lisible -> Retour fort.

M2 - Densite / interlocking
Rare -> Leger -> Dense -> Seuil.

M3 - Grave corporel
Trace -> Soutien -> Porteur ponctuel -> Retrait.

M4 - Matiere naturalisee
Souffle -> Friction -> Peau/bois -> Resonance -> Pseudo-techno naturalise.

M5 - Espace rythmique / sortie
Proche -> Commun -> Rythme-pression -> Contraction -> Suspension.
```

Couches compatibles :

```text
didgeridoo libre ou guide ;
gong signal ;
acid ligne ;
polytexture ;
transgression geste ;
halo momentary.
```

Generation reservee :

```text
La generation rythmique peut produire pulse implicite, interlocking,
accent fantome, densite d'attaques et retour de cadre.
Le detail du generateur n'est pas encore specifie.
```

Risques :

```text
timbres techno standards ;
complexite decorative ;
pulse efface par densite.
```

### 5.3. SCN-3 - Techno suspendue tres longue

DOM :

```text
Techno maintenue par memoire, tension, espace, attente ou retour possible.
```

Macros :

```text
M1 - Duree / maintien
Court -> Long -> Tres long -> Indefini decide.

M2 - Memoire techno
Absente -> Fantome -> Cadre latent -> Pre-retour.

M3 - Corps / retour
Oriente -> Suspendu -> Retire -> Retour prepare.

M4 - Monde long / halo
Commun -> Immersif -> Immense -> Hors-monde ; Halo Auto/Lock/Cut.

M5 - Sortie
Maintenir -> Contracter -> Impact rare -> Retour grave -> Retour pulse.
```

Couches compatibles :

```text
didgeridoo libre ;
gong bloom ;
acid trace ;
voix presence ;
halo lock ;
transgression latente.
```

Generation reservee :

```text
La generation peut devenir micro-variation, centre latent,
halo periodique ou memoire rythmique.
Elle ne doit pas imposer un retour.
```

Risques :

```text
retour arbitraire ;
grande reverb non decidee ;
source live effacee ;
absence de sortie preparable.
```

### 5.4. SCN-4 - Gong / bloom grave / metal-gong

DOM :

```text
Gong, metal, bloom grave, souffle, queue, rugissement ou resolution.
```

Macros :

```text
M1 - Fonction gong
Impact -> Signal -> Halo -> Bloom -> Rugissement -> Resolution.

M2 - Queue / halo metal
Court -> Long -> Lock -> Force -> Cut.

M3 - Bloom grave / sub
Off -> Trace -> Corps -> Pression -> Bloom -> Libre.

M4 - Partiels / tension
Stable -> Battements -> Tension -> Rugosite -> Resolution.

M5 - Espace / sortie
Cavite -> Metal-gong -> Immense -> Hors-monde -> Retour commun.
```

Couches compatibles :

```text
immersion sound-system ;
suspension ;
didgeridoo dialogue ;
transgression ;
polytexture lente ;
halo force.
```

Generation reservee :

```text
La generation peut prolonger partiels, battements, bas-mediums,
souffle grave et queues.
Elle doit respecter la fonction gong et les conflits de grave.
```

Risques :

```text
sub brouille ;
boue de reverb ;
queue decorative non decidee ;
partiels envahissants.
```

### 5.5. SCN-5 - Sound-system immersion / domination

DOM :

```text
Immersion corporelle, pression grave, confort profond ou domination decidee.
```

Macros :

```text
M1 - Immersion / domination
Commun -> Enveloppant -> Immense -> Domination.

M2 - Pression sub
Trace -> Soutien -> Porteur -> Libre.

M3 - Vide / headroom
Dense -> Espace -> Vide actif -> Pression par vide.

M4 - Flow / retour masse
Stable -> Pousse -> Vague -> Retrait -> Impact.

M5 - Limite / sortie
Doux -> Massif -> Limite -> Sortie.
```

Couches compatibles :

```text
gong bloom ;
techno corporelle ;
suspension ;
transgression ;
halo safe force ;
didgeridoo protege.
```

Generation reservee :

```text
La generation peut porter flow, vide actif, pression par espace
et retours de masse.
Elle ne doit pas remplacer la decision de domination.
```

Risques :

```text
sub destructeur ;
fatigue ;
source essentielle masquee ;
grande reverb spectaculaire mais moins lisible.
```

### 5.6. SCN-6 - Voix exposee integree

DOM :

```text
Voix comme presence, souffle, signal, cri, texture ou quasi-melodie integree.
```

Macros :

```text
M1 - Role vocal
Off -> Souffle -> Presence -> Signal -> Cri -> Texture.

M2 - Integration
Proche -> Cavite -> Souffle-air -> Halo source -> Choeur spectral.

M3 - Intelligibilite / melodie
Masquee -> Phoneme -> Fragment -> Presque chantable.

M4 - Exposition integree
Fond -> Milieu -> Avant -> Exposee integree -> Transgression.

M5 - Halo / sortie voix
Off -> Momentary -> Lock -> Force -> Dissoudre -> Cut.
```

Couches compatibles :

```text
suspension ;
reverb proche ;
polytexture ;
transgression ;
didgeridoo dialogue ;
halo source.
```

Generation reservee :

```text
La generation vocale peut exister comme souffle, formant,
fragment, cri ou choeur spectral si elle reste integree.
Pas de pitch correction reconnaissable.
```

Risques :

```text
chanson involontaire ;
lead vocal banal ;
voix exposee non integree ;
intelligibilite imposee.
```

### 5.7. SCN-7 - Acid naturalise / ligne vivante

DOM :

```text
Ligne vivante, motif, torsion, glissement, acid naturalise.
```

Macros :

```text
M1 - Ligne / motif
Absente -> Fragment -> Motif -> Ligne vivante -> Hook minimal.

M2 - Torsion / naturalisation
Stable -> Glissement -> Formant -> Resonance -> Rugosite.

M3 - Source de ligne
Didgeridoo -> Voix -> Tube/cavite -> Partiels -> Basse naturalisee.

M4 - Reconnaissance / anti-cliche
Ambigue -> Reconnaissable -> Memorable -> Seuil cliche -> Re-naturaliser.

M5 - Relation corps/grave
Suspendu -> Oriente -> Basse-motif -> Retrait.
```

Couches compatibles :

```text
techno corporelle ;
suspension ;
didgeridoo guide ;
polytexture ;
grave soutien ;
halo court.
```

Generation reservee :

```text
La generation melodique peut produire ligne, motif, basse-motif,
glissement, formant et mutation timbrale.
Elle ne doit pas devenir synth identifiable par defaut.
```

Risques :

```text
motif trop autonome ;
lead banal ;
cliche acid ;
double lead avec voix.
```

### 5.8. SCN-8 - Polytexture rythmico-spectrale

DOM :

```text
Densite lisible : couches, attaques, interlocking, partiels, tension spectrale.
```

Macros :

```text
M1 - Nombre de couches
1 -> 2 -> 3 -> Dense -> Seuil.

M2 - Hierarchie
Claire -> Partagee -> Instable -> Retour clair.

M3 - Interlocking / attaques
Off -> Leger -> Actif -> Dense.

M4 - Corps / tension
Oriente -> Flottant -> Perdu decide -> Retour.

M5 - Nettoyage / sortie
Auto -> Cut halo -> Retrait couche -> Simplification volontaire.
```

Couches compatibles :

```text
didgeridoo perturbateur ;
techno corporelle ;
voix texture ;
acid ligne ;
transgression ;
gong partiels.
```

Generation reservee :

```text
La generation peut produire couches, attaques, interlocking,
accents fantomes, partiels et micro-variations.
Une couche doit rester directrice.
```

Risques :

```text
accumulation ;
hierarchie perdue ;
source essentielle masquee ;
corps efface sans decision.
```

### 5.9. SCN-9 - Transgression controlee

DOM :

```text
Peak, rupture, rugissement, saturation organique, domination, consequence ou sortie.
```

Macros :

```text
M1 - Regime
Off -> Preparation -> Peak -> Maintien -> Consequence -> Sortie.

M2 - Source de crise
Grave -> Gong -> Voix -> Espace -> Microtonalite -> Masse.

M3 - Risque accepte
Normal -> Fort -> P1 accepte -> P0 jamais.

M4 - Matiere extreme
Friction -> Rugosite -> Saturation organique -> Dissonance -> Retrait.

M5 - Espace / sortie
Immense -> Hors-monde -> Cut -> Retour commun -> Silence / corps.
```

Couches compatibles :

```text
toutes les scenes si fonction claire.
```

Generation reservee :

```text
La generation peut produire masse, rugosite, dissonance,
saturation organique, pression et crise.
Elle ne choisit pas seule la transgression.
```

Risques :

```text
agression gratuite ;
fatigue ;
perte de lisibilite ;
sortie impossible ;
confusion entre erreur et decision.
```

---

## 6. Presets mentaux de superposition

Ces combinaisons ne sont pas des presets techniques.

Elles servent a penser rapidement les roles.

### 6.1. Setup minimum didgeridoo + PC

```text
DOM : SCN-1 Didgeridoo / systeme minimum
LAYER 1 : halo source ou espace proche
LAYER 2 : pression rythmique / ligne / suspension selon passage
GESTE : retour grave, cut halo, impact rare
ETAT : libre protege
PROTECTION : source didgeridoo protegee, conflit grave signale
```

### 6.2. Corps techno naturalise

```text
DOM : SCN-2 Techno corporelle
LAYER 1 : didgeridoo libre ou guide
LAYER 2 : polytexture ou acid naturalise
GESTE : contraction espace, retour grave, bloom ponctuel
ETAT : corps oriente
PROTECTION : attaque principale et sub lisible
```

### 6.3. Suspension tres longue

```text
DOM : SCN-3 Techno suspendue
LAYER 1 : didgeridoo libre / gong bloom / voix presence
LAYER 2 : halo lock ou acid trace
GESTE : impact rare, contraction espace, retour grave
ETAT : maintien prolonge, retour prepare ou refus du retour
PROTECTION : source essentielle protegee, reverb non decidee bloquee
```

### 6.4. Gong bloom + immersion

```text
DOM : SCN-4 Gong bloom ou SCN-5 Immersion
LAYER 1 : l'autre fonction
LAYER 2 : suspension ou transgression
GESTE : signal gong, cut halo, retour commun
ETAT : metal-gong, pression, bloom
PROTECTION : conflit didgeridoo/gong/sub, boue grave, headroom
```

### 6.5. Ligne acid naturalisee dans une scene

```text
DOM : SCN-2, SCN-3 ou SCN-8
LAYER 1 : SCN-7 Acid naturalise / ligne
LAYER 2 : grave soutien ou halo court
GESTE : mutation timbrale, retrait motif
ETAT : reconnaissance surveillee
PROTECTION : motif rattache a une fonction, anti-cliche
```

### 6.6. Voix integree dans suspension ou transgression

```text
DOM : SCN-3 Suspension, SCN-6 Voix, ou SCN-9 Transgression
LAYER 1 : voix presence / fragment / cri / texture
LAYER 2 : halo source ou espace proche
GESTE : dissoudre, cut, cri ponctuel
ETAT : integration virtualo-acoustique
PROTECTION : pas de lead banal, pas de pitch correction reconnaissable
```

### 6.7. Polytexture sous controle

```text
DOM : SCN-8 Polytexture ou SCN-2 Techno corporelle
LAYER 1 : didgeridoo / acid / voix / gong
LAYER 2 : halo court ou espace rythmique
GESTE : retrait couche, simplification, retour clair
ETAT : une couche directrice
PROTECTION : densite nettoyee si forme effacee
```

### 6.8. Transgression comme geste

```text
DOM : n'importe quelle scene
LAYER : SCN-9 comme geste ou etat
GESTE : peak, rupture, rugosite, saturation, cri, masse
ETAT : risque accepte, sortie preparee
PROTECTION : P0 toujours, P1 visible, sortie obligatoire
```

---

## 7. Conflits de direction

### 7.1. Qui porte le grave ?

Options :

```text
DID guide harmonique ;
Sub/generated grave porte ;
Gong bloom porte ;
Grave soutient discretement ;
Grave genere se retire ;
Graves libres.
```

Regle :

```text
Une seule fonction porte le vrai grave a un moment critique.
Les autres deviennent trace, partiels, souffle, source protegee ou couche.
```

### 7.2. Qui porte le corps ?

Options :

```text
pulse ;
sub ;
attaques ;
interlocking ;
source live ;
vide actif ;
retour prepare ;
retrait decide.
```

Regle :

```text
Le corps peut disparaitre longtemps si decide.
Mais le retour doit rester pensable.
```

### 7.3. Qui porte l'espace ?

Options :

```text
monde commun ;
proximite ;
immersion ;
immense ;
metal-gong ;
hors-monde ;
halo source.
```

Regle :

```text
Espace et halo peuvent etre couples dans suspension, memoire ou queue.
Ils doivent rester distincts quand attaque, source ou proximite sont critiques.
```

### 7.4. Qui porte la reconnaissance melodique ?

Options :

```text
acid naturalise ;
basse-motif ;
fragment vocal ;
partiels didgeridoo ;
partiels gong ;
centre ressenti ;
hook minimal.
```

Regle :

```text
Une seule fonction devient reconnaissable au premier plan.
Les autres restent texture, reponse, trace ou source.
```

### 7.5. Qui porte la crise ?

Options :

```text
grave ;
gong ;
voix ;
espace ;
microtonalite ;
masse ;
saturation organique ;
densite.
```

Regle :

```text
La crise doit avoir une source lisible.
Transgression sans fonction = a eviter par defaut.
```

### 7.6. Qui porte la sortie ?

Options :

```text
retour corps ;
retour grave ;
retour pulse ;
cut halo ;
contraction espace ;
retour commun ;
silence ;
resolution ;
dissolution.
```

Regle :

```text
Chaque scene doit avoir une sortie ou une consequence previsible.
```

---

## 8. Place reservee de la generation

Ce document ne specifie pas encore le bloc generation sonore / motifs rythmiques et melodiques.

Il fixe seulement sa place dans le noyau.

### 8.1. La generation n'est jamais autonome par defaut

Regle :

```text
Tout objet genere doit appartenir a une DOM, une LAYER, un GESTE ou un ETAT.
```

Interdit par defaut :

```text
motif autonome hors scene ;
ligne qui devient lead banal ;
objet sonore sans fonction ;
generation qui choisit le retour ;
generation qui choisit la transgression ;
generation qui remplace la source live essentielle.
```

### 8.2. Fonctions de generation deja autorisees

Fonctions autorisees au niveau conceptuel :

```text
pression rythmique ;
pulse implicite ;
interlocking ;
accent fantome ;
densite d'attaques ;
souffle/friction ;
partiels ;
battements ;
bloom grave ;
halo/memoire ;
ligne acid naturalisee ;
basse-motif ;
melodie de timbre ;
fragment vocal integre ;
micro-variation ;
masse/rugosite/transgression.
```

### 8.3. Questions reservees au futur bloc generation

Questions a traiter plus tard :

```text
Quels types de generateurs sonores ?
Quels types de motifs rythmiques ?
Quels types de motifs melodiques ?
Quelles sources de modulation : didgeridoo, gong, voix, espace, scene ?
Comment eviter les timbres electroniques reconnaissables ?
Comment naturaliser acid, basse-motif, ligne et hook minimal ?
Comment limiter l'autonomie des motifs ?
Comment gerer mutation, variation, repetition, memoire et retrait ?
Comment relier generation et sidechain/protocoles sans commencer le patch ?
```

### 8.4. Conditions d'ouverture du bloc generation

Le bloc generation peut etre ouvert apres cette fiche parce que :

```text
la DOM est definie ;
les couches sont definies ;
les gestes sont definis ;
les etats sont definis ;
les conflits de direction sont identifies ;
les limites d'autonomie sont explicites.
```

---

## 9. Defaults provisoires

Ces defaults ne sont pas des choix definitifs.

Ils permettent de continuer sans poser trop de questions maintenant.

```text
DID par defaut :
Libre protege.

GRV par defaut :
Trace / soutien discret / retrait selon scene.

Graves libres :
Choix explicite seulement.

Espace par defaut :
Commun / proche enrichi.

Halo par defaut :
Auto.

Halo Lock / Force / Cut :
Choix explicite.

Corps :
Oriente si scene corporelle, retrait decide possible si suspension.

Retour :
Toujours preparable, jamais impose automatiquement.

Voix :
Off ou integree. Jamais exposee sans integration.

Pitch correction reconnaissable :
Interdit par defaut.

Transgression :
Off par defaut. Possible si fonction claire.

Generation :
Fonction-bound. Pas autonome par defaut.

Motif :
Possible, mais rattache a scene/couche/geste.

Acid :
Naturalise. Pas de cliche 303/squelch par defaut.

Reverb expressive :
Choix live ou scene. Pas automatique.
```

---

## 10. Questions restantes a poser plus tard

Ces questions ne bloquent pas la suite.

Elles seront utiles pendant le bloc generation ou la specification fonctionnelle.

```text
1. Quelles couches doivent etre accessibles le plus vite :
   didgeridoo, gong, acid, voix, polytexture, transgression, halo ?

2. Dans les graves complexes, quel arbitrage veux-tu le plus souvent :
   didgeridoo guide, gong bloom, sub porteur, grave soutien, grave retire, graves libres ?

3. Dans une suspension tres longue, quel retour est le plus naturel :
   grave, pulse, contraction espace, source live, impact rare, silence ?

4. Dans une polytexture, qu'est-ce qui doit rester directeur :
   corps, attaque, grave, source live, espace, ligne ?

5. Pour la transgression, quel usage est prioritaire :
   geste de peak, etat maintenu, consequence apres peak, rupture, sortie ?

6. Pour la generation melodique, quelle autonomie maximale :
   trace, motif, ligne vivante, hook minimal, basse-motif ?
```

---

## 11. Decision v0.1

Le noyau jouable est maintenant defini.

Le projet dispose de :

- une scene dominante unique ;
- des couches superposables ;
- des gestes ponctuels ;
- des etats persistants ;
- un noyau permanent structure ;
- 9 scenes reduites a 5 macros ;
- des conflits de direction explicites ;
- des defaults provisoires ;
- une place reservee pour la generation sonore, rythmique et melodique.

Cette fiche ne remplace pas les documents stylistiques.

Elle sert de charniere entre :

```text
intentions / caracterisations / reverbs / scenes
```

et :

```text
generation sonore / motifs / fonctions plus proches de l'architecture.
```

Etape recommandee a la creation de cette fiche :

```text
SPECIFICATION_BLOC_GENERATION_SONORE_MOTIFS_RYTHMIQUES_MELODIQUES_v0_1
```

But :

- detailler les fonctions de generation sonore ;
- detailler les motifs rythmiques ;
- detailler les motifs melodiques ;
- definir leur relation aux scenes dominantes et couches ;
- definir leurs limites d'autonomie ;
- preparer ensuite les protocoles et sidechains conceptuels.

---

## 12. Suivi

Date : 2026-06-21

Action realisee :

- `AUDIT_METHODOLOGIQUE_PRO_ACADEMIQUE_PRE_GENERATION_v0_1.md` cree.
- `SPECIFICATION_BLOC_GENERATION_SONORE_MOTIFS_RYTHMIQUES_MELODIQUES_v0_1.md` cree.

Conclusion :

```text
L'audit externe valide l'ordre general.
Il impose que le bloc generation soit specifie par fonctions, mapping,
autonomie, naturalisation, relation au corps, risque et sortie.
```

Nouvelle prochaine etape :

```text
AUDIT_COMPATIBILITE_BLOC_GENERATION_AVEC_CORPUS_v0_1
```
