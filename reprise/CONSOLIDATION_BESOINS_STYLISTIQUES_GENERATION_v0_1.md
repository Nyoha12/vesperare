# CONSOLIDATION BESOINS STYLISTIQUES + GENERATION v0.1

Projet : Vesperare
Statut : audit critique interne
Base :
- BESOINS_STYLISTIQUES_v0.1
- BESOINS_GENERATION_v0.1

Ce document ne passe pas aux besoins de performance live.

Il sert a identifier ce qui est deja trop fragile, trop general, insuffisamment caracterise ou potentiellement conflictuel dans les besoins stylistiques et les besoins de generation.

Objectif : transformer les zones floues en besoins de precision, avant de reecrire les fichiers en versions consolidees.

## 1. Principe

Une tension entre deux besoins n'est pas forcement une contradiction.

Elle peut indiquer :

- un besoin de definir des regimes ;
- un besoin de definir des degres ;
- un besoin de definir des conditions d'activation ;
- un besoin de distinguer fonction stylistique, parametre technique et comportement live ;
- un besoin de reporter certains points vers les futurs besoins de performance live.

## 2. Diagnostic general

Les deux fichiers sont globalement dans la bonne direction, mais ils restent fragiles sur quatre points.

### 2.1. Trop de notions sont encore multi-niveaux

Exemples :

- techno ;
- polytexture ;
- naturalisation ;
- generation melodique ;
- pression ;
- instrument live ;
- configuration.

Ces notions designent parfois une intention stylistique, parfois une capacite generative, parfois un parametre, parfois un futur comportement live.

Besoin de precision :

```text
Pour chaque notion importante, distinguer :
1. fonction stylistique ;
2. manifestation musicale ;
3. parametres qui la determinent ;
4. risques ;
5. implications live a reporter plus tard.
```

### 2.2. Les statuts "confirme" ne disent pas encore "sous quelle forme"

Exemple : la polytexture est confirmee comme besoin stylistique, mais sa presence, son intensite, ses formes et ses limites restent a caracteriser.

Un besoin confirme signifie seulement :

```text
cela appartient au langage de Vesperare.
```

Il ne signifie pas encore :

```text
cela doit etre present tout le temps ;
cela doit etre genere de cette maniere ;
cela doit devenir un module ;
cela doit etre accessible comme controle live direct.
```

### 2.3. Certains garde-fous sont plus precis que les besoins positifs

Les fichiers savent parfois mieux dire ce qu'il faut eviter que ce qu'il faut atteindre.

Exemples :

- ne pas faire de melodic techno ;
- ne pas faire de techno standard avec instruments ajoutes ;
- ne pas faire d'ambient decoratif ;
- ne pas produire une surcharge medium ;
- ne pas faire de random decoratif.

Besoin de precision :

```text
Pour chaque refus fort, formuler le positif correspondant.
```

Exemple :

```text
Refus : ne pas faire de melodic techno.
Positif a definir : quel type de generation melodique est acceptable et utile pour Vesperare ?
```

### 2.4. Les futurs besoins live commencent deja a apparaitre

Certains points sont necessaires, mais trop tot pour etre resolus ici :

- assigner ;
- cumuler ;
- croiser ;
- reprendre la main ;
- declencher ;
- retirer ;
- modes de reaction au live ;
- configurations accessibles ;
- priorites de controle.

Ils doivent etre notes comme implications futures, pas encore transformes en architecture ou interface.

## 3. Fragilites principales

### FP-01 - "Techno comme socle" reste a graduer

Besoins concernes : BS-01, BS-02, BS-07, BG-02.

Fragilite :

Le socle techno est confirme, mais le document ne distingue pas encore plusieurs degres de presence techno.

Tension :

- la techno doit rester perceptible ;
- aucun besoin stylistique n'est permanent par defaut ;
- certaines scenes peuvent peut-etre s'eloigner temporairement de la techno explicite.

Besoin de precision :

Definir des regimes de presence techno, par exemple :

- techno explicite ;
- techno reincarnee ;
- techno latente ;
- techno suspendue ;
- retour techno.

Risque si non precise :

- soit tout devient trop techno standard ;
- soit le projet perd son socle de club.

Implication live future :

Il faudra probablement pouvoir passer d'un regime a l'autre, mais ce n'est pas encore a specifier.

### FP-02 - Reincarnation acoustique vs sons electroniques justifies

Besoins concernes : BS-02, BS-06, BG-01.

Fragilite :

Les fichiers affirment a la fois :

