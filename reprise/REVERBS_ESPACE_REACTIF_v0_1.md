# REVERBS / ESPACE REACTIF / NATURALISATION v0.1

Projet : Vesperare
Statut : document consolide de besoins, propositions et garde-fous
Date : 2026-06-21

Sources actives :

- ARBITRAGES_QUESTIONS_PRIORITAIRES_v0_1.md
- BESOINS_STYLISTIQUES_v0_3.md
- BESOINS_GENERATION_v0_3.md
- CARACTERISATION_DETAILLEE_ELEMENTS_v0_3.md
- AUDIT_WEB_CARACTERISATION_ELEMENTS_v0_1.md

## 0. Statut du document

Ce document consolide le bloc E :

```text
Reverbs / espace reactif / naturalisation des effets
```

Il ne definit pas encore :

- une architecture Max for Live ;
- une liste de plugins ;
- des seuils numeriques definitifs ;
- des routings Ableton ;
- une interface finale ;
- une banque de presets.

Il definit :

- les fonctions musicales attendues ;
- les criteres perceptifs ;
- les familles de reverbs et d'espaces ;
- les automatisations acceptables ;
- les controles live necessaires ;
- les garde-fous ;
- les questions de conception a trancher.

## 1. Principe central

La reverb ne doit pas etre consideree comme un simple effet decoratif.

Dans Vesperare, la reverb et l'espace peuvent devenir :

- un socle de coherence du mix ;
- un espace commun ;
- une scene auditive ;
- un enrichissement perceptif ;
- une integration virtualo-acoustique ;
- une naturalisation d'artefacts ;
- une fonction de suspension ;
- une fonction de retour ;
- une protection perceptive ;
- un prolongement instrumental ;
- un geste live ;
- une matiere longue decidee.

Formule centrale :

```text
La reverb/espace sert a faire appartenir un son a un monde.
Elle peut aussi devenir matiere, tension, souffle, halo, retour, seuil, pression ou transgression.
```

## 2. Distinction fondamentale

Il faut separer trois niveaux.

### 2.1. Socle professionnel non arbitraire

Ce niveau sert a faire sonner le systeme correctement.

Il releve de l'hygiene sonore :

- coherence ;
- clarte ;
- proximite ;
- profondeur ;
- gestion du grave ;
- adaptation a la salle ;
- reduction du masquage ;
- gestion du feedback ;
- headroom ;
- lisibilite du didgeridoo, de la voix, du gong et des attaques.

Ce niveau peut etre automatique ou semi-automatique.

Il ne doit pas imposer une couleur esthetique.

### 2.2. Comportements musicaux adaptatifs

Ce niveau fait reagir l'espace a la musique.

Il peut reagir :

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

Ce niveau peut etre scene-dependant.

Il ne doit pas devenir autoritaire contre les choix live.

### 2.3. Choix artistiques sous la main

Ce niveau doit rester accessible en live.

Il concerne :

- monde spatial actif ;
- quantite generale d'espace ;
- immersion vs proximite ;
- droit au freeze ;
- droit au shimmer ;
- droit au grave reverbere ;
- halo lock ;
- naturalisation d'artefacts ;
- espaces longs stables ;
- exceptions PA-X explicites.

## 3. Vocabulaire de base

### 3.1. Espace

Espace = perception de distance, profondeur, largeur, plan, salle, cavite, surface, diffusion, proximite ou enveloppement.

L'espace peut etre tres audible ou presque invisible.

### 3.2. Reverb

Reverb = ensemble de reflexions, queues, diffusion, absorption, densite, decay, early reflections, late tail et couleur de l'espace.

Une reverb n'est pas seulement une queue longue.

Elle organise :

- distance ;
- plan ;
- fusion ;
- separation ;
- taille percue ;
- poids frequentiel ;
- coherence de scene ;
- enveloppement.

### 3.3. Halo

Halo = matiere persistante qui entoure, prolonge ou lie les sons.

Il peut etre :

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

Le halo n'est pas seulement une reverb.

### 3.4. Virtualo-acoustique

Dans ce document, virtualo-acoustique signifie surtout :

```text
Un son est integre parce qu'il est accueilli dans un espace possible/reactif,
coherent avec le reste du monde sonore.
```

Ce n'est pas obligatoirement :

- une imitation realiste ;
- une source acoustique identifiable ;
- un naturalisme.

Cela peut etre :

- un espace commun ;
- une reverb ambiante du reste ;
- une cavite impossible mais coherent ;
- une surface ;
- une queue ;
- un placement proche ;
- une integration par air, distance, reflexions, souffle ou resonance.

### 3.5. PA-X

PA-X = signature electronique identifiable.

Ce n'est pas la technique de production.

Un son numerique peut etre acceptable s'il garde une fonction, une matiere, une scene, une cause possible ou une relation live.

Un son devient PA-X quand il renvoie directement a :

- outil ;
- preset ;
- plugin ;
- effet reconnaissable ;
- genre electronique standard ;
- gimmick non decide.

## 4. Fonctions Vesperare de la reverb/espace

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

## 5. Parametres perceptifs a caracteriser

Chaque espace/reverb important devrait pouvoir etre decrit avec :

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

## 6. Familles d'espaces a distinguer

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

## 7. Enrichissement perceptif

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

## 8. Socle mix/reverb professionnel

Ce niveau doit etre pense comme non arbitraire.

Il sert a faire fonctionner le son dans un club, pas a imposer une esthetique.

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

## 9. Mesure de salle avec un seul micro

Objectif :

```text
Obtenir une carte utile des tendances de la salle,
pas une modelisation parfaite.
```

Contrainte connue :

```text
Un seul micro de mesure est disponible.
Il peut etre deplace a plusieurs positions.
```

Protocole envisageable :

```text
1. Placer le micro de mesure a une position d'ecoute centrale.
2. Envoyer un sweep ou bruit de mesure via le systeme de diffusion.
3. Mesurer reponse frequentielle, impulse response, decay/RT par bandes, modes graves et resonances dangereuses.
4. Deplacer le micro vers plusieurs positions : centre public, avant, arriere, gauche, droite, position musicien si utile.
5. Comparer les mesures pour trouver tendances communes et zones problematiques.
6. Utiliser ces donnees pour regler protections, EQ, grave, quantite de reverb artificielle, pre-delay, queues et bandes a eviter.
```

Ce que cela peut determiner :

- salle deja reverberante ou seche ;
- bandes de grave qui trainent ;
- resonances feedback probables ;
- lisibilite des attaques ;
- duree utile des queues artificielles ;
- besoin d'espace commun artificiel ;
- zones ou l'immersion risque de devenir flou ;
- pre-delay et early reflections plausibles ;
- bandes a eviter dans les reverbs ;
- type d'espace qui restera lisible.

