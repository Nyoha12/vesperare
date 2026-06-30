# SPECIFICATION PROTOCOLES SIDECHAINS CONCEPTUELS v0.1

Projet : Vesperare
Date : 2026-06-21
Statut : specification conceptuelle des relations source / analyse / reaction

Sources actives :

- `AUDIT_COMPATIBILITE_BLOC_GENERATION_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_BLOC_GENERATION_SONORE_MOTIFS_RYTHMIQUES_MELODIQUES_v0_1.md`
- `SPECIFICATION_NOYAU_JOUABLE_SCENES_COUCHES_v0_1.md`
- `SPECIFICATION_CONTROLES_LIVE_ET_MODES_SCENE_v0_1.md`
- `SPECIFICATION_CONCEPTUELLE_FONCTIONS_CONTROLES_PRIORITES_v0_1.md`
- `REVERBS_ESPACE_REACTIF_v0_2.md`
- `BESOINS_GENERATION_v0_4.md`
- `BESOINS_STYLISTIQUES_v0_4.md`
- `CARACTERISATION_DETAILLEE_ELEMENTS_v0_4.md`

But :

- transformer les fonctions consolidees en protocoles relationnels ;
- definir qui ecoute quoi ;
- definir quelles analyses peuvent influencer quelles fonctions ;
- definir les priorites de conflit ;
- definir les sidechains conceptuels sans routings techniques ;
- separer protocoles expressifs, protections et signalisation ;
- garder la generation bornee par DOM/LAYER/GESTE/ETAT ;
- preparer une future architecture sans la commencer.

Hors perimetre :

- devices Max for Live ;
- choix d'algorithmes ;
- routings audio ou MIDI ;
- ordre des pistes ;
- bus Ableton ;
- interface graphique ;
- mappings physiques ;
- seuils numeriques ;
- evaluation pratique.

---

## 1. Decision centrale

Un protocole Vesperare n'est pas un effet.

Un protocole est une relation musicale surveillee :

```text
source ecoutee -> indices -> interpretation -> cible -> reaction -> priorite -> sortie
```

Un sidechain conceptuel n'est pas encore un routage.

Il signifie :

```text
une fonction peut etre influencee par une autre fonction,
si cette influence a une raison musicale explicite.
```

Exemples :

```text
didgeridoo -> guide harmonique -> ligne naturalisee
gong -> bloom grave -> espace metal-gong
attaque -> pression rythmique -> contraction reverb
sub illisible -> protection P1 -> retrait grave genere
halo Lock -> fonction maintenue -> Auto-Pro adapte mais ne supprime pas
GEN-RET -> retour prepare -> aucun retour impose
```

Regle :

```text
Un protocole ne cree pas de musique par lui-meme.
Il autorise, limite, oriente, protege, signale ou accompagne.
```

---

## 2. Vocabulaire

### 2.1. PROTO

`PROTO` designe un protocole conceptuel.

Un protocole peut etre :

```text
expressif ;
protecteur ;
generatif ;
spatial ;
rythmique ;
harmonique ;
spectral ;
de retour ;
de retrait ;
de signalisation ;
d'arbitrage.
```

### 2.2. SDC

`SDC` designe un sidechain conceptuel.

Format :

```text
SDC : source -> cible
```

Exemples :

```text
SDC-DID-GRV : didgeridoo -> grave genere
SDC-GNG-SPC : gong -> monde spatial metal-gong
SDC-RHY-HAL : attaques/pulse -> halo
SDC-SUB-GEN : lisibilite sub -> generation grave
SDC-VOX-SPC : voix -> espace proche/cavite
SDC-HAL-P1 : halo -> protection masquage
```

Regle :

```text
Un SDC est une dependance musicale.
Il ne precise pas encore comment le signal circule techniquement.
```

Precision :

```text
Un SDC n'active pas une cible par lui-meme.
Il influence seulement une cible deja autorisee par scene, couche, geste,
etat, choix live, P0 ou P1.
```

### 2.3. Source ecoutee

Une source ecoutee peut etre :

```text
didgeridoo ;
gong ;
voix ;
tambour ou peau ;
attaque ;
souffle ;
friction ;
partiels ;
sub ;
grave spatial ;
halo ;
reverb ;
scene ;
etat de forme ;
silence ;
densite globale ;
risque P0/P1 ;
choix live.
```

### 2.4. Cible

Une cible est une fonction qui peut reagir.

Exemples :

```text
grave genere ;
ligne naturalisee ;
motif rythmique ;
motif melodique ;
halo ;
monde spatial ;
reverb proche ;
freeze ;
bloom gong ;
texture ;
retour ;
transgression ;
signalisation ;
Auto-Pro.
```

### 2.5. Reaction

Une reaction est une transformation conceptuelle.

Reactions autorisees :

```text
suivre ;
resister ;
soutenir ;
se retirer ;
laisser la place ;
densifier ;
rarefier ;
stabiliser ;
instabiliser ;
deplacer spectralement ;
raccourcir ;
allonger ;
ouvrir ;
contracter ;
naturaliser ;
proteger ;
signaler ;
preparer ;
accompagner ;
couper ;
maintenir.
```

Reactions interdites par defaut :

```text
decider une scene ;
imposer un retour ;
imposer une transgression ;
remplacer une source live essentielle ;
changer de monde expressif sans permission ;
transformer un motif en lead autonome ;
contourner P0 ;
masquer une protection P1.
```

---

## 3. Format obligatoire d'un protocole

Chaque protocole futur doit pouvoir etre ecrit ainsi :

```text
ID :
nom :
fonction :
type :
source ecoutee :
indices utiles :
interpretation :
cibles autorisees :
reactions autorisees :
reactions interdites :
priorite :
permission scene :
controle live :
role Auto-Pro :
signalisation :
sortie :
risque principal :
garde-fou :
```

