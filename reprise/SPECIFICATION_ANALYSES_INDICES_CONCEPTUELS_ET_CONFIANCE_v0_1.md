# SPECIFICATION ANALYSES INDICES CONCEPTUELS ET CONFIANCE v0.1

Projet : Vesperare
Date : 2026-06-21
Statut : specification conceptuelle des indices, interpretations et niveaux de confiance

Sources actives :

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

- definir les indices que le systeme peut vouloir observer ;
- definir ce que ces indices peuvent signifier musicalement ;
- definir ce qu'ils ne doivent jamais decider seuls ;
- definir les niveaux de confiance conceptuels ;
- definir les reactions autorisees quand l'analyse est incertaine ;
- separer observation, interpretation, decision et reaction ;
- preparer plus tard les choix techniques sans les commencer.

Hors perimetre :

- algorithmes ;
- seuils ;
- modeles de detection ;
- routings ;
- devices ;
- patch Max for Live ;
- interface finale ;
- controleur physique ;
- evaluation pratique.

---

## 1. Decision centrale

Une analyse Vesperare ne decide pas.

Elle qualifie une situation musicale.

Formule :

```text
indice -> confiance -> interpretation possible -> fonction autorisee -> reaction bornee
```

Regle principale :

```text
Un indice detecte n'est pas une decision.
Un indice peut informer, limiter, proteger, signaler ou proposer.
Il ne doit pas declencher seul une scene, un retour, une transgression,
un motif principal, un monde spatial expressif ou une domination.
```

Principe :

```text
Plus la reaction est expressive,
plus elle exige :
scene ou choix live ;
fonction nommee ;
confiance suffisante ;
sortie prevue ;
signalisation si risque.
```

Exception :

```text
P0 peut agir immediatement.
P1 peut agir rapidement si la lisibilite vitale est menacee.
```

---

## 2. Vocabulaire

### 2.1. IND

`IND` designe un indice conceptuel.

Un indice peut etre :

```text
energie ;
attaque ;
pulse ;
densite ;
grave ;
partiels ;
formants ;
souffle ;
queue ;
salle ;
silence ;
scene ;
choix live ;
risque.
```

### 2.2. OBS

`OBS` designe une observation.

Une observation repond a :

```text
qu'est-ce qui semble se passer ?
```

Elle ne repond pas encore a :

```text
que faut-il faire ?
```

### 2.3. INT

`INT` designe une interpretation.

Une interpretation relie une observation a une fonction possible.

Exemple :

```text
OBS : attaques regulieres, energie stable, grave trace.
INT : memoire corporelle possible.
Fonctions possibles : pression rythmique, retour prepare, suspension active.
```

### 2.4. CONF

`CONF` designe un niveau de confiance conceptuel.

La confiance n'est pas une precision mathematique.

Elle indique :

```text
a quel point le systeme a le droit de reagir.
```

### 2.5. REACT

`REACT` designe une reaction autorisee.

Types :

```text
ne rien faire ;
signaler ;
attendre ;
maintenir ;
preparer ;
proteger ;
reduire ;
retirer ;
adapter doucement ;
proposer ;
accompagner ;
forcer seulement si choix live/scene ;
couper seulement si choix live/P0/P1.
```

Precision :

```text
proposer signifie signaler ou preparer une option.
Cela ne signifie pas agir, declencher ou choisir a la place du musicien.
```

---

## 3. Echelle de confiance

### CONF-0 - Absent / non pertinent

Signification :

```text
indice absent, hors scene ou non utile.
```

Reactions autorisees :

```text
ne rien faire ;
maintenir etat courant ;
laisser choix live ;
ne pas inventer une cause.
```

Interdits :

```text
declencher generation ;
declencher retour ;
changer de monde ;
creer compensation expressive.
```

### CONF-1 - Faible / bruit / trace

Signification :

```text
indice present mais trop faible ou trop peu stable pour orienter.
```

Reactions autorisees :

```text
observer ;
maintenir ;
signaler discretement si utile ;
preparer sans agir ;
ne pas bouger.
```

Interdits :

```text
reaction audible expressive ;
retrait fort ;
generation ;
retour ;
transgression.
```

### CONF-2 - Ambigu / plausible

Signification :

```text
indice musicalement plausible mais plusieurs interpretations existent.
```

Reactions autorisees :

