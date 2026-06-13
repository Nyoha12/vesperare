# SOURCE_NEED_TUNED_METAL_PARTIALS_BELLS_VIBRAPHONE

Version : v0.1  
Statut : fiche `source_need` ciblée. Sans ajout validé, sans sample confirmé, sans prototypage.

## Objet

Cette fiche définit le besoin potentiel de métaux accordés, cloches, cloches tubulaires, bols, cymbales accordées, vibraphone ou sources apparentées.

Elle répond aux manques identifiés dans :

```text
08_REMAINING_NEEDS_AFTER_LIVE_BASE_AND_COMPENSATIONS
09_TARGETED_ADDITIONAL_INSTRUMENTS_FROM_REMAINING_NEEDS
```

Elle ne valide pas encore l’ajout de métaux accordés ou de vibraphone.

Elle sert à décider si une source métallique accordée est vraiment nécessaire pour couvrir :

```text
partiels contrôlés ;
signaux harmoniques ;
brillance non punitive ;
beauté autonome ponctuelle ;
microtensions ;
résonance accordée ;
ponctuation formelle ;
champ métallique précis.
```

---

# 1. SOURCE_NEED

```text
source_need_id: SOURCE_NEED_TUNED_METAL_PARTIALS_BELLS_VIBRAPHONE
source_need_origin: besoin restant + source candidate ciblée + analyse post base live
linked_documents: [08_REMAINING_NEEDS_AFTER_LIVE_BASE_AND_COMPENSATIONS, 09_TARGETED_ADDITIONAL_INSTRUMENTS_FROM_REMAINING_NEEDS]
linked_candidates: [cand_vibraphone_01, cand_bells_01, cand_tubular_bells_01, cand_bowls_01, cand_tuned_metals_01]
function_tags: [partiels contrôlés, métal accordé, signal harmonique, beauté autonome, brillance, microtension, halo court]
phenomenon_tags: [cloche, vibraphone, bol, métal accordé, partiels stables, halo métallique, signal harmonique, tension brillante]
role_target: source possible de métal harmonique précis et de partiels contrôlés
object_candidates: [Vibraphone, Cloche, Cloche tubulaire, Bol, Cymbale accordée, Métal résonant accordé]
scene_affinities: [signal, beauté autonome, suspension, résolution, pré-drop, ponctuation, transition]
trajectory_affinities: [signal → halo, partiel → tension, métal → résolution, brillance → retrait, beauté → retour au corps]
centrality_level: moyenne à haute seulement si partiels contrôlés ou signaux métalliques sont confirmés
quality_requirement: très haute si source exposée ; moyenne si source transformée
source_recognition_requirement: variable ; faible pour métal abstrait, moyenne/haute pour cloche ou vibraphone exposé
abstraction_allowed: forte si le rôle est partiel/halo ; faible si la source devient décor identifiable
live_requirement: non confirmé
sample_viability: forte si source réelle nécessaire et non disponible live
generation_viability: moyenne à forte pour résonateurs/partials ; faible si besoin de résonance réelle exposée
hybrid_viability: très forte
offline_preparation_viability: forte pour attaques, queues, partiels, versions filtrées, résonateurs, resampling
selection_mode_default: manuel / scène / assisté ; pas automatique par défaut
risk_profile: [carillon décoratif, new age, féerie, jazz lounge, cloche illustrative, surcharge métallique, brillance punitive]
protected_dimensions: [partiels, brillance, non-décor, tension, corps, pitch_center, confort aigu]
router_controls_expected: [Signal métallique, Partiels, Brillance, Queue, Halo court, Distance, Retrait, Relation gong, Relation guimbardes, Anti-carillon]
priority_level: moyenne à haute comme besoin à analyser
status: source_need à investiguer avant ajout d’instrument ou sample
```

---

# 2. Fonctions recherchées

## 2.1 Partiels contrôlés

```text
fonction: obtenir des partiels plus précis ou stables que ceux du gong et plus tenus que ceux des guimbardes.
rôle: tension harmonique, signal de scène, point de couleur, ancrage spectral.
risque: son décoratif, cloche illustrative, perte de corps.
protection: rôle formel clair, relation au pitch_center, rareté.
```

## 2.2 Signal harmonique

```text
fonction: produire un événement métallique accordé qui agit comme marqueur ou appel.
rôle: ponctuation, seuil, pré-drop, changement d’état, balise harmonique.
risque: carillon, féérie, effet théâtral.
protection: durée courte, contexte de tension, traitement, non-répétition décorative.
```

## 2.3 Beauté autonome ponctuelle

```text
fonction: laisser émerger un son beau, précis, réel, sans devenir nappe ou décoration.
rôle: respiration, suspension, rare apparition, tension de beauté.
risque: new age, douceur illustrative, sortie du corps techno.
protection: rareté, retour au corps, relation à la pression et à la scène.
```

## 2.4 Brillance non punitive

```text
fonction: apporter de la brillance sans agressivité et sans surcharge aiguë.
rôle: clarté, contour, éclat ponctuel, signal de surface.
risque: fatigue, brillance punitive, masque guimbardes/voix.
protection: high safety, EQ dynamique, densité limitée.
```

## 2.5 Halo métallique court / queue contrôlée

```text
fonction: créer une résonance métallique contrôlée, plus courte ou plus stable qu’un gong.
rôle: post-impact, queue fonctionnelle, espace métallique, transition.
risque: décor, accumulation de queues, flou harmonique.
protection: tail control, ducking, queue par scène, Conflict Manager.
```

---

# 3. Sources candidates internes à cette fiche

## 3.1 Vibraphone

