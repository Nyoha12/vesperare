# 09_PITCH_HARMONIC_FIELD_MANAGER

Version : v0.1  
Statut : spécification détaillée de module, sans prototypage.

## Objet

Ce document détaille le futur module **Pitch / Harmonic Field Manager**.

Ce module organise les relations de hauteur, de centres spectraux, de partiels, de formants, de microtensions et de stabilité harmonique dans Vesperare.

Il ne doit pas imposer une harmonie classique, une grille tempérée unique ou une logique d’accords plaquée. Il doit gérer des champs de relations sonores :

```text
sub ;
pitch_center ;
spectral_root ;
partiels ;
formants ;
microtonalité ;
inharmonicité ;
centres de gravité ;
tensions / résolutions ;
halos accordés ;
relations entre objets.
```

---

# 1. Question centrale

```text
Comment organiser les hauteurs, centres spectraux, partiels et formants pour produire tension, matière, lisibilité et résolution sans perdre le corps ?
```

Le module doit répondre à plusieurs situations :

```text
un sub doit-il suivre un centre spectral ou rester autonome ?
un gong peut-il préparer une résolution harmonique ?
une voix doit-elle être comprise par son pitch, ses formants ou sa présence ?
un didgeridoo influence-t-il le centre grave ou seulement le champ formantique ?
un halo doit-il être accordé, inharmonique, flottant ou stabilisé ?
une microtension est-elle féconde ou trop instable ?
```

---

# 2. Principe général

Vesperare distingue plusieurs notions souvent confondues :

```text
hauteur jouée ;
hauteur ressentie ;
pitch_center ;
spectral_root ;
sub_center ;
formant_center ;
partial_field ;
harmonic_field ;
microtonal_spread ;
inharmonicity_amount.
```

Le module doit permettre qu’un objet soit musicalement important même si sa hauteur est ambiguë.

Exemples :

```text
gong : partiels et inharmonicité plus importants qu’une note unique ;
didgeridoo : bourdon, formants, souffle et centre grave ;
voix : formants, sémantique, hauteur ressentie, présence ;
sub : corps, centre, pression, stabilité ;
halo : champ harmonique ou inharmonique, queue, espace accordé.
```

---

# 3. Régimes harmoniques possibles

Le module doit permettre plusieurs régimes, non exclusifs.

## Régime stable / corporel

```text
sub clair ;
centre grave lisible ;
peu de micro-instabilité ;
retour au corps possible.
```

## Régime spectral

```text
partiels dominants ;
relations entre objets par harmoniques ;
gongs, bols, cloches, halos ;
centre de gravité spectral plutôt que note.
```

## Régime microtonal contrôlé

```text
écarts subtils ;
battements ;
tension matérielle ;
instabilité réversible ;
résolution possible.
```

## Régime formantique

```text
voix ;
didgeridoo ;
résonateurs ;
filtres vocaux ;
lignes vivantes ;
identité de source par formants.
```

## Régime inharmonique

```text
gongs ;
métaux ;
percussions tonales ;
résonances non tempérées ;
beauté autonome ;
tension / rugissement.
```

## Régime flottant / suspendu

```text
centre volontairement instable ;
sub retenu ;
halo ouvert ;
pré-drop ou suspension ;
résolution différée.
```

---

# 4. Entrées du module

## Depuis Object Registry

```text
objets actifs ;
profils harmoniques ;
profils spectraux ;
partial_profile ;
formant_profile ;
pitch_center déclaré ;
spectral_root probable ;
inharmonicity_amount ;
microtonal_behavior ;
resolution_target_capacity.
```

## Depuis Trajectory Engine

```text
trajectoire active ;
trajectory_phase ;
operation_stack ;
dimension_targets ;
resolution_target ;
bifurcation_options ;
tension / résolution demandée ;
suspension / expansion / torsion / pré-drop.
```

## Depuis Scene / Performance Conductor

