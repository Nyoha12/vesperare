# SOURCE_NEED_LIVE_DIDGERIDOO_PRESSURE_FORMANTS

Version : v0.1  
Statut : fiche `source_need` issue d’une source live fixe. Sans sample, sans asset, sans prototypage.

## Objet

Cette fiche décrit le besoin musical porté par le didgeridoo live de Yohan.

Elle ne décrit pas une banque de samples.

Elle sert à préparer :

```text
captation live ;
traitement live ;
pression grave ;
formants ;
souffle ;
torsion ;
relations avec sub / gongs / guimbardes ;
protections de mix ;
futures métadonnées d’assets si des références ou secours sont créés.
```

---

# 1. SOURCE_NEED

```text
source_need_id: SOURCE_NEED_LIVE_DIDGERIDOO_PRESSURE_FORMANTS
source_need_origin: instrument_source_candidate + live fixed source + besoin esthétique/phénoménal
linked_candidates: [cand_didgeridoo_01, cand_yohan_didgeridoo_live_fixed]
function_tags: [pression grave, souffle, formants, torsion, ligne grave, corps, tension continue, retour au corps]
phenomenon_tags: [pression spectrale corporelle, torsion résonante, souffle grave, formants vivants, ligne de matière, drone organique, corps latent]
role_target: source live de pression organique, formants graves et torsion corporelle
object_candidates: [Didgeridoo live, Souffle grave, Ligne formantique grave, Drone organique, Pression corporelle]
scene_affinities: [scènes de tension grave, scènes de pression, scènes de torsion, scènes de suspension corporelle, scènes de retour au corps]
trajectory_affinities: [pression → suspension, pression → expansion, retrait du corps → retour du corps, torsion résonante, sub retenu → résolution]
centrality_level: très haute comme source live ; haute dans les scènes de pression / torsion / corps
quality_requirement: très haute pour stabilité, lisibilité de formants, contrôle du grave et absence de boue
source_recognition_requirement: variable ; la source peut rester identifiable ou devenir trace formantique
abstraction_allowed: moyenne à forte, si le souffle / la colonne d’air / les formants restent perceptibles
live_requirement: obligatoire ; source toujours live selon donnée Yohan
generation_viability: faible pour remplacement, moyenne pour renfort sub / doubles / formants synthétiques
sample_viability: faible comme source principale ; possible uniquement pour référence, secours ou analyse
hybrid_viability: très forte
offline_preparation_viability: moyenne pour profils de traitement, références, résonateurs, IR courtes
selection_mode_default: manuel / live, pas automatique
risk_profile: [sub concurrent, boue bas-médium, latence, feedback, couleur trop identifiable, drone statique, perte de lisibilité rythmique]
protected_dimensions: [sub, formants, souffle, corps, pression, live agency, confort grave]
router_controls_expected: [Pression didgeridoo, Formants, Souffle, Torsion, Sub relation, Résonance, Sécurité grave, Retour au corps]
priority_level: très haute
status: à préparer comme source live centrale
```

---

# 2. Justification esthétique / phénoménale

Le didgeridoo couvre plusieurs besoins déjà définis :

```text
pression spectrale corporelle ;
souffle grave ;
formants ;
torsion résonante ;
ligne vivante grave ;
corps latent ;
retour au corps ;
interaction live / agency humaine ;
relation à la microtonalité et aux partiels.
```

Il est particulièrement important parce que :

```text
il est toujours présent en live ;
il peut porter une pression organique que le sub seul ne donne pas ;
il relie souffle, corps, formants et grave ;
il peut dialoguer avec les guimbardes, le sub, les gongs et les peaux ;
il ouvre un axe de présence humaine non vocale.
```

---

# 3. Ce que cette source couvre potentiellement

## 3.1 Pression grave organique

```text
fonction: produire une présence grave physique, vivante, non purement électronique.
possible_role: corps latent, pression retenue, masse organique, soutien de tension.
risque: boue bas-médium, conflit avec sub, perte de lisibilité.
protection: EQ dynamique, sub split, sidechain, contrôle de zone grave, mono / stereo management.
```

## 3.2 Souffle / colonne d’air

```text
fonction: rendre audible une énergie humaine continue, respirée, physique.
possible_role: souffle de scène, texture corporelle, transition, halo grave.
risque: bruit de souffle non contrôlé, fatigue, masque des détails.
protection: gate doux, denoise léger si nécessaire, contrôle de densité, filtrage dynamique.
```

## 3.3 Formants graves / voix-sans-voix

```text
fonction: produire des zones de résonance expressives sans devenir voix chantée ou parole.
possible_role: formant vivant, cri grave retenu, signal corporel, tension interne.
risque: conflit avec voix, masque du centre harmonique, caricature de didgeridoo.
protection: formant EQ, spectral placement, relation au pitch_center, priorité contextuelle.
```

