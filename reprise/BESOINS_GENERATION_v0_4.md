# BESOINS DE GENERATION v0.4

Projet : Vesperare
Statut : fiche synchronisee avec reverb/espace v0.2
Date : 2026-06-21

Sources :
- BESOINS_GENERATION_v0_2.md
- BESOINS_STYLISTIQUES_v0_4.md
- REVUE_CRITIQUE_FICHES_v0_2.md
- MATRICE_DETAILLEE_INSPIRATIONS_BESOINS_v0_1.md
- REVERBS_ESPACE_REACTIF_v0_2.md
- AUDIT_SYNCHRONISATION_REVERBS_AUTRES_DOCS_v0_1.md

Cette fiche decrit les besoins musicaux de generation. Elle ne definit pas encore une architecture technique, une interface, des mappings, des pistes ou des devices.

Les codes et regimes cites sont des descripteurs de conception, pas des modules techniques.

Cette v0.4 ne remplace pas la fiche reverb/espace.

Elle synchronise la generation avec les decisions suivantes :

- les espaces longs peuvent etre acceptes s'ils sont decides ;
- le halo peut etre Auto, Lock, Force, Cut, Momentary ou Safe force ;
- le grave spatial peut etre Auto-Pro, Off, Trace, Corps, Pression, Bloom ou Libre ;
- les reductions automatiques ne doivent pas supprimer une fonction forte ;
- les choix live explicites gagnent contre les adaptations ordinaires ;
- les protections critiques et protections de mix vitales restent prioritaires.

Regle generale :

Un objet genere doit etre situe : fonction, contexte, inspiration, pression, plausibilite acoustique, monde spatial si pertinent, mode halo si pertinent, mode grave si pertinent, conditions d'apparition, conditions de transformation, conditions de disparition, risques, priorites et garde-fous.

Regle de synchronisation :

```text
La generation ne doit pas seulement produire un son.
Elle doit produire une fonction musicale situee dans une scene auditive.
```

Regle de non-automatisme :

```text
Limiter, reduire ou couper ne sont pas des decisions par defaut.
Ce sont des reponses possibles selon fonction, scene, choix live ou protection.
```

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
monde spatial principal :
modificateurs spatiaux :
mode halo :
mode grave spatial :
regime rythmique :
regime melodique / spectral :
support sonore :
source imaginee :
relation a l'instrument present :
relation au didgeridoo :
fonction forte :
priorite impliquee :
intervention Auto-Pro autorisee :
signalisation necessaire :
variation :
apparition :
transformation :
disparition :
risques :
garde-fous :
```

Garde-fou :

La fonction doit etre nommee avant les parametres.

Si l'objet implique espace, halo, grave ou transformation forte, la fonction doit aussi nommer :

- ce qui doit rester perceptible ;
- ce qui peut etre adapte automatiquement ;
- ce qui ne doit pas etre retire sans choix live ou protection vitale.

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

Modes de naturalisation generative :

- source live : prolonger didgeridoo, voix, gong, percussion ou souffle ;
- souffle / friction : donner une cause corporelle ou aerienne ;
- resonance / cavite : donner une cause spatiale ou materielle ;
- espace commun : faire appartenir l'artefact au meme monde que les sources ;
- rythme / pression : rendre l'artefact corporel, utile ou pulse ;
- fonction de scene : accepter une cause plus abstraite si la scene la justifie.

Garde-fou ajoute :

La naturalisation n'est pas un decor. Elle doit clarifier appartenance, fonction, matiere, geste ou pression.

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

- eviter espace non decide ;
- eviter decor impose par l'outil ;
- eviter retour arbitraire ;
- garder une condition de sortie.

Precision :

Une techno suspendue peut durer tres longtemps si la suspension est voulue.

La sortie peut etre :

- un retour corporel prepare ;
- un retour de grave ;
- une contraction de l'espace ;
- une densification rythmique ;
- un changement de monde spatial ;
- une coupure volontaire ;
- un maintien prolonge assume.

### BG-06 - Coexistence avec didgeridoo

Statut : central pour setup minimum.

Besoin musical :

Permettre a la generation de coexister avec un didgeridoo libre, sans le reduire a une basse, un input ou un controleur.

Relations possibles :

- libre ;
- protege ;
- systeme adapte au didgeridoo ;
- didgeridoo adapte au systeme ;
- grave partage ;
- basse adaptee ;
- guide harmonique ;
- harmoniques du didgeridoo adaptees ;
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
mode de coexistence :
conflit didgeridoo/sub :
adaptation possible des harmoniques :
retrait possible du grave genere :
guidage harmonique possible :
protections par defaut :
```

