# CARACTERISATION DETAILLEE DES ELEMENTS v0.2

Projet : Vesperare
Statut : correction methodologique de v0.1
Date : 2026-06-20

Sources internes :
- CARACTERISATION_DETAILLEE_ELEMENTS_v0_1.md
- BESOINS_STYLISTIQUES_v0_3.md
- BESOINS_GENERATION_v0_3.md
- MATRICE_DETAILLEE_INSPIRATIONS_BESOINS_v0_1.md
- SPECIFICATIONS_BESOINS_STYLISTIQUES_GENERATION_v0_1.md
- sources initiales uploadees

Sources externes consultees pour vocabulaire et precision, sans ajout d'objectifs artistiques :
- Mark J. Butler, analyse rythme/metre/groove dans l'EDM ;
- Denis Smalley, spectromorphologie et source-bonding ;
- travaux acoustiques sur le didgeridoo : formants, tractus vocal, impedance, partiels ;
- analyses de l'interlocking et des cycles rythmiques ;
- descriptions techniques TB-303 / acid : slide, accent, resonance ;
- acoustique du gong : partiels inharmoniques, decay, regimes non lineaires.

## 0. Correction centrale

La v0.1 etait utile comme inventaire, mais trop uniforme.

La v0.2 pose la regle correcte :

```text
On ne caracterise pas chaque element avec la meme liste.
On choisit la grille de caracterisation selon la nature de l'element.
On ne caracterise pas un style entier.
On caracterise uniquement les phenomenes explicitement retenus comme inspirations.
On ne detaille pas ce qui n'est pas necessaire pour une decision musicale, generative ou technique future.
```

Exemple :

```text
Dubstep -> ne pas caracteriser le dubstep.
Caracteriser seulement : syncope, attente, trou, retour de masse, sub, voix criee, gong/rugissement, resolution.
```

```text
Didgeridoo -> ne pas appliquer une fiche "style".
Caracteriser comme source live : registre, charge grave, partiels, formants, souffle, attaques, modes de coexistence.
```

```text
Acid -> ne pas caracteriser l'acid house.
Caracteriser seulement : ligne vivante, resonance, torsion, slide, accent, mutation timbrale, seuil de reconnaissance 303.
```

## 1. Principe de niveau de detail

### 1.1. Detail obligatoire

Un detail est obligatoire s'il sert a au moins une de ces fonctions :

- eviter un contresens stylistique ;
- definir ce qui doit etre genere ;
- definir ce qui doit rester stable ;
- definir ce qui peut varier ;
- anticiper un conflit perceptif ;
- proteger un instrument live ;
- eviter un cliche ;
- preparer un test futur.

### 1.2. Detail inutile ou dangereux

Un detail est inutile ou dangereux s'il :

- decrit tout un genre au lieu du phenomene retenu ;
- ajoute une tradition ou une histoire non demandee ;
- transforme une inspiration en obligation stylistique ;
- cree une architecture technique prematuree ;
- impose un type de son non declare ;
- multiplie les parametres sans consequence musicale.

### 1.3. Trois niveaux de caracterisation

| Niveau | Usage | Exemple |
|---|---|---|
| Minimal | le phenomene est secondaire ou seulement garde-fou | "ne pas sonner reggae" |
| Fonctionnel | le phenomene sert la generation ou la scene | "pression par vide + sub confortable" |
| Profond | le phenomene cree un conflit ou une fonction centrale | "didgeridoo vs sub", "halo vs rythme", "acid naturalise vs 303" |

Regle :

Un element secondaire ne recoit pas une fiche profonde sauf s'il devient conflit ou fonction centrale dans une scene.

## 2. Familles de caracterisation

### FC-01 - Reservoir stylistique de phenomenes

Elements concernes :

- techno ;
- dubstep ;
- dub / sound system ;
- jazz ;
- trance ;
- acid.

Ce qu'on caracterise :

- phenomenes explicitement retenus ;
- fonctions Vesperare ;
- conditions d'apparition ;
- risques de cliche ;
- consequences techniques probables seulement si elles sont necessaires.

