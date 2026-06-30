# BESOINS STYLISTIQUES v0.1

Projet : Vesperare
Statut : document de conception amont
Base : INTENTION_INITIALE_RECONSTRUITE_v0.2

Ce document formalise les besoins stylistiques avant les besoins de generation, de performance live, d'interface ou d'architecture technique.

Un besoin stylistique n'est pas un module, un effet, un parametre ou une solution Max for Live. C'est une condition musicale que le futur outil devra respecter quand il generera des sons, des motifs rythmiques, des motifs melodiques, des configurations et des transformations live.

## 1. Statuts

| Statut | Sens |
|---|---|
| Confirme | Deja valide explicitement par Yohan ou directement implique par la correction actuelle |
| Probable | Tres coherent avec les sources, mais a confirmer |
| A valider | Important, mais encore trop ouvert ou trop dependant des futurs scenarios |
| A surveiller | Risque recurrent plutot que besoin positif |

## 2. Regle de formulation

Chaque besoin doit rester relie a une fonction stylistique.

Regle generale :

```text
Aucun besoin stylistique n'implique une presence permanente.
Chaque element doit pouvoir etre decline selon les parametres musicaux et techniques qui le determinent.
```

Cela vaut pour la techno, la polytexture, l'hypnose, la pression, la naturalisation, les instruments live, la generation melodique ou tout autre element. Un besoin stylistique confirme signifie donc :

- il fait partie du langage de Vesperare ;
- il doit pouvoir etre active, dose, transforme ou retire selon les scenes ;
- il doit etre relie aux parametres concrets qui controlent sa presence ;
- il ne doit pas devenir l'etat par defaut permanent du systeme.

Format :

```text
Pour que [fonction stylistique] existe,
Vesperare doit permettre [condition musicale],
dans le contexte de [inspiration ou situation],
sans tomber dans [derive].
```

## 3. Besoins stylistiques directeurs

### BS-01 - Techno perceptible comme socle

Statut : confirme.

Contexte d'inspiration : techno de club, hypnose, pression physique, tension longue, repetition, cadre qui revient.

Besoin :

```text
Pour que Vesperare reste ancre dans la techno,
le systeme doit produire ou soutenir des fonctions de corps, impact, pulsation, pression, hypnose et tension longue,
dans une situation de club ou le temps long et la lisibilite corporelle comptent,
sans devenir une techno standard avec instruments ajoutes.
```

Ce que cela implique :

- la techno est une force perceptible, pas seulement une reference historique ;
- les fonctions techno comptent davantage que les sons techno standards ;
- le club impose une exigence de corps, de lisibilite et d'efficacite physique ;
- les sorties hors techno explicite restent possibles, mais elles ne doivent pas faire perdre le socle du projet.

Garde-fous :

- ne pas reduire la techno au kick, au tempo ou a la drum machine ;
- ne pas plaquer des instruments acoustiques sur une techno deja finie ;
- ne pas perdre la lisibilite corporelle au nom de la richesse sonore.

### BS-02 - Reincarnation acoustique des fonctions techno

Statut : confirme.

Contexte d'inspiration : remplacement ou transformation des supports techno habituels par didgeridoo, gong, tambour, voix, percussions, objets resonants, sons hybrides ou sons synthetiques a comportement physique.

Besoin :

```text
Pour que la techno soit transformee de l'interieur,
Vesperare doit permettre a des phenomenes acoustiques, instrumentaux, vocaux ou hybrides de porter des fonctions techno,
dans des situations ou impact, sub, pulsation, halo, tension ou articulation peuvent changer de support,
sans que ces supports deviennent decoratifs, folkloriques ou simplement exotiques.
```

Ce que cela implique :

- un son acoustique n'est pas choisi parce qu'il represente la nature ou l'instrument ;
- il est choisi s'il peut remplir une fonction musicale precise ;
- un support peut etre naturalise sans que la fonction disparaisse ;
- un support peut aussi changer la fonction s'il modifie trop la perception.

Garde-fous :

- ne pas faire "techno + didgeridoo" comme addition superficielle ;
- ne pas classer automatiquement didgeridoo = sub, gong = halo, tambour = attaque ;
- verifier que chaque support conserve ou transforme consciemment la fonction visee.

### BS-03 - Corps et pression sans agression

Statut : probable, tres proche du socle confirme.

Contexte d'inspiration : intensite de club, techno forte, dimensions presque hardcore, mais refus de la fatigue sonore gratuite.

Besoin :

```text
Pour que l'intensite reste physique et desirante,
Vesperare doit permettre une pression forte, directe, corporelle et enveloppante,
dans un contexte de club ou l'impact et la masse comptent,
sans dependre principalement du volume, des aigus agressifs, de la saturation incontrolee ou de la fatigue.
```

Ce que cela implique :

