# REVERBS / ESPACE REACTIF / NATURALISATION v0.2

Projet : Vesperare
Statut : fiche active consolidee
Date : 2026-06-21

Sources de consolidation :

- REVERBS_ESPACE_REACTIF_v0_1.md
- ARBITRAGES_QUESTIONS_PRIORITAIRES_v0_1.md
- BESOINS_STYLISTIQUES_v0_3.md
- BESOINS_GENERATION_v0_3.md
- CARACTERISATION_DETAILLEE_ELEMENTS_v0_3.md
- AUDIT_WEB_CARACTERISATION_ELEMENTS_v0_1.md

## 0. Statut

Cette fiche remplace la v0.1 comme reference active pour :

```text
Reverbs / espace reactif / naturalisation des effets
```

La v0.1 reste archive de raisonnement.

Cette v0.2 integre :

- les clarifications utilisateur ;
- les resolutions RES-QCPT-1 a RES-QCPT-9 ;
- la clarification sur les mondes spatiaux combinables ;
- les corrections de compatibilite CORR-1 a CORR-10 issues de l'audit interne ;
- la suppression de toute logique de protocole d'ecoute comme etape de conception.

Cette fiche ne definit pas encore :

- architecture Max for Live ;
- routings Ableton ;
- devices ;
- plugins ;
- seuils numeriques definitifs ;
- mapping MIDI ;
- interface finale ;
- presets.

Elle definit :

- fonctions musicales ;
- decisions conceptuelles ;
- modes ;
- familles spatiales ;
- priorites ;
- automations autorisees ;
- automations interdites ;
- controles live necessaires ;
- garde-fous ;
- questions techniques futures.

## 1. Principe central

La reverb et l'espace ne sont pas des effets decoratifs.

Dans Vesperare, ils servent a :

- faire appartenir un son a un monde ;
- enrichir la perception ;
- integrer sources acoustiques, traitements et generation ;
- naturaliser des artefacts ;
- creer proximite, immensite, suspension, pression ou seuil ;
- proteger le mix ;
- prolonger didgeridoo, gong, voix, souffle ou percussion ;
- soutenir des etats longs decides ;
- rendre jouables halo, freeze, grave spatial et exceptions.

Formule :

```text
La reverb/espace sert a faire appartenir un son a un monde.
Elle peut aussi devenir matiere, tension, souffle, halo, retour, seuil,
pression ou transgression.
```

## 2. Decisions validees

### 2.1. RES-QCPT-1 - Auto-Pro

Decision :

```text
Auto-Pro est valide comme socle protecteur et coherent.
Il ne doit pas composer a la place du musicien.
```

Auto-Pro a le droit de :

- proteger le grave ;
- eviter feedback et headroom critique ;
- reduire boue de reverb ;
- laisser passer attaques importantes ;
- eviter brillance dure, sibilance ou shimmer involontaire ;
- adapter la quantite de queue a la salle ;
- reduire un masque flagrant sur didgeridoo, voix, gong ou sub ;
- maintenir un espace commun discret.

Auto-Pro n'a pas le droit de decider :

- scene ambient ;
- retour ;
- transgression ;
- perte longue du corps ;
- freeze ;
- shimmer ;
- effet dub visible ;
- monde spatial expressif ;
- coupure de halo voulu sauf danger critique.

Regle :

```text
Auto-Pro = hygiene sonore + coherence + protection.
Auto-Pro != composition automatique.
```

### 2.2. RES-QCPT-2 - Mondes spatiaux

Decision :

```text
Les mondes spatiaux sont des couches fonctionnelles combinables.
Ils ne sont pas des presets exclusifs.
```

Combinable veut dire :

```text
monde principal
+ distance
+ enveloppement
+ matiere
+ queue
+ grave
+ halo
+ reactivite
+ protections
```

Combinable ne veut pas dire :

```text
empiler plusieurs reverbs completes.
```

Regle :

```text
Le musicien ou la scene choisit le monde principal.
Auto-Pro peut adapter a l'interieur de ce monde.
Auto-Pro ne doit pas changer de monde esthetique sans autorisation.
```

