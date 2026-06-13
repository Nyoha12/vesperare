# 05_EXISTING_MATERIALS_AND_LIVE_TREATMENT_AUDIT

Version : v0.2  
Statut : audit pratique corrigé. Hypothèse de départ : **aucun sample initial**. Sources live fixes : **didgeridoo + guimbardes**. Sources live occasionnelles : **1 gong parmi 5**, **1 tambour sur cadre parmi 3**.

## Objet

Ce document corrige une hypothèse précédente : il ne s’agit pas de demander d’abord quels samples existent déjà.

Pour l’instant, on part de :

```text
aucun sample initial supposé ;
possibilité de trouver / enregistrer / acheter des samples si un besoin réel le justifie ;
objectif : déduire le minimum réellement nécessaire ;
génération / simulation à déterminer par analyse spécifique des besoins réels initiaux ;
aucun remplacement par génération ou par sample n’est présupposé.
```

Ce document sert donc à répondre à la question :

```text
À partir des besoins réels initiaux de Vesperare,
et en partant de zéro sample,
qu’est-ce qui est couvert par le live fixe,
qu’est-ce qui peut être couvert par live occasionnel,
qu’est-ce qui peut être généré ou simulé,
et quels samples minimaux restent vraiment nécessaires ?
```

---

# 0. Données fixes fournies par Yohan

## 0.1 Sources live toujours présentes

```text
LIVE_FIXED_DIDGERIDOO
- statut : toujours présent en live.
- rôle potentiel : corps, souffle, grave, formants, torsion, pression, ligne vivante, retour au corps.
- ne doit pas être remplacé par une banque de samples.
- samples possibles : référence / secours / analyse seulement.
```

```text
LIVE_FIXED_JAW_HARPS
- statut : guimbardes toujours présentes en live ; environ vingt instruments disponibles.
- rôle potentiel : formants de bouche, micro-pulse, brillance rythmique, torsion, ligne vivante, polytexture, voix-sans-voix.
- ne doivent pas être remplacées par une banque de samples.
- samples possibles : grains de secours / références / analyse seulement.
```

## 0.2 Sources live parfois présentes

```text
LIVE_OPTIONAL_GONGS
- statut : parfois 1 gong parmi 5.
- rôle potentiel : impact, halo, partiels, résolution, beauté autonome, masse métallique.
- conséquence : les besoins de gong doivent prévoir une solution quand aucun gong n’est joué live.
```

```text
LIVE_OPTIONAL_FRAME_DRUMS
- statut : parfois 1 tambour sur cadre parmi 3.
- rôle potentiel : impact corporel, peau, retour au corps, accent, polytexture.
- conséquence : les besoins de peaux / impacts doivent prévoir une solution quand aucun tambour n’est joué live.
```

## 0.3 Accès potentiel aux samples

```text
SAMPLE_ACCESS_ASSUMPTION
- on considère que des samples peuvent être trouvés / enregistrés / achetés si besoin ;
- cela ne justifie pas de constituer une banque large ;
- chaque sample doit découler d’un besoin esthétique / phénoménal réel ;
- le minimum est recherché avant toute extension.
```

## 0.4 Génération / simulation

```text
GENERATION_SIMULATION_ASSUMPTION
- génération et simulation restent à déterminer ;
- elles ne sont pas refusées ;
- elles ne sont pas supposées suffisantes par défaut ;
- elles doivent être évaluées besoin par besoin ;
- elles partent des besoins réels initiaux, pas d’une capacité technique abstraite.
```

---

# 1. Ordre de décision corrigé

Pour chaque besoin de `04_SAMPLE_NEEDS_INITIAL`, suivre l’ordre suivant :

```text
1. Identifier le besoin esthétique / phénoménal réel.
2. Vérifier si le didgeridoo live peut couvrir tout ou partie du besoin.
3. Vérifier si les guimbardes live peuvent couvrir tout ou partie du besoin.
4. Vérifier si un gong live occasionnel peut couvrir le besoin quand il est présent.
5. Vérifier si un tambour sur cadre live occasionnel peut couvrir le besoin quand il est présent.
6. Déterminer si une version générée / simulée est musicalement crédible.
7. Déterminer si un sample minimal externe / enregistré est encore nécessaire.
8. Si sample nécessaire : définir le minimum, pas l’idéal large.
9. Si le besoin reste flou : différer.
```

