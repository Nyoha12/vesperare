# BESOINS DE GENERATION v0.1

Projet : Vesperare
Statut : document de conception amont
Base : INTENTION_INITIALE_RECONSTRUITE_v0.2 + BESOINS_STYLISTIQUES_v0.1

Ce document formalise ce que l'outil doit pouvoir generer ou organiser : sons, motifs rythmiques, motifs melodiques, variations, couches, interactions et transformations.

Il ne decrit pas encore une architecture Max for Live. Il ne choisit pas encore de modules, de devices, d'algorithmes ou de mappings.

## 1. Regle centrale

La generation n'est pas autonome comme finalite.

```text
Generer = produire une possibilite musicale jouable,
orientee par une fonction stylistique,
declinable par des parametres,
et transformable en live.
```

Donc un element genere doit toujours pouvoir repondre a quatre questions :

1. Quelle fonction stylistique sert-il ?
2. Quelle forme prend-il : son, motif rythmique, motif melodique, couche, variation, reaction ?
3. Quels parametres determinent sa presence, son intensite et sa transformation ?
4. Comment Yohan peut-il l'assigner, le cumuler, le croiser, le retirer ou le reprendre en live ?

## 2. Statuts

| Statut | Sens |
|---|---|
| Confirme | Directement implique par les corrections actuelles |
| Probable | Fortement coherent avec les sources, mais a preciser |
| A valider | Besoin important mais encore trop ouvert |
| Garde-fou | Limite a respecter pour eviter les derives |

## 3. Besoins directeurs de generation

### BG-01 - Generation sonore integree

Statut : confirme.

Relie a : BS-02, BS-06, BS-07.

Besoin :

```text
Pour que la techno soit reincarnee par d'autres supports,
Vesperare doit pouvoir generer ou preparer des sons qui portent une fonction musicale precise,
dans des familles acoustiques, instrumentales, vocales, hybrides, naturalisees ou electroniques justifiees,
sans traiter le son comme une couleur ajoutee apres la generation des motifs.
```

Implications :

- le son fait partie du motif et de la fonction ;
- un son genere doit pouvoir etre classe par role potentiel, pas par simple categorie d'instrument ;
- les sons electroniques restent possibles s'ils servent mieux la fonction ;
- les sons naturalises ne sont pas automatiquement meilleurs.

Parametres a explorer :

- attaque ;
- duree ;
- queue ;
- contour ;
- poids grave ;
- brillance ;
- rugosite ;
- stabilite ;
- richesse de partiels ;
- proximite acoustique / electronique ;
- capacite a porter une pulsation, une articulation, une tension ou une presence.

Garde-fous :

- ne pas faire une banque de sons decorative ;
- ne pas choisir les sons seulement par famille instrumentale ;
- ne pas separer "pattern maintenant, sound design plus tard".

### BG-02 - Generation rythmique orientee corps

Statut : confirme.

Relie a : BS-01, BS-04, BS-07, BS-09.

Besoin :

```text
Pour que la techno reste corporelle,
Vesperare doit pouvoir generer des motifs rythmiques qui gardent une lisibilite physique,
dans des regimes de pulsation, interlocking, syncope, repetition, densification ou resolution,
sans produire de la complexite rythmique purement mathematique.
```

Implications :

- un motif rythmique doit pouvoir soutenir, deplacer ou troubler le corps ;
- la complexite doit etre dosable ;
- la repetition doit garder une identite ;
- la syncope doit pouvoir etre une tension corporelle, pas seulement un decalage de grille.

Parametres a explorer :

- densite ;
- placement ;
- regularite / irregularite ;
- accentuation ;
- nombre de couches ;
- taux d'interlocking ;
- degre de syncope ;
- stabilite du cycle ;
- lisibilite du retour ;
- relation au grave et a l'impact ;
- relation aux attaques live.

Garde-fous :

- ne pas confondre polyrythmie et musicalite ;
- ne pas faire du random une preuve de vie ;
- ne pas perdre le cadre corporel.

### BG-03 - Generation melodique encadree

Statut : confirme comme capacite ; formes exactes a valider.

Relie a : BS-01, BS-07, BS-10.

Besoin :

```text
Pour que Vesperare puisse generer des motifs melodiques sans importer un style non souhaite,
la generation melodique doit etre encadree par les fonctions techno, les centres spectraux, les instruments, les tensions et les scenes,
dans des formes qui peuvent etre lignes, fragments, basses, accents, partiels, formants ou motifs courts,
sans devenir melodic techno, chanson, lead theme ou ornement gratuit.
```

Implications :

- "melodique" ne veut pas forcement dire melodie chantable ;
- un motif melodique peut etre une ligne de basse, une accent-melody, un deplacement de centre spectral, un fragment vocal, une ligne acid naturalisee ou une relation de partiels ;
- la generation melodique doit rester subordonnee au style ;
- elle peut etre importante sans etre permanente.

Parametres a explorer :