### 2.3. RES-QCPT-3 - Proche / immersif

Decision :

```text
Proche et immersif sont des dimensions separees.
```

Un son peut etre :

- proche et sec ;
- proche et enrichi ;
- proche et enveloppant ;
- lointain mais peu immersif ;
- long mais pas enveloppant ;
- immense mais frontal ;
- immersif mais court.

Donc le systeme doit eviter un controle simpliste :

```text
Proche <-> Immersif
```

Il faut plutot des dimensions orthogonales :

- distance ;
- enveloppement ;
- queue ;
- matiere ;
- grave ;
- halo.

### 2.4. RES-QCPT-4 - Grave spatial

Decision :

```text
Le grave spatial suit :
Auto-Pro / Off / Trace / Corps / Pression / Bloom / Libre.
```

Auto-Pro est superviseur, pas un simple niveau.

Le vrai sub reste prioritaire.

Bloom et Libre sont des decisions fortes, jamais des etats automatiques.

### 2.5. RES-QCPT-5 - Freeze

Decision :

```text
Par defaut, un freeze est rattache a une source ou a un monde.
Exception libre possible si decidee.
```

Freeze doit eviter :

- pad ambient generique ;
- effet plugin ;
- nappe sans fonction ;
- freeze sans source, monde ou decision.

Freeze peut servir a :

- memoire ;
- support ;
- suspension ;
- loupe perceptive ;
- pression ;
- rupture ;
- naturalisation.

### 2.6. RES-QCPT-6 - Shimmer

Decision :

```text
Shimmer classique interdit par defaut.
Fonctions du shimmer recuperees autrement.
Shimmer reconnaissable seulement comme exception volontaire.
```

Fonctions recuperees :

- partiels ;
- air ;
- cavite ;
- metal ;
- microtension ;
- gong spectral ;
- voix lointaine integree ;
- bord spectral d'un espace immense.

Interdits par defaut :

- reverb angelique/cinematique reconnaissable ;
- octave-up lisse ;
- preset ambient ;
- emotion imposee ;
- brillance froide sans source.

### 2.7. RES-QCPT-7 - Naturalisation

Decision :

```text
Naturalisation prioritaire :
Source live -> Souffle/Friction -> Resonance/Cavite -> Espace commun
-> Rythme/Pression -> Fonction de scene -> Libre.
```

Correction importante :

```text
La source live est prioritaire quand elle est pertinente.
Elle n'est pas obligatoire.

Un artefact peut etre valide sans source claire s'il porte une fonction forte.
```

Fonctions fortes possibles :

- pression ;
- espace ;
- rythme ;
- retour ;
- transgression ;
- suspension ;
- monde stable ;
- seuil ;
- memoire ;
- rarete.

### 2.8. RES-QCPT-8 - Signalisation

Decision :

```text
Quand le systeme bride un choix, il doit donner une raison lisible.
```

Raisons minimales :

- grave / sub ;
- feedback / resonance salle ;
- headroom / clipping ;
- brillance dure / sibilance / shimmer involontaire ;
- attaque masquee ;
- didgeridoo masque ;
- voix masquee ou exposee sans integration ;
- gong masque ou queue dangereuse ;
- halo maintenu mais adapte ;
- halo coupe pour protection critique.

Regle :

```text
Un systeme protecteur mais opaque devient injouable.
```

### 2.9. RES-QCPT-9 - Espaces longs

Decision :

```text
Les espaces tres longs sont acceptes s'ils ont une fonction interne.
```

Fonctions internes possibles :

- suspension ;
- memoire ;
- pression ;
- attente ;
- immersion ;
- retrait du corps ;
- transgression ;
- resolution ;
- seuil ;
- vide decide ;
- decor decide ;
- monde stable ;
- loupe perceptive ;
- preparation de retour.

Regle :

```text
Vide decide, decor decide et retrait long du corps sont legitimes.
Ils ne doivent pas etre des consequences automatiques non decidees.
```

