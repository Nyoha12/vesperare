# AUDIT COMPATIBILITE SYSTEME DECISIONNEL AVEC CORPUS v0.1

Projet : Vesperare
Date : 2026-06-21
Statut : audit de compatibilite du systeme decisionnel conceptuel avec le corpus actif

Document audite :

- `SPECIFICATION_SYSTEME_DECISIONNEL_CONCEPTUEL_VESPERARE_v0_1.md`

Corpus de reference :

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

- verifier que le systeme decisionnel ne rigidifie pas trop la pratique live ;
- verifier qu'il ne transforme pas les scenes en cases etanches ;
- verifier que P0/P1/P2/P3/P4/P5 restent coherents ;
- verifier que generation, reverb, halo, didgeridoo, grave, gong, voix et transgression restent compatibles ;
- verifier que les analyses restent informatives et non decisives ;
- verifier que les protocoles restent relationnels et non declencheurs ;
- verifier que les questions restantes sont utiles et non bloquantes ;
- preparer la suite vers une architecture fonctionnelle abstraite.

Hors perimetre :

- algorithmes ;
- seuils numeriques ;
- routings audio ou MIDI ;
- devices Max for Live ;
- patch Ableton ;
- interface finale ;
- controleur physique ;
- evaluation pratique.

---

## 1. Verdict general

Verdict :

```text
compatible apres deux corrections mineures.
```

Le systeme decisionnel respecte le corpus actif.

Il consolide correctement :

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

Il ne remplace pas les documents precedents.

Il sert de couche d'arbitrage :

```text
quelle demande existe ?
quelle autorite l'autorise ?
quelle permission est ouverte ?
quels indices soutiennent ou contredisent ?
quel conflit apparait ?
quelle reaction bornee est possible ?
que faut-il signaler ?
comment sortir ou maintenir ?
```

Compatibilites principales :

- les scenes ne deviennent pas etanches ;
- la superposition DOM/LAYER/GESTE/ETAT reste possible ;
- P2 reste souverain hors P0/P1 ;
- P0 reste non negociable ;
- P1 protege sans composer ;
- les indices ne decident pas ;
- les protocoles n'activent pas seuls ;
- la generation reste fonction-bound ;
- reverb/espace/halo restent sous fonction, scene ou choix ;
- le retour reste preparable mais non impose ;
- la techno suspendue tres longue reste autorisee ;
- la transgression exige scene, choix ou crise decidee ;
- la voix reste exposee possible mais integree ;
- le didgeridoo reste libre ou integre selon mode ;
- le grave reste multi-options.

Corrections necessaires :

```text
COR-DEC-A : clarifier que P0 force un retour a un etat de protection,
pas un retour musical.

COR-DEC-B : inclure GESTE dans les conditions de continuation
d'un objet genere.
```

---

## 2. Compatibilite avec le noyau jouable

### 2.1. DOM unique

Statut :

```text
compatible.
```

Le systeme decisionnel conserve :

```text
une seule DOM a la fois.
```

Il ne rend pas les scenes exclusives.

Il permet :

```text
DOM ;
LAYER ;
GESTE ;
ETAT ;
TRACE.
```

Cela correspond au noyau jouable :

```text
une scene dirige ;
zero a deux couches enrichissent ;
des gestes interviennent ;
des etats persistent ;
Auto-Pro protege.
```

### 2.2. Superposition des scenes

Statut :

```text
compatible et utile.
```

Le document corrige explicitement le risque de separer les scenes comme des blocs incompatibles.

Il autorise :

```text
techno suspendue DOM + acid en couche + gong en geste ;
didgeridoo DOM + pression rythmique en couche + transgression en geste ;
sound-system DOM + gong bloom en couche + suspension en etat.
```

Garde-fou coherent :

```text
pas deux DOM non signalees.
```

Ce point est essentiel pour Vesperare, parce que les inspirations doivent pouvoir se superposer selon fonction, pas selon etiquette de style.

### 2.3. Charge mentale

Statut :

```text
compatible.
```

Le document conserve la regle :

```text
1. Quelle scene domine ?
2. Quelles couches sont actives ?
3. Quelle sortie ou consequence est preparee ?
```

Risque residuel :

```text
le document est volontairement dense.
```

Mais ce risque est acceptable car il s'agit d'une specification de conception, pas d'une interface.

Condition :

```text
ne pas transformer toutes les portes decisionnelles en controles manuels.
```

---

## 3. Compatibilite avec P0/P1/P2/P3/P4/P5

### 3.1. P0

Statut :

```text
compatible avec correction COR-DEC-A.
```

