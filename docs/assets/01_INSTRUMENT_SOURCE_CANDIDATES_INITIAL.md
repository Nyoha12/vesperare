# 01_INSTRUMENT_SOURCE_CANDIDATES_INITIAL

Version : v0.1  
Statut : inventaire initial ouvert, sans prototypage, sans collecte audio.

## Objet

Ce document rassemble les premiers instruments, sources, matières, objets, lieux ou familles sonores candidates pour Vesperare.

Il ne constitue pas :

```text
une liste définitive d’instruments ;
une banque de samples ;
un plan d’enregistrement ;
un choix d’outils ;
un système de suggestion live.
```

Il sert à préparer la future base de données en amont des `source_needs`.

Chaîne :

```text
intuition / fonction / esthétique / inspiration / lacune
→ instrument_source_candidate
→ affordances sonores
→ fonctions possibles
→ phénomènes possibles
→ source_need éventuel
→ asset / sample / live / engine / pool.
```

---

# 1. Règles de cet inventaire

```text
1. Un candidat peut être listé sans être validé.
2. Un candidat n’est pas encore un asset.
3. Un candidat n’est pas encore un sample à chercher.
4. Un candidat peut venir de Yohan, d’une fonction, d’une lacune ou d’une intuition.
5. Un candidat doit ensuite être évalué par affordances.
6. Un candidat peut être refusé, différé ou gardé comme référence.
7. Une source très désirable peut rester manuelle / live / sample / hybride / référence selon le contexte.
8. Les risques esthétiques sont notés tôt, sans censurer trop vite la candidate.
```

---

# 2. Champs utilisés

```text
candidate_id
candidate_name
candidate_family
source_kind
sonic_affordances
possible_functions
possible_phenomena
possible_roles
aesthetic_links
inspiration_links
live_potential
sample_potential
generation_potential
hybrid_potential
recognition_interest
abstraction_interest
risk_profile
priority_guess
status
notes
```

---

# 3. Candidats prioritaires déjà très compatibles

## 3.1 Gongs

```text
candidate_id: cand_gong_01
candidate_name: gongs
candidate_family: métal / résonance / impact / partiels
source_kind: instrument acoustique
sonic_affordances: [impact, masse, queue longue, partiels inharmoniques, halo, résolution, menace, beauté autonome]
possible_functions: [impact, résolution, halo, tension, beauté autonome, retour au corps]
possible_phenomena: [impact-fondation, halo fonctionnel, torsion résonante, beauté autonome exposée]
possible_roles: [masse de résolution, halo métallique, rugissement, champ de partiels, événement central]
aesthetic_links: [techno corporelle, nuit, mystère, intensité non agressive, matérialité]
inspiration_links: [métal rituel sans folklore, son acoustique réel, tension longue]
live_potential: moyen
sample_potential: très fort
generation_potential: faible pour réalisme complet ; moyen pour renfort spectral
hybrid_potential: très fort
recognition_interest: moyen à haut
abstraction_interest: fort
risk_profile: [queue incontrôlée, bas-médium, sub masking, gong décoratif, dramatisme trop évident]
priority_guess: très haute
status: prioritaire
notes: candidat central ; probablement petit corpus haute qualité + traitements, pas grande banque décorative.
```

## 3.2 Bols / cloches / clochettes / cymbalettes

```text
candidate_id: cand_bells_bowls_01
candidate_name: bols, cloches, clochettes, cymbalettes
candidate_family: métal / brillance / partiels / micro-impacts
source_kind: instruments acoustiques / objets résonants
sonic_affordances: [attaque claire, brillance, queue, scintillement, partiels, ponctuation, fragilité]
possible_functions: [brillance rythmique, accent, halo, micro-variation, signal léger]
possible_phenomena: [brillance rythmique naturalisée, halo fonctionnel, polytexture percussive raffinée]
possible_roles: [ornement actif, micro-pulsation, accent spectral, halo secondaire]
aesthetic_links: [sécheresse sculptée, précision, naturalisation des aigus]
inspiration_links: [hi-hat naturalisé, percussion harmonique, complexité lisible]
live_potential: faible à moyen
sample_potential: fort
generation_potential: moyen pour grains synthétiques, faible pour beauté réaliste complète
hybrid_potential: fort
recognition_interest: faible à moyen
abstraction_interest: fort
risk_profile: [aigus fatigants, couleur exotique, décor, trop joli, perte du corps]
priority_guess: moyenne à haute
status: à préparer après priorités corps/gongs/voix/sub
notes: utile pour remplacer/fantômiser certaines fonctions de hi-hat sans devenir simple décoration.
```

