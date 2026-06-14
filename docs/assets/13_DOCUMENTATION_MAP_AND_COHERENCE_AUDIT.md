# 13_DOCUMENTATION_MAP_AND_COHERENCE_AUDIT

Version : v0.1  
Statut : audit de cohérence documentaire. Sans nouveau besoin sonore, sans ajout de source, sans prototype.

## Objet

Ce document répond à un risque apparu après la création de nombreux documents `assets`, `source_needs`, `material_assets`, `scene_use_cases`, `function_tests`, `decision_gates` et `engine_sketches`.

Risque principal :

```text
perdre la vue d’ensemble ;
continuer à produire des documents locaux sans carte générale ;
ne plus savoir quel document sert à quoi ;
laisser README / index / protocole source_need obsolètes ;
faire diverger les décisions récentes du workflow directeur.
```

Ce document ne crée aucune nouvelle direction musicale.

Il sert à :

```text
cartographier les documents récents ;
clarifier leur usage ;
repérer les mises à jour nécessaires ;
indiquer la meilleure prochaine étape ;
empêcher l’approfondissement prématuré d’un seul axe.
```

---

# 1. Diagnostic court

La progression récente est musicalement cohérente, mais documentairement incomplète.

Cohérent :

```text
on est parti des besoins du style ;
on a évalué les sources live fixes ;
on a intégré les conditions de présence/absence du gong et tambour ;
on a distingué besoins réels, source_needs, material_assets, scènes, tests et decision gates ;
on a évité de chercher des samples ou instruments avant validation fonctionnelle.
```

Incomplet :

```text
README.md n’est pas à jour ;
00_INDEX_METHODE_DECISIONS.md n’est pas à jour ;
16_SOURCE_NEEDS_ASSET_DATABASE_PROTOCOL.md ne reflète probablement pas encore tout le workflow actuel ;
les nouveaux sous-dossiers ne sont pas cartographiés dans les documents directeurs ;
les dépendances entre fichiers récents ne sont pas encore résumées dans une seule carte.
```

Conclusion :

```text
ne pas continuer vers un engine_profile concret maintenant ;
faire une passe d’intégration documentaire contrôlée.
```

---

# 2. Chaîne documentaire récente

## 2.1 Base initiale assets

```text
00_AESTHETIC_PHENOMENAL_NEEDS_MATRIX
→ besoins esthétiques / phénoménaux.

01_INSTRUMENT_SOURCE_CANDIDATES_INITIAL
→ sources candidates ouvertes, non validées.

02_PRE_LIVE_SAMPLE_CORPUS_NEEDS_PROTOCOL
→ décider si des samples sont vraiment nécessaires avant live.

03_SAMPLE_NEEDS_TO_SOURCE_NEEDS_BRIDGE
→ transformer sample needs en source_needs / material_assets / pools.

04_SAMPLE_NEEDS_INITIAL
→ première table prudente besoins → existant → samples.

05_EXISTING_MATERIALS_AND_LIVE_TREATMENT_AUDIT
→ ce que Yohan a réellement : didgeridoo + guimbardes toujours ; gong/tambour parfois ; zéro sample.

06_YOHAN_SOURCE_CANDIDATES_AND_POTENTIAL_NEEDS
→ propositions spontanées de Yohan, non validées.

07_INITIAL_REAL_NEEDS_NO_SAMPLES_ANALYSIS
→ analyse depuis zéro sample.
```

## 2.2 Source needs structurants

```text
SOURCE_NEED_LIVE_JAW_HARPS_FORMANT_MICROPULSE
→ guimbardes live, micro-pulse, formants, torsion, brillance.

SOURCE_NEED_LIVE_DIDGERIDOO_PRESSURE_FORMANTS
→ didgeridoo live, pression, souffle, formants, corps.

SOURCE_NEED_SUB_PRESSURE_ENGINE
→ engine sub / pression, centre physique, corps, quatre configurations live.

SOURCE_NEED_OPTIONAL_GONG_PRESENCE_ABSENCE_STRATEGY
→ gong présent/absent, compensation obligatoire si fonction nécessaire.

SOURCE_NEED_OPTIONAL_FRAME_DRUM_PRESENCE_ABSENCE_STRATEGY
→ tambour présent/absent, compensation obligatoire si fonction peau/impact nécessaire.

SOURCE_NEED_MINIMAL_VOICE_IF_NOT_LIVE
→ voix humaine conditionnelle si fonction vocale réelle requise.

SOURCE_NEED_MINIMAL_FIELD_RECORDINGS_IF_EXPOSED
→ field recordings conditionnels si lieu réel exposé requis.
```

## 2.3 Material asset schemas fixes

```text
MATERIAL_ASSET_SCHEMA_LIVE_JAW_HARPS
→ comment décrire chaque guimbarde live future.

MATERIAL_ASSET_SCHEMA_LIVE_DIDGERIDOO
→ comment décrire le didgeridoo live futur.
```

## 2.4 Réouverture ciblée des besoins restants

```text
08_REMAINING_NEEDS_AFTER_LIVE_BASE_AND_COMPENSATIONS
→ ce qui reste vraiment ouvert après base live + compensations.

09_TARGETED_ADDITIONAL_INSTRUMENTS_FROM_REMAINING_NEEDS
→ instruments/sources à rouvrir uniquement depuis les manques.
```

## 2.5 Trois priorités hautes

```text
SOURCE_NEED_HARMONIC_DRONE_SHRUTI_ORGAN
→ champs harmoniques, battements, suspension, expansion non ambient.

SOURCE_NEED_BOWED_STRING_TORSION_FIELD
→ torsion médium/aiguë, friction, cri sans voix, beauté tendue.

SOURCE_NEED_TUNED_METAL_PARTIALS_BELLS_VIBRAPHONE
→ partiels contrôlés, signaux harmoniques, métal accordé.
```

