# 00_INDEX_METHODE_DECISIONS

Version : v3.7  
Statut : document directeur de méthode, décisions et cartographie documentaire.

## Objet

Ce document garde les décisions structurantes du projet Vesperare : méthode, terminologie, ordre de travail, statut des documents, règles de mise à jour et grandes orientations validées.

Il sert aussi à organiser le workflow documentaire : quels documents définissent l’esprit, lesquels développent les couches transversales, lesquels servent de pont vers la technique, lesquels préparent les sources / assets, et quand interrompre une branche pour réintégrer la carte globale.

---

# 1. Formulation actuelle du projet

Vesperare est un projet de recherche-création visant à concevoir un système de composition et de performance live dans Ableton Live / Max for Live, composé de plusieurs dispositifs configurables.

Le genre musical personnel visé est localement nommé **techno organique**. La techno constitue l’influence stylistique principale : corps, impact, hypnose, pression, répétition, tension et forme longue.

Le projet ne cherche pas simplement à faire de la techno avec des sons naturels. Il cherche à conserver les fonctions techno en les réincarnant dans des matières sonores réelles, organiques, acoustiques, vocales, instrumentales, hybrides ou synthétisées comme phénomènes physiques.

Sources live centrales :

```text
didgeridoo toujours live ;
guimbardes toujours live ;
gong optionnel ;
tambour optionnel ;
zéro sample initial.
```

---

# 2. Méthode générale

Décision majeure : conception approfondie avant prototypage.

Ordre général :

```text
1. Clarifier l’ambition musicale globale.
2. Définir les fonctions techno situées dans le style recherché.
3. Définir les phénomènes sonores du projet.
4. Concevoir l’architecture Max for Live.
5. Définir les modules et leurs responsabilités.
6. Auditer les interfaces entre modules.
7. Identifier les besoins de sources, instruments, samples, engines et assets.
8. Établir protocoles, inventaires, fiches de données, scènes tests et portes de décision.
9. Définir les exigences de contrôle live et de visualisation.
10. Définir les scènes comme champs ouverts orientés.
11. Vérifier quelques scènes-pivots avant d’ouvrir davantage.
12. Relier les scènes-pivots aux responsabilités de modules futurs.
13. Seulement ensuite : prototyper et tester.
```

Principe :

```text
penser avant de prototyper ;
propager les décisions stables ;
ne pas confondre idée, besoin, source, asset, module, test, prototype ou outil ;
garder les catégories comme facettes ;
mettre à jour les cartes quand une branche documentaire devient trop profonde.
```

---

# 3. Organisation documentaire actuelle

## A. Documents directeurs

```text
README.md
00_INDEX_METHODE_DECISIONS.md
```

Rôle : présenter le projet, garder les décisions structurantes, organiser la méthode, le vocabulaire et le workflow.

## B. Style et influences

```text
05_CARTOGRAPHIE_STYLE_PERSONNEL_TECHNO.md
06_CARTOGRAPHIE_INFLUENCES_STYLE_VESPERARE.md
```

Rôle : définir l’esprit musical, les fonctions retenues de la techno, puis les éléments extraits d’autres styles sans les importer comme blocs stylistiques.

## C. Documents conceptuels transversaux historiques

```text
07_PITCH_HARMONIQUES_MICROTONALITE.md
08_PERFORMANCE_SCENES_TRAJECTOIRES_OBJETS.md
10_SOUND_DESIGN_MIX_OUTILS_CONTRAINTES.md
11_AUDIT_COHERENCE_NOTATION_CATEGORIES_RESPONSABILITES.md
```

Rôle : organiser les grands nœuds qui traversent les phénomènes et la technique : pitch, partiels, objets sonores, scènes, trajectoires, contrôles contextuels, sound design, contraintes de mix/master, responsabilités et cohérence terminologique.

## D. Cadre opératoire techno organique, contrôle live et scènes ouvertes

