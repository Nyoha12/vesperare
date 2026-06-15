# 00_INDEX_METHODE_DECISIONS

Version : v4.5  
Statut : document directeur de méthode, décisions, statuts et cartographie documentaire.

## Objet

Ce document garde les décisions structurantes du projet Vesperare : méthode, terminologie, ordre de travail, statut des documents, règles de mise à jour et grandes orientations validées.

Il sert aussi à organiser le workflow documentaire : quels documents définissent l’esprit, lesquels développent les couches transversales, lesquels servent de pont vers la technique, lesquels préparent les sources / assets, lesquels sont seulement des supports pratiques, et quand interrompre une branche pour réintégrer la carte globale.

Le document de recentrage stratégique actuel est :

```text
40_STRATEGIE_SYSTEME_CONTROLE_LIMITES_HARMONISATION.md
```

Documents de consolidation associés :

```text
41_CORPS_COMME_FONCTION_COMPOSEE_ET_SITUEE.md
42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md
43_HARMONISATION_CONTROLES_15_22.md
44_AUDIT_COHERENCE_RECENTRAGE_PAQUET.md
```

Addenda ciblés de contrôle et visualisation :

```text
17A_HARMONISATION_MACROS_CORPS_AMPLITUDES_LIMITES.md
19A_HARMONISATION_ETATS_CORPS_LIMITES_SORTIES.md
22A_HARMONISATION_VISUALISATION_AMPLITUDES_LIMITES.md
```

Guides / addenda modules :

```text
modules/17_HARMONISATION_MODULES_CENTRAUX_CORPS_CONTROLES_LIMITES.md
modules/18_CONTEXTUAL_CONTROL_ROUTER_AMPLITUDES_LIMITES_OVERRIDE_ADDENDUM.md
```

Audits assets récents :

```text
assets/14_AUDIT_SOURCE_NEEDS_CORPS_AMPLITUDES_LIMITES.md
assets/15_DONNEES_INSTRUMENTALES_MANQUANTES_PRIORITAIRES.md
```

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

# 2. Décision de recentrage actuelle

La relecture du dépôt montre que les fondations sont globalement solides.

Le problème principal n’est pas l’invention de concepts fragiles, mais :

```text
l’agrégation de notions très riches en macro-concepts trop compacts ;
la transformation de certaines hypothèses ou supports pratiques en étapes trop obligatoires ;
la tendance des documents récents 38–39 à faire des essais musicaux documentés la suite quasi unique ;
le manque de statuts explicites entre acquis stylistique, dérivé opératoire, donnée instrumentale, hypothèse conditionnelle et support pratique.
```

Décision :

```text
ne pas réécrire brutalement le dépôt ;
consolider les statuts ;
protéger le socle analytique ;
réouvrir les notions trop compactées ;
requalifier les limites comme zones de bord jouables lorsque cela correspond à l’intention musicale ;
rétrograder les supports pratiques pour qu’ils ne deviennent pas directeurs.
```

Le paquet de recentrage a été audité dans :

```text
44_AUDIT_COHERENCE_RECENTRAGE_PAQUET.md
```

Décision issue de cet audit :

```text
le paquet de recentrage est cohérent ;
ne plus produire d’addenda de recentrage sans besoin net ;
passer ensuite à l’audit assets/source_needs puis aux données instrumentales réellement manquantes.
```

---

# 3. Notion de corps : priorité de consolidation

La notion de `corps` ne doit pas être lue comme une abstraction vague.

Elle vient d’analyses stylistiques, de ressentis, de phénomènes musicaux précis et d’analyses extérieures ou comparatives déjà approuvées dans le projet.

Elle doit rester ancrée dans :

```text
techno : danse, pression, impact, répétition, hypnose, corps collectif ;
dubstep : attente, sub, tension, résolution différée, masse physique ;
trance : suspension active, expansion, montée longue, peak non brutal ;
acid : torsion, ligne vivante, mutation timbrale ;
jazz : tension, couleur, placement, micro-relations ;
style personnel : techno naturalisée, live, non-décor, beauté, pression, retour.
```

Le corps doit être déplié en sous-fonctions sans perdre ces ressentis d’origine :

```text
corps-pression ;
corps-impact ;
corps-pulsation ;
corps-geste ;
corps-ancrage ;
corps-attente ;
corps-hypnose ;
corps-retour ;
corps-limite.
```

Conséquence :

```text
ne plus demander globalement : “quelle source porte le corps ?”
mais : “quelle sous-fonction du corps est portée par quelle source, dans quelle scène, avec quelle amplitude, quelle limite et quelle sortie ?”
```

Document de référence :

```text
41_CORPS_COMME_FONCTION_COMPOSEE_ET_SITUEE.md
```

---

# 4. Contrôle : définition directrice

