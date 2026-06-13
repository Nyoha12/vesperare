# SOURCE_NEED_BOWED_STRING_TORSION_FIELD

Version : v0.1  
Statut : fiche `source_need` ciblée. Sans ajout validé, sans sample confirmé, sans prototypage.

## Objet

Cette fiche définit le besoin potentiel de cordes frottées comme source de torsion médium/aiguë, friction, ligne vivante et champ de tension.

Elle répond aux manques identifiés dans :

```text
08_REMAINING_NEEDS_AFTER_LIVE_BASE_AND_COMPENSATIONS
09_TARGETED_ADDITIONAL_INSTRUMENTS_FROM_REMAINING_NEEDS
```

Elle ne valide pas encore l’ajout de cordes frottées.

Elle sert à décider si une source frottée est vraiment nécessaire pour couvrir :

```text
ligne de torsion médium ou aiguë ;
friction contrôlée ;
tension mobile ;
cri sans voix ;
microtonalité expressive ;
champ de battements ;
beauté tendue non lyrique.
```

---

# 1. SOURCE_NEED

```text
source_need_id: SOURCE_NEED_BOWED_STRING_TORSION_FIELD
source_need_origin: besoin restant + source candidate ciblée + analyse post base live
linked_documents: [08_REMAINING_NEEDS_AFTER_LIVE_BASE_AND_COMPENSATIONS, 09_TARGETED_ADDITIONAL_INSTRUMENTS_FROM_REMAINING_NEEDS]
linked_candidates: [cand_bowed_strings_01, cand_strings_01]
function_tags: [torsion, friction, ligne vivante, tension, battements, microtonalité, cri sans voix, beauté tendue]
phenomenon_tags: [corde frottée, champ de torsion, friction harmonique, battements, ligne instable, tension mobile, matière tendue]
role_target: source possible de torsion médium/aiguë et de tension frottée non lyrique
object_candidates: [Corde frottée, Friction de corde, Ligne de torsion, Champ de battements, Cri instrumental, Drone frotté]
scene_affinities: [tension, pré-drop, suspension active, expansion tendue, beauté autonome, rupture]
trajectory_affinities: [friction → tension, ligne → torsion, battements → suspension, tension → retour au corps]
centrality_level: moyenne à haute seulement si ligne de torsion non couverte par base live
quality_requirement: très haute si source exposée ; moyenne si source transformée
source_recognition_requirement: faible à moyenne ; la corde peut être reconnaissable mais ne doit pas devenir geste romantique
abstraction_allowed: forte si la fonction de torsion reste claire
live_requirement: non confirmé
sample_viability: moyenne à forte si gestes frottés réels nécessaires et source non live
generation_viability: moyenne ; forte pour résonateurs/physical modeling, faible pour friction réelle exposée
hybrid_viability: très forte
offline_preparation_viability: forte pour fragments, tenues, frottements, battements, resampling
selection_mode_default: manuel / scène / assisté ; pas automatique par défaut
risk_profile: [lyrisme, pathos, musique de film, drame plaqué, surcharge émotionnelle, perte de sécheresse, imitation orchestrale]
protected_dimensions: [tension, sécheresse sculptée, non-lyrisme, non-cinéma, corps techno, pitch_center, friction]
router_controls_expected: [Friction, Torsion, Tension, Battements, Distance, Retrait, Relation sub, Relation guimbardes, Anti-pathos]
priority_level: haute comme besoin à analyser pour torsion médium/aiguë
status: source_need à investiguer avant ajout d’instrument ou sample
```

---

# 2. Fonctions recherchées

## 2.1 Ligne de torsion médium/aiguë

```text
fonction: produire une ligne vivante dans un registre que didgeridoo et guimbardes ne couvrent pas entièrement.
rôle: tension mobile, fil continu, torsion progressive, pré-drop organique.
risque: mélodie expressive, lyrisme, solo instrumental.
protection: fragments, tenues instables, micro-intervalles, absence de phrase romantique.
```

## 2.2 Friction contrôlée

```text
fonction: créer une matière tendue, rugueuse, physique, mais non punitive.
rôle: frottement, tension, seuil, instabilité.
risque: harshness, bruit agressif, effet dramatique.
protection: filtrage, densité contrôlée, durée limitée, relation au corps.
```

## 2.3 Battements / microtonalité expressive

```text
fonction: produire des battements et instabilités par intervalles, doubles cordes, frottements ou désaccords.
rôle: champ perceptif, tension harmonique, beauté autonome, suspension active.
risque: haze harmonique, perte de pitch_center, surcharge.
protection: relation au Pitch/Harmonic Field Manager, densité limitée, centres clairs.
```

## 2.4 Cri sans voix

```text
fonction: produire une tension proche du cri sans utiliser une voix humaine explicite.
rôle: signal, rupture, tension incarnée, appel non verbal.
risque: effet cinéma, pathos, violence émotionnelle.
protection: rareté, articulation non narrative, traitement spectral, distance contrôlée.
```

## 2.5 Beauté tendue non lyrique

```text
fonction: faire apparaître une beauté fragile, tendue, matérielle, sans phrase expressive classique.
rôle: suspension, contraste, matière exposée, moment de présence.
risque: romantisme, sentimentalité, violon solo, musique de film.
protection: préparation, rugosité, microtonalité, fragmentation, refus du vibrato expressif standard.
```

