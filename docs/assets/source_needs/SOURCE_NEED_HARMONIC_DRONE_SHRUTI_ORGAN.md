# SOURCE_NEED_HARMONIC_DRONE_SHRUTI_ORGAN

Version : v0.1  
Statut : fiche `source_need` ciblée. Sans ajout validé, sans sample confirmé, sans prototypage.

## Objet

Cette fiche définit le besoin potentiel de sources de bourdon / champ harmonique soutenu : shruti box, harmonium, orgue, orgue d’église ou source apparentée.

Elle répond aux manques identifiés dans :

```text
08_REMAINING_NEEDS_AFTER_LIVE_BASE_AND_COMPENSATIONS
09_TARGETED_ADDITIONAL_INSTRUMENTS_FROM_REMAINING_NEEDS
```

Elle ne valide pas encore l’ajout d’un instrument.

Elle sert à décider si une source de bourdon / orgue / masse harmonique est vraiment nécessaire pour couvrir :

```text
champs harmoniques soutenus ;
battements / microtonalité élargie ;
suspension active ;
expansion non ambient ;
architecture harmonique ;
beauté autonome contrôlée ;
tension longue.
```

---

# 1. SOURCE_NEED

```text
source_need_id: SOURCE_NEED_HARMONIC_DRONE_SHRUTI_ORGAN
source_need_origin: besoin restant + source candidate ciblée + analyse post base live
linked_documents: [08_REMAINING_NEEDS_AFTER_LIVE_BASE_AND_COMPENSATIONS, 09_TARGETED_ADDITIONAL_INSTRUMENTS_FROM_REMAINING_NEEDS]
linked_candidates: [cand_shruti_01, cand_harmonium_01, cand_organ_01]
function_tags: [champ harmonique, bourdon, battements, microtonalité, expansion, suspension, beauté autonome, architecture]
phenomenon_tags: [drone harmonique, battements, masse harmonique, halo non ambient, tension longue, souffle harmonique, espace architectural]
role_target: source possible de champ harmonique soutenu et de battements non décoratifs
object_candidates: [Shruti box, Harmonium, Orgue, Bourdon traité, Champ harmonique, Architecture harmonique]
scene_affinities: [suspension, expansion, tension longue, beauté autonome, pré-résolution, transition]
trajectory_affinities: [tension → expansion, battements → suspension, bourdon → pression, harmonie → retour au corps]
centrality_level: haute seulement si champ harmonique soutenu confirmé
quality_requirement: très haute si source exposée ; moyenne si utilisée comme matière transformée
source_recognition_requirement: variable ; faible pour champ abstrait, moyenne/haute si orgue ou shruti exposé
abstraction_allowed: forte si le rôle est champ/battements ; faible si l’instrument devient décor identifiable
live_requirement: non confirmé
sample_viability: moyenne à forte si source non disponible live et rôle harmonique confirmé
generation_viability: moyenne ; forte pour résonateurs, faible si besoin de souffle/battements réels
hybrid_viability: très forte
offline_preparation_viability: forte pour profils de drones, accords, battements, queues, traitements
selection_mode_default: manuel / scène / assisté ; pas automatique par défaut
risk_profile: [ambientisation, spiritualité plaquée, décor sacré, drone statique, majesté évidente, perte de corps techno]
protected_dimensions: [tension, corps, pression, non-décor, microtonalité, lisibilité harmonique, mix]
router_controls_expected: [Bourdon, Battements, Expansion, Tension harmonique, Distance, Retrait, Relation sub, Relation didgeridoo, Anti-ambient]
priority_level: haute comme besoin à analyser
status: source_need à investiguer avant ajout d’instrument ou sample
```

---

# 2. Fonctions recherchées

## 2.1 Champ harmonique soutenu

```text
fonction: produire une masse harmonique tenue que didgeridoo + sub + guimbardes ne couvrent pas complètement.
rôle: support de suspension, tension longue, espace harmonique, fondation non rythmique.
risque: nappe décorative, ambientisation.
protection: rôle de scène, durée limitée, relation au corps, tension interne obligatoire.
```

## 2.2 Battements / microtonalité élargie

```text
fonction: générer des battements, frictions lentes, microtensions harmoniques.
rôle: instabilité contrôlée, tension perceptive, beauté autonome, mouvement sans rythme explicite.
risque: haze harmonique, perte de lisibilité, contemplation passive.
protection: relation au pitch_center, dynamique de tension, limitation de densité.
```

## 2.3 Expansion / suspension non ambient

```text
fonction: créer une ouverture ou suspension active sans devenir paysage ambient.
rôle: expansion de scène, montée lente, respiration harmonique, pré-résolution.
risque: perte du corps techno, halo décoratif, nappe statique.
protection: sub relation, trajectoire claire, retrait possible, densité contrôlée.
```

## 2.4 Architecture harmonique / orgue

```text
fonction: produire une masse ou structure harmonique architecturale.
rôle: espace monumental contrôlé, poids harmonique, beauté autonome rare.
risque: sacralité plaquée, cliché cathédrale, grandeur trop évidente.
protection: très peu d’usage, filtrage, abstraction, rôle structurel explicite.
```

---

# 3. Sources candidates internes à cette fiche

