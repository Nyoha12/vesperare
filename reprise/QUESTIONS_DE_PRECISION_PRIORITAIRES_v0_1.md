# QUESTIONS DE PRECISION PRIORITAIRES v0.1

Projet : Vesperare
Statut : fiche active de clarification avant tests et architecture Max for Live
Date : 2026-06-20

Sources actives :
- INDEX_ACTIF_VESPERARE_CONCEPTION.md
- BESOINS_STYLISTIQUES_v0_3.md
- BESOINS_GENERATION_v0_3.md
- CARACTERISATION_DETAILLEE_ELEMENTS_v0_3.md
- AUDIT_WEB_CARACTERISATION_ELEMENTS_v0_1.md

But :

Transformer les zones fragiles en questions prioritaires.

Cette fiche ne demande pas de repondre a tout immediatement.
Elle sert a organiser les arbitrages avant :

- tests instrumentaux ;
- ecoutes de reference ;
- premieres hypotheses techniques Max for Live ;
- routings ;
- sidechains ;
- mappings ;
- interface.

## 0. Methode

### 0.1. Format d'une question

```text
ID :
Priorite :
Elements lies :
Ambiguite :
Question :
Reponses utiles :
Ce que ca debloque :
Defaut provisoire si non tranche :
Moment de decision :
```

### 0.2. Niveaux de priorite

| Priorite | Sens | Effet |
|---|---|---|
| P1 | Bloquant conceptuel ou technique | A clarifier avant prototypes serieux |
| P2 | Important pour scenes et garde-fous | Peut attendre une premiere selection de scenes |
| P3 | A verifier par exemples ou tests | Ne doit pas bloquer maintenant |

### 0.3. Regle anti-dispersion

Une question est gardee seulement si elle concerne :

- un element CE ou ET actif ;
- un conflit perceptif ;
- un seuil de cliche ;
- une relation live ;
- une decision de generation ;
- une future verification situee.

## 1. P1 - Questions bloquantes

### QP-01 - Qui porte le vrai grave ?

Priorite : P1.

Elements lies :

- CE-04 Dubstep ;
- CE-05 Dub / sound system ;
- CE-12 Didgeridoo ;
- CE-13 Gong / metaux ;
- BG-10 Grave, sub et masse ;
- BG-17 Monopoles perceptifs.

Ambiguite :

Le didgeridoo, le sub genere, le gong grave et les basses naturalisees peuvent tous occuper le grave. Le principe "une seule source de vrai sub a un moment donne" est pose, mais pas encore arbitre selon les scenes.

Question :

Quand le didgeridoo est actif, quelle relation doit avoir le grave genere ?

Reponses utiles :

- le grave genere se retire presque toujours ;
- le grave genere alterne avec le didgeridoo ;
- le grave genere soutient discretement le didgeridoo ;
- le grave genere peut prendre le dessus si le didgeridoo n'est pas grave ;
- le didgeridoo peut guider harmoniquement le grave genere ;
- decision variable selon scene.

Ce que ca debloque :

- logique de monopole sub ;
- futurs sidechains graves ;
- routage basse/didgeridoo/gong ;
- tests de masquage ;
- architecture de protection du didgeridoo.

Defaut provisoire si non tranche :

Une seule source porte le vrai grave. Le didgeridoo est prioritaire dans le setup minimum ; le sub genere alterne ou se deplace.

Moment de decision :

Avant tout prototype sub/didgeridoo.

### QP-02 - Didgeridoo libre ou didgeridoo integre ?

Priorite : P1.

Elements lies :

- CE-12 Didgeridoo ;
- BG-06 Coexistence avec didgeridoo ;
- BS-06 Didgeridoo libre et accommodable.

Ambiguite :

Le didgeridoo doit rester libre, mais des modes d'accommodation sont souhaites. Il faut savoir si l'adaptation du systeme doit etre automatique, manuelle, ou scene-dependante.

Question :

Dans quelles situations le systeme peut-il reagir au didgeridoo sans limiter ta liberte de jeu ?

Reponses utiles :

- jamais automatiquement ;
- seulement protection grave/halo ;
- analyse passive puis proposition ;
- adaptation automatique douce ;
- modes explicites : libre, protege, grave partage, guide harmonique, source traitee ;
- adaptation forte seulement dans scenes preparees.

Ce que ca debloque :

- statut de l'analyse audio live ;
- niveau d'autonomie du systeme ;
- futurs modes DID ;
- besoin ou non de detecter pitch, formants, attaques, energie.

