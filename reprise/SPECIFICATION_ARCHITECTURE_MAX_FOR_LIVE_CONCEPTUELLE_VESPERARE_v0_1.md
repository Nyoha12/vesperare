# SPECIFICATION ARCHITECTURE MAX FOR LIVE CONCEPTUELLE VESPERARE v0.1

Projet : Vesperare
Statut : specification d'architecture Max for Live conceptuelle
Date : 2026-06-22

Sources actives principales :

- `AUDIT_COMPATIBILITE_ARCHITECTURE_TECHNIQUE_ABSTRAITE_PRE_MAX_FOR_LIVE_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_TECHNIQUE_ABSTRAITE_PRE_MAX_FOR_LIVE_VESPERARE_v0_1.md`
- `MATRICE_BLOCS_RESPONSABILITES_PACKETS_CONTROLES_VESPERARE_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_FONCTIONNELLE_ABSTRAITE_VESPERARE_v0_1.md`
- `SPECIFICATION_SYSTEME_DECISIONNEL_CONCEPTUEL_VESPERARE_v0_1.md`
- `SPECIFICATION_PROTOCOLS_SIDECHAINS_CONCEPTUELS_v0_1.md`
- `SPECIFICATION_ANALYSES_INDICES_CONCEPTUELS_ET_CONFIANCE_v0_1.md`
- `SPECIFICATION_BLOC_GENERATION_SONORE_MOTIFS_RYTHMIQUES_MELODIQUES_v0_1.md`
- `REVERBS_ESPACE_REACTIF_v0_2.md`
- `SPECIFICATION_CONTROLES_LIVE_ET_MODES_SCENE_v0_1.md`
- `SPECIFICATION_NOYAU_JOUABLE_SCENES_COUCHES_v0_1.md`

But :

```text
proposer une architecture Max for Live conceptuelle :
organisation possible de session, familles de modules M4L,
flux logiques, etat partage, permissions et controles,
sans encore choisir de devices, plugins, algorithmes, seuils,
patchers, routages finaux ou interface definitive.
```

Cette fiche peut parler de :

```text
groupes Ableton conceptuels ;
pistes conceptuelles ;
retours conceptuels ;
modules M4L generiques ;
etat partage M4L ;
messages conceptuels ;
flux audio / controle / analyse possibles ;
separation source, analyse, generation, espace, halo, Auto-Pro, signalisation ;
contraintes de session ;
setup minimum didgeridoo + PC.
```

Cette fiche ne doit pas parler de :

```text
nom de device precis ;
nom de plugin ;
objet Max exact ;
algorithme exact ;
seuil numerique ;
routage Ableton final ;
mapping controleur final ;
interface graphique finale ;
mise en oeuvre reelle.
```

---

## 1. Decision centrale

Decision :

```text
Vesperare doit etre organise dans Ableton / Max for Live comme une
session a noyau de controle central et groupes audio fonctionnels,
pas comme une pile d'effets independants.
```

Principe :

```text
les pistes conceptuelles portent l'audio ;
les modules M4L conceptuels portent analyse, etat, permission,
generation, espace, halo, protections et signalisation ;
les decisions passent par un noyau d'etat partage ;
les groupes audio ne doivent pas decider seuls.
```

Architecture conceptuelle courte :

```text
IN-SOURCES
  -> SRC-DIRECT / SRC-TRANSFORM / SRC-ANALYSIS
  -> ANA-HUB
  -> STATE-DEC-PROTO-HUB
  -> GEN-HUB / SPC-HUB / HAL-HUB / AUTOPRO-HUB
  -> OUT-HUB / SIG-HUB
```

Garde-fou central :

```text
aucun groupe Ableton conceptuel ne remplace DEC/PERM.
aucun module M4L conceptuel ne compose seul.
```

---

## 2. Vocabulaire Max for Live conceptuel

### 2.1. Groupe conceptuel

Un groupe conceptuel est :

```text
un regroupement de pistes ou fonctions dans une future session.
```

