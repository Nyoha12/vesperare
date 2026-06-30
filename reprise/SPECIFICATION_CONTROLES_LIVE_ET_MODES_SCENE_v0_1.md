# SPECIFICATION CONTROLES LIVE ET MODES DE SCENE v0.1

Projet : Vesperare
Date : 2026-06-21
Statut : specification conceptuelle des controles live et modes de scene

Sources actives :

- `SPECIFICATION_CONCEPTUELLE_FONCTIONS_CONTROLES_PRIORITES_v0_1.md`
- `BESOINS_STYLISTIQUES_v0_4.md`
- `BESOINS_GENERATION_v0_4.md`
- `CARACTERISATION_DETAILLEE_ELEMENTS_v0_4.md`
- `REVERBS_ESPACE_REACTIF_v0_2.md`
- `AUDIT_COMPATIBILITE_CORPUS_ACTIF_v0_1.md`

But :

- definir ce qui doit etre sous la main en live ;
- definir ce qui doit etre prepare par scene ;
- definir ce qui doit rester automatique/protecteur ;
- eviter que les automations deviennent des decisions esthetiques non voulues ;
- preparer une future specification d'architecture sans la commencer.

Hors perimetre :

- interface graphique ;
- controleur physique ;
- nombre de boutons, potards ou macros Ableton ;
- devices Max for Live ;
- routings audio/MIDI ;
- algorithmes ;
- seuils numeriques ;
- organisation de pistes ;
- validation pratique.

---

## 1. Principe de repartition

Tout controle conceptuel doit appartenir a un des trois niveaux :

```text
N1 - Live direct
Ce que le musicien doit pouvoir choisir ou forcer pendant le live.

N2 - Scene / preparation
Ce qui est decide avant ou pendant une scene, mais pas forcement manipule en continu.

N3 - Auto-Pro / protection
Ce qui protege, corrige, signale ou limite sans composer a la place du musicien.
```

Regle :

```text
Un controle expressif important ne doit pas etre cache dans Auto-Pro.
Une protection vitale ne doit pas dependre d'un choix esthetique.
```

P0/P1/P2 :

```text
P0 - securite critique : toujours prioritaire.
P1 - protection mix vitale : prioritaire sauf risque explicitement accepte.
P2 - choix live explicite : prioritaire contre scene, assignation et Auto-Pro ordinaire.
```

---

## 2. Types de controles

### 2.1. Selecteur de mode

Choix principal entre plusieurs comportements.

Exemples :

- mode DID ;
- mode GRV ;
- mode HAL ;
- monde spatial ;
- mode GSP ;
- mode NAT.

Regle :

```text
Un selecteur de mode doit changer une logique musicale,
pas seulement un parametre cache.
```

### 2.2. Permission de scene

Autorisation preparee par scene.

Exemples :

- voix autorisee ;
- gong grave autorise ;
- graves libres autorises ;
- transgression autorisee ;
- espace hors-monde autorise ;
- halo long autorise.

Regle :

```text
Une permission de scene rend possible.
Elle ne force pas forcement l'apparition.
```

### 2.3. Force / intensite

Degre d'engagement d'une fonction.

Exemples :

- densite rythmique ;
- pression grave ;
- profondeur spatiale ;
- niveau de transgression ;
- presence du halo ;
- domination sound-system.

Regle :

```text
Une intensite ne suffit pas.
Elle doit etre liee a une fonction.
```

### 2.4. Lock / Force / Cut

Decision explicite sur maintien, imposition ou retrait.

Exemples :

- Halo Lock ;
- Halo Force ;
- Halo Cut ;
- monde spatial force ;
- grave libre ;
- retrait du corps decide ;
- retour du corps force.

Regle :

```text
Lock maintient une fonction.
Force impose un choix.
Cut retire volontairement.
Auto-Pro peut les limiter seulement selon P0/P1.
```

### 2.5. Momentary / geste ponctuel

Action breve ou ponctuelle.

Exemples :

- impact rare ;
- halo momentary ;
- freeze court ;
- contraction d'espace ;
- retour du grave ;
- bloom gong ;
- pic de transgression.

Regle :

```text
Un geste ponctuel doit avoir une consequence musicale.
```

### 2.6. Protection

Controle qui empeche le systeme de devenir illisible ou dangereux.

Exemples :

- sub illisible ;
- attaque masquee ;
- feedback ;
- headroom ;
- resonance salle dangereuse ;
- source essentielle masquee.