Le document dit correctement :

```text
P0 reste non negociable.
```

Risque detecte :

```text
une formulation initiale de P0 pouvait etre lue comme un retour musical.
```

Correction requise :

```text
remplacer par "forcer retour a un etat stable de protection".
```

Apres correction, P0 reste :

```text
securite critique ;
pas retour corporel ;
pas decision de forme ;
pas choix expressif.
```

### 3.2. P1

Statut :

```text
compatible.
```

P1 est bien defini comme protection mix vitale :

```text
sub illisible ;
attaque principale masquee ;
source essentielle masquee ;
boue grave/reverb ;
forme principale illisible.
```

Le document evite :

```text
P1 comme gout esthetique ;
P1 comme correction automatique de choix artistique ;
P1 comme composition cachee.
```

Point fragile :

```text
P1 peut limiter un choix fort.
```

Mais le document exige :

```text
signalisation ;
limitation proportionnee ;
retour au choix musical ensuite.
```

Compatibilite confirmee.

### 3.3. P2

Statut :

```text
compatible.
```

Le musicien conserve l'autorite sur :

```text
DOM ;
couches ;
Lock/Force/Cut ;
didgeridoo libre ou integre ;
grave libre ;
retour ;
refus de retour ;
transgression ;
generation ;
monde spatial ;
halo.
```

Limites coherentes :

```text
P0 toujours ;
P1 visible si limitation.
```

### 3.4. P3

Statut :

```text
compatible.
```

La scene peut :

```text
autoriser ;
preparer ;
donner sens ;
ouvrir familles ;
definir sorties.
```

Elle ne peut pas :

```text
remplacer P2 ;
contourner P0/P1 ;
activer une fonction interdite.
```

Cela correspond aux documents scenes/macros.

### 3.5. P4

Statut :

```text
compatible.
```

P4 reste une assignation preparee.

Il facilite le jeu sans devenir decision invisible.

Compatibilite importante :

```text
P4 ne doit jamais devenir le comportement cache du systeme.
```

Le document le dit explicitement.

### 3.6. P5

Statut :

```text
compatible.
```

P5 correspond a :

```text
Auto-Pro ordinaire ;
coherence douce ;
adaptation ;
integration ;
stabilisation ;
preparation.
```

Il ne peut pas :

```text
ouvrir scene ;
ouvrir transgression ;
ouvrir retour ;
forcer motif ;
changer monde ;
supprimer choix live.
```

Compatibilite confirmee.

---

## 4. Compatibilite avec analyses / indices / confiance

### 4.1. Separation observation / decision

Statut :

```text
compatible.
```

Le document reprend correctement :

```text
les indices soutiennent ;
ils ne decident pas.
```

La porte GATE-7 est correcte :

```text
CONF-0/1 : pas d'action expressive ;
CONF-2 : preparation ou signal ;
CONF-3 : adaptation autorisee ;
CONF-4 : action sur fonction deja autorisee ;
CONF-5 : protection ;
CONF-X : ne pas choisir.
```

### 4.2. CONF-4

Statut :

```text
compatible.
```

Le document conserve la correction recente :

```text
CONF-4 ne cree pas de permission.
Elle permet seulement d'utiliser une permission deja ouverte.
```

Cela empeche :

```text
analyse stable -> generation automatique ;
analyse stable -> retour automatique ;
analyse stable -> monde spatial automatique ;
analyse stable -> transgression automatique.
```

### 4.3. Droit au doute

Statut :

```text
compatible.
```

Le document preserve les defauts prudents :

```text
ne pas ouvrir nouvelle couche ;
ne pas changer DOM ;
ne pas imposer retour ;
ne pas imposer transgression ;
ne pas remplir silence ;
maintenir ou passer en trace.
```

Risque residuel :

```text
des defauts trop prudents peuvent rendre le systeme passif.
```

Mais la specification permet :

```text
P2 ;
P3 ;
STAT-1 preparee ;
STAT-2 trace ;
STAT-3 active douce.
```

Donc le risque est gere.

### 4.4. Signalisation des incertitudes

Statut :

```text
compatible mais a calibrer plus tard.
```

La hierarchie SIG-0 a SIG-3 est coherente.

Question restante legitime :

```text
quelle granularite sera vraiment jouable ?
```

Cette question n'est pas bloquante pour la conception conceptuelle.

---

## 5. Compatibilite avec protocoles / sidechains

### 5.1. SDC sans activation automatique

Statut :

```text
compatible.
```

Le systeme decisionnel conserve :

```text
source -> cible n'active pas la cible.
```

La porte GATE-6 demande :