- eviter les sons electroniques standards comme identite principale ;
- accepter des sons franchement electroniques s'ils servent mieux la fonction.

Ce n'est pas contradictoire, mais il manque une hierarchie.

Besoin de precision :

Definir les conditions d'acceptation d'un son electronique :

- quand il sert mieux la fonction techno ;
- quand il renforce le corps ;
- quand il clarifie l'impact ;
- quand il dialogue avec les supports acoustiques ;
- quand il evite une naturalisation forcee.

Risque si non precise :

- naturalisation dogmatique ;
- ou retour involontaire a une banque techno standard.

### FP-03 - Pression, intensite, corps : trop peu caracterises

Besoins concernes : BS-01, BS-03, BG-02, BG-08, BG-09.

Fragilite :

"Corps", "pression", "intensite", "masse" et "puissance" sont centraux, mais pas assez differencies.

Besoin de precision :

Distinguer plusieurs types de pression :

- pression grave ;
- pression rythmique ;
- pression spectrale ;
- pression de densite ;
- pression d'attente ;
- pression de masse ;
- pression de rarete ;
- pression de proximite ;
- pression par resolution differee.

Risque si non precise :

- remplir le spectre par reflexe ;
- confondre intensite et volume ;
- perdre le confort sonore ;
- rendre la generation trop lourde.

### FP-04 - Hypnose vs variation vs complexite

Besoins concernes : BS-04, BS-09, BG-02, BG-05, BG-06.

Fragilite :

Les documents veulent :

- repetition reconnaissable ;
- variation vivante ;
- polytexture ;
- densite articulee ;
- absence de random decoratif.

La tension est bonne, mais elle demande une grammaire.

Besoin de precision :

Definir des seuils ou regimes :

- motif stable ;
- motif legerement mutant ;
- motif densifie ;
- motif fragmente ;
- motif polytextural ;
- retour au motif ;
- perte volontaire du motif.

Risque si non precise :

- boucle morte ;
- ou variation permanente qui detruit l'hypnose.

### FP-05 - Contour sculpte vs richesse acoustique

Besoins concernes : BS-05, BS-06, BG-01, BG-04, BG-09.

Fragilite :

Le projet veut des sons precis, dessines, lisibles, mais aussi des supports acoustiques riches, resonants, vivants.

Tension :

- contour net ;
- queue maitrisee ;
- richesse de partiels ;
- resonance ;
- physicalite.

Besoin de precision :

Definir comment un son peut etre riche sans devenir flou :

- attaque lisible ;
- queue bornee ;
- zone spectrale lisible ;
- fonction claire ;
- role dans la densite ;
- priorite par rapport aux autres couches.

Risque si non precise :

- secheresse sterile ;
- ou masse resonante ingouvernable.

### FP-06 - Generation melodique encore trop ouverte

Besoins concernes : BS-07, BG-03, BS-10.

Fragilite :

La generation melodique est confirmee comme capacite, mais pas encore comme regime stylistique precis.

Le document liste plusieurs possibilites :

- basse ;
- fragment ;
- accent-melody ;
- centre spectral ;
- voix ;
- ligne acid naturalisee ;
- relation de partiels ;
- ligne reconnaissable.

Besoin de precision :

Distinguer des regimes de melodie :

- melodie corporelle grave ;
- melodie d'accents ;
- melodie de timbre ;
- melodie de partiels ;
- fragment vocal ;
- ligne acid naturalisee ;
- motif melodique reconnaissable mais rare ;
- melodie absente.

Risque si non precise :

- importer melodic techno ;
- importer chanson ;
- rendre le systeme trop tonal ;
- ou refuser inutilement des lignes utiles.

### FP-07 - Polytexture confirmee mais pas encore caracterisee

Besoins concernes : BS-09, BG-06, BG-02, BG-09.

Fragilite :

La polytexture est confirmee, mais ses formes possibles sont encore trop globales.

Besoin de precision :

Caracteriser la polytexture par dimensions :

- nombre de couches ;
- independance des couches ;
- densite ;
- repartition spectrale ;
- types d'attaques ;
- durees et queues ;
- accent principal ;
- couches secondaires ;
- relation au corps ;
- relation au live ;
- degre d'interlocking ;
- role stylistique : densification, transition, micro-pulsation, enrichissement, contrepoint.

Risque si non precise :

- polytexture permanente ;
- demonstration de complexite ;
- surcharge medium ;
- perte du cadre techno.

### FP-08 - Instruments live : presence non fixe vs reaction generative

