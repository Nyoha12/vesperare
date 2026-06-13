# 06_YOHAN_SOURCE_CANDIDATES_AND_POTENTIAL_NEEDS

Version : v0.1  
Statut : supplément d’inventaire, propositions spontanées de Yohan, génération large de besoins potentiels. Sans validation, sans collecte audio, sans prototypage.

## Objet

Ce document accueille les propositions spontanées de Yohan :

```text
trompettes / cuivres ;
shruti box ;
orgue d’église / cathédrale ;
guimbardes, dont environ vingt jouables live ;
variations d’instruments proches ou éloignés de la guitare ;
guitares de concert et traditionnelles ;
harpes traditionnelles et de concert ;
cordes frottées ;
instruments à anches et vents ;
flûtes de concert et traditionnelles ;
hautbois ;
bassons ;
percussions traditionnelles ;
vibraphone ;
cloches ;
cloches tubulaires.
```

Ces propositions ne deviennent pas automatiquement :

```text
samples ;
assets ;
source_needs ;
modules ;
banques ;
instruments à afficher en live.
```

Elles sont des **sources candidates** à auditer par affordances, fonctions, phénomènes, rôles, risques et possibilités de traitement live / génération / hybridation.

---

# 1. Règle d’intégration

Chaque candidate doit être reliée à au moins un besoin esthétique ou phénoménal déjà défini dans :

```text
00_AESTHETIC_PHENOMENAL_NEEDS_MATRIX ;
04_SAMPLE_NEEDS_INITIAL ;
05_EXISTING_MATERIALS_AND_LIVE_TREATMENT_AUDIT.
```

Sinon, elle reste :

```text
candidate ouverte ;
référence ;
intuition à discuter ;
source possible future.
```

---

# 2. Sources candidates proposées par Yohan

## 2.1 Trompettes / cuivres

```text
candidate_id: cand_yohan_brass_01
candidate_name: trompettes / cuivres, variations de cuivres
candidate_family: cuivre / souffle / métal / projection / harmoniques / signal
source_kind: instruments acoustiques à vent
possible_variants: trompettes, cornets, bugles, trombones, cors, tubas, euphoniums, cuivres naturels ou traditionnels à discuter
sonic_affordances: attaque forte, souffle métallique, brillance, projection, sourdines possibles, harmoniques, cris, glissandi, growl, souffle, pression, signal
possible_functions: signal, cri, accent, tension, peak, couleur harmonique, rugissement, ligne vivante, éclat, appel
possible_phenomena: voix-sans-voix, brillance rythmique, intensité sans agression, champs harmoniques, torsion résonante, beauté autonome ponctuelle
possible_roles: signal de scène, cri instrumental, appel, peak harmonique, accent spectral, contrepoint à voix, halo cuivré, matière soufflée
live_potential: faible sauf collaboration ; possible plus tard
sample_potential: fort pour cris, attaques, souffles, sourdines, clusters, tenues, fragments
generation_potential: moyen pour cuivres synthétiques abstraits ; faible pour présence réaliste exposée
hybrid_potential: fort avec résonateurs, formants, filtres, spatialisation, granulation
recognition_interest: moyen à haut si exposé
abstraction_interest: fort
risk_profile: fanfare, jazz plaqué, cinéma, héroïsme, pathos, brillance agressive, trop identifiable
priority_guess: moyenne à haute selon rôle
status: proposition Yohan à auditer
notes: très intéressant pour signaux, cris, halos harmoniques et tension, mais à naturaliser fortement pour éviter l’import stylistique.
```

## 2.2 Shruti box

