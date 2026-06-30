# SPECIFICATION SCENES PRIORITAIRES ET MACROS v0.1

Projet : Vesperare
Date : 2026-06-21
Statut : specification conceptuelle des scenes prioritaires et macros

Sources actives :

- `SPECIFICATION_CONTROLES_LIVE_ET_MODES_SCENE_v0_1.md`
- `SPECIFICATION_CONCEPTUELLE_FONCTIONS_CONTROLES_PRIORITES_v0_1.md`
- `BESOINS_STYLISTIQUES_v0_4.md`
- `BESOINS_GENERATION_v0_4.md`
- `CARACTERISATION_DETAILLEE_ELEMENTS_v0_4.md`
- `REVERBS_ESPACE_REACTIF_v0_2.md`

But :

- choisir les premieres scenes prioritaires ;
- reduire les controles a un ensemble jouable ;
- definir les macros conceptuelles par scene ;
- distinguer controles toujours visibles, macros de scene et Auto-Pro ;
- rester avant architecture technique.

Hors perimetre :

- interface graphique ;
- layout Ableton ;
- controleur physique ;
- devices Max for Live ;
- routings audio/MIDI ;
- patchs ;
- algorithmes ;
- seuils numeriques ;
- validation pratique.

---

## 1. Principe

Une scene prioritaire n'est pas un morceau.

C'est un etat musical jouable qui rassemble :

```text
fonction principale ;
rapport au corps ;
rapport aux sources live ;
modes disponibles ;
macros utiles ;
protections ;
sorties possibles.
```

Une macro conceptuelle n'est pas encore un bouton, un potard ou un mapping.

C'est une decision musicale compacte.

Regle :

```text
Une macro doit changer une fonction perceptible.
Elle ne doit pas seulement modifier un parametre technique cache.
```

### 1.1. Non-exclusivite des scenes

Une scene prioritaire ne doit pas etre comprise comme une boite fermee.

Elle sert d'abord a nommer :

```text
la fonction dominante ;
le centre de gravite perceptif ;
les controles utiles ;
les protections prioritaires ;
les sorties possibles.
```

Mais plusieurs scenes peuvent se superposer si leurs fonctions sont compatibles.

Modele de lecture :

```text
Scene dominante = ce qui porte la forme principale.
Couche active = une fonction empruntee a une autre scene.
Macro importee = un geste d'une autre scene rendu disponible ponctuellement.
Protection prioritaire = ce qui tranche en cas de conflit.
```

Exemples :

```text
Techno suspendue tres longue + halo force + monde immersif.
Didgeridoo minimum + guide harmonique + acid naturalise discret.
Gong bloom + sound-system immersion + transgression controlee.
Polytexture rythmico-spectrale + voix exposee integree.
Techno corporelle + reverb proximite + traces de suspension.
```

Regle :

```text
Les scenes sont des centres de gravite.
Elles ne sont pas des interdictions de superposition.
```

La seule limite est la lisibilite musicale :

```text
Si deux scenes veulent diriger la meme fonction au meme moment,
il faut choisir une priorite ou reduire l'une des deux en couche.
```

---

## 2. Controle global minimal

Le live doit rester jouable.

Il faut donc distinguer :

- noyau toujours visible ;
- macros propres a la scene ;
- protections Auto-Pro.

### 2.1. Noyau toujours visible

Ces controles doivent rester conceptuellement disponibles dans toutes les scenes.

```text
CORE-1 - Fonction / scene
Choisit ou indique la fonction principale.

CORE-2 - Etat de forme
Preparation / maintien / retrait / retour / peak / consequence / sortie.

CORE-3 - Didgeridoo
Libre protege / systeme adapte / didgeridoo adapte / guide harmonique / source traitee.

CORE-4 - Grave
Soutien / retrait / guide didgeridoo / graves libres / gong bloom / sub ponctuel.

CORE-5 - Espace
Commun / proche / immersif / immense / cavite / metal-gong / hors-monde.

CORE-6 - Halo
Auto / Lock / Force / Cut / Momentary / Safe force.

CORE-7 - Corps / retour
Corps oriente / retrait decide / retour prepare / maintien prolonge / impact rare.

CORE-8 - Protection / signalisation
P0, P1, source protegee, halo adapte, sub protege, monde adapte.
```

