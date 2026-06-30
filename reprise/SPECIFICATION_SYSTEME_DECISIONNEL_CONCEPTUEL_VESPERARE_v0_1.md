# SPECIFICATION SYSTEME DECISIONNEL CONCEPTUEL VESPERARE v0.1

Projet : Vesperare
Date : 2026-06-21
Statut : specification conceptuelle du systeme decisionnel global

Sources actives :

- `AUDIT_COMPATIBILITE_ANALYSES_INDICES_CONFIANCE_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_ANALYSES_INDICES_CONCEPTUELS_ET_CONFIANCE_v0_1.md`
- `AUDIT_COMPATIBILITE_PROTOCOLS_SIDECHAINS_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_PROTOCOLS_SIDECHAINS_CONCEPTUELS_v0_1.md`
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

- assembler scenes, couches, gestes, etats, protocoles, indices et confiance ;
- definir l'ordre conceptuel de decision ;
- definir ce qui autorise, bloque, prepare, limite, retire ou signale une reaction ;
- eviter que les analyses deviennent des decisions cachees ;
- eviter que les protocoles deviennent des automatismes autonomes ;
- eviter que la generation devienne compositeur autonome ;
- garder le systeme jouable en live ;
- preparer une architecture abstraite plus tard sans la commencer.

Hors perimetre :

- algorithmes ;
- seuils numeriques ;
- routings audio ou MIDI ;
- devices Max for Live ;
- patch Ableton ;
- interface graphique ;
- controleur physique ;
- evaluation pratique.

---

## 1. Decision centrale

Le systeme decisionnel Vesperare n'est pas un compositeur autonome.

Il est un arbitre d'autorisations musicales.

Formule generale :

```text
contexte -> demande -> autorite -> permission -> indices -> confiance
-> conflits -> reaction bornee -> signalisation -> sortie
```

Regle principale :

```text
Aucune reaction expressive ne doit apparaitre sans :
fonction nommee ;
contexte musical ;
autorite suffisante ;
indices compatibles si analyse impliquee ;
sortie ou maintien decide ;
signalisation si limitation, conflit ou protection.
```

Le systeme peut :

```text
proteger ;
maintenir ;
adapter ;
preparer ;
signaler ;
retirer ;
accompagner ;
limiter ;
forcer seulement si choix live ou scene explicite ;
couper seulement si choix live, P0 ou P1.
```

Le systeme ne doit pas :

```text
choisir une scene dominante seul ;
imposer un retour corporel seul ;
imposer une transgression seul ;
transformer une analyse en composition ;
changer de monde spatial expressif sans permission ;
laisser une generation devenir autonome par derive ;
effacer une source live essentielle hors P0/P1 ;
contourner une decision live.
```

Exception :

```text
P0 peut agir immediatement.
P1 peut agir rapidement si la lisibilite vitale est menacee.
```

---

## 2. Vocabulaire decisionnel

### 2.1. DEC

`DEC` designe une decision conceptuelle.

Une decision n'est pas seulement un declenchement.

Elle peut etre :

```text
autoriser ;
bloquer ;
preparer ;
maintenir ;
limiter ;
retirer ;
signaler ;
attendre ;
laisser passer ;
forcer ;
couper ;
sortir ;
transferer.
```

### 2.2. DEM

`DEM` designe une demande.

Une demande peut venir de :

```text
choix live ;
scene ;
couche ;
geste ;
etat ;
source acoustique ;
analyse ;
protocole ;
generation ;
reverb/espace/halo ;
Auto-Pro ;
forme musicale.
```

Regle :

```text
Une demande n'est pas encore une autorisation.
```

### 2.3. AUT

`AUT` designe l'autorite d'une demande.

Echelle :

```text
P0 - securite critique
P1 - protection mix vitale
P2 - choix live explicite
P3 - scene
P4 - assignation preparee
P5 - Auto-Pro ordinaire / coherence douce
```

### 2.4. PERM

`PERM` designe une permission.

Une permission repond a :

```text
est-ce que cette fonction a le droit d'exister ici ?
```

Elle peut etre :

```text
interdite ;
absente ;
preparable ;
trace ;
autorisee douce ;
autorisee forte ;
forcee ;
limitee ;
coupee.
```

### 2.5. CTX

`CTX` designe le contexte musical actif.

Il combine :

```text
DOM ;
LAYER ;
GESTE ;
ETAT ;
scene precedente ;
sortie preparee ;
choix live verrouilles ;
risques P0/P1 ;
sources presentes ;
fonctions deja actives.
```

### 2.6. BORNE

`BORNE` designe la limite d'une reaction.

Toute reaction doit avoir au moins une borne :

```text
duree ;
intensite ;
champ d'action ;
source cible ;
sortie ;
condition d'arret ;
signalisation ;
reversibilite.
```

Regle :

```text
Une reaction sans borne est consideree dangereuse ou incomplete.
```

---

## 3. Acteurs decisionnels

### 3.1. MUS - musicien

Autorite :

```text
P2 sauf P0, et sauf P1 quand la lisibilite vitale est menacee.
```

Peut decider :

```text
scene dominante ;
couches ;
gestes ;
Lock ;
Force ;
Cut ;
Libre ;
Bloom ;
graves libres ;
retour ;
refus de retour ;
transgression ;
risque accepte hors P0 ;
mode didgeridoo/grave ;
permission generation ;
monde spatial choisi ;
maintien halo.
```

Ne peut pas rendre acceptable :

```text
clipping critique ;
feedback dangereux ;
resonance dangereuse ;
sub destructeur ;
headroom critique.
```

### 3.2. SCN - scene

Autorite :

```text
P3.
```

La scene peut :

