# SPECIFICATION ARCHITECTURE MAX STANDALONE DETAILLEE NIVEAU 4 PATCHERS ABSTRAITS ET CONTRATS VESPERARE v0.1

Projet : Vesperare
Statut : specification architecture Max standalone detaillee niveau 4 patchers abstraits et contrats
Date : 2026-06-23

Sources actives principales :

- `AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_3_TRADUCTION_STRUCTURES_MAX_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_3_TRADUCTION_STRUCTURES_MAX_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_2_MODULES_MESSAGES_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_2_MODULES_MESSAGES_VESPERARE_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_1_VESPERARE_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_CONCEPTUELLE_VESPERARE_v0_1.md`
- `DECISION_RUNTIME_MAX_STANDALONE_LATENCE_SANS_COMPROMIS_VESPERARE_v0_1.md`
- `MATRICE_BLOCS_RESPONSABILITES_PACKETS_CONTROLES_VESPERARE_v0_1.md`
- `SPECIFICATION_SYSTEME_DECISIONNEL_CONCEPTUEL_VESPERARE_v0_1.md`
- `SPECIFICATION_PROTOCOLS_SIDECHAINS_CONCEPTUELS_v0_1.md`
- `SPECIFICATION_ANALYSES_INDICES_CONCEPTUELS_ET_CONFIANCE_v0_1.md`
- `SPECIFICATION_BLOC_GENERATION_SONORE_MOTIFS_RYTHMIQUES_MELODIQUES_v0_1.md`
- `REVERBS_ESPACE_REACTIF_v0_2.md`

But :

```text
definir une couche de patchers abstraits et contrats internes :
centralise/distribue, owners de packets, visibilite performer/diagnostic,
protocols prioritaires, points CHK direct/safe/out/diag/view, separation
SPC/HAL/GEN-HAL, sans choisir objets Max definitifs, syntaxe finale,
algorithmes, seuils, externals, interface finale, controleur physique,
materiel ou patch final.
```

Cette fiche peut definir :

```text
patcher abstrait ;
classe de localisation ;
owner de packet ;
contrat d'ecriture ;
contrat de lecture ;
contrat de release ;
visibilite performer ;
point de verification ;
contrat de protocol prioritaire ;
frontiere entre responsabilites.
```

Cette fiche ne doit pas definir :

```text
objet Max exact ;
nom de fichier Max final ;
abstraction finale ;
bpatcher final ;
send/receive final ;
dict/coll/pattr final ;
matrice audio finale ;
algorithme ;
seuil ;
plugin ;
external ;
mapping controleur ;
UI finale ;
patch final ;
test pratique.
```

---

## 1. Decision niveau 4

Decision :

```text
le niveau 4 nomme des patchers abstraits et leurs contrats.
```

Un patcher abstrait indique :

```text
responsabilite ;
classe de localisation ;
packets possedes ;
packets lus ;
messages emis ;
autorites respectees ;
sorties/release obligatoires ;
visibilite performer ;
points de verification ;
interdits.
```

Un patcher abstrait ne fixe pas :

```text
un fichier .maxpat ;
un sous-patcher final ;
une abstraction finale ;
un objet Max ;
une structure de donnees finale ;
un patch final.
```

Regle :

```text
PCH-* = contrat de responsabilite.
PCH-* != fichier Max.
```

---

## 2. Conventions niveau 4

Identifiants :

```text
PCH-*      : patcher abstrait ;
CONTRACT-* : contrat interne ;
OWNER-*    : porteur d'un etat ou packet persistant ;
VIS-*      : niveau de visibilite performer/diagnostic ;
CHK-*      : point de verification ;
REL-*      : condition de sortie ou release ;
LOC-*      : classe de localisation ;
BOUND-*    : limite explicite ;
MIN-*      : contrainte setup didgeridoo + PC.
```

Classes de localisation :

```text
LOC-CENTRAL-CONCEPT ;
LOC-DISTRIBUTED-POSSIBLE ;
LOC-CRITICAL-LOCAL ;
LOC-DIAG-ONLY ;
LOC-VIEW-ONLY.
```

Niveaux de visibilite :

