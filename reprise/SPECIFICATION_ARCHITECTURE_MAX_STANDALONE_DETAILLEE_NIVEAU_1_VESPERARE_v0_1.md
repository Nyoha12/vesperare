# SPECIFICATION ARCHITECTURE MAX STANDALONE DETAILLEE NIVEAU 1 VESPERARE v0.1

Projet : Vesperare
Statut : specification architecture Max standalone detaillee niveau 1
Date : 2026-06-23

Sources actives principales :

- `AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_CONCEPTUELLE_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_CONCEPTUELLE_VESPERARE_v0_1.md`
- `DECISION_RUNTIME_MAX_STANDALONE_LATENCE_SANS_COMPROMIS_VESPERARE_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_FONCTIONNELLE_ABSTRAITE_VESPERARE_v0_1.md`
- `MATRICE_BLOCS_RESPONSABILITES_PACKETS_CONTROLES_VESPERARE_v0_1.md`
- `SPECIFICATION_SYSTEME_DECISIONNEL_CONCEPTUEL_VESPERARE_v0_1.md`
- `SPECIFICATION_PROTOCOLS_SIDECHAINS_CONCEPTUELS_v0_1.md`
- `SPECIFICATION_ANALYSES_INDICES_CONCEPTUELS_ET_CONFIANCE_v0_1.md`
- `SPECIFICATION_BLOC_GENERATION_SONORE_MOTIFS_RYTHMIQUES_MELODIQUES_v0_1.md`
- `REVERBS_ESPACE_REACTIF_v0_2.md`

But :

```text
definir la partition niveau 1 de l'application Max standalone :
patchers principaux, responsabilites, chemins audio conceptuels,
chemins de controle, chemins d'analyse, familles generation/espace/halo,
Auto-Pro, signalisation et niveaux de controle live.
```

Cette fiche peut definir :

```text
patchers principaux ;
voies audio conceptuelles ;
voies d'analyse ;
voies de controle ;
etat partage ;
roles rapides/lents ;
groupes de moteurs GEN ;
familles SPC/HAL/AUTOPRO ;
niveaux de controle live ;
enjeux de latence/presence ;
garde-fous de non-compromis.
```

Cette fiche ne doit pas definir :

```text
objets Max exacts ;
algorithmes ;
seuils numeriques ;
plugins ;
externals ;
UI finale ;
controleur physique ;
materiel final ;
buffer final ;
patch final.
```

---

## 1. Decision niveau 1

Decision :

```text
Vesperare Max standalone doit etre organise comme une application a patchers
responsables, chemins audio separes et etat partage, pas comme un patch
monolithique.
```

Principe :

```text
la latence est un enjeu musical actif :
presence, precision rythmique, confiance du geste, pression corporelle,
reactivite du grave, continuite entre acoustique et systeme.
```

Regle :

```text
la faible latence doit etre recherchee par architecture.
elle ne doit pas etre obtenue par retrait ou appauvrissement musical.
```

---

## 2. Partition generale niveau 1

Patchers principaux :

```text
MX-BOOT ;
MX-CONFIG ;
MX-AUDIO-IO ;
MX-STATE ;
MX-LIVE ;
MX-SRC ;
MX-RT ;
MX-ANA-FAST ;
MX-ANA-SLOW ;
MX-DEC-FAST ;
MX-DEC-CORE ;
MX-PROTO ;
MX-GEN ;
MX-GRAVE ;
MX-SPC ;
MX-HAL ;
MX-AUTOPRO ;
MX-MIX ;
MX-SIG ;
MX-REC-DIAG.
```

Topologie logique :

```text
MX-AUDIO-IO
  -> MX-SRC
  -> MX-RT
  -> MX-MIX

MX-SRC -> TAP -> MX-ANA-FAST -> MX-DEC-FAST -> MX-RT/MX-AUTOPRO/MX-MIX
MX-SRC -> TAP -> MX-ANA-SLOW -> MX-STATE -> MX-DEC-CORE

MX-LIVE -> MX-STATE -> MX-DEC-CORE
MX-DEC-CORE -> MX-PROTO -> MX-GEN/MX-GRAVE/MX-SPC/MX-HAL
MX-AUTOPRO -> MX-MIX/MX-SIG
MX-SIG -> MX-LIVE
```

Regle de lecture :

