# SPECIFICATION ARCHITECTURE MAX FOR LIVE DETAILLEE NIVEAU 1 VESPERARE v0.1

Projet : Vesperare
Statut : specification d'architecture Max for Live detaillee niveau 1
Date : 2026-06-22

Sources actives principales :

- `AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_FOR_LIVE_CONCEPTUELLE_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_MAX_FOR_LIVE_CONCEPTUELLE_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_ARCHITECTURE_TECHNIQUE_ABSTRAITE_PRE_MAX_FOR_LIVE_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_TECHNIQUE_ABSTRAITE_PRE_MAX_FOR_LIVE_VESPERARE_v0_1.md`
- `MATRICE_BLOCS_RESPONSABILITES_PACKETS_CONTROLES_VESPERARE_v0_1.md`
- `SPECIFICATION_SYSTEME_DECISIONNEL_CONCEPTUEL_VESPERARE_v0_1.md`
- `SPECIFICATION_BLOC_GENERATION_SONORE_MOTIFS_RYTHMIQUES_MELODIQUES_v0_1.md`
- `REVERBS_ESPACE_REACTIF_v0_2.md`
- `AUDIT_TRACABILITE_CAHIER_CHARGES_GENERATIF_STYLISTIQUE_v0_1.md`

But :

```text
passer de l'architecture Max for Live conceptuelle a une architecture
detaillee niveau 1 : groupes logiques, pistes candidates, modules
M4L generiques, flux de niveau 1, vues de jeu et responsabilites.
```

Cette fiche peut definir :

```text
groupes de session candidats ;
pistes candidates ;
modules M4L generiques ;
messages conceptuels ;
flux niveau 1 ;
vues de jeu ;
relations entre noyau de controle et groupes audio ;
contraintes de traduction future.
```

Cette fiche ne doit pas definir :

```text
devices precis ;
plugins ;
objets Max exacts ;
algorithmes ;
seuils numeriques ;
routage Ableton final ;
mapping controleur final ;
interface graphique finale ;
mise en oeuvre reelle.
```

---

## 1. Decision centrale niveau 1

Decision :

```text
la session Vesperare doit etre concue comme trois plans coordonnes :

1. plan audio : sources, transformations, generation, espace, halo, sortie ;
2. plan controle/etat : scene, live, permissions, decisions, protocoles ;
3. plan information : analyses, protections, signaux, verification.
```

Principe :

```text
le plan audio produit du son.
le plan controle/etat autorise et arbitre.
le plan information observe, protege et rend lisible.
```

Interdit central :

```text
aucun plan ne doit absorber les deux autres.
```

---

## 2. Convention de nommage niveau 1

Les noms ci-dessous sont :

```text
des identifiants de conception.
```

Ils ne sont pas encore :

```text
des noms definitifs de pistes Ableton ;
des noms definitifs de devices ;
des noms definitifs de modules Max ;
des routages finaux.
```

Convention :

```text
Gxx-*  : groupe logique candidat ;
T-*    : piste candidate ;
M-*    : module M4L generique candidat ;
MSG-*  : message conceptuel ;
VIEW-* : vue de jeu ;
N1-*   : decision ou contrainte de niveau 1.
```

Garde-fou :

```text
renommer, fusionner ou separer ces elements doit rester possible.
```

---

## 3. Carte de session niveau 1

Carte candidate :

```text
G00-CONTROL
G01-INPUTS
G02-SOURCE-DIRECT
G03-SOURCE-TRANSFORM
G04-ANALYSIS
G05-GENERATION
G06-SPACE
G07-HALO
G08-AUTOPRO
G09-SIGNAL
G10-OUT
```

Regle :

```text
un groupe candidat represente une responsabilite.
il ne fixe pas encore le nombre de pistes.
```

Setup minimum :

```text
G00, G01, G02, G04, G05, G06, G07, G08, G09 et G10
doivent pouvoir fonctionner avec IN-DID seul.
```

---

## 4. G00-CONTROL

Role :

```text
noyau de controle, etat partage, decisions, permissions,
protocoles, objets actifs et vues de jeu.
```

Pistes ou modules candidats :

```text
T-CONTROL-MAIN ;
T-CONTROL-SCENE ;
T-CONTROL-LIVE ;
T-CONTROL-PERM ;
T-CONTROL-DEC ;
T-CONTROL-PROTO ;
T-CONTROL-OBJECTS ;
T-CONTROL-SAFETY ;
T-CONTROL-SIGNAL.
```

