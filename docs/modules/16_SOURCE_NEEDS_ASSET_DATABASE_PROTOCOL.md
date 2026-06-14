# 16_SOURCE_NEEDS_ASSET_DATABASE_PROTOCOL

Version : v0.4  
Statut : protocole structurel de préparation de base de données, sans prototypage.

## Objet

Ce document définit comment transformer les décisions esthétiques, les instruments candidats, les sources réelles de Yohan, les besoins de samples, les possibilités d’engine, les scènes, les contrôles live et les objets temporels en données préparatoires cohérentes.

Il ne crée pas encore :

```text
une banque audio ;
un asset final ;
un module Max for Live ;
un système de suggestion live ;
un prototype esthétique ;
un looper ;
un système de freeze ;
un moteur de repeat.
```

Il définit l’ordre de passage entre :

```text
instrument_source_candidate ;
source_need ;
material_asset_schema ;
scene_use_case ;
function_test ;
decision_gate ;
engine_sketch ;
temporal_object ;
material_asset ;
material_pool ;
selection_policy ;
quality_evaluation.
```

---

# 1. Problème à résoudre

Le projet dispose maintenant de beaucoup de niveaux documentaires. Le risque est de confondre :

```text
un possible instrument ;
un besoin réel ;
un schéma de description ;
un cas de scène ;
un test de fonction ;
une porte de décision ;
un croquis d’engine ;
un objet temporel temporaire ;
un vrai asset ;
un prototype ;
un sample.
```

Règle centrale :

```text
source_need ≠ material_asset ;
material_asset_schema ≠ asset réel ;
scene_use_case ≠ prototype ;
function_test ≠ module ;
decision_gate ≠ décision déjà prise ;
engine_sketch ≠ implémentation ;
temporal_object ≠ material_asset ;
loop / repeat / freeze ≠ banque audio.
```

---

# 2. Contraintes actuelles de Vesperare

```text
didgeridoo: toujours live ;
guimbardes: toujours live, environ 20 instruments ;
gong: parfois live ;
tambour sur cadre: parfois live ;
samples initiaux: zéro ;
samples futurs: seulement si un besoin réel les justifie ;
génération / résonateurs / engines: à tester besoin par besoin ;
loops / repeats / freezes: objets temporels, pas assets par défaut ;
prototypes: interdits tant que le rôle final n’est pas clair.
```

Conséquence :

```text
on commence par l’existant et les fonctions ;
on ne cherche pas directement des instruments supplémentaires ;
on ne constitue pas de banque de samples ;
on ne crée pas d’assets individuels sans rôle validé ;
on ne transforme pas une capture live temporaire en asset réutilisable sans validation.
```

---

# 3. Chaîne de décision actuelle

La chaîne complète est désormais :

```text
besoin esthétique / phénomène / lacune / intuition
→ instrument_source_candidate si source non validée
→ affordances sonores
→ fonctions possibles
→ source_need si manque réel
→ material_asset_schema si besoin de description future
→ scene_use_case si le besoin dépend d’une scène
→ function_test si la fonction doit être vérifiée
→ decision_gate pour interpréter le test
→ engine_sketch si un engine/résonateur est à cadrer
→ temporal_object si loop/repeat/freeze est temporaire
→ material_asset seulement si le rôle est validé et réutilisable
→ material_pool si plusieurs assets sont autorisés
→ selection_policy si un choix live ou assisté est possible
→ quality_evaluation avant intégration performative
```

Cette chaîne n’est pas toujours entièrement parcourue. Elle sert de garde-fou.

---

# 4. Types et statuts principaux

## 4.1 instrument_source_candidate

Rôle : accueillir une source possible avant validation.

Statuts possibles :

```text
open_candidate ;
interesting_but_unvalidated ;
linked_to_remaining_need ;
rejected ;
deferred.
```

## 4.2 source_need

Rôle : décrire un besoin musical avant de parler de fichiers.

Un `source_need` doit répondre à au moins une question :

```text
quelle fonction reste mal couverte ?
quelle source live fixe couvre déjà le besoin ?
quelle source optionnelle couvre le besoin si présente ?
quelle compensation est obligatoire si absente ?
quelle source candidate pourrait couvrir un manque réel ?
```

Statuts possibles :

```text
live_fixed ;
live_optional ;
engine_required ;
conditional_sample_possible ;
reference_only ;
real_source_needed ;
deferred ;
rejected.
```