```text
cette topologie n'est pas une chaine audio unique.
c'est une carte de responsabilites et de dependances.
```

---

## 3. Chemins audio niveau 1

### 3.1. PATH-DIRECT

Role :

```text
garantir une sortie directe ou quasi directe de la source critique.
```

Sources :

```text
didgeridoo minimum ;
voix optionnelle ;
gong optionnel ;
tambour/peau optionnel.
```

Priorite :

```text
LAT-0.
```

Traverse :

```text
MX-AUDIO-IO ;
MX-RT ;
MX-MIX.
```

Ne traverse pas :

```text
MX-ANA-SLOW ;
MX-GEN ;
MX-SPC-LONG ;
MX-HAL-LONG ;
MX-REC-DIAG.
```

### 3.2. PATH-SOURCE-TREAT

Role :

```text
porter les traitements joues et decides sur source acoustique.
```

Priorite :

```text
LAT-1.
```

Traverse :

```text
MX-SRC ;
MX-RT ;
MX-DEC-FAST si necessaire ;
MX-AUTOPRO-P1 ;
MX-MIX.
```

Garde-fou :

```text
le traitement source ne doit pas rendre le direct indisponible.
```

### 3.3. PATH-GRAVE-CRITICAL

Role :

```text
gerer conflit grave, sub, didgeridoo, gong et sortie corporelle critique.
```

Priorite :

```text
LAT-0 ou LAT-1 selon fonction.
```

Traverse :

```text
MX-SRC ;
MX-ANA-FAST ;
MX-DEC-FAST ;
MX-GRAVE-CRITICAL ;
MX-AUTOPRO-P1 ;
MX-MIX.
```

Regle :

```text
le grave critique est une fonction musicale et corporelle,
pas seulement une correction de mix.
```

### 3.4. PATH-GEN

Role :

```text
porter les objets generes autorises.
```

Priorite :

```text
LAT-1 pour generation jouee ;
LAT-2 pour generation non immediate ;
LAT-3 pour preparation ou memoire.
```

Traverse :

```text
MX-DEC-CORE ;
MX-PROTO ;
MX-GEN ;
MX-AUTOPRO-P5/P1 selon risque ;
MX-MIX.
```

Obligation :

```text
GEN-PACKET avant sortie.
```

### 3.5. PATH-SPC

Role :

```text
porter proximite, monde, salle, immersion et reverb.
```

Priorite :

```text
LAT-1 si espace proche indispensable ;
LAT-2 pour espace musical ;
LAT-3 pour longues queues et analyses de salle.
```

Traverse :

```text
MX-SPC-NEAR ;
MX-SPC-ROOM ;
MX-SPC-WORLD ;
MX-SPC-LONG ;
MX-SPC-GRAVE ;
MX-MIX.
```

Regle :

```text
reverb longue hors attaque critique.
```

### 3.6. PATH-HAL

Role :

```text
porter memoire, freeze, halo lock/force/cut et sorties longues.
```

Priorite :

```text
LAT-2 ou LAT-3, sauf controle live immediat de lock/cut.
```

Traverse :

```text
MX-HAL-MEM ;
MX-HAL-FREEZE ;
MX-HAL-LOCK ;
MX-HAL-FORCE ;
MX-HAL-EXIT ;
MX-MIX.
```

Regle :

```text
halo voulu non retire hors P0/P1.
```

---

## 4. Chemins de controle niveau 1

### 4.1. CTRL-LIVE

Role :

```text
porter les choix explicites du musicien.
```

Traverse :

```text
MX-LIVE -> MX-STATE -> MX-DEC-CORE -> fonctions autorisees.
```

Priorite :

```text
P2 hors P0/P1.
```

### 4.2. CTRL-SCENE

Role :

```text
porter scene, couche, sortie preparee et contexte.
```

Traverse :

```text
MX-LIVE/MX-CONFIG -> MX-STATE -> MX-DEC-CORE.
```

Ne doit pas :

```text
contourner un choix live explicite ;
imposer un retour ;
imposer une transgression.
```

### 4.3. CTRL-FAST-PROTECT

Role :

```text
permettre reaction P0/P1 rapide.
```

Traverse :

```text
MX-ANA-FAST -> MX-DEC-FAST -> MX-RT / MX-AUTOPRO-P0/P1 / MX-SIG.
```