Il n'est pas encore :

```text
un groupe Ableton definitif ;
un bus audio final ;
un routage final.
```

### 2.2. Piste conceptuelle

Une piste conceptuelle est :

```text
une responsabilite audio ou MIDI possible.
```

Elle peut devenir plus tard :

```text
une piste audio ;
une piste MIDI ;
un retour ;
un groupe ;
une chaine de rack ;
un module M4L ;
une combinaison.
```

### 2.3. Module M4L conceptuel

Un module M4L conceptuel est :

```text
un role logiciel a implementer plus tard dans Max for Live.
```

Il n'est pas encore :

```text
un device ;
un patch ;
une liste d'objets Max ;
un algorithme ;
une interface.
```

### 2.4. Noyau d'etat

Le noyau d'etat est :

```text
la memoire centrale des scenes, modes, permissions, objets actifs,
risques, priorites, signaux et sorties.
```

Il doit recevoir :

```text
LIVE ;
SCN ;
ANA ;
PROTO ;
AUTO-PRO ;
GEN ;
SPC ;
HAL ;
OUT.
```

Il doit produire :

```text
PERM-PACKET ;
DEC-PACKET ;
etat courant ;
signaux utiles.
```

Il ne doit pas :

```text
choisir motif ;
choisir retour ;
choisir transgression ;
choisir esthetique ;
composer.
```

---

## 3. Vue globale de session conceptuelle

Organisation possible :

```text
00_CONTROL_HUB
01_IN_SOURCES
02_SOURCE_DIRECT_PROTECTED
03_SOURCE_TRANSFORMED
04_ANALYSIS_HUB
05_GENERATION_HUB
06_SPACE_REVERB_HUB
07_HALO_MEMORY_HUB
08_AUTOPRO_HUB
09_SIGNAL_HUB
10_OUT_HUB
```

Important :

```text
ces noms sont des reperes de conception.
ils ne fixent ni nombre de pistes, ni ordre final,
ni routage Ableton final.
```

---

## 4. 00_CONTROL_HUB

Role :

```text
porter l'etat partage, les choix live, les scenes, les permissions,
les priorites, les objets actifs et les signaux principaux.
```

Modules M4L conceptuels :

```text
M4L-STATE : etat partage ;
M4L-LIVE : controles live explicites ;
M4L-SCENE : scene dominante, couches, etat de forme ;
M4L-PERM : permissions P0/P1/P2/P3/P4/P5 ;
M4L-DEC : arbitrage ;
M4L-PROTO : relations conceptuelles ;
M4L-OBJ : registre des objets generatifs actifs ;
M4L-SIG-CTRL : priorite de signalisation ;
M4L-SAFE-CTRL : etat P0/P1/P5.
```

Recoit :

```text
choix live ;
scene ;
analyse ;
etat des objets ;
alertes Auto-Pro ;
sortie conceptuelle ;
retours des modules GEN/SPC/HAL.
```

Envoie :

```text
permissions ;
decisions ;
modes ;
limitations ;
signaux ;
sorties prevues.
```

Controles premier niveau :

```text
scene dominante ;
mode didgeridoo ;
mode grave ;
permission generation ;
regime generation ;
monde spatial ;
proximite / immersion ;
halo Auto/Lock/Force/Cut ;
retour / sortie ;
transgression autorisee ;
risque accepte/refuse ;
lecture P0/P1/P2.
```

Interdits :

```text
composer ;
choisir motif principal ;
choisir transgression ;
choisir retour musical ;
rendre P1 invisible ;
effacer P2 hors P0/P1.
```

---

## 5. 01_IN_SOURCES

Role :

```text
recevoir les instruments acoustiques, la salle et les sources optionnelles.
```

Pistes conceptuelles :

```text
IN-DID : didgeridoo ;
IN-GNG : gong / metaux ;
IN-PRC : tambour / peau ;
IN-VOX : voix ;
IN-SAL : salle / mesure / ambiance ;
IN-AUX : source acoustique supplementaire.
```