## 3. Regles de compatibilite interne

Cette section integre les corrections prioritaires de l'audit interne :

```text
CORR-1 a CORR-7.
```

Elle sert a rendre explicite qui gagne quand deux fonctions se contredisent.

### 3.1. CORR-1 - Matrice de priorites P0-P5

Priorite globale :

```text
P0 - Securite critique
Clipping, feedback, headroom dangereux, resonance salle dangereuse.

P1 - Protection mix vitale
Sub illisible, attaque principale masquee, didgeridoo/voix/gong essentiels masques.

P2 - Choix live explicite
Lock, Force, Cut, Libre, Bloom, monde principal choisi.

P3 - Scene
Modes prevus pour passage, forme, suspension, retour, transgression.

P4 - Assignation source par defaut
Didgeridoo, gong, voix, artefact, sub.

P5 - Auto-Pro ordinaire
Coherence, correction douce, integration, adaptation de salle.
```

Regle :

```text
P0 gagne toujours.
P1 gagne sauf si le choix live accepte explicitement le risque.
P2 gagne contre P3/P4/P5.
P3 gagne contre P4/P5.
P4 gagne contre P5.
P5 ne gagne jamais contre un choix artistique explicite.
```

Exception :

```text
P0 ne peut pas etre ignore.
```

### 3.2. CORR-2 - Fonction forte

Definition :

```text
Fonction forte =
role musical/perceptif identifiable dans la forme,
qui justifie la presence d'un son, d'un espace ou d'un traitement malgre son risque.
```

Criteres possibles :

- pression ;
- rythme ;
- retour ;
- suspension ;
- tension ;
- transgression ;
- memoire ;
- seuil ;
- protection ;
- integration ;
- retrait decide ;
- monde stable ;
- signal formel ;
- rarete ;
- loupe perceptive.

Regle :

```text
Si la fonction ne peut pas etre nommee, elle est faible.
```

### 3.3. CORR-3 - Protections

Protection critique :

```text
Risque de clipping, feedback, headroom dangereux,
sub destructeur, resonance salle dangereuse,
ou masquage total d'une source essentielle.
```

Protection mix vitale :

```text
Intervention necessaire pour que le systeme reste musicalement lisible :
sub, attaque, didgeridoo, voix, gong ou forme principale sont menaces.
```

Ne sont pas des protections critiques :

- gout esthetique ;
- peur du flou ;
- peur de l'ambient ;
- espace long seulement parce qu'il est long ;
- decor decide ;
- vide decide ;
- retrait du corps decide.

### 3.4. CORR-4 - Halo Lock

Regle :

```text
Halo Lock maintient la fonction du halo,
pas forcement toutes ses frequences ni toute sa forme brute.
```

Auto-Pro peut alterer un Halo Lock seulement pour :

- P0 securite critique ;
- P1 protection mix vitale.

Avant de couper :

- filtrer ;
- ducker ;
- reduire decay ;
- deplacer spectralement ;
- garder une trace ;
- reduire partiellement.

Tout bridage doit etre signale.

### 3.5. CORR-5 - Monde principal

Definition :

```text
Monde principal =
orientation spatiale dominante choisie par scene ou live,
dont la fonction doit rester perceptible apres adaptations.
```

Regle :

```text
Auto-Pro peut modifier des parametres secondaires,
mais ne doit pas supprimer la fonction principale du monde choisi.
```

Exemples :

- `Proche enrichi` doit rester proche ;
- `Immense` doit garder une sensation de grande echelle ;
- `Metal-gong` doit garder une fonction de resonance/partiels/metal ;
- `Hors-monde` doit rester une decision de seuil/transgression/retrait ;
- `Commun` doit garder la coherence entre sources.

### 3.6. CORR-6 - Assignations reversibles

Regle :

```text
Assignation par defaut = depart de securite.
Assignation par defaut != obligation stylistique.
```

Chaque source importante doit pouvoir etre :

- en defaut protege ;
- en mode scene ;
- en mode live force ;
- en mode libre avec protections critiques.