```text
VIS-PERFORMER-REQUIRED ;
VIS-PERFORMER-OPTIONAL ;
VIS-DISCREET ;
VIS-DIAG-HIDDEN.
```

Regle :

```text
la localisation indique une contrainte de conception.
elle ne choisit pas thread, fichier, patcher, abstraction, bpatcher,
polyphonie, objet Max ou routage final.
```

---

## 3. Carte des patchers abstraits

Patchers abstraits principaux :

```text
PCH-APP-ROOT ;
PCH-BOOT-CONFIG ;
PCH-AUDIO-IO ;
PCH-STATE-HUB ;
PCH-LIVE-HUB ;
PCH-SOURCE-RT ;
PCH-ANA-FAST ;
PCH-ANA-SLOW ;
PCH-DEC-FAST ;
PCH-DEC-CORE ;
PCH-PROTO-HUB ;
PCH-GEN-HUB ;
PCH-GRAVE-GONG-HUB ;
PCH-SPC-HUB ;
PCH-HAL-HUB ;
PCH-GEN-HAL-SOURCE ;
PCH-AUTOPRO-HUB ;
PCH-MIX-OUT ;
PCH-SIGNAL-VIEWS ;
PCH-REC-DIAG ;
PCH-MIN-DID-PC.
```

Classification initiale :

```text
PCH-APP-ROOT        : LOC-CENTRAL-CONCEPT
PCH-BOOT-CONFIG     : LOC-CENTRAL-CONCEPT
PCH-AUDIO-IO        : LOC-CRITICAL-LOCAL
PCH-STATE-HUB       : LOC-CENTRAL-CONCEPT
PCH-LIVE-HUB        : LOC-CENTRAL-CONCEPT
PCH-SOURCE-RT       : LOC-CRITICAL-LOCAL
PCH-ANA-FAST        : LOC-CRITICAL-LOCAL
PCH-ANA-SLOW        : LOC-DISTRIBUTED-POSSIBLE
PCH-DEC-FAST        : LOC-CRITICAL-LOCAL
PCH-DEC-CORE        : LOC-CENTRAL-CONCEPT
PCH-PROTO-HUB       : LOC-DISTRIBUTED-POSSIBLE
PCH-GEN-HUB         : LOC-DISTRIBUTED-POSSIBLE
PCH-GRAVE-GONG-HUB  : LOC-DISTRIBUTED-POSSIBLE
PCH-SPC-HUB         : LOC-DISTRIBUTED-POSSIBLE
PCH-HAL-HUB         : LOC-DISTRIBUTED-POSSIBLE
PCH-GEN-HAL-SOURCE  : LOC-DISTRIBUTED-POSSIBLE
PCH-AUTOPRO-HUB     : LOC-CENTRAL-CONCEPT
PCH-MIX-OUT         : LOC-CRITICAL-LOCAL
PCH-SIGNAL-VIEWS    : LOC-VIEW-ONLY
PCH-REC-DIAG        : LOC-DIAG-ONLY
PCH-MIN-DID-PC      : LOC-CENTRAL-CONCEPT
```

Regle :

```text
LOC-CENTRAL-CONCEPT peut etre distribue techniquement plus tard.
LOC-CRITICAL-LOCAL signifie hors dependance lente ou diagnostique.
LOC-DIAG-ONLY ne conditionne jamais OUT-MAIN.
LOC-VIEW-ONLY ne conditionne jamais son vital.
```

---

## 4. Contrat commun de patcher abstrait

Chaque `PCH-*` doit declarer :

```text
role ;
LOC ;
packets lus ;
packets possedes ;
messages recus ;
messages emis ;
autorite requise ;
cycle de vie ;
release ;
visibilite ;
CHK ;
interdits.
```

Contrat minimal :

```text
CONTRACT-READ ;
CONTRACT-WRITE ;
CONTRACT-ALLOW ;
CONTRACT-REFUSE ;
CONTRACT-RELEASE ;
CONTRACT-SIGNAL ;
CONTRACT-DIAG.
```

Regles :

```text
aucun PCH expressif n'agit sans DEC/PERM ou live/scene explicite.
aucun PCH diagnostic ne bloque sortie principale.
aucun PCH vue ne conditionne audio vital.
aucun PCH LAT ne modifie DEC/PERM.
aucun PCH GEN ne demarre sans GEN-PACKET.
```