Chaque entree doit pouvoir produire :

```text
audio direct ;
copie vers analyse ;
copie vers transformation source si autorisee ;
copie vers generation source si autorisee ;
copie vers espace / halo si autorisee ;
statut de protection source.
```

Contraintes :

```text
copie d'analyse non audible ;
source essentielle preservee ;
didgeridoo jamais force en controleur ;
didgeridoo jamais force en basse ;
voix exposee seulement si integree ;
salle informative, non decisionnelle.
```

Setup minimum :

```text
IN-DID seul doit suffire.
IN-GNG, IN-PRC, IN-VOX et IN-SAL doivent pouvoir etre absents.
```

---

## 6. 02_SOURCE_DIRECT_PROTECTED

Role :

```text
garantir un chemin source direct, protege et musicalement lisible.
```

Pistes ou chaines conceptuelles :

```text
DIR-DID ;
DIR-GNG ;
DIR-PRC ;
DIR-VOX ;
DIR-AUX ;
DIR-SRC-BUS.
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

Interdits :

```text
source directe effacee hors P0/P1 ;
source directe transformee sans fonction ;
didgeridoo baisse automatiquement hors P0/P1 ;
voix exposee sans integration sonore.
```

---

## 7. 03_SOURCE_TRANSFORMED

Role :

```text
porter les transformations de sources acoustiques quand elles sont decidees.
```

Pistes conceptuelles :

```text
TR-DID ;
TR-GNG ;
TR-PRC ;
TR-VOX ;
TR-SRC-MIX.
```

Fonctions possibles :

```text
didgeridoo adapte au systeme ;
systeme adapte au didgeridoo ;
source transformable ;
formants ;
souffle ;
partiels ;
texture ;
halo source ;
preparation de generation.
```

Requis :

```text
PERM-PACKET ;
DEC-PACKET ;
fonction nommee ;
source nommee ;
sortie prevue ;
risque de perte source surveille.
```

Interdits :

```text
transformation comme effet gratuit ;
timbre electronique reconnaissable non decide ;
source acoustique remplacee par sa transformation ;
voix type auto-tune reconnaissable ;
didgeridoo transforme en basse imposee.
```

---

## 8. 04_ANALYSIS_HUB

Role :

```text
recevoir copies d'analyse, qualifier les indices et produire confiance.
```

Modules M4L conceptuels :

```text
ANA-GLOB ;
ANA-DID ;
ANA-GNG ;
ANA-PRC ;
ANA-VOX ;
ANA-RHY ;
ANA-GRV ;
ANA-SPC ;
ANA-HAL ;
ANA-SAL ;
ANA-GEN.
```

Sorties :

```text
ANA-PACKET ;
CONF-0 a CONF-5 ;
CONF-X ;
doute utile ;
alerte P0/P1 possible ;
signalisation si necessaire.
```

Interdits :

```text
declencher une scene ;
declencher une generation ;
choisir retour ;
choisir transgression ;
supprimer halo ;
baisser source hors P0/P1.
```

Organisation conceptuelle :

```text
les analyses peuvent etre activees par source, scene, risque ou fonction.
elles ne doivent pas toutes fonctionner comme obligation permanente.
```

---

## 9. 05_GENERATION_HUB

Role :

```text
produire des objets generatifs sous permission, fonction et trace stylistique.
```

Groupes conceptuels :

```text
GEN-SRC-GRP ;
GEN-RHY-GRP ;
GEN-LIN-GRP ;
GEN-GRV-GRP ;
GEN-TEX-GRP ;
GEN-VOX-GRP ;
GEN-HAL-SPC-GRP ;
GEN-TRG-GRP ;
GEN-RET-GRP.
```

Modules M4L conceptuels :

```text
M4L-GEN-MANAGER : permission, registre et sortie des objets ;
M4L-GEN-RHY : motifs rythmiques ;
M4L-GEN-LIN : lignes / motifs melodiques / acid naturalise ;
M4L-GEN-GRV : grave / sub / bloom ;
M4L-GEN-TEX : textures / polytextures / partiels ;
M4L-GEN-VOX : voix / formants / fragments ;
M4L-GEN-HAL-SPC : objets generatifs lies a halo/espace ;
M4L-GEN-TRG : transgression ;
M4L-GEN-RET : retours / sorties / consequences.
```

Chaque objet generatif doit conserver :

```text
GEN-PACKET ;
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
generation autonome ;
style entier ;
motif principal non autorise ;
retour choisi seul ;
transgression choisie seule ;
timbre electronique reconnaissable non decide ;
source essentielle remplacee.
```

Relation inspirations :

```text
Keita / polytexture -> GEN-RHY / GEN-TEX / GEN-SRC ;
jazz comme tension -> GEN-TEX / GEN-LIN / GEN-GRV / GEN-HAL / GEN-RET ;
techno -> GEN-RHY / GEN-GRV / GEN-RET / GEN-TEX ;
trance -> GEN-HAL / GEN-SPC / GEN-RET / GEN-TEX / GEN-RHY ;
sound-system -> GEN-GRV / GEN-SPC / GEN-HAL / GEN-RET ;
dubstep -> GEN-GRV / GEN-RET / GEN-TRG / GEN-SPC / GEN-VOX ;
acid -> GEN-LIN / GEN-RHY / GEN-TEX / GEN-GRV / GEN-HAL ;
voix -> GEN-VOX / GEN-SRC / GEN-LIN / GEN-RHY / GEN-HAL / GEN-SPC ;
didgeridoo -> GEN-SRC / GEN-RHY / GEN-LIN / GEN-GRV / GEN-HAL / GEN-TEX ;
gong -> GEN-GRV / GEN-HAL / GEN-TEX / GEN-SPC / GEN-TRG / GEN-RET ;
peaux -> GEN-RHY / GEN-TEX / GEN-SRC / GEN-RET.
```

---

## 10. 06_SPACE_REVERB_HUB

Role :

```text
organiser espace, reverbs, monde spatial, proximite, immersion,
reactivite, salle reelle et grave spatial.
```

Groupes conceptuels :

```text
SPC-PROX-GRP ;
SPC-WORLD-GRP ;
SPC-IMM-GRP ;
SPC-REACT-GRP ;
SPC-ROOM-GRP ;
SPC-GRV-GRP ;
SPC-SRC-GRP ;
SPC-EXIT-GRP.
```

Modules M4L conceptuels :

```text
M4L-SPC-MANAGER : monde, source, fonction, sortie ;
M4L-SPC-PROX : proximite ;
M4L-SPC-IMM : immersion ;
M4L-SPC-REACT : reactivite ;
M4L-SPC-ROOM : salle reelle ;
M4L-SPC-GRV : grave spatial ;
M4L-SPC-EXIT : sorties spatiales.
```

Chaque espace doit garder :

```text
SPC-PACKET ;
monde ;
fonction ;
source(s) ;
relation au corps ;
relation au grave ;
sortie ;
risque P0/P1 ;
droit au retrait.
```

Interdits :

```text
reverb decorative ;
monde spatial impose ;
effacement du corps non decide ;
masquage d'attaque sans signal ;
suppression d'un choix spatial hors P0/P1.
```

Salle :

```text
la salle informe.
elle ne decide pas.
elle peut enrichir, signaler ou proteger selon P0/P1.
```

---

## 11. 07_HALO_MEMORY_HUB

Role :

```text
gerer halo, memoire, queues, maintien, Lock, Force, Cut,
Momentary, Safe force et sorties de halo.
```

Groupes conceptuels :

```text
HAL-SRC-GRP ;
HAL-MEM-GRP ;
HAL-LOCK-GRP ;
HAL-FORCE-GRP ;
HAL-CUT-GRP ;
HAL-EXIT-GRP.
```

Modules M4L conceptuels :

```text
M4L-HAL-MANAGER ;
M4L-HAL-AUTO ;
M4L-HAL-LOCK ;
M4L-HAL-FORCE ;
M4L-HAL-CUT ;
M4L-HAL-MOMENT ;
M4L-HAL-SAFE ;
M4L-HAL-EXIT.
```

Chaque halo doit garder :

```text
HAL-PACKET ;
source ;
memoire ;
mode ;
relation attaque ;
relation grave ;
sortie ;
limite P0/P1.
```

Interdits :

```text
suppression d'un halo voulu hors P0/P1 ;
halo decoratif non decide ;
queue non sortie ;
masquage sans signal.
```

Distinction obligatoire :

```text
GEN-HAL produit ou demande un objet.
SPC place dans un monde.
HAL maintient, verrouille, force, coupe ou sort une memoire.
```

---

## 12. 08_AUTOPRO_HUB

Role :

```text
proteger securite, lisibilite vitale et coherence douce
sans composer ni choisir une esthetique.
```

Modules M4L conceptuels :

```text
M4L-AP-SAFE ;
M4L-AP-MIX ;
M4L-AP-SUB ;
M4L-AP-FEED ;
M4L-AP-ATT ;
M4L-AP-SRC ;
M4L-AP-DENS ;
M4L-AP-SPC ;
M4L-AP-SIG.
```

Recoit :

```text
ANA-PACKET ;
OUT-PACKET ;
etat P0/P1/P5 ;
risques ;
conflits ;
choix live limites.
```

Envoie :

```text
PROTECT-PACKET ;
limite ;
retrait ;
signal P0/P1/P2 limite.
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

