# 11_TIMBRE_MATERIAL_MAPPER

Version : v0.1  
Statut : spécification détaillée de module, sans prototypage.

## Objet

Ce document détaille le futur module **Timbre & Material Mapper**.

Ce module décide comment une fonction musicale, un phénomène sonore, un rôle, une trajectoire ou une scène peuvent être portés par une matière sonore donnée.

Il ne choisit pas simplement “un son”. Il choisit ou propose :

```text
une source ;
une matière ;
un degré de reconnaissance ;
un degré d’abstraction ;
un mode de transformation ;
un comportement timbral ;
une compatibilité de rôle ;
une compatibilité de trajectoire ;
des risques ;
des protections ;
des contraintes de sound design ;
des contraintes de pitch / partiels / formants ;
des contraintes de conflit / diffusion future.
```

Le module sert donc à relier :

```text
fonction musicale
→ phénomène
→ objet sonore
→ matière
→ traitement
→ rôle
→ trajectoire
→ scène
→ contrôle
→ protection.
```

---

# 1. Question centrale

```text
Quelle matière sonore peut porter cette fonction, dans ce rôle, à ce moment, avec quel degré de reconnaissance ou d’abstraction, sans trahir la trajectoire ni surcharger le système ?
```

Exemples :

```text
un gong doit-il rester reconnaissable ou devenir masse spectrale ?
une voix doit-elle rester signal, devenir matière, ou devenir halo ?
un field recording doit-il rester source identifiable ou devenir texture fonctionnelle ?
un son synthétique doit-il être assumé comme synthétique ou naturalisé comme phénomène physique ?
une source aquatique doit-elle rester eau ou devenir densité / halo / post-résonance ?
un didgeridoo live doit-il être transformé, renforcé, protégé ou laissé brut ?
```

---

# 2. Principe général

Le module doit éviter deux erreurs :

```text
choisir des sons beaux mais sans fonction ;
choisir des sources naturelles seulement comme décor.
```

Principe :

```text
matière = support fonctionnel + identité sensible + comportement transformable + risques.
```

Le son n’est donc pas validé parce qu’il est beau, naturel, rare ou impressionnant. Il est validé s’il peut tenir un rôle dans une scène ou une trajectoire.

---

# 3. Distinctions essentielles

## Source

Origine matérielle ou synthétique.

```text
gong ;
voix ;
didgeridoo ;
field recording ;
eau ;
pluie ;
métal ;
peau ;
synthèse ;
resynthèse ;
sample ;
live input.
```

## Matière

Qualité perceptive utilisable.

```text
métal dense ;
souffle grave ;
queue harmonique ;
grain humide ;
partiels brillants ;
voix formantique ;
sub compact ;
texture de frottement ;
résonance instable.
```

## Trace de source

Ce qui permet encore de reconnaître, sentir ou deviner l’origine.

```text
attaque ;
formants ;
partiels ;
irrégularité ;
souffle ;
geste ;
queue ;
texture ;
connotation.
```

## Transformation

Opération qui modifie la matière.

```text
filtrage ;
granulation ;
convolution ;
resynthèse ;
résonateur ;
compression ;
étirement ;
fragmentation ;
stacking ;
feedback ;
modulation formantique ;
transposition ;
réduction spectrale.
```

## Rôle

Fonction momentanée de la matière.

```text
fondation ;
trace corporelle ;
signal ;
halo ;
rugissement ;
pression ;
ornement fonctionnel ;
beauté exposée ;
tension ;
résolution.
```

---

# 4. Continuum reconnaissance / abstraction

Le module doit gérer un continuum, pas un choix binaire.

```text
source reconnaissable ;
source transformée mais identifiable ;
source partiellement abstraite ;
phénomène autonome avec trace de source ;
phénomène presque abstrait ;
synthèse naturalisée sans source réelle directe.
```

## Règle

```text
préserver la source quand sa reconnaissance sert le rôle ;
abstraire la source quand la fonction musicale l’exige ;
garder une trace quand l’identité sensible est importante ;
assumer la synthèse si elle porte mieux le phénomène ;
revenir à la source si l’abstraction devient décorative ou générique.
```

---

# 5. Entrées du module

## Depuis Object Registry

```text
objets disponibles ;
source_type ;
material_family ;
object_profiles ;
role_candidates ;
protected_dimensions ;
source_recognition_priority ;
risk_profile ;
live_availability ;
relation_to_other_objects.
```