Ce qu'on ne caracterise pas :

- histoire complete du genre ;
- instrumentation typique complete ;
- codes de production non retenus ;
- sous-genres ;
- exemples sans lien avec les besoins declares.

Requis techniques de precision :

```text
phenomene retenu :
fonction Vesperare :
mode de presence : absent / latent / ponctuel / structurel / frontal
condition d'apparition :
condition de retrait :
risque de copie du style :
support sonore compatible :
garde-fou :
```

### FC-02 - Organisation temporelle / rythmique

Elements concernes :

- pression rythmique ;
- techno comme cadre recuperable ;
- polytexture ;
- interlocking ;
- syncope ;
- build ;
- retrait ;
- retour.

Ce qu'on caracterise :

- cycles ;
- accents ;
- densite d'attaques ;
- roles de couches ;
- lisibilite corporelle ;
- stabilite ou instabilite ;
- rapport au grave ;
- rapport au silence.

Ce qu'on ne caracterise pas :

- theorie rythmique complete ;
- complexite pour elle-meme ;
- notation exhaustive ;
- microtiming exact avant tests.

Requis techniques de precision :

```text
cycle principal :
cycle secondaire :
accent directeur :
accent fantome :
densite d'attaques :
role de chaque couche :
degre d'interlocking :
degre de syncope :
stabilite du cadre :
lisibilite corporelle :
condition de retour :
```

### FC-03 - Source instrumentale ou pseudo-instrumentale

Elements concernes :

- didgeridoo ;
- voix ;
- gong / bols / cloches / metaux ;
- tambours / peaux ;
- souffles ;
- frictions ;
- sources naturelles ou acoustiques utilisees comme supports.

Ce qu'on caracterise :

- comportement sonore de la source ;
- modes de jeu ou gestes imagines ;
- registre ;
- attaque ;
- sustain / queue ;
- partiels ;
- formants ;
- rugosite ;
- masquage ;
- compatibilite avec le club et le live.

Ce qu'on ne caracterise pas :

- organologie complete ;
- histoire de l'instrument ;
- symbolique culturelle ;
- techniques de jeu non utilisees ;
- source naturelle non reliee a une fonction.

Requis techniques de precision :

```text
source :
fonction musicale :
geste ou mode de jeu :
registre utile :
attaque :
corps :
queue :
partiels/formants :
bruit/souffle/rugosite :
dynamique :
risque de masquage :
relation au grave :
relation au halo :
relation aux autres sources :
```

### FC-04 - Objet sonore / morphologie / plausibilite acoustique

Elements concernes :

- techno pseudo-acoustique ;
- realisme augmente ;
- sons generes plausibles ;
- traitements de sources ;
- objets impossibles mais physiquement imaginables.

Ce qu'on caracterise :

- cause physique imaginable ;
- morphologie temporelle ;
- relation attaque/corps/queue ;
- source-bonding ;
- degre de plausibilite acoustique ;
- seuil de reconnaissance electronique.

Ce qu'on ne caracterise pas :

- catalogue d'effets ;
- sound design spectaculaire sans fonction ;
- imitation realiste gratuite ;
- technologie de synthese avant fonction.

Requis techniques de precision :

```text
source imaginee :
cause possible :
matiere :
geste :
attaque :
corps :
queue :
evolution spectrale :
espace plausible :
niveau PA :
risque preset/electronique :
fonction dans la scene :
```

### FC-05 - Spectre / hauteur large / microtonalite

Elements concernes :

- microtonalite ;
- partiels ;
- centres spectraux ;
- jazz comme champ de tension ;
- gong ;
- voix ;
- didgeridoo ;
- acid naturalise par formants/resonances ;
- halo accorde ou desaccorde.

Ce qu'on caracterise :

- tension ;
- battements ;
- centres ;
- partiels ;
- formants ;
- relation grave/halo ;
- resolution ;
- perceptibilite ;
- source acoustique guide.

Ce qu'on ne caracterise pas :

