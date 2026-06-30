# 02_SPECIFICATION_MAX_FOR_LIVE

Version : v0.3  
Statut : spécification architecturale synchronisée avec les documents 05–08 et le cahier des phénomènes v0.3.

## Objet

Ce document décrit l’architecture future du système Max for Live / Ableton Live de Vesperare.

Il traduit les décisions esthétiques, phénoménologiques et performatives en architecture technique : objets sonores, rôles musicaux, trajectoires, scènes, microtonalité, contrôles contextuels, autonomie située, garde-fous et traitement des instruments live.

Il ne s’agit pas de concevoir un générateur autonome de musique à la place du compositeur. Le système doit rendre jouables, programmables et vivantes des structures de performance conçues à l’avance.

## Formulation technique actuelle

Système de composition et performance live dans Ableton Live / Max for Live, capable de générer, traiter, organiser et contrôler :

```text
fonctions techno naturalisées ;
objets sonores porteurs de rôles multiples ;
phénomènes corporels, spectraux, rythmiques, harmoniques et spatiaux ;
trajectoires globales et locales ;
scènes et états performatifs ;
contrôles contextuels ;
autonomie située ;
instruments live multidimensionnels ;
microtonalité, partiels, formants et centres spectraux ;
formes complètes de performance.
```

## Principe général

Le système ne doit pas seulement générer des sons ou des notes. Il doit coordonner des fonctions musicales, des phénomènes perceptifs, des objets sonores, des rôles et des trajectoires.

Principe de traduction :

```text
esprit stylistique
→ fonction musicale
→ phénomène sonore
→ objet sonore
→ rôle musical
→ trajectoire / scène
→ dimensions affectées
→ paramètres techniques
→ contrôles live
→ garde-fous
```

Le système doit toujours préserver :

```text
cohérence stylistique ;
fonction corporelle ;
sub et impact lisibles ;
intensité sans agression ;
richesse matérielle ;
contrôle de halo ;
compatibilité live ;
possibilité de performance complète.
```

---

# 1. Architecture d’organisation progressive des informations

## Rôle

Avant de construire des devices, il faut organiser progressivement les informations qui permettront au système d’être cohérent : dépendances, automatisations internes, modules, objets, rôles, trajectoires, paramètres et contrôles.

Cette couche n’est pas un module sonore. C’est une méthode d’architecture et de documentation pour éviter que le projet devienne :

```text
une accumulation de paramètres ;
une liste de devices indépendants ;
un ensemble de macros trop abstraites ;
un système autonome mal situé ;
un patch impossible à jouer en live.
```

## Principe

Chaque information ajoutée au projet doit progressivement pouvoir être située dans cette chaîne :

```text
intention musicale
→ fonction
→ phénomène
→ objet sonore
→ rôle
→ trajectoire / scène
→ dimension affectée
→ dépendances
→ automatisations possibles
→ paramètres techniques
→ groupement de contrôles
→ garde-fous
```

On ne doit pas tout définir immédiatement au même niveau de détail. Mais on doit savoir **où chaque information ira plus tard**.

## Niveaux d’information

### Niveau 1 — Esthétique / intention

```text
corps techno ;
hypnose ;
intensité sans agression ;
naturalisation ;
polytexture ;
sub / masse ;
suspension ;
torsion ;
champs harmoniques ;
performance complète.
```

### Niveau 2 — Phénomènes et objets

```text
phénomène sonore ;
objet sonore ;
rôle musical ;
capacité de trajectoire ;
risque musical ;
relation aux autres objets.
```

### Niveau 3 — Système et dépendances

```text
module responsable ;
entrées ;
sorties ;
variables internes ;
dépendances amont ;
dépendances aval ;
conflits possibles ;
garde-fous.
```

### Niveau 4 — Paramètres et automatisations

```text
paramètres techniques ;
modulations ;
automatisations programmées ;
automatisations contextuelles ;
automatisations de sécurité ;
contrôles live associés.
```

