# SPECIFICATION PRE-AUDIT CANDIDATS GENERATION RYTHMIQUE MOTIFS TIMING VESPERARE v0.1

Projet : Vesperare
Date : 2026-06-24
Statut : pre-audit candidat C, non-implementation

Sources internes principales :

- `AUDIT_CANDIDATS_COMMANDES_LIVE_SCHEDULER_SIGNALISATION_MAX_STANDALONE_VESPERARE_v0_1.md`
- `SPECIFICATION_BLOC_GENERATION_SONORE_MOTIFS_RYTHMIQUES_MELODIQUES_v0_1.md`
- `SPECIFICATION_GENERATION_FINE_PAR_GEN_ROLE_MAX_STANDALONE_VESPERARE_v0_1.md`
- `MATRICE_GEN_ROLE_SCENES_CONTROLES_LIVE_RISQUES_VESPERARE_v0_1.md`
- `AUDIT_TRACABILITE_CAHIER_CHARGES_GENERATIF_STYLISTIQUE_v0_1.md`
- `MATRICE_LATENCE_RESSENTIE_PAR_FONCTION_ET_CHEMIN_MAX_STANDALONE_VESPERARE_v0_1.md`
- `MATRICE_EXCLUSIONS_CANDIDATS_PAR_CRITICITE_ET_LATENCE_MAX_STANDALONE_VESPERARE_v0_1.md`
- `REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`

Sources externes consultees comme garde-fous :

- Documentation Cycling '74 : `metro`, `transport`, `phasor~`, `edge~`
- Documentation Cycling '74 : Scheduler and Priority, Sample Accurate Messages
- Sources descriptives sur Keita Ogawa / percussion contemporaine comme rappel
  de contexte, sans import stylistique.
- Perspectives NIME / musique generative interactive comme rappel methodologique,
  sans choix d'algorithme.

But :

```text
preparer l'audit candidat C :
generation rythmique ;
motifs rythmiques ;
motifs melodiques ;
timing generation ;
interlocking ;
acid naturalise ;
voix fragmentaire integree ;
jazz/Keita comme phenomenes retenus ;
sans moteur final, algorithme final, UI, mapping, patch ou tests.
```

Hors perimetre :

```text
moteur generation final ;
algorithme final ;
sequenceur final ;
clock finale ;
syntaxe Max finale ;
objets Max definitifs ;
patch ;
UI ;
mapping MIDI/OSC/HID ;
seuils ;
benchmarks ;
tests pratiques comme methode de resolution.
```

---

## 1. Decision de cadrage

Decision :

```text
le groupe C n'est pas "le module generation".
il est le pre-audit des candidats qui pourraient porter rythme, motifs et
timing generatif sans perdre les contraintes musicales deja posees.
```

Regle :

```text
un candidat C n'est recevable que s'il peut etre rattache a :
GEN-ROLE ;
inspiration / phenomene retenu ;
fonction Vesperare ;
source ou scene ;
autonomie AUT ;
reconnaissance REC ;
timing ;
controle live ;
sortie ;
risque ;
SIG si impact.
```

Interdit :

```text
auditer des moteurs parce qu'ils sont puissants.
importer un style entier.
confondre precision technique avec sensation rythmique.
confondre motif reconnaissable avec motif problematique.
compter sur des tests pour decider ce qui doit etre defini conceptuellement.
```

---

## 2. Questions actives absorbees par ce pre-audit

### 2.1. Q-C-1 - generation rythmique sans moteur final

Resolution pre-audit :

```text
auditer d'abord les responsabilites :
base de temps ;
evenements ;
source-derived triggers ;
variation ;
density ;
interlocking ;
sortie ;
signalisation.
```

Regle :

```text
`metro`, `transport`, `phasor~`, signal-rate clock, event clock, random,
probabilite, tables, buffers, gen~, js ou autres ne sont pas encore des choix.
ils sont seulement des familles de candidats possibles.
```

### 2.2. Q-C-2 - motifs sans autonomie excessive

Resolution pre-audit :

```text
un motif peut etre reconnaissable, memorable ou long.
le probleme est :
hors fonction ;
hors scene ;
hors source ;
hors controle ;
sans sortie ;
cliche ;
lead banal ;
signature electronique reconnaissable non decidee.
```

Regle :

```text
tout candidat de motif doit declarer AUT et REC.
AUT-5 jamais par defaut.
REC-4 doit produire signal, re-naturalisation ou retrait.
```

### 2.3. Q-C-3 - timing generation sans confusion scheduler/intention

Resolution pre-audit :

```text
le timing a deux niveaux :
1. timing technique : event/signal/audio/vector/scheduler ;
2. timing musical : tension, attente, retour, swing non plaque, micro-retard,
   suspension, interlocking, densification, retrait.
```