Garde-fous :

- ne pas masquer ;
- ne pas forcer en basse ;
- ne pas ignorer ;
- ne pas transformer en gadget ;
- preserver l'autonomie expressive.

Modes simples a conserver :

```text
DID-M1 - Systeme adapte au didgeridoo
La generation suit ou respecte le bourdon, les partiels, l'energie ou les attaques.

DID-M2 - Didgeridoo adapte au systeme
Le son du didgeridoo peut etre traite pour mieux s'inscrire dans la scene.

DID-M3 - Libre protege
Le didgeridoo reste libre ; seules les protections evidentes de mix et securite interviennent.
```

Ces modes ne sont pas exclusifs. Ils doivent pouvoir etre prepares par scene ou actives en option.

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

Le grave doit etre jouable par plusieurs logiques, pas fixe une fois pour toutes.

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

Modes de porteur grave :

```text
GRV-M1 - Didgeridoo guide harmonique
Le didgeridoo guide harmoniquement ce qui est genere.
La generation peut suivre le bourdon, les partiels, les formants ou l'energie.
Le grave genere et le didgeridoo evoluent librement ensemble.

GRV-M2 - Soutien discret
Le grave soutient sans devenir objet principal.
Il renforce poids, centre ou pression sans imposer un timbre electronique reconnaissable.

GRV-M3 - Adaptation des harmoniques du didgeridoo
Si conflit deletere, certaines harmoniques traitees du didgeridoo peuvent etre adaptees en hauteur.
Cette option concerne la compatibilite musicale, pas une reduction automatique de niveau.

GRV-M4 - Retrait du grave genere
Le grave genere se retire quand le conflit nuit a la musicalite, a la lisibilite du sub ou au role du didgeridoo.

GRV-M5 - Graves libres
Les graves peuvent coexister plus librement si la scene ou le choix live l'assume.
Ce mode accepte davantage de risque, mais pas la securite critique.

GRV-M6 - Gong / bloom grave
Le gong, les metaux ou leurs modelisations peuvent porter une masse, un souffle ou un bloom grave.
Le vrai sub doit rester precis ; la richesse peut venir des harmoniques, battements et bas-mediums.

GRV-M7 - Sub ponctuel non identifiable
Un sub discret ou ponctuel peut exister comme fonction de corps, retour, seuil ou resolution,
sans devenir timbre sub electronique standard.
```

Descripteurs :

```text
fonction grave :
source porteuse :
source secondaire :
mode GRV :
vrai sub : absent / trace / soutien / porteur / libre
registre utile :
relation didgeridoo :
relation gong :
relation voix :
relation halo :
relation espace :
microtonalite :
partiels dominants :
stabilite :
pression :
lisibilite corporelle :
risque de conflit :
condition d'adaptation :
condition de retrait :
choix live explicite :
```

Garde-fou :

Par defaut, une seule fonction porte le vrai sub lisible a un moment donne.

Mais ce garde-fou n'est pas une interdiction absolue.

Les modes de partage, guidage, retrait, adaptation ou liberte doivent rester accessibles si la fonction musicale est claire.

Protection :

- sub illisible : protection de mix vitale ;
- resonance salle dangereuse : securite critique ;
- conflit musical didgeridoo/sub : choix selon mode GRV ;
- grave libre assume : choix live explicite, sauf danger critique.

Gong grave :

Le gong grave peut servir a :

- produire une base de partiels inharmoniques ;
- creer une tension microtonale ;
- generer un souffle grave riche ;
- declencher un bloom ;
- donner une masse sans vrai sub permanent ;
- produire un peak, une resolution ou un seuil ;
- enrichir la perception du grave par battements, queues et bas-mediums.

