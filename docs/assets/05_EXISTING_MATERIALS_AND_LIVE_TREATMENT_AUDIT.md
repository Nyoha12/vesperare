# 05_EXISTING_MATERIALS_AND_LIVE_TREATMENT_AUDIT

Version : v0.1  
Statut : document d’audit pratique, sans collecte audio, sans prototypage complet, sans choix définitif d’engine.

## Objet

Ce document sert à vérifier l’existant réel de Yohan et à tester conceptuellement le pouvoir de traitement live de peu de samples avant de confirmer les `sample_need` de `04_SAMPLE_NEEDS_INITIAL`.

Il répond à la question :

```text
Avant d’enregistrer, acheter, chercher ou constituer de nouveaux samples,
qu’est-ce qui existe déjà et jusqu’où peut-on aller avec 1, 3 ou 5 bons samples traités en live ?
```

Ce document ne décide pas encore :

```text
les fichiers audio définitifs ;
les sample packs à acheter ;
les plugins ou engines définitifs ;
les contrôles live finaux ;
le système de suggestion d’instruments au musicien.
```

Il prépare seulement la décision.

---

# 1. Règle de décision

Pour chaque besoin issu de `04_SAMPLE_NEEDS_INITIAL`, il faut suivre l’ordre :

```text
1. Vérifier l’existant réel.
2. Tester ce qu’un seul très bon sample permet.
3. Tester ce que trois samples permettent.
4. Tester ce que cinq samples permettent.
5. Évaluer les traitements live possibles.
6. Évaluer la génération / modélisation réaliste.
7. Décider si un nouveau sample est encore nécessaire.
8. Si oui, définir le minimum concret.
9. Si non, marquer existing / treatment / generation / live suffisant.
```

Le but n’est pas de couvrir tous les cas par une grande banque.

Le but est :

```text
minimum réel de samples ;
maximum de fonction musicale ;
maximum de transformabilité contrôlée ;
minimum de collecte prématurée.
```

---

# 2. Inventaire de l’existant à renseigner

## 2.1 Instruments physiques disponibles

```text
instrument_id:
nom:
famille:
disponible maintenant: oui / non / à confirmer
jouable live: oui / non / difficile
qualité sonore pressentie:
fonctions possibles:
phénomènes possibles:
risques:
notes:
```

Exemples à renseigner plus tard :

```text
didgeridoo ;
gongs ;
bols ;
cloches / clochettes ;
cymbales / cymbalettes ;
tambours / peaux ;
objets résonants ;
objets frappés ;
bois / pierres / métaux ;
voix ;
sources naturelles accessibles.
```

## 2.2 Enregistrements personnels existants

```text
recording_id:
source:
durée:
qualité:
rôle possible:
phénomène possible:
metadata présente:
problèmes:
statut: usable / à nettoyer / référence / inutilisable / à vérifier
```

## 2.3 Samples ou banques déjà possédés

```text
sample_pack_or_asset_id:
source:
licence / origine:
qualité:
catégorie fonctionnelle possible:
risque stylistique:
metadata:
statut: à trier / utilisable / référence seulement / éviter
```

## 2.4 Sources naturelles accessibles

```text
source_id:
type: eau / vent / pluie / feu / sol / lieu / autre
facile à enregistrer: oui / non / saisonnier / à organiser
qualité probable:
usage: référence / grain / field recording exposé / impulsion / texture
modélisation réaliste possible: oui / non / partielle
statut:
```

## 2.5 Outils logiciels / traitements déjà possibles

Sans choisir définitivement les outils, noter ce qui est déjà disponible ou réaliste :

```text
transient shaping ;
EQ dynamique ;
compression / saturation contrôlée ;
granulation ;
convolution ;
résonateurs ;
spectral freeze ;
time-stretch ;
filtrage ;
formant shifting ;
pitch shifting ;
random start ;
probability / MIDI generation ;
sidechain / ducking ;
spatialisation ;
réduction de bruit légère ;
analyse spectrale / partiels.
```

Hypothèse de réalisme :

```text
logiciels existants accessibles, y compris payants ;
budget hardware possible autour de 5000 € ;
pas de supposition de R&D lourde ni de modèle instrumental complexe inexistant ;
Max for Live / Ableton peuvent organiser, contrôler, hybrider et traiter, mais ne doivent pas porter une promesse irréaliste de modélisation totale.
```

---

# 3. Protocole de test 1 / 3 / 5 samples