## 2.6 Comparaison et décision

```text
10_HIGH_PRIORITY_SOURCE_NEEDS_COMPARISON
→ décide d’approfondir d’abord le champ harmonique, de garder métaux en recherche/référence, et de surveiller les cordes à cause du risque de lyrisme.
```

## 2.7 Axe champ harmonique / bourdon

```text
MATERIAL_ASSET_SCHEMA_HARMONIC_DRONE_FIELDS
→ comment décrire de futurs matériaux de bourdon sans choisir source.

11_LIVE_INSTRUMENT_SPECTRAL_CAPTURE_PROTOCOL
→ protocole léger pour données spectrales live, non bloquant.

12_HARMONIC_DRONE_SCENE_TRAJECTORY_NEEDS
→ dans quelles scènes le champ harmonique serait utile.

SCENE_USE_CASE_HARMONIC_DRONE_SUSPENSION
→ cas de scène concret : suspension active.

FUNCTION_TEST_HARMONIC_DRONE_SUSPENSION_ENGINE
→ test fonctionnel minimal sans sample.

DECISION_GATE_HARMONIC_DRONE_AFTER_FUNCTION_TEST
→ comment interpréter le test avant toute source/sample/asset.

HARMONIC_DRONE_ENGINE_PARAMETER_SKETCH
→ paramètres minimaux de test, sans implémentation.
```

---

# 3. Cohérence du raisonnement actuel

La chaîne est cohérente parce qu’elle suit cet ordre :

```text
besoins du style
→ sources réellement disponibles
→ fonctions couvertes / non couvertes
→ compensations conditionnelles
→ manques restants
→ instruments candidats ciblés
→ source_needs prioritaires
→ comparaison
→ scène candidate
→ test fonctionnel
→ décision gate
→ seulement ensuite source / sample / asset / engine.
```

C’est le bon ordre.

Ce qui aurait été moins bon :

```text
chercher directement des instruments supplémentaires ;
chercher des samples ;
créer un engine ;
implémenter Max for Live ;
acheter/enregistrer des sources ;
valider orgue/shruti/cordes/cloches sans scène.
```

---

# 4. Point de vigilance : profondeur excessive sur l’axe harmonic drone

L’axe champ harmonique a été approfondi de manière logique, mais il ne faut pas continuer indéfiniment dans cette seule branche.

Signes de risque :

```text
on commence à produire des documents sur engine_profile avant d’avoir intégré la carte générale ;
les autres priorités hautes restent en attente ;
README / index ne sont pas à jour ;
les documents récents ne sont pas encore accessibles comme workflow global.
```

Décision recommandée :

```text
stopper temporairement l’approfondissement de l’axe harmonic drone ;
faire une passe d’intégration documentaire ;
puis revenir soit aux autres priorités hautes, soit aux scènes globales.
```

---

# 5. Documents obsolètes ou à mettre à jour

## 5.1 README.md

À mettre à jour parce qu’il ne liste pas encore :

```text
field recordings conditionnels ;
material_assets schemas ;
remaining needs matrix ;
targeted additional instruments ;
source_needs priorité haute ;
comparison ;
harmonic drone material schema ;
live spectral capture protocol ;
scene use case ;
function test ;
decision gate ;
engine parameter sketch ;
présente prochaine étape.
```

## 5.2 00_INDEX_METHODE_DECISIONS.md

À mettre à jour parce qu’il doit redevenir la carte directrice.

Ajouter :

```text
nouvelle organisation des sous-dossiers assets ;
statut de chaque type de fichier ;
règle : ne pas poursuivre une branche au-delà de son usage sans audit ;
prochaine étape recommandée : intégration documentaire, pas engine_profile.
```

## 5.3 16_SOURCE_NEEDS_ASSET_DATABASE_PROTOCOL.md

À relire / mettre à jour ensuite parce que le workflow réel a évolué :

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

## 5.4 Index local des assets

Il manque un document local qui fasse carte de tout `docs/assets`.

À créer ou déduire :

```text
docs/assets/00_ASSETS_INDEX.md
```

Ce serait plus sûr que de tout faire porter au README global.

---

# 6. Meilleure prochaine étape

La meilleure prochaine étape n’est pas :

```text
ENGINE_PROFILE_HARMONIC_DRONE_MINIMAL
```

Même si cette fiche serait logique localement.

La meilleure prochaine étape est :

```text
créer / mettre à jour une carte locale des assets ;
puis mettre à jour README et 00_INDEX de manière concise ;
puis mettre à jour le protocole 16 si nécessaire ;
puis seulement décider si l’on revient à harmonic drone ou aux autres priorités.
```

Ordre recommandé :

```text
1. Créer docs/assets/00_ASSETS_INDEX.md
2. Mettre à jour README.md, section Préparation des sources et assets
3. Mettre à jour docs/00_INDEX_METHODE_DECISIONS.md, section G + workflow
4. Mettre à jour docs/modules/16_SOURCE_NEEDS_ASSET_DATABASE_PROTOCOL.md
5. Reprendre le travail musical à partir de la carte stabilisée
```

---

# 7. Statut de la suite

```text
continue_harmonic_drone_branch_now: no
create_engine_profile_now: no
create_assets_index_now: yes
update_readme_next: yes
update_master_index_next: yes
update_protocol_16_after: yes
```

Conclusion :

```text
la documentation récente est utile et cohérente localement ;
elle n’est pas encore assez intégrée globalement ;
il faut maintenant consolider la carte avant de continuer.
```
