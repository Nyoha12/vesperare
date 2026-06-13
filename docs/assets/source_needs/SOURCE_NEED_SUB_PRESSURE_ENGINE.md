# SOURCE_NEED_SUB_PRESSURE_ENGINE

Version : v0.1  
Statut : fiche `source_need` pour engine / source paramétrique. Sans sample, sans preset définitif, sans prototypage.

## Objet

Cette fiche décrit le besoin musical du sub et de la pression grave dans Vesperare.

Elle ne décrit pas :

```text
un sample ;
un preset de basse ;
un instrument synthé définitif ;
un kick ;
un remplacement du didgeridoo ;
un remplacement des gongs ou tambours.
```

Elle sert à préparer :

```text
engine sub / pression grave ;
relation au didgeridoo live ;
relation aux gongs occasionnels ;
relation aux tambours sur cadre occasionnels ;
centre grave / pitch_center ;
sécurité low-end ;
retour au corps ;
pression corporelle stable ;
contrôles live simples ;
protections de mix.
```

---

# 1. SOURCE_NEED

```text
source_need_id: SOURCE_NEED_SUB_PRESSURE_ENGINE
source_need_origin: besoin esthétique/phénoménal + lacune technique + source engine
linked_candidates: [cand_sub_01, LIVE_FIXED_DIDGERIDOO, LIVE_OPTIONAL_GONGS, LIVE_OPTIONAL_FRAME_DRUMS]
function_tags: [sub, pression grave, corps, ancrage, retour au corps, stabilité, résolution]
phenomenon_tags: [pression spectrale corporelle, impact-fondation partiel, centre grave, corps latent, sub retenu, retour du corps]
role_target: engine de pression grave stable et contrôlable
object_candidates: [Sub engine, Pression grave, Centre spectral grave, Fondation synthétique naturalisée]
scene_affinities: [scènes de corps, scènes de pression, scènes de tension grave, scènes de pré-drop, scènes de retour au corps]
trajectory_affinities: [sub retenu → résolution, pression → suspension, retrait du corps → retour du corps, tension grave → stabilisation]
centrality_level: très haute
quality_requirement: très haute pour stabilité, confort, mono-compatibilité, contrôle dynamique et absence de boue
source_recognition_requirement: faible ; la source n’a pas besoin d’être reconnaissable
abstraction_allowed: très forte, mais le résultat doit rester corporel et naturel/physique dans l’effet
live_requirement: contrôlable en live, mais pas instrument live acoustique
generation_viability: très forte, à analyser et valider spécifiquement
sample_viability: très faible ; références uniquement si nécessaire
hybrid_viability: très forte avec didgeridoo, gongs, peaux, impacts, résonateurs
offline_preparation_viability: forte pour profils, tests, références, safe ranges, calibrage
selection_mode_default: engine contrôlé / manuel / scène ; pas sélection automatique de samples
risk_profile: [sub générique, pression réduite au volume, boue, instabilité, largeur excessive, conflit didgeridoo, conflit gong, conflit tambour, fatigue]
protected_dimensions: [sub, corps, pression, stabilité, mono, pitch_center, confort, danse]
router_controls_expected: [Sub level, Pression, Centre grave, Retenue, Résolution, Relation didgeridoo, Relation gong/tambour, Sécurité low-end]
priority_level: très haute
status: à préparer comme engine central avant samples
```

---

# 2. Justification esthétique / phénoménale

Le sub est nécessaire parce que Vesperare conserve plusieurs fonctions techno :

```text
corps ;
pression ;
retour au corps ;
fondation ;
sub retenu ;
résolution ;
club / quasi-club intensity ;
continuité physique.
```

Mais il ne doit pas devenir :

```text
un kick standard ;
une basse générique ;
un preset de synthé ;
un sub large et décoratif ;
un remplacement du didgeridoo.
```

Le sub doit agir comme :

```text
centre physique ;
force de rappel ;
pression stable ;
partenaire du didgeridoo ;
partenaire possible du gong ;
partenaire possible du tambour ;
outil de résolution ;
trace corporelle dans les suspensions.
```

---

# 3. Relations avec les sources live

## 3.1 Relation au didgeridoo

```text
le didgeridoo fournit : souffle, formants, grave organique, torsion, agency humaine.
le sub fournit : stabilité, centre, pression contrôlée, retour physique.

relation souhaitée : complémentarité.
relation interdite : concurrence permanente dans le grave.
```

Risques :

```text
boue bas-médium ;
sub qui écrase les formants ;
didgeridoo qui rend le sub instable ;
perte de lisibilité du centre grave.
```

Protections :

```text
split fréquentiel ;
sidechain fin ;
EQ dynamique ;
mono low-end ;
contrôle de pitch_center ;
scène-dependent limits.
```

## 3.2 Relation aux guimbardes

```text
les guimbardes fournissent : micro-pulse, formants de bouche, torsion, brillance métallique.
le sub fournit : sol grave et pression.

relation souhaitée : contraste échelle micro / macro.
relation interdite : sub qui masque la finesse des guimbardes ou guimbardes trop agressives au-dessus du sub.
```

## 3.3 Relation aux gongs occasionnels

```text
le gong peut fournir : masse, partiels, résolution, halo, queue.
le sub peut fournir : centre stable, renfort, résolution grave, pression avant/après gong.

relation souhaitée : sub et gong se soutiennent sans se masquer.
relation interdite : gong + sub = boue ou dramatisme massif incontrôlé.
```

## 3.4 Relation aux tambours sur cadre occasionnels

