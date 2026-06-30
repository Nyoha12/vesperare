# AUDIT COMPATIBILITE PROTOCOLES SIDECHAINS AVEC CORPUS v0.1

Projet : Vesperare
Date : 2026-06-21
Statut : audit de compatibilite interne apres specification protocoles / sidechains

Documents audites :

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

- verifier que les protocoles n'ajoutent pas d'autorite automatique excessive ;
- verifier que les sidechains conceptuels restent compatibles avec les scenes ;
- verifier que les priorites de grave sont coherentes ;
- verifier que reverb, halo et retour restent sous choix live, scene ou protection ;
- verifier que la generation reste fonction-bound ;
- identifier les points a clarifier avant la specification des analyses/indices.

Hors perimetre :

- architecture technique ;
- routings ;
- devices ;
- algorithmes ;
- seuils ;
- interface ;
- controleur physique ;
- evaluation pratique.

---

## 1. Verdict general

Verdict :

```text
Compatible apres trois clarifications mineures.
La fiche protocoles / sidechains peut rester document actif.
```

Les protocoles respectent :

```text
DOM / LAYER / GESTE / ETAT ;
P0 / P1 / P2 / P3 / P4 / P5 ;
Auto-Pro borne ;
generation fonction-bound ;
retour prepare mais non impose ;
reverb/espace comme fonction perceptive ;
grave comme fonction corporelle critique ;
didgeridoo libre ou integre selon modes ;
transgression situee et sortie obligatoire.
```

Corrections appliquees pendant l'audit :

```text
COR-PROTO-A - SDC
Ajout : un sidechain conceptuel n'active pas une cible par lui-meme.

COR-PROTO-B - Didgeridoo libre
Ajout : les sidechains du didgeridoo libre ne le transforment pas en pilote cache.

COR-PROTO-C - Generation par scene
Ajout : une scene seule ne suffit pas a autoriser un objet generatif flottant.
```

Conclusion :

```text
La fiche protocoles est assez coherente pour servir de base a l'etape suivante.
La prochaine specification doit porter sur les analyses/indices conceptuels,
la confiance de detection, les usages et les limites,
pas encore sur les algorithmes ou les routings.
```

---

## 2. Compatibilite avec le noyau jouable

### 2.1. DOM / LAYER / GESTE / ETAT

Le noyau impose :

```text
une seule DOM dirige ;
0 a 2 LAYER continues enrichissent ;
GESTE ponctuel avec consequence ;
ETAT persistant decide ;
Auto-Pro protege sans composer.
```

La fiche protocoles respecte cette structure.

Indices :

```text
un protocole autorise, limite, oriente, protege, signale ou accompagne ;
il ne cree pas une scene par lui-meme ;
les protocoles de scene indiquent dominantes et compatibilites ;
les scenes ne sont pas des blocs etanches.
```

Statut :

```text
compatible.
```

Point fort :

```text
Les protocoles ne remplacent pas la DOM.
Ils decrivent les relations internes d'une DOM, d'une LAYER, d'un GESTE ou d'un ETAT.
```

Point a surveiller :

```text
Trop de protocoles visibles simultanement detruirait la charge mentale.
```

Decision :

```text
Les protocoles restent un plan de comportement.
Ils ne doivent pas devenir une surface live brute.
```

### 2.2. Superposition des scenes

Risque audite :

```text
les scenes pourraient etre lues comme exclusives.
```

Resolution :

```text
La fiche protocoles dit explicitement que les scenes ne sont pas des blocs etanches.
Elle maintient la logique :
DOM unique + LAYER compatibles + GESTE + ETAT.
```

Exemples compatibles :

```text
techno suspendue + didgeridoo libre ;
gong bloom + espace immense ;
voix integree + acid trace ;
polytexture + pression rythmique ;
transgression + sortie retour source.
```

Statut :

```text
compatible.
```

### 2.3. Charge mentale

Risque :

```text
PROTO, SDC, SCN, GEN, GRV, DID, SPC, HAL peuvent devenir trop nombreux.
```

Resolution :

```text
La fiche protocoles est un document de conception.
La surface future devra compresser ces protocoles en controles plus simples.
```

Statut :

```text
compatible sous condition.
```

Condition :

```text
Ne pas exposer les protocoles comme liste de boutons.
Les exposer plus tard comme modes, permissions, alertes, macros ou comportements.
```

---

## 3. Compatibilite du modele d'autorite