## Depuis Function / Phenomenon Engines

```text
fonction demandée ;
phénomène demandé ;
intensité du phénomène ;
contour requis ;
pression requise ;
densité requise ;
espace requis ;
forme de transformation.
```

## Depuis Trajectory Engine

```text
trajectoire active ;
operation_stack ;
trajectory_phase ;
dimension_targets ;
resolution_target ;
bifurcation_options ;
retard / annulation / tension.
```

## Depuis Scene / Performance Conductor

```text
scène active ;
état actif ;
objets prioritaires ;
rôles actifs ;
trajectoires autorisées ;
objets protégés ;
niveau d’autonomie ;
intentions de scène.
```

## Depuis Pitch / Harmonic Field Manager

```text
pitch_center ;
spectral_root ;
partial_alignment ;
formant_focus ;
sub_pitch_relation ;
harmonic_tension ;
field_stability ;
halo_tuning ;
source_recognition_weight.
```

## Depuis Conflict / Protection Manager

```text
conflits actifs ;
risques de masquage ;
protections demandées ;
reduction_request ;
lock_request ;
source_recognition_warning ;
material_conflict_warning ;
mid_load_warning ;
fatigue_warning.
```

## Depuis Router

```text
contrôles visibles ;
contrôles profonds accessibles ;
contrôles d’urgence ;
focus objet ;
focus trajectoire ;
manual_override ;
performer_intent.
```

## Depuis contraintes sound design / outils

```text
sources disponibles ;
corpus minimal ;
procédés disponibles ;
coût CPU ;
latence ;
mode live / offline ;
échantillon / synthèse / hybride ;
outil natif / plugin / Max custom ;
possibilité de remplacement futur.
```

---

# 6. Sorties du module

Le module peut produire :

```text
material_candidate ;
source_strategy ;
recognition_level ;
abstraction_level ;
hybridization_plan ;
transformation_chain ;
processing_constraints ;
role_fit_score ;
trajectory_fit_score ;
source_trace_strategy ;
risk_profile ;
protection_requests ;
pitch_constraints ;
conflict_warnings ;
router_control_suggestions ;
sound_engine_requirements ;
corpus_request ;
offline_preparation_request.
```

---

# 7. Stratégies de matière

## Source directe

```text
gong enregistré ;
voix brute ;
didgeridoo live ;
field recording peu transformé ;
peau frappée ;
clochettes.
```

Utile quand la reconnaissance de source est importante.

## Source transformée

```text
voix filtrée ;
gong resserré ;
field recording découpé ;
eau granulaire ;
pluie comme microtexture ;
métal pitché ou ralenti.
```

Utile quand la source doit rester sensible mais changer de rôle.

## Hybride réel / synthèse

```text
sub synthétique renforçant un tambour ;
résonateur sur voix ;
gong + synthèse de partiels ;
field recording + bruit filtré ;
didgeridoo live + renfort sub discret.
```

Utile quand une source réelle ne suffit pas à tenir la fonction.

## Synthèse naturalisée

```text
sub physique ;
vent synthétique ;
eau procédurale ;
percussions synthétiques à comportement acoustique ;
résonance modale ;
feedback contrôlé.
```

Utile quand le phénomène est plus important que la source réelle.

## Resynthèse / modèle partiel

```text
extraire partiels ;
reconstruire résonance ;
prolonger queue ;
renforcer formants ;
transformer attaque ;
recréer halo.
```

Utile quand on veut conserver une trace tout en transformant fortement.

## Préparation offline

```text
stacking ;
longues textures ;
corpus minimal ;
versions optimisées ;
matériaux pour tests ;
convolution impulses ;
resampling contrôlé.
```

Utile pour réduire CPU, stabiliser une matière ou préparer des objets complexes non jouables en direct.

---

# 8. Structure possible d’une fiche matière

```text
material_id
material_name
material_tags
source_type
source_identity
source_recognition_level
abstraction_level

MATERIAL
attack_character
tail_character
spectral_profile
partial_profile
formant_profile
noise_profile
grain_profile
density_behavior
space_behavior
body_capacity

FUNCTION
possible_functions
possible_roles
forbidden_roles
trajectory_capabilities
scene_affinities

TRANSFORMATION
available_transformations
preferred_transformations
forbidden_transformations
hybridization_options
offline_preparation_possible
live_processing_possible

RISKS
masking_risk
mid_load_risk
fatigue_risk
source_loss_risk
style_drift_risk
cpu_risk
latency_risk

PROTECTIONS
protected_trace
protected_dimensions
source_recognition_constraints
conflict_sensitivity
emergency_actions

OUTPUTS
sound_engine_requirements
pitch_constraints
router_controls
conflict_warnings
```

