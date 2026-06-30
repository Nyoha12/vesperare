# SOURCE_NEED_SUB_PRESSURE_ENGINE

Version : v0.2  
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
relation aux guimbardes live ;
relation aux gongs occasionnels ;
relation aux tambours sur cadre occasionnels ;
centre grave / pitch_center ;
sécurité low-end ;
retour au corps ;
pression corporelle stable ;
contrôles live simples ;
protections de mix.
```

Rappel des présences live :

```text
toujours : didgeridoo + guimbardes ;
parfois : 1 gong parmi 5 ;
parfois : 1 tambour sur cadre parmi 3 ;
possibles configurations :
- didgeridoo + guimbardes seuls ;
- didgeridoo + guimbardes + gong ;
- didgeridoo + guimbardes + tambour ;
- didgeridoo + guimbardes + gong + tambour.
```

---

# 1. SOURCE_NEED

```text
source_need_id: SOURCE_NEED_SUB_PRESSURE_ENGINE
source_need_origin: besoin esthétique/phénoménal + lacune technique + source engine
linked_candidates: [cand_sub_01, LIVE_FIXED_DIDGERIDOO, LIVE_FIXED_JAW_HARPS, LIVE_OPTIONAL_GONGS, LIVE_OPTIONAL_FRAME_DRUMS]
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
hybrid_viability: très forte avec didgeridoo, guimbardes, gongs, peaux, impacts, résonateurs
offline_preparation_viability: forte pour profils, tests, références, safe ranges, calibrage
selection_mode_default: engine contrôlé / manuel / scène ; pas sélection automatique de samples
risk_profile: [sub générique, pression réduite au volume, boue, instabilité, largeur excessive, conflit didgeridoo, conflit guimbardes, conflit gong, conflit tambour, fatigue]
protected_dimensions: [sub, corps, pression, stabilité, mono, pitch_center, confort, danse]
router_controls_expected: [Sub level, Pression, Centre grave, Retenue, Résolution, Relation didgeridoo, Relation guimbardes, Relation gong, Relation tambour, Sécurité low-end]
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
un remplacement du didgeridoo ;
un remplacement du gong ;
un remplacement du tambour.
```

Le sub doit agir comme :

```text
centre physique ;
force de rappel ;
pression stable ;
partenaire du didgeridoo ;
partenaire des guimbardes ;
partenaire possible du gong ;
partenaire possible du tambour ;
outil de résolution ;
trace corporelle dans les suspensions.
```

---

# 3. Matrice des configurations live

## 3.1 Configuration A — didgeridoo + guimbardes seuls

```text
configuration_id: LIVE_BASE_ONLY
présents: didgeridoo + guimbardes
absents: gong + tambour
rôle du sub: assurer la stabilité grave, le retour au corps et la pression physique sans prétendre fournir attaque de peau ni masse de gong.
fonctions couvertes par live: souffle grave, formants, torsion, micro-pulse, voix-sans-voix.
fonctions manquantes possibles: impact acoustique de peau, résolution métallique, halo long de gong.
sub_strategy: pression stable + centre grave + retenue/résolution, avec résonateurs ou autres engines si besoin de halo.
sample_implication: aucun sample de sub ; éventuels samples conditionnels plus tard pour gong/peaux si les manques sont confirmés.
risques: sub trop central, perte de diversité matérielle, grave qui écrase didgeridoo.
protections: relation didgeridoo, high/mid clarity pour guimbardes, low-end guard.
```

## 3.2 Configuration B — didgeridoo + guimbardes + gong

```text
configuration_id: LIVE_WITH_GONG
présents: didgeridoo + guimbardes + 1 gong parmi 5
absent: tambour
rôle du sub: soutenir le gong sans le doubler lourdement ; préparer ou prolonger la résolution grave.
fonctions couvertes par live: souffle/formants, micro-pulse, torsion, masse métallique, partiels, halo, résolution.
fonctions manquantes possibles: peau, impact acoustique sec, corps percussif immédiat.
sub_strategy: sub retenu avant gong, ou sub stabilisateur après gong ; éviter que gong + sub deviennent une masse indistincte.
sample_implication: pas de sample de gong nécessaire dans cette configuration ; samples de peau seulement si impact peau absent devient un vrai manque.
risques: boue gong+sub, dramatisme trop massif, queue de gong qui masque le centre grave.
protections: ducking queue/sub, EQ dynamique bas-médium, contrôle de queue, monitoring de headroom.
```

## 3.3 Configuration C — didgeridoo + guimbardes + tambour

```text
configuration_id: LIVE_WITH_FRAME_DRUM
présents: didgeridoo + guimbardes + 1 tambour sur cadre parmi 3
absent: gong
rôle du sub: soutenir le corps du tambour sans transformer le tambour en kick standard.
fonctions couvertes par live: souffle/formants, micro-pulse, torsion, peau, impact, corps acoustique.
fonctions manquantes possibles: masse métallique de résolution, halo long de gong, partiels inharmoniques forts.
sub_strategy: renfort grave contrôlé, articulation avec attaque de peau, pression après impact si besoin.
sample_implication: pas de sample de tambour nécessaire dans cette configuration ; samples de gong/métal seulement si résolution métallique indispensable.
risques: tambour standardisé en kick, perte du grain de peau, conflit sub/tambour/didgeridoo.
protections: transient/tail split conceptuel, sidechain fin, respect du grain, dynamique scène.
```

## 3.4 Configuration D — didgeridoo + guimbardes + gong + tambour

```text
configuration_id: LIVE_WITH_GONG_AND_FRAME_DRUM
présents: didgeridoo + guimbardes + 1 gong + 1 tambour
absents: aucun des éléments optionnels
rôle du sub: stabiliser et relier sans surcharger ; devenir parfois discret.
fonctions couvertes par live: souffle/formants, micro-pulse, torsion, peau, impact, masse métallique, partiels, halo, résolution.
fonctions manquantes possibles: peu de manque matériel immédiat ; le risque principal devient la surcharge.
sub_strategy: économie, soutien sélectif, retrait possible, résolution contrôlée, pas de doublage systématique.
sample_implication: aucun sample nécessaire pour couvrir gong/tambour ; samples seulement si rôle externe confirmé ailleurs.
risques: surdensité, boue, excès rituel/monumental, perte de sécheresse, fatigue.
protections: Conflict Manager, priorités de scène, réduction automatique/assistée de sub ou halo, contrôle du bas-médium.
```

---

# 4. Relations avec les sources live

## 4.1 Relation au didgeridoo

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
scene-dependent limits.
```