```text
signaler ambiguite ;
adapter doucement ;
preparer une option ;
favoriser reaction reversible ;
demander confirmation par scene, duree, autre indice ou choix live.
```

Interdits :

```text
decision irreversible ;
scene automatique ;
retour automatique ;
motif principal ;
monde expressif nouveau.
```

### CONF-3 - Probable / coherent

Signification :

```text
indice coherent avec scene, etat, source ou plusieurs indices convergents.
```

Reactions autorisees :

```text
adapter ;
preparer ;
accompagner ;
varier ;
retirer doucement une couche non critique ;
activer une reaction deja autorisee par scene ou choix live.
```

Interdits :

```text
P2 implicite ;
retour impose ;
transgression imposee ;
domination imposee ;
lead impose.
```

### CONF-4 - Stable / utilisable

Signification :

```text
indice stable, coherent, autorise par scene ou choix live.
```

Reactions autorisees :

```text
suivre ;
adapter ;
generer en reponse/variation ;
maintenir un etat autorise ;
retirer une source generee conflictuelle ;
proteger P1 ;
signaler clairement.
```

Precision :

```text
generer en reponse/variation reste possible seulement si la fonction
est deja autorisee par scene, couche, geste, etat ou choix live.
CONF-4 ne cree pas cette autorisation.
```

Interdits :

```text
contourner P0 ;
changer la DOM ;
imposer un choix expressif hors permission ;
remplacer une source live essentielle.
```

### CONF-5 - Critique / danger

Signification :

```text
risque P0 ou P1 fort.
```

Reactions autorisees :

```text
proteger immediatement ;
reduire ;
couper si necessaire ;
retirer grave genere ;
limiter halo ;
limiter feedback ;
proteger attaque/source/sub ;
signaler.
```

Interdits :

```text
attendre une confirmation expressive ;
laisser P0 se maintenir ;
masquer l'intervention.
```

### CONF-X - Contradictoire

Signification :

```text
indices incompatibles ou interpretation instable.
```

Reactions autorisees :

```text
ne pas choisir ;
maintenir l'etat ;
revenir au defaut ;
retirer la reaction expressive ;
signaler conflit ;
demander confirmation par scene ou choix live ;
proteger P0/P1.
```

Interdits :

```text
forcer une interpretation ;
bascule rapide ;
oscillation audible ;
nouveau motif ;
nouveau monde.
```

---

## 4. Temporalites d'analyse

Une analyse doit tenir compte du temps musical.

### T-0 - Instant critique

Usage :

```text
P0 ;
feedback dangereux ;
headroom critique ;
sub destructeur ;
attaque ou source essentielle brutalement masquee.
```

Reaction :

```text
protection immediate ;
signalisation.
```

### T-1 - Geste court

Usage :

```text
attaque ;
impact ;
bloom court ;
fragment vocal ;
mutation acid ;
cut halo ;
contraction espace.
```

Reaction :

```text
momentary ;
accent ;
preparation ;
suivi court ;
pas de changement de scene.
```

### T-2 - Motif / micro-forme

Usage :

```text
pulse ;
interlocking ;
ligne ;
fragment reconnaissable ;
memoire rythmique ;
retour prepare.
```

Reaction :

```text
variation ;
reponse ;
maintien local ;
sortie prevue.
```

### T-3 - Etat

Usage :

```text
suspension ;
immersion ;
halo long ;
proximite ;
grave trace ;
espace stable ;
perte longue du corps decidee.
```

Reaction :

```text
maintien ;
adaptation lente ;
signalisation si protection ;
sortie preparee.
```

### T-4 - Scene

Usage :

```text
DOM ;
permissions ;
transgression ;
domination ;
monde spatial principal ;
graves libres.
```

Reaction :

```text
seulement scene ou choix live.
```

Interdit :

```text
analyse automatique qui choisit T-4.
```

---

## 5. Regles anti-reaction binaire

### 5.1. Aucun indice seul ne dirige

Un indice seul peut contribuer.

Il ne peut pas diriger une fonction expressive forte.

Exemples :

```text
energie forte != transgression ;
pulse detectee != retour ;
queue longue != halo Lock ;
grave fort != sub porteur ;
formants detectes != voix lead ;
partiels stables != gamme imposee ;
silence != remplissage.
```

### 5.2. Convergence minimale

Une reaction expressive demande au moins :