```text
scène active ;
état actif ;
trajectoires autorisées ;
objets prioritaires ;
dimensions protégées ;
body_trace requirement ;
resolution_permission ;
autonomy_level.
```

## Depuis Conflict / Protection Manager

```text
sub_stability warning ;
field_instability warning ;
partial_masking warning ;
formant_conflict warning ;
resolution_delay_request ;
protected_dimensions ;
reduction_request ;
lock_request.
```

## Depuis Live Object Interpreter

```text
live_pitch_estimate ;
live_spectral_center ;
live_formant_profile ;
live_partial_activity ;
analysis_confidence ;
human_priority ;
latency_sensitivity.
```

## Depuis Sound Engines / Timbre Mapper

```text
available_tunings ;
pitch_modulation_range ;
resonator_settings ;
sample_root ;
formant_shift_range ;
partial_synthesis_capacity ;
source_recognition_constraints.
```

---

# 5. Sorties du module

Le module peut produire :

```text
pitch_center ;
spectral_root ;
sub_pitch_relation ;
partial_alignment ;
formant_focus ;
harmonic_tension ;
microtonal_spread ;
field_stability ;
resolution_target ;
halo_tuning ;
resonator_constraints ;
pitch_modulation_limits ;
formant_shift_limits ;
trajectory_harmonic_state ;
conflict_warning ;
router_control_suggestions.
```

Il ne produit pas directement l’harmonie finale. Il fournit des relations et contraintes aux autres modules.

---

# 6. Variables principales

```text
pitch_center
spectral_root
sub_center
sub_pitch_relation
partial_profile
partial_alignment
partial_density
formant_profile
formant_focus
formant_motion
microtonal_spread
harmonic_tension
field_stability
inharmonicity_amount
resolution_target
halo_tuning
spectral_gravity
source_recognition_weight
```

---

# 7. Opérations possibles

## Stabiliser

```text
réduire microtonal_spread ;
clarifier sub_center ;
aligner certains partiels ;
limiter formant drift ;
renforcer pitch_center.
```

## Suspendre

```text
affaiblir résolution ;
augmenter field_instability contrôlée ;
garder body_trace ;
retarder sub resolution ;
ouvrir halo_tuning.
```

## Tendre

```text
augmenter harmonic_tension ;
désaligner légèrement partiels ;
créer battements ;
écarter sub_pitch_relation ;
renforcer inharmonicité.
```

## Résoudre

```text
ramener sub relation ;
stabiliser partial_alignment ;
réduire microtonal_spread ;
clarifier spectral_root ;
préparer retour au corps.
```

## Colorer

```text
changer voicing spectral ;
accentuer certains partiels ;
modifier formant_focus ;
orienter halo_tuning ;
changer centre de gravité sans changer pitch explicite.
```

## Protéger

```text
empêcher sub de devenir flou ;
empêcher formants live d’être masqués ;
empêcher halo d’écraser centre spectral ;
empêcher microtonalité de devenir instabilité gratuite.
```

---

# 8. Relation au sub

Le sub est une dimension spéciale.

Il peut être :

```text
fondation ;
trace corporelle ;
centre de résolution ;
pression ;
grave retenu ;
objet de tension ;
centre autonome.
```

Le Pitch / Harmonic Field Manager ne doit pas toujours forcer le sub à suivre l’harmonie.

Trois relations possibles :

```text
sub suit le champ ;
sub résiste au champ ;
sub reste stable pendant que le champ bouge.
```

Critère :

```text
le corps reste-t-il lisible ?
la tension est-elle volontaire ?
la résolution est-elle possible ?
le Conflict / Protection Manager signale-t-il un danger ?
```

---

# 9. Relation aux formants

Les formants peuvent porter l’identité d’une source sans passer par une hauteur stable.

Objets concernés :

```text
voix ;
didgeridoo ;
résonateurs ;
filtres vocaux ;
bois / vents ;
objets resynthétisés.
```

Fonctions possibles :