Defaut provisoire si non tranche :

Le didgeridoo reste libre par defaut. Les accommodations sont des modes explicites, pas un comportement permanent.

Moment de decision :

Avant tests d'analyse audio live.

### QP-03 - Quelle memoire garde une techno suspendue tres longue ?

Priorite : P1.

Elements lies :

- CE-01 Techno ;
- ET-02 Techno suspendue ;
- BG-05 Techno suspendue generable ;
- BS-04 Techno suspendue longue.

Ambiguite :

Tu as valide des suspensions tres longues. Ce qui manque : les indices minimaux qui gardent Vesperare dans la trajectoire techno sans pulse explicite.

Question :

Quels fils de memoire suffisent pour qu'une suspension longue reste Vesperare ?

Reponses utiles :

- pulse fantome ;
- centre grave latent ;
- motif fragmentaire ;
- respiration cyclique ;
- espace actif ;
- attente de retour ;
- tension microtonale ;
- presence didgeridoo ;
- rare impact ;
- aucun fil continu si le retour est tres prepare.

Ce que ca debloque :

- scenes sans pulse ;
- conditions de retour ;
- difference entre suspension et ambient decoratif ;
- generation de halos, souffles, centres graves latents.

Defaut provisoire si non tranche :

Une suspension longue doit garder au moins un fil : pression, memoire, direction ou indice de retour.

Moment de decision :

Avant construire des scenes longues.

### QP-04 - Ou commence le son electronique reconnaissable ?

Priorite : P1.

Elements lies :

- CE-02 Techno pseudo-acoustique ;
- CE-09 Nature / acoustique ;
- BG-02 Generation sous plausibilite acoustique ;
- BS-05 Plausibilite acoustique et ambiguite.

Ambiguite :

Les sons electroniques reconnaissables sont a eviter. Mais certains sons impossibles, hybrides ou traites peuvent etre acceptables s'ils restent plausibles comme extensions acoustiques.

Question :

Quels indices rendent un son trop electronique pour Vesperare ?

Reponses utiles :

- timbre de synthese identifiable ;
- enveloppe trop preset ;
- filtre/resonance trop synthe ;
- modulation numerique trop visible ;
- sidechain pompe EDM ;
- pluck/supersaw/riser/wobble ;
- glitch decoratif ;
- auto-tune ;
- freeze/shimmer trop reconnaissable ;
- autre seuil subjectif.

Ce que ca debloque :

- seuil PA-2 / PA-3 / PA-X ;
- choix de corpus sonore ;
- tests de sound design ;
- generation sonore plausible ;
- refus de certains devices ou presets.

Defaut provisoire si non tranche :

Ambiguite acoustique acceptee ; signature electronique identifiable exclue comme support central.

Moment de decision :

Avant constituer une banque de sources ou prototypes de synthese/traitement.

### QP-05 - Jusqu'ou peut aller l'acid naturalise ?

Priorite : P1.

Elements lies :

- CE-08 Acid ;
- ET-04 Melodie possible ;
- BG-09 Ligne vivante / acid naturalise ;
- BS-18 Acid.

Ambiguite :

La ligne acid naturalisee est souhaitee, mais la limite entre ligne vivante et citation 303 n'est pas tranchee.

Question :

Qu'est-ce qui rend une ligne acid acceptable dans Vesperare ?

Reponses utiles :

- elle vient d'un formant, tube, voix, didgeridoo, metal ou friction ;
- le timbre prime sur les notes ;
- boucle courte acceptee ;
- accent/slide acceptes s'ils ne sonnent pas 303 ;
- acidite ponctuelle acceptee ;
- ligne frontale possible ;
- ligne toujours integree a une scene ;
- squelch reconnaissable interdit.

Ce que ca debloque :

- generation de lignes ;
- seuil de reconnaissance acid ;
- rapport motif/timbre ;
- controles de resonance/formants ;
- prevention des cliches acid.

Defaut provisoire si non tranche :

Timbre, formant et matiere avant pattern ; pas de squelch 303 reconnaissable ; ligne jamais autonome par defaut.

Moment de decision :

Avant tout prototype de ligne melodico-timbrale.

### QP-06 - Quelle voix est vraiment Vesperare ?

Priorite : P1.

Elements lies :

- CE-10 Voix ;
- CE-04 Dubstep ;
- ET-04 Melodie possible ;
- ET-05 Transgression ;
- BG-11 Voix generee / traitee.

