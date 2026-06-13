# SOURCE_NEED_MINIMAL_FIELD_RECORDINGS_IF_EXPOSED

Version : v0.1  
Statut : fiche `source_need` conditionnelle. Sans sample confirmé, sans asset, sans prototypage.

## Objet

Cette fiche définit le besoin minimal de field recordings / lieux réels si une scène de Vesperare exige un lieu exposé, une profondeur réelle, une mémoire sonore ou une matière environnementale non remplaçable.

Elle part de l’état actuel :

```text
didgeridoo toujours live ;
guimbardes toujours live ;
gong parfois live ;
tambour sur cadre parfois live ;
zéro sample initial ;
field recordings non présents au départ ;
génération / simulation d’espace possible mais non validée par défaut.
```

Elle ne dit pas :

```text
il faut une banque de paysages sonores ;
il faut des sons de nature décoratifs ;
il faut ambientiser le projet ;
il faut enregistrer beaucoup de lieux ;
il faut utiliser field recordings dans chaque scène.
```

Elle sert à décider :

```text
si un lieu réel est nécessaire ;
si un espace peut être généré/simulé ;
si quelques prises réelles sont indispensables ;
quelles fonctions exactes les field recordings doivent porter ;
comment éviter l’effet documentaire, ambient ou décor naturaliste.
```

---

# 1. SOURCE_NEED

```text
source_need_id: SOURCE_NEED_MINIMAL_FIELD_RECORDINGS_IF_EXPOSED
source_need_origin: besoin esthétique/phénoménal + analyse zéro sample + sound design écologique
linked_candidates: [cand_field_recording_01, cand_water_rain_01, SOURCE_NEED_SUB_PRESSURE_ENGINE, SOURCE_NEED_LIVE_DIDGERIDOO_PRESSURE_FORMANTS, SOURCE_NEED_LIVE_JAW_HARPS_FORMANT_MICROPULSE]
function_tags: [lieu réel, espace, profondeur, mémoire, halo, transition, beauté autonome, matière environnementale]
phenomenon_tags: [field recording, lieu nocturne, halo fonctionnel, beauté autonome, espace musical, écologie d’objets, microtexture]
role_target: source conditionnelle de lieu réel ou de matière environnementale exposée
object_candidates: [Lieu réel, Couche de profondeur, Halo de lieu, Microtexture environnementale, Field recording exposé, Grain naturel]
scene_affinities: [scènes de suspension, scènes de beauté autonome, scènes de transition, scènes nocturnes, scènes d’espace, scènes post-résonance]
trajectory_affinities: [lieu → tension, lieu → suspension, espace réel → retour au corps, halo → disparition, microtexture → densification]
centrality_level: variable ; haute seulement si scène validée autour d’un lieu réel ou d’une matière environnementale exposée
quality_requirement: très haute si lieu exposé ; moyenne à haute si microtexture transformée
source_recognition_requirement: variable ; forte si lieu réel assumé, faible si matière transformée
abstraction_allowed: forte si rôle texture/halo ; faible si rôle lieu réel identifiable
field_recording_requirement: conditionnelle, jamais automatique
generation_viability: forte pour espaces abstraits / halos / microtextures ; faible pour identité réelle d’un lieu exposé
sample_viability: forte si lieu réel ou grain environnemental irremplaçable
hybrid_viability: très forte
offline_preparation_viability: forte pour nettoyage léger, boucles, couches, versions filtrées, impulsions, textures découpées
selection_mode_default: manuel / scène / assisté ; pas automatique par défaut
risk_profile: [ambientisation, décor nature, documentaire plaqué, perte techno, masque, bruit statique, texture permanente]
protected_dimensions: [tension techno, espace, lisibilité, corps, sub, voix, didgeridoo, guimbardes, non-décor]
router_controls_expected: [Lieu exposé, Profondeur, Halo réel, Densité environnementale, Distance, Ducking corps, Retirer décor, Nettoyer masque]
priority_level: moyenne ; haute si scène de lieu réel confirmée
status: à confirmer après analyse des scènes nécessitant un lieu réel
```

---

# 2. Fonctions possibles des field recordings