Regle :

```text
Un protocole sans sortie est incomplet.
Un protocole sans priorite est dangereux.
Un protocole sans fonction est decoratif.
```

---

## 4. Priorites transversales

La matrice P0-P5 reste souveraine.

```text
P0 - Securite critique
Clipping, feedback dangereux, resonance dangereuse, headroom critique,
sub destructeur.

P1 - Protection mix vitale
Sub illisible, attaque principale masquee, source essentielle masquee,
boue grave/reverb, forme principale illisible.

P2 - Choix live explicite
Lock, Force, Cut, Libre, Bloom, monde choisi, transgression volontaire,
graves libres, retrait decide.

P3 - Scene
Cadre prepare : forme, suspension, retour, espace, densite, transgression.

P4 - Assignation source par defaut
Didgeridoo, gong, voix, generation, sub, monde commun.

P5 - Auto-Pro ordinaire
Coherence, correction douce, adaptation de salle, integration.
```

Regles :

```text
P0 gagne toujours.
P1 gagne sauf risque explicitement accepte quand c'est musicalement possible.
P2 gagne contre P3/P4/P5.
P3 gagne contre P4/P5.
P4 gagne contre P5.
P5 ne gagne jamais contre un choix artistique explicite.
```

Signalisation obligatoire :

```text
P0 actif ;
P1 limite un choix live ;
grave libre reduit ;
Halo Lock adapte ;
monde spatial protege ;
source essentielle protegee ;
generation retiree ;
retour prepare mais non impose.
```

---

## 5. Etats par defaut

Ces defaults sont des positions de securite conceptuelle.

Ils ne sont pas des reglages techniques.

```text
Scene :
aucune scene ne force tous les protocoles.

Didgeridoo :
libre protege par defaut.

Grave :
une seule fonction porte le vrai sub lisible par defaut.

Gong :
bloom et graves libres seulement si scene ou choix live.

Voix :
off ou integree.

Generation :
off ou reponse/variation selon permission de scene.

Motifs :
autorises seulement s'ils sont rattaches a DOM/LAYER/GESTE/ETAT.

Acid naturalise :
possible seulement avec source/fonction claire.

Halo :
Auto par defaut, Lock/Force/Cut/Safe force par choix live ou scene.

Reverb / espace :
monde commun ou proche enrichi par defaut.

Grave spatial :
Auto-Pro / Off / Trace par defaut selon scene.

Retour :
preparable par defaut, jamais impose.

Transgression :
off par defaut.
```

---

## 6. Dictionnaire des indices utiles

Ces indices sont qualitatifs.

Ils ne fixent pas encore de methodes de detection.

### 6.1. Energie globale

Peut indiquer :

```text
intensite ;
pression ;
peak ;
retrait ;
besoin de protection ;
transition de forme.
```

Ne doit pas indiquer seule :

```text
retour ;
transgression ;
changement de scene ;
motif principal.
```

### 6.2. Attaques / transitoires

Peuvent indiquer :

```text
pression rythmique ;
interlocking ;
retour du corps ;
besoin de clarte ;
reactivite d'espace ;
motif d'attaque.
```

Risques :

```text
pattern techno standard ;
cliquetis decoratif ;
surreaction de reverb ;
fatigue.
```

### 6.3. Pulse / regularite

Peut indiquer :

```text
cadre corporel ;
memoire techno ;
retour possible ;
maintien ;
interruption.
```

Ne doit pas forcer :

```text
kick implicite ;
grille techno ;
retour automatique.
```

### 6.4. Densite

Peut indiquer :

```text
besoin de nettoyage ;
polytexture lisible ;
masse ;
pression spectrale ;
risque de boue.
```

Reaction possible :

```text
rarefier ;
deplacer spectralement ;
retirer une couche ;
contracter l'espace ;
signaler surcharge.
```

### 6.5. Energie grave / sub

Peut indiquer :

```text
corps ;
pression ;
conflit de porteur ;
sub illisible ;
resonance salle ;
besoin de retrait.
```

Regle :

```text
Le sub n'est jamais seulement une couleur.
Il est une fonction corporelle et une zone critique.
```

### 6.6. Partiels / harmonicite / hauteur stable

Peuvent indiquer :

```text
guide harmonique ;
ligne naturalisee ;
battements ;
base microtonale ;
tension ;
relation didgeridoo/gong/voix.
```

Risques :

```text
reduction du didgeridoo a une source de pitch ;
theorie microtonale imposee ;
melodie banale ;
conflit grave deletere.
```

### 6.7. Souffle / bruit d'air / friction

Peuvent indiquer :

```text
naturalisation ;
proximite ;
matiere corporelle ;
halo source ;
texture ;
voix integree ;
espace souffle-air.
```

Risques :

```text
nappe indistincte ;
decor ;
masquage attaque ;
fatigue haut-medium.
```

### 6.8. Formants / vocalite

Peuvent indiquer :

```text
voix ;
cavite ;
fragment quasi-melodique ;
cri ;
presence ;
ligne naturalisee.
```

Interdits par defaut :

```text
pitch correction reconnaissable ;
auto-tune identifiable ;
lead vocal banal ;
voix exposee sans integration.
```

### 6.9. Queue / resonance / decay

Peut indiquer :

```text
gong ;
metal ;
bloom ;
freeze possible ;
halo ;
espace long ;
retour ou extinction.
```

Risques :

```text
boue ;
perte attaque ;
ambient subi ;
grave spatial non decide.
```

### 6.10. Salle / feedback / resonance dangereuse

Peut indiquer :

```text
adaptation de salle ;
reduction grave ;
filtrage conceptuel ;
limitation halo ;
protection P0/P1.
```

Regle :

```text
La salle peut enrichir.
Elle ne doit pas prendre le controle musical hors choix explicite.
```

