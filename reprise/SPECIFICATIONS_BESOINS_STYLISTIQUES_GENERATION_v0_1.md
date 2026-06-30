# SPECIFICATIONS - BESOINS STYLISTIQUES ET GENERATION v0.1

Projet : Vesperare
Statut : specification intermediaire apres arbitrages utilisateur
Date : 2026-06-20

Sources internes :
- BESOINS_STYLISTIQUES_v0_1.md
- BESOINS_GENERATION_v0_1.md
- CONSOLIDATION_BESOINS_STYLISTIQUES_GENERATION_v0_1.md
- RECHERCHE_EXTERNE_BESOINS_PRECISION_v0_1.md
- ARBITRAGES_ARTISTIQUES_BESOINS_v0_1.md

But :

Transformer les arbitrages artistiques en criteres de conception utilisables, sans encore definir une architecture technique complete.

Regle generale :

Tous les elements de Vesperare doivent rester activables, dosables, transformables ou absents. Aucun element stylistique n'est permanent par principe.

## 1. Plausibilite acoustique des sons generes et traites

### 1.1. Definition

La plausibilite acoustique ne signifie pas "son acoustique pur".

Elle signifie :

- le son peut etre relie mentalement a un corps, un souffle, un espace, une resonance, une friction, une peau, un metal, une cavite, une voix, une masse ou un geste possible ;
- l'ambiguite de source est acceptee ;
- l'identification immediate a un synth, preset, plug-in ou effet electronique standard est a eviter.

Formule de decision :

Un son Vesperare peut etre impossible au sens strict, mais il doit rester plausible comme extension acoustique.

### 1.2. Niveaux de plausibilite

| Niveau | Nom | Definition | Statut |
|---|---|---|---|
| PA-0 | Acoustique direct | source instrumentale ou vocale identifiable | accepte |
| PA-1 | Acoustique etendu | source acoustique traitee mais encore physiquement credible | accepte |
| PA-2 | Ambigu plausible | source incertaine, mais comportement naturel possible | coeur du projet |
| PA-3 | Hybride fragile | source partiellement synthetique mais masquee par une logique acoustique | a surveiller |
| PA-X | Electronique reconnaissable | timbre de synthese, preset, artefact numerique ou effet style trop identifiable | a eviter |

### 1.3. Criteres d'acceptation

Un son ou traitement est acceptable s'il respecte une majorite de ces criteres :

- attaque coherente avec une cause possible ;
- queue ou resonance coherente avec une matiere ou un espace ;
- evolution spectrale organique : partiels, formants, souffle, friction, battement, saturation, rugosite ;
- dynamique reliee a une energie perceptible ;
- spatialisation qui evoque un lieu, une cavite, une distance ou une profondeur ;
- absence de signature trop lisible de synthese ou de preset ;
- compatibilite avec la fonction musicale visee : pulse, pression, halo, basse, tension, rupture, retour, appel.

### 1.4. Effets autorises sous condition

Les effets sont autorises s'ils renforcent la plausibilite acoustique au lieu d'afficher leur technologie.

Effets probablement compatibles :

- reverberation evoquant des espaces reels, impossibles mais physiques, ou rituels ;
- resonateurs ;
- delays courts assimiles a reflexions, rebonds, cavites ou repetitions corporelles ;
- saturation organique, friction, pression, souffle ;
- filtrages evoquant bouche, cavite, tube, peau, metal, pierre, membrane ;
- pitch/formant s'ils restent lies a voix, souffle, didgeridoo, gong, resonance ou instabilite physique ;
- granulation si elle evoque poussiere, frottement, matiere, essaim ou decomposition acoustique.

Effets a surveiller :

- shimmer trop identifiable ;
- sidechain pompe EDM ;
- riser standard ;
- freeze numerique trop evident ;
- glitch decoratif ;
- auto-tune reconnaissable ;
- pluck, supersaw, Reese bass, FM metallic preset, wavetable lead.

### 1.5. Implication pour la generation

Chaque module de generation sonore doit pouvoir etre juge par :

```text
Source imaginee :
Geste ou energie possible :
Matiere possible :
Espace possible :
Fonction musicale :
Niveau PA :
Risque d'identification electronique :
Conditions d'emploi :
```

Un son efficace mais PA-X ne doit pas devenir support central de Vesperare.

## 2. Pression rythmique

### 2.1. Definition

La pression rythmique est prioritaire.