Sources concernees :

- didgeridoo ;
- gong ;
- voix ;
- artefacts ;
- sub/basse ;
- generation.

### 3.7. CORR-7 - Deux niveaux de controle live

Pour eviter la surcomplexite, distinguer :

```text
Niveau 1 - Macros jouables
Niveau 2 - Details de scene / edition / preparation
```

Macros niveau 1 :

```text
MAC-1 - Monde
MAC-2 - Proximite / distance
MAC-3 - Immersion / largeur
MAC-4 - Grave spatial
MAC-5 - Halo
MAC-6 - Freeze
MAC-7 - Naturalisation
MAC-8 - Protection / signalisation
```

Details niveau 2 :

- damping ;
- predelay ;
- early reflections ;
- diffusion ;
- bandes protegees ;
- source mapping ;
- scene mapping ;
- raisons de signalisation ;
- routings futurs ;
- seuils futurs.

### 3.8. Corrections secondaires integrees

Grave spatial peut etre pense en familles live :

```text
Clean : Auto-Pro / Off / Trace
Body : Corps / Pression
Risk : Bloom / Libre
```

Naturalisation peut etre pensee en macros live :

```text
Source
Air-friction
Cavite-resonance
Rythme-pression
Libre
```

Decor decide et vide decide sont des fonctions legitimes.

Ils ne sont pas des echecs si :

- ils sont choisis ;
- ils ont une fonction ;
- ils n'empechent pas P0 ;
- ils n'effacent pas une source essentielle sans decision.

## 4. Socle professionnel non arbitraire

Ce niveau sert a faire sonner le systeme correctement.

Il releve de :

- coherence ;
- clarte ;
- proximite ;
- profondeur ;
- gestion du grave ;
- adaptation a la salle ;
- reduction du masquage ;
- gestion du feedback ;
- headroom ;
- lisibilite didgeridoo ;
- lisibilite voix ;
- lisibilite gong ;
- lisibilite attaques.

Il peut etre automatique ou semi-automatique.

Il ne doit pas imposer une couleur esthetique.

Nom :

```text
Auto-Pro
```

## 5. Mondes spatiaux

### 4.1. Principe

Un monde spatial est une orientation fonctionnelle.

Il doit dire :

```text
Quelle fonction perceptive remplit l'espace ?
```

Il ne doit pas seulement dire :

```text
Quelle couleur de reverb ?
```

### 4.2. Mondes retenus

```text
MS-1 - Sec protege
Tres peu de queue, mais protections et integration minimale.
Ce n'est pas un son nu par defaut.

MS-2 - Proche enrichi
Source proche, presence forte, early reflections, micro-espace, corps.
Fonction : proximite sans nudite.

MS-3 - Commun
Espace discret qui fait appartenir les sources au meme monde.
Fonction : coherence PC + acoustique + generation.

MS-4 - Immersif
Enveloppement, largeur, diffusion, profondeur.
Fonction : immersion sans obligation de longue queue.

MS-5 - Immense
Grande echelle, vertige, transgression, suspension ou scene large.
Fonction : espace comme evenement ou etat fort.

MS-6 - Cavite
Tube, salle, bouche, corps, grotte, metal, volume possible ou impossible.
Fonction : donner une cause spatiale.

MS-7 - Metal/gong
Partiels, queue metallique, battements, microtensions, rugissement.
Fonction : prolonger gong ou donner une matiere resonante plausible.

MS-8 - Souffle-air
Air, respiration, chuintement, friction douce, diffusion respiratoire.
Fonction : naturaliser sans imposer une salle identifiable.

MS-9 - Hors-monde
Espace impossible, tres long, tres grand, tres vide ou instable.
Fonction : exception decidee, transgression, seuil, retrait.
```

### 4.3. Dimensions combinables