## 2.1 Lieu exposé

```text
fonction: donner à une scène une présence de lieu réel, non simulable par simple réverbération.
rôle: lieu musical, mémoire, profondeur réelle, scène nocturne, matière autonome.
exigence: prise réelle forte, sélection stricte.
generation_viability: faible pour identité réelle.
sample_minimal: probable si rôle confirmé.
risques: documentaire, ambientisation, paysage plaqué.
```

## 2.2 Halo de profondeur

```text
fonction: créer un fond d’air, une profondeur, une queue ou une sensation d’espace.
rôle: halo discret, post-résonance, couche de scène.
exigence: peut être simulée ou générée.
generation_viability: forte.
sample_minimal: non prioritaire sauf si couleur réelle indispensable.
risques: texture permanente, perte de tension, masque.
```

## 2.3 Microtexture environnementale

```text
fonction: produire une matière fine, mouvante, non instrumentale.
rôle: densité, transition, scintillement naturel, flux.
exigence: peut venir de génération / procédural / grains.
sample_minimal: grains réels possibles si la génération manque de matière.
risques: décor naturaliste, bruitage, banque de nature.
```

## 2.4 Impulsion / empreinte spatiale

```text
fonction: utiliser un lieu comme résonance, couleur, convolution ou empreinte.
rôle: espace fonctionnel, halo transformé, scène située.
exigence: prise ou IR spécifique seulement si rôle confirmé.
sample_minimal: possible mais très limité.
risques: réverbération-cliché, cathédrale/forêt/ruisseau plaqués.
```

## 2.5 Beauté autonome de lieu

```text
fonction: laisser apparaître une matière réelle forte, belle, rare ou mystérieuse.
rôle: moment de suspension, respiration, scène de mémoire.
exigence: très haute ; peu de prises.
sample_minimal: probable si rôle confirmé.
risques: sortie de la techno, carte postale sonore, contemplation décorative.
```

---

# 3. Relations avec les sources live et engines

## 3.1 Relation au didgeridoo

```text
le didgeridoo fournit : souffle grave, corps, formants, pression organique.
le lieu fournit : espace, distance, mémoire, profondeur.
relation souhaitée: didgeridoo comme corps dans un lieu ou contre un lieu.
relation interdite: lieu qui noie le didgeridoo ou transforme le live en ambient.
```

## 3.2 Relation aux guimbardes

```text
les guimbardes fournissent : micro-pulse, bouche, formants, métal fin.
le lieu fournit : profondeur, contexte, air, microtexture.
relation souhaitée: micro-détail vivant dans espace réel ou contre-espace.
relation interdite: field recording qui masque les micro-attaques.
```

## 3.3 Relation au sub

```text
le sub fournit : pression, corps, centre.
le lieu fournit : profondeur et contexte.
relation souhaitée: contraste corps direct / espace distant.
relation interdite: field recording qui mange le headroom ou brouille le grave.
```

## 3.4 Relation au gong / tambour

```text
gong: peut être prolongé par lieu, halo ou post-résonance.
tambour: peut être situé dans un espace sans perdre son grain.
risque: gong + field recording = ambient/cinéma ; tambour + lieu = folklore/documentaire.
protection: rareté, rôle précis, ducking, hiérarchie d’objets.
```

---

# 4. Matrice de décision réel / simulé / généré

## 4.1 Besoin d’espace seulement

```text
status: GENERATION_OR_PROCESSING_FIRST
solution: réverbération, convolution courte, résonateur, spatialisation, halo synthétique.
samples: non prioritaires.
condition: pas de lieu exposé.
```

## 4.2 Besoin de microtexture naturelle non exposée

```text
status: GENERATION_OR_GRAINS
solution: génération/procédural, grains courts, bruit filtré, densité contrôlée.
samples: grains possibles si génération insuffisante.
minimum: 0–3 grains / textures très courtes si besoin confirmé.
```

## 4.3 Besoin de lieu réel exposé

```text
status: SAMPLE_MINIMAL_REQUIRED
solution: field recording réel.
minimum: 1 lieu fort si une seule scène ; 2–4 si plusieurs rôles distincts.
maximum prudent initial: 5 lieux avant réévaluation.
condition: la scène exige identité, mémoire ou profondeur réelle.
```