Limites :

- un seul micro deplace ne donne pas une image simultanee de toute la salle ;
- une salle vide ne reagit pas comme une salle pleine ;
- pendant le live, le micro mesure aussi public, bruit, PA, retours et sources acoustiques ;
- l'analyse doit guider des corrections prudentes, pas piloter brutalement tout le mix ;
- l'oreille reste indispensable pour juger le resultat musical en situation reelle.

## 10. Controles live generaux

Ces controles doivent rester sous la main.

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

## 11. Reactivite de l'espace

L'espace ne doit pas seulement etre "plus ou moins de reverb".

Il peut reagir a :

- energie ;
- attaques ;
- sub ;
- densite ;
- didgeridoo ;
- gong ;
- voix ;
- salle ;
- forme du passage.

### 11.1. Niveaux de reactivite

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

### 11.2. Sources d'analyse possibles

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

### 11.3. Modes reactifs

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

### 11.4. Reponse de travail

```text
Par defaut, l'espace doit reagir automatiquement a l'energie generale,
aux attaques, a la densite, au grave et a la salle, pour garder un mix coherent.

Selon les scenes, il doit aussi pouvoir reagir specifiquement au didgeridoo,
au gong, a la voix et a la forme du passage.

Les gestes spatiaux tres audibles doivent rester sous controle live ou scene.
```

## 12. Grave dans les reverbs

Le grave dans la reverb est une zone critique.

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

Principe :

```text
Le vrai sub doit rester majoritairement controle.
L'espace grave doit plutot etre cree par traces acoustiques, bas-mediums,
harmoniques, souffle, queue de gong, resonance ou effets decides.
```

### 12.1. Zones graves

Valeurs provisoires a preciser plus tard.

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

### 12.2. Modes de grave

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

### 12.3. Automatisations

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

### 12.4. Controles live

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

## 13. Freeze

Le freeze ne doit pas etre seulement une nappe.

Il doit capturer une matiere utile :

- partiels ;
- souffle ;
- friction ;
- metal ;
- voix ;
- bourdon ;
- rugosite ;
- queue de gong ;
- espace ;
- tension ;
- trace rythmique.

### 13.1. Fonctions

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

### 13.2. Parametres

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

### 13.3. Automatisations

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

### 13.4. Controles live

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

## 14. Shimmer

Le shimmer est fragile mais pas interdit.

Il ne doit pas etre une couleur par defaut.

Il est acceptable s'il devient :

- partiels ;
- metal ;
- air ;
- cavite ;
- microtension ;
- gong ;
- souffle ;
- source impossible plausible.

Le shimmer octave-up ambient/cinematique reconnaissable est a eviter.

### 14.1. Types

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
Mode interessant a preciser conceptuellement.

SHM-5 - Shimmer sombre / downshift
Transposition vers le bas ou mixte, pour profondeur, menace, masse, souffle.
Peut etre plus Vesperare que l'octave-up classique.

SHM-6 - Shimmer classique
Octave-up longue et brillante.
Tres risque : effet ambient/cinematique reconnaissable.
```

### 14.2. Garde-fous

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

### 14.3. Controles live

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

## 15. Naturalisation des artefacts

Naturaliser un artefact ne veut pas dire le cacher.

Cela veut dire lui donner :

- fonction ;
- matiere ;
- scene ;
- cause possible ;
- relation active avec une source live.

### 15.1. Artefacts traites

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

### 15.2. Methodes

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

### 15.3. Niveaux

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

### 15.4. Automatisations

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

### 15.5. Controles live

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

## 16. Halo lock et priorites live

Le halo lock n'est pas un simple on/off.

C'est un systeme de priorites entre :

- choix live ;
- automation artistique ;
- automation de mix ;
- protections critiques ;
- securite sonore.

### 16.1. Modes

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

### 16.2. Priorites

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

### 16.3. Matrice de conflits

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

### 16.4. Automatisations autorisees sous lock

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

### 16.5. Controles live

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

## 17. Espaces longs stables

Un espace long stable est acceptable s'il est decide.

Il n'a pas besoin d'etre toujours lie :

- a une action visible ;
- a une source claire ;
- a une progression evidente.

Il doit seulement garder une raison :

- musicale ;
- perceptive ;
- formelle ;
- corporelle ;
- expressive.

Le probleme n'est pas la duree.

Le probleme est :

- espace long non decide ;
- decoratif par defaut ;
- masquage du sub ;
- masquage du didgeridoo ;
- masquage de la voix ;
- perte non decidee des attaques ;
- perte non decidee de la forme.

### 17.1. Fonctions possibles

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

### 17.2. Conditions d'acceptabilite

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

### 17.3. Typologie

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

### 17.4. Automatisations

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

### 17.5. Controles live

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

## 18. Risques transversaux

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
REV-R11 - artefact numerique qui reste outil
REV-R12 - espace long non decide
REV-R13 - watchdog trop autoritaire
REV-R14 - controle live trop complexe pour etre jouable
REV-R15 - mesure de salle transformee en pilotage brutal
```

Regle generale :

```text
Danger = derive non decidee ou non fonctionnelle.
Pas danger = etat decide, assume, situe dans la forme.
```

## 19. Points a couvrir par conception

### 19.1. Socle et salle

- mesure multi-positions avec un seul micro ;
- salle seche vs salle reverberante ;
- espace commun minimal sur didgeridoo + generation ;
- proximite enrichie vs son sec hors monde ;
- immersion controlee vs flou ambient ;
- adaptation a la salle sans pilotage brutal.

### 19.2. Reactivite

- espace reactif a l'energie sans dramaturgie imposee ;
- ducking de queues par attaques sans perte non voulue de halo ;
- espace didgeridoo centre ;
- extension de gong par queue/freeze/metal ;
- voix integree dans espace proche ;
- geste dub / espace instrument comme mode explicite.

### 19.3. Grave

- sub sec/protege et trace acoustique ;
- reverb grave controlee sans brouillage sub ;
- bloom grave decide avec limites de securite ;
- controle Off / Trace / Corps / Pression / Libre ;
- gong/didgeridoo grave spatial.

### 19.4. Freeze / shimmer

- freeze de gong ;
- freeze de didgeridoo ;
- freeze de voix ;
- freeze de souffle ;
- freeze de reverb globale ;
- freeze d'artefact ;
- freeze grave protege vs bloom dangereux ;
- controles Arm / Capture / Hold / Release ;
- shimmer partiels / air / cavite / microtension / sombre ;
- shimmer classique reconnaissable comme risque PA-X.