```text
nommer la DOM ;
ouvrir des couches ;
preparer des gestes ;
autoriser des familles generatives ;
autoriser des mondes spatiaux ;
definir des sorties preferables ;
donner un sens a des indices.
```

La scene ne peut pas :

```text
contourner P0 ;
masquer P1 ;
remplacer un choix live explicite ;
activer seule une fonction interdite par le musicien.
```

### 3.3. LAYER - couche

Autorite :

```text
P3/P4 selon qu'elle est choisie ou preparee.
```

La couche peut :

```text
ajouter une fonction sans diriger toute la forme ;
porter une inspiration secondaire ;
faire exister une autre scene comme couleur, tension ou soutien.
```

Regle :

```text
Une scene non dominante peut devenir couche.
Elle ne devient pas automatiquement DOM.
```

### 3.4. GESTE

Autorite :

```text
P2 si declenche live ;
P3 si prepare par scene ;
P4 si assigne.
```

Le geste peut :

```text
couper ;
ouvrir ;
contracter ;
faire bloom ;
retirer ;
faire revenir ;
pic de transgression ;
mutation timbrale ;
impact rare.
```

Regle :

```text
Un geste doit avoir une consequence ou une sortie.
```

### 3.5. ETAT

Autorite :

```text
P2/P3 selon choix live ou scene.
```

Un etat peut durer longtemps :

```text
suspension ;
immersion ;
proximite ;
halo force ;
corps suspendu ;
retour prepare ;
grave retire ;
transgression maintenue ;
hors-monde.
```

Regle :

```text
Un etat long est autorise s'il est decide.
Il ne doit pas etre confondu avec une derive automatique.
```

### 3.6. ANA - analyse

Autorite :

```text
P5 ordinaire ;
P1/P0 seulement si risque vital ou critique.
```

L'analyse peut :

```text
observer ;
qualifier ;
augmenter ou reduire la confiance ;
preparer ;
signaler ;
limiter une reaction ;
retirer une reaction expressive si danger ;
informer un protocole.
```

L'analyse ne peut pas :

```text
choisir DOM ;
choisir retour ;
choisir transgression ;
creer generation autonome ;
forcer monde spatial ;
transformer une source live essentielle hors P0/P1.
```

### 3.7. PROTO - protocole

Autorite :

```text
depend de sa source d'autorisation.
```

Un protocole peut :

```text
relier source, indice, cible et reaction ;
definir une dependance musicale ;
borner une influence ;
preparer une sortie.
```

Un protocole ne peut pas :

```text
activer sa cible seul ;
creer une scene ;
annuler une permission ;
remplacer P2.
```

### 3.8. GEN - generation

Autorite :

```text
P3/P4 si preparee ;
P2 si forcee ;
P5 si simple adaptation ;
P0/P1 seulement pour retrait/protection.
```

La generation peut :

```text
repondre ;
varier ;
maintenir ;
proposer comme signal ou preparation ;
accompagner ;
se retirer ;
naturaliser une fonction autorisee.
```

La generation ne peut pas :

```text
composer seule ;
devenir lead autonome par derive ;
choisir une forme ;
choisir retour ;
choisir transgression ;
imposer timbre electronique reconnaissable.
```

### 3.9. SPC/HAL - reverb, espace, halo

Autorite :

```text
P2 si Lock/Force/Cut ;
P3 si monde spatial de scene ;
P5 si integration douce ;
P1/P0 si protection.
```

Peut :

```text
integrer ;
enrichir ;
proteger lisibilite ;
reactiver l'espace ;
maintenir proximite ;
maintenir immersion ;
preparer retour ;
soutenir source ;
faire halo.
```

Ne peut pas :

```text
supprimer Halo Lock hors P0/P1 ;
changer monde expressif hors autorisation ;
devenir espace decoratif subi ;
masquer attaque principale sans signal.
```

### 3.10. AUTO-PRO

Autorite :

```text
P5 ordinaire ;
P1 si lisibilite vitale ;
P0 si securite critique.
```

Auto-Pro peut :

```text
proteger headroom ;
proteger feedback ;
proteger resonance dangereuse ;
proteger sub ;
proteger attaque ;
proteger source essentielle ;
reduire boue grave/reverb ;
limiter densite ;
signaler.
```

Auto-Pro ne peut pas :

```text
composer ;
choisir DOM ;
choisir retour ;
choisir transgression ;
choisir motif principal ;
choisir domination ;
changer monde expressif hors P0/P1.
```

---

## 4. Ordre decisionnel global

### 4.1. Vue courte

Ordre obligatoire :

```text
1. P0 : est-ce dangereux ?
2. P1 : est-ce illisible vitalement ?
3. P2 : qu'est-ce que le musicien a decide ?
4. CTX : quelle DOM, quelles couches, quel etat ?
5. PERM : la fonction est-elle autorisee ici ?
6. PROTO : quelle relation source/cible est pertinente ?
7. ANA : quels indices et quelle confiance ?
8. CONFLIT : une autre fonction prioritaire est-elle menacee ?
9. REACT : quelle reaction bornee ?
10. SIGNAL : que faut-il rendre lisible ?
11. SORTIE : comment maintenir, retirer ou transferer ?
```

### 4.2. Regle de lecture

```text
Lire la situation ne veut pas dire agir.
Agir exige une permission.
Une permission exige un contexte.
Un contexte exige une sortie possible.
```

### 4.3. Regle de non-surprise

Toute action audible forte doit etre comprehensible par au moins un de ces elements :

```text
choix live ;
scene ;
geste ;
etat ;
source clairement active ;
protection signalee ;
sortie preparee.
```

Si aucune raison n'est lisible :

```text
reaction bloquee ou reduite en trace.
```

---

## 5. Portes decisionnelles

### GATE-0 - Securite critique

Question :

```text
risque P0 ?
```

Si oui :

