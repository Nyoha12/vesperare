# AUDIT JOUABILITE CONCEPTUELLE SCENES ET MACROS v0.1

Projet : Vesperare
Date : 2026-06-21
Statut : audit conceptuel de jouabilite

Sources actives :

- `SPECIFICATION_SCENES_PRIORITAIRES_ET_MACROS_v0_1.md`
- `SPECIFICATION_CONTROLES_LIVE_ET_MODES_SCENE_v0_1.md`
- `SPECIFICATION_CONCEPTUELLE_FONCTIONS_CONTROLES_PRIORITES_v0_1.md`
- `BESOINS_STYLISTIQUES_v0_4.md`
- `BESOINS_GENERATION_v0_4.md`
- `CARACTERISATION_DETAILLEE_ELEMENTS_v0_4.md`
- `REVERBS_ESPACE_REACTIF_v0_2.md`

But :

- verifier si le noyau global + les scenes prioritaires restent jouables conceptuellement ;
- verifier si les superpositions de scenes sont correctement pensees ;
- identifier les macros redondantes ;
- identifier les macros qui doivent rester visibles, cachees, preparees, ou automatiques ;
- trier les questions restantes en questions bloquantes, questions reportables, et valeurs par defaut provisoires ;
- preparer une specification de noyau jouable sans commencer l'architecture technique.

Hors perimetre :

- interface graphique ;
- controleur physique ;
- disposition Ableton ;
- devices Max for Live ;
- routings ;
- algorithmes ;
- seuils numeriques ;
- evaluation pratique.

---

## 1. Verdict general

Verdict :

```text
Corpus coherent.
Scenes pertinentes.
Superpositions possibles.
Risque principal : trop de decisions visibles si tout est expose en meme temps.
```

Il ne faut pas reduire Vesperare en simplifiant les idees musicales.

Il faut reduire la charge mentale en organisant mieux les niveaux :

```text
noyau global tres stable ;
scene dominante ;
couches importees ;
gestes ponctuels ;
Auto-Pro ;
signalisation.
```

La correction importante deja integree dans la fiche scenes est bonne :

```text
Les scenes sont des centres de gravite.
Elles ne sont pas des boites exclusives.
```

Mais la specification actuelle doit maintenant etre compressee en logique jouable.

---

## 2. Criteres de jouabilite conceptuelle

Une scene ou une superposition est jouable si elle respecte ces criteres.

### JOU-1 - Une fonction dominante

Il doit etre possible de dire en une phrase ce qui dirige le moment.

Exemples valides :

```text
Le didgeridoo guide le systeme.
La techno est suspendue mais le retour reste preparable.
Le gong ouvre une base grave et metallique.
La polytexture densifie le corps sans perdre la pulsation.
```

Risque :

```text
Plusieurs fonctions veulent diriger la forme en meme temps.
```

Correction :

```text
Une scene dominante.
Les autres deviennent couches, gestes ou etats.
```

### JOU-2 - Maximum trois decisions expressives simultanees

Pendant un moment dense, le musicien ne doit pas devoir penser a tout.

Limite conceptuelle recommandee :

```text
1 decision de fonction ;
1 decision d'intensite ou densite ;
1 decision de sortie / retour / maintien.
```

Les autres decisions peuvent etre :

- preparees par scene ;
- verrouillees ;
- signalees ;
- protegees par Auto-Pro ;
- accessibles mais non manipulees en continu.

### JOU-3 - Une sortie claire

Chaque scene doit avoir une sortie musicale identifiable.

Sorties possibles :

```text
retour corps ;
retrait grave ;
cut halo ;
contraction espace ;
silence ;
resolution ;
impact rare ;
transfert vers autre scene dominante.
```

Risque :

```text
Etat magnifique mais sans sortie pensable.
```

Correction :

```text
Chaque scene garde une macro de sortie ou de consequence.
```

### JOU-4 - Superposition limitee

Regle provisoire :

```text
1 scene dominante
+ 0 a 2 couches
+ gestes ponctuels
+ Auto-Pro permanent
```

Au-dela, il faut traiter le moment comme une transition ou une forme composee.

### JOU-5 - Protection non expressive

Auto-Pro doit proteger.

Auto-Pro ne doit pas decider :

- un retour ;
- une suspension ;
- une transgression ;
- une grande reverb expressive ;
- une scene ;
- une melodie ;
- une domination.

### JOU-6 - Signalisation obligatoire des conflits

Tout conflit important doit etre lisible :

```text
P0 actif ;
P1 limite un choix ;
grave reduit ;
halo adapte ;
source protegee ;
monde spatial degrade ;
motif bloque ;
densite nettoyee.
```

