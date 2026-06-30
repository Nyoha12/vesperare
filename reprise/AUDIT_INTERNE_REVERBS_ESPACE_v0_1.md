# AUDIT INTERNE - REVERBS / ESPACE REACTIF v0.1

Projet : Vesperare
Statut : audit de compatibilite interne
Date : 2026-06-21

Document audite :

- REVERBS_ESPACE_REACTIF_v0_2.md

## 0. Verdict court

La fiche v0.2 est globalement coherente.

Elle peut servir de base au bloc suivant :

```text
Generation sonore / motifs rythmiques et melodiques.
```

Mais elle doit recevoir quelques corrections de compatibilite avant d'etre traitee comme reference stable.

Les problemes ne sont pas des contradictions bloquantes.

Ce sont surtout :

- priorites a rendre explicites ;
- termes a definir plus strictement ;
- risques de complexite live ;
- conflits possibles entre Auto-Pro, choix live, halo lock, grave, espaces longs et mondes spatiaux ;
- manque d'une matrice de decision simple.

Verdict :

```text
Solide, mais a renforcer par des regles de compatibilite.
```

## 1. Points solides

### 1.1. Separation Auto-Pro / choix artistique

La fiche distingue correctement :

- hygiene sonore ;
- coherence ;
- protection ;
- choix live ;
- scene ;
- exception.

Point solide :

```text
Auto-Pro = hygiene sonore + coherence + protection.
Auto-Pro != composition automatique.
```

### 1.2. Mondes spatiaux comme couches

La clarification est bonne :

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

Cela evite le piege :

```text
un monde spatial = un preset de reverb.
```

### 1.3. Grave spatial

La hierarchie est claire :

```text
Auto-Pro / Off / Trace / Corps / Pression / Bloom / Libre
```

Point solide :

- Auto-Pro supervise ;
- Bloom est decision forte ;
- Libre est transgression explicite ;
- vrai sub prioritaire.

### 1.4. Shimmer

La position est coherente :

- shimmer classique interdit par defaut ;
- fonctions spectrales recuperees ;
- exception PA-X volontaire possible.

### 1.5. Espaces longs

La fiche respecte bien le souhait utilisateur :

- espaces tres longs acceptes ;
- decor decide accepte ;
- vide decide accepte ;
- retrait long du corps accepte ;
- pas de pathologisation automatique de l'ambient ou du decor.

## 2. Contradictions potentielles

### 2.1. Auto-Pro vs Halo Lock

Conflit :

```text
Halo Lock veut maintenir un halo.
Auto-Pro peut reduire masquage, grave, feedback, brillance ou headroom.
```

Risque :

- Auto-Pro coupe trop ;
- Halo Lock empeche une protection ;
- le musicien ne comprend pas pourquoi le halo change.

Regle manquante :

```text
Auto-Pro peut alterer un Halo Lock seulement pour protection critique
ou protection mix vitale.
Il doit d'abord tenter l'alteration minimale.
Il doit signaler la raison.
```

Correction proposee :

```text
COMP-HALO-1 - Halo Lock
Lock maintient la fonction du halo, pas forcement toutes ses frequences.

COMP-HALO-2 - Alteration minimale
Avant cut : filtrer, ducker, reduire decay, deplacer spectralement, garder trace.

COMP-HALO-3 - Signalisation obligatoire
Tout bridage de Lock/Force doit indiquer la raison.
```

### 2.2. Auto-Pro vs espaces longs

Conflit :

```text
Espaces longs peuvent etre tres longs, decoratifs, vides ou sans corps.
Auto-Pro surveille flou, masquage, grave, densite.
```

Risque :

- Auto-Pro reduit un espace long voulu ;
- espace long devient intouchable meme s'il detruit le mix ;
- confusion entre "derive non decidee" et "etat decide".

Regle manquante :

```text
Un espace long decide doit avoir une etiquette de fonction.
Auto-Pro ne peut pas le reduire pour raison esthetique.
Auto-Pro peut seulement le modifier pour protection critique ou mix vitale.
```

Correction proposee :

```text
COMP-LONG-1 - Fonction obligatoire
Tout espace long maintenu doit avoir une fonction interne :
suspension, memoire, pression, attente, immersion, retrait, transgression,
resolution, seuil, vide decide, decor decide, monde stable, loupe, retour.

COMP-LONG-2 - Protection
Auto-Pro peut proteger grave/headroom/feedback/masquage vital.
Il ne peut pas raccourcir par gout.
```

### 2.3. Auto-Pro vs monde principal