---

## 5. Owners de packets persistants

Correction `CORR-MX3-5` appliquee :

```text
chaque STATE-PERSISTENT doit declarer owner, autorite, ecriture, lecture,
sortie, release et signal si l'etat influence le jeu.
```

Table initiale :

```text
CONFIG-PACKET       owner PCH-BOOT-CONFIG
SETUP-PACKET        owner PCH-BOOT-CONFIG / PCH-MIN-DID-PC
SCN-PACKET          owner PCH-LIVE-HUB / PCH-STATE-HUB
LIVE-PACKET         owner PCH-LIVE-HUB
PERM-PACKET         owner PCH-DEC-CORE
DEC-PACKET          owner PCH-DEC-CORE / PCH-DEC-FAST
PROTO-PACKET        owner PCH-PROTO-HUB
GEN-PACKET          owner PCH-GEN-HUB
GRAVE-PACKET        owner PCH-GRAVE-GONG-HUB
SPC-PACKET          owner PCH-SPC-HUB
HAL-PACKET          owner PCH-HAL-HUB
AUTOPRO-PACKET      owner PCH-AUTOPRO-HUB
MIX-PACKET          owner PCH-MIX-OUT
SIG-PACKET          owner PCH-SIGNAL-VIEWS
LAT-PACKET          owner PCH-ANA-FAST / PCH-ANA-SLOW
DIAG-PACKET         owner PCH-REC-DIAG
```

Regles d'ecriture :

```text
owner peut ecrire ;
DEC/PERM peut autoriser ;
P0/P1 peut ecrire via DEC-FAST si protection immediate ;
VIEW necrit pas un packet musical ;
DIAG necrit pas un packet musical ;
LAT necrit pas DEC/PERM.
```

Regles de release :

```text
permission longue -> REL-PERM ;
scene active -> REL-SCENE ;
GEN actif -> REL-GEN ;
SPC actif -> REL-SPC ;
HAL lock/force -> REL-HAL ;
Auto-Pro actif -> REL-AUTOPRO ;
grave libre -> REL-GRAVE ;
diagnostic -> expiration ou archive.
```

---

## 6. Visibilite performer / diagnostic

Correction `CORR-MX3-3` appliquee :

```text
les messages sont classes en PERFORMER-REQUIRED, PERFORMER-OPTIONAL,
DISCREET ou DIAG-HIDDEN.
```

### 6.1. VIS-PERFORMER-REQUIRED

Doit etre visible ou perceptible pendant le jeu :

```text
P0 ;
P1 ;
direct indisponible ;
MIX-SAFE actif ;
grave critique limite ;
grave retire ;
HAL-CUT sensible ;
PERM-FORCE actif ;
P2 limite visible ;
GEN-START important ;
GEN-EXIT important ;
SPC-WORLD change ;
SPC-LONG engage ;
AUTOPRO action sensible ;
LAT chemin critique si presence affectee.
```

### 6.2. VIS-PERFORMER-OPTIONAL

Peut etre visible selon mode ou vue :

```text
GEN-PREPARE ;
SPC-PREPARE ;
HAL-PREPARE ;
PROTO actif ;
CONF eleve ;
ROOM-RISK ;
LAT-RISK non critique ;
scene preparee ;
couche active.
```

### 6.3. VIS-DISCREET

Signal discret :

```text
diagnostic leger ;
adaptation douce P5 ;
monitoring stable ;
preparation terminee ;
release non critique.
```

### 6.4. VIS-DIAG-HIDDEN

Cache hors diagnostic :

```text
logs ;
historique ;
mesures lentes ;
evenements internes sans consequence de jeu ;
packets archives ;
warnings non performatifs.
```

Regle :

```text
un changement qui modifie jouabilite, sortie, halo voulu, grave critique,
limitation P2, cut sensible ou latence ressentie ne doit pas rester
DIAG-HIDDEN.
```

---

## 7. Points CHK obligatoires

Correction `CORR-MX3-7` appliquee :