La signalisation n'est pas une decoration.
Elle fait partie de la jouabilite.

---

## 3. Audit du noyau global

### 3.1. CORE-1 - Scene / fonction

Statut :

```text
necessaire ;
jouable ;
a preciser en scene dominante + couches.
```

Probleme :

Le mot scene peut encore donner l'impression d'un preset exclusif.

Correction :

```text
Scene dominante = fonction principale.
Couches = fonctions empruntees.
Gestes = macros ponctuelles importees.
```

Decision :

```text
Garder CORE-1.
Le renommer conceptuellement : Fonction dominante / scene dominante.
```

### 3.2. CORE-2 - Etat de forme

Statut :

```text
necessaire ;
tres jouable ;
transversal.
```

Valeurs :

```text
preparation ;
maintien ;
retrait ;
retour ;
peak ;
consequence ;
sortie.
```

Risque :

Si l'etat de forme devient un deuxieme choix de scene, il surcharge.

Correction :

```text
Etat de forme ne choisit pas quoi jouer.
Il dit ou l'on est dans le geste.
```

Decision :

```text
Garder CORE-2 visible.
```

### 3.3. CORE-3 - Didgeridoo

Statut :

```text
necessaire ;
central ;
potentiellement trop riche.
```

Modes actuels :

```text
libre protege ;
systeme adapte ;
didgeridoo adapte ;
guide harmonique ;
source traitee.
```

Risque :

Ces modes ne sont pas tous du meme type :

- liberte ;
- adaptation ;
- role harmonique ;
- traitement de source.

Correction :

En live, il faudrait probablement un controle compact :

```text
DID Role :
Libre protege -> Guide -> Systeme adapte -> Didgeridoo adapte -> Source traitee.
```

Les details restent par scene.

Decision provisoire :

```text
Mode par defaut : Libre protege.
Les autres modes sont des choix de scene ou de live explicite.
```

Question reportable :

```text
Le didgeridoo traite peut-il devenir une source fonctionnalisee principale ?
```

Cette question n'empeche pas la suite.

### 3.4. CORE-4 - Grave

Statut :

```text
necessaire ;
fragile ;
a garder visible.
```

Risque :

Le grave regroupe trop de fonctions :

- soutien discret ;
- retrait ;
- porteur ;
- guide par didgeridoo ;
- bloom gong ;
- sub ponctuel ;
- graves libres.

Correction :

Le controle doit exprimer le role du grave, pas seulement son niveau.

Format conceptuel recommande :

```text
GRV Role :
Retrait -> Trace -> Soutien -> Porteur ponctuel -> Bloom -> Libre.
```

Conflits prioritaires :

```text
didgeridoo grave + sub porteur ;
gong bloom + basses riches ;
GSP Bloom + vrai sub ;
grave libre + salle resonante.
```

Decision :

```text
Garder CORE-4 visible.
Toujours associer a une signalisation de conflit grave.
```

### 3.5. CORE-5 - Espace

Statut :

```text
necessaire ;
musicalement central ;
risque de surcharge si tous les mondes sont controles en live.
```

Risque :

Espace contient au moins trois dimensions :

- monde spatial ;
- distance/proximite ;
- profondeur/immersion ;
- reverb expressive ;
- reverb corrective ;
- interaction avec halo.

Correction :

En live, garder un choix lisible :

```text
Espace monde :
Commun -> Proche -> Immersif -> Immense -> Metal -> Hors-monde.
```

Les reglages fins restent :

- par scene ;
- Auto-Pro ;
- ou macros specifiques.

Decision :

```text
Garder CORE-5 visible.
Ne pas exposer tous les parametres de reverb comme decisions de meme niveau.
```

### 3.6. CORE-6 - Halo

Statut :

```text
necessaire ;
tres jouable ;
fortement expressif.
```

Modes :

```text
Auto ;
Lock ;
Force ;
Cut ;
Momentary ;
Safe force.
```

Risque :

Halo peut devenir une scene parallele s'il est trop autonome.

Correction :

Le Halo doit rester :

- une fonction de liaison ;
- une memoire ;
- une suspension ;
- une consequence ;
- une presence forced si decidee.

Decision :

```text
Garder CORE-6 visible.
Halo Lock / Force / Cut doivent rester des decisions explicites.
Auto-Pro peut adapter seulement P0/P1.
```

### 3.7. CORE-7 - Corps / retour

Statut :

```text
necessaire ;
central ;
doit rester visible.
```

Pourquoi :

Le projet accepte la suspension tres longue.
Mais le retour corporel doit rester preparable.

Decision :