Conflit :

```text
Auto-Pro adapte a l'interieur du monde choisi.
Mais certains ajustements peuvent changer la perception du monde.
```

Exemple :

- reduire trop la queue d'un monde Immense ;
- elargir un monde Proche ;
- retirer trop de metal dans Metal-gong ;
- couper le bas d'un monde Pression.

Regle manquante :

```text
Auto-Pro doit preserver la fonction du monde principal.
```

Correction proposee :

```text
COMP-WORLD-1 - Invariant de monde
Chaque monde doit avoir une fonction minimale a proteger.

COMP-WORLD-2 - Adaptation interne
Auto-Pro peut modifier parametres secondaires,
mais pas supprimer la fonction principale.
```

### 2.4. Naturalisation sans source claire vs source live prioritaire

Conflit apparent :

```text
Naturalisation prioritaire commence par Source live.
Mais un artefact peut etre valide sans source claire si fonction forte.
```

Ce n'est pas une contradiction si on distingue :

- ordre par defaut ;
- ordre selon contexte ;
- exception par fonction forte.

Regle manquante :

```text
La fonction gagne contre l'ordre de naturalisation.
```

Correction proposee :

```text
COMP-NAT-1 - Priorite conditionnelle
Source live est prioritaire quand pertinente.
Fonction forte peut valider sans source claire.

COMP-NAT-2 - PA-X
Sans source claire ni fonction forte, risque PA-X.
```

### 2.5. Shimmer interdit vs fonctions spectrales autorisees

Conflit apparent :

```text
Shimmer classique interdit.
Partiels, air, hauteur impossible et gong spectral autorises.
```

Ce n'est pas contradictoire si "shimmer" designe une signature reconnaissable,
pas toute transposition ou brillance.

Regle manquante :

```text
Interdire la signature, pas la fonction.
```

Correction proposee :

```text
COMP-SHM-1 - Fonction vs signature
Autorise : elevation de partiels, air, metal, microtension.
Interdit par defaut : effet octave-up lisse/preset ambient reconnaissable.
```

### 2.6. Assignations par defaut vs liberte instrumentale

Conflit :

```text
Didgeridoo, gong, voix, sub ont des assignations par defaut.
Mais le projet veut que les instruments restent libres.
```

Risque :

- les assignations deviennent normatives ;
- didgeridoo toujours proche/commun ;
- gong toujours metal/cavite ;
- voix toujours souffle-air ;
- sub toujours sec/trace.

Regle manquante :

```text
Assignation par defaut = depart de securite, pas obligation stylistique.
```

Correction proposee :

```text
COMP-ASG-1 - Defaut reversible
Toute assignation par defaut doit pouvoir etre changee par scene ou live.

COMP-ASG-2 - Instrument libre
Un mode libre doit exister pour chaque source importante,
avec protections critiques seulement.
```

## 3. Termes trop flous

### 3.1. Fonction forte

Probleme :

Le terme "fonction forte" revient souvent.

Il permet de justifier :

- artefact sans source claire ;
- espace long sans source ;
- exception PA-X ;
- hors-monde ;
- libre ;
- transgression.

Risque :

Tout peut devenir "fonction forte" si le terme reste trop vague.

Definition proposee :

```text
Fonction forte =
un role musical/perceptif identifiable dans la forme,
qui justifie la presence du son malgre son risque.
```

Criteres minimaux :

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
- signal formel.

Regle :

```text
Si la fonction ne peut pas etre nommee, elle est faible.
```

### 3.2. Protection critique

Probleme :

La protection critique gagne contre le choix live.

Elle doit donc etre definie strictement.

Definition proposee :

```text
Protection critique =
risque de clipping, feedback, headroom dangereux,
sub destructeur, resonance salle dangereuse,
ou masquage total d'une source essentielle.
```

Ne pas inclure :

- gout esthetique ;
- peur du flou ;
- peur de l'ambient ;
- espace long seulement parce qu'il est long ;
- decor decide ;
- vide decide.

### 3.3. Protection mix vitale

Definition proposee :

```text
Protection mix vitale =
intervention necessaire pour que le systeme reste musicalement lisible :
sub, attaque, didgeridoo, voix, gong ou forme principale sont menaces.
```

Elle est moins forte que protection critique.

Elle doit alterer minimalement.

### 3.4. Monde principal

Definition proposee :

```text
Monde principal =
orientation spatiale dominante choisie par scene ou live,
dont la fonction doit rester perceptible apres adaptations.
```

Exemples :

