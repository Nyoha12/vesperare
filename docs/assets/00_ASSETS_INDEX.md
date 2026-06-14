# 00_ASSETS_INDEX

Version : v0.2  
Statut : index local des assets, sources, besoins et tests préparatoires. Sans nouveau besoin sonore, sans ajout de source, sans prototype.

## Objet

Ce document sert de carte locale pour tout le dossier :

```text
docs/assets
```

Il explique quels documents relèvent :

```text
des matrices de besoins ;
des protocoles ;
des audits de sources réelles ;
des source_needs ;
des schémas de material_asset ;
des cas de scène ;
des tests fonctionnels ;
des portes de décision ;
des croquis d’engine ;
des audits de cohérence.
```

Ce document ne couvre pas directement la branche `docs/12–22`, qui concerne le cadre opératoire, les contrôles live, l’infrastructure temporelle et la visualisation contextuelle. Cette branche est désormais cartographiée dans le README et dans `docs/00_INDEX_METHODE_DECISIONS.md`.

---

# 1. Règle générale de lecture

Le dossier `docs/assets` ne contient pas encore d’assets audio finaux.

Règles :

```text
source_need ≠ material_asset ;
material_asset_schema ≠ asset réel ;
scene_use_case ≠ prototype ;
function_test ≠ module ;
decision_gate ≠ décision déjà prise ;
engine_sketch ≠ implémentation ;
loop / repeat / freeze ≠ asset par défaut.
```

---

# 2. Documents racines du dossier assets

```text
00_AESTHETIC_PHENOMENAL_NEEDS_MATRIX.md
→ besoins esthétiques et phénoménaux du style.

01_INSTRUMENT_SOURCE_CANDIDATES_INITIAL.md
→ sources candidates ouvertes, non validées.

02_PRE_LIVE_SAMPLE_CORPUS_NEEDS_PROTOCOL.md
→ décider si des samples pourraient être nécessaires.

03_SAMPLE_NEEDS_TO_SOURCE_NEEDS_BRIDGE.md
→ transformer sample needs en source_needs / material_assets / pools.

04_SAMPLE_NEEDS_INITIAL.md
→ première table besoins → existant → génération → sample minimal.

05_EXISTING_MATERIALS_AND_LIVE_TREATMENT_AUDIT.md
→ didgeridoo + guimbardes toujours live ; gong/tambour parfois ; zéro sample initial.

06_YOHAN_SOURCE_CANDIDATES_AND_POTENTIAL_NEEDS.md
→ propositions spontanées de Yohan, non validées.

07_INITIAL_REAL_NEEDS_NO_SAMPLES_ANALYSIS.md
→ analyse depuis zéro sample.

08_REMAINING_NEEDS_AFTER_LIVE_BASE_AND_COMPENSATIONS.md
→ besoins encore ouverts après base live + compensations.

09_TARGETED_ADDITIONAL_INSTRUMENTS_FROM_REMAINING_NEEDS.md
→ instruments candidats ciblés à partir des manques réels.

10_HIGH_PRIORITY_SOURCE_NEEDS_COMPARISON.md
→ comparaison des priorités hautes.

11_LIVE_INSTRUMENT_SPECTRAL_CAPTURE_PROTOCOL.md
→ protocole léger de capture spectrale live.

12_HARMONIC_DRONE_SCENE_TRAJECTORY_NEEDS.md
→ nécessité éventuelle d’un champ harmonique dans certaines scènes.

13_DOCUMENTATION_MAP_AND_COHERENCE_AUDIT.md
→ audit de cohérence documentaire après accumulation.
```

---

# 3. Sous-dossiers

## source_needs

```text
SOURCE_NEED_LIVE_JAW_HARPS_FORMANT_MICROPULSE.md
SOURCE_NEED_LIVE_DIDGERIDOO_PRESSURE_FORMANTS.md
SOURCE_NEED_SUB_PRESSURE_ENGINE.md
SOURCE_NEED_OPTIONAL_GONG_PRESENCE_ABSENCE_STRATEGY.md
SOURCE_NEED_OPTIONAL_FRAME_DRUM_PRESENCE_ABSENCE_STRATEGY.md
SOURCE_NEED_MINIMAL_VOICE_IF_NOT_LIVE.md
SOURCE_NEED_MINIMAL_FIELD_RECORDINGS_IF_EXPOSED.md
SOURCE_NEED_HARMONIC_DRONE_SHRUTI_ORGAN.md
SOURCE_NEED_BOWED_STRING_TORSION_FIELD.md
SOURCE_NEED_TUNED_METAL_PARTIALS_BELLS_VIBRAPHONE.md
```

## material_assets

```text
MATERIAL_ASSET_SCHEMA_LIVE_JAW_HARPS.md
MATERIAL_ASSET_SCHEMA_LIVE_DIDGERIDOO.md
MATERIAL_ASSET_SCHEMA_HARMONIC_DRONE_FIELDS.md
```

## scene_use_cases

```text
SCENE_USE_CASE_HARMONIC_DRONE_SUSPENSION.md
```

## function_tests

```text
FUNCTION_TEST_HARMONIC_DRONE_SUSPENSION_ENGINE.md
```

## decision_gates

```text
DECISION_GATE_HARMONIC_DRONE_AFTER_FUNCTION_TEST.md
```

## engine_sketches

```text
HARMONIC_DRONE_ENGINE_PARAMETER_SKETCH.md
```

---

# 4. Workflow assets actuel

```text
besoins esthétiques / phénoménaux
→ sources candidates ouvertes
→ audit de l’existant réel
→ analyse depuis zéro sample
→ source_needs live fixes / conditionnels
→ schémas material_asset live fixes
→ matrice des manques restants
→ instruments candidats ciblés
→ source_needs priorités hautes
→ comparaison des priorités
→ schéma harmonic drone
→ scène de suspension
→ test fonctionnel
→ decision gate
→ croquis de paramètres
→ audit de cohérence
→ index local assets
```

Ce workflow montre que le projet est encore dans la préparation des données et décisions.

Il ne doit pas encore basculer vers :

```text
banque de samples ;
assets audio concrets ;
prototypes Max for Live ;
recherche d’achats ;
modules définitifs.
```

---

# 5. Statut de consolidation

```text
create_assets_index: done
update_readme: done
update_master_index: done
update_documentation_map: done
update_protocol_16: done
continue_harmonic_drone_branch_now: no
create_engine_profile_now: no
create_more_source_needs_now: no
prototype_now: no
```

---

# 6. Où reprendre après intégration

Options réalistes :

```text
A. revenir aux autres priorités hautes : cordes frottées et métaux accordés ;
B. revenir aux scènes globales et trajectoires ;
C. relier contrôle live / infrastructure temporelle / visualisation aux modules existants ;
D. créer des fiches material_asset individuelles pour didgeridoo/guimbardes si besoin réel ;
E. continuer harmonic drone seulement si une question précise l’exige.
```

Décision provisoire :

```text
ne pas reprendre l’axe harmonic drone ni créer de nouveau concept avant choix d’un axe ciblé.
```