Modules M4L generiques candidats :

```text
M-STATE-CORE ;
M-LIVE-MODES ;
M-SCENE-MATRIX ;
M-PERMISSION-MATRIX ;
M-DECISION-MATRIX ;
M-PROTOCOL-MATRIX ;
M-OBJECT-REGISTRY ;
M-SAFETY-STATUS ;
M-SIGNAL-PRIORITY.
```

Recoit :

```text
MSG-LIVE ;
MSG-SCENE ;
MSG-ANA ;
MSG-PROTO ;
MSG-GEN-STATE ;
MSG-SPC-STATE ;
MSG-HAL-STATE ;
MSG-AUTOPRO ;
MSG-OUT ;
MSG-SIG.
```

Produit :

```text
MSG-PERM ;
MSG-DEC ;
MSG-MODE ;
MSG-LIMIT ;
MSG-EXIT ;
MSG-SIG-PRIORITY ;
MSG-OBJECT-STATE.
```

Controle premier niveau :

```text
scene dominante ;
mode DID ;
mode GRV ;
GEN permission / regime ;
SPC monde / proximite / immersion ;
HAL Auto / Lock / Force / Cut ;
RET prepare / sortie ;
TRG autorisee ;
RISK accepte / refuse ;
SIG P0/P1/P2.
```

Interdits :

```text
composer ;
choisir motif principal ;
choisir retour musical ;
choisir transgression ;
choisir esthetique ;
masquer P1 ;
effacer P2 hors P0/P1.
```

Question niveau 1 :

```text
G00 doit-il rester un noyau central unique ou etre distribue
entre plusieurs modules synchronises ?
```

Decision provisoire :

```text
conserver G00 comme noyau conceptuel unique,
mais autoriser une implementation future distribuee.
```

---

## 5. G01-INPUTS

Role :

```text
recevoir les sources acoustiques et fournir les copies necessaires
aux autres plans.
```

Pistes candidates :

```text
T-IN-DID ;
T-IN-GNG ;
T-IN-PRC ;
T-IN-VOX ;
T-IN-SAL ;
T-IN-AUX.
```

Sorties conceptuelles par entree :

```text
audio direct ;
copie analyse ;
copie transformation ;
copie generation source ;
copie espace / halo ;
statut source.
```

Messages conceptuels :

```text
MSG-SRC-PRESENCE ;
MSG-SRC-PROTECT ;
MSG-SRC-RISK ;
MSG-SRC-ROLE-POSSIBLE.
```

Contraintes :

```text
la copie analyse reste non audible ;
la source directe reste disponible ;
la source absente doit etre neutre ;
la salle informe mais ne decide pas.
```

Setup minimum :

```text
T-IN-DID seul doit suffire.
T-IN-GNG, T-IN-PRC, T-IN-VOX, T-IN-SAL et T-IN-AUX peuvent etre absents.
```

Interdits :

```text
forcer le didgeridoo en controleur ;
forcer le didgeridoo en basse ;
exiger une source optionnelle ;
transformer une source dans G01.
```

---

## 6. G02-SOURCE-DIRECT

Role :

```text
maintenir un chemin source direct, protege et musicalement lisible.
```

Pistes candidates :

```text
T-DIR-DID ;
T-DIR-GNG ;
T-DIR-PRC ;
T-DIR-VOX ;
T-DIR-AUX ;
T-DIR-SRC-SUM.
```

Fonctions :

```text
presence directe ;
protection source essentielle ;
integration minimale ;
relation au grave ;
relation espace proche ;
possibilite de rester libre.
```

Messages recus :

```text
MSG-PERM ;
MSG-DEC ;
MSG-SRC-PROTECT ;
MSG-LIMIT ;
MSG-SPC ;
MSG-HAL.
```

Messages envoyes :

```text
MSG-SRC-AUDIBLE ;
MSG-SRC-MASKED ;
MSG-SRC-CONFLICT ;
MSG-OUT-CHECK.
```

Interdits :

```text
source directe effacee hors P0/P1 ;
didgeridoo baisse automatiquement hors P0/P1 ;
voix exposee sans integration sonore ;
source directe transformee sans fonction.
```

---

## 7. G03-SOURCE-TRANSFORM