```text
SPC-D1 - Distance
Devant / proche / milieu / loin / diffus.

SPC-D2 - Enveloppement
Frontal / large / enveloppant / champ.

SPC-D3 - Matiere
Neutre / souffle-air / cavite / metal-gong / friction / hors-monde.

SPC-D4 - Queue
Courte / moyenne / longue / stable / freeze / indefinie decidee.

SPC-D5 - Grave spatial
Auto-Pro / Off / Trace / Corps / Pression / Bloom / Libre.

SPC-D6 - Halo
Off / discret / present / lock / force / cut.

SPC-D7 - Reactivite
Stable / Auto-Pro / source / scene / geste.

SPC-D8 - Protection
Headroom / feedback / grave / attaque / voix / didgeridoo / gong / brillance.
```

### 4.4. Exemples

```text
EX-SPC-1 - Proche enrichi + Metal-gong
Le son reste proche, mais la matiere de queue/reflexion a une qualite de gong.

EX-SPC-2 - Commun + Souffle-air
Les sources appartiennent au meme monde, avec une qualite d'air ou de respiration.

EX-SPC-3 - Immersif + Cavite
Enveloppement large, mais sensation de volume/tube/salle impossible.

EX-SPC-4 - Immense + Grave Trace
Espace tres large, mais sub protege ; le grave spatial vient des harmoniques.

EX-SPC-5 - Hors-monde + Halo Lock
Etat impossible ou tres long maintenu volontairement contre les automations ordinaires.
```

## 6. Assignations par defaut

Ces assignations sont des points de depart.

Elles ne doivent pas empecher les exceptions live.

```text
ASG-SPC-1 - Didgeridoo
Defaut : Proche enrichi + Commun + grave protege.
Options : Souffle-air, Cavite, Hors-monde, Metal-gong selon scene.

ASG-SPC-2 - Gong
Defaut : Metal-gong + Cavite + queue instrumentale.
Options : Immense, Pression, Bloom, Freeze, Hors-monde.

ASG-SPC-3 - Voix
Defaut : Proche enrichi + Souffle-air + Commun.
Options : Cavite, Immersif, Freeze, lointain integre.
Interdit par defaut : voix exposee sans integration dans un monde.

ASG-SPC-4 - Artefacts numeriques
Defaut : Source live si possible, sinon Cavite/Resonance/Commun.
Options : Rythme/Pression, Souffle/Friction, Hors-monde, Libre PA-X volontaire.

ASG-SPC-5 - Sub / basse
Defaut : Sec protege ou Trace.
Options : Corps, Pression, Bloom, Libre selon decision explicite.
```

## 7. Automations

### 6.1. Automations autorisees

```text
AUTO-SPC-1 - Adaptation interne
Auto-Pro ajuste decay, damping, grave, ducking, brillance, feedback et masquage
a l'interieur du monde choisi.

AUTO-SPC-2 - Source mapping
Didgeridoo, gong, voix ou artefact peuvent appeler des modificateurs par defaut.

AUTO-SPC-3 - Scene mapping
Une scene peut definir un monde principal et des modificateurs autorises.

AUTO-SPC-4 - Protection
Les protections peuvent alterer le monde minimalement sans le remplacer.
```

### 6.2. Automations interdites par defaut

```text
AUTO-SPC-X1 - Changement esthetique non demande
Passer de Commun a Immense ou Hors-monde sans choix live/scene.

AUTO-SPC-X2 - Suppression d'un halo lock
Retirer un halo voulu pour une raison non critique.

AUTO-SPC-X3 - Transformation de proximite en eloignement
Rendre une source lointaine alors que le mode Proche enrichi est choisi.

AUTO-SPC-X4 - Ajout de grave spatial massif
Activer Pression, Bloom ou Libre sans decision.
```

## 8. Reactivite de l'espace

L'espace peut reagir :

- a l'energie ;
- aux attaques ;
- a la densite ;
- au grave ;
- au didgeridoo ;
- au gong ;
- a la voix ;
- aux artefacts ;
- a la salle ;
- a la forme du passage.

Niveaux :