## 4.2 Relation aux guimbardes

```text
les guimbardes fournissent : micro-pulse, formants de bouche, torsion, brillance métallique.
le sub fournit : sol grave et pression.

relation souhaitée : contraste échelle micro / macro.
relation interdite : sub qui masque la finesse des guimbardes ou guimbardes trop agressives au-dessus du sub.
```

## 4.3 Relation aux gongs occasionnels

```text
le gong peut fournir : masse, partiels, résolution, halo, queue.
le sub peut fournir : centre stable, renfort, résolution grave, pression avant/après gong.

relation souhaitée : sub et gong se soutiennent sans se masquer.
relation interdite : gong + sub = boue ou dramatisme massif incontrôlé.
```

## 4.4 Relation aux tambours sur cadre occasionnels

```text
le tambour peut fournir : peau, impact, geste, corps acoustique.
le sub peut fournir : renfort grave, soutien de fondation, stabilité.

relation souhaitée : impact acoustique + profondeur contrôlée.
relation interdite : transformer le tambour en kick standard ou écraser son grain.
```

---

# 5. Ce que le sub doit couvrir

## 5.1 Pression grave stable

```text
fonction: donner au projet une présence physique fiable.
possible_role: pression stable, corps latent, soutien de scène, tension grave.
risque: volume punitif, fatigue, boue.
protection: niveau, compression, EQ dynamique, limite de densité, monitoring low-end.
```

## 5.2 Retour au corps

```text
fonction: ramener la musique vers le corps après suspension, halo, beauté autonome ou complexité.
possible_role: retour du corps, résolution grave, réincorporation.
risque: retour trop évident, effet techno standard.
protection: enveloppes variées, relation aux objets acoustiques, timing scénique.
```