- systeme d'accordage complet ;
- theorie microtonale autonome ;
- gamme exotique plaquee ;
- pitch exact avant necessite musicale.

Requis techniques de precision :

```text
type de hauteur : centre / partiel / formant / note / bruit centre
source du centre :
relation entre partiels :
degre microtonal :
vitesse de battement :
tension :
resolution :
relation au grave :
relation au halo :
perceptibilite en densite :
risque theorique :
```

### FC-06 - Espace / halo / sound system

Elements concernes :

- dub / sound system ;
- espace ;
- halo ;
- techno suspendue ;
- trance comme expansion ;
- gongs ;
- voix etiree ;
- didgeridoo en suspension.

Ce qu'on caracterise :

- plan ;
- profondeur ;
- distance ;
- largeur ;
- queue ;
- droit au halo ;
- relation au grave ;
- pression par vide ;
- lisibilite des attaques ;
- confort.

Ce qu'on ne caracterise pas :

- reverb comme effet par defaut ;
- delay comme style dub ;
- espace ambient decoratif ;
- detail de plugin.

Requis techniques de precision :

```text
plan perceptif :
profondeur :
distance :
largeur :
taille ressentie :
queue :
type de halo :
zone spectrale du halo :
relation a l'attaque :
relation au grave :
moment de baisse :
fonction : suspension / retour / confort / tension / beaute / transgression
```

### FC-07 - Motif / melodie / ligne

Elements concernes :

- basse-motif ;
- ligne acid naturalisee ;
- hook minimal ;
- fragment vocal ;
- accent-melody ;
- melodie de timbre ;
- melodie de partiels.

Ce qu'on caracterise :

- reconnaissance ;
- source du motif ;
- fonction ;
- longueur ;
- repetition ;
- mutation ;
- relation au timbre ;
- relation au rythme ;
- condition de disparition.

Ce qu'on ne caracterise pas :

- melodie au sens chanson ;
- lead par defaut ;
- progression harmonique complete ;
- phrase longue si non declaree.

Requis techniques de precision :

```text
type de motif :
source : voix / grave / timbre / partiels / accent / formant
longueur :
registre :
degre de reconnaissance :
relation au rythme :
relation a la matiere :
variation :
mutation :
condition de retrait :
risque lead banal :
```

### FC-08 - Transgression

Elements concernes :

- masse enorme ;
- rugissement ;
- voix brute ;
- saturation organique ;
- nudite sonore ;
- espace immense ;
- dissonance ;
- microtonalite exposee.

Ce qu'on caracterise :

- preparation ;
- source de la transgression ;
- pic ;
- duree ;
- consequence ;
- sortie ;
- fatigue ;
- role dans la forme.

Ce qu'on ne caracterise pas :

- agressivite comme objectif ;
- accumulation de crises ;
- volume brut ;
- saturation par reflexe.

Requis techniques de precision :

```text
type de transgression :
source :
preparation :
moment de pic :
duree :
densite :
zone spectrale dangereuse :
confort restant :
consequence :
sortie :
risque agression :
```

### FC-09 - Comportement generatif

Elements concernes :

- sons generes ;
- motifs rythmiques ;
- motifs melodiques ;
- textures ;
- halos ;
- lignes ;
- retours ;
- scenes suspendues.

Ce qu'on caracterise :

- fixe ;
- variable ;
- mutation ;
- apparition ;
- transformation ;
- disparition ;
- memoire ;
- controle artistique ;
- risques d'automatisme.

Ce qu'on ne caracterise pas :

- algorithme exact ;
- interface ;
- mapping ;
- quantification ;
- outil Max for Live precis avant besoin stabilise.

Requis techniques de precision :

```text
objet genere :
fonction :
ce qui reste fixe :
ce qui varie :
plage de variation musicale :
mutation autorisee :
declencheur d'apparition :
declencheur de transformation :
declencheur de disparition :
memoire conservee :
decision humaine necessaire :
risque d'automatisme :
```

## 3. Caracterisation adaptee des elements retenus

### CE-01 - Techno

Familles utiles :