```text
12_TECHNO_ORGANIQUE_CADRE_OPERATOIRE.md
13_CONCEPTS_OPERATOIRES_TECHNO_ORGANIQUE_DEPENDANCES.md
14_CONCEPT_CORE_TO_INTERFACE_SYSTEM_REQUIREMENTS.md
15_LIVE_CONTROL_REQUIREMENTS_MATRIX.md
16_LIVE_CONTROL_MATRIX_PERFORMABILITY_AUDIT.md
17_LIVE_CONTROL_REQUIREMENTS_MATRIX_REDUCED.md
18_LIVE_CONTROL_DECISION_QUESTIONS_BEFORE_LAYERS.md
19_LIVE_CONTROL_LAYERS_AND_PERFORMANCE_STATES.md
20_TEMPORAL_INFRASTRUCTURE_MEASURE_LOOP_REPEAT_FREEZE.md
21_TEMPORAL_INFRASTRUCTURE_DECISION_QUESTIONS.md
22_CONTEXTUAL_VISUALIZATION_REQUIREMENTS.md
23_SCENES_COMME_CHAMPS_OUVERTS_DE_PERFORMANCE.md
24_SCENES_PIVOTS_CHAMPS_OUVERTS_PREMIERE_SERIE.md
25_SCENES_PIVOTS_TO_MODULE_RESPONSIBILITIES_MAP.md
```

Rôle : formaliser le contexte pratique du projet — système de génération / traitement sonore, interface de contrôle, cadre de performance, infrastructure temporelle, visualisation, scènes ouvertes, scènes-pivots et responsabilités de modules futurs — sans encore créer de prototype.

Lecture de cette série :

```text
12: cadrage opératoire du nom local techno organique ;
13: dépendances entre concepts opératoires ;
14: exigences système / interface ;
15: matrice de contrôles live abstraits ;
16: audit de performabilité ;
17: matrice réduite ;
18: décisions avant couches ;
19: couches de performance et états ;
20: infrastructure temporelle ;
21: décisions temporelles ;
22: visualisation contextuelle ;
23: scènes comme champs ouverts de performance ;
24: première série de scènes-pivots ouvertes ;
25: liaison scènes-pivots / responsabilités de modules futurs.
```

Décision : la branche est intégrée ; la suite doit auditer la congruence avec les spécifications modules existantes avant toute nouvelle spécification.

## E. Documents phénoménologiques et techniques de transfert

```text
01_CAHIER_DES_PHENOMENES_SONORES.md
01A_SYNCHRONISATION_PHENOMENES_MODULES.md
02_SPECIFICATION_MAX_FOR_LIVE.md
02A_SYNCHRONISATION_ARCHITECTURE_MODULES.md
09_FICHES_MODELES_OBJETS_TRAJECTOIRES_SCENES.md
```

Rôle : convertir les décisions stylistiques et transversales en phénomènes sonores manipulables, puis en architecture Max for Live / Ableton Live.

Les fichiers `01A` et `02A` sont des addenda de synchronisation prudente : ils mettent à jour la lecture de `01` et `02` sans remplacer leurs contenus détaillés.

## F. Spécifications détaillées et audits de modules

```text
/docs/modules/
```

Rôle : développer progressivement les modules décrits dans `02_SPECIFICATION_MAX_FOR_LIVE`, auditer leurs interfaces avant prototypage, puis préparer les données nécessaires aux instruments, sources, samples, engines et assets.

Dossier concerné notamment par :

```text
Object Registry ;
Trajectory Engine ;
Scene / Performance Conductor ;
Contextual Control Router ;
Conflict / Protection Manager ;
Pitch / Harmonic Field Manager ;
Timbre & Material Mapper ;
Sound Engines / Instruments ;
Source Needs / Asset Database Protocol.
```

## G. Préparation des sources, samples et assets

```text
/docs/assets/00_ASSETS_INDEX.md
/docs/assets/
```

`00_ASSETS_INDEX.md` est la carte locale du dossier `docs/assets`.

Le dossier `docs/assets` ne contient pas encore d’assets audio finaux. Il contient :

```text
besoins ;
hypothèses ;
protocoles ;
source_needs ;
schémas de material_asset ;
cas de scène ;
tests fonctionnels ;
portes de décision ;
croquis de paramètres ;
audits de cohérence.
```

Règles de lecture :

```text
source_need ≠ material_asset ;
material_asset_schema ≠ asset réel ;
scene_use_case ≠ prototype ;
function_test ≠ module ;
decision_gate ≠ décision déjà prise ;
engine_sketch ≠ implémentation ;
loop / repeat / freeze ≠ asset par défaut.
```

Sous-dossiers :

```text
/docs/assets/source_needs/
/docs/assets/material_assets/
/docs/assets/scene_use_cases/
/docs/assets/function_tests/
/docs/assets/decision_gates/
/docs/assets/engine_sketches/
```

## H. Validation, outils et mémoire

```text
03_VALIDATION_TESTS_EXTENSIONS.md
04_RESSOURCES_ET_BOITE_A_OUTILS.md
/checkpoints/checkpoint_maitre_v0_1.md
```