Principe P5 :

```text
P5 stabilise.
P5 ne choisit pas.
```

---

## 13. 09_SIGNAL_HUB

Role :

```text
rendre visibles les limites qui changent la jouabilite.
```

Modules M4L conceptuels :

```text
M4L-SIG-MAIN ;
M4L-SIG-P0 ;
M4L-SIG-P1 ;
M4L-SIG-P2-LIMIT ;
M4L-SIG-GRV ;
M4L-SIG-HAL ;
M4L-SIG-GEN ;
M4L-SIG-RET ;
M4L-SIG-CONF ;
M4L-SIG-ROOM.
```

Niveaux :

```text
SIG-0 : invisible ;
SIG-1 : information utile ;
SIG-2 : decision ou limite ;
SIG-3 : critique.
```

Doit signaler :

```text
P0 actif ;
P1 actif ;
P2 limite ;
generation retiree ;
halo limite ;
conflit grave ;
retour prepare ;
doute critique.
```

Ne doit pas :

```text
tout signaler ;
afficher diagnostic permanent ;
masquer P1 ;
laisser un retrait important invisible.
```

---

## 14. 10_OUT_HUB

Role :

```text
representer le resultat entendu et verifier coherence, lisibilite,
decision, protection et sortie.
```

Groupes conceptuels :