```text
proteger immediatement ;
limiter ou couper la cause ;
signaler ;
revenir a etat stable ;
ignorer les autorisations expressives contradictoires.
```

P0 concerne :

```text
clipping critique ;
feedback dangereux ;
resonance dangereuse ;
headroom critique ;
sub destructeur.
```

### GATE-1 - Protection mix vitale

Question :

```text
risque P1 ?
```

Si oui :

```text
limiter ;
retirer ;
clarifier ;
signaler ;
laisser P2 reprendre ensuite si le risque devient acceptable.
```

P1 concerne :

```text
sub illisible ;
attaque principale masquee ;
source essentielle masquee ;
boue grave/reverb ;
forme principale illisible.
```

### GATE-2 - Choix live explicite

Question :

```text
le musicien a-t-il decide quelque chose ?
```

Si oui :

```text
P2 gagne contre scene, assignation preparee et Auto-Pro ordinaire.
P0 reste prioritaire.
P1 peut limiter si lisibilite vitale.
```

Exemples :

```text
Halo Lock ;
Halo Force ;
Halo Cut ;
graves libres ;
didgeridoo libre ;
systeme adapte au didgeridoo ;
didgeridoo adapte au systeme ;
transgression ;
retour ;
refus de retour ;
monde spatial choisi ;
generation autorisee ;
generation bloquee.
```

### GATE-3 - Contexte de forme

Question :

```text
quelle DOM, quelles LAYER, quels GESTE, quels ETAT ?
```

Si le contexte est flou :

```text
ne pas ouvrir de grande reaction expressive ;
maintenir ;
preparer ;
signaler ambiguite ;
privilegier source live et protections.
```

### GATE-4 - Fonction nommee

Question :

```text
quelle fonction musicale precise la reaction sert-elle ?
```

Fonctions possibles :

```text
pression rythmique ;
suspension ;
retour ;
grave porteur ;
grave soutien ;
grave retire ;
guide harmonique ;
bloom gong ;
halo ;
proximite ;
immersion ;
espace reactif ;
ligne naturalisee ;
motif rythmique ;
polytexture ;
voix integree ;
transgression ;
protection ;
signalisation.
```

Si aucune fonction n'est nommee :

```text
reaction bloquee.
```

### GATE-5 - Permission scene / couche / geste / etat

Question :

```text
la fonction est-elle autorisee par DOM, LAYER, GESTE, ETAT ou P2 ?
```

Si non :

```text
ne pas agir ;
eventuellement signaler reaction bloquee ;
eventuellement preparer si scene voisine.
```

### GATE-6 - Protocole relationnel

Question :

```text
quelle source influence quelle cible, et pourquoi ?
```

Si la relation est non definie :

```text
ne pas inventer de dependance ;
agir seulement en protection P0/P1 ou maintien doux ;
laisser le choix live.
```

### GATE-7 - Indices et confiance

Question :

```text
les indices soutiennent-ils la reaction ?
```

Regle :

```text
CONF-0/1 : ne pas agir expressivement.
CONF-2 : preparer ou signaler.
CONF-3 : adapter une fonction deja autorisee.
CONF-4 : agir sur fonction deja autorisee.
CONF-5 : proteger.
CONF-X : ne pas choisir, signaler conflit, retirer reaction expressive.
```

Precision :

```text
CONF-4 ne cree pas de permission.
Elle permet seulement d'utiliser une permission deja ouverte.
```

### GATE-8 - Conflits

Question :

```text
quelle autre fonction serait degradee ?
```

Conflits typiques :

```text
didgeridoo libre vs generation reactive ;
grave musical vs grave spatial ;
gong bloom vs sub porteur ;
halo Lock vs attaque principale ;
techno suspendue vs pression rythmique ;
acid naturalise vs voix integree ;
motif utile vs motif autonome ;
transgression vs Auto-Pro ;
immersion longue vs retour corporel ;
reverb enrichissante vs boue ;
source live vs traitement trop actif.
```

Si conflit non resolu :

```text
reduire en trace ;
signaler ;
maintenir fonction prioritaire ;
attendre choix live ou convergence.
```

### GATE-9 - Borne de reaction

Question :

```text
jusqu'ou la reaction a-t-elle le droit d'aller ?
```

Bornes possibles :

```text
amplitude musicale ;
duree ;
champ spectral ;
role DOM/LAYER/GESTE/ETAT ;
degre d'autonomie ;
degre de reconnaissance ;
degre de reverb ;
degre de grave ;
degre de transgression ;
sortie ;
signalisation.
```

Si borne absente :

```text
reaction reduite ou bloquee.
```

### GATE-10 - Signalisation

Question :

```text
le musicien doit-il savoir qu'une decision a ete limitee, preparee ou bloquee ?
```

Signalisation obligatoire pour :

```text
P0 ;
P1 ;
P2 limite par P0/P1 ;
generation retiree ;
halo adapte ;
source protegee ;
grave limite ;
monde spatial degrade ;
reaction bloquee ;
retour prepare ;
conflit d'indices ;
confiance faible si utile.
```

### GATE-11 - Sortie

Question :

```text
comment cette reaction finit-elle ou se transforme-t-elle ?
```

Sorties possibles :

```text
maintien decide ;
retrait ;
dissolution ;
cut ;
retour corps ;
retour grave ;
retour pulse ;
silence ;
resolution ;
transfert DOM ;
transfert couche ;
passage en trace ;
retour source live ;
sortie longue ambigue ;
sortie de crise.
```

Regle :

```text
Une reaction expressive forte sans sortie est incomplete.
```

---

## 6. Statuts de reaction

### STAT-0 - Bloquee

Signification :

```text
la reaction est interdite ici.
```

Causes :

```text
pas de permission ;
confiance insuffisante ;
conflit non resolu ;
P0/P1 ;
fonction non nommee ;
sortie absente ;
choix live contraire.
```

