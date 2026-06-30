# MATRICE EXCLUSIONS CANDIDATS PAR CRITICITE ET LATENCE MAX STANDALONE VESPERARE v0.1

Projet : Vesperare
Date : 2026-06-23
Statut : matrice d'exclusions et conditions candidates, non-implementation

Sources internes principales :

- `AUDIT_COMPATIBILITE_SPECIFICATION_CONTRAINTES_TRADUCTION_MAX_CONCRETE_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_CONTRAINTES_TRADUCTION_MAX_CONCRETE_NON_IMPLEMENTATION_VESPERARE_v0_1.md`
- `REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`
- `MATRICE_PREUVE_VERIFICATION_DETTES_AVANT_REPRISE_VESPERARE_v0_1.md`
- `MATRICE_CORRESPONDANCE_NOMENCLATURE_STRUCTURES_MAX_CANDIDATES_NON_DEFINITIVES_VESPERARE_v0_1.md`
- `MATRICE_FONCTIONS_CRITICITE_LATENCE_CHEMINS_MAX_STANDALONE_VESPERARE_v0_1.md`
- `DECISION_RUNTIME_MAX_STANDALONE_LATENCE_SANS_COMPROMIS_VESPERARE_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_VESPERARE_v0_1.md`
- `MATRICE_ARCHITECTURE_MAX_STANDALONE_NIVEAU_6_ROLES_TECHNIQUES_CANDIDATS_CHEMINS_RISQUES_VESPERARE_v0_1.md`

Sources externes consultees :

```text
documentation officielle Cycling '74 :
MSP Audio Input and Output ;
Audio Status Window ;
adstatus ;
Polyphony ;
MC Wrapper Polyphony ;
gen~ operators.
```

But :

```text
definir quels objets, familles d'objets et structures candidates sont :
1. exclues ;
2. autorisees sous condition ;
3. reservees aux chemins lents, diagnostic ou generation ;
4. a auditer avant toute acceptation ;
selon CRIT-0, CRIT-1, CRIT-2, CRIT-3 et CRIT-4.
```

Hors perimetre :

```text
objet Max final ;
patch final ;
routage audio final ;
UI ;
controleur ;
mapping physique ;
seuil ;
buffer final ;
latence mesuree ;
benchmark ;
implementation.
```

---

## 1. Decision centrale

Decision :

```text
aucun candidat n'est accepte par puissance, commodite ou habitude Max.
chaque candidat doit etre accepte seulement par criticite, fonction musicale,
risque de latence, risque de lecture finale, release, fallback et signalisation.
```

Regle de lecture :

```text
AUTORISE signifie "candidat possible dans ce type de chemin".
CONDITIONNEL signifie "possible seulement avec audit dedie".
EXCLU signifie "ne pas placer dans cette criticite".
LENT/DIAG signifie "hors chemin critique, hors autorite musicale directe".
```

Interdit transversal :

```text
aucune exclusion technique ne doit devenir appauvrissement musical.
si une fonction desiree est trop lourde pour un chemin, on change son chemin,
son architecture, son calcul, son prechargement, son parallelisme ou son statut,
mais on ne transforme pas la limite CPU en choix esthetique cache.
```

---

## 2. Implications officielles Max retenues

Ces points ne sont pas des choix finaux. Ils cadrent seulement les exclusions.

### 2.1. Vector sizes

Implication :

```text
I/O Vector Size et Signal Vector Size influencent la taille des blocs audio,
la charge CPU, la granularite temporelle et le comportement scheduler/audio.
```

Consequence Vesperare :

```text
CRIT-0 et CRIT-1 doivent eviter toute dependance a une action qui n'arrive
qu'apres une analyse lente ou une file scheduler non bornee.
```

### 2.2. Overdrive et scheduler in audio interrupt

Implication :

```text
Overdrive donne priorite au scheduler d'evenements.
Scheduler in Audio Interrupt peut ameliorer le timing des evenements de
controle ou MIDI, mais son effet depend notamment des vectors.
```

Consequence Vesperare :

```text
une commande live immediate peut utiliser des messages Max candidats, mais
CRIT-0 ne doit pas dependre d'une UI, d'un diagnostic, d'un log, d'un calcul
script ou d'un etat lent pour rester audible et recuperable.
```

### 2.3. `adstatus`

Implication :