Pour chaque besoin, utiliser cette grille :

```text
sample_need_id:
source esthétique / phénoménale:
fonction:
rôle scène / trajectoire:
matériaux existants testables:

TEST 1 SAMPLE
- quel sample unique ?
- quels traitements ?
- couvre quelles fonctions ?
- échoue où ?
- décision : suffisant / insuffisant / référence seulement

TEST 3 SAMPLES
- quelles variantes minimales ?
- quels traitements ?
- couvre quelles fonctions ?
- échoue où ?
- décision : suffisant / insuffisant / corpus à étendre

TEST 5 SAMPLES
- quelles variantes supplémentaires ?
- quels traitements ?
- la variété devient-elle suffisante ?
- le risque de banque inutile apparaît-il ?
- décision : stop / étendre / différer

GENERATION / MODELING CHECK
- qu’est-ce qui peut être généré ?
- qu’est-ce qui ne doit pas être généré ?
- quel hybride est plausible ?

DÉCISION
- sample nécessaire ? oui / non / partiel
- minimum confirmé :
- idéal maximum prudent :
- prochain document affecté : source_need / asset / pool / defer / refuse
```

---

# 4. Grille par besoins actuels

## 4.1 Corps / impact / fondation

```text
source: sample_need_body_impact_foundation_01
priorité: haute
à tester en premier: 1, 3 puis 5 impacts très forts.
traitements à essayer: transient shaping, enveloppe, pitch léger, hybridation sub, saturation contrôlée, EQ dynamique, ducking.
génération plausible: sub, corps grave, renfort, enveloppe.
génération insuffisante probable: attaque acoustique réelle, grain de peau exposé, singularité d’objet frappé.
critère de réussite: retour au corps + lisibilité temporelle + pression sans kick standard.
décision attendue: si 3–5 impacts très bons suffisent, ne pas élargir.
```

## 4.2 Peaux / percussions réelles exposées

```text
source: sample_need_skin_percussion_exposed_01
priorité: haute si rôle corporel confirmé
à tester en premier: 1 peau grave, puis 3 variantes, puis 5 maximum.
traitements à essayer: transient/tail split, pitch limité, envelope, sub layer, saturation douce, filtrage.
génération plausible: résonance secondaire, corps grave, variation d’enveloppe.
génération insuffisante probable: attaque humaine, grain de peau, geste exposé.
critère de réussite: corps + attaque nette + absence de dérive rituelle plaquée.
décision attendue: petit noyau seulement si réellement supérieur aux traitements.
```

## 4.3 Résolution métallique / gong central

```text
source: sample_need_metal_resolution_gong_01
priorité: haute pour résolution / beauté autonome / tension longue
à tester en premier: 1 gong exceptionnel, puis 3 couleurs, puis 5 maximum.
traitements à essayer: découpe attaque/queue, EQ dynamique, spectral freeze, reverse, convolution, renfort partiel.
génération plausible: halo, renfort, résonance modale, queue secondaire.
génération insuffisante probable: gong central exposé avec complexité de partiels réelle.
critère de réussite: événement formel + beauté + contrôle de queue + pas de décor gong.
décision attendue: peu de prises très fortes.
```

## 4.4 Halo / post-résonance

```text
source: sample_need_halo_tails_resonance_01
priorité: moyenne à haute selon scènes
à tester en premier: une queue réelle + résonateur ; puis 3 queues/impulses.
traitements à essayer: convolution, spectral freeze, tail ducking, time-stretch, filtering.
génération plausible: résonateurs / modal / convolution / halos synthétiques.
génération insuffisante probable: lieux ou queues très singuliers exposés.
critère de réussite: espace fonctionnel sans ambientisation.
décision attendue: quelques queues/impulses, pas banque de halos.
```

## 4.5 Sub / pression grave

```text
source: sample_need_sub_foundation_01
priorité: haute, mais pas sample-prioritaire
à tester en premier: génération sub et références audio, pas corpus.
traitements à essayer: mono, saturation, enveloppe, sidechain, contrôle pitch_center.
génération plausible: prioritaire.
génération insuffisante probable: seulement si une source réelle spécifique devient partie du sub.
critère de réussite: pression physique + stabilité + compatibilité avec gongs / voix / didgeridoo.
décision attendue: 0 sample performatif.
```

## 4.6 Voix signal

