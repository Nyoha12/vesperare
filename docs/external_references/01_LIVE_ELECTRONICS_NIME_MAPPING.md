# 01_LIVE_ELECTRONICS_NIME_MAPPING

Version : v0.1  
Statut : références externes spécialisées. Non source de vérité Vesperare.

## Objet

Stocker des références utiles sur live electronics, NIME, mapping, liveness, instruments numériques, interface et méthodologie de conception.

But pour Vesperare : éviter le piège du prototype isolé et aider à penser un instrument-système jouable, contextuel, performant, expressif et compatible avec le live acoustique.

---

# Synthèse rapide pour extraction

## Apports utiles

```text
instrument numérique ≠ simple interface ;
contrôle expressif ≠ nombre de paramètres ;
mapping geste / résultat doit être programmable et musical ;
live electronic ≠ tout contrôler à la main ;
liveness = relation perceptible entre geste, risque, réaction, contexte et son ;
l'évaluation ne doit pas devenir un protocole lourd séparé ;
la conception peut intégrer des vérifications locales sans réduire le projet.
```

## Traduction Vesperare

```text
concevoir globalement ;
vérifier localement ;
réviser sans casser l'architecture ;
ne pas réduire pour tester ;
concevoir par scènes fonctionnelles ;
considérer didgeridoo / guimbardes / voix / gong / tambour comme agents de scène ;
penser les boutons comme accès à des fonctions musicales, pas comme paramètres bruts.
```

---

# Sources / cartes documentaires

## Source 1 — Wessel & Wright, Problems and Prospects for Intimate Musical Control of Computers

URL : https://arxiv.org/abs/2010.01570  
Type : article / archive de recherche NIME.  
Statut : très utile pour conception instrument numérique / mapping / expressivité.

### Ce que la source dit

Le design de performance informatique doit viser :

```text
prise en main initiale ;
potentiel de virtuosité à long terme ;
faible latence et faible variance de latence ;
stratégies claires pour programmer la relation entre geste et résultat musical ;
contrôleurs et interfaces adaptés à la performance réelle.
```

### Notions Vesperare concernées

```text
bons contrôles au bon moment ;
contrôle contextuel ;
macro performative ;
réglage humain ;
virtuosité long terme ;
Router ;
live agency ;
latence ;
relation geste / résultat.
```

### Extraction Vesperare possible

```text
Un contrôle Vesperare doit être apprenable rapidement mais permettre une profondeur de jeu.
Un mapping ne doit pas être seulement technique ; il doit relier geste, scène, rôle, fonction et sortie.
La latence doit être jugée selon la fonction musicale : impact, réponse, halo, suggestion, protection, etc.
```

### Risques de mauvaise transposition

```text
prendre le modèle NIME comme obligation de fabriquer un contrôleur nouveau ;
confondre virtuosity avec complexité d'interface ;
réduire la question à une ergonomie de boutons ;
oublier que Vesperare reste techno organique et live acoustique.
```

### Documents internes à relier

```text
docs/02_SPECIFICATION_MAX_FOR_LIVE.md
docs/42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md
docs/modules/18_CONTEXTUAL_CONTROL_ROUTER_AMPLITUDES_LIMITES_OVERRIDE_ADDENDUM.md
docs/23_SCENES_COMME_CHAMPS_OUVERTS_DE_PERFORMANCE.md
```

---

## Source 2 — New Interfaces for Musical Expression / NIME

URL : https://www.nime.org/  
URL secondaire : https://en.wikipedia.org/wiki/New_Interfaces_for_Musical_Expression  
Type : conférence / champ de recherche.

### Ce que la source dit

NIME est un champ de recherche sur les nouvelles technologies pour l'expression musicale et la performance artistique.

Les sujets incluent notamment :

```text
contrôleurs ;
performance ;
composition ;
perception ;
cognition ;
geste ;
mouvement ;
expressivité ;
mapping ;
haptique ;
systèmes temps réel ;
rapports entre technologie et culture musicale.
```

### Notions Vesperare concernées

```text
instrument-système ;
interface contextuelle ;
performance live ;
contrôle expressif ;
geste ;
liveness ;
scènes ouvertes ;
IA companion future ;
visualisation ;
live priority.
```

### Extraction Vesperare possible

```text
Vesperare doit être conçu comme instrument-système, pas comme simple ensemble de devices.
Chaque contrôle doit être lié à une fonction musicale et à une situation performative.
La performance doit inclure le corps, le geste, la perception et le contexte, pas seulement le son généré.
```

### Risques de mauvaise transposition

```text
prendre NIME comme justification pour multiplier les interfaces ;
se perdre dans la recherche instrumentale hors techno organique ;
confondre nouveauté technique et pertinence musicale.
```