```text
OUT-MAIN-GRP ;
OUT-SUB-GRP ;
OUT-SPC-GRP ;
OUT-MON-GRP ;
OUT-SIG-GRP ;
OUT-ROOM-GRP.
```

Modules M4L conceptuels :

```text
M4L-OUT-CHECK ;
M4L-OUT-STATE ;
M4L-OUT-SIG.
```

OUT doit verifier :

```text
source essentielle respectee ;
corps present ou absence decidee ;
generation sortie ou maintenue ;
halo sorti ou maintenu ;
P0/P1 visibles ;
retour prepare si necessaire ;
conflit restant signale.
```

OUT ne doit pas :

```text
juger esthetiquement ;
masteriser ;
composer ;
choisir retour ;
choisir scene ;
choisir motif.
```

---

## 15. Flux Max for Live conceptuels

### 15.1. Flux source audible

```text
IN-SOURCES -> SOURCE_DIRECT_PROTECTED -> OUT_HUB
```

Avec branches conditionnelles :

```text
source -> SOURCE_TRANSFORMED si PERM/DEC ;
source -> SPACE_REVERB_HUB si PERM/DEC ;
source -> HALO_MEMORY_HUB si PERM/DEC ;
source -> GENERATION_HUB si GEN-PACKET possible.
```

