# 03_VALIDATION_TESTS_EXTENSIONS

Version : v0.4  
Statut : méthode de validation future, synchronisée avec les documents 01–02 v0.3/v0.2.

## Décision méthodologique

Les prototypes et tests ne sont pas la prochaine étape immédiate. Le projet adopte une méthode de conception approfondie avant prototypage.

On ne teste pas pour découvrir le projet. On teste plus tard pour vérifier une architecture déjà pensée.

Les validations doivent donc d’abord être conceptuelles, structurelles et musicales avant de devenir techniques.

## Pourquoi

Le projet est complexe : techno personnelle, Max for Live, performance complète, naturalisation des fonctions techno, instruments live, polytexture percussive, microtonalité, objets sonores, rôles, trajectoires, scènes, analyse audio, traitements spectraux, contrôle live, Ableton Extensions SDK.

Un prototype trop tôt risque de produire un sous-système qui sera abandonné ou réorganisé.

Le risque actuel n’est pas le manque de tests, mais le test prématuré d’un objet mal défini.

## Critère d’autorisation d’un prototype

Un prototype ne sera lancé que si :

```text
1. le module concerné est décrit dans la spécification ;
2. ses entrées et sorties sont définies ;
3. ses paramètres internes sont connus ;
4. son interaction avec les autres modules est comprise ;
5. son rôle musical est clair ;
6. ses objets sonores ou rôles concernés sont identifiés ;
7. ses trajectoires ou scènes d’usage sont identifiées ;
8. ses garde-fous sont explicites ;
9. le prototype peut être réutilisé, intégré ou transformé plus tard.
```

## Tests abstraits avant prototype

Avant de programmer :

```text
schémas de flux ;
tables d’interactions ;
matrices objets × rôles × trajectoires ;
matrices de dimensions affectées ;
matrices de dépendances ;
pseudocode ;
scénarios d’usage ;
cas limites ;
analyse des conflits ;
recherches documentaires ;
audits de cohérence stylistique.
```

## Méthode de validation future

On ne testera pas toutes les fonctions une par une.

On testera :

```text
les interactions critiques ;
les risques musicaux majeurs ;
les invariants du système ;
les comportements qui déterminent la qualité perceptive ;
la capacité des modules à rester cohérents avec l’esprit Vesperare ;
la capacité de l’interface à présenter les bons contrôles au bon moment.
```

## Niveaux de validation

### 1. Validation conceptuelle

Vérifie que la logique musicale est claire avant toute implémentation.

Questions :

```text
la fonction est-elle clairement définie ?
le phénomène est-il distinct du support sonore ?
les objets concernés sont-ils identifiés ?
les rôles sont-ils explicites ?
les trajectoires possibles sont-elles cohérentes ?
les risques sont-ils connus ?
```

### 2. Validation structurelle

Vérifie que le futur système peut représenter la décision.

Questions :

```text
quelle donnée doit exister ?
quel module reçoit quoi ?
quel module produit quoi ?
quelle variable représente l’état ?
quels conflits peuvent apparaître ?
quels garde-fous sont nécessaires ?
```

### 3. Validation performative

Vérifie que le système reste jouable.

Questions :

```text
quels contrôles sont permanents ?
quels contrôles sont contextuels ?
quels contrôles sont profonds ?
quels contrôles d’urgence sont nécessaires ?
le performeur peut-il agir sans être noyé ?
```

### 4. Validation sonore future

Seulement plus tard, lorsque les modules seront suffisamment définis.

Questions :

```text
le phénomène est-il perceptible ?
la fonction est-elle maintenue ?
la naturalisation enrichit-elle la fonction ?
le son reste-t-il compatible avec le style ?
le système garde-t-il le corps, la lisibilité et l’intensité ?
```

## Invariants musicaux actuels

```text
1. Le corps techno doit rester perceptible même si les sons sont naturalisés.
2. Le sub / grave doit rester contrôlé.
3. L’intensité doit pouvoir être forte sans agression inutile.
4. La densité doit rester lisible.
5. Le halo ne doit pas masquer durablement l’impact principal.
6. Les aigus ne doivent pas devenir un tapis fatigant.
7. Le médium ne doit pas saturer sans compensation.
8. Les sons live ne doivent pas être classés rigidement.
9. Les macros doivent piloter des comportements coordonnés.
10. La complexité doit produire une perception organisée.
11. Les objets sonores doivent pouvoir changer de rôle sans perdre leur nature.
12. Les trajectoires doivent rester distribuées, pas appliquées globalement comme des presets.
13. L’autonomie doit rester située dans une scène, un état, une trajectoire et un esprit stylistique.
14. La microtonalité doit enrichir matérialité, tension ou forme, pas devenir complexité gratuite.
15. Les influences stylistiques doivent rester déconstruites et intégrées, jamais plaquées.
```

## Matrice de priorité des tests

```text
Incertitude basse + impact faible → ne pas tester isolément.
Incertitude basse + impact fort → tester en contexte intégré.
Incertitude forte + impact faible → repousser.
Incertitude forte + impact fort → tester en priorité.
```

À cette matrice s’ajoute maintenant un critère de réutilisabilité :

```text
si le test ne peut pas informer un module final probable, il doit être repoussé.
```

## Objets de validation prioritaires, avant prototype

### A. Modèle de données

À valider abstraitement :

```text
objet sonore ;
rôle musical ;
phénomène ;
trajectoire ;
scène ;
état ;
dimension ;
protection ;
contrôle contextuel.
```

### B. Relations entre modules

À valider par schémas et pseudocode :

```text
Scene / Performance Conductor ↔ Object Registry ;
Object Registry ↔ Trajectory Engine ;
Trajectory Engine ↔ Function / Phenomenon Engines ;
Pitch / Harmonic Field Manager ↔ objets / halos / sub ;
Contextual Control Router ↔ scène / trajectoire / objet ;
Conflict / Protection Manager ↔ governors / controls.
```

### C. Matrices musicales

À construire avant prototypes :

```text
objets × rôles ;
objets × trajectoires ;
rôles × dimensions ;
trajectoires × phases ;
phénomènes × variables ;
risques × garde-fous ;
contrôles × contexte.
```

## Prototypes futurs probables

À définir seulement après architecture suffisamment complète.

Candidats mis à jour :

```text
Prototype A — Impact-fondation naturalisé
Prototype B — Brillance rythmique naturalisée
Prototype C — Polytexture percussive compatible techno
Prototype D — Intensité sans agression / Spectral & Comfort Governor
Prototype E — Entrée live + Live Object Interpreter + Impact Matrix
Prototype F — Object Registry minimal
Prototype G — Trajectory Engine minimal sur objets simples
Prototype H — Pitch / Harmonic Field Manager minimal
Prototype I — Contextual Control Router minimal
Prototype J — Performance complète minimale avec scènes, objets et trajectoires
```

Ces prototypes ne doivent pas être lancés maintenant.

## Conditions pour un premier prototype acceptable

Un premier prototype acceptable devra être :

```text
limité ;
réutilisable ;
lié à un module final probable ;
lié à un phénomène précis ;
lié à des objets sonores identifiés ;
lié à au moins une trajectoire ou scène ;
documenté ;
non jetable ;
capable d’informer la suite de l’architecture.
```

## Prochaine tâche pour ce document

Après refonte plus détaillée de `02_SPECIFICATION_MAX_FOR_LIVE`, définir pour chaque module :

```text
validation conceptuelle ;
validation structurelle ;
validation performative ;
prototype éventuel ;
critère de réussite ;
critère d’échec ;
risque de test prématuré.
```