Action :

```text
ne rien faire ;
signaler seulement si utile.
```

### STAT-1 - Preparee

Signification :

```text
la reaction peut etre tenue prete mais pas audible comme action forte.
```

Usage :

```text
retour possible ;
motif possible ;
contraction espace possible ;
grave de retour possible ;
sortie de suspension possible.
```

### STAT-2 - Trace

Signification :

```text
la fonction existe tres faiblement, comme memoire ou indice perceptif.
```

Usage :

```text
techno suspendue ;
ligne non frontale ;
grave discret ;
halo fin ;
source transformee minimale ;
retour non impose.
```

### STAT-3 - Active douce

Signification :

```text
la reaction agit mais reste reversible, accompagnee et bornee.
```

Usage :

```text
adaptation de grave ;
naturalisation ;
integration reverb ;
variation generative ;
renforcement source ;
contraction espace douce.
```

### STAT-4 - Active forte

Signification :

```text
la reaction devient musicalement frontale ou structurante.
```

Conditions :

```text
P2 ou P3 clair ;
fonction nommee ;
conflits resolus ;
sortie prevue ;
signalisation si risque.
```

Usage :

```text
bloom gong ;
transgression ;
immersion sound-system ;
ligne acid naturalisee frontale ;
halo force ;
retour grave ;
pression rythmique forte.
```

### STAT-5 - Limitee

Signification :

```text
la reaction est autorisee mais reduite par P0/P1 ou conflit.
```

Action :

```text
maintenir ce qui reste musicalement utile ;
signaler la limitation ;
ne pas supprimer plus que necessaire.
```

### STAT-6 - Retiree

Signification :

```text
la reaction est retiree musicalement.
```

Usage :

```text
motif trop autonome ;
grave conflictuel ;
halo subi ;
espace trop dense ;
generation decorative ;
retour refuse.
```

### STAT-7 - Coupee

Signification :

```text
la reaction est arretee franchement.
```

Conditions :

```text
P0 ;
P1 necessaire ;
Cut live ;
sortie decidee ;
effet de forme voulu.
```

### STAT-8 - Transferee

Signification :

```text
la fonction change de role.
```

Exemples :

```text
DOM devient couche ;
couche devient DOM ;
motif devient trace ;
grave porteur devient soutien ;
halo devient sortie ;
transgression devient texture ;
didgeridoo libre devient guide ;
gong bloom devient base spatiale.
```

---

## 7. Matrice autorite / reaction

### 7.1. P0

Peut :

```text
limiter ;
couper ;
retirer ;
proteger ;
signaler ;
forcer retour a un etat stable de protection.
```

Ne demande pas :

```text
permission scene ;
permission live ;
confiance artistique.
```

Doit :

```text
signaler ;
cesser quand le danger disparait ;
laisser revenir le choix musical ensuite.
```

### 7.2. P1

Peut :

```text
reduire grave ;
clarifier attaque ;
nettoyer boue ;
reduire halo ;
limiter generation ;
proteger source ;
degrader monde spatial si necessaire.
```

Ne peut pas :

```text
annuler durablement un choix expressif sans signal ;
transformer la forme ;
choisir retour ;
choisir scene.
```

### 7.3. P2

Peut :

```text
forcer ;
verrouiller ;
couper ;
ouvrir ;
fermer ;
maintenir ;
accepter risque non P0 ;
choisir transgression ;
choisir retour ;
refuser retour ;
choisir graves libres.
```

Limites :

```text
P0 toujours prioritaire ;
P1 peut limiter avec signal.
```

### 7.4. P3

Peut :

```text
autoriser fonctions ;
donner sens aux indices ;
preparer sorties ;
ouvrir familles generatives ;
ouvrir monde spatial ;
definir couches compatibles.
```

Ne peut pas :

```text
supplanter P2 ;
contourner P0/P1 ;
ouvrir automatiquement une fonction interdite.
```

### 7.5. P4

Peut :

```text
proposer organisation preparee ;
assigner role de source ;
donner comportement initial ;
faciliter le jeu.
```

Ne peut pas :

```text
resister a P2 ;
agir contre P3 ;
devenir decision invisible.
```

### 7.6. P5

Peut :

```text
adapter doucement ;
integrer ;
stabiliser ;
nettoyer ;
prevenir ;
preparer ;
signaler.
```

Ne peut pas :

```text
ouvrir une scene ;
ouvrir transgression ;
ouvrir retour ;
forcer motif ;
changer monde expressif ;
supprimer un choix live.
```

---

## 8. Superposition des scenes

### 8.1. Regle

Une seule scene est DOM.

Mais plusieurs inspirations peuvent coexister si elles n'ont pas la meme autorite.

Format :

```text
DOM : ce qui dirige.
LAYER : ce qui enrichit.
GESTE : ce qui intervient.
ETAT : ce qui persiste.
TRACE : ce qui reste perceptible sans agir.
```

### 8.2. Cas autorises

```text
SCN-3 Techno suspendue DOM
+ SCN-7 Acid naturalise en LAYER
+ SCN-4 Gong en GESTE bloom
+ SCN-5 Immersion en ETAT

SCN-1 Didgeridoo DOM
+ SCN-2 Pression rythmique en LAYER
+ SCN-8 Polytexture en LAYER legere
+ SCN-9 Transgression en GESTE

SCN-5 Sound-system DOM
+ SCN-4 Gong bloom en LAYER
+ SCN-3 Suspension en ETAT
+ SCN-8 Polytexture en texture
```

### 8.3. Cas a arbitrer

Si deux scenes demandent DOM :

```text
alternance ;
transition ;
transfert DOM ;
une scene devient LAYER ;
une scene devient GESTE ;
une scene devient ETAT ;
crise explicitement decidee.
```

