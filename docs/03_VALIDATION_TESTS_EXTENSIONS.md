# 03_VALIDATION_TESTS_EXTENSIONS

Version : v0.5  
Statut : méthode de validation future, synchronisée avec les documents 01–02, 09–10 et les modules 01–06.

## Décision méthodologique

Les prototypes et tests techniques ne sont pas la prochaine étape immédiate. Le projet adopte une méthode de conception approfondie avant prototypage.

On ne teste pas pour découvrir le projet. On teste plus tard pour vérifier une architecture déjà pensée.

Les validations doivent donc d’abord être :

```text
conceptuelles ;
structurelles ;
performatives ;
stylistiques ;
inter-modulaires.
```

Elles ne deviennent sonores ou techniques qu’après stabilisation suffisante des modules.

## Pourquoi

Le projet est complexe : techno personnelle, Max for Live, performance complète, naturalisation des fonctions techno, instruments live, polytexture percussive, microtonalité, objets sonores, rôles, trajectoires, scènes, analyse audio, traitements spectraux, contrôle live, sound design écologique, mix/master intégré futur, Ableton Extensions SDK.

Un prototype trop tôt risque de produire un sous-système qui sera abandonné ou réorganisé.

Le risque actuel n’est pas le manque de tests, mais le test prématuré d’un objet mal défini.

---

# 1. Critère d’autorisation d’un prototype

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
11. le prototype peut informer une décision d’architecture.
```

---

# 2. Tests abstraits avant prototype

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
audits de notation / catégories / responsabilités.
```

---

# 3. Méthode de validation future

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
la capacité à intégrer sound design, live input et mix/master sans rigidifier l’architecture.
```

---

# 4. Niveaux de validation

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
```

## 5. Validation sonore future

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