```text
formaliser CHK direct/safe/out/diag/view.
```

Points obligatoires :

```text
CHK-DIRECT ;
CHK-MIX-SAFE ;
CHK-OUT-MAIN ;
CHK-GRAVE-CRITICAL ;
CHK-DIAG-NONBLOCK ;
CHK-VIEW-NONVITAL ;
CHK-LAT-NONAUTH ;
CHK-GEN-PACKET ;
CHK-PERM-FORCE ;
CHK-HAL-CUT ;
CHK-SPC-HAL-SEPARATION ;
CHK-MIN-DID-PC.
```

### 7.1. CHK-DIRECT

Verifie :

```text
PATH-DID-DIRECT recuperable ;
pas analyse lente sur direct ;
pas diagnostic sur direct ;
pas reverb longue sur attaque critique ;
pas vue comme condition audio.
```

### 7.2. CHK-MIX-SAFE

Verifie :

```text
MIX-SAFE disponible ;
source directe possible ;
sortie principale non dependante de REC/DIAG ;
signal si repli actif.
```

### 7.3. CHK-OUT-MAIN

Verifie :

```text
OUT-MAIN prioritaire ;
diagnostic non bloquant ;
MIX-REC non critique ;
limitation de sortie signalee.
```

### 7.4. CHK-GRAVE-CRITICAL

Verifie :

```text
grave critique protege ;
conflit deletere distingue de tension decidee ;
retrait grave avec cause ou choix live ;
signal performer si impact corporel.
```

### 7.5. CHK-DIAG-NONBLOCK

Verifie :

```text
DIAG observe ;
DIAG historise ;
DIAG n'ecrit pas decision musicale ;
DIAG ne bloque pas OUT-MAIN.
```

### 7.6. CHK-VIEW-NONVITAL

Verifie :

```text
VIEW affiche ou transmet ;
VIEW ne conditionne pas son vital ;
absence de vue ne coupe pas audio ;
SIG critique reste accessible.
```

---

## 8. Contrats LAT

LAT reste :

```text
information de presence ;
information de reactivite ;
information de chemin critique ;
information de risque ;
diagnostic ;
proposition technique future.
```

LAT ne devient jamais :

```text
PERM-LIMIT ;
PERM-CUT ;
DEC-CUT ;
DEC-LIMIT expressif ;
changement de monde ;
retrait de fonction ;
simplification artistique.
```

Contrat :

```text
PCH-ANA-FAST/PCH-ANA-SLOW peuvent produire LAT-PACKET.
PCH-SIGNAL-VIEWS peut afficher SIG-LAT.
PCH-REC-DIAG peut historiser DIAG-LAT.
PCH-DEC-CORE ne recoit LAT que comme information.
PCH-DEC-CORE ne doit pas accepter LAT comme autorite.
```

Regle :

```text
la latence reste enjeu musical et technique.
elle ne devient pas compromis musical.
```

---

## 9. Protocols prioritaires

Correction `CORR-MX3-4` appliquee :

```text
les protocols prioritaires sont detailles avant implementation.
```

Format commun :

```text
source ;
cible ;
fonction ;
indices utiles ;
autorite requise ;
reaction possible ;
interdits ;
release ;
visibilite ;
CHK.
```

### 9.1. PROTO-DID-GRAVE

```text
source : didgeridoo.
cible : grave critique/support/free.
fonction : guider, soutenir, adapter ou retirer selon mode.
autorite : live/scene + DEC/PERM, P0/P1 si danger.
reaction possible : guide harmonique, support discret, adaptation, retrait.
interdits : annuler liberte didgeridoo, retirer grave sans cause, confondre tension decidee et conflit deletere.
release : REL-GRAVE ou changement mode.
visibilite : VIS-PERFORMER-REQUIRED si retrait/adaptation sensible.
CHK : CHK-GRAVE-CRITICAL.
```

### 9.2. PROTO-DID-GEN-LINE

