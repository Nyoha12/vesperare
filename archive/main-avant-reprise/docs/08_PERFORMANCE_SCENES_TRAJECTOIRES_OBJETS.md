# 08_PERFORMANCE_SCENES_TRAJECTOIRES_OBJETS

Version : v0.2  
Statut : document de conception transversal pour performance, scènes, trajectoires et objets sonores.

## Objet

Ce document formalise la couche supérieure de Vesperare : la manière dont le système doit organiser la performance complète, les scènes, les états, les trajectoires, les objets sonores impliqués, les contrôles contextuels et l’autonomie située.

L’objectif n’est pas de figer des morceaux ou des arrangements, mais de concevoir un système capable de rendre jouables et programmables des formes complexes, tout en restant cohérent avec l’esprit du style.

## Principe général

Vesperare ne doit pas être une pile de modules indépendants.  
Il doit devenir un système où :

```text
les objets sonores ont des fonctions ;
les états définissent des régimes de cohérence ;
les scènes programment des situations performatives ;
les trajectoires transforment les priorités musicales ;
les contrôles proposés dépendent du contexte ;
l’autonomie du système reste située, cohérente et contrôlable.
```

Le système ne compose pas à la place du compositeur. Il rend vivantes, modulables et performables des structures conçues à l’avance.

Formule directrice :

```text
Le compositeur programme l’esprit, les possibles, les relations et les trajectoires ;
le système rend ces possibles vivants en performance.
```

## Ancrage stylistique et objectif musical

Ce modèle de scènes, trajectoires et objets n’est pas une abstraction technique indépendante. Il sert directement l’objectif de Vesperare : inventer un style personnel à partir de fonctions techno réincarnées dans des matières naturelles, acoustiques, vocales, percussives, instrumentales, microtonales ou naturalisées.

Les trajectoires, scènes et objets doivent donc toujours être reliés aux analyses stylistiques précédentes.

### Techno

La techno fournit le socle fonctionnel : corps, impact, pression, hypnose, répétition, tension longue, efficacité performative.

Dans le modèle de performance :

```text
les états vérifient la présence ou l’absence du corps ;
les scènes organisent la stabilité ou le retrait de la fondation ;
les trajectoires décident comment le corps est maintenu, suspendu, réincorporé ou transformé ;
les objets sonores assument des fonctions techno sans devoir sonner techno standard.
```

La couche performance doit donc protéger la fonction corporelle du projet, même lorsque l’espace, l’harmonie, la microtonalité ou les matières autonomes prennent de l’importance.

### Dubstep

Le dubstep apporte surtout l’art de la syncope tendue, de l’attente, du drop rare, de la résolution rythmique, du sub comme masse, des voix criées et des rugissements de gongs.

Dans le modèle de performance :

```text
une trajectoire pré-drop n’est pas un effet de style ;
elle est une combinaison d’opérations : retirer, fragmenter, retenir, tendre, préparer, réaligner ;
les objets impliqués peuvent être sub, gong, voix, impact-fondation, polytexture ou halo ;
le drop doit rester rare, programmable, déclenchable, retardable ou annulable ;
la résolution peut être rythmique, corporelle, spectrale, harmonique ou microtonale.
```

La logique dubstep est donc déconstruite en composants utilisables sans devenir identité dubstep plaquée.

### Jazz

Le jazz apporte les champs de tension harmonique, les couleurs d’accords, les voicings et la finesse rythmique.

Dans le modèle de performance :

```text
les trajectoires peuvent transformer des champs harmoniques ;
les objets peuvent porter des rôles de couleur, tension, voicing distribué ou micro-instabilité ;
les scènes peuvent programmer des relations fines entre rythme, harmonie, partiels et corps ;
les contrôles contextuels doivent permettre la finesse sans réduire cela à du humanize aléatoire.
```

La logique jazz doit enrichir les relations, placements, couleurs et tensions, sans importer un style jazz reconnaissable par défaut.

### Trance

La trance apporte suspension, ouverture, expansion, build-up, peak sans brutalité, brillance maîtrisée, halos larges et respiration de matière.

Dans le modèle de performance :

```text
une trajectoire d’expansion doit indiquer quels objets s’ouvrent ;
une suspension doit préciser ce qui est retiré et ce qui reste corporel ;
un peak peut être spatial, harmonique, matériel ou corporel, pas seulement spectaculaire ;
les objets doivent traduire l’ouverture selon leur nature : gong, voix, halo, sub, clochettes, polytexture.
```