Il ne doit pas etre reduit a un effet new age, un gong decoratif ou une nappe indistincte.

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

Traiter espace et halo comme fonctions actives, pas comme effets automatiques.

La generation peut produire ou piloter des espaces, halos, freezes, queues longues et etats spatiaux, mais seulement si leur fonction est nommee.

Un halo ou un espace long peut etre stable, tres long, decoratif, proche, immense, hors-monde ou corporel si c'est decide.

Descripteurs :

```text
droit au halo :
quantite :
type :
zone spectrale :
duree :
monde spatial principal :
modificateurs spatiaux :
fonction forte :
mode halo : Auto / Lock / Force / Cut / Momentary / Safe force
mode grave spatial : Auto-Pro / Off / Trace / Corps / Pression / Bloom / Libre
relation a l'attaque :
relation au grave :
moment de baisse :
moment ou le halo devient principal :
profondeur :
distance :
proximite :
largeur :
source d'appartenance :
degre de source-bonding :
etat long decide :
decor decide :
retrait du corps decide :
intervention Auto-Pro autorisee :
signalisation necessaire :
```

Modes halo :

```text
HAL-G1 - Auto
Le halo peut etre adapte par coherence, masquage, densite, attaque, grave ou salle.

HAL-G2 - Lock
Le halo reste present parce qu'il porte une fonction.
Auto-Pro peut le filtrer, deplacer, ducker ou reduire partiellement,
mais ne doit pas supprimer sa fonction sauf P0 ou P1.

HAL-G3 - Force
Le halo est impose comme choix live fort.
Il accepte plus de risque, sauf securite critique.

HAL-G4 - Cut
Le halo est retire volontairement.
Ce retrait peut etre un effet musical, une clarification ou un retour du corps.

HAL-G5 - Momentary
Le halo apparait ponctuellement : attaque transformee en champ, freeze court, queue expressive, seuil.

HAL-G6 - Safe force
Le halo est force autant que possible, mais accepte les protections critiques et de mix vitales.
```

Regles de decision :

- densite haute -> adaptation possible, pas reduction obligatoire ;
- sustain instrumental fort -> adaptation possible, sauf halo lock ou fonction forte ;
- grave charge -> grave spatial selon mode Off / Trace / Corps / Pression / Bloom / Libre ;
- attaque principale -> protection de lisibilite, mais pas coupe automatique d'un halo voulu ;
- suspension -> halo possible si pression, memoire, direction, retrait decide ou monde stable ;
- espace tres long -> possible si decide, pas par defaut automatique ;
- decor spatial -> risque s'il est subi, possible s'il est choisi.

Mondes spatiaux utiles a la generation :

```text
MS-G1 - Sec protege
Quasi pas d'espace audible ; priorite a attaque, sub, lisibilite.

MS-G2 - Proche enrichi
Presence proche, early reflections, micro-espace, corps.

MS-G3 - Commun
Espace discret qui colle les sources dans un meme monde.

MS-G4 - Souffle-air
Espace aerien, respiration, proximite ou distance par souffle.

MS-G5 - Cavite
Espace resonant, tube, grotte, bouche, caisse, metal ou corps.

MS-G6 - Immersif
Espace enveloppant sans obligation de queue longue.

MS-G7 - Immense
Grande echelle, seuil, distance, vertige, mais avec protection du sub.

MS-G8 - Metal-gong
Espace relie a metaux, partiels, queues, battements et rugissements.

MS-G9 - Rythme-pression
Espace module par attaques, densite, pulsation, retrait ou retour.

MS-G10 - Hors-monde
Espace impossible, tres long, instable ou vide ; seulement comme decision.
```

Garde-fous :

- ne pas transformer tout en nappe ;
- ne pas masquer une attaque principale sans fonction forte ;
- ne pas brouiller le vrai sub ;
- ne pas retirer un halo voulu pour simple gout automatique ;
- ne pas imposer une grande reverb non decidee ;
- ne pas confondre espace long et absence de forme ;
- signaler les interventions qui modifient une decision live.

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