```text
indice coherent ;
scene ou choix live ;
fonction nommee ;
absence de conflit P0/P1 ;
sortie possible.
```

### 5.3. Droit au doute

Quand l'analyse est incertaine :

```text
ne rien faire est valide ;
maintenir est valide ;
preparer sans declencher est valide ;
retirer doucement est valide ;
signaler est valide.
```

### 5.4. Stabilite avant expression

Les reactions expressives doivent eviter les bascules rapides.

Regle :

```text
plus une reaction est audible,
plus elle demande stabilite et contexte.
```

### 5.5. Hysterese conceptuelle

Une reaction deja engagee ne doit pas disparaitre au premier doute.

Elle peut :

```text
se maintenir ;
se reduire ;
passer en trace ;
attendre confirmation ;
sortir musicalement.
```

Mais elle ne doit pas :

```text
flapper ;
osciller ;
couper sans raison ;
relancer sans autorisation.
```

---

## 6. Indices globaux

### IND-GLOB-1 - Energie globale

Peut indiquer :

```text
pression ;
peak ;
densification ;
retrait ;
besoin de protection ;
transition possible.
```

Ne doit pas indiquer seule :

```text
retour ;
transgression ;
changement de scene ;
domination ;
motif principal.
```

Reactions autorisees :

```text
adapter doucement densite ;
preparer une reaction ;
proteger P0/P1 ;
signaler surcharge ;
maintenir.
```

Confiance minimale :

```text
CONF-3 pour adaptation douce ;
CONF-5 pour protection critique.
```

### IND-GLOB-2 - Densite globale

Peut indiquer :

```text
polytexture ;
surcharge ;
masquage ;
pression spectrale ;
besoin de nettoyage ;
perte de lisibilite.
```

Reactions autorisees :

```text
rarefier ;
retirer couche generee ;
deplacer spectralement ;
contracter espace ;
reduire halo ;
signaler.
```

Interdits :

```text
ajouter une couche ;
creer un motif pour clarifier ;
changer de scene.
```

Confiance :

```text
CONF-2 : signaler ou surveiller.
CONF-3 : adaptation douce.
CONF-4 : retrait d'une couche generee non essentielle.
CONF-5 : protection P1/P0.
```

### IND-GLOB-3 - Silence / absence / retrait

Peut indiquer :

```text
suspension ;
attente ;
pre-retour ;
seuil ;
ecoute source ;
resolution ;
decision de rarete.
```

Ne doit pas indiquer :

```text
remplissage automatique ;
nouvelle couche ;
retour automatique ;
halo automatique.
```

Reactions autorisees :

```text
maintenir ;
preparer ;
signaler retour possible ;
laisser respirer ;
passer en trace ;
respecter le vide.
```

Confiance :

```text
CONF-2 suffit pour ne rien faire.
CONF-3 suffit pour preparation.
CONF-4 exige scene ou choix live pour retour.
```

---

## 7. Indices didgeridoo

### IND-DID-1 - Bourdon / centre grave

Peut indiquer :

```text
presence centrale ;
guide harmonique ;
source de grave ;
stabilite ;
base de ligne naturalisee ;
conflit possible avec sub.
```

Reactions autorisees :

```text
grave genere soutien ;
grave genere retrait ;
ligne naturalisee suit souplement ;
halo source discret ;
signal conflit.
```

Interdits :

```text
forcer le didgeridoo en basse ;
baisser automatiquement le didgeridoo hors P0/P1 ;
imposer quantification ;
imposer gamme ;
declencher ligne lead.
```

Confiance :

```text
CONF-3 pour soutien/retrait doux ;
CONF-4 pour guide harmonique si mode DID/GRV l'autorise ;
CONF-5 seulement pour protection.
```

### IND-DID-2 - Partiels stables

Peuvent indiquer :

```text
guide harmonique ;
acid naturalise ;
ligne vivante ;
base microtonale ;
tension ;
relation a gong ou voix.
```

Reactions autorisees :

```text
variation de ligne ;
micro-deviation ;
stabilisation temporaire ;
naturalisation par cavite ;
retrait si conflit.
```

Interdits :

```text
reduction a pitch ;
accordage impose ;
melodie banale ;
lead synth.
```

Confiance :

```text
CONF-4 et autorisation scene/choix live pour ligne frontale.
CONF-2/3 seulement pour trace ou preparation.
```