```text
préserver reconnaissance de source ;
créer torsion ;
porter une ligne vivante ;
faire respirer une matière ;
relier live input et champ harmonique ;
préparer cri ou résolution.
```

Risque :

```text
formants trop déplacés → source perdue ;
formants concurrents → masque voix / didgeridoo ;
formant motion trop déterministe → effet plaqué.
```

---

# 10. Relation aux gongs, bols, métaux

Ces objets ne doivent pas être réduits à une note.

Le module doit gérer :

```text
partial_profile ;
inharmonicity_amount ;
spectral_root ressenti ;
queue harmonique ;
battements ;
champ de résolution ;
masse métallique ;
beauté autonome.
```

Cas d’usage :

```text
gong comme résolution ;
gong comme halo ;
gong comme rugissement ;
gong comme champ de partiels ;
gong comme tension pré-drop ;
gong comme beauté autonome exposée.
```

Protection nécessaire :

```text
éviter boue bas-médium ;
contrôler queue ;
préserver impact si rôle = résolution ;
ne pas masquer sub ou voix ;
ne pas forcer accordage trop propre.
```

---

# 11. Relation aux halos

Un halo peut être :

```text
accordé ;
inharmonique ;
flottant ;
stabilisé ;
large ;
étroit ;
post-résonant ;
champ de tension ;
champ de résolution.
```

Le Pitch Manager fournit `halo_tuning`, mais ne décide pas seul de l’espace. Il travaille avec :

```text
Halo / Space / Resonance Controller ;
Conflict / Protection Manager ;
Scene / Performance Conductor ;
Contextual Control Router.
```

Risque :

```text
halo accordé trop beau mais décoratif ;
halo inharmonique trop instable ;
halo masquant le centre ;
halo qui empêche le retour au corps.
```

---

# 12. Relation aux trajectoires

## Pré-drop naturalisé

```text
augmenter tension ;
retenir sub resolution ;
armer resolution_target ;
maintenir body_trace ;
préparer gong / sub / voix ;
laisser possibilité de fausse résolution.
```

## Suspension / expansion

```text
ouvrir harmonic field ;
autoriser microtonal_spread contrôlé ;
protéger trace corporelle ;
élargir halo_tuning ;
préparer retour au corps.
```

## Torsion résonante

```text
moduler formants ;
tordre partiels ;
protéger grave ;
garder relation au live ;
éviter acidité plaquée.
```

## Densification polytexturale

```text
surveiller mid_load harmonique ;
préserver espace entre timbres ;
éviter empilement de partiels concurrents ;
maintenir lisibilité des accents.
```

## Beauté autonome

```text
exposer partial_profile ;
protéger queue ;
préserver matière ;
préparer sortie formelle ;
ne pas transformer en simple ambientisation.
```

---

# 13. Relation avec Conflict / Protection Manager

Le Pitch / Harmonic Field Manager doit signaler :

```text
sub relation dangereuse ;
field_stability trop faible ;
partiels trop masquants ;
formants concurrents ;
microtonal_spread excessif ;
résolution impossible ;
centre spectral perdu.
```

Le Conflict / Protection Manager peut demander :

```text
stabiliser sub ;
réduire microtonalité ;
protéger formants live ;
retarder résolution ;
verrouiller pitch modulation ;
réduire halo_tuning ;
protéger centre spectral.
```

---

# 14. Relation avec Router

Le module ne doit pas exposer toutes ses variables.

Contrôles possibles à router :

```text
Tension harmonique ;
Stabiliser champ ;
Résoudre ;
Microtension ;
Partiels ;
Formants ;
Sub relation ;
Halo tuning ;
Ouvrir harmonie ;
Réduire instabilité.
```

Contrôles profonds :

```text
partial_alignment ;
inharmonicity_amount ;
formant_shift_range ;
microtonal_spread exact ;
resonator ratios ;
analysis confidence thresholds.
```

Urgences possibles :