Elle ne se limite pas a une pulsation explicite. Elle designe toute force qui rend le corps attentif, tendu, entraine, oriente ou pret au retour.

### 2.2. Regimes de pression rythmique

| Code | Regime | Description | Usage |
|---|---|---|---|
| PR-1 | Pulse explicite | battement ou grille clairement perceptible | techno frontale, retour, ancrage |
| PR-2 | Pulse implicite | periodicite ressentie sans battement stable | techno latente, suspension longue |
| PR-3 | Interlocking | plusieurs couches creent le mouvement ensemble | polytexture, densite lisible |
| PR-4 | Syncope de masse | deplacement corporel par retard, anticipation ou trou | tension, attente, dubstep naturalise |
| PR-5 | Accent fantome | accents faibles ou caches guident l'ecoute | hypnose, detail, micro-variation |
| PR-6 | Respiration de matiere | gonflement/retrait remplace le sidechain | pression sans pompe electronique |
| PR-7 | Densite d'attaques | micro-impacts, frottements, grains, souffles | alternative aux hats |
| PR-8 | Dissonance metrique | cycles ou accents en conflit controle | tension longue, instabilite |
| PR-9 | Rythme spatial | distance, echo, reverb ou profondeur creent la periodicite | espace actif |
| PR-10 | Retrait rythmique | absence de pulse comme pression d'attente | suspension, pre-retour |
| PR-11 | Retour de cadre | un motif ou pulse revient apres suspension | resolution corporelle |
| PR-12 | Rythme instrumental live | didgeridoo, tambour, voix ou gong influencent la pression | scene hybride |

### 2.3. Parametres a caracteriser

Chaque pression rythmique doit etre decrite par :

- type d'ancrage : explicite, implicite, fantome, absent ;
- densite d'attaques ;
- repartition des accents ;
- degre de syncope ;
- degre d'interlocking ;
- stabilite du cycle ;
- lisibilite corporelle ;
- relation au grave ;
- relation a l'espace ;
- relation au live ;
- condition de retour ou de sortie.

### 2.4. Garde-fous

La complexite rythmique doit rester corporelle.

Risques :

- complexite demontrative ;
- grille perdue sans intention ;
- polytexture qui efface le corps ;
- pulsation trop standard ;
- variation qui detruit l'hypnose ;
- quantification morte ;
- pseudo-humanisation aleatoire.

Regle :

La pression rythmique doit produire une orientation du corps, meme quand elle n'est pas dansante immediatement.

## 3. Scenes longues de techno suspendue

### 3.1. Definition

La techno suspendue peut durer longtemps.

Elle n'est pas une pause decorative. Elle est un etat ou les fonctions techno sont retirees, cachees, etirees ou rendues latentes.

### 3.2. Types de suspension

| Code | Type | Description | Memoire techno possible |
|---|---|---|---|
| TS-1 | Suspension a pulse fantome | periodicite faible ou presque cachee | boucle, souffle, tremblement |
| TS-2 | Suspension spatiale | l'espace porte la tension | echoes, distances, retours de cavite |
| TS-3 | Suspension spectrale | partiels, microtonalite, battements dominent | centre grave ou tension harmonique |
| TS-4 | Suspension instrumentale | didgeridoo, gong, voix ou tambour deviennent centre | respiration, attaque, drone, appel |
| TS-5 | Suspension de pre-retour | tout indique qu'un cadre peut revenir | densite, attente, sub latent |
| TS-6 | Suspension rituelle | temps long, repetition non club, presence physique | geste, voix, cycle lent |
| TS-7 | Faux retour | elements techno apparaissent puis se retirent | frustration, rarete, tension |

### 3.3. Memoire de retour

Une suspension longue reste Vesperare si elle garde au moins un de ces fils :

- tension rythmique latente ;
- centre grave ou promesse de grave ;
- respiration cyclique ;
- espace actif ;
- motif fragmentaire ;
- halo qui conserve une periodicite ;
- micro-variation hypnotique ;
- instrument live qui porte le corps ;
- attente de densification ;
- direction vers une resolution.

### 3.4. Strategies de reinstallation techno

Le retour techno peut se faire par :

- cristallisation progressive d'un accent ;
- retour du grave ;
- apparition d'une pulsation dans une texture deja presente ;
- contraction de l'espace vers le corps ;
- densification d'attaques ;
- alignement de couches polytexturales ;
- transformation d'un souffle en pulse ;
- extraction d'un motif depuis le didgeridoo ou la voix ;
- resolution d'une tension microtonale ;
- rupture rare : impact, drop, gong, cri, masse.

