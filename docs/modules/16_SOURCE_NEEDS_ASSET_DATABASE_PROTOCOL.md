# 16_SOURCE_NEEDS_ASSET_DATABASE_PROTOCOL

Version : v0.2  
Statut : protocole structurel de préparation de base de données, sans prototypage.

## Objet

Ce document transforme les décisions récentes sur instruments, sources, samples, génération live, corpus ciblés, engines et sélection en système concret de préparation de base de données.

Il relie :

```text
fonctions musicales ;
esthétique ;
inspirations ;
intuitions sonores ;
instruments / sources candidates ;
affordances sonores ;
phénomènes sonores ;
objets ;
rôles ;
profils ;
trajectoires ;
scènes ;
besoins de source ;
assets ;
pools ;
politiques de sélection ;
engines ;
conflits ;
contrôles ;
future sortie / mix.
```

Le but n’est pas encore de créer une banque audio. Le but est de savoir **quoi envisager comme instrument ou source, quoi préparer, pourquoi, avec quelles métadonnées, dans quel ordre, et avec quel mode de sélection autorisé**.

---

# 1. Problème à résoudre

Les documents précédents disent correctement :

```text
pas de banque décorative ;
échantillons autorisés si nécessaires ;
engines au service des fonctions ;
sélection automatique rare et contrainte ;
qualité réelle parfois supérieure à la génération live ;
source strategy = décision musicale + technique + performative.
```

Mais il manquait deux systèmes opératoires :

```text
1. comment découvrir / accueillir de nouveaux instruments ou sources candidates ;
2. comment transformer ces candidates en besoins, assets, pools et décisions de préparation.
```

Ce protocole répond donc à :

```text
quels instruments ou sources envisager ?
quelles sources préparer ?
quels samples sont nécessaires ?
quels samples sont optionnels ?
quels sons doivent rester live ?
quels sons doivent être générés ?
quels sons doivent être hybrides ?
quels pools créer ?
quels champs de base remplir ?
quels assets sont prioritaires ?
quels assets peuvent être sélectionnés automatiquement ?
quels assets doivent rester manuels ?
```

---

# 2. Principe directeur

La base ne commence pas par des fichiers audio.

Elle ne commence même pas toujours par un `source_need` déjà clair.

Elle peut commencer par :

```text
fonction musicale ;
phénomène sonore désiré ;
inspiration esthétique ;
intuition personnelle ;
instrument disponible ;
source rêvée ;
lacune sonore détectée ;
contrainte technique ;
qualité de matière entendue ou imaginée.
```

Chaîne complète :

```text
fonction / esthétique / inspiration / intuition / lacune
→ instrument_source_candidate
→ affordances sonores
→ fonctions possibles
→ phénomènes possibles
→ rôles possibles
→ source_need
→ stratégie de source
→ asset candidat
→ pool éventuel
→ engine possible
→ métadonnées
→ risques
→ protections
→ mode de sélection
→ contrôles Router
→ contraintes Output / Mix futures.
```

Décisions :

```text
un instrument ou une source peut être listé comme candidate sans être encore validé ;
un source_need doit découler d’une fonction, d’un phénomène, d’une lacune ou d’une affordance désirable ;
un asset n’est préparé que s’il répond à un source_need ;
un asset peut être gardé comme référence ou exploration, mais pas entrer dans la base performative sans besoin déclaré.
```

---

# 3. Tables principales

Le protocole repose désormais sur six tables conceptuelles.

```text
INSTRUMENT_SOURCE_CANDIDATE ;
SOURCE_NEED ;
MATERIAL_ASSET ;
MATERIAL_POOL ;
SELECTION_POLICY ;
QUALITY_EVALUATION.
```

Des tables secondaires peuvent exister plus tard :

```text
ENGINE_CAPABILITY ;
PROCESSING_VARIANT ;
LICENSE_PROVENANCE ;
MIX_TRANSLATION_PROFILE ;
LIVE_SAFETY_PROFILE.
```

---

# 4. Table INSTRUMENT_SOURCE_CANDIDATE

Un `instrument_source_candidate` permet d’accueillir un instrument, une source, une matière ou une idée sonore avant de savoir exactement si elle donnera un sample, un live input, un engine ou rien.

C’est la table qui permet d’intégrer les propositions spontanées du compositeur sans forcer immédiatement une justification technique.