Regle :

```text
Ces controles ne forment pas une interface.
Ils definissent le minimum de decisions toujours accessibles.
```

### 2.2. Macros de scene

Chaque scene ajoute 4 a 7 macros maximum.

Une macro de scene doit etre :

- fonctionnelle ;
- nommable musicalement ;
- reversible ou assumee ;
- compatible avec P0/P1 ;
- lisible dans la forme.

### 2.3. Auto-Pro permanent

Auto-Pro reste toujours actif pour :

- headroom ;
- feedback ;
- resonance salle dangereuse ;
- sub destructeur ;
- sub illisible ;
- attaque principale masquee ;
- didgeridoo essentiel masque ;
- voix essentielle masquee ;
- gong essentiel masque ;
- boue de reverb ;
- brillance agressive ;
- densite qui efface la forme.

Auto-Pro ne doit pas :

- changer de scene ;
- choisir une transgression ;
- choisir une grande reverb expressive ;
- retirer un Halo Lock hors P0/P1 ;
- imposer un retour du corps ;
- composer a la place du musicien.

---

## 3. Scenes prioritaires retenues

Ordre de priorite :

1. `SCN-1 - Didgeridoo / systeme minimum`
2. `SCN-2 - Techno corporelle naturalisee`
3. `SCN-3 - Techno suspendue tres longue`
4. `SCN-4 - Gong / bloom grave / metal-gong`
5. `SCN-5 - Sound-system immersion / domination`
6. `SCN-6 - Voix exposee integree`
7. `SCN-7 - Acid naturalise / ligne vivante`
8. `SCN-8 - Polytexture rythmico-spectrale`
9. `SCN-9 - Transgression controlee`

Raison :

- couvrir le setup minimum didgeridoo seul + PC ;
- couvrir le retour techno/corps ;
- couvrir l'etat suspendu tres long ;
- couvrir le gong grave et les basses complexes ;
- couvrir l'immersion sound-system ;
- couvrir la voix sans chanson ;
- couvrir motif, acid, melodie possible ;
- couvrir densite/polytexture ;
- couvrir les regimes extremes.

### 3.1. Roles de superposition

Toutes les scenes ne se superposent pas de la meme facon.

Certaines peuvent porter la forme principale.
D'autres peuvent devenir des couches, des gestes, ou des etats partiels.

```text
SCN-1 - Didgeridoo / systeme minimum
Peut etre dominante ou couche source.
Compatible avec toutes les autres, sauf conflit grave/harmonique a arbitrer.

SCN-2 - Techno corporelle naturalisee
Peut etre dominante.
Peut recevoir des couches : didgeridoo, halo, gong, acid, polytexture, transgression.
Conflit principal : perte de pulse ou de pression rythmique.

SCN-3 - Techno suspendue tres longue
Peut etre dominante longtemps.
Peut aussi etre une couche d'etirement dans une autre scene.
Conflit principal : retour corporel non prepare ou effacement d'une source essentielle.

SCN-4 - Gong / bloom grave / metal-gong
Peut etre dominante ou couche grave/harmonique.
Compatible avec immersion, suspension, transgression, didgeridoo, polytexture lente.
Conflit principal : grave illisible, boue de reverb, partiels trop envahissants.

SCN-5 - Sound-system immersion / domination
Peut etre dominante ou couche de pression/espace.
Compatible avec techno, gong, suspension, transgression.
Conflit principal : domination qui ecrase la source live ou transforme l'espace en decor non decide.

SCN-6 - Voix exposee integree
Plutot couche ou scene dominante ponctuelle.
Compatible avec suspension, reverb proche, polytexture, transgression.
Conflit principal : effet chanson, lead trop humain non integre, pitch correction reconnaissable.

SCN-7 - Acid naturalise / ligne vivante
Plutot couche motivique ou scene de passage.
Compatible avec techno corporelle, suspension, polytexture, didgeridoo guide.
Conflit principal : ligne trop synthetique, motif trop autonome, lead banal.

SCN-8 - Polytexture rythmico-spectrale
Peut etre dominante ou couche de complexification.
Compatible avec presque tout si une couche reste directrice.
Conflit principal : accumulation non lisible, disparition du corps ou de la source essentielle.

SCN-9 - Transgression controlee
Plutot etat, geste ou scene de peak.
Compatible avec tout si la transgression a une fonction claire.
Conflit principal : destruction de lisibilite, fatigue, saturation non choisie, perte de retour.
```