- FC-01 reservoir stylistique ;
- FC-02 organisation rythmique ;
- FC-09 comportement generatif.

Phenomenes a caracteriser, pas le style :

- cadre recuperable ;
- repetition hypnotique ;
- pression corporelle ;
- retour du corps ;
- tension longue ;
- economie active ;
- detail rythmique.

Ne pas caracteriser :

- histoire de la techno ;
- kicks, hats, claps, rumble comme obligation ;
- sous-genres ;
- palette sonore techno complete.

Requis techniques necessaires :

```text
presence techno : absent / latent / suspendu / reincarne / explicite / retour
type de cadre : pulse / cycle / motif / pression / memoire
degre de repetition :
degre de variation :
lisibilite corporelle :
condition de suspension :
condition de retour :
support naturalise :
risque timbre techno standard :
```

Niveau de detail :

Profond pour cadre, pression, suspension, retour.
Minimal pour toute convention de genre non retenue.

### CE-02 - Techno pseudo-acoustique / realisme augmente

Familles utiles :

- FC-04 morphologie / plausibilite acoustique ;
- FC-03 source pseudo-instrumentale ;
- FC-09 comportement generatif.

Phenomenes a caracteriser :

- son impossible mais physiquement imaginable ;
- geste corporel perceptible ;
- morphologie credible ;
- precision sans signature informatique ;
- source ambigue.

Ne pas caracteriser :

- tous les procedes de synthese ;
- tous les effets possibles ;
- sound design cinematographique ;
- imitation d'instrument realiste.

Requis techniques necessaires :

```text
source imaginee :
cause physique possible :
matiere :
geste :
attaque/corps/queue :
evolution spectrale :
degre de sur-realite :
niveau PA :
fonction : impact / micro-pulse / halo / tension / masse / signal
risque preset/electronique :
```

Niveau de detail :

Profond seulement pour les sons centraux ou exposes.
Fonctionnel pour les supports de texture.

### CE-03 - Polytexture / Keita Ogawa

Familles utiles :

- FC-02 organisation rythmique ;
- FC-03 sources percussives ;
- FC-09 comportement generatif.

Phenomenes a caracteriser :

- roles de couches ;
- interlocking ;
- densite lisible ;
- contrepoint rythmico-spectral ;
- harmonie de timbres ;
- attaques differenciees.

Ne pas caracteriser :

- style de Keita Ogawa ;
- traditions percussives ;
- virtuosite ;
- tout l'instrumentarium percussion.

Requis techniques necessaires :

```text
nombre de couches actives :
role de chaque couche :
couche directrice :
cycle principal :
cycles secondaires :
densite d'attaques :
registre de chaque couche :
occupation medium :
degre d'interlocking :
degre de lisibilite corporelle :
condition de retrait :
risque demonstration/folklore :
```

Niveau de detail :

Profond pour roles, densite, couches et conflits de medium.
Minimal pour references culturelles ou techniques de percussion non utilisees.

### CE-04 - Dubstep

Familles utiles :

- FC-01 reservoir stylistique ;
- FC-02 syncope / retrait / retour ;
- FC-05 grave et microtension ;
- FC-08 transgression.

Phenomenes a caracteriser :

- syncope ;
- attente ;
- trou ;
- retour de masse ;
- sub comme matiere ;
- voix criee comme signal ;
- gong / rugissement ;
- resolution.

Ne pas caracteriser :

- wobble bass ;
- brostep ;
- structure drop standard ;
- sound design de basse electronique ;
- histoire du dubstep.

Requis techniques necessaires :

```text
type de syncope : placement / masse / texture / voix / metal
duree du trou :
source de masse :
rarete du retour :
forme de resolution :
stabilite du grave :
relation au didgeridoo :
niveau de transgression :
risque drop automatique :
risque basse electronique :
```

Niveau de detail :

Profond seulement pour sub, trou, retour, didgeridoo et transgression.
Minimal pour codes de genre non retenus.

### CE-05 - Dub / sound system

Familles utiles :