La logique trance est conservée comme science de l’ouverture progressive et du peak non brutal, mais naturalisée et intégrée aux objets du projet.

### Acid

L’acid apporte ligne vivante, torsion, résonance contrôlée et hypnose par variation de timbre, mais sans modèle TB-303 structurant.

Dans le modèle de performance :

```text
une trajectoire de torsion doit toujours être traduite comme phénomène acoustique ou naturalisable ;
les objets impliqués peuvent être voix, gong, didgeridoo, bol, reverb, filtre, résonance ou matière de sub ;
slide, squelch, acidité ou ligne hybride ne sont acceptés que s’ils deviennent des phénomènes cohérents avec les objets et le style ;
le jeu de filtre appartient à l’organisation globale des contrôles live, pas à un module acid isolé.
```

La logique acid devient donc une manière de faire muter des objets et résonances, pas une citation stylistique.

### Polytexture percussive

La facette Keita / polytexture apporte interlocking, densité articulée, richesse percussive, harmonie de timbres, complexité lisible et précision du geste.

Dans le modèle de performance :

```text
les trajectoires de densification ne doivent pas créer une masse confuse ;
les objets percussifs doivent garder des rôles distincts ;
les scènes doivent pouvoir augmenter complexité et énergie sans perdre lisibilité ;
les contrôles doivent permettre articulation, accentuation, brillance et interaction entre couches.
```

### Microtonalité, harmoniques et partiels

Le document 07 établit que le pitch de Vesperare ne doit pas être réduit aux notes MIDI.

Dans le modèle de performance :

```text
les trajectoires peuvent agir sur des partiels, formants, centres spectraux et champs microtonaux ;
les objets peuvent porter des tensions ou résolutions harmoniques ;
les scènes peuvent programmer des microtensions, stabilisations, battements, halos ou centres graves ;
les drops, peaks, suspensions et beautés autonomes peuvent avoir une dimension harmonique ou microtonale.
```

### Objectif global

La couche performance sert donc à éviter trois risques :

```text
collage d’influences ;
accumulation de modules indépendants ;
autonomie générative hors style.
```

Elle doit au contraire permettre :

```text
une intégration profonde des influences ;
une programmation fine des relations ;
une autonomie située ;
une interface qui présente les bons contrôles au bon moment ;
une performance complète orientée par l’esprit du projet.
```

---

# 1. Définitions conceptuelles

## Objet sonore / objet musical

Un objet sonore n’est pas seulement un sample ou une source audio.  
C’est une entité musicale avec :

```text
une matière ;
une fonction ;
un comportement possible ;
une identité spectrale ;
une place dans le corps, l’espace, le rythme ou l’harmonie ;
une capacité à être transformée.
```

Exemples :

```text
gong grave ;
bol chantant ;
sub de didgeridoo ;
voix criée ;
voix soufflée ;
clochettes ;
polytexture de percussions ;
halo harmonique ;
rugissement métallique ;
field recording granulaire ;
ligne de matière acid naturalisée ;
impact-fondation ;
brillance rythmique ;
résonance filtrée.
```

Un objet peut être simple ou composite.

```text
objet simple : gong, voix, tambour, cloche ;
objet composite : sub + gong, voix + reverb, halo de bols, polytexture de percussions.
```

## Rôle musical d’un objet

Un même objet peut assumer plusieurs rôles selon la scène ou la trajectoire.

Exemple : un gong peut être :

```text
impact ;
halo ;
rugissement ;
champ harmonique ;
beauté autonome ;
préparation de drop ;
masse grave ;
source de partiels.
```

Il ne suffit donc pas de dire qu’un objet est actif. Il faut savoir quel rôle il joue.

Formule :

```text
objet sonore = matière / source / entité ;
rôle musical = fonction momentanée de cet objet dans la scène.
```

Les trajectoires ne doivent pas seulement agir sur les objets, mais sur les objets dans un rôle donné.

## État

Un état est un régime de cohérence musical actuel.

Il répond à la question :

```text
Qu’est-ce que la musique est en train de faire maintenant ?
```

Un état peut inclure :

```text
présence du corps ;
niveau d’impact ;
stabilité du sub ;
densité polytexturale ;
niveau de halo ;
type de tension ;
degré de microtonalité ;
matière dominante ;
ouverture spatiale ;
rapport aux instruments live ;
niveau d’autonomie du système ;
type de transformation autorisé.
```