Regle de priorite :

```text
Une seule scene dirige la forme principale.
Plusieurs scenes peuvent fournir des couches.
Une couche importee ne doit pas voler la fonction dominante sans decision explicite.
```

### 3.2. Types de compatibilite

La compatibilite doit etre notee par type, pas seulement par oui/non.

```text
DOM + DOM
Deux scenes veulent porter la forme principale.
Possible seulement si l'une devient couche ou si elles alternent.

DOM + LAYER
Cas normal : une scene porte la forme, une autre ajoute une fonction.

LAYER + LAYER
Possible si une fonction globale reste directrice.

GESTE
Macro ponctuelle importee sans installer toute la scene.

ETAT
Qualite persistante empruntee : suspension, domination, proximite, bloom, halo.

PROTECTION
Regle Auto-Pro commune qui evite que la superposition devienne destructrice.
```

### 3.3. Familles de superpositions utiles

Superpositions probablement centrales pour Vesperare :

```text
Didgeridoo + techno corporelle
Le live guide, trouble ou enrichit le corps.

Didgeridoo + suspension
Le didgeridoo peut rester libre pendant que le systeme suspend le retour.

Didgeridoo + acid naturalise
La ligne peut suivre, contredire ou prolonger les partiels sans devenir synth identifiable.

Gong + immersion sound-system
Le gong ouvre la base grave/metal/microtonale, l'immersion donne la pression.

Gong + suspension
Bloom long, souffle grave, metal vivant, temps etire.

Techno corporelle + polytexture
Le corps reste directeur pendant que la complexite augmente.

Techno suspendue + acid naturalise
La ligne peut exister comme trace, tension ou motif etire, sans obligation de drop rapide.

Voix exposee integree + suspension
La voix peut devenir proche, fragile, spectrale ou rituelle sans devenir chanson.

Transgression + n'importe quelle scene
Possible si la transgression a une fonction : peak, rupture, exposition, consequence, retour.
```

Superpositions a surveiller :

```text
Acid naturalise + voix
Risque de lead/gimmick si les deux deviennent trop reconnaissables.

Gong bloom + didgeridoo grave + sub
Risque de conflit grave/harmonique et de perte de precision.

Immersion sound-system + grande reverb
Risque de masse spectaculaire mais moins lisible.

Polytexture + transgression
Risque de densite sans hierarchie.

Suspension tres longue + absence totale de corps
Acceptable si decidee, mais le retour doit rester preparable.
```

---

## 4. SCN-1 - Didgeridoo / systeme minimum

### 4.1. Fonction

Scene de base pour setup didgeridoo seul + PC.

Fonctions possibles :

- presence live ;
- guide harmonique ;
- source libre ;
- source traitee ;
- pression grave ;
- souffle ;
- partiels ;
- perturbation.

### 4.2. Etat par defaut

```text
fonction principale : source live / guide / presence
rapport au corps : variable
mode DID : libre protege
mode GRV : soutien discret ou retrait
vrai sub : absent / trace / soutien
mode HAL : Auto
monde spatial : proche enrichi / commun / cavite
mode GSP : Off / Trace / Corps
generation : suit partiels, souffle, attaques ou bourdon
retour : selon scene
```

### 4.3. Macros de scene

```text
M1 - Liberte didgeridoo
Libre protege -> systeme adapte -> didgeridoo adapte.

M2 - Guide harmonique
Off -> leger -> actif -> central.

M3 - Conflit grave
Soutenir -> adapter harmoniques -> retirer grave genere -> graves libres.

M4 - Traitement source
Sec -> proche enrichi -> cavite -> source traitee -> halo source.

M5 - Attaques / souffle
Calme -> respiration -> articulation -> micro-pulse -> perturbation.

M6 - Retour corps
Retrait -> attente -> retour grave -> retour pulse.
```

### 4.4. Toujours visible