Role :

```text
porter les transformations de sources decidees par scene, live,
permission ou protocole.
```

Pistes candidates :

```text
T-TR-DID ;
T-TR-GNG ;
T-TR-PRC ;
T-TR-VOX ;
T-TR-SRC-SUM.
```

Fonctions possibles :

```text
didgeridoo adapte au systeme ;
systeme adapte au didgeridoo ;
source transformable ;
partiels ;
formants ;
souffle ;
texture ;
halo source ;
preparation de generation.
```

Requis avant action :

```text
MSG-PERM ;
MSG-DEC ;
fonction nommee ;
source nommee ;
sortie prevue ;
risque surveille.
```

Messages envoyes :

```text
MSG-TR-ACTIVE ;
MSG-TR-RISK ;
MSG-SRC-LOSS ;
MSG-GEN-SOURCE-POSSIBLE ;
MSG-HAL-SOURCE-POSSIBLE.
```

Interdits :

```text
transformation gratuite ;
timbre electronique reconnaissable non decide ;
source remplacee par transformation ;
voix type auto-tune reconnaissable ;
didgeridoo transforme en basse imposee.
```

---

## 8. G04-ANALYSIS

Role :

```text
produire indices, confiance, doutes et alertes sans decider.
```

Pistes ou modules candidats :

```text
T-ANA-SRC ;
T-ANA-GLOBAL ;
T-ANA-DID ;
T-ANA-GNG ;
T-ANA-PRC ;
T-ANA-VOX ;
T-ANA-GRV ;
T-ANA-SPC ;
T-ANA-HAL ;
T-ANA-SAL ;
T-ANA-GEN.
```

Modules M4L generiques candidats :

```text
M-ANA-ROUTER ;
M-ANA-CONFIDENCE ;
M-ANA-RISK ;
M-ANA-SOURCE ;
M-ANA-FORM ;
M-ANA-OUTPUT.
```

Messages envoyes :

```text
MSG-ANA-PACKET ;
MSG-CONF ;
MSG-CONF-X ;
MSG-P0-RISK ;
MSG-P1-RISK ;
MSG-DOUBT ;
MSG-ANA-SIG.
```

Activation :

```text
par source ;
par scene ;
par risque ;
par fonction ;
par besoin Auto-Pro.
```

Interdits :

```text
analyse permanente obligatoire de tout ;
decision directe ;
generation directe ;
retour choisi ;
halo supprime ;
source baissee hors P0/P1.
```

Decision provisoire :

```text
G04 doit etre hybride :
analyses par source pour les entrees,
analyses par fonction pour grave, espace, halo, generation et sortie.
```

---

## 9. G05-GENERATION

Role :

```text
creer, maintenir, transformer, retirer et sortir des objets generatifs
sous permission, fonction et trace stylistique.
```

Pistes candidates :

```text
T-GEN-SRC ;
T-GEN-RHY ;
T-GEN-LIN ;
T-GEN-GRV ;
T-GEN-TEX ;
T-GEN-VOX ;
T-GEN-HALSPC ;
T-GEN-TRG ;
T-GEN-RET ;
T-GEN-SUM.
```

Modules M4L generiques candidats :

```text
M-GEN-MANAGER ;
M-GEN-OBJECT ;
M-GEN-TRACE ;
M-GEN-PERM ;
M-GEN-EXIT ;
M-GEN-SIG.
```

Messages requis :

```text
MSG-PERM ;
MSG-DEC ;
MSG-SCENE ;
MSG-GEN-FUNCTION ;
MSG-GEN-SOURCE ;
MSG-GEN-INSPIRATION ;
MSG-GEN-EXIT.
```

Messages envoyes :

```text
MSG-GEN-PACKET ;
MSG-GEN-ACTIVE ;
MSG-GEN-RETIRED ;
MSG-GEN-RISK ;
MSG-GEN-REQUEST-SPC ;
MSG-GEN-REQUEST-HAL ;
MSG-GEN-REQUEST-RET ;
MSG-GEN-SIG.
```

Chaque objet GEN doit garder :

```text
inspiration(s) ;
phenomene retenu ;
fonction Vesperare ;
source ou origine perceptive ;
role DOM/LAYER/GESTE/ETAT/TRACE ;
regime ;
autonomie ;
naturalisation ;
reconnaissance ;
sortie ;
risques.
```