### 6.11. Silence / absence / retrait

Peut indiquer :

```text
suspension ;
attente ;
pre-retour ;
seuil ;
resolution ;
espace immense ;
ecoute source.
```

Ne doit pas forcer :

```text
remplissage ;
retour ;
nouvelle couche.
```

---

## 7. Protocoles d'autorite

### PROTO-AUTH-1 - Choix live explicite

Fonction :

```text
Garantir qu'un choix live clair garde l'autorite sur les automations ordinaires.
```

Sources ecoutees :

```text
controle live ;
mode scene ;
etat de forme.
```

Cibles :

```text
halo ;
grave ;
monde spatial ;
generation ;
retour ;
transgression ;
didgeridoo.
```

Reactions autorisees :

```text
maintenir ;
forcer ;
couper ;
autoriser ;
interdire ;
signaler.
```

Priorite :

```text
P2.
```

Garde-fou :

```text
P0 gagne toujours.
P1 peut limiter si lisibilite ou integrite musicale critique.
```

Sortie :

```text
retour au mode scene ou Auto-Pro ordinaire.
```

### PROTO-AUTH-2 - Permission de scene

Fonction :

```text
Dire ce qui est possible dans une scene sans l'imposer.
```

Exemples :

```text
voix autorisee ;
gong bloom autorise ;
graves libres autorises ;
espace hors-monde autorise ;
ligne acid naturalisee autorisee ;
transgression autorisee.
```

Interdit :

```text
confondre permission et apparition.
```

Priorite :

```text
P3.
```

Sortie :

```text
permission expire avec changement de scene ou choix live contraire.
```

### PROTO-AUTH-3 - Auto-Pro borne

Fonction :

```text
Proteger sans composer.
```

Auto-Pro peut :

```text
proteger headroom ;
limiter feedback ;
proteger sub ;
proteger attaque ;
proteger source essentielle ;
reduire boue reverb/grave ;
adapter doucement coherence et salle ;
signaler intervention.
```

Auto-Pro ne peut pas decider :

```text
scene dominante ;
retour ;
transgression ;
monde expressif principal ;
motif principal ;
autonomie forte ;
domination sound-system ;
perte longue du corps.
```

Priorite :

```text
P5 ordinaire ;
P1 si protection mix vitale ;
P0 si securite critique.
```

### PROTO-AUTH-4 - Signalisation d'intervention

Fonction :

```text
Rendre lisible qu'un protocole a modifie une intention.
```

Signaux necessaires :

```text
P0 actif ;
P1 actif ;
P2 limite par P0/P1 ;
halo Lock adapte ;
grave libre reduit ;
source essentielle protegee ;
generation retiree ;
retour prepare ;
conflit grave detecte ;
monde spatial protege.
```

Interdit :

```text
intervention automatique importante invisible.
```

---

## 8. Protocoles grave / sub / gong

### PROTO-GRV-1 - Porteur du vrai sub

Fonction :

```text
Maintenir un grave corporel lisible sans figer une source unique.
```

Sources ecoutees :

```text
didgeridoo ;
gong ;
grave genere ;
ligne/basse-motif ;
voix transformee ;
friction/resonance ;
salle ;
mode GRV ;
mode GSP ;
choix live.
```

Indices utiles :

```text
energie sub ;
stabilite grave ;
conflit de partiels ;
lisibilite corporelle ;
resonance salle ;
masquage source ;
fonction de scene.
```

Modes :

```text
GRV-A - Didgeridoo guide
Le didgeridoo guide harmoniquement la generation.

GRV-B - Soutien discret
Le grave soutient sans prendre le role principal.

GRV-C - Adaptation harmoniques didgeridoo
Les harmoniques traitees peuvent s'adapter en hauteur si conflit deletere.
Le niveau sonore du didgeridoo n'est pas automatiquement baisse hors P0/P1.

GRV-D - Retrait grave genere
Le grave genere se retire si conflit musical deletere.

GRV-E - Gong bloom
Le gong ou les metaux portent bloom, souffle, masse, battements ou bas-mediums.

GRV-F - Sub ponctuel non identifiable
Le sub apparait comme corps, seuil, impact ou resolution.

GRV-G - Graves libres
Coexistence grave assumee par scene ou choix live.
```

Regle par defaut :

```text
Une seule fonction porte le vrai sub lisible.
```

Exceptions :

```text
graves libres ;
gong bloom ;
guide harmonique didgeridoo ;
transgression ;
scene sound-system ;
scene seuil/hors-monde.
```

Priorites internes :

```text
P0 sub destructeur gagne.
P1 sub illisible ou source essentielle masquee gagne.
P2 graves libres/force/bloom explicite gagne contre P3/P4/P5.
P3 scene choisit les candidats autorises.
P4 default : soutien discret ou trace.
P5 Auto-Pro ajuste sans changer la fonction.
```

Sorties :

```text
retirer grave genere ;
passer en trace ;
passer en soutien ;
laisser didgeridoo guider ;
laisser gong bloom s'eteindre ;
couper grave spatial ;
signaler conflit.
```

### PROTO-GRV-2 - Didgeridoo contre grave genere

Fonction :

```text
Eviter que le grave genere ecrase ou contredise le didgeridoo,
sans forcer le didgeridoo a devenir une basse.
```

SDC :

```text
didgeridoo -> grave genere
didgeridoo -> ligne naturalisee
didgeridoo -> halo source
```

Interpretations possibles :

```text
didgeridoo libre ;
didgeridoo guide ;
didgeridoo perturbe ;
didgeridoo source de partiels ;
didgeridoo matiere rythmique ;
didgeridoo presence hors grave.
```

Reactions autorisees :

```text
grave genere suit partiels ;
grave genere se retire ;
grave genere devient soutien ;
ligne naturalisee suit partiels/formants ;
halo source prolonge souffle ;
signalisation conflit.
```