## 3.3 Voix

```text
candidate_id: cand_voice_01
candidate_name: voix parlée / chantée / criée / soufflée / fragmentée
candidate_family: humain / formants / signal / matière
source_kind: voix
sonic_affordances: [formants, souffle, sémantique, cri, proximité, fragilité, grain, attaque consonantique]
possible_functions: [signal, tension, rupture, matière, halo humain, présence, hook non chanson]
possible_phenomena: [voix signal, voix matière, torsion résonante, beauté autonome exposée]
possible_roles: [signal, fragment, cri, texture, halo humain, événement sémantique, matière granulaire]
aesthetic_links: [présence humaine, nuit, mystère, singularité, tension]
inspiration_links: [parole, rituel non folklorique, corps, club hors-chanson]
live_potential: fort si performance vocale assumée
sample_potential: fort pour fragments / souffles / phonèmes
sample_potential_signal: manuel ou assisté uniquement
generation_potential: faible pour voix réelle ; moyen pour traitement/formants
hybrid_potential: très fort
recognition_interest: variable selon rôle ; haut pour signal
abstraction_interest: très fort
risk_profile: [chanson involontaire, gimmick vocal, sémantique non contrôlée, formants masqués, pathos]
priority_guess: très haute
status: prioritaire
notes: séparer très tôt voix signal, voix matière, voix souffle, voix sémantique.
```

## 3.4 Didgeridoo

```text
candidate_id: cand_didgeridoo_01
candidate_name: didgeridoo
candidate_family: souffle / grave / formants / live
source_kind: instrument acoustique live
sonic_affordances: [bourdon grave, souffle, formants, rugosité, pulsation organique, agency humaine]
possible_functions: [corps, tension, torsion, drone vivant, ligne grave, transition]
possible_phenomena: [torsion résonante, pression spectrale corporelle, halo grave, retour au corps]
possible_roles: [live central, matière grave, formants vivants, support de torsion, renfort corporel]
aesthetic_links: [corps, souffle, intensité, singularité]
inspiration_links: [live input, drone organique, tension grave]
live_potential: très fort
sample_potential: moyen, surtout référence / secours / texture / analyse
generation_potential: faible pour substitution complète ; moyen pour renfort / formants synthétiques
hybrid_potential: très fort
recognition_interest: moyen à haut
abstraction_interest: moyen
risk_profile: [remplacer le live, latence, sub concurrent, couleur trop identifiable, quantification excessive]
priority_guess: très haute
status: prioritaire live
notes: ne doit pas être réduit à une banque de samples ; live prioritaire.
```

## 3.5 Sub / renfort grave / fondation synthétique

```text
candidate_id: cand_sub_01
candidate_name: sub / renfort grave / fondation synthétique
candidate_family: synthèse / corps / pression / stabilité
source_kind: source électronique / engine paramétrique
sonic_affordances: [stabilité, pression, contrôle, centre, retour au corps, mono-compatible]
possible_functions: [corps, ancrage, pression, résolution, trace]
possible_phenomena: [impact-fondation, pression spectrale corporelle, retour au corps]
possible_roles: [fondation principale, trace corporelle, renfort, stabilisateur]
aesthetic_links: [techno, club, corps, intensité]
inspiration_links: [sub techno, dubstep déconstruit, pression contrôlée]
live_potential: non pertinent comme instrument acoustique ; fort comme contrôle live
sample_potential: faible sauf références
generation_potential: très fort
hybrid_potential: fort avec sources acoustiques
recognition_interest: faible
abstraction_interest: fort
risk_profile: [sub générique, largeur excessive, instabilité, pression réduite au volume]
priority_guess: très haute
status: prioritaire engine
notes: pas de preset automatique ; engine stable et safe ranges.
```

---

# 4. Candidats corporels / percussifs à évaluer vite

## 4.1 Tambours sur cadre / peaux

```text
candidate_id: cand_frame_drum_01
candidate_name: tambours sur cadre / peaux graves / peaux frappées
candidate_family: peau / corps / percussion
source_kind: instrument acoustique
sonic_affordances: [attaque large, grave acoustique, peau, geste humain, résonance courte, chaleur corporelle]
possible_functions: [impact, corps, retour, accent, polytexture]
possible_phenomena: [impact-fondation, polytexture percussive raffinée, retour au corps]
possible_roles: [fondation acoustique, accent large, couche rythmique, renfort corporel]
aesthetic_links: [techno corporelle, rituel sans folklore, sécheresse sculptée]
inspiration_links: [percussion acoustique, polytexture, club naturalisé]
live_potential: moyen
sample_potential: fort
generation_potential: faible à moyen
hybrid_potential: fort
recognition_interest: moyen
abstraction_interest: fort
risk_profile: [tribalisation, world cliché, bas-médium, attaque trop molle, perte techno]
priority_guess: haute
status: candidat à évaluer vite
notes: intéressant si le geste reste sculpté et non folklorique.
```

