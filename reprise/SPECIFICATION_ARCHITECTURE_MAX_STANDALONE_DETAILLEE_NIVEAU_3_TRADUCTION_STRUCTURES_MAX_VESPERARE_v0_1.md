# SPECIFICATION ARCHITECTURE MAX STANDALONE DETAILLEE NIVEAU 3 TRADUCTION STRUCTURES MAX VESPERARE v0.1

Projet : Vesperare
Statut : specification architecture Max standalone detaillee niveau 3 traduction structures Max
Date : 2026-06-23

Sources actives principales :

- `AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_2_MODULES_MESSAGES_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_2_MODULES_MESSAGES_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_1_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_1_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_CONCEPTUELLE_AVEC_CORPUS_v0_1.md`
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
traduire les modules, messages, packets et corrections du niveau 2 vers une
organisation de structures Max standalone : patchers, sous-patchers,
plans audio, plans controle, etat, vues, diagnostics et flux de responsabilite,
sans choisir objets Max, syntaxe finale, algorithmes, seuils, materiel,
controleur physique, interface finale ou patch final.
```

Cette fiche peut definir :

```text
structures Max conceptuelles ;
patchers candidats ;
sous-patchers candidats ;
plans de flux ;
espaces de noms de messages ;
cycle de vie des messages ;
types de persistance d'etat ;
zones de signalisation ;
zones de diagnostic ;
garde-fous de latence ;
setup minimum didgeridoo + PC ;
conditions de passage au niveau suivant.
```

Cette fiche ne doit pas definir :

```text
objets Max exacts ;
syntax Max definitive ;
send/receive definitifs ;
dict/coll/pattr definitifs ;
matrices audio finales ;
algorithmes ;
seuils ;
externals ;
plugins ;
UI finale ;
controleur physique final ;
materiel final ;
patch final ;
tests pratiques.
```

---

## 1. Decision niveau 3

Decision :

```text
le niveau 3 de Vesperare Max standalone est une carte de structures de
responsabilite.
```

Une structure de responsabilite indique :

```text
quelle fonction elle porte ;
quels packets elle lit ;
quels messages elle peut produire ;
quelles autorites elle respecte ;
quels flux elle ne doit jamais bloquer ;
quels risques elle doit signaler ;
quelle sortie elle doit preparer.
```

Une structure de responsabilite ne fixe pas :

```text
un objet Max ;
un patcher final ;
un nom de send/receive ;
une abstraction definitive ;
un algorithme ;
un seuil ;
une vue finale ;
un mapping controleur.
```

Interdit central :

```text
le niveau 3 ne doit pas devenir une implementation Max.
```

---

## 2. Convention niveau 3

Identifiants :

```text
MX3-*      : structure Max standalone conceptuelle ;
PATH-*     : chemin audio ou controle conceptuel ;
STORE-*    : zone d'etat ou memoire conceptuelle ;
ROUTE-*    : zone de circulation de messages ;
VIEW-*     : zone de presentation ou controle conceptuel ;
CHK-*      : point de verification conceptuel ;
MIN-*      : element du setup minimum didgeridoo + PC ;
GUARD-*    : garde-fou obligatoire ;
NS-*       : espace de noms de messages.
```

Regle :

```text
un identifiant niveau 3 peut devenir plus tard un patcher, un sous-patcher,
une abstraction, une zone d'interface, une structure de donnees, ou plusieurs
elements techniques distribues.
```

Interdit :

```text
un identifiant niveau 3 ne doit pas etre lu comme nom final de fichier Max.
```

---

## 3. Carte globale niveau 3

Structures candidates :

```text
MX3-APP-ROOT ;
MX3-BOOT-CONFIG ;
MX3-AUDIO-IO ;
MX3-STATE-STORE ;
MX3-LIVE-CONTROL ;
MX3-SOURCE-RT ;
MX3-ANALYSIS ;
MX3-DEC-PERM ;
MX3-PROTO-ROUTER ;
MX3-GEN ;
MX3-GRAVE-GONG ;
MX3-SPC-REVERB ;
MX3-HAL-MEMORY ;
MX3-AUTOPRO ;
MX3-MIX-OUT ;
MX3-SIGNAL-VIEWS ;
MX3-REC-DIAG ;
MX3-MIN-DID-PC.
```

Correspondance niveau 2 :

```text
MX-BOOT       -> MX3-BOOT-CONFIG
MX-CONFIG     -> MX3-BOOT-CONFIG
MX-AUDIO-IO   -> MX3-AUDIO-IO
MX-STATE      -> MX3-STATE-STORE
MX-LIVE       -> MX3-LIVE-CONTROL
MX-SRC        -> MX3-SOURCE-RT
MX-RT         -> MX3-SOURCE-RT / MX3-MIX-OUT
MX-ANA        -> MX3-ANALYSIS
MX-DEC        -> MX3-DEC-PERM
MX-PROTO      -> MX3-PROTO-ROUTER
MX-GEN        -> MX3-GEN
MX-GRAVE      -> MX3-GRAVE-GONG
MX-SPC        -> MX3-SPC-REVERB
MX-HAL        -> MX3-HAL-MEMORY
MX-AUTOPRO    -> MX3-AUTOPRO
MX-MIX        -> MX3-MIX-OUT
MX-SIG        -> MX3-SIGNAL-VIEWS
MX-REC-DIAG   -> MX3-REC-DIAG
```

Regle :

```text
la carte suit les responsabilites et les chemins critiques, pas une
organisation visuelle finale.
```

---

## 4. Plans de flux

### 4.1. Plans principaux

Plans :

```text
PLANE-AUDIO-CRITICAL ;
PLANE-AUDIO-EXPRESSIVE ;
PLANE-CONTROL-LIVE ;
PLANE-CONTROL-DECISION ;
PLANE-ANALYSIS-FAST ;
PLANE-ANALYSIS-SLOW ;
PLANE-INFO-SIGNAL ;
PLANE-DIAG-HISTORY.
```

Regle :

```text
un plan n'est pas forcement un thread, un bus, un patcher ou une piste.
c'est une contrainte de separation conceptuelle.
```

### 4.2. PLANE-AUDIO-CRITICAL

Contient :

```text
PATH-DIRECT ;
PATH-GRAVE-CRITICAL ;
PATH-MIX-SAFE ;
P0/P1 action point.
```

Interdits :

```text
analyse lente ;
diagnostic ;
UI non vitale ;
reverb longue ;
halo long ;
generation non preparee ;
decision expressive.
```

### 4.3. PLANE-AUDIO-EXPRESSIVE

Contient :

```text
source transformee ;
generation ;
grave support/free ;
gong bloom/harm/spc ;
espace/reverb ;
halo ;
transgression ;
retour.
```

Regle :

```text
ce plan peut etre riche et complexe, mais il ne doit pas menacer le direct,
le grave critique, la sortie principale ou le repli safe.
```

### 4.4. PLANE-CONTROL-LIVE

Contient :

```text
LIVE-MOMENTARY ;
LIVE-TOGGLE ;
LIVE-MODE ;
LIVE-MACRO ;
LIVE-SCENE ;
LIVE-SAFETY ;
LIVE-BYPASS ;
LIVE-HOLD ;
LIVE-EXIT.
```

Regle :

```text
ALWAYS-ON-HAND signifie accessible pendant le jeu.
cela ne signifie pas controle physique dedie a ce niveau.
```

### 4.5. PLANE-CONTROL-DECISION

Contient :

```text
DEC ;
PERM ;
PROTO ;
STATE ;
GATE ;
autorites P0 a P5.
```

Regle :

```text
ce plan autorise, refuse, limite, prepare ou signale.
il ne compose pas.
```

### 4.6. PLANE-ANALYSIS-FAST

Contient :

```text
presence ;
attaque ;
niveau critique ;
feedback ;
masquage flagrant ;
grave conflictuel ;
lisibilite P0/P1.
```

Regle :

```text
analyse rapide peut informer protection immediate, mais ne produit pas
de decision expressive.
```

### 4.7. PLANE-ANALYSIS-SLOW

Contient :

```text
densite ;
forme ;
stabilite ;
tendance spectrale ;
salle ;
halo ;
preparation de retour ;
diagnostic non critique.
```

Regle :

```text
analyse lente prepare, signale, historise ou propose.
elle ne bloque pas OUT-MAIN.
```

---

## 5. Espaces de noms de messages

Correction `CORR-MX2-6` appliquee :

```text
les familles de messages sont regroupees par espaces de noms lisibles.
```

Espaces niveau 3 :

```text
NS-BOOT-CONFIG ;
NS-LIVE-SCENE-STATE ;
NS-ANA-CONF ;
NS-DEC-PERM ;
NS-PROTO ;
NS-GEN ;
NS-GRAVE-GONG ;
NS-SPC-HAL ;
NS-AUTOPRO ;
NS-MIX-OUT ;
NS-SIG-LAT-DIAG.
```

Regle :

```text
un espace de noms n'est pas un objet, un bus ou un fichier.
il evite seulement que les messages deviennent illisibles.
```

Interdits :

```text
dupliquer un meme message dans plusieurs autorites ;
laisser un message expressif sans DEC/PERM ;
laisser LAT ecrire DEC/PERM ;
laisser DIAG bloquer OUT-MAIN ;
laisser GEN demarrer sans GEN-PACKET ;
laisser HAL-CUT sans signal si action sensible.
```

---

## 6. Cycle de vie commun des messages

Correction `CORR-MX2-1` appliquee :

```text
REQUEST -> PREPARE -> ALLOW/REFUSE -> START -> HOLD/VARY -> EXIT -> RELEASE.
```

Usage :

```text
REQUEST : demande ou intention.
PREPARE : preparation sans activation expressive definitive.
ALLOW   : autorisation bornee.
REFUSE  : refus avec cause si necessaire.
START   : activation.
HOLD    : maintien.
VARY    : variation dans le meme role musical.
EXIT    : sortie preparee.
RELEASE : liberation de permission, lock, force ou etat.
```

Regle :

```text
le cycle est commun mais non obligatoire pour tous les messages.
P0/P1 peuvent agir vite, mais doivent garder cause, cible, signal et release
quand c'est possible.
```

Application prioritaire :

```text
GEN ;
SPC ;
HAL ;
PERM-FORCE ;
GRAVE-FREE ;
GRAVE-WITHDRAW ;
AUTOPRO-REQUEST ;
RET-FORM ;
transgression.
```

Interdit :

```text
un START expressif sans sortie prevue.
```

---

## 7. Persistance des packets

Categories :

```text
STATE-PERSISTENT ;
STATE-TRANSIENT ;
EVENT-ONLY ;
DIAG-HISTORY.
```

### 7.1. STATE-PERSISTENT

Exemples :

```text
configuration active ;
setup active ;
scene dominante ;
couches actives ;
modes live ;
permissions longues ;
GEN-PACKET actifs ;
SPC-PACKET actifs ;
HAL-PACKET lock/force ;
protocoles actifs ;
sorties preparees.
```

Regle :

```text
tout etat persistant doit avoir sortie, release ou condition de remplacement.
```

### 7.2. STATE-TRANSIENT

Exemples :

```text
ANA-PACKET recent ;
CONF-PACKET recent ;
LAT-PACKET recent ;
signal performantiel ;
demande Auto-Pro ;
preparation courte ;
momentary live.
```

Regle :

```text
un etat transitoire expire, se resorbe ou devient diagnostic.
```

### 7.3. EVENT-ONLY

Exemples :

```text
tap ;
attaque detectee ;
commande momentary ;
cut ponctuel ;
warning ;
refus ;
snapshot.
```

Regle :

```text
un evenement ne doit pas devenir permission permanente.
```

### 7.4. DIAG-HISTORY

Exemples :

```text
logs de paquets ;
risques latence ;
warnings ;
charge ;
conflits ;
actions Auto-Pro ;
refus DEC ;
cuts HAL.
```

Regle :

```text
l'historique explique.
il ne decide pas.
```

---

## 8. MX3-APP-ROOT

Role :

```text
conteneur conceptuel de l'application Max standalone.
```

Responsabilites :

```text
ordonner les structures ;
maintenir separation des plans ;
garantir acces a MIX-SAFE ;
garantir demarrage comprehensible ;
garantir signalisation critique ;
garantir diagnostic non bloquant.
```

Ne doit pas :

```text
porter toute la logique ;
devenir patch monolithique ;
composer ;
melanger diagnostic et audio vital ;
absorber toutes les vues.
```

Garde-fou :

```text
MX3-APP-ROOT orchestre les responsabilites.
il n'est pas une autorite musicale.
```

---

## 9. MX3-BOOT-CONFIG

Role :

```text
charger profil, setup, entrees/sorties conceptuelles, scenes preparees,
modes disponibles, familles GEN disponibles et etats initiaux.
```

Produit :

```text
CONFIG-PACKET ;
SETUP-PACKET ;
SCN-PACKET prepare ;
permissions initiales ;
signaux de disponibilite ;
etat initial.
```

Ne doit pas :

```text
activer une scene expressive ;
forcer un retour ;
forcer une transgression ;
transformer une configuration en choix de performance.
```

Regle :

```text
configuration prepare.
live et decision activent.
```

---

## 10. MX3-AUDIO-IO

Role :

```text
representer entrees, sorties, repli direct, monitoring conceptuel et
separation des chemins audio.
```

Chemins portes :

```text
PATH-DIRECT ;
PATH-SOURCE-TREAT ;
PATH-GRAVE-CRITICAL ;
PATH-GEN ;
PATH-SPC ;
PATH-HAL ;
PATH-MIX-SAFE ;
PATH-REC-DIAG.
```

Regles :

```text
PATH-DIRECT reste recuperable.
PATH-MIX-SAFE reste disponible.
PATH-REC-DIAG ne conditionne pas OUT-MAIN.
les chemins expressifs ne bloquent pas le repli direct.
```

Interdits :

```text
placer diagnostic sur chemin vital ;
placer analyse lente sur chemin direct ;
placer reverb longue sur attaque critique ;
faire dependre sortie principale d'une vue.
```

---

## 11. MX3-STATE-STORE

Role :

```text
tenir et exposer etat, permissions, packets persistants, locks, forces,
sorties preparees, contexte live et scene.
```

Zones conceptuelles :

```text
STORE-CONFIG ;
STORE-LIVE ;
STORE-SCENE ;
STORE-PERM ;
STORE-GEN ;
STORE-GRAVE ;
STORE-SPC ;
STORE-HAL ;
STORE-AUTOPRO ;
STORE-SIG ;
STORE-LAT ;
STORE-DIAG-REF.
```

Regle :

```text
MX3-STATE-STORE memorise et expose.
il ne decide pas seul.
```

Interdit :

```text
un etat ne doit pas devenir decision cachee.
```

Garde-fou :

```text
toute modification persistante doit pointer vers live, scene, DEC/PERM,
P0/P1 explicite, ou configuration.
```

---

## 12. MX3-LIVE-CONTROL

Role :

```text
recevoir commandes de jeu, modes, macros, scenes, bypass, holds, exits,
et les convertir en intentions structurees.
```

Messages recus :

```text
LIVE-MOMENTARY ;
LIVE-TOGGLE ;
LIVE-MODE ;
LIVE-MACRO ;
LIVE-SCENE ;
LIVE-SAFETY ;
LIVE-BYPASS ;
LIVE-HOLD ;
LIVE-EXIT.
```

Produit :

```text
LIVE-PACKET ;
SCN-PACKET ;
PERM-REQUEST ;
GEN-REQUEST ;
SPC-REQUEST ;
HAL-REQUEST ;
GRAVE-REQUEST ;
SIG-REQUEST.
```

Regles :

```text
une macro controle plusieurs fonctions seulement si relations declarees.
un bypass doit etre borne et signale si musicalement sensible.
un hold doit avoir release.
une scene prepare, live decide, DEC autorise.
```

Interdits :

```text
macro globale non bornee ;
scene qui impose toute la musique ;
controle live qui contourne P0/P1 ;
message expressif sans sortie.
```

---

## 13. MX3-SOURCE-RT

Role :

```text
porter les sources acoustiques, leur direct, leurs traitements temps reel
et leurs points d'observation.
```

Sources :

```text
didgeridoo ;
gong ;
tambour/peaux ;
voix ;
salle ;
sources generees naturalisees.
```

Chemins :

```text
PATH-DID-DIRECT ;
PATH-DID-TREAT ;
PATH-GONG-SOURCE ;
PATH-VOICE-INTEGRATED ;
PATH-SKIN-PULSE ;
PATH-ROOM-OBS ;
PATH-TAP-FAST ;
PATH-TAP-SLOW.
```

Regle didgeridoo :

```text
le didgeridoo peut etre libre, guidant, adapte, suivi par le systeme,
ou direct protege.
```

Regle voix :

```text
la voix reste integree ou virtualo-acoustique.
pas de voix nue comme defaut.
```

Regle salle :

```text
la salle informe.
elle ne decide pas.
```

---

## 14. MX3-ANALYSIS

Role :

```text
observer sources, forme, grave, attaques, densite, espace, halo, feedback,
masquage, salle et presence sans devenir decision.
```

Sous-structures :

```text
MX3-ANALYSIS-FAST ;
MX3-ANALYSIS-SLOW ;
MX3-CONFIDENCE ;
MX3-ROOM-OBS ;
MX3-LAT-OBS.
```

Produit :

```text
ANA-PACKET ;
CONF-PACKET ;
ROOM-PACKET ;
LAT-PACKET ;
SIG-REQUEST ;
DIAG-EVENT.
```

Regles :

```text
ANA ne decide pas.
CONF limite le droit de reaction.
ROOM-OBS informe.
LAT-OBS informe.
analyse lente ne bloque pas OUT-MAIN.
```

Point critique :

```text
CONF-5 ne suffit pas a agir.
il faut permission, borne, duree et sortie.
```

---

## 15. MX3-DEC-PERM

Role :

```text
arbitrer permissions, priorites, limites, refus, protections et sorties.
```

Sous-structures :

```text
MX3-DEC-FAST ;
MX3-DEC-CORE ;
MX3-PERM-STORE ;
MX3-PERM-FORCE-GUARD ;
MX3-PRIORITY-RESOLVER.
```

Precedence :

```text
P0 > P1 > P2 > P3 > P4 > P5.
```

Produit :

```text
DEC-PACKET ;
PERM-PACKET ;
DEC-ALLOW ;
DEC-REFUSE ;
DEC-HOLD ;
DEC-PREPARE ;
DEC-LIMIT ;
DEC-CUT ;
DEC-EXIT ;
DEC-SIGNAL ;
DEC-PROTECT.
```

Correction `CORR-MX2-3` appliquee :

```text
PERM-FORCE exige live ou scene explicite, fonction cible, portee, duree,
condition de maintien, sortie, signal et release.
```

Interdits :

```text
PERM-FORCE global ;
PERM-FORCE sans duree ;
PERM-FORCE sans sortie ;
PERM-FORCE qui annule P0/P1 ;
PERM-CUT sans cause ;
PERM permanente nee d'un evenement.
```

---

## 16. MX3-PROTO-ROUTER

Role :

```text
mettre en relation sources, indices, interpretations, cibles et reactions
possibles, seulement si la cible est deja autorisee.
```

Protocols prioritaires :

```text
DID -> GRAVE ;
DID -> GEN-LINE ;
DID -> GEN-SOURCE-HARM ;
GONG -> GRAVE ;
GONG -> SPC-WORLD ;
ATTACK -> GEN-PULSE ;
SUB -> AUTOPRO-P1 ;
VOX -> SPC-NEAR ;
HAL -> AUTOPRO-MASK ;
SCENE -> GEN-RET.
```

Regles :

```text
PROTO n'active pas une cible.
PROTO influence une cible autorisee.
PROTO sans PERM reste inactif.
PROTO doit avoir sortie ou condition de relachement si relation persistante.
```

Priorite de detail futur :

```text
DID -> GRAVE ;
DID -> GEN-LINE ;
GONG -> GRAVE ;
HAL -> AUTOPRO-MASK ;
SCENE -> GEN-RET.
```

---

## 17. MX3-GEN

Role :

```text
porter generation sonore, motifs rythmiques, motifs melodiques, textures,
lignes, sources harmoniques, voix integree, retours et formes, toujours
via GEN-PACKET.
```

Familles :

```text
GEN-PULSE-RHY ;
GEN-LINE-MEL ;
GEN-SOURCE-HARM ;
GEN-TEXTURE-BLOOM ;
GEN-VOICE ;
GEN-RET-FORM.
```

Sous-structures candidates :

```text
MX3-GEN-REQUEST-GATE ;
MX3-GEN-PREPARE ;
MX3-GEN-ACTIVE ;
MX3-GEN-VARY ;
MX3-GEN-EXIT ;
MX3-GEN-PACKET-VALIDATOR ;
MX3-GEN-TRACE.
```

Correction `CORR-MX2-4` appliquee :

```text
GEN-REQUEST ne declenche jamais GEN-START directement.
GEN-REQUEST peut produire GEN-PREPARE, SIG ou demande DEC/PERM.
GEN-START exige GEN-PACKET, PERM-PACKET, role, origine perceptive, sortie,
risques et signal si necessaire.
```

Trace obligatoire :

```text
inspiration ;
phenomene retenu ;
fonction Vesperare ;
famille GEN ;
role DOM/LAYER/GESTE/ETAT/TRACE ;
naturalisation ;
reconnaissance ;
autonomie ;
sortie.
```

Interdits :

```text
GEN sans GEN-PACKET ;
GEN-VARY qui change de style ;
GEN-START autonome ;
lead banal par defaut ;
electronique reconnaissable hors exception decidee ;
voix nue par defaut ;
transgression imposee.
```

---

## 18. MX3-GRAVE-GONG

Role :

```text
organiser grave critique, grave support, grave libre, relations didgeridoo,
relations gong, sub, souffle, base microtonale et conflits.
```

Sous-structures :

```text
MX3-GRAVE-CRITICAL ;
MX3-GRAVE-SUPPORT ;
MX3-GRAVE-FREE ;
MX3-GRAVE-CONFLICT ;
MX3-GONG-BLOOM ;
MX3-GONG-HARM ;
MX3-GONG-SPC-SOURCE.
```

Modes :

```text
didgeridoo guide harmoniquement ;
grave soutient discretement ;
harmoniques didgeridoo adaptees si necessaire ;
grave se retire si conflit deletere ;
graves libres.
```

Regles :

```text
GRAVE-CRITICAL peut relever P1.
GRAVE-FREE exige choix live ou scene.
GRAVE-WITHDRAW exige conflit deletere ou choix live.
GONG-HARM informe harmonie/microtonalite, pas mode seul.
GONG-BLOOM ne remplace pas automatiquement vrai sub.
```

Point de vigilance :

```text
tension musicale decidee != conflit deletere.
```

---

## 19. MX3-SPC-REVERB

Role :

```text
organiser espace, reverb, proximite, room commune, mondes spatiaux,
espaces longs, espace grave, salle observee et sorties.
```

Sous-structures :

```text
MX3-SPC-NEAR ;
MX3-SPC-ROOM ;
MX3-SPC-WORLD ;
MX3-SPC-LONG ;
MX3-SPC-GRAVE ;
MX3-SPC-ROOM-OBS ;
MX3-SPC-EXIT.
```

Plans a garder separes :

```text
distance/proximite ;
room commune ;
monde spatial ;
longue queue ;
grave spatial ;
observation de salle ;
sortie/retour.
```

Regles :

```text
SPC-WORLD exige live ou scene.
SPC-LONG reste hors attaque critique.
SPC-ROOM-OBS informe, ne decide pas.
SPC-GRAVE respecte GRAVE-CRITICAL.
SPC-EXIT prepare sortie.
les mondes spatiaux peuvent etre combines si les roles sont declares.
```

Interdits :

```text
fusionner toute reverb en un seul macro indistinct ;
changer de monde par Auto-Pro seul ;
laisser salle reelle imposer une decision ;
utiliser espace long comme cache-misere de latence.
```

---

## 20. MX3-HAL-MEMORY

Role :

```text
organiser halo, memoire, freeze, lock, force, cut, safe et sortie.
```

Sous-structures :

```text
MX3-HAL-MEM ;
MX3-HAL-FREEZE ;
MX3-HAL-LOCK ;
MX3-HAL-FORCE ;
MX3-HAL-CUT ;
MX3-HAL-SAFE ;
MX3-HAL-EXIT.
```

Correction `CORR-MX2-5` appliquee :

```text
HAL-CUT porte cause, autorite, cible, duree, sortie et signal.
si le cut est audible ou musicalement sensible, il doit produire un signal
performer.
```

Regles :

```text
HAL-LOCK maintient halo voulu.
HAL-FORCE exige live ou scene.
HAL-CUT hors P0/P1 exige choix live ou sortie decidee.
HAL-FREEZE rattache source ou monde par defaut.
HAL-EXIT evite rupture non decidee.
```

Interdits :

```text
retirer halo voulu hors P0/P1 ;
cut silencieux d'un halo musicalement sensible ;
freeze sans source, monde ou fonction ;
halo qui masque durablement une fonction critique sans signal.
```

---

## 21. MX3-AUTOPRO

Role :

```text
proteger, monitorer, signaler, proposer, relacher, sans composer.
```

Sous-structures :

```text
MX3-AUTOPRO-P0 ;
MX3-AUTOPRO-P1 ;
MX3-AUTOPRO-P5 ;
MX3-AUTOPRO-MONITOR ;
MX3-AUTOPRO-REQUEST ;
MX3-AUTOPRO-RELEASE.
```

Regles :

```text
P0 peut agir immediatement.
P1 protege lisibilite vitale.
P5 stabilise sans choisir.
AUTOPRO-REQUEST passe par DEC/PERM hors P0/P1.
Auto-Pro ne change pas de monde.
Auto-Pro ne coupe pas halo voulu hors danger critique.
```

Interdits :

```text
Auto-Pro correcteur esthetique ;
Auto-Pro compositeur ;
Auto-Pro qui transforme P5 en gout automatique ;
Auto-Pro qui masque une limitation sans SIG.
```

---

## 22. MX3-MIX-OUT

Role :

```text
organiser sortie principale, direct, source transformee, grave, generation,
espace, halo, protections, monitoring, safe, record et diagnostic.
```

Sous-structures :

```text
MX3-MIX-DIRECT ;
MX3-MIX-SOURCE-TREAT ;
MX3-MIX-GRAVE ;
MX3-MIX-GEN ;
MX3-MIX-SPC ;
MX3-MIX-HAL ;
MX3-MIX-PROTECT ;
MX3-MIX-MAIN ;
MX3-MIX-MONITOR ;
MX3-MIX-REC ;
MX3-MIX-DIAG ;
MX3-MIX-SAFE.
```

Regles :

```text
MIX-MAIN prioritaire.
MIX-SAFE disponible.
MIX-DIAG non critique.
MIX-REC non critique.
direct protege recuperable.
```

Interdits :

```text
faire dependre MIX-MAIN de DIAG ;
faire dependre MIX-MAIN d'une VIEW ;
retirer une fonction desiree pour charge ;
masquer une limitation de sortie sans signal.
```

---

## 23. MX3-SIGNAL-VIEWS

Role :

```text
presenter signaux critiques, performatifs, discrets et diagnostiques.
```

Vues :

```text
VIEW-ALWAYS ;
VIEW-SCENE ;
VIEW-DEEP ;
VIEW-SIG ;
VIEW-DIAG.
```

Niveaux de signal :

```text
SIG-CRITICAL ;
SIG-PERFORM ;
SIG-DISCREET ;
SIG-DIAG.
```

Regles :

```text
SIG-CRITICAL prioritaire.
SIG-PERFORM utile au jeu.
SIG-DISCREET n'encombre pas.
SIG-DIAG peut etre cache.
VIEW ne conditionne pas son vital.
```

Point de vigilance :

```text
LAT-PRESENCE doit etre informatif sans distraire.
```

---

## 24. MX3-REC-DIAG

Role :

```text
historiser, expliquer, enregistrer et aider la maintenance sans bloquer la
performance.
```

Sous-structures :

```text
MX3-DIAG-STATE ;
MX3-DIAG-PACKET ;
MX3-DIAG-LOAD ;
MX3-DIAG-LAT ;
MX3-DIAG-AUDIO ;
MX3-DIAG-CONF ;
MX3-DIAG-GEN ;
MX3-DIAG-HAL ;
MX3-DIAG-SPC ;
MX3-DIAG-AUTOPRO ;
MX3-DIAG-WARN.
```

Regles :

```text
diagnostic observe et explique.
diagnostic ne decide pas.
diagnostic ne bloque pas OUT-MAIN.
diagnostic ne conditionne pas MIX-SAFE.
```

---

## 25. Garde-fou LAT

Correction `CORR-MX2-2` appliquee :

```text
LAT ne doit jamais ecrire directement DEC ou PERM.
```

LAT peut produire :

```text
LAT-PACKET ;
SIG-LAT ;
DIAG-LAT ;
PREPARE-REQUEST ;
proposition technique future ;
alerte de chemin critique.
```

LAT ne peut pas produire :

```text
PERM-LIMIT ;
PERM-CUT ;
DEC-CUT ;
DEC-LIMIT expressif ;
changement de monde ;
retrait de fonction musicale ;
simplification artistique.
```

Actions techniques possibles :

```text
sortir analyse du chemin critique ;
preparer ;
precalculer plus tard ;
deplacer hors audio critique ;
signaler ;
changer routage plus tard ;
changer materiel plus tard.
```

Interdits :

```text
retirer une fonction desiree ;
appauvrir une scene ;
rendre electronique reconnaissable ;
masquer une limitation ;
transformer latence en excuse de compromis musical.
```

Regle centrale :

```text
la latence est un enjeu musical et technique.
elle informe l'architecture, la presence et la jouabilite.
elle ne devient pas autorite artistique.
```

---

## 26. Setup minimum didgeridoo + PC

Correction `CORR-MX2-7` appliquee :

```text
chaque message lie a une source optionnelle doit etre DISABLED, IGNORED,
FALLBACK ou SIGNAL en setup didgeridoo seul.
```

Statuts :

```text
DISABLED : source absente, message impossible.
IGNORED  : message recu mais sans effet musical.
FALLBACK : fonction assuree autrement si musicalement valide.
SIGNAL   : absence source change preparation ou scene et doit etre visible.
```

MIN-DID-PC doit conserver :

```text
didgeridoo direct protege ;
analyse presence/attaque/grave/pulse ;
mode Didg Free ;
mode System Follows Didg ;
mode Didg Adapts ;
grave support ou retrait ;
generation guidee ou autonome bornee ;
GEN-PACKET ;
espace proche/immersif ;
halo source ;
Auto-Pro P0/P1/P5 ;
signalisation critique/performance ;
MIX-SAFE.
```

Sources optionnelles :

```text
gong ;
voix ;
tambour/peaux ;
mesure salle avancee ;
entrees supplementaires.
```

Regle :

```text
le setup minimum n'est pas un mode degrade.
c'est une forme complete avec moins de sources.
```

Interdit :

```text
dependance obligatoire a gong, voix ou tambour pour que le systeme reste
musicalement viable.
```

---

## 27. Flux prioritaires niveau 3

### 27.1. Flux direct / safe

```text
SOURCE-DID -> PATH-DIRECT -> MIX-SAFE -> MIX-MAIN.
```

Regle :

```text
ce flux doit rester recuperable.
```

### 27.2. Flux protection rapide

```text
TAP-FAST -> ANA-FAST -> CONF -> DEC-FAST -> AUTOPRO-P0/P1 -> MIX/SIG.
```

Regle :

```text
protection rapide ne produit pas decision expressive.
```

### 27.3. Flux musical general

```text
LIVE/SCENE -> STATE -> DEC-CORE -> PERM -> PROTO -> GEN/GRAVE/SPC/HAL -> MIX.
```

Regle :

```text
scene prepare.
live decide.
DEC autorise.
PROTO influence.
fonction execute.
```

### 27.4. Flux generation

```text
GEN-REQUEST -> GEN-PREPARE -> DEC/PERM -> GEN-START -> GEN-HOLD/VARY -> GEN-EXIT -> RELEASE.
```

Regle :

```text
aucune generation active sans GEN-PACKET.
```

### 27.5. Flux espace / halo

```text
SPC/HAL-REQUEST -> DEC/PERM -> SPC/HAL-START -> MIX -> SPC/HAL-EXIT -> RELEASE.
```

Regle :

```text
SPC, HAL et GEN-HAL restent distingues.
```

### 27.6. Flux latence / presence

```text
LAT-OBS -> LAT-PACKET -> SIG/DIAG/PREPARE-REQUEST.
```

Regle :

```text
LAT ne modifie pas DEC/PERM.
```

### 27.7. Flux diagnostic

```text
MX3-* -> DIAG-EVENT -> MX3-REC-DIAG -> VIEW-DIAG.
```

Regle :

```text
diagnostic ne revient pas comme condition de OUT-MAIN.
```

---

## 28. Traduction des corrections CORR-MX2

```text
CORR-MX2-1 : cycle de vie commun defini section 6.
CORR-MX2-2 : LAT firewall defini section 25.
CORR-MX2-3 : PERM-FORCE borne section 15.
CORR-MX2-4 : GEN-REQUEST gate defini section 17.
CORR-MX2-5 : HAL-CUT signale section 20.
CORR-MX2-6 : espaces de noms MSG definis section 5.
CORR-MX2-7 : setup didgeridoo seul defini section 26.
```

Verdict :

```text
corrections integrees au niveau 3.
```

---

## 29. Questions restantes

Questions pour audit niveau 3 ou niveau suivant :

1. Quelles structures doivent rester centralisees et lesquelles seront distribuees plus tard ?
2. Quels packets persistants seront representes comme etat partage final ?
3. Quels messages doivent avoir une vue performer et lesquels restent diagnostiques ?
4. Quels controls `ALWAYS-ON-HAND` devront devenir physiques plus tard ?
5. Comment representer `SPC`, `HAL` et `GEN-HAL` techniquement sans les fusionner ?
6. Quels protocols prioritaires faut-il detailler avant toute implementation ?
7. Quelle granularite conserver pour `LAT-PRESENCE` en performance ?
8. Quels objets Max seront autorises plus tard pour etat, messages et routage ?
9. Comment separer le patch de performance et les vues de diagnostic ?
10. Comment documenter les conditions de sortie pour tous les etats persistants ?

Ces questions ne bloquent pas l'audit niveau 3.

---

## 30. Decision v0.1

Decision :

```text
la traduction niveau 3 structures Max standalone est posee.
```

Elle etablit :

```text
carte globale MX3-* ;
plans audio/controle/analyse/info ;
espaces de noms de messages ;
cycle de vie commun ;
persistance des packets ;
structures principales ;
garde-fou LAT ;
setup minimum didgeridoo + PC ;
flux prioritaires ;
integration des corrections CORR-MX2.
```

Elle ne choisit pas :

```text
objets Max ;
syntax definitive ;
send/receive definitifs ;
structures de donnees finales ;
algorithmes ;
seuils ;
materiel ;
controleur ;
interface finale ;
patch final.
```

Prochaine action recommandee :

```text
AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_3_TRADUCTION_STRUCTURES_MAX_AVEC_CORPUS_v0_1
```

But :

```text
verifier que la traduction niveau 3 reste compatible avec le corpus,
que les structures MX3 ne deviennent pas une implementation cachee, que
les corrections CORR-MX2 sont correctement integrees, que le setup minimum
didgeridoo + PC reste complet, et que la latence reste enjeu musical sans
autorite de compromis.
```