## 3.4 Torsion résonante

```text
fonction: faire évoluer la matière par pression, formants, colonne d’air et filtrage.
possible_role: ligne grave vivante, torsion, transformation, montée de tension.
risque: effet démonstratif, instabilité excessive, perte du cadre rythmique.
protection: smoothing, limitation des plages, résonateur harmonique, Conflict Manager.
```

## 3.5 Relation au corps techno

```text
fonction: soutenir le retour au corps sans devenir kick ou sub principal par défaut.
possible_role: trace corporelle, pré-résolution, corps latent, soutien d’impact.
risque: confusion avec fondation, grave flou, inertie.
protection: enveloppe contrôlée, articulation par scène, relation au sub engine, ducking avec impacts.
```

---

# 4. Ce que cette source ne doit pas couvrir seule

```text
sub stable principal ;
impact-fondation net ;
peaux ;
masse métallique de gong ;
field recording exposé ;
voix sémantique ;
brillance aiguë ;
polytexture dense complète ;
halo long large.
```

Elle peut soutenir ces besoins, mais ne doit pas être forcée à les remplacer.

---

# 5. Besoin de samples associé

```text
sample_need_status: pas de sample principal nécessaire au départ.
reference_samples_allowed: oui, pour analyse / secours / comparaison.
max_initial_reference_count: 0–3 si besoin.
performative_sample_bank: non.
```

Justification :

```text
la source est live fixe ;
la richesse vient du souffle réel, de la colonne d’air et du geste ;
la banque de samples risquerait de figer l’agency ;
les besoins principaux sont de captation, traitement, relation au sub et sécurité du grave.
```

---

# 6. Besoins d’engine / traitement

## 6.1 Captation live

```text
besoin: entrée stable, niveau contrôlé, gestion du souffle, du grave et de la dynamique.
à définir plus tard: type de micro, placement, préampli, gestion feedback, isolation, latence.
```

## 6.2 Relation au sub

```text
besoin: éviter que le didgeridoo et l’engine sub se concurrencent.
traitements possibles: split fréquentiel, sidechain, dynamic EQ, pitch_center relation, mono low-end guard.
```

## 6.3 Traitement formantique

```text
besoin: préserver / accentuer / déplacer les formants sans caricature.
traitements possibles: EQ dynamique, formant filter, resonator, spectral focus, controlled saturation.
```

## 6.4 Torsion / ligne grave

```text
besoin: permettre une ligne vivante ou une torsion grave jouable.
traitements possibles: filtres, résonateurs, pitch tracking approximatif, feedback contrôlé, microtonal bend, envelope follower.
```

## 6.5 Sécurité grave et bas-médium

```text
besoin: éviter boue, masque, feedback, fatigue et perte de corps.
protections possibles: low-end guard, mid-load check, Conflict Manager, output safety, scene-dependent limits.
```

---

# 7. Métadonnées futures à prévoir

Si des assets live profiles ou références sont créés plus tard :

```text
asset_type: live_profile / reference_sample / processing_preset / resonator_profile
source_identity: didgeridoo live
breath_profile: continu / pulsé / soufflé / rugueux / doux
formant_profile: grave / médium / aigu / instable / vocalisé
pressure_profile: faible / moyen / fort / retenu / massif
pitch_center_if_any: à déclarer ou analyser
sub_relation: dominant / soutien / conflit / retrait / sidechained
attack_profile: doux / articulé / percussif / sans attaque
noise_profile: souffle propre / souffle bruité / frottement / saturation
fatigue_risk: faible / moyen / fort
masking_risk: sub / voix / gong / guimbardes / peaux / aucune
preferred_roles: pression / torsion / formants / souffle / retour au corps
forbidden_roles: kick principal / sub stable unique / brillance aiguë / halo long autonome
```

---

# 8. Checks nécessaires

```text
conflict_checks_required: [sub_masking, mid_load, feedback, live_latency, fatigue, voice_masking]
pitch_checks_required: [hauteur ressentie, formants, sub relation, relation gongs / guimbardes]
output_mix_checks_required: [grave mono, pression, confort, stabilité, intelligibilité]
```

---

# 9. Prochaine action

Après les deux sources live fixes, analyser :

```text
SOURCE_NEED_SUB_PRESSURE_ENGINE
SOURCE_NEED_OPTIONAL_GONG_ABSENCE_STRATEGY
SOURCE_NEED_OPTIONAL_FRAME_DRUM_ABSENCE_STRATEGY
SOURCE_NEED_MINIMAL_VOICE_IF_NOT_LIVE
```

Ces fiches doivent rester conditionnelles tant que les besoins de scène ne sont pas confirmés.
