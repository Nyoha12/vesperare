# REPO_TREE_SNAPSHOT

Version : v0.4  
Statut : trace d’arborescence exploitable pour éviter les déductions de chemins. À tenir à jour lors de créations / suppressions / déplacements de documents.

## Source de cette trace

Cette trace est construite à partir :

```text
- de l’arborescence recursive fournie par Yohan depuis l’API GitHub ;
- des fichiers effectivement fetchés ou créés pendant la session ;
- des chemins trouvés via recherche GitHub interne.
```

Lien public de référence à consulter si possible :

```text
https://api.github.com/repos/Nyoha12/vesperare/git/trees/main?recursive=1
```

Limite : cette trace est une carte de chemins, pas une preuve que tous les fichiers ont été intégralement relus.

Dernière mise à jour manuelle : après création de `docs/28_CONTEXTUAL_CONTROL_ROUTER_SYNC_ADDENDUM.md`.

---

# 1. Racine

```text
README.md
checkpoints/checkpoint_maitre_v0_1.md
```

---

# 2. Documents racines `docs/`

```text
docs/00_INDEX_METHODE_DECISIONS.md
docs/REPO_TREE_SNAPSHOT.md
docs/01_CAHIER_DES_PHENOMENES_SONORES.md
docs/01A_SYNCHRONISATION_PHENOMENES_MODULES.md
docs/02_SPECIFICATION_MAX_FOR_LIVE.md
docs/02A_SYNCHRONISATION_ARCHITECTURE_MODULES.md
docs/03_VALIDATION_TESTS_EXTENSIONS.md
docs/04_RESSOURCES_ET_BOITE_A_OUTILS.md
docs/05_CARTOGRAPHIE_STYLE_PERSONNEL_TECHNO.md
docs/06_CARTOGRAPHIE_INFLUENCES_STYLE_VESPERARE.md
docs/07_PITCH_HARMONIQUES_MICROTONALITE.md
docs/08_PERFORMANCE_SCENES_TRAJECTOIRES_OBJETS.md
docs/09_FICHES_MODELES_OBJETS_TRAJECTOIRES_SCENES.md
docs/10_SOUND_DESIGN_MIX_OUTILS_CONTRAINTES.md
docs/11_AUDIT_COHERENCE_NOTATION_CATEGORIES_RESPONSABILITES.md
```

---

# 3. Branche techno organique / contrôle live / scènes ouvertes

```text
docs/12_TECHNO_ORGANIQUE_CADRE_OPERATOIRE.md
docs/13_CONCEPTS_OPERATOIRES_TECHNO_ORGANIQUE_DEPENDANCES.md
docs/14_CONCEPT_CORE_TO_INTERFACE_SYSTEM_REQUIREMENTS.md
docs/15_LIVE_CONTROL_REQUIREMENTS_MATRIX.md
docs/16_LIVE_CONTROL_MATRIX_PERFORMABILITY_AUDIT.md
docs/17_LIVE_CONTROL_REQUIREMENTS_MATRIX_REDUCED.md
docs/18_LIVE_CONTROL_DECISION_QUESTIONS_BEFORE_LAYERS.md
docs/19_LIVE_CONTROL_LAYERS_AND_PERFORMANCE_STATES.md
docs/20_TEMPORAL_INFRASTRUCTURE_MEASURE_LOOP_REPEAT_FREEZE.md
docs/21_TEMPORAL_INFRASTRUCTURE_DECISION_QUESTIONS.md
docs/22_CONTEXTUAL_VISUALIZATION_REQUIREMENTS.md
docs/23_SCENES_COMME_CHAMPS_OUVERTS_DE_PERFORMANCE.md
docs/24_SCENES_PIVOTS_CHAMPS_OUVERTS_PREMIERE_SERIE.md
docs/25_SCENES_PIVOTS_TO_MODULE_RESPONSIBILITIES_MAP.md
docs/26_SCENE_PIVOT_MODULE_CONGRUENCE_AUDIT.md
docs/27_SCENE_PERFORMANCE_CONDUCTOR_SYNC_ADDENDUM.md
docs/28_CONTEXTUAL_CONTROL_ROUTER_SYNC_ADDENDUM.md
```

---

# 4. Dossier `docs/modules/`

Chemins repérés :

```text
docs/modules/01_OBJECT_REGISTRY.md
docs/modules/02_TRAJECTORY_ENGINE.md
docs/modules/03_REGISTRY_TRAJECTORY_INTERFACE.md
docs/modules/04_SCENE_PERFORMANCE_CONDUCTOR.md
docs/modules/05_CONTEXTUAL_CONTROL_ROUTER.md
docs/modules/06_CONDUCTOR_ROUTER_INTERFACE.md
docs/modules/07_CONFLICT_PROTECTION_MANAGER.md
docs/modules/08_CONFLICT_CONDUCTOR_ROUTER_INTERFACE.md
docs/modules/09_PITCH_HARMONIC_FIELD_MANAGER.md
docs/modules/10_PITCH_CONFLICT_INTERFACE.md
docs/modules/11_TIMBRE_MATERIAL_MAPPER.md
docs/modules/12_TIMBRE_REGISTRY_CONFLICT_PITCH_INTERFACE.md
docs/modules/13_SOUND_ENGINES_INSTRUMENTS.md
docs/modules/14_SOUND_ENGINE_MAPPER_CONFLICT_ROUTER_INTERFACE.md
docs/modules/15_AUDIT_COHERENCE_SOURCES_SAMPLES_ENGINES_RECENTS.md
docs/modules/16_SOURCE_NEEDS_ASSET_DATABASE_PROTOCOL.md
```