### IND-DID-3 - Souffle / air

Peut indiquer :

```text
matiere respirante ;
halo source ;
proximite ;
texture ;
espace souffle-air ;
memoire organique.
```

Reactions autorisees :

```text
halo discret ;
texture souffle ;
proximite enrichie ;
naturalisation ;
micro-variation ;
retrait si masque attaque.
```

Interdits :

```text
nappe automatique ;
decor permanent ;
masquage source ;
remplissage du silence.
```

### IND-DID-4 - Attaques / articulations

Peuvent indiquer :

```text
pression rythmique ;
interlocking ;
micro-pulse ;
retour possible ;
perturbation ;
geste source.
```

Reactions autorisees :

```text
accent fantome ;
rythme naturalise ;
contraction espace ;
retour prepare ;
generation reponse/variation si autorisee.
```

Interdits :

```text
pattern techno standard ;
retour automatique ;
grille imposee.
```

---

## 8. Indices gong / metal

### IND-GNG-1 - Attaque gong

Peut indiquer :

```text
signal ;
impact ;
seuil ;
peak ;
bloom possible ;
sortie ou consequence.
```

Reactions autorisees :

```text
ouvrir halo momentary ;
preparer bloom ;
contracter espace ;
signaler transition ;
laisser queue respirer.
```

Interdits :

```text
activer bloom permanent sans scene/choix ;
declencher transgression seule ;
sub porteur automatique.
```

### IND-GNG-2 - Queue / decay metal

Peut indiquer :

```text
halo metal ;
freeze possible ;
espace metal-gong ;
extinction ;
retour de cadre ;
matiere longue.
```

Reactions autorisees :

```text
tenir queue si scene/choix ;
passer en halo ;
nettoyer si boue ;
preparer sortie ;
reduire grave spatial si conflit.
```

Interdits :

```text
nappe indistincte subie ;
perte attaque ;
ambient non decide.
```

### IND-GNG-3 - Partiels / battements

Peuvent indiquer :

```text
tension microtonale ;
base partielle ;
rugosite ;
bloom ;
relation avec didgeridoo ;
texture vivante.
```

Reactions autorisees :

```text
texture spectrale ;
ligne trace ;
halo metal ;
pression bas-medium ;
bloom decide ;
signal conflit harmonique.
```

Interdits :

```text
theorie microtonale imposee ;
grave libre non decide ;
masse continue sans fonction.
```

### IND-GNG-4 - Bas-medium / souffle grave

Peut indiquer :

```text
corps ;
pression ;
souffle large ;
bloom ;
risque de boue ;
conflit sub.
```

Reactions autorisees :

```text
passer grave en trace ;
proteger sub ;
ouvrir bloom si autorise ;
retirer GSP ;
signaler conflit grave.
```

---

## 9. Indices voix

### IND-VOX-1 - Souffle vocal

Peut indiquer :

```text
proximite ;
presence fragile ;
texture ;
halo source ;
souffle-air ;
integration voix.
```

Reactions autorisees :

```text
proche enrichi ;
halo source ;
texture souffle ;
naturalisation ;
retour source.
```

Interdits :

```text
voix lead par defaut ;
reverb decor ;
masquage didgeridoo ou attaque.
```

### IND-VOX-2 - Formants / vocalite

Peuvent indiquer :

```text
voix ;
cavite ;
fragment quasi-melodique ;
ligne naturalisee ;
cri ;
presence.
```

Reactions autorisees :

```text
cavite ;
fragment spectral ;
ligne trace ;
choeur spectral naturalise ;
halo source ;
integration proche.
```

Interdits :

```text
pitch correction reconnaissable ;
auto-tune identifiable ;
lead vocal non decide ;
voix exposee sans monde.
```

Confiance :

```text
CONF-4 + scene/choix live pour voix frontale.
CONF-2/3 pour integration douce ou signal.
```

### IND-VOX-3 - Cri / rugosite vocale

Peut indiquer :

```text
transgression ;
signal ;
peak ;
presence brute ;
texture rugueuse.
```

Reactions autorisees :

```text
integration dans monde ;
halo court ;
texture ;
sortie de transgression ;
signalisation ;
protection P0/P1.
```

Interdits :

```text
agression gratuite ;
transgression automatique ;
masquage P0/P1 invisible.
```