- FC-06 espace / halo / sound system ;
- FC-05 grave ;
- FC-01 reservoir stylistique.

Phenomenes a caracteriser :

- profondeur ;
- confort dans l'intensite ;
- sub comme fonction corporelle ;
- pression par vide ;
- separation des plans ;
- flow.

Ne pas caracteriser :

- reggae ;
- skank ;
- delay dub comme signature ;
- basse dub typique ;
- esthetique dub complete.

Requis techniques necessaires :

```text
plan perceptif :
profondeur :
vide autour des evenements :
relation sub/halo :
confort spectral :
lisibilite corporelle :
queue :
retour d'espace :
risque dub/reggae :
risque ambient :
```

Niveau de detail :

Profond pour grave/espace/confort si scene sound-system.
Fonctionnel sinon.

### CE-06 - Jazz

Familles utiles :

- FC-01 reservoir stylistique ;
- FC-05 spectre / tension / voicing ;
- FC-02 ponctuation rythmique.

Phenomenes a caracteriser :

- champ de tension ;
- voicing distribue ;
- harmonie comme matiere ;
- micro-instabilite ;
- ponctuation ;
- resolution retardee ou deviee.

Ne pas caracteriser :

- swing ;
- walking bass ;
- accords jazz plaques ;
- grille ;
- solo ;
- histoire ou theorie jazz complete.

Requis techniques necessaires :

```text
centre spectral/harmonique :
type de tension :
distribution des partiels :
degre de resolution :
temps avant resolution :
ponctuation :
relation rythme/harmonie :
source acoustique des tensions :
risque accord jazz reconnaissable :
risque intellectualisation :
```

Niveau de detail :

Fonctionnel pour tension et voicing.
Profond seulement si une scene repose sur un champ harmonique.

### CE-07 - Trance

Familles utiles :

- FC-01 reservoir stylistique ;
- FC-06 espace / halo / expansion ;
- FC-02 build / retrait / retour ;
- FC-08 peak.

Phenomenes a caracteriser :

- suspension ;
- ouverture ;
- expansion ;
- build-up ;
- breakdown ;
- peak sans brutalite ;
- halo harmonique ;
- respiration de matiere.

Ne pas caracteriser :

- supersaw ;
- riser EDM ;
- pluck trance ;
- euphorie prefabriquee ;
- vocal trance comme chanson ;
- structure trance complete.

Requis techniques necessaires :

```text
type de suspension :
axe d'expansion : densite / espace / spectre / harmonie / rythme
duree de build :
fondation fantome :
ouverture spectrale :
ouverture spatiale :
type de peak :
condition de retour :
risque cliche trance :
risque halo decoratif :
```

Niveau de detail :

Profond pour build/suspension/peak si scene longue.
Minimal pour timbres trance rejetes.

### CE-08 - Acid

Familles utiles :

- FC-01 reservoir stylistique ;
- FC-07 motif / ligne ;
- FC-05 formants / resonance ;
- FC-04 plausibilite acoustique.

Phenomenes a caracteriser :

- ligne vivante ;
- resonance controlee ;
- torsion ;
- slide ;
- accent ;
- mutation timbrale ;
- ouverture/fermeture ;
- acidite dosee.

Ne pas caracteriser :

- TB-303 comme instrument a reproduire ;
- pattern acid classique ;
- acid house / acid techno comme style ;
- squelch reconnaissable ;
- ligne autonome par defaut.

Requis techniques necessaires :

```text
source de la ligne : formant / partiel / grave / friction / voix / tube
longueur de ligne :
registre :
degre de resonance :
degre de torsion :
slide / glissement :
accent :
mutation timbrale :
degre de reconnaissance acid :
condition de retrait :
risque 303 :
```

Niveau de detail :

Profond pour seuil 303 et role de la ligne.
Fonctionnel pour variations de timbre.

### CE-09 - Nature / acoustique / instruments

Familles utiles :

- FC-03 source ;
- FC-04 plausibilite acoustique ;
- FC-09 comportement generatif.

Phenomenes a caracteriser :