```text
candidate_id: cand_yohan_shruti_01
candidate_name: shruti box
candidate_family: bourdon / anche libre / souffle mécanique / battements
source_kind: instrument acoustique / mécanique
sonic_affordances: drone, battements, souffle, instabilité, respiration, centre harmonique, halo doux, tension suspendue
possible_functions: suspension, centre fragile, champ harmonique, préparation, respiration, beauté autonome
possible_phenomena: suspension / ouverture, champs harmoniques, microtensions, halo fonctionnel, beauté autonome
possible_roles: bourdon de scène, halo harmonique, couleur de suspension, appui fragile, transition
live_potential: moyen si disponible physiquement
sample_potential: fort pour drones, attaques, souffles, variations de registre
sample_need_risk: ne pas constituer corpus large avant rôle confirmé
generation_potential: moyen à fort via résonateurs / synthèse / accordage
hybrid_potential: très fort
recognition_interest: faible à moyen
abstraction_interest: fort
risk_profile: méditatif plaqué, spiritualité décorative, drone trop statique, perte de corps
priority_guess: moyenne
status: déjà candidat, renforcé par proposition Yohan
notes: à relier à microtensions, halos, champs harmoniques et suspension, pas à une couleur “spirituelle”.
```

## 2.3 Orgue d’église / cathédrale

```text
candidate_id: cand_yohan_church_organ_01
candidate_name: orgue d’église / cathédrale
candidate_family: tuyaux / souffle / architecture / résonance / masse harmonique
source_kind: instrument acoustique monumental / lieu
sonic_affordances: masse, drone, accord, profondeur, résonance de lieu, sub organique, halos, grandeur, pression, espace architectural
possible_functions: champ harmonique, suspension, intensité non agressive, peak non brutal, beauté autonome, pression spectrale, espace musical occupé
possible_phenomena: suspension / expansion, champs harmoniques, espace / halo, beauté autonome, pression corporelle, microtension
possible_roles: masse harmonique, lieu sonore, peak spatial, champ de tension, halo architectural, drone de fondation
live_potential: faible sauf accès instrument / lieu ; possible par samples ou références
sample_potential: fort mais avec prudence ; très peu de prises fortes si possible
sample_need_risk: éviter grande banque d’orgue ; privilégier quelques sources ou références
Generation_potential: moyen à fort pour orgue abstrait / résonateurs, faible pour acoustique cathédrale réelle exposée
hybrid_potential: très fort avec convolution, résonateurs, field recordings, pitch fields
recognition_interest: moyen à haut
abstraction_interest: fort
risk_profile: sacré plaqué, monumentalité illustrative, cliché cathédrale, perte techno, excès de réverbération
priority_guess: moyenne à haute si rôle de lieu/halo fort
status: proposition Yohan à auditer
notes: candidat puissant pour espace, microtension, beauté autonome et peak non brutal ; danger élevé de symbole trop lourd.
```

## 2.4 Guimbardes live

```text
candidate_id: cand_yohan_jaw_harps_01
candidate_name: guimbardes, environ vingt instruments jouables live
candidate_family: lamelle / bouche / formants / pulsation / résonance / live
source_kind: instrument acoustique live
sonic_affordances: attaque métallique, bourdon court, formants de bouche, pulsation, twang, micro-rythme, variation timbrale, jeu live, corps buccal
possible_functions: ligne vivante, torsion, brillance rythmique, polytexture, signal, micro-pulsation, hypnose active, transition
possible_phenomena: torsion résonante, hypnose active, brillance naturalisée, polytexture, champs de formants, voix-sans-voix
possible_roles: instrument live central secondaire, ligne timbrale, micro-pulse, accent métallique, formant vivant, texture de bouche
live_potential: très fort
sample_potential: moyen pour références, grains, secours, analyse
sample_need_risk: ne pas remplacer le live par banque
Generation_potential: faible pour réalisme, moyen pour renforts / formants / résonateurs
hybrid_potential: très fort avec micro, filtres, formants, résonateurs, delay, pitch, granularité
recognition_interest: moyen à haut
abstraction_interest: très fort
risk_profile: effet folklorique, gadget, son trop identifiable, nasalité fatigante, aigu métallique, perte de techno
priority_guess: très haute comme live / source candidate
status: proposition Yohan prioritaire live
notes: candidat très important car Yohan en possède environ vingt ; à penser comme live formantique / torsion / micro-pulse, pas comme banque.
```

## 2.5 Guitares, variations proches ou éloignées, concert et traditionnelles