On ne demande donc pas :

```text
quels samples possède-t-on déjà ?
```

mais :

```text
à partir de zéro sample, quels matériaux sont vraiment indispensables ?
```

---

# 2. Statuts de couverture

```text
LIVE_FIXED_COVERED : besoin couvert ou fortement porté par didgeridoo / guimbardes.
LIVE_OPTIONAL_COVERED : besoin couvert seulement si gong ou tambour est présent.
GENERATION_TO_ANALYZE : génération / simulation à analyser avant sample.
SAMPLE_MINIMAL_REQUIRED : sample minimal probablement nécessaire.
REFERENCE_ONLY : source utile comme référence, pas comme corpus.
HYBRID_REQUIRED : live / génération / sample doivent coopérer.
DEFER : besoin trop dépendant d’un choix de scène encore non fixé.
REFUSE : besoin non justifié par Vesperare.
```

---

# 3. Analyse de couverture initiale par besoin

## 3.1 Corps / impact / fondation

```text
sample_need_id: sample_need_body_impact_foundation_01
besoin réel: fondation corporelle, impact, retour au corps.
live_fixed: didgeridoo peut fournir pression / souffle / corps, mais pas forcément impact net de type fondation ; guimbardes peuvent fournir micro-pulse mais pas fondation grave.
live_optional: tambour sur cadre peut couvrir impact peau ; gong peut couvrir impact / masse selon contexte.
generation_to_analyze: sub, enveloppe grave, impact synthétisé comme phénomène physique.
sample_minimal_possible: impacts corporels acoustiques si live optionnel absent ou insuffisant.
statut initial: HYBRID_REQUIRED + GENERATION_TO_ANALYZE.
décision minimale provisoire: ne pas décider de samples avant analyse sub/impact généré + rôle du didgeridoo + disponibilité tambour/gong.
```

## 3.2 Peaux / percussions réelles exposées

```text
sample_need_id: sample_need_skin_percussion_exposed_01
besoin réel: grain de peau, attaque humaine, corps acoustique exposé.
live_fixed: non couvert par didgeridoo/guimbardes.
live_optional: couvert partiellement quand 1 tambour sur cadre est joué.
generation_to_analyze: corps/résonance secondaire générables ; attaque peau exposée incertaine.
sample_minimal_possible: quelques attaques de peau seulement si le tambour live est absent ou si plusieurs scènes nécessitent cette matière.
statut initial: LIVE_OPTIONAL_COVERED + SAMPLE_MINIMAL_REQUIRED à confirmer.
décision minimale provisoire: prévoir solution sans tambour live ; tester si 3–5 samples de peaux suffisent.
```

## 3.3 Résolution métallique / gong central

```text
sample_need_id: sample_need_metal_resolution_gong_01
besoin réel: masse métallique, résolution, partiels, halo, beauté autonome.
live_fixed: guimbardes peuvent fournir métal/formants/micro-résonance mais pas masse de gong ; didgeridoo peut soutenir grave/formants.
live_optional: couvert quand 1 gong parmi 5 est joué.
generation_to_analyze: résonateurs, synthèse modale, renfort de partiels, spectral freeze.
sample_minimal_possible: 1–5 samples de gong / métaux si besoin de résolution quand aucun gong live n’est présent.
statut initial: LIVE_OPTIONAL_COVERED + HYBRID_REQUIRED.
décision minimale provisoire: ne pas constituer banque de gongs ; prévoir un minimum pour les scènes sans gong live.
```

## 3.4 Halo / post-résonance / espace