- mode DID ;
- retrait du grave genere ;
- protection didgeridoo ;
- guide harmonique ;
- monde proche/commun/cavite ;
- Halo Cut ou Auto.

### 4.5. Auto-Pro

Protections :

- feedback ;
- sub illisible ;
- didgeridoo masque ;
- resonance dangereuse ;
- headroom.

Auto-Pro ne doit pas :

- forcer le didgeridoo en basse ;
- ignorer le didgeridoo libre ;
- couper un role source essentiel hors P0/P1.

### 4.6. Questions restantes

- mode DID par defaut : libre protege ou scene-dependent ?
- adaptation des harmoniques : controle direct permanent ou scene ?
- didgeridoo traite : a quel point il peut devenir source fonctionnalisee ?

---

## 5. SCN-2 - Techno corporelle naturalisee

### 5.1. Fonction

Scene de pression rythmique, corporelle, techno sans timbres techno standards.

Fonctions :

- pulse explicite ou implicite ;
- interlocking ;
- retour du corps ;
- micro-variation ;
- pression grave naturalisee.

### 5.2. Etat par defaut

```text
fonction principale : pression rythmique
rapport au corps : oriente
mode DID : libre protege / systeme adapte
mode GRV : soutien discret / sub ponctuel
vrai sub : soutien / porteur ponctuel
mode HAL : Auto / Momentary
monde spatial : commun / proche enrichi / rythme-pression
mode GSP : Off / Trace / Corps
generation : pulse implicite / interlocking / densite d'attaques
regime melodique : centre ressenti / basse-motif / absent
```

### 5.3. Macros de scene

```text
M1 - Corps
Retrait -> pulse implicite -> pulse lisible -> retour fort.

M2 - Densite d'attaques
Rare -> interlocking leger -> dense -> seuil.

M3 - Grave soutien
Trace -> soutien discret -> porteur ponctuel -> retrait.

M4 - Matiere rythmique
Souffle -> friction -> peau/bois -> resonance -> pseudo-techno naturalise.

M5 - Cadre techno
Fantome -> recuperable -> explicite -> suspendu.

M6 - Espace rythmique
Proche -> commun -> rythme-pression -> contraction.
```

### 5.4. Toujours visible

- corps / retour ;
- densite ;
- grave soutien/retrait ;
- cadre techno ;
- protection sub/attaque.

### 5.5. Auto-Pro

Protections :

- attaque principale masquee ;
- densite qui efface la forme ;
- sub illisible ;
- didgeridoo masque.

Auto-Pro ne doit pas :

- transformer complexite en simplification expressive sans raison P1 ;
- imposer un retour corporel.

### 5.6. Questions restantes

- densite maximale de polyrythmie avant perte du corps ;
- niveau de pulse explicite acceptable selon scene ;
- role exact du sub dans les retours.

---

## 6. SCN-3 - Techno suspendue tres longue

### 6.1. Fonction

Scene de suspension longue ou tres longue.

Elle garde techno par memoire, tension, attente, espace, pression latente ou retour possible.

### 6.2. Etat par defaut

```text
fonction principale : suspension / memoire / tension
rapport au corps : retrait decide possible
mode DID : libre protege / guide harmonique
mode GRV : trace / soutien discret / retrait
vrai sub : absent / trace / soutien discret
mode HAL : Lock / Safe force / Auto
monde spatial : immersif / immense / souffle-air / hors-monde
mode GSP : Trace / Corps / Pression / Off
generation : micro-variation / centre latent / halo periodique
retour : contraction espace / impact rare / maintien prolonge / retour grave
```

### 6.3. Macros de scene

```text
M1 - Duree / maintien
Court -> long -> tres long -> indefini decide.

M2 - Memoire techno
Absente en surface -> fantome -> cadre latent -> pre-retour.

M3 - Corps
Oriente -> suspendu -> retire -> retour prepare.

M4 - Espace long
Commun -> immersif -> immense -> hors-monde.

M5 - Halo memoire
Auto -> Lock -> Safe force -> Cut.

M6 - Sortie
Maintenir -> contracter espace -> impact rare -> retour grave -> retour pulse.
```

### 6.4. Toujours visible

- maintien prolonge ;
- retour/refus du retour ;
- monde spatial ;
- halo Lock/Cut ;
- retrait du corps ;
- protection sub/source.