```text
source : didgeridoo.
cible : GEN-LINE-MEL / GEN-SOURCE-HARM.
fonction : ligne guidee, partiels, motif, acid naturalisee possible.
autorite : GEN-PACKET + PERM-PACKET.
reaction possible : prepare, demarre, varie, sort.
interdits : GEN-START autonome, lead banal par defaut, electronique reconnaissable hors exception.
release : REL-GEN.
visibilite : VIS-PERFORMER-OPTIONAL, required si entree/sortie structurante.
CHK : CHK-GEN-PACKET.
```

### 9.3. PROTO-GONG-GRAVE

```text
source : gong.
cible : grave, sub, harmonie, microtonalite.
fonction : bloom, souffle, base harmonique ou microtonale.
autorite : live/scene + DEC/PERM.
reaction possible : informer, enrichir, supporter, ouvrir espace grave.
interdits : remplacer automatiquement vrai sub, imposer mode seul.
release : REL-GRAVE ou REL-SPC.
visibilite : VIS-PERFORMER-OPTIONAL, required si impact sub fort.
CHK : CHK-GRAVE-CRITICAL.
```

### 9.4. PROTO-HAL-AUTOPRO-MASK

```text
source : halo actif.
cible : Auto-Pro / mix / signal.
fonction : eviter masquage critique tout en preservant halo voulu.
autorite : P1 si lisibilite vitale, sinon DEC/PERM.
reaction possible : signaler, preparer, limiter doucement, demander sortie.
interdits : couper halo voulu hors P0/P1 ou choix live, masquer limitation.
release : REL-HAL / REL-AUTOPRO.
visibilite : VIS-PERFORMER-REQUIRED si cut ou limitation sensible.
CHK : CHK-HAL-CUT.
```

### 9.5. PROTO-SCENE-GEN-RET

```text
source : scene dominante/couche.
cible : GEN-RET-FORM.
fonction : preparer retour corporel, rythmique, spatial, motif ou sortie de suspension.
autorite : scene prepare + live/DEC.
reaction possible : prepare, arm, trigger, cancel, complete, exit.
interdits : retour impose par generation seule, sortie qui casse retour prepare.
release : REL-GEN / REL-SCENE.
visibilite : VIS-PERFORMER-OPTIONAL, required si retour structurel.
CHK : CHK-GEN-PACKET.
```

---

## 10. Separation SPC / HAL / GEN-HAL

Correction `CORR-MX3-6` appliquee :

```text
SPC, HAL et GEN-HAL restent trois responsabilites distinctes.
```

### 10.1. PCH-SPC-HUB

Responsabilite :

```text
distance ;
proximite ;
room ;
monde spatial ;
longue queue ;
grave spatial ;
observation de salle ;
sortie espace.
```

Interdits :

```text
decider HAL ;
generer matiere par lui-meme ;
changer de monde par Auto-Pro seul ;
fusionner tout espace en une seule macro.
```

### 10.2. PCH-HAL-HUB

Responsabilite :

```text
memoire ;
freeze ;
lock ;
force ;
cut ;
safe ;
exit ;
maintien de halo voulu.
```

Interdits :

```text
retirer halo voulu hors P0/P1 ou choix live ;
confondre halo avec toute reverb ;
cut sensible sans signal ;
freeze sans source, monde ou fonction.
```

### 10.3. PCH-GEN-HAL-SOURCE

Responsabilite :

```text
generation de matiere destinee au halo ;
trace d'inspiration ;
naturalisation ;
source perceptive ;
sortie vers HAL possible.
```

Interdits :

```text
decider HAL ;
verrouiller HAL ;
couper HAL ;
changer monde SPC ;
demarrer sans GEN-PACKET.
```

Regle :

```text
GEN-HAL produit matiere.
HAL decide maintien/cut/lock via DEC/PERM.
SPC decide espace/monde/distance via DEC/PERM.
```

---

## 11. PCH-GEN-HUB

Role :

```text
porter les familles generatives sans devenir compositeur global.
```

Sous-patchers abstraits :

```text
PCH-GEN-PULSE-RHY ;
PCH-GEN-LINE-MEL ;
PCH-GEN-SOURCE-HARM ;
PCH-GEN-TEXTURE-BLOOM ;
PCH-GEN-VOICE ;
PCH-GEN-RET-FORM ;
PCH-GEN-HAL-SOURCE ;
PCH-GEN-PACKET-VALIDATOR ;
PCH-GEN-TRACE.
```