### Documents internes à relier

```text
docs/08_PERFORMANCE_SCENES_TRAJECTOIRES_OBJETS.md
docs/19_LIVE_CONTROL_LAYERS_AND_PERFORMANCE_STATES.md
docs/22_CONTEXTUAL_VISUALIZATION_REQUIREMENTS.md
```

---

## Source 3 — A NIME Reader / tendances NIME

URL : https://arxiv.org/abs/2010.10803  
Type : réflexion sur quinze ans de NIME.

### Ce que la source dit

Le champ NIME rassemble une grande diversité d'approches artistiques, scientifiques et technologiques. Il inclut aussi une dimension critique sur les forces et limites de la communauté.

### Notions Vesperare concernées

```text
pluralité méthodologique ;
conception critique ;
anti-solution unique ;
outil situé ;
relation entre pratique artistique et système.
```

### Extraction Vesperare possible

```text
Ne pas chercher une unique méthode importée.
Utiliser NIME comme réserve de questions : expressivité, mapping, geste, performance, cognition, critique.
```

### Risques

```text
accumuler des références sans décision ;
importer un vocabulaire universitaire au lieu de renforcer le projet ;
perdre le socle techno-first.
```

---

## Source 4 — Live electronic music

URL : https://en.wikipedia.org/wiki/Live_electronic_music  
Type : synthèse historique.

### Ce que la source dit

La live electronic music inclut l'utilisation d'appareils électroniques, instruments modifiés, circuits, ordinateurs, traitements temps réel et improvisation. Elle s'est développée en réaction aux formes de musique électronique fixées sur support.

### Notions Vesperare concernées

```text
liveness ;
improvisation ;
réaction ;
performance ;
traitement live ;
accompagnement instruments acoustiques ;
relation instrument / système.
```

### Extraction Vesperare possible

```text
Le live n'est pas seulement le temps réel.
Il faut préserver une relation audible entre geste, décision, risque et conséquence sonore.
Le système peut préparer et automatiser, mais doit maintenir une situation performative.
```

### Risques

```text
penser que tout doit être contrôlé à la main ;
penser que temps réel = musicalement live ;
masquer le geste acoustique sous du traitement.
```

### Documents internes à relier

```text
docs/08_PERFORMANCE_SCENES_TRAJECTOIRES_OBJETS.md
docs/42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md
docs/modules/04_SCENE_PERFORMANCE_CONDUCTOR.md
```

---

## Source 5 — Pitchfork, Keep It Alive or Die: The Ongoing Evolution of Live Electronic Music

URL : https://pitchfork.com/features/article/9957-keep-it-alive-or-die-the-ongoing-evolution-of-live-electronic-music  
Type : article critique / culture live electronic.

### Ce que la source dit

Le live électronique contemporain combine souvent matériel, logiciel, improvisation, intuition humaine, préparation et performance hybride. La question n'est pas seulement vrai live / faux live, mais quelle part de la performance reste réellement agie, risquée et incarnée.

### Notions Vesperare concernées

```text
liveness ;
contrôle humain ;
préparation ;
spontanéité ;
risque ;
geste ;
performance hybride ;
IA companion future.
```

### Extraction Vesperare possible

```text
Tout ne doit pas forcément être live.
Ce qui porte l'expression doit rester à Yohan.
Ce qui coordonne, protège ou prépare peut être système.
La performance doit rester unique, risquée, modifiable.
```

### Risques

```text
fétichiser le live total ;
assumer trop de backing structure sans liveness perceptible ;
confondre spectacle technique et relation musicale.
```

---

# Décisions / pistes à intégrer plus tard

## Principe anti-surtest

```text
Ne pas réduire le projet à des tests isolés.
Concevoir par scènes fonctionnelles.
Vérifier localement les relations fragiles.
Chaque vérification doit préserver le contexte global.
```

## Vérification musicale intégrée

```text
La question n'est pas : est-ce que le module marche ?
La question est : est-ce que cette relation musicale devient jouable ?
```

## Niveau de liveness à documenter

```text
joué par Yohan ;
assisté ;
armé ;
semi-automatisé ;
automatisé de protection ;
suggéré ;
observable ;
à override ;
interdit.
```

## Questions futures possibles

```text
Quelle partie de cette relation doit rester live ?
Quelle partie peut être préparée ?
Quelle partie peut être automatisée ?
Quelle partie doit rester à Yohan ?
Quel signe musical prouve que la relation est vivante ?
```

---

# Requêtes web suivantes

```text
NIME mapping gesture musical result performance virtuosity latency
live electronics acoustic instruments real-time processing performance agency
liveness electronic music performance human machine improvisation
music interface ecological design performance cognitive load
```