Interdits :

```text
M-GEN-MANAGER compositeur global ;
objet GEN sans GEN-PACKET ;
style entier ;
motif principal non autorise ;
retour choisi seul ;
transgression choisie seule ;
timbre electronique reconnaissable non decide ;
source essentielle remplacee.
```

Decision provisoire :

```text
G05 doit etre separe logiquement par familles GEN,
mais la separation physique future peut etre fusionnee ou simplifiee.
```

---

## 10. G06-SPACE

Role :

```text
porter monde spatial, proximite, immersion, reactivite,
salle reelle, grave spatial et sorties spatiales.
```

Pistes candidates :

```text
T-SPC-PROX ;
T-SPC-WORLD ;
T-SPC-IMM ;
T-SPC-REACT ;
T-SPC-ROOM ;
T-SPC-GRV ;
T-SPC-SRC ;
T-SPC-EXIT ;
T-SPC-SUM.
```

Modules M4L generiques candidats :

```text
M-SPC-MANAGER ;
M-SPC-SOURCE ;
M-SPC-WORLD ;
M-SPC-ROOM ;
M-SPC-GRV ;
M-SPC-EXIT ;
M-SPC-SIG.
```

Messages requis :

```text
MSG-PERM ;
MSG-DEC ;
MSG-SPC-FUNCTION ;
MSG-SPC-SOURCE ;
MSG-SPC-WORLD ;
MSG-SPC-EXIT ;
MSG-ANA-SAL ;
MSG-ANA-SPC.
```

Messages envoyes :

```text
MSG-SPC-PACKET ;
MSG-SPC-ACTIVE ;
MSG-SPC-LIMIT ;
MSG-SPC-RISK ;
MSG-SPC-EXIT-STATE ;
MSG-SPC-SIG.
```

Interdits :

```text
reverb decorative ;
monde spatial impose ;
masquage d'attaque sans signal ;
effacement du corps non decide ;
suppression d'un choix spatial hors P0/P1.
```

Decision provisoire :

```text
SPC et HAL doivent rester separes logiquement.
leur separation audio future reste ouverte.
```

---

## 11. G07-HALO

Role :

```text
gerer memoire, halo source, queue comme maintien,
Lock, Force, Cut, Momentary, Safe force et sorties de halo.
```

Pistes candidates :

```text
T-HAL-SRC ;
T-HAL-MEM ;
T-HAL-LOCK ;
T-HAL-FORCE ;
T-HAL-CUT ;
T-HAL-EXIT ;
T-HAL-SUM.
```

Modules M4L generiques candidats :

```text
M-HAL-MANAGER ;
M-HAL-MODE ;
M-HAL-SOURCE ;
M-HAL-MEMORY ;
M-HAL-EXIT ;
M-HAL-SIG.
```

Messages requis :

```text
MSG-PERM ;
MSG-DEC ;
MSG-HAL-MODE ;
MSG-HAL-SOURCE ;
MSG-HAL-EXIT ;
MSG-ANA-HAL ;
MSG-ANA-SPC.
```

Messages envoyes :

```text
MSG-HAL-PACKET ;
MSG-HAL-ACTIVE ;
MSG-HAL-LIMIT ;
MSG-HAL-RISK ;
MSG-HAL-EXIT-STATE ;
MSG-HAL-SIG.
```

Interdits :

```text
suppression d'un halo voulu hors P0/P1 ;
halo decoratif non decide ;
queue non sortie ;
masquage sans signal ;
confusion HAL avec GEN-HAL.
```

Decision provisoire :

```text
HAL doit etre pilote par mode et source.
les sorties HAL doivent rester distinguees de GEN-RET et SPC-EXIT.
```

---

## 12. G08-AUTOPRO

Role :

```text
proteger P0, P1 et stabiliser P5 sans composer.
```

Pistes ou modules candidats :

```text
T-AP-SAFE ;
T-AP-MIX ;
T-AP-SUB ;
T-AP-FEED ;
T-AP-ATT ;
T-AP-SRC ;
T-AP-DENS ;
T-AP-SPC ;
T-AP-SIG.
```

Modules M4L generiques candidats :

```text
M-AP-MANAGER ;
M-AP-RISK ;
M-AP-LIMIT ;
M-AP-RELEASE ;
M-AP-SIGNAL.
```

Messages requis :