### 3.1. P0 / P1 / P2

Le corpus impose :

```text
P0 gagne toujours ;
P1 protege la lisibilite vitale ;
P2 choix live explicite gagne contre scene/assignation/Auto-Pro ordinaire.
```

La fiche protocoles reprend cette matrice.

Statut :

```text
compatible.
```

Point sensible :

```text
P1 peut etre accepte explicitement comme risque musical dans certains cas.
```

Interpretation correcte :

```text
P1 accepte ne veut pas dire P1 ignore.
Cela veut dire : le musicien accepte une perte de lisibilite comme fonction,
tant que P0 reste intact et que la perte est signalee.
```

Action future :

```text
La specification des analyses/indices devra distinguer :
P1 technique ;
P1 musicalement acceptable ;
P1 non acceptable ;
P0 non negociable.
```

### 3.2. Auto-Pro

Le corpus impose :

```text
Auto-Pro = hygiene + coherence + protection ;
Auto-Pro != composition automatique.
```

La fiche protocoles respecte cette limite.

Auto-Pro peut :

```text
proteger headroom ;
limiter feedback ;
proteger sub ;
proteger attaque ;
proteger source essentielle ;
reduire boue ;
adapter doucement coherence et salle ;
signaler intervention.
```

Auto-Pro ne peut pas :

```text
choisir scene dominante ;
declencher retour ;
declencher transgression ;
changer de monde expressif principal ;
choisir motif principal ;
imposer domination ;
imposer perte longue du corps.
```

Statut :

```text
compatible.
```

### 3.3. Permission de scene

Risque :

```text
permission de scene lue comme apparition automatique.
```

La fiche protocoles l'interdit explicitement.

Statut :

```text
compatible.
```

Correction complementaire appliquee :

```text
La scene seule ne suffit pas a autoriser un objet generatif flottant.
Elle doit nommer fonction, monde, naturalisation et sortie.
```

### 3.4. Sidechain conceptuel

Risque :

```text
un SDC pourrait etre compris comme activation automatique de cible.
```

Correction appliquee :

```text
un SDC influence seulement une cible deja autorisee
par scene, couche, geste, etat, choix live, P0 ou P1.
```

Statut :

```text
compatible apres correction.
```

---

## 4. Compatibilite grave / sub / gong

### 4.1. Porteur du vrai sub

Le corpus impose :

```text
une seule fonction porte le vrai sub lisible par defaut ;
exceptions possibles si scene ou choix live ;
P0/P1 protegent toujours.
```

La fiche protocoles formalise :

```text
didgeridoo guide ;
soutien discret ;
adaptation harmonique de couches traitees ;
retrait grave genere ;
gong bloom ;
sub ponctuel non identifiable ;
graves libres.
```

Statut :

```text
compatible.
```

Point fort :

```text
Le grave est traite comme fonction corporelle critique,
pas comme simple niveau ou couleur.
```

### 4.2. Priorite de grave quand rien ne tranche

La fiche garde une question ouverte :

```text
quel ordre preferer quand aucune scene ne tranche ?
```

Mais elle donne deja un defaut suffisant :

```text
P0/P1 ;
trace / soutien discret / retrait ;
graves libres seulement explicites ;
bloom seulement scene ou choix live ;
sub ponctuel seulement fonctionnel.
```

Statut :

```text
non bloquant.
```

Decision provisoire :

```text
Si aucune scene ne tranche :
1. proteger P0/P1 ;
2. conserver didgeridoo/source essentielle ;
3. passer le grave genere en soutien, trace ou retrait ;
4. ne pas activer bloom/graves libres/sub porteur sans choix.
```

### 4.3. Didgeridoo / grave

La fiche protocoles respecte les arbitrages utilisateur :

```text
didgeridoo peut guider ;
grave peut soutenir ;
harmoniques traitees peuvent s'adapter ;
grave genere peut se retirer ;
graves libres possibles ;
didgeridoo ne doit pas etre baisse automatiquement hors P0/P1.
```

Statut :

```text
compatible.
```

Correction appliquee :

```text
les sidechains du didgeridoo libre ne le transforment pas en pilote cache.
```

### 4.4. Gong bloom / base microtonale

La fiche protocoles respecte :

```text
gong comme masse, souffle, bloom, battements, bas-mediums,
base partielle ou tension microtonale ;
sub protege ;
pas de nappe indistincte subie ;
bloom permanent seulement si decide.
```

Statut :