---

# 3. Sources candidates internes à cette fiche

## 3.1 Violoncelle / alto / violon frottés

```text
apport: friction réelle, tension, registre médium/aigu, microtonalité, attaques frottées.
mode possible: sample minimal, live invité éventuel, resampling, traitement.
intérêt: forte capacité de ligne de torsion et de cri non vocal.
risque: lyrisme, pathos, identité classique trop forte.
condition: fragments, frottements, tenues instables ; pas de phrase instrumentale traditionnelle.
```

## 3.2 Cordes frottées préparées / objets à cordes

```text
apport: friction moins connotée, grain, instabilité, matière.
mode possible: enregistrement ciblé, sample minimal, resampling, traitement.
intérêt: moins romantique, plus matériel.
risque: bruitage, expérimental décoratif, harshness.
condition: fonction de tension claire, contrôle de densité.
```

## 3.3 Résonateurs / physical modeling de cordes

```text
apport: contrôlabilité, relation au pitch_center, variation paramétrique.
mode possible: engine/résonateur, traitement, référence.
intérêt: peut éviter corpus de samples.
risque: son synthétique, perte de friction réelle.
condition: tester si la fonction est couverte avant sample réel.
```

---

# 4. Relations avec la base live

## 4.1 Didgeridoo

```text
relation_possible: didgeridoo = souffle grave/corps ; corde frottée = torsion médium/aiguë.
complément: très fort si les registres et fonctions sont distincts.
risque: accumulation de drones ou tension trop continue.
protection: trajectoire claire, hiérarchie de registres, retrait possible.
```

## 4.2 Guimbardes

```text
relation_possible: guimbardes = micro-pulse/formants ; corde frottée = ligne tendue.
complément: micro-pulse contre ligne, bouche contre friction.
risque: saturation médium/aigu, confusion de microtensions.
protection: priorité contextuelle, filtrage, densité limitée.
```

## 4.3 Sub

```text
relation_possible: sub = corps/pression ; corde frottée = tension au-dessus du corps.
complément: forte si le sub garde l’ancrage.
risque: corde devient trop autonome et éloigne du corps.
protection: retour périodique au sub, scènes avec résolution corporelle.
```

## 4.4 Gong / tambour

```text
gong: peut résoudre ou prolonger la tension frottée.
tambour: peut couper la tension par retour au corps.
risque: cordes + gong = cinéma/drame ; cordes + tambour = rituel plaqué.
protection: rareté, non-narrativité, alternance des rôles.
```

## 4.5 Voix / field recordings

```text
voix: peut renforcer ou remplacer le cri ; attention au pathos.
field recordings: peuvent situer la friction, mais risque documentaire/ambient.
protection: éviter empilement voix + cordes + lieu sans fonction forte.
```

---

# 5. Modes possibles

## 5.1 Sample minimal

```text
pertinent pour: frottements réels, attaques, tenues instables, cri instrumental.
avantage: friction réelle, richesse, geste.
risque: banque expressive, lyrisme, cinéma.
minimum possible: 3–5 gestes si besoin confirmé.
maximum prudent initial: 10 avant réévaluation.
```

## 5.2 Live invité éventuel

```text
pertinent pour: recherche future seulement si la corde devient centrale.
avantage: agency, adaptation, expressivité contrôlée.
risque: complexité live, dérive performance instrumentale.
condition: seulement si les scènes exigent une source frottée active.
```

## 5.3 Engine / résonateur / physical modeling

```text
pertinent pour: ligne paramétrique, battements, tension contrôlée.
avantage: contrôle, relation pitch_center, pas de banque.
risque: manque de friction réelle.
condition: valider si l’engine couvre la fonction avant sample.
```

## 5.4 Référence seulement

```text
pertinent pour: orientation de sound design.
avantage: évite ajout prématuré.
risque: manque de matériau concret.
condition: si la ligne de torsion médium/aiguë n’est pas encore validée par scène.
```

---

# 6. Besoin de samples associé

```text
sample_need_status: conditionnel.
performative_sample_bank: non.
minimum_if_confirmed: 3–5 gestes frottés / tenues / attaques.
maximum_prudent_initial: 10.
source_preference: cordes préparées ou fragments non lyriques avant instruments classiques exposés.
```

Les samples ne doivent pas couvrir “des cordes”. Ils doivent couvrir des fonctions :

```text
friction ;
torsion ;
battements ;
cri sans voix ;
tenue instable ;
attaque frottée ;
beauté tendue non lyrique.
```

---

# 7. Checks nécessaires

```text
conflict_checks_required: [pathos_risk, cinematic_risk, mid_high_density, pitch_center_conflict, body_loss, harshness]
pitch_checks_required: [microtonal_relation, beating_rate, pitch_center, harmonic_density]
output_mix_checks_required: [mid_high_fatigue, headroom, distance, tension, return_to_body]
manual_review_required: true
```

---

# 8. Prochaine action

Créer ensuite :

```text
SOURCE_NEED_TUNED_METAL_PARTIALS_BELLS_VIBRAPHONE
```

Objectif : analyser métaux accordés / cloches / vibraphone comme réponse possible aux partiels contrôlés, signaux harmoniques et beauté autonome, sans décor féerique ni new age.