```text
candidate_id: cand_yohan_guitars_01
candidate_name: guitares, instruments proches/éloignés de la guitare, guitares de concert et traditionnelles
candidate_family: cordes pincées / résonance / attaque / bois / harmonique / geste
source_kind: instruments à cordes
sonic_affordances: attaque pincée, harmoniques, résonance de caisse, frottements, cordes préparées, pizzicati, drones, grattements, accords, percussions de caisse
possible_functions: contour sculpté, polytexture, brillance, signal harmonique, tension, beauté autonome, ligne vivante, halo discret
possible_phenomena: contour sculpté, polytexture, champs harmoniques, beauté autonome, torsion douce, brillance naturalisée
possible_roles: attaque sèche, percussion tonale, grain harmonique, motif hypnotique, texture de corde, matière exposée
live_potential: variable selon disponibilité / pratique / collaboration
sample_potential: fort pour attaques, harmoniques, cordes préparées, frottements, résonances
Generation_potential: moyen pour plucks abstraits ; faible pour personnalité acoustique exposée
hybrid_potential: très fort avec granulation, résonateurs, pitch, delays filtrés
recognition_interest: variable
abstraction_interest: fort
risk_profile: folk / rock / classique plaqué, mélodisme trop évident, guitare illustrative, pathos
priority_guess: moyenne
status: proposition Yohan à auditer
notes: à intégrer par gestes, attaques, harmoniques et matières, pas par identité guitare.
```

## 2.6 Harpes traditionnelles et de concert

```text
candidate_id: cand_yohan_harps_01
candidate_name: harpes traditionnelles et harpes de concert
candidate_family: cordes pincées / résonance / halo / brillance / glissandi
source_kind: instruments à cordes
sonic_affordances: attaques claires, résonance, glissandi, halo harmonique, brillance douce, arpèges, corps de bois
possible_functions: suspension, expansion, beauté autonome, champs harmoniques, brillance rythmique douce, contour sculpté
possible_phenomena: suspension / ouverture, beauté autonome, champs harmoniques, brillance naturalisée, halo fonctionnel
possible_roles: matière exposée, transition, peak non brutal, halo harmonique, motif scintillant
live_potential: faible sauf collaboration
sample_potential: fort pour attaques, glissandi, harmoniques, résonances
Generation_potential: moyen pour plucks / harpes abstraites ; faible pour beauté réaliste exposée
hybrid_potential: fort
recognition_interest: moyen
abstraction_interest: fort
risk_profile: féerie, décor, new age, cliché céleste, perte du corps
priority_guess: basse à moyenne sauf rôle confirmé
status: proposition Yohan à auditer
notes: potentiellement belle mais très risquée symboliquement ; à utiliser par phénomène, pas par couleur de harpe.
```

## 2.7 Cordes frottées

```text
candidate_id: cand_yohan_bowed_strings_01
candidate_name: cordes frottées
candidate_family: cordes / friction / tension / partiels / expression
source_kind: instruments acoustiques
sonic_affordances: sustain, friction, glissandi, partiels, tension continue, microtonalité, vibrato, attaque lente, grain d’archet
possible_functions: tension, halo, suspension, beauté autonome, torsion, champs harmoniques, rugissement doux
possible_phenomena: torsion résonante, champs harmoniques, microtensions, beauté autonome, suspension / expansion
possible_roles: ligne tendue, drone, halo spectral, transition, texture frictionnelle
live_potential: faible sauf collaboration
sample_potential: fort si besoin exposé
Generation_potential: moyen par synthèse / resynthèse / granularité
hybrid_potential: très fort
recognition_interest: faible à moyen selon traitement
abstraction_interest: fort
risk_profile: cinématique, pathos, musique contemporaine plaquée, expressivité trop narrative
priority_guess: moyenne
status: proposition Yohan à auditer
notes: proche de l’entrée existante ; utile si une friction continue non métallique est nécessaire.
```

## 2.8 Instruments à anches et vents