```text
MSG-ANA-PACKET ;
MSG-OUT-PACKET ;
MSG-P0-RISK ;
MSG-P1-RISK ;
MSG-P5-COHERENCE ;
MSG-LIVE-RISK.
```

Messages envoyes :

```text
MSG-PROTECT-PACKET ;
MSG-LIMIT ;
MSG-RELEASE ;
MSG-P0-ACTIVE ;
MSG-P1-ACTIVE ;
MSG-P2-LIMIT ;
MSG-AP-SIG.
```

Interdits :

```text
choix esthetique ;
choix de scene ;
choix de motif ;
choix de retour ;
choix de transgression ;
changement de monde expressif hors P0/P1 ;
suppression de P2 hors P0/P1.
```

Decision provisoire :

```text
AP-MIX et AP-SPC restent des protections de lisibilite vitale
ou de coherence douce, jamais des corrections de gout.
```

---

## 13. G09-SIGNAL

Role :

```text
prioriser et rendre lisibles les informations qui changent la jouabilite.
```

Pistes ou modules candidats :

```text
T-SIG-MAIN ;
T-SIG-P0 ;
T-SIG-P1 ;
T-SIG-P2 ;
T-SIG-GRV ;
T-SIG-HAL ;
T-SIG-GEN ;
T-SIG-RET ;
T-SIG-CONF ;
T-SIG-ROOM.
```

Modules M4L generiques candidats :

```text
M-SIG-PRIORITY ;
M-SIG-FILTER ;
M-SIG-DISPLAY ;
M-SIG-HISTORY ;
M-SIG-ACK.
```

Messages requis :

```text
MSG-SIG-PRIORITY ;
MSG-P0-ACTIVE ;
MSG-P1-ACTIVE ;
MSG-P2-LIMIT ;
MSG-GEN-SIG ;
MSG-SPC-SIG ;
MSG-HAL-SIG ;
MSG-AP-SIG ;
MSG-RET-SIG ;
MSG-DOUBT.
```

Messages envoyes :

```text
MSG-SIG-VISIBLE ;
MSG-SIG-ACK ;
MSG-SIG-HIDDEN ;
MSG-SIG-HISTORY.
```

Interdits :

```text
signalisation exhaustive ;
diagnostic permanent impose ;
P1 masque ;
retrait important invisible.
```

Decision provisoire :

```text
T-SIG-MAIN doit etre prioritaire.
les signaux specialises peuvent rester secondaires ou internes.
```

---

## 14. G10-OUT

Role :

```text
organiser sortie, verification conceptuelle, relation au grave,
relation a la salle et retour de lisibilite.
```

Pistes candidates :

```text
T-OUT-MAIN ;
T-OUT-SUB ;
T-OUT-SPC ;
T-OUT-MON ;
T-OUT-SIG ;
T-OUT-ROOM.
```

Modules M4L generiques candidats :

```text
M-OUT-CHECK ;
M-OUT-STATE ;
M-OUT-SIGNAL ;
M-OUT-RISK.
```

Messages requis :

```text
MSG-SRC-AUDIBLE ;
MSG-GEN-ACTIVE ;
MSG-SPC-ACTIVE ;
MSG-HAL-ACTIVE ;
MSG-PROTECT-PACKET ;
MSG-SIG-VISIBLE ;
MSG-EXIT.
```

Messages envoyes :

```text
MSG-OUT-PACKET ;
MSG-OUT-CONFLICT ;
MSG-OUT-COHERENCE ;
MSG-OUT-RISK ;
MSG-OUT-SIG.
```

OUT doit verifier :

```text
source essentielle respectee ;
corps present ou absence decidee ;
grave lisible ou conflit decide ;
generation sortie ou maintenue ;
halo sorti ou maintenu ;
P0/P1 visibles ;
retour prepare si necessaire.
```

Interdits :

```text
jugement esthetique ;
mastering ;
composition ;
choix de retour ;
choix de scene ;
choix de motif.
```

---

## 15. Vues de jeu niveau 1

### VIEW-FULL

Usage :

```text
vue complete de conception ou preparation.
```

Contient :

```text
tous les groupes candidats ;
etat complet ;
details scene ;
details generation ;
details espace / halo ;
signalisation secondaire ;
questions ouvertes.
```

Ne doit pas etre :

```text
vue de performance principale.
```

### VIEW-LIVE

Usage :