### 8.4. Interdit

```text
Deux DOM non signalees qui dirigent simultanement la forme.
```

Risque :

```text
perte de direction ;
charge mentale ;
generation trop autonome ;
retour non lisible ;
grave contradictoire ;
espace sans intention.
```

---

## 9. Arbitres par domaine

### 9.1. Grave / sub / didgeridoo / gong

Question principale :

```text
qui porte le vrai grave maintenant ?
```

Modes autorises :

```text
GRV-A : didgeridoo guide harmoniquement ce qui est genere.
GRV-B : grave genere soutient discretement.
GRV-C : harmoniques du didgeridoo adaptees en hauteur si necessaire.
GRV-D : grave genere se retire en conflit deletere.
GRV-E : graves libres explicitement decides.
GRV-F : gong bloom porte base microtonale ou souffle grave.
GRV-G : grave spatial enrichit sans porter sub principal.
```

Decision :

```text
P0 : couper/limiter sub destructeur.
P1 : clarifier sub illisible ou source essentielle masquee.
P2 : respecter mode grave choisi si P0/P1 acceptables.
P3 : appliquer role de scene.
P5 : soutien/adaptation douce.
```

Signaler :

```text
conflit grave ;
grave retire ;
sub limite ;
didgeridoo adapte ;
gong limite ;
graves libres limites par P0/P1.
```

### 9.2. Didgeridoo libre / integre

Modes :

```text
DID-A : libre protege.
DID-B : systeme entier s'adapte au didgeridoo.
DID-C : didgeridoo adapte au systeme.
DID-D : guide harmonique.
DID-E : source fonctionnalisee.
DID-F : perturbateur.
```

Decision :

```text
Le mode DID est P2/P3.
L'analyse peut seulement aider a detecter conflit, partiels, attaques,
souffle, centre grave ou masquage.
```

Interdits :

```text
baisser automatiquement le didgeridoo hors P0/P1 ;
forcer le didgeridoo en basse ;
traiter le didgeridoo sans fonction ;
masquer la source essentielle.
```

### 9.3. Reverb / espace / halo

Questions :

```text
le son doit-il etre proche, immerge, hors-monde, reactif, naturel,
ou simplement coherent ?
le halo est-il voulu, subi, verrouille, force ou coupe ?
```

Modes :

```text
SPC-A : integration proche.
SPC-B : espace commun coherent.
SPC-C : immersion longue.
SPC-D : hors-monde.
SPC-E : espace reactif.
SPC-F : salle reelle exploitee.
SPC-G : halo source.
SPC-H : halo Lock.
SPC-I : halo Force.
SPC-J : halo Cut.
SPC-K : maintien anti-retrait decide.
```

Decision :

```text
P2 Lock/Force/Cut/maintien gagne contre Auto-Pro ordinaire.
P1 peut reduire boue ou attaque masquee.
P0 peut couper risque critique.
P3 monde spatial donne le cadre.
P5 integre et enrichit sans changer le monde.
```

Interdits :

```text
supprimer halo voulu hors P0/P1 ;
ouvrir grande reverb expressive sans scene ou choix ;
confondre reverb pro/coherente avec choix decoratif ;
laisser l'espace retirer le corps sans decision.
```

### 9.4. Generation / motifs

Questions :

```text
quelle famille genere ?
pour quelle fonction ?
avec quelle source ?
avec quelle autonomie ?
avec quelle naturalisation ?
avec quelle sortie ?
```

Decision minimale :

```text
GEN-C1 permission ;
GEN-C2 regime ;
GEN-C3 autonomie ;
GEN-C4 source/mapping ;
GEN-C5 naturalisation ;
GEN-C6 reconnaissance/cliche ;
GEN-C7 sortie ;
GEN-C8 signalisation.
```

Regle :

```text
Une generation peut proposer seulement comme signal ou preparation.
Elle n'agit pas a la place du musicien.
```

Interdits :

```text
generation libre non decidee ;
motif qui devient lead autonome par derive ;
timbre electronique reconnaissable hors exception explicite ;
pitch correction reconnaissable ;
retour choisi par generation ;
transgression choisie par generation.
```

### 9.5. Voix

Question :

```text
la voix est-elle presence, souffle, fragment, cri, texture ou source integree ?
```

Decision :

```text
La voix doit rester integree par fonction sonore ou virtualo-acoustique.
Elle peut etre exposee, mais pas posee hors integration.
```

Interdits :

```text
voix non integree ;
pitch correction reconnaissable ;
lead vocal banal ;
masquage P0/P1 invisible ;
effet vocal sans fonction.
```

### 9.6. Transgression

Question :

```text
est-ce une crise decidee, un geste, une couche, une texture ou une derive ?
```

Decision :

```text
P2/P3 requis pour transgression expressive.
P0 jamais contournable.
P1 peut etre accepte musicalement seulement si explicite et non critique.
Sortie obligatoire.
```

Interdits :

```text
transgression automatique par energie forte ;
masquage P0/P1 invisible ;
absence de sortie ;
confusion avec simple saturation technique.
```

### 9.7. Retour / suspension

Question :

```text
le retour est-il decide, prepare, refuse, differe ou seulement possible ?
```

Decision :

```text
Le retour peut etre prepare par indices.
Il ne doit pas etre impose.
La techno suspendue peut durer tres longtemps.
Le retour peut etre reinstalle par options cumulables.
```

Elements de retour possibles :

```text
grave ;
pulse ;
attaque ;
source live ;
silence ;
contraction espace ;
retour halo ;
retour ligne ;
retour corps ;
resolution ;
transfert DOM.
```

---

## 10. Scene par scene : decisions principales

### SCN-1 - Didgeridoo / systeme minimum

DOM :