```text
candidate_id: cand_yohan_reeds_winds_01
candidate_name: instruments à anches et vents
candidate_family: souffle / anche / formants / pression / instabilité
source_kind: instruments acoustiques à vent
sonic_affordances: souffle, grain d’anche, formants, instabilité, cris, multiphoniques, attaques, résonance de tuyau
possible_functions: tension, signal, halo, ligne vivante, brillance, beauté autonome, microtension
possible_phenomena: voix-sans-voix, torsion résonante, champs harmoniques, intensité sans agression, suspension
possible_roles: signal, cri instrumental, texture d’air, ligne formantique, halo instable
live_potential: faible sauf collaboration
sample_potential: fort pour attaques, souffles, multiphoniques, cris, tenues
Generation_potential: moyen pour souffles/anches abstraits ; faible pour réalisme exposé
hybrid_potential: très fort
recognition_interest: moyen
abstraction_interest: fort
risk_profile: classique/jazz plaqué, soloïsme, pastoral, cinéma, ornement
priority_guess: moyenne
status: proposition Yohan à auditer
notes: famille large ; à subdiviser ensuite selon rôles : souffle, cri, anche rugueuse, multiphonique, halo.
```

## 2.9 Flûtes de concert et traditionnelles

```text
candidate_id: cand_yohan_flutes_01
candidate_name: flûtes de concert et traditionnelles
candidate_family: souffle / air / attaque douce / sifflement / formants
source_kind: instruments à vent
sonic_affordances: souffle, air, fragilité, attaques douces, sifflements, harmoniques, multiphoniques possibles, bruit de clé, tube
possible_functions: suspension, texture d’air, signal discret, brillance douce, beauté autonome, respiration
possible_phenomena: halo fonctionnel, suspension, sound design écologique, voix-sans-voix, contour doux
possible_roles: air de scène, halo, transition, texture respirante, signal fin
live_potential: faible sauf collaboration
sample_potential: moyen à fort
Generation_potential: fort pour souffles abstraits, moyen pour flûtes exposées
hybrid_potential: fort
recognition_interest: faible à moyen
abstraction_interest: fort
risk_profile: pastoral, new age, flûte décorative, perte de corps, cliché traditionnel
priority_guess: basse à moyenne
status: proposition Yohan à auditer
notes: utile surtout par souffle, air, texture et multiphoniques, pas par mélodie de flûte.
```

## 2.10 Hautbois

```text
candidate_id: cand_yohan_oboe_01
candidate_name: hautbois
candidate_family: anche double / nasalité / intensité / formants
source_kind: instrument acoustique à vent
sonic_affordances: attaque nasale, projection, expressivité, tension, formants, timbre très identifiable, multiphoniques possibles
possible_functions: signal, tension, cri instrumental, couleur harmonique, ligne vivante, beauté autonome ponctuelle
possible_phenomena: voix-sans-voix, torsion résonante, champs harmoniques, intensité sans agression
possible_roles: signal aigu/médium, cri contrôlé, accent formantique, couleur instable
live_potential: faible sauf collaboration
sample_potential: moyen à fort pour attaques/cris/tenues
Generation_potential: faible pour identité, moyen pour anche abstraite
hybrid_potential: fort
recognition_interest: haut
abstraction_interest: moyen à fort
risk_profile: trop reconnaissable, classique plaqué, pathos, timbre envahissant
priority_guess: basse à moyenne sauf rôle spécifique
status: proposition Yohan à auditer
notes: à manier comme signal/tension, pas comme instrument soliste.
```

## 2.11 Bassons

```text
candidate_id: cand_yohan_bassoons_01
candidate_name: bassons
candidate_family: anche double grave / bois / formants / corps
source_kind: instrument acoustique à vent grave
sonic_affordances: grave boisé, formants, attaque d’anche, grotesque potentiel, pression douce, texture, ligne grave
possible_functions: pression, ligne vivante, tension, corps boisé, signal grave, halo sombre
possible_phenomena: pression spectrale, torsion résonante, champs harmoniques, hypnose active
possible_roles: contre-ligne grave, source de formants, matière sombre, renfort organique
live_potential: faible sauf collaboration
sample_potential: moyen à fort
Generation_potential: moyen pour anches graves abstraites
hybrid_potential: fort
recognition_interest: moyen à haut
abstraction_interest: fort
risk_profile: humour involontaire, classique, narration, timbre trop caractérisé
priority_guess: basse à moyenne
status: proposition Yohan à auditer
notes: intéressant pour grave/formants, mais doit éviter la caricature de basson.
```