### Niveau 5 — Interface et jeu

```text
contrôles permanents ;
contrôles contextuels ;
contrôles par objet ;
contrôles par trajectoire ;
contrôles profonds ;
contrôles d’urgence.
```

## Types de dépendances à documenter

Une dépendance n’est pas seulement une connexion technique. Elle peut être musicale, perceptive ou performative.

```text
dépendance musicale : une fonction dépend d’un objet ou d’un rôle ;
dépendance spectrale : un objet dépend du sub, du halo ou d’un centre spectral ;
dépendance rythmique : une trajectoire dépend d’un état de grille, syncope ou densité ;
dépendance harmonique : un événement dépend d’un champ de partiels ou d’une tension microtonale ;
dépendance formelle : un drop, peak ou retour dépend d’une phase de scène ;
dépendance de contrôle : un paramètre dépend d’un contrôle permanent ou contextuel ;
dépendance de sécurité : une action dépend d’un garde-fou spectral, spatial ou corporel ;
dépendance live : une transformation dépend d’un instrument ou signal entrant.
```

## Types d’automatisations internes

Le mot automatisation ne signifie pas que le système compose à la place du compositeur. Il désigne des relations programmées, modulables ou conditionnelles entre éléments.

### Automatisation programmée

Définie à l’avance dans une scène ou une trajectoire.

```text
une suspension retire progressivement l’impact ;
un pré-drop retient le sub ;
un peak ouvre les partiels et l’espace ;
une beauté autonome prépare une réincorporation.
```

### Automatisation contextuelle

Dépend de la scène, de l’état, des objets actifs et des trajectoires.

```text
si le gong est rôle = masse de résolution, limiter sa queue ;
si la voix est rôle = signal, préserver intelligibilité ;
si le sub est rôle = fondation, protéger le centre grave.
```

### Automatisation réactive

Dépend d’une entrée live ou d’une analyse de signal.

```text
un gong live augmente halo mais réduit densité ;
une voix live ouvre un espace mais protège la sémantique ;
un didgeridoo live influence sub et centre spectral.
```

### Automatisation de garde-fou

Protège la performance.

```text
limiter harshness ;
réduire halo excessif ;
stabiliser sub ;
réduire densité ;
préserver impact ;
laisser place à l’instrument live.
```

### Automatisation de transition

Organise un passage entre états.

```text
corps → suspension ;
pré-drop → résolution ;
matière exposée → retour techno ;
torsion → expansion ;
champ harmonique → stabilisation.
```

## Logique fine de groupements de paramètres

Les paramètres ne doivent pas être groupés d’abord selon les devices techniques. Ils doivent être groupés selon ce que le performeur doit comprendre et jouer.

### Groupement par fonction

```text
Corps / Fondation ;
Tension / Résolution ;
Densité / Polytexture ;
Espace / Halo ;
Pitch / Harmoniques ;
Voix / Présence ;
Live Input / Réaction.
```

### Groupement par objet

```text
Gong ;
Voix ;
Sub ;
Polytexture ;
Halo ;
Clochettes ;
Didgeridoo ;
Field recording.
```

### Groupement par trajectoire

```text
Pré-drop ;
Suspension ;
Expansion ;
Torsion ;
Réincorporation ;
Densification ;
Résolution ;
Beauté autonome.
```

### Groupement par dimension

```text
rythme ;
impact ;
sub ;
spectre ;
halo ;
espace ;
harmonie ;
microtonalité ;
forme ;
lisibilité ;
confort.
```

### Groupement par urgence / protection

```text
Retour au corps ;
Stabiliser sub ;
Réduire densité ;
Réduire halo ;
Limiter aigus ;
Annuler drop ;
Geler ;
Reprise.
```

## Principe d’interface

L’interface ne doit pas donner accès à tout au même niveau.