```text
didgeridoo libre, guide, presence, perturbateur ou source transformable.
```

Decisions critiques :

```text
mode DID ;
mode grave ;
generation autorisee ou non ;
halo/proximite ;
retour/source ;
conflit grave.
```

Arbitrage :

```text
didgeridoo protege par defaut ;
systeme adapte si choisi ;
generation seulement en fonction ;
grave retire si conflit non decide ;
P1 source essentielle visible.
```

### SCN-2 - Techno corporelle naturalisee

DOM :

```text
pression rythmique naturalisee.
```

Decisions critiques :

```text
pulse lisible ou fantome ;
sub porteur ou soutien ;
attaque protegee ;
espace reactif ;
ligne ou texture en couche.
```

Arbitrage :

```text
corps prioritaire ;
espace ne doit pas effacer attaque hors decision ;
generation rythmique bornee ;
retour prepare sans obligation.
```

### SCN-3 - Techno suspendue tres longue

DOM :

```text
suspension active, potentiellement longue.
```

Decisions critiques :

```text
perte de corps decidee ou non ;
halo Lock/Force/Cut ;
grave trace ;
pulse fantome ;
retour prepare ou refuse.
```

Arbitrage :

```text
la suspension peut durer tres longtemps ;
le systeme prepare des retours sans les imposer ;
les traces corporelles peuvent rester faibles ;
P1 intervient seulement si lisibilite vitale ou boue.
```

### SCN-4 - Gong / bloom grave / metal-gong

DOM :

```text
gong, bloom, base microtonale, souffle grave ou metal-gong.
```

Decisions critiques :

```text
qui porte sub ;
partiels/battements ;
bloom grave ;
espace metal ;
transgression possible ;
resolution.
```

Arbitrage :

```text
gong peut orienter harmonie/microtonalite ;
sub precis et riche peut soutenir le souffle ;
P1 gere boue grave/reverb ;
sortie par contraction, dissolution ou retour grave.
```

### SCN-5 - Sound-system immersion / domination

DOM :

```text
pression, immersion, domination sonore decidee.
```

Decisions critiques :

```text
grave porteur ;
espace immersif ;
densite ;
risque accepte ;
corps maintenu ou suspendu ;
sortie.
```

Arbitrage :

```text
P2 peut accepter pression forte ;
P0 jamais ;
P1 signale les limites ;
immersion doit rester fonctionnelle, pas seulement decorative.
```

### SCN-6 - Voix exposee integree

DOM :

```text
voix comme source integree, presence, souffle, fragment, cri ou texture.
```

Decisions critiques :

```text
degre d'exposition ;
integration sonore ;
proximite/cavite ;
relation grave ;
fragment melodique ;
sortie.
```

Arbitrage :

```text
voix exposee possible ;
voix non integree non souhaitee ;
naturalisation ou contexte sonore obligatoire ;
pitch correction reconnaissable interdite.
```

### SCN-7 - Acid naturalise / ligne vivante

DOM :

```text
ligne naturalisee dans un passage ou une scene favorable.
```

Decisions critiques :

```text
source de naturalisation ;
degre de reconnaissance ;
autonomie ;
relation grave ;
seuil cliche ;
sortie.
```

Arbitrage :

```text
ligne frontale possible si decidee ;
trace possible en couche ;
motif autonome surveille ;
re-naturaliser ou retirer si cliche.
```

### SCN-8 - Polytexture rythmico-spectrale

DOM :

```text
entre-deux percussif, harmonique, spectral, vocal, microtonal ou partiel.
```

Decisions critiques :

```text
une couche directrice ;
densite ;
interlocking ;
partiels ;
espace ;
grave ;
sortie.
```

Arbitrage :

```text
polytexture ne signifie pas surcharge ;
si trop de couches veulent diriger, simplifier ou signaler ;
attaque/source essentielle protegees.
```

### SCN-9 - Transgression controlee

DOM :

```text
masse, rugissement, voix brute integree, saturation, espace immense,
dissonance ou microtonalite, decides comme crise ou force.
```

Decisions critiques :

```text
risque accepte ;
P1 visible ;
P0 non negociable ;
sortie ;
source protegee ;
retour ou consequence.
```

Arbitrage :

```text
transgression expressive exige P2/P3 ;
energie forte seule ne suffit pas ;
sortie obligatoire ;
Auto-Pro reste visible.
```

---

## 11. Decision generation detaillee

### 11.1. Demandes generatives possibles

```text
demarrer un objet ;
continuer un objet ;
varier un objet ;
naturaliser un objet ;
proposer une option ;
repondre a une source ;
maintenir une trace ;
retirer un objet ;
transferer role ;
sortir.
```

### 11.2. Conditions pour demarrer

Demarrage audible :

```text
permission GEN-C1 ouverte ;
regime GEN-C2 nomme ;
autonomie GEN-C3 bornee ;
source GEN-C4 definie ;
naturalisation GEN-C5 compatible ;
sortie GEN-C7 definie ;
conflits P0/P1 absents ou geres ;
signalisation si risque.
```

Si une condition manque :

```text
preparer, trace, ou bloquer.
```

### 11.3. Conditions pour continuer

Un objet genere peut continuer si :

```text
il sert encore sa fonction ;
il ne prend pas trop d'autonomie ;
il ne masque pas source essentielle ;
il ne devient pas timbre electronique reconnaissable non decide ;
il a encore une sortie possible ;
il reste compatible avec DOM/LAYER/GESTE/ETAT.
```

### 11.4. Conditions pour proposer

Proposer signifie :

```text
signaler ;
preparer ;
rendre disponible ;
faire entendre une trace si autorisee.
```

Proposer ne signifie pas :

```text
declencher ;
composer ;
choisir ;
forcer.
```