Besoins concernes : BS-08, BG-07.

Fragilite :

Les documents veulent eviter que les instruments soient reduits a des entrees audio, mais BG-07 commence deja a parler d'ajuster la generation selon l'instrument live.

Tension :

- l'instrument doit rester libre ;
- le systeme peut observer ou reagir ;
- les roles ne doivent pas etre fixes ;
- certaines reactions seront utiles.

Besoin de precision :

Definir des modes de relation, sans encore concevoir l'interface :

- ignore ;
- observe sans agir ;
- laisse de la place ;
- accompagne ;
- repond ;
- contraste ;
- traite ;
- densifie autour ;
- met au centre ;
- se retire.

Risque si non precise :

- reaction automatique gadget ;
- analyse audio transformee en decision musicale ;
- instrument masque par le systeme.

Implication live future :

Ces modes deviendront probablement des besoins de performance live, mais ici on les garde comme precision conceptuelle.

### FP-09 - Configurations : notion trop large

Besoins concernes : BS-07, BG-10.

Fragilite :

"Configuration" designe actuellement trop de choses :

- sons ;
- motifs ;
- roles ;
- instruments live ;
- densites ;
- fonctions ;
- scenes ;
- relations ;
- parametres transversaux.

Besoin de precision :

Distinguer plusieurs types de configuration :

- configuration de source ;
- configuration de motif ;
- configuration de role ;
- configuration de densite ;
- configuration de relation au live ;
- configuration de scene ;
- configuration de variation ;
- configuration de garde-fou.

Risque si non precise :

- tout devient configurable donc rien n'est lisible ;
- l'idee de configuration glisse trop vite vers interface ;
- les croisements deviennent incontrolables.

### FP-10 - Motif comme couple son-fonction demande un modele minimal

Besoins concernes : BG-01, BG-04, BG-09.

Fragilite :

Le principe est solide : un motif n'est pas une note neutre. Mais il manque une structure minimale de description.

Besoin de precision :

Definir la fiche minimale d'un motif genere :

- fonction ;
- support sonore ;
- regime rythmique ;
- regime melodique eventuel ;
- contour ;
- densite ;
- duree / queue ;
- registre ;
- priorite perceptive ;
- compatibilite avec autres couches ;
- compatibilite avec live ;
- risques.

Risque si non precise :

- retour a une generation de patterns abstraits ;
- separation MIDI / son / mix ;
- perte du lien stylistique.

### FP-11 - Mix preventif vs moments de transgression

Besoins concernes : BS-03, BS-05, BG-09.

Fragilite :

Le mix preventif est necessaire, mais il pourrait devenir trop conservateur.

Tension :

- eviter fatigue, boue, masquage ;
- garder une intensite enorme ;
- autoriser des moments plus exposes, plus a nu, plus transgressifs.

Besoin de precision :

Distinguer :

- garde-fous permanents ;
- garde-fous assouplis ;
- transgression preparee ;
- transgression interdite ;
- sortie de transgression.

Risque si non precise :

- systeme trop sage ;
- ou systeme agressif et ingouvernable.

### FP-12 - Inspirations externes : fonction utile ou citation ?

Besoins concernes : BS-10, BG-03, BG-08.

Fragilite :

Les inspirations dubstep, jazz, trance, acid sont utiles, mais les documents les nomment encore par style.

Besoin de precision :

Pour chaque inspiration, transformer le style en fonctions autorisees :

- dubstep : attente, syncope, masse grave, resolution, drop rare ;
- jazz : champs de tension, finesse rythmique, ponctuation, couleur ;
- trance : suspension, expansion, peak non brutal ;
- acid : ligne vivante, torsion, filtre, variation timbrale.

Puis definir :

- ce qui est autorise ;
- ce qui est interdit ;
- ce qui est rare ;
- ce qui doit etre naturalise ;
- ce qui doit rester implicite.

Risque si non precise :

- modes stylistiques separes ;
- citations reconnaissables ;
- collage.

## 4. Matrice des tensions utiles