Regle :

```text
Une protection n'est pas un choix esthetique.
Elle peut modifier un choix esthetique seulement selon P0/P1.
```

### 2.7. Signalisation

Retour d'information indiquant qu'une priorite ou une protection agit.

Exemples :

- P0 actif ;
- P1 actif ;
- halo adapte ;
- monde spatial adapte ;
- grave libre limite ;
- source essentielle protegee.

Regle :

```text
Une intervention automatique importante doit etre lisible pour le musicien.
```

---

## 3. Surface live conceptuelle minimale

Cette section ne definit pas une interface.

Elle liste les decisions qui doivent rester accessibles en live.

### 3.1. Groupe A - Scene / fonction

Priorite : N1.

Controle principal :

```text
LIVE-A1 - Fonction principale
```

Valeurs :

- pression rythmique ;
- techno suspendue ;
- didgeridoo central ;
- gong / bloom ;
- voix exposee integree ;
- transgression ;
- retour du corps ;
- seuil / hors-monde ;
- monde stable ;
- naturalisation / integration.

Role :

- dire ce que la scene est en train de faire ;
- donner un cadre aux autres modes ;
- eviter que les controles deviennent independants.

Controle secondaire :

```text
LIVE-A2 - Etat de forme
```

Valeurs :

- preparation ;
- maintien ;
- retrait ;
- retour ;
- peak ;
- consequence ;
- sortie ;
- maintien prolonge.

Regle :

```text
La fonction principale doit etre visible conceptuellement avant les parametres.
```

### 3.2. Groupe B - Didgeridoo

Priorite : N1 si didgeridoo present.

Controle principal :

```text
LIVE-B1 - Mode DID
```

Valeurs :

- libre protege ;
- systeme adapte au didgeridoo ;
- didgeridoo adapte au systeme ;
- guide harmonique ;
- source traitee / fonctionnalisee ;
- perturbateur.

Controles associes :

```text
LIVE-B2 - Degre de liberte
LIVE-B3 - Guidage harmonique
LIVE-B4 - Adaptation des harmoniques
LIVE-B5 - Protection didgeridoo
LIVE-B6 - Retrait du grave genere si conflit
```

Repartition :

```text
Sous la main :
- mode DID ;
- guidage harmonique ;
- adaptation des harmoniques on/off ;
- retrait du grave genere autorise/interdit.

Prepare par scene :
- degre de liberte attendu ;
- relation au sub ;
- relation au halo ;
- role du didgeridoo dans la forme.

Auto-Pro :
- protection P0/P1 ;
- masquage critique ;
- feedback ou resonance dangereuse.
```

Regle :

```text
Le didgeridoo libre n'est pas un didgeridoo ignore.
Le didgeridoo integre n'est pas un didgeridoo force.
```

### 3.3. Groupe C - Grave / sub / gong grave

Priorite : N1.

Controle principal :

```text
LIVE-C1 - Mode GRV
```

Valeurs :

- didgeridoo guide harmonique ;
- soutien discret ;
- adaptation des harmoniques du didgeridoo ;
- retrait du grave genere ;
- graves libres ;
- gong / bloom grave ;
- sub ponctuel non identifiable.

Controles associes :

```text
LIVE-C2 - Vrai sub
absent / trace / soutien / porteur / libre

LIVE-C3 - Source porteuse
didgeridoo / gong / basse naturalisee / sub discret / voix transformee / friction / resonance

LIVE-C4 - Bloom grave
off / prepare / momentary / lock / force

LIVE-C5 - Retrait grave
auto-pro / autorise / force / interdit

LIVE-C6 - Conflit grave
didgeridoo / gong / voix / sub / salle
```

Repartition :

```text
Sous la main :
- mode GRV ;
- vrai sub ;
- graves libres ;
- bloom grave ;
- retrait grave.

Prepare par scene :
- source porteuse ;
- relation didgeridoo/sub ;
- relation gong/sub ;
- tolerance au risque ;
- fonction du gong grave.

Auto-Pro :
- sub destructeur ;
- sub illisible ;
- resonance salle dangereuse ;
- protection de source essentielle.
```

Regle :

```text
Par defaut, une seule fonction porte le vrai sub lisible.
Les exceptions doivent etre scene, choix live ou transgression volontaire.
```

### 3.4. Groupe D - Espace / monde spatial