```text
quelle source influence quelle cible, et pourquoi ?
```

Si la relation est non definie :

```text
ne pas inventer de dependance.
```

Compatible avec la fiche protocoles.

### 5.2. Protocoles comme relations

Statut :

```text
compatible.
```

Le systeme traite les protocoles comme :

```text
dependances musicales ;
pas effets ;
pas routings ;
pas declencheurs.
```

### 5.3. Sortie obligatoire

Statut :

```text
compatible.
```

La porte GATE-11 renforce :

```text
une reaction expressive forte sans sortie est incomplete.
```

Cela consolide :

```text
retour ;
sortie de transgression ;
retrait generation ;
resolution gong ;
sortie suspension ;
passage en trace.
```

---

## 6. Compatibilite avec generation / motifs

### 6.1. Generation non autonome

Statut :

```text
compatible.
```

Le document confirme :

```text
la generation ne compose pas seule ;
elle ne choisit pas retour ;
elle ne choisit pas transgression ;
elle ne remplace pas source live essentielle ;
elle n'impose pas timbre electronique reconnaissable.
```

### 6.2. GEN-C1 a GEN-C8

Statut :

```text
compatible.
```

La decision de demarrage exige :

```text
permission ;
regime ;
autonomie ;
source ;
naturalisation ;
sortie ;
gestion des conflits ;
signalisation.
```

Cela correspond au bloc generation.

### 6.3. Proposition

Statut :

```text
compatible.
```

Le document conserve :

```text
proposer = signaler, preparer, rendre disponible, trace si autorisee.
```

Il interdit :

```text
proposer = declencher, composer, choisir, forcer.
```

### 6.4. Continuation d'un objet genere

Statut :

```text
compatible avec correction COR-DEC-B.
```

Risque detecte :

```text
la condition de continuation listait les roles sans inclure GESTE.
```

Correction requise :

```text
remplacer par "compatible avec DOM/LAYER/GESTE/ETAT".
```

Raison :

```text
un objet genere peut etre lie a un geste ponctuel,
pas seulement a une scene, couche ou etat.
```

### 6.5. Motif trop autonome

Statut :

```text
compatible.
```

Le systeme peut retirer :

```text
motif trop autonome ;
cliche electronique ;
source masquee ;
dense sans fonction.
```

Cela repond au risque chanson / lead / gimmick.

---

## 7. Compatibilite avec reverb / espace / halo

### 7.1. Coherence mix vs choix expressif

Statut :

```text
compatible.
```

Le document separe :

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

Cela repond au besoin :

```text
traitements de mix pousses et professionnels,
sans les confondre avec choix esthetiques arbitraires.
```

### 7.2. Halo Lock / Force / Cut

Statut :

```text
compatible.
```

Le document preserve :

```text
P2 Lock/Force/Cut/maintien ;
Auto-Pro ordinaire ne supprime pas ;
P1 limite avec signal ;
P0 coupe si necessaire.
```

### 7.3. Espace immersif

Statut :

```text
compatible.
```

L'immersion peut etre :

```text
longue ;
forte ;
hors-monde ;
liee au gong ;
liee au sound-system ;
liee a la techno suspendue.
```

Garde-fous coherents :

```text
pas de boue grave/reverb ;
pas de source essentielle masquee ;
pas de corps efface hors decision.
```

### 7.4. Salle reelle

Statut :

```text
compatible.
```

Le systeme reste compatible avec :

```text
un seul micro de mesure deplace plusieurs fois ;
observation prudente ;
adaptation progressive ;
pas de confiance excessive ;
pas de correction absolue.
```

---

## 8. Compatibilite par source et domaine musical

### 8.1. Didgeridoo

Statut :

```text
compatible.
```

Le document conserve les modes :

```text
libre protege ;
systeme adapte au didgeridoo ;
didgeridoo adapte au systeme ;
guide harmonique ;
source fonctionnalisee ;
perturbateur.
```

Il interdit :

```text
baisser automatiquement le didgeridoo hors P0/P1 ;
forcer le didgeridoo en basse ;
traiter le didgeridoo sans fonction.
```

### 8.2. Grave / sub / gong

Statut :

```text
compatible.
```

Les options utilisateur sont reprises :

```text
didgeridoo guide harmoniquement ;
grave soutien discret ;
adaptation hauteur des harmoniques si necessaire ;
grave genere se retire en conflit deletere ;
graves libres ;
gong bloom comme base microtonale ou souffle grave.
```

Compatibilite forte avec le corpus.

### 8.3. Voix

Statut :

```text
compatible.
```

Le document preserve :