Interdits :

```text
reduire le didgeridoo a une source de pitch ;
baisser automatiquement le didgeridoo pour faire place a la basse ;
forcer une correction harmonique audible non decidee ;
imposer un motif si le didgeridoo joue librement.
```

### PROTO-GRV-3 - Gong bloom / base microtonale

Fonction :

```text
Permettre au gong de porter masse, souffle, bloom, battements,
base partielle ou tension microtonale sans rendre le grave indistinct.
```

SDC :

```text
gong -> grave ;
gong -> halo ;
gong -> espace metal-gong ;
gong -> texture ;
gong -> retour ou extinction.
```

Indices utiles :

```text
attaque gong ;
queue ;
partiels ;
battements ;
energie bas-medium ;
energie sub ;
densite ;
decay ;
fonction de scene.
```

Reactions autorisees :

```text
ouvrir bloom ;
tenir queue ;
generer souffle grave ;
renforcer bas-medium harmonieux ;
creer pression sans vrai sub libre ;
laisser battements guider texture ;
contracter espace a la sortie ;
preparer retour.
```

Garde-fous :

```text
sub protege ;
source gong lisible si elle est fonction principale ;
pas de nappe indistincte subie ;
pas de bloom permanent hors scene/choix.
```

### PROTO-GRV-4 - Grave musical vs grave spatial

Fonction :

```text
Eviter que GEN-GRV, GEN-SPC et GSP se marchent dessus.
```

Sources ecoutees :

```text
mode GRV ;
mode GSP ;
monde spatial ;
source porteuse ;
energie sub ;
lisibilite du corps ;
choix live.
```

Regles :

```text
Le grave musical porte corps, pression, basse-motif ou guide harmonique.
Le grave spatial porte appartenance, souffle, distance, bloom ou pression d'espace.
Le vrai sub reste protege.
```

Priorite par defaut :

```text
P0/P1 sub protection ;
P2 choix live grave libre / bloom / force ;
P3 scene ;
GRV porteur avant GSP decoratif ;
GSP peut dominer seulement si fonction de scene.
```

Sorties :

```text
GSP Off ;
GSP Trace ;
grave genere soutien ;
grave musical retrait ;
bloom momentary ;
signalisation grave spatial limite.
```

### PROTO-GRV-5 - Retour grave

Fonction :

```text
Utiliser le grave pour accompagner ou signaler un retour du corps,
jamais pour l'imposer automatiquement.
```

SDC :

```text
etat de forme -> grave ;
GEN-RET -> grave ;
silence/retrait -> sub ponctuel ;
attaque -> retour pulse.
```

Reactions autorisees :

```text
preparer centre grave ;
laisser une trace ;
contracter espace ;
accent rare ;
sub ponctuel ;
retour pulse si choix live ou scene.
```

Interdit :

```text
retour automatique du kick, du pulse ou du sub porteur.
```

---

## 9. Protocoles didgeridoo

### PROTO-DID-1 - Libre protege

Fonction :

```text
Permettre au didgeridoo d'exister librement dans le setup minimum.
```

Auto-Pro autorise :

```text
protection P0/P1 ;
feedback dangereux ;
masquage critique ;
headroom ;
resonance salle dangereuse.
```

Auto-Pro interdit :

```text
assigner un role musical au didgeridoo ;
forcer guide harmonique ;
forcer adaptation ;
forcer motif ;
forcer transformation.
```

Sidechains autorises :

```text
didgeridoo -> protection source ;
didgeridoo -> halo source discret ;
didgeridoo -> grave retrait si conflit ;
didgeridoo -> signalisation.
```

Precision :

```text
Ces sidechains ne transforment pas le didgeridoo libre en pilote cache.
Ils servent seulement a proteger, signaler ou prolonger discretement
si la scene, le halo ou une protection l'autorise deja.
```

### PROTO-DID-2 - Systeme adapte au didgeridoo

Fonction :

```text
Faire evoluer le systeme autour du didgeridoo quand il devient centre vivant.
```

SDC :

```text
didgeridoo -> grave ;
didgeridoo -> generation ;
didgeridoo -> espace ;
didgeridoo -> halo ;
didgeridoo -> motifs.
```

Indices utiles :

```text
bourdon ;
partiels ;
formants ;
souffle ;
attaques ;
energie ;
rugosite ;
stabilite ;
vocalisation.
```

Reactions autorisees :

```text
generation suit en variation ;
ligne naturalisee derive des partiels ;
halo source prolonge ;
grave soutien ou retrait ;
espace proche/cavite ;
motif rythmique par attaques/souffle.
```

Garde-fou :

```text
Le systeme suit sans enfermer le jeu.
```

### PROTO-DID-3 - Didgeridoo adapte au systeme

Fonction :

```text
Traiter le didgeridoo pour l'inscrire dans une scene,
sans le corriger comme s'il etait un probleme.
```

Reactions autorisees :

```text
integration spectrale ;
naturalisation commune ;
adaptation harmonique de couches traitees ;
placement dans halo ;
relation au grave ;
source-filter ;
cavite ;
texture.
```

Interdits :

```text
effacer la source ;
traitement electronique reconnaissable non decide ;
pitch correction audible ;
reduction a une basse.
```

### PROTO-DID-4 - Guide harmonique

Fonction :

```text
Permettre au didgeridoo de guider harmoniquement ce qui est genere,
avec evolution libre ensemble.
```

SDC :

```text
didgeridoo partiels -> ligne ;
didgeridoo bourdon -> grave ;
didgeridoo formants -> acid naturalise ;
didgeridoo souffle -> halo/texture ;
didgeridoo attaques -> rythme.
```

Reactions autorisees :

```text
suivi souple ;
variation ;
derive ;
micro-deviation ;
stabilisation temporaire ;
retrait si conflit ;
sortie par dissolution.
```