Le contrôle live ne doit pas être réduit à un paramètre.

Définition actuelle :

```text
contrôle = sélection + organisation + amplitude + contexte + risque + sortie + override.
```

Le système doit :

```text
sélectionner les paramètres musicalement pertinents ;
organiser leur accès selon le contexte ;
calibrer des amplitudes judicieuse ;
permettre une efficacité maximale sur le style ;
rendre les risques lisibles ;
laisser flirter avec les limites ;
permettre des dépassements assumés ;
préserver des sorties ;
laisser l’override humain prioritaire.
```

Les interdits, risques et garde-fous ne doivent pas devenir des murs esthétiques sauf lorsqu’ils protègent une confusion de statut ou une sécurité méthodologique.

Ils doivent souvent être relus comme :

```text
zones de bord ;
limites expressives ;
zones de bascule ;
risques à rendre visibles ;
amplitudes dangereuses ;
situations nécessitant sortie, retrait ou override.
```

Documents de référence :

```text
42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md
43_HARMONISATION_CONTROLES_15_22.md
17A_HARMONISATION_MACROS_CORPS_AMPLITUDES_LIMITES.md
19A_HARMONISATION_ETATS_CORPS_LIMITES_SORTIES.md
22A_HARMONISATION_VISUALISATION_AMPLITUDES_LIMITES.md
modules/17_HARMONISATION_MODULES_CENTRAUX_CORPS_CONTROLES_LIMITES.md
modules/18_CONTEXTUAL_CONTROL_ROUTER_AMPLITUDES_LIMITES_OVERRIDE_ADDENDUM.md
```

---

# 5. Niveaux de provenance

Chaque notion centrale doit être située selon son statut.

```text
ACQUIS STYLISTIQUE
Résultat issu des analyses techno, dubstep, trance, acid, jazz, style personnel.

ANALYSE PHÉNOMÉNALE
Description de sensations, fonctions, tensions, comportements perceptifs.

ANALYSE EXTÉRIEURE APPROUVÉE
Apport comparatif ou théorique accepté précédemment dans le projet.

DONNÉE INSTRUMENTALE
Information sur didgeridoo, guimbardes, gong, tambour, captation, spectre, jeu, disponibilité.

DÉRIVÉ OPÉRATOIRE
Conséquence pour scène, module, contrôle, trajectoire, protection.

HYPOTHÈSE CONDITIONNELLE
Piste de source, asset, engine, field recording, voix, harmonic drone, cordes, métaux.

BROUILLON PRATIQUE
Fiche de jeu, protocole de répétition, plan de session.
```

Règle :

```text
ne pas faire passer un dérivé opératoire pour un acquis stylistique ;
ne pas faire passer une source conditionnelle pour une décision ;
ne pas faire passer une fiche pratique pour une obligation méthodologique.
```

---

# 6. Organisation documentaire actuelle

## A. Documents directeurs et consolidation transversale

```text
README.md
00_INDEX_METHODE_DECISIONS.md
REPO_TREE_SNAPSHOT.md
40_STRATEGIE_SYSTEME_CONTROLE_LIMITES_HARMONISATION.md
41_CORPS_COMME_FONCTION_COMPOSEE_ET_SITUEE.md
42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md
43_HARMONISATION_CONTROLES_15_22.md
44_AUDIT_COHERENCE_RECENTRAGE_PAQUET.md
```