- Proche enrichi ;
- Commun ;
- Immersif ;
- Immense ;
- Cavite ;
- Metal-gong ;
- Hors-monde.

### 3.5. Decor decide

Definition proposee :

```text
Decor decide =
etat spatial qui peut etre decoratif,
mais dont le caractere decoratif est choisi comme fonction de scene.
```

Il peut servir :

- repos ;
- distance ;
- contraste ;
- attente ;
- trouble ;
- suspension ;
- monde stable ;
- rarete.

Il n'est pas automatiquement negatif.

## 4. Risques de surcomplexite

### 4.1. Trop de dimensions live

La fiche liste :

- monde principal ;
- distance ;
- enveloppement ;
- queue ;
- grave spatial ;
- halo ;
- naturalisation ;
- signalisation.

Risque :

Trop de controles simultanes.

Correction proposee :

```text
COMP-LIVE-1 - Deux niveaux de controle

Niveau 1 :
macros jouables.

Niveau 2 :
details de scene / edition / preparation.
```

Macros niveau 1 proposees :

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
- raisons de signalisation.

### 4.2. Trop d'options dans Grave spatial

La chaine est claire mais longue :

```text
Auto-Pro / Off / Trace / Corps / Pression / Bloom / Libre
```

Risque :

Confusion live.

Correction proposee :

```text
COMP-GSP-UI - Regrouper en 3 familles live

Clean : Auto-Pro / Off / Trace
Body : Corps / Pression
Risk : Bloom / Libre
```

### 4.3. Trop d'options Naturalisation

Risque :

Naturalisation devient un menu abstrait.

Correction proposee :

```text
COMP-NAT-UI - Naturalisation en 4 macros live

Source
Air/friction
Cavite/resonance
Rythme/pression

Libre reste exception.
```

## 5. Matrice de priorites proposee

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

## 6. Corrections a integrer dans v0.2

Corrections prioritaires :

```text
CORR-1 - Ajouter matrice P0-P5.
CORR-2 - Definir fonction forte.
CORR-3 - Definir protection critique et protection mix vitale.
CORR-4 - Ajouter regle Halo Lock : maintenir fonction, pas toutes frequences.
CORR-5 - Ajouter regle Monde principal : Auto-Pro preserve la fonction du monde.
CORR-6 - Ajouter regle Assignations : defauts reversibles, instruments libres.
CORR-7 - Ajouter separation controles live niveau 1 / details niveau 2.
```

Corrections secondaires :

```text
CORR-8 - Regrouper Grave spatial en familles Clean / Body / Risk pour l'interface future.
CORR-9 - Regrouper Naturalisation en macros Source / Air-friction / Cavite-resonance / Rythme-pression.
CORR-10 - Preciser decor decide et vide decide comme fonctions legitimes.
```

## 7. Verdict detaille

### 7.1. Peut-on passer a la generation sonore ?

Oui, mais mieux vaut d'abord integrer les corrections prioritaires dans la fiche v0.2.

Raison :

La generation sonore va creer exactement les conflits identifies :

- motifs qui demandent lisibilite ;
- sub qui demande protection ;
- acid naturalisee qui demande naturalisation ;
- polytexture qui demande controle de densite ;
- generation longue qui demande espace/halo ;
- artefacts qui demandent source ou fonction.

Si les priorites P0-P5 ne sont pas explicites, le bloc generation risque de reposer sur des regles implicites.

### 7.2. La v0.2 est-elle contradictoire ?

Non.

Elle est compatible.

Mais elle est encore trop implicite sur :

- qui gagne dans les conflits ;
- ce qui constitue une protection critique ;
- ce qu'est une fonction forte ;
- comment eviter la surcomplexite live.

### 7.3. Action recommandee

Action recommandee :

```text
Integrer CORR-1 a CORR-7 dans REVERBS_ESPACE_REACTIF_v0_2.
Puis passer au bloc generation sonore / motifs.
```

CORR-8 a CORR-10 peuvent etre ajoutees si on veut une v0.2 plus directement exploitable pour une future interface.

## 8. Resume court

```text
La fiche reverb/espace v0.2 est solide.
Elle n'a pas besoin d'etre repensee.

Elle doit seulement recevoir des regles de compatibilite :
- priorites P0-P5 ;
- fonction forte ;
- protection critique ;
- protection mix vitale ;
- halo lock ;
- monde principal ;
- defauts reversibles ;
- controles live niveau 1 / details niveau 2.

Apres cela, elle pourra servir de contrainte fiable pour le bloc generation.
```