### 6.5. Auto-Pro

Protections :

- grande reverb non decidee ;
- source live effacee ;
- sub brouille ;
- headroom ;
- feedback.

Auto-Pro ne doit pas :

- raccourcir la suspension parce qu'elle est longue ;
- imposer un retour techno ;
- changer hors-monde vers commun sauf P0/P1.

### 6.6. Questions restantes

- quels controles de retour doivent etre immediats ?
- le refus du retour doit-il etre un controle direct ?
- quels mondes longs sont autorises par defaut ?

---

## 7. SCN-4 - Gong / bloom grave / metal-gong

### 7.1. Fonction

Scene centree sur gong, metaux, bloom grave, queues, rugissement, signal ou resolution.

### 7.2. Etat par defaut

```text
fonction principale : bloom / signal / peak / resolution
rapport au corps : pression grave / seuil
mode DID : protege / secondaire / dialogue
mode GRV : gong-bloom / soutien discret / graves libres si choisi
vrai sub : trace / soutien / porteur ponctuel
fonction gong : bloom grave / halo / rugissement / signal
mode HAL : Momentary / Lock / Force
monde spatial : metal-gong / immense / cavite
mode GSP : Corps / Pression / Bloom
generation : partiels / battements / bas-mediums / souffle grave
```

### 7.3. Macros de scene

```text
M1 - Fonction gong
Impact -> signal -> halo -> bloom -> rugissement -> resolution.

M2 - Queue / halo metal
Courte -> longue -> Lock -> Force -> Cut.

M3 - Bloom grave
Off -> trace -> corps -> pression -> bloom.

M4 - Partiels / microtonalite
Stable -> battements -> tension -> rugosite -> resolution.

M5 - Relation sub
Sub protege -> soutien -> porteur ponctuel -> graves libres.

M6 - Espace metal
Cavite -> metal-gong -> immense -> hors-monde.
```

### 7.4. Toujours visible

- bloom grave ;
- queue/halo lock/cut ;
- fonction gong ;
- relation au vrai sub ;
- protection resonance/sub.

### 7.5. Auto-Pro

Protections :

- resonance dangereuse ;
- sub illisible ;
- gong qui masque didgeridoo/voix essentielle ;
- headroom ;
- boue grave.

Auto-Pro ne doit pas :

- couper une queue longue decidee hors P0/P1 ;
- supprimer la fonction metal-gong pour peur de l'ambient ;
- confondre bloom decide et boue grave.

### 7.6. Questions restantes

- fonction prioritaire du gong grave : base, souffle, bloom, tension, peak, retour ?
- niveau acceptable de rugissement ;
- niveau de sub associe au gong.

---

## 8. SCN-5 - Sound-system immersion / domination

### 8.1. Fonction

Scene de pression corporelle, immersion massive, confort profond ou domination sonore.

Elle n'implique pas un style dub/reggae.

### 8.2. Etat par defaut

```text
fonction principale : immersion / pression grave / domination decidee
rapport au corps : enveloppe / pousse / quasi-domination
mode DID : protege / systeme adapte
mode GRV : soutien discret / pression / graves libres si choisi
vrai sub : soutien / porteur / libre selon risque
mode HAL : Auto / Lock / Safe force
monde spatial : commun / immersif / immense
mode GSP : Corps / Pression / Bloom
generation : flow, vide, pression par espace, retours de masse
```

### 8.3. Macros de scene

```text
M1 - Immersion
Commun -> enveloppant -> immense -> domination.

M2 - Pression sub
Trace -> soutien -> porteur -> libre.

M3 - Vide / headroom percu
Dense -> espace -> vide actif -> pression par vide.

M4 - Flow
Stable -> pousse -> vague -> retrait -> retour.

M5 - Confort / fatigue
Doux -> massif -> limite -> sortie.

M6 - Retour masse
Absent -> latent -> prepare -> impact.
```

### 8.4. Toujours visible

- immersion/domination ;
- pression sub ;
- confort/fatigue ;
- retour masse ;
- P1/P0 signalisation.

### 8.5. Auto-Pro

Protections :

- sub destructeur ;
- headroom ;
- resonance salle dangereuse ;
- fatigue critique ;
- source essentielle masquee.