```text
adstatus peut rapporter driver, sample rate, I/O vector, signal vector,
latence driver, CPU, overdrive et scheduler in audio interrupt selon support.
```

Consequence Vesperare :

```text
adstatus est un candidat DIAG/LAT.
il peut informer, verifier ou signaler.
il ne doit pas devenir autorite musicale temps reel.
```

### 2.4. `poly~`, MC et `gen~`

Implication :

```text
poly~ et MC organisent voix/polyphonie.
gen~ peut porter du calcul signal/audio-rate.
ces outils sont puissants mais changent complexite, charge, routage et etats.
```

Consequence Vesperare :

```text
ils sont candidats pour generation, polytexture, resonateurs ou transformations
justifiees, mais pas dependances MIN-DID-PC ni reponse automatique aux chemins
direct/safe.
```

---

## 3. Classes de criticite utilisees

```text
CRIT-0 DIRECT
chemin direct recuperable, didgeridoo direct, sortie principale, safe minimal.

CRIT-1 SAFE
P0/P1, headroom, feedback critique, grave critique, lisibilite vitale.

CRIT-2 PLAY
choix live P2, gestes, retours, modes immediats, controle performant.

CRIT-3 MUS
generation, motifs, textures, polytexture, espace/halo courts, transformations
non vitales.

CRIT-4 SLOW/DIAG
espaces longs, halo long, freeze, mesure salle, historique, diagnostics,
logs, vues, configuration, traces.
```

---

## 4. Exclusions strictes par criticite

### 4.1. CRIT-0 DIRECT

Exclus :

```text
dict ;
coll ;
text ;
js ;
node/script externe ;
pattrstorage ;
preset/preset recall ;
UI comme condition ;
diagnostic comme condition ;
log/print comme condition ;
analyse lente ;
FFT/pfft ;
convolution ;
reverb longue ;
freeze ;
poly~ ;
MC polyphonique ;
gen~ non audite ;
buffer~/groove~/play~ comme source indispensable ;
send~/receive~ comme routage cache par defaut ;
matrix~ non audite ;
metro/qmetro/transport comme condition ;
fichier disque temps reel ;
external/plugin non audite.
```

Autorises sous condition stricte :

```text
MSP direct ;
adc~/dac~ candidats ;
selector~/gate~ candidats ;
line~/curve~ candidats si necessaires a transition/protection ;
matrix~ seulement apres audit routage/lisibilite ;
taps non bloquants seulement s'ils ne conditionnent pas le direct ;
adstatus seulement DIAG/LAT hors autorite.
```

Regle :

```text
CRIT-0 doit rester audible, recuperable et jouable meme si les etats, vues,
logs, diagnostics, analyses, generation, reverb ou scripts sont absents.
```

### 4.2. CRIT-1 SAFE

Exclus :

```text
dict/coll/text/js comme condition de reaction ;
pattrstorage comme condition de protection ;
UI comme condition de protection ;
diagnostic ou log comme condition ;
analyse lente comme condition ;
FFT/pfft/convolution/reverb longue/freeze comme support de securite ;
generation autonome ;
LAT comme autorite de retrait musical ;
P5 comme cause ;
external/plugin non audite.
```

Autorises sous condition :

```text
MSP direct ;
routage simple audite ;
selector~/gate~/line~/curve~ candidats ;
matrix~ apres audit ;
message de controle simple si fail-safe ;
SIG-0/SIG-1 non bloquant ;
limiteur/protection candidate non choisie ;
analyse rapide seulement informative si le safe reste recuperable.
```

Regle :

```text
CRIT-1 peut limiter pour P0/P1, mais ne compose pas.
toute limitation audible ou jouable doit etre signalable.
```

### 4.3. CRIT-2 PLAY

Exclus :

```text
UI comme source unique ;
rollback silencieux ;
message final impose ;
script opaque sur geste immediat ;
pattrstorage comme seule memoire du geste ;
horloge globale imposant la forme ;
diagnostic qui retarde le retour joueur ;
generation qui remplace le geste live.
```

Autorises sous condition :

```text
route/select/gate/trigger ;
send/receive candidats lisibles ;
pattr seulement hors chemin audio critique ;
messages Max candidats ;
metro/timer/delay seulement si fonction jouee explicite ;
overdrive / scheduler in audio interrupt comme configuration a auditer ;
SIG-1/SIG-2 si action limitee.
```