```text
Tout doit être programmable.
Mais tout ne doit pas être visible au premier plan.
```

Les contrôles doivent être hiérarchisés ainsi :

```text
1. contrôles permanents ;
2. contrôles contextuels ;
3. contrôles par objet ;
4. contrôles par trajectoire ;
5. contrôles profonds ;
6. contrôles d’urgence.
```

Le Contextual Control Router devra donc présenter les bons contrôles selon :

```text
scène active ;
état actif ;
trajectoires actives ;
phase de trajectoire ;
objet prioritaire ;
rôle musical ;
risques détectés ;
niveau d’autonomie autorisé.
```

## Fiches progressives à produire plus tard

Avant prototypage, chaque élément important devra pouvoir être documenté sous forme de fiche.

### Fiche objet sonore

```text
nom ;
famille matérielle ;
fonctions possibles ;
rôles possibles ;
profil spectral ;
profil pitch / partiels ;
capacités de trajectoire ;
risques ;
garde-fous ;
contrôles associés.
```

### Fiche trajectoire

```text
nom ;
esprit musical ;
opérations ;
phases ;
objets possibles ;
rôles impliqués ;
dimensions affectées ;
dépendances ;
contrôles contextuels ;
conditions de résolution / bifurcation ;
risques.
```

### Fiche scène

```text
nom ;
état principal ;
objets actifs ;
rôles actifs ;
trajectoires autorisées ;
événements armés ;
automatisations programmées ;
contrôles prioritaires ;
contrôles d’urgence ;
bifurcations possibles.
```

### Fiche module

```text
nom ;
rôle ;
entrées ;
sorties ;
variables internes ;
dépendances ;
interactions ;
risques ;
priorité ;
forme possible dans Max for Live / Ableton.
```

### Fiche groupement de paramètres

```text
nom du groupe ;
niveau : permanent / contextuel / objet / trajectoire / profond / urgence ;
paramètres inclus ;
objets concernés ;
trajectoires concernées ;
conditions d’affichage ;
risques de contrôle ;
contrôles de protection associés.
```

## Matrices à construire progressivement

```text
objets × rôles ;
objets × trajectoires ;
rôles × dimensions ;
phénomènes × variables ;
trajectoires × phases ;
modules × dépendances ;
paramètres × contrôles ;
contrôles × contexte ;
risques × garde-fous.
```

Ces matrices doivent être construites progressivement, seulement lorsque les informations sont assez stables.

---

# 2. Architecture générale

## Schéma conceptuel

```text
[Scene / Performance Conductor]
        ↓
[Object Registry] ←→ [Pitch / Harmonic Field Manager]
        ↓
[Trajectory Engine]
        ↓
[Function / Phenomenon Engines]
        ↓
[Timbre & Material Mapper]
        ↓
[Sound Engines / Drum Racks / Instruments / Live Inputs]
        ↓
[Spectral & Comfort Governor]
        ↓
[Halo / Space / Resonance Controller]
        ↓
[Conflict / Protection Manager]
        ↓
[Output / Mix / Performance Layer]
```

En parallèle :

```text
[Live Instrument Inputs]
        ↓
[Audio Feature Extractor]
        ↓
[Live Object Interpreter]
        ↓
[Impact Matrix / Influence Router]
        ↓
[Scene Conductor / Object Registry / Governors]
```

Interface :

```text
[Permanent Controls]
[Contextual Control Router]
[Object View]
[Trajectory View]
[Deep Configuration]
[Emergency Controls]
```

Outil satellite :

```text
[Ableton Extensions SDK]
→ préparation de set, scènes, clips, banques, annotations, documentation, audits.
```

---

# 3. Scene / Performance Conductor

## Rôle

Coordonner les états, scènes, trajectoires, transitions, événements armés et niveaux d’autonomie.

Ce module est la couche supérieure du système. Il ne décide pas artistiquement à la place du compositeur ; il maintient la cohérence de ce qui a été programmé.