```text
voix exposee possible ;
integration sonore ou virtualo-acoustique obligatoire ;
pas de voix non integree ;
pas de pitch correction reconnaissable.
```

### 8.4. Transgression

Statut :

```text
compatible.
```

La transgression reste possible :

```text
masse ;
rugissement ;
voix brute integree ;
saturation ;
espace immense ;
dissonance ;
microtonalite.
```

Mais elle exige :

```text
P2/P3 ;
P0 non negociable ;
P1 visible ;
sortie obligatoire.
```

### 8.5. Techno suspendue

Statut :

```text
compatible.
```

Le document conserve :

```text
techno suspendue tres longue ;
retour prepare mais non impose ;
perte de corps possible si decidee ;
traces corporelles faibles possibles.
```

### 8.6. Acid naturalise / ligne

Statut :

```text
compatible.
```

La ligne peut etre frontale si decidee.

Elle peut etre trace ou couche.

Le risque cliche est surveille :

```text
motif autonome ;
timbre electronique reconnaissable ;
lead synth banal ;
pitch correction reconnaissable ;
cliche 303.
```

### 8.7. Polytexture

Statut :

```text
compatible.
```

La specification respecte l'entre-deux :

```text
percussif ;
harmonique ;
spectral ;
vocal ;
microtonal ;
partiel.
```

Elle evite :

```text
polytexture = surcharge.
```

---

## 9. Compatibilite scene par scene

### SCN-1 - Didgeridoo / systeme minimum

Statut :

```text
compatible.
```

Le systeme conserve :

```text
didgeridoo libre ;
mode DID ;
mode grave ;
generation fonctionnelle ;
halo/proximite ;
retour/source.
```

Risque gere :

```text
didgeridoo ignore ou force en basse.
```

### SCN-2 - Techno corporelle naturalisee

Statut :

```text
compatible.
```

Le systeme maintient :

```text
pression rythmique ;
attaque protegee ;
sub porteur ou soutien ;
espace reactif ;
ligne/texture en couche.
```

### SCN-3 - Techno suspendue tres longue

Statut :

```text
compatible.
```

Le systeme ne force pas le retour.

Il autorise :

```text
maintien long ;
retour prepare ;
retour refuse ;
halo Lock/Force/Cut ;
grave trace ;
pulse fantome.
```

### SCN-4 - Gong / bloom grave / metal-gong

Statut :

```text
compatible.
```

Le systeme conserve :

```text
base microtonale ;
souffle grave ;
bloom ;
espace metal ;
sub precis et riche ;
sortie par contraction, dissolution ou retour grave.
```

### SCN-5 - Sound-system immersion / domination

Statut :

```text
compatible.
```

Le systeme autorise domination/immersion si decidee.

Il maintient :

```text
P0 jamais ;
P1 visible ;
immersion fonctionnelle.
```

### SCN-6 - Voix exposee integree

Statut :

```text
compatible.
```

Voix exposee possible, mais integree.

Pas de voix posee hors integration.

### SCN-7 - Acid naturalise / ligne vivante

Statut :

```text
compatible.
```

Ligne frontale possible si decidee.

Trace possible en couche.

Retrait si autonomie non voulue.

### SCN-8 - Polytexture rythmico-spectrale

Statut :

```text
compatible.
```

La polytexture garde :

```text
une couche directrice ;
attaque/source protegee ;
simplification si conflit.
```

### SCN-9 - Transgression controlee

Statut :

```text
compatible.
```

La crise reste possible et forte, mais :

```text
P2/P3 requis ;
P0 non negociable ;
sortie obligatoire ;
Auto-Pro visible.
```

---

## 10. Zones fragiles restantes

### FRAG-DEC-1 - Trop de portes decisionnelles

Risque :

```text
le systeme peut sembler trop administratif.
```

Pourquoi ce n'est pas bloquant :

```text
ces portes sont conceptuelles.
Elles ne doivent pas devenir toutes visibles ou manipulables.
```

Garde-fou :

```text
l'interface future devra compresser ces portes en modes, scenes,
signalisation et controles prioritaires.
```

### FRAG-DEC-2 - P1 comme gout cache

Risque :

```text
P1 pourrait devenir correction esthetique automatique.
```

Garde-fou :

```text
P1 = lisibilite vitale.
P5 = coherence douce.
P2/P3 = choix expressifs.
```

### FRAG-DEC-3 - Defauts trop prudents

Risque :

```text
en cas de doute, le systeme pourrait devenir trop passif.
```

Pourquoi acceptable :

```text
la prudence concerne l'incertitude.
P2/P3 peuvent rendre le systeme actif.
STAT-1/2/3 permettent preparation, trace et action douce.
```