## 4.2 Objets frappés / bois / pierres

```text
candidate_id: cand_objects_wood_stone_01
candidate_name: objets frappés, bois, pierres, surfaces sèches
candidate_family: objet / sec / grain / impact
source_kind: objets / matières
sonic_affordances: [attaque sèche, irrégularité, grain, micro-impact, naturel non instrumental]
possible_functions: [brillance rythmique, polytexture, accent, micro-variation, texture]
possible_phenomena: [polytexture percussive raffinée, brillance naturalisée, densité articulée]
possible_roles: [micro-impact, couche rythmique, ornement, accent discret]
aesthetic_links: [sécheresse sculptée, naturalisation, complexité lisible]
inspiration_links: [interlocking, objet concret, matière]
live_potential: moyen
sample_potential: fort
generation_potential: moyen pour placement / densité
hybrid_potential: fort
recognition_interest: faible à moyen
abstraction_interest: fort
risk_profile: [bruitage, décor, banque de one-shots, perte de hiérarchie]
priority_guess: moyenne
status: à évaluer
notes: utile surtout si relié à polytexture, pas comme collection d’objets.
```

## 4.3 Métaux frappés / frottés / raclés

```text
candidate_id: cand_scraped_metal_01
candidate_name: métaux frappés, frottés, raclés
candidate_family: métal / rugosité / partiels / bruit
source_kind: objets / instruments étendus
sonic_affordances: [rugosité, brillance, friction, partiels, attaques irrégulières, tension]
possible_functions: [tension, friction, brillance, rugissement, transition, halo sale]
possible_phenomena: [pression spectrale corporelle, torsion résonante, brillance rythmique, halo rugueux]
possible_roles: [friction de transition, rugissement, texture tendue, accent métallique]
aesthetic_links: [matière, intensité, industrialité non cliché]
inspiration_links: [acid/torsion, techno métallique, sound design physique]
live_potential: moyen
sample_potential: fort
generation_potential: moyen pour textures, faible pour détails réalistes
hybrid_potential: très fort
recognition_interest: faible à moyen
abstraction_interest: très fort
risk_profile: [agressivité inutile, fatigue aiguë, cliché industriel, masque voix/sub]
priority_guess: moyenne à haute
status: à évaluer
notes: peut servir la tension sans devenir agressif si contrôlé.
```

---

# 5. Candidats harmoniques / drones / halos à discuter

## 5.1 Shruti box / harmonium

```text
candidate_id: cand_shruti_harmonium_01
candidate_name: shruti box / harmonium
candidate_family: bourdon / souffle / accord / battements
source_kind: instrument acoustique / mécanique
sonic_affordances: [bourdon, souffle, instabilité, battements, respiration, centre harmonique]
possible_functions: [suspension, halo, tension douce, centre, beauté autonome]
possible_phenomena: [halo fonctionnel, champ harmonique, suspension, beauté exposée]
possible_roles: [centre fragile, drone vivant, halo harmonique, soutien de transition]
aesthetic_links: [nuit, mystère, respiration, tension longue]
inspiration_links: [drone acoustique, trance déconstruite, respiration mécanique]
live_potential: faible à moyen
sample_potential: fort
generation_potential: moyen par synthèse / résonateur
hybrid_potential: fort
recognition_interest: variable
abstraction_interest: fort
risk_profile: [trop méditatif, couleur trop identifiable, décor spirituel]
priority_guess: moyenne
status: candidat à discuter
notes: intéressant pour halo/suspension si la couleur est déplacée hors cliché.
```

## 5.2 Cordes frottées / cordes préparées