Rôle : préparer les futures validations, maintenir la boîte à outils, garder des états de synthèse du projet.

---

# 4. Workflow documentaire actuel

Le workflow ne doit pas être une simple progression linéaire. Il doit fonctionner par propagation contrôlée.

```text
1. Décision esthétique ou conceptuelle
   ↓
2. Inscription dans le document source approprié
   ↓
3. Vérification de congruence avec les documents directeurs
   ↓
4. Propagation vers le cahier des phénomènes si la décision affecte les sons
   ↓
5. Propagation vers la spécification technique si la décision affecte l’architecture
   ↓
6. Vérification par fiches modèles si l’abstraction devient trop générale
   ↓
7. Développement d’une spécification détaillée de module si le module devient prioritaire
   ↓
8. Audit d’interface si plusieurs modules commencent à dépendre fortement l’un de l’autre
   ↓
9. Création de protocoles de données si la décision affecte sources / instruments / assets / engines
   ↓
10. Création de matrices, source_needs, schemas, scene_use_cases, function_tests, decision_gates ou engine_sketches selon le niveau de maturité
   ↓
11. Création de matrices de contrôle ou visualisation si le système de performance en a besoin
   ↓
12. Clarification des scènes ouvertes si les contrôles doivent être replacés dans la forme
   ↓
13. Création de quelques scènes-pivots pour vérifier les relations
   ↓
14. Liaison scènes-pivots / modules futurs
   ↓
15. Pause d’intégration si une branche devient trop profonde ou si les index deviennent obsolètes
   ↓
16. Propagation vers validation/tests seulement si le système futur est assez clair
```

Principe :

```text
ne pas transformer immédiatement chaque idée en module ;
ne pas transformer immédiatement chaque phénomène en prototype ;
ne pas multiplier les documents sans carte ;
propager seulement ce qui est assez stable ;
utiliser les fiches modèles et tests fonctionnels pour vérifier les abstractions avant prototypage ;
détailler les modules seulement quand leur rôle dans l’architecture est clair ;
ne jamais transformer les catégories en cases exclusives ;
auditer les interfaces avant divergence ;
mettre à jour les documents anciens quand les décisions récentes déplacent le workflow.
```

---

# 5. Règle anti-prototype prématuré

Aucun prototype ne doit être lancé tant que son rôle dans l’architecture finale n’est pas clair.

Un prototype futur devra être :

```text
lié à un module final probable ;
réutilisable ou transformable ;
documenté ;
conçu pour répondre à une question précise ;
compatible avec l’architecture globale ;
compatible avec les besoins de sources / assets quand ils sont impliqués.
```

Les inventaires, protocoles, matrices, `source_needs`, schémas d’assets, cas de scène, tests fonctionnels, portes de décision, croquis d’engine, matrices de contrôle, exigences de visualisation et fiches de champs de scène ne sont pas des prototypes. Ce sont des validations de données, de structure et de fonction.

---

# 6. Règle anti-classement limitant

Les catégories du projet sont des outils de lecture, pas des prisons conceptuelles.

Un objet, une trajectoire, une scène, un instrument candidat, une source ou un contrôle peut appartenir à plusieurs facettes à la fois.

Exemples :

```text
Didgeridoo = grave + formants + souffle + live + corps ;
Gong = impact + halo + partiels + beauté autonome + résolution ;
Sub = corps + pitch_center + pression + résolution ;
Pré-drop = rythmique + corporel + spectral + harmonique ;
Halo = espace + queue + harmonie + risque d’ambientisation ;
Freeze = temps + matière + risque anti-ambient + sortie obligatoire ;
Loop live = trace + double + risque de remplacement + fonction de scène ;
Scène ouverte = fonction centrale + bifurcations + protections + sorties.
```

---

# 7. Décision actuelle

La branche `12–25` a stabilisé une couche de décisions sur :

```text
techno organique comme cadre opératoire ;
concepts opératoires ;
exigences système/interface ;
contrôles live ;
couches de performance ;
infrastructure temporelle ;
visualisation contextuelle ;
scènes comme champs ouverts ;
trois scènes-pivots ouvertes ;
liaison scènes-pivots / modules futurs.
```

Décision : ne pas créer de nouveau module, patch ou prototype.

Prochaine étape recommandée :

```text
créer un audit de congruence entre les scènes-pivots et les spécifications modules existantes,
avant toute nouvelle spécification ou prototype.
```