## 5.3 Sub retenu / tension

```text
fonction: maintenir une attente corporelle sans toujours résoudre.
possible_role: sub retenu, tension de pré-drop, menace contrôlée.
risque: effet dubstep plaqué, attente trop prévisible.
protection: rareté, modulation lente, scénarisation, fausses résolutions.
```

## 5.4 Centre grave / pitch_center

```text
fonction: stabiliser les relations entre didgeridoo, gong, voix, guimbardes, halos et champs harmoniques.
possible_role: spectral_root, pitch_center, centre de résolution.
risque: conflit avec partiels réels, flou harmonique.
protection: analyse de hauteur ressentie, relation microtonale contrôlée, Pitch/Harmonic Field Manager.
```

---

# 6. Ce que le sub ne doit pas couvrir seul

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

# 7. Besoin de samples associé

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

# 8. Besoins d’engine / traitement

## 8.1 Générateur sub principal

```text
besoin: produire une pression grave stable, mono-compatible, réglable par scène.
paramètres probables: fréquence / pitch_center, niveau, enveloppe, saturation, densité, dynamique, stabilité.
```

## 8.2 Relation au didgeridoo

```text
besoin: éviter conflit avec grave et formants du didgeridoo.
traitements possibles: sidechain, split, dynamic EQ, tracking approximatif, ducking contextuel.
```

## 8.3 Enveloppe / retour au corps

```text
besoin: rendre le sub capable de revenir, disparaître, soutenir, ou résoudre.
traitements possibles: macro Retour au corps, macro Retenue, macro Résolution, variation d’enveloppe.
```

## 8.4 Saturation / matérialité

```text
besoin: éviter un sinus pur trop abstrait ou un preset générique.
traitements possibles: saturation douce, harmonics shaping, noise/sub hybrid très contrôlé, résonance légère.
```

## 8.5 Sécurité low-end

```text
besoin: éviter volume punitif, boue, largeur basse, instabilité, fatigue.
protections possibles: mono low-end, limiter ciblé, dynamic EQ, sub ceiling, scene-dependent limits, emergency cut.
```

---

# 9. Métadonnées futures à prévoir

```text
asset_type: engine_profile / processing_preset / reference_sample
source_identity: sub engine / pressure engine
pitch_center: Hz ou note ressentie
sub_role: fondation / retenue / résolution / trace / renfort
configuration_id: LIVE_BASE_ONLY / LIVE_WITH_GONG / LIVE_WITH_FRAME_DRUM / LIVE_WITH_GONG_AND_FRAME_DRUM
relation_didgeridoo: indépendant / sidechained / complément / conflit
relation_guimbardes: indépendant / complément / masque / contraste micro-macro
relation_gong: renfort / préparation / post-résonance / conflit / absent
relation_frame_drum: renfort / kick-like / soutien / conflit / absent
mono_status: obligatoire
saturation_profile: clean / warm / rough / controlled_harmonics
pressure_profile: faible / moyen / fort / retenu / massif
attack_profile: lent / net / fondu / percussif
release_profile: court / moyen / long / ducked
fatigue_risk: faible / moyen / fort
masking_risk: didgeridoo / gong / tambour / guimbardes / voix / aucun
preferred_roles: fondation / pression / retenue / résolution / retour au corps
forbidden_roles: texture décorative / basse mélodique non justifiée / largeur stéréo basse / sample bank
```

---

# 10. Checks nécessaires

```text
conflict_checks_required: [sub_masking, didgeridoo_conflict, guimbardes_conflict, gong_conflict, frame_drum_conflict, output_pressure, fatigue]
pitch_checks_required: [pitch_center, spectral_root, sub_pitch_relation, microtonal_relation_to_live]
output_mix_checks_required: [mono low-end, pressure ceiling, club translation, headphone comfort, low-end headroom]
```

---

# 11. Prochaine action

Créer ensuite une fiche conditionnelle :

```text
SOURCE_NEED_OPTIONAL_GONG_PRESENCE_ABSENCE_STRATEGY
```

Objectif : définir ce qui change quand un gong est présent ou absent, en tenant compte des quatre configurations live et de la présence éventuelle du tambour.
