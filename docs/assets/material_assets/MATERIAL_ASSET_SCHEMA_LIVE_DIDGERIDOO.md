# MATERIAL_ASSET_SCHEMA_LIVE_DIDGERIDOO

Version : v0.1  
Statut : schéma préparatoire `material_asset`. Sans asset individuel, sans sample, sans prototypage.

## Objet

Ce document définit comment décrire le didgeridoo live de Yohan lorsqu’il deviendra un `material_asset` utilisable dans le système Vesperare.

Il ne crée pas encore :

```text
une fiche de prise réelle ;
un preset de traitement ;
un module Max for Live ;
un mapping définitif ;
un sample de didgeridoo ;
un remplacement du sub.
```

Il prépare la conversion :

```text
SOURCE_NEED_LIVE_DIDGERIDOO_PRESSURE_FORMANTS
→ live material profile
→ futur material_asset didgeridoo live
→ captation / traitements / contrôles / protections / validations.
```

---

# 1. Rôle du schéma

Le didgeridoo est une source live fixe.

Il porte déjà plusieurs besoins du style :

```text
souffle grave ;
pression organique ;
formants ;
torsion ;
ligne grave vivante ;
corps latent ;
retour au corps partiel ;
présence humaine non verbale ;
relation au sub ;
relation aux gongs / tambours / guimbardes.
```

Le schéma doit permettre de documenter le didgeridoo non comme instrument exotique ou couleur ajoutée, mais comme matériau central de souffle, pression, formants et torsion.

---

# 2. Identité minimale du material_asset

```text
asset_id: à créer plus tard
asset_type: live_instrument_profile
source_need_id: SOURCE_NEED_LIVE_DIDGERIDOO_PRESSURE_FORMANTS
source_family: didgeridoo
source_identity: didgeridoo live de Yohan
instrument_index: si plusieurs didgeridoos existent plus tard
instrument_name_or_label: optionnel
ownership: Yohan
live_status: always_available
sample_status: no_primary_sample
asset_status: schema_only / profiled / validated / active / archived
```

---

# 3. Dimensions sonores à documenter

## 3.1 Souffle / air

```text
breath_profile: continu / pulsé / soufflé / rugueux / doux / bruité
breath_intensity: faible / moyenne / forte / massive
breath_noise_risk: faible / moyen / fort
air_column_presence: faible / moyenne / forte
respiration_visibility: cachée / perceptible / centrale
```

## 3.2 Pression grave / corps

```text
pressure_profile: faible / moyenne / forte / retenue / massive
low_end_weight: léger / moyen / lourd / très lourd
body_return_capacity: faible / moyenne / forte
sub_relation: indépendant / complément / conflit / sidechained / retrait
low_mid_risk: faible / moyen / fort
```

## 3.3 Hauteur / centre spectral

```text
felt_pitch: note ou zone ressentie
pitch_stability: stable / mobile / instable / indéterminée
pitch_center_relation: compatible / tension / conflit / non pertinent
microtonal_behavior: faible / moyen / fort
beating_profile: absent / léger / moyen / fort
harmonic_relation_to_sub: complément / conflit / fusion / non analysée
```

## 3.4 Formants / vocalité non verbale

```text
formant_range: grave / médium / aigu / large
formant_strength: faible / moyenne / forte
vocal_like_quality: faible / moyenne / forte
voice_without_words_strength: faible / moyenne / forte
semantic_risk: nul / faible / moyen / fort
voice_masking_risk: faible / moyen / fort
```

## 3.5 Attaque / articulation

```text
attack_profile: sans attaque / doux / aspiré / articulé / percussif / rugueux
pulse_capacity: faible / moyenne / forte
accent_capacity: faible / moyenne / forte
repeatability: faible / moyenne / forte
transition_capacity: faible / moyenne / forte
```

## 3.6 Torsion / ligne grave

```text
torsion_capacity: faible / moyenne / forte
line_potential: drone / ligne / pulsation / tension / texture
movement_type: stable / ondulant / tremblé / rugueux / plié / nerveux
resonance_instability: faible / moyenne / forte
acid_like_risk: faible / moyen / fort
```

---

# 4. Rôles contextuels possibles

Le didgeridoo peut avoir plusieurs rôles selon la scène.

```text
possible_roles:
- souffle grave central ;
- pression organique ;
- corps latent ;
- retour au corps partiel ;
- ligne grave vivante ;
- tension continue ;
- drone corporel ;
- torsion résonante ;
- transition entre halo et corps ;
- partenaire du sub ;
- partenaire des guimbardes ;
- préparation de gong ;
- soutien de tambour ;
- voix-sans-voix grave ;
- matière de résonance ;
- source pour résonateurs / followers.
```

Rôles interdits ou à protéger :