### 3.5. Risques

- devenir ambient decoratif ;
- perdre la pression corporelle sans creer d'autre pression ;
- produire une attente trop vague ;
- rendre le retour arbitraire ;
- confondre suspension longue et absence de forme.

Regle :

Une suspension longue doit avoir une pression, une memoire ou une direction.

## 4. Didgeridoo, basse et grave

### 4.1. Principe

Le didgeridoo doit rester libre.

Il peut etre centre, partenaire, source traitee, guide harmonique, perturbateur ou simple presence autonome. Aucun de ces roles ne doit etre obligatoire.

### 4.2. Modes fonctionnels

| Code | Mode | Description | Consequence pour le systeme |
|---|---|---|---|
| DID-0 | Libre | le didgeridoo joue sans obligation de controle | le systeme ne force pas de reaction |
| DID-1 | Protege | le systeme lui laisse de la place | densite et spectre reduits autour de lui |
| DID-2 | Basse adaptee | grave genere ajuste pour ne pas masquer | ducking, decalage spectral, alternance |
| DID-3 | Grave partage | didgeridoo et basse se relaient ou fusionnent | roles graves variables |
| DID-4 | Guide harmonique | partiels/formants orientent halos et accords | generation spectrale liee au didgeridoo |
| DID-5 | Source traitee | son direct transforme dans la scene | traitements PA-1/PA-2 privilegies |
| DID-6 | Fonctionnalise | didgeridoo devient pulse, drone, appel, texture, basse, rugissement | role musical derive du jeu |
| DID-7 | Perturbateur | il trouble ou deforme le systeme | instabilite, tension, reponse limitee |
| DID-8 | Hybride | plusieurs modes coexistent | scene composee |

### 4.3. Caracteristiques a observer

Sans imposer une architecture, le systeme devra pouvoir raisonner a partir de :

- energie ;
- niveau grave ;
- stabilite du bourdon ;
- richesse harmonique ;
- formants ;
- souffle ;
- rugosite ;
- attaques de langue ou de gorge ;
- rythmes de respiration ;
- vocalisations ;
- continuite ou fragmentation ;
- saillance dans le mix ;
- degre de saturation naturelle.

### 4.4. Coexistence avec le grave genere

Probleme :

Le didgeridoo peut occuper une zone grave et riche en partiels. Une basse generee peut le masquer ou rigidifier son role.

Solutions musicales possibles :

- la basse generee se retire quand le didgeridoo porte deja la fondation ;
- la basse generee descend sous le didgeridoo seulement si le systeme de diffusion le permet ;
- la basse generee occupe un rythme oppose ou complementaire ;
- le didgeridoo fournit les partiels et la basse fournit la masse ;
- le didgeridoo fournit la rugosite et la basse fournit la stabilite ;
- le didgeridoo devient guide harmonique du grave ;
- le grave genere devient rare, evenementiel ou respirant ;
- les deux s'alternent plutot que jouer en continu ensemble.

### 4.5. Regle

Le didgeridoo n'est pas automatiquement la basse.

Il peut etre :

- basse ;
- anti-basse ;
- filtre vivant ;
- source de pulse ;
- source de rugissement ;
- source de partiels ;
- source vocale ;
- source d'espace ;
- presence libre.

## 5. Regimes melodiques generes

### 5.1. Principe

Vesperare n'est pas anti-melodique.

La melodie est autorisee comme regime variable. Elle doit rester liee a la matiere, au souffle, au grave, a la voix, aux partiels, aux accents ou aux resonances.

### 5.2. Typologie

| Code | Regime | Description | Risque |
|---|---|---|---|
| M-0 | Melodie absente | tension sans ligne | neutralite si rien ne remplace |
| M-1 | Centre ressenti | hauteur ou zone spectrale stable | drone plat |
| M-2 | Accent-melody | ligne percue par accents et attaques | pattern trop sec |
| M-3 | Basse-motif | grave avec contour reconnaissable | bassline generique |
| M-4 | Melodie de timbre | filtre, formant, resonance ou texture portent le contour | effet de filtre trop synth |
| M-5 | Melodie de partiels | partiels/gong/didge/voix creent une trajectoire | abstraction illisible |
| M-6 | Ligne acid naturalisee | ligne vivante, glissement, torsion, resonance | imitation 303 |
| M-7 | Fragment vocal | voix comme signal, appel, syllabe, voyelle, cri | devenir chanson par defaut |
| M-8 | Hook minimal | motif memorable court | cliche melodique |
| M-9 | Melodie microtonale | tension par intervalles fins, battements, centres instables | intellectualisation |

