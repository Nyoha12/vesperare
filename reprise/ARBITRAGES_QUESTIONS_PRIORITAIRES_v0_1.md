# ARBITRAGES - QUESTIONS PRIORITAIRES v0.1

Projet : Vesperare
Statut : reponses utilisateur aux questions prioritaires
Date : 2026-06-21

Sources :
- QUESTIONS_DE_PRECISION_PRIORITAIRES_v0_1.md
- reponse utilisateur du 2026-06-20 sur Bloc A : didgeridoo / sub / gong / grave
- reponses utilisateur du 2026-06-20 sur Blocs B et C
- recherche web ciblee du 2026-06-20 sur source-bonding, ecoute ecologique et auditory scene analysis
- reponses utilisateur du 2026-06-21 sur Bloc D : PA-X, source/fonction, virtualo-acoustique, artefacts, sub, effets, matieres stables
- recherche web ciblee du 2026-06-21 sur reverberation, early/late reflections, freeze, shimmer et espace reactif

But :

Conserver les arbitrages utilisateur avant mise a jour des fiches consolidees.

Ce document ne remplace pas :

- BESOINS_STYLISTIQUES_v0_3.md ;
- BESOINS_GENERATION_v0_3.md ;
- CARACTERISATION_DETAILLEE_ELEMENTS_v0_3.md ;
- QUESTIONS_DE_PRECISION_PRIORITAIRES_v0_1.md.

Il sert a accumuler les reponses aux blocs de questions, puis a produire une version consolidee plus tard.

## 1. Bloc A - Didgeridoo / sub / gong / grave

Questions source :

- QP-01 - Qui porte le vrai grave ?
- QP-02 - Didgeridoo libre ou didgeridoo integre ?
- QP-11 - Gong : impact, halo, rugissement ou drop ?
- QP-12 - Microtonalite : couleur, tension ou structure ? partiellement liee.

### 1.1. QP-01 - Qui porte le vrai grave ?

Reponse utilisateur :

Il ne faut pas choisir une seule logique fixe.

Le besoin est un ensemble d'options reglables en live.

Modes fonctionnels retenus :

```text
G-1 - Didgeridoo guide harmonique
Le didgeridoo guide harmoniquement ce qui est genere.
Le grave genere et le didgeridoo evoluent librement ensemble.

G-2 - Soutien discret
Le grave genere soutient discretement le didgeridoo ou la scene.

G-3 - Adaptation harmonique du didgeridoo
Les harmoniques du didgeridoo qui entrent en conflit peuvent etre adaptees en live selon la basse et le reste.
Option supplementaire : adapter leur hauteur, pas leur niveau sonore.

G-4 - Retrait du grave genere
Le grave genere se retire quand il y a un conflit deletere pour la musicalite.

G-5 - Graves libres
Les graves peuvent rester libres, sans adaptation corrective forte.
```

Interpretation fonctionnelle :

- le vrai grave n'est pas attribue une fois pour toutes ;
- la priorite est la musicalite du conflit ou de la coexistence ;
- le systeme doit pouvoir proposer plusieurs regimes de relation grave/didgeridoo ;
- le retrait n'est qu'un mode parmi d'autres ;
- la coexistence libre reste possible.

Correction du defaut provisoire precedent :

Ancien defaut provisoire :

```text
Une seule source porte le vrai grave. Le didgeridoo est prioritaire dans le setup minimum ; le sub genere alterne ou se deplace.
```

Nouveau defaut provisoire :

```text
Le systeme doit pouvoir choisir ou exposer plusieurs regimes de relation entre didgeridoo, grave genere et autres sources graves.
Par defaut, les protections contre les conflits graves deleteres existent, mais elles ne doivent pas empecher les modes de coexistence, soutien, guidage harmonique ou liberte.
```

Consequences pour besoins futurs :

- il faut definir une famille de modes de grave ;
- le monopole du sub reste un garde-fou, mais pas une interdiction absolue de coexistence ;
- les conflits graves peuvent etre resolus par retrait, soutien, guidage, adaptation harmonique ou liberte ;
- les decisions de grave doivent etre accessibles en live ou liees aux scenes ;
- l'adaptation de hauteur des harmoniques du didgeridoo est une hypothese a verifier techniquement et musicalement.

Risques a surveiller :

- adaptation harmonique qui denature le didgeridoo ;
- retrait du grave qui affaiblit la pression ;
- soutien discret qui devient boue ;
- graves libres qui masquent le didgeridoo ;
- guidage harmonique trop rigide.

Questions restantes :

- l'adaptation de hauteur des harmoniques du didgeridoo doit-elle etre subtile, ponctuelle ou assumee comme traitement audible ?
- G-3 concerne-t-il seulement le son traite du didgeridoo, ou aussi les couches generees autour de lui ?
- G-5 "graves libres" accepte-t-il des conflits rugueux/microtonaux si musicalement forts ?

### 1.2. QP-02 - Didgeridoo libre ou integre ?

Reponse utilisateur :

La logique exacte emergira du reste du systeme.

Il y aura probablement :

- des comportements automatiques quasi par defaut pour protections sonores evidentes ;
- des protections liees a la qualite mix/mastering ;
- plusieurs modes optionnels activables ;
- des modes dependant des fonctions globales du systeme.

Trois modes simples a retenir :

```text
D-1 - Systeme adapte au didgeridoo
Le systeme entier s'adapte au didgeridoo.

D-2 - Didgeridoo adapte au systeme
Le didgeridoo est modifie pour s'adapter au systeme entier.

D-3 - Mode libre protege
Le didgeridoo reste libre, avec seulement les protections par defaut.
```

Interpretation fonctionnelle :

- le didgeridoo n'est pas toujours au centre, mais il doit toujours pouvoir rester libre ;
- les protections sonores de base peuvent etre automatiques ;
- les adaptations artistiques plus fortes doivent etre des modes activables ;
- les modes DID doivent rester dependants des scenes et des fonctions actives.

Correction du defaut provisoire precedent :

Ancien defaut provisoire :

```text
Le didgeridoo reste libre par defaut. Les accommodations sont des modes explicites, pas un comportement permanent.
```

Nouveau defaut provisoire :

```text
Le didgeridoo reste libre par defaut au niveau expressif.
Des protections sonores quasi automatiques peuvent exister.
Les adaptations fortes sont organisees en modes : systeme adapte au didgeridoo, didgeridoo adapte au systeme, mode libre protege.
```

Consequences pour besoins futurs :

- distinguer protection sonore et adaptation artistique ;
- definir une couche "protections par defaut" ;
- definir des modes DID simples avant modes complexes ;
- ne pas decider trop tot ce qui est automatique, manuel ou scene-dependant ;
- les besoins de detection audio doivent venir apres definition des protections.

Risques a surveiller :

- protections qui deviennent des decisions artistiques cachees ;
- mode "systeme adapte au didgeridoo" qui affaiblit tout le reste ;
- mode "didgeridoo adapte au systeme" qui denature l'instrument ;
- mode libre qui ignore les conflits de mix.

Questions restantes :

- quelles protections sont "evidentes" : niveau, clipping, grave, masquage, halo, brillance, feedback ?
- quelles protections doivent etre toujours actives ?
- le passage entre D-1, D-2 et D-3 doit-il etre manuel, scene-dependant ou semi-automatique ?

### 1.3. QP-11 - Gong grave

Reponse utilisateur :

Toutes les options proposees sont pertinentes.

Le gong grave est un element important.

Idees principales :

- il peut creer une base microtonale ou harmonique ;
- les perspectives et implications de cette base restent a preciser ;
- il peut generer une sensation de souffle avec une forte presence ;
- cette presence peut venir de subs tres precis et bien modelises ;
- les basses doivent etre riches, harmonieuses et complexes.

Roles confirmes :

```text
GG-1 - Impact rare
GG-2 - Halo spectral
GG-3 - Rugissement transgressif
GG-4 - Drop / retour de masse
GG-5 - Signal formel
GG-6 - Resolution microtonale
GG-7 - Beaute autonome
GG-8 - Champ de partiels
GG-9 - Base microtonale ou harmonique
GG-10 - Souffle grave present
```

Interpretation fonctionnelle :

- le gong n'est pas seulement un effet ponctuel ;
- il peut etre une source structurante de partiels, grave, souffle, microtonalite et harmonie ;
- le grave du gong doit pouvoir etre tres precis, pas seulement massif ;
- la complexite harmonique du gong peut servir de base ou de matrice pour d'autres elements ;
- le terme "souffle" designe ici une presence grave vivante, pas forcement un bruit de souffle literal.

Correction du defaut provisoire precedent :

Ancien defaut provisoire :

```text
Chaque usage de gong doit declarer son role ; queue longue seulement si fonctionnelle.
```

Nouveau defaut provisoire :

```text
Chaque usage de gong doit declarer son role.
Le gong grave peut etre central comme base microtonale/harmonique, souffle grave present, champ de partiels, impact ou rugissement.
Les queues et subs lies au gong doivent rester precis, modelises et musicalement fonctionnels.
```

Consequences pour besoins futurs :

- ajouter "base microtonale/harmonique" comme role possible du gong ;
- ajouter "souffle grave present" comme fonction sonore du gong/sub associe ;
- distinguer masse grave, sub precis, souffle grave, rugissement et champ de partiels ;
- prevoir des tests de partiels et de queues ;
- verifier comment un gong peut guider une harmonie ou une microtonalite sans devenir new age ou decoratif.

Risques a surveiller :

- confusion entre sub precis et sub synthetique reconnaissable ;
- gong qui devient decor spirituel/new age ;
- richesse harmonique qui devient brouillard grave ;
- base microtonale impossible a controler en club ;
- souffle grave qui efface le rythme.

Questions restantes :

- la "base microtonale ou harmonique" doit-elle etre audible comme accord/champ, ou ressentie comme couleur ?
- le souffle grave doit-il venir du gong lui-meme, d'une modelisation/generation associee, ou d'une fusion gong/sub ?
- les subs precis lies au gong peuvent-ils etre synthetiques s'ils restent non reconnaissables, ou doivent-ils garder une cause acoustique plausible ?

## 2. Synthese du Bloc A

### 2.1. Arbitrage principal

Le grave de Vesperare ne doit pas etre gere par une regle unique.

Il doit etre pense comme un systeme de regimes :

```text
guidage harmonique ;
soutien discret ;
adaptation harmonique ;
retrait en cas de conflit deletere ;
liberte des graves ;
protection sonore par defaut ;
gong comme base microtonale/harmonique ou souffle grave present.
```

### 2.2. Nouveau vocabulaire utile

```text
G-1 Didgeridoo guide harmonique
G-2 Soutien discret
G-3 Adaptation harmonique du didgeridoo
G-4 Retrait du grave genere
G-5 Graves libres

D-1 Systeme adapte au didgeridoo
D-2 Didgeridoo adapte au systeme
D-3 Mode libre protege

GG-9 Base microtonale ou harmonique
GG-10 Souffle grave present
```

### 2.3. Ce qui est tranche

- plusieurs options reglables en live sont souhaitees ;
- le retrait du grave n'est pas le mode principal unique ;
- des protections sonores quasi automatiques sont acceptables ;
- les adaptations plus fortes doivent etre optionnelles ou scene-dependantes ;
- le didgeridoo doit rester expressivement libre ;
- le gong grave est un element important, pas seulement un effet ;
- le gong peut participer a une base microtonale/harmonique ;
- le gong/sub associe peut produire une sensation de souffle grave present.

### 2.4. Ce qui reste ouvert

- liste exacte des protections par defaut ;
- faisabilite et qualite de l'adaptation de hauteur des harmoniques du didgeridoo ;
- niveau d'audibilite de la base microtonale/harmonique du gong ;
- type de sub precis compatible avec plausibilite acoustique ;
- relation exacte entre gong grave, sub genere et didgeridoo ;
- controle live des modes G, D et GG.

## 3. Consequences pour prochaines fiches

### 3.1. A reporter dans CARACTERISATION_DETAILLEE_ELEMENTS future

Ajouter ou consolider :

- modes G pour relations graves ;
- modes D simples pour relation didgeridoo/systeme ;
- role GG-9 base microtonale/harmonique ;
- role GG-10 souffle grave present ;
- distinction protection sonore vs adaptation artistique.

### 3.2. A reporter dans BESOINS_GENERATION future

Ajouter ou consolider :

- generation de grave selon regimes G ;
- generation/traitement de gong comme base microtonale/harmonique ;
- generation de souffle grave present ;
- protection automatique comme garde-fou, non comme decision expressive.

### 3.3. A tester plus tard

Tests necessaires :

- didgeridoo + sub discret ;
- didgeridoo comme guide harmonique ;
- retrait automatique du grave en conflit ;
- adaptation de hauteur des harmoniques du didgeridoo ;
- gong grave comme champ de partiels ;
- gong + sub precis ;
- souffle grave present sans son electronique reconnaissable ;
- compatibilite club du trio didgeridoo / gong / sub.

## 4. Bloc B - Techno suspendue / halo / retour

Questions source :

- QP-03 - Quelle memoire garde une techno suspendue tres longue ?
- QP-07 - Halo : soutien ou danger principal ?
- QP-13 - Trance : combien d'euphorie ou d'expansion ? partiellement liee.
- ET-02 Techno suspendue ;
- ET-03 Espace / halo.

### 4.1. QP-03 - Techno suspendue tres longue

Reponse utilisateur :

Il faut avoir les outils pour realiser toutes les options utiles proposees.

Toutes les options sont envisageables et peuvent etre cumulables.

Options a conserver comme fonctions disponibles :

```text
TS-1 - Pulse fantome
TS-2 - Centre grave latent
TS-3 - Motif fragmentaire
TS-4 - Respiration cyclique
TS-5 - Espace actif
TS-6 - Attente de retour
TS-7 - Tension microtonale
TS-8 - Presence didgeridoo
TS-9 - Impact rare
TS-10 - Aucun fil continu si le retour est prepare
```

Interpretation fonctionnelle :

- la techno suspendue ne doit pas etre reduite a un seul fil de memoire ;
- plusieurs fils peuvent coexister ;
- l'absence de fil continu peut etre acceptable si elle est decidee et si le retour est prepare ;
- la suspension longue est un espace de composition a outiller, pas un etat a contraindre trop vite ;
- la question n'est pas "quel fil unique ?", mais "quels fils sont disponibles et comment les activer/cumuler ?".

Correction du defaut provisoire precedent :

Ancien defaut provisoire :

```text
Une suspension longue doit garder au moins un fil : pression, memoire, direction ou indice de retour.
```

Nouveau defaut provisoire :

```text
Une suspension longue peut utiliser un ou plusieurs fils de memoire, ou meme aucun fil continu si cette absence est decidee et si le retour ou la forme sont prepares.
Le systeme doit donner acces a plusieurs options de memoire techno, cumulables.
```

Consequences pour besoins futurs :

- creer une famille de fonctions de memoire techno suspendue ;
- ne pas imposer un fil minimal unique ;
- permettre des combinaisons : grave latent + halo + tension microtonale + didgeridoo, etc. ;
- prevoir des scenes ou le corps est volontairement retire ;
- distinguer suspension decidee et derive involontaire.

Risques a surveiller :

- accumulation de fils qui rend la suspension confuse ;
- absence de fil qui devient perte non decidee ;
- retour prepare insuffisamment ;
- suspension qui devient decor par manque de fonction.

Questions restantes :