```text
source: sample_need_voice_signal_01
priorité: haute si voix assumée dans le style
à tester en premier: 1 fragment très fort, puis 3, puis 5.
traitements à essayer: découpe, formant léger, delay court, filtrage, reverse, spatialisation ciblée.
génération plausible: renfort formantique, texture secondaire.
génération insuffisante probable: présence humaine, signal, cri, parole.
critère de réussite: présence forte sans chanson ni gimmick.
décision attendue: petit noyau de fragments très choisis.
```

## 4.7 Voix matière / souffle

```text
source: sample_need_voice_matter_01
priorité: moyenne à haute
à tester en premier: 3 souffles/phonèmes, puis 5–8 si axe confirmé.
traitements à essayer: granulation, formant shift, convolution, spectral freeze, random start.
génération plausible: formants synthétiques, souffles abstraits.
génération insuffisante probable: grain humain réel si exposé.
critère de réussite: matière humaine sans pathos ni texture décorative.
décision attendue: peu de matières vocales très transformables.
```

## 4.8 Didgeridoo live / références

```text
source: sample_need_didgeridoo_reference_01
priorité: live, pas corpus
à tester en premier: entrée live + 1–2 références.
traitements à essayer: EQ, saturation, formants, résonateurs, sidechain sub.
génération plausible: renfort formantique / sub complémentaire.
génération insuffisante probable: agency live, souffle réel, articulation humaine.
critère de réussite: le live reste central.
décision attendue: sample référence seulement.
```

## 4.9 Field recordings exposés

```text
source: sample_need_field_recording_exposed_01
priorité: moyenne, haute seulement si scène d’exposition confirmée
à tester en premier: 1 lieu fort, puis 2–4 maximum.
traitements à essayer: EQ, nettoyage léger, spatialisation, slicing, granularité, ducking.
génération plausible: espace abstrait, couches secondaires.
génération insuffisante probable: identité réelle d’un lieu exposé.
critère de réussite: lieu musical, pas documentaire plaqué.
décision attendue: très peu de lieux forts.
```

## 4.10 Éléments naturels modélisables

```text
source: sample_need_natural_elements_modeling_01
priorité: génération avant samples
à tester en premier: modèles/procédural, puis grains réels si besoin.
traitements à essayer: density control, grains, filtering, spatialisation, random modulation.
génération plausible: eau, pluie, vent, gouttes, flux, feu, sol, vagues comme phénomènes.
génération insuffisante probable: prise exposée ou grain réel spécifique.
critère de réussite: fonction musicale sans décor naturaliste.
décision attendue: 0 corpus ; références/grains seulement.
```

## 4.11 Polytexture / micro-impacts

```text
source: sample_need_polytexture_microimpacts_01
priorité: haute si polytexture centrale
à tester en premier: 5–8 impacts courts très contrastés, pas collection complète.
traitements à essayer: probability, microtiming, pitch, slicing, random start, hiérarchie d’accents.
génération plausible: placement, densité, variation, mutations.
génération insuffisante probable: timbres acoustiques singuliers exposés.
critère de réussite: complexité lisible + hiérarchie d’accents.
décision attendue: corpus ciblé léger, par rôles, pas par objets.
```

## 4.12 Brillance rythmique naturalisée

```text
source: sample_need_naturalized_brightness_01
priorité: moyenne à haute
à tester en premier: 3–5 sons courts, puis vérifier fatigue.
traitements à essayer: EQ dynamique, transient shaping, microtiming, pitch, envelopes.
génération plausible: grains synthétiques, micro-événements, bruit filtré.
génération insuffisante probable: timbre réel exposé de cloche / métal / souffle.
critère de réussite: propulsion, pas ornement.
décision attendue: corpus léger seulement si exposé.
```

## 4.13 Frictions / raclages

```text
source: sample_need_friction_roughness_01
priorité: à confirmer par scènes de torsion / transition
à tester en premier: 1 frottement long + 2 courts.
traitements à essayer: filtering, spectral freeze, granulation, saturation contrôlée, résonateurs.
génération plausible: bruit contrôlé, matière synthétique, friction secondaire.
génération insuffisante probable: geste réel détaillé exposé.
critère de réussite: tension physique sans agressivité ni cliché industriel.
décision attendue: DEFER si aucune scène ne l’exige.
```

## 4.14 Hypnose active / répétition non redondante