---

## 10. Indices rythme / percussion / attaques

### IND-RHY-1 - Attaques regulieres

Peuvent indiquer :

```text
cadre corporel ;
memoire techno ;
pulse implicite ;
retour possible ;
pression rythmique.
```

Reactions autorisees :

```text
interlocking ;
accent fantome ;
micro-pulse ;
contraction espace ;
retour prepare.
```

Interdits :

```text
kick automatique ;
grille techno ;
retour automatique ;
pattern standard.
```

### IND-RHY-2 - Attaques irregulieres

Peuvent indiquer :

```text
polytexture ;
perturbation ;
geste ;
tension ;
densite ;
source live active.
```

Reactions autorisees :

```text
interlocking souple ;
texture ;
nettoyage ;
signal surcharge ;
laisser respirer source.
```

Interdits :

```text
regularisation automatique ;
quantification stylistique ;
pattern impose.
```

### IND-RHY-3 - Pulse fantome

Peut indiquer :

```text
memoire corporelle ;
techno suspendue ;
pre-retour ;
pression latente.
```

Reactions autorisees :

```text
maintenir trace ;
preparer retour ;
laisser micro-variation ;
accent rare ;
grave trace.
```

Interdits :

```text
declencher retour ;
forcer pulse lisible ;
remplir la suspension.
```

---

## 11. Indices grave / sub

### IND-GRV-1 - Energie sub forte

Peut indiquer :

```text
pression corporelle ;
sub porteur ;
domination possible ;
risque P0/P1 ;
conflit salle.
```

Reactions autorisees :

```text
proteger ;
reduire ;
passer en soutien ;
retirer grave genere ;
signaler ;
laisser si choix live explicite et P0 intact.
```

Interdits :

```text
augmenter automatiquement ;
activer domination ;
activer graves libres ;
masquer source essentielle.
```

### IND-GRV-2 - Sub illisible

Peut indiquer :

```text
conflit de porteur ;
boue ;
grave spatial excessif ;
gong/sub conflictuel ;
didgeridoo/sub conflictuel ;
salle problematique.
```

Reactions autorisees :

```text
P1 ;
retirer grave genere ;
passer en trace ;
reduire GSP ;
limiter halo grave ;
signaler conflit.
```

Confiance :

```text
CONF-4 pour adaptation ;
CONF-5 si risque critique.
```

### IND-GRV-3 - Conflit harmonique grave

Peut indiquer :

```text
didgeridoo contre sub ;
gong contre sub ;
ligne contre bourdon ;
partiels instables deleteres ;
microtonalite utile ou problematique.
```

Reactions autorisees :

```text
retirer grave genere ;
adapter harmoniques traitees si autorise ;
passer ligne en trace ;
signaler ;
laisser si tension decidee.
```

Interdits :

```text
corriger le didgeridoo libre ;
supprimer gong principal hors P0/P1 ;
imposer accordage.
```

---

## 12. Indices reverb / espace / halo

### IND-SPC-1 - Queue trop dense

Peut indiquer :

```text
boue reverb ;
halo non decide ;
perte attaque ;
perte source ;
ambient subi.
```

Reactions autorisees :

```text
reduire halo ;
nettoyer queue ;
contracter espace ;
passer en trace ;
signaler si Lock/Force limite.
```

Interdits :

```text
changer monde ;
supprimer Halo Lock hors P0/P1 ;
remplir avec autre espace.
```

### IND-SPC-2 - Source trop seche / non integree

Peut indiquer :

```text
besoin d'appartenance ;
manque de monde commun ;
source exposee sans integration ;
defaut de proximite.
```

Reactions autorisees :

```text
proche enrichi ;
espace commun discret ;
halo source si autorise ;
naturalisation douce.
```

Interdits :

```text
grande reverb automatique ;
monde immense non decide ;
decor.
```

### IND-SPC-3 - Espace long stable

Peut indiquer :

```text
suspension ;
immersion ;
seuil ;
hors-monde decide ;
memoire ;
maintien prolonge.
```

Reactions autorisees :

```text
maintenir ;
adapter doucement ;
preparer sortie ;
signaler si protection agit ;
respecter duree longue.
```

Interdits :

```text
couper par peur d'ambient ;
retour automatique ;
changer monde sans choix.
```

### IND-HAL-1 - Halo voulu

