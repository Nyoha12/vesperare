# AUDIT COMPATIBILITE ARCHITECTURE MAX STANDALONE CONCEPTUELLE AVEC CORPUS v0.1

Projet : Vesperare
Statut : audit compatibilite architecture Max standalone conceptuelle
Date : 2026-06-23

Sources actives principales :

- `SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_CONCEPTUELLE_VESPERARE_v0_1.md`
- `DECISION_RUNTIME_MAX_STANDALONE_LATENCE_SANS_COMPROMIS_VESPERARE_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_FONCTIONNELLE_ABSTRAITE_VESPERARE_v0_1.md`
- `MATRICE_BLOCS_RESPONSABILITES_PACKETS_CONTROLES_VESPERARE_v0_1.md`
- `SPECIFICATION_SYSTEME_DECISIONNEL_CONCEPTUEL_VESPERARE_v0_1.md`
- `SPECIFICATION_PROTOCOLS_SIDECHAINS_CONCEPTUELS_v0_1.md`
- `SPECIFICATION_ANALYSES_INDICES_CONCEPTUELS_ET_CONFIANCE_v0_1.md`
- `SPECIFICATION_BLOC_GENERATION_SONORE_MOTIFS_RYTHMIQUES_MELODIQUES_v0_1.md`
- `REVERBS_ESPACE_REACTIF_v0_2.md`
- `SPECIFICATION_BUDGET_LATENCE_CHARGE_DEGRADATION_VESPERARE_v0_1.md`

But :

```text
verifier que l'architecture Max standalone conceptuelle respecte le corpus
musical, le setup didgeridoo + PC, la generation, les protocoles, les analyses,
les reverbs/espaces/halos, la decision live, Auto-Pro et la contrainte de
latence sans compromis musical reel.
```

Hors perimetre :

```text
choix d'objets Max ;
algorithmes ;
seuils ;
interface graphique finale ;
controleur physique ;
materiel final ;
buffer final ;
driver final ;
patch final ;
evaluation pratique.
```

---

## 1. Verdict general

Verdict :

```text
compatible avec le corpus actif.
```

La fiche est compatible parce qu'elle :

- acte Max/MSP standalone comme runtime principal ;
- ne reactive pas Ableton / Max for Live comme trajectoire principale ;
- conserve RNBO, Linux et embarque comme horizons secondaires ou futurs ;
- preserve le setup minimum didgeridoo + PC ;
- separe chemin critique, analyses rapides et analyses lentes ;
- protege `P0`, `P1`, source directe, sortie principale et repli direct ;
- conserve `GEN-PACKET` comme obligation ;
- preserve la distinction `APP-GEN`, `APP-SPC`, `APP-HAL`, `APP-AUTOPRO`, `APP-DEC` ;
- garde les reverbs/espaces comme fonctions musicales, pas effets decoratifs ;
- garde les protocoles comme relations, pas routages automatiques ;
- garde les analyses comme observations, pas decisions ;
- interdit les compromis musicaux reels au nom de la latence.

Pas de correction structurante immediate.

Correction de lecture obligatoire :

```text
la topologie APP-* doit etre lue comme architecture de responsabilites,
pas comme une chaine audio lineaire.
```

---

## 2. Compatibilite runtime Max standalone

La decision active demandait :

```text
Max/MSP standalone comme runtime principal ;
latence optimisee ;
aucun compromis musical reel ;
M4L/Ableton secondaires ;
RNBO horizon de sous-modules seulement.
```

La fiche respecte cela par :

```text
MAX-APP ;
APP-AUDIO-IO ;
APP-RT-CRITICAL ;
APP-ANA-FAST / APP-ANA-SLOW ;
APP-STATE ;
APP-DEC ;
APP-GEN / APP-SPC / APP-HAL ;
APP-MIX-OUT ;
APP-LIVE-UI.
```

Verdict :

```text
compatible.
```

Point fort :

```text
le choix Max standalone est maintenant positif, pas seulement une absence
d'Ableton.
```

Fragilite `FRAG-MX-1` :

```text
le document reste conceptuel et ne decrit pas encore la partition physique
des patchers Max.
```

Traitement :

```text
a traiter dans l'architecture Max standalone detaillee niveau 1.
```

---

## 3. Compatibilite latence sans compromis

La fiche preserve :

```text
LAT-0 direct vital ;
LAT-1 interaction jouee ;
LAT-2 musical non immediat ;
LAT-3 etat lent / memoire / ambience longue.
```

Compatibilite :

- didgeridoo direct en LAT-0 ;
- protections P0/P1 en LAT-0 ;
- traitements joues en LAT-1 ;
- generation non immediate en LAT-2 ;
- reverbs longues, historique, diagnostic et visualisation en LAT-3 ;
- analyses lentes hors chemin critique ;
- UI non bloquante ;
- repli direct disponible.