---

# 9. Relation à Object Registry

Object Registry sait ce qu’est un objet et ce qu’il peut devenir.

Timbre & Material Mapper décide comment sa matière peut être utilisée maintenant.

Exemple :

```text
Object Registry : gong peut être impact, halo, partiels, beauté autonome.
Timbre Mapper : dans cette scène, utiliser gong comme masse de résolution avec queue contrôlée et partiels non tempérés.
```

Le Mapper ne doit pas créer une nouvelle identité d’objet sans la renvoyer au Registry.

---

# 10. Relation à Pitch / Harmonic Field Manager

Le Mapper doit tenir compte de :

```text
pitch_center ;
spectral_root ;
partial_alignment ;
formant_focus ;
sub_pitch_relation ;
halo_tuning ;
field_stability.
```

Exemples :

```text
si gong comme résolution → ne pas forcer accordage trop propre ;
si voix signal → préserver formants utiles ;
si didgeridoo live → ne pas quantifier brutalement ;
si halo harmonique → vérifier qu’il ne masque pas le centre ;
si microtonalité → vérifier qu’elle reste située et résoluble.
```

---

# 11. Relation à Conflict / Protection Manager

Le Mapper doit signaler :

```text
matière qui masque voix ;
matière qui surcharge bas-médium ;
source recognition perdue alors qu’elle est requise ;
hybridation qui écrase live input ;
texture qui devient décorative ;
procédé qui fatigue ;
matériau qui empêche retour au corps ;
CPU / latence risqués.
```

Le Conflict Manager peut demander :

```text
préserver trace de source ;
réduire densité matière ;
changer support ;
retarder transformation ;
verrouiller procédé ;
protéger live ;
protéger voix ;
réduire abstraction ;
stabiliser contour.
```

---

# 12. Relation à Contextual Control Router

Le Mapper ne doit pas exposer ses procédés techniques au premier plan.

Contrôles jouables possibles :

```text
Trace source ;
Abstraction ;
Matière ;
Grain ;
Contour ;
Rugissement ;
Distance ;
Densité matière ;
Préserver source ;
Hybridation ;
Réduire masque ;
Protéger live.
```

Contrôles profonds :

```text
granulation rate ;
convolution source ;
partial resynthesis ;
formant shift ;
noise profile ;
stacking amount ;
transient extraction ;
corpus selector ;
CPU mode.
```

---

# 13. Relation aux Sound Engines

Le Mapper ne produit pas forcément le son. Il donne des exigences aux engines.

Exemples :

```text
besoin d’un sampler ;
besoin d’un générateur procédural ;
besoin d’un resonator ;
besoin de granulation ;
besoin de convolution ;
besoin d’un live input ;
besoin d’une resynthèse offline ;
besoin d’un moteur hybride.
```

Le Mapper doit aussi pouvoir dire :

```text
ce son doit rester remplaçable ;
ce procédé doit être offline ;
ce traitement doit être profond ;
ce mapping doit rester léger pour le live ;
ce matériau exige une recherche d’outil.
```

---

# 14. Corpus minimal

Le module doit éviter de créer une grande banque par défaut.

Corpus utile seulement si :

```text
une source est difficile à produire live ;
un matériau est nécessaire à plusieurs rôles ;
un objet sert à tester plusieurs modules ;
une texture longue est impossible en temps réel ;
un son doit être préparé pour stabilité / CPU ;
une source doit alimenter convolution, granulation ou resynthèse.
```

Corpus minimal possible :

```text
quelques gongs ;
quelques peaux / tambours ;
quelques métaux courts ;
quelques voix / souffles / fragments ;
quelques textures de lieux ;
quelques matières eau / pluie / frottements ;
quelques résonances ;
quelques prises didgeridoo si nécessaire, sans remplacer le live.
```

---

# 15. Cas test — Gong comme masse de résolution

## Situation

```text
pré-drop armé ;
gong choisi comme résolution ;
sub retenu ;
halo contrôlé ;
source recognition moyenne requise.
```

## Attendu

```text
choisir matière gong dense ;
préserver attaque et partiels ;
contrôler queue ;
ne pas forcer accordage tempéré ;
renforcer masse si nécessaire par hybridation discrète ;
prévenir Conflict si bas-médium masque sub.
```