| Tension | Besoins concernes | Type | Besoin de precision |
|---|---|---|---|
| Techno perceptible / non permanente | BS-01, regle generale | stylistique | regimes de presence techno |
| Acoustique-naturalise / electronique justifie | BS-02, BS-06, BG-01 | support sonore | criteres d'acceptation du support |
| Corps/pression / confort sonore | BS-03, BG-09 | sensoriel + mix | types de pression et seuils |
| Hypnose / variation | BS-04, BG-05 | forme temporelle | regimes de mutation |
| Polytexture / lisibilite corporelle | BS-09, BG-06 | densite | parametres de polytexture |
| Melodie / refus melodic techno | BG-03, BS-10 | hauteur | regimes melodiques autorises |
| Instrument vivant / reaction automatique | BS-08, BG-07 | live futur | modes de relation au live |
| Configuration puissante / interface injouable | BG-10 | live futur | types de configuration |
| Mix preventif / intensite transgressive | BS-03, BS-05, BG-09 | son + risque | niveaux de garde-fou |
| Inspirations multiples / identite propre | BS-10 | style | traduction en fonctions |

## 5. Besoins de precision a creer

### BP-01 - Regimes de presence techno

Question :

```text
Sous quelles formes la techno peut-elle etre presente, latente, suspendue ou recuperee ?
```

Priorite : haute.

### BP-02 - Typologie des fonctions techno reincarnees

Question :

```text
Quelles fonctions techno sont fondamentales, optionnelles, rares ou interdites selon les scenes ?
```

Priorite : haute.

### BP-03 - Criteres de support sonore

Question :

```text
Quand un support acoustique, naturalise, hybride ou electronique est-il juste ?
```

Priorite : haute.

### BP-04 - Typologie des pressions

Question :

```text
Quels types de pression Vesperare doit-il pouvoir produire sans agression ?
```

Priorite : haute.

### BP-05 - Regimes de repetition et variation

Question :

```text
Comment une repetition reste-t-elle identifiable, vivante et hypnotique ?
```

Priorite : haute.

### BP-06 - Grammaire de polytexture

Question :

```text
Quelles formes de polytexture sont desirables, dans quels cas, avec quels parametres et quelles limites ?
```

Priorite : haute.

### BP-07 - Regimes de generation melodique

Question :

```text
Quelles formes de melodie sont compatibles avec Vesperare, et lesquelles doivent etre evitees ?
```

Priorite : haute.

### BP-08 - Fiche minimale d'un motif genere

Question :

```text
Comment decrire un motif comme couple son-fonction sans deja specifier un module technique ?
```

Priorite : moyenne/haute.

### BP-09 - Modes de relation aux instruments live

Question :

```text
Quels modes de relation au didgeridoo, gong, tambour ou voix sont musicalement souhaitables avant de parler interface ?
```

Priorite : moyenne.

Note : ce besoin touche aux futurs besoins de performance live, mais il faut le clarifier conceptuellement avant.

### BP-10 - Types de configuration generative

Question :

```text
Que veut dire exactement assignable, cumulable et croisable selon les couches : sons, motifs, roles, scenes, live, garde-fous ?
```

Priorite : moyenne/haute.

### BP-11 - Niveaux de garde-fou sonore

Question :

```text
Quels garde-fous doivent rester permanents, lesquels peuvent etre assouplis, et dans quels cas une transgression est voulue ?
```

Priorite : moyenne.

### BP-12 - Traduction des inspirations externes

Question :

```text
Comment convertir dubstep, jazz, trance, acid, Keita, voix et instruments en fonctions utiles sans modes stylistiques separes ?
```

Priorite : moyenne.

## 6. Ordre de consolidation recommande

Ne pas reecrire tout d'un coup.

Ordre propose :

1. BP-01 : regimes de presence techno.
2. BP-03 : criteres de support sonore.
3. BP-04 : types de pression.
4. BP-05 : repetition / variation / hypnose.
5. BP-06 : grammaire de polytexture.
6. BP-07 : regimes melodiques.
7. BP-08 : fiche minimale du motif genere.
8. BP-09 et BP-10 : seulement ensuite, car ils commencent a toucher au live.

## 7. Ce qu'il ne faut pas faire maintenant

- ne pas passer aux besoins de performance live ;
- ne pas definir une interface ;
- ne pas choisir de modules Max for Live ;
- ne pas transformer les questions de precision en architecture ;
- ne pas corriger les fichiers en bloc sans validation ;
- ne pas traiter les conflits comme des erreurs : ce sont souvent des tensions stylistiques a organiser.

## 8. Prochaine action proposee

Commencer par BP-01 :

```text
Regimes de presence techno
```

Pourquoi :

- c'est le socle confirme ;
- cela conditionne generation sonore, rythmique et melodique ;
- cela permet de clarifier comment un element peut etre stylistiquement central sans etre permanent ;
- cela evitera de confondre techno standard, techno reincarnee, techno latente et sortie temporaire du cadre.