Rôle : présenter le projet, garder les décisions structurantes, organiser la méthode, le vocabulaire, le workflow, la trace d’arborescence et le recentrage stratégique.

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
17A_HARMONISATION_MACROS_CORPS_AMPLITUDES_LIMITES.md
18_LIVE_CONTROL_DECISION_QUESTIONS_BEFORE_LAYERS.md
19_LIVE_CONTROL_LAYERS_AND_PERFORMANCE_STATES.md
19A_HARMONISATION_ETATS_CORPS_LIMITES_SORTIES.md
20_TEMPORAL_INFRASTRUCTURE_MEASURE_LOOP_REPEAT_FREEZE.md
21_TEMPORAL_INFRASTRUCTURE_DECISION_QUESTIONS.md
22_CONTEXTUAL_VISUALIZATION_REQUIREMENTS.md
22A_HARMONISATION_VISUALISATION_AMPLITUDES_LIMITES.md
```

Rôle : formaliser le contexte pratique du projet — système de génération / traitement sonore, interface de contrôle, cadre de performance, infrastructure temporelle et visualisation — sans encore créer de prototype.

## E. Scènes ouvertes et pont vers les modules

```text
23_SCENES_COMME_CHAMPS_OUVERTS_DE_PERFORMANCE.md
24_SCENES_PIVOTS_CHAMPS_OUVERTS_PREMIERE_SERIE.md
25_SCENES_PIVOTS_TO_MODULE_RESPONSIBILITIES_MAP.md
26_SCENE_PIVOT_MODULE_CONGRUENCE_AUDIT.md
```

Rôle : poser les scènes comme champs ouverts, définir une première série de scènes-pivots, relier ces scènes aux modules et auditer la congruence.

## F. Addenda de synchronisation secondaires

```text
27_SCENE_PERFORMANCE_CONDUCTOR_SYNC_ADDENDUM.md
28_CONTEXTUAL_CONTROL_ROUTER_SYNC_ADDENDUM.md
29_CONFLICT_PROTECTION_MANAGER_SYNC_ADDENDUM.md
30_OBJECT_REGISTRY_SYNC_ADDENDUM.md
31_TRAJECTORY_ENGINE_SYNC_ADDENDUM.md
```

Rôle : synchroniser des modules existants avec les décisions 17–26.

Décision :

```text
ces documents sont utiles ;
ils ne remplacent pas les modules initiaux ;
ils ne sont pas une nouvelle architecture autonome.
```

## G. Harmonisation des modules centraux

```text
modules/17_HARMONISATION_MODULES_CENTRAUX_CORPS_CONTROLES_LIMITES.md
modules/18_CONTEXTUAL_CONTROL_ROUTER_AMPLITUDES_LIMITES_OVERRIDE_ADDENDUM.md
```

Rôle : relire les modules centraux avec la grille corps composé / amplitudes / zones de bord / sorties / override.

Décision :

```text
modules/17 : guide transversal suffisant pour Conductor, Conflict, Registry, Trajectory, Pitch, Timbre, Source Needs ;
modules/18 : addendum individuel nécessaire pour le Router, car il rend concrètement les limites et amplitudes jouables ;
pas d’addendum individuel Conductor ou Conflict pour l’instant.
```

## H. Supports musicaux pratiques

```text
32_SCENES_PIVOTS_DRAMATURGIES_MUSICALES.md
33_FICHE_PERFORMANCE_CORPS_VIVANT_POLYTEXTURE.md
34_FICHE_PERFORMANCE_TENSION_ARMEE_PRE_DROP.md
35_FICHE_PERFORMANCE_SUSPENSION_MATIERE_RETOUR.md
```

Rôle : supports de jeu, d’écoute et de réflexion dramaturgique.

Décision :

```text
utiles ;
non directeurs ;
non obligatoires ;
non bloquants pour l’analyse ;
activables si une phase de jeu ou de répétition est engagée.
```

## I. Outils optionnels de répétition et d’écoute

```text
36_PROTOCOLE_JOURNAL_REPETITION_ECOUTE_SCENES_PIVOTS.md
37_MODELE_FICHE_SESSION_REPETITION_ECOUTE.md
```

Rôle : outils de documentation des prises réelles si elles existent.

Décision :

```text
optionnels ;
non obligatoires ;
non bloquants ;
à utiliser seulement si une répétition ou une écoute enregistrée est réellement engagée.
```

## J. Supports optionnels corrigés

```text
38_QUESTIONS_MUSICALES_A_VERIFIER_AVANT_PROTOTYPE.md
39_PREMIERES_SESSIONS_TEST_SCENES_PIVOTS.md
```

Rôle : freiner le prototypage prématuré sans imposer une voie unique par sessions réelles.

## K. Documents phénoménologiques et techniques de transfert

```text
01_CAHIER_DES_PHENOMENES_SONORES.md
01A_SYNCHRONISATION_PHENOMENES_MODULES.md
02_SPECIFICATION_MAX_FOR_LIVE.md
02A_SYNCHRONISATION_ARCHITECTURE_MODULES.md
09_FICHES_MODELES_OBJETS_TRAJECTOIRES_SCENES.md
```

Rôle : convertir les décisions stylistiques et transversales en phénomènes sonores manipulables, puis en architecture Max for Live / Ableton Live.

## L. Spécifications détaillées et audits de modules

```text
/docs/modules/
```

Rôle : développer progressivement les modules décrits dans `02_SPECIFICATION_MAX_FOR_LIVE`, auditer leurs interfaces avant prototypage, puis préparer les données nécessaires aux instruments, sources, samples, engines et assets.

## M. Préparation des sources, samples et assets

```text
/docs/assets/00_ASSETS_INDEX.md
/docs/assets/
```

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
audits de cohérence ;
données instrumentales manquantes.
```

Documents récents de cette branche :

```text
14_AUDIT_SOURCE_NEEDS_CORPS_AMPLITUDES_LIMITES.md
15_DONNEES_INSTRUMENTALES_MANQUANTES_PRIORITAIRES.md
```

Règles de lecture :