- source physique utile ;
- geste ;
- matiere ;
- cause possible ;
- organicite ;
- complexite intelligible ;
- support d'une fonction techno ou sensorielle.

Ne pas caracteriser :

- nature comme theme ;
- field recording decoratif ;
- paysage sonore ;
- symbolique naturelle ;
- catalogue de sources sans fonction.

Requis techniques necessaires :

```text
source :
fonction :
geste :
matiere :
attaque :
queue :
registre :
partiels :
capacite a porter rythme :
capacite a porter tension :
risque decoratif :
risque exotisme :
```

Niveau de detail :

Minimal tant que la source n'est pas choisie.
Profond seulement pour une source candidate centrale ou conflictuelle.

### CE-10 - Voix

Familles utiles :

- FC-03 source instrumentale ;
- FC-07 motif / fragment ;
- FC-05 formants ;
- FC-08 transgression.

Phenomenes a caracteriser :

- souffle ;
- consonne ;
- syllabe ;
- voyelle ;
- cri ;
- presence ;
- signal ;
- hook minimal ;
- choeur spectral ;
- texture.

Ne pas caracteriser :

- chanson ;
- lead vocal par defaut ;
- paroles narratives ;
- auto-tune ;
- vocal trance comme style.

Requis techniques necessaires :

```text
type vocal :
intelligibilite :
degre de sens verbal :
formant :
souffle :
rugosite :
pitch clair ou non :
longueur :
role : rythme / matiere / signal / texture / sens / transgression
relation au didgeridoo :
risque chanson/gimmick :
```

Niveau de detail :

Profond si voix frontale, nue, criee ou generative.
Fonctionnel si voix en texture ou halo.

### CE-11 - Microtonalite / partiels / pitch large

Familles utiles :

- FC-05 spectre / hauteur large ;
- FC-06 halo ;
- FC-07 ligne si motif ;
- FC-09 generation.

Phenomenes a caracteriser :

- battement ;
- tension fine ;
- centre spectral ;
- partiels ;
- formants ;
- resolution ;
- relation grave/halo ;
- couleur non temperee ;
- realisme acoustique.

Ne pas caracteriser :

- systeme d'accordage complet ;
- theorie microtonale ;
- gamme exotique ;
- dissonance abstraite ;
- pitch exact s'il n'a pas de fonction.

Requis techniques necessaires :

```text
type de hauteur :
source du centre :
source des partiels :
degre microtonal :
vitesse de battement :
tension :
resolution :
relation au grave :
relation au halo :
relation au live :
audibilite en densite :
risque theorie :
```

Niveau de detail :

Profond pour conflits sub/halo/didgeridoo et moments structurels.
Fonctionnel pour couleur subtile.

### CE-12 - Didgeridoo

Familles utiles :

- FC-03 source live ;
- FC-05 formants / partiels / grave ;
- FC-02 rythme instrumental ;
- FC-09 interaction generative.

Phenomenes a caracteriser :

- bourdon ;
- souffle ;
- charge grave ;
- partiels ;
- formants ;
- attaques de langue/gorge ;
- vocalisation ;
- rugosite ;
- presence physique ;
- liberte de jeu.

Ne pas caracteriser :

- didgeridoo comme basse automatique ;
- didgeridoo comme drone obligatoire ;
- symbolique ethno ;
- controleur impose ;
- techniques de jeu non utilisees.

Requis techniques necessaires :

```text
mode DID : libre / protege / basse adaptee / grave partage / guide harmonique / source traitee / fonctionnalise / perturbateur / hybride
registre reel :
charge grave :
stabilite du bourdon :
formants :
partiels :
souffle :
attaques :
vocalisation :
continuite :
saillance :
relation au sub :
relation au halo :
relation aux motifs generes :
```

Niveau de detail :

Profond, car setup minimum.
Mais les mesures exactes attendent l'instrument, la prise de son et les tests.

### CE-13 - Gong / bols / cloches / metaux

Familles utiles :

- FC-03 source ;
- FC-05 partiels / inharmonicite ;
- FC-06 halo / queue ;
- FC-08 transgression.