```text
sample_need_id: sample_need_halo_tails_resonance_01
besoin réel: halo, post-résonance, espace musical, queue contrôlée.
live_fixed: didgeridoo et guimbardes peuvent produire halos/formants traités ; insuffisant pour tous les halos spatiaux.
live_optional: gong et tambour peuvent produire queues/résonances quand présents.
generation_to_analyze: résonateurs, convolution, spectral freeze, delays filtrés.
sample_minimal_possible: queues/impulses si beauté ou lieu réel indispensable.
statut initial: GENERATION_TO_ANALYZE + HYBRID_REQUIRED.
décision minimale provisoire: partir des résonateurs et live traité ; samples seulement pour queues réellement singulières.
```

## 3.5 Sub / pression grave

```text
sample_need_id: sample_need_sub_foundation_01
besoin réel: pression grave stable, centre corporel, retour au corps.
live_fixed: didgeridoo peut nourrir formants/grave mais ne doit pas forcément assurer tout le sub.
live_optional: gongs/tambours peuvent renforcer mais pas garantir stabilité.
generation_to_analyze: génération prioritaire, mais avec critères stricts de corps, stabilité, compatibilité live.
sample_minimal_possible: aucun sample performatif attendu.
statut initial: GENERATION_TO_ANALYZE, probablement NO_SAMPLE_GENERATE.
décision minimale provisoire: analyser engine sub avant toute référence audio ; samples seulement références de mix si nécessaire.
```

## 3.6 Voix signal / voix matière

```text
sample_need_id: sample_need_voice_signal_01 / sample_need_voice_matter_01
besoin réel: présence humaine, signal, souffle, cri, formants, matière.
live_fixed: non explicitement fixé comme live permanent ; à clarifier plus tard.
live_optional: aucune donnée.
generation_to_analyze: renfort formantique possible, voix réelle non remplaçable si signal humain.
sample_minimal_possible: quelques fragments vocaux si voix non jouée live.
statut initial: SAMPLE_MINIMAL_REQUIRED à confirmer.
décision minimale provisoire: ne pas supposer une banque vocale ; décider d’abord si voix live existe ou si quelques samples suffisent.
```

## 3.7 Didgeridoo

```text
sample_need_id: sample_need_didgeridoo_reference_01
besoin réel: instrument live central, souffle, grave, formants, torsion.
live_fixed: couvert.
live_optional: non pertinent.
generation_to_analyze: renforts seulement.
sample_minimal_possible: référence / secours seulement.
statut initial: LIVE_FIXED_COVERED + REFERENCE_ONLY.
décision minimale provisoire: aucun corpus didgeridoo.
```

## 3.8 Guimbardes

```text
sample_need_id: issu de 06_YOHAN_SOURCE_CANDIDATES_AND_POTENTIAL_NEEDS
besoin réel: ligne formantique live, micro-pulse, torsion de bouche, brillance rythmique, voix-sans-voix.
live_fixed: couvert, avec environ vingt instruments.
live_optional: non pertinent.
generation_to_analyze: renforts / formants / résonateurs seulement.
sample_minimal_possible: références ou grains de secours, pas banque.
statut initial: LIVE_FIXED_COVERED + HYBRID_REQUIRED.
décision minimale provisoire: penser captation, traitement live, sécurité, mapping, pas corpus de samples.
```

## 3.9 Field recordings exposés

```text
sample_need_id: sample_need_field_recording_exposed_01
besoin réel: lieu, profondeur, espace réel, scène nocturne, beauté autonome.
live_fixed: non couvert.
live_optional: non couvert.
generation_to_analyze: simulation d’espace possible, mais identité de lieu exposé non remplaçable.
sample_minimal_possible: 1–4 lieux si l’exposition de lieu est un besoin formel.
statut initial: SAMPLE_MINIMAL_REQUIRED à confirmer ou DEFER.
décision minimale provisoire: ne pas collecter de paysages ; définir d’abord si un lieu réel est nécessaire.
```

## 3.10 Éléments naturels modélisables