Une generation doit construire une scene auditive, pas seulement empiler des objets.

Descripteurs :

```text
statut perceptif : objet / texture / entre-deux
plan : avant / milieu / fond / espace / grave
separation :
fusion :
saillance :
morphologie temporelle :
fonction :
fonction forte :
monde spatial principal :
modificateurs spatiaux :
mode halo :
mode grave spatial :
source d'appartenance :
degre de source-bonding :
relation au didgeridoo :
relation au gong :
relation a la voix :
risque de masquage :
condition de retrait :
condition de maintien :
condition de transformation :
priorite P0-P5 impliquee :
intervention Auto-Pro autorisee :
intervention Auto-Pro interdite :
signalisation necessaire :
```

Garde-fous :

- pas tout en objets ;
- pas tout en texture ;
- hierarchie perceptive claire ;
- fond et halo ne doivent pas manger l'avant-plan sauf choix de scene explicite ;
- les plans peuvent fusionner si la fusion est la fonction ;
- un retrait long du corps est possible s'il est decide ;
- l'espace peut porter une partie de la scene, mais ne doit pas effacer les sources par defaut.

### BG-17 - Monopoles perceptifs

Statut : garde-fou transversal.

Besoin musical :

Respecter certains monopoles perceptifs pour eviter la confusion.

Monopoles :

- sub : une source principale de vrai grave ;
- articulation : une couche directrice ;
- brillant continu : pas de tapis aigu permanent ;
- halo long : fonction decidee, mode explicite ;
- transgression : une crise principale a la fois.

Ces monopoles sont des garde-fous perceptifs, pas des interdictions absolues.

Regle :

```text
Un monopole peut etre transgresse si la scene nomme pourquoi,
comment le risque est accepte,
et quelle fonction perceptive doit rester lisible.
```

Modes d'exception :

- choix live explicite ;
- scene preparee ;
- fonction forte ;
- transgression volontaire ;
- retrait decide ;
- hors-monde decide ;
- graves libres ;
- halo force ou lock.

Limites non negociables :

- securite critique ;
- feedback dangereux ;
- clipping ou headroom dangereux ;
- resonance salle dangereuse ;
- masquage total d'une source essentielle sans choix explicite.

### BG-18 - Anti-glissement generatif

Statut : garde-fou transversal.

Glissements a eviter :

- intention -> parametre technique ;
- instrument -> input audio ;
- aide generative -> decision expressive ;
- techno organique -> collection d'effets ;
- complexite -> accumulation ;
- naturalisation -> decor non decide ;
- didgeridoo libre -> didgeridoo ignore ;
- transgression -> agression ;
- microtonalite -> theorie ;
- melodie -> lead banal ;
- espace -> ambient subi ;
- halo lock -> impossibilite de proteger ;
- Auto-Pro -> composition automatique ;
- grave libre -> boue grave ;
- source plausible -> illustration naturaliste ;
- monde spatial -> preset de reverb.

Regle :

Si un objet genere ne peut pas etre relie a une inspiration situee, une fonction, un phenomene sonore, un risque et un garde-fou, il reste en hypothese.

Regle ajoutee :

Si un objet genere implique halo, espace, grave, freeze ou transformation forte, il doit aussi pouvoir dire :

```text
qui decide :
ce qui reste libre :
ce qui est protege :
ce qui peut etre adapte :
ce qui peut etre coupe :
ce qui doit etre signale :
```

## 4. Reporte a plus tard

Ces points sont importants mais ne doivent pas etre resolus dans cette fiche :

- architecture technique ;
- choix des outils exacts ;
- mappings ;
- controle manuel / autonome ;
- interface ;
- analyse temps reel ;
- seuils exacts ;
- organisation de scenes jouables.

## 5. Questions de conception futures

Les questions situees seront une fiche separee plus tard.

Format a conserver :

```text
Relation a clarifier :
Situation :
Fonction recherchee :
Signe musical souhaite :
Signe de caricature :
Decision utilisateur necessaire :
Ce que cette clarification peut corriger :
Ce qu'elle ne permet pas de conclure :
```