Peut etre confirme par :

```text
Lock ;
Force ;
Safe force ;
scene ;
source longue ;
fonction de memoire ;
etat suspension.
```

Reactions autorisees :

```text
maintenir ;
adapter P0/P1 ;
deplacer spectralement ;
reduire sans supprimer fonction ;
signaler limitation.
```

Interdits :

```text
suppression hors P0/P1 ;
lecture comme decor ;
activation d'une autre couche.
```

### IND-HAL-2 - Halo subi

Peut indiquer :

```text
flou ;
masquage ;
boue ;
perte attaque ;
decor non decide.
```

Reactions autorisees :

```text
cut si choix live ;
reduction Auto-Pro ;
nettoyage ;
passage en trace ;
signalisation.
```

---

## 13. Indices salle

### IND-SAL-1 - Resonance salle problematique

Peut indiquer :

```text
risque P0/P1 ;
sub destructeur ;
grave illisible ;
feedback ;
masquage source.
```

Reactions autorisees :

```text
proteger ;
reduire grave ;
reduire halo ;
contracter espace ;
signaler.
```

Interdits :

```text
changer scene ;
retirer une source essentielle hors P0/P1 ;
imposer mode sec permanent.
```

### IND-SAL-2 - Salle enrichissante

Peut indiquer :

```text
air naturel ;
proximite ;
queue utile ;
immersion reelle ;
resonance interessante ;
appartenance.
```

Reactions autorisees :

```text
adapter moins ;
laisser respirer ;
integrer espace commun ;
eviter doublon de reverb ;
respecter queue naturelle.
```

Interdits :

```text
faire de la salle un pilote musical ;
surajouter reverb ;
deduire transgression.
```

### IND-SAL-3 - Salle inconnue / information insuffisante

Peut indiquer :

```text
incertitude ;
besoin de prudence ;
adaptation douce seulement.
```

Reactions autorisees :

```text
defauts prudents ;
signalisation ;
Auto-Pro doux ;
pas d'hypothese forte.
```

---

## 14. Indices generation / motif

### IND-GEN-1 - Motif trop autonome

Peut indiquer :

```text
motif qui dirige hors scene ;
lead involontaire ;
hook non decide ;
generation trop presente.
```

Reactions autorisees :

```text
retrait ;
dissolution ;
passage en trace ;
naturalisation ;
signalisation ;
retour source.
```

Interdits :

```text
renforcer motif ;
varier pour le rendre plus interessant ;
ajouter contre-motif.
```

### IND-GEN-2 - Motif utile

Peut indiquer :

```text
memoire ;
corps ;
tension ;
retour prepare ;
ligne vivante ;
basse-motif.
```

Conditions :

```text
scene/choix live ;
fonction ;
source ou monde ;
sortie ;
absence de conflit P0/P1.
```

Reactions autorisees :

```text
variation ;
maintien ;
reponse ;
densification prudente ;
sortie preparee.
```

### IND-GEN-3 - Timbre electronique reconnaissable

Peut indiquer :

```text
cliche ;
preset ;
acid trop identifiable ;
lead banal ;
rupture de naturalisation.
```

Reactions autorisees :

```text
naturaliser ;
filtrer conceptuellement ;
passer par cavite/formant/friction ;
retirer ;
signaler seuil cliche.
```

Interdits :

```text
laisser par defaut ;
mettre au premier plan sans decision ;
utiliser comme style autonome.
```

---

## 15. Indices scene / forme

### IND-FRM-1 - Etat de preparation

Peut autoriser :

```text
preparer retour ;
preparer bloom ;
preparer motif ;
preparer espace ;
observer.
```

Ne doit pas :

```text
declencher seul.
```

### IND-FRM-2 - Etat de maintien

Peut autoriser :

```text
stabiliser ;
adapter lentement ;
maintenir halo ;
maintenir suspension ;
maintenir pression.
```

Ne doit pas :

```text
forcer densification.
```

### IND-FRM-3 - Etat de retour

Peut autoriser :

```text
accompagner retour choisi ;
contracter espace ;
ramener grave ;
ramener pulse ;
retirer halo.
```

Ne doit pas :

```text
choisir le retour sans P2/P3.
```

### IND-FRM-4 - Etat de sortie

Peut autoriser :