### 5.3. Conditions d'acceptation

Un motif melodique est compatible s'il respecte au moins plusieurs criteres :

- source ou origine plausible ;
- lien avec une fonction de pression ou de forme ;
- contour simple mais non banal ;
- relation a un regime rythmique ;
- possibilite de mutation timbrale ;
- compatibilite avec le grave ;
- capacite a disparaitre ou se transformer ;
- absence de couleur stylistique trop identifiable.

### 5.4. Generer la melodie sans la banaliser

La generation melodique devrait privilegier :

- contours issus de partiels ;
- contours issus de formants de voix ou didgeridoo ;
- accents rythmiques convertis en hauteurs ;
- basses qui portent masse et direction ;
- glissements et tensions plutot que gammes evidentes ;
- motifs tres courts transformables ;
- intervalles lies a une resonance ou a un champ harmonique ;
- repetition avec mutation de timbre.

Elle doit eviter :

- melodies preset ;
- progressions emotionnelles generiques ;
- lead trance ou melodic techno reconnaissable ;
- acid line comme module autonome ;
- vocal hook trop chanson si ce n'est pas voulu.

## 6. Transgression sonore

### 6.1. Principe

Toutes les formes de transgression citees sont autorisees :

- masse enorme ;
- rugissement ;
- voix brute ;
- saturation ;
- nudite sonore ;
- espace immense ;
- dissonance ;
- microtonalite.

La question n'est pas "autorise/interdit", mais :

- quand ;
- combien de temps ;
- avec quelle preparation ;
- avec quelle sortie ;
- au service de quelle fonction.

### 6.2. Niveaux

| Niveau | Nom | Definition | Usage |
|---|---|---|---|
| T-0 | Garde normale | intensite controlee, confort relatif | etat courant |
| T-1 | Intensite elevee | pression forte mais stable | densite, club, hypnose |
| T-2 | Transgression contextuelle | rugosite, saturation, dissonance ou masse assumee | passage marque |
| T-3 | Pic prepare | evenement rare, extreme, avec sortie | drop, gong, cri, rupture |
| T-4 | Nudite exposee | tres peu d'elements, son brut ou presence nue | tension intime, rituel |
| T-5 | Hors-projet | agression gratuite, fatigue, demo, effet pour lui-meme | a eviter |

### 6.3. Types de transgression

| Type | Fonction possible | Garde-fou |
|---|---|---|
| Masse enorme | corps, sub, domination, resolution | eviter boue grave |
| Rugissement | appel, menace, animalite acoustique, peak | eviter bruit blanc agressif |
| Voix brute | presence humaine, signal, cri, rite | eviter melodrame automatique |
| Saturation | pression, matiere, proximite | eviter durete gratuite |
| Nudite sonore | exposition, fragilite, tension | eviter vide sans direction |
| Espace immense | vertige, suspension, profondeur | eviter decor ambient |
| Dissonance | tension harmonique, frottement | eviter abstraction froide |
| Microtonalite | battements, instabilite, partials | eviter exercice theorique |

### 6.4. Fiche transgression

Chaque transgression devrait pouvoir etre decrite par :

```text
Type :
Niveau T :
Fonction :
Preparation :
Duree :
Zone spectrale :
Relation au corps :
Relation a l'espace :
Relation au live :
Sortie ou transformation :
Risque :
```

## 7. Polytexture rythmico-spectrale

### 7.1. Principe

La polytexture est un entre-deux.

Elle doit articuler des couches rythmiques, timbrales, spectrales, vocales, microtonales et instrumentales sans devenir une simple demonstration de complexite.

### 7.2. Axes

| Axe | Questions |
|---|---|
| Attaques | quelles couches frappent, frottent, soufflent, mordent ? |
| Cycles | quelles repetitions sont stables, decalees ou cachees ? |
| Spectre | quelles couches occupent grave, medium, aigu, halos ? |
| Partiels | quelles resonances deviennent motifs ? |
| Voix | la voix est-elle signal, texture, cri, souffle, fragment ? |
| Espace | quelle profondeur porte le tissu ? |
| Corps | quelle couche donne envie de bouger ou d'attendre ? |
| Live | quelle couche repond, laisse place ou transforme ? |