Priorite : N1/N2.

Controle principal :

```text
LIVE-D1 - Monde spatial principal
```

Valeurs :

- sec protege ;
- proche enrichi ;
- commun ;
- souffle-air ;
- cavite ;
- immersif ;
- immense ;
- metal-gong ;
- rythme-pression ;
- hors-monde.

Controles associes :

```text
LIVE-D2 - Duree d'espace
courte / moyenne / longue / stable / freeze / indefinie decidee

LIVE-D3 - Proximite
proche / moyen / lointain / immense / hors-monde

LIVE-D4 - Reactivite
stable / source / scene / geste / rythme / energie

LIVE-D5 - Retrait d'espace
auto / momentary / cut / force / lock
```

Repartition :

```text
Sous la main :
- monde principal ;
- retrait/cut ;
- passage vers immense ou hors-monde ;
- contraction ou expansion.

Prepare par scene :
- modificateurs ;
- duree dominante ;
- sources qui appartiennent au monde ;
- niveau de decor decide ;
- niveau d'immersion.

Auto-Pro :
- correction douce ;
- adaptation a la salle ;
- protection sub/attaque/source ;
- pas de changement de monde esthetique sans choix live/scene.
```

Regle :

```text
Un monde spatial est une fonction perceptive.
Ce n'est pas un preset de reverb.
```

### 3.5. Groupe E - Halo

Priorite : N1.

Controle principal :

```text
LIVE-E1 - Mode HAL
```

Valeurs :

- Auto ;
- Lock ;
- Force ;
- Cut ;
- Momentary ;
- Safe force.

Controles associes :

```text
LIVE-E2 - Source du halo
didgeridoo / gong / voix / espace / generation / artefact / scene

LIVE-E3 - Droit au halo long
non / scene / lock / force / safe force

LIVE-E4 - Zone du halo
haut / medium / bas-medium / grave trace / large

LIVE-E5 - Baisse du halo
auto / scene / cut / momentary / retour corps
```

Repartition :

```text
Sous la main :
- mode HAL ;
- cut ;
- lock ;
- force ;
- momentary.

Prepare par scene :
- source du halo ;
- duree ;
- zone spectrale ;
- relation a l'attaque ;
- relation au grave.

Auto-Pro :
- adaptation P0/P1 ;
- filtrage, ducking, deplacement spectral ;
- signalisation si Lock/Force est limite.
```

Regle :

```text
Le halo long est autorise s'il est decide.
Le halo non decide qui floute la fonction est un risque.
```

### 3.6. Groupe F - Grave spatial

Priorite : N1/N2.

Controle principal :

```text
LIVE-F1 - Mode GSP
```

Valeurs :

- Auto-Pro ;
- Off ;
- Trace ;
- Corps ;
- Pression ;
- Bloom ;
- Libre.

Repartition :

```text
Sous la main :
- Off ;
- Trace / Corps / Pression ;
- Bloom ;
- Libre.

Prepare par scene :
- sources autorisees ;
- relation au vrai sub ;
- relation au gong ;
- relation au didgeridoo ;
- duree du grave spatial.

Auto-Pro :
- protection du vrai sub ;
- reduction de boue grave ;
- limitation de resonance dangereuse.
```

Regle :

```text
Bloom n'est pas un defaut.
Boue grave non voulue est un defaut.
```

### 3.7. Groupe G - Generation rythmique / pression

Priorite : N1/N2.

Controle principal :

```text
LIVE-G1 - Regime de pression
```

Valeurs :

- pulse explicite ;
- pulse implicite ;
- interlocking ;
- accent fantome ;
- respiration de matiere ;
- densite d'attaques ;
- rythme spatial ;
- retrait rythmique ;
- retour de cadre.

Controles associes :

```text
LIVE-G2 - Densite
LIVE-G3 - Complexite
LIVE-G4 - Accent directeur
LIVE-G5 - Retrait / retour
LIVE-G6 - Relation au grave
LIVE-G7 - Relation a l'espace
```

Repartition :

```text
Sous la main :
- regime ;
- densite ;
- retrait/retour ;
- retour du corps.

Prepare par scene :
- niveau de complexite ;
- sources de pulse ;
- relation a la techno ;
- type de micro-variation.

Auto-Pro :
- densite qui efface forme principale ;
- masquage attaque/source essentielle.
```

Regle :

```text
La complexite doit orienter le corps, pas prouver le systeme.
```