## Champs obligatoires

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
```

## Champs recommandés

```text
known_examples
available_to_record
available_to_play_live
requires_external_musician
requires_specific_room
likely_asset_forms
likely_engine_families
source_needs_to_create
notes
```

## Source kinds possibles

```text
instrument acoustique ;
voix ;
objet ;
lieu ;
matière naturelle ;
geste ;
source électronique ;
référence imaginaire ;
famille hybride.
```

## Exemple — Tambour sur cadre

```text
candidate_id: frame_drum_candidate_01
candidate_name: tambour sur cadre
candidate_family: peau / percussion / corps
source_kind: instrument acoustique
sonic_affordances: [attaque large, grave acoustique, peau, geste humain, résonance courte]
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
risk_profile: [tribalisation, world cliché, bas-médium, attaque trop molle]
priority_guess: haute
status: candidat à évaluer
```

## Exemple — Shruti box / harmonium

```text
candidate_id: shruti_harmonium_candidate_01
candidate_name: shruti box / harmonium
candidate_family: bourdon / souffle / accord
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
status: candidat à évaluer
```

---

# 5. Table SOURCE_NEED

Un `source_need` décrit un besoin musical avant de parler d’un fichier.

Il peut venir :

```text
directement d’une fonction / phénomène ;
d’un instrument_source_candidate ;
d’une lacune dans l’architecture ;
d’un besoin d’asset pour tester une relation ;
d’une exigence future de mix / diffusion.
```

## Champs obligatoires

```text
source_need_id
source_need_origin
linked_candidates
function_tags
phenomenon_tags
role_target
object_candidates
scene_affinities
trajectory_affinities
centrality_level
quality_requirement
source_recognition_requirement
abstraction_allowed
live_requirement
generation_viability
sample_viability
hybrid_viability
offline_preparation_viability
selection_mode_default
risk_profile
protected_dimensions
router_controls_expected
priority_level
status
```

## Champs recommandés

```text
expected_asset_count_min
expected_asset_count_ideal
source_family
reference_assets
engine_families_possible
conflict_checks_required
pitch_checks_required
output_mix_checks_required
notes
```

## Exemple — Gong de résolution

```text
source_need_id: gong_resolution_mass_01
source_need_origin: fonction + candidat instrument
linked_candidates: [gong_candidate_01, metal_resonant_candidate_01]
function_tags: [résolution, impact, masse, tension]
phenomenon_tags: [gong, partiels, queue, masse métallique]
role_target: masse de résolution
object_candidates: [Gong, Métal résonant]
scene_affinities: [pré-drop, résolution, beauté autonome]
trajectory_affinities: [pré-drop naturalisé, retour au corps]
centrality_level: haute
quality_requirement: très haute
source_recognition_requirement: moyenne à haute
abstraction_allowed: faible à moyenne
generation_viability: faible
sample_viability: forte
hybrid_viability: forte
offline_preparation_viability: forte
selection_mode_default: manuel / assisté
risk_profile: [mid_load, queue, sub_masking, halo_excess]
protected_dimensions: [impact, sub, partiels, queue]
router_controls_expected: [Résoudre, Queue, Partiels, Réduire bas-médium]
priority_level: haute
status: à préparer
```

---

# 6. Table MATERIAL_ASSET

Un `material_asset` décrit un matériau concret : sample, prise live préparée, synthèse, preset paramétrique, texture offline, variante d’objet.

## Champs obligatoires

```text
asset_id
asset_type
source_identity
object_id
source_need_links
candidate_links
material_tags
possible_roles
forbidden_roles
recognition_level
abstraction_potential
quality_status
selection_mode_allowed
replaceability
status
```

## Champs analytiques

```text
attack_profile
tail_profile
spectral_profile
partial_profile
formant_profile
pitch_center_if_any
sub_relation_if_any
density_behavior
space_behavior
masking_risk
mid_load_risk
fatigue_risk
source_loss_risk
cpu_cost_if_processed
latency_risk_if_live
```

## Champs de traitement

```text
recommended_transformations
forbidden_transformations
required_protections
safe_ranges
processing_variants_available
offline_versions_available
low_cpu_version_available
router_controls_possible
```

## Champs de provenance

```text
recording_origin
recording_date
performer
license_status
usage_rights
file_path
file_format
sample_rate
bit_depth
notes
```

La provenance et les droits ne sont pas une question esthétique, mais ils peuvent devenir critiques si le projet sort du cadre privé.

---

# 7. Table MATERIAL_POOL

Un `material_pool` est un ensemble d’assets autorisés pour un rôle ou une fonction.

Un pool ne doit jamais être seulement :

```text
sounds_i_like ;
gongs_all ;
water_everything ;
voice_random.
```

Il doit être lié à un besoin.

## Champs obligatoires

```text
pool_id
pool_name
source_need_links
candidate_links
allowed_roles
forbidden_roles
selection_policy_id
minimum_metadata_required
asset_ids
quality_threshold
risk_threshold
manual_review_required
status
```

## Exemples de pools

```text
gongs_resolution ;
gongs_halo ;
gongs_beauty_exposed ;
voice_signal_fragments ;
voice_matter_grains ;
rain_microtexture_secondary ;
water_halo_transition ;
field_recordings_beauty_exposed ;
metal_impacts_body ;
skin_frame_drum_body ;
sub_reference_not_samples ;
didgeridoo_reference_not_live_replacement ;
frame_drum_body_impacts ;
shruti_harmonic_halo.
```

---

# 8. Table SELECTION_POLICY

Une `selection_policy` définit comment un asset peut être choisi.

## Modes

```text
M0_FIXED_SOURCE
M1_MANUAL_SELECTION
M2_ASSISTED_SELECTION
M3_CONSTRAINED_AUTO_SELECTION
M4_AUTO_SELECTION_FORBIDDEN
```

## Champs obligatoires

```text
selection_policy_id
mode
human_validation_required
auto_allowed
pool_required
max_pool_size_if_auto
minimum_metadata_required
critical_fail_conditions
conflict_checks
router_visibility
manual_override_required
fallback_strategy
```

## Règles

```text
M0_FIXED_SOURCE : objet critique, aucune variation dynamique.
M1_MANUAL_SELECTION : choix humain, adaptation système possible.
M2_ASSISTED_SELECTION : proposition système, validation humaine.
M3_CONSTRAINED_AUTO_SELECTION : choix automatique rare, secondaire, pool restreint.
M4_AUTO_SELECTION_FORBIDDEN : rôle central, live, sémantique, sub, impact ou résolution critique.
```

---

# 9. Table QUALITY_EVALUATION

La qualité ne doit pas être jugée seulement par beauté subjective.

## Champs obligatoires

```text
quality_eval_id
asset_id
source_need_id
candidate_id
acoustic_quality
role_fit
function_fit
trajectory_fit
scene_fit
source_recognition_fit
transformation_potential
live_stability
latency_safety
cpu_safety
mix_translation_potential
conflict_risk_level
performer_trust
overall_priority
review_status
```

## Critères d’échec critique

Un asset doit être refusé ou limité si :

```text
il masque une voix protégée ;
il rend le sub instable ;
il détruit la reconnaissance requise ;
il empêche le retour au corps ;
il surcharge CPU / latence ;
il devient décoratif ;
il impose un style trop identifiable ;
il ne peut pas être contrôlé ou protégé ;
il remplace un live input prioritaire.
```

---

# 10. Lien fonctions / phénomènes → instruments candidats → besoins de sources

Cette section établit les premiers liens à ne pas oublier.

## Impact-fondation / corps techno

```text
fonctions: corps, impact, retour, stabilité
instruments / sources candidates: sub, peaux, tambours sur cadre, impacts métalliques, gong court, objets frappés
sources probables: sub synthétique, peaux, impacts métalliques, gong court, tambour, objets frappés
stratégie: synthèse + samples ciblés + hybridation
assets prioritaires: impacts corporels, peaux, métaux courts, sub engine stable
sélection automatique: interdite pour fondation principale ; possible pour micro-variantes secondaires
risques: sub flou, pression = volume, impact masqué, mid_load, cliché rituel si peaux mal contextualisées
```

## Pression spectrale corporelle

```text
fonctions: pression, densité, énergie, tension
instruments / sources candidates: sub, frottements, gongs graves, textures de lieu, synthèse physique, bruit filtré
sources probables: sub, bruit filtré, frottements, gongs graves, textures de lieu, synthèse physique
stratégie: hybride / synthèse / samples texturaux
assets prioritaires: textures graves contrôlables, frottements, résonances basses
sélection automatique: très limitée
risques: fatigue, boue bas-médium, perte du corps
```

## Brillance rythmique naturalisée

```text
fonctions: scintillement, précision, accent, micro-variation
instruments / sources candidates: clochettes, cymbalettes, métaux courts, objets secs, petites pierres, grains synthétiques
sources probables: clochettes, métaux courts, cymbalettes, objets secs, grains synthétiques
stratégie: samples courts + génération contrôlée
assets prioritaires: métaux courts, clochettes, impacts brillants
sélection automatique: possible pour variantes secondaires si pool restreint
risques: aigus fatigants, ornement gratuit, exotisme sonore
```

## Polytexture percussive raffinée

```text
fonctions: densité articulée, interlocking, complexité lisible
instruments / sources candidates: peaux, métaux, bois, objets secs, petites percussions, micro-samples, synthèse percussive naturalisée
sources probables: peaux, métaux, bois, objets, micro-samples, synthèse percussive naturalisée
stratégie: hybride samples + génération de placement / densité
assets prioritaires: familles de micro-impacts, peaux, métaux, objets secs
sélection automatique: possible seulement sur micro-variantes secondaires
risques: banque de one-shots, perte de hiérarchie, mid_load, style plaqué
```

## Halo fonctionnel / post-résonance

```text
fonctions: espace, suspension, queue, mystère, profondeur
instruments / sources candidates: gongs longs, bols, cloches, harmonium / shruti, field recordings, résonateurs, convolution, synthèse modale
sources probables: gongs longs, bols, field recordings, résonateurs, convolution, synthèse modale
stratégie: samples haute qualité + résonateurs + traitements
assets prioritaires: queues, résonances, impulses, field recordings sobres
sélection automatique: possible pour halos secondaires, interdite pour beauté centrale
risques: ambientisation, impact masqué, retour au corps impossible
```

## Torsion résonante

```text
fonctions: tension, transformation, rugissement, ligne vivante
instruments / sources candidates: didgeridoo live, voix, résonateurs, métaux, synthèse formantique, frottements graves
sources probables: didgeridoo live, voix, résonateurs, métaux, synthèse formantique
stratégie: live + traitement + hybridation discrète
assets prioritaires: références didgeridoo, formants voix, résonances métalliques
sélection automatique: interdite pour live central ; assistée pour matières secondaires
risques: effet plaqué, quantification du live, sub concurrent
```

## Voix signal / voix matière

```text
fonctions: signal, cri, fragment, matière, halo humain
instruments / sources candidates: voix parlée, voix criée, souffle, chuchotement, syllabes, phonèmes, fragments sémantiques
sources probables: voix live, fragments vocaux, souffles, chuchotements, syllabes, phonèmes
stratégie: live + fragments ciblés + granularité contrôlée
assets prioritaires: fragments vocaux par rôle, souffles, attaques, formants
sélection automatique: interdite pour signal/sémantique ; assistée ou contrainte pour matière secondaire
risques: chanson involontaire, gimmick, sémantique non contrôlée, voix masquée
```

## Beauté autonome exposée

```text
fonctions: exposition, contemplation active, matière nue, suspension formelle
instruments / sources candidates: gong, voix, field recording, métal, bol, harmonium / shruti, texture de lieu, résonance longue
sources probables: gong, voix, field recording, métal, bol, texture de lieu, résonance longue
stratégie: samples haute qualité / live / offline préparé
assets prioritaires: quelques matériaux exceptionnels, pas nombreux mais très évalués
sélection automatique: interdite ou assistée seulement
risques: décor, parenthèse, perte du corps, absence de sortie formelle
```

## Eau / pluie / flux naturels

```text
fonctions: microtexture, densité naturelle, halo, post-résonance, masque contrôlé
instruments / sources candidates: eau réelle, pluie, gouttes, flux, objets mouillés, procédural droplets, bruit filtré
sources probables: samples eau/pluie, procédural droplets, bruit filtré, granularité
stratégie: hybride samples + procédural
assets prioritaires: petits corpus de grains, gouttes, flux, textures longues
sélection automatique: possible en mode contraint pour rôles secondaires
risques: décor naturaliste, banque énorme, masque, texture permanente
```

## Field recordings / lieux

```text
fonctions: espace réel, mémoire, beauté, suspension, profondeur, contexte sensible
instruments / sources candidates: lieux nocturnes, lieux résonants, textures naturelles, ambiances discrètes, traces humaines lointaines
sources probables: lieux nocturnes, textures naturelles, résonances, ambiances discrètes
stratégie: samples ciblés, traitement léger ou transformation contextuelle
assets prioritaires: peu de lieux mais très sélectionnés
sélection automatique: interdite pour exposition centrale ; possible pour couches secondaires si métadonnées fortes
risques: paysage sonore plaqué, perte tension techno, retour au corps difficile
```

## Sub / grave / fondation

```text
fonctions: corps, pression, stabilité, résolution, trace
instruments / sources candidates: sub synthétique, renfort grave, basse résonante, frame drum grave, didgeridoo support, samples de référence seulement
sources probables: synthèse, sub engine, renfort hybride, samples de référence seulement
stratégie: paramétrique / synthèse / hybride contrôlé
assets prioritaires: presets internes déclarés comme engines, pas banque de samples
sélection automatique: interdite pour preset principal
risques: sub générique, largeur excessive, instabilité, pression = volume
```

---

# 11. Priorité de préparation par famille

## Priorité A — préparer tôt

```text
gongs / métaux résonants de résolution ;
sub engine stable ;
voix signal / matière de test ;
didgeridoo live + références ;
impacts corporels peaux / métaux courts ;
quelques field recordings très sélectionnés ;
instrument_source_candidates spontanés proposés par le compositeur.
```

## Priorité B — préparer après première structure

```text
clochettes / cymbalettes / brillance ;
eau / pluie / grains ;
queues et impulses de résonance ;
textures de lieu secondaires ;
polytexture micro-impacts ;
harmonium / shruti / bourdons acoustiques si confirmés.
```

## Priorité C — différer

```text
grande variété de one-shots ;
banques longues d’eau/pluie ;
collections vocales larges ;
variantes nombreuses de gongs ;
engines rares non essentiels ;
assets seulement décoratifs ;
instruments candidats sans affordance claire après évaluation.
```

---

# 12. Ordre de travail recommandé

```text
1. Créer / compléter l’inventaire INSTRUMENT_SOURCE_CANDIDATE.
2. Y intégrer les propositions spontanées du compositeur.
3. Décrire les affordances sonores de chaque candidat.
4. Relier chaque candidat à des fonctions / phénomènes possibles.
5. Créer les source_needs prioritaires.
6. Définir les pools minimaux nécessaires.
7. Définir les métadonnées obligatoires par pool.
8. Préparer seulement quelques assets tests par pool prioritaire.
9. Évaluer qualité / rôle / risques / sélection.
10. Relier les assets validés à Object Registry.
11. Définir les engines nécessaires pour ces assets.
12. Refuser ou différer les assets sans rôle.
13. Réviser les besoins après premiers tests abstraits.
14. Seulement ensuite envisager corpus élargi.
```

---

# 13. Ce que le protocole doit empêcher

```text
banque décorative ;
collecte sans objectif ;
génération live idéologique ;
sample utilisé par facilité ;
qualité acoustique sous-estimée ;
automatisation prématurée ;
engines qui imposent leur son ;
objets transformés sans mise à jour Registry ;
Router exposant une bibliothèque ;
Output / Mix recevant des matériaux non qualifiés ;
instruments candidats ignorés parce qu’ils ne rentrent pas encore dans un source_need ;
instruments ajoutés par goût sans affordance ni rôle possible.
```

---

# 14. Séparation avec les suggestions live

Ce protocole concerne la préparation de la base d’instruments, sources, samples, assets et pools.

Il ne définit pas le futur système de suggestion d’instruments en live.

Différence :

```text
INSTRUMENT_SOURCE_CANDIDATE / SOURCE_NEED = préparation, recherche, inventaire, base de données.
Live Instrument Suggestion System = interface performative future, Router / UI live, suggestions contextuelles pendant le jeu.
```

Lien futur possible :

```text
le système live pourra consulter l’inventaire ou les pools, mais il ne doit pas être confondu avec eux.
```

---

# 15. Prochaine étape immédiate

Créer un fichier ou une section de travail contenant d’abord les candidates et premières fiches :

```text
INSTRUMENT_SOURCE_CANDIDATES_INITIAL ;
SOURCE_NEED_GONG_RESOLUTION ;
SOURCE_NEED_VOICE_SIGNAL ;
SOURCE_NEED_DIDGERIDOO_LIVE ;
SOURCE_NEED_SUB_FOUNDATION ;
SOURCE_NEED_WATER_MICROTEXTURE ;
SOURCE_NEED_FIELD_RECORDING_BEAUTY ;
SOURCE_NEED_POLYTEXTURE_MICRO_IMPACTS.
```

Ces fiches pourront ensuite devenir les premières entrées de base de données.