- l'intensite peut venir du grave, du placement, de la densite, de la rarete, de l'alignement ou de la tension ;
- la puissance doit rester compatible avec une qualite sonore exigeante ;
- le confort d'ecoute n'est pas oppose a l'intensite.

Garde-fous :

- ne pas confondre fort avec agressif ;
- ne pas confondre pression avec spectre rempli partout ;
- ne pas utiliser le spectaculaire pauvre comme solution de peak.

### BS-04 - Hypnose active et repetition vivante

Statut : probable.

Contexte d'inspiration : techno minimaliste, Robert Hood / richesse dans le temps long, repetition qui revient sans redondance morte.

Besoin :

```text
Pour que l'hypnose techno existe,
Vesperare doit pouvoir generer ou organiser des repetitions qui restent reconnaissables mais vivantes,
dans des motifs rythmiques, melodiques ou timbraux qui evoluent sur le temps long,
sans devenir boucle fixe, randomisation decorative ou variation permanente illisible.
```

Ce que cela implique :

- la repetition doit garder une identite ;
- les mutations doivent etre necessaires, pas seulement aleatoires ;
- les motifs generes doivent pouvoir durer sans s'epuiser ;
- la complexite doit rester perceptible par le corps.

Garde-fous :

- ne pas remplacer l'hypnose par du random ;
- ne pas produire une grille trop stable et morte ;
- ne pas multiplier les evenements au point de perdre le cadre.

### BS-05 - Contour sculpte, pas secheresse froide

Statut : probable.

Contexte d'inspiration : correction de la notion de secheresse ; preference pour un son dessine, precis, fini, bien senti, mais pas pauvre ni sterile.

Besoin :

```text
Pour que les sons tiennent leur place dans la densite,
Vesperare doit favoriser des contours nets, des attaques lisibles, des queues maitrisees et des enveloppes raffinees,
dans des sons generes ou traites qui doivent rester efficaces en club,
sans produire une esthetique froide, vide, rigide ou appauvrie.
```

Ce que cela implique :

- le son peut etre precis sans etre sec au sens aride ;
- la matiere peut etre riche mais tenue ;
- la queue d'un son est une question stylistique autant qu'une question de mix ;
- le raffinement doit aider la lisibilite corporelle.

Garde-fous :

- ne pas assimiler precision et sterilite ;
- ne pas laisser les resonances envahir la fonction ;
- ne pas perdre la sensualite timbrale.

### BS-06 - Naturalisation non decorative

Statut : confirme par implication de A.

Contexte d'inspiration : sons naturels ou acoustiques qui tendent vers l'electronique ; pseudo-acoustique techno ; realisme augmente.

Besoin :

```text
Pour que les supports acoustiques enrichissent vraiment la techno,
Vesperare doit utiliser les qualites physiques, instrumentales ou hybrides des sons comme fonctions musicales,
dans des contextes ou leur complexite, leurs partiels, leur irregularite ou leur plausibilite physique servent le style,
sans tomber dans l'illustration naturelle, l'ambiance decorative ou l'exotisme.
```

Ce que cela implique :

- la naturalisation doit servir le corps, l'impact, la tension, l'hypnose ou la transformation ;
- un son naturel peut devenir techno par fonction ;
- un son synthetique peut rester acceptable s'il a une physicalite ou une necessite forte ;
- le realisme cherche peut etre augmente, pas literal.

Garde-fous :

- ne pas utiliser un son naturel parce qu'il est "joli" ;
- ne pas faire une banque d'ambiances ;
- ne pas confondre acoustique et authenticite automatique.

### BS-07 - Generation sonore, rythmique et melodique orientee style

Statut : confirme comme correction de B.

Contexte d'inspiration : l'outil doit aussi generer des sons, des motifs rythmiques et des motifs melodiques.

Besoin :

```text
Pour que l'outil soit un outil de composition-performance et pas seulement un organisateur de scenes,
Vesperare doit pouvoir generer des sons, motifs rythmiques et motifs melodiques coherents avec le socle techno reincarne,
dans des configurations que Yohan peut assigner, cumuler, croiser et transformer,
sans produire une generation autonome hors style ou une simple collection de patterns.
```

Ce que cela implique :

- la generation sonore est une fonction centrale ;
- la generation rythmique doit etre pensee avec le corps et la lisibilite ;
- la generation melodique doit etre stylistiquement justifiee ;
- les motifs doivent etre transformables et jouables, pas seulement exportes ou declenches.

Garde-fous :

- ne pas generer pour generer ;
- ne pas produire des motifs generic techno ;
- ne pas laisser la melodie importer un style non souhaite ;
- ne pas separer generation et performance.

### BS-08 - Instruments live comme presences musicales non fixes

Statut : confirme par le cadrage actuel.

