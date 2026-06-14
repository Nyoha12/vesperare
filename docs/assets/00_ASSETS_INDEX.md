# 00_ASSETS_INDEX

Version : v0.1  
Statut : index local des assets, sources, besoins et tests préparatoires. Sans nouveau besoin sonore, sans ajout de source, sans prototype.

## Objet

Ce document sert de carte locale pour tout le dossier :

```text
docs/assets
```

Il explique :

```text
quel document sert à quoi ;
quels documents sont des matrices ;
quels documents sont des source_needs ;
quels documents sont des schémas de material_asset ;
quels documents sont des cas de scène ;
quels documents sont des tests fonctionnels ;
quels documents sont des portes de décision ;
quels documents sont des croquis d’engine ;
quel est l’ordre actuel de travail.
```

Ce document est maintenant la carte de référence locale avant mise à jour du README global et de `00_INDEX_METHODE_DECISIONS`.

---

# 1. Règle générale de lecture

Le dossier `docs/assets` ne contient pas encore d’assets audio finaux.

Il contient :

```text
besoins ;
hypothèses ;
protocoles ;
source_needs ;
schémas de material_asset ;
cas de scène ;
tests fonctionnels ;
portes de décision ;
croquis de paramètres.
```

Règle :

```text
source_need ≠ material_asset ;
material_asset_schema ≠ asset réel ;
scene_use_case ≠ prototype ;
function_test ≠ module ;
decision_gate ≠ décision déjà prise ;
engine_sketch ≠ implémentation.
```

---

# 2. Documents racines du dossier assets

## 2.1 `00_AESTHETIC_PHENOMENAL_NEEDS_MATRIX.md`

```text
rôle: extraire les besoins esthétiques et phénoménaux du style.
statut: matrice amont.
usage: point de départ avant sources, samples ou assets.
```

## 2.2 `01_INSTRUMENT_SOURCE_CANDIDATES_INITIAL.md`

```text
rôle: ouvrir des instruments, objets, sources, lieux ou matières candidates.
statut: inventaire ouvert, non validant.
usage: garder les possibles sans les confondre avec des besoins réels.
```

## 2.3 `02_PRE_LIVE_SAMPLE_CORPUS_NEEDS_PROTOCOL.md`

```text
rôle: décider quels genres de samples pourraient être nécessaires avant live.
statut: protocole de décision.
usage: éviter de constituer une banque audio par réflexe.
```

## 2.4 `03_SAMPLE_NEEDS_TO_SOURCE_NEEDS_BRIDGE.md`

```text
rôle: transformer un besoin de sample validé en source_need, material_asset, pool, selection_policy.
statut: pont conceptuel.
usage: empêcher le passage direct “sample intéressant → asset”.
```

## 2.5 `04_SAMPLE_NEEDS_INITIAL.md`

```text
rôle: première table besoins → existant → traitement live → génération → sample minimal.
statut: audit initial.
usage: document à relire quand un sample semble nécessaire.
```

## 2.6 `05_EXISTING_MATERIALS_AND_LIVE_TREATMENT_AUDIT.md`

```text
rôle: fixer ce que Yohan a réellement.
statut: audit pratique.
contenu clé: didgeridoo + guimbardes toujours live ; gong/tambour parfois ; zéro sample initial.
usage: base de vérité pour ne pas chercher des sources avant d’évaluer l’existant.
```

## 2.7 `06_YOHAN_SOURCE_CANDIDATES_AND_POTENTIAL_NEEDS.md`

```text
rôle: accueillir les propositions spontanées de Yohan.
statut: potentiel maximal, non validé.
usage: réserve de possibles, pas liste de choses à ajouter.
```

## 2.8 `07_INITIAL_REAL_NEEDS_NO_SAMPLES_ANALYSIS.md`

```text
rôle: repartir de zéro sample et des sources live réelles.
statut: analyse de départ.
usage: décider ce qui est déjà couvert, conditionnel, ou réellement manquant.
```

## 2.9 `08_REMAINING_NEEDS_AFTER_LIVE_BASE_AND_COMPENSATIONS.md`

```text
rôle: identifier les besoins encore ouverts après base live + compensations.
statut: matrice de manques restants.
usage: point de départ pour rouvrir des instruments sans hasard.
```