```text
vue de performance principale.
```

Contient :

```text
scene dominante ;
mode DID ;
mode GRV ;
GEN permission / regime ;
SPC monde / proximite / immersion ;
HAL Auto / Lock / Force / Cut ;
RET prepare / sortie ;
TRG autorisee ;
RISK accepte / refuse ;
SIG P0/P1/P2.
```

Ne contient pas :

```text
details d'analyse ;
details internes GEN ;
diagnostic complet ;
messages bruts.
```

### VIEW-DID-MIN

Usage :

```text
setup minimum didgeridoo + PC.
```

Contient :

```text
IN-DID ;
DIR-DID ;
ANA-DID / ANA-GRV / ANA-RHY ;
GEN-SRC/RHY/LIN/GRV/HAL/RET ;
SPC-PROX / SPC-IMM ;
HAL-SRC ;
AUTO-PRO ;
SIG ;
OUT.
```

Controle minimum :

```text
mode DID ;
mode GRV ;
GEN actif/inactif/regime ;
SPC proximite/immersion ;
HAL Auto/Lock/Force/Cut ;
RET prepare/sortie ;
RISK accepte/refuse ;
SIG P0/P1/P2.
```

### VIEW-SCENE-PREP

Usage :

```text
preparation des scenes.
```

Contient :

```text
sources attendues ;
familles GEN autorisees ;
inspirations / phenomenes retenus ;
mondes SPC ;
modes HAL ;
risques acceptables ;
sorties ;
signaux importants.
```

Ne doit pas :

```text
figer une scene exclusive ;
empecher les superpositions par role.
```

### VIEW-SAFETY

Usage :

```text
lecture des protections et limites.
```

Contient :

```text
P0 ;
P1 ;
P2 limite ;
conflit grave ;
halo limite ;
generation retiree ;
doute critique ;
source essentielle masquee.
```

Ne doit pas :

```text
devenir diagnostic permanent de performance.
```

---

## 16. Retours et sorties niveau 1

Probleme a clarifier :

```text
GEN-RET, PROTO-RET, HAL-EXIT et SPC-EXIT peuvent se chevaucher.
```

Decision niveau 1 :

```text
GEN-RET produit ou prepare une matiere / consequence de retour.
PROTO-RET decrit la relation de retour.
HAL-EXIT sort une memoire ou une queue.
SPC-EXIT sort un monde spatial ou une distance.
OUT verifie que le retour est audible, decide et coherent.
```

Messages :

```text
MSG-RET-PREPARED ;
MSG-RET-ACTIVE ;
MSG-RET-BLOCKED ;
MSG-RET-SOURCE ;
MSG-RET-GRV ;
MSG-RET-HAL ;
MSG-RET-SPC ;
MSG-RET-SIG.
```

Interdits :

```text
retour choisi par generation seule ;
retour impose pour restaurer le corps hors decision ;
retour cache ;
sortie de halo ou espace sans signal si elle change la jouabilite.
```

---

## 17. Scene et superposition niveau 1

Les scenes sont stockees comme :

```text
permissions ;
sources attendues ;
roles possibles ;
familles GEN autorisees ;
mondes SPC ;
modes HAL ;
sorties ;
risques.
```

Les scenes ne sont pas :

```text
presets exclusifs ;
morceaux figes ;
routages fixes.
```

Superposition :

```text
une scene donne une dominante.
les couches, gestes, etats et traces peuvent venir d'autres scenes
si P0/P1/P2/P3/P4/P5 restent coherents.
```

Exemple :

```text
SCN-3 techno suspendue tres longue
+ couche SCN-8 polytexture
+ pression SCN-5 sound-system
+ didgeridoo libre SCN-1.
```

Garde-fou :

```text
une seule lecture de priorite doit rester claire.
```

---

## 18. Setup minimum niveau 1

Architecture reduite :

```text
G00-CONTROL ;
T-IN-DID ;
T-DIR-DID ;
T-ANA-DID ;
T-ANA-GRV ;
T-ANA-RHY ;
T-GEN-SRC ;
T-GEN-RHY ;
T-GEN-LIN ;
T-GEN-GRV ;
T-GEN-HALSPC ;
T-GEN-RET ;
T-SPC-PROX ;
T-SPC-IMM ;
T-HAL-SRC ;
T-AP-SAFE / MIX / SUB / SRC ;
T-SIG-MAIN ;
T-OUT-MAIN.
```