```text
source_need ≠ material_asset ;
material_asset_schema ≠ asset réel ;
scene_use_case ≠ prototype ;
function_test ≠ module ;
decision_gate ≠ décision déjà prise ;
engine_sketch ≠ implémentation ;
loop / repeat / freeze ≠ asset par défaut ;
donnée instrumentale manquante ≠ collecte obligatoire.
```

## N. Validation, outils et mémoire

```text
03_VALIDATION_TESTS_EXTENSIONS.md
04_RESSOURCES_ET_BOITE_A_OUTILS.md
/checkpoints/checkpoint_maitre_v0_1.md
```

Rôle : préparer les futures validations, maintenir la boîte à outils, garder des états de synthèse du projet.

---

# 7. Workflow documentaire actuel corrigé

Le workflow ne doit plus être une simple progression linéaire allant vers les sessions de jeu.

Il doit fonctionner par propagation contrôlée et par voies parallèles possibles.

```text
1. Préserver les analyses stylistiques et phénoménales.
2. Situer chaque concept selon son niveau de provenance.
3. Décompacter les notions trop larges, notamment corps.
4. Traduire seulement les fonctions suffisamment claires en exigences de contrôle.
5. Penser les contrôles comme amplitudes, risques, limites et sorties.
6. Préserver les sources live fixes.
7. Garder les sources conditionnelles comme conditionnelles.
8. Harmoniser les statuts documentaires.
9. Corriger les documents pratiques lorsqu’ils deviennent trop directifs.
10. Auditer source_needs et données instrumentales avant toute collecte.
11. Ne passer à une question technique ou performative que si le niveau concerné le justifie.
```

Voies possibles ensuite :

```text
analyse documentaire ;
consolidation des concepts ;
audits des sources et instruments ;
fiches instrumentales courtes ;
préparation de données acoustiques ciblées ;
révision des contrôles et amplitudes ;
phase de répétition optionnelle ;
question technique ciblée ;
prototypage ultérieur seulement si une fonction est suffisamment stabilisée.
```

---

# 8. Règle anti-prototype prématuré

Aucun prototype ne doit être lancé tant que son rôle dans l’architecture finale n’est pas clair.

Un prototype futur devra être :

```text
lié à un module final probable ;
réutilisable ou transformable ;
documenté ;
conçu pour répondre à une question précise ;
compatible avec l’architecture globale ;
compatible avec les besoins de sources / assets quand ils sont impliqués ;
respectueux de l’override humain et de la priorité live.
```

Les inventaires, protocoles, matrices, `source_needs`, schémas d’assets, cas de scène, tests fonctionnels, portes de décision, croquis d’engine, matrices de contrôle, exigences de visualisation, fiches de champs de scène, cartes d’arborescence et audits de congruence ne sont pas des prototypes.

---

# 9. Règle anti-classement limitant

Les catégories du projet sont des outils de lecture, pas des prisons conceptuelles.

Un objet, une trajectoire, une scène, un instrument candidat, une source ou un contrôle peut appartenir à plusieurs facettes à la fois.

Exemples :

```text
Didgeridoo = grave + formants + souffle + live + corps-geste + corps-pression ;
Gong = impact + halo + partiels + beauté autonome + résolution ;
Sub = corps-pression + pitch_center + pression + résolution ;
Pré-drop = rythmique + corporel + spectral + harmonique + attente ;
Halo = espace + queue + harmonie + risque d’ambientisation ;
Freeze = temps + matière + risque anti-ambient + sortie obligatoire ;
Loop live = trace + double + risque de remplacement + fonction de scène ;
Scène ouverte = fonction centrale + bifurcations + protections + sorties.
```

---

# 10. Décision actuelle

La branche `12–26` reste intégrée et valide.

Les documents `40–44` consolident et auditent le recentrage sans remplacer le socle.

Les addenda `17A`, `19A`, `22A` harmonisent les contrôles, états et visualisation sans réécrire les documents originaux.

Le document `modules/17` harmonise transversalement les modules centraux.

Le document `modules/18` complète individuellement le Router.

Les audits assets `14–15` reclassent les source_needs et données instrumentales sans créer d’asset réel.

Les addenda `27–31` restent utiles mais secondaires.

Les documents `32–37` restent utiles comme supports pratiques et optionnels.

Les documents `38–39` sont corrigés en supports optionnels.

Prochaine étape recommandée :

```text
créer éventuellement des fiches instrumentales courtes pour :
- didgeridoo ;
- guimbardes ;
- gongs ;
- tambours sur cadre.
```

Ces fiches ne doivent pas être des assets ni des protocoles d’enregistrement. Elles doivent seulement organiser les connaissances utiles : registre, corps, amplitude, limites, sorties, relations.

Ne pas encore créer :

```text
patch ;
layout ;
mapping ;
prototype ;
asset réel ;
engine profile ;
nouveau source_need ;
nouvelle scène ;
collecte audio obligatoire.
```