Regle :

```text
ne pas attendre MX-ANA-SLOW.
```

### 4.4. CTRL-PROTO

Role :

```text
porter les relations source -> cible.
```

Traverse :

```text
MX-DEC-CORE -> MX-PROTO -> cible deja autorisee.
```

Interdit :

```text
activation autonome de cible.
```

---

## 5. Analyse niveau 1

### 5.1. TAP audio

Role :

```text
copier une information utile sans ralentir le chemin critique.
```

Taps minimaux :

```text
TAP-DID ;
TAP-GONG ;
TAP-VOX ;
TAP-DRUM ;
TAP-ROOM ;
TAP-MIX ;
TAP-GRAVE ;
TAP-HAL ;
TAP-GEN.
```

Regle :

```text
un TAP observe.
il ne modifie pas le son.
```

### 5.2. MX-ANA-FAST

Responsabilites :

```text
presence source ;
niveau critique ;
attaque ;
risque feedback ;
grave conflictuel ;
masquage flagrant ;
lisibilite immediate ;
etat P0/P1.
```

Sorties :

```text
ANA-FAST-PACKET ;
CONF rapide ;
P0/P1 risk ;
SIG demande.
```

### 5.3. MX-ANA-SLOW

Responsabilites :

```text
densite ;
stabilite rythmique ;
tendance spectrale ;
relation salle ;
queue/halo ;
memoire de scene ;
preparation de retour ;
diagnostic non critique.
```

Sorties :

```text
ANA-SLOW-PACKET ;
proposition ;
preparation ;
historique ;
diagnostic.
```

Interdit :

```text
decision expressive directe.
```

---

## 6. Decision niveau 1

### 6.1. MX-DEC-FAST

Nature :

```text
voie rapide de priorite, pas compositeur.
```

Role :

```text
resoudre rapidement P0/P1 et quelques protections LAT-0/LAT-1.
```

Peut autoriser :

```text
repli direct ;
protection feedback ;
protection niveau ;
protection grave critique ;
signal P0/P1 ;
maintien source essentielle.
```

Ne peut pas :

```text
choisir scene ;
choisir monde spatial ;
choisir generation ;
choisir transgression ;
choisir retour corporel.
```

### 6.2. MX-DEC-CORE

Nature :

```text
arbitre general des permissions.
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
PERM-PACKET ;
DEC-PACKET ;
reaction autorisee ;
reaction refusee ;
sortie prevue ;
signalisation.
```

Regle :

```text
MX-DEC-CORE autorise.
il ne compose pas.
```

---

## 7. Etat partage niveau 1

MX-STATE contient :

```text
scene active ;
couches actives ;
mode didgeridoo ;
mode grave ;
mode generation ;
mode espace ;
mode halo ;
etat P0/P1/P2 ;
GEN-PACKET actifs ;
SPC-PACKET actifs ;
HAL-PACKET actifs ;
PROTOCOLS actifs ;
sorties preparees ;
verrouillages ;
limitations signalees ;
profil de latence courant ;
profil de charge courant.
```

Regles :

```text
etat partage != decision cachee.
etat partage != preset esthetique global.
etat partage != automatisme de composition.
```

---

## 8. Generation niveau 1

### 8.1. Familles techniques GEN

Regroupement niveau 1 :

```text
GEN-PULSE-RHY ;
GEN-LINE-MEL ;
GEN-SOURCE-HARM ;
GEN-TEXTURE-BLOOM ;
GEN-VOICE ;
GEN-RET-FORM.
```

But :

```text
eviter un patcher different par inspiration.
les inspirations guident les comportements, pas l'arborescence technique brute.
```

### 8.2. GEN-PULSE-RHY

Porte :

```text
pression rythmique ;
interlocking ;
micro-pulse ;
attaque fantome ;
energie percussive ;
Keita Ogawa / jazz comme precision, tension, timbre et dynamique ;
trance suspendue si pulse latent ;
dubstep trace si pression/rupture naturalisee.
```

Interdit :

```text
style jazz plaque ;
beat banal ;
retour impose ;
motif autonome hors scene.
```

### 8.3. GEN-LINE-MEL

Porte :

```text
basse-motif ;
ligne acid naturalisee ;
fragment melodique ;
hook minimal decide ;
ligne guidee par didgeridoo ;
ligne preparee par scene.
```