## 2.10 `09_TARGETED_ADDITIONAL_INSTRUMENTS_FROM_REMAINING_NEEDS.md`

```text
rôle: rouvrir des instruments candidats à partir des manques réels.
statut: analyse ciblée.
usage: filtrer shruti, orgue, cordes, cloches, cuivres, anches, harpes, éléments naturels, etc. par fonction.
```

## 2.11 `10_HIGH_PRIORITY_SOURCE_NEEDS_COMPARISON.md`

```text
rôle: comparer les trois priorités hautes après réouverture ciblée.
statut: comparaison décisionnelle.
usage: choisir quoi approfondir sans transformer chaque piste en asset.
```

## 2.12 `11_LIVE_INSTRUMENT_SPECTRAL_CAPTURE_PROTOCOL.md`

```text
rôle: méthode légère pour documenter spectres / pics / registres des instruments live.
statut: protocole non bloquant.
usage: garder les repères didgeridoo 48/96 Hz, 40/80 Hz, et guimbardes par registres sans arrêter la conception.
```

## 2.13 `12_HARMONIC_DRONE_SCENE_TRAJECTORY_NEEDS.md`

```text
rôle: vérifier dans quelles scènes un champ harmonique / bourdon est vraiment nécessaire.
statut: analyse scènes / trajectoires.
usage: empêcher de chercher shruti/orgue/sample avant de savoir où la fonction sert.
```

## 2.14 `13_DOCUMENTATION_MAP_AND_COHERENCE_AUDIT.md`

```text
rôle: audit de cohérence après accumulation de documents récents.
statut: document de stabilisation.
usage: décider de consolider la carte avant de poursuivre l’axe harmonic drone.
```

---

# 3. Sous-dossier `source_needs`

## 3.1 Sources live fixes

```text
SOURCE_NEED_LIVE_JAW_HARPS_FORMANT_MICROPULSE.md
→ guimbardes live : micro-pulse, formants, torsion, brillance, voix-sans-voix, polytexture.

SOURCE_NEED_LIVE_DIDGERIDOO_PRESSURE_FORMANTS.md
→ didgeridoo live : pression, souffle, formants, corps, torsion, retour au corps.
```

## 3.2 Engine et sources conditionnelles structurantes

```text
SOURCE_NEED_SUB_PRESSURE_ENGINE.md
→ engine sub / pression : centre physique, corps, quatre configurations live.

SOURCE_NEED_OPTIONAL_GONG_PRESENCE_ABSENCE_STRATEGY.md
→ gong présent/absent : compensation obligatoire si fonction de gong nécessaire.

SOURCE_NEED_OPTIONAL_FRAME_DRUM_PRESENCE_ABSENCE_STRATEGY.md
→ tambour présent/absent : compensation obligatoire si fonction peau/impact nécessaire.

SOURCE_NEED_MINIMAL_VOICE_IF_NOT_LIVE.md
→ voix conditionnelle si signal, souffle, cri, parole fragmentée ou matière humaine sont nécessaires.

SOURCE_NEED_MINIMAL_FIELD_RECORDINGS_IF_EXPOSED.md
→ field recordings conditionnels si lieu réel, mémoire, profondeur ou identité de lieu sont nécessaires.
```

## 3.3 Source needs issus des manques restants

```text
SOURCE_NEED_HARMONIC_DRONE_SHRUTI_ORGAN.md
→ champ harmonique, bourdon, battements, suspension, expansion non ambient.

SOURCE_NEED_BOWED_STRING_TORSION_FIELD.md
→ cordes frottées comme torsion médium/aiguë, friction, cri sans voix, beauté tendue.

SOURCE_NEED_TUNED_METAL_PARTIALS_BELLS_VIBRAPHONE.md
→ métaux accordés, cloches, bols, vibraphone, partiels contrôlés, signaux harmoniques.
```

---

# 4. Sous-dossier `material_assets`

Ces documents ne créent pas encore d’assets réels. Ce sont des schémas.

```text
MATERIAL_ASSET_SCHEMA_LIVE_JAW_HARPS.md
→ comment décrire chaque guimbarde live comme futur material_asset.

MATERIAL_ASSET_SCHEMA_LIVE_DIDGERIDOO.md
→ comment décrire le didgeridoo live comme futur material_asset.

MATERIAL_ASSET_SCHEMA_HARMONIC_DRONE_FIELDS.md
→ comment décrire de futurs matériaux de champ harmonique / bourdon sans choisir source.
```