Un état n’est pas figé. Il peut respirer, varier et muter tant qu’il conserve son régime de cohérence.

## Scène

Une scène est une programmation performative.

Elle peut correspondre à une scène Ableton, mais conceptuellement elle est plus large : elle prépare un environnement musical jouable.

Une scène peut définir :

```text
quel état ou famille d’états est actif ;
quels objets sonores sont disponibles ;
quels rôles ces objets peuvent assumer ;
quels comportements sont autorisés ;
quelles trajectoires peuvent être lancées ;
quels événements rares sont armés ;
quels contrôles sont présentés en priorité ;
quels contrôles restent accessibles en profondeur ;
quels garde-fous sont actifs ;
quelles bifurcations sont possibles.
```

La scène programme donc des relations, pas seulement des clips ou des objets actifs.

## Trajectoire

Une trajectoire est une logique de transformation.

Elle répond à la question :

```text
Comment la musique passe-t-elle d’une configuration de forces à une autre ?
```

Une trajectoire peut transformer :

```text
le corps ;
la densité ;
le sub ;
l’espace ;
les harmoniques ;
la microtonalité ;
la matière dominante ;
la lisibilité ;
la tension ;
la relation au live ;
l’autonomie du système ;
la probabilité des grands événements.
```

Une trajectoire n’est pas forcément linéaire. Elle peut être locale, globale, superposée, tressée, transférée ou interrompue.

## Dimensions d’application

Une trajectoire doit préciser sur quelle dimension elle agit.

Dimensions possibles :

```text
rythme ;
impact ;
sub ;
densité ;
spectre ;
harmoniques ;
microtonalité ;
espace ;
halo ;
intelligibilité ;
présence ;
forme ;
relation au live ;
autonomie ;
lisibilité.
```

Deux trajectoires peuvent coexister sur un même objet si elles agissent sur des dimensions compatibles ou si leur conflit est arbitré.

## Implication

L’implication désigne le degré et la manière dont un objet sonore participe à une trajectoire.

Un objet peut être :

```text
central ;
participant ;
réactif ;
en résistance ;
en arrière-plan ;
protégé ;
exclu ;
préparé ;
armé pour plus tard.
```

Cela permet d’éviter que toutes les trajectoires agissent uniformément sur tous les objets.

---

# 2. Déconstruire les trajectoires

Les trajectoires archétypales sont utiles pour se projeter, mais elles ne doivent pas devenir des recettes.

Exemples d’archétypes :

```text
corps → suspension → expansion ;
attente syncopée → drop rare → résolution ;
matière exposée → réincorporation techno ;
torsion acid naturalisée → ouverture trance ;
champ harmonique jazz → résolution corporelle.
```

Ces trajectoires doivent être déconstruites en opérations élémentaires.

## Opérations de transformation

Exemples d’opérations :

```text
retirer ;
densifier ;
ouvrir ;
tordre ;
suspendre ;
réaligner ;
stabiliser ;
exposer ;
fragmenter ;
rugir ;
éclaircir ;
compresser ;
respirer ;
déplacer ;
réincorporer ;
protéger ;
transférer.
```

Une trajectoire devient alors une composition d’opérations.

Exemple :

```text
pré-drop naturalisé = retirer + fragmenter + tendre + préparer + réaligner.
```

Autre exemple :

```text
expansion non brutale = éclaircir + ouvrir + étendre + stabiliser + rayonner.
```

Cette décomposition permet d’anticiper, recombiner et optimiser un maximum de possibilités.

## Phases internes d’une trajectoire

Une trajectoire peut comporter plusieurs phases.

```text
armement ;
préparation ;
engagement ;
seuil ;
résolution ou bifurcation ;
post-trace / post-résonance ;
désarmement.
```

Exemple : pré-drop.

```text
armement : le système sait qu’un drop est possible ;
préparation : sub retenu, tensions, syncope ;
engagement : les objets commencent à converger ;
seuil : moment où la résolution devient possible ;
résolution : drop, retour, ou fausse résolution ;
post-trace : queue, halo, résonance, retour au flux.
```

Les contrôles contextuels doivent dépendre de la phase de trajectoire, pas seulement du nom de la trajectoire.

---

# 3. Trajectoires globales et locales

## Trajectoire globale

Elle décrit la direction générale d’une section ou d’une performance.

Exemple :

```text
de corps stable vers suspension expansive.
```

## Trajectoire locale

Elle agit sur un objet ou une famille d’objets.