```text
compatible.
```

Point a approfondir plus tard :

```text
La future specification des analyses devra distinguer :
attaque gong ;
queue ;
partiels ;
battements ;
bas-mediums ;
sub ;
densite ;
decay.
```

### 4.5. Grave musical vs grave spatial

La fiche protocoles resout une fragilite precedente :

```text
GRV musical porte corps, pression, basse-motif ou guide harmonique.
GSP porte appartenance, souffle, distance, bloom ou pression d'espace.
Le vrai sub reste protege.
```

Statut :

```text
compatible.
```

Residual :

```text
les analyses exactes devront dire comment reconnaitre un conflit grave
avant de choisir soutien, trace, retrait ou bloom.
```

---

## 5. Compatibilite didgeridoo

### 5.1. Setup minimum

Le corpus impose :

```text
minimum didgeridoo seul + PC ;
didgeridoo libre possible ;
systeme adapte possible ;
didgeridoo adapte possible ;
guide harmonique possible ;
source traitee possible ;
perturbateur possible.
```

La fiche protocoles couvre ces modes.

Statut :

```text
compatible.
```

### 5.2. Didgeridoo libre

Risque :

```text
sidechains du didgeridoo libre lus comme controle automatique du systeme.
```

Correction appliquee :

```text
les sidechains servent seulement a proteger, signaler ou prolonger discretement
si la scene, le halo ou une protection l'autorise deja.
```

Statut :

```text
compatible apres correction.
```

### 5.3. Didgeridoo guide harmonique

La fiche respecte :

```text
partiels -> ligne ;
bourdon -> grave ;
formants -> acid naturalise ;
souffle -> halo/texture ;
attaques -> rythme.
```

Garde-fous presents :

```text
suivi souple ;
variation ;
micro-deviation ;
retrait si conflit ;
pas de quantification stylistique automatique ;
pas de gamme imposee non decidee ;
pas de ligne lead synthetique banale.
```

Statut :

```text
compatible.
```

### 5.4. Didgeridoo source fonctionnalisee

La fiche exige :

```text
scene ou choix live ;
fonction nommee ;
source respectee ;
sortie prevue.
```

Statut :

```text
compatible.
```

Point a surveiller :

```text
Plus la transformation sera forte,
plus la future specification devra indiquer ce qui reste perceptible :
source, geste, souffle, partiels, monde ou fonction.
```

---

## 6. Compatibilite reverb / espace / halo

### 6.1. Monde spatial principal

Le corpus impose :

```text
un monde spatial est une fonction perceptive ;
Auto-Pro peut adapter a l'interieur du monde choisi ;
Auto-Pro ne remplace pas le monde expressif hors P0/P1.
```

La fiche protocoles reprend exactement cette logique.

Statut :

```text
compatible.
```

### 6.2. Espaces combinables

Risque :

```text
les mondes spatiaux pourraient etre lus comme presets exclusifs.
```

La fiche reste compatible car elle parle de :

```text
monde principal ;
sidechains utiles ;
modulations internes ;
grave spatial ;
halo ;
reactivite ;
protection.
```

Statut :

```text
compatible.
```

### 6.3. Espace reactif

La fiche autorise :

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

Elle interdit :

```text
changer de monde sans permission ;
masquer attaque principale ;
remplir le silence automatiquement ;
forcer ambient subi.
```

Statut :

```text
compatible.
```

Point a surveiller :

```text
La future specification des analyses devra eviter qu'une detection d'energie
devienne un changement expressif de monde.
```

### 6.4. Halo Lock / Force / Cut / Safe force

Le corpus impose :

```text
Lock, Force, Cut = choix live ou scene ;
Auto-Pro peut limiter seulement P0/P1 ;
Halo non decide qui floute la fonction = risque.
```

La fiche protocoles respecte cette logique.

Statut :

```text
compatible.
```

Point a clarifier plus tard :

```text
Safe force doit etre distingue de Force :
Force = choix fort pouvant etre limite ;
Safe force = choix fort qui accepte explicitement les protections.
```

### 6.5. Reverb comme enrichissement perceptif

La fiche protocoles respecte :

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

Garde-fou present :

```text
enrichir la perception ne signifie pas ajouter de la queue partout.
```

Statut :

```text
compatible.
```

### 6.6. Salle reelle

La fiche respecte :

```text
la salle enrichit ou contraint ;
elle ne choisit pas la scene ;
elle peut influencer grave, feedback, resonance, attaque, proximite, immersion.
```