### 3.8. Groupe H - Motif / melodie / acid naturalise

Priorite : N1/N2.

Controle principal :

```text
LIVE-H1 - Regime melodique
```

Valeurs :

- absent ;
- centre ressenti ;
- accent-melody ;
- basse-motif ;
- melodie de timbre ;
- melodie de partiels ;
- acid naturalise ;
- fragment vocal ;
- hook minimal ;
- microtonal.

Controles associes :

```text
LIVE-H2 - Degre de reconnaissance
LIVE-H3 - Source du motif
LIVE-H4 - Mutation timbrale
LIVE-H5 - Retrait du motif
LIVE-H6 - Naturalisation acid
```

Repartition :

```text
Sous la main :
- regime melodique ;
- apparition/retrait ;
- degre de reconnaissance.

Prepare par scene :
- source du motif ;
- fonction formelle ;
- risque lead banal ;
- relation au grave.

Auto-Pro :
- aucun choix melodique automatique ;
- seulement protections de masquage si necessaire.
```

Regle :

```text
Une melodie reconnaissable est possible.
Elle ne doit pas devenir lead banal par automatisme.
```

### 3.9. Groupe I - Voix

Priorite : N2, N1 si voix utilisee activement.

Controle principal :

```text
LIVE-I1 - Role vocal
```

Valeurs :

- off ;
- presence ;
- souffle ;
- signal ;
- fragment ;
- cri ;
- texture ;
- choeur spectral ;
- presque chantable ;
- transgression.

Controles associes :

```text
LIVE-I2 - Integration vocalo-acoustique
LIVE-I3 - Intelligibilite
LIVE-I4 - Humanite percue
LIVE-I5 - Relation au halo
LIVE-I6 - Relation au rythme
```

Repartition :

```text
Sous la main :
- role vocal si voix active ;
- apparition/retrait ;
- relation au halo.

Prepare par scene :
- degre d'intelligibilite ;
- forme du fragment ;
- niveau d'exposition ;
- risque chanson.

Auto-Pro :
- protection voix essentielle ;
- masquage critique ;
- feedback ou brillance agressive.
```

Regle :

```text
Voix exposee possible.
Voix exposee sans integration = risque.
Auto-tune reconnaissable = interdit stylistique.
```

### 3.10. Groupe J - Gong / metaux

Priorite : N1 si instrument present ou scene gong.

Controle principal :

```text
LIVE-J1 - Fonction gong
```

Valeurs :

- off ;
- impact ;
- halo ;
- signal ;
- peak ;
- resolution ;
- rugissement ;
- bloom grave ;
- base microtonale ;
- souffle grave.

Controles associes :

```text
LIVE-J2 - Droit a la queue longue
LIVE-J3 - Seuil de rugissement
LIVE-J4 - Bloom grave
LIVE-J5 - Relation au vrai sub
LIVE-J6 - Relation au halo
```

Repartition :

```text
Sous la main :
- fonction gong si gong present ;
- bloom ;
- queue longue lock/cut ;
- rugissement/peak.

Prepare par scene :
- place du gong dans la forme ;
- relation didgeridoo/sub ;
- monde spatial metal-gong ;
- tolerance au halo long.

Auto-Pro :
- sub lisible ;
- resonance dangereuse ;
- masquage source essentielle.
```

Regle :

```text
Gong grave = source de richesse et pression possible.
Gong decoratif non decide = risque.
```

### 3.11. Groupe K - Transgression

Priorite : N1.

Controle principal :

```text
LIVE-K1 - Regime transgression
```

Valeurs :

- off ;
- preparation ;
- peak ;
- maintien ;
- sortie ;
- consequence.

Controles associes :

```text
LIVE-K2 - Source de transgression
masse / rugissement / voix / saturation / espace / microtonalite / sub / nudite sonore

LIVE-K3 - Niveau de risque accepte
normal / fort / P1 accepte / P0 jamais

LIVE-K4 - Sortie
cut / resolution / retour corps / silence / espace / retrait
```

Repartition :

```text
Sous la main :
- off/on ;
- preparation/peak/maintien/sortie ;
- source dominante.

Prepare par scene :
- duree ;
- consequences ;
- compatibilites ;
- niveau de domination sonore.

Auto-Pro :
- P0 toujours ;
- P1 sauf acceptation explicite ;
- signalisation forte.
```