Verdict :

```text
compatible.
```

Fragilite `FRAG-MX-2` :

```text
APP-DEC-FAST est mentionne dans le chemin LAT-1, mais pas encore specifie
comme sous-mode ou sous-patcher distinct.
```

Traitement :

```text
definir au niveau 1 si APP-DEC-FAST est :
1. un mode de APP-DEC ;
2. une voie rapide separee ;
3. une table de priorites P0/P1/P2 accessible a APP-RT-CRITICAL.
```

Fragilite `FRAG-MX-3` :

```text
le document interdit les compromis musicaux, mais ne detaille pas encore
les strategies d'optimisation acceptables par famille de fonction.
```

Traitement :

```text
detail niveau 1 :
chemin direct, traitements source, grave, generation, espace, halo,
analyses, UI et signalisation doivent chacun avoir une strategie
d'optimisation sans retrait musical.
```

---

## 4. Compatibilite setup minimum didgeridoo + PC

La fiche exige :

```text
IN-DID seul doit suffire.
didgeridoo direct toujours recuperable.
mode libre avec protections par defaut disponible.
```

Elle preserve les modes :

```text
DID-FREE-PROTECTED ;
DID-SYSTEM-FOLLOWS ;
DID-ADAPTED-TO-SYSTEM ;
DID-HARMONIC-GUIDE ;
DID-SOURCE-TRANSFORM ;
DID-PERTURBATOR.
```

Verdict :

```text
compatible.
```

Point fort :

```text
le didgeridoo n'est pas force comme centre permanent.
il peut etre source libre, guide, source transformee ou perturbateur,
selon scene et choix live.
```

Fragilite `FRAG-MX-4` :

```text
les modes didgeridoo sont listes, mais leur acces live et leurs interactions
avec grave/espace/generation ne sont pas encore hierarchises.
```

Traitement :

```text
niveau 1 : separer modes toujours sous la main, modes prepares par scene,
et modes experimentaux.
```

---

## 5. Compatibilite grave / sub / gong

La fiche preserve :

```text
GRV-DID-GUIDE ;
GRV-DISCREET-SUPPORT ;
GRV-DID-HARMONICS-ADAPT ;
GRV-WITHDRAW-IF-DELETERIOUS ;
GRV-FREE.
```

Elle preserve le gong comme :

```text
base microtonale ou harmonique possible ;
souffle grave ;
bloom ;
presence sub precise ;
basses riches, harmonieuses et complexes ;
source de monde spatial metal/gong.
```

Verdict :

```text
compatible.
```

Point fort :

```text
la fiche ne reduit pas le grave a un simple sub technique.
elle garde le grave comme fonction musicale, corporelle, harmonique,
microtonale et spatiale.
```

Fragilite `FRAG-MX-5` :

```text
le conflit didgeridoo / grave / gong est preserve conceptuellement,
mais pas encore traduit en chemins Max distincts.
```

Traitement :

```text
niveau 1 : definir une voie GRAVE-CRITICAL, une voie GRAVE-SUPPORT,
une voie GONG-BLOOM et leurs dependances a APP-DEC / APP-AUTOPRO.
```

---

## 6. Compatibilite generation

La fiche conserve les moteurs :

```text
GEN-RT-PULSE ;
GEN-RHY-INTERLOCK ;
GEN-MEL-FRAG ;
GEN-ACID-NAT ;
GEN-JAZZ-OGAWA ;
GEN-TRANCE-SUSP ;
GEN-SOUNDSYSTEM ;
GEN-DUBSTEP-TRACE ;
GEN-VOX-FRAG ;
GEN-GONG-BLOOM ;
GEN-DID-HARM ;
GEN-RET.
```

Elle impose :

```text
aucun moteur GEN ne sort sans GEN-PACKET.
```

Compatibilite :

- generation sonore incluse ;
- motifs rythmiques inclus ;
- motifs melodiques inclus ;
- Keita Ogawa / jazz trace ;
- acid naturalisee tracee ;
- trance suspendue longue preservee ;
- voix integree preservee ;
- sound system / dubstep comme fonctions partielles, pas styles plaques ;
- retour prepare preserve ;
- style entier impose interdit.

Verdict :

```text
compatible.
```

Fragilite `FRAG-MX-6` :

```text
la liste de moteurs GEN est riche et risque de devenir trop large si elle
est traduite un moteur = un gros patcher.
```

Traitement :

```text
niveau 1 : regrouper les moteurs GEN par familles de comportement,
pas seulement par inspirations.
```

Familles conseillees :

```text
GEN-PULSE/RHY ;
GEN-LINE/MEL ;
GEN-SOURCE-HARM ;
GEN-TEXTURE/BLOOM ;
GEN-VOICE ;
GEN-RET/FORM.
```

