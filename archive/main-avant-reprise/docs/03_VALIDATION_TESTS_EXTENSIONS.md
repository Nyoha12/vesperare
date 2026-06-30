# 03_VALIDATION_TESTS_EXTENSIONS

Version : v0.6  
Statut : méthode de validation future, synchronisée avec les documents 01–02, 09–16 et les modules 01–16.

## Décision méthodologique

Les prototypes et tests techniques ne sont pas la prochaine étape immédiate. Le projet adopte une méthode de conception approfondie avant prototypage.

On ne teste pas pour découvrir le projet. On teste plus tard pour vérifier une architecture déjà pensée.

Les validations doivent donc d’abord être :

```text
conceptuelles ;
structurelles ;
performatives ;
stylistiques ;
inter-modulaires ;
documentaires ;
de préparation de données.
```

Elles ne deviennent sonores ou techniques qu’après stabilisation suffisante des modules, des rôles, des fonctions, des besoins de sources et des garde-fous.

---

# 1. Pourquoi

Le projet est complexe : techno personnelle, Max for Live, performance complète, naturalisation des fonctions techno, instruments live, polytexture percussive, microtonalité, objets sonores, rôles, trajectoires, scènes, analyse audio, traitements spectraux, contrôle live, sound design écologique, sources acoustiques, samples ciblés, base d’assets, mix/master intégré futur, Ableton Extensions SDK.

Un prototype trop tôt risque de produire un sous-système qui sera abandonné ou réorganisé.

Le risque actuel n’est pas le manque de tests, mais le test prématuré d’un objet mal défini.

---

# 2. Critère d’autorisation d’un prototype

Un prototype ne sera lancé que si :

```text
1. le module concerné est décrit dans la spécification ;
2. ses entrées et sorties sont définies ;
3. ses données internes sont suffisamment connues ;
4. son interaction avec les autres modules est comprise ;
5. son rôle musical est clair ;
6. ses objets sonores ou rôles concernés sont identifiés ;
7. ses trajectoires ou scènes d’usage sont identifiées ;
8. ses garde-fous sont explicites ;
9. le prototype peut être réutilisé, intégré ou transformé plus tard ;
10. le prototype ne force pas une catégorie ou un mode fermé ;
11. le prototype peut informer une décision d’architecture ;
12. les besoins de sources / assets impliqués sont déclarés ou volontairement laissés ouverts.
```

---

# 3. Tests abstraits avant prototype

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
recherches documentaires ciblées ;
audits de cohérence stylistique ;
audits d’interface entre modules ;
audits de notation / catégories / responsabilités ;
inventaires d’instruments / sources candidates ;
matrices fonctions → sources → assets ;
fiches source_need ;
fiches material_asset ;
fiches material_pool ;
politiques de sélection ;
évaluations de qualité / risque / sélection.
```

Ces travaux ne sont pas des prototypes sonores. Ils sont des validations structurelles et documentaires.

---

# 4. Méthode de validation future

On ne testera pas toutes les fonctions une par une.

On testera :

```text
les interactions critiques ;
les risques musicaux majeurs ;
les invariants du système ;
les comportements qui déterminent la qualité perceptive ;
la capacité des modules à rester cohérents avec l’esprit Vesperare ;
la capacité de l’interface à présenter les bons contrôles au bon moment ;
la capacité à préserver le corps, la lisibilité, la tension et la liberté performative ;
la capacité à intégrer sound design, live input, samples ciblés, engines et mix/master sans rigidifier l’architecture.
```

---

# 5. Niveaux de validation

## 1. Validation conceptuelle

Vérifie que la logique musicale est claire avant toute implémentation.

Questions :

```text
la fonction est-elle clairement définie ?
le phénomène est-il distinct du support sonore ?
les objets concernés sont-ils identifiés ?
les rôles sont-ils explicites ?
les trajectoires possibles sont-elles cohérentes ?
les scènes ou états sont-ils compris ?
les risques sont-ils connus ?
la logique évite-t-elle les catégories fermées ?
les instruments / sources candidates sont-ils reliés à des affordances, pas seulement à des goûts ?
```

## 2. Validation structurelle

Vérifie que le futur système peut représenter la décision.

Questions :

```text
quelle donnée doit exister ?
quel module reçoit quoi ?
quel module produit quoi ?
quelle variable représente l’état ?
quels conflits peuvent apparaître ?
quels garde-fous sont nécessaires ?
quelles informations doivent rester déclarées plutôt qu’analysées ?
quels éléments doivent rester optionnels, contextuels ou profonds ?
quelle différence entre instrument_source_candidate, source_need, material_asset, material_pool et selection_policy ?
```

## 3. Validation performative

Vérifie que le système reste jouable.

Questions :

```text
quels contrôles sont permanents ?
quels contrôles sont contextuels ?
quels contrôles sont profonds ?
quels contrôles d’urgence sont nécessaires ?
le performeur peut-il agir sans être noyé ?
le système garde-t-il un noyau stable ?
les contrôles changent-ils trop souvent ?
les contrôles techniques sont-ils traduits en fonctions musicales ?
les choix de source / sample / engine restent-ils accessibles uniquement quand ils ont une valeur performative ?
```

## 4. Validation stylistique

Vérifie que le système reste Vesperare.

Questions :

```text
le corps techno reste-t-il perceptible ?
la naturalisation enrichit-elle la fonction ?
l’influence n’est-elle pas importée comme style plaqué ?
la polytexture reste-t-elle lisible ?
la beauté autonome reste-t-elle reliée à la forme ?
le sound design reste-t-il intégré à des objets et relations ?
le mix/master futur ne neutralise-t-il pas la force musicale ?
les samples ou instruments candidats ne deviennent-ils pas décoratifs ?
```

## 5. Validation de préparation de données

Vérifie que la future base d’assets n’est ni arbitraire ni décorative.

Questions :

```text
chaque instrument candidat a-t-il des affordances décrites ?
chaque source_need vient-il d’une fonction, d’un phénomène, d’une lacune ou d’une affordance ?
chaque material_asset répond-il à un source_need ?
chaque material_pool est-il lié à un rôle ou une fonction ?
chaque selection_policy indique-t-elle clairement manuel / assisté / automatique contraint / interdit ?
chaque quality_evaluation contient-elle rôle, fonction, risque, qualité acoustique, CPU / latence et traduction mix ?
les assets sans rôle sont-ils différés ou classés référence ?
```

## 6. Validation sonore future

Seulement plus tard, lorsque les modules seront suffisamment définis.

Questions :

```text
le phénomène est-il perceptible ?
la fonction est-elle maintenue ?
la source reste-t-elle reconnaissable quand c’est nécessaire ?
la transformation abstrait-elle la source sans perdre la fonction ?
le son reste-t-il compatible avec le style ?
le système garde-t-il le corps, la lisibilité et l’intensité ?
la diffusion reste-t-elle viable selon les contextes ?
```

---

# 6. Invariants musicaux actuels

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
16. Les catégories doivent rester des facettes activables, jamais des cases exclusives.
17. Le sound design doit être une écologie d’objets et de relations, pas une banque décorative.
18. Le mix/master futur doit stabiliser et traduire sans écraser l’identité sonore.
19. Les outils doivent servir les modules, pas guider l’esthétique trop tôt.
20. Les instruments live doivent garder une priorité humaine.
21. Les samples sont autorisés s’ils sont justifiés par fonction, qualité, stabilité, source ou performance.
22. Une banque ciblée peut être grande si les besoins réels l’exigent, mais jamais décorative.
23. La génération live ne doit pas être préférée par idéologie si un sample réel est plus beau, plus stable ou plus jouable.
24. Les instruments / sources candidates doivent être évalués par affordances, fonctions possibles et risques.
```