Exemples :

```text
les gongs ouvrent leurs partiels ;
la voix se fragmente ;
la polytexture se densifie ;
le sub se retire ;
les clochettes deviennent plus présentes.
```

Une scène peut donc contenir :

```text
une trajectoire globale principale ;
plusieurs trajectoires locales ;
des trajectoires secondaires ;
des trajectoires armées mais non déclenchées.
```

---

# 4. Matrice objets × rôles × dimensions × trajectoires

Une scène peut être représentée comme une matrice entre objets et trajectoires, mais cette matrice doit intégrer les rôles et dimensions.

Exemple conceptuel simple :

```text
                    Suspension   Expansion   Densification   Pré-drop
Impact-fondation       fort          non           non          moyen
Sub                    moyen        faible         non          fort
Gong                   faible       fort           faible       fort
Voix                   moyen        moyen          faible       fort
Polytexture            faible       faible         fort         moyen
Halo                   fort         fort           faible       faible
Clochettes             faible       moyen          fort         non
```

Mais la représentation complète doit préciser :

```text
objet ;
rôle actuel ;
trajectoire active ;
dimension affectée ;
degré d’implication ;
priorité ;
protection.
```

Exemple :

```text
Gong
rôle : masse de résolution
trajectoire : pré-drop
dimension : spectrale + formelle
implication : forte
protection : queue contrôlée, éviter boue spectrale.
```

Autre exemple :

```text
Gong
rôle : halo harmonique
trajectoire : expansion
dimension : spatiale + partiels
implication : moyenne
protection : ne pas masquer voix / sub.
```

Cette logique permet de dire qu’une scène n’est pas seulement “une suspension”, mais par exemple :

```text
suspension du corps ;
expansion du halo ;
préparation du gong ;
densification légère des clochettes ;
sub retenu ;
voix préparée mais pas encore centrale.
```

Cette logique est essentielle pour rendre les scènes profondément programmables.

---

# 5. Trajectoires multiples

Plusieurs trajectoires peuvent exister en même temps.

## Superposition

Des trajectoires agissent simultanément sur des objets différents.

Exemple :

```text
suspension du corps ;
expansion du halo ;
densification des clochettes ;
tension microtonale du gong.
```

## Tressage

Deux trajectoires s’influencent ou alternent.

Exemple :

```text
la voix se fragmente pendant que le gong s’ouvre ;
quand la voix se retire, le gong prend plus de place ;
quand le sub revient, les deux se stabilisent.
```

## Transfert

Une trajectoire passe d’un objet à un autre.

Exemple :

```text
tension microtonale portée par la voix ;
puis transférée au gong ;
puis résolue par le sub.
```

## Coexistence sur le même objet

Un même objet peut être traversé par plusieurs trajectoires dans différentes dimensions.

Exemple : gong.

```text
spatialement : il s’ouvre ;
harmoniquement : il se tend ;
rythmiquement : il prépare une résolution ;
matériellement : il devient plus exposé.
```

Cela permet des comportements musicaux très riches.

---

# 6. Traduction objet-spécifique

Une trajectoire abstraite ne doit jamais écraser la nature propre des objets.

Même opération, traductions différentes :

```text
ouvrir un gong = révéler des partiels, allonger le halo, élargir la résonance ;
ouvrir une voix = passer du souffle au formant, augmenter présence, élargir l’espace vocal ;
ouvrir une polytexture = laisser plus d’air entre les frappes, éclaircir les timbres ;
ouvrir le sub = révéler ses harmoniques tout en gardant le centre corporel.
```

Formule :

```text
Trajectoire abstraite
→ opération musicale
→ traduction selon l’objet
→ paramètres techniques
→ contrôle live.
```

Exemple :

```text
Expansion
→ ouvrir / éclaircir / élargir
→ sur gong : révéler partiels + halo
→ paramètres : filtre, résonateur, decay, espace
→ contrôles : Ouverture gong, Partiels, Queue, Distance.
```

Autre exemple :

```text
Pré-drop
→ retenir / tendre / préparer
→ sur sub : filtrer grave + microtension
→ paramètres : niveau, pitch drift, harmonics, sidechain, saturation douce
→ contrôles : Sub retenu, Tension grave, Résolution.
```

---

# 7. Capacités de trajectoire des objets

Chaque objet possède des comportements cohérents possibles.

## Gong