Interdits :

```text
quantification stylistique automatique ;
gamme imposee non decidee ;
ligne lead synthetique banale.
```

### PROTO-DID-5 - Source fonctionnalisee

Fonction :

```text
Utiliser le didgeridoo comme matiere, signal, rythme, halo,
pression ou source de partiels.
```

Conditions :

```text
scene ou choix live autorise ;
fonction nommee ;
source encore perceptivement respectee ;
sortie prevue.
```

Risques :

```text
source effacee ;
controleur invisible ;
generation trop autonome ;
didgeridoo seulement decoratif.
```

### PROTO-DID-6 - Perturbateur

Fonction :

```text
Autoriser le didgeridoo a destabiliser le systeme si la scene le prevoit.
```

Reactions possibles :

```text
grave se retire ;
espace se contracte ;
halo devient instable ;
motif se casse ;
texture devient rugueuse ;
retour est differe.
```

Priorite :

```text
P2 si choix live ;
P3 si scene ;
P0/P1 restent prioritaires.
```

---

## 10. Protocoles reverb / espace / halo

### PROTO-SPC-1 - Monde spatial principal

Fonction :

```text
Maintenir un monde spatial choisi sans transformer la reverb en decor arbitraire.
```

Mondes :

```text
sec protege ;
proche enrichi ;
commun ;
souffle-air ;
cavite ;
immersif ;
immense ;
metal-gong ;
rythme-pression ;
hors-monde.
```

Regle :

```text
Auto-Pro peut adapter a l'interieur du monde choisi.
Auto-Pro ne remplace pas le monde expressif hors P0/P1.
```

Sidechains autorises :

```text
source live -> appartenance spatiale ;
attaque -> espace rythme-pression ;
gong -> metal-gong ;
voix -> proche/cavite/souffle-air ;
didgeridoo -> cavite/proche/commun ;
densite -> contraction espace ;
sub -> limitation grave spatial ;
scene -> monde principal.
```

### PROTO-SPC-2 - Espace reactif

Fonction :

```text
Faire reagir l'espace a la musique sans lui donner l'autorite de composer.
```

Reactivites autorisees :

```text
source ;
geste ;
attaque ;
energie ;
densite ;
retrait ;
retour ;
scene.
```

Reactions autorisees :

```text
proximite varie ;
duree varie ;
queue se nettoie ;
espace se contracte ;
espace s'ouvre ;
halo se deplace ;
early reflections conceptuelles renforcent presence ;
monde reste coherent.
```

Interdits :

```text
changer de monde sans permission ;
masquer attaque principale ;
remplir le silence automatiquement ;
forcer ambient subi.
```

### PROTO-HAL-1 - Halo Auto

Fonction :

```text
Lier les sources par une matiere persistante adaptee.
```

Auto peut adapter :

```text
densite ;
duree ;
zone spectrale ;
relation au grave ;
relation a l'attaque ;
presence ;
nettoyage ;
appartenance.
```

Interdit :

```text
supprimer un halo Lock/Force hors P0/P1 ;
devenir couche principale non decidee ;
flouter la fonction principale.
```

### PROTO-HAL-2 - Halo Lock / Force / Cut / Safe force

Fonction :

```text
Donner au musicien une autorite claire sur la presence du halo.
```

Modes :

```text
Lock :
maintenir la fonction halo.

Force :
imposer le halo comme choix fort.

Cut :
retirer le halo volontairement.

Momentary :
declencher une presence breve.

Safe force :
forcer autant que possible, avec acceptation P0/P1.
```

Priorites :

```text
Lock/Force/Cut = P2.
Auto-Pro ordinaire ne gagne pas.
P0/P1 peuvent limiter.
```

Signalisation :

```text
Lock limite ;
Force limite ;
Cut actif ;
Safe force adapte ;
halo retire pour protection.
```

### PROTO-SPC-3 - Reverb comme enrichissement perceptif

Fonction :

```text
Utiliser les reverbs pour enrichir presence, proximite, immersion,
matiere, appartenance et profondeur sans perdre la fonction musicale.
```

Options conceptuelles :

```text
proximite enrichie ;
micro-espace ;
espace commun ;
cavite ;
souffle-air ;
metal-gong ;
immersif ;
immense ;
hors-monde decide ;
freeze ;
grave spatial trace/corps/pression/bloom.
```

Sidechains utiles :

```text
attaque -> reverb courte/contractee ;
source fragile -> proximite ;
gong -> queue/bloom ;
voix -> cavite/proche ;
didgeridoo -> tube/cavite/proche ;
densite -> nettoyage ;
retour -> contraction ;
suspension -> extension ;
P1 -> reduction boue.
```

Garde-fou :

```text
Enrichir la perception ne signifie pas ajouter de la queue partout.
```

### PROTO-SPC-4 - Salle reelle

Fonction :

```text
Prendre en compte la salle comme contrainte et comme matiere possible.
```

La salle peut influencer :

```text
grave ;
feedback ;
resonances ;
lisibilite attaque ;
duree de reverb artificielle ;
density management ;
proximite ;
immersion.
```

Regle :

```text
La salle enrichit ou contraint.
Elle ne choisit pas la scene.
```

Action conceptuelle :

```text
adapter doucement ;
limiter zones dangereuses ;
reduire halo si boue ;
proteger source ;
signaler P0/P1.
```

---

## 11. Protocoles generation / motifs

### PROTO-GEN-1 - Permission generative

Fonction :

```text
Eviter que la generation existe comme couche autonome par defaut.
```

Une generation doit avoir :

```text
source ou scene ;
fonction ;
role DOM/LAYER/GESTE/ETAT ;
autonomie ;
naturalisation ;
controle live ;
sortie.
```

Precision :