### 19.5. Naturalisation

- glitch naturalise sans glitch outil ;
- granularite souffle/friction sans granularite plugin ;
- artefact de pitch naturalise sans auto-tune/pitch effect ;
- time-stretch souffle/queue sans time-stretch numerique evident ;
- naturalisation par didgeridoo/gong/voix ;
- controle Off / Espace / Cavite / Resonance / Souffle / Friction / Source live / Rythme / Libre.

### 19.6. Halo lock

- lock halo avec densite haute ;
- lock halo avec attaque principale ;
- lock halo avec grave charge ;
- force halo limite par feedback/clipping ;
- cut halo dans scene de suspension ;
- safe force avec reverb grave dangereuse ;
- signalisation quand protection bride un choix live.

### 19.7. Espaces longs

- espace long decide sans derive ambient ;
- long proche sans son sec hors monde ;
- long immersif sans flou non voulu ;
- long grave latent sans boue/fatigue ;
- long spectral sans abstraction froide non voulue ;
- long vide sans perte non decidee de tension ;
- corps retire longtemps vs retour prepare.

## 20. Questions de validation

Ces questions restent a valider ou corriger avant architecture technique.

### 20.1. E2 - Reactivite et grave

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

### 20.2. E3 - Freeze et shimmer

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

### 20.3. E4 - Naturalisation

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

### 20.4. E5 - Halo lock

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

### 20.5. E6 - Espaces longs

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

## 21. Prochaine etape

Avant architecture Max for Live :

1. Valider ou corriger les questions E2 a E6.
2. Resoudre conceptuellement les points encore fragiles par recherches et questions ciblees.
3. Definir les fonctions, controles, priorites, garde-fous et modes d'exception.
4. Mesurer une salle seulement comme information de calibration pratique, pas comme methode de conception.
5. Seulement ensuite definir modules, routings, sidechains et mappings.

## 22. Resume court

```text
Vesperare a besoin d'un moteur d'espace, pas d'une simple reverb.

Ce moteur doit :
- assurer un mix coherent ;
- tenir compte de la salle ;
- integrer les sources dans un monde commun ;
- enrichir la perception ;
- reagir a l'energie, aux attaques, au grave et aux instruments ;
- proteger le sub, le didgeridoo, la voix et les attaques ;
- permettre freeze, shimmer detourne et naturalisation ;
- donner la main au musicien sur halo, grave, espaces longs et exceptions ;
- signaler les risques sans interdire les choix decides.
```

## 23. Proposition de validation guidee

Statut :

```text
Proposition de travail.
Pas encore arbitrage utilisateur.
```

But :

```text
Permettre une reponse rapide :
- OK ;
- non ;
- OK sauf point precise ;
- a reformuler ;
- a preciser avant validation.
```

### 23.1. Proposition E2 - Reactivite et grave

```text
E2-P1 - Reactivite par defaut
Proposition : oui.

L'espace doit reagir automatiquement a energie, attaques, densite, grave et salle.

Mais cette reactivite par defaut doit rester dans le socle pro :
- clarifier ;
- proteger ;
- eviter le flou ;
- adapter la quantite d'espace ;
- eviter le grave boueux ;
- laisser passer attaques, didgeridoo, voix, gong et sub.

Elle ne doit pas imposer une dramaturgie ou une couleur visible.
```

```text
E2-P2 - Modes instrumentaux
Proposition : oui.

Le didgeridoo, le gong et la voix doivent avoir chacun des modes spatiaux dedies.

Ces modes ne doivent pas etre actifs en permanence.
Ils doivent pouvoir etre :
- auto discrets ;
- appeles par scene ;
- forces manuellement ;
- coupes ;
- mis en mode libre.

Raison :
Chaque source a une fonction perceptive differente.
Le didgeridoo doit pouvoir rester libre, guider le systeme ou etre integre.
Le gong peut porter queue, partiels, souffle, microtonalite et masse.
La voix doit eviter la nudite hors monde et rester virtualo-acoustique.
```

```text
E2-P3 - Geste dub / espace instrument
Proposition : oui, comme mode explicite.

Il faut un mode ou reverb, delay, coupures, retours, feedbacks controles,
send throws et contractions d'espace sont joues comme un instrument live.

Ce mode ne doit pas etre le comportement normal.
Il doit etre disponible pour scenes, passages, accidents decides, retours,
suspensions et transgressions.
```

```text
E2-P4 - Grave par defaut
Proposition : oui.

Par defaut :
- vrai sub tres controle ;
- peu ou pas de sub dans les queues ;
- grave spatial cree par traces, harmoniques, bas-mediums, souffle, gong,
  resonances controlees et indices acoustiques ;
- protections fortes contre boue, headroom faible, feedback et masquage.

Exception :
Le grave reverbere massif reste possible si decide.
```

```text
E2-P5 - Controle live grave
Proposition : garder Off / Trace / Corps / Pression / Libre,
avec Auto-Pro comme etat par defaut.

Auto-Pro :
Le systeme gere grave/reverb de facon propre sans geste artistique visible.

Off :
Pas de grave dans les reverbs sauf traces tres hautes.

Trace :
Seulement indices acoustiques, harmoniques, souffle, bas-medium leger.

Corps :
La reverb donne du poids perceptif sans vrai sub libre.

Pression :
Le grave spatial devient une sensation importante mais encore surveillee.

Libre :
Mode decide, potentiellement risque, a jouer avec protections critiques.
```

```text
E2-P6 - Bloom grave
Proposition : oui, mais seulement comme exception decidee.

Bloom grave = ouverture grave exceptionnelle :
- gonflement de queue ;
- souffle sub/low controle ;
- gong immense ;
- pression de salle ;
- tension ou transgression.

Conditions minimales :
- activation claire ;
- limiteur/headroom ;
- surveillance feedback ;
- protection sub principal ;
- sortie preparee ;
- possibilite de cut ou contraction.
```

### 23.2. Proposition E3 - Freeze et shimmer

```text
E3-P1 - Sources freeze
Proposition : oui.

Sources freeze-ables :
- gong ;
- didgeridoo ;
- voix ;
- souffle/friction ;
- reverb globale ;
- artefacts naturalises ;
- queue grave controlee ;
- matiere spectrale.

Mais chaque source doit avoir son comportement :
- gong : queue, metal, partiels, masse, souffle ;
- didgeridoo : bourdon, souffle, formants, rugosite ;
- voix : voyelles, souffle, cri, consonnes filtrees ;
- reverb globale : halo ou suspension ;
- artefact : naturalisation ou memoire transformee.
```