Phenomenes a caracteriser :

- impact ;
- queue ;
- partiels inharmoniques ;
- battements ;
- rugissement ;
- halo ;
- signal ;
- resolution.

Ne pas caracteriser :

- gong new age ;
- rituel decoratif ;
- toutes les techniques de gong ;
- cymbale ambient permanente ;
- metal agressif gratuit.

Requis techniques necessaires :

```text
type de metal :
mode de jeu imagine :
attaque :
longueur de queue :
partiels dominants :
inharmonicite :
rugosite :
registre :
droit au halo long :
fonction : impact / halo / rugissement / signal / resolution / peak
risque masquage :
risque decoratif :
```

Niveau de detail :

Profond pour queues, partiels et conflits de grave/halo.
Fonctionnel pour signaux ponctuels.

### CE-14 - Tambours / peaux / percussions corporelles

Familles utiles :

- FC-03 source ;
- FC-02 organisation rythmique ;
- FC-09 generation de motifs.

Phenomenes a caracteriser :

- impact physique ;
- attaque de peau ;
- micro-contact ;
- roll naturalise ;
- pulse ;
- densification ;
- interlocking ;
- remplacement fonctionnel kick/hat/snare sans copie.

Ne pas caracteriser :

- tradition percussive ;
- tribal ;
- drum circle ;
- loops world ;
- snare roll EDM reproduit ;
- virtuosite.

Requis techniques necessaires :

```text
type de peau :
profondeur :
attaque :
queue :
densite :
role techno : impact / micro-pulse / roll / articulation / transition
degre d'interlocking :
variation de timbre :
registre :
relation au didgeridoo :
risque tribal/world :
```

Niveau de detail :

Fonctionnel pour roles techno naturalises.
Profond si les peaux deviennent source centrale de pression.

## 4. Elements transversaux a ne pas traiter comme styles

### ET-01 - Pression rythmique

Nature :

Organisation temporelle et corporelle, pas style.

Caracterisation adaptee :

```text
type de pression :
ancrage :
cycle :
accent directeur :
densite d'attaques :
degre de retrait :
degre de retour :
relation au grave :
relation au silence :
lisibilite corporelle :
```

### ET-02 - Techno suspendue

Nature :

Etat formel, pas genre.

Caracterisation adaptee :

```text
fil de memoire :
pression restante :
duree de suspension :
role du silence :
role de l'espace :
role du live :
condition de retour :
type de retour :
risque ambient :
```

### ET-03 - Espace / halo

Nature :

Scene auditive et morphologie de queues, pas effet.

Caracterisation adaptee :

```text
fonction du halo :
source du halo :
duree :
zone spectrale :
plan :
relation a l'attaque :
relation au grave :
moment de baisse :
condition ou le halo devient principal :
risque flou/ambient :
```

### ET-04 - Melodie possible

Nature :

Regime de motif, de centre, de timbre ou de partiels, pas obligation de lead.

Caracterisation adaptee :

```text
regime melodique :
source de la melodie :
degre de reconnaissance :
longueur :
relation au timbre :
relation au rythme :
relation au grave :
condition de disparition :
risque lead banal :
```

### ET-05 - Transgression

Nature :

Regime contextuel d'intensite, pas esthetique permanente.

Caracterisation adaptee :

```text
source de transgression :
preparation :
pic :
duree :
consequence :
sortie :
fatigue :
confort restant :
risque agression :
```

## 5. Recherches complementaires : apports retenus uniquement

### 5.1. EDM / techno

Apport utile :

Les analyses de rythme et metre dans l'EDM confirment qu'il est pertinent de caracteriser la techno par cadre, repetition, interaction d'accents, niveaux de pulse et experience corporelle, plutot que par les seuls timbres de drum machine.

Effet sur Vesperare :

On garde la techno comme fonction de cadre et pression recuperable.

On n'ajoute pas :

- sous-genres ;
- conventions de production ;
- histoire complete.

### 5.2. Spectromorphologie / source-bonding