Interdit :

```text
lead synth banal ;
303 identifiable par defaut ;
squelch caricatural non decide ;
pitch correction reconnaissable.
```

### 8.4. GEN-SOURCE-HARM

Porte :

```text
guidage harmonique didgeridoo ;
adaptation de partiels ;
relation gong / base microtonale ;
harmoniques de source ;
source-bonding ;
naturalisation acoustique.
```

Interdit :

```text
correction harmonique invisible qui change la jouabilite sans signal.
```

### 8.5. GEN-TEXTURE-BLOOM

Porte :

```text
bloom gong ;
souffle grave ;
texture rugueuse ;
masse ;
transgression decidee ;
matiere naturalisee ;
pression sound-system.
```

Interdit :

```text
nappe ambient generique ;
texture sans fonction ;
son electronique reconnaissable non decide.
```

### 8.6. GEN-VOICE

Porte :

```text
fragment vocal ;
souffle ;
cavite ;
cri transforme ;
voix integree ;
trace presque chantable.
```

Interdit :

```text
voix nue non integree ;
auto-tune reconnaissable ;
lead vocal pop involontaire.
```

### 8.7. GEN-RET-FORM

Porte :

```text
retour prepare ;
reinstallation corporelle ;
sortie de suspension ;
transition ;
memoire de motif ;
cadre rythmique ou spatial.
```

Interdit :

```text
retour impose par systeme ;
resolution obligatoire ;
forme autonome.
```

---

## 9. Grave / gong niveau 1

Patchers conceptuels :

```text
MX-GRAVE-CRITICAL ;
MX-GRAVE-SUPPORT ;
MX-GRAVE-FREE ;
MX-GONG-BLOOM ;
MX-GONG-HARM ;
MX-GONG-SPC-SOURCE.
```

Modes :

```text
GRV-DID-GUIDE ;
GRV-DISCREET-SUPPORT ;
GRV-DID-HARMONICS-ADAPT ;
GRV-WITHDRAW-IF-DELETERIOUS ;
GRV-FREE.
```

Regles :

```text
grave critique prioritaire ;
grave libre seulement decide ;
gong peut guider harmonie, microtonalite, souffle et bloom ;
support grave non retire comme automatisme artistique ;
conflit deletere signale ou protege.
```

---

## 10. Espace / reverb niveau 1

Patchers conceptuels SPC :

```text
MX-SPC-NEAR ;
MX-SPC-ROOM ;
MX-SPC-WORLD ;
MX-SPC-LONG ;
MX-SPC-GRAVE ;
MX-SPC-ROOM-ANALYSIS.
```

### 10.1. MX-SPC-NEAR

Role :

```text
proximite, presence, cavite courte, lisibilite source.
```

Priorite :

```text
LAT-1 ou LAT-2 selon fonction.
```

### 10.2. MX-SPC-ROOM

Role :

```text
espace commun, coherence, naturalisation, relation salle.
```

### 10.3. MX-SPC-WORLD

Role :

```text
monde spatial principal, matiere, appartenance.
```

Regle :

```text
monde choisi par scene ou live.
Auto-Pro adapte dedans, ne change pas de monde seul.
```

### 10.4. MX-SPC-LONG

Role :

```text
queues longues, immensite, suspension, profondeur decidee.
```

Regle :

```text
hors attaque critique.
```

### 10.5. MX-SPC-GRAVE

Role :

```text
grave spatial, pression, bloom, corps de salle.
```

### 10.6. MX-SPC-ROOM-ANALYSIS

Role :

```text
observer la salle, informer Auto-Pro et SPC.
```

Interdit :

```text
decider un monde spatial seul.
```

---

## 11. Halo niveau 1

Patchers conceptuels HAL :

```text
MX-HAL-MEM ;
MX-HAL-FREEZE ;
MX-HAL-LOCK ;
MX-HAL-FORCE ;
MX-HAL-CUT ;
MX-HAL-EXIT.
```

Regles :

```text
HAL-LOCK maintient un halo voulu.
HAL-FORCE force seulement si choix live ou scene explicite.
HAL-CUT coupe si choix live, P0/P1 ou sortie decidee.
HAL-FREEZE rattache a source ou monde par defaut.
HAL-EXIT prepare la sortie pour ne pas casser la forme.
```