```text
source: sample_need_hypnosis_variation_01
priorité: haute comme fonction, basse comme besoin de samples autonome
à tester en premier: moteurs de variation sur samples déjà nécessaires.
traitements à essayer: probability, random start, microtiming, mutation lente, envelopes.
génération plausible: très forte.
génération insuffisante probable: si motif acoustique central spécifique.
critère de réussite: identité + variation + corps.
décision attendue: pas de corpus dédié.
```

## 4.15 Tension syncopée / attente / résolution

```text
source: sample_need_syncopated_tension_resolution_01
priorité: haute comme trajectoire, pas forcément comme corpus
à tester en premier: réutilisation gongs / voix / impacts / sub / polytexture.
traitements à essayer: mutes, slicing, reverse, queue coupée, sub withholding, ducking.
génération plausible: timing, vide/plein, probabilités, retenue.
génération insuffisante probable: objet acoustique central de résolution.
critère de réussite: tension / résolution sans formule dubstep plaquée.
décision attendue: pas de corpus séparé au départ.
```

## 4.16 Suspension / expansion / peak non brutal

```text
source: sample_need_suspension_expansion_peak_01
priorité: haute comme trajectoire, prudente comme samples
à tester en premier: halos / résonateurs / field / voix déjà présents.
traitements à essayer: time-stretch, spectral freeze, convolution, sidechain / pumping, widening prudent.
génération plausible: forte pour risers naturalisés, halos, densité progressive.
génération insuffisante probable: voix/gongs/field exposés.
critère de réussite: expansion sans euphorie générique ni perte du corps.
décision attendue: réutiliser sources existantes.
```

## 4.17 Torsion résonante / ligne vivante

```text
source: sample_need_resonant_torsion_line_01
priorité: moyenne comme samples, haute comme traitement / contrôle
à tester en premier: sources déjà prévues tordues par filtre/formant/résonateur.
traitements à essayer: morphing, filtre, formants, feedback contrôlé, résonateurs, microtonal bends.
génération plausible: forte pour ligne de matière.
génération insuffisante probable: source réelle exposée tordable.
critère de réussite: pas de citation acid.
décision attendue: pas de sample dédié sauf manque réel.
```

## 4.18 Champs harmoniques / microtensions / partiels

```text
source: sample_need_harmonic_fields_partials_01
priorité: haute comme metadata / analyse, pas comme corpus autonome
à tester en premier: analyser partiels des sources déjà nécessaires.
traitements à essayer: partial alignment, pitch shift subtil, harmonic tuning, spectral filtering.
génération plausible: forte pour résonateurs et champs.
génération insuffisante probable: partiels inharmoniques réels exposés.
critère de réussite: tension harmonique sans boue ni perte du corps.
décision attendue: metadata avant nouveaux samples.
```

## 4.19 Beauté autonome / moment de matière

```text
source: sample_need_autonomous_beauty_material_01
priorité: forte artistiquement, très contrôlée quantitativement
à tester en premier: 1 source exceptionnelle, pas corpus.
traitements à essayer: tail control, spatialisation, filtrage minimal, spectral focus.
génération plausible: sons purs, halos, résonateurs.
génération insuffisante probable: présence matérielle singulière.
critère de réussite: beauté reliée à forme / retour / transformation.
décision attendue: très peu de sources, seulement si scène prévue.
```

## 4.20 Écologie d’objets / relations

```text
source: sample_need_ecology_relations_01
priorité: haute comme méthode, basse comme besoin sample autonome
à tester en premier: systèmes de relation, densité, distance, masquage.
traitements à essayer: granulation, convolution, density control, spatial filtering, random modulation.
génération plausible: très forte pour comportements.
génération insuffisante probable: lieu ou source exposée.
critère de réussite: relations musicales, pas décor.
décision attendue: engines/relations avant samples.
```

---

# 5. Sorties possibles de cet audit

Après remplissage, chaque besoin reçoit un statut :

```text
CONFIRM_SAMPLE_MINIMAL
CONFIRM_REFERENCE_ONLY
CONFIRM_GENERATION_FIRST
CONFIRM_LIVE_FIRST
CONFIRM_EXISTING_SUFFICIENT
CONFIRM_HYBRID
DEFER
REFUSE
```

Ces statuts alimentent ensuite :

```text
03_SAMPLE_NEEDS_TO_SOURCE_NEEDS_BRIDGE ;
16_SOURCE_NEEDS_ASSET_DATABASE_PROTOCOL ;
future base MATERIAL_ASSET ;
future sélection de moteurs / engines ;
future préparation Output / Mix.
```