### 15.2. Flux analyse

```text
IN-SOURCES / OUT_HUB / GEN_HUB / SPC_HUB / HAL_HUB
-> ANALYSIS_HUB
-> CONTROL_HUB
```

Regle :

```text
analyse non audible ;
analyse non decisionnelle ;
analyse conditionnee par scene, source, risque ou fonction.
```

### 15.3. Flux permission / decision

```text
LIVE + SCENE + ANA + PROTO + AUTOPRO + OUT
-> CONTROL_HUB
-> PERM / DEC
-> GEN / SPC / HAL / AUTOPRO / SIG.
```

Regle :

```text
pas de permission, pas de reaction expressive forte.
P0 gagne toujours.
P1 signale si limitation.
P2 reste souverain hors P0/P1.
```

### 15.4. Flux generation

```text
CONTROL_HUB -> GENERATION_HUB -> GEN-PACKET
-> OUT / SPC / HAL / SIG.
```

Regle :

```text
chaque generation doit avoir fonction, source/origine,
inspiration, sortie et garde-fou.
```

### 15.5. Flux espace / halo

```text
CONTROL_HUB + SOURCE/GEN + ANA-SAL/ANA-SPC
-> SPACE_REVERB_HUB / HALO_MEMORY_HUB
-> OUT / SIG.
```

Regle :

```text
SPC et HAL sont lies mais distincts.
SPC = monde / distance / immersion.
HAL = memoire / maintien / verrou / sortie.
```

### 15.6. Flux Auto-Pro

```text
ANA + OUT + STATE -> AUTOPRO_HUB
-> PROTECT-PACKET -> CONTROL_HUB / SIG / modules limites.
```

Regle :

```text
Auto-Pro limite.
Auto-Pro ne compose pas.
```

---

## 16. Scenes et macros dans l'architecture conceptuelle

Les scenes ne sont pas des presets exclusifs.

Elles sont :

```text
ensembles de permissions ;
priorites ;
sources attendues ;
risques acceptes ;
sorties possibles ;
mondes spatiaux ;
familles GEN autorisees.
```

Scenes conceptuelles a supporter :

```text
SCN-1 didgeridoo / systeme minimum ;
SCN-2 techno corporelle naturalisee ;
SCN-3 techno suspendue tres longue ;
SCN-4 gong / bloom grave / metal-gong ;
SCN-5 sound-system immersion / domination ;
SCN-6 voix exposee integree ;
SCN-7 acid naturalise / ligne vivante ;
SCN-8 polytexture rythmico-spectrale ;
SCN-9 transgression controlee.
```

Macro globale minimale :

```text
scene dominante ;
mode DID ;
mode GRV ;
GEN permission/regime ;
SPC monde/proximite/immersion ;
HAL Auto/Lock/Force/Cut ;
RET sortie/retour ;
TRG autorisee ;
RISK accepte/refuse ;
SIG priorite.
```

Garde-fou :

```text
les scenes doivent rester superposables par role.
```

---

## 17. Setup minimum didgeridoo + PC

Session conceptuelle minimale :

```text
00_CONTROL_HUB ;
IN-DID ;
DIR-DID ;
ANA-DID / ANA-GRV / ANA-RHY ;
GEN-SRC / GEN-RHY / GEN-LIN / GEN-GRV / GEN-HAL / GEN-RET selon permission ;
SPC-PROX ou SPC-IMM ;
HAL-SRC ;
AUTOPRO_HUB ;
SIGNAL_HUB ;
OUT_HUB.
```

Doit permettre :

```text
didgeridoo libre protege ;
systeme adapte au didgeridoo ;
didgeridoo adapte au systeme si decide ;
guide harmonique ;
generation par souffle, attaques, partiels ;
pression rythmique minimale ;
ligne ou basse-motif naturalisee ;
grave soutien, retrait ou libre ;
halo source ;
proximite ;
immersion ;
techno suspendue tres longue ;
retour prepare ;
transgression si decidee.
```