Regle :

```text
Transgression = fonction situee.
Agression gratuite = glissement.
```

### 3.12. Groupe L - Retour / maintien / sortie

Priorite : N1.

Controle principal :

```text
LIVE-L1 - Retour du corps
```

Valeurs :

- prepare ;
- retarde ;
- fragmente ;
- refuse ;
- impact rare ;
- contraction espace ;
- retour grave ;
- retour pulse ;
- maintien prolonge.

Repartition :

```text
Sous la main :
- retour ;
- refus du retour ;
- contraction espace ;
- impact rare ;
- maintien prolonge.

Prepare par scene :
- condition de retour ;
- type de retour ;
- relation au corps ;
- consequence apres transgression.

Auto-Pro :
- pas de retour automatique expressif ;
- seulement protection si forme principale devient illisible.
```

Regle :

```text
Un retour peut etre refuse si c'est une decision.
Un retour automatique arbitraire est un risque.
```

---

## 4. Matrice live / scene / Auto-Pro

| Famille | Sous la main en live | Prepare par scene | Auto-Pro |
|---|---|---|---|
| Fonction principale | oui | oui | non |
| Etat de forme | oui | oui | non |
| Mode DID | oui | oui | P0/P1 seulement |
| Mode GRV | oui | oui | P0/P1 + coherence |
| Vrai sub | oui | oui | P0/P1 |
| Gong/bloom | oui si utilise | oui | P0/P1 |
| Monde spatial | oui | oui | adaptation interne |
| Halo | oui | oui | adaptation P0/P1 |
| Grave spatial | oui | oui | protection sub |
| Naturalisation | oui/simple | oui/detail | coherence douce |
| Pression rythmique | oui | oui | masquage seulement |
| Motif/melodie | oui/simple | oui/detail | pas de choix automatique |
| Voix | oui si active | oui | P0/P1 |
| Transgression | oui | oui | P0 toujours |
| Retour/sortie | oui | oui | pas expressif |
| Signalisation | vue constante | config | active |

Regle :

```text
Tout ce qui change la forme doit etre live ou scene.
Tout ce qui protege la lisibilite peut etre Auto-Pro.
```

---

## 5. Modeles de scene detailles

### 5.1. Template commun

Chaque scene doit pouvoir etre decrite avec ce format :

```text
nom :
fonction principale :
fonctions secondaires :
etat de forme :
rapport au corps :
mode DID :
mode GRV :
vrai sub :
fonction gong :
mode HAL :
monde spatial :
mode GSP :
mode NAT :
generation pression :
regime melodique :
role voix :
transgression :
retour/sortie :
P0/P1 particuliers :
choix live autorises :
Auto-Pro autorise :
signalisation utile :
risques :
```

### 5.2. Scene techno corporelle

```text
fonction principale : pression rythmique
etat de forme : maintien / retour
rapport au corps : oriente
mode DID : libre protege / systeme adapte
mode GRV : soutien discret / sub ponctuel
vrai sub : soutien / porteur ponctuel
fonction gong : off / signal ponctuel
mode HAL : Auto / Momentary
monde spatial : commun / proche enrichi / rythme-pression
mode GSP : Off / Trace / Corps
mode NAT : rythme-pression / espace commun
generation pression : pulse implicite / interlocking / densite d'attaques
regime melodique : centre ressenti / basse-motif / absent
role voix : off / signal
transgression : off / preparation faible
retour/sortie : retrait rythmique / retour grave / densification
risques : timbres techno standards, complexite decorative
```

### 5.3. Scene techno suspendue longue

```text
fonction principale : suspension / memoire / tension
etat de forme : maintien prolonge / pre-retour / seuil
rapport au corps : retrait decide possible
mode DID : libre protege / guide harmonique
mode GRV : trace / soutien discret / retrait
vrai sub : absent / trace / soutien discret
fonction gong : halo / souffle grave / signal
mode HAL : Lock / Safe force / Auto
monde spatial : immersif / immense / souffle-air / hors-monde
mode GSP : Trace / Corps / Pression / Off
mode NAT : souffle-friction / resonance-cavite / fonction de scene
generation pression : pulse fantome / micro-variation / centre latent
regime melodique : centre ressenti / partiels / microtonal
role voix : souffle / texture / off
transgression : seuil possible
retour/sortie : contraction espace / impact rare / maintien prolonge / retour grave
risques : ambient subi, retour arbitraire
```