Auto-Pro ne doit pas :

- confondre domination decidee et erreur de mix ;
- retirer la pression si elle est fonction forte, hors P0/P1.

### 8.6. Questions restantes

- niveau exact de domination sound-system souhaitable ;
- est-ce que domination doit etre accessible en live direct ou seulement par scene ?
- quels signaux de fatigue/limite doivent etre visibles ?

---

## 9. SCN-6 - Voix exposee integree

### 9.1. Fonction

Scene pour voix comme presence, souffle, signal, cri, texture, fragment ou quasi-melodie.

Voix exposee possible, mais integree acoustiquement ou virtualo-acoustiquement.

### 9.2. Etat par defaut

```text
fonction principale : presence / signal / texture / transgression
rapport au corps : variable
mode DID : protege / dialogue / systeme adapte
mode GRV : soutien discret / retrait
vrai sub : absent / trace / soutien
mode HAL : source / Momentary / Lock
monde spatial : proche / cavite / souffle-air / commun
mode GSP : Off / Trace
generation : souffle / formants / fragment / cri / choeur spectral
regime melodique : fragment vocal / hook minimal / presque chantable
```

### 9.3. Macros de scene

```text
M1 - Role vocal
Off -> souffle -> presence -> signal -> cri -> texture.

M2 - Integration
Proche sec -> cavite -> souffle-air -> halo source -> choeur spectral.

M3 - Intelligibilite
Masquee -> phoneme -> fragment -> presque chantable.

M4 - Exposition
Fond -> milieu -> avant -> nudite integree -> transgression.

M5 - Halo vocal
Off -> momentary -> lock -> force -> cut.

M6 - Sortie voix
Cut -> dissoudre en halo -> retour rythme -> silence.
```

### 9.4. Toujours visible

- apparition/retrait voix ;
- integration ;
- intelligibilite ;
- halo vocal ;
- protection voix.

### 9.5. Auto-Pro

Protections :

- feedback ;
- brillance agressive ;
- voix essentielle masquee ;
- headroom ;
- auto-tune reconnaissable interdit stylistiquement.

Auto-Pro ne doit pas :

- transformer la voix en lead vocal par defaut ;
- rendre intelligible un fragment qui doit rester texture ;
- couper une voix exposee integree hors P0/P1.

### 9.6. Questions restantes

- niveau de voix presque chantable acceptable ;
- degre d'intelligibilite desirable ;
- voix active seulement avec instrument voix reel ou aussi generation vocale ?

---

## 10. SCN-7 - Acid naturalise / ligne vivante

### 10.1. Fonction

Scene pour ligne vivante, torsion, resonance, glissement de formant, motif reconnaissable ou acid naturalise.

Sans reproduction TB-303, squelch reconnaissable ou pattern acid cliche.

### 10.2. Etat par defaut

```text
fonction principale : ligne vivante / motif / pression de matiere
rapport au corps : oriente ou suspendu
mode DID : guide harmonique / systeme adapte / libre protege
mode GRV : soutien discret / basse-motif / retrait
vrai sub : absent / trace / soutien
mode HAL : Auto / Momentary
monde spatial : commun / cavite / proche / rythme-pression
mode GSP : Off / Trace
generation : formants, resonance, glissement, accent, mutation timbrale
regime melodique : acid naturalise / basse-motif / timbre / partiels
```

### 10.3. Macros de scene

```text
M1 - Ligne
Absente -> fragment -> motif -> ligne vivante -> hook minimal.

M2 - Torsion
Stable -> glissement -> formant -> resonance -> rugosite.

M3 - Acid naturalise
Off -> discret -> evident -> seuil cliche.

M4 - Source de ligne
Didgeridoo -> voix -> tube/cavite -> partiels -> basse naturalisee.

M5 - Reconnaissance
Ambigue -> reconnaissable -> memorable -> retrait.

M6 - Anti-cliche
Normal -> surveiller -> retirer 303/squelch -> re-naturaliser.
```

### 10.4. Toujours visible

- apparition/retrait ligne ;
- degre de reconnaissance ;
- anti-cliche acid ;
- source du motif ;
- relation au grave.

### 10.5. Auto-Pro

Protections :