Ne doit pas exiger :

```text
gong ;
voix ;
tambour ;
micro de salle permanent ;
controleur physique complexe ;
generation permanente ;
retour automatique.
```

Controle minimum probable :

```text
mode DID ;
mode GRV ;
GEN on/off/regime ;
SPC proximite/immersion ;
HAL Auto/Lock/Force/Cut ;
RET prepare/sortie ;
RISK accepte/refuse ;
SIG P0/P1/P2.
```

---

## 18. Contraintes de construction future

### 18.1. Separation audio / controle

```text
audio source ;
audio genere ;
audio espace ;
audio halo ;
controle ;
analyse ;
signalisation.
```

doivent rester conceptuellement separables.

### 18.2. Copies d'analyse

```text
les copies d'analyse doivent rester non audibles,
sauf decision explicite de transformer une source en matiere sonore.
```

### 18.3. Controle central vs modules locaux

```text
CONTROL_HUB porte permissions et priorites.
les modules locaux executent seulement ce qui est autorise.
```

### 18.4. Objets generatifs

```text
un objet generatif doit pouvoir etre cree, maintenu, modifie,
retire, signale et sorti.
```

Il doit conserver :

```text
GEN-PACKET.
```

### 18.5. Robustesse

La session conceptuelle doit accepter :

```text
source absente ;
analyse incertaine ;
salle inconnue ;
didgeridoo seul ;
scene longue ;
absence de corps decidee ;
graves libres ;
transgression decidee.
```

---

## 19. Interdits transversaux

```text
Max for Live comme compositeur autonome ;
GEN comme moteur global non borne ;
ANA comme decideur ;
PROTO comme sidechain audio automatique ;
SPC/HAL comme presets decoratifs ;
AUTO-PRO comme correction esthetique ;
OUT comme juge musical ;
piste potentielle comme piste finale ;
scene comme preset exclusif ;
signalisation exhaustive ;
source directe effacee hors P0/P1 ;
setup minimum oublie.
```

---

## 20. Questions restantes

Ces questions ne bloquent pas cette fiche.

Elles seront utiles avant une architecture Max for Live detaillee :

1. Le `CONTROL_HUB` doit-il etre un seul module central ou plusieurs modules synchronises ?
2. Les groupes `GEN` doivent-ils etre des groupes audio separes, des modules generatifs separes, ou une combinaison ?
3. `SPC` et `HAL` doivent-ils etre separes en groupes audio distincts ou seulement separes par controle ?
4. Les analyses doivent-elles etre placees par source, par fonction, ou dans un hub unique ?
5. Le setup didgeridoo seul doit-il utiliser la meme session avec sources absentes ou une vue reduite ?
6. Quels controles premier niveau doivent etre visibles en permanence ?
7. Quelle signalisation peut rester lisible en club sans surcharge ?
8. A quel niveau les retours `GEN-RET`, `PROTO-RET`, `HAL-EXIT` et `SPC-EXIT` doivent-ils etre fusionnes ou separes ?

---

## 21. Decision v0.1

Decision :

```text
l'architecture Max for Live conceptuelle est definie.
```

Elle etablit :

```text
organisation de session conceptuelle ;
groupes Ableton conceptuels ;
pistes conceptuelles ;
modules M4L generiques ;
noyau d'etat ;
flux source, analyse, permission, generation, espace, halo, Auto-Pro ;
support des scenes ;
support du setup minimum didgeridoo + PC ;
interdits transversaux.
```

Prochaine action recommandee :

```text
AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_FOR_LIVE_CONCEPTUELLE_AVEC_CORPUS_v0_1
```

But de l'audit :

```text
verifier que cette architecture Max for Live conceptuelle ne fige pas
encore la session, ne choisit pas de devices, garde la trace stylistique,
respecte P0/P1/P2 et conserve le setup minimum viable.
```