### 5.4. Scene didgeridoo central

```text
fonction principale : source live / guide / presence
etat de forme : exposition / dialogue / transformation
rapport au corps : variable
mode DID : libre protege / systeme adapte / guide harmonique
mode GRV : didgeridoo guide harmonique / soutien discret / retrait grave genere
vrai sub : absent / trace / soutien
fonction gong : off / dialogue / signal
mode HAL : Auto / source / Momentary
monde spatial : proche enrichi / commun / cavite
mode GSP : Off / Trace / Corps
mode NAT : source live / resonance-cavite
generation pression : suit attaques, souffle, partiels ou bourdon
regime melodique : partiels / centre ressenti / acid naturalise possible
role voix : off / dialogue / souffle
transgression : perturbateur possible
retour/sortie : passage vers grave partage / motif / espace
risques : didgeridoo force en basse, didgeridoo ignore
```

### 5.5. Scene gong / bloom grave

```text
fonction principale : bloom / signal / peak / resolution
etat de forme : preparation / peak / queue / consequence
rapport au corps : pression grave / seuil
mode DID : protege / secondaire / dialogue
mode GRV : gong-bloom / soutien discret / graves libres si choisi
vrai sub : trace / soutien / porteur ponctuel
fonction gong : bloom grave / halo / rugissement / signal
mode HAL : Momentary / Lock / Force
monde spatial : metal-gong / immense / cavite
mode GSP : Corps / Pression / Bloom
mode NAT : resonance-cavite / source live / fonction de scene
generation pression : partiels, battements, bas-mediums, souffle grave
regime melodique : microtonal / partiels
role voix : off / cri ponctuel / texture
transgression : possible
retour/sortie : extinction / retour de cadre / retrait grave / resolution
risques : nappe indistincte, gong decoratif, sub brouille
```

### 5.6. Scene voix exposee integree

```text
fonction principale : presence / signal / texture / transgression
etat de forme : apparition / maintien / transformation / disparition
rapport au corps : variable
mode DID : protege / dialogue / systeme adapte
mode GRV : soutien discret / retrait
vrai sub : absent / trace / soutien
fonction gong : off / signal / halo possible
mode HAL : source / Momentary / Lock
monde spatial : proche / cavite / souffle-air / commun
mode GSP : Off / Trace
mode NAT : source live / souffle-friction / resonance-cavite
generation pression : souffle, formants, fragment, cri, choeur spectral
regime melodique : fragment vocal / hook minimal / presque chantable
role voix : presence / signal / cri / texture
transgression : possible
retour/sortie : transformation en halo / cut / retour rythmique
risques : chanson par defaut, auto-tune, voix non integree
```

### 5.7. Scene transgression

```text
fonction principale : transgression
etat de forme : preparation / peak / maintien / consequence / sortie
rapport au corps : pression / domination / seuil
mode DID : protege / perturbateur / source traitee
mode GRV : libre / bloom / pression / retrait selon choix
vrai sub : soutien / porteur / libre selon risque
fonction gong : rugissement / peak / bloom / signal
mode HAL : Force / Safe force / Cut
monde spatial : immense / hors-monde / metal-gong
mode GSP : Pression / Bloom / Libre
mode NAT : fonction de scene / libre / resonance-cavite
generation pression : masse, rugosite, dissonance, saturation organique
regime melodique : microtonal / absent / cri
role voix : cri / signal / off
transgression : active
retour/sortie : silence / resolution / retour corps / retrait
risques : agression gratuite, perte de lisibilite, fatigue
```

---

## 6. Regles de combinaison

### 6.1. Combinations toujours autorisees

- fonction principale + monde spatial ;
- didgeridoo libre protege + Auto-Pro ;
- Halo Auto + monde commun ;
- grave soutien discret + pression rythmique ;
- naturalisation + source live ;
- signalisation + toute intervention P0/P1.

### 6.2. Combinations autorisees si scene ou choix live

- graves libres + transgression ;
- halo Force + espace immense ;
- hors-monde + retrait du corps ;
- didgeridoo perturbateur + generation instable ;
- gong bloom + GSP Bloom ;
- voix exposee + halo Lock ;
- motif reconnaissable + techno corporelle ;
- decor decide + techno suspendue longue.

### 6.3. Combinations a proteger fortement