## 4.3 material_asset_schema

Rôle : définir comment décrire un futur asset sans créer l’asset.

Règle :

```text
un schema prépare les champs ;
il ne valide pas une source ;
il ne crée pas une banque ;
il ne remplace pas un test de scène.
```

## 4.4 scene_use_case

Rôle : tester si une fonction est réellement nécessaire dans une scène.

Règle :

```text
un cas de scène peut rejeter une source_need localement ;
il peut aussi confirmer qu’un test fonctionnel est nécessaire ;
il ne valide pas encore sample, source, asset ou module.
```

## 4.5 function_test

Rôle : vérifier une fonction musicale minimale, sans chercher encore le son final.

Un test fonctionnel doit observer :

```text
ce que la base couvre seule ;
ce que la fonction ajoute ;
ce qu’elle masque ;
ce qu’elle fragilise ;
ce qu’elle rend plus lisible ;
si elle prépare un retrait ou un retour au corps.
```

## 4.6 decision_gate

Rôle : interpréter les résultats d’un test avant tout passage à l’action.

Sorties possibles :

```text
rejected ;
deferred ;
valid_as_engine ;
real_source_needed ;
sample_minimal_allowed ;
material_asset_allowed ;
temporal_object_only.
```

## 4.7 engine_sketch

Rôle : cadrer les paramètres d’un engine ou résonateur sans l’implémenter.

Règle :

```text
un engine_sketch n’est pas un module ;
il ne déclenche pas automatiquement Max for Live ;
il sert à définir les contrôles minimaux et protections.
```

## 4.8 temporal_object

Rôle : représenter un objet temporel temporaire issu d’une capture, répétition ou suspension.

Exemples :

```text
LOOP_OBJECT ;
REPEAT_EVENT ;
TEMPORAL_FREEZE ;
FREEZE_RELEASE.
```

Règle :

```text
un temporal_object sert la scène ;
il peut être temporaire ;
il ne devient material_asset que s’il est réutilisable, validé, documenté et autorisé.
```

Statuts possibles :

```text
temporary ;
preview ;
active ;
released ;
rejected ;
committed_for_scene ;
material_asset_candidate.
```

## 4.9 material_asset

Rôle : asset réel ou entrée future de base de données, seulement après validation.

Condition :

```text
fonction validée ;
source ou capture validée ;
risques documentés ;
usage interdit / autorisé défini ;
qualité évaluée ;
sélection possible cadrée.
```

---

# 5. Tables de données conceptuelles

```text
INSTRUMENT_SOURCE_CANDIDATE ;
SOURCE_NEED ;
MATERIAL_ASSET_SCHEMA ;
SCENE_USE_CASE ;
FUNCTION_TEST ;
DECISION_GATE ;
ENGINE_SKETCH ;
TEMPORAL_OBJECT ;
MATERIAL_ASSET ;
MATERIAL_POOL ;
SELECTION_POLICY ;
QUALITY_EVALUATION.
```

Les tables `TEMPORAL_OBJECT`, `MATERIAL_ASSET`, `MATERIAL_POOL`, `SELECTION_POLICY` et `QUALITY_EVALUATION` restent futures tant que les besoins ne sont pas validés.

---

# 6. Champs minimaux ajoutés ou révisés

## SOURCE_NEED

Champs à prévoir en plus ou à surveiller :

```text
live_priority_relation ;
source_configuration_dependency ;
temporal_capture_allowed ;
loop_risk ;
repeat_risk ;
freeze_risk ;
anti_ambient_relation ;
return_to_body_relation.
```

## MATERIAL_ASSET_SCHEMA

Champs à prévoir si l’asset peut venir d’une capture temporelle :

```text
temporal_origin ;
capture_context ;
loopability ;
freezeability ;
repeatability ;
release_requirements ;
forbidden_reuse_modes.
```

## TEMPORAL_OBJECT

Champs minimaux :

```text
temporal_object_id ;
temporal_type ;
source ;
function_role ;
scene_context ;
length_or_duration ;
quantization_mode ;
live_priority_relation ;
body_relation ;
release_mode ;
risk_profile ;
status.
```

---

# 7. Politique de samples

Un sample n’est autorisé que si :