## 3.1 Shruti box

```text
apport: souffle mécanique, battements, bourdon vivant, tension harmonique simple.
mode possible: live, sample minimal, resampling, référence.
intérêt: forte compatibilité avec souffle / microtonalité / champ harmonique.
risque: méditatif décoratif, drone statique, spiritualité plaquée.
condition: utile seulement si battements et suspension active sont réellement nécessaires.
```

## 3.2 Harmonium

```text
apport: souffle, accord, masse harmonique, battements, présence humaine indirecte.
mode possible: live, sample minimal, resampling, traitement.
intérêt: plus harmonique que le didgeridoo, moins monumental que l’orgue.
risque: chanson, folk, religieux, nostalgie.
condition: utiliser comme matière harmonique, pas comme accompagnement.
```

## 3.3 Orgue / orgue d’église

```text
apport: masse, architecture, espace réel, battements, beauté autonome forte.
mode possible: sample minimal, field recording instrumental, IR/empreinte, référence.
intérêt: très fort pour architecture harmonique et expansion.
risque: décor sacré, majesté évidente, ambientisation, écrasement du corps.
condition: très peu de prises, rôle structurel clair, traitement ou cadrage fort.
```

---

# 4. Relations avec la base live

## 4.1 Didgeridoo

```text
relation_possible: didgeridoo = souffle grave / corps ; bourdon = champ harmonique / battements.
complément: forte complémentarité si les registres et rôles sont séparés.
risque: accumulation de drones, perte de mouvement.
protection: un seul centre principal à la fois, ducking, pitch_center relation.
```

## 4.2 Guimbardes

```text
relation_possible: guimbardes = micro-formants / micro-pulse ; bourdon = champ continu.
complément: micro/macro, bouche/bourdon, pulsation/champ.
risque: surdensité de partiels, masque formantique.
protection: filtrage dynamique, hiérarchie de scène, densité limitée.
```

## 4.3 Sub

```text
relation_possible: sub = corps/pression ; bourdon = tension harmonique.
complément: forte si le sub garde le corps et le bourdon garde la tension.
risque: low-mid overload, grave flou, perte de mono clarity.
protection: mono low-end, split, sidechain, EQ dynamique.
```

## 4.4 Gong / tambour

```text
gong: peut ponctuer ou résoudre un champ harmonique.
tambour: peut ramener le bourdon au corps.
risque: orgue + gong + tambour = monumental/rituel trop explicite.
protection: rareté, alternance, hiérarchie, réduction de queue/halo.
```

## 4.5 Voix / field recordings

```text
voix: peut devenir signal humain dans un champ harmonique.
field recordings: peuvent fournir lieu, mais avec risque d’ambientisation accrue.
protection: ne pas empiler voix + orgue + lieu sans fonction forte.
```

---

# 5. Modes possibles

## 5.1 Live

```text
pertinent pour: shruti/harmonium si jouable et contrôlable.
avantage: souffle réel, variation, agency.
risque: complexité live, statisme, accord instable non maîtrisé.
condition: seulement si le jeu live ajoute une fonction claire.
```

## 5.2 Sample minimal

```text
pertinent pour: orgue, harmonium, shruti, drones rares.
avantage: contrôle, sélection stricte, possibilité d’avoir une masse forte sans setup live.
risque: banque de nappes, ambient, décor.
minimum possible: 1–3 drones/accords/bourdons si besoin confirmé.
maximum prudent initial: 5 avant réévaluation.
```

## 5.3 Engine / résonateur

```text
pertinent pour: battements, champs abstraits, halos contrôlés.
avantage: contrôle, adaptabilité au pitch_center, pas de banque.
risque: son synthétique, manque de souffle réel.
condition: valider si l’engine couvre la fonction avant sample.
```

## 5.4 Référence seulement

```text
pertinent pour: orientation de sound design.
avantage: évite d’ajouter une source prématurée.
risque: rester abstrait sans matériau réel.
condition: si le besoin harmonique n’est pas encore validé par scène.
```

---

# 6. Besoin de samples associé

```text
sample_need_status: conditionnel.
performative_sample_bank: non.
minimum_if_confirmed: 1–3 drones / accords / bourdons.
maximum_prudent_initial: 5.
source_preference: shruti/harmonium si besoin de souffle ; orgue si besoin d’architecture.
```

Les samples ne doivent pas couvrir “des nappes”. Ils doivent couvrir des fonctions :

```text
battement ;
champ harmonique ;
souffle tenu ;
architecture ;
expansion ;
suspension active ;
beauté autonome contrôlée.
```

---

# 7. Checks nécessaires

```text
conflict_checks_required: [ambient_excess, low_mid_load, sub_conflict, drone_static_risk, sacred_decor_risk, body_loss]
pitch_checks_required: [pitch_center, beating_rate, microtonal_relation, harmonic_density]
output_mix_checks_required: [headroom, low_mid, stereo_width, pressure, fatigue]
manual_review_required: true
```

---

# 8. Prochaine action

Créer ensuite :

```text
SOURCE_NEED_BOWED_STRING_TORSION_FIELD
```

Objectif : analyser les cordes frottées comme réponse possible à la ligne de torsion médium/aiguë, sans lyrisme ni pathos.