```text
dissoudre ;
retirer ;
laisser trace ;
retour source ;
silence ;
resolution.
```

Ne doit pas :

```text
ajouter nouveau materiau.
```

---

## 16. Matrice indice -> usages autorises

```text
Energie globale :
pression, protection, transition possible.
Jamais scene/retour/transgression seule.

Attaques :
rythme, interlocking, clarte, espace rythme-pression.
Jamais pattern standard ou retour seul.

Pulse :
memoire, corps, preparation.
Jamais beat impose.

Densite :
nettoyage, rarefaction, signal surcharge.
Jamais ajout de couche.

Sub :
protection, porteur si autorise, retrait si conflit.
Jamais domination automatique.

Partiels :
guide, ligne, tension.
Jamais accordage impose.

Souffle :
halo, proximite, texture.
Jamais nappe decor automatique.

Formants :
voix, cavite, fragment.
Jamais auto-tune ou lead par defaut.

Queue :
halo, freeze, extinction, bloom.
Jamais ambient subi.

Salle :
adaptation, protection, enrichissement.
Jamais pilote musical.

Silence :
suspension, attente, resolution.
Jamais remplissage automatique.
```

---

## 17. Reactions par niveau de confiance

```text
CONF-0 :
ne rien faire, maintenir.

CONF-1 :
observer, signal discret, preparation passive.

CONF-2 :
preparer, adapter tres doucement, demander convergence.

CONF-3 :
adapter, accompagner, varier une fonction deja autorisee.

CONF-4 :
agir sur fonction autorisee, generation reponse/variation, retrait controle.

CONF-5 :
proteger immediatement, limiter, couper si necessaire, signaler.

CONF-X :
ne pas choisir, revenir au defaut, signaler conflit, retirer reaction expressive.
```

Regle :

```text
Plus la confiance est faible,
plus la reaction doit etre reversible.
```

---

## 18. Signalisation

### SIG-ANA-1 - Confiance faible

Signale :

```text
l'analyse observe mais ne sait pas agir.
```

Usage :

```text
utile pour comprendre pourquoi rien ne se passe.
```

### SIG-ANA-2 - Ambiguite

Signale :

```text
plusieurs interpretations possibles.
```

Usage :

```text
eviter que le musicien pense que le systeme ignore la source.
```

### SIG-ANA-3 - Conflit

Signale :

```text
indices contradictoires ;
grave musical vs grave spatial ;
source essentielle vs generation ;
halo Lock vs attaque ;
P1 accepte vs P1 non acceptable.
```

### SIG-ANA-4 - Protection active

Signale :

```text
P0 ;
P1 ;
source protegee ;
sub protege ;
halo limite ;
monde spatial limite ;
generation retiree.
```

### SIG-ANA-5 - Reaction bloquee

Signale :

```text
une reaction aurait pu arriver mais n'est pas autorisee
par scene, couche, geste, etat ou choix live.
```

### SIG-ANA-6 - Retour prepare

Signale :

```text
le systeme peut accompagner un retour,
mais ne le declenche pas.
```

---

## 19. Cas ambigus typiques

### AMB-1 - Energie forte

Interpretations possibles :

```text
peak ;
transgression ;
pression rythmique ;
masquage ;
P1 ;
simple jeu intense.
```

Reaction correcte :

```text
ne pas transgresser seul ;
verifier scene/choix ;
proteger si P0/P1 ;
signaler si ambigu.
```

### AMB-2 - Pulse implicite

Interpretations possibles :

```text
retour possible ;
memoire techno ;
interlocking ;
simple regularite de source.
```

Reaction correcte :

```text
preparer ;
ne pas imposer beat ;
laisser trace.
```

### AMB-3 - Partiels stables

Interpretations possibles :

```text
guide harmonique ;
ligne naturalisee ;
tension microtonale ;
simple resonance.
```

Reaction correcte :

```text
ne pas imposer melodie ;
utiliser seulement si DID/GRV/GEN-LIN autorise ;
rester en trace si doute.
```

### AMB-4 - Queue longue

Interpretations possibles :

```text
halo voulu ;
gong bloom ;
ambient subi ;
perte attaque ;
espace long decide.
```

Reaction correcte :

```text
verifier Halo Lock/Force/scene ;
reduire seulement si P1 ou halo subi ;
ne pas couper espace long decide.
```

### AMB-5 - Silence