Regle :

```text
un candidat technique de timing doit toujours declarer quelle sensation ou
fonction musicale il sert.
```

### 2.4. Q-C-4 - inspirations comme phenomenes retenus

Resolution pre-audit :

```text
Keita, jazz, acid, techno, voix, sound system, dubstep, trance et peaux
doivent rester reservoirs de phenomenes precis.
ils ne doivent pas devenir couleurs stylistiques autonomes.
```

Regle :

```text
chaque objet genere futur doit garder un champ "inspiration/phenomene" ou un
champ "source/fonction" equivalent.
```

---

## 3. Familles a auditer dans le groupe C

| Famille candidate | Fonction a auditer | Exemples non finaux | Risque principal |
|---|---|---|---|
| Base de temps evenementielle | pulse, cycles, bangs, scheduling | `metro`, `transport`, clock message | grille mecanique ou jitter perceptif |
| Base de temps signal/audio | phase, rampes, micro-declenchement | `phasor~`, `edge~`, signal-rate triggers | complexite audio qui remplace intention |
| Evenements planifies | placement temporel precis | sample-accurate messages, delays, timepoints | croire que tout devient sample-accurate |
| Source-derived triggers | partir du didgeridoo/voix/gong/peau | attaques, souffle, partiels, enveloppe | source transformee en simple controleur |
| Representation de motif | stocker forme, variation, sortie | liste, table, dict/coll, buffer abstrait | motif autonome ou preset cache |
| Variation / probabilite | varier sans composer a la place | random, weighted, constraint, Markov, rules | hasard decoratif ou style genere |
| Interlocking / couches | combiner attaques et plans | couche directrice + couches secondaires | densite illisible |
| Ligne / acid naturalise | torsion, ligne, resonance, motif | gliss, formant, filtre, partiels, cavite | TB-303, squelch, lead banal |
| Voix fragmentaire | souffle, consonne, cri, formant | source-filter, fragment, halo, attaque | voix nue, chanson, auto-tune |
| Jazz / Keita subtilite | ponctuation, micro-decision, relance | silence actif, tension, densification courte | style plaque ou imitation |
| Protections de motif | limiter, retirer, naturaliser | AUT/REC/SIG/release | generation qui impose la forme |

---

## 4. Criticite et latence

### 4.1. Ce qui peut etre direct

Direct possible :

```text
reponse a attaque ;
micro-pulse ;
retour corporel ;
mute/retrait motif ;
densification courte ;
ponctuation ;
transgression decidee.
```

Condition :

```text
si le geste est ressenti comme instrument, il depend des contraintes LPER-0/1/2
et doit rester compatible avec le groupe B : commande explicite, timing declare,
fallback et SIG.
```

### 4.2. Ce qui peut etre lent

Lent possible :

```text
evolution de motif ;
derive de probabilite ;
densite longue ;
memoire de scene ;
halo rythmique ;
techno suspendue longue ;
texture qui respire.
```

Condition :

```text
lent ne veut pas dire flou.
le role, la sortie et le controle live doivent rester explicites.
```

### 4.3. Ce qui ne doit pas dependre du moteur generation

Interdit :

```text
P0 direct ;
P1 protection ;
safe ;
grave critique ;
source live essentielle ;
rollback de protection ;
limitation P2 sensible.
```

---

## 5. Regimes musicaux a preserver

### 5.1. Pression rythmique

Fonctions :

```text
orienter le corps ;
preparer retour ;
tenir une techno suspendue ;
produire tension ;
faire sentir l'espace ;
porter une transgression.
```

Risques :

```text
kit techno implicite ;
grille plate ;
retour automatique non decide ;
complexite qui ne fait pas corps.
```

### 5.2. Interlocking / Keita

Phenomenes retenus :

```text
tissage ;
plans ;
attaques differenciees ;
contrepoint rythmico-spectral ;
couche directrice ;
accents secondaires ;
equilibre predictibilite/surprise ;
densite lisible ;
retrait possible.
```

Interdits :

```text
imitation Keita Ogawa ;
percussion illustrative ;
folklore ;
virtuosite decorative ;
interlocking sans couche directrice.
```

### 5.3. Jazz comme methode, pas style

Phenomenes retenus :

```text
ponctuation ;
micro-decision ;
relance ;
silence actif ;
tension/resolution ;
voicing distribue ;
partiels distribues ;
micro-instabilite ;
ecoute active.
```

Interdits :

```text
accord jazz plaque ;
swing plaque ;
walking implicite ;
couleur jazz autonome ;
theorie jazz complete.
```

### 5.4. Acid naturalise

Phenomenes retenus :

```text
torsion ;
elasticite ;
repetition vivante ;
resonance ;
slide ;
mutation timbrale ;
acidite dosee ;
ligne qui peut etre reconnaissable si fonctionnelle.
```