```text
sample_need_id: sample_need_natural_elements_modeling_01
besoin réel: eau, pluie, vent, feu, sol, vagues, flux, microtexture.
live_fixed: non couvert sauf bruitages/air indirects par guimbardes/didgeridoo traités.
live_optional: non couvert.
generation_to_analyze: prioritaire, mais pas validée d’avance.
sample_minimal_possible: grains/références si génération insuffisante ou si source exposée.
statut initial: GENERATION_TO_ANALYZE.
décision minimale provisoire: analyse spécifique obligatoire avant tout sample.
```

## 3.11 Polytexture / brillance / micro-impacts

```text
sample_need_id: sample_need_polytexture_microimpacts_01 / sample_need_naturalized_brightness_01
besoin réel: complexité lisible, micro-pulse, accents, brillance naturalisée.
live_fixed: guimbardes peuvent couvrir une part importante de micro-pulse / brillance / formants ; didgeridoo peut soutenir rythme grave/formants.
live_optional: tambour/gong peuvent ajouter accents.
generation_to_analyze: placement, microtiming, densité, random start, micro-événements.
sample_minimal_possible: micro-impacts seulement si guimbardes + génération ne suffisent pas.
statut initial: LIVE_FIXED_COVERED_PARTIAL + GENERATION_TO_ANALYZE.
décision minimale provisoire: tester d’abord guimbardes live + génératif avant corpus de one-shots.
```

## 3.12 Frictions / torsion / ligne vivante

```text
sample_need_id: sample_need_friction_roughness_01 / sample_need_resonant_torsion_line_01
besoin réel: torsion, friction, mutation, ligne vivante, tension continue.
live_fixed: guimbardes très pertinentes ; didgeridoo très pertinent.
live_optional: gong/tambour peuvent fournir matière supplémentaire.
generation_to_analyze: filtres, formants, résonateurs, feedback, microtonal bends.
sample_minimal_possible: uniquement si une friction réelle spécifique manque.
statut initial: LIVE_FIXED_COVERED + GENERATION_TO_ANALYZE.
décision minimale provisoire: pas de sample dédié au départ.
```

## 3.13 Champs harmoniques / microtensions / partiels

```text
sample_need_id: sample_need_harmonic_fields_partials_01
besoin réel: relation entre partiels, microtension, champs, stabilisation.
live_fixed: didgeridoo + guimbardes fournissent formants/partiels ; mais pas tout le champ harmonique.
live_optional: gongs/tambours apportent partiels et peaux quand présents.
generation_to_analyze: résonateurs, pitch fields, partial alignment.
sample_minimal_possible: cloches/gongs/vibraphone/cordes/orgue seulement si partiels réels indispensables.
statut initial: HYBRID_REQUIRED + GENERATION_TO_ANALYZE.
décision minimale provisoire: analyse de partiels live d’abord ; sample ensuite seulement par manque.
```

---

# 4. Besoins qui ne doivent pas partir en sample tout de suite

```text
sub ;
guimbardes ;
didgeridoo ;
hypnose / variation ;
torsion / ligne vivante ;
polytexture de placement ;
élements naturels modélisables ;
résonateurs / microtensions ;
halos génériques ;
cuivres / anches / cordes / orgue tant que le rôle n’est pas confirmé.
```

---

# 5. Besoins qui peuvent justifier un minimum de samples plus tard

```text
peaux si tambour absent ou insuffisant ;
gongs / métaux si gong live absent ou si plusieurs scènes nécessitent résolution métallique ;
voix si elle n’est pas jouée live mais reste fonctionnellement nécessaire ;
field recordings si lieu réel exposé requis ;
cloches / vibraphone / orgue / cordes / cuivres / anches seulement si leurs partiels, signaux ou timbres sont irremplaçables par live fixe + génération.
```

---

# 6. Prochaine analyse nécessaire

Créer une analyse spécifique :

```text
INITIAL_REAL_NEEDS_NO_SAMPLES_ANALYSIS
```

Objectif : partir des besoins initiaux de Vesperare, de zéro sample, et des sources live fixes, pour déterminer :

```text
besoin couvert live ;
besoin couvert live occasionnel ;
besoin à simuler / générer ;
besoin nécessitant sample minimal ;
besoin à différer.
```