# 5. Invariants musicaux actuels

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
```

---

# 6. Matrice de priorité des tests

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

---

# 7. Validations conceptuelles par module

## A. Object Registry

Document source : `docs/modules/01_OBJECT_REGISTRY.md`.

### À valider

```text
un objet peut activer plusieurs profils ;
un objet peut changer de rôle selon scène ou trajectoire ;
les données déclarées sont séparées des données analysées ;
les données contextuelles et dynamiques sont représentables ;
les protections sont attachées aux objets sans les figer ;
les objets live ne sont pas réduits à des catégories fixes.
```

### Critère de réussite

```text
un même objet peut être décrit comme source, matière, rôle, profil, risque, relation et potentiel de trajectoire.
```

### Critère d’échec

```text
l’objet devient une entrée de banque de sons ou une catégorie fixe.
```

### Cas de validation

```text
Gong : impact + halo + partiels + résolution ;
Voix : signal + matière + cri + halo + sémantique possible ;
Sub : corps + pression + pitch_center + trace ;
Didgeridoo : live + souffle + formants + grave + agency humaine ;
Polytexture : objet composite + densité + accents + interlocking.
```

## B. Trajectory Engine

Document source : `docs/modules/02_TRAJECTORY_ENGINE.md`.

### À valider

```text
une trajectoire peut être décomposée en opérations ;
une trajectoire peut être globale, locale, dimensionnelle ou transférée ;
une trajectoire peut coexister avec d’autres ;
une trajectoire peut être retardée, annulée ou bifurquée ;
une trajectoire ne devient pas un preset ;
les phases restent jouables et non rigides.
```

### Critère de réussite

```text
pré-drop, suspension, torsion ou densification peuvent être représentés comme combinaisons d’opérations, objets, rôles, phases et dimensions.
```

### Critère d’échec

```text
trajectory_type devient un mode fermé ou une automation linéaire.
```

### Cas de validation

```text
pré-drop naturalisé ;
suspension / expansion ;
torsion résonante avec didgeridoo ;
densification polytexturale ;
retour au corps après beauté autonome.
```

## C. Registry ↔ Trajectory Interface

Document source : `docs/modules/03_REGISTRY_TRAJECTORY_INTERFACE.md`.

### À valider

```text
le Trajectory Engine demande des rôles et dimensions, pas une catégorie d’objet ;
l’Object Registry répond avec objets candidats, rôles possibles, profils activables, risques et protections ;
un objet peut être compatible avec une trajectoire mais pas avec le rôle demandé ;
un objet peut être réassigné plutôt qu’exclu ;
les données déclarées priment sur les suggestions d’analyse.
```

### Critère de réussite

```text
une trajectoire peut sélectionner des objets selon fonction, contexte, risque et garde-fous, sans les enfermer.
```

### Critère d’échec

```text
la trajectoire demande “un objet de type X” et le Registry répond par une classe unique.
```

## D. Scene / Performance Conductor

Document source : `docs/modules/04_SCENE_PERFORMANCE_CONDUCTOR.md`.

### À valider

```text
le Conductor distingue état, scène, trajectoire et événement ;
une scène fonctionne par tags et facettes activables ;
le Conductor peut autoriser, préparer, armer, retarder, interdire, protéger ;
le Conductor contrôle les niveaux d’autonomie ;
le Conductor ne compose pas à la place du performeur ;
les scènes ne deviennent pas des modes fermés.
```

### Critère de réussite

```text
une scène peut contenir plusieurs possibilités sans les déclencher automatiquement.
```

### Critère d’échec

```text
scene_type devient un mode unique ou le Conductor décide seul de la forme.
```

### Cas de validation

```text
Suspension avant résolution ;
Corps plein / densification ;
Beauté autonome exposée ;
Torsion résonante avec didgeridoo.
```

## E. Contextual Control Router

Document source : `docs/modules/05_CONTEXTUAL_CONTROL_ROUTER.md`.

### À valider

```text
un contrôle n’est pas un paramètre ;
un contrôle peut agir sur plusieurs modules ;
les contrôles permanents restent stables mais contextuels ;
les contrôles profonds restent cachés sauf nécessité ;
les contrôles d’urgence sont toujours accessibles ;
le Router évite la surcharge ;
les méthodes techniques sont traduites en fonctions musicales.
```

### Critère de réussite

```text
le Router montre peu de contrôles, mais les bons, au bon moment.
```

### Critère d’échec

```text
l’interface expose tous les paramètres disponibles ou masque les urgences.
```

## F. Conductor ↔ Router Interface

Document source : `docs/modules/06_CONDUCTOR_ROUTER_INTERFACE.md`.

### À valider

```text
ce que le Conductor autorise ne devient pas automatiquement visible ;
ce que le Conductor protège promeut des contrôles de protection ;
ce que le Conductor interdit est masqué ou verrouillé ;
les dangers actifs promeuvent des contrôles d’urgence ;
le Router ne remplace pas le Conductor ;
le Conductor ne définit pas les knobs finaux.
```

### Critère de réussite

```text
possibilité autorisée ≠ contrôle visible.
```

### Critère d’échec

```text
une scène active affiche tous les contrôles possibles ou masque un contrôle d’urgence.
```

## G. Contraintes Sound Design / Mix / Outils

Document source : `docs/10_SOUND_DESIGN_MIX_OUTILS_CONTRAINTES.md`.

### À valider

```text
le sound design reste une écologie d’objets et de relations ;
le corpus minimal n’est construit que si nécessaire ;
les sources réelles, samples, live, synthèse et hybridation restent possibles ;
la reconnaissance de source est traitée au cas par cas ;
les méthodes techniques peuvent rester profondes ;
le mix/master futur est intégré mais non prématurément détaillé ;
les recherches d’outils sont déclenchées au bon seuil.
```

### Critère de réussite

```text
les contraintes sound design / mix / outils influencent l’architecture sans la détourner.
```

### Critère d’échec

```text
le projet devient une recherche d’outils, une banque de sons ou un mastering automatique ajouté à la fin.
```

---

# 8. Validations par scénario intégré

## Scénario 1 — Suspension avant résolution

À vérifier :

```text
le Conductor autorise pré-drop sans le déclencher ;
le Router affiche Retarder / Résoudre / Annuler ;
Object Registry garde sub, gong, voix, halo comme objets multi-rôles ;
Trajectory Engine maintient armement, seuil, résolution, bifurcation ;
les urgences Stabiliser sub / Réduire halo / Protéger voix restent accessibles.
```

Échec si :

```text
le drop devient automatique ;
le halo dissout le corps ;
les contrôles affichés sont trop nombreux ;
la résolution ne peut pas être retardée.
```

## Scénario 2 — Corps plein / densification

À vérifier :

```text
la densification reste lisible ;
le sub et l’impact restent protégés ;
la polytexture garde une hiérarchie d’accents ;
le Router promeut Lisibilité / Réduire densité / Préserver impact si besoin ;
la scène ne bascule pas en halo ou beauté autonome sans préparation.
```

Échec si :

```text
la polytexture devient démonstrative ;
le mid_load masque tout ;
l’interface montre trop de détails rythmiques ;
le cadre techno se dissout.
```

## Scénario 3 — Beauté autonome exposée

À vérifier :

```text
l’objet central reste protégé ;
les traitements profonds restent discrets ;
la sortie formelle est disponible sans être imposée ;
le retour au corps peut être préparé ;
le système ne devient pas trop bavard.
```

Échec si :

```text
la beauté devient parenthèse décorative ;
le système ajoute trop de couches ;
le retour au corps est brutal ou impossible ;
la scène se transforme en ambientisation.
```

## Scénario 4 — Torsion résonante avec didgeridoo

À vérifier :

```text
le didgeridoo conserve une priorité humaine ;
l’analyse propose sans imposer ;
les formants peuvent influencer la trajectoire ;
le grave reste contrôlé ;
les conflits avec sub et voix sont visibles ;
les contrôles techniques restent profonds sauf urgence.
```

Échec si :

```text
le didgeridoo devient une basse automatique ;
le système écrase l’agency live ;
le bas-médium devient boueux ;
la torsion devient effet acid plaqué.
```

---

# 9. Matrices à construire avant prototype

```text
objets × rôles ;
objets × trajectoires ;
rôles × dimensions ;
trajectoires × phases ;
scènes × trajectoires autorisées ;
scènes × événements armés ;
contrôles × contexte ;
contrôles × urgence ;
risques × garde-fous ;
modules × entrées / sorties ;
modules × responsabilités ;
catégories × facettes activables.
```

---

# 10. Prototypes futurs probables

À définir seulement après architecture suffisamment complète.

Candidats mis à jour :

```text
Prototype A — Object Registry minimal multi-profils
Prototype B — Trajectory Engine minimal sur pré-drop / suspension
Prototype C — Conductor minimal sur 3 scènes
Prototype D — Contextual Control Router minimal sans interface finale
Prototype E — Interface Conductor ↔ Router en simulation textuelle
Prototype F — Pitch / Harmonic Field Manager minimal
Prototype G — Live Object Interpreter minimal avec didgeridoo
Prototype H — Spectral & Comfort Governor minimal
Prototype I — Timbre & Material Mapper minimal
Prototype J — Performance complète minimale avec scènes, objets, trajectoires, router et protections
```

Ces prototypes ne doivent pas être lancés maintenant.

---

# 11. Conditions pour un premier prototype acceptable

Un premier prototype acceptable devra être :

```text
limité ;
réutilisable ;
lié à un module final probable ;
lié à un phénomène précis ;
lié à des objets sonores identifiés ;
lié à au moins une trajectoire ou scène ;
lié à un audit ou une validation précise ;
documenté ;
non jetable ;
capable d’informer la suite de l’architecture.
```

Il devra aussi pouvoir dire ce qu’il ne teste pas.

---

# 12. Prochaine tâche pour ce document

Après ce cycle, la prochaine tâche n’est pas encore de prototyper.

Ordre recommandé :

```text
1. Audit global de cohérence notation / catégories / responsabilités.
2. Vérifier si 01 et 02 doivent être synchronisés avec les modules détaillés.
3. Décider du prochain module : Pitch / Harmonic Field Manager, Conflict / Protection Manager, Timbre & Material Mapper ou Output / Mix Layer.
4. Lancer une recherche d’outils seulement si le prochain module l’exige.
```