```text
Garder CORE-7 visible.
Il doit indiquer : corps oriente, suspension, retrait decide, retour prepare, maintien.
```

### 3.8. CORE-8 - Protection / signalisation

Statut :

```text
necessaire ;
pas une macro expressive.
```

Correction :

CORE-8 ne doit pas etre pense comme un controle musical classique.

Il doit etre pense comme :

```text
vue de priorites ;
signalisation ;
etat de limitation ;
alerte de conflit.
```

Decision :

```text
Garder CORE-8 permanent mais non expressif.
```

---

## 4. Verdict sur le noyau global

Le noyau global est coherent.

Mais il doit etre lu comme :

```text
4 controles vraiment expressifs permanents :
- fonction dominante ;
- etat de forme ;
- didgeridoo ;
- grave ;

3 controles expressifs transversaux :
- espace ;
- halo ;
- corps/retour ;

1 systeme de signalisation :
- protection / priorites.
```

Risque actuel :

```text
8 controles peuvent sembler equivalants.
```

Correction :

```text
CORE-8 n'est pas une macro expressive.
CORE-1 et CORE-2 structurent.
CORE-3 a CORE-7 jouent.
```

---

## 5. Audit des scenes prioritaires

### 5.1. SCN-1 - Didgeridoo / systeme minimum

Verdict :

```text
scene indispensable ;
jouable ;
doit rester la scene la plus robuste.
```

Fonction dominante claire :

```text
Le didgeridoo est source, guide, presence ou perturbateur.
```

Macros actuelles :

- Liberte didgeridoo ;
- Guide harmonique ;
- Conflit grave ;
- Traitement source ;
- Attaques / souffle ;
- Retour corps.

Risque de surcharge :

```text
Guide harmonique, conflit grave et traitement source peuvent tous demander attention.
```

Pack jouable recommande :

```text
M1 - Role didgeridoo
Libre protege -> Guide -> Systeme adapte -> Didgeridoo adapte -> Source traitee.

M2 - Relation grave
Soutien -> Adaptation -> Retrait grave genere -> Graves libres.

M3 - Presence / traitement
Sec -> Proche enrichi -> Cavite -> Halo source.

M4 - Articulation
Souffle -> Attaques -> Micro-pulse -> Perturbation.

M5 - Retour / sortie
Attente -> Retour grave -> Retour pulse -> Transfert scene.
```

Macro a fusionner :

```text
Guide harmonique peut etre inclus dans Role didgeridoo.
```

Question non bloquante :

```text
Jusqu'ou le didgeridoo traite devient-il source fonctionnalisee ?
```

Valeur par defaut :

```text
Didgeridoo present = Libre protege par defaut.
```

### 5.2. SCN-2 - Techno corporelle naturalisee

Verdict :

```text
scene centrale ;
jouable ;
doit rester le repere corporel principal.
```

Fonction dominante :

```text
Pression rythmique naturalisee.
```

Risque :

Trop de controles peuvent vouloir definir le corps :

- Corps ;
- densite d'attaques ;
- grave soutien ;
- matiere rythmique ;
- cadre techno ;
- espace rythmique.

Pack jouable recommande :

```text
M1 - Corps / pulse
Retrait -> Pulse implicite -> Pulse lisible -> Retour fort.

M2 - Densite / interlocking
Rare -> Leger -> Dense -> Seuil.

M3 - Grave corporel
Trace -> Soutien -> Porteur ponctuel -> Retrait.

M4 - Matiere naturalisee
Souffle -> Friction -> Peau/bois -> Resonance -> Pseudo-techno naturalise.

M5 - Espace rythmique / sortie
Proche -> Commun -> Rythme-pression -> Contraction -> Suspension.
```

Macro a reduire :

```text
Cadre techno peut etre un etat de scene ou une couche, pas forcement une macro permanente.
```

Question non bloquante :

```text
Niveau exact de pulse explicite selon scene.
```

Valeur par defaut :

```text
Le corps est oriente, mais la techno peut rester fantome.
```

### 5.3. SCN-3 - Techno suspendue tres longue

Verdict :

```text
scene centrale ;
tres compatible avec les souhaits ;
jouable si le retour est toujours disponible.
```

Fonction dominante :

```text
Maintenir une techno par memoire, tension, espace ou attente.
```

Risque :

La suspension peut absorber :

- halo ;
- espace ;
- retrait corps ;
- micro-variation ;
- retour.

Pack jouable recommande :

```text
M1 - Duree / maintien
Court -> Long -> Tres long -> Indefini decide.

M2 - Memoire techno
Absente -> Fantome -> Cadre latent -> Pre-retour.

M3 - Corps / retour
Oriente -> Suspendu -> Retire -> Retour prepare.

M4 - Monde long / halo
Commun -> Immersif -> Immense -> Hors-monde ; Halo Auto/Lock/Cut.

M5 - Sortie
Maintenir -> Contracter -> Impact rare -> Retour grave -> Retour pulse.
```