## Entrées

```text
scène active ;
état performatif actif ;
trajectoires autorisées ;
objets prioritaires ;
événements armés ;
contrôles live ;
phase de performance ;
entrées live ;
niveau d’autonomie autorisé.
```

## Sorties

```text
priorités de contrôle ;
autorisations de trajectoire ;
activation / désactivation de fonctions ;
garde-fous ;
contextes envoyés aux autres modules ;
préparation de transitions ;
propositions ou verrous de bifurcation.
```

## Variables possibles

```text
current_scene
current_state
next_state
transition_phase
scene_intensity
body_presence
suspension_depth
drop_readiness
peak_readiness
live_focus
material_focus
autonomy_level
armed_events
```

## Risques

```text
trop d’autonomie macro ;
scènes trop rigides ;
contrôles contextuels mal choisis ;
perte de spontanéité ;
collage d’influences ;
confusion entre état, scène et trajectoire.
```

---

# 4. Object Registry

## Rôle

Recenser les objets sonores disponibles, leurs caractéristiques, leurs rôles possibles, leurs capacités de trajectoire, leurs limites et leurs relations possibles avec les autres objets.

Un objet sonore peut être simple ou composite : gong, voix, sub, halo, polytexture, field recording, didgeridoo, groupe de clochettes, masse sub + gong, etc.

## Entrées

```text
banques de sons ;
pistes Ableton ;
instruments live ;
analyses de features ;
données déclarées par le compositeur ;
état de scène ;
rôles programmés.
```

## Sorties

```text
objets disponibles ;
rôles possibles ;
capacités de transformation ;
limites ;
relations entre objets ;
protections nécessaires ;
priorités d’objet.
```

## Attributs possibles d’un objet

```text
object_id
source_type
material_family
spectral_profile
pitch_profile
partial_profile
role_candidates
trajectory_capabilities
risk_profile
protection_rules
live_availability
```

## Exemples de rôles

```text
gong → halo, rugissement, masse de résolution, beauté autonome, champ microtonal ;
voix → signal, matière humaine, cri armé, halo vocal, fragment rythmique ;
sub → fondation, grave retenu, masse de drop, tension microtonale ;
polytexture → densité articulée, brillance, contrepoint, préparation de résolution.
```

## Risques

```text
objets essentialisés ;
rôles trop fixes ;
banque de sons pensée comme collection de samples plutôt que comme système d’objets ;
trop de métadonnées inutilisables en live.
```

---

# 5. Trajectory Engine

## Rôle

Gérer les trajectoires globales et locales : leurs opérations, phases, courbes, objets impliqués, dimensions affectées, conditions, bifurcations et conflits.

Une trajectoire n’est pas une automation linéaire. C’est une transformation distribuée entre objets, rôles et dimensions.

## Entrées

```text
scène active ;
état actif ;
trajectoires programmées ;
objets impliqués ;
rôles des objets ;
contrôles live ;
phases de trajectoire ;
conditions de déclenchement ;
entrées live.
```

## Sorties

```text
courbes de transformation ;
changements de priorité ;
modulations vers engines ;
indications au Control Router ;
conflits signalés ;
états de trajectoire ;
propositions de résolution ou bifurcation.
```

## Opérations de base

```text
retirer ;
densifier ;
ouvrir ;
tordre ;
suspendre ;
réaligner ;
stabiliser ;
exposer ;
fragmenter ;
rugir ;
éclaircir ;
compresser ;
respirer ;
déplacer ;
réincorporer ;
protéger ;
transférer.
```

## Phases possibles

```text
armement ;
préparation ;
engagement ;
seuil ;
résolution ;
bifurcation ;
post-trace ;
désarmement.
```

## Variables possibles

```text
trajectory_id
trajectory_phase
trajectory_priority
object_involvement
role_focus
dimension_targets
operation_stack
curve_shape
resolution_target
bifurcation_options
```