---

# 7. Matrice de priorité des tests

```text
Incertitude basse + impact faible → ne pas tester isolément.
Incertitude basse + impact fort → tester en contexte intégré.
Incertitude forte + impact faible → repousser.
Incertitude forte + impact fort → tester en priorité.
```

À cette matrice s’ajoutent trois critères :

```text
réutilisabilité : le test informe-t-il un module final probable ?
non-rigidification : le test évite-t-il de figer une catégorie ou un rôle ?
intégration : le test vérifie-t-il une relation entre modules ?
```

Et pour les sources / assets :

```text
nécessité : l’asset répond-il à un besoin ?
qualité : la source réelle apporte-t-elle quelque chose que le moteur ne peut pas donner ?
protection : le matériau peut-il être contrôlé, limité, remplacé ou différé ?
```

---

# 8. Validations conceptuelles par module

## A. Object Registry

À valider :

```text
un objet peut activer plusieurs profils ;
un objet peut changer de rôle selon scène ou trajectoire ;
les données déclarées sont séparées des données analysées ;
les données contextuelles et dynamiques sont représentables ;
les protections sont attachées aux objets sans les figer ;
les objets live ne sont pas réduits à des catégories fixes ;
les assets validés peuvent devenir variantes ou sources d’un objet sans transformer l’objet en banque.
```

Critère d’échec :

```text
l’objet devient une entrée de banque de sons ou une catégorie fixe.
```

## B. Trajectory Engine

À valider :

```text
une trajectoire peut être décomposée en opérations ;
une trajectoire peut être globale, locale, dimensionnelle ou transférée ;
une trajectoire peut coexister avec d’autres ;
une trajectoire peut être retardée, annulée ou bifurquée ;
une trajectoire ne devient pas un preset ;
les phases restent jouables et non rigides ;
un changement de source / asset ne remplace pas la logique de trajectoire.
```

## C. Source Needs / Asset Database Protocol

Document source : `docs/modules/16_SOURCE_NEEDS_ASSET_DATABASE_PROTOCOL.md`.

À valider :

```text
les instruments / sources candidates précèdent les source_needs quand nécessaire ;
les affordances sont décrites avant l’asset ;
chaque source_need peut être relié à fonction / phénomène / rôle / scène / trajectoire ;
chaque material_asset répond à au moins un source_need ;
les pools sont par rôle ou fonction, pas par goût ;
les modes de sélection sont explicites ;
la qualité réelle peut justifier le sample ;
la génération live n’est pas forcée quand elle est moins belle ou moins stable ;
les suggestions live restent un autre sujet d’interface future.
```

Critère de réussite :

```text
on peut expliquer pourquoi un instrument, une source ou un sample doit être préparé, différé, refusé ou gardé comme référence.
```

Critère d’échec :

```text
la base devient une bibliothèque de fichiers avant d’être une base de besoins, affordances, rôles et risques.
```

---

# 9. Prochaine validation à produire

Avant Output / Mix, produire les premières fiches :

```text
INSTRUMENT_SOURCE_CANDIDATES_INITIAL ;
SOURCE_NEED_GONG_RESOLUTION ;
SOURCE_NEED_VOICE_SIGNAL ;
SOURCE_NEED_DIDGERIDOO_LIVE ;
SOURCE_NEED_SUB_FOUNDATION ;
SOURCE_NEED_WATER_MICROTEXTURE ;
SOURCE_NEED_FIELD_RECORDING_BEAUTY ;
SOURCE_NEED_POLYTEXTURE_MICRO_IMPACTS.
```

Ces fiches doivent rester des validations de données, pas des prototypes audio.