Regle :

```text
CRIT-2 sert le choix live.
il ne doit pas transformer une scene, un preset ou une horloge en pilote cache.
```

### 4.4. CRIT-3 MUS

Exclus :

```text
GEN sans GEN-PACKET ;
PERM absent ;
DEC absent ;
release absent ;
autonomie forte par defaut ;
son electronique reconnaissable par defaut ;
pitch correction / auto-tune reconnaissable ;
lead synth banal non naturalise ;
js sur chemin critique sans audit ;
polyphonie qui noie pression rythmique ou source live ;
buffer non precharge indispensable a une attaque critique.
```

Autorises sous condition :

```text
gen~ ;
poly~ ;
MC ;
buffer~/play~/groove~ ;
table~/function ;
metro/timer/qmetro pour generation non critique ;
resonateurs ;
reverb courte/parallele ;
traitements timbraux naturalises ;
analyse rapide comme modulation non bloquante ;
adstatus comme information, pas autorite.
```

Regle :

```text
CRIT-3 peut etre musicalement central.
il ne doit pas bloquer CRIT-0/1/2 ni faire oublier la fonction, le contexte
d'inspiration, la naturalisation et la sortie.
```

### 4.5. CRIT-4 SLOW / DIAG

Autorises :

```text
dict ;
coll ;
text ;
pattrstorage ;
adstatus ;
logs ;
print ;
vues ;
mesures lentes ;
analyse salle ;
convolution preparee ;
reverbs longues ;
freeze ;
historique ;
fichiers externes ;
scripts/prototypes ;
diagnostics CPU/vector/latence.
```

Exclus :

```text
conditionner CRIT-0/1/2 ;
decider une action P2 sans permission ;
devenir compositeur ;
imposer retour musical ;
masquer une limitation comme choix esthetique ;
maintenir une autonomie cachee.
```

Regle :

```text
CRIT-4 peut etre musicalement central si decide.
sa lenteur est acceptable seulement si elle ne remplace pas presence,
protection, choix live ou sortie.
```

---

## 5. Matrice candidats / criticite