```text
E3-P2 - Freeze grave
Proposition : oui, exception decidee avec protections fortes.

Le freeze grave est musicalement important mais dangereux.

Par defaut :
- pas de freeze sub libre ;
- bas-mediums et harmoniques preferes ;
- vrai sub se retire ou reste controle.

Exception :
freeze grave possible pour gong, souffle, pression, transgression ou retour,
si l'etat est clairement decide.
```

```text
E3-P3 - Controle freeze live
Proposition : oui.

Controle minimal :
- Arm ;
- Capture ;
- Hold ;
- Release.

Controles utiles a ajouter plus tard :
- Clear ;
- Momentary ;
- Latch ;
- Fade ;
- Cut ;
- Source ;
- Grave guard ;
- Naturalisation mode.

Ces ajouts ne doivent pas compliquer le premier niveau de jeu.
```

```text
E3-P4 - Shimmer par defaut
Proposition : non.

Pas de shimmer par defaut.

Raison :
Le shimmer classique risque vite :
- ambient generique ;
- preset reconnaissable ;
- brillance artificielle ;
- PA-X involontaire ;
- emotion imposee.
```

```text
E3-P5 - Shimmer utile
Proposition : oui, mais sous formes detournees.

Familles acceptables :
- Partiels ;
- Air ;
- Cavite ;
- Microtension ;
- Sombre ;
- Metal ;
- Gong spectral ;
- Voix lointaine non nue ;
- Libre comme exception.

Objectif :
Ne pas entendre "shimmer", mais entendre :
- elevation de partiels ;
- air dans une cavite ;
- lumiere acoustique possible ;
- metal impossible mais plausible ;
- tension spectrale ;
- trace de source.
```

```text
E3-P6 - Shimmer reconnaissable
Proposition : oui, exception PA-X explicite.

Un shimmer classique reconnaissable doit rester interdit par defaut.
Il peut devenir possible si le geste est volontaire, transgressif ou assume.
Dans ce cas, il doit etre marque comme exception, pas comme couleur normale.
```

### 23.3. Proposition E4 - Naturalisation des artefacts

```text
E4-P1 - Artefacts acceptables
Proposition : oui.

Glitch, grain, bitcrush, stutter, spectral, pitch, time-stretch et bruit numerique
peuvent etre utilises si leur perception est naturalisee ou fonctionnelle.

Ils ne doivent pas sonner comme :
- demonstration d'effet ;
- preset ;
- electronique reconnaissable non decidee ;
- gimmick de genre.
```

```text
E4-P2 - Naturalisation principale
Proposition :
Les familles les plus Vesperare sont probablement :

1. Espace commun.
2. Cavite.
3. Resonance.
4. Souffle.
5. Friction.
6. Source live.
7. Rythme.

Lecture :
Espace commun integre.
Cavite donne une cause spatiale.
Resonance donne corps et partiels.
Souffle lie au didgeridoo, a la voix, au gong et a l'air.
Friction donne une matiere physique.
Source live rattache au geste acoustique.
Rythme rend l'artefact corporel plutot que decoratif.
```

```text
E4-P3 - Artefact visible
Proposition : oui, si sa fonction est forte.

L'artefact n'a pas toujours besoin d'etre cache.
Il peut rester perceptible si :
- il porte une pression rythmique ;
- il cree une rupture decidee ;
- il prolonge une source ;
- il sert la suspension ;
- il revele une texture ;
- il prepare un retour ;
- il participe a la polytexture.

Mais il ne doit pas devenir "son numerique reconnaissable" par defaut.
```

```text
E4-P4 - Source live comme ancrage
Proposition : oui.

Didgeridoo, gong et voix doivent pouvoir servir d'ancrage automatique ou manuel
pour naturaliser les artefacts.

Exemples :
- grain relie au souffle du didgeridoo ;
- glitch absorbe dans une cavite de gong ;
- pitch artefact transforme en partiel vocal ou metal ;
- stutter place dans une reverb de peau/friction ;
- bruit numerique recadre comme air, souffle ou surface.
```

```text
E4-P5 - Controle live naturalisation
Proposition : oui.

Controle :
Off / Espace / Cavite / Resonance / Souffle / Friction / Source live / Rythme / Libre.

Lecture :
Off = artefact nu ou coupe.
Espace = integre dans monde commun.
Cavite = cause spatiale.
Resonance = partiels/corps.
Souffle = air/source respiratoire.
Friction = matiere physique.
Source live = rattachement didgeridoo/gong/voix.
Rythme = fonction corporelle.
Libre = exception decidee.
```

```text
E4-P6 - Exception PA-X
Proposition : oui, mais rare et explicite.

Un artefact numerique volontairement reconnaissable peut rester possible.
Mais il doit etre une exception declaree, pas un accident de design sonore.

Condition :
Le systeme doit pouvoir signaler ou etiqueter cette exception comme PA-X autorise.
```

### 23.4. Proposition E5 - Halo lock

```text
E5-P1 - Modes
Proposition : oui.

Modes a garder :
- Auto ;
- Lock ;
- Force ;
- Cut ;
- Momentary ;
- Safe force.

Auto :
Le systeme gere selon scene et protections.

Lock :
Le halo reste present, avec adaptations minimales.

Force :
Le halo est impose comme choix live fort.

Cut :
Le halo est retire.

Momentary :
Maintien temporaire pendant un geste.

Safe force :
Force autant que possible, mais accepte protections critiques.
```

```text
E5-P2 - Priorite securite
Proposition : oui.

Les protections critiques doivent pouvoir passer au-dessus du lock/force :
- clipping ;
- feedback ;
- sub dangereux ;
- headroom insuffisant ;
- resonance de salle forte ;
- masquage total d'une source essentielle.

Mais elles doivent alterer le moins possible l'intention.
```

```text
E5-P3 - Minimal alteration
Proposition : oui.

Avant de couper un halo voulu, le systeme doit essayer :
- filtrage ;
- ducking court ;
- reduction de bande ;
- reduction de decay ;
- deplacement spectral ;
- conversion en trace ;
- baisse partielle.

Cut automatique seulement si necessaire.
```

```text
E5-P4 - Cibles
Proposition : oui.

Cibles :
- global ;
- reverb commune ;
- freeze ;
- shimmer ;
- gong ;
- didgeridoo ;
- voix ;
- artefact ;
- grave.

Le lock global ne suffit pas.
Il faut pouvoir proteger ou forcer une famille precise.
```