## 2.12 Percussions traditionnelles

```text
candidate_id: cand_yohan_traditional_percussions_01
candidate_name: percussions traditionnelles diverses
candidate_family: percussion / peau / bois / métal / geste / rythme
source_kind: instruments acoustiques traditionnels
sonic_affordances: impacts, peaux, bois, métaux, attaques, queues, gestes, patterns, grains, corps, timbres variés
possible_functions: impact, polytexture, brillance, corps, accent, rituel abstrait, tension, danse
possible_phenomena: impact-fondation, polytexture, contour sculpté, brillance naturalisée, hypnose active
possible_roles: couche rythmique, accent, retour au corps, interlocking, micro-impacts, fondation secondaire
live_potential: variable
sample_potential: fort
Generation_potential: moyen pour placement/densité, faible pour timbres exposés
hybrid_potential: très fort
recognition_interest: variable
abstraction_interest: fort
risk_profile: world cliché, folklore plaqué, tribalisation, collection d’instruments, perte techno
priority_guess: haute à moyenne selon sous-famille
status: proposition Yohan à auditer avec prudence
notes: catégorie très large ; à subdiviser par affordances, pas par origine culturelle.
```

## 2.13 Vibraphone

```text
candidate_id: cand_yohan_vibraphone_01
candidate_name: vibraphone
candidate_family: métal accordé / résonance / tremolo / jazz / halo
source_kind: percussion tonale
sonic_affordances: attaques douces, résonance métallique accordée, tremolo, halo, sustain, brillance, couleur jazz
possible_functions: champs harmoniques, halo, brillance douce, beauté autonome, suspension, polytexture tonale
possible_phenomena: champs harmoniques, suspension, beauté autonome, brillance naturalisée, contour sculpté
possible_roles: couleur harmonique, accent tonal, halo métallique, motif scintillant, peak non brutal
live_potential: faible sauf instrument/collaboration
sample_potential: fort
Generation_potential: moyen pour version abstraite / synthèse modale
hybrid_potential: très fort
recognition_interest: moyen
abstraction_interest: fort
risk_profile: jazz plaqué, lounge, trop joli, cliché filmique, perte du corps
priority_guess: moyenne
status: proposition Yohan à auditer
notes: très cohérent pour jazz comme matière et halos, mais à éviter comme couleur jazz reconnaissable par défaut.
```

## 2.14 Cloches / cloches tubulaires

```text
candidate_id: cand_yohan_bells_tubular_01
candidate_name: cloches, cloches tubulaires
candidate_family: métal accordé / attaque / queue / partiels / rituel / signal
source_kind: instruments / objets résonants
sonic_affordances: attaque claire, queue longue, partiels, hauteur ressentie, signal, solennité, résonance, brillance
possible_functions: signal, résolution, halo, champ harmonique, beauté autonome, brillance, ponctuation formelle
possible_phenomena: champs harmoniques, halo fonctionnel, beauté autonome, tension / résolution, brillance naturalisée
possible_roles: signal d’événement, accent formel, halo métallique, résonance de scène, source de partiels
live_potential: faible à moyen selon objets disponibles
sample_potential: très fort
Generation_potential: moyen via synthèse modale/résonateurs, faible pour personnalité réelle exposée
hybrid_potential: très fort
recognition_interest: moyen à haut
abstraction_interest: fort
risk_profile: solennité, cliché religieux, décor, Noël/cérémoniel, queue envahissante
priority_guess: haute à moyenne
status: proposition Yohan à auditer
notes: proches des cloches déjà listées, mais les cloches tubulaires ajoutent un registre plus monumental/accordé.
```

---

# 3. Besoins potentiels générés depuis ces propositions

Cette section génère un maximum de besoins potentiels, sans les valider.

## 3.1 Besoins liés aux cuivres

```text
potential_need_id: pot_need_brass_signal_01
source_candidates: cand_yohan_brass_01
besoin potentiel: signal instrumental non vocal, cri cuivré, appel de scène, accent formel
axes: voix comme signal ; intensité sans agression ; tension / résolution
statut: à auditer
sample_implication: petits fragments ou attaques si la présence réelle est nécessaire ; sinon traitement/résonateur possible
risques: héroïsme, fanfare, jazz/cinéma plaqué
```