| Famille candidate | CRIT-0 | CRIT-1 | CRIT-2 | CRIT-3 | CRIT-4 | Condition minimale | Risque principal |
|---|---|---|---|---|---|---|---|
| `adc~` / entree audio | CONDITIONNEL | CONDITIONNEL | CONDITIONNEL | CONDITIONNEL | CONDITIONNEL | interface/driver stable ; mapping lisible | source optionnelle requise |
| `dac~` / sortie audio | CONDITIONNEL | CONDITIONNEL | CONDITIONNEL | CONDITIONNEL | CONDITIONNEL | sortie safe et principale separees conceptuellement | diagnostic sur sortie vitale |
| MSP direct simple | AUTORISE | AUTORISE | AUTORISE | AUTORISE | AUTORISE | chemin lisible, fallback direct | complexite cachee |
| `selector~` / `gate~` | AUTORISE | AUTORISE | AUTORISE | AUTORISE | AUTORISE | audit de transitions/clicks/etat | cut abrupt |
| `line~` / `curve~` | AUTORISE | AUTORISE | AUTORISE | AUTORISE | AUTORISE | pas de composition cachee | release imposee |
| `matrix~` | CONDITIONNEL | CONDITIONNEL | CONDITIONNEL | CONDITIONNEL | CONDITIONNEL | audit routage/lisibilite/defauts safe | routage opaque |
| `send~` / `receive~` | EXCLU PAR DEFAUT | CONDITIONNEL | CONDITIONNEL | CONDITIONNEL | AUTORISE | lisibilite et nommage audites | chemin cache |
| taps `meter~` / `snapshot~` / `peakamp~` | OBSERVATION SEULE | OBSERVATION SEULE | CONDITIONNEL | CONDITIONNEL | AUTORISE | ne conditionne pas direct/safe | diagnostic influence |
| `adstatus` | DIAG SEULEMENT | DIAG SEULEMENT | DIAG SEULEMENT | DIAG SEULEMENT | AUTORISE | information non autoritaire | LAT devient decision |
| `route` / `select` / `trigger` | EXCLU COMME CONDITION | CONDITIONNEL SIMPLE | AUTORISE | AUTORISE | AUTORISE | message non final, fail-safe | scheduler trop central |
| messages Max | EXCLU COMME CONDITION | CONDITIONNEL SIMPLE | AUTORISE | AUTORISE | AUTORISE | pas UI unique, pas final | geste retarde |
| `pattr` | EXCLU | EXCLU COMME CONDITION | CONDITIONNEL | CONDITIONNEL | AUTORISE | hors chemin audio critique | preset pilote |
| `pattrstorage` | EXCLU | EXCLU | EXCLU COMME CONDITION | CONDITIONNEL LENT | AUTORISE | rappel non vital | scene imposee |
| `dict` | EXCLU | EXCLU | EXCLU COMME CONDITION | CONDITIONNEL | AUTORISE | data non autoritaire | mega-etat |
| `coll` | EXCLU | EXCLU | EXCLU COMME CONDITION | CONDITIONNEL | AUTORISE | table non critique | mapping opaque |
| `text` / log | EXCLU | EXCLU | EXCLU | EXCLU COMME CONDITION | AUTORISE | diagnostic/offline | log bloquant |
| `js` | EXCLU | EXCLU | EXCLU SUR GESTE | CONDITIONNEL PROTOTYPE | AUTORISE OFFLINE | pas chemin critique | logique cachee |
| `gen~` | EXCLU SAUF AUDIT DEDIE | EXCLU SAUF AUDIT DEDIE | CONDITIONNEL | AUTORISE CANDIDAT | CONDITIONNEL | raison musicale audio-rate | puissance prise pour besoin |
| `poly~` | EXCLU | EXCLU | CONDITIONNEL LATER | AUTORISE CANDIDAT | CONDITIONNEL | voix/polytexture justifiees | charge/etat |
| MC | EXCLU | EXCLU | CONDITIONNEL LATER | AUTORISE CANDIDAT | CONDITIONNEL | multicanal/couches justifies | densite opaque |
| `buffer~` / `play~` / `groove~` | EXCLU COMME INDISPENSABLE | EXCLU COMME INDISPENSABLE | CONDITIONNEL | AUTORISE CANDIDAT | CONDITIONNEL | precharge, release, naturalisation | sample trop reconnaissable |
| `table~` / `function` | EXCLU COMME CONDITION | CONDITIONNEL | AUTORISE | AUTORISE | AUTORISE | pas forme imposee | pattern autonome |
| `metro` / `timer` / `delay` / `pipe` | EXCLU | EXCLU COMME CONDITION | CONDITIONNEL | AUTORISE | AUTORISE | fonction rythmique explicite | grille cachee |
| `qmetro` | EXCLU | EXCLU | EXCLU POUR GESTE | CONDITIONNEL NON VITAL | AUTORISE VIEW/DIAG | vues/diag seulement | UI pilote |
| `transport` | EXCLU | EXCLU | CONDITIONNEL LATER | CONDITIONNEL LATER | AUTORISE LENT | pas host-grid par defaut | techno banale imposee |
| FFT / `pfft~` | EXCLU | EXCLU | CONDITIONNEL LATER | CONDITIONNEL | AUTORISE LENT | non vital, audit charge | latence/artefact |
| convolution | EXCLU | EXCLU | EXCLU COMME ATTAQUE | CONDITIONNEL | AUTORISE PREPARE | parallele ou preparee | reverb mange corps |
| reverb longue / freeze | EXCLU COMME CONDITION | EXCLU COMME CONDITION | CONDITIONNEL NON VITAL | CONDITIONNEL | AUTORISE | release/lock/sortie | perte de corps non decidee |
| external/plugin | EXCLU | EXCLU | EXCLU SANS AUDIT | CONDITIONNEL LATER | CONDITIONNEL LATER | source primaire + audit | dependance opaque |
| UI / vue / scope / print | EXCLU | EXCLU COMME CONDITION | VIEW SEULE | VIEW SEULE | AUTORISE | signalisation non bloquante | UI devient systeme |

---

## 6. Regles scheduler / latence par criticite

### 6.1. CRIT-0

Regle :

```text
pas de dependance a scheduler Max pour que le chemin direct existe.
les messages peuvent armer ou modifier, mais le direct/safe doit rester
recuperable si message, UI, diagnostic ou script echoue.
```

Exigence :