Interpretations possibles :

```text
attente ;
resolution ;
pre-retour ;
source absente ;
espace voulu ;
probleme.
```

Reaction correcte :

```text
respecter ;
ne pas remplir ;
preparer seulement si scene/etat l'indique.
```

---

## 20. Defauts provisoires

Quand l'analyse est incertaine :

```text
ne rien faire ;
maintenir ;
passer en trace ;
preparer sans declencher ;
proteger P0/P1 ;
signaler discretion ;
eviter nouvelle couche ;
eviter changement de monde ;
eviter retour ;
eviter transgression.
```

Quand une reaction est autorisee mais non urgente :

```text
favoriser adaptation lente ;
favoriser reactions reversibles ;
favoriser retrait musical ;
favoriser source live ;
favoriser monde commun/proche ;
favoriser grave trace/soutien.
```

Quand P0/P1 est probable :

```text
proteger d'abord ;
signaler ;
retablir lisibilite ;
laisser choix expressif ensuite.
```

---

## 21. Questions restantes

Questions non bloquantes :

```text
1. Quel niveau de signalisation des incertitudes veux-tu en live :
   tres discret, lisible mais rare, ou detaille ?

2. Quand une analyse hesite entre retrait et maintien,
   quelle reaction par defaut preferer ?

3. Pour le grave, en cas de conflit ambigu,
   defaut plutot trace, soutien discret ou retrait ?

4. Pour le halo, en cas de doute,
   defaut plutot maintien, trace, reduction ou cut ?

5. Pour les lignes/motifs,
   a quel moment un motif devient trop autonome ?

6. Pour la salle, veux-tu plutot une adaptation prudente
   ou une exploitation perceptive plus audacieuse quand elle semble belle ?

7. Pour la techno suspendue,
   quel indice doit rester le plus important :
   pulse fantome, grave trace, espace, source live, silence ?
```

---

## 22. Decision v0.1

La couche analyses / indices / confiance est specifiee au niveau conceptuel.

Le projet dispose maintenant de :

- vocabulaire IND / OBS / INT / CONF / REACT ;
- echelle CONF-0 a CONF-5 + CONF-X ;
- temporalites T-0 a T-4 ;
- regles anti-reaction binaire ;
- indices globaux ;
- indices didgeridoo ;
- indices gong/metal ;
- indices voix ;
- indices rythme/attaques ;
- indices grave/sub ;
- indices reverb/espace/halo ;
- indices salle ;
- indices generation/motif ;
- indices scene/forme ;
- matrice indice -> usages autorises ;
- reactions par niveau de confiance ;
- signalisation d'incertitude ;
- cas ambigus typiques ;
- defauts provisoires.

Cette fiche ne suffit pas encore pour :

- choisir des algorithmes ;
- definir les caracteristiques exactes ;
- definir des seuils ;
- definir des routings ;
- choisir des devices ;
- construire un patch ;
- dessiner l'interface.

Etape recommandee a la creation de cette fiche :

```text
AUDIT_COMPATIBILITE_ANALYSES_INDICES_CONFIANCE_AVEC_CORPUS_v0_1
```

But :

- verifier que les indices ne deviennent pas decisions ;
- verifier que la confiance n'autorise pas d'automation excessive ;
- verifier que les ambiguites preservent le choix live ;
- verifier que P0/P1/P2 restent coherents ;
- verifier que les reactions par defaut ne contredisent pas les scenes.

---

## 23. Suivi

Date : 2026-06-21

Action realisee :

- `AUDIT_COMPATIBILITE_ANALYSES_INDICES_CONFIANCE_AVEC_CORPUS_v0_1.md` cree.

Conclusion :

```text
La fiche analyses / indices / confiance est compatible avec le corpus actif
apres trois corrections :
proposer n'est pas agir ;
CONF-4 ne cree pas d'autorisation ;
vocabulaire "bascule rapide".
```

Nouvelle prochaine etape :

```text
SPECIFICATION_SYSTEME_DECISIONNEL_CONCEPTUEL_VESPERARE_v0_1
```

But :

- assembler scene, couche, geste, etat, protocoles, indices et confiance ;
- definir l'ordre conceptuel de lecture d'une situation ;
- definir comment une reaction est autorisee, bloquee, signalee ou preparee ;
- rester avant algorithmes, seuils, routings, devices et interface.