Fichiers modules relus directement dans cette session avant l’audit `26` :

```text
docs/modules/01_OBJECT_REGISTRY.md
docs/modules/02_TRAJECTORY_ENGINE.md
docs/modules/04_SCENE_PERFORMANCE_CONDUCTOR.md
docs/modules/05_CONTEXTUAL_CONTROL_ROUTER.md
docs/modules/07_CONFLICT_PROTECTION_MANAGER.md
docs/modules/09_PITCH_HARMONIC_FIELD_MANAGER.md
docs/modules/11_TIMBRE_MATERIAL_MAPPER.md
docs/modules/16_SOURCE_NEEDS_ASSET_DATABASE_PROTOCOL.md
```

---

# 5. Dossier `docs/assets/`

```text
docs/assets/00_ASSETS_INDEX.md
docs/assets/00_AESTHETIC_PHENOMENAL_NEEDS_MATRIX.md
docs/assets/01_INSTRUMENT_SOURCE_CANDIDATES_INITIAL.md
docs/assets/02_PRE_LIVE_SAMPLE_CORPUS_NEEDS_PROTOCOL.md
docs/assets/03_SAMPLE_NEEDS_TO_SOURCE_NEEDS_BRIDGE.md
docs/assets/04_SAMPLE_NEEDS_INITIAL.md
docs/assets/05_EXISTING_MATERIALS_AND_LIVE_TREATMENT_AUDIT.md
docs/assets/06_YOHAN_SOURCE_CANDIDATES_AND_POTENTIAL_NEEDS.md
docs/assets/07_INITIAL_REAL_NEEDS_NO_SAMPLES_ANALYSIS.md
docs/assets/08_REMAINING_NEEDS_AFTER_LIVE_BASE_AND_COMPENSATIONS.md
docs/assets/09_TARGETED_ADDITIONAL_INSTRUMENTS_FROM_REMAINING_NEEDS.md
docs/assets/10_HIGH_PRIORITY_SOURCE_NEEDS_COMPARISON.md
docs/assets/11_LIVE_INSTRUMENT_SPECTRAL_CAPTURE_PROTOCOL.md
docs/assets/12_HARMONIC_DRONE_SCENE_TRAJECTORY_NEEDS.md
docs/assets/13_DOCUMENTATION_MAP_AND_COHERENCE_AUDIT.md
```

## `docs/assets/source_needs/`

```text
docs/assets/source_needs/SOURCE_NEED_LIVE_JAW_HARPS_FORMANT_MICROPULSE.md
docs/assets/source_needs/SOURCE_NEED_LIVE_DIDGERIDOO_PRESSURE_FORMANTS.md
docs/assets/source_needs/SOURCE_NEED_SUB_PRESSURE_ENGINE.md
docs/assets/source_needs/SOURCE_NEED_OPTIONAL_GONG_PRESENCE_ABSENCE_STRATEGY.md
docs/assets/source_needs/SOURCE_NEED_OPTIONAL_FRAME_DRUM_PRESENCE_ABSENCE_STRATEGY.md
docs/assets/source_needs/SOURCE_NEED_MINIMAL_VOICE_IF_NOT_LIVE.md
docs/assets/source_needs/SOURCE_NEED_MINIMAL_FIELD_RECORDINGS_IF_EXPOSED.md
docs/assets/source_needs/SOURCE_NEED_HARMONIC_DRONE_SHRUTI_ORGAN.md
docs/assets/source_needs/SOURCE_NEED_BOWED_STRING_TORSION_FIELD.md
docs/assets/source_needs/SOURCE_NEED_TUNED_METAL_PARTIALS_BELLS_VIBRAPHONE.md
```

## `docs/assets/material_assets/`

```text
docs/assets/material_assets/MATERIAL_ASSET_SCHEMA_LIVE_JAW_HARPS.md
docs/assets/material_assets/MATERIAL_ASSET_SCHEMA_LIVE_DIDGERIDOO.md
docs/assets/material_assets/MATERIAL_ASSET_SCHEMA_HARMONIC_DRONE_FIELDS.md
```

## `docs/assets/scene_use_cases/`

```text
docs/assets/scene_use_cases/SCENE_USE_CASE_HARMONIC_DRONE_SUSPENSION.md
```

## `docs/assets/function_tests/`

```text
docs/assets/function_tests/FUNCTION_TEST_HARMONIC_DRONE_SUSPENSION_ENGINE.md
```

## `docs/assets/decision_gates/`

```text
docs/assets/decision_gates/DECISION_GATE_HARMONIC_DRONE_AFTER_FUNCTION_TEST.md
```

## `docs/assets/engine_sketches/`

```text
docs/assets/engine_sketches/HARMONIC_DRONE_ENGINE_PARAMETER_SKETCH.md
```

---

# 6. Règle de maintenance

À chaque création, suppression ou déplacement de document :

```text
1. mettre à jour cette trace si le chemin affecte docs/ ou README ;
2. mettre à jour README.md si le document change la carte globale ;
3. mettre à jour docs/00_INDEX_METHODE_DECISIONS.md si le workflow ou les décisions changent ;
4. mettre à jour docs/assets/00_ASSETS_INDEX.md seulement si le dossier assets change ;
5. éviter de créer une nouvelle branche documentaire sans l’ajouter ici.
```

Si l’accès API fonctionne, préférer rafraîchir depuis :

```text
https://api.github.com/repos/Nyoha12/vesperare/git/trees/main?recursive=1
```
