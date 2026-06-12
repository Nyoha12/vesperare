# 03_VALIDATION_TESTS_EXTENSIONS

Version : v0.3  
Statut : méthode de validation future.

## Décision méthodologique

Les prototypes et tests ne sont pas la prochaine étape immédiate. Le projet adopte une méthode de conception approfondie avant prototypage.

On ne teste pas pour découvrir le projet. On teste plus tard pour vérifier une architecture déjà pensée.

## Pourquoi

Le projet est complexe : techno personnelle, Max for Live, performance complète, naturalisation des fonctions techno, instruments live, polytexture percussive, analyse audio, traitements spectraux, contrôle live, Extensions SDK.

Un prototype trop tôt risque de produire un sous-système qui sera abandonné ou réorganisé.

## Critère d’autorisation d’un prototype

Un prototype ne sera lancé que si :

```text
1. le module concerné est décrit dans la spécification ;
2. ses entrées et sorties sont définies ;
3. ses paramètres internes sont connus ;
4. son interaction avec les autres modules est comprise ;
5. le prototype peut être réutilisé ou intégré plus tard.
```

## Tests abstraits avant prototype

Avant de programmer :

```text
schémas de flux ;
tables d’interactions ;
matrices de dépendances ;
pseudocode ;
scénarios d’usage ;
cas limites ;
analyse des conflits ;
recherches documentaires.
```

## Méthode de test future

On ne testera pas toutes les fonctions une par une.

On testera :

```text
les interactions critiques ;
les risques musicaux majeurs ;
les invariants du système ;
les comportements qui déterminent la qualité perceptive.
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
```

## Matrice de priorité des tests

```text
Incertitude basse + impact faible → ne pas tester isolément.
Incertitude basse + impact fort → tester en contexte intégré.
Incertitude forte + impact faible → repousser.
Incertitude forte + impact fort → tester en priorité.
```

## Prototypes futurs probables

À définir seulement après architecture complète.

Candidats :

```text
Prototype A — Impact-fondation naturalisé
Prototype B — Brillance rythmique naturalisée
Prototype C — Polytexture percussive compatible techno
Prototype D — Intensité sans agression / Spectral Governor
Prototype E — Entrée live + Impact Matrix
Prototype F — Performance complète minimale
```

Ces prototypes ne doivent pas être lancés maintenant.