## Risques

```text
trajectoires trop abstraites ;
effet d’automation globale ;
perte de la nature propre des objets ;
conflits non arbitrés ;
trajectoires trop prévisibles ;
trop de trajectoires simultanées.
```

---

# 6. Pitch / Harmonic Field Manager

## Rôle

Coordonner pitch, centres spectraux, hauteurs ressenties, partiels, formants, microtonalité, champs harmoniques, halos et sub.

Il ne doit pas imposer une grille harmonique unique. Il doit permettre plusieurs régimes d’organisation sonore.

## Entrées

```text
pitch déclarés ;
analyses spectrales ;
partiels d’objets ;
formants vocaux ;
sub / basses ;
scène active ;
trajectoires harmoniques ;
mode ou champ programmé ;
contrôles live.
```

## Sorties

```text
pitch_center ;
spectral_root ;
relations de partiels ;
écarts microtonaux ;
accordages de halos ;
sub_pitch_relation ;
tension / résolution harmonique ;
contraintes envoyées aux sound engines.
```

## Régimes de hauteur

```text
régime tempéré ;
régime spectral ;
régime microtonal contrôlé ;
régime modal ;
régime bruité / centre spectral.
```

## Variables possibles

```text
pitch_center
spectral_root
microtonal_spread
harmonic_tension
partial_alignment
field_stability
inharmonicity_amount
resolution_target
sub_pitch_relation
halo_tuning
formant_focus
```

## Risques

```text
complexité ingérable ;
flou harmonique ;
perte du corps ;
accords plaqués ;
microtonalité décorative ;
instabilité constante sans résolution.
```

---

# 7. Function / Phenomenon Engines

## Rôle

Produire ou organiser des fonctions musicales et phénomènes perceptifs plutôt que seulement des patterns.

Ces engines sont inspirés du cahier des phénomènes, mais ne doivent pas devenir des modules fermés par style.

## Phénomènes à prendre en charge

```text
impact-fondation corporel ;
pression spectrale corporelle ;
contour sculpté / netteté sensible ;
hypnose active ;
intensité phénoménale sans agression ;
brillance rythmique naturalisée ;
polytexture percussive raffinée ;
espace musical occupé / halo fonctionnel ;
voix comme matière, instrument ou signal ;
beauté autonome / moment de matière ;
tension syncopée / attente / résolution ;
suspension / ouverture / expansion / peak non brutal ;
torsion résonante / ligne vivante ;
champs harmoniques / couleurs / microtensions.
```

## Entrées

```text
fonction demandée ;
objet disponible ;
rôle d’objet ;
trajectoire active ;
état de scène ;
contraintes pitch / halo / confort ;
contrôles live.
```

## Sorties

```text
patterns ;
gestes ;
modulations ;
priorités ;
relations entre objets ;
indications au Timbre Mapper ;
contraintes de contour, densité, pression et espace.
```

## Risques

```text
penser les phénomènes comme presets ;
générer des patterns sans fonction ;
perdre la relation au style ;
confondre influence stylistique et module ;
trop d’autonomie locale.
```

---

# 8. Timbre & Material Mapper

## Rôle

Associer une fonction ou un phénomène à un support sonore compatible.

Il doit répondre non seulement à “quel son ?”, mais à :

```text
quel objet ?
quel rôle ?
quelle trajectoire ?
quelle dimension ?
quels risques ?
quels garde-fous ?
```

## Entrées

```text
fonction musicale ;
phénomène ;
rôle désiré ;
objets disponibles ;
profil spectral ;
profil de pitch ;
scène ;
trajectoire ;
contraintes de lisibilité / confort.
```

## Sorties

```text
sélection d’objet ;
mapping paramètres ;
réglages de contour ;
choix de support ;
permissions de halo ;
alertes de risque ;
priorités de transformation.
```

## Critères