Interdits :

```text
halo voulu retire hors P0/P1 ;
freeze ambient generique ;
queue longue sans fonction ;
halo qui masque source essentielle sans signal.
```

---

## 12. Auto-Pro niveau 1

Patchers conceptuels :

```text
MX-AUTOPRO-P0 ;
MX-AUTOPRO-P1 ;
MX-AUTOPRO-P5 ;
MX-AUTOPRO-MONITOR.
```

### 12.1. MX-AUTOPRO-P0

Role :

```text
securite critique.
```

Peut agir vite sur :

```text
sortie dangereuse ;
feedback critique ;
etat non jouable ;
repli direct.
```

### 12.2. MX-AUTOPRO-P1

Role :

```text
protection mix vitale.
```

Peut agir sur :

```text
grave illisible ;
masquage source essentielle ;
headroom ;
attaque critique ;
halo dangereux ;
queue envahissante.
```

### 12.3. MX-AUTOPRO-P5

Role :

```text
coherence douce et hygiene sonore.
```

Peut agir seulement si :

```text
pas de choix live contraire ;
pas de monde change ;
pas de fonction musicale retiree ;
pas de scene decidee a la place du musicien.
```

---

## 13. Interface live niveau 1

### 13.1. ALWAYS-ON-HAND

Toujours sous la main :

```text
Panic / P0 ;
Direct Safe ;
P1 protect ;
niveau entree/sortie essentiel ;
didgeridoo free/protected ;
mode grave ;
halo lock/cut ;
generation enable/hold/exit ;
scene/couche active ;
signalisation critique.
```

### 13.2. SCENE-PREP

Prepare par scene :

```text
modes didgeridoo avances ;
modes grave avances ;
familles GEN actives ;
monde spatial ;
retour prepare ;
transgression possible ;
halo force ;
routes de sortie ;
profil de suspension.
```

### 13.3. DEEP-EDIT

Edition profonde :

```text
details des moteurs GEN ;
details SPC/HAL ;
details protocols ;
details analyses ;
profils Auto-Pro ;
assignations controleur ;
organisation scenes.
```

### 13.4. DIAGNOSTIC

Diagnostic :

```text
charge ;
risque latence ;
etat audio ;
entrees actives ;
confiance analyses ;
causes P0/P1 ;
objets GEN actifs ;
etat de halo ;
historique.
```

Regle :

```text
diagnostic ne doit pas saturer la performance.
```

---

## 14. Signalisation niveau 1

Niveaux :

```text
SIG-CRITICAL ;
SIG-PERFORM ;
SIG-DISCREET ;
SIG-DIAG.
```

SIG-CRITICAL :

```text
P0 ;
P1 grave/source/sortie ;
direct safe ;
feedback ;
sortie critique.
```

SIG-PERFORM :

```text
mode actif ;
halo lock/force/cut ;
generation hold/exit ;
retour prepare ;
transgression active ;
limitation jouable.
```

SIG-DISCREET :

```text
analyse incertaine ;
proposition refusee ;
objet GEN non autorise ;
scene preparee.
```

SIG-DIAG :

```text
historique ;
charge ;
latence estimee ;
etat de packets ;
confiance detaillee.
```

---

## 15. Enjeu latence niveau 1

La latence doit etre suivie comme :

```text
enjeu de presence ;
enjeu de precision rythmique ;
enjeu de confiance corporelle ;
enjeu de reaction du grave ;
enjeu de continuite acoustique/systeme ;
enjeu de credibilite club/live.
```

Pas seulement comme :

```text
contrainte CPU ;
contrainte buffer ;
contrainte driver.
```

Regles niveau 1 :

```text
PATH-DIRECT minimal ;
PATH-GRAVE-CRITICAL court ;
ANA-SLOW hors critique ;
SPC-LONG hors attaque ;
HAL-LONG hors direct ;
UI hors audio vital ;
diagnostic hors audio vital ;
aucune fonction desiree retiree pour simplifier.
```

Reponse si risque :

```text
reorganiser ;
separer ;
precalculer ;
changer temporalite de calcul ;
changer routage ;
changer materiel plus tard ;
signaler.
```

Pas :

```text
retirer la fonction musicale desiree ;
appauvrir la scene ;
faire sonner electronique par facilite ;
masquer une limitation.
```