Fragilite `FRAG-MX-7` :

```text
GEN-JAZZ-OGAWA est preserve, mais doit rester une logique de rythme,
interlocking, timbre et tension dynamique, pas un style jazz autonome.
```

Traitement :

```text
rappeler au niveau 1 que les inspirations restent des phenomenes empruntes,
pas des modules de style.
```

---

## 7. Compatibilite protocols / sidechains conceptuels

La fiche preserve :

```text
source -> cible ;
protocole influence une cible deja autorisee ;
un protocole n'active pas seul ;
APP-PROTO ne decide pas.
```

Exemples preserves :

```text
didgeridoo -> grave genere ;
didgeridoo -> ligne naturalisee ;
gong -> monde spatial metal/gong ;
attaque -> pression rythmique ;
sub -> protection grave ;
voix -> espace proche/cavite ;
halo -> protection masquage ;
scene -> retour prepare.
```

Verdict :

```text
compatible.
```

Fragilite `FRAG-MX-8` :

```text
les protocoles sont bien nommes, mais pas encore separes en flux audio,
flux d'analyse et flux de controle Max.
```

Traitement :

```text
niveau 1 : pour chaque protocole prioritaire, distinguer :
TAP audio, ANA-PACKET, PERM-PACKET, action controle, action audio.
```

---

## 8. Compatibilite analyses / indices / confiance

La fiche separe :

```text
ANA-FAST ;
ANA-SLOW.
```

ANA-FAST informe :

```text
P0 ;
P1 ;
grave critique ;
feedback ;
attaque ;
presence source ;
lisibilite immediate.
```

ANA-SLOW informe :

```text
scene ;
retour prepare ;
espace ;
halo ;
densite ;
naturalisation ;
historique ;
propositions.
```

Verdict :

```text
compatible.
```

Point fort :

```text
la separation fast/slow evite que la machine listening lente devienne une
condition de jouabilite.
```

Fragilite `FRAG-MX-9` :

```text
les niveaux CONF ne sont pas encore raccordes a des reactions Max concretes.
```

Traitement :

```text
niveau 1 : definir ce que CONF-0 a CONF-5 peuvent envoyer a APP-DEC,
APP-PROTO, APP-GEN, APP-SPC, APP-HAL et APP-SIG.
```

---

## 9. Compatibilite reverb / espace / halo

La fiche preserve :

```text
APP-SPC ;
APP-HAL ;
monde principal ;
distance ;
enveloppement ;
queue ;
matiere ;
grave spatial ;
reactivite ;
proximite ;
relation salle ;
protection ;
Halo Auto / Lock / Force / Cut / Momentary / Safe force.
```

Compatibilite :

- reverb longue hors attaque critique ;
- espace proche possible sans grande queue ;
- immersion possible sans distance ;
- halo voulu non retire hors P0/P1 ;
- freeze rattache a source ou monde par defaut ;
- exception libre possible si decidee ;
- reverb naturelle de salle peut informer, pas decider seule ;
- Auto-Pro adapte dans un monde, ne change pas de monde seul.

Verdict :

```text
compatible.
```

Fragilite `FRAG-MX-10` :

```text
APP-SPC est encore trop large pour une architecture Max niveau 1.
```

Traitement :

```text
separer au niveau 1 :
SPC-NEAR ;
SPC-ROOM ;
SPC-LONG ;
SPC-GRAVE ;
SPC-WORLD ;
SPC-ROOM-ANALYSIS.
```

Fragilite `FRAG-MX-11` :

```text
APP-HAL preserve les modes, mais ne detaille pas encore les sorties longues,
les freezes et les queues verrouillees comme charges separees du direct.
```

Traitement :

```text
niveau 1 : separer HAL-MEM, HAL-FREEZE, HAL-LOCK, HAL-FORCE, HAL-EXIT.
```

---

## 10. Compatibilite Auto-Pro

La fiche preserve Auto-Pro comme :

```text
hygiene sonore ;
coherence ;
protection ;
P0/P1 ;
masquage ;
grave ;
feedback ;
headroom ;
queue envahissante ;
brillance dure ;
sibilance.
```

Elle interdit a Auto-Pro :

```text
scene ambient ;
retour corporel ;
transgression ;
perte longue du corps ;
freeze ;
shimmer ;
monde spatial expressif ;
coupure de halo voulu hors danger critique.
```

Verdict :

```text
compatible.
```

Fragilite `FRAG-MX-12` :

```text
Auto-Pro est bien borne, mais ses actions P0/P1 et P5 ne sont pas encore
separees en voies Max distinctes.
```

Traitement :

```text
niveau 1 : separer AUTOPRO-P0, AUTOPRO-P1 et AUTOPRO-P5.
```