```text
attaque ;
queue ;
registre ;
brillance ;
naturalisation ;
fonction à remplir ;
rôle dans la scène ;
risque de halo ;
risque de masquage ;
connotation stylistique ;
compatibilité pitch / partiels ;
capacité de trajectoire.
```

## Risques

```text
beau son mais fonction faible ;
support naturel décoratif ;
son trop électronique standard ;
objet mal adapté au rôle ;
connotation trop forte ;
perte de contour.
```

---

# 9. Sound Engines / Instruments

## Rôle

Produire, lire ou traiter les sons concrets du système.

Les sound engines ne sont pas le centre conceptuel du projet. Ils incarnent les objets, rôles et trajectoires décidés par les couches supérieures.

## Sources possibles

```text
Drum Rack ;
Drum Sampler ;
Simpler / Sampler ;
Operator ;
Wavetable ;
Meld ;
DS devices ;
Granulator ;
field recordings ;
banques instrumentales ;
voix ;
instruments live traités ;
objets acoustiques enregistrés ;
résonateurs spectraux ;
Max for Live custom devices.
```

## Exigence

Chaque engine doit pouvoir déclarer ou transmettre :

```text
objet sonore porté ;
rôle actuel ;
profil spectral ;
profil pitch / partiels ;
contrôles disponibles ;
risques ;
compatibilités trajectorielles.
```

## Risques

```text
accumulation de devices ;
perte de lisibilité ;
contrôles non normalisés ;
banques trop grandes ;
sons beaux mais non intégrés ;
latence ou instabilité live.
```

---

# 10. Live Audio Listener / Live Object Interpreter

## Rôle

Analyser les entrées live sans leur imposer de rôle fixe, puis les interpréter comme objets sonores multidimensionnels.

## Instruments anticipés

```text
didgeridoo ;
gongs ;
tambours ;
voix ;
percussions ;
autres instruments acoustiques.
```

## Caractéristiques à extraire

```text
énergie ;
registre ;
attaque ;
sustain ;
brillance ;
résonance ;
densité ;
présence ;
instabilité ;
saillance ;
centre spectral ;
partiels ;
formants ;
rythmicité ;
queue.
```

## Sorties

```text
live_object_profile ;
live_role_suggestions ;
influence_degree ;
space_impact ;
sub_impact ;
halo_impact ;
density_reduction_request ;
trajectory_interaction_request.
```

## Risques

```text
analyse trop déterministe ;
imposer un rôle fixe à un instrument ;
réaction excessive du système ;
latence ;
perte de place pour le jeu humain ;
classification trop pauvre.
```

---

# 11. Impact Matrix / Influence Router

## Rôle

Définir comment les sons live influencent le système.

Le système ne doit pas dire automatiquement :

```text
ce son = fondation
```

mais plutôt :

```text
ce son occupe le grave ;
il a une longue résonance ;
il est saillant ;
il influence le halo à tel degré ;
il réduit ou non la densité générée ;
il peut porter tel rôle dans cette scène.
```

## Entrées

```text
live_object_profile ;
scène active ;
objet central ;
trajectoires actives ;
conflits ;
contrôles live ;
priorités de performance.
```

## Sorties

```text
influence sur densité ;
influence sur halo ;
influence sur sub ;
influence sur trajectoires ;
influence sur Object Registry ;
influence sur Control Router ;
activation de protections.
```

## Risques

```text
système trop réactif ;
interprétation erronée du live ;
feedback non contrôlé ;
perte de stabilité corporelle ;
réduction excessive des couches générées.
```

---

# 12. Spectral & Comfort Governor

## Rôle

Préserver l’intensité sans agression, le confort de diffusion, la lisibilité du spectre et la stabilité corporelle.

Ce module doit protéger la puissance du projet sans l’affaiblir.

## Entrées

```text
signal audio ;
spectral_pressure ;
densité ;
sub_stability ;
halo_budget ;
état de scène ;
objets protégés ;
trajectoires actives ;
live input.
```