Ambiguite :

La voix peut etre souffle, fragment, cri, signal, texture, hook minimal, voix nue ou choeur spectral. Il faut clarifier quels roles sont souhaitables en premier.

Question :

Quels regimes vocaux sont centraux, ponctuels ou a eviter ?

Reponses utiles :

- souffle / respiration ;
- consonne rythmique ;
- syllabe-signal ;
- voyelle tenue ;
- voix nue ;
- cri ;
- murmure ;
- fragment presque chantable ;
- hook minimal ;
- choeur spectral ;
- parole intelligible ;
- parole non intelligible ;
- voix traitee comme halo.

Ce que ca debloque :

- choix des sources vocales ;
- niveau d'intelligibilite ;
- risques de chanson/gimmick ;
- relation voix/didgeridoo ;
- traitements acceptables.

Defaut provisoire si non tranche :

Voix comme presence, signal, matiere ou transgression ; pas chanson par defaut ; intelligibilite doseable.

Moment de decision :

Avant banque vocale ou modules voix.

### QP-07 - Halo : soutien ou danger principal ?

Priorite : P1.

Elements lies :

- ET-03 Espace / halo ;
- CE-05 Dub / sound system ;
- CE-07 Trance ;
- CE-13 Gong / metaux ;
- BG-13 Espace et halo generatifs.

Ambiguite :

Le halo peut porter suspension, beaute, memoire et espace. Il peut aussi effacer le rythme et devenir ambient.

Question :

Quand le halo a-t-il le droit de devenir principal ?

Reponses utiles :

- seulement en suspension ;
- seulement si le rythme est retire ;
- seulement si un retour est prepare ;
- seulement hors grave ;
- si le didgeridoo est absent ou peu soutenu ;
- si la scene vise beaute autonome ;
- ponctuellement comme peak ;
- jamais longtemps sauf exception.

Ce que ca debloque :

- regles halo/densite ;
- futures relations sidechain ou ducking ;
- gestion des queues de gong ;
- separation espace/ambient ;
- protection du didgeridoo et des attaques.

Defaut provisoire si non tranche :

Halo principal seulement si pression, memoire ou direction restent actifs. Halo reduit quand densite, sustain live ou grave augmentent.

Moment de decision :

Avant scenes suspendues et reverbs/halos generatifs.

## 2. P2 - Questions importantes pour scenes et garde-fous

### QP-08 - Quel niveau de sound system ?

Priorite : P2.

Elements lies :

- CE-05 Dub / sound system ;
- BG-10 Grave, sub et masse ;
- ET-05 Transgression.

Ambiguite :

Sound system peut vouloir dire confort profond, immersion massive, pression vibratoire ou quasi-domination sonore.

Question :

Quel type de puissance sound-system est recherche ?

Reponses utiles :

- confort profond ;
- immersion massive ;
- pression vibratoire forte ;
- domination sonore ponctuelle ;
- sub rare mais decisif ;
- sub frequent mais discret ;
- grave surtout senti, pas entendu ;
- grave tres audible.

Ce que ca debloque :

- niveau de sub ;
- relation espace/grave ;
- strategie de confort/fatigue ;
- tests club.

Defaut provisoire si non tranche :

Puissance confortable mais forte ; pas douceur decorative.

Moment de decision :

Avant tests graves et mix club.

### QP-09 - Quelle tension jazz sans sonner jazz ?

Priorite : P2.

Elements lies :

- CE-06 Jazz ;
- CE-11 Microtonalite ;
- ET-04 Melodie possible.

Ambiguite :

Jazz est retenu pour tension, voicing, ponctuation et resolution, pas pour accords jazz plaques. Il faut clarifier les formes de tension vraiment desirees.

Question :

Quelles formes de tension jazz doivent nourrir Vesperare ?

Reponses utiles :

- voicing doux ;
- frottement de partiels ;
- tension suspendue ;
- resolution retardee ;
- resolution deviee ;
- ponctuation rythmico-harmonique ;
- centre spectral stable avec couleurs ;
- progression harmonique ponctuelle ;
- aucune progression explicite.

Ce que ca debloque :

- generation de champs de partiels ;
- relation microtonalite/jazz ;
- garde-fou contre accords jazz cliches ;
- choix de centres spectraux.

Defaut provisoire si non tranche :

Harmonie comme matiere en premier ; progression explicite seulement ponctuelle.

Moment de decision :