```text
candidate_id: cand_bowed_strings_01
candidate_name: cordes frottées / cordes préparées / drones de cordes
candidate_family: corde / friction / tension / partiels
source_kind: instrument acoustique / geste
sonic_affordances: [friction, tension continue, partiels, instabilité, expressivité, attaque lente]
possible_functions: [tension, suspension, halo, rugissement doux, beauté autonome]
possible_phenomena: [torsion résonante, halo fonctionnel, pression spectrale, beauté exposée]
possible_roles: [ligne tendue, texture frictionnelle, halo spectral, transition]
aesthetic_links: [matière organique, tension, nuit]
inspiration_links: [jazz déconstruit, drone, musique contemporaine, timbre]
live_potential: faible sauf collaborateur
sample_potential: fort si disponible
generation_potential: moyen par synthèse physique / granulation
hybrid_potential: fort
recognition_interest: faible à moyen
abstraction_interest: fort
risk_profile: [cinématique, pathos, trop expressif, hors techno si mal placé]
priority_guess: basse à moyenne
status: candidat à discuter
notes: à garder comme option si besoin de friction continue non vocale.
```

## 5.3 Flûtes / souffles / tuyaux

```text
candidate_id: cand_flutes_breaths_01
candidate_name: flûtes, souffles, tuyaux, air résonant
candidate_family: souffle / air / formants / attaques douces
source_kind: instrument acoustique / geste / objet
sonic_affordances: [souffle, air, attaque douce, instabilité, respiration, formants]
possible_functions: [halo humain/non humain, suspension, fragilité, signal faible]
possible_phenomena: [halo fonctionnel, voix sans voix, texture d’air, beauté fragile]
possible_roles: [souffle secondaire, transition, air, halo]
aesthetic_links: [nuit, espace, présence discrète]
inspiration_links: [respiration, naturalisation, écosystème]
live_potential: faible à moyen
sample_potential: moyen à fort
generation_potential: moyen
hybrid_potential: fort
recognition_interest: faible à moyen
abstraction_interest: fort
risk_profile: [new age, pastoral, décor, perte de corps]
priority_guess: basse à moyenne
status: candidat à discuter
notes: seulement si relié à fonction d’air/respiration, pas comme couleur décorative.
```

---

# 6. Candidats naturels / lieux / flux

## 6.1 Eau / pluie / gouttes / flux

```text
candidate_id: cand_water_rain_01
candidate_name: eau, pluie, gouttes, flux, ruissellements
candidate_family: géophonie / microtexture / flux
source_kind: matière naturelle / field recording / procédural
sonic_affordances: [micro-événements, densité, flux, bruit, scintillement, turbulence, continuité]
possible_functions: [microtexture, halo, densité, post-résonance, masque contrôlé, transition]
possible_phenomena: [eau/pluie/flux naturels, halo fonctionnel, densité naturelle]
possible_roles: [microtexture secondaire, flux de transition, halo granulaire, contrepoint naturel]
aesthetic_links: [écologie sonore, nuit, espace, matière]
inspiration_links: [Wildesign, BIOTA, synthèse procédurale de l’eau]
live_potential: faible
sample_potential: fort
generation_potential: fort pour densité / droplets / flux stylisés
hybrid_potential: très fort
recognition_interest: faible à moyen
abstraction_interest: fort
risk_profile: [décor naturaliste, masque, banque énorme, texture permanente]
priority_guess: moyenne
status: à préparer après candidats centraux
notes: bon terrain pour samples + procédural, mais secondaire et contrôlé.
```

## 6.2 Field recordings / lieux nocturnes

```text
candidate_id: cand_field_recording_01
candidate_name: field recordings / lieux nocturnes / espaces réels
candidate_family: lieu / espace / mémoire / profondeur
source_kind: lieu / field recording
sonic_affordances: [profondeur, contexte, air, imprévu, distance, mémoire, silence relatif]
possible_functions: [espace, suspension, beauté autonome, transition, contexte sensible]
possible_phenomena: [field recording / lieux, halo fonctionnel, beauté autonome exposée]
possible_roles: [lieu exposé, halo de scène, couche de profondeur, post-résonance]
aesthetic_links: [nuit, mystère, Vesperare, espace non décoratif]
inspiration_links: [écologie sonore, soundscape, BIOTA]
live_potential: faible
sample_potential: très fort
generation_potential: faible pour identité, moyen pour simulation d’espace
hybrid_potential: fort
recognition_interest: moyen selon rôle
abstraction_interest: fort
risk_profile: [paysage sonore plaqué, ambientisation, perte de tension techno, documentaire]
priority_guess: haute mais en petit nombre
status: prioritaire en sélection stricte
notes: peu de lieux, très sélectionnés ; pas collection de paysages.
```

---

# 7. Candidats électroniques / synthétiques naturalisés

## 7.1 Synthèse physique / modale / résonateurs