Statut :

```text
compatible.
```

Point a porter a l'etape suivante :

```text
avec un seul micro de mesure, la specification future devra rester conceptuelle :
quels indices de salle sont utiles, pas comment les mesurer exactement.
```

---

## 7. Compatibilite generation / motifs

### 7.1. Generation fonction-bound

Le corpus impose :

```text
source ;
fonction ;
role DOM/LAYER/GESTE/ETAT ;
autonomie ;
naturalisation ;
controle live ;
sortie.
```

La fiche protocoles reprend ce cadre.

Statut :

```text
compatible.
```

Correction appliquee :

```text
si la generation vient surtout d'une scene,
la scene doit nommer fonction, monde, naturalisation et sortie.
```

### 7.2. Rythme / pression / interlocking

La fiche respecte :

```text
pression rythmique ;
interlocking ;
micro-pulse ;
accent fantome ;
attaque naturalisee ;
rythme spatial ;
pression sans kick explicite.
```

Garde-fous :

```text
pas de pattern techno standard par defaut ;
pas de boucle autonome ;
pas de retour automatique ;
une couche directrice si polytexture dense.
```

Statut :

```text
compatible.
```

### 7.3. Ligne / acid naturalise / melodie

La fiche respecte :

```text
ligne vivante possible ;
basse-motif possible ;
acid naturalise possible ;
fragment melodique possible ;
hook minimal situe possible.
```

Interdits maintenus :

```text
cliche 303 par defaut ;
squelch reconnaissable non decide ;
auto-tune reconnaissable ;
lead synth banal ;
motif qui dirige hors scene.
```

Statut :

```text
compatible.
```

Point a clarifier plus tard :

```text
source par defaut d'une ligne naturalisee :
didgeridoo, voix, cavite, friction, gong ou grave.
```

### 7.4. Memoire / suspension

La fiche respecte :

```text
techno suspendue tres longue ;
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

Statut :

```text
compatible.
```

---

## 8. Compatibilite voix

La fiche protocoles respecte :

```text
voix presente ;
voix brute ;
voix soufflee ;
voix criee ;
voix fragmentaire ;
voix quasi-melodique ;
integration par monde, cavite, souffle-air, halo, fragment spectral ou texture.
```

Interdits maintenus :

```text
pitch correction reconnaissable ;
auto-tune identifiable ;
voix pop/chanson par defaut ;
voix exposee sans monde ;
voix lead hors scene.
```

Statut :

```text
compatible.
```

Point a clarifier plus tard :

```text
quels traitements d'integration sont prioritaires :
proche, cavite, souffle-air, halo source, fragment spectral, texture.
```

---

## 9. Compatibilite retour / maintien / sortie

### 9.1. Retour prepare

Le corpus impose :

```text
retour preparable ;
retour jamais impose automatiquement ;
perte longue du corps acceptable si decidee.
```

La fiche protocoles respecte :

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

Statut :

```text
compatible.
```

### 9.2. Sortie de transgression

La fiche respecte :

```text
sortie possible par silence, retrait, retour du corps, resolution grave,
extinction gong, source live seule, monde contracte, halo coupe ou trace residuelle.
```

Statut :

```text
compatible.
```

### 9.3. Retour source

La fiche respecte :

```text
retirer generation ;
reduire halo ;
proche enrichi ;
laisser attaque respirer ;
retirer grave genere ;
mettre en avant source sans sur-exposition.
```

Statut :

```text
compatible.
```

---

## 10. Compatibilite transgression

La fiche respecte les transgressions souhaitees :

```text
masse enorme ;
rugissement ;
saturation organique ;
voix brute integree ;
espace immense ;
dissonance ;
microtonalite ;
domination.
```

Conditions maintenues :

```text
scene ou choix live ;
fonction nommee ;
P0 protege ;
sortie prevue ;
source ou monde perceptif identifiable si possible.
```

Feedback :

```text
La fiche clarifie que feedback controle reste une source conceptuelle de crise,
pas une permission technique ouverte.
P0 feedback dangereux gagne toujours.
```

Statut :

```text
compatible.
```

---

## 11. Compatibilite avec les scenes

### 11.1. SCN-1 Didgeridoo / systeme minimum

Statut :

```text
compatible.
```

Raison :

```text
DID libre protege ;
generation reponse/variation ;
0 a 2 couches continues ;
grave retrait ou soutien si conflit.
```

### 11.2. SCN-2 Techno corporelle naturalisee

Statut :

```text
compatible.
```

Raison :

```text
pression rythmique sans timbre techno standard ;
grave corporel protege ;
retour prepare possible.
```

### 11.3. SCN-3 Techno suspendue tres longue

Statut :

```text
compatible.
```

Raison :

```text
maintien long possible ;
retour preparable ;
aucun retour automatique.
```

### 11.4. SCN-4 Gong / bloom grave / metal-gong

Statut :

```text
compatible.
```

Raison :

```text
bloom decide ;
sub protege ;
partiels et queues comme fonctions.
```

### 11.5. SCN-5 Sound-system immersion / domination

Statut :

```text
compatible.
```

Raison :

```text
immersion possible sans domination ;
domination explicite ;
sub protege.
```

### 11.6. SCN-6 Voix exposee integree

Statut :

```text
compatible.
```

Raison :

```text
voix off ou integree ;
pas de pitch correction reconnaissable ;
retour source possible.
```

### 11.7. SCN-7 Acid naturalise / ligne vivante

Statut :

```text
compatible.
```

Raison :

```text
source de ligne obligatoire ;
pas de cliche 303/squelch par defaut ;
ligne frontale possible si fonction claire.
```

### 11.8. SCN-8 Polytexture rythmico-spectrale

Statut :

```text
compatible.
```

Raison :

```text
une couche directrice ;
densite lisible ;
nettoyage possible.
```

### 11.9. SCN-9 Transgression controlee

Statut :

```text
compatible.
```

Raison :

```text
transgression off par defaut ;
P0 jamais contournable ;
sortie obligatoire.
```

---

## 12. Compatibilite des automatisations

Automatisations autorisees dans la fiche protocoles :

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

Statut :

```text
compatible.
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