Avant scenes harmoniques ou microtonales structurelles.

### QP-10 - Quelle densite maximale de polytexture ?

Priorite : P2.

Elements lies :

- CE-03 Polytexture ;
- ET-01 Pression rythmique ;
- BG-07 Polytexture rythmico-spectrale.

Ambiguite :

La polytexture doit etre riche mais lisible. Il faut savoir quand elle perd le corps ou surcharge le medium.

Question :

Combien de couches ou de roles simultanes restent corporels ?

Reponses utiles :

- une couche directrice + deux soutiens ;
- trois a cinq roles simultanes ;
- densite extreme possible mais courte ;
- medium toujours limite ;
- polytexture frontale seulement en transition ;
- polytexture frontale comme scene complete possible.

Ce que ca debloque :

- limites de generation de couches ;
- hierarchie perceptive ;
- densite medium ;
- regles de retrait.

Defaut provisoire si non tranche :

Une couche directrice obligatoire ; autres couches en roles explicites ; densite extreme courte.

Moment de decision :

Avant generation de patterns polytexturaux.

### QP-11 - Gong : impact, halo, rugissement ou drop ?

Priorite : P2.

Elements lies :

- CE-13 Gong / metaux ;
- CE-04 Dubstep ;
- ET-05 Transgression ;
- ET-03 Espace / halo.

Ambiguite :

Le gong peut etre impact, halo, rugissement, signal, peak, resolution ou drop. Ces roles ont des exigences contradictoires.

Question :

Quels roles de gong sont prioritaires pour Vesperare ?

Reponses utiles :

- impact rare ;
- halo spectral ;
- rugissement transgressif ;
- drop / retour de masse ;
- signal formel ;
- resolution microtonale ;
- beaute autonome ;
- champ de partiels.

Ce que ca debloque :

- gestion des queues ;
- seuil de rugissement ;
- relation gong/sub/didgeridoo ;
- role de gong dans scenes suspendues.

Defaut provisoire si non tranche :

Chaque usage de gong doit declarer son role ; queue longue seulement si fonctionnelle.

Moment de decision :

Avant corpus gong/metaux.

### QP-12 - Microtonalite : couleur, tension ou structure ?

Priorite : P2.

Elements lies :

- CE-11 Microtonalite ;
- CE-06 Jazz ;
- CE-13 Gong ;
- CE-12 Didgeridoo ;
- ET-04 Melodie possible.

Ambiguite :

La microtonalite est centrale, mais pas comme theorie. Il faut distinguer couleur subtile, tension audible, rugosite, resolution, et moment structurel.

Question :

Quels regimes microtonaux sont souhaites en priorite ?

Reponses utiles :

- couleur subtile presque permanente ;
- battements perceptibles ;
- tension grave/halo ;
- resolution microtonale ;
- dissonance exposee ;
- ligne microtonale ;
- champ de partiels ;
- microtonalite guidee par didgeridoo/gong/voix.

Ce que ca debloque :

- centres spectraux ;
- relation partiels/harmonie ;
- tests d'audibilite en club ;
- seuil "belle tension" vs theorie.

Defaut provisoire si non tranche :

Microtonalite comme couleur et tension par defaut ; moments structurels rares et fonctionnels.

Moment de decision :

Avant modules de pitch, centres spectraux ou halos accordes.

### QP-13 - Trance : combien d'euphorie ou d'expansion ?

Priorite : P2.

Elements lies :

- CE-07 Trance ;
- ET-02 Techno suspendue ;
- ET-03 Espace / halo ;
- ET-05 Transgression.

Ambiguite :

La trance apporte suspension, expansion et peak, mais le risque est le cliche euphorique.

Question :

Quelle part d'euphorie ou d'ouverture est acceptable ?

Reponses utiles :

- ouverture sans euphorie ;
- euphorie tres rare ;
- peak lumineux mais non EDM ;
- expansion sombre/nocturne ;
- build long sans peak evident ;
- breakdown naturalise ;
- halo harmonique assumable.

Ce que ca debloque :

- scenes de build ;
- seuil de brillance ;
- relation tension/plaisir ;
- garde-fous anti-supersaw/riser.

Defaut provisoire si non tranche :

Expansion autorisee ; euphorie prefabriquee exclue ; peak peut etre matiere, espace, corps ou resolution.

Moment de decision :

Avant scenes longues de build/peak.

### QP-14 - Melodie : quels motifs peuvent devenir memorables ?