## Échec

```text
gong décoratif ;
gong trop propre ;
queue incontrôlée ;
sub masqué ;
résolution floue.
```

---

# 16. Cas test — Voix signal vs voix matière

## Situation A — voix signal

```text
rôle = signal ;
semantic_clarity requise ;
formants protégés ;
scène = tension / pré-drop.
```

Attendu :

```text
préserver intelligibilité ou présence ;
limiter traitements masquants ;
protéger formants ;
éviter halo vocal trop large ;
proposer Protéger voix au Router.
```

## Situation B — voix matière

```text
rôle = matière ;
sémantique non prioritaire ;
fragmentation autorisée ;
trajectoire = suspension ou texture.
```

Attendu :

```text
autoriser abstraction ;
préserver trace humaine par souffle / formants / grain ;
fragmenter sans gimmick ;
prévenir si perte totale de source non voulue.
```

Échec général :

```text
voix devient chanson non désirée ;
voix devient gimmick ;
voix masquée alors qu’elle est signal ;
voix abstraite sans trace alors que la source est importante.
```

---

# 17. Cas test — Didgeridoo live + renfort synthétique

## Situation

```text
didgeridoo live central ;
sub synthétique possible ;
rôle = grave vivant / formants ;
trajectoire = torsion résonante.
```

## Attendu

```text
protéger source live ;
ne pas remplacer didgeridoo par synthèse ;
utiliser renfort sub seulement si nécessaire ;
préserver souffle / formants / agency ;
limiter analyse trop déterministe ;
prévenir Conflict si renfort écrase live.
```

## Échec

```text
didgeridoo devient basse automatique ;
source live perd son rôle ;
sub synthétique domine ;
formants écrasés ;
hybridation non transparente.
```

---

# 18. Cas test — Eau / pluie comme texture fonctionnelle

## Situation

```text
source = eau ou pluie procédurale / enregistrée ;
rôle possible = halo, microtexture, post-résonance, densité naturelle, masque contrôlé ;
scène = suspension / transition.
```

## Attendu

```text
ne pas utiliser comme décor naturaliste ;
définir fonction précise ;
contrôler densité et masque ;
préserver ou supprimer reconnaissance selon scène ;
traduire en contrôle Distance / Grain / Densité matière / Réduire masque.
```

## Échec

```text
paysage sonore plaqué ;
source trop illustrative ;
masquage de voix ou impact ;
texture permanente sans rôle ;
corpus eau trop grand sans utilité.
```

---

# 19. Cas test — Sub synthétique naturalisé

## Situation

```text
fonction = corps / fondation / pression ;
source = synthèse ;
objectif = phénomène physique, pas basse standard ;
relation avec pitch field active.
```

## Attendu

```text
choisir synthèse stable, corporelle, non générique ;
maintenir sub_center ;
préserver contour ;
permettre relation au champ sans perdre corps ;
prévenir Conflict si sub devient flou ou trop large.
```

## Échec

```text
basse électronique standard sans singularité ;
sub trop large ;
sub instable ;
pression confondue avec volume ;
masquage du live.
```

---

# 20. Risques du module

```text
créer une banque de sons déguisée ;
choisir des sons beaux mais inutiles ;
utiliser le naturel comme décor ;
abstraire au point de perdre toute source ;
préserver la source au point de bloquer la fonction ;
multiplier les procédés techniques ;
exposer trop de contrôles profonds ;
choisir des outils avant les fonctions ;
figer les objets ;
ignorer les conflits de pitch, halo, voix, sub ou live.
```

## Garde-fous

```text
toujours partir de fonction / rôle / trajectoire ;
préserver ou abstraire la source au cas par cas ;
garder une trace si elle sert la musique ;
préférer corpus minimal ;
séparer choix de matière et sound engine ;
travailler avec Pitch et Conflict ;
préserver l’agency live ;
transformer les procédés techniques en contrôles musicaux ;
rendre les traitements profonds quand ils ne sont pas performatifs.
```

---

# 21. Prochaine étape conceptuelle

Après ce module, deux directions sont possibles :

```text
1. Audit Timbre / Material ↔ Object Registry / Conflict / Pitch ;
2. Détail des Sound Engines / Instruments.
```

Avis actuel : faire un audit léger avant de détailler les Sound Engines, pour éviter de choisir trop vite des outils ou moteurs sonores.