Sources absentes :

```text
GNG absent -> neutre ;
PRC absent -> neutre ;
VOX absent -> neutre ;
SAL absent -> mode salle inconnue ou non active ;
AUX absent -> neutre.
```

Fonctions obligatoires :

```text
didgeridoo libre protege ;
mode DID ;
mode GRV ;
generation par source didgeridoo ;
pression rythmique minimale ;
ligne par partiels / souffle ;
grave soutien / retrait / libre ;
halo source ;
espace proche ou immersif ;
retour prepare ;
signal P0/P1/P2.
```

Interdits :

```text
setup minimum trop ambient par construction ;
setup minimum sans pression rythmique possible ;
setup minimum qui exige autres sources ;
setup minimum qui force didgeridoo en controleur.
```

---

## 19. Decisions ouvertes niveau 1

Ces decisions restent ouvertes pour le niveau suivant :

```text
DO-1 : CONTROL_HUB central unique ou modules synchronises ?
DO-2 : separation physique des groupes GEN ou separation logique ?
DO-3 : separation audio de SPC et HAL ou controle separe seulement ?
DO-4 : analyses placees par source, par fonction ou hybrides ?
DO-5 : vue didgeridoo reduite ou meme session avec sources neutres ?
DO-6 : signaux visibles en permanence ?
DO-7 : retours fusionnes ou separes selon GEN/PROTO/HAL/SPC ?
DO-8 : scenes stockees comme matrice editable ou presets de preparation ?
```

Position provisoire recommandee :

```text
DO-1 : noyau conceptuel central, implementation future ouverte.
DO-2 : GEN separe logiquement, separation physique ouverte.
DO-3 : SPC/HAL separes logiquement, separation audio ouverte.
DO-4 : analyse hybride.
DO-5 : meme session, vue reduite didgeridoo.
DO-6 : seulement P0/P1/P2, conflit grave, halo limite, generation retiree, retour prepare.
DO-7 : retours distingues par fonction.
DO-8 : matrice editable plutot que presets exclusifs.
```

---

## 20. Interdits niveau 1

```text
nom de piste comme decision finale ;
module M4L generique comme device final ;
message conceptuel comme protocole Max final ;
routage conceptuel comme routage Ableton final ;
CONTROL_HUB compositeur ;
GENERATION_HUB moteur global ;
AUTOPRO correcteur esthetique ;
ANA decideur ;
SPC/HAL presets decoratifs ;
OUT juge musical ;
scene preset exclusif ;
setup didgeridoo oublie ;
GEN-PACKET absent.
```

---

## 21. Decision v0.1

Decision :

```text
l'architecture Max for Live detaillee niveau 1 est definie.
```

Elle etablit :

```text
groupes candidats ;
pistes candidates ;
modules M4L generiques ;
messages conceptuels ;
vues de jeu ;
retours et sorties niveau 1 ;
scene et superposition ;
setup minimum didgeridoo + PC ;
decisions ouvertes ;
interdits niveau 1.
```

Prochaine action recommandee :

```text
AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_FOR_LIVE_DETAILLEE_NIVEAU_1_AVEC_CORPUS_v0_1
```

But de l'audit :

```text
verifier que ce niveau 1 n'a pas transforme les groupes candidats
en pistes finales, les modules generiques en devices, les messages
conceptuels en patch Max, ou les decisions ouvertes en choix figes.
```

---

## 22. Suivi audit niveau 1

Action realisee :

```text
AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_FOR_LIVE_DETAILLEE_NIVEAU_1_AVEC_CORPUS_v0_1.md
```

Corrections appliquees avant audit :

```text
COR-N1-A : nom decisionnel rendu moins autonome.
COR-N1-B : controle generation minimum reformule comme actif/inactif/regime.
```

Conclusion :

```text
l'architecture Max for Live detaillee niveau 1 est compatible avec le
corpus actif.
```

Prochaine action recommandee :

```text
SPECIFICATION_ARCHITECTURE_MAX_FOR_LIVE_DETAILLEE_NIVEAU_2_MODULES_MESSAGES_VESPERARE_v0_1
```

Condition :

```text
le niveau 2 doit preciser modules et messages conceptuels sans choisir
devices, plugins, objets Max, algorithmes, seuils, routages finaux
ou interface finale.
```