- faut-il un controle global "memoire techno" ou seulement des fonctions separees ?
- quels fils doivent etre accessibles en permanence ?
- TS-10 doit-il etre rare ou vraiment disponible comme etat long ?

### 4.2. QP-07 - Halo

Reponse utilisateur :

Le terme "halo" reste a clarifier.

Dans l'intuition actuelle, le halo peut etre present n'importe quand.

Il peut etre retire si necessaire pour des effets.

Il serait mieux d'avoir un controle bypass / on-off pour empecher les automations de l'enlever.

Interpretation fonctionnelle :

- le halo n'est pas seulement un danger ou une fonction de suspension ;
- il peut faire partie de la matiere normale de Vesperare ;
- son retrait peut etre un effet musical ;
- les automations de retrait doivent pouvoir etre bloquees ou contournees par decision live ;
- le musicien doit pouvoir maintenir le halo meme si une logique automatique voudrait le reduire.

Vocabulaire provisoire :

```text
H-1 - Halo libre
Le halo peut etre present n'importe quand si musicalement decide.

H-2 - Halo retire comme effet
Le halo peut etre coupe, reduit ou retire pour creer un effet, un contraste ou un retour.

H-3 - Verrouillage / override de halo
Controle permettant d'empecher les automations de retirer le halo.

H-4 - Halo sous automation
Le halo peut etre module ou retire automatiquement si aucune decision live ne le verrouille.
```

Correction du defaut provisoire precedent :

Ancien defaut provisoire :

```text
Halo principal seulement si pression, memoire ou direction restent actifs.
Halo reduit quand densite, sustain live ou grave augmentent.
```

Nouveau defaut provisoire :

```text
Le halo peut etre present a tout moment si c'est une decision musicale.
Des reductions automatiques peuvent exister comme protections ou effets, mais un controle live doit pouvoir empecher ces automations de retirer le halo.
```

Consequences pour besoins futurs :

- clarifier ce que "halo" designe : queue, reverb, champ spectral, espace, presence, resonance, prolongation, fond ;
- ajouter un principe de verrouillage/override live ;
- distinguer retrait de halo comme protection, effet ou decision expressive ;
- eviter que les protections automatiques deviennent autoritaires ;
- prevoir un mode ou le halo reste volontairement present malgre densite ou grave.

Risques a surveiller :

- halo permanent non decide ;
- halo qui masque sans intention ;
- automation qui retire un halo voulu ;
- verrouillage de halo qui empeche les protections de mix ;
- confusion entre halo, reverb, espace, queue et texture.

Questions restantes :

- que dois-je appeler exactement "halo" dans Vesperare ?
- le controle attendu est-il plutot "halo on/off", "automation bypass", "halo lock", ou plusieurs niveaux ?
- quelles protections doivent pouvoir passer malgre le verrouillage si risque technique fort ?

### 4.3. Retour apres suspension

Reponse utilisateur :

Il faut avoir tous les modes de retour sous la main.

Chaque element doit etre disponible comme option.

Les elements peuvent etre cumules.

Modes de retour a conserver :

```text
R-1 - Retour du grave
R-2 - Apparition progressive d'une pulsation
R-3 - Contraction de l'espace
R-4 - Densification d'attaques
R-5 - Alignement de couches polytexturales
R-6 - Transformation d'un souffle en pulse
R-7 - Resolution microtonale
R-8 - Impact rare
R-9 - Retour du didgeridoo comme corps
R-10 - Faux retour puis retrait
```

Interpretation fonctionnelle :

- le retour n'a pas de forme privilegiee unique ;
- il doit etre une boite d'options activables et cumulables ;
- retour progressif, rupture, resolution, contraction, impact et faux retour doivent tous rester possibles ;
- le retour doit etre pense comme famille de gestes formels, pas comme "drop" unique ;
- la scene decide quelle combinaison est pertinente.

Correction du defaut provisoire precedent :

Ancien defaut provisoire :

```text
Le retour doit reorienter le corps, pas seulement ajouter un kick ou une masse.
```

Nouveau defaut provisoire :

```text
Le retour doit pouvoir etre construit par plusieurs gestes disponibles et cumulables.
Il peut reorienter le corps, mais aussi resoudre, contracter, densifier, tromper, interrompre ou reinstaller selon la scene.
```

Consequences pour besoins futurs :

- creer une famille de fonctions de retour ;
- prevoir des retours cumulatifs ;
- permettre faux retour et retrait ;
- ne pas reduire retour a grave ou impact ;
- lier retour a techno suspendue, halo, espace, polytexture, didgeridoo et microtonalite.

Risques a surveiller :

- trop d'options activees en meme temps ;
- retour arbitraire ;
- retour trop spectaculaire ;
- retour trop faible apres longue suspension ;
- faux retour sans consequence.

Questions restantes :

- quels retours doivent etre immediatement accessibles en live ?
- certains retours doivent-ils etre reserves a des scenes preparees ?
- faut-il un mode "retour cumulatif" ou seulement des fonctions independantes ?

### 4.4. Risque ambient / decoratif / perte du corps

Reponse utilisateur :

Tous les dangers proposes sont pertinents dans le cadre des fonctions qu'on essaie de mettre en place.

Mais l'espace decoratif inquiete moins s'il est decide.

La perte du corps trop longue n'inquiete pas non plus si elle est decidee.

La question centrale est donc la decision musicale.

Interpretation fonctionnelle :

- ambient, decoratif, perte du corps ou beaute autonome ne sont pas interdits en soi ;
- ils deviennent dangereux s'ils apparaissent comme derives non decidees ;
- un etat peut sortir provisoirement du corps club si c'est volontaire ;
- l'espace decoratif peut etre accepte comme choix ;
- la perte du corps peut durer longtemps si elle est assume, preparee et fonctionnelle.

Garde-fou corrige :

```text
Danger = derive non decidee ou non fonctionnelle.
Pas danger = etat decide, assume, situe dans la forme.
```

Risques confirmes mais conditionnels :

```text
AM-1 - Grande reverb sans pression
Danger si non decidee ; possible si fonctionnelle.

AM-2 - Beaute sans direction
Danger si decor ; possible comme beaute autonome decidee.

AM-3 - Halo qui mange les attaques
Danger si involontaire ; possible comme effet ou suspension.

AM-4 - Espace decoratif
Moins inquietant si decide.

AM-5 - Absence de tension
Danger si non voulue ; possible comme retrait radical decide.

AM-6 - Retour arbitraire
Danger fort.

AM-7 - Perte du corps trop longue
Pas inquietante si decidee.

AM-8 - Didgeridoo noye
Danger si non decide ou si perte d'autonomie expressive.

AM-9 - Plus aucune memoire du cadre
Acceptable seulement si la forme ou le retour le justifient.
```

Consequences pour besoins futurs :

- remplacer certains interdits par "si non decide" ;
- ajouter une distinction entre danger objectif et choix artistique ;
- garder la possibilite de perte longue du corps ;
- ne pas pathologiser l'espace decoratif si c'est une decision ;
- privilegier un systeme qui signale les risques sans interdire.

Questions restantes :

- comment marquer qu'un etat est "decide" : scene, macro, verrouillage, mode, geste live ?
- les protections doivent-elles alerter, corriger ou seulement proposer ?
- quels dangers restent vraiment interdits meme si decides ?

## 5. Synthese du Bloc B

### 5.1. Arbitrage principal

Bloc B confirme une logique d'outillage large :

```text
techno suspendue = options de memoire cumulables ;
halo = matiere possible a tout moment + retrait comme effet + override live ;
retour = famille de gestes cumulables ;
risque ambient/decoratif/corps perdu = danger seulement si non decide ou non fonctionnel.
```

### 5.2. Nouveau vocabulaire utile

```text
TS-1 Pulse fantome
TS-2 Centre grave latent
TS-3 Motif fragmentaire
TS-4 Respiration cyclique
TS-5 Espace actif
TS-6 Attente de retour
TS-7 Tension microtonale
TS-8 Presence didgeridoo
TS-9 Impact rare
TS-10 Aucun fil continu si retour prepare

H-1 Halo libre
H-2 Halo retire comme effet
H-3 Verrouillage / override de halo
H-4 Halo sous automation

R-1 Retour du grave
R-2 Apparition progressive d'une pulsation
R-3 Contraction de l'espace
R-4 Densification d'attaques
R-5 Alignement de couches polytexturales
R-6 Transformation d'un souffle en pulse
R-7 Resolution microtonale
R-8 Impact rare
R-9 Retour du didgeridoo comme corps
R-10 Faux retour puis retrait
```

### 5.3. Ce qui est tranche

- toutes les options de memoire techno suspendue doivent rester disponibles ;
- elles peuvent etre cumulables ;
- le halo n'est pas limite a la suspension ;
- un controle live doit pouvoir empecher les automations de retirer le halo ;
- tous les types de retour proposes doivent rester disponibles ;
- les retours peuvent etre cumules ;
- ambient/decoratif/perte du corps ne sont pas des fautes si c'est decide ;
- la derive non decidee est le vrai risque.

### 5.4. Ce qui reste ouvert

- definition exacte de "halo" ;
- forme du controle de verrouillage/override de halo ;
- priorite entre automation de protection et decision live ;
- organisation pratique des fonctions TS et R ;
- seuil ou un etat devient non fonctionnel ;
- dangers qui resteraient interdits meme si decide.

## 6. Consequences pour prochaines fiches

### 6.1. A reporter dans CARACTERISATION_DETAILLEE_ELEMENTS future

Ajouter ou consolider :

- famille TS de memoire techno suspendue ;
- famille H de gestion du halo ;
- famille R de retours ;
- distinction "danger non decide" vs "choix artistique decide" ;
- halo comme element possible a tout moment, pas seulement suspension.

### 6.2. A reporter dans BESOINS_GENERATION future

Ajouter ou consolider :

- generation de scenes suspendues par combinaisons TS ;
- generation/controle de retours par combinaisons R ;
- controle de halo avec override live ;
- risques ambient comme signalements ou garde-fous, pas interdictions simples.

### 6.3. A tester plus tard

Tests necessaires :

- suspension avec plusieurs fils TS cumules ;
- suspension sans fil continu mais avec retour prepare ;
- halo maintenu malgre densite ;
- halo retire comme effet ;
- automation de retrait de halo vs override live ;
- retours cumulatifs ;
- faux retour puis retrait ;
- longue perte du corps decidee.

## 7. Bloc C - Acid / voix / melodie reconnaissable

Questions source :

- QP-05 - Jusqu'ou peut aller l'acid naturalise ?
- QP-06 - Quelle voix est vraiment Vesperare ?
- QP-14 - Melodie : quels motifs peuvent devenir memorables ?
- ET-04 Melodie possible.

### 7.1. QP-05 - Acid naturalise

Reponse utilisateur :

Toutes les options proposees sont bonnes.

Correction importante :

- ne pas imposer que la ligne soit "toujours integree a une scene" ;
- il faut plutot anticiper et suggerer les contextes favorables ;
- ces contextes peuvent etre des scenes, passages ou morceaux specifiques.

Point de vocabulaire :

Le terme "squelch" n'est pas clair pour l'utilisateur.

Definition de travail :

```text
squelch = morsure/resonance acide typique 303, souvent associee a une resonance de filtre qui "parle" ou grince.
Dans Vesperare, ce terme sert seulement a nommer un risque de reconnaissance acid/303.
```

Options confirmees :

```text
A-1 - Ligne issue d'un formant, tube, voix, didgeridoo, metal ou friction
A-2 - Timbre avant notes
A-3 - Boucle courte acceptee
A-4 - Accent / slide acceptes si non 303
A-5 - Acidite ponctuelle acceptee
A-6 - Ligne frontale possible
A-7 - Suggestions de contextes favorables
A-8 - Surveillance du risque squelch / 303
```

Interpretation fonctionnelle :

- acid naturalise peut etre frontal ;
- acid naturalise peut etre reconnaissable comme motif ;
- la ligne n'a pas besoin d'etre constamment subordonnee a une scene, mais les contextes favorables doivent etre anticipes ;
- le systeme peut suggerer ou preparer des usages selon scene, passage ou morceau ;
- le risque n'est pas "acid" en soi, mais la citation trop reconnaissable 303 ou le timbre acid standard.

Correction du defaut provisoire precedent :

Ancien defaut provisoire :

```text
Timbre, formant et matiere avant pattern ; pas de squelch 303 reconnaissable ; ligne jamais autonome par defaut.
```

Nouveau defaut provisoire :

```text
Timbre, formant et matiere restent prioritaires.
Une ligne acid naturalisee peut devenir frontale ou memorable si elle garde une source sonore plausible et si son contexte d'usage est musicalement favorable.
Le risque principal est la reconnaissance 303/squelch standard, a clarifier par exemples.
```

Consequences pour besoins futurs :

- remplacer "ligne toujours integree a une scene" par "contextes favorables suggeres" ;
- ajouter un besoin de suggestion de contexte pour lignes acid ;
- garder la possibilite de ligne frontale ;
- clarifier le risque squelch par exemples sonores ;
- eviter que le vocabulaire technique devienne opaque.

Risques a surveiller :

- timbre 303 reconnaissable ;
- ligne acid standard ;
- resonance trop synthe ;
- contexte favorable mal defini ;
- ligne qui existe sans fonction ou sans qualite de matiere.

Questions restantes :

- quel exemple serait "trop 303" ?
- est-ce qu'une ligne acid naturalisee peut devenir un theme recurrent d'un morceau ?
- faut-il une macro ou fonction "suggere contexte favorable" plus tard ?

### 7.2. QP-06 - Voix

Reponse utilisateur :

Toutes les options proposees sont acceptables sauf "voix nue".

Il faut toujours une integration :

- virtualo-acoustique ;
- ou sonore ;
- ou une autre forme d'integration qui reste a nommer.

Options confirmees :

```text
V-1 - Souffle / respiration
V-2 - Consonne rythmique
V-3 - Syllabe-signal
V-4 - Voyelle tenue
V-5 - Cri
V-6 - Murmure
V-7 - Fragment presque chantable
V-8 - Hook minimal
V-9 - Choeur spectral
V-10 - Parole intelligible
V-11 - Parole non intelligible
V-12 - Voix traitee comme halo
V-13 - Voix integree virtualo-acoustique / sonore
```

Option corrigee :

```text
Ancien terme : voix nue
Nouveau statut : voix non nue, toujours integree par un traitement, un espace, une matiere, une virtualisation acoustique ou une fonction sonore.
```

Interpretation fonctionnelle :

- la voix peut etre frontale, mais pas brute au sens totalement nue et non integree ;
- il faut une mediation sonore, spatiale, virtuelle, acoustique et/ou materielle ;
- la voix doit appartenir au monde sonore Vesperare ;
- meme une voix humaine claire doit etre situee dans une scene acoustique ou pseudo-acoustique ;
- la voix ne doit pas devenir simple captation directe non transformee si cela casse l'identite.

Correction du defaut provisoire precedent :

Ancien defaut provisoire :

```text
Voix comme presence, signal, matiere ou transgression ; pas chanson par defaut ; intelligibilite doseable.
```

Nouveau defaut provisoire :

```text
Voix comme presence, signal, matiere, texture, sens ou transgression.
Pas chanson par defaut.
Intelligibilite doseable.
Pas de voix nue non integree : toute voix doit recevoir une integration sonore, virtualo-acoustique, spatiale ou materielle.
```

Consequences pour besoins futurs :