### FRAG-DEC-4 - Signalisation trop dense

Risque :

```text
trop de signaux peuvent nuire au jeu.
```

Garde-fou :

```text
SIG-0 a SIG-3 ;
priorite P0/P1/P2 ;
ne signaler que ce qui modifie la jouabilite.
```

### FRAG-DEC-5 - Scene dominante trop rigide

Risque :

```text
une seule DOM pourrait etre mal comprise comme une seule inspiration.
```

Garde-fou :

```text
la specification distingue DOM, LAYER, GESTE, ETAT, TRACE.
```

### FRAG-DEC-6 - Generation trop controlee

Risque :

```text
les conditions GEN-C1 a GEN-C8 pourraient paraitre lourdes.
```

Pourquoi acceptable :

```text
elles ne sont pas toutes des controles live ;
elles servent a empecher autonomie, cliche et retour impose.
```

### FRAG-DEC-7 - Reverb trop surveillee

Risque :

```text
l'espace pourrait perdre sa richesse si tout est trop protege.
```

Garde-fou :

```text
immersion longue, hors-monde, halo force et salle enrichissante
restent autorises si decides.
```

---

## 11. Corrections appliquees

### COR-DEC-A - P0 et retour stable

Probleme :

```text
une formulation initiale de P0 peut etre confondue avec un retour musical.
```

Correction :

```text
forcer retour a un etat stable de protection.
```

Effet :

```text
P0 reste securite/protection.
Il ne devient pas retour corporel ou decision de forme.
```

### COR-DEC-B - Generation et GESTE

Probleme :

```text
la condition de continuation d'un objet genere oublie GESTE.
```

Correction :

```text
compatible avec DOM/LAYER/GESTE/ETAT.
```

Effet :

```text
un objet genere peut appartenir a un geste ponctuel,
ce qui est compatible avec impact, mutation, bloom, retour ou transgression.
```

---

## 12. Questions restantes

Questions non bloquantes :

```text
1. Quelle granularite de signalisation sera supportable en live ?

2. Quels controles P2 doivent etre immediats en setup didgeridoo seul ?

3. Le maintien anti-retrait du halo doit-il etre global ou par source/scene ?

4. Les graves libres doivent-ils etre un mode unique ou plusieurs modes :
   sub libre, grave spatial libre, bloom libre, conflit accepte ?

5. Quelle difference perceptible entre trace, proposition, variation active
   et autonomie limitee ?

6. Quelle prudence appliquer a une salle reelle insuffisamment connue
   mais perceptivement enrichissante ?

7. Pendant une transgression, quels signaux doivent rester visibles :
   P1, sortie, source protegee, risque accepte, retour possible ?
```

Ces questions ne bloquent pas la suite.

Elles serviront a l'etape d'architecture fonctionnelle abstraite ou de controles live.

---

## 13. Verdict par axe

### Jouabilite

```text
compatible.
```

Condition :

```text
ne pas transformer toutes les portes en controles visibles.
```

### Coherence musicale

```text
compatible.
```

Le document relie reaction a fonction, contexte et sortie.

### Richesse stylistique

```text
compatible.
```

Les scenes restent superposables par role.

### Generation

```text
compatible apres COR-DEC-B.
```

### Reverb / espace / halo

```text
compatible.
```

### Didgeridoo / grave / gong

```text
compatible.
```

### Voix

```text
compatible.
```

### Transgression

```text
compatible.
```

### Analyses / confiance

```text
compatible.
```

### Protocoles / sidechains

```text
compatible.
```

### P0/P1/P2

```text
compatible apres COR-DEC-A.
```

---

## 14. Decision v0.1

Le systeme decisionnel conceptuel global est compatible avec le corpus actif.

Il peut rester document actif apres integration de :

```text
COR-DEC-A ;
COR-DEC-B.
```

Il permet maintenant de passer a :

```text
SPECIFICATION_ARCHITECTURE_FONCTIONNELLE_ABSTRAITE_VESPERARE_v0_1
```

But de la prochaine etape :

- transformer les decisions conceptuelles en blocs fonctionnels abstraits ;
- definir les grandes familles de modules sans devices ;
- definir les entrees/sorties conceptuelles des blocs ;
- definir quelles donnees circulent entre scenes, sources, analyses, protocoles, generation, reverb, Auto-Pro et signalisation ;
- preparer plus tard une architecture Max for Live sans commencer le patch.

Hors perimetre de la prochaine etape :

```text
algorithmes ;
seuils ;
patch ;
routings reels ;
devices ;
interface finale.
```