```text
REACT-0 - Socle pro non arbitraire
Corrections de clarte, masquage, feedback, grave, brillance, densite et salle.

REACT-1 - Reactivite musicale discrete
L'espace respire avec energie, attaques, densite ou silences.

REACT-2 - Reactivite instrumentale
L'espace suit didgeridoo, gong, voix ou percussion.

REACT-3 - Reactivite expressive frontale
L'espace devient geste audible : ouverture, fermeture, aspiration, retrait, expansion.

REACT-4 - Reactivite libre / experimentale
Espace fort, inhabituel ou instable, seulement si decide.
```

Regle :

```text
REACT-0 peut etre par defaut.
REACT-1 peut etre discret.
REACT-2 a REACT-4 doivent etre scene/live.
```

## 9. Grave spatial

Le grave dans la reverb est critique.

Il peut donner :

- pression ;
- souffle ;
- profondeur ;
- taille ;
- sensation de salle ;
- rugissement ;
- gong augmente.

Il peut detruire :

- precision du sub ;
- lisibilite du didgeridoo ;
- impact rythmique ;
- headroom ;
- clarte de la salle ;
- stabilite feedback ;
- definition du gong grave.

Hierarchie :

```text
GSP-0 - Auto-Pro
Superviseur de securite, clarte, headroom, salle, feedback, masquage.

GSP-1 - Off
Pas de grave dans la reverb, sauf traces hautes inevitables.

GSP-2 - Trace
Indices acoustiques : harmoniques, souffle, bas-medium leger, queue non sub.

GSP-3 - Corps
Poids perceptif, bas-mediums, resonance, sans vrai sub libre.

GSP-4 - Pression
Grave spatial sensible, encore surveille.

GSP-5 - Bloom
Ouverture grave exceptionnelle, scene ou geste decide.

GSP-6 - Libre
Mode de transgression explicite, avec protections critiques seulement.
```

Regles :

- le vrai sub reste prioritaire ;
- le didgeridoo grave ne doit pas etre masque automatiquement ;
- le gong peut ouvrir des exceptions ;
- bloom n'est pas un defaut ;
- libre n'est pas une erreur, c'est une decision.

## 10. Freeze

Freeze = capture/prolongation d'une source, d'un monde ou d'un etat.

Par defaut, freeze doit etre rattache a :

- source ;
- monde spatial ;
- cavite ;
- souffle ;
- metal ;
- memoire ;
- fonction.

Fonctions :

```text
FRZ-F1 - Memoire
Trace d'un gong, didgeridoo, voix, souffle, reverb ou scene.

FRZ-F2 - Support
Socle stable sous une autre action.

FRZ-F3 - Suspension
Arret du temps, seuil, longue attente.

FRZ-F4 - Loupe
Faire entendre partiels, grain, souffle, microtensions.

FRZ-F5 - Pression
Masse, grave controle, gong, souffle large.

FRZ-F6 - Rupture
Blocage volontaire, coupure du flux, etat anormal.

FRZ-F7 - Naturalisation
Transformer un artefact en matiere d'espace, cavite ou source.
```

Interdit par defaut :

- pad generique ;
- nappe automatique ;
- freeze sans fonction ;
- freeze sans decision ;
- effet plugin reconnaissable non voulu.

## 11. Shimmer

Shimmer classique interdit par defaut.

Le systeme doit recuperer les fonctions utiles sans imposer le son reconnaissable.

Fonctions autorisees :

- partiels ;
- air ;
- cavite ;
- metal ;
- microtension ;
- gong spectral ;
- voix lointaine integree ;
- bord spectral d'un espace immense.

Interdits par defaut :

- reverb angelique/cinematique reconnaissable ;
- octave-up lisse ;
- preset ambient ;
- emotion imposee ;
- brillance froide sans source.

Exception :

```text
Shimmer classique possible seulement comme PA-X volontaire.
```

## 12. Naturalisation

Naturaliser = donner a un son une cause perceptive, une matiere, un geste, un espace ou une fonction.

Ce n'est pas obligatoirement rendre realiste.

Ordre prioritaire :