Interdits :

```text
TB-303 par defaut ;
squelch reconnaissable par defaut ;
pattern acid cliche ;
lead synth banal ;
module acid autonome.
```

### 5.5. Voix fragmentaire integree

Phenomenes retenus :

```text
souffle ;
consonne rythmique ;
cri integre ;
fragment ;
formant ;
presence proche ;
presence spectrale ;
trace quasi melodique ;
signal humain masque ou revele.
```

Interdits :

```text
voix nue par defaut ;
auto-tune reconnaissable ;
chanson non decidee ;
lead vocal banal ;
fragilite vocale masquee par densite.
```

---

## 6. Forme minimale d'un candidat C

Tout candidat C devra pouvoir etre audite sous cette forme :

```text
CANDIDAT-C
nom :
famille :
GEN-ROLE :
phenomene retenu :
fonction Vesperare :
source / scene :
timing technique :
timing musical :
autonomie AUT :
reconnaissance REC :
controle live :
Auto-Pro autorise :
Auto-Pro interdit :
sortie :
fallback :
SIG :
risques :
interdits :
report :
```

Exemple abstrait non final :

```text
nom : interlocking source-derived
famille : source-derived triggers + couches
GEN-ROLE : GEN-INTERLOCKING / GEN-RHY / GEN-TEX
phenomene retenu : tissage d'attaques, couches, accents secondaires
fonction Vesperare : densite lisible et pression rythmique subtile
source / scene : didgeridoo, voix consonne, peau, gong ; SCN-8
timing technique : a auditer
timing musical : couche directrice + contrepoints
autonomie AUT : AUT-1/2 par defaut, AUT-3 si scene autorise
reconnaissance REC : REC-1/2, REC-3 si scene explicite
controle live : densite, complexite, couche directrice, retrait
Auto-Pro autorise : limiter densite si source essentielle masquee
Auto-Pro interdit : imposer retour ou style
sortie : simplification, retrait, transfert texture, silence
fallback : couche directrice seule
SIG : si densite limitee, motif bloque ou source protegee
risques : interlocking illisible, percussion illustrative
interdits : imitation Keita, pattern ethnique, virtuosite decorative
report : choix moteur
```

---

## 7. Candidats lourds a surveiller sans les auditer trop tot

Ces familles peuvent devenir necessaires, mais ne doivent pas etre ouvertes par
fascination technique :

```text
gen~ ;
poly~ ;
MC ;
buffer~/groove~ ;
js ;
externals/plugins ;
machine learning ;
FFT/pfft pour analyse ou resynthese ;
convolution rythmique ou corpus sonore ;
pattrstorage pour presets generation.
```

Regle :

```text
elles rejoignent DETTE-ACT-6 si une fonction musicale les rend vraiment
necessaires.
```

---

## 8. Questions non resolues mais cadrees

### Q-PREAUD-C-1 - separer timing et generation ?

Decision pre-audit :

```text
ne pas separer maintenant.
le timing determine trop directement la sensation des motifs.
l'audit C doit garder timing et generation ensemble, avec sous-sections.
```

### Q-PREAUD-C-2 - inclure moteurs lourds ?

Decision pre-audit :

```text
les mentionner comme candidats reportables.
ne les auditer en detail que si une fonction precise le demande.
```

### Q-PREAUD-C-3 - jusqu'ou caracteriser Keita/jazz ?

Decision pre-audit :

```text
caracteriser uniquement les phenomenes retenus :
tissage, attaques differenciees, couche directrice, ponctuation, silence actif,
micro-decision, tension/resolution, densite lisible.
ne pas detailler le style, la biographie ou la theorie complete.
```

### Q-PREAUD-C-4 - faut-il des recherches supplementaires ?

Decision pre-audit :

```text
oui pour l'audit candidat C si un candidat technique est nomme.
sources prioritaires :
documentation Cycling '74 pour objets Max ;
references NIME / recherche interactive pour methodes ;
sources musicales reconnues pour phenomenes, sans import stylistique.
```

---

## 9. Decision de sortie

Verdict pre-audit :

```text
pret pour audit compatibilite.
```

Autorise :

```text
AUDIT_COMPATIBILITE_SPECIFICATION_PRE_AUDIT_CANDIDATS_GENERATION_RYTHMIQUE_MOTIFS_TIMING_AVEC_CORPUS_v0_1.md
```

Puis, si compatible :

```text
AUDIT_CANDIDATS_GENERATION_RYTHMIQUE_MOTIFS_TIMING_MAX_STANDALONE_VESPERARE_v0_1.md
```

N'autorise pas :

```text
moteur generation final ;
algorithme final ;
sequenceur final ;
objet Max final ;
UI ;
mapping ;
patch ;
benchmark ;
implementation.
```