```text
E5-P5 - Priorite de halo
Proposition : oui.

Niveaux :
- decoratif ;
- fonctionnel ;
- structurel ;
- intouchable sauf securite.

Decoratif :
Peut etre retire facilement.

Fonctionnel :
Doit etre preserve si possible.

Structurel :
Fait partie de la forme du passage.

Intouchable sauf securite :
Choix live fort, seulement bride par protection critique.
```

```text
E5-P6 - Signalisation
Proposition : oui.

Le systeme doit indiquer quand il bride un lock/force.

Signal minimal :
- halo maintenu ;
- halo adapte ;
- halo bride ;
- halo coupe pour protection.

But :
Ne pas laisser croire que le choix live a ete respecte alors qu'il a ete limite.
```

### 23.5. Proposition E6 - Espaces longs

```text
E6-P1 - Espace long decide
Proposition : oui.

Un espace long stable est acceptable des qu'il est decide et fonctionnel.
La duree n'est pas le probleme.

Le probleme est :
- decor non decide ;
- flou non voulu ;
- perte de corps non voulue ;
- masquage ;
- absence de sortie ;
- absence de fonction.
```

```text
E6-P2 - Fonctions minimales
Proposition : oui.

Fonctions a garder :
- suspension ;
- memoire ;
- pression ;
- attente ;
- immersion ;
- retrait ;
- transgression ;
- resolution ;
- loupe perceptive ;
- seuil ;
- souffle ;
- espace de retour.
```

```text
E6-P3 - Long sans source claire
Proposition : oui, si fonction forte.

Un espace long peut exister sans source claire.
Il doit alors avoir au moins une fonction perceptible :
- tenir une attente ;
- maintenir une pression ;
- installer un seuil ;
- faire oublier le corps volontairement ;
- preparer un retour ;
- enrichir la perception ;
- devenir un monde stable.
```

```text
E6-P4 - Controle live espaces longs
Proposition : oui, garder :

Off / Proche / Immersif / Grave latent / Spectral / Source / Freeze / Vide / Transgressif.

Ajout utile :
un controle de fonction :
Suspension / Memoire / Pression / Attente / Immersion / Retrait / Transgression / Resolution.

Raison :
Le type sonore et la fonction musicale ne sont pas toujours la meme chose.
```

```text
E6-P5 - Watchdog
Proposition : oui.

Le systeme doit signaler les risques sans couper automatiquement :
- derive ambient ;
- masquage ;
- fatigue ;
- boue grave ;
- perte du corps ;
- perte de retour ;
- brillance persistante ;
- espace decoratif non decide.

Si l'etat est Lock/Force, le watchdog informe et protege seulement les dangers critiques.
```

```text
E6-P6 - Corps retire longtemps
Proposition : oui.

Le corps club peut etre retire longtemps si c'est decide.

Conditions :
- decision claire ;
- fonction musicale ;
- sortie possible ;
- retour preparable ;
- pas de masquage critique non voulu ;
- possibilite de rester dans cet etat longtemps sans que le systeme le corrige arbitrairement.
```

### 23.6. Synthese de validation proposee

```text
Validation proposee :

E2 : oui, avec distinction Auto-Pro / modes instrumentaux / gestes explicites.
E3 : oui aux freezes larges ; shimmer interdit par defaut, possible detourne ou exception.
E4 : oui aux artefacts, mais naturalisation ou fonction forte obligatoires.
E5 : oui au halo lock complet, avec protections critiques prioritaires et signalisation.
E6 : oui aux espaces longs, meme tres longs, si decides, fonctionnels et sortables.

Point le plus important :
Le systeme ne doit pas interdire les etats longs, graves, flous ou transgressifs.
Il doit seulement distinguer :
- accident non decide ;
- choix live ;
- danger critique ;
- effet decoratif faible ;
- fonction musicale forte.
```

## 24. Resolution conceptuelle sans protocole d'ecoute

Statut :

```text
Correction de trajectoire.
Aucun protocole d'ecoute n'est planifie comme etape de conception.
```

Principe :

```text
La conception doit anticiper au maximum.
Les questions doivent d'abord etre resolues par :
- souhaits deja formules ;
- analyse musicale ;
- recherches sur perception, reverb, espace, salle, mix et scene ;
- formulation de questions plus precises ;
- arbitrage utilisateur.
```

### 24.1. Ce que les recherches renforcent

Les recherches recentes consultees renforcent plusieurs points deja presents dans la fiche.

```text
RCH-1 - La reverb structure la scene auditive
La reverb donne des indices de distance, taille, source, environnement,
proximite et enveloppement. Elle n'est pas seulement une queue decorative.

Consequence Vesperare :
Le moteur d'espace doit etre un moteur de scene perceptive,
pas une collection d'effets.
```

```text
RCH-2 - Early reflections et late reverb n'ont pas la meme fonction
Les premieres reflexions peuvent donner proximite, taille, placement et corps.
Les queues tardives peuvent donner distance, immersion, halo, flou ou memoire.

Consequence Vesperare :
Proximite enrichie et immersion doivent etre deux familles separees.
Un son peut etre proche ET spatialement riche.
```

```text
RCH-3 - La distance percue depend beaucoup du rapport direct/reverbere
Plus le son direct domine, plus la source semble proche.
Plus la part reverberee domine, plus la source peut sembler loin ou fondue.

Consequence Vesperare :
Le controle Proche / Commun / Immersif doit probablement agir sur :
- direct/reverbere ;
- early reflections ;
- predelay ;
- damping ;
- largeur ;
- queue tardive.
Pas seulement sur wet/dry.
```

```text
RCH-4 - L'enveloppement depend fortement de l'energie laterale et tardive
Un espace immersif n'est pas seulement une reverb plus longue.
Il depend de la largeur, de la diffusion, des reflexions laterales,
de la decorrelation et de l'energie tardive.

Consequence Vesperare :
Immersion doit etre separee de longueur.
Un espace long peut etre peu immersif.
Un espace court peut etre enveloppant.
```

```text
RCH-5 - Les statistiques naturelles de reverb aident le cerveau a separer source et environnement
Une reverb plausible peut etre percue comme environnement.
Une reverb ou un artefact trop atypique peut etre percu comme source, effet ou objet.

Consequence Vesperare :
La naturalisation n'a pas besoin d'imiter le reel.
Elle doit donner assez d'indices de monde, cavite, surface, air, corps ou cause.
Sinon l'artefact risque PA-X.
```

```text
RCH-6 - Les basses frequences sont fortement dependantes de la salle
Modes propres, accumulation, decay grave et resonances varient beaucoup selon le lieu.

Consequence Vesperare :
Le vrai sub doit rester tres controle dans les reverbs.
Le grave spatial doit privilegier traces, harmoniques, bas-mediums,
souffle, queue de gong et bloom decide.
```