```text
NAT-P1 - Source live
Didgeridoo, gong, voix, tambour, souffle, geste.

NAT-P2 - Souffle / friction
Air, respiration, peau, frottement, grain physique.

NAT-P3 - Resonance / cavite
Tube, bouche, metal, salle, corps, volume impossible.

NAT-P4 - Espace commun
Faire appartenir l'artefact au meme monde.

NAT-P5 - Rythme / pression
Rendre l'artefact corporel, utile, pulse, interlocking, pression.

NAT-P6 - Fonction de scene
Suspension, rupture, retour, seuil, transgression, rarete, memoire.

NAT-P7 - Libre / PA-X volontaire
Exception decidee.
```

Regle :

```text
La source live est prioritaire quand pertinente, pas obligatoire.
Un son peut etre accepte sans source claire s'il porte une fonction forte.
```

## 13. Halo lock

Halo = matiere persistante qui entoure, prolonge ou lie les sons.

Modes :

```text
HALO-M1 - Auto
Le systeme gere selon scene et protections.

HALO-M2 - Lock
Le halo reste present, avec adaptations minimales.

HALO-M3 - Force
Le halo est impose comme choix live fort.

HALO-M4 - Cut
Le halo est retire.

HALO-M5 - Momentary
Maintien temporaire pendant un geste.

HALO-M6 - Safe force
Force autant que possible, mais accepte protections critiques.
```

Priorites :

```text
HP-0 - Securite critique
Clipping, feedback, headroom critique.

HP-1 - Protection mix vitale
Sub illisible, boue grave, masquage total de didgeridoo/voix/attaque.

HP-2 - Choix live explicite
Force, Lock, Cut, Momentary, Safe force.

HP-3 - Scene / passage
Regles preparees pour suspension, retour, peak, drop, transgression.

HP-4 - Automation musicale adaptative
Reactions a energie, densite, attaques, grave, source live, forme.

HP-5 - Socle pro par defaut
Coherence, espace commun, correction douce, integration.
```

Regle :

```text
Le choix live gagne contre l'automation artistique.
La protection critique gagne contre le choix live,
mais doit alterer le moins possible l'intention musicale.
```

## 14. Signalisation

Le systeme doit signaler quand il bride un choix.

Raisons minimales :

```text
SIG-R1 - Grave / sub
SIG-R2 - Feedback / resonance salle
SIG-R3 - Headroom / clipping
SIG-R4 - Brillance dure / sibilance / shimmer involontaire
SIG-R5 - Attaque masquee
SIG-R6 - Didgeridoo masque
SIG-R7 - Voix masquee ou exposee sans integration
SIG-R8 - Gong masque ou queue dangereuse
SIG-R9 - Halo maintenu mais adapte
SIG-R10 - Halo coupe pour protection critique
```

Le signal peut etre discret.

Mais il doit etre lisible.

## 15. Espaces longs

Les espaces tres longs sont acceptes.

La duree n'est pas le probleme.

Le probleme est :

- espace long non decide ;
- decor automatique non voulu ;
- flou non voulu ;
- masquage ;
- absence de sortie ;
- absence de fonction.

Fonctions internes :

```text
LNG-F1 - Suspension
LNG-F2 - Memoire
LNG-F3 - Pression
LNG-F4 - Attente
LNG-F5 - Immersion
LNG-F6 - Retrait du corps
LNG-F7 - Transgression
LNG-F8 - Resolution
LNG-F9 - Seuil
LNG-F10 - Vide decide
LNG-F11 - Decor decide
LNG-F12 - Monde stable
LNG-F13 - Loupe perceptive
LNG-F14 - Preparation de retour
```

Regle :

```text
Decor decide doit rester possible.
Vide decide doit rester possible.
Absence de corps longue doit rester possible.

Mais ils doivent etre des decisions,
pas des consequences automatiques d'une reverb trop longue.
```

## 16. Salle et mesure

La salle doit etre prise en compte.

Avec un seul micro de mesure deplace a plusieurs positions, on peut obtenir :