- hauteur notee ;
- hauteur ressentie ;
- centre spectral ;
- registre ;
- contour melodique ;
- repetition / variation ;
- tension / resolution ;
- relation au sub ;
- relation aux partiels d'un instrument ;
- degre de reconnaissance melodique ;
- stabilite ou glissement.

Garde-fous :

- ne pas importer automatiquement harmonie pop, chanson ou melodic techno ;
- ne pas faire de la ligne melodique une obligation ;
- ne pas laisser la melodie effacer le corps.

### BG-04 - Motif comme couple son-fonction

Statut : confirme par implication.

Relie a : BS-01, BS-02, BS-05, BS-07.

Besoin :

```text
Pour que les motifs generes soient musicalement utiles,
Vesperare doit lier chaque motif a un type de son et a une fonction,
dans une logique ou rythme, timbre, contour, duree et role sont penses ensemble,
sans produire des notes abstraites qui recevront un son plus tard.
```

Implications :

- un motif peut etre concu comme impact, articulation, tissage, tension, signal, reponse, suspension ou retour ;
- la duree et la queue du son changent la fonction du motif ;
- la generation rythmique et sonore doivent se contraindre mutuellement ;
- le meme motif MIDI peut devenir stylistiquement faux avec un mauvais support sonore.

Parametres a explorer :

- fonction visee ;
- famille de support ;
- contour sonore ;
- densite d'evenements ;
- poids spectral ;
- place dans la scene ;
- priorite perceptive ;
- compatibilite avec instruments live.

Garde-fous :

- ne pas generer des notes neutres ;
- ne pas croire qu'un motif reste le meme avec n'importe quel son ;
- ne pas reporter les problemes de mix et de fonction a la fin.

### BG-05 - Variation identitaire

Statut : probable.

Relie a : BS-04, BS-05, BS-09.

Besoin :

```text
Pour que les motifs durent sans mourir,
Vesperare doit pouvoir produire des variations qui conservent une identite perceptible,
dans des repetitions longues, densifications, transitions ou phases hypnotiques,
sans basculer vers la boucle morte ou la variation permanente illisible.
```

Implications :

- la variation doit avoir un degre ;
- certaines variations touchent le rythme, d'autres le son, l'accent, la densite, le registre ou la fonction ;
- un motif peut muter tout en restant reconnaissable ;
- la stabilite est une ressource, pas une faiblesse.

Parametres a explorer :

- amplitude de variation ;
- frequence de variation ;
- cible de variation ;
- seuil de reconnaissance ;
- moment de mutation ;
- retour au motif ;
- lien avec scene ou trajectoire.

Garde-fous :

- ne pas faire varier tout tout le temps ;
- ne pas confondre vivant et instable ;
- ne pas tuer l'hypnose par exces d'information.

### BG-06 - Polytexture generable et dosable

Statut : confirme.

Relie a : BS-09.

Besoin :

```text
Pour que la complexite lisible puisse exister quand elle est necessaire,
Vesperare doit pouvoir generer et doser des couches interdependantes de motifs rythmiques, timbraux ou melodiques,
dans des situations de densification, transition, micro-pulsation, enrichissement ou contrepoint,
sans faire de la polytexture l'etat permanent du systeme.
```

Implications :

- la polytexture est une capacite stylistique confirmee ;
- elle doit etre declinable, pas imposee ;
- elle peut concerner les rythmes, les attaques, les timbres, les registres, les queues, les partiels ou les roles ;
- elle doit rester lisible dans le corps et dans le mix.

Parametres a explorer :

- nombre de couches ;
- independance des couches ;
- densite globale ;
- densite locale ;
- zones de spectre ;
- types d'attaques ;
- synchronisation / decalage ;
- interlocking ;
- accent principal ;
- couches secondaires ;
- priorite live / generation.

Garde-fous :

- ne pas copier Keita Ogawa ;
- ne pas produire une surcharge medium ;
- ne pas faire de la virtuosite decorative ;
- ne pas perdre le role de chaque couche.

### BG-07 - Reactions a l'instrument live

Statut : confirme comme principe ; details a valider.

Relie a : BS-08.

Besoin :

```text
Pour que les instruments live restent des presences actives,
Vesperare doit pouvoir ajuster la generation en fonction de ce que joue le didgeridoo, le gong, le tambour, la voix ou un autre instrument,
dans des modes ou la generation peut se retirer, densifier autour, repondre, contraster, accompagner ou laisser de l'espace,
sans reduire le live a une entree de controle automatique.
```

Implications :

- l'instrument live peut influencer la generation sans lui dicter toute la musique ;
- la reaction peut etre directe, indirecte, lente, discrete ou suspendue ;
- le systeme doit pouvoir ne pas reagir ;
- la relation doit rester configurable par scene ou situation.

Parametres a explorer :

- energie live ;
- densite d'attaques ;
- sustain ;
- charge grave ;
- charge medium ;
- brillance ;
- stabilite ;
- rugosite ;
- presence vocale ou instrumentale ;
- priorite du live ;
- degre d'influence sur la generation.