Fusion recommandee :

```text
Espace long et Halo memoire peuvent etre controles ensemble en scene suspendue,
car ils servent souvent la meme fonction perceptive.
```

Decision :

```text
La duree longue n'est pas un probleme.
Le seul risque est l'absence de sortie lisible quand le retour devient desirable.
```

Question non bloquante :

```text
Quels mondes longs sont autorises par defaut ?
```

Valeur par defaut :

```text
Commun / immersif autorises.
Hors-monde = scene ou choix live explicite.
```

### 5.4. SCN-4 - Gong / bloom grave / metal-gong

Verdict :

```text
scene importante ;
puissante ;
fragile cote grave et reverb.
```

Fonction dominante :

```text
Le gong ouvre bloom, metal, souffle grave, queue ou rugissement.
```

Risque :

Conflit entre :

- queue longue ;
- bloom grave ;
- vrai sub ;
- partiels ;
- espace metal ;
- didgeridoo.

Pack jouable recommande :

```text
M1 - Fonction gong
Impact -> Signal -> Halo -> Bloom -> Rugissement -> Resolution.

M2 - Queue / halo metal
Court -> Long -> Lock -> Force -> Cut.

M3 - Bloom grave / sub
Off -> Trace -> Corps -> Pression -> Bloom -> Libre.

M4 - Partiels / tension
Stable -> Battements -> Tension -> Rugosite -> Resolution.

M5 - Espace / sortie
Cavite -> Metal-gong -> Immense -> Hors-monde -> Retour commun.
```

Fusion recommandee :

```text
Relation sub doit etre incluse dans Bloom grave / sub.
```

Question non bloquante :

```text
Fonction prioritaire du gong selon passage : base, souffle, bloom, tension, peak ou retour.
```

Valeur par defaut :

```text
Bloom grave autorise par scene.
Graves libres seulement par choix explicite.
```

### 5.5. SCN-5 - Sound-system immersion / domination

Verdict :

```text
scene centrale pour pression et espace ;
jouable ;
necessite signalisation fatigue/conflit grave.
```

Fonction dominante :

```text
Immersion corporelle, pression grave, domination decidee.
```

Risque :

Confusion possible entre :

- immersion ;
- domination ;
- confort ;
- fatigue ;
- sub libre ;
- espace immense.

Pack jouable recommande :

```text
M1 - Immersion / domination
Commun -> Enveloppant -> Immense -> Domination.

M2 - Pression sub
Trace -> Soutien -> Porteur -> Libre.

M3 - Vide / headroom
Dense -> Espace -> Vide actif -> Pression par vide.

M4 - Flow / retour masse
Stable -> Pousse -> Vague -> Retrait -> Impact.

M5 - Limite / sortie
Doux -> Massif -> Limite -> Sortie.
```

Fusion recommandee :

```text
Retour masse peut etre inclus dans Flow / retour masse.
```

Question non bloquante :

```text
Niveau exact de domination desirable.
```

Valeur par defaut :

```text
Domination possible mais explicite.
Immersion profonde possible sans domination.
```

### 5.6. SCN-6 - Voix exposee integree

Verdict :

```text
scene utile ;
plutot couche ou scene ponctuelle ;
jouable si l'integration reste centrale.
```

Fonction dominante :

```text
Voix comme presence, souffle, signal, cri, texture ou quasi-melodie integree.
```

Risque :

- chanson par defaut ;
- lead vocal trop autonome ;
- pitch correction reconnaissable ;
- voix trop nue ou non integree ;
- intelligibilite imposee.

Pack jouable recommande :

```text
M1 - Role vocal
Off -> Souffle -> Presence -> Signal -> Cri -> Texture.

M2 - Integration
Proche -> Cavite -> Souffle-air -> Halo source -> Choeur spectral.

M3 - Intelligibilite / melodie
Masquee -> Phoneme -> Fragment -> Presque chantable.

M4 - Exposition integree
Fond -> Milieu -> Avant -> Exposee integree -> Transgression.

M5 - Halo / sortie voix
Off -> Momentary -> Lock -> Force -> Dissoudre -> Cut.
```

Fusion recommandee :

```text
Halo vocal et sortie voix peuvent etre une seule macro.
```

Question non bloquante :

```text
Voix active seulement avec voix reelle ou aussi generation vocale ?
```

Valeur par defaut :