- masquage grave ;
- motif qui mange la forme principale ;
- brillance electronique reconnaissable si detectee comme risque de style.

Auto-Pro ne doit pas :

- generer une ligne autonome hors scene ;
- corriger vers une melodie temperee banale ;
- imposer une resolution melodique.

### 10.6. Questions restantes

- niveau de motif reconnaissable desirable ;
- limites du hook minimal ;
- acid naturalise : plutot formants, cavite, didgeridoo, voix, basse ?

---

## 11. SCN-8 - Polytexture rythmico-spectrale

### 11.1. Fonction

Scene de densite lisible : attaques, interlocking, couches, partiels, rythme spatial, tension spectrale.

### 11.2. Etat par defaut

```text
fonction principale : polytexture / pression / complexite orientee
rapport au corps : oriente mais dense
mode DID : libre protege / systeme adapte / perturbateur
mode GRV : soutien discret / retrait / guide
vrai sub : trace / soutien
mode HAL : Auto / Momentary / Cut
monde spatial : commun / rythme-pression / proche / cavite
mode GSP : Off / Trace / Corps
generation : interlocking, accents fantomes, couches, partiels, micro-variations
regime melodique : absent / accent-melody / timbre / partiels
```

### 11.3. Macros de scene

```text
M1 - Nombre de couches
1 -> 2 -> 3 -> dense -> seuil.

M2 - Hierarchie
Claire -> partagee -> instable -> retour clair.

M3 - Interlocking
Off -> leger -> actif -> dense.

M4 - Spectre
Sec -> partiels -> halo court -> tension spectrale.

M5 - Corps
Oriente -> flottant -> perdu decide -> retour.

M6 - Nettoyage
Auto -> cut halo -> retrait couche -> simplification volontaire.
```

### 11.4. Toujours visible

- densite ;
- hierarchie ;
- retour corps ;
- cut halo/couche ;
- protection attaques.

### 11.5. Auto-Pro

Protections :

- densite qui efface la forme ;
- surcharge medium ;
- attaque directrice masquee ;
- sub ou didgeridoo masque.

Auto-Pro ne doit pas :

- simplifier une polytexture voulue sans P1 ;
- choisir la couche directrice a la place de la scene.

### 11.6. Questions restantes

- densite maximale jouable en club ;
- nombre de couches utiles ;
- seuil entre complexite riche et accumulation.

---

## 12. SCN-9 - Transgression controlee

### 12.1. Fonction

Scene pour masse enorme, rugissement, saturation organique, dissonance, espace immense, microtonalite exposee, cri ou domination.

### 12.2. Etat par defaut

```text
fonction principale : transgression
rapport au corps : pression / domination / seuil
mode DID : protege / perturbateur / source traitee
mode GRV : libre / bloom / pression / retrait selon choix
vrai sub : soutien / porteur / libre selon risque
fonction gong : rugissement / peak / bloom / signal
mode HAL : Force / Safe force / Cut
monde spatial : immense / hors-monde / metal-gong
mode GSP : Pression / Bloom / Libre
generation : masse, rugosite, dissonance, saturation organique
regime melodique : microtonal / absent / cri
```

### 12.3. Macros de scene

```text
M1 - Regime transgression
Off -> preparation -> peak -> maintien -> consequence -> sortie.

M2 - Source de crise
Grave -> gong -> voix -> espace -> microtonalite -> masse.

M3 - Risque accepte
Normal -> fort -> P1 accepte -> P0 jamais.

M4 - Espace extreme
Immense -> hors-monde -> cut -> retour commun.

M5 - Saturation organique
Off -> friction -> rugosite -> saturation -> retrait.

M6 - Sortie
Silence -> resolution -> retour corps -> espace vide -> grave retire.
```

### 12.4. Toujours visible

- transgression off/sortie ;
- risque accepte ;
- P0/P1 signalisation ;
- source de crise ;
- retour corps.

### 12.5. Auto-Pro

Protections :

- P0 toujours prioritaire ;
- P1 sauf acceptation explicite ;
- fatigue critique ;
- headroom ;
- resonance dangereuse ;
- source essentielle effacee.

Auto-Pro ne doit pas :

- confondre transgression decidee et erreur ;
- prolonger une crise sans decision ;
- choisir la sortie expressive.