### 11.5. Conditions pour retirer

Retirer si :

```text
motif trop autonome ;
cliche electronique ;
source masquee ;
grave conflictuel ;
dense sans fonction ;
retour refuse ;
fonction finie ;
P1/P0.
```

Retrait possible :

```text
cut ;
dissolution ;
passage en trace ;
transfert a source live ;
retour grave ;
silence.
```

---

## 12. Decision reverb / espace / halo detaillee

### 12.1. Separation des roles

Il faut separer :

```text
coherence mix ;
integration source ;
proximite ;
immersion ;
hors-monde ;
halo voulu ;
halo subi ;
reaction spatiale ;
exploitation de salle ;
protection P0/P1.
```

La coherence mix n'est pas un choix esthetique arbitraire.

Elle doit rester :

```text
propre ;
lisible ;
professionnelle ;
adaptative ;
non decorative ;
non intrusive hors besoin musical.
```

### 12.2. Decision de proximite

Autorisee si :

```text
source importante ;
voix integree ;
didgeridoo presence ;
retour source ;
moment intime ;
besoin de lisibilite.
```

Reaction :

```text
reduire distance percue ;
garder corps ;
proteger attaque ;
controler queue ;
maintenir coherence avec salle.
```

### 12.3. Decision d'immersion

Autorisee si :

```text
SCN-3 ;
SCN-4 ;
SCN-5 ;
SCN-9 ;
monde spatial choisi ;
etat long decide.
```

Reaction :

```text
ouvrir espace ;
enrichir perception ;
faire durer ;
donner souffle ;
maintenir pression ;
preparer sortie.
```

Garde-fou :

```text
ne pas effacer corps hors decision ;
ne pas creer boue grave/reverb ;
ne pas masquer source essentielle ;
signal P1 si limite.
```

### 12.4. Decision halo

Questions :

```text
halo voulu ?
halo subi ?
halo Lock ?
halo Force ?
halo Cut ?
maintien anti-retrait decide ?
```

Si Halo Lock/Force/maintien :

```text
Auto-Pro ordinaire ne le supprime pas.
P1 peut limiter avec signal.
P0 peut couper.
```

Si halo subi :

```text
reduire ;
contracter ;
clarifier ;
signaler si limitation forte.
```

### 12.5. Decision salle reelle

La salle peut etre :

```text
inconnue ;
problematique ;
neutre ;
enrichissante ;
active ;
dangereuse.
```

Avec un seul micro de mesure, la conception doit rester compatible avec :

```text
mesures multiples a positions differentes ;
observation prudente ;
adaptation progressive ;
aucune confiance excessive ;
priorite P0/P1 ;
exploitation perceptive seulement si coherente.
```

Le systeme ne doit pas supposer :

```text
mesure parfaite ;
modele complet de la salle ;
correction absolue ;
decision esthetique automatique.
```

---

## 13. Signalisation decisionnelle

### 13.1. Signaux indispensables

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

### 13.2. Niveaux de signal

```text
SIG-0 : interne seulement.
SIG-1 : discret.
SIG-2 : lisible en live.
SIG-3 : alerte forte.
```

Regle :

```text
P0 = SIG-3.
P1 = SIG-2 ou SIG-3 selon gravite.
P2 limite = SIG-2.
reaction bloquee expressive = SIG-1 ou SIG-2.
preparation non urgente = SIG-0 ou SIG-1.
```

### 13.3. Risque de surcharge

La signalisation ne doit pas devenir une deuxieme interface bruyante.

Regle :

```text
signaler ce qui modifie la jouabilite ;
ne pas signaler chaque micro-adaptation ;
regrouper les informations proches ;
prioriser P0/P1/P2.
```

---

## 14. Defauts prudents

Quand le systeme ne sait pas :

```text
ne pas ouvrir nouvelle couche ;
ne pas changer DOM ;
ne pas changer monde spatial ;
ne pas imposer retour ;
ne pas imposer transgression ;
ne pas demarrer motif principal ;
ne pas grossir reverb ;
ne pas remplir silence ;
proteger P0/P1 ;
maintenir ou passer en trace ;
signaler si utile.
```

Quand le systeme sait partiellement :

```text
preparer ;
adapter doucement ;
choisir reaction reversible ;
favoriser source live ;
favoriser lisibilite ;
favoriser sortie disponible ;
attendre convergence ou choix live.
```

Quand le musicien a decide :

```text
respecter P2 ;
limiter seulement P0/P1 ;
signaler toute limitation ;
ne pas corriger esthetiquement contre le choix.
```

---

## 15. Charge mentale live

Le systeme decisionnel doit preserver la regle :

```text
1. Quelle scene domine ?
2. Quelles couches sont actives ?
3. Quelle sortie ou consequence est preparee ?
```

Les decisions sous la main doivent etre regroupees par fonction :

```text
DOM ;
LAYER ;
mode didgeridoo ;
mode grave ;
permission generation ;
regime generation ;
halo/espace ;
retour ;
transgression ;
risque accepte ;
Cut/Lock/Force.
```

Le reste doit etre :

```text
prepare par scene ;
borne par protocoles ;
observe par analyses ;
protege par Auto-Pro ;
signale si pertinent.
```

---

## 16. Cas decisionnels critiques

### CAS-1 - Energie forte

Ne signifie pas automatiquement :

```text
transgression.
```

Peut signifier :

```text
pression ;
peak ;
source intense ;
P1 ;
masquage ;
simple jeu fort.
```

Decision :

```text
verifier P2/P3 ;
proteger P0/P1 ;
sinon maintenir ou signaler.
```

### CAS-2 - Pulse implicite

Ne signifie pas automatiquement :

```text
retour beat.
```

Peut signifier :

```text
memoire corporelle ;
interlocking ;
preparation ;
techno suspendue ;
simple regularite.
```