---

## 11. Compatibilite interface live

La fiche prevoit :

```text
P0/P1 ;
audio device / niveau essentiel ;
didgeridoo mode ;
grave mode ;
scene/couche ;
generation ;
espace ;
halo ;
retour prepare ;
transgression decidee ;
signalisation ;
repli direct.
```

Verdict :

```text
compatible.
```

Fragilite `FRAG-MX-13` :

```text
la liste de controles est musicalement correcte mais peut devenir injouable
si elle est exposee telle quelle.
```

Traitement :

```text
niveau 1 : classer les controles en :
ALWAYS-ON-HAND ;
SCENE-PREP ;
DEEP-EDIT ;
DIAGNOSTIC.
```

Point critique :

```text
l'interface doit etre regroupee par fonction musicale,
pas par structure interne de patch.
```

---

## 12. Compatibilite sortie / mix / signalisation

La fiche preserve :

```text
APP-MIX-OUT ;
APP-SIG ;
OUT-MAIN ;
OUT-MONITOR ;
OUT-REC ;
OUT-DIAG.
```

Compatibilite :

- sortie principale prioritaire ;
- diagnostic non critique ;
- limitations audibles signalees ;
- P0/P1 visibles ;
- conflits graves signales ;
- halo protege signale ;
- objet GEN refuse signale si utile ;
- source en direct protege signalee.

Verdict :

```text
compatible.
```

Fragilite `FRAG-MX-14` :

```text
la signalisation est compatible, mais son niveau de presence live n'est pas
encore calibre.
```

Traitement :

```text
niveau 1 : distinguer signal critique, signal jouable, signal discret
et diagnostic cache.
```

---

## 13. Compatibilite avec les documents pre-architecture

La fiche ne rend pas obsoletes :

```text
architecture fonctionnelle abstraite ;
matrice blocs/responsabilites ;
systeme decisionnel ;
protocoles ;
analyses ;
generation ;
reverbs ;
latence.
```

Elle rend historiques ou secondaires :

```text
architecture Max for Live conceptuelle ;
architectures Max for Live detaillees ;
traduction Ableton ;
runtime portable comme trajectoire principale.
```

Verdict :

```text
compatible.
```

Regle de lecture :

```text
les documents Max for Live peuvent servir de memoire de structuration,
mais ne doivent plus guider la trajectoire technique principale.
```

---

## 14. Corrections requises

Corrections obligatoires avant niveau suivant :

```text
aucune correction structurante obligatoire.
```

Corrections de lecture a maintenir :

```text
APP-* = responsabilites, pas chaine audio lineaire ;
Max standalone = runtime principal ;
latence = optimisation d'architecture, pas compromis musical ;
M4L/Ableton = secondaire eventuel ;
RNBO = sous-module eventuel ;
GEN-PACKET obligatoire ;
analyses = observation, pas decision ;
protocoles = influence, pas activation.
```

---

## 15. Questions restantes

Questions a traiter au niveau suivant :

1. Quelle partition exacte des patchers Max niveau 1 ?
2. APP-DEC-FAST est-il un mode, une voie rapide ou une table de priorites ?
3. Quels controles sont toujours sous la main en live ?
4. Quels controles sont prepares par scene ?
5. Quels moteurs GEN sont regroupes dans une meme famille technique ?
6. Quelles reverbs sont proches, longues, monde, grave, salle ou halo ?
7. Quelles analyses sont audio-rate, control-rate, lentes ou diagnostic ?
8. Quelle signalisation est visible, sonore, discrete ou cachee ?
9. Quel niveau de stereo/multicanal est suppose au depart ?
10. Quels sous-modules peuvent rester RNBO-compatibles sans contraindre Max standalone ?

---

## 16. Decision v0.1

Decision :

```text
l'architecture Max standalone conceptuelle est compatible avec le corpus actif.
```

Elle peut servir de base au niveau suivant sous conditions :

```text
ne pas la lire comme chaine audio lineaire ;
ne pas figer les objets Max ;
ne pas creer de compromis musical pour la latence ;
ne pas reintroduire Ableton / Max for Live comme trajectoire principale ;
ne pas transformer les moteurs GEN en styles autonomes ;
ne pas rendre l'interface injouable ;
ne pas mettre analyses lentes, reverbs longues ou UI sur le chemin critique.
```

Prochaine action recommandee :

```text
SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_1_VESPERARE_v0_1
```

But :

```text
decrire la partition Max standalone niveau 1 :
patchers principaux, chemins audio conceptuels, chemins de controle,
chemins d'analyse, familles GEN/SPC/HAL/AUTOPRO, niveaux de controles live
et garde-fous de latence, sans encore choisir objets Max ou algorithmes.
```