```text
Voix exposee toujours integree acoustiquement ou virtualo-acoustiquement.
Pas de pitch correction reconnaissable.
```

### 5.7. SCN-7 - Acid naturalise / ligne vivante

Verdict :

```text
scene pertinente ;
plutot couche motivique ou passage ;
fragile cote reconnaissance.
```

Fonction dominante :

```text
Ligne vivante, motif, torsion, glissement, acid naturalise.
```

Risque :

- ligne trop synthetique ;
- motif trop autonome ;
- lead synth banal ;
- cliche acid ;
- reconnaissance qui prend le dessus sur la scene.

Pack jouable recommande :

```text
M1 - Ligne / motif
Absente -> Fragment -> Motif -> Ligne vivante -> Hook minimal.

M2 - Torsion / naturalisation
Stable -> Glissement -> Formant -> Resonance -> Rugosite.

M3 - Source de ligne
Didgeridoo -> Voix -> Tube/cavite -> Partiels -> Basse naturalisee.

M4 - Reconnaissance / anti-cliche
Ambigue -> Reconnaissable -> Memorable -> Seuil cliche -> Re-naturaliser.

M5 - Relation corps/grave
Suspendu -> Oriente -> Basse-motif -> Retrait.
```

Fusion recommandee :

```text
Acid naturalise et anti-cliche doivent etre une seule logique :
approcher l'energie acid sans importer le timbre cliche.
```

Question non bloquante :

```text
Limite exacte du hook minimal.
```

Valeur par defaut :

```text
La ligne peut etre reconnaissable.
Elle ne doit pas devenir synth identifiable par defaut.
```

### 5.8. SCN-8 - Polytexture rythmico-spectrale

Verdict :

```text
scene importante ;
jouable si une hierarchie reste lisible ;
risque eleve d'accumulation.
```

Fonction dominante :

```text
Densite lisible : couches, attaques, interlocking, partiels, tension spectrale.
```

Risque :

Toutes les dimensions peuvent devenir actives :

- nombre de couches ;
- hierarchie ;
- interlocking ;
- spectre ;
- corps ;
- nettoyage.

Pack jouable recommande :

```text
M1 - Nombre de couches
1 -> 2 -> 3 -> Dense -> Seuil.

M2 - Hierarchie
Claire -> Partagee -> Instable -> Retour clair.

M3 - Interlocking / attaques
Off -> Leger -> Actif -> Dense.

M4 - Corps / tension
Oriente -> Flottant -> Perdu decide -> Retour.

M5 - Nettoyage / sortie
Auto -> Cut halo -> Retrait couche -> Simplification volontaire.
```

Macro a reporter :

```text
Spectre peut etre une preparation de scene ou une couche,
sauf si la scene est explicitement spectrale.
```

Question non bloquante :

```text
Nombre maximal de couches utile.
```

Valeur par defaut :

```text
Une couche reste directrice.
```

### 5.9. SCN-9 - Transgression controlee

Verdict :

```text
scene indispensable ;
jouable si elle reste fonctionnelle ;
ne doit pas devenir un etat sans cause.
```

Fonction dominante :

```text
Peak, rupture, rugissement, saturation organique, domination, consequence ou sortie.
```

Risque :

- transgression gratuite ;
- fatigue ;
- saturation non choisie ;
- perte de lisibilite ;
- retour impossible ;
- confusion entre erreur et decision.

Pack jouable recommande :

```text
M1 - Regime
Off -> Preparation -> Peak -> Maintien -> Consequence -> Sortie.

M2 - Source de crise
Grave -> Gong -> Voix -> Espace -> Microtonalite -> Masse.

M3 - Risque accepte
Normal -> Fort -> P1 accepte -> P0 jamais.

M4 - Matiere extreme
Friction -> Rugosite -> Saturation organique -> Dissonance -> Retrait.

M5 - Espace / sortie
Immense -> Hors-monde -> Cut -> Retour commun -> Silence / corps.
```

Fusion recommandee :

```text
Saturation organique et espace extreme peuvent etre deux dimensions,
mais une seule doit etre manipulee en continu dans un peak.
```

Question non bloquante :

```text
Duree maximale de maintien.
```

Valeur par defaut :

```text
Transgression possible seulement avec fonction claire.
P0 jamais contournable.
```

---

## 6. Audit des superpositions

### 6.1. Regle principale

Regle de base :

```text
1 DOM : scene dominante.
0-2 LAYER : couches actives.
GESTES : ponctuels.
ETAT : persistant mais secondaire.
PROTECTION : permanente.
```

Si deux scenes veulent etre DOM :

```text
soit l'une devient couche ;
soit elles alternent ;
soit on cree une transition ;
soit on assume une crise/transgression.
```