Contexte d'inspiration : PC + instruments acoustiques, minimum didgeridoo seul ; possibilite gong, tambour, voix ; refus de reduire les instruments a des entrees audio.

Besoin :

```text
Pour que les instruments live restent artistiquement actifs,
Vesperare doit permettre au didgeridoo, au gong, au tambour, a la voix ou a d'autres instruments de jouer plusieurs roles possibles,
dans des scenes ou ils peuvent etre centres, accompagnes, traites, contournes ou mis en relation avec la generation,
sans les reduire a des fonctions fixes ou a de simples signaux d'analyse.
```

Ce que cela implique :

- le didgeridoo minimum n'est pas automatiquement une basse ou un sub ;
- un instrument peut porter, perturber, colorer, articuler, declencher, suspendre ou contredire ;
- le role d'un instrument doit etre configurable et contextuel ;
- la generation doit pouvoir laisser de la place ou repondre.

Garde-fous :

- ne pas programmer une identite fixe par instrument ;
- ne pas masquer l'autonomie expressive du jeu live ;
- ne pas transformer l'analyse audio en decision musicale automatique.

### BS-09 - Complexite lisible, non demonstrative

Statut : confirme.

Contexte d'inspiration : Keita Ogawa / polytexture percussive ; interlocking ; couches ; raffinement timbral ; densite articulee.

Besoin :

```text
Pour que la complexite enrichisse le style sans le disperser,
Vesperare doit pouvoir produire des couches rythmiques, timbrales ou melodiques qui restent lisibles et corporelles,
dans des moments ou la polytexture sert une fonction precise comme densification, transition, articulation ou micro-pulsation,
sans devenir virtuosite decorative, surcharge medium ou objectif autonome.
```

Ce que cela implique :

- la polytexture est bien un besoin stylistique, mais pas une presence obligatoire permanente ;
- elle doit servir une fonction approuvee ;
- l'interlocking peut enrichir le groove si le corps reste lisible ;
- la densite doit etre articulee, pas seulement accumulee.
- ce besoin doit etre declinable selon les parametres techniques qui le determinent : densite, nombre de couches, type d'attaques, repartition spectrale, durees, queues, accentuation, lisibilite, interdependance avec les instruments live.

Garde-fous :

- ne pas copier Keita Ogawa ;
- ne pas importer un style percussif traditionnel ;
- ne pas confondre richesse et surcharge ;
- ne pas faire de la complexite un spectacle technique.
- ne pas transformer la polytexture en etat par defaut du systeme.

### BS-10 - Refus du collage stylistique

Statut : confirme comme garde-fou.

Contexte d'inspiration : techno principale ; autres inspirations a manier comme phenomenes et non comme styles plaques.

Besoin :

```text
Pour que Vesperare garde une identite propre,
les inspirations externes doivent etre traduites en fonctions utiles au style,
dans des situations ou dubstep, jazz, trance, acid, Keita, voix ou instruments apportent un phenomene precis,
sans devenir des modes separes ou des citations reconnaissables par defaut.
```

Ce que cela implique :

- dubstep peut signifier attente, syncope, resolution, sub, masse grave ;
- jazz peut signifier champs de tension, finesse rythmique, harmonie comme matiere ;
- trance peut signifier suspension, expansion, peak sans brutalite ;
- acid peut signifier torsion, filtre, ligne vivante, variation timbrale ;
- ces elements ne doivent pas prendre le controle du style global.

Garde-fous :

- ne pas creer un mode dubstep, un mode jazz, un mode trance, un mode acid ;
- ne pas accumuler les references ;
- ne pas valider une idee parce qu'elle est conceptuellement elegante ;
- toujours demander quelle fonction stylistique elle sert.

## 4. Synthese provisoire

Les besoins stylistiques actuels peuvent se resumer ainsi :

> Vesperare doit produire une performance de club fondee sur une techno perceptible, corporelle, hypnotique et puissante, mais reincarnee par des supports acoustiques, instrumentaux, vocaux, hybrides ou naturalises. L'outil doit generer des sons, des motifs rythmiques et des motifs melodiques qui servent ce style, tout en permettant aux instruments live de rester des presences musicales configurables. La polytexture / complexite lisible est un besoin stylistique confirme, mais declinable et non permanent. Les concepts de matiere, spectre, halo, tension ou microtonalite ne sont retenus que lorsqu'ils servent une fonction stylistique approuvee.

## 5. Prochaine verification avec Yohan

Questions courtes :

1. Est-ce que BS-03, BS-04 et BS-05 doivent passer en confirme, rester probables, ou etre corriges ?
2. La generation melodique doit-elle etre un besoin stylistique important, ou seulement une capacite technique a encadrer plus tard ?
3. Pour BS-09, quels parametres doivent determiner la presence ou l'intensite de la polytexture : densite, couches, attaques, timbres, fonctions rythmiques, roles des instruments live, ou autre chose ?