### 7.3. Regles

- La polytexture peut etre dense, mais doit rester lisible par fonctions.
- Une couche peut etre secondaire en volume mais centrale en tension.
- Une couche peut etre rythmique sans attaque nette, par respiration ou espace.
- Une couche peut etre melodique sans ligne chantable, par partiels ou formants.
- Le tissu peut se simplifier brutalement si la forme le demande.

## 8. Fiche minimale d'un objet genere

Tout objet genere, qu'il soit sonore, rythmique, melodique ou textural, doit pouvoir etre documente ainsi :

```text
Nom :
Scene ou contexte :
Fonction principale :
Fonctions secondaires :
Regime techno :
Niveau de plausibilite acoustique :
Type de pression :
Regime rythmique :
Regime melodique :
Role polytextural :
Source ou source imaginee :
Relation au didgeridoo / live :
Niveau de transgression :
Parametres de variation :
Conditions d'apparition :
Conditions de disparition :
Risques stylistiques :
Garde-fous :
```

Regle :

Un objet genere ne doit jamais etre seulement "un son", "un pattern" ou "une texture". Il doit avoir une fonction situee.

## 9. Conflits resolus et conflits restants

### 9.1. Conflits resolus

| Conflit apparent | Resolution |
|---|---|
| Techno principale vs suspension longue | la techno est un socle recuperable, pas une presence continue |
| PC/live club vs refus des sons electroniques reconnaissables | le PC produit des extensions acoustiques plausibles |
| Polytexture vs lisibilite club | la complexite est dosable et fonctionnelle |
| Melodie vs abstraction | la melodie est un regime, pas un style impose |
| Didgeridoo libre vs systeme reactif | les modes d'integration sont optionnels |
| Transgression large vs garde-fous | la transgression est contextuelle et decrite |
| Inspirations multiples vs collage | les inspirations sont traduites en fonctions |

### 9.2. Conflits a surveiller

| Tension | Risque | Specification necessaire |
|---|---|---|
| Plausibilite acoustique vs puissance club | sons trop doux ou trop decoratifs | definir des sons PA-2 puissants |
| Suspension tres longue vs energie live | perte d'attention | definir des pressions non-pulsees |
| Didgeridoo + sub | masquage ou rigidification | modes DID-2/DID-3 |
| Hook melodique vs identite non-generique | motif trop commun | conditions M-8 strictes |
| Espace immense vs precision rythmique | flou du corps | PR-9 + retours de cadre |
| Tout peut se superposer | surcharge | scene, densite, garde-fous |

## 10. Consequence pour les besoins v0.2

Les prochains documents de besoins devraient integrer ces nouvelles familles :

- BS-11 : plausibilite acoustique comme critere stylistique ;
- BS-12 : techno suspendue longue ;
- BS-13 : pression rythmique prioritaire ;
- BS-14 : espace comme pression active ;
- BS-15 : polytexture rythmico-spectrale ;
- BS-16 : melodie variable et naturalisee ;
- BS-17 : transgression contextuelle ;
- BG-11 : generation avec niveau de plausibilite acoustique ;
- BG-12 : generation de pression rythmique ;
- BG-13 : generation de scenes suspendues ;
- BG-14 : coexistence didgeridoo/grave ;
- BG-15 : generation melodique multi-regime ;
- BG-16 : generation sous fiche d'objet situe ;
- BG-17 : garde-fous de transgression.

## 11. Sources externes utiles a garder en contexte

Ces sources ne dictent pas l'esthetique de Vesperare. Elles servent seulement a stabiliser le vocabulaire et les distinctions :

- Denis Smalley : spectromorphologie, source-bonding, comportement temporel et spectral du son.
- Michel Chion : ecoutes causale, semantique et reduite ; rapport a la source sonore.
- Albert Bregman : scene auditive, segregation, masquage, groupement perceptif.
- Mark J. Butler : rythmes, metre, repetition, asymetrie et dissonance metrique dans les musiques electroniques de danse.
- Witek et al. : syncopation, mouvement corporel et plaisir du groove.
- Travaux sur le didgeridoo : role du conduit vocal, formants, partiels, modulation du bourdon.
- Travaux sur musique spectrale : partiels, formants, micro-intervalles, timbre comme structure.
- Travaux historiques/analytiques sur acid, dubstep, trance, techno : a utiliser par fonctions, pas comme styles a reproduire.