```text
apport: métal accordé, sustain contrôlable, attaques nettes, beauté précise.
mode possible: sample minimal, resampling, traitement, référence ; live invité éventuel plus tard.
intérêt: forte capacité de signaux harmoniques et partiels contrôlés.
risque: jazz décoratif, lounge, féerie, douceur trop illustrative.
condition: notes rares, préparées, traitées, en fonction de tension ou signal.
```

## 3.2 Cloches / cloches tubulaires

```text
apport: signal fort, partiels stables, queue longue, marqueur formel.
mode possible: sample minimal, traitement, référence.
intérêt: forte capacité de signal harmonique.
risque: carillon, rituel plaqué, cloche illustrative, monumentalité facile.
condition: très peu de sons, rôle formel clair, relation pitch_center.
```

## 3.3 Bols / cymbales accordées / cymbalettes

```text
apport: partiels, battements, queues, brillance, matière métallique fine.
mode possible: live ponctuel, sample minimal, résonateur, traitement.
intérêt: pont entre gong macro et guimbardes micro.
risque: new age, relaxation, sonothérapie, halo décoratif.
condition: attaque/queue/partiels utilisés pour tension ou signal, pas pour bien-être sonore.
```

## 3.4 Métaux résonants accordés ou préparés

```text
apport: identité moins connotée, partiels spécifiques, attaques et queues originales.
mode possible: enregistrement ciblé, sample minimal, résonateur, resampling.
intérêt: singularité sans référence instrumentale trop forte.
risque: bruitage, accumulation d’objets, perte de lisibilité.
condition: sélection par fonction, pas par curiosité sonore.
```

---

# 4. Relations avec la base live

## 4.1 Gong

```text
relation_possible: gong = macro-métal / masse ; métaux accordés = signaux ou partiels plus précis.
complément: fort si l’un porte la masse et l’autre la précision.
risque: surcharge métallique, confusion queue/halo, trop de brillance.
protection: alternance, priorités, limitation de queue, hiérarchie spectrale.
```

## 4.2 Guimbardes

```text
relation_possible: guimbardes = micro-métal vivant ; vibraphone/cloches = métal accordé stable.
complément: fort si contraste micro-pulse / partiel stable.
risque: masque aigu, fatigue, accumulation de petits métaux.
protection: high safety, densité limitée, séparation temporelle.
```

## 4.3 Didgeridoo

```text
relation_possible: didgeridoo = souffle/pression grave ; métal accordé = éclat ou balise harmonique.
complément: fort si le métal reste ponctuel et le didgeridoo garde le corps.
risque: métal trop décoratif au-dessus du souffle.
protection: relation de scène, rareté, rôle formel.
```

## 4.4 Sub

```text
relation_possible: sub = corps/pitch_center ; métal accordé = repère harmonique ou tension de partiels.
complément: fort si les partiels dialoguent avec le centre grave.
risque: conflit de pitch_center, brillance déconnectée du corps.
protection: Pitch/Harmonic Field Manager, relation au centre, retour au corps.
```

## 4.5 Tambour / voix / field recordings

```text
tambour: peut ramener l’éclat métallique au corps.
voix: peut être signal humain contre signal métallique.
field recordings: peuvent situer ou prolonger, avec risque décoratif.
protection: ne pas empiler cloche + voix + lieu comme scène illustrative.
```

---

# 5. Modes possibles

## 5.1 Sample minimal

```text
pertinent pour: attaques, queues, partiels réels, signaux rares.
avantage: réalité acoustique, richesse des partiels, contrôle de sélection.
risque: banque de cloches, carillon, décor.
minimum possible: 3–5 sons si besoin confirmé.
maximum prudent initial: 12 avant réévaluation.
```

## 5.2 Live ponctuel éventuel

```text
pertinent pour: bols, petites cloches, cymbalettes, métaux simples.
avantage: agency, variation, relation au geste.
risque: complexité live, remplissage, geste décoratif.
condition: seulement si le rôle est fort et jouable.
```

## 5.3 Engine / résonateur / modal synthesis

```text
pertinent pour: partiels contrôlés, halos courts, signaux abstraits.
avantage: contrôle, relation pitch_center, pas de banque.
risque: métal faux, perte de beauté réelle.
condition: tester si la fonction est couverte avant sample réel.
```

## 5.4 Référence seulement

```text
pertinent pour: orientation de timbre et de mix.
avantage: évite ajout prématuré.
risque: pas de matériau réel si besoin confirmé.
condition: si les scènes ne requièrent pas encore métal accordé.
```

---

# 6. Besoin de samples associé

```text
sample_need_status: conditionnel.
performative_sample_bank: non.
minimum_if_confirmed: 3–5 attaques / queues / signaux métalliques.
maximum_prudent_initial: 12.
source_preference: sources très différenciées par fonction, pas collection d’instruments.
```

Les samples ne doivent pas couvrir “des cloches” ou “un vibraphone”. Ils doivent couvrir des fonctions :

```text
signal harmonique ;
partiel contrôlé ;
queue métallique ;
beauté autonome ponctuelle ;
brillance non punitive ;
ponctuation formelle ;
microtension métallique.
```

---

# 7. Checks nécessaires

```text
conflict_checks_required: [metal_overload, high_fatigue, gong_conflict, jaw_harp_masking, voice_masking, decorative_carillon_risk]
pitch_checks_required: [pitch_center, partial_relation, tuning, beating_rate, harmonic_density]
output_mix_checks_required: [high comfort, tail control, headroom, brightness, return_to_body]
manual_review_required: true
```

---

# 8. Prochaine action

Après ces trois source_needs de priorité haute :

```text
comparer les trois priorités hautes ;
décider lesquelles méritent un material_asset schema ou une recherche de sources ;
mettre à jour la matrice des manques restants si une source couvre un besoin.
```