- remplacer "voix nue" par "voix integree" ;
- definir plus tard ce que signifie integration virtualo-acoustique ;
- prevoir des traitements ou espaces qui gardent l'humanite sans laisser la voix hors monde ;
- voix frontale possible si integree ;
- voix intelligible possible si integree.

Risques a surveiller :

- voix brute non integree ;
- effet vocal cliche ;
- auto-tune reconnaissable ;
- chanson involontaire ;
- voix qui sort du monde acoustique/pseudo-acoustique de Vesperare.

Questions restantes :

- "virtualo-acoustique" doit-il designer un espace, un traitement, une source impossible plausible, ou tout cela ?
- une voix presque seche mais spatialement placee est-elle assez integree ?
- quel degre d'intelligibilite est souhaitable ?

### 7.3. QP-14 - Motifs et melodie reconnaissable

Reponse utilisateur :

Toutes les options proposees sont acceptables.

Options confirmees :

```text
MOT-1 - Basse-motif
MOT-2 - Ligne acid naturalisee
MOT-3 - Hook vocal minimal
MOT-4 - Fragment vocal
MOT-5 - Accent-melody
MOT-6 - Melodie de timbre
MOT-7 - Melodie de partiels
MOT-8 - Centre spectral recurrent
MOT-9 - Motif tres court
MOT-10 - Motif long si naturalise
```

Interpretation fonctionnelle :

- Vesperare peut avoir de vrais motifs memorables ;
- les motifs ne sont pas limites a des fragments abstraits ;
- le motif doit rester naturalise par matiere, voix, grave, partiels, accent, formant, timbre ou centre spectral ;
- le risque n'est pas la memorabilite, mais le basculement vers lead banal ou timbre hors monde.

Correction du defaut provisoire precedent :

Ancien defaut provisoire :

```text
Motif reconnaissable accepte s'il vient de matiere, voix, grave, partiels, accent ou formant.
```

Nouveau defaut provisoire :

```text
Motif reconnaissable et motif memorable sont acceptes, y compris motifs longs si naturalises.
Le motif doit rester lie a une source, une matiere, un geste, une tension ou une fonction Vesperare.
```

Consequences pour besoins futurs :

- ne pas limiter la melodie a presque rien ;
- prevoir generation de motifs courts et longs ;
- prevoir memorabilite comme parametre possible ;
- garder naturalisation comme garde-fou ;
- inclure hooks minimaux si integres.

Risques a surveiller :

- lead synth banal ;
- motif hors monde ;
- hook trop generique ;
- motif qui domine sans raison ;
- motif detache de matiere, source ou fonction.

Questions restantes :

- quels motifs memorables seraient trop "lead" ?
- un motif long peut-il structurer une scene entiere ?
- quels types de motifs peuvent revenir entre plusieurs morceaux ou passages ?

### 7.4. Risques chanson / lead / gimmick

Reponse utilisateur :

Risque principal percu :

- pitch correction / auto-tune reconnaissable : a eviter clairement.

Risques moins inquietants :

- chanson ;
- gimmick vocal ;
- acid 303 ;
- le reste n'inquiete pas beaucoup.

Risque a clarifier :

- "motif qui prend trop d'autonomie" ne parle pas clairement a l'utilisateur et semble peu desirable si cela signifie une perte de lien avec le systeme.

Lead banal :

- melodie qui devient lead synth banal : pas souhaitable ;
- mais avec les garde-fous deja poses, ce risque semble peu probable.

Interpretation fonctionnelle :

- le risque le plus concret est la reconnaissance d'outils vocaux type auto-tune/pitch correction ;
- le risque "lead banal" reste un garde-fou, mais n'est pas central ;
- le risque "motif autonome" doit etre reformule en termes plus utiles ;
- chanson/gimmick ne sont pas des interdits forts a ce stade s'ils restent integres et fonctionnels.

Reformulation de "motif trop autonome" :

```text
Motif trop autonome = motif qui continue a exister comme objet stylistique separe, sans relation active a la matiere, au rythme, a l'espace, au live ou a la scene.
```

Correction du defaut provisoire :

```text
Interdit fort : auto-tune / pitch correction reconnaissable.
Garde-fou : eviter lead synth banal.
Risque a reformuler : autonomie du motif seulement si elle signifie detachement du monde Vesperare.
Chanson, gimmick, acidite ou memorabilite ne sont pas des problemes en soi si l'integration sonore est forte.
```

Consequences pour besoins futurs :

- auto-tune reconnaissable devient garde-fou fort ;
- pitch correction visible doit etre exclue comme signature ;
- conserver le terme "lead banal" comme risque secondaire ;
- remplacer "motif trop autonome" par "motif detache de sa source/fonction" ;
- ne pas exclure chanson/gimmick par principe, mais les soumettre a integration sonore.

Risques a surveiller :

- auto-tune identifiable ;
- pitch correction audible comme effet ;
- lead synth banal ;
- motif separe de la matiere ;
- voix non integree.

Questions restantes :

- une correction de hauteur invisible et non reconnaissable est-elle acceptable comme outil technique ?
- une parole intelligible peut-elle devenir centrale si elle est fortement integree ?
- un hook vocal minimal peut-il etre tres memorisable ?

## 8. Synthese du Bloc C

### 8.1. Arbitrage principal

Bloc C confirme une ouverture forte aux motifs, lignes et voix, sous condition d'integration sonore.

```text
acid naturalise = options confirmees + contexte favorable suggere, pas obligation de scene permanente ;
voix = tous regimes possibles sauf voix nue non integree ;
melodie = motifs memorables acceptes, y compris motifs longs si naturalises ;
risque fort = auto-tune / pitch correction reconnaissable ;
risque a reformuler = motif detache de sa source/fonction, pas "motif autonome" en soi.
```

### 8.2. Nouveau vocabulaire utile

```text
A-7 Suggestions de contextes favorables
A-8 Surveillance du risque squelch / 303

V-13 Voix integree virtualo-acoustique / sonore

MOT-10 Motif long si naturalise

RISK-V1 Auto-tune / pitch correction reconnaissable
RISK-M1 Motif detache de sa source/fonction
```

### 8.3. Ce qui est tranche

- toutes les options acid proposees restent bonnes ;
- une ligne acid peut etre frontale ;
- le contexte favorable doit etre suggere/anticipe, pas impose comme scene permanente ;
- le terme squelch doit etre clarifie par exemples ;
- voix nue non integree refusee ;
- voix integree virtualo-acoustique/sonore requise ;
- tous les regimes vocaux sauf voix nue non integree restent possibles ;
- tous les motifs proposes sont acceptes ;
- motifs memorables et motifs longs sont possibles si naturalises ;
- auto-tune / pitch correction reconnaissable est clairement non souhaite.

### 8.4. Ce qui reste ouvert

- definition precise de l'integration virtualo-acoustique ;
- seuil entre ligne acid naturalisee et 303 ;
- exemples de squelch trop reconnaissable ;
- acceptabilite d'une correction de hauteur invisible ;
- degre d'intelligibilite vocale ;
- niveau de centralite possible d'un hook vocal ;
- niveau d'autonomie acceptable d'un motif si son integration reste forte.

## 9. Consequences pour prochaines fiches

### 9.1. A reporter dans CARACTERISATION_DETAILLEE_ELEMENTS future

Ajouter ou consolider :

- acid naturalise avec suggestions de contextes favorables ;
- clarification du risque squelch / 303 ;
- voix integree virtualo-acoustique / sonore ;
- auto-tune reconnaissable comme interdit fort ;
- motif memorable et motif long comme possibilites ;
- motif detache de source/fonction comme reformulation du risque d'autonomie.

### 9.2. A reporter dans BESOINS_GENERATION future

Ajouter ou consolider :

- generation de lignes acid frontales ou integrees ;
- suggestion de contextes favorables pour lignes acid ;
- generation/traitement de voix integree ;
- generation de motifs memorables naturalises ;
- exclusion de pitch correction reconnaissable ;
- garde-fou contre motifs detaches de leur source ou fonction.

### 9.3. A tester plus tard

Tests necessaires :

- ligne acid naturalisee frontale ;
- ligne acid trop 303 ;
- voix integree quasi seche vs voix trop nue ;
- souffle/fragment/hook vocal minimal ;
- motif long naturalise ;
- hook memorisable mais non pop ;
- correction de hauteur invisible vs auto-tune reconnaissable.

## 10. Bloc D - Plausibilite acoustique / PA-X

Questions source :

- QP-04 - Ou commence le son electronique reconnaissable ?
- QP-16 - Quelles sources acoustiques sont trop illustratives ?

Elements lies :

- CE-02 Techno pseudo-acoustique / realisme augmente ;
- CE-09 Nature / acoustique / instruments ;
- BG-02 Generation sous plausibilite acoustique ;
- BS-05 Plausibilite acoustique et ambiguite ;
- V-13 Voix integree virtualo-acoustique / sonore ;
- RISK-V1 Auto-tune / pitch correction reconnaissable ;
- A-8 Surveillance du risque squelch / 303.

Statut :

Cadre de decision prepare.
Pas encore arbitre par l'utilisateur dans le detail.

### 10.1. Ce que la recherche externe confirme

Smalley confirme l'interet de raisonner en source-bonding, morphologie sonore, spectre et evolution temporelle.
Gaver confirme qu'on entend souvent des evenements, des causes et des attributs de source, pas seulement des frequences.
Bregman confirme que l'oreille groupe ou separe des sons en scenes, flux et sources perceptives.

Consequence pour Vesperare :

```text
La plausibilite acoustique n'est pas une interdiction technique.
Elle decrit la maniere dont un son laisse percevoir une cause, une matiere, un geste, un espace ou une scene credible.
```

Donc :

- un son genere par ordinateur peut etre acceptable ;
- un son acoustique peut etre refuse s'il devient decoratif, illustratif ou hors fonction ;
- un traitement lourd peut etre accepte s'il cree une source impossible mais credible ;
- un traitement simple peut etre refuse s'il signe un preset, un effet connu ou une esthetique electronique trop identifiable.

### 10.2. Definition operationnelle proposee

Pour Vesperare, un son est plausible s'il donne au moins plusieurs de ces indices :

```text
cause possible :
matiere :
geste :
effort ou resistance :
attaque :
corps :
queue :
evolution spectrale :
espace :
fonction musicale :
relation avec une source live ou imaginee :
```

Il n'a pas besoin d'etre realiste.
Il doit pouvoir etre entendu comme :

- frappe ;
- souffle ;
- friction ;
- pression ;
- cavite ;
- membrane ;
- metal ;
- voix ;
- air ;
- resonance ;
- deformation d'une source ;
- espace impossible mais coherent ;
- source hybride mais physiquement imaginable.

Formule corrigee :

```text
Un son peut etre impossible.
Il ne doit pas sonner comme un preset identifiable.
Il doit garder une logique de cause, de matiere, de geste, d'espace ou de fonction.
```

### 10.3. Echelle PA provisoire

Cette echelle ne mesure pas le niveau d'acoustique reelle.
Elle mesure le risque perceptif de sortie du monde sonore Vesperare.

```text
PA-0 - Source acoustique directe
Source jouee ou enregistree, peu transformee.
Exemples : didgeridoo, gong, voix, peau, souffle, friction.

PA-1 - Source acoustique traitee mais lisible
La source reste identifiable, mais intensifiee, spatialisee, filtree, etiree, saturee ou modulee.

PA-2 - Source acoustique plausible / ambigue
La source n'est plus certaine, mais l'oreille peut imaginer une cause physique.

PA-3 - Source impossible credible
La source ne pourrait peut-etre pas exister telle quelle, mais ses indices de matiere, geste, espace ou energie restent coherents.

PA-4 - Effet ou generation renaturalisee
Le traitement est fort, mais il est reintegre comme souffle, resonance, pression, metal, cavite, espace, corps ou scene.

PA-X - Signature electronique identifiable
Le son renvoie directement a un outil, un preset, un genre electronique standard ou un effet reconnaissable.
```

Hypothese Vesperare :

- PA-0 a PA-4 peuvent etre utilisables selon fonction ;
- PA-X est exclu par defaut comme support central ;
- PA-X peut seulement devenir un cas special si tu le decides explicitement plus tard, ce qui n'est pas le cadre actuel ;
- le danger n'est pas "ordinateur", mais "reconnaissance d'une signature electronique".

### 10.4. Indices qui rendent un son trop electronique

Liste de garde-fous a valider :

```text
ELEC-1 - timbre de synthese identifiable
ELEC-2 - oscillator/lead/pluck trop reconnaissable
ELEC-3 - supersaw ou brillance trance prefabriquee
ELEC-4 - wobble dubstep standard
ELEC-5 - squelch 303 standard
ELEC-6 - filtre/resonance qui sonne synthese sans cause acoustique
ELEC-7 - enveloppe trop preset : pluck, stab, riser, impact trailer
ELEC-8 - sidechain pompe EDM reconnaissable
ELEC-9 - auto-tune / pitch correction audible
ELEC-10 - freeze/shimmer/reverb trop reconnaissable comme effet plugin
ELEC-11 - glitch decoratif ou artefact numerique affiche
ELEC-12 - granularite qui sonne outil, pas matiere
ELEC-13 - modulation LFO trop visible si elle ne ressemble pas a geste, respiration, battement ou instabilite physique
ELEC-14 - bruit numerique propre, froid ou statique sans cause
```

Statut deja clair :

- auto-tune / pitch correction reconnaissable est non souhaite ;
- squelch 303 est un risque a surveiller ;
- lead synth banal n'est pas souhaite ;
- sons electroniques reconnaissables ne doivent pas devenir le vocabulaire audible normal.

### 10.5. Cas limites utiles

Ces cas ne doivent pas etre interdits automatiquement.
Ils doivent etre juges par fonction et par niveau PA.

```text
CL-1 - Reverb enorme
Acceptable si elle cree espace, distance, cavite, gouffre, salle impossible ou halo decide.
Risque si elle sonne preset decoratif.

CL-2 - Freeze / shimmer
Acceptable si reintegre comme metal, gong, air, halo, queue, lumiere acoustique ou espace impossible.
Risque si l'effet plugin est reconnaissable.

CL-3 - Sidechain / ducking
Acceptable comme respiration, pression, retrait fonctionnel, protection grave ou retour corporel.
Risque si la pompe EDM devient signature stylistique.

CL-4 - Saturation
Acceptable comme rugissement, pression, frottement, surcharge, masse ou transgression.
Risque si elle sonne distorsion numerique generique.

CL-5 - Granularite
Acceptable comme poussiere, souffle, friction, matiere, frottement, voix pulverisee, metal ou texture d'espace.
Risque si elle sonne effet granular decoratif.

CL-6 - Sub genere
Acceptable si sa fonction est pression, souffle, gong, didgeridoo, soutien, base ou masse.
Risque si le timbre sub electronique devient reconnaissable et detache de la scene.

CL-7 - Pitch / hauteur corrigee
Correction invisible eventuellement a discuter comme outil technique.
Correction audible type auto-tune deja refusee.

CL-8 - Acid naturalise
Acceptable si ligne, filtre, accent ou slide restent lies a formant, tube, voix, partiel, grave, friction ou source imaginee.
Risque si le timbre renvoie directement a une TB-303 standard.

CL-9 - Voix tres traitee
Acceptable si elle reste integree virtualo-acoustique, sonore, spatiale ou materielle.
Risque si elle devient voix nue, auto-tune ou effet vocal pop/electro reconnaissable.
```

### 10.6. Besoins generatifs associes

Chaque objet genere ou traite devrait pouvoir recevoir ces metadonnees conceptuelles :