```text
RCH-7 - Une mesure avec un seul micro peut guider, pas modeliser parfaitement
Un micro deplace a plusieurs positions peut aider a reperer tendances,
resonances, decay et bandes dangereuses.
Il ne donne pas une verite unique de toute la salle.

Consequence Vesperare :
La mesure de salle doit etre prudente :
- aide au reglage ;
- aide aux protections ;
- pas pilotage brutal du mix ;
- pas correction automatique autoritaire.
```

### 24.2. Decisions conceptuelles qui peuvent etre renforcees maintenant

Ces decisions restent a valider par toi, mais elles peuvent etre decidees par conception,
recherches et clarification des souhaits.

```text
DEC-E2-1 - Auto-Pro doit exister
Le systeme doit avoir un socle automatique discret pour clarte, grave,
densite, attaques, salle, feedback, headroom et coherence.

Raison :
C'est une exigence de mix et de scene, pas un choix esthetique arbitraire.
```

```text
DEC-E2-2 - Auto-Pro ne doit pas composer
Le socle automatique ne doit pas decider :
- passage ambient ;
- retour ;
- transgression ;
- perte longue du corps ;
- monde spatial expressif ;
- effet dub visible ;
- shimmer ;
- freeze.

Raison :
Ces decisions sont artistiques et doivent rester scene/live.
```

```text
DEC-E2-3 - Proche, Commun, Immersif, Immense doivent etre des mondes de parametres
Ils ne doivent pas etre de simples niveaux de reverb.

Chaque monde doit definir :
- rapport direct/reverbere ;
- early reflections ;
- largeur ;
- predelay ;
- densite ;
- damping ;
- queue ;
- grave autorise ;
- reactivite ;
- type de sortie.
```

```text
DEC-E2-4 - Le grave reverbere est une exception controlable
Par defaut, pas de sub libre dans les reverbs.
Mais Trace, Corps, Pression, Bloom et Libre doivent exister.

Raison :
Tu veux pouvoir produire souffle grave, gong profond, pression et transgression,
mais pas subir une boue de salle.
```

```text
DEC-E3-1 - Freeze = capture de monde, pas pad
Le freeze doit etre pense comme capture/prolongation d'une source, d'un espace,
d'une cavite, d'un souffle, d'un metal ou d'un etat.

Il ne doit pas etre pense comme nappe generique.
```

```text
DEC-E3-2 - Shimmer = interdit par defaut, permis par deformation
Le shimmer classique est trop reconnaissable.
Mais ses fonctions peuvent etre recuperees :
- partiels ;
- air ;
- cavite ;
- metal ;
- microtension ;
- gong spectral ;
- voix lointaine integree.
```

```text
DEC-E4-1 - Naturalisation = donner une cause perceptive
Un artefact peut rester audible si on comprend perceptivement pourquoi il est la :
- espace ;
- cavite ;
- resonance ;
- souffle ;
- friction ;
- source live ;
- rythme ;
- fonction de scene.

S'il n'a ni cause, ni fonction, ni monde, il devient PA-X ou gimmick.
```

```text
DEC-E5-1 - Halo lock est necessaire
Tu as explicitement demande le droit d'empecher les automations d'enlever un halo.

Donc Auto / Lock / Force / Cut / Momentary / Safe force est coherent.
```

```text
DEC-E5-2 - Les protections critiques restent au-dessus
Le systeme peut brider un choix live seulement pour :
- clipping ;
- feedback ;
- headroom critique ;
- sub dangereux ;
- resonance salle dangereuse ;
- masquage total d'une source essentielle.

Mais il doit d'abord tenter une alteration minimale.
```

```text
DEC-E6-1 - Les espaces tres longs sont autorises
Tu as deja tranche : ils peuvent etre tres longs.

La condition n'est pas la duree.
La condition est :
- decision ;
- fonction ;
- sortie possible ;
- absence de danger critique non voulu.
```

### 24.3. Questions restantes reformulees

Ces questions remplacent l'idee de passer par un protocole d'ecoute.

Elles sont plus utiles parce qu'elles portent sur des choix de conception.

```text
Q-CPT-E2-1 - Auto-Pro
Acceptes-tu que le socle Auto-Pro soit actif par defaut sur :
- grave de reverb ;
- densite ;
- attaques ;
- feedback ;
- brillance dure ;
- salle ;
- headroom ;
tant qu'il ne prend pas de decision artistique visible ?
```

```text
Q-CPT-E2-2 - Mondes spatiaux
Valides-tu ces mondes de base :
- Sec protege ;
- Proche enrichi ;
- Commun ;
- Immersif ;
- Immense ;
- Cavite ;
- Metal/gong ;
- Hors-monde ;
avec possibilite de les combiner ou decliner ?
```

```text
Q-CPT-E2-3 - Controle Proche / Immersif
Veux-tu un controle simple Proche <-> Immersif
ou plutot des modes separes Proche, Commun, Immersif, Immense ?

Suggestion actuelle :
Modes separes, car proche et immersif ne sont pas les deux bouts d'un seul axe.
```

```text
Q-CPT-E2-4 - Grave spatial
Valides-tu la hierarchie :
Auto-Pro / Off / Trace / Corps / Pression / Bloom / Libre ?

Suggestion actuelle :
Oui, car elle separe protection, richesse, pression et transgression.
```

```text
Q-CPT-E3-1 - Freeze
Un freeze doit-il toujours etre rattache a une source ou un monde,
sauf exception explicitement libre ?

Suggestion actuelle :
Oui. Cela evite le pad ambient generique.
```

```text
Q-CPT-E3-2 - Shimmer
Valides-tu :
- shimmer classique interdit par defaut ;
- fonctions de shimmer recuperees par partiels, air, cavite, metal, microtension ;
- shimmer classique seulement exception PA-X explicite ?
```

```text
Q-CPT-E4-1 - Naturalisation prioritaire
Par defaut, quel ordre de priorite preferes-tu ?

Option A :
Espace commun -> Cavite -> Resonance -> Souffle -> Source live -> Rythme -> Libre.

Option B :
Source live -> Souffle/Friction -> Resonance -> Espace commun -> Rythme -> Libre.

Suggestion actuelle :
B semble plus Vesperare si le didgeridoo/gong/voix doivent rester centraux.
```

```text
Q-CPT-E5-1 - Signalisation
Le systeme doit-il seulement signaler quand il bride un choix,
ou aussi proposer une raison lisible :
- grave ;
- feedback ;
- brillance ;
- attaque masquee ;
- didgeridoo masque ;
- voix masquee ;
- headroom ?

Suggestion actuelle :
Raison lisible, sinon le controle live devient opaque.
```