- vrai sub porteur + GSP Bloom ;
- didgeridoo grave + sub porteur ;
- gong grave + basses riches ;
- halo Force + attaque principale ;
- espace immense + voix exposee ;
- transgression + densite haute ;
- graves libres + salle resonante.

### 6.4. Combinations interdites par defaut

- Auto-Pro qui change de monde spatial expressif ;
- Auto-Pro qui coupe un Halo Lock hors P0/P1 ;
- grande reverb non decidee ;
- voix exposee sans integration ;
- motif autonome hors scene ;
- didgeridoo ignore ;
- grave libre sans scene ou choix live ;
- transgression sans fonction.

---

## 7. Signalisation detaillee

### 7.1. Signalisation prioritaire

```text
SIG-P0 - Securite critique
Toujours visible ou perceptible.

SIG-P1 - Protection mix vitale
Visible si elle limite une fonction.

SIG-P2 - Choix live explicite actif
Visible pour Lock, Force, Libre, Bloom, monde choisi, transgression.
```

### 7.2. Signalisation par famille

Didgeridoo :

- protege ;
- masque ;
- guide actif ;
- adaptation harmonique active ;
- grave genere retire.

Grave :

- vrai sub porteur ;
- graves libres ;
- sub protege ;
- bloom actif ;
- conflit didgeridoo/sub/gong.

Halo :

- Auto ;
- Lock ;
- Force ;
- Cut ;
- Safe force ;
- adapte par P0/P1.

Espace :

- monde principal ;
- monde adapte ;
- hors-monde actif ;
- contraction ;
- expansion ;
- decor decide.

Generation :

- objet hors scene bloque ;
- densite reduite par protection ;
- motif actif ;
- retour prepare ;
- maintien prolonge.

Transgression :

- preparation ;
- peak ;
- maintien ;
- sortie ;
- P1 accepte ;
- P0 limite.

---

## 8. Questions a trancher avant specification suivante

Ces questions doivent etre posees plus tard seulement si elles bloquent la conception des scenes/macros.

1. Quels controles N1 doivent etre absolument toujours visibles ?
2. Quels controles peuvent etre caches dans la preparation de scene ?
3. Le mode DID par defaut doit-il etre `Libre protege` ou choisi par scene ?
4. Le mode GRV par defaut doit-il etre `Soutien discret`, `Retrait`, ou `Auto-Pro` ?
5. Les mondes spatiaux doivent-ils etre choisis librement en live ou limites par scene ?
6. Le Halo Lock doit-il etre un controle direct permanent ?
7. Le GSP Libre doit-il etre accessible directement ou seulement dans certaines scenes ?
8. Quel niveau de signalisation est acceptable sans surcharger le live ?
9. Faut-il un controle global `retour du corps` toujours disponible ?
10. Faut-il un controle global `tout protege / safe` en cas de probleme ?

---

## 9. Decision v0.1

Cette specification etablit :

- les familles de controles live ;
- les modes de scene ;
- les responsabilites Auto-Pro ;
- les combinaisons autorisees ou protegees ;
- les signalisations necessaires.

Elle ne suffit pas encore pour :

- dessiner l'interface ;
- choisir un controleur ;
- ecrire un patch ;
- definir des routings ;
- chiffrer des seuils.

Prochaine etape recommandee :

```text
SPECIFICATION_SCENES_PRIORITAIRES_ET_MACROS_v0_1
```

But de la prochaine etape :

- choisir les premieres scenes prioritaires ;
- definir les macros conceptuelles par scene ;
- reduire la liste des controles a un ensemble jouable ;
- classer les controles en toujours visibles, scene-dependent et Auto-Pro.

---

## 10. Suivi

Date : 2026-06-21

Action realisee :

- `SPECIFICATION_SCENES_PRIORITAIRES_ET_MACROS_v0_1.md` cree.
- `AUDIT_JOUABILITE_CONCEPTUELLE_SCENES_MACROS_v0_1.md` cree.
- `SPECIFICATION_NOYAU_JOUABLE_SCENES_COUCHES_v0_1.md` cree.

Nouvelle prochaine etape :

```text
SPECIFICATION_BLOC_GENERATION_SONORE_MOTIFS_RYTHMIQUES_MELODIQUES_v0_1
```

But :

- detailler les fonctions de generation sonore ;
- detailler motifs rythmiques et melodiques ;
- les rattacher a scene dominante, couches, gestes et etats ;
- definir les limites d'autonomie des motifs.