### 12.6. Questions restantes

- niveau de P1 volontairement acceptable ;
- duree possible de maintien ;
- domination sonore : scene ou controle direct ?

---

## 13. Macros globales proposees

Ces macros ne sont pas une interface.

Elles sont le premier noyau jouable a garder pour toute future conception.

```text
GLOBAL-1 - Scene / fonction
Choisir ou afficher la scene active.

GLOBAL-2 - Etat de forme
Preparation / maintien / retrait / retour / peak / sortie.

GLOBAL-3 - Didgeridoo
Libre protege / adapte / guide / source traitee.

GLOBAL-4 - Grave
Soutien / retrait / guide / bloom / libre / sub ponctuel.

GLOBAL-5 - Espace
Commun / proche / immersif / immense / metal / hors-monde.

GLOBAL-6 - Halo
Auto / Lock / Force / Cut / Momentary / Safe force.

GLOBAL-7 - Corps / retour
Oriente / suspendu / retrait decide / retour / maintien.

GLOBAL-8 - Protection
Voir et comprendre P0/P1/P2.
```

Macros scene-dependent :

```text
SCENE-M1 - Fonction specifique
SCENE-M2 - Source dominante
SCENE-M3 - Intensite / densite
SCENE-M4 - Espace / halo specifique
SCENE-M5 - Sortie / consequence
SCENE-M6 - Risque / protection
```

Regle :

```text
Le noyau global doit rester petit.
Les scenes portent la complexite.
Auto-Pro porte les protections.
```

---

## 14. Scenes optionnelles a deriver plus tard

Ces scenes ne sont pas prioritaires v0.1, mais elles sont compatibles.

- `SCN-O1 - Jazz tension / voicings fantomes`
- `SCN-O2 - Microtonalite belle / resolution`
- `SCN-O3 - Tambours / peaux / corps percussif`
- `SCN-O4 - Freeze / seuil temporel`
- `SCN-O5 - Reverb proximite extreme`
- `SCN-O6 - Decor decide / vide decide`
- `SCN-O7 - Voix choeur spectral`
- `SCN-O8 - Didgeridoo perturbateur total`

Regle :

```text
Ne pas ouvrir ces scenes avant d'avoir stabilise les scenes prioritaires.
```

---

## 15. Decision v0.1

Les scenes prioritaires sont suffisantes pour continuer la conception.

Le projet dispose maintenant :

- d'un noyau global de 8 controles conceptuels ;
- de 9 scenes prioritaires ;
- d'une logique scene dominante + couches superposables ;
- de macros par scene ;
- de premiers types de compatibilite entre scenes ;
- de regles de protection ;
- de questions restantes localisees.

Cette specification ne suffit pas encore pour :

- dessiner une interface ;
- choisir un controleur ;
- definir un patch ;
- choisir des devices ;
- definir des routings ;
- fixer des seuils.

Etape recommandee a la creation de cette fiche :

```text
AUDIT_JOUABILITE_CONCEPTUELLE_SCENES_MACROS_v0_1
```

But de cette etape :

- verifier si le noyau global + les scenes prioritaires restent jouables ;
- verifier les superpositions principales ;
- verifier quelles scenes doivent etre dominantes, couches, gestes ou etats ;
- identifier les macros redondantes ;
- identifier les macros manquantes ;
- verifier que les scenes ne reintroduisent pas trop de complexite ;
- preparer ensuite une specification fonctionnelle plus proche de l'architecture, si le corpus reste coherent.

---

## 16. Suivi

Date : 2026-06-21

Action realisee :

- `AUDIT_JOUABILITE_CONCEPTUELLE_SCENES_MACROS_v0_1.md` cree.
- `SPECIFICATION_NOYAU_JOUABLE_SCENES_COUCHES_v0_1.md` cree.

Conclusion de l'audit :

```text
Scenes coherentes.
Superpositions compatibles.
Risque principal : trop de decisions visibles si tout est expose.
Correction : compresser en scene dominante + couches + gestes + etats.
```

Nouvelle prochaine etape :

```text
SPECIFICATION_BLOC_GENERATION_SONORE_MOTIFS_RYTHMIQUES_MELODIQUES_v0_1
```