```text
potential_need_id: pot_need_brass_halo_01
source_candidates: cand_yohan_brass_01
besoin potentiel: halo cuivré, souffle métallique, queue ou résonance transformée
axes: espace / halo ; champs harmoniques ; suspension / expansion
statut: à auditer
sample_implication: peut venir de samples courts traités ou résonateurs ; pas corpus initial
risques: brillance agressive, couleur trop orchestrale
```

## 3.2 Besoins liés à shruti / orgue

```text
potential_need_id: pot_need_drone_harmonic_center_01
source_candidates: cand_yohan_shruti_01, cand_yohan_church_organ_01
besoin potentiel: centre harmonique vivant, drone, champ de tension, battements
axes: champs harmoniques ; suspension ; beauté autonome ; hypnose active
statut: à auditer
sample_implication: 1–3 drones réels peuvent suffire si besoin confirmé ; génération/résonateurs fortement possibles
risques: spiritualité plaquée, solennité, perte du corps
```

```text
potential_need_id: pot_need_architectural_halo_01
source_candidates: cand_yohan_church_organ_01
besoin potentiel: espace harmonique monumental, halo architectural, profondeur cathédrale
axes: espace / halo ; peak non brutal ; beauté autonome
statut: à auditer
sample_implication: besoin réel seulement si acoustique/lieu exposé indispensable
risques: cathédrale cliché, réverbération trop massive
```

## 3.3 Besoins liés aux guimbardes

```text
potential_need_id: pot_need_jaw_harp_live_formant_line_01
source_candidates: cand_yohan_jaw_harps_01
besoin potentiel: ligne vivante formantique jouée live, micro-pulse, torsion de bouche
axes: torsion résonante ; hypnose active ; brillance naturalisée ; live central
statut: très prometteur à auditer
sample_implication: références seulement ; live prioritaire
risques: gadget, folklore, nasalité fatigante
```

```text
potential_need_id: pot_need_jaw_harp_micropercussion_01
source_candidates: cand_yohan_jaw_harps_01
besoin potentiel: micro-impact métallique, pulsation organique, brillance rythmique jouée live
axes: brillance rythmique ; polytexture ; contour sculpté
statut: à auditer
sample_implication: quelques grains possibles comme secours, mais pas banque
risques: aigu métallique, perte de hiérarchie
```

## 3.4 Besoins liés aux cordes pincées / guitare / harpe

```text
potential_need_id: pot_need_plucked_string_microtexture_01
source_candidates: cand_yohan_guitars_01, cand_yohan_harps_01
besoin potentiel: attaques pincées, micro-impacts harmoniques, brillance douce, contour sculpté
axes: contour sculpté ; brillance rythmique ; polytexture
statut: à auditer
sample_implication: petit set possible si timbre réel nécessaire ; génération pluck possible en soutien
risques: folk, harpe féerique, guitare identifiable
```

```text
potential_need_id: pot_need_string_harmonic_beauty_01
source_candidates: cand_yohan_guitars_01, cand_yohan_harps_01
besoin potentiel: harmoniques, résonances de corde, beauté autonome, halo doux
axes: beauté autonome ; champs harmoniques ; suspension
statut: à auditer
sample_implication: 1–3 sources exposées si rôle confirmé
risques: pathos, décor, new age
```

## 3.5 Besoins liés aux cordes frottées

```text
potential_need_id: pot_need_bowed_friction_tension_01
source_candidates: cand_yohan_bowed_strings_01
besoin potentiel: friction continue, tension organique, ligne de matière, microtension
axes: torsion résonante ; champs harmoniques ; intensité sans agression
statut: à auditer
sample_implication: samples utiles si friction exposée ; sinon resynthèse/granulation possible
risques: cinématique, pathos, musique contemporaine plaquée
```

## 3.6 Besoins liés aux vents / anches / flûtes / hautbois / bassons