### 6.2. Superpositions fortes

#### Didgeridoo + techno corporelle

Statut :

```text
stable ;
probablement central.
```

Roles possibles :

```text
DOM : techno corporelle.
LAYER : didgeridoo libre / guide / perturbateur.
```

Conflit :

```text
didgeridoo grave vs sub/pulse.
```

Protection :

```text
mode GRV adapte, retrait grave genere, source didgeridoo protegee.
```

#### Didgeridoo + suspension

Statut :

```text
stable ;
tres important pour setup minimum.
```

Roles possibles :

```text
DOM : suspension ou didgeridoo.
LAYER : l'autre fonction.
```

Conflit :

```text
source live effacee par halo/espace.
```

Protection :

```text
source essentielle protegee ; Halo Cut ou Safe force.
```

#### Gong + immersion sound-system

Statut :

```text
puissant ;
fragile.
```

Roles possibles :

```text
DOM : immersion ou gong bloom.
LAYER : l'autre.
```

Conflit :

```text
sub + bloom + partiels + salle.
```

Protection :

```text
signal conflit grave ; P1 sub illisible ; relation sub explicite.
```

#### Gong + suspension

Statut :

```text
stable ;
fort potentiel sensoriel.
```

Roles possibles :

```text
DOM : suspension.
LAYER : gong bloom / metal / signal.
```

Conflit :

```text
boue de reverb ou queue decoratives non decidees.
```

Protection :

```text
queue Lock seulement si decidee ; Auto-Pro boue grave.
```

#### Techno corporelle + polytexture

Statut :

```text
central ;
a surveiller.
```

Roles possibles :

```text
DOM : techno corporelle.
LAYER : polytexture.
```

Conflit :

```text
densite qui efface pulse ou attaque principale.
```

Protection :

```text
hierarchie obligatoire ; nettoyage de couche.
```

#### Techno suspendue + acid naturalise

Statut :

```text
coherent ;
utile pour tension/memoire.
```

Roles possibles :

```text
DOM : suspension.
LAYER : ligne vivante.
```

Conflit :

```text
ligne trop lead, trop synthetique ou trop autonome.
```

Protection :

```text
anti-cliche ; reconnaissance surveillee ; motif rattache a une fonction.
```

#### Voix exposee integree + suspension

Statut :

```text
coherent ;
potentiellement tres fort.
```

Roles possibles :

```text
DOM : suspension ou voix ponctuelle.
LAYER : integration vocale.
```

Conflit :

```text
voix non integree, intelligibilite imposee, chanson involontaire.
```

Protection :

```text
integration obligatoire ; pas de pitch correction reconnaissable.
```

#### Transgression + n'importe quelle scene

Statut :

```text
compatible si fonction claire.
```

Roles possibles :

```text
GESTE : peak ou rupture.
ETAT : pression, rugosite, domination, dissonance.
DOM : seulement si la scene est vraiment transgression.
```

Conflit :

```text
transgression qui remplace la fonction dominante.
```

Protection :

```text
risque accepte ; sortie obligatoire ; P0 prioritaire.
```

### 6.3. Superpositions fragiles

#### Acid naturalise + voix

Risque :

```text
double lead : ligne + fragment vocal.
```

Regle :

```text
Une seule des deux fonctions peut devenir reconnaissable au premier plan.
L'autre doit rester texture, source, trace ou reponse.
```

#### Gong bloom + didgeridoo grave + vrai sub

Risque :

```text
conflit grave/harmonique majeur.
```

Regle :

```text
Choisir qui porte le vrai grave.
Les autres deviennent partiels, souffle, trace ou source protegee.
```

#### Immersion sound-system + grande reverb

Risque :

```text
masse impressionnante mais moins lisible.
```

Regle :

```text
Immersion corporelle et espace immense peuvent coexister,
mais l'un doit etre la fonction dominante.
```

#### Polytexture + transgression

Risque :

```text
complexite + saturation = perte de hierarchie.
```

Regle :

```text
Si transgression monte, polytexture doit garder une couche directrice
ou accepter une sortie par simplification.
```

#### Suspension tres longue + absence totale de corps

Risque :

```text
pas musicalement interdit ;
mais retour non preparable si aucun repere ne subsiste.
```

Regle :

```text
Acceptable si decide.
Garder au moins un moyen de retour : grave, impact, contraction, memoire techno, source live.
```

---

## 7. Macros redondantes ou a fusionner

### 7.1. Espace + halo

Probleme :

Dans plusieurs scenes, espace et halo sont separes alors qu'ils portent parfois la meme fonction.

Correction :