```text
Si la generation vient surtout d'une scene et pas d'une source claire,
la scene doit nommer la fonction, le monde, la naturalisation et la sortie.
La scene seule ne suffit pas a autoriser un objet flottant.
```

Interdits :

```text
objet sonore sans fonction ;
motif autonome hors scene ;
retour impose ;
transgression imposee ;
style identifiable non decide ;
lead banal ;
generation qui remplace une source live essentielle.
```

### PROTO-GEN-2 - Rythme / pression / interlocking

Fonction :

```text
Produire pression rythmique, corps ou interlocking sans importer un kit techno standard.
```

Sources ecoutees :

```text
attaques didgeridoo ;
souffle ;
tambour/peau ;
onsets gong ;
densite ;
pulse implicite ;
etat de forme ;
scene techno corporelle.
```

Reactions autorisees :

```text
micro-pulse ;
accent fantome ;
interlocking ;
attaque naturalisee ;
rythme spatial ;
pression sans kick explicite ;
retour pulse si decide.
```

Garde-fous :

```text
pas de pattern techno standard par defaut ;
pas de boucle autonome ;
pas de retour automatique ;
une couche directrice si polytexture dense.
```

### PROTO-GEN-3 - Ligne / acid naturalise / melodie

Fonction :

```text
Autoriser ligne vivante, basse-motif, acid naturalise,
fragment melodique ou hook minimal sans lead synthetique banal.
```

Sources possibles :

```text
didgeridoo partiels/formants ;
voix formants/fragments ;
tube/cavite ;
friction ;
resonance ;
gong partiels ;
grave ;
scene.
```

Reactions autorisees :

```text
ligne naturalisee ;
glissement de formant ;
microtonalite fonctionnelle ;
basse-motif ;
fragment vocal ;
hook minimal situe ;
mutation de timbre ;
sortie par dissolution ou retrait.
```

Interdits :

```text
cliche 303 par defaut ;
squelch reconnaissable non decide ;
auto-tune reconnaissable ;
lead synth banal ;
motif qui prend la direction hors scene.
```

Precision :

```text
Une ligne peut etre frontale si sa fonction est claire.
Elle ne doit pas etre reconnaissable comme timbre electronique standard.
```

### PROTO-GEN-4 - Memoire / suspension

Fonction :

```text
Maintenir une techno suspendue tres longtemps sans perdre la possibilite du retour.
```

Sources ecoutees :

```text
scene suspension ;
absence de pulse ;
halo ;
espace ;
grave trace ;
micro-variation ;
memoire d'attaque ;
choix live.
```

Reactions autorisees :

```text
micro-variation ;
ligne trace ;
grave trace ;
halo lock/safe force ;
espace long ;
memoire rythmique implicite ;
retour prepare ;
maintien prolonge.
```

Interdits :

```text
ambient subi ;
retour automatique ;
remplissage par peur du vide.
```

### PROTO-GEN-5 - Source scene

Fonction :

```text
Utiliser une source comme cause generative sans la transformer en controleur invisible.
```

Regle :

```text
Plus la generation derive d'une source live,
plus la fonction de cette source doit rester lisible ou volontairement masquee.
```

Exemples :

```text
didgeridoo -> ligne / halo / rythme / grave ;
gong -> bloom / texture / partiels / espace ;
voix -> fragment / souffle / cavite / cri ;
attaque -> interlocking / espace rythme-pression ;
salle -> limitation / enrichissement.
```

Sorties :

```text
retour source ;
dissolution ;
retrait ;
transformation en halo ;
consequence ;
silence.
```

---

## 12. Protocoles voix

### PROTO-VOX-1 - Voix exposee integree

Fonction :

```text
Permettre une voix presente, brute, soufflee, criee, fragmentaire
ou quasi-melodique sans voix exposee sans integration.
```

Sources / indices :

```text
souffle ;
formants ;
cri ;
fragment ;
bruit de bouche ;
attaque consonantique ;
hauteur instable ;
proximite.
```

Reactions autorisees :

```text
proche enrichi ;
cavite ;
souffle-air ;
halo source ;
fragment spectral ;
choeur spectral naturalise ;
cri integre ;
retour rythmique ;
transformation en texture.
```

Interdits :

```text
pitch correction reconnaissable ;
auto-tune identifiable ;
voix pop/chanson par defaut ;
voix exposee sans monde ;
voix qui prend le lead hors scene.
```

### PROTO-VOX-2 - Voix et grave

Fonction :

```text
Autoriser voix transformee, souffle grave ou formants graves
sans brouiller le porteur du sub.
```

Regles :

```text
voix peut soutenir ou colorer le grave ;
voix peut devenir texture ;
voix peut declencher retrait grave si conflit ;
voix ne devient porteur sub que si scene/choix live.
```

Garde-fous :

```text
sub protege ;
intelligibilite non obligatoire mais fonction claire ;
pas de masque didgeridoo/gong essentiels.
```

---

## 13. Protocoles retour

### PROTO-RET-1 - Retour prepare

Fonction :

```text
Permettre au systeme de preparer un retour sans le declencher seul.
```

Sources ecoutees :

```text
etat de forme ;
scene ;
choix live ;
grave trace ;
memoire rythmique ;
contraction espace ;
silence ;
impact rare.
```

Reactions autorisees :

```text
preparer centre grave ;
densifier micro-pulse ;
contracter espace ;
laisser trace rythmique ;
signaler retour possible ;
maintenir attente ;
accompagner choix live.
```

Interdits :

```text
declencher retour seul ;
forcer beat ;
forcer drop ;
forcer resolution.
```

### PROTO-RET-2 - Sortie de transgression

Fonction :

```text
Garantir qu'une transgression a une consequence ou une sortie.
```

Sorties possibles :

```text
silence ;
retrait ;
retour du corps ;
resolution grave ;
extinction gong ;
source live seule ;
monde spatial contracte ;
halo coupe ;
trace residuelle.
```