```text
Q-CPT-E6-1 - Espaces longs
Veux-tu que tout espace long ait obligatoirement une etiquette de fonction :
Suspension / Memoire / Pression / Attente / Immersion / Retrait / Transgression / Resolution ?

Suggestion actuelle :
Oui, pas pour limiter, mais pour eviter le decor automatique.
```

### 24.4. Nouvelle prochaine etape

Cette etape est traitee dans la section 25.

```text
Resolution proposee Q-CPT.
```

Ordre recommande :

1. Auto-Pro et limites de l'automatique.
2. Mondes spatiaux et controles principaux.
3. Grave spatial et bloom.
4. Freeze et shimmer.
5. Naturalisation des artefacts.
6. Halo lock et signalisation.
7. Espaces longs et etiquettes de fonction.

Apres validation ou correction de la section 25 :

```text
On pourra consolider la fiche reverb/espace en version v0.2.
```

## 25. Resolution proposee Q-CPT

Statut :

```text
Resolution conceptuelle proposee.
Pas encore arbitrage utilisateur definitif.
```

But :

```text
Transformer Q-CPT-E2-1 a Q-CPT-E6-1 en choix de conception plausibles,
sans passer par un protocole d'ecoute.
```

### 25.1. Synthese de recherche utile

Les recherches recentes soutiennent quatre principes de conception.

```text
RS-1 - Distance et proximite
La distance percue ne depend pas seulement de la longueur de reverb.
Elle depend fortement de la relation entre son direct, premieres reflexions,
queue tardive, predelay, damping et rapport direct/reverbere.

Consequence :
Un son peut etre proche, riche et spatial.
Proche ne veut pas dire sec.
```

```text
RS-2 - Immersion et enveloppement
L'immersion ne depend pas seulement d'une queue longue.
Elle depend aussi de largeur, diffusion, energie laterale,
decorrelation, densite et champ tardif.

Consequence :
Immersif, long et immense doivent rester des fonctions distinctes.
```

```text
RS-3 - Source et environnement
Une reverb plausible aide a separer source et environnement.
Une reverb ou un artefact trop identifiable comme effet devient un objet sonore
ou une signature d'outil.

Consequence :
La naturalisation doit donner des indices de monde, cavite, matiere,
source, surface, air, souffle ou fonction.
```

```text
RS-4 - Grave et salle
Le grave depend fortement de la salle.
Modes, resonances et decay grave rendent le sub reverbere fragile.

Consequence :
Le vrai sub doit rester majoritairement protege.
La sensation grave spatiale doit etre construite par traces, harmoniques,
bas-mediums, souffle, gong, corps et bloom decide.
```

### 25.2. Resolution Q-CPT-E2-1 - Auto-Pro

Question :

```text
Acceptes-tu que le socle Auto-Pro soit actif par defaut sur grave de reverb,
densite, attaques, feedback, brillance dure, salle et headroom,
tant qu'il ne prend pas de decision artistique visible ?
```

Resolution proposee :

```text
Oui.
Auto-Pro doit etre actif par defaut.
```

Mais Auto-Pro doit etre strictement limite.

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

- une scene ambient ;
- une perte longue du corps ;
- un retour ;
- une transgression ;
- un freeze ;
- un shimmer ;
- un effet dub visible ;
- un monde spatial expressif ;
- une coupure de halo voulu sauf danger critique.

Formulation stable :

```text
Auto-Pro = hygiene sonore + coherence + protection.
Auto-Pro != composition automatique.
```

Niveau de statut :

```text
Socle.
```

### 25.3. Resolution Q-CPT-E2-2 - Mondes spatiaux

Question :

```text
Valider les mondes :
Sec protege / Proche enrichi / Commun / Immersif / Immense /
Cavite / Metal-gong / Hors-monde ?
```

Resolution proposee :

```text
Oui, mais comme familles combinables, pas comme presets fermes.
```

Mondes retenus :

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

MS-8 - Souffle/air
Air, respiration, chuintement, friction douce, diffusion respiratoire.
Fonction : naturaliser sans imposer une salle identifiable.

MS-9 - Hors-monde
Espace impossible, tres long, tres grand, tres vide ou instable.
Fonction : exception decidee, transgression, seuil, retrait.
```

Regle :

```text
Un monde spatial doit definir une fonction.
Il ne doit pas seulement definir une couleur.
```

Niveau de statut :

```text
Fonction forte.
```

### 25.4. Resolution Q-CPT-E2-3 - Proche / Immersif

Question :

```text
Controle simple Proche <-> Immersif,
ou modes separes Proche, Commun, Immersif, Immense ?
```

Resolution proposee :

```text
Modes separes + macros orthogonales.
```

Raison :

```text
Proche et immersif ne sont pas les deux bouts d'un seul axe.
Un son peut etre :
- proche et sec ;
- proche et enrichi ;
- proche et enveloppant ;
- lointain mais peu immersif ;
- long mais pas enveloppant ;
- immense mais encore frontal ;
- immersif mais court.
```

Controls conceptuels :

```text
CTRL-SP-1 - Monde
Sec protege / Proche enrichi / Commun / Immersif / Immense / Cavite / Metal-gong / Souffle-air / Hors-monde.

CTRL-SP-2 - Distance
Devant / proche / milieu / loin / diffus.

CTRL-SP-3 - Enveloppement
Mono-centre / large / enveloppant / circulaire ou champ.

CTRL-SP-4 - Queue
Courte / moyenne / longue / stable / freeze / infinie decidee.

CTRL-SP-5 - Halo
Off / discret / present / lock / force / cut.