Decision :

```text
preparer ;
laisser trace ;
retour seulement si scene/geste/choix.
```

### CAS-3 - Partiels stables

Ne signifie pas automatiquement :

```text
ligne melodique.
```

Peut signifier :

```text
guide harmonique ;
tension ;
microtonalite ;
resonance ;
acid naturalise possible ;
simple couleur.
```

Decision :

```text
utiliser seulement si DID/GRV/GEN-LIN autorise ;
sinon trace.
```

### CAS-4 - Queue longue

Ne signifie pas automatiquement :

```text
ambient subi.
```

Peut signifier :

```text
halo voulu ;
gong bloom ;
immersion ;
hors-monde ;
perte d'attaque ;
boue ;
etat long decide.
```

Decision :

```text
verifier Halo Lock/Force/Cut ;
verifier scene ;
reduire seulement P1 ou halo subi ;
ne pas couper espace long decide.
```

### CAS-5 - Motif efficace

Ne signifie pas automatiquement :

```text
motif principal.
```

Peut signifier :

```text
trace utile ;
pression ;
ligne ;
retour ;
cliche ;
autonomie dangereuse.
```

Decision :

```text
verifier GEN-C1 a GEN-C8 ;
surveiller reconnaissance ;
retirer si autonomie non voulue.
```

### CAS-6 - Silence

Ne signifie pas automatiquement :

```text
vide a remplir.
```

Peut signifier :

```text
attente ;
resolution ;
source absente ;
pre-retour ;
espace voulu ;
probleme technique ;
refus de retour.
```

Decision :

```text
respecter ;
preparer seulement si contexte ;
signaler si source attendue absente et utile.
```

---

## 17. Questions restantes

Questions non bloquantes :

```text
1. Quelle granularite de signalisation d'incertitude sera vraiment jouable ?

2. En setup didgeridoo seul, quels raccourcis P2 doivent etre absolument
   sous la main : mode DID, mode grave, generation, halo, retour, transgression ?

3. Pour le maintien anti-retrait du halo, faut-il un seul verrou global
   ou un verrou par monde/scene/source ?

4. Pour les graves libres, faut-il un mode unique ou plusieurs nuances :
   sub libre, grave spatial libre, bloom libre, conflit accepte ?

5. Pour la generation, quels signes live doivent differencier :
   trace, proposition, variation active, autonomie limitee ?

6. Pour la salle reelle, quel niveau de prudence appliquer si les informations
   sont insuffisantes mais la salle semble enrichissante ?

7. Pour la transgression, quels elements doivent rester visibles pendant la crise :
   P1, sortie, source protegee, risque accepte, retour possible ?
```

---

## 18. Decision v0.1

Le systeme decisionnel conceptuel Vesperare est defini comme un arbitre.

Il assemble :

```text
DOM/LAYER/GESTE/ETAT ;
P0/P1/P2/P3/P4/P5 ;
PROTO/SDC ;
IND/OBS/INT/CONF/REACT ;
GEN-C1 a GEN-C8 ;
SPC/HAL ;
Auto-Pro ;
signalisation ;
sorties.
```

Il fixe :

- un ordre de decision global ;
- des portes decisionnelles ;
- des statuts de reaction ;
- une matrice d'autorite ;
- des arbitres par domaine ;
- une logique de superposition des scenes ;
- des decisions detaillees pour generation, reverb, espace et halo ;
- des defauts prudents ;
- des cas ambigus critiques.

Il confirme :

```text
les indices ne decident pas ;
les protocoles n'activent pas seuls ;
la generation ne compose pas seule ;
la reverb n'est pas un decor automatique ;
Auto-Pro protege sans composer ;
P2 reste souverain hors P0/P1 ;
P0 reste non negociable ;
P1 doit etre visible quand il limite ;
les scenes peuvent se superposer par DOM/LAYER/GESTE/ETAT ;
une reaction expressive forte exige sortie.
```

Prochaine etape recommandee :

```text
AUDIT_COMPATIBILITE_SYSTEME_DECISIONNEL_AVEC_CORPUS_v0_1
```

But :

- verifier que ce systeme ne durcit pas trop la pratique live ;
- verifier qu'il ne transforme pas les scenes en cases etanches ;
- verifier que P0/P1/P2/P3/P4/P5 restent coherents ;
- verifier que generation, reverb, halo, didgeridoo, grave, gong, voix et transgression restent compatibles ;
- verifier que les questions restantes sont utiles et non bloquantes ;
- preparer ensuite une architecture fonctionnelle abstraite.

Hors perimetre de l'audit :

```text
algorithmes ;
seuils ;
routings ;
devices ;
patch ;
interface finale.
```

---

## 19. Suivi

Action realisee apres cette specification :

```text
AUDIT_COMPATIBILITE_SYSTEME_DECISIONNEL_AVEC_CORPUS_v0_1.md
```

Conclusion :

```text
le systeme decisionnel est compatible avec le corpus actif apres deux
corrections mineures.
```

Corrections integrees :

```text
COR-DEC-A : P0 force un retour a un etat stable de protection,
pas un retour musical.

COR-DEC-B : un objet genere peut rester compatible avec
DOM/LAYER/GESTE/ETAT.
```

Prochaine action :

```text
SPECIFICATION_ARCHITECTURE_FONCTIONNELLE_ABSTRAITE_VESPERARE_v0_1
```

Objectif :

- transformer les decisions conceptuelles en blocs fonctionnels abstraits ;
- definir les grandes familles de modules sans devices ;
- definir les entrees/sorties conceptuelles ;
- definir quelles donnees circulent entre scenes, sources, analyses, protocoles, generation, reverb, Auto-Pro et signalisation ;
- preparer l'architecture Max for Live sans commencer le patch.