```text
potential_need_id: pot_need_reed_wind_voice_without_voice_01
source_candidates: cand_yohan_reeds_winds_01, cand_yohan_oboe_01, cand_yohan_bassoons_01, cand_yohan_flutes_01
besoin potentiel: voix-sans-voix, souffle instrumental, cri d’anche, formants non vocaux
axes: voix comme matière/signal ; torsion résonante ; intensité sans agression
statut: à auditer
sample_implication: fragments courts utiles si présence réelle ; génération possible pour souffle abstrait
risques: classique/jazz/pastoral plaqué, instrument soliste
```

```text
potential_need_id: pot_need_breath_air_halo_01
source_candidates: cand_yohan_flutes_01, cand_yohan_reeds_winds_01
besoin potentiel: air, souffle, respiration de scène, halo discret
axes: espace / halo ; suspension ; sound design écologique
statut: à auditer
sample_implication: très peu de samples, ou génération de souffle
risques: new age, décor, perte de corps
```

## 3.7 Besoins liés aux percussions traditionnelles

```text
potential_need_id: pot_need_traditional_percussion_body_01
source_candidates: cand_yohan_traditional_percussions_01
besoin potentiel: impact corporel acoustique, polytexture, peaux, bois, métaux
axes: techno naturalisée ; polytexture ; contour sculpté
statut: important mais dangereux à auditer
sample_implication: seulement par affordance ; ne pas constituer par origine culturelle
risques: world cliché, tribalisation, banque d’instruments
```

## 3.8 Besoins liés au vibraphone / cloches / cloches tubulaires

```text
potential_need_id: pot_need_tuned_metal_harmonic_field_01
source_candidates: cand_yohan_vibraphone_01, cand_yohan_bells_tubular_01
besoin potentiel: métal accordé, champ harmonique, résonance claire, halo tonal
axes: champs harmoniques ; brillance ; beauté autonome ; suspension
statut: à auditer
sample_implication: quelques attaques/résonances très choisies si couleur réelle nécessaire
risques: jazz/loungy, solennité, cliché cloche, trop joli
```

```text
potential_need_id: pot_need_formal_bell_signal_01
source_candidates: cand_yohan_bells_tubular_01
besoin potentiel: signal de scène, ponctuation formelle, résonance d’événement
axes: voix/signal non vocal ; tension / résolution ; beauté autonome
statut: à auditer
sample_implication: 1–3 sons peuvent suffire ; pas banque de cloches
risques: cérémoniel, religieux, décoratif
```

---

# 4. Premières priorités issues de cette nouvelle liste

## Très prometteurs

```text
guimbardes live ;
cuivres comme signaux / cris / halos transformés ;
orgue comme masse harmonique ou espace, avec extrême prudence ;
peaux / percussions traditionnelles par affordance, pas par style ;
cloches tubulaires / vibraphone pour partiels et champs harmoniques ;
anches / hautbois / bassons pour voix-sans-voix et formants.
```

## À garder mais avec risque élevé

```text
harpes ;
guitares reconnaissables ;
orgue cathédrale trop symbolique ;
hautbois très reconnaissable ;
vibraphone jazz/loungy ;
percussions traditionnelles identifiables culturellement.
```

## À tester surtout par traitement / hybridation

```text
cordes frottées ;
cuivres filtrés ;
flûtes / souffles ;
guitares préparées ;
cloches transformées ;
résonances d’orgue ;
guimbardes avec formants / résonateurs / micro-pulse.
```

---

# 5. Suite recommandée

À partir de cette extension, il faut compléter :

```text
05_EXISTING_MATERIALS_AND_LIVE_TREATMENT_AUDIT
```

avec les informations réelles :

```text
quels instruments existent physiquement ;
quels peuvent être joués live ;
quels nécessitent collaboration ou sample ;
quels sont seulement des références ;
quels risquent trop de plaquer un style ;
quels peuvent être traités à partir de 1 / 3 / 5 samples.
```

Les propositions les plus directement actionnables sont pour l’instant :

```text
guimbardes live ;
voix ;
didgeridoo ;
peaux / impacts ;
cloches / métaux ;
field recordings ;
sub / engines ;
cuivres et anches comme signaux ou textures à auditer.
```