```text
config audio a auditer plus tard :
driver ;
sample rate ;
I/O vector ;
signal vector ;
overdrive ;
scheduler in audio interrupt ;
latence rapportee ;
CPU.
```

### 6.2. CRIT-1

Regle :

```text
les protections doivent avoir fail-safe.
un retard de message ne doit pas rendre la sortie dangereuse ou illisible.
```

Signalisation :

```text
SIG-0/SIG-1 si protection limite un choix musical.
```

### 6.3. CRIT-2

Regle :

```text
les evenements scheduler sont acceptables pour commandes live si le geste reste
comprehensible, signalable et rollbackable.
```

Interdit :

```text
controle live qui depend d'une UI unique, d'un preset opaque ou d'un script
non audite.
```

### 6.4. CRIT-3

Regle :

```text
la generation peut utiliser scheduler, horloges, buffers, gen~, poly~, MC ou
tables si GEN-PACKET, PERM-PACKET, DEC-PACKET, release et naturalisation
sont presents.
```

Interdit :

```text
motif qui continue sans fonction, ignore scene/source, remplace geste live,
ou devient signature electronique reconnaissable par defaut.
```

### 6.5. CRIT-4

Regle :

```text
diagnostic, logs, mesures, vues et analyses lentes peuvent exister, mais ne
conditionnent jamais direct, safe, choix live ou protection.
```

---

## 7. Implications MIN-DID-PC

Le profil minimum ne doit pas dependre de :

```text
dict ;
coll ;
text ;
js ;
pattrstorage ;
poly~ ;
MC ;
gen~ ;
FFT/pfft ;
convolution ;
reverb longue ;
freeze ;
mesure salle ;
gong physique ;
voix ;
tambour ;
sub puissant ;
UI complexe ;
external/plugin ;
transport global.
```

Le profil minimum peut utiliser comme candidats :

```text
entree didgeridoo ;
sortie directe ;
protection safe ;
routage simple audite ;
rampes simples ;
generation simple non autonome ;
halo simple non vital ;
signalisation critique non bloquante ;
diagnostic desactivable.
```

Regle :

```text
MIN-DID-PC n'est pas pauvre.
c'est un profil complet minimal, sans dependance a options lourdes.
```

---

## 8. Implications GEN-HAL

GEN-HAL ne peut pas utiliser :

```text
patcher autonome ;
packet qui decide HAL ;
send audio libre sans owner ;
reverb generee qui contourne HAL ;
freeze autonome ;
script qui maintient halo sans DEC/PERM ;
buffer ou boucle qui continue sans release.
```

GEN-HAL peut utiliser comme candidats :

```text
matiere GEN naturalisee ;
envoi controle vers HAL ;
routing audite ;
line~/curve~ pour entree/sortie ;
buffer ou gen~ seulement si GEN-PACKET + HAL-PACKET + release ;
diagnostic de trace non bloquant.
```

---

## 9. Questions restantes apres matrice

Questions non resolues ici :

```text
Q-EXC-1
Faut-il separer une fiche dediee scheduler/vector avant toute matrice d'objets
plus prescriptive ?

Q-EXC-2
Quels candidats doivent recevoir un audit individuel :
matrix~, send~/receive~, gen~, poly~, MC, buffer~/groove~, pattrstorage, js,
FFT/pfft, convolution, external/plugin ?

Q-EXC-3
Quels packets deviennent champs internes plutot que structures separees ?

Q-EXC-4
Quels alias courts sont necessaires avant un schema Max lisible ?
```

Statut :

```text
Q-EXC-1 et Q-EXC-2 bloquent toute matrice d'objets plus prescriptive.
Q-EXC-3 bloque les dictionnaires/messages concrets.
Q-EXC-4 bloque la lisibilite patch/UI, pas la matrice d'exclusion.
```

---

## 10. Decision v0.1

Decision :

```text
la matrice d'exclusions fixe les interdits et conditions par criticite.
```

Elle autorise ensuite :

```text
AUDIT_COMPATIBILITE_MATRICE_EXCLUSIONS_CANDIDATS_PAR_CRITICITE_ET_LATENCE_AVEC_CORPUS_v0_1.md
```

Elle n'autorise pas :

```text
objet final ;
patch final ;
routage final ;
UI ;
controleur ;
seuil ;
benchmark ;
implementation.
```