```text
résonner ;
rugir ;
ouvrir des partiels ;
porter un halo ;
préparer un drop ;
occuper l’espace ;
créer une beauté autonome ;
fournir un champ microtonal.
```

## Micro-percussion

```text
densifier ;
articuler ;
syncoper ;
briller ;
interlocker ;
créer une tension de surface ;
maintenir une complexité lisible.
```

## Voix

```text
crier ;
souffler ;
porter un mot ;
se fragmenter ;
devenir halo ;
devenir impact ;
devenir matière humaine ;
devenir signal.
```

## Sub

```text
fonder ;
se retirer ;
se stabiliser ;
se tendre microtonalement ;
rugir ;
résoudre ;
relier corps et harmoniques.
```

## Halo

```text
ouvrir ;
suspendre ;
colorer ;
porter des champs harmoniques ;
respirer ;
se refermer ;
exposer une beauté autonome.
```

Ces capacités ne doivent pas limiter la composition. Elles servent de garde-fous pour que l’autonomie du système reste stylistiquement cohérente.

---

# 8. Scènes décomposées

Une scène ne doit pas être réduite à une idée unique.

Elle peut contenir :

```text
état principal ;
objets actifs ;
rôles des objets ;
trajectoire globale ;
trajectoires locales ;
relations entre objets ;
événements armés ;
contrôles présentés ;
garde-fous ;
bifurcations possibles.
```

Exemple :

```text
Scène : Suspension avant résolution

État principal :
suspension / attente.

Trajectoire globale :
retrait du corps vers ouverture harmonique.

Trajectoires locales :
sub → retrait + tension microtonale ;
gong → expansion de partiels ;
voix → fragmentation lente ;
polytexture → raréfaction ;
halo → ouverture.

Événements armés :
drop gong ;
retour impact-fondation ;
bifurcation vers beauté autonome.

Contrôles présentés :
Suspension, Tension grave, Gong central, Voix fragmentée, Résolution, Retard.
```

---

# 9. Contrôles contextuels

Le système doit pouvoir être entièrement programmable, mais tout ne doit pas être au premier plan en permanence.

Les contrôles proposés doivent dépendre de :

```text
la scène programmée ;
les trajectoires actives ;
les phases de trajectoires ;
les objets sonores prioritaires ;
les rôles actuels de ces objets ;
les événements armés ;
le niveau d’autonomie autorisé ;
les garde-fous nécessaires.
```

Formule :

```text
contexte = scène + trajectoires + phases + objets prioritaires + rôles.
```

Exemple :

```text
Scène : pré-drop
Trajectoire active : tension syncopée
Objet central : voix
Rôle : matière de résolution / cri armé

Contrôles proposés :
fragmentation vocale ;
cri armé ;
syncope vocale ;
retard de résolution ;
sub retenu secondaire ;
halo post-voix.
```

Même scène avec objet central différent :

```text
Scène : pré-drop
Trajectoire active : tension syncopée
Objet central : gong
Rôle : masse de résolution / rugissement armé

Contrôles proposés :
rugissement gong ;
partiels tendus ;
queue contrôlée ;
drop gong ;
sub lié au gong ;
résonance post-drop.
```

## Niveaux de contrôle

### Contrôles permanents

Toujours accessibles :

```text
intensité ;
corps ;
densité ;
espace ;
tension ;
lisibilité ;
sécurité / fatigue spectrale ;
retour au corps ;
stop / gel / reprise.
```

### Contrôles contextuels

Présentés selon la scène, les trajectoires, les phases, les objets prioritaires et les rôles.

### Contrôles profonds

Accessibles mais pas au premier plan : détails de source, mapping de partiels, formes de reverb, comportements de variation, distributions spatiales, etc.

### Contrôles d’urgence

Toujours nécessaires : retour au corps, réduction de densité, baisse d’aigus fatigants, annulation de drop, stabilisation du sub, réduction de halo.

---

# 10. Autonomie située

Le système peut être très autonome à condition que son autonomie soit située.

Mauvaise autonomie :

```text
le système génère des événements hors style ;
il ajoute sans logique formelle ;
il ignore l’état actif ;
il ignore les objets en jeu ;
il ignore le corps, les halos, les instruments, la microtonalité ;
il produit des événements non préparés.
```

Bonne autonomie :

```text
le système connaît l’état actif ;
il connaît les objets disponibles ;
il connaît les rôles actuels des objets ;
il connaît les trajectoires autorisées ;
il connaît les tensions en cours ;
il sait quels événements sont armés ;
il sait quels contrôles sont prioritaires ;
il sait ce qui est interdit ;
il peut varier dans un champ de cohérence.
```