## Actions possibles

```text
réduire certains aigus ;
raccourcir des queues ;
limiter un halo ;
réduire une densité ;
contrôler une saturation ;
stabiliser le sub ;
préserver l’impact principal ;
laisser de la place aux instruments live ;
réduire une boue bas-médium ;
protéger une voix ou un gong.
```

## Variables possibles

```text
spectral_pressure
sub_stability
mid_pressure
harshness_limit
brightness_comfort
air_fatigue
comfort_guard
impact_without_loudness
crowding_index
```

## Risques

```text
trop lisser ;
réduire l’intensité phénoménale ;
agir trop tard ;
agir de façon audible ;
ne pas comprendre le rôle musical d’une saturation ou d’une rugosité.
```

---

# 13. Halo / Space / Resonance Controller

## Rôle

Gérer halos, queues, résonances, espaces, delays, réverbs et profondeurs sans ambientiser automatiquement la musique.

L’espace doit être musical, pas décoratif.

## Entrées

```text
scène active ;
trajectoire d’ouverture / suspension / post-drop ;
objets impliqués ;
rôles des objets ;
halo_budget ;
space_depth ;
partiels ;
contrôles live.
```

## Sorties

```text
réverbération ;
delay ;
front_back_relief ;
queue control ;
halo permission ;
spatial pressure ;
post_resonance ;
réduction d’espace si risque.
```

## Variables possibles

```text
halo_depth
space_depth
front_back_relief
resonance_field
dry_wet_functional_balance
spatial_pressure
post_resonance_control
```

## Risques

```text
ambientisation ;
perte d’impact ;
flou rythmique ;
queues incontrôlées ;
masquage ;
espace décoratif ;
perte de proximité.
```

---

# 14. Contextual Control Router

## Rôle

Présenter les bons contrôles au bon moment, selon la scène, l’état, les trajectoires, leurs phases, les objets prioritaires, les rôles, les urgences et les garde-fous.

Tout doit pouvoir être programmable, mais tout ne doit pas être au premier plan en permanence.

## Entrées

```text
scène active ;
état actif ;
trajectoires actives ;
phases de trajectoire ;
objets prioritaires ;
rôles actifs ;
armed_events ;
risques ;
contrôles permanents ;
contrôles profonds ;
urgence.
```

## Sorties

```text
contrôles primaires ;
contrôles secondaires ;
contrôles profonds ;
contrôles d’urgence ;
contrôles d’objet ;
contrôles de trajectoire ;
contrôles de bifurcation.
```

## Vues nécessaires

```text
vue permanente ;
vue scène ;
vue trajectoire ;
vue objet ;
vue configuration profonde ;
vue urgence / sécurité.
```

## Risques

```text
interface trop complexe ;
contrôles critiques cachés ;
trop de pages ;
conflit entre contrôle manuel et autonomie ;
perte de jouabilité.
```

---

# 15. Conflict / Protection Manager

## Rôle

Éviter ou composer les contradictions entre objets, rôles, trajectoires, spectre, espace, corps et lisibilité.

Certains conflits doivent être empêchés ; d’autres peuvent être musicalement féconds s’ils sont contrôlés.

## Types de conflits

```text
conflit de direction ;
conflit de ressource ;
conflit de fonction ;
conflit de lisibilité ;
conflit de corps ;
conflit de beauté ;
conflit spectral ;
conflit de contrôle live.
```

## Protections possibles

```text
Sub protégé : ne pas trop élargir en stéréo, ne pas perdre le centre corporel.
Voix protégée : garder intelligibilité si mot important, ou autoriser fragmentation si voix-matière.
Gong protégé : contrôler la queue, éviter la boue spectrale.
Halo protégé : limiter fatigue aiguë et saturation d’espace.
Impact protégé : ne pas dissoudre la fondation.
```

## Sorties

