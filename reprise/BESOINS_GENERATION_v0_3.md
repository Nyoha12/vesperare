# BESOINS DE GENERATION v0.3

Projet : Vesperare
Statut : fiche consolidee apres revue critique v0.2
Date : 2026-06-20

Sources :
- BESOINS_GENERATION_v0_2.md
- BESOINS_STYLISTIQUES_v0_3.md
- REVUE_CRITIQUE_FICHES_v0_2.md
- MATRICE_DETAILLEE_INSPIRATIONS_BESOINS_v0_1.md

Cette fiche decrit les besoins musicaux de generation. Elle ne definit pas encore une architecture technique, une interface, des mappings, des pistes ou des devices.

Les codes et regimes cites sont des descripteurs de conception, pas des modules techniques.

Regle generale :

Un objet genere doit etre situe : fonction, contexte, inspiration, pression, plausibilite acoustique, conditions d'apparition, conditions de transformation, conditions de disparition, risques et garde-fous.

## 1. Besoins generatifs centraux

### BG-01 - Objets generes situes

Statut : central.

Besoin musical :

Permettre la generation d'objets musicaux definis par leur fonction et leur contexte, pas seulement par un pattern ou un timbre.

Descripteurs :

```text
nom :
scene ou contexte :
inspiration(s) :
fonction principale :
fonctions secondaires :
regime techno :
type de pression :
plausibilite acoustique :
regime rythmique :
regime melodique / spectral :
support sonore :
source imaginee :
relation a l'instrument present :
relation au didgeridoo :
variation :
apparition :
transformation :
disparition :
risques :
garde-fous :
```

Garde-fou :

La fonction doit etre nommee avant les parametres.

### BG-02 - Generation sous plausibilite acoustique

Statut : central.

Besoin musical :

Permettre des sons ou traitements dont l'origine reste acoustiquement plausible ou ambigue, sans identification electronique evidente.

Descripteurs :

```text
source imaginee :
cause possible :
matiere :
geste :
attaque :
corps :
queue :
espace :
partiels :
formants :
rugosite :
instabilite :
risque de preset :
```

Garde-fou :

Un son peut etre impossible, mais il doit laisser imaginer une cause physique.

### BG-03 - Cadres techno sans timbres techno

Statut : central.

Besoin musical :

Permettre des cadres techno perceptibles sans imposer kick, hat, clap, rumble ou lead electroniques standards.

Objets vises :

- impact-fondation naturalise ;
- micro-pulse naturalise ;
- cadre revenant ;
- motif repetitif vivant ;
- variation faible mais identifiante ;
- tension longue ;
- retour de cadre ;
- masse grave plausible ;
- techno latente ou suspendue.

Descripteurs :

```text
fonction techno :
support naturalise :
presence techno :
degre de pulse :
degre de repetition :
type de variation :
type de pression :
zone spectrale :
lisibilite corporelle :
condition de retour :
risque de cliche :
```

### BG-04 - Pression rythmique

Statut : central.

Besoin musical :

Permettre la generation de pressions rythmiques explicites, implicites ou suspendues qui orientent le corps.

Regimes :

- pulse explicite ;
- pulse implicite ;
- interlocking ;
- syncope de masse ;
- accent fantome ;
- respiration de matiere ;
- densite d'attaques ;
- dissonance metrique ;
- rythme spatial ;
- retrait rythmique ;
- retour de cadre.

Descripteurs :

```text
ancrage :
densite d'attaques :
repartition des accents :
syncope :
interlocking :
stabilite du cycle :
lisibilite corporelle :
relation au grave :
relation a l'espace :
condition de retour :
condition de sortie :
```

Garde-fou :

La complexite doit produire une orientation, pas une demonstration.

### BG-05 - Techno suspendue generable

Statut : central.

Besoin musical :

Permettre des scenes longues sans pulse techno explicite, avec pression, memoire ou direction.

Elements generables :

- respiration cyclique ;
- centre grave latent ;
- halo a periodicite faible ;
- motif fragmentaire ;
- micro-variation hypnotique ;
- tension de partiels ;
- espace actif ;
- attente de densification.

Retours possibles :

- retour du grave ;
- apparition progressive d'une pulsation ;
- contraction de l'espace ;
- densification d'attaques ;
- alignement de couches ;
- transformation d'un souffle en pulse ;
- resolution microtonale ;
- impact rare.

Garde-fous :

- eviter ambient decoratif ;
- eviter retour arbitraire ;
- garder une condition de sortie.