```text
fonction :
niveau PA vise :
source reelle ou imaginee :
cause possible :
matiere :
geste :
espace :
mode de transformation :
risque electronique :
condition d'apparition :
condition de retrait :
override live :
```

Ce que ca implique pour plus tard :

- les generateurs ne doivent pas produire seulement des sons, mais des sons situes ;
- les traitements doivent garder une relation source -> transformation -> fonction ;
- les sons PA-X doivent etre detectes comme risques ou exceptions, pas comme palette normale ;
- la generation peut utiliser des moyens numeriques, mais elle doit produire des indices perceptifs acoustiques, physiques, spatiaux ou corporels ;
- les protections automatiques peuvent eviter PA-X involontaire, mais l'utilisateur doit garder des overrides pour les choix artistiques decides.

### 10.7. Questions a poser maintenant

Ces questions ne sont pas resolues avec certitude par la recherche.
Elles dependent de ton gout exact.

```text
PAQ-1 - PA-X absolu ou contextualise ?
Est-ce que les signatures electroniques reconnaissables sont toujours interdites,
ou seulement interdites comme vocabulaire normal et support central ?

PAQ-2 - Source obligatoire ou fonction suffisante ?
Est-ce que chaque son doit laisser imaginer une source/cause,
ou un son peut-il etre accepte s'il n'a pas de source claire mais porte parfaitement pression, espace, rythme ou retour ?

PAQ-3 - Definition de virtualo-acoustique
Est-ce que "virtualo-acoustique" veut dire :
espace plausible, source impossible credible, traitement naturalise, scene sonore coherente,
ou tout cela selon les cas ?

PAQ-4 - Reverbs / freeze / shimmer
Ces effets sont-ils acceptables s'ils sonnent comme espace, halo, metal, gong, queue ou cavite,
ou certains timbres shimmer/freeze sont-ils a exclure meme s'ils sont beaux ?

PAQ-5 - Artefacts numeriques
Un glitch, grain, bitcrush, stutter ou artefact peut-il etre accepte s'il est renaturalise comme friction, air, poussiere, rupture ou matiere,
ou faut-il les eviter presque totalement ?

PAQ-6 - Sub synthetique non reconnaissable
Un sub tres pur ou modele peut-il etre accepte s'il sert le gong, le didgeridoo, le souffle grave ou la pression,
ou doit-il toujours garder une trace d'une source acoustique ?

PAQ-7 - Effet connu mais transforme
Si un effet reconnaissable au depart devient meconnaissable par contexte, espace, source et fonction,
est-il acceptable ?

PAQ-8 - Exigence de scene
Un son PA-3/PA-4 doit-il toujours etre lie a une scene ou un geste,
ou peut-il exister comme matiere stable de fond si tu l'as decide ?
```

### 10.8. Reponses utilisateur du 2026-06-21

PAQ-1 - PA-X absolu ou contextualise ?

Reponse :

```text
Dans l'idee, vraiment interdites, mais exceptions envisageables.
```

Interpretation :

- PA-X reste interdit comme vocabulaire normal ;
- une exception PA-X doit etre decidee explicitement ;
- l'exception ne doit pas devenir un automatisme, une palette par defaut ou une facilite de sound design.

PAQ-2 - Source obligatoire ou fonction suffisante ?

Reponse :

```text
C'est une idee interessante dans le projet, mais une fonction forte suffit souvent.
```

Interpretation :

- la source/cause plausible reste une direction importante ;
- elle n'est pas obligatoire pour chaque son ;
- un son peut etre valide par sa fonction : pression, espace, rythme, retour, tension, transgression, protection ou forme.

PAQ-3 - Definition de virtualo-acoustique

Reponse :

```text
Plutot espace possible, dans le sens ou l'espace reagit un peu,
comme juste dans la reverb ambiante du reste.
```

Interpretation :

- "virtualo-acoustique" designe surtout une integration par espace plausible/reactif ;
- le son n'a pas besoin de simuler une source acoustique complete ;
- il doit etre accueilli dans un espace coherent avec le reste ;
- la reverb/espace devient un chapitre autonome a approfondir.

PAQ-4 - Reverbs / freeze / shimmer

Reponse :

```text
Question pas claire au depart.
Apres developpement : accord avec le cadre propose.
```

Clarification retenue :

- reverb = espace, distance, profondeur, halo, cavite, queue ;
- freeze = fixation/prolongation d'un son ou d'une reverb en matiere tenue ;
- shimmer = reverb avec transposition, souvent vers l'aigu, pouvant sonner ambient/cinematique ;
- ces effets sont acceptables s'ils deviennent espace, halo, metal, gong, queue, souffle, cavite ou scene ;
- le risque est l'effet plugin reconnaissable, pas l'effet en soi.

PAQ-5 - Artefacts numeriques

Reponse :

```text
On peut envisager s'ils sont naturalises ; a voir par quels procedes, reverbs ?
```

Interpretation :

- glitch, grain, bitcrush, stutter ou artefact ne sont pas interdits absolument ;
- ils doivent etre naturalises par espace, reverb, filtrage, resonance, friction, souffle, poussiere, metal, air, rupture ou source live ;
- la reverb/espace peut etre un des moyens principaux de naturalisation ;
- il faudra tester les procedes precis.

PAQ-6 - Sub synthetique non reconnaissable

Reponse :

```text
Acceptable pur modele, mais interessant d'avoir des traces acoustiques.
```

Interpretation :

- un sub pur/modelise peut etre accepte ;
- il n'a pas toujours besoin d'une trace acoustique explicite ;
- des traces acoustiques restent interessantes : souffle, gong, didgeridoo, resonance, air, queue, partiel, instabilite ;
- l'objectif reste pression grave precise et musicale, pas timbre sub electronique identifiable.

PAQ-7 - Effet connu mais transforme

Reponse :

```text
Pas de probleme avec les effets connus.
La question devait etre reformulee.
```

Clarification retenue :

- les effets connus ne sont pas le probleme ;
- le probleme est leur reconnaissance comme preset, gimmick ou genre electronique standard ;
- un effet connu est acceptable si sa fonction perceptive prend le dessus : espace, pression, matiere, respiration, protection, retour, transgression.

PAQ-8 - Exigence de scene

Reponse :

```text
Non, les sons tres transformes ne doivent pas toujours etre lies a une scene/action/source.
Mais cela doit rester possible si c'est decide.
```

Interpretation :

- un son PA-3/PA-4 peut exister longtemps comme matiere stable ;
- il n'a pas besoin d'etre constamment rattache a une action visible ou une scene explicite ;
- le danger est la matiere stable non decidee, decorative ou automatique ;
- la duree longue est acceptable si elle est choisie.

### 10.9. Defaut provisoire apres reponse utilisateur

```text
Vesperare accepte PA-0 a PA-4.
Vesperare refuse PA-X comme vocabulaire normal, avec exceptions explicites possibles.
La plausibilite acoustique peut venir d'une cause, matiere, energie, scene, espace ou fonction.
La production technique peut etre entierement numerique si le resultat ne signe pas un outil/preset/genre electronique standard.
Une fonction forte peut suffire meme sans source claire.
L'espace reactif/reverb est un mecanisme central d'integration.
```

### 10.10. Ce que ce bloc debloque

- definition de l'integration virtualo-acoustique ;
- controle du risque electronique reconnaissable ;
- choix des futures banques de sources ;
- criteres pour tester reverbs, freeze, shimmer, granularite, saturation, sidechain et sub ;
- distinction entre traitement accepte et effet plugin reconnaissable ;
- metadonnees necessaires pour les generateurs ;
- base pour les futurs tests ecoute A/B.

## 11. Bloc E - Reverbs / espace reactif / naturalisation des effets

Questions source :

- QP-07 - Quand le halo peut-il devenir principal ?
- QP-04 - Ou commence le son electronique reconnaissable ?
- QP-16 - Quelles sources acoustiques sont trop illustratives ?

Elements lies :

- ET-03 Espace / halo ;
- BG-13 Espace et halo generatifs ;
- BS-08 Espace et halo comme fonctions ;
- CE-02 Techno pseudo-acoustique / realisme augmente ;
- CE-09 Nature / acoustique / instruments ;
- V-13 Voix integree virtualo-acoustique / sonore ;
- CL-1 Reverb enorme ;
- CL-2 Freeze / shimmer ;
- PAQ-3, PAQ-4, PAQ-5, PAQ-8.

Statut :

Chapitre ouvert.
Cadre de travail pose, mais pas encore arbitre dans le detail.

### 11.1. Point de depart

La reverb ne doit pas etre consideree comme un simple effet decoratif.
Dans Vesperare, elle peut devenir :

- espace possible ;
- espace reactif ;
- integration virtualo-acoustique ;
- naturalisation d'artefacts ;
- halo ;
- queue ;
- cavite ;
- distance ;
- profondeur ;
- contraction ou expansion ;
- protection perceptive ;
- scene stable longue si decidee.

Principe :

```text
La reverb/espace sert a faire appartenir un son a un monde.
Elle peut aussi devenir matiere, tension, souffle, halo ou retour.
```

### 11.2. Ce que la recherche externe ajoute

Les sources d'acoustique et de reverberation confirment une distinction utile :

- son direct ;
- premieres reflexions ;
- groupe/cluster de reflexions ;
- queue tardive diffuse ;
- absorption frequencielle ;
- densite modale ;
- duree de decay ;
- espace percu ;
- profondeur ;
- localisation ;
- enveloppement.

Correction importante :

```text
Une reverb n'est pas seulement une queue longue.
Elle organise la distance, le plan, la fusion, la separation, la taille percue, le poids frequentiel et la coherence de scene.
```

### 11.3. Fonctions Vesperare possibles

```text
REV-1 - Espace commun
Les sources acoustiques, traitees et generees partagent un meme monde spatial.

REV-2 - Espace reactif
L'espace reagit a l'energie, aux attaques, au grave, au didgeridoo, au gong, a la voix ou a la densite.

REV-3 - Naturalisation
Un son fragile, numerique, granulaire ou trop abstrait est reintegre par cavite, air, queue, surface, metal, souffle ou distance.

REV-4 - Halo stable decide
Une matiere de reverb/queue peut rester longtemps si elle est decidee.

REV-5 - Halo retire comme effet
La disparition de l'espace devient un evenement musical.

REV-6 - Contraction de l'espace
L'espace se resserre pour preparer retour, impact, pression ou clarification.

REV-7 - Expansion de l'espace
L'espace s'ouvre pour suspension, peak, transgression, immensite ou resolution.

REV-8 - Espace de protection
L'espace evite la voix nue, masque une transition fragile, rend une source moins frontale ou reduit un conflit.

REV-9 - Queue instrumentale augmentee
Une queue de gong, voix, didgeridoo, peau ou friction est prolongee sans devenir effet externe.

REV-10 - Reverb comme rythme implicite
Predelay, premieres reflexions, ducking ou baisse de halo creent un rythme spatial.
```

### 11.4. Parametres perceptifs a caracteriser

Pas comme liste de plugin, mais comme besoins de controle.

```text
source envoyee dans l'espace :
fonction de l'espace :
espace commun ou espace separe :
predelay / distance percue :
premieres reflexions :
densite :
diffusion :
queue :
duree :
grave dans la reverb :
brillance dans la reverb :
absorption des aigus :
poids des bas-mediums :
modulation / instabilite :
reaction a l'energie :
reaction au grave :
reaction a l'attaque :
reaction au didgeridoo :
reaction au gong :
reaction a la voix :
condition de gel/freeze :
condition de retrait :
override live :
risque ambient :
risque preset :
risque shimmer reconnaissable :
risque masque :
```

### 11.5. Familles a distinguer

```text
ES-1 - Ambiance commune courte
Reverb d'integration, peu spectaculaire, qui place les sources dans le meme monde.

ES-2 - Salle / cavite plausible
Espace identifiable par taille, distance, surface ou profondeur.

ES-3 - Queue longue instrumentale
Prolongation d'une source : gong, voix, didgeridoo, metal, peau, souffle.

ES-4 - Halo diffus
Fond spectral ou spatial, pas necessairement rattache a une source evidente.

ES-5 - Espace immense
Transgression, vertige, suspension, immensite, mais choisi.

ES-6 - Freeze
Gel d'une matiere ou d'une queue ; acceptable si naturalise comme halo, metal, air, gong, souffle ou cavite.

ES-7 - Shimmer / transposition de queue
Tres fragile : acceptable seulement si la brillance ne sonne pas preset ambient/cinematique.

ES-8 - Reverb granulaire / poussiere d'espace
Naturalisation possible d'artefacts, grains, stutters, frottements.

ES-9 - Espace sidechaine / respire
Espace qui se retire, pompe, respire ou laisse passer l'attaque, sans pompe EDM non desiree.

ES-10 - Espace microtonal / partiel
Queue accordee, partiels de gong, battements, tensions, resonnances.
```

### 11.6. Risques

```text
REV-R1 - grande reverb decorative non decidee
REV-R2 - shimmer reconnaissable
REV-R3 - freeze ambient generique
REV-R4 - queue qui masque l'attaque ou le rythme
REV-R5 - bas de reverb qui brouille le sub
REV-R6 - brillance lisse trop electronique
REV-R7 - reverb qui efface la source live
REV-R8 - espace qui transforme tout en nappe
REV-R9 - automation qui retire un halo voulu
REV-R10 - lock de halo qui empeche une protection sonore necessaire
```

### 11.7. Questions a traiter ensuite

```text
REVQ-1 - Quel espace commun minimal ?
Faut-il une ambiance commune quasi permanente pour integrer didgeridoo, voix, gong et generation ?

REVQ-2 - Quelle reactivite ?
L'espace doit-il reagir surtout a l'energie generale, au grave, aux attaques, au didgeridoo, au gong, a la voix, ou selon scenes ?

REVQ-3 - Quelle place du grave dans la reverb ?
Le grave doit-il entrer dans les queues, ou rester tres controle pour garder le sub precis ?

REVQ-4 - Quels freezes acceptables ?
Freeze de gong, voix, didgeridoo, souffle, bruit, reverb globale : lesquels sont desirables ?

REVQ-5 - Shimmer fragile ou utile ?
La transposition de queue vers l'aigu est-elle presque toujours a eviter, ou utile si elle devient metal/air/partiels ?

REVQ-6 - Naturaliser les artefacts comment ?
Reverb commune, convolution, cavite, filtrage, saturation, modulation lente, rattachement source live : quelles familles tester ?

REVQ-7 - Halo lock
Le controle doit-il etre simple on/off, lock anti-automation, niveau de priorite, ou plusieurs modes ?

REVQ-8 - Espace long stable
Quelles conditions rendent acceptable une matiere de reverb stable longtemps ?
```

### 11.8. Defaut provisoire

```text
L'espace/reverb est un systeme musical central.
Il doit pouvoir integrer, reagir, naturaliser, prolonger, retirer, proteger et mettre en scene.
Il peut durer longtemps si decide.
Il ne doit pas devenir une decoration automatique.
```

### 11.9. Clarification utilisateur - REVQ-1

Reponse utilisateur :