Règle :

```text
un material_asset_schema devient utile avant les fiches individuelles ;
les fiches individuelles ne doivent être créées que si le rôle est confirmé ;
un schema ne valide pas un instrument.
```

---

# 5. Sous-dossier `scene_use_cases`

```text
SCENE_USE_CASE_HARMONIC_DRONE_SUSPENSION.md
→ tester la nécessité d’un champ harmonique dans une scène de suspension active.
```

Règle :

```text
un scene_use_case sert à vérifier une fonction dans une scène ;
il ne valide ni source, ni sample, ni engine.
```

---

# 6. Sous-dossier `function_tests`

```text
FUNCTION_TEST_HARMONIC_DRONE_SUSPENSION_ENGINE.md
→ tester sans sample si un champ harmonique peut apporter battements, densité, tension, retrait et retour au corps.
```

Règle :

```text
un function_test ne doit pas produire une esthétique finale ;
il sert à décider si la fonction existe vraiment.
```

---

# 7. Sous-dossier `decision_gates`

```text
DECISION_GATE_HARMONIC_DRONE_AFTER_FUNCTION_TEST.md
→ interpréter les résultats du test : rejet, report, engine suffisant, source réelle, sample minimal, material_asset concret.
```

Règle :

```text
une decision_gate empêche les passages prématurés ;
aucune source concrète ne doit être cherchée si la porte ne l’autorise pas.
```

---

# 8. Sous-dossier `engine_sketches`

```text
HARMONIC_DRONE_ENGINE_PARAMETER_SKETCH.md
→ définir les paramètres minimaux de test d’un engine/résonateur harmonic drone, sans implémentation.
```

Règle :

```text
un engine_sketch n’est pas un module ;
il ne doit pas déclencher automatiquement un prototype Max for Live.
```

---

# 9. Workflow actuel réel

Le workflow actuel des assets est :

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

Ce workflow montre que le projet est encore dans la préparation des données et des décisions.

Il ne doit pas encore basculer vers :

```text
banque de samples ;
assets audio concrets ;
prototypes Max for Live ;
recherche d’achats ;
modules définitifs.
```

---

# 10. Décision de pause actuelle

Décision actuelle :

```text
continue_harmonic_drone_branch_now: no
create_engine_profile_now: no
create_more_source_needs_now: no
create_assets_index_now: done
update_readme_next: yes
update_master_index_next: yes
update_protocol_16_after: yes
```

Raison :

```text
les documents récents sont cohérents localement ;
mais ils doivent être intégrés aux cartes directrices ;
le README et 00_INDEX sont obsolètes ;
le protocole 16 doit probablement refléter les nouveaux types de documents.
```

---

# 11. Prochaines mises à jour recommandées

## 11.1 README.md

Mettre à jour la section :

```text
Préparation des sources et assets
```

pour inclure :

```text
source_needs conditionnels récents ;
material_asset schemas ;
matrice des manques restants ;
instruments ciblés ;
priorités hautes ;
scène / test / decision gate / engine sketch ;
index local assets.
```

## 11.2 `docs/00_INDEX_METHODE_DECISIONS.md`

Mettre à jour :

```text
section G : Préparation des sources, samples et assets ;
workflow documentaire ;
règle de pause / audit quand une branche devient trop profonde ;
prochaine étape recommandée.
```

## 11.3 `docs/modules/16_SOURCE_NEEDS_ASSET_DATABASE_PROTOCOL.md`

Mettre à jour après lecture pour intégrer :

```text
source_need ;
material_asset_schema ;
scene_use_case ;
function_test ;
decision_gate ;
engine_sketch ;
conditional_sample ;
reference_only ;
real_source_needed.
```

---

# 12. Où reprendre après intégration

Après mise à jour des cartes :

```text
option A: revenir aux autres priorités hautes : cordes frottées et métaux accordés ;
option B: revenir aux scènes globales et trajectoires ;
option C: continuer harmonic drone seulement si la carte est stable ;
option D: commencer à créer des fiches material_asset individuelles pour didgeridoo/guimbardes si besoin.
```

Décision provisoire :

```text
ne pas reprendre l’axe harmonic drone avant mise à jour README + index + protocole 16.
```