L’autonomie doit donc être un comportement situé dans une scène, une trajectoire, une matière et une logique stylistique.

## Niveaux d’autonomie

```text
micro-autonomie : variations fines, accents, mutations, détails ;
méso-autonomie : évolution d’une trajectoire locale, densification, retrait, ouverture ;
macro-autonomie : propositions de bifurcation, transition ou scène suivante.
```

La micro- et méso-autonomie peuvent être relativement riches si les garde-fous sont bons. La macro-autonomie doit rester beaucoup plus surveillée.

---

# 11. Gestion des conflits

Si plusieurs trajectoires agissent sur le même objet, il faut gérer les conflits.

Exemples :

```text
une trajectoire veut ouvrir le halo ;
une autre veut réduire l’espace.
```

Arbitrages possibles :

```text
priorité à la trajectoire principale ;
moyenne pondérée ;
séparation par dimension ;
retard d’une trajectoire ;
annulation ;
protection de l’objet.
```

## Types de conflits

```text
conflit de direction : une trajectoire veut ouvrir, une autre veut fermer ;
conflit de ressource : deux objets occupent le même espace spectral ;
conflit de fonction : un objet doit être fondation et instabilité en même temps ;
conflit de lisibilité : trop de trajectoires simultanées rendent la scène illisible ;
conflit de corps : la sophistication détruit l’impact ou le sub ;
conflit de beauté : la matière devient fascinante mais coupe la forme.
```

Le système ne doit pas seulement empêcher les conflits. Certains conflits peuvent être musicalement féconds s’ils sont contrôlés.

Exemples de protections :

```text
Sub protégé : ne pas trop élargir en stéréo, ne pas perdre le centre corporel.
Voix protégée : garder intelligibilité si mot important, ou autoriser fragmentation si voix-matière.
Gong protégé : contrôler la queue, éviter la boue spectrale.
Halo protégé : limiter fatigue aiguë et saturation d’espace.
```

---

# 12. Modules conceptuels futurs

Cette couche pourrait impliquer plusieurs modules ou sous-systèmes Max for Live.

## Object Registry

Liste les objets sonores disponibles, leurs fonctions, leurs rôles possibles, leurs capacités, leurs limites, leurs relations possibles.

## Trajectory Engine

Gère les trajectoires globales et locales, leurs opérations, leurs phases, leurs courbes, leurs objets impliqués, leurs dimensions et leurs conditions.

## Scene / Performance Conductor

Coordonne les états, scènes, trajectoires, transitions, événements armés et niveaux d’autonomie.

## Contextual Control Router

Présente les bons contrôles au bon moment selon :

```text
scène ;
état ;
trajectoires ;
phases ;
objets prioritaires ;
rôles ;
urgence ;
garde-fous ;
phase de performance.
```

## Conflict / Protection Manager

Évite les contradictions et protège les objets sensibles : sub, voix, halo, gongs, espace, fatigue spectrale.

---

# 13. Décisions actuelles

```text
1. Les trajectoires doivent être déconstruites en opérations recombinables.
2. Les trajectoires doivent toujours préciser les objets sonores impliqués.
3. Les objets sonores doivent être distingués de leurs rôles musicaux momentanés.
4. Un même objet peut participer à plusieurs trajectoires.
5. Plusieurs trajectoires peuvent coexister dans une même scène.
6. Les trajectoires doivent préciser les dimensions qu’elles affectent.
7. Les opérations doivent être traduites selon la nature et le rôle de chaque objet.
8. Les scènes doivent programmer des relations, pas seulement des objets actifs.
9. Tout doit pouvoir être programmable, mais l’interface doit hiérarchiser les contrôles selon le contexte.
10. L’autonomie du système doit être située, cohérente et contrôlable.
11. Les trajectoires archétypales servent à comprendre l’esprit du projet, mais doivent rester déconstruites et recombinables.
12. Les abstractions de performance doivent toujours rester reliées aux analyses stylistiques : techno, dubstep, jazz, trance, acid, polytexture, microtonalité et naturalisation.
```

## Formule directrice

Une trajectoire n’est jamais seulement une courbe globale : c’est une transformation distribuée entre des objets sonores, chacun impliqué à un degré différent, dans un rôle spécifique, selon sa propre nature et dans une logique stylistique cohérente avec Vesperare.