```text
Je n'arrive pas encore a caracteriser le detail esthetique exact.
Mais je veux que les traitements reverbs et les traitements de mix en general,
quand ils ne relevent pas de choix esthetiques arbitraires,
soient faits de la facon la plus poussee et professionnelle connue
pour que le son soit coherent et bien mixe.

Je veux distinguer :
- ce qui releve du mix pro par defaut ;
- ce qui releve des choix de types de reverb ;
- ce qui peut etre automatise ou lie a des analyses ;
- ce qui doit rester sous la main en live ;
- les reverbs d'immersion ;
- les reverbs de proximite ;
- l'analyse et l'usage de la reverb naturelle de la piece.

Contrainte materielle :
je dispose seulement d'un micro de mesure.
Une mesure avec ce micro deplace plusieurs fois est envisageable si utile.
```

Interpretation :

- REVQ-1 ne doit pas demander un gout de reverb trop precis maintenant ;
- il faut d'abord definir un socle professionnel de coherence spatiale et de mix ;
- le systeme doit separer traitements correctifs/protecteurs et choix expressifs ;
- la reverb naturelle de la salle doit etre analysee et prise en compte autant que possible ;
- un seul micro de mesure suffit pour une analyse multi-positions utile, mais pas pour une modelisation parfaite de toute la salle en temps reel.

### 11.10. Reponse de travail - REVQ-1

```text
Je veux un socle spatial commun gere de facon professionnelle et semi-automatique.
Ce socle doit assurer coherence, clarte, proximite, profondeur, gestion du grave,
adaptation a la salle et bon mix.

Il ne doit pas imposer une couleur de reverb esthetique permanente.

Au-dessus de ce socle, je veux garder le choix des mondes spatiaux :
proche, commun, cavite, club profond, metal/gong, immersif, immense, freeze,
halo long, shimmer detourne, naturalisation d'artefacts.

La reverb naturelle de la piece doit etre mesuree ou estimee autant que possible,
avec un seul micro de mesure place a plusieurs positions.
```

### 11.11. Socle mix/reverb professionnel non arbitraire

Ce niveau doit etre pense comme hygiene sonore.
Il n'est pas un choix esthetique principal.

Fonctions automatiques ou semi-automatiques :

```text
MIXREV-1 - Gestion du grave dans les reverbs
High-pass, dynamic EQ, reduction des queues graves, controle des bas-mediums.
But : eviter boue, masquage du sub, perte du didgeridoo, feedback.

MIXREV-2 - Ducking intelligent des queues
Les reverbs se retirent selon attaques, voix, didgeridoo, gong, sub ou densite.
But : garder lisibilite et impact sans couper brutalement l'espace.

MIXREV-3 - Controle de brillance
Reduction dynamique des aigus de reverb quand ca devient plugin, shimmer, sibilant ou froid.
But : garder naturel, air, metal ou partiels sans brillance prefabriquee.

MIXREV-4 - Coherence de scene
Un espace commun minimal peut placer toutes les sources dans un meme monde.
But : eviter que PC, didgeridoo, gong, voix et generation sonnent colles artificiellement.

MIXREV-5 - Gestion densite/masquage
Plus la texture est dense, plus les queues longues doivent etre reduites, deplacees ou filtrees.
But : eviter nappe permanente, flou, perte de pression rythmique.

MIXREV-6 - Protection feedback/salle
Reduction automatique des bandes dangereuses et des accumulations resonantes.
But : securite live et coherence PA.

MIXREV-7 - Maintien de proximite
Les sources centrales peuvent rester proches avec early reflections courtes ou placement discret.
But : proximite sans secheresse hors monde.

MIXREV-8 - Adaptation a la salle
Les reverbs artificielles doivent tenir compte de la reverb naturelle deja presente.
But : ne pas ajouter une queue longue dans une salle deja floue, ne pas laisser une salle seche sans liant si besoin.
```

### 11.12. Ce qui doit rester sous la main en live

Ces choix sont artistiques ou structurels.
Ils ne doivent pas etre decides seulement par une correction automatique.

```text
LIVE-REV-1 - Quantite generale d'espace
Sec / proche / commun / large / immense.

LIVE-REV-2 - Monde spatial actif
Proche, cavite, club profond, metal-gong, immersif, immense, hors-monde.

LIVE-REV-3 - Halo lock
Auto / Lock / Force / Cut, avec protections sonores critiques prioritaires.

LIVE-REV-4 - Droit au freeze
Source autorisee a etre gelee : gong, voix, didgeridoo, souffle, bruit, reverb globale.

LIVE-REV-5 - Droit au shimmer
Autorise / interdit / seulement metal-air-partiels.

LIVE-REV-6 - Droit au grave reverbere
Interdit / controle / effet decide / gong-souffle-pression.

LIVE-REV-7 - Mode naturalisation d'artefacts
Reverb commune, cavite, convolution, resonance, friction, souffle, metal, source live.

LIVE-REV-8 - Priorite immersion vs proximite
Le son enveloppe ou reste frontal/proche selon scene.
```

### 11.13. Mesure de salle avec un seul micro

Objectif :

```text
Obtenir une carte utile des tendances de la salle,
pas une modelisation parfaite.
```

Protocole envisageable :

```text
1. Placer le micro de mesure a une position d'ecoute centrale.
2. Envoyer un sweep ou bruit de test via le systeme de diffusion.
3. Mesurer reponse frequentielle, impulse response, decay/RT par bandes, modes graves et resonances dangereuses.
4. Deplacer le micro vers plusieurs positions : centre public, avant, arriere, gauche, droite, position musicien si utile.
5. Comparer les mesures pour trouver tendances communes et zones problematiques.
6. Utiliser ces donnees pour regler protections, EQ, grave, quantite de reverb artificielle, pre-delay, queues et bandes a eviter.
```

Ce que cela peut aider a determiner :

- salle deja reverberante ou seche ;
- bandes de grave qui trainent ;
- resonances feedback probables ;
- lisibilite des attaques ;
- duree utile des queues artificielles ;
- besoin d'espace commun artificiel ;
- zones ou l'immersion risque de devenir flou.

Limites :

- un seul micro deplace ne donne pas une image simultanee de toute la salle ;
- une salle vide ne reagit pas comme une salle pleine ;
- pendant le live, le micro mesure aussi public, bruit, PA, retours et sources acoustiques ;
- l'analyse doit guider des corrections prudentes, pas piloter brutalement tout le mix ;
- l'oreille et les tests musicaux restent indispensables.

### 11.14. Reverbs qui enrichissent la perception des sons

La reverb peut enrichir un son sans seulement l'eloigner.
Elle peut ajouter :

- taille percue ;
- largeur ;
- profondeur ;
- enveloppement ;
- densite de matiere ;
- queue expressive ;
- indices de surface ou cavite ;
- fusion entre sources ;
- separation entre plans ;
- sensation de proximite placee ;
- sentiment d'immersion ;
- impression de source plus grande ou plus complexe.

Implication Vesperare :

```text
Une reverb peut etre un enrichisseur de perception.
Elle peut rendre un son plus grand, plus proche, plus profond, plus physique ou plus plausible.
Elle ne doit pas etre seulement classee comme decor, ambient ou queue longue.
```

Types utiles :

```text
ENR-1 - Proximite enrichie
Le son reste proche, mais early reflections et micro-espace lui donnent corps.

ENR-2 - Immersion controlee
Le son enveloppe l'auditeur sans perdre attaques, sub ou rythme.

ENR-3 - Taille augmentee
Une source semble plus grande que sa cause, sans devenir effet spectaculaire gratuit.

ENR-4 - Matiere revelee
La queue expose partiels, souffle, friction, rugosite ou battements.

ENR-5 - Fusion de monde
Plusieurs sources disparates deviennent compatibles dans la meme scene.

ENR-6 - Separation de plans
L'espace aide a distinguer avant, milieu, fond, halo, grave et details.

ENR-7 - Source impossible plausible
La reverb donne une cavite, une surface ou une distance a un son genere.
```

### 11.15. Bloc E2 - REVQ-2 / REVQ-3

Statut :

Propositions de reponse a valider par l'utilisateur.
Ne pas encore considerer comme arbitrage definitif.

Questions :

```text
REVQ-2 - Quelle reactivite ?
L'espace doit-il reagir surtout a l'energie generale, au grave, aux attaques,
au didgeridoo, au gong, a la voix, ou selon scenes ?

REVQ-3 - Quelle place du grave dans la reverb ?
Le grave doit-il entrer dans les queues, ou rester tres controle pour garder le sub precis ?
```

### 11.16. Recherche et principe pour REVQ-2

Les recherches sur les effets adaptatifs et cross-adaptatifs confirment une distinction utile :

- effet auto-adaptatif : la reverb reagit au son qu'elle traite ;
- effet sidechain : la reverb reagit a un autre signal ;
- effet cross-adaptatif : la reverb reagit a la relation entre plusieurs sources ;
- adaptation a la salle : la reverb tient compte de la reverb naturelle, des resonances et du systeme de diffusion.

Application Vesperare :

```text
L'espace ne doit pas seulement etre "plus ou moins de reverb".
Il peut reagir a l'energie, aux attaques, au sub, a la densite,
au didgeridoo, au gong, a la voix, a la salle, et a la forme du passage.
```

### 11.17. Niveaux de reactivite

```text
REACT-0 - Socle pro non arbitraire
Corrections de clarte, masquage, feedback, grave, brillance, densite et salle.
Automatique ou semi-automatique.

REACT-1 - Reactivite musicale discrete
L'espace respire avec l'energie, les attaques, la densite ou les silences.
Peut etre actif par defaut si discret.

REACT-2 - Reactivite instrumentale
L'espace suit didgeridoo, gong, voix ou percussion.
Doit etre active par scene ou mode.

REACT-3 - Reactivite expressive frontale
L'espace devient geste audible : ouverture, fermeture, aspiration, drop, retrait, expansion.
Doit rester sous controle live ou scene.

REACT-4 - Reactivite libre / experimentale
L'espace peut reagir de maniere forte, inhabituelle ou instable.
Seulement si decide explicitement.
```

### 11.18. Sources d'analyse possibles pour l'espace

```text
AN-REV-1 - Energie generale
RMS, loudness approximative, intensite percue.
Usage : ouvrir/fermer espace, gerer densite, proteger clarte.

AN-REV-2 - Attaques / transitoires
Detection d'onsets, percussions, consonnes, impacts de gong, attaques du didgeridoo.
Usage : ducking de queue, predelay, retrait de halo, espace rythmique.

AN-REV-3 - Occupation grave/sub
Energie bas-grave, vrai sub, masquage du didgeridoo, conflit avec basse generee.
Usage : reduction de reverb grave, retrait dynamique, controle de queues.

AN-REV-4 - Densite spectrale
Nombre de couches, occupation frequencielle, saturation de texture.
Usage : raccourcir queues, filtrer brillance, separer plans.

AN-REV-5 - Brillance / sibilance / durete
Centroid spectral, energie aigu, frictions, sibilantes, cymbales, artefacts.
Usage : absorption dynamique, damping, prevention shimmer/preset.

AN-REV-6 - Didgeridoo
Energie, bourdon, formants, souffle, rugosite, attaques respiratoires.
Usage : espace qui respecte la liberte du didgeridoo, preserve son corps, ou l'integre.

AN-REV-7 - Gong
Impact, partiels, queue, rugissement, decay, energie grave/metal.
Usage : prolongation instrumentale, halo metal, freeze, expansion ou retrait.

AN-REV-8 - Voix
Souffle, consonnes, voyelles, intelligibilite, cri, fragments.
Usage : integration virtualo-acoustique, proximite, protection contre voix nue.

AN-REV-9 - Salle
Mesures pre-set ou estimation live : decay, resonances, feedback, grave qui traine.
Usage : adapter quantite d'espace, bandes de reverb et duree des queues.

AN-REV-10 - Forme musicale
Scene, suspension, retour, peak, transgression, rarete, densite.
Usage : choix de monde spatial et profondeur.
```

### 11.19. Modes de reactivite proposes

```text
RCT-1 - Espace stable/pro
L'espace commun reste coherent, discret, corrige et peu spectaculaire.
But : mixer proprement.

RCT-2 - Respiration d'energie
Plus la scene pousse, plus l'espace se densifie ou se retire selon mode.
But : faire respirer la pression sans flou.

RCT-3 - Clarification des attaques
Les queues se retirent autour des attaques principales.
But : garder rythme, impact et lisibilite corporelle.

RCT-4 - Grave prioritaire
Quand sub/didgeridoo/gong grave sont charges, la reverb grave se retire.
But : eviter boue, masquage et perte de precision.

RCT-5 - Didgeridoo centre
Le systeme spatial s'adapte au didgeridoo : proximite, espace commun, halo ou retrait selon mode DID.
But : preserver liberte et corps du didgeridoo.

RCT-6 - Gong extension
Le gong peut ouvrir queue, halo, freeze, metal, espace immense ou rugissement controle.
But : traiter la reverb comme prolongation du gong.

RCT-7 - Voix integree
La voix recoit toujours un placement ou espace qui l'integre.
But : eviter voix nue hors monde.

RCT-8 - Salle adaptee
La quantite et la couleur des reverbs changent selon salle seche/floue/resonante.
But : coherer avec la piece.

RCT-9 - Geste dub / espace instrument
Reverb, delay, feedback, coupures et retours deviennent gestes live.
But : espace performatif, a garder sous la main.

RCT-10 - Forme scene
La reverb reagit a la structure : suspension, retour, contraction, expansion, peak, retrait.
But : espace comme forme musicale.
```

### 11.20. Reponse proposee pour REVQ-2

```text
Je veux plusieurs niveaux de reactivite.

Par defaut, l'espace doit reagir automatiquement a l'energie generale,
aux attaques, a la densite, au grave et a la salle, pour garder un mix coherent.

Selon les scenes, il doit aussi pouvoir reagir specifiquement au didgeridoo,
au gong, a la voix, et a la forme du passage.

Les gestes spatiaux tres audibles, type dub, ouverture, coupure, freeze,
expansion ou retrait spectaculaire, doivent rester sous controle live ou scene.
```

### 11.21. Recherche et principe pour REVQ-3

Le grave dans la reverb est une zone critique.
Il peut donner pression, souffle, profondeur et taille, mais il peut aussi detruire :

- precision du sub ;
- lisibilite du didgeridoo ;
- impact rythmique ;
- headroom ;
- clarte de la salle ;
- stabilite feedback ;
- definition du gong grave.

Principe Vesperare :

```text
Le vrai sub doit rester majoritairement controle.
L'espace grave doit plutot etre cree par traces acoustiques, bas-mediums,
harmoniques, souffle, queue de gong, resonance ou effets decides.
```

### 11.22. Zones graves utiles

Valeurs provisoires a tester selon systeme, salle et sources.
Ne pas les figer comme normes definitives.

```text
GRZ-1 - Vrai sub
Environ 20-60/80 Hz.
Role : pression physique, fondation, vibration.
Regle : tres controle, rarement envoye longuement dans la reverb.

GRZ-2 - Bas-grave
Environ 60/80-120 Hz.
Role : poids, corps, souffle, lien didgeridoo/sub/gong.
Regle : possible dans l'espace si filtre, ducke et scene-dependant.

GRZ-3 - Bas-medium
Environ 120-350 Hz.
Role : taille, proximite, corps, cavite, chaleur, traces acoustiques.
Regle : zone importante pour suggerer l'espace sans salir le sub.

GRZ-4 - Harmoniques graves
Au-dessus du fondamental, selon source.
Role : rendre le grave audible, spatial et plausible sans reverb de sub pur.
Regle : prioritaire pour spatialiser grave, gong et didgeridoo.
```

### 11.23. Modes de grave dans les reverbs