```text
candidate_id: cand_modal_physical_synthesis_01
candidate_name: synthèse modale / résonateurs / synthèse physique partielle
candidate_family: engine / résonance / hybride
source_kind: source électronique / engine
sonic_affordances: [contrôle, continuité, résonance accordable, hybridation, variation]
possible_functions: [halo, partiels, renfort, post-résonance, tension]
possible_phenomena: [halo fonctionnel, champ harmonique, renfort spectral, torsion]
possible_roles: [renfort de source réelle, halo synthétique, stabilisateur harmonique]
aesthetic_links: [synthèse comme phénomène physique, pas preset]
inspiration_links: [Max for Live, sound design physique, hybridation]
live_potential: fort comme engine
sample_potential: non central
generation_potential: très fort
hybrid_potential: très fort
recognition_interest: faible
abstraction_interest: fort
risk_profile: [son générique, engine imposant son esthétique, trop propre]
priority_guess: haute comme famille technique, pas comme son final
status: à garder comme famille d’engines
notes: à relier au Mapper, Pitch et Conflict, pas à choisir par goût.
```

## 7.2 Procédural percussif / micro-événements

```text
candidate_id: cand_procedural_micro_events_01
candidate_name: procédural micro-événements / densité / grains
candidate_family: génératif / rythme / densité
source_kind: engine / processus
sonic_affordances: [variation, densité, probabilités, microtiming, dynamique]
possible_functions: [polytexture, microvariation, brillance, vie, transition]
possible_phenomena: [polytexture percussive raffinée, brillance naturalisée, eau/pluie procédurale]
possible_roles: [placement, densification, variation secondaire, micro-ornement]
aesthetic_links: [complexité lisible, vivant, non mécanique]
inspiration_links: [BIOTA, Wildesign, Keita Ogawa/polytexture]
live_potential: fort comme contrôle
sample_potential: dépend des grains
Generation_potential: très fort
hybrid_potential: très fort
recognition_interest: faible
abstraction_interest: fort
risk_profile: [hasard décoratif, perte de hiérarchie, automatisation prématurée]
priority_guess: moyenne à haute
status: à intégrer après source_needs
notes: ce n’est pas un instrument, mais une famille de processus candidates.
```

---

# 8. Emplacements pour propositions spontanées de Yohan

Ces entrées sont prévues pour accueillir des idées sans les forcer.

```text
candidate_id: cand_user_spontaneous_01
candidate_name: à renseigner
candidate_family: à renseigner
source_kind: à renseigner
sonic_affordances: à décrire
possible_functions: à déduire
possible_phenomena: à déduire
possible_roles: à déduire
aesthetic_links: à déduire
inspiration_links: à déduire
live_potential: à évaluer
sample_potential: à évaluer
generation_potential: à évaluer
hybrid_potential: à évaluer
recognition_interest: à évaluer
abstraction_interest: à évaluer
risk_profile: à identifier
priority_guess: à décider
status: proposition ouverte
notes: entrée de travail.
```

```text
candidate_id: cand_user_spontaneous_02
candidate_name: à renseigner
status: proposition ouverte
```

```text
candidate_id: cand_user_spontaneous_03
candidate_name: à renseigner
status: proposition ouverte
```

---

# 9. Première synthèse des priorités

## Priorité très haute

```text
gongs ;
voix ;
didgeridoo ;
sub / fondation ;
impacts corporels ;
field recordings strictement sélectionnés.
```

## Priorité haute à moyenne

```text
tambours sur cadre / peaux ;
métaux frappés / frottés ;
bols / cloches / cymbalettes ;
eau / pluie / flux ;
procédural micro-événements ;
synthèse modale / résonateurs.
```

## À discuter

```text
shruti box / harmonium ;
cordes frottées / préparées ;
flûtes / souffles / tuyaux ;
objets bois / pierres ;
autres propositions de Yohan.
```

---

# 10. Prochaine étape

À partir de cet inventaire, créer les premières fiches :

```text
SOURCE_NEED_GONG_RESOLUTION ;
SOURCE_NEED_VOICE_SIGNAL ;
SOURCE_NEED_DIDGERIDOO_LIVE ;
SOURCE_NEED_SUB_FOUNDATION ;
SOURCE_NEED_FIELD_RECORDING_BEAUTY ;
SOURCE_NEED_POLYTEXTURE_MICRO_IMPACTS ;
SOURCE_NEED_WATER_MICROTEXTURE.
```

Avant cela, il est utile que Yohan ajoute une liste brute d’instruments ou sources qu’il a déjà en tête, même désordonnée.