Regle :

```text
La sortie peut etre longue ou ambigue.
Elle doit etre pensee.
```

### PROTO-RET-3 - Retour source

Fonction :

```text
Revenir a didgeridoo, gong, voix ou percussion comme point d'ancrage.
```

Reactions autorisees :

```text
retirer generation ;
reduire halo ;
proche enrichi ;
laisser attaque respirer ;
retirer grave genere ;
mettre en avant source sans sur-exposition.
```

---

## 14. Protocoles transgression

### PROTO-TRG-1 - Transgression autorisee

Fonction :

```text
Autoriser masse enorme, rugissement, saturation organique, voix brute,
espace immense, dissonance, microtonalite ou domination si la fonction est claire.
```

Conditions :

```text
scene ou choix live ;
fonction nommee ;
P0 protege ;
sortie prevue ;
source ou monde perceptif identifiable si possible.
```

Reactions autorisees :

```text
forcer masse ;
ouvrir espace immense ;
laisser dissonance ;
graves libres ;
cri integre ;
halo force ;
texture rugueuse ;
silence apres peak.
```

Interdits :

```text
agression gratuite ;
feedback dangereux ;
masquage P0/P1 invisible ;
transgression lancee par Auto-Pro ordinaire.
```

### PROTO-TRG-2 - Feedback controle

Fonction :

```text
Traiter l'idee de feedback comme risque expressif encadre,
pas comme permission technique ouverte.
```

Regle :

```text
P0 feedback dangereux gagne toujours.
```

Autorise conceptuellement :

```text
resonance controlee ;
bord de rugissement ;
saturation organique ;
instabilite signalee ;
sortie obligatoire.
```

---

## 15. Protocoles de scene

Ces protocoles ne separent pas les scenes comme des blocs etanches.

Ils indiquent les dominantes et compatibilites.

### SCN-1 - Didgeridoo / systeme minimum

Protocoles prioritaires :

```text
PROTO-DID-1 ;
PROTO-DID-2 ;
PROTO-GRV-2 ;
PROTO-GEN-1 ;
PROTO-GEN-2 ;
PROTO-GEN-3 ;
PROTO-HAL-1 ;
PROTO-RET-1.
```

Defaults :

```text
DID libre protege ;
generation reponse/variation ;
0 a 2 couches continues ;
grave retrait ou soutien si conflit.
```

### SCN-2 - Techno corporelle naturalisee

Protocoles prioritaires :

```text
PROTO-GEN-2 ;
PROTO-GRV-1 ;
PROTO-GRV-5 ;
PROTO-SPC-2 ;
PROTO-HAL-1 ;
PROTO-RET-1.
```

Garde-fou :

```text
pression rythmique sans timbre techno standard.
```

### SCN-3 - Techno suspendue tres longue

Protocoles prioritaires :

```text
PROTO-GEN-4 ;
PROTO-SPC-1 ;
PROTO-SPC-3 ;
PROTO-HAL-2 ;
PROTO-GRV-5 ;
PROTO-RET-1.
```

Garde-fou :

```text
maintien long possible ;
retour preparable ;
retour jamais impose.
```

### SCN-4 - Gong / bloom grave / metal-gong

Protocoles prioritaires :

```text
PROTO-GRV-3 ;
PROTO-GRV-4 ;
PROTO-SPC-1 ;
PROTO-SPC-3 ;
PROTO-HAL-2 ;
PROTO-RET-2.
```

Garde-fou :

```text
bloom decide ;
sub protege ;
partiels et queue comme fonctions.
```

### SCN-5 - Sound-system immersion / domination

Protocoles prioritaires :

```text
PROTO-GRV-1 ;
PROTO-GRV-4 ;
PROTO-SPC-3 ;
PROTO-TRG-1 ;
PROTO-RET-1 ;
PROTO-AUTH-4.
```

Garde-fou :

```text
immersion possible sans domination ;
domination explicite ;
sub protege.
```

### SCN-6 - Voix exposee integree

Protocoles prioritaires :

```text
PROTO-VOX-1 ;
PROTO-VOX-2 ;
PROTO-SPC-1 ;
PROTO-HAL-1 ;
PROTO-GEN-3 ;
PROTO-RET-3.
```

Garde-fou :

```text
voix off ou integree ;
pas de pitch correction reconnaissable.
```

### SCN-7 - Acid naturalise / ligne vivante

Protocoles prioritaires :

```text
PROTO-GEN-3 ;
PROTO-DID-4 ;
PROTO-GRV-1 ;
PROTO-HAL-1 ;
PROTO-RET-1.
```

Garde-fou :

```text
source de ligne obligatoire ;
pas de cliche 303/squelch par defaut.
```

### SCN-8 - Polytexture rythmico-spectrale

Protocoles prioritaires :

```text
PROTO-GEN-2 ;
PROTO-GEN-5 ;
PROTO-SPC-2 ;
PROTO-GRV-4 ;
PROTO-AUTH-4 ;
PROTO-RET-1.
```

Garde-fou :

```text
une couche directrice ;
densite lisible ;
nettoyage possible.
```

### SCN-9 - Transgression controlee

Protocoles prioritaires :

```text
PROTO-TRG-1 ;
PROTO-TRG-2 ;
PROTO-GRV-1 ;
PROTO-SPC-1 ;
PROTO-HAL-2 ;
PROTO-RET-2.
```

Garde-fou :

```text
transgression off par defaut ;
P0 jamais contournable ;
sortie obligatoire.
```

---

## 16. Matrice de conflits majeurs

### 16.1. Didgeridoo libre vs generation reactive

Resolution :

```text
didgeridoo libre gagne sauf scene/choix live ;
generation passe en reponse douce, trace ou retrait ;
P0/P1 restent actifs.
```