```text
forbidden_or_risky_roles:
- remplacement complet du sub ;
- kick ;
- remplissage grave permanent ;
- drone statique sans tension ;
- couleur exotique décorative ;
- démonstration instrumentale ;
- masque de voix ;
- masque de guimbardes ;
- boue bas-médium ;
- accompagnement passif.
```

---

# 5. Relations aux autres sources

## 5.1 Guimbardes

```text
relation_possible: bouche/bouche, formants graves/formants aigus, souffle/micro-pulse.
risque: accumulation de formants confuse, masque médium, gimmick bouche.
protection: hiérarchie de scène, filtrage dynamique, espace différencié, rôle primaire/secondaire.
```

## 5.2 Sub

```text
relation_possible: didgeridoo organique + sub stable ; pression vivante + centre physique.
risque: concurrence grave, boue, instabilité de pitch_center, perte du corps techno.
protection: split fréquentiel, sidechain, EQ dynamique, mono low-end, contrôle de pitch_center.
```

## 5.3 Gong

```text
relation_possible: didgeridoo comme préparation grave de masse métallique, ou contraste souffle/partiels.
risque: gong + didgeridoo + sub = surcharge grave/bas-médium.
protection: ducking, retrait du didgeridoo pendant queue, gestion des priorités, low-mid guard.
```

## 5.4 Tambour sur cadre

```text
relation_possible: souffle/pression + peau/impact ; corps continu + attaque corporelle.
risque: tambour et didgeridoo se masquent dans le bas-médium, ou didgeridoo rend l’impact flou.
protection: transient priority, sidechain fin, EQ dynamique, hiérarchie de retour au corps.
```

## 5.5 Voix

```text
relation_possible: continuité souffle instrumental → souffle vocal ; contraste non-verbal/verbal.
risque: didgeridoo masque les formants de voix ou réduit la voix à effet.
protection: priorité voix si signal, retrait didgeridoo, filtrage formantique.
```

## 5.6 Field recordings / lieux

```text
relation_possible: corps grave dans un lieu, souffle contre espace, pression contre profondeur.
risque: ambientisation, lieu qui noie le live, grave diffus.
protection: ducking du lieu, hiérarchie corps/espace, low-end clarity.
```

---

# 6. Traitements autorisés à documenter

Chaque future fiche didgeridoo pourra indiquer quels traitements sont pertinents.

```text
processing_candidates:
- EQ dynamique ;
- split grave / formants ;
- formant filter ;
- resonator ;
- controlled saturation ;
- envelope follower ;
- pitch tracking approximatif ;
- sub sidechain ;
- transient / breath shaping ;
- spectral focus ;
- filtered delay ;
- feedback contrôlé ;
- convolution courte ;
- spatialisation contrôlée ;
- denoise léger si nécessaire.
```

Traitements à surveiller :

```text
processing_risks:
- boue ;
- feedback ;
- perte de souffle ;
- sub concurrent ;
- caricature exotique ;
- drone statique ;
- surcompression ;
- saturation trop agressive ;
- latence perceptible ;
- perte de geste live.
```

---

# 7. Contrôles live probables

```text
router_controls_expected:
- Didgeridoo active ;
- Pression didgeridoo ;
- Souffle ;
- Formants ;
- Torsion ;
- Centre grave ;
- Relation sub ;
- Duck sub / duck didgeridoo ;
- Résonance ;
- Distance ;
- Low-mid safety ;
- Relation guimbardes ;
- Relation gong ;
- Relation tambour ;
- Retrait rapide.
```

Ces contrôles ne sont pas encore des paramètres Max for Live. Ce sont des besoins de contrôle musical.

---

# 8. Protections à prévoir

```text
protection_checks:
- low_mid_load_check ;
- sub_conflict_check ;
- pitch_center_conflict_check ;
- voice_masking_check ;
- jaw_harp_formant_conflict_check ;
- gong_tail_conflict_check ;
- frame_drum_attack_masking_check ;
- feedback_check ;
- latency_check ;
- exotic_color_check ;
- role_context_check.
```

---

# 9. Validation minimale future

Le didgeridoo ne devient pas `material_asset` actif tant qu’il n’a pas :

```text
un rôle musical possible ;
un profil de souffle ;
un profil de pression grave ;
un profil de formants ;
un profil de centre spectral ou hauteur ressentie ;
un profil de relation au sub ;
un risque identifié ;
au moins une protection ;
une relation claire avec guimbardes/gong/tambour/voix/field recordings selon contexte ;
une décision : active / référence / archive / à réévaluer.
```

---

# 10. Prochaine action

Après les schémas des deux sources live fixes :

```text
créer une matrice des manques restants après base live + compensations ;
ensuite rouvrir les instruments candidats supplémentaires de manière ciblée.
```