```text
Si la fonction est suspension, memoire ou queue :
Espace + Halo peuvent etre une macro couplee.

Si la fonction est proximity, source, ou attaque :
Espace et Halo doivent rester distincts.
```

### 7.2. Grave + sub + bloom

Probleme :

Grave, vrai sub, GSP et bloom gong risquent de former quatre decisions concurrentes.

Correction :

```text
Toujours choisir un role de grave :
Retrait / Trace / Soutien / Porteur / Bloom / Libre.
```

Les sous-systemes s'adaptent a ce role.

### 7.3. Corps + retour + sortie

Probleme :

Corps, retour et sortie apparaissent dans plusieurs macros.

Correction :

```text
CORE-7 gere le rapport general au corps.
Chaque scene garde seulement une sortie specifique.
```

### 7.4. Densite + transgression

Probleme :

Densite elevee peut etre confondue avec transgression.

Correction :

```text
Densite = nombre/complexite des couches.
Transgression = franchissement expressif assume.
```

### 7.5. Reconnaissance melodique + anti-cliche

Probleme :

Dans acid/voix/motif, reconnaissance et risque stylistique sont lies.

Correction :

```text
Une seule macro peut couvrir :
Ambigue -> Reconnaissable -> Memorable -> Seuil cliche -> Re-naturaliser.
```

---

## 8. Macros manquantes

### 8.1. Couche active

Manque :

```text
Un moyen conceptuel de dire quelle couche importee est active.
```

Exemples :

```text
Didgeridoo comme couche source.
Gong comme couche bloom.
Acid comme couche ligne.
Voix comme couche presence.
Transgression comme geste.
Polytexture comme couche densite.
```

Decision :

```text
A ajouter dans la prochaine specification de noyau jouable.
```

### 8.2. Priorite de conflit grave

Manque :

```text
Une decision claire quand didgeridoo, gong, sub et basse generee se superposent.
```

Valeurs possibles :

```text
Didgeridoo guide ;
Sub porte ;
Gong bloom porte ;
Grave soutien ;
Grave se retire ;
Graves libres.
```

Decision :

```text
Cette macro est importante.
Elle doit probablement etre globale ou semi-globale.
```

### 8.3. Retour prepare

Manque :

```text
Un etat clair qui ne force pas le retour mais le rend possible.
```

Valeurs :

```text
aucun retour ;
retour latent ;
retour prepare ;
retour force ;
refus du retour.
```

Decision :

```text
A integrer a CORE-7 ou CORE-2.
```

### 8.4. Sortie de crise

Manque :

```text
Une macro specifique pour sortir d'une transgression, d'une domination ou d'une accumulation.
```

Valeurs :

```text
cut ;
silence ;
retour commun ;
retour corps ;
retrait grave ;
resolution ;
dissolution halo.
```

Decision :

```text
Peut etre scene-dependent mais doit etre toujours prevue.
```

### 8.5. Lisibilite de hierarchie

Manque :

```text
Un indicateur ou controle de couche directrice.
```

Decision :

```text
Indispensable pour polytexture, transgression, suspension + couches.
```

---

## 9. Questions restantes classees

### 9.1. Questions a ne pas poser maintenant

Ces questions peuvent etre reportees car elles demandent des choix fins ou des situations concretes.

```text
Niveau exact de domination sound-system.
Nombre maximal de couches.
Duree maximale d'une transgression.
Limite exacte du hook minimal.
Niveau exact de rugissement gong.
Niveau exact de voix presque chantable.
Mondes longs autorises par defaut dans tous les cas.
```

Elles ne bloquent pas l'organisation conceptuelle.

### 9.2. Questions resolues par defaults provisoires

#### Mode DID par defaut

Decision provisoire :

```text
Libre protege.
```

Raison :

Le setup minimum doit fonctionner avec didgeridoo seul + PC.

#### Mode GRV par defaut

Decision provisoire :

```text
Trace / soutien discret / retrait selon scene.
Pas de grave libre sans choix explicite.
```

#### Halo par defaut

Decision provisoire :

```text
Auto.
Lock, Force, Cut et Safe force restent explicites.
```

#### Monde spatial par defaut

Decision provisoire :

```text
Commun / proche enrichi.
Immersif, immense, metal, hors-monde par scene ou choix live.
```

#### Transgression par defaut

Decision provisoire :

```text
Off.
Possible comme geste, etat ou scene si fonction claire.
```

#### Voix par defaut

Decision provisoire :

```text
Off ou integree.
Jamais voix exposee sans integration.
Pas de pitch correction reconnaissable.
```

### 9.3. Questions utiles a poser plus tard

Questions vraiment utiles, mais pas maintenant :