Contrats :

```text
GEN-PACKET obligatoire ;
PERM-PACKET obligatoire pour START ;
REQUEST ne demarre jamais ;
VARY reste dans meme role musical ;
EXIT prepare sortie ;
TRACE conserve inspiration -> phenomene -> fonction.
```

Interdits :

```text
composer forme globale ;
importer style entier ;
lead banal par defaut ;
voix nue par defaut ;
electronique reconnaissable hors exception ;
transgression imposee.
```

---

## 12. PCH-MIN-DID-PC

Role :

```text
garantir que didgeridoo + PC reste une forme complete.
```

Doit conserver :

```text
PATH-DID-DIRECT ;
MIX-SAFE ;
analyse presence/attaque/grave/pulse ;
Didg Free ;
System Follows Didg ;
Didg Adapts ;
grave support/retrait ;
generation guidee ou bornee ;
GEN-PACKET ;
espace proche/immersif ;
halo source ;
Auto-Pro P0/P1/P5 ;
signalisation critique/performance.
```

Table sources optionnelles :

```text
gong absent          : DISABLED pour GONG-SOURCE, FALLBACK possible via generation si valide, SIGNAL si scene dependait du gong.
voix absente         : DISABLED pour VOX-SOURCE, FALLBACK possible via souffle/texture si valide, SIGNAL si scene dependait de voix.
peaux absentes       : DISABLED pour SKIN-PULSE, FALLBACK possible via GEN-PULSE-RHY si valide, SIGNAL si scene dependait de peaux.
salle avancee absente: IGNORED ou SIGNAL selon besoin scene, ROOM-OBS simple possible si entree disponible.
entrees supplementaires absentes : DISABLED, jamais bloquant pour MIN-DID-PC.
```

Interdit :

```text
dependance obligatoire a une source optionnelle pour que le systeme soit
musicalement viable.
```

---

## 13. PCH-SIGNAL-VIEWS

Role :

```text
presenter informations utiles sans devenir condition du son vital.
```

Vues abstraites :

```text
VIEW-ALWAYS ;
VIEW-SCENE ;
VIEW-DEEP ;
VIEW-SIG ;
VIEW-DIAG ;
VIEW-MIN-DID.
```

Contrats :

```text
VIEW-ALWAYS porte VIS-PERFORMER-REQUIRED.
VIEW-SIG porte signaux performatifs et critiques.
VIEW-DIAG porte historique, warnings et etat detaille.
VIEW-MIN-DID rend lisible le setup didgeridoo seul.
```

Interdits :

```text
VIEW comme condition de MIX-MAIN ;
VIEW comme condition de MIX-SAFE ;
VIEW qui cache P0/P1 ;
VIEW qui rend impossible repli direct.
```

---

## 14. PCH-AUTOPRO-HUB

Role :

```text
proteger, monitorer, signaler, proposer et relacher sans composer.
```

Sous-patchers abstraits :

```text
PCH-AUTOPRO-P0 ;
PCH-AUTOPRO-P1 ;
PCH-AUTOPRO-P5 ;
PCH-AUTOPRO-MONITOR ;
PCH-AUTOPRO-REQUEST ;
PCH-AUTOPRO-RELEASE.
```

Contrats :

```text
P0 peut agir immediatement avec cause.
P1 protege lisibilite vitale.
P5 stabilise sans gout automatique.
REQUEST passe par DEC/PERM hors P0/P1.
RELEASE obligatoire pour action persistante.
SIG obligatoire si action sensible.
```

Interdits :

```text
correcteur esthetique ;
compositeur ;
retrait non signale ;
changement de monde ;
cut halo voulu hors danger critique.
```

---

## 15. PCH-MIX-OUT

Role :

```text
tenir sortie principale, direct, safe, generation, grave, espace, halo,
monitoring, record et diagnostic non critique.
```

Sous-patchers abstraits :

```text
PCH-MIX-DIRECT ;
PCH-MIX-SOURCE-TREAT ;
PCH-MIX-GRAVE ;
PCH-MIX-GEN ;
PCH-MIX-SPC ;
PCH-MIX-HAL ;
PCH-MIX-PROTECT ;
PCH-MIX-MAIN ;
PCH-MIX-MONITOR ;
PCH-MIX-REC ;
PCH-MIX-DIAG ;
PCH-MIX-SAFE.
```