### BG-06 - Coexistence avec didgeridoo

Statut : central pour setup minimum.

Besoin musical :

Permettre a la generation de coexister avec un didgeridoo libre, sans le reduire a une basse, un input ou un controleur.

Relations possibles :

- libre ;
- protege ;
- grave partage ;
- guide harmonique ;
- source traitee ;
- source fonctionnalisee ;
- perturbateur ;
- hybride.

Descripteurs :

```text
energie :
charge grave :
stabilite du bourdon :
richesse harmonique :
formants :
souffle :
rugosite :
densite d'attaques :
vocalisation :
continuite :
saillance :
relation au grave genere :
relation au halo :
```

Garde-fous :

- ne pas masquer ;
- ne pas forcer en basse ;
- ne pas ignorer ;
- ne pas transformer en gadget ;
- preserver l'autonomie expressive.

## 2. Familles d'objets generatifs

### BG-07 - Polytexture rythmico-spectrale

Statut : famille generative.

Besoin musical :

Permettre des polytextures lisibles par roles, pas des accumulations de sons.

Roles :

- ancrage ;
- contrepoint ;
- micro-pulse ;
- appel ;
- reponse ;
- ornement ;
- queue ;
- halo ;
- transition ;
- accent fantome.

Descripteurs :

```text
nombre de couches :
role de chaque couche :
registre :
attaque :
queue :
densite :
cycle :
decalage :
accent principal :
accent secondaire :
interlocking :
lisibilite corporelle :
occupation medium :
relation a la techno :
```

Garde-fou :

Une couche au moins doit clarifier la direction perceptive.

### BG-08 - Melodie multi-regime

Statut : famille generative.

Besoin musical :

Permettre plusieurs regimes melodiques sans imposer une melodie permanente ni bannir le motif reconnaissable.

Regimes :

- melodie absente ;
- centre ressenti ;
- accent-melody ;
- basse-motif ;
- melodie de timbre ;
- melodie de partiels ;
- ligne acid naturalisee ;
- fragment vocal ;
- hook minimal ;
- melodie microtonale.

Conditions :

- source ou origine plausible ;
- fonction de pression ou de forme ;
- relation a un regime rythmique ;
- mutation timbrale possible ;
- compatibilite avec le grave ;
- apparition, transformation et disparition possibles.

Garde-fou :

Un motif melodique doit etre lie a matiere, voix, grave, partiels, accent ou scene.

### BG-09 - Ligne vivante / acid naturalise

Statut : famille generative.

Besoin musical :

Permettre des lignes vivantes par timbre, resonance et torsion, sans reproduction TB-303.

Objets vises :

- ligne courte de matiere ;
- glissement de resonance ;
- glissement de formant ;
- accent de resonance ;
- ouverture/fermeture ;
- mutation timbrale ;
- saut de registre ;
- rebond spectral.

Garde-fous :

- timbre avant notes ;
- pas de squelch reconnaissable ;
- pas de pattern acid cliche ;
- pas de ligne autonome hors scene.

### BG-10 - Grave, sub et masse

Statut : famille generative.

Besoin musical :

Permettre des fonctions corporelles de grave sans imposer un timbre sub electronique.

Fonctions :

- masse corporelle ;
- centre de gravite ;
- fondation ;
- tension microtonale ;
- rugissement ;
- relation grave/halo ;
- retour de masse.

Supports possibles :

- didgeridoo ;
- gong grave ;
- resonance ;
- souffle grave ;
- basse naturalisee ;
- sub discret non identifiable ;
- voix transformee ;
- friction grave.

Garde-fou :

Une seule source doit porter le vrai sub a un moment donne.

### BG-11 - Voix generee / traitee

Statut : famille generative.

Besoin musical :

Permettre voix, souffle, fragment, cri, signal, presence ou texture sans imposer chanson ou lead vocal.

Objets :

- souffle ;
- consonne ;
- syllabe ;
- voyelle tenue ;
- voix filtree ;
- cri ;
- murmure ;
- appel ;
- fragment non narratif ;
- choeur spectral ;
- voix etiree ;
- voix transformee en halo.

Garde-fous :

- pas de chanson par defaut ;
- pas d'auto-tune reconnaissable ;
- pas de gimmick vocal ;
- determiner si la voix porte rythme, matiere, signal, texture ou sens.

### BG-12 - Microtonalite / partiels / centres spectraux

Statut : famille generative.

Besoin musical :

Permettre hauteurs ressenties, centres spectraux, partiels, battements, formants et tensions microtonales.