Apport utile :

La notion de morphologie sonore et de lien imaginaire a une source renforce la grille PA : source imaginee, cause, geste, attaque, corps, queue, espace.

Effet sur Vesperare :

On caracterise les sons pseudo-acoustiques par leur morphologie et leur plausibilite, pas par le procede technique.

On n'ajoute pas :

- vocabulaire electroacoustique complet ;
- analyse acousmatique exhaustive.

### 5.3. Didgeridoo

Apport utile :

Les recherches acoustiques sur le didgeridoo confirment l'importance du tractus vocal, des formants, des partiels, de l'impedance, du bourdon et des vocalisations.

Effet sur Vesperare :

La caracterisation du didgeridoo doit etre instrumentale et spectrale : charge grave, formants, souffle, attaques, partiels, modes DID.

On n'ajoute pas :

- techniques de jeu non necessaires ;
- symbolique culturelle ;
- role fixe.

### 5.4. Interlocking et cycles rythmiques

Apport utile :

Les approches analytiques de rythmes cycliques et interlockes rappellent qu'une polytexture doit etre caracterisee par roles, cycles, accents et fonction corporelle, pas par accumulation de sons.

Effet sur Vesperare :

Polytexture = roles et lisibilite.

On n'ajoute pas :

- reproduction de traditions rythmiques ;
- folklore ;
- complexite comme objectif.

### 5.5. Acid / TB-303

Apport utile :

Les elements distinctifs utiles de l'acid sont slide, accent, resonance, ouverture/fermeture, mutation timbrale.

Effet sur Vesperare :

On retient ces gestes comme phenomenes naturalisables.

On n'ajoute pas :

- TB-303 comme instrument a reproduire ;
- pattern acid standard ;
- squelch reconnaissable.

### 5.6. Gong / metaux

Apport utile :

L'acoustique des gongs confirme que les partiels inharmoniques, queues longues, battements et regimes de rugissement demandent une caracterisation specifique.

Effet sur Vesperare :

Gong/metaux doivent etre caracterises par attaque, queue, partiels, inharmonicite, rugosite, droit au halo et fonction.

On n'ajoute pas :

- usage rituel ;
- new age ;
- toutes les techniques de jeu.

## 6. Corrections par rapport a v0.1

### 6.1. Ce qui est conserve

- l'inventaire des elements ;
- les conflits principaux ;
- les garde-fous ;
- la separation besoin musical / consequence technique probable ;
- l'idee de ne pas figer Max for Live trop tot.

### 6.2. Ce qui est corrige

- les variables communes ne sont plus une grille a appliquer partout ;
- chaque element recoit une famille de caracterisation adaptee ;
- les styles sont restreints aux phenomenes retenus ;
- les instruments sont traites comme sources et situations live ;
- les elements transversaux sont traites comme fonctions, pas comme styles ;
- le detail est dose selon necessite.

### 6.3. Ce qui reste fragile

- seuil entre acid naturalise et acid reconnaissable ;
- seuil entre trance naturalisee et cliche trance ;
- jazz comme tension sans accord jazz ;
- niveau d'intelligibilite vocale ;
- niveaux reels de masquage didgeridoo/sub/gong ;
- tolerance exacte aux queues longues ;
- densite maximale de polytexture en club ;
- seuil de halo avant perte de pression rythmique.

## 7. Decision v0.2

On peut maintenant dire :

```text
La caracterisation musicale technique doit etre adaptee par famille d'elements.
Elle ne doit pas devenir une encyclopedie des styles.
Elle doit preciser seulement les phenomenes retenus, leurs requis de precision, leurs conflits et leurs garde-fous.
```

La prochaine etape correcte serait :

```text
Pour chaque element CE, transformer les requis techniques necessaires en questions de precision et tests futurs.
```

Mais il faut attendre avant architecture Max for Live :

- mesures instrumentales reelles ;
- ecoutes de reference choisies ;
- arbitrages sur seuils stylistiques fragiles ;
- premiere definition des scenes ou ces elements doivent apparaitre.