Priorite : P2.

Elements lies :

- ET-04 Melodie possible ;
- CE-08 Acid ;
- CE-10 Voix ;
- CE-11 Microtonalite ;
- BG-08 Melodie multi-regime.

Ambiguite :

La melodie est possible, pas "presque jamais". Il faut clarifier quels motifs peuvent etre memorables sans devenir lead banal.

Question :

Quels motifs peuvent etre reconnaissables ou memorables ?

Reponses utiles :

- basse-motif ;
- ligne acid naturalisee ;
- hook vocal minimal ;
- fragment vocal ;
- accent-melody ;
- melodie de timbre ;
- melodie de partiels ;
- centre spectral recurrent ;
- motif tres court seulement ;
- motif long possible si naturalise.

Ce que ca debloque :

- generation melodique ;
- rapport hook/abstraction ;
- garde-fou contre lead banal ;
- scenes plus memorables.

Defaut provisoire si non tranche :

Motif reconnaissable accepte s'il vient de matiere, voix, grave, partiels, accent ou formant.

Moment de decision :

Avant generation melodique avancee.

### QP-15 - Transgression : quelle crise principale ?

Priorite : P2.

Elements lies :

- ET-05 Transgression ;
- BS-12 Intensite sans agression ;
- BG-14 Transgression contextuelle.

Ambiguite :

Toutes les formes de transgression sont possibles, mais une crise principale a la fois doit dominer.

Question :

Quelles transgressions sont les plus importantes pour Vesperare ?

Reponses utiles :

- masse enorme ;
- rugissement ;
- voix brute ;
- saturation organique ;
- nudite sonore ;
- espace immense ;
- dissonance ;
- microtonalite exposee ;
- silence brutal ;
- contraste rarete/masse.

Ce que ca debloque :

- hierarchie des pics ;
- gestion de fatigue ;
- role de saturation ;
- scenes de crise ;
- sorties de transgression.

Defaut provisoire si non tranche :

Transgression contextuelle, preparee, avec duree et sortie. Pas d'accumulation de crises.

Moment de decision :

Avant scenes de pic ou transgression.

## 3. P3 - Questions a verifier par exemples ou tests

### QP-16 - Quelles sources acoustiques sont trop illustratives ?

Priorite : P3.

Elements lies :

- CE-09 Nature / acoustique / instruments ;
- CE-02 Techno pseudo-acoustique.

Ambiguite :

Certaines sources naturelles ou acoustiques peuvent devenir decoratives.

Question :

Quelles sources sont interdites, fragiles ou acceptables seulement sous condition ?

Reponses utiles :

- oiseaux/insectes ;
- eau/grains ;
- bois/pierre ;
- field recordings ;
- souffles ;
- frictions ;
- metaux ;
- peaux ;
- voix ;
- sources synthetiques plausibles.

Ce que ca debloque :

- corpus sonore ;
- tests PA ;
- garde-fou anti-decor.

Defaut provisoire si non tranche :

Source acceptee seulement si elle porte une fonction musicale.

Moment de decision :

Avant banque de sons.

### QP-17 - Quels instruments reels seront vraiment disponibles ?

Priorite : P3.

Elements lies :

- CE-12 Didgeridoo ;
- CE-13 Gong / metaux ;
- CE-14 Tambours / peaux ;
- CE-10 Voix.

Ambiguite :

Le setup minimum est didgeridoo + PC. Gong, tambour, voix sont possibles mais pas garantis.

Question :

Quels instruments doivent etre consideres comme disponibles dans les premieres versions ?

Reponses utiles :

- didgeridoo seul ;
- didgeridoo + voix ;
- didgeridoo + gong ;
- didgeridoo + tambour ;
- tous possibles mais optionnels ;
- instruments seulement comme samples/generation ;
- instruments live reels a tester.

Ce que ca debloque :

- priorites de test ;
- architecture modulaire ;
- corpus minimal ;
- modes live.

Defaut provisoire si non tranche :

Setup minimum : didgeridoo + PC. Autres instruments optionnels.

Moment de decision :

Avant tests live.

### QP-18 - Quelle place pour les tambours et peaux ?

Priorite : P3.

Elements lies :

- CE-14 Tambours / peaux ;
- CE-03 Polytexture ;
- ET-01 Pression rythmique.

Ambiguite :

Les peaux peuvent remplacer fonctions techno ou devenir connotatives.

Question :