Statut :

```text
compatible.
```

Point fort :

```text
La fiche separe correctement :
automations protectrices ;
automations expressives autorisees ;
choix live ;
permissions de scene ;
interdits par defaut.
```

---

## 13. Zones fragiles restantes

### FRAG-PROTO-1 - Trop de protocoles comme surface live

Risque :

```text
La liste des protocoles est trop grande pour etre jouee telle quelle.
```

Decision :

```text
Les protocoles sont un plan de comportement.
La surface future devra les compresser.
```

### FRAG-PROTO-2 - P1 accepte

Risque :

```text
P1 accepte pourrait devenir excuse pour laisser le mix perdre sa lisibilite.
```

Decision :

```text
P1 accepte doit rester une decision de transgression ou de scene,
avec signalisation.
P0 reste non negociable.
```

### FRAG-PROTO-3 - Analyse d'energie trop puissante

Risque :

```text
energie globale -> changement de monde, retour ou transgression.
```

Decision :

```text
L'energie globale ne doit pas suffire seule.
Elle peut contribuer a interpretation, pas diriger.
```

### FRAG-PROTO-4 - Scene comme source generative

Risque :

```text
scene -> generation devient pilote automatique.
```

Correction appliquee :

```text
scene seule insuffisante ;
fonction, monde, naturalisation et sortie obligatoires.
```

### FRAG-PROTO-5 - Sidechain comme activation cachee

Risque :

```text
source -> cible lu comme cible active.
```

Correction appliquee :

```text
SDC influence seulement une cible deja autorisee.
```

### FRAG-PROTO-6 - Didgeridoo libre comme controleur cache

Risque :

```text
didgeridoo libre pilote la generation ou le halo sans choix.
```

Correction appliquee :

```text
sidechains du didgeridoo libre = protection, signalisation ou prolongement discret
si deja autorise.
```

### FRAG-PROTO-7 - Detection future trop binaire

Risque :

```text
indice detecte = reaction immediate.
```

Decision :

```text
La prochaine fiche devra introduire :
confiance ;
ambiguite ;
hysterese conceptuelle ;
priorite ;
droit au doute ;
silence/retrait comme reaction valide.
```

---

## 14. Corrections appliquees

### COR-PROTO-A - Sidechain conceptuel sans activation

Fichier :

```text
SPECIFICATION_PROTOCOLS_SIDECHAINS_CONCEPTUELS_v0_1.md
```

Ajout :

```text
Un SDC n'active pas une cible par lui-meme.
Il influence seulement une cible deja autorisee par scene, couche, geste,
etat, choix live, P0 ou P1.
```