### 16.2. Grave musical vs grave spatial

Resolution :

```text
sub protection d'abord ;
fonction de scene ensuite ;
choix live explicite ensuite ;
GSP decoratif perd contre GRV porteur ;
GSP peut dominer seulement si monde/scene le decide.
```

### 16.3. Halo Lock vs attaque principale

Resolution :

```text
Halo Lock maintenu comme fonction ;
Auto-Pro peut adapter zone/duree/densite ;
attaque principale protegee en P1 ;
signalisation obligatoire si le Lock est limite.
```

### 16.4. Techno suspendue vs pression rythmique

Resolution :

```text
pression rythmique reste memoire ou potentiel ;
corps peut etre retire longtemps si decide ;
retour preparable ;
aucun retour automatique.
```

### 16.5. Acid naturalise vs voix integree

Resolution :

```text
une direction principale par moment ;
ligne et voix peuvent coexister si roles distincts ;
eviter double lead ;
source/fonction obligatoire.
```

### 16.6. Gong bloom vs sub porteur

Resolution :

```text
si gong bloom est fonction principale, sub devient trace/soutien ou se retire ;
si sub porteur est fonction principale, gong bloom reste texture/queue ;
graves libres seulement si explicites.
```

### 16.7. Transgression vs Auto-Pro

Resolution :

```text
transgression peut accepter P1 musicalement si explicitement decide ;
P0 reste non negociable ;
signalisation obligatoire ;
sortie obligatoire.
```

---

## 17. Automatisations conceptuelles autorisees

Ces automatisations ne sont pas des choix esthetiques autonomes.

Elles sont autorisees si leur fonction est claire.

```text
retrait grave genere si conflit deletere ;
protection sub ;
protection source essentielle ;
adaptation halo P0/P1 ;
nettoyage boue reverb/grave ;
contraction espace si attaque masquee ;
limitation feedback ;
signalisation P0/P1 ;
preparation de retour sans declenchement ;
naturalisation douce d'une source autorisee ;
adaptation a la salle ;
maintien d'un monde choisi sans changement expressif.
```

Automatisations interdites par defaut :

```text
changement de scene ;
retour du corps ;
drop ;
transgression ;
domination sound-system ;
motif principal ;
lead melodique ;
grave libre ;
monde hors-monde ;
suppression d'un Halo Lock/Force hors P0/P1.
```

---

## 18. Questions restantes

Questions non bloquantes avant l'audit de cette fiche :

```text
1. Quels protocoles doivent etre vraiment sous la main en live :
   grave, halo, retour, didgeridoo, transgression, generation, espace ?

2. Pour le grave, quel ordre preferer quand aucune scene ne tranche :
   didgeridoo guide, soutien discret, retrait, gong bloom, sub ponctuel ?

3. Pour le halo, quels cas justifient Safe force plutot que Lock ou Force ?

4. Pour la techno suspendue tres longue, quel signal de retour doit etre le plus lisible :
   grave trace, contraction espace, pulse implicite, impact rare, source live ?

5. Pour la ligne acid naturalisee, quelle source doit etre favorisee par defaut :
   didgeridoo, voix, cavite, friction, gong, grave ?

6. Pour la voix, quels traitements d'integration sont les plus desirables :
   proche, cavite, souffle-air, halo source, fragment spectral, texture ?

7. Pour la salle, quelle place donner a son enrichissement naturel
   par rapport a la protection P0/P1 ?
```

---

## 19. Decision v0.1

Les protocoles conceptuels sont maintenant definis au niveau requis avant architecture.

Le projet dispose de :

- vocabulaire PROTO / SDC ;
- format obligatoire des protocoles ;
- priorites P0-P5 appliquees aux relations ;
- defaults conceptuels ;
- dictionnaire d'indices utiles ;
- protocoles d'autorite ;
- protocoles grave/sub/gong ;
- protocoles didgeridoo ;
- protocoles reverb/espace/halo ;
- protocoles generation/motifs ;
- protocoles voix ;
- protocoles retour ;
- protocoles transgression ;
- protocoles par scene ;
- matrice de conflits majeurs ;
- automatisations conceptuelles autorisees/interdites.

Cette fiche ne suffit pas encore pour :

- choisir des modules ;
- definir les analyses exactes ;
- definir les routings ;
- definir les seuils ;
- definir une interface ;
- construire un patch.

Etape recommandee a la creation de cette fiche :

```text
AUDIT_COMPATIBILITE_PROTOCOLS_SIDECHAINS_AVEC_CORPUS_v0_1
```

But :

- verifier que les protocoles n'ajoutent pas d'autorite automatique excessive ;
- verifier que les sidechains conceptuels restent compatibles avec les scenes ;
- verifier que les priorites de grave sont coherentes ;
- verifier que reverb/halo/retour restent sous choix live ou scene ;
- verifier que la generation reste fonction-bound ;
- identifier les points a clarifier avant la specification des analyses exactes.

---

## 20. Suivi

Date : 2026-06-21

Action realisee :

- `AUDIT_COMPATIBILITE_PROTOCOLS_SIDECHAINS_AVEC_CORPUS_v0_1.md` cree.

Conclusion :

```text
La fiche protocoles / sidechains est compatible avec le corpus actif
apres trois clarifications :
SDC sans activation automatique ;
didgeridoo libre non transforme en pilote cache ;
scene seule insuffisante pour autoriser une generation flottante.
```

Nouvelle prochaine etape :

```text
SPECIFICATION_ANALYSES_INDICES_CONCEPTUELS_ET_CONFIANCE_v0_1
```

But :

- lister les indices necessaires par source ;
- definir les niveaux de confiance conceptuels ;
- definir les cas ambigus ;
- definir les reactions autorisees quand l'analyse est incertaine ;
- rester avant algorithmes, seuils, routings et interface.