```text
le tambour peut fournir : peau, impact, geste, corps acoustique.
le sub peut fournir : renfort grave, soutien de fondation, stabilité.

relation souhaitée : impact acoustique + profondeur contrôlée.
relation interdite : transformer le tambour en kick standard ou écraser son grain.
```

---

# 4. Ce que le sub doit couvrir

## 4.1 Pression grave stable

```text
fonction: donner au projet une présence physique fiable.
possible_role: pression stable, corps latent, soutien de scène, tension grave.
risque: volume punitif, fatigue, boue.
protection: niveau, compression, EQ dynamique, limite de densité, monitoring low-end.
```

## 4.2 Retour au corps

```text
fonction: ramener la musique vers le corps après suspension, halo, beauté autonome ou complexité.
possible_role: retour du corps, résolution grave, réincorporation.
risque: retour trop évident, effet techno standard.
protection: enveloppes variées, relation aux objets acoustiques, timing scénique.
```

## 4.3 Sub retenu / tension

```text
fonction: maintenir une attente corporelle sans toujours résoudre.
possible_role: sub retenu, tension de pré-drop, menace contrôlée.
risque: effet dubstep plaqué, attente trop prévisible.
protection: rareté, modulation lente, scénarisation, fausses résolutions.
```

## 4.4 Centre grave / pitch_center

```text
fonction: stabiliser les relations entre didgeridoo, gong, voix, guimbardes, halos et champs harmoniques.
possible_role: spectral_root, pitch_center, centre de résolution.
risque: conflit avec partiels réels, flou harmonique.
protection: analyse de hauteur ressentie, relation microtonale contrôlée, Pitch/Harmonic Field Manager.
```

---

# 5. Ce que le sub ne doit pas couvrir seul

```text
attaque de peau ;
impact acoustique exposé ;
masse métallique de gong ;
formants du didgeridoo ;
formants de guimbarde ;
polytexture ;
brillance rythmique ;
field recording ;
voix ;
beauté autonome.
```

Le sub soutient ces fonctions, mais ne les remplace pas.

---

# 6. Besoin de samples associé

```text
sample_need_status: aucun sample principal nécessaire.
reference_samples_allowed: oui, pour comparaison / calibration / mix reference.
max_initial_reference_count: 0–3 si besoin.
performative_sample_bank: non.
```

Justification :

```text
le besoin est paramétrique et fonctionnel ;
la stabilité doit être contrôlable ;
les scènes doivent pouvoir retenir, retirer ou résoudre le sub ;
les samples figeraient trop vite la réponse ;
le sub doit s’adapter aux sources live.
```

---

# 7. Besoins d’engine / traitement

## 7.1 Générateur sub principal

```text
besoin: produire une pression grave stable, mono-compatible, réglable par scène.
paramètres probables: fréquence / pitch_center, niveau, enveloppe, saturation, densité, dynamique, stabilité.
```

## 7.2 Relation au didgeridoo

```text
besoin: éviter conflit avec grave et formants du didgeridoo.
traitements possibles: sidechain, split, dynamic EQ, tracking approximatif, ducking contextuel.
```

## 7.3 Enveloppe / retour au corps

```text
besoin: rendre le sub capable de revenir, disparaître, soutenir, ou résoudre.
traitements possibles: macro Retour au corps, macro Retenue, macro Résolution, variation d’enveloppe.
```

## 7.4 Saturation / matérialité

```text
besoin: éviter un sinus pur trop abstrait ou un preset générique.
traitements possibles: saturation douce, harmonics shaping, noise/sub hybrid très contrôlé, résonance légère.
```

## 7.5 Sécurité low-end

```text
besoin: éviter volume punitif, boue, largeur basse, instabilité, fatigue.
protections possibles: mono low-end, limiter ciblé, dynamic EQ, sub ceiling, scene-dependent limits, emergency cut.
```

---

# 8. Métadonnées futures à prévoir

```text
asset_type: engine_profile / processing_preset / reference_sample
source_identity: sub engine / pressure engine
pitch_center: Hz ou note ressentie
sub_role: fondation / retenue / résolution / trace / renfort
relation_didgeridoo: indépendant / sidechained / complément / conflit
relation_gong: renfort / préparation / post-résonance / conflit
relation_frame_drum: renfort / kick-like / soutien / conflit
mono_status: obligatoire
saturation_profile: clean / warm / rough / controlled_harmonics
pressure_profile: faible / moyen / fort / retenu / massif
attack_profile: lent / net / fondu / percussif
release_profile: court / moyen / long / ducked
fatigue_risk: faible / moyen / fort
masking_risk: didgeridoo / gong / tambour / voix / aucun
preferred_roles: fondation / pression / retenue / résolution / retour au corps
forbidden_roles: texture décorative / basse mélodique non justifiée / largeur stéréo basse / sample bank
```

---

# 9. Checks nécessaires

```text
conflict_checks_required: [sub_masking, didgeridoo_conflict, gong_conflict, frame_drum_conflict, output_pressure, fatigue]
pitch_checks_required: [pitch_center, spectral_root, sub_pitch_relation, microtonal_relation_to_live]
output_mix_checks_required: [mono low-end, pressure ceiling, club translation, headphone comfort, low-end headroom]
```

---

# 10. Prochaine action

Créer ensuite une fiche conditionnelle :

```text
SOURCE_NEED_OPTIONAL_GONG_ABSENCE_STRATEGY
```

Objectif : définir ce qui manque quand aucun gong live n’est présent, et déterminer si ce manque doit être couvert par génération / résonateur / sample minimal / scène alternative.