---

## 16. Structure de configuration niveau 1

MX-CONFIG doit prevoir :

```text
profil audio ;
profil entrees/sorties ;
setup minimal ;
setup etendu ;
scenes preparees ;
modes instruments ;
modes grave ;
modes espace ;
modes halo ;
familles GEN disponibles ;
profils Auto-Pro ;
profils interface ;
profils diagnostic.
```

Interdit :

```text
config qui force une scene ;
config qui rend le direct indisponible ;
config qui remplace une decision live ;
config qui retire une fonction pour latence.
```

---

## 17. RNBO / portabilite secondaire niveau 1

Position :

```text
RNBO peut rester une compatibilite future de sous-moteurs.
```

Candidats possibles :

```text
certains DSP GEN ;
certains traitements source ;
certains moteurs SPC simples ;
certains protecteurs Auto-Pro simples.
```

Non candidats prioritaires :

```text
APP-STATE complet ;
APP-DEC-CORE complet ;
APP-LIVE complet ;
scene editor ;
diagnostic complet ;
architecture generale.
```

Regle :

```text
RNBO ne doit pas contraindre Max standalone.
```

---

## 18. Correspondance FRAG-MX

```text
FRAG-MX-1  -> partition patchers niveau 1 definie.
FRAG-MX-2  -> MX-DEC-FAST defini comme voie rapide de priorite.
FRAG-MX-3  -> strategies d'optimisation par familles posees.
FRAG-MX-4  -> modes didgeridoo a classer dans ALWAYS/SCENE/DEEP.
FRAG-MX-5  -> GRAVE-CRITICAL/SUPPORT/FREE et GONG-* separes.
FRAG-MX-6  -> moteurs GEN regroupes par familles techniques.
FRAG-MX-7  -> Keita Ogawa/jazz maintenu comme phenomene, pas style.
FRAG-MX-8  -> protocols a decomposer TAP/ANA/PERM/action.
FRAG-MX-9  -> CONF a raccorder aux reactions niveau suivant.
FRAG-MX-10 -> SPC separe en NEAR/ROOM/WORLD/LONG/GRAVE/ANALYSIS.
FRAG-MX-11 -> HAL separe en MEM/FREEZE/LOCK/FORCE/CUT/EXIT.
FRAG-MX-12 -> Auto-Pro separe P0/P1/P5.
FRAG-MX-13 -> controles classes ALWAYS/SCENE/DEEP/DIAG.
FRAG-MX-14 -> signalisation classee CRITICAL/PERFORM/DISCREET/DIAG.
```

---

## 19. Questions restantes

Questions pour le niveau suivant :

1. Quels patchers niveau 1 deviennent fichiers principaux, abstractions ou sous-vues ?
2. Quels packets doivent avoir representation persistante dans MX-STATE ?
3. Quels protocols prioritaires doivent etre decomposes en premier ?
4. Quels controles ALWAYS-ON-HAND doivent etre physiques plutot que souris ?
5. Quels moteurs GEN doivent etre accessibles en live vs prepares ?
6. Quel niveau stereo/multicanal de base pour MX-MIX ?
7. Quelles analyses rapides sont indispensables au premier prototype conceptuel ?
8. Quels profils de scene sont utiles sans figer de morceaux ?
9. Quels diagnostics sont utiles en live et lesquels doivent rester caches ?
10. Quelle granularite de presets evite l'effet usine a gaz ?

---

## 20. Decision v0.1

Decision :

```text
la partition Max standalone detaillee niveau 1 est posee.
```

Elle etablit :

```text
patchers principaux ;
chemins audio ;
chemins de controle ;
analyse fast/slow ;
DEC-FAST / DEC-CORE ;
etat partage ;
familles GEN ;
grave/gong ;
SPC ;
HAL ;
Auto-Pro ;
interface live ;
signalisation ;
enjeu latence/presence ;
configuration ;
portabilite secondaire.
```

Prochaine action recommandee :

```text
AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_1_AVEC_CORPUS_v0_1
```

But :

```text
verifier que la partition niveau 1 ne fragmente pas trop le systeme,
ne perd aucune fonction musicale, respecte la latence comme enjeu sans
compromis, garde Max standalone comme trajectoire principale et prepare
un niveau 2 modules/messages sans commencer l'implementation.
```