```text
GRV-0 - Sub sec/protege
Le vrai sub ne va presque pas dans les queues.
Mode par defaut pro.

GRV-1 - Trace acoustique
La reverb garde souffle, air, partiels, bas-mediums, mais peu de vrai sub.
Mode central Vesperare.

GRV-2 - Corps grave controle
Une partie du bas-grave entre dans l'espace, avec decay court, ducking, EQ dynamique.
Mode pour pression douce ou profondeur.

GRV-3 - Gong/didgeridoo grave spatial
Le grave spatial vient d'une source instrumentale ou plausible.
Mode pour gong, didgeridoo, souffle, queue, cavite.

GRV-4 - Bloom grave decide
Ouverture ponctuelle d'un grave reverbere ou sub spatial.
Mode effet special : impact, transgression, drop, suspension, immensite.

GRV-5 - Grave libre
La reverb grave peut rester moins controlee.
Mode experimental ou scene decidee, avec risques explicites.

GRV-X - Grave reverbere non decide
Etat a eviter : boue, flou, masque, perte du sub, feedback.
```

### 11.24. Automatisations utiles pour REVQ-3

```text
GREV-A1 - High-pass dynamique de reverb
Le seuil monte quand sub/didgeridoo/gong grave sont charges.

GREV-A2 - Ducking par sub/didgeridoo
La queue grave baisse quand le vrai grave principal parle.

GREV-A3 - Decay grave adapte
La duree des graves de reverb diminue dans salle floue ou scene dense.

GREV-A4 - Bas-medium spatialise
On garde corps et cavite dans 120-350 Hz environ, sans envoyer trop de vrai sub.

GREV-A5 - Harmoniques spatiales
Ajouter ou laisser passer des harmoniques au lieu de reverberer le fondamental pur.

GREV-A6 - Room-mode guard
Reduction des bandes qui excitent la salle ou le feedback.

GREV-A7 - Scene override
Autoriser bloom, souffle grave ou queue de gong si decision artistique.
```

### 11.25. Controles live utiles pour REVQ-3

```text
LIVE-GREV-1 - Grave dans reverb
Off / Trace / Corps / Pression / Libre.

LIVE-GREV-2 - Source autorisee
Gong / didgeridoo / voix / generation / master / aucun.

LIVE-GREV-3 - Priorite grave
Sub genere / didgeridoo / gong / libre / scene.

LIVE-GREV-4 - Bloom grave
Bouton ou mode pour autoriser une ouverture grave exceptionnelle.

LIVE-GREV-5 - Protection
Mode securite qui force retrait grave si masquage, feedback ou boue.
```

### 11.26. Reponse proposee pour REVQ-3

```text
Le vrai sub doit rester tres controle et majoritairement hors des queues longues.

La sensation d'espace grave doit plutot venir des traces acoustiques,
bas-mediums, harmoniques, souffle, queue de gong, didgeridoo ou resonances plausibles.

Le grave peut entrer dans la reverb si c'est decide :
corps grave controle, souffle, gong, pression, bloom ponctuel, transgression ou suspension.

Par defaut, les automatismes doivent proteger le sub, le didgeridoo, la lisibilite rythmique,
la salle et le headroom.

Je veux garder sous la main un choix simple :
Off / Trace / Corps / Pression / Libre.
```

### 11.27. Points a demander a l'utilisateur

Pour transformer ces propositions en arbitrage, il reste a confirmer :

```text
E2-Q1 - Reactivite par defaut
Valides-tu que l'espace reagisse automatiquement a energie, attaques, densite, grave et salle ?

E2-Q2 - Reactivite instrumentale
Le didgeridoo, le gong et la voix doivent-ils avoir chacun un mode spatial dedie ?

E2-Q3 - Geste dub
Veux-tu un mode ou reverb/delay/coupure/retour sont joues comme un instrument live ?

E2-Q4 - Grave par defaut
Valides-tu le mode par defaut : vrai sub tres controle, traces/harmoniques spatialisees ?

E2-Q5 - Controle live grave
Le controle Off / Trace / Corps / Pression / Libre te semble-t-il bon ?

E2-Q6 - Bloom grave
Veux-tu un mode d'ouverture grave exceptionnelle, meme risquee, si decide ?
```

### 11.28. Bloc E3 - REVQ-4 / REVQ-5

Statut :

Propositions de reponse a valider par l'utilisateur.
Ne pas encore considerer comme arbitrage definitif.

Questions :

```text
REVQ-4 - Quels freezes acceptables ?
Freeze de gong, voix, didgeridoo, souffle, bruit, reverb globale : lesquels sont desirables ?

REVQ-5 - Shimmer fragile ou utile ?
La transposition de queue vers l'aigu est-elle presque toujours a eviter,
ou utile si elle devient metal/air/partiels ?
```

### 11.29. Recherche et principe pour REVQ-4

Les recherches sur freeze/spectral hold et les effets de reverb indiquent plusieurs familles distinctes :

- freeze de reverb : gel d'une queue ou d'un espace ;
- freeze spectral : maintien d'un instant de spectre/partiels ;
- freeze granulaire : capture et repetition de grains ;
- infinite sustain : prolongation quasi infinie d'une matiere ;
- freeze feedback : boucle d'espace qui continue a evoluer ;
- freeze instrumental : prolongation d'une source identifiable.

Application Vesperare :

```text
Le freeze ne doit pas etre seulement une nappe.
Il doit capturer une matiere utile : partiels, souffle, friction, metal, voix,
bourdon, rugosite, queue de gong, espace, tension ou trace rythmique.
```

### 11.30. Fonctions possibles du freeze

```text
FRZ-1 - Freeze de queue de gong
Capture partiels, metal, decay, rugissement ou halo.
Fonction : prolongation instrumentale, suspension, peak, transgression, resolution.

FRZ-2 - Freeze de didgeridoo
Capture bourdon, formants, souffle, rugosite ou attaque respiratoire.
Fonction : stabiliser un monde, guider harmoniquement, creer halo organique.

FRZ-3 - Freeze de voix
Capture souffle, voyelle, consonne, cri, choeur spectral ou fragment.
Fonction : integration virtualo-acoustique, presence, tension, signal, halo humain.

FRZ-4 - Freeze de souffle/bruit/friction
Capture air, poussiere, frottement, texture ou artefact naturalise.
Fonction : matiere, proximite, espace, naturalisation.

FRZ-5 - Freeze de reverb globale
Capture la scene spatiale entiere a un instant.
Fonction : suspension, faux arret, memoire, bascule de plan.

FRZ-6 - Freeze de motif/rythme
Capture une trace d'attaque ou de pulsation.
Fonction : memoire techno suspendue, pulse fantome, tension.

FRZ-7 - Freeze de sub/grave
Tres fragile.
Fonction possible : bloom, pression, souffle grave, transgression.
Regle : seulement si decide, avec protection forte.

FRZ-8 - Freeze d'artefact
Capture glitch, grain, bruit numerique, puis renaturalise par espace/cavite/resonance.
Fonction : transformer defaut numerique en matiere.
```

### 11.31. Parametres perceptifs du freeze

```text
source capturee :
moment de capture :
type de capture : reverb / spectral / granular / feedback / instrumental
duree : courte / longue / infinie / tenue manuelle
stabilite : fixe / evolutive / degradee / respiree
spectre capture :
grave autorise :
brillance autorisee :
relation au tempo :
relation au retour :
ducking par attaques :
sortie du freeze :
fade-in :
fade-out :
fonction : halo / suspension / tension / memoire / transgression / resolution / naturalisation
risque nappe :
risque preset :
risque masque :
```

### 11.32. Automatisations utiles pour freeze

```text
FRZ-A1 - Capture seulement si matiere suffisante
Eviter de freezer un signal pauvre, vide, trop propre ou accidentel.

FRZ-A2 - Filtrage avant freeze
Retirer sub dangereux, sibilance, durete, feedback ou brillance plugin.

FRZ-A3 - Ducking du freeze
Le freeze baisse quand attaques, voix, didgeridoo ou sub doivent repasser devant.

FRZ-A4 - Degradation organique
Le freeze peut perdre de l'energie, bouger, respirer, se filtrer ou se salir lentement.

FRZ-A5 - Sortie musicale
Fade, rupture, aspiration, contraction d'espace, retour de grave ou release manuel.

FRZ-A6 - Room guard
Eviter de maintenir une bande qui excite la salle.
```

### 11.33. Controles live utiles pour freeze

```text
LIVE-FRZ-1 - Arm / Capture
Preparer puis capturer un freeze.

LIVE-FRZ-2 - Source
Gong / didgeridoo / voix / souffle / artefact / reverb globale / master.

LIVE-FRZ-3 - Mode
Court / long / infinite / spectral / granular / feedback / instrumental.

LIVE-FRZ-4 - Hold
Maintien momentane ou verrouille.

LIVE-FRZ-5 - Filter
Assombrir, eclaircir, retirer grave, isoler partiels.

LIVE-FRZ-6 - Release
Sortie douce, coupure, aspiration, drop, retour.
```

### 11.34. Reponse proposee pour REVQ-4

```text
Tous les freezes sont envisageables s'ils capturent une matiere fonctionnelle.

Les freezes les plus importants pour Vesperare sont :
gong, didgeridoo, voix, souffle/friction, reverb globale et artefacts naturalises.

Le freeze ne doit pas etre une nappe automatique.
Il doit avoir une fonction : halo, suspension, memoire, tension, transgression,
resolution, integration ou naturalisation.

Le freeze grave/sub est possible seulement comme exception decidee,
avec protections fortes.
```

### 11.35. Recherche et principe pour REVQ-5

Les sources sur shimmer confirment que la signature classique vient de :

- reverb longue ;
- pitch shifting dans la queue ;
- souvent octave vers le haut ;
- feedback ou regeneration ;
- brillance, lissage, effet ethero-cinematique.

Application Vesperare :

```text
Le shimmer est fragile parce qu'il peut vite devenir reconnaissable.
Il peut etre utile seulement s'il quitte l'effet "angelique/cinematique"
pour devenir partiels, metal, air, gong, cavite, tension ou lumiere acoustique plausible.
```

### 11.36. Types de shimmer / transposition de queue

```text
SHM-0 - Shimmer interdit
Aucun pitch-shift audible dans la queue.
Mode securite.

SHM-1 - Partiels de gong
La transposition sert a faire apparaitre metal, inharmonicite, battements ou partiels.
Mode le plus compatible Vesperare.

SHM-2 - Air / souffle brillant
La queue gagne de l'air sans devenir effet ambient.
Mode fragile mais possible.

SHM-3 - Cavite lumineuse
La transposition evoque une cavite impossible, pas un preset.
Mode scene.

SHM-4 - Tension microtonale
Pitch shifting non-octave ou leger pour creer battements, friction, resolution.
Mode interessant a tester.

SHM-5 - Shimmer sombre / downshift
Transposition vers le bas ou mixte, pour profondeur, menace, masse, souffle.
Peut etre plus Vesperare que l'octave-up classique.

SHM-6 - Shimmer classique
Octave-up longue et brillante.
Tres risque : effet ambient/cinematique reconnaissable.
```

### 11.37. Garde-fous shimmer

```text
SHM-G1 - Pas de shimmer par defaut
Le shimmer doit etre active explicitement.

SHM-G2 - Eviter octave-up brillante standard
Risque de signature ambient/cinematique.

SHM-G3 - Preferer partiels, metal, air, microtension
Le pitch doit servir une source ou une fonction.

SHM-G4 - Filtrage dynamique
Controler aigus, durete, sibilance, brillance lisse.

SHM-G5 - Ducking par attaques et voix
Eviter que le shimmer mange l'avant-plan.

SHM-G6 - Duree limitee ou scene decidee
Le shimmer long est possible seulement s'il est choisi.

SHM-G7 - Relation au gong/didgeridoo/voix
Le shimmer doit etre relie a une source ou une fonction perceptive.
```

### 11.38. Controles live utiles pour shimmer

```text
LIVE-SHM-1 - Shimmer permission
Off / Partiels / Air / Cavite / Microtension / Sombre / Libre.

LIVE-SHM-2 - Pitch relation
Octave / quinte / micro-intervalles / partiels detectes / downshift / mixte.

LIVE-SHM-3 - Brightness guard
Niveau de brillance autorise.

LIVE-SHM-4 - Source
Gong / voix / didgeridoo / reverb globale / generation / aucun.

LIVE-SHM-5 - Risk override
Autoriser temporairement un shimmer reconnaissable si decision explicite.
```

### 11.39. Reponse proposee pour REVQ-5

```text
Le shimmer est fragile mais pas interdit.

Il ne doit pas etre une couleur par defaut.
Il est acceptable s'il devient partiels, metal, air, cavite, microtension,
gong, souffle ou source impossible plausible.

Le shimmer octave-up ambient/cinematique reconnaissable est a eviter.

Les variantes les plus interessantes sont :
partiels de gong, air controle, cavite lumineuse, microtension,
ou shimmer sombre/downshift.

Je veux un controle live de permission :
Off / Partiels / Air / Cavite / Microtension / Sombre / Libre.
```

### 11.40. Points a demander a l'utilisateur

Pour transformer ces propositions en arbitrage, il reste a confirmer :

```text
E3-Q1 - Sources freeze
Valides-tu que gong, didgeridoo, voix, souffle/friction, reverb globale et artefacts soient tous freeze-ables ?

E3-Q2 - Freeze grave
Le freeze grave/sub doit-il rester une exception decidee avec protections fortes ?

E3-Q3 - Freeze live
Veux-tu un controle Arm / Capture / Hold / Release pour jouer le freeze en live ?

E3-Q4 - Shimmer par defaut
Valides-tu : pas de shimmer par defaut ?

E3-Q5 - Shimmer utile
Valides-tu les familles Partiels / Air / Cavite / Microtension / Sombre / Libre ?

E3-Q6 - Shimmer reconnaissable
Un shimmer classique reconnaissable doit-il rester exception PA-X explicite ?
```

### 11.41. Bloc E4 - REVQ-6

Statut :

Propositions de reponse a valider par l'utilisateur.
Ne pas encore considerer comme arbitrage definitif.

Question :

```text
REVQ-6 - Naturaliser les artefacts comment ?
Reverb commune, convolution, cavite, filtrage, saturation, modulation lente,
rattachement source live : quelles familles tester ?
```

### 11.42. Recherche et principe pour REVQ-6

Les recherches et les cadres deja retenus indiquent plusieurs voies solides :

- convolution / impulse response : donner un lieu, une matiere, une cavite ou une empreinte acoustique ;
- resonateurs / filtres : donner une structure de tube, bouche, metal, membrane, gong, corps ou cavite ;
- granularite : transformer l'artefact en poussiere, souffle, friction, texture ou matiere ;
- source-filter : rattacher un son abstrait a bouche, tube, cavite ou corps vocal ;
- saturation / friction : rendre un son trop propre plus physique ;
- modulation lente : rendre l'artefact instable comme une matiere vivante ;
- sidechain/source live : faire reagir l'artefact au didgeridoo, gong, voix, attaque ou grave.

Principe Vesperare :

```text
Naturaliser un artefact ne veut pas dire le cacher.
Cela veut dire lui donner une fonction, une matiere, une scene, une cause possible,
ou une relation active avec une source live.
```

### 11.43. Familles d'artefacts a traiter