Regimes :

- couleur subtile ;
- moment structurel ;
- tension / resolution ;
- relation grave / halo ;
- champ de partiels ;
- ligne non temperee ;
- voix ou didgeridoo comme guide.

Garde-fous :

- pas de demonstration de tuning ;
- pas d'abstraction froide ;
- garder une fonction de tension, resolution, naturalisation ou expressivite.

## 3. Garde-fous generatifs transversaux

### BG-13 - Espace et halo generatifs

Statut : garde-fou transversal.

Besoin musical :

Traiter espace et halo comme fonctions actives.

Descripteurs :

```text
droit au halo :
quantite :
type :
zone spectrale :
duree :
relation a l'attaque :
relation au grave :
moment de baisse :
moment ou le halo devient principal :
profondeur :
distance :
proximite :
largeur :
```

Regles :

- densite haute -> halo reduit ou deplace ;
- sustain instrumental fort -> halo generatif reduit ;
- grave charge -> halo hors bas ou tres controle ;
- attaque principale -> halo coupe, deplace ou reduit ;
- suspension -> halo possible seulement avec pression, memoire ou direction.

### BG-14 - Transgression contextuelle

Statut : garde-fou transversal.

Besoin musical :

Permettre intensites fortes et transgressions comme regimes contextuels, pas comme etat permanent.

Types :

- masse enorme ;
- rugissement ;
- voix brute ;
- saturation ;
- nudite sonore ;
- espace immense ;
- dissonance ;
- microtonalite.

Garde-fou :

Une transgression doit avoir preparation, fonction, duree et consequence.

### BG-15 - Superposition d'inspirations

Statut : garde-fou transversal.

Besoin musical :

Permettre de combiner plusieurs inspirations par fonctions, sans collage stylistique.

Une scene doit choisir :

- une fonction principale ;
- deux ou trois fonctions secondaires maximum ;
- un regime de pression dominant ;
- un niveau de plausibilite acoustique ;
- un niveau de densite ;
- une relation a l'instrument present.

Garde-fou :

Les inspirations sont reservoirs de phenomenes, pas masques stylistiques.

### BG-16 - Scene auditive generative

Statut : garde-fou transversal.

Besoin musical :

Organiser objets, textures et plans perceptifs.

Descripteurs :

```text
statut perceptif : objet / texture / entre-deux
plan : avant / milieu / fond / espace / grave
separation :
fusion :
saillance :
morphologie temporelle :
fonction :
risque de masquage :
condition de retrait :
```

Garde-fous :

- pas tout en objets ;
- pas tout en texture ;
- hierarchie perceptive claire ;
- fond et halo ne doivent pas manger l'avant-plan.

### BG-17 - Monopoles perceptifs

Statut : garde-fou transversal.

Besoin musical :

Respecter certains monopoles perceptifs pour eviter la confusion.

Monopoles :

- sub : une source principale de vrai grave ;
- articulation : une couche directrice ;
- brillant continu : pas de tapis aigu permanent ;
- halo long : queues longues limitees ;
- transgression : une crise principale a la fois.

Ces monopoles sont des garde-fous perceptifs, pas des interdictions absolues.

### BG-18 - Anti-glissement generatif

Statut : garde-fou transversal.

Glissements a eviter :

- intention -> parametre technique ;
- instrument -> input audio ;
- aide generative -> decision expressive ;
- techno organique -> collection d'effets ;
- complexite -> accumulation ;
- naturalisation -> decor ;
- didgeridoo libre -> didgeridoo ignore ;
- transgression -> agression ;
- microtonalite -> theorie ;
- melodie -> lead banal ;
- espace -> ambient.

Regle :

Si un objet genere ne peut pas etre relie a une inspiration situee, une fonction, un phenomene sonore, un risque et un garde-fou, il reste en hypothese.

## 4. Reporte a plus tard

Ces points sont importants mais ne doivent pas etre resolus dans cette fiche :

- architecture technique ;
- choix des outils exacts ;
- mappings ;
- controle manuel / autonome ;
- interface ;
- analyse temps reel ;
- verification pratique ;
- seuils exacts ;
- organisation de scenes jouables.

## 5. Verification situee future

La verification situee sera une fiche separee plus tard.

Format a conserver :

```text
Relation a verifier :
Situation :
Signe de reussite :
Signe d'echec :
Signe de caricature :
Ce que cette verification peut corriger :
Ce qu'elle ne permet pas de conclure :
```