Les peaux doivent-elles etre sources centrales de pression ou seulement supports ponctuels ?

Reponses utiles :

- impact-fondation central ;
- micro-pulse ponctuel ;
- roll de build ;
- polytexture ;
- source samplee seulement ;
- instrument live possible ;
- usage rare pour eviter tribal/world.

Ce que ca debloque :

- corpus percussif ;
- generation de patterns ;
- seuil de connotation.

Defaut provisoire si non tranche :

Fonction avant instrument ; peaux non folkloriques, role limite sauf scene specifique.

Moment de decision :

Avant banque percussive.

### QP-19 - Quels exemples d'ecoute faut-il choisir ?

Priorite : P3.

Elements lies :

- tous CE/ET fragiles.

Ambiguite :

Certaines questions demandent des exemples sonores, pas seulement des mots.

Question :

Quels exemples doivent servir a calibrer les seuils ?

Reponses utiles :

- techno suspendue reussie ;
- ligne acid acceptable ;
- ligne acid trop 303 ;
- voix brute desirable ;
- voix trop chanson ;
- gong musical ;
- gong trop effet ;
- sound-system confortable ;
- sound-system trop dominant ;
- tension jazz desirable ;
- halo Vesperare vs ambient.

Ce que ca debloque :

- seuils stylistiques ;
- tests d'ecoute ;
- corpus de reference ;
- verification situee.

Defaut provisoire si non tranche :

Les exemples viendront apres cette fiche, par lots prioritaires.

Moment de decision :

Avant prototypes sonores definitifs.

### QP-20 - Quelles decisions doivent rester live et humaines ?

Priorite : P3 maintenant, P1 avant interface.

Elements lies :

- BG-01 Objets generes situes ;
- BG-18 Anti-glissement generatif ;
- index actif, regle anti-dispersion.

Ambiguite :

Le systeme doit aider sans composer ou decider a la place de l'artiste. Il faudra distinguer generation, proposition, reaction et decision.

Question :

Quelles decisions doivent toujours rester humaines ?

Reponses utiles :

- forme globale ;
- apparition d'une transgression ;
- passage didgeridoo traite/non traite ;
- retour de cadre ;
- drop/retour de masse ;
- changement de scene ;
- intensite generale ;
- seuils de risque ;
- tout peut etre prepare mais declenche humainement.

Ce que ca debloque :

- autonomie du systeme ;
- interface ;
- automation ;
- scenes ;
- controle live.

Defaut provisoire si non tranche :

Le systeme prepare, propose, contraint et reagit ; l'artiste decide les bascules formelles fortes.

Moment de decision :

Avant architecture d'interface et automation.

## 4. Questions a traiter en premier avec l'utilisateur

Ordre recommande :

1. QP-01 : vrai grave et didgeridoo/sub/gong.
2. QP-02 : liberte du didgeridoo vs accommodation.
3. QP-03 : memoire de techno suspendue.
4. QP-04 : seuil electronique reconnaissable.
5. QP-05 : acid naturalise vs 303.
6. QP-06 : regimes vocaux.
7. QP-07 : halo principal ou danger.

Pourquoi cet ordre :

- ces questions conditionnent les futurs tests ;
- elles empechent les erreurs lourdes de conception ;
- elles clarifient les relations entre generation, live, grave, espace et style ;
- elles evitent de partir trop tot sur des modules Max for Live.

## 5. Questions a ne pas poser maintenant

Ces points sont importants mais prematurees :

- quel device Max for Live exact ;
- quel mapping exact ;
- quelle interface ;
- quel seuil numerique ;
- quel algorithme de pitch tracking ;
- quel routage definitive ;
- quelle latence acceptable ;
- quel controleur physique.

Raison :

Ils dependent des reponses P1 et P2.

## 6. Decision v0.1

Le projet reste organise.

La prochaine interaction utile n'est pas une nouvelle fiche longue.

La prochaine interaction utile est de traiter les questions P1, une par une ou par blocs :

```text
Bloc A : didgeridoo / sub / gong / grave
Bloc B : techno suspendue / halo / retour
Bloc C : acid / voix / melodie reconnaissable
Bloc D : plausibilite acoustique / PA-X
```

Apres ces reponses, on pourra produire :

```text
QUESTIONS_DE_PRECISION_PRIORITAIRES_v0_2.md
```

ou directement :

```text
SCENARIOS_DE_TEST_SITUES_v0_1.md
```

si les arbitrages P1 sont assez clairs.