```text
priorité ;
pondération ;
séparation par dimension ;
retard ;
annulation ;
réduction ;
protection d’objet ;
alerte au Control Router.
```

---

# 16. Macro Control Layer

## Rôle

Exposer les contrôles principaux pour la performance et la composition. Les macros doivent être jouables, lisibles et non redondantes.

Ce module n’est plus seulement une liste de macros candidates. Il doit être articulé avec le Contextual Control Router.

## Contrôles permanents possibles

```text
Impact / Fondation ;
Corps ;
Densité ;
Tension ;
Halo / Espace ;
Mutation ;
Lisibilité ;
Intensité ;
Confort spectral ;
Retour au corps ;
Stop / Gel / Reprise.
```

## Contrôles contextuels possibles

```text
Pré-drop ;
Résolution ;
Sub retenu ;
Gong central ;
Voix fragmentée ;
Ouverture harmonique ;
Torsion ;
Expansion ;
Peak ;
Beauté autonome ;
Live focus.
```

## Risques

```text
trop de macros ;
macros trop abstraites ;
macros qui écrasent les objets ;
interface non jouable ;
contrôles contextuels mal hiérarchisés.
```

---

# 17. Output / Mix / Performance Layer

## Rôle

Assurer la sortie performative : niveaux, routing, mix, diffusion, sécurité, lisibilité et stabilité live.

Ce module doit recevoir les décisions des governors et protections, mais préserver la puissance et l’esthétique.

## Responsabilités

```text
mix général ;
sub / mono / centre ;
contrôle des queues ;
sécurité de sortie ;
préservation de l’impact ;
place des instruments live ;
transition entre scènes ;
préparation à la diffusion.
```

---

# 18. Ableton Extensions SDK

## Rôle

Outil satellite hors temps réel.

Usages possibles :

```text
créer automatiquement la structure du Set ;
générer des clips MIDI ou audio de test ;
créer des scènes ;
annoter des pistes ;
documenter des états ;
préparer des banques ;
préconfigurer Object Registry ;
exporter / importer des scènes ;
auditer la structure du projet ;
générer des versions de travail ;
préparer des snapshots de configurations.
```

Ne remplace pas Max for Live pour le temps réel.

---

# 19. Priorités de développement conceptuel

Aucun prototype ne doit être lancé maintenant. Mais l’ordre de clarification technique peut être établi.

## Priorité 1 — Modèle de données

```text
objet sonore ;
rôle ;
phénomène ;
trajectoire ;
scène ;
état ;
dimension ;
protection ;
contrôle contextuel ;
groupement de paramètres ;
dépendance ;
automatisation interne.
```

## Priorité 2 — Conductor / Registry / Trajectory

Définir comment Scene Conductor, Object Registry et Trajectory Engine communiquent.

## Priorité 3 — Pitch / Harmonic Field

Définir la gestion des centres spectraux, partiels, formants, microtonalité et sub.

## Priorité 4 — Interface live et groupements de paramètres

Définir les contrôles permanents, contextuels, par objet, par trajectoire, profonds et d’urgence.

Définir les règles de présentation :

```text
quand un contrôle apparaît ;
pourquoi il apparaît ;
quel objet / rôle / trajectoire il concerne ;
quel paramètre profond il affecte ;
quel garde-fou le limite.
```

## Priorité 5 — Prototypes réutilisables

Seulement après clarification : prototypes ciblés, documentés, réutilisables, jamais jetables.

---

# 20. Prochaine tâche pour ce document

Développer chaque module avec :

```text
entrées ;
sorties ;
variables internes ;
interactions ;
dépendances ;
automatisations internes ;
groupements de paramètres ;
risques ;
priorité de développement ;
besoin de recherche ;
forme possible dans Ableton / Max for Live.
```

La prochaine synchronisation devra aussi relier ce document à `03_VALIDATION_TESTS_EXTENSIONS.md`, pour définir les validations conceptuelles et futurs prototypes sans précipitation.