```text
ART-1 - Glitch / clic / rupture
Risque : ordinateur, erreur, decor numerique.
Naturalisation : attaque, friction, craquement, peau, bois, metal, rupture d'air.

ART-2 - Grain / granularite
Risque : effet granular reconnaissable.
Naturalisation : souffle, poussiere, frottement, queue de reverb, air, sable, chuintement.

ART-3 - Bitcrush / resolution basse
Risque : effet lo-fi numerique.
Naturalisation : rugosite, frottement, saturation de matiere, objet casse, membrane fatiguee.

ART-4 - Stutter / repetition micro
Risque : effet glitch/EDM.
Naturalisation : tremblement, battement, roulement, langue, souffle hache, pulse fantome.

ART-5 - Artefact spectral
Risque : freeze/spectral plugin reconnaissable.
Naturalisation : partiels de gong, metal, voix spectrale, cavite, tension microtonale.

ART-6 - Artefact de pitch
Risque : pitch correction, auto-tune, effet vocal numerique.
Naturalisation : partiels, microtension, battements, formants, tube, resonance.

ART-7 - Artefact de time-stretch
Risque : etirement numerique reconnaissable.
Naturalisation : souffle long, queue, friction lente, metal etire, espace impossible.

ART-8 - Bruit numerique propre
Risque : froid, statique, sans cause.
Naturalisation : air, souffle, salle, diffusion, friction, surface, pluie non illustrative.
```

### 11.44. Methodes de naturalisation

```text
NAT-1 - Espace commun
Placer l'artefact dans le meme monde spatial que le reste.
Utile pour integration minimale.

NAT-2 - Convolution / empreinte
Faire passer l'artefact dans une empreinte de salle, objet, cavite, metal, tube ou matiere.
Utile pour donner une cause ou une surface.

NAT-3 - Resonateurs
Forcer l'artefact a exciter des modes : gong, tube, bouche, peau, cavite, corde imaginaire.
Utile pour transformer erreur en resonance.

NAT-4 - Source-filter
Filtrer par formants, cavite vocale, tube, didgeridoo, bouche ou gorge.
Utile pour relier a voix/didgeridoo sans auto-tune.

NAT-5 - Saturation-friction
Ajouter resistance, frottement, grain physique, pression ou rugosite.
Utile contre froideur numerique.

NAT-6 - Granularite organique
Densifier ou disperser les grains comme souffle, poussiere, air, queue ou texture.
Utile si le grain ne sonne plus outil.

NAT-7 - Modulation lente / instabilite
Faire bouger legerement hauteur, filtre, densite, espace ou couleur.
Utile pour eviter statique numerique.

NAT-8 - Rattachement source live
Faire reagir l'artefact a didgeridoo, gong, voix, attaque, souffle ou grave.
Utile pour l'integrer au live.

NAT-9 - Fonction rythmique
Utiliser l'artefact comme micro-pulse, accent, rupture, tremblement ou preparation de retour.
Utile si l'artefact devient pression rythmique.

NAT-10 - Masquage choisi / fusion
Fondre l'artefact dans halo, queue, bas-medium, souffle ou densite.
Utile si l'artefact ne doit pas etre identifiable.
```

### 11.45. Niveaux de naturalisation

```text
NAT-L0 - Non naturalise
Artefact reconnaissable comme outil numerique.
Risque PA-X.

NAT-L1 - Place dans l'espace
Artefact encore identifiable, mais situe dans un monde commun.

NAT-L2 - Matiere plausible
Artefact entendu comme souffle, friction, metal, cavite, poussiere ou rupture.

NAT-L3 - Source hybride
Artefact relie a didgeridoo, gong, voix, tube, bouche, membrane ou espace.

NAT-L4 - Fonction musicale dominante
La fonction prend le dessus : rythme, tension, retour, suspension, pression, transgression.

NAT-LX - Exception explicite
Artefact numerique reconnaissable accepte volontairement comme exception.
```

### 11.46. Automatisations utiles pour naturalisation

```text
NAT-A1 - Detection risque PA-X
Identifier brillance numerique, glitch trop net, pitch artefact, grain outil, stutter EDM.

NAT-A2 - Routage de naturalisation
Envoyer automatiquement vers espace commun, resonateur, cavite, filtre, saturation ou reverb courte.

NAT-A3 - Analyse de source live
Choisir une naturalisation selon source active : didgeridoo, gong, voix, sub, attaque.

NAT-A4 - Controle de densite
Plus la texture est dense, plus l'artefact doit etre court, filtre, spatialise ou fusionne.

NAT-A5 - Protection brillance/froid
Reduire aigus numeriques, durete, sibilance non voulue, lissage plugin.

NAT-A6 - Humanisation physique
Ajouter micro-instabilite, frottement, damping, variation de queue ou mouvement.

NAT-A7 - Scene override
Permettre un artefact plus reconnaissable si decision explicite.
```

### 11.47. Controles live utiles pour naturalisation

```text
LIVE-NAT-1 - Mode de naturalisation
Off / Espace / Cavite / Resonance / Souffle / Friction / Source live / Rythme / Libre.

LIVE-NAT-2 - Source d'ancrage
Didgeridoo / Gong / Voix / Salle / Sub / Master / Aucun.

LIVE-NAT-3 - Degre
Visible / Ambigu / Naturalise / Fusionne / Exception.

LIVE-NAT-4 - Matiere cible
Air / Metal / Tube / Peau / Bouche / Cavite / Poussiere / Rugosite.

LIVE-NAT-5 - Risque PA-X
Normal / Surveiller / Bloquer / Autoriser explicitement.
```

### 11.48. Reponse proposee pour REVQ-6

```text
Les artefacts numeriques peuvent etre acceptes s'ils sont naturalises.

La naturalisation peut passer par :
espace commun, convolution/empreinte, cavite, resonateurs, source-filter,
saturation-friction, granularite organique, modulation lente, source live,
ou fonction rythmique.

Le but n'est pas de cacher tous les artefacts,
mais de leur donner matiere, cause, espace, fonction ou relation au live.

Par defaut, un artefact reconnaissable comme outil numerique doit etre corrige,
naturalise ou bloque.

Une exception PA-X reste possible si elle est explicitement decidee.

Je veux un controle live de naturalisation :
Off / Espace / Cavite / Resonance / Souffle / Friction / Source live / Rythme / Libre.
```

### 11.49. Points a demander a l'utilisateur

Pour transformer ces propositions en arbitrage, il reste a confirmer :

```text
E4-Q1 - Artefacts acceptables
Valides-tu que glitch, grain, bitcrush, stutter, spectral, pitch, time-stretch et bruit numerique soient envisageables sous naturalisation ?

E4-Q2 - Naturalisation principale
Quelles familles te semblent les plus Vesperare : espace, cavite, resonance, souffle, friction, source live, rythme ?

E4-Q3 - Artefact visible
Un artefact peut-il rester perceptible si sa fonction est forte, ou doit-il presque toujours etre absorbe ?

E4-Q4 - Source live
Veux-tu que didgeridoo/gong/voix puissent servir d'ancrage automatique pour naturaliser les artefacts ?

E4-Q5 - Controle live
Le controle Off / Espace / Cavite / Resonance / Souffle / Friction / Source live / Rythme / Libre est-il bon ?

E4-Q6 - Exception PA-X
Un artefact numerique volontairement reconnaissable doit-il rester possible comme exception explicite ?
```

### 11.50. Bloc E5 - REVQ-7

Statut :

Propositions de reponse a valider par l'utilisateur.
Ne pas encore considerer comme arbitrage definitif.

Question :

```text
REVQ-7 - Halo lock
Le controle doit-il etre simple on/off, lock anti-automation,
niveau de priorite, ou plusieurs modes ?
```

### 11.51. Recherche et principe pour REVQ-7

Les references sur automation, controle supervise et live indiquent un principe utile :

- une automation doit pouvoir etre suspendue ou reprise ;
- le geste humain doit pouvoir reprendre la main sur un choix artistique ;
- les protections critiques doivent rester au-dessus des choix expressifs ;
- l'etat du systeme doit etre lisible pour eviter les surprises.

Application Vesperare :

```text
Le halo lock ne doit pas etre un simple bypass.
C'est un systeme de priorites entre choix live, automation artistique,
automation de mix, protections critiques et securite sonore.
```

### 11.52. Definition fonctionnelle du halo

Dans ce bloc, "halo" designe toute matiere persistante qui peut entourer, prolonger ou lier les sons :

- queue de reverb ;
- champ spectral ;
- freeze ;
- shimmer naturalise ;
- resonance ;
- fond spatial ;
- souffle long ;
- queue de gong ;
- voix traitee comme champ ;
- espace commun audible ;
- matiere stable longue.

Ce n'est donc pas seulement une reverb.

### 11.53. Modes de controle halo proposes

```text
HALO-M0 - Auto
Le systeme gere le halo selon scene, densite, grave, attaques, salle et protections.
Mode par defaut.

HALO-M1 - Lock
Le halo present est maintenu contre les automations artistiques.
Les protections critiques peuvent encore filtrer, duck-er ou reduire si necessaire.

HALO-M2 - Force
Le halo est impose ou renforce comme decision live.
Les protections critiques restent prioritaires, mais le systeme doit conserver autant que possible la fonction de halo.

HALO-M3 - Cut
Le halo non essentiel est retire immediatement ou rapidement.
Utile pour impact, retour, nudite, contraste, proximite ou clarification.

HALO-M4 - Momentary
Maintien ou coupe temporaire tant que le controle est tenu.
Utile pour jeu live.

HALO-M5 - Safe force
Le halo est force, mais seulement dans des bandes/queues non dangereuses.
Utile pour garder l'intention sans boue, feedback ou perte du sub.

HALO-M6 - Emergency protect
Etat automatique de securite : reduction forte ou coupure si feedback, clipping, boue grave ou danger PA.
Doit etre rare, visible, et sortir proprement.
```

### 11.54. Niveaux de priorite

```text
HP-0 - Securite critique
Clipping, feedback, surcharge systeme, danger PA, larsen, headroom critique.
Priorite absolue.

HP-1 - Protection mix vitale
Sub illisible, boue grave, masquage total du didgeridoo/voix/attaque, resonances salle dangereuses.
Peut reduire le halo meme s'il est lock/force, mais de facon minimale et lisible.

HP-2 - Choix live explicite
Force, Lock, Cut, Momentary, Safe force.
Doit battre les automations artistiques et les scenes ordinaires.

HP-3 - Scene / passage
Regles preparees pour suspension, retour, peak, drop, transgression, proximite, immersion.

HP-4 - Automation musicale adaptative
Reactions a energie, densite, attaques, grave, source live, forme.

HP-5 - Socle pro par defaut
Coherence, espace commun, correction douce, integration.
```

Regle centrale :

```text
Le choix live gagne contre l'automation artistique.
La protection critique gagne contre le choix live,
mais doit alterer le moins possible l'intention musicale.
```

### 11.55. Matrice de conflits

```text
CONFL-H1 - Lock vs densite haute
Le lock maintient le halo.
Le systeme peut reduire bandes masquees, raccourcir queue ou deplacer spectralement.
Il ne doit pas supprimer le halo sans raison critique.

CONFL-H2 - Lock vs attaque principale
L'attaque reste lisible.
Le halo peut etre ducke brievement, mais revient ensuite.

CONFL-H3 - Lock vs grave charge
Le vrai sub et le didgeridoo/gong grave restent prioritaires.
Le halo peut perdre son bas, garder air/partiels/bas-mediums controle.

CONFL-H4 - Force vs feedback/clipping
La securite gagne.
Le systeme reduit ou coupe la zone dangereuse, et signale que le force est bride.

CONFL-H5 - Cut vs scene de suspension
Le cut live gagne.
La scene doit pouvoir perdre son halo si le musicien le decide.

CONFL-H6 - Automation veut retirer halo voulu
Lock/Force empechent le retrait.
L'automation peut seulement proposer une reduction ou appliquer une protection critique.

CONFL-H7 - Freeze/shimmer lock
Un freeze ou shimmer locke suit les memes priorites : musical d'abord, securite au-dessus.

CONFL-H8 - Salle deja floue
Le lock peut conserver la fonction de halo, mais le systeme doit privilegier filtrage, early/proximite ou reduction de queue tardive.
```

### 11.56. Automatisations autorisees sous lock

Meme en lock, certaines actions restent autorisees si elles ne trahissent pas la fonction du halo :

```text
LOCK-A1 - Filtrage de securite
Retirer bandes dangereuses, feedback, bas excessif, brillance dure.

LOCK-A2 - Ducking court
Baisser temporairement pour laisser passer attaques, voix, didgeridoo ou sub.

LOCK-A3 - Deplacement spectral
Garder le halo mais hors de la zone qui masque.

LOCK-A4 - Reduction de decay
Raccourcir une queue seulement si densite/salle deviennent problematiques.

LOCK-A5 - Conversion de mode
Transformer grande queue en halo plus court, early reflections, air, partiels ou bas-medium controle.

LOCK-A6 - Alert
Indiquer qu'un lock/force est bride par protection.
```

### 11.57. Ce qui doit rester sous la main

```text
LIVE-HALO-1 - Mode halo
Auto / Lock / Force / Cut / Momentary / Safe force.

LIVE-HALO-2 - Cible
Global / reverb commune / freeze / shimmer / gong / didgeridoo / voix / artefact / grave.

LIVE-HALO-3 - Intensite
Faible / normale / forte / extreme.

LIVE-HALO-4 - Bande prioritaire
Air / partiels / mid / bas-medium / grave controle / full.

LIVE-HALO-5 - Release
Retour auto / fade / cut / aspiration / contraction / drop.

LIVE-HALO-6 - Priorite
Decoratif / fonctionnel / structurel / intouchable sauf securite.
```

### 11.58. Reponse proposee pour REVQ-7

```text
Je veux plusieurs modes de halo lock, pas un simple on/off.

Le controle principal doit etre :
Auto / Lock / Force / Cut / Momentary / Safe force.

Lock doit bloquer les automations artistiques qui retireraient le halo voulu.
Force doit imposer ou renforcer un halo decide.
Cut doit retirer le halo pour contraste, retour, proximite ou impact.

Les protections critiques de mix/PA restent prioritaires :
feedback, clipping, boue grave, perte du sub, masquage total, resonances salle.

Mais ces protections doivent alterer le moins possible l'intention musicale :
filtrer, duck-er, deplacer ou convertir le halo avant de le couper.
```

### 11.59. Points a demander a l'utilisateur

Pour transformer ces propositions en arbitrage, il reste a confirmer :

```text
E5-Q1 - Modes
Valides-tu Auto / Lock / Force / Cut / Momentary / Safe force ?

E5-Q2 - Priorite securite
Valides-tu que securite critique et protections mix vitales puissent passer au-dessus d'un lock/force ?

E5-Q3 - Minimal alteration
Valides-tu que le systeme doit filtrer/deplacer/ducker avant de couper un halo voulu ?

E5-Q4 - Cibles
Le halo lock doit-il pouvoir cibler global, freeze, shimmer, gong, didgeridoo, voix, artefact, grave ?

E5-Q5 - Priorite de halo
Veux-tu des niveaux decoratif / fonctionnel / structurel / intouchable sauf securite ?

E5-Q6 - Signalisation
Veux-tu que le systeme indique quand il bride un lock/force pour raison de protection ?
```

### 11.60. Bloc E6 - REVQ-8

Statut :

Propositions de reponse a valider par l'utilisateur.
Ne pas encore considerer comme arbitrage definitif.

Question :

```text
REVQ-8 - Espace long stable
Quelles conditions rendent acceptable une matiere de reverb stable longtemps ?
```

### 11.61. Recherche et principe pour REVQ-8