```text
un source_need existe ;
la fonction ne peut pas être couverte par live fixe, live optionnel, engine ou génération ;
le besoin est lié à une scène ou trajectoire ;
la decision_gate autorise explicitement un sample minimal ;
le nombre de samples est limité ;
le sample ne devient pas banque décorative.
```

Statuts :

```text
sample_forbidden_now ;
conditional_sample_possible ;
sample_minimal_allowed ;
sample_asset_later ;
sample_rejected ;
sample_deferred.
```

---

# 8. Politique de sélection live

Modes possibles :

```text
M0_FIXED_SOURCE ;
M1_MANUAL_SELECTION ;
M2_ASSISTED_SELECTION ;
M3_CONSTRAINED_AUTO_SELECTION ;
M4_AUTO_SELECTION_FORBIDDEN.
```

Règles :

```text
M0_FIXED_SOURCE: didgeridoo, guimbardes, sub principal.
M1_MANUAL_SELECTION: choix humain, rôle central, source sensible.
M2_ASSISTED_SELECTION: proposition système avec validation humaine.
M3_CONSTRAINED_AUTO_SELECTION: rare, secondaire, pool restreint, métadonnées solides.
M4_AUTO_SELECTION_FORBIDDEN: sub principal, impact critique, voix signal, résolution centrale, live fixe.
```

---

# 9. Politique temporelle

## 9.1 Loops

```text
loop sur live fixe: autorisée comme trace temporaire ;
loop comme remplacement du live: interdite ;
loop committed: seulement si fonction de scène validée ;
loop réutilisable: doit devenir material_asset_candidate puis passer par validation.
```

## 9.2 Repeats

```text
repeat rythmique: quantifiable ;
repeat de matière: semi-libre ;
repeat fragile/vocal/live expressif: manuel ou déconseillé ;
repeat décoratif: à rejeter ou limiter.
```

## 9.3 Freeze

```text
freeze source-based: autorisé prudemment ;
freeze layer-based: autorisé si sortie claire ;
freeze state-based: différé ;
freeze sur didgeridoo/guimbardes: autorisé sous garde-fou ;
freeze sans release: interdit.
```

---

# 10. Politique de qualité

La qualité ne se mesure pas seulement à la beauté du son.

Un matériau ou objet temporel doit être évalué selon :

```text
role_fit ;
function_fit ;
scene_fit ;
trajectory_fit ;
source_recognition_fit ;
transformation_potential ;
live_stability ;
latency_safety ;
cpu_safety ;
mix_translation_potential ;
conflict_risk_level ;
performer_trust ;
return_to_body_support ;
anti_ambient_safety.
```

Refus ou limitation si :

```text
il masque une voix protégée ;
il rend le sub instable ;
il empêche le retour au corps ;
il devient décoratif ;
il impose un style trop identifiable ;
il remplace un live input prioritaire ;
il ne peut pas être contrôlé ou protégé ;
il reste figé sans stratégie de sortie.
```

---

# 11. Workflow recommandé

Pour chaque nouvelle idée de source, instrument, sample, engine ou objet temporel :

```text
1. vérifier si elle répond à un besoin restant ;
2. la placer comme candidate si elle n’est pas validée ;
3. créer un source_need seulement si un manque réel existe ;
4. créer un material_asset_schema si le besoin demande une description future ;
5. créer un scene_use_case si le besoin dépend d’une scène ;
6. créer un function_test si la fonction doit être prouvée ;
7. créer une decision_gate avant toute source/sample/asset ;
8. créer un engine_sketch seulement si un engine est plausible ;
9. créer un temporal_object si loop/repeat/freeze reste temporaire ;
10. créer un material_asset seulement après validation ;
11. créer un material_pool seulement si plusieurs assets sont autorisés ;
12. créer une selection_policy seulement si une sélection live est nécessaire.
```

---

# 12. Décision actuelle

Ce protocole est maintenant aligné avec :

```text
assets index ;
README ;
00_INDEX_METHODE_DECISIONS ;
documents de contrôle live ;
infrastructure temporelle ;
visualisation contextuelle.
```

Prochaine étape recommandée :

```text
ne pas créer de nouveau document conceptuel immédiatement ;
reprendre un axe ciblé :
A. scènes globales / trajectoires ;
B. lien contrôle live ↔ modules existants ;
C. sources / assets prioritaires ;
D. première question de prototype seulement si liée à un module final clair.
```