Contrats :

```text
MIX-MAIN prioritaire.
MIX-SAFE disponible.
MIX-DIRECT recuperable.
MIX-DIAG non critique.
MIX-REC non critique.
limitation de sortie signalee.
```

Interdits :

```text
MIX-MAIN dependant de DIAG ;
MIX-MAIN dependant de VIEW ;
MIX-SAFE dependant de generation ;
retirer fonction desiree pour charge ;
masquer limitation.
```

---

## 16. PCH-REC-DIAG

Role :

```text
historiser et expliquer sans bloquer.
```

Contrats :

```text
DIAG-PACKET owner ;
DIAG-HISTORY ;
logs ;
warnings ;
latence ;
charge ;
decisions refusees ;
actions Auto-Pro ;
cuts HAL ;
GEN events ;
SPC events.
```

Interdits :

```text
ecrire decision musicale ;
bloquer OUT-MAIN ;
bloquer MIX-SAFE ;
conditionner VIEW-ALWAYS ;
conditionner audio critique.
```

---

## 17. Frontieres d'implementation non franchies

Ce niveau ne choisit pas :

```text
patcher final ;
nom de fichier ;
objet Max ;
message Max exact ;
send/receive ;
dict ;
coll ;
pattr ;
matrix ;
poly ;
mc ;
js ;
gen ;
rnbo ;
external ;
plugin ;
buffer ;
driver ;
interface audio ;
controleur ;
UI finale.
```

Regle :

```text
les noms PCH-* servent a verifier responsabilites et contrats.
ils ne sont pas une architecture de fichiers.
```

---

## 18. Corrections CORR-MX3 traitees

```text
CORR-MX3-1 : PCH-* = responsabilites, pas fichiers Max.
CORR-MX3-2 : classes LOC definies.
CORR-MX3-3 : classes VIS definies.
CORR-MX3-4 : protocols prioritaires detailles.
CORR-MX3-5 : owners/release de packets persistants definis.
CORR-MX3-6 : SPC, HAL, GEN-HAL separes.
CORR-MX3-7 : CHK direct/safe/out/diag/view formalises.
```

---

## 19. Questions restantes

Questions pour audit niveau 4 ou niveau suivant :

1. Les classes LOC sont-elles suffisantes ou faut-il une classe LAT-CRITICAL ?
2. Les owners de packets persistants sont-ils trop centralises dans PCH-STATE-HUB ?
3. Quels PCH devront devenir fichiers Max separes plus tard ?
4. Quels PCH devront rester sous-patchers internes ?
5. Quels PCH devront devenir abstractions reutilisables ?
6. Quels PCH devront avoir une vue performer dediee ?
7. Quel niveau de detail accepter pour les checks sans entrer dans les seuils ?
8. Faut-il une specification dediee aux vues live avant les objets Max ?
9. Faut-il detailler les protocols restants avant tout patch ?
10. Quelle couche viendra apres : audit niveau 4 ou specification objets Max candidats non definitifs ?

Ces questions ne bloquent pas l'audit niveau 4.

---

## 20. Decision v0.1

Decision :

```text
la specification niveau 4 patchers abstraits et contrats est posee.
```

Elle etablit :

```text
PCH abstraits ;
classes LOC ;
classes VIS ;
owners de packets ;
releases ;
checks CHK ;
protocols prioritaires ;
separation SPC/HAL/GEN-HAL ;
contrats MIN-DID-PC ;
frontieres de non-implementation.
```

Prochaine action recommandee :

```text
AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_4_PATCHERS_ABSTRAITS_ET_CONTRATS_AVEC_CORPUS_v0_1
```

But :

```text
verifier que les patchers abstraits restent compatibles avec le corpus,
qu'ils ne deviennent pas fichiers Max ou implementation cachee, que les
owners/release/visibilites/checks/protocols respectent les besoins musicaux,
et que la suite peut se rapprocher des objets Max seulement si les garde-fous
restent explicites.
```