Les recherches sur drone, ambient, acousmatique et ecoute longue confirment un point utile :

- une matiere stable n'est pas forcement pauvre ;
- la stabilite peut deplacer l'attention vers micro-variations, battements, partiels, espace, corps, temps, seuils perceptifs ;
- le risque n'est pas la duree en soi ;
- le risque est l'absence de decision, de fonction, de controle ou de transformation perceptible.

Application Vesperare :

```text
Un espace long stable est acceptable s'il est decide.
Il peut exister longtemps sans action visible ni source claire.
Il doit seulement garder une raison musicale, perceptive ou formelle.
```

Lien avec Bloc B :

```text
Danger = derive non decidee ou non fonctionnelle.
Pas danger = etat decide, assume, situe dans la forme.
```

### 11.62. Fonctions possibles d'un espace long stable

```text
LONG-1 - Suspension decidee
Retirer le corps ou le pulse pendant longtemps sans perdre l'intention.

LONG-2 - Memoire de scene
Garder trace d'un gong, didgeridoo, voix, motif, grave ou retour passe.

LONG-3 - Pression latente
Maintenir une pression sans attaque explicite : air, sub controle, souffle, tension.

LONG-4 - Espace d'attente
Installer l'attente d'un retour, d'une contraction, d'un impact ou d'une resolution.

LONG-5 - Matiere d'immersion
Envelopper l'auditeur, sans forcement ajouter rythme ou evenement.

LONG-6 - Loupe perceptive
Faire entendre partiels, battements, microtonalite, grain, rugosite, respiration.

LONG-7 - Retrait radical
Assumer une perte longue du corps club si c'est decide.

LONG-8 - Fond de transformation
Laisser une matiere lente pendant que d'autres fonctions evoluent au-dessus ou au-dessous.

LONG-9 - Scene de seuil
Travailler la limite entre presence et absence, proche et lointain, corps et espace.

LONG-10 - Transgression lente
Masse, immensite, nudite, vide, dissonance ou espace trop grand, mais assumee.
```

### 11.63. Conditions d'acceptabilite

```text
LNG-C1 - Decision explicite
L'espace long doit venir d'un mode, scene, geste, lock, force ou macro identifiable.

LNG-C2 - Fonction declaree
Suspension, memoire, pression, immersion, attente, transgression, retrait, resolution.

LNG-C3 - Controle de sortie
Il doit exister une sortie : cut, fade, contraction, retour, impact, release, aspiration.

LNG-C4 - Compatibilite mix
Pas de masquage non decide du sub, didgeridoo, voix, attaques ou gong.

LNG-C5 - Surveillance du grave
Le grave long doit etre trace/corps/pression decidee, pas boue automatique.

LNG-C6 - Micro-variation ou stabilite assumee
La matiere peut evoluer lentement, ou rester presque fixe si c'est l'intention.

LNG-C7 - Relation a la forme
Meme sans source claire, elle doit avoir un role dans l'avant/apres du passage.

LNG-C8 - Possibilite de silence relatif
Un espace long peut etre tres vide, si le vide est decide.

LNG-C9 - Non-decor par defaut
Si rien ne justifie l'espace long, le systeme doit le signaler ou le reduire.

LNG-C10 - Override live
Le musicien doit pouvoir maintenir un espace long contre une automation ordinaire.
```

### 11.64. Typologie des espaces longs

```text
LSP-1 - Long proche
Son proche, peu de queue, micro-espace, presence physique.
Risque : son sec hors monde si mal integre.

LSP-2 - Long immersif
Enveloppement, largeur, profondeur, queue diffuse.
Risque : flou ambient si non decide.

LSP-3 - Long grave latent
Pression lente, souffle, sub controle, bas-mediums.
Risque : boue, fatigue, perte de headroom.

LSP-4 - Long spectral
Partiels, battements, microtensions, metal, voix spectrale.
Risque : abstraction froide si sans fonction.

LSP-5 - Long de source
Queue ou trace de gong, didgeridoo, voix, peau, friction.
Risque : noyer la source live ou la figer.

LSP-6 - Long freeze
Matiere gelee : reverb, spectre, voix, gong, souffle, artefact.
Risque : nappe automatique.

LSP-7 - Long vide
Peu d'information, attente, espace, silence relatif.
Risque : perte non decidee de tension.

LSP-8 - Long transgressif
Immense, lourd, rugueux, dissonant, nu, saturant, trop proche ou trop loin.
Risque : fatigue ou effet spectaculaire gratuit.
```

### 11.65. Automatisations utiles pour espaces longs

```text
LONG-A1 - Drift lent
Micro-variation de filtre, densite, espace, partiels ou modulation.

LONG-A2 - Watchdog de masquage
Surveiller didgeridoo, voix, attaques, sub et gong.

LONG-A3 - Watchdog de derive ambient
Signaler si l'espace long n'a plus fonction, memoire, pression, tension ou decision active.

LONG-A4 - Gestion fatigue/brillance
Limiter aigus persistants, sibilance, shimmer, durete, resonances.

LONG-A5 - Gestion grave long
High-pass dynamique, ducking, decay adapte, room-mode guard.

LONG-A6 - Memoire de retour
Garder ou preparer un indice de retour : contraction, silence, pulse, grave, impact, voix, didgeridoo.

LONG-A7 - Sortie preparee
Preparer fade, cut, contraction, release, retour du corps, resolution ou faux retour.

LONG-A8 - Scene timer non autoritaire
Indiquer la duree et les risques sans couper automatiquement si l'etat est lock/force.
```

### 11.66. Controles live utiles pour espaces longs

```text
LIVE-LONG-1 - Mode long
Off / Proche / Immersif / Grave latent / Spectral / Source / Freeze / Vide / Transgressif.

LIVE-LONG-2 - Fonction
Suspension / Memoire / Pression / Attente / Immersion / Retrait / Transgression / Resolution.

LIVE-LONG-3 - Duree
Moment / section / long etat / indefini.

LIVE-LONG-4 - Stabilite
Fixe / derive lente / respiration / degradation / densification.

LIVE-LONG-5 - Corps
Corps present / corps latent / corps retire / retour prepare.

LIVE-LONG-6 - Sortie
Cut / fade / contraction / impact / retour grave / retour pulse / silence / faux retour.

LIVE-LONG-7 - Lock
Auto / Lock / Force / Safe force / Cut.
```

### 11.67. Reponse proposee pour REVQ-8

```text
Un espace long stable est acceptable s'il est decide.

Il n'a pas besoin d'etre toujours lie a une action visible, a une source claire
ou a une progression evidente.

Il doit seulement garder une fonction :
suspension, memoire, pression latente, attente, immersion, loupe perceptive,
retrait radical, transformation, seuil ou transgression.

Le probleme n'est pas la duree.
Le probleme est l'espace long non decide, decoratif par defaut,
ou qui masque le sub, le didgeridoo, la voix, les attaques ou la forme.

Je veux garder sous la main un controle de type :
Off / Proche / Immersif / Grave latent / Spectral / Source / Freeze / Vide / Transgressif.

Le systeme peut signaler les risques de derive ou de masquage,
mais il ne doit pas couper automatiquement un espace long que j'ai decide,
sauf protection critique.
```

### 11.68. Points a demander a l'utilisateur

Pour transformer ces propositions en arbitrage, il reste a confirmer :

```text
E6-Q1 - Espace long decide
Valides-tu qu'un espace long stable soit acceptable des qu'il est decide et fonctionnel ?

E6-Q2 - Fonction minimale
Les fonctions suspension / memoire / pression / attente / immersion / retrait / transgression te conviennent-elles ?

E6-Q3 - Long sans source claire
Acceptes-tu qu'un espace long existe sans source claire si sa fonction est forte ?

E6-Q4 - Controle live
Le controle Off / Proche / Immersif / Grave latent / Spectral / Source / Freeze / Vide / Transgressif est-il bon ?

E6-Q5 - Watchdog
Veux-tu que le systeme signale les risques de derive ambient/masquage sans couper automatiquement ?

E6-Q6 - Corps retire
Valides-tu explicitement que le corps club puisse etre retire longtemps si c'est decide et que le retour reste possible ?
```

## 12. Consequences pour prochaines fiches

### 12.1. A reporter dans CARACTERISATION_DETAILLEE_ELEMENTS future

Ajouter ou consolider :

- echelle PA-0 / PA-1 / PA-2 / PA-3 / PA-4 / PA-X ;
- definition de PA-X comme signature electronique identifiable, pas comme technique de production ;
- cas limites : reverb, freeze, shimmer, sidechain, saturation, granularite, sub, pitch, acid, voix ;
- distinction entre source acoustique reelle, source plausible, source impossible credible et effet renaturalise ;
- lien entre source-bonding, scene auditive et fonction Vesperare.
- chapitre reverb/espace reactif avec direct, premieres reflexions, queue, densite, absorption, freeze, shimmer et halo.
- socle mix/reverb professionnel non arbitraire ;
- mesure de salle avec un seul micro deplace a plusieurs positions ;
- distinction entre proximite enrichie, immersion controlee, taille augmentee, fusion de monde et separation de plans.
- niveaux de reactivite REACT-0 a REACT-4 ;
- sources d'analyse AN-REV pour energie, attaques, grave, densite, brillance, didgeridoo, gong, voix, salle et forme ;
- modes RCT pour espace stable, respiration, clarification d'attaques, grave prioritaire, didgeridoo, gong, voix, salle, geste dub et forme ;
- zones graves GRZ et modes GRV pour reverbs ;
- distinction vrai sub sec/protege, trace acoustique, corps grave controle, bloom grave decide et grave libre.
- familles d'artefacts ART-1 a ART-8 ;
- methodes de naturalisation NAT-1 a NAT-10 ;
- niveaux NAT-L0 a NAT-LX ;
- controles LIVE-NAT pour modes, source d'ancrage, degre, matiere cible et risque PA-X.
- modes HALO-M0 a HALO-M6 ;
- priorites HP-0 a HP-5 ;
- matrice de conflits halo/protections/automation ;
- automations autorisees sous lock ;
- controles LIVE-HALO.
- fonctions LONG-1 a LONG-10 ;
- conditions d'acceptabilite LNG-C1 a LNG-C10 ;
- typologie LSP des espaces longs ;
- automations LONG-A et controles LIVE-LONG.

### 12.2. A reporter dans BESOINS_GENERATION future

Ajouter ou consolider :

- metadonnees PA pour chaque objet genere ;
- generation de sons situes par source, cause, geste, matiere et fonction ;
- detection ou etiquetage du risque PA-X ;
- possibilite d'override live pour accepter ou bloquer un cas limite ;
- tests specifiques sur les signatures electroniques fragiles.
- metadonnees d'espace/reverb pour chaque objet traite ou genere ;
- reverb reactive comme fonction generative, pas seulement effet auxiliaire ;
- naturalisation d'artefacts par espace, cavite, queue, air, friction ou source live.
- adaptation des reverbs artificielles a la salle mesuree ou estimee ;
- automatisations de mix/reverb : grave, ducking, brillance, densite, feedback, proximite ;
- controles live separes pour choix esthetiques.
- generation d'espaces reactifs par niveaux : pro, discret, instrumental, expressif, experimental ;
- controles live de grave dans reverb : Off / Trace / Corps / Pression / Libre ;
- automatisations GREV : high-pass dynamique, ducking sub/didgeridoo, decay grave adapte, room-mode guard.
- routage de naturalisation des artefacts : espace, cavite, resonance, source-filter, saturation-friction, granularite organique, source live, fonction rythmique ;
- detection du risque PA-X sur artefacts ;
- controles live de naturalisation : Off / Espace / Cavite / Resonance / Souffle / Friction / Source live / Rythme / Libre.
- logique de priorite halo : securite critique, protection mix vitale, choix live, scene, automation musicale, socle pro ;
- implementation de modes halo Auto / Lock / Force / Cut / Momentary / Safe force ;
- signalisation quand une protection bride un choix live.
- generation/gestion d'espaces longs : proche, immersif, grave latent, spectral, source, freeze, vide, transgressif ;
- watchdogs de derive ambient, masquage, grave long, fatigue/brillance ;
- controles de sortie : cut, fade, contraction, impact, retour grave, retour pulse, silence, faux retour.

### 12.3. A tester plus tard

Tests necessaires :

- reverb enorme plausible vs reverb plugin decorative ;
- freeze/shimmer naturalise vs shimmer reconnaissable ;
- sidechain respiration/pression vs pompe EDM ;
- sub pur modele vs sub synthetique reconnaissable ;
- granularite matiere vs granularite outil ;
- acid naturalise vs squelch 303 ;
- voix integree vs voix nue ;
- correction invisible vs auto-tune audible.
- espace commun minimal sur didgeridoo + generation ;
- espace reactif au gong ;
- halo lock vs protections de mix ;
- reverb grave controlee vs brouillage sub.
- mesure multi-positions avec un seul micro ;
- salle seche vs salle reverberante ;
- proximite enrichie vs son sec hors monde ;
- immersion controlee vs flou ambient ;
- reverb comme enrichissement de partiels, souffle, friction et taille percue.
- espace reactif a l'energie vs espace stable ;
- ducking de queues par attaques vs perte de halo ;
- espace didgeridoo centre ;
- extension de gong par queue/freeze/metal ;
- sub sec/protege vs trace acoustique ;
- bloom grave decide vs brouillage sub ;
- controle Off / Trace / Corps / Pression / Libre.
- freeze de gong / didgeridoo / voix / souffle / reverb globale / artefact ;
- freeze grave protege vs bloom dangereux ;
- controles Arm / Capture / Hold / Release ;
- shimmer partiels / air / cavite / microtension / sombre ;
- shimmer classique reconnaissable comme risque PA-X.
- glitch naturalise vs glitch outil ;
- granularite souffle/friction vs granularite plugin ;
- artefact de pitch naturalise vs auto-tune/pitch effect ;
- time-stretch souffle/queue vs time-stretch numerique ;
- naturalisation par didgeridoo/gong/voix ;
- controle Off / Espace / Cavite / Resonance / Souffle / Friction / Source live / Rythme / Libre.
- lock halo vs densite haute ;
- lock halo vs attaque principale ;
- lock halo vs grave charge ;
- force halo vs feedback/clipping ;
- cut halo vs scene de suspension ;
- safe force vs reverb grave dangereuse.
- espace long decide vs derive ambient ;
- long proche vs son sec hors monde ;
- long immersif vs flou ;
- long grave latent vs boue/fatigue ;
- long spectral vs abstraction froide ;
- long vide vs perte non decidee de tension ;
- corps retire longtemps vs retour prepare.

## 13. Decision

Blocs A, B, C et D partiellement arbitres.

Bloc E ouvert : reverbs / espace reactif / naturalisation des effets.
REVQ-1 est developpee et partiellement tranchee.
REVQ-2 et REVQ-3 sont preparees sous forme de propositions a valider.
REVQ-4 et REVQ-5 sont preparees sous forme de propositions a valider.
REVQ-6 est preparee sous forme de propositions a valider.
REVQ-7 est preparee sous forme de propositions a valider.
REVQ-8 est preparee sous forme de propositions a valider.

Prochaine action :

```text
Faire valider ou corriger E2-Q1 a E2-Q6, E3-Q1 a E3-Q6, E4-Q1 a E4-Q6 et E5-Q1 a E5-Q6,
ainsi que E6-Q1 a E6-Q6, puis consolider le bloc reverb/espace.
```

Mais avant architecture technique, il faudra convertir ces arbitrages en scenarios de test situes.