```text
1. Dans les situations de grave complexe, quelle priorite veux-tu le plus souvent :
   didgeridoo guide, gong bloom, sub porteur, ou grave retire ?

2. Pour les couches importees, lesquelles doivent etre accessibles le plus vite :
   didgeridoo, gong, acid, voix, polytexture, transgression, halo ?

3. Dans une suspension tres longue, quel retour doit etre le plus naturel :
   grave, pulse, contraction espace, source live, impact rare, ou silence ?

4. Dans une polytexture, qu'est-ce qui doit rester directeur :
   corps, attaque, grave, source live, espace, ou ligne ?

5. La transgression doit-elle etre plutot un geste de peak,
   un etat maintenu, ou une consequence apres un peak ?
```

Ces questions devront etre posees seulement quand on specifiera les couches prioritaires.

---

## 10. Corrections recommandees

### COR-JOU-1 - Renommer scene en scene dominante

Objectif :

```text
eviter la lecture preset exclusif.
```

Correction :

```text
Scene active -> Scene dominante.
Fonction principale -> Fonction dominante.
Scene secondaire -> Couche active / geste / etat.
```

### COR-JOU-2 - Reduire chaque scene a 5 macros jouables

Objectif :

```text
eviter 6-7 macros + 8 controles globaux.
```

Regle :

```text
Chaque scene doit proposer :
1 role/fonction ;
1 intensite/densite ;
1 source/matiere ;
1 espace/halo ou grave selon scene ;
1 sortie/risque.
```

### COR-JOU-3 - Creer une notion de couche importee

Objectif :

```text
permettre les superpositions sans multiplier les scenes.
```

Types :

```text
source ;
grave ;
ligne ;
halo ;
espace ;
densite ;
transgression ;
retour.
```

### COR-JOU-4 - Separer protection et expression

Objectif :

```text
ne pas traiter P0/P1 comme des macros artistiques.
```

Correction :

```text
Protection = signalisation permanente.
Expression = controle live ou scene.
```

### COR-JOU-5 - Definir les conflits de direction

Objectif :

```text
eviter que deux fonctions dirigent le meme parametre.
```

Conflits prioritaires :

```text
qui porte le grave ;
qui porte le corps ;
qui porte l'espace ;
qui porte la reconnaissance melodique ;
qui porte la crise ;
qui porte la sortie.
```

---

## 11. Etat de compatibilite apres audit

### Compatible

- scene dominante + couches superposables ;
- didgeridoo libre protege par defaut ;
- techno corporelle et suspension longue ;
- gong bloom et immersion ;
- acid naturalise comme ligne/couche ;
- voix exposee integree ;
- polytexture si hierarchie ;
- transgression controlee si fonction claire ;
- Auto-Pro comme protection seulement.

### Fragile mais resolvable

- grave complexe didgeridoo/gong/sub ;
- espace + halo + reverb longue ;
- polytexture + transgression ;
- voix + acid ;
- sound-system + grande reverb ;
- suspension longue sans retour prepare.

### A eviter par defaut

- scene pensee comme preset exclusif ;
- toutes les macros exposees en meme temps ;
- Auto-Pro qui choisit une forme ;
- transgression sans fonction ;
- motif autonome hors scene ;
- voix exposee non integree ;
- grave libre sans choix live ou scene ;
- reverb expressive non decidee.

---

## 12. Decision v0.1

Le corpus scenes/macros est utilisable.

L'etape suivante a consiste a produire une specification plus compacte :

```text
SPECIFICATION_NOYAU_JOUABLE_SCENES_COUCHES_v0_1
```

But de cette specification compacte :

- transformer les 8 CORE en noyau jouable hierarchise ;
- convertir les 9 scenes en packs de 5 macros maximum ;
- definir la logique `scene dominante + couches + gestes + etats` ;
- fixer les defaults provisoires ;
- lister les conflits de direction ;
- preparer ensuite une specification fonctionnelle plus proche de l'architecture.

Il n'est pas necessaire de retravailler les documents stylistiques avant cette etape.

Les documents stylistiques et de generation restent assez consolides pour servir de sources.

Cette operation devait etre une compression fonctionnelle, pas une nouvelle expansion.

---

## 13. Suivi

Date : 2026-06-21

Action realisee :

- `SPECIFICATION_NOYAU_JOUABLE_SCENES_COUCHES_v0_1.md` cree.

Conclusion :

```text
Le noyau jouable est maintenant defini.
La generation est reservee comme prochaine fiche specifique.
```

Nouvelle prochaine etape :

```text
SPECIFICATION_BLOC_GENERATION_SONORE_MOTIFS_RYTHMIQUES_MELODIQUES_v0_1
```