- tendances de reponse ;
- resonances ;
- decay par bandes ;
- zones graves dangereuses ;
- duree de reverb naturelle ;
- bandes a eviter ;
- indications pour Auto-Pro.

Limites :

- cela ne modelise pas parfaitement toute la salle ;
- salle vide et salle pleine different ;
- la mesure ne doit pas piloter brutalement l'esthetique ;
- l'oreille reste necessaire en situation reelle.

Regle :

```text
Mesure = information de calibration pratique.
Mesure != methode de conception artistique.
```

## 17. Controles live necessaires

Controles generaux :

```text
LIVE-REV-1 - Monde principal
Sec protege / Proche enrichi / Commun / Immersif / Immense / Cavite / Metal-gong / Souffle-air / Hors-monde.

LIVE-REV-2 - Distance
Devant / proche / milieu / loin / diffus.

LIVE-REV-3 - Enveloppement
Frontal / large / enveloppant / champ.

LIVE-REV-4 - Queue
Courte / moyenne / longue / stable / freeze / indefinie decidee.

LIVE-REV-5 - Grave spatial
Auto-Pro / Off / Trace / Corps / Pression / Bloom / Libre.

LIVE-REV-6 - Halo
Auto / Lock / Force / Cut / Momentary / Safe force.

LIVE-REV-7 - Naturalisation
Source live / Souffle-friction / Resonance-cavite / Espace commun / Rythme-pression / Fonction de scene / Libre.

LIVE-REV-8 - Signalisation
Respecte / adapte / bride / coupe pour protection.
```

Ces controles ne sont pas encore une interface.

Ils decrivent les fonctions qui doivent etre accessibles.

## 18. Garde-fous

Risques principaux :

```text
REV-R1 - grande reverb decorative non decidee
REV-R2 - shimmer reconnaissable
REV-R3 - freeze generique
REV-R4 - queue qui masque attaque ou rythme
REV-R5 - bas de reverb qui brouille le sub
REV-R6 - brillance lisse trop electronique
REV-R7 - reverb qui efface la source live
REV-R8 - espace qui transforme tout en nappe
REV-R9 - automation qui retire un halo voulu
REV-R10 - lock de halo qui empeche une protection critique
REV-R11 - artefact numerique qui reste outil
REV-R12 - espace long non decide
REV-R13 - watchdog trop autoritaire
REV-R14 - controle live trop complexe
REV-R15 - mesure de salle transformee en pilotage esthetique brutal
```

Regle generale :

```text
Danger = derive non decidee ou non fonctionnelle.
Pas danger = etat decide, assume, situe dans la forme.
```

## 19. Hors perimetre actuel

Cette fiche ne doit pas encore definir :

- devices Max for Live ;
- structure de racks ;
- nom des pistes ;
- routings Ableton ;
- sidechains exacts ;
- seuils numeriques ;
- interface definitive ;
- mapping MIDI ;
- banque de presets.

Elle doit servir a cadrer ces choix plus tard.

## 20. Prochaine etape

Le bloc reverb/espace est maintenant assez consolide pour passer au bloc suivant :

```text
Generation sonore / motifs rythmiques et melodiques.
```

Points a traiter ensuite :

- generation de pression rythmique ;
- motifs rythmiques ;
- motifs melodiques ;
- basse/sub ;
- acid naturalisee ;
- polytexture ;
- interaction avec didgeridoo ;
- interaction avec gong ;
- interaction avec voix ;
- naturalisation de la generation ;
- controles live ;
- automations autorisees/interdites.

## 21. Resume court

```text
Vesperare a besoin d'un moteur d'espace, pas d'une simple reverb.

Ce moteur doit :
- assurer un mix coherent ;
- tenir compte de la salle ;
- integrer les sources dans un monde commun ;
- enrichir la perception ;
- reagir sans composer a la place du musicien ;
- proteger le sub, le didgeridoo, la voix, le gong et les attaques ;
- permettre freeze, shimmer detourne, naturalisation, halo lock et espaces longs ;
- donner la main sur grave, halo, monde spatial et exceptions ;
- signaler quand il bride un choix.
```