CTRL-SP-6 - Grave spatial
Auto-Pro / Off / Trace / Corps / Pression / Bloom / Libre.
```

Niveau de statut :

```text
Fonction forte.
```

### 25.5. Resolution Q-CPT-E2-4 - Grave spatial

Question :

```text
Valider Auto-Pro / Off / Trace / Corps / Pression / Bloom / Libre ?
```

Resolution proposee :

```text
Oui, mais Auto-Pro doit etre le superviseur,
pas seulement un niveau de la meme echelle.
```

Hierarchie retenue :

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
- bloom n'est pas un defaut, mais une option forte ;
- libre n'est pas une erreur : c'est une decision.

Niveau de statut :

```text
Socle + option forte + exception.
```

### 25.6. Resolution Q-CPT-E3-1 - Freeze

Question :

```text
Un freeze doit-il toujours etre rattache a une source ou un monde,
sauf exception explicitement libre ?
```

Resolution proposee :

```text
Oui.
Par defaut, freeze = source ou monde.
Exception libre possible si decidee.
```

Fonctions de freeze retenues :

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

Regle :

```text
Le probleme n'est pas le freeze long.
Le probleme est le freeze sans source, sans monde, sans fonction ou sans decision.
```

Niveau de statut :

```text
Option scene importante.
```

### 25.7. Resolution Q-CPT-E3-2 - Shimmer

Question :

```text
Shimmer classique interdit par defaut,
fonctions recuperees par partiels, air, cavite, metal, microtension,
shimmer classique seulement exception PA-X explicite ?
```

Resolution proposee :

```text
Oui.
```

Regle :

```text
Le mot shimmer ne doit pas designer une couleur par defaut.
Il doit designer une famille de fonctions spectrales a detourner.
```

Fonctions autorisees :

- eclairer des partiels ;
- suggerer air ou hauteur impossible ;
- prolonger le gong vers le haut ;
- rendre une voix lointaine sans voix nue ;
- creer microtension ou battements ;
- donner un bord spectral a un espace immense ;
- naturaliser une brillance comme metal, cavite ou souffle.

Interdits par defaut :

- reverb angelique/cinematique reconnaissable ;
- octave-up lisse ;
- preset ambient ;
- emotion imposee ;
- brillance froide sans source.

Exception :

```text
Shimmer classique possible seulement comme PA-X volontaire,
donc exception marquee.
```

Niveau de statut :

```text
Interdit par defaut ; option detournee ; exception explicite.
```

### 25.8. Resolution Q-CPT-E4-1 - Naturalisation prioritaire

Question :

```text
Ordre A : Espace commun -> Cavite -> Resonance -> Souffle -> Source live -> Rythme -> Libre.
Ordre B : Source live -> Souffle/Friction -> Resonance -> Espace commun -> Rythme -> Libre.
```

Resolution proposee :

```text
B, mais avec une regle de fonction avant source obligatoire.
```

Ordre par defaut :

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

Correction importante :

```text
La source live n'est pas obligatoire.
Elle est prioritaire quand elle est pertinente.

Un artefact peut etre valide sans source claire
s'il porte une fonction forte : pression, espace, rythme, retour,
transgression, suspension ou monde stable.
```

Niveau de statut :

```text
Fonction forte.
```

### 25.9. Resolution Q-CPT-E5-1 - Signalisation

Question :

```text
Le systeme doit-il seulement signaler qu'il bride un choix,
ou proposer une raison lisible ?
```

Resolution proposee :

```text
Il doit proposer une raison lisible.
```

Raisons minimales :

```text
SIG-R1 - Grave / sub
SIG-R2 - Feedback / resonance salle
SIG-R3 - Headroom / clipping
SIG-R4 - Brillance dure / sibilance / shimmer involontaire
SIG-R5 - Attaque masquee
SIG-R6 - Didgeridoo masque
SIG-R7 - Voix masquee ou trop nue
SIG-R8 - Gong masque ou queue dangereuse
SIG-R9 - Halo maintenu mais adapte
SIG-R10 - Halo coupe pour protection critique
```

Principe d'interface futur, sans le figer :

```text
Le musicien doit savoir si le systeme :
- respecte le choix ;
- adapte le choix ;
- bride le choix ;
- coupe pour raison critique.
```

Regle :

```text
Un systeme protecteur mais opaque devient injouable.
```

Niveau de statut :

```text
Socle de jouabilite live.
```

### 25.10. Resolution Q-CPT-E6-1 - Espaces longs

Question :

```text
Tout espace long doit-il avoir une etiquette de fonction ?
```

Resolution proposee :

```text
Oui, mais pas comme contrainte visible et rigide.
Oui comme logique interne de conception.
```

Pourquoi :

```text
Tu acceptes les espaces tres longs, meme sans source claire.
Donc le critere ne peut pas etre la duree ni la source.
Le critere doit etre la fonction.
```

Etiquettes possibles :

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

Correction importante :

```text
Decor decide doit rester possible.
Vide decide doit rester possible.
Absence de corps longue doit rester possible.

Mais ils doivent etre des decisions,
pas des consequences automatiques d'une reverb trop longue.
```

Niveau de statut :

```text
Fonction forte.
```

### 25.11. Resolution globale du bloc Q-CPT

```text
RES-QCPT-1 - Auto-Pro
Valider comme socle protecteur et coherent, non compositionnel.

RES-QCPT-2 - Mondes spatiaux
Valider comme familles combinables, pas presets fermes.

RES-QCPT-3 - Proche / immersif
Valider comme dimensions separees.

RES-QCPT-4 - Grave spatial
Valider Auto-Pro superviseur + Off/Trace/Corps/Pression/Bloom/Libre.

RES-QCPT-5 - Freeze
Valider source ou monde par defaut, libre comme exception decidee.

RES-QCPT-6 - Shimmer
Valider interdit par defaut, fonctions recuperees, PA-X seulement volontaire.

RES-QCPT-7 - Naturalisation
Valider priorite source live/souffle/friction/resonance/espace/rythme/fonction/libre,
avec fonction forte possible sans source claire.

RES-QCPT-8 - Signalisation
Valider signalisation avec raison lisible.

RES-QCPT-9 - Espaces longs
Valider etiquette de fonction interne, incluant vide decide, decor decide,
monde stable et retrait long du corps.
```

### 25.12. Questions restantes reduites

Apres resolution, il ne reste plus a demander tout le bloc E.

Il reste seulement a verifier ces points :

```text
Q-REST-1 - Mondes spatiaux
Faut-il ajouter ou retirer un monde parmi :
Sec protege / Proche enrichi / Commun / Immersif / Immense /
Cavite / Metal-gong / Souffle-air / Hors-monde ?

Q-REST-2 - Naturalisation
Valides-tu que l'ordre prioritaire soit :
Source live -> Souffle/Friction -> Resonance/Cavite -> Espace commun ->
Rythme/Pression -> Fonction de scene -> Libre ?

Q-REST-3 - Espaces longs
Valides-tu que "decor decide" et "vide decide" soient des fonctions legitimes,
mais jamais des etats automatiques non decides ?

Q-REST-4 - Signalisation
Veux-tu que les raisons de bridage soient explicites dans l'interface future,
ou seulement disponibles en retour discret ?
```

### 25.13. Prochaine etape conceptuelle

La prochaine etape la plus efficace :

```text
Valider ou corriger RES-QCPT-1 a RES-QCPT-9.
Puis consolider REVERBS_ESPACE_REACTIF en v0.2.
```