## 4.4 Besoin d’empreinte spatiale / impulsion

```text
status: CONDITIONAL_IR_OR_SAMPLE
solution: impulse / queue / empreinte de lieu, pas nécessairement paysage long.
minimum: 1–3 impulses/queues si rôle confirmé.
condition: la couleur du lieu affecte vraiment les objets.
```

---

# 5. Besoin de samples associé

```text
sample_need_status: conditionnel.
reference_samples_allowed: oui, pour analyse / calibration.
performative_sample_bank: non.
minimum_if_exposed_place_confirmed: 1 field recording très fort.
minimum_if_multiple_roles_confirmed: 2–4 prises.
maximum_prudent_initial: 5 prises / lieux avant réévaluation.
```

Les samples possibles ne doivent pas couvrir “la nature” ou “des ambiances”. Ils doivent couvrir des fonctions :

```text
lieu réel exposé ;
profondeur ;
mémoire ;
microtexture ;
empreinte spatiale ;
beauté autonome de lieu ;
transition ;
post-résonance.
```

---

# 6. Besoins d’engine / traitement

## 6.1 Nettoyage léger

```text
besoin: rendre la prise utilisable sans perdre son grain.
traitements possibles: denoise léger, EQ corrective, de-click, gain staging, segmentation.
```

## 6.2 Placement / ducking

```text
besoin: éviter que le lieu masque le corps, le sub, les guimbardes, le didgeridoo ou la voix.
traitements possibles: ducking contextuel, EQ dynamique, sidechain, spectral space carving.
```

## 6.3 Granulation / découpe

```text
besoin: transformer lieu en matière sans décor.
traitements possibles: slicing, granulation, random start, time-stretch, filtering, density control.
```

## 6.4 Spatialisation

```text
besoin: rendre l’espace musical et non décoratif.
traitements possibles: largeur contrôlée, distance, profondeur, mono-compatible low-end, automation de présence.
```

## 6.5 Protection esthétique

```text
besoin: éviter ambientisation et documentaire.
protections possibles: durée maximale, rareté, rôle par scène, retrait automatique/manuel, validation fonctionnelle.
```

---

# 7. Métadonnées futures à prévoir

```text
asset_type: field_recording / grain / impulse / place_tail / texture / processing_preset
source_identity: lieu / matière / événement / à préciser
place_role: exposé / halo / texture / impulse / mémoire / transition
recognition_level: abstract / partial / clear
duration_category: micro / court / moyen / long contrôlé
movement_profile: statique / flux / événementiel / intermittent / dense
spectral_profile: grave / médium / aigu / large / troué / bruyant
noise_profile: propre / bruité / humain / naturel / urbain / indéterminé
sub_relation: neutre / masque / ducked / support / conflit
didgeridoo_relation: espace autour / masque / contraste / dialogue
guimbardes_relation: microtexture / masque / contraste / réponse
gong_relation: post-résonance / halo / dramatisme à éviter / indépendant
tambour_relation: espace autour / masque / documentaire à éviter / indépendant
risk_profile: ambient / documentaire / décor naturel / masque / perte techno / bruitage
preferred_roles: lieu exposé / halo / transition / microtexture / beauté autonome
forbidden_roles: décor permanent / paysage aléatoire / remplissage / banque automatique / ambiance de fond par défaut
```

---

# 8. Checks nécessaires

```text
conflict_checks_required: [field_sub_masking, field_didgeridoo_masking, field_jaw_harp_masking, field_voice_masking, ambient_excess, documentary_risk]
pitch_checks_required: [spectral center if any, relation aux partiels, relation au pitch_center]
output_mix_checks_required: [headroom, noise floor, low-mid load, stereo width, mono compatibility, fatigue]
manual_review_required: true
```

---

# 9. Prochaine action

Après les besoins minimaux de voix et field recordings :

```text
préparer les premiers schémas material_asset pour sources live fixes ;
commencer par guimbardes live et didgeridoo live ;
ensuite seulement relier les samples minimaux conditionnels à des material_assets.
```