```text
Stabiliser sub ;
Réduire instabilité ;
Protéger formants live ;
Réduire halo harmonique ;
Retour au centre.
```

---

# 15. Structure possible du champ harmonique

```text
field_id
field_name
field_tags
field_state

CENTERS
pitch_center
spectral_root
sub_center
formant_center

OBJECTS
object_contributions
priority_objects
protected_objects

PARTIALS
partial_profiles
partial_alignment
partial_density
inharmonicity_amount

TENSION
harmonic_tension
microtonal_spread
field_stability
resolution_target

CONTEXT
scene_id
trajectory_id
trajectory_phase
body_trace_requirement
conflict_state

OUTPUTS
halo_tuning
resonator_constraints
pitch_modulation_limits
formant_shift_limits
router_suggestions
conflict_warnings
```

---

# 16. Cas test — Gong comme résolution

## Situation

```text
gong armé ;
pré-drop en phase seuil ;
sub retenu ;
halo contrôlé ;
resolution_target disponible.
```

## Attendu

```text
identifier partial_profile du gong ;
préparer spectral_root de résolution ;
maintenir sub relation stable ;
contrôler queue ;
permettre résolution sans accordage trop propre ;
prévenir Conflict Manager si bas-médium dangereux.
```

## Échec

```text
gong forcé en note tempérée ;
sub masqué ;
queue incontrôlée ;
résolution spectaculaire mais floue.
```

---

# 17. Cas test — Didgeridoo live comme champ formantique

## Situation

```text
didgeridoo live central ;
torsion résonante ;
sub synthétique possible ;
formants actifs ;
analysis_confidence variable.
```

## Attendu

```text
suivre centre grave sans l’imposer ;
extraire formant_focus avec prudence ;
limiter pitch automation si confiance faible ;
protéger agency live ;
prévenir Conflict Manager si sub concurrence le live ;
proposer au Router Formants / Stabiliser grave / Réduire instabilité.
```

## Échec

```text
didgeridoo quantifié comme basse ;
formants ignorés ;
sub synthétique écrase la source ;
torsion devient effet plaqué.
```

---

# 18. Cas test — Suspension microtonale

## Situation

```text
halo ouvert ;
sub trace corporelle ;
gongs / voix / clochettes contribuent au champ ;
scène = suspension avant résolution.
```

## Attendu

```text
autoriser microtonal_spread contrôlé ;
maintenir body_trace ;
préparer resolution_target ;
signaler field_stability au Conflict Manager ;
proposer au Router Tension harmonique / Résoudre / Retour au centre.
```

## Échec

```text
microtonalité gratuite ;
perte totale du centre ;
sub décroché sans intention ;
halo devient ambientisation ;
résolution impossible.
```

---

# 19. Risques du module

```text
imposer une harmonie trop classique ;
complexifier sans perception claire ;
perdre le corps ;
forcer les objets inharmoniques à être propres ;
faire de la microtonalité décorative ;
ignorer les formants ;
quantifier trop fortement le live ;
masquer voix ou didgeridoo ;
confondre tension et instabilité ;
exposer trop de paramètres au Router.
```

## Garde-fous

```text
distinguer hauteur, centre spectral, formants et partiels ;
protéger sub et body_trace ;
garder resolution_target possible ;
laisser les gongs et métaux inharmoniques quand c’est musicalement utile ;
ne pas quantifier le live sans nécessité ;
travailler avec Conflict / Protection Manager ;
rendre les contrôles techniques profonds ;
préserver reconnaissance de source au cas par cas.
```

---

# 20. Prochaine étape conceptuelle

Après ce module, deux directions sont possibles :

```text
1. Audit Pitch / Harmonic Field ↔ Conflict / Protection ;
2. Détail de Timbre & Material Mapper.
```

Avis actuel : faire un audit léger Pitch ↔ Conflict avant Timbre, parce que les décisions de timbre et source recognition dépendront souvent de la stabilité du champ, des partiels, des formants et du sub.