Garde-fous :

- ne pas faire du live un simple capteur ;
- ne pas imposer une reaction automatique permanente ;
- ne pas effacer l'autonomie expressive de Yohan.

### BG-08 - Generation de transitions et resolutions

Statut : probable.

Relie a : BS-01, BS-03, BS-04, BS-10.

Besoin :

```text
Pour que la performance avance sans recettes de drop,
Vesperare doit pouvoir generer ou preparer des transitions, attentes, realignements, suspensions et resolutions,
dans des formes rythmiques, corporelles, spectrales, timbrales ou melodiques,
sans reduire la resolution a "retomber sur le 1" ou a un drop standard.
```

Implications :

- une resolution peut etre rythmique, corporelle, harmonique, timbrale ou spatiale ;
- un drop peut exister, mais rare, prepare et declenchable ;
- la tension peut etre maintenue, detournee ou resolue ;
- la generation doit aider a construire des sorties, pas seulement des etats.

Parametres a explorer :

- attente ;
- densification ;
- retrait ;
- realignement ;
- retour du grave ;
- ouverture ;
- fermeture ;
- changement de support ;
- intensite ;
- rarete de l'evenement ;
- declenchement manuel.

Garde-fous :

- ne pas automatiser le drop ;
- ne pas tomber dans le spectaculaire pauvre ;
- ne pas confondre transition avec accumulation.

### BG-09 - Contraintes de lisibilite et de mix des la generation

Statut : probable.

Relie a : BS-03, BS-05, BS-07, BS-09.

Besoin :

```text
Pour que la generation reste jouable en club,
Vesperare doit anticiper les conflits de densite, de spectre, de queue, d'attaque et de role au moment ou les sons et motifs sont produits,
dans des situations de couches, pression, polytexture ou instruments live,
sans compter uniquement sur un mix correctif apres coup.
```

Implications :

- un motif trop dense peut demander des sons plus courts ;
- un support tres resonant peut limiter d'autres queues ;
- un grave vivant peut modifier la generation des autres graves ;
- la lisibilite est une contrainte de generation, pas seulement de mix.

Parametres a explorer :

- occupation grave / medium / aigu ;
- durees ;
- queues ;
- nombre d'evenements ;
- densite simultanee ;
- priorite perceptive ;
- masquage ;
- fatigue ;
- contour ;
- compatibilite avec live.

Garde-fous :

- ne pas produire une masse que le mix devra sauver ;
- ne pas remplir tout le spectre par defaut ;
- ne pas confondre richesse et accumulation.

### BG-10 - Configurations generatives assignables et croisables

Statut : confirme comme direction ; forme exacte a valider.

Relie a : BS-07, BS-08, BS-09.

Besoin :

```text
Pour que la generation soit utilisable en live,
Vesperare doit permettre a Yohan d'assigner, cumuler et croiser des configurations de generation,
dans des combinaisons de sons, motifs, roles, instruments live, densites, fonctions et scenes,
sans transformer l'outil en tableau de bord injouable.
```

Implications :

- une configuration peut concerner un son, un motif, une famille, un role, une scene ou une relation ;
- plusieurs configurations doivent pouvoir coexister ;
- les croisements doivent etre musicalement controles ;
- la configuration doit rester accessible au moment du jeu.

Parametres a explorer :

- famille sonore ;
- role musical ;
- type de motif ;
- degre de densite ;
- influence du live ;
- niveau de polytexture ;
- registre ;
- mode de variation ;
- priorite de controle ;
- compatibilite entre configurations.

Garde-fous :

- ne pas multiplier les options sans hierarchie ;
- ne pas rendre tous les parametres visibles tout le temps ;
- ne pas confondre puissance de configuration et complexite d'interface.

## 4. Synthese provisoire

Les besoins de generation actuels peuvent se resumer ainsi :

> Vesperare doit generer des sons, motifs rythmiques et motifs melodiques comme des elements deja charges de fonction stylistique, et non comme des donnees neutres. La generation doit etre sonore, rythmique, melodique, polytexturale quand necessaire, reactive au live quand souhaite, transformable en performance et contrainte par la lisibilite corporelle, le style techno reincarne et les garde-fous de mix.

## 5. Questions de validation

1. La generation melodique doit-elle etre surtout une affaire de basses, de fragments, d'accents, de partiels, de voix, ou de lignes plus reconnaissables ?
2. Les motifs rythmiques doivent-ils partir d'abord de la pulsation techno, de l'interlocking/polytexture, du live, ou d'une combinaison configurable ?
3. Pour les sons generes, faut-il privilegier des sons naturalises/acoustiques par defaut, ou garder une vraie place pour des sons franchement electroniques quand ils servent la fonction ?
4. Les configurations generatives doivent-elles etre pensees d'abord par roles musicaux, par sources sonores, par scenes, par instruments live, ou par parametres transversaux ?