Effet :

```text
Evite de transformer les sidechains conceptuels en automations cachees.
```

### COR-PROTO-B - Didgeridoo libre non pilote cache

Fichier :

```text
SPECIFICATION_PROTOCOLS_SIDECHAINS_CONCEPTUELS_v0_1.md
```

Ajout :

```text
Les sidechains du didgeridoo libre ne transforment pas le didgeridoo en pilote cache.
Ils servent seulement a proteger, signaler ou prolonger discretement
si la scene, le halo ou une protection l'autorise deja.
```

Effet :

```text
Preserve le mode DID libre protege.
```

### COR-PROTO-C - Scene seule insuffisante

Fichier :

```text
SPECIFICATION_PROTOCOLS_SIDECHAINS_CONCEPTUELS_v0_1.md
```

Ajout :

```text
Si la generation vient surtout d'une scene et pas d'une source claire,
la scene doit nommer la fonction, le monde, la naturalisation et la sortie.
La scene seule ne suffit pas a autoriser un objet flottant.
```

Effet :

```text
Evite que SCN devienne compositeur automatique.
```

---

## 15. Verdict par priorite

### P0

Statut :

```text
compatible.
```

P0 reste non negociable.

### P1

Statut :

```text
compatible mais a preciser.
```

P1 peut etre accepte seulement comme risque musical explicite,
jamais comme oubli de protection.

### P2

Statut :

```text
compatible.
```

Lock, Force, Cut, Libre, Bloom, transgression, domination et retour restent choix live ou scene.

### P3

Statut :

```text
compatible.
```

La scene autorise et cadre.
Elle ne compose pas.

### P4

Statut :

```text
compatible apres correction SDC.
```

Les assignations par defaut ne deviennent pas activation automatique.

### P5

Statut :

```text
compatible.
```

Auto-Pro protege, adapte, signale.
Il ne compose pas.

---

## 16. Questions restantes

Questions non bloquantes, a traiter dans la specification suivante ou avec l'utilisateur :

```text
1. Pour le grave, quel ordre preferer quand aucune scene ne tranche :
   soutien discret, retrait, trace, didgeridoo guide, sub ponctuel ?

2. Quels protocoles doivent etre sous la main en live,
   et lesquels doivent rester permissions de scene ou Auto-Pro ?

3. Safe force doit-il etre un mode courant ou seulement un mode de securite expressive ?

4. Dans la techno suspendue tres longue,
   quel signal de retour doit etre le plus lisible par defaut ?

5. Pour la ligne acid naturalisee,
   quelle source est la plus naturelle par defaut selon l'esprit Vesperare ?

6. Pour la voix,
   quels modes d'integration sont prioritaires selon les scenes ?

7. Pour la salle,
   quels indices doivent etre pris en compte sans faire de la salle un pilote musical ?

8. Comment representer la confiance d'un indice :
   certain, probable, ambigu, contradictoire, dangereux ?
```

---

## 17. Decision v0.1

La specification des protocoles / sidechains est compatible avec le corpus actif.

Elle peut rester document actif.

Elle a maintenant besoin d'une etape plus precise, mais encore non technique :

```text
SPECIFICATION_ANALYSES_INDICES_CONCEPTUELS_ET_CONFIANCE_v0_1
```

But :

- lister les indices necessaires par source ;
- dire quelles fonctions peuvent utiliser chaque indice ;
- definir les niveaux de confiance conceptuels ;
- definir les cas ambigus ;
- definir les reactions autorisees quand l'analyse est incertaine ;
- definir les signaux a montrer au musicien ;
- preparer plus tard les choix techniques sans les commencer.

Hors perimetre de cette prochaine etape :

```text
algorithmes ;
seuils ;
routings ;
devices ;
patch ;
interface finale.
```

---

## 18. Suivi

Date : 2026-06-21

Action realisee :

- `SPECIFICATION_ANALYSES_INDICES_CONCEPTUELS_ET_CONFIANCE_v0_1.md` cree.

Conclusion :

```text
La fiche analyses/indices/confiance definit les indices observables,
leurs interpretations autorisees, leurs interdits,
les niveaux CONF-0 a CONF-5 et CONF-X,
les temporalites d'analyse et les reactions selon incertitude.
```

Nouvelle prochaine etape :

```text
AUDIT_COMPATIBILITE_ANALYSES_INDICES_CONFIANCE_AVEC_CORPUS_v0_1
```
