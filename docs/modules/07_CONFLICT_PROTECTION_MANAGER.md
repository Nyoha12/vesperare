# 07_CONFLICT_PROTECTION_MANAGER

Version : v0.1  
Statut : spécification détaillée de module, sans prototypage.

## Objet

Ce document détaille le futur module **Conflict / Protection Manager**.

Ce module arbitre les conflits entre objets, rôles, trajectoires, scènes, contrôles, entrées live, contraintes spectrales, espace, sound design et diffusion future.

Il ne doit pas tout empêcher. Il doit distinguer :

```text
conflit dangereux ;
tension musicalement féconde ;
risque temporaire acceptable ;
risque à surveiller ;
protection nécessaire ;
urgence performative.
```

Le but n’est pas de rendre la musique prudente ou neutre. Le but est de préserver puissance, corps, lisibilité, espace, liberté live et viabilité de diffusion sans écraser la singularité sonore.

---

# 1. Question centrale

```text
Quand plusieurs forces musicales se superposent, que faut-il laisser vivre, réduire, retarder, protéger, verrouiller ou promouvoir en urgence ?
```

Exemples de conflits typiques :

```text
sub vs halo ;
voix vs densité ;
gong vs bas-médium ;
polytexture vs lisibilité ;
didgeridoo live vs sub synthétique ;
beauté autonome vs retour au corps ;
pression phénoménale vs confort ;
source reconnaissable vs abstraction ;
contrôle manuel vs autonomie ;
autorisation du Conductor vs urgence de risque ;
visibilité Router vs surcharge d’interface.
```

---

# 2. Principe général

Un conflit n’est pas forcément une erreur.

Certains conflits produisent tension, matière, friction, ambiguïté, beauté ou intensité. Le module doit donc éviter deux excès :

```text
laisser tout passer → boue, fatigue, masquage, perte de corps ;
tout protéger → musique lissée, prudente, sans danger ni intensité.
```

Principe :

```text
protéger sans figer ;
réduire sans neutraliser ;
retarder plutôt qu’annuler quand possible ;
laisser vivre une tension si elle est lisible, située et réversible.
```

---

# 3. Types de conflits

## Conflit spectral

```text
sub instable ;
bas-médium boueux ;
aigus fatigants ;
partiels concurrents ;
résonances dangereuses ;
masquage spectral.
```

## Conflit corporel

```text
perte du corps ;
impact dissous ;
sub trop large ;
pression sans ancrage ;
retour au corps impossible.
```

## Conflit spatial

```text
halo excessif ;
queue trop longue ;
espace trop large ;
perte de proximité ;
ambientisation ;
masquage par réverbération.
```

## Conflit rythmique

```text
densité illisible ;
polytexture sans hiérarchie ;
accents concurrents ;
microtiming trop instable ;
perte de cadre techno.
```

## Conflit harmonique / microtonal

```text
centre spectral instable ;
sub et champ harmonique incompatibles ;
partiels trop désalignés ;
formants concurrents ;
tension sans résolution possible.
```

## Conflit de rôle

```text
un même objet reçoit deux rôles incompatibles ;
un objet protégé est utilisé comme matière secondaire ;
la voix est à la fois signal et texture masquée ;
le sub est à la fois fondation et effet latéral.
```

## Conflit de scène

```text
une trajectoire active contredit l’état de scène ;
une beauté autonome est interrompue brutalement ;
une densification apparaît dans une exposition fragile ;
une macro-autonomie tente une bifurcation interdite.
```

## Conflit live

```text
l’analyse impose un rôle à l’instrument ;
le système masque l’instrument live ;
le live input surcharge le grave ;
la latence ou réactivité empêche le jeu humain ;
l’agency du performeur est réduite.
```

## Conflit d’interface

```text
trop de contrôles visibles ;
urgence masquée ;
contrôles redondants ;
contrôle technique promu trop tôt ;
contrôle manuel en contradiction avec automatisation.
```

## Conflit de diffusion / mix futur

```text
sub non traduisible ;
bas-médium trop chargé ;
aigus fatigants ;
impact masqué ;
espace non contrôlable ;
ingénieur son bloqué ;
mode autonome insuffisant ;
petit système surchargé.
```

---

# 4. Niveaux de gravité

```text
G0 : aucune action ;
G1 : surveiller ;
G2 : signaler ;
G3 : réduire doucement ;
G4 : protéger activement ;
G5 : retarder ;
G6 : verrouiller temporairement ;
G7 : annuler / désarmer ;
G8 : urgence performative.
```

## Lecture musicale

```text
G0 = tension féconde ou absence de risque ;
G1 = risque faible mais à suivre ;
G2 = information discrète au Router ou au Conductor ;
G3 = correction douce sans casser la forme ;
G4 = une dimension ou un objet devient prioritaire ;
G5 = possibilité maintenue mais non déclenchée ;
G6 = contrôle ou trajectoire temporairement indisponible ;
G7 = désarmement si incompatibilité réelle ;
G8 = promotion immédiate d’un contrôle d’urgence.
```

---

# 5. Entrées du module

## Depuis Object Registry

```text
objets actifs ;
profils actifs ;
rôles courants ;
rôles interdits ;
protections d’objet ;
relations entre objets ;
risques d’objet ;
certitude des données ;
priorité déclarée.
```

## Depuis Trajectory Engine

```text
trajectoires actives ;
trajectoires armées ;
phases ;
opérations ;
dimensions ciblées ;
résolutions possibles ;
bifurcations ;
conditions de retard / annulation.
```

## Depuis Scene / Performance Conductor

```text
scène active ;
état actif ;
trajectoires autorisées ;
trajectoires interdites ;
événements armés ;
objets prioritaires ;
dimensions protégées ;
niveau d’autonomie ;
human_override_required.
```

## Depuis Contextual Control Router

```text
contrôles visibles ;
contrôles profonds disponibles ;
contrôles d’urgence ;
contrôles masqués ;
contrôles verrouillés ;
demandes manuelles ;
risque de surcharge d’interface.
```

## Depuis Pitch / Harmonic Field Manager

```text
pitch_center ;
spectral_root ;
partial_alignment ;
formant_focus ;
microtonal_spread ;
sub_pitch_relation ;
field_stability ;
harmonic_tension.
```

## Depuis Spectral & Comfort Governor

```text
spectral_pressure ;
sub_stability ;
mid_pressure ;
harshness_limit ;
brightness_comfort ;
air_fatigue ;
crowding_index ;
comfort_guard.
```

## Depuis Halo / Space / Resonance Controller

```text
halo_depth ;
space_depth ;
front_back_relief ;
resonance_field ;
dry_wet_functional_balance ;
spatial_pressure ;
post_resonance_control ;
queue_length.
```

## Depuis Live Object Interpreter

```text
live_object_profile ;
live_role_suggestions ;
influence_degree ;
analysis_confidence ;
latency_sensitivity ;
human_priority ;
sub_impact ;
halo_impact ;
density_reduction_request.
```

---

# 6. Sorties du module

Le Conflict / Protection Manager peut produire :

```text
conflict_state ;
conflict_severity ;
protection_request ;
reduction_request ;
delay_request ;
lock_request ;
cancel_request ;
emergency_promotion ;
router_alert ;
conductor_warning ;
trajectory_constraint ;
object_protection_update ;
spectral_governor_request ;
halo_controller_request ;
output_mix_warning.
```

Il ne produit pas directement la musique. Il modifie les conditions de possibilité.

Note de statut : ces sorties sont des demandes situées, pas des décisions de composition ni des interdits esthétiques globaux. Elles doivent distinguer le niveau d’intervention : signaler / avertir / rendre visible via le Router, promouvoir une sortie, demander une réduction, demander un masquage ou un verrou temporaire de contrôle, ou laisser l’override humain lorsque le risque est musical, lisible et réversible. Un `router_alert` ou `conductor_warning` ne doit pas devenir une alarme permanente ; un `lock_request` ou `cancel_request` ne doit viser qu’un risque actif, une incohérence documentée ou une sécurité technique, avec sortie ou justification explicite.

---

# 7. Actions possibles

## Observer

```text
ne rien modifier ;
continuer à mesurer ;
laisser la tension vivre.
```

## Signaler

```text
informer le Router ;
marquer un risque discret ;
ne pas agir sur le son.
```

## Réduire

```text
réduire densité ;
réduire halo ;
réduire queue ;
réduire bas-médium ;
réduire aigus ;
réduire influence automatique.
```

## Protéger

```text
protéger sub ;
protéger impact ;
protéger voix ;
protéger matière exposée ;
protéger live input ;
protéger lisibilité ;
protéger espace.
```

## Retarder

```text
retarder résolution ;
retarder drop ;
retarder densification ;
retarder ouverture ;
retarder macro-bifurcation.
```

## Verrouiller

```text
verrouiller contrôle ;
verrouiller dimension ;
verrouiller trajectoire ;
verrouiller macro-autonomie.
```

## Annuler / désarmer

```text
désarmer événement ;
annuler trajectoire locale ;
retirer rôle temporaire ;
bloquer bifurcation dangereuse.
```

## Promouvoir en urgence

```text
promouvoir Stabiliser sub ;
promouvoir Réduire halo ;
promouvoir Protéger voix ;
promouvoir Réduire densité ;
promouvoir Geler / Reprise ;
promouvoir Mode sûr.
```

---

# 8. Structure possible d’un conflit interne

```text
conflict_id
conflict_name
conflict_tags
severity_level
musical_status

SOURCES
object_sources
trajectory_sources
scene_sources
control_sources
live_sources

DIMENSIONS
affected_dimensions
protected_dimensions
risk_dimensions

CONTEXT
scene_id
state_family
trajectory_phase
autonomy_level
human_override_required

EVALUATION
is_dangerous
is_musically_fertile
is_reversible
is_time_critical
is_declared_allowed
is_declared_forbidden
analysis_confidence

ACTIONS
recommended_action
allowed_actions
forbidden_actions
delay_options
emergency_controls

OUTPUTS
router_message
conductor_message
trajectory_constraints
object_protection_update
governor_requests
```

---

# 9. Règles d’arbitrage

```text
1. Les décisions déclarées fortes priment sur les suggestions d’analyse.
2. L’agency live prime sur l’autonomie automatique.
3. Le corps et le sub peuvent être retirés seulement si une trace ou un retour existe.
4. Une protection ne doit pas devenir une interdiction permanente.
5. Une tension féconde peut rester active si elle est lisible, située et réversible.
6. Retarder vaut mieux qu’annuler si la trajectoire reste musicalement pertinente.
7. Les urgences doivent être promues au Router sans attendre une décision formelle.
8. Le Conductor doit être informé si une autorisation devient dangereuse.
9. Le Router doit être informé si un contrôle doit être promu, masqué ou verrouillé.
10. Le Spectral & Comfort Governor peut réduire, mais ne doit pas lisser sans raison musicale.
11. Le mix/master futur doit traduire et stabiliser, pas compenser une mauvaise architecture sonore.
12. Les catégories restent des facettes multiples, pas des classes de conflit exclusives.
```

---

# 10. Cas test — Suspension avant résolution

## Contexte

```text
sub retenu ;
gong armé ;
voix fragmentée ;
halo ouvert ;
pré-drop autorisé mais retardable ;
risques : perte du corps, halo excessif, voix masquée, sub instable.
```

## Arbitrage attendu

```text
protéger sub comme trace corporelle ;
réduire halo si voix ou impact sont masqués ;
retarder résolution si tension encore féconde ;
promouvoir Stabiliser sub / Réduire halo / Protéger voix si risque G8 ;
informer Conductor si pré-drop devient dangereux ;
informer Router si Retarder / Résoudre / Annuler doivent être promus.
```

## Échec

```text
drop automatique ;
halo dissout tout ;
voix disparaît sans alerte ;
sub instable non traité ;
retour au corps impossible.
```

---

# 11. Cas test — Corps plein / densification

## Contexte

```text
polytexture dense ;
sub central ;
impact-fondation ;
voix ponctuelle ;
risques : mid_load, fatigue aiguë, perte de lisibilité, confusion des accents.
```

## Arbitrage attendu

```text
protéger impact et sub ;
réduire densité si lisibilité chute ;
réduire bas-médium si mid_load augmente ;
laisser vivre la complexité si hiérarchie d’accents lisible ;
promouvoir Réduire densité / Préserver impact / Stabiliser sub en urgence si nécessaire.
```

## Échec

```text
polytexture démonstrative ;
sub masqué ;
impact dissous ;
aigus fatigants ;
Router saturé par trop de contrôles rythmiques.
```

---

# 12. Cas test — Beauté autonome exposée

## Contexte

```text
gong ou voix nue exposée ;
halo discret ;
field recording possible ;
risques : système trop bavard, ambientisation, retour brutal, perte de tension.
```

## Arbitrage attendu

```text
protéger matière exposée ;
réduire densité non nécessaire ;
limiter macro-autonomie ;
préserver sortie formelle possible ;
retarder retour au corps si l’exposition reste féconde ;
promouvoir Geler / Reprise ou Réduire halo si la scène devient instable.
```

## Échec

```text
beauté décorative sans conséquence ;
retour au corps impossible ;
traitements profonds trop visibles ;
système ajoute trop de couches.
```

---

# 13. Cas test — Torsion résonante avec didgeridoo

## Contexte

```text
didgeridoo live central ;
sub synthétique possible ;
voix ou résonateur ;
risques : boue bas-médium, analyse trop déterministe, conflit sub / voix, perte agency live.
```

## Arbitrage attendu

```text
protéger agency live ;
limiter influence automatique si analysis_confidence faible ;
réduire graves concurrents si didgeridoo occupe le centre ;
protéger formants si rôle = ligne vivante ;
promouvoir Désactiver influence automatique / Réduire bas-médium / Stabiliser sub si urgence.
```

## Échec

```text
didgeridoo réduit à une basse automatique ;
sub synthétique écrase le live ;
formants perdus ;
réactivité du système trop forte ;
torsion devient effet plaqué.
```

---

# 14. Relation avec le Router

Le module doit envoyer au Router :

```text
contrôles à promouvoir ;
contrôles à masquer ;
contrôles à verrouiller ;
messages de risque ;
statut d’urgence ;
contrôles profonds à rendre accessibles ;
contrôles permanents à renforcer.
```

Exemple :

```text
si conflit = halo excessif + voix protégée
→ Router : promouvoir Réduire halo + Protéger voix ;
→ masquer expansion halo profonde ;
→ garder Retour au corps disponible.
```

---

# 15. Relation avec le Conductor

Le module doit envoyer au Conductor :

```text
alerte sur autorisation devenue dangereuse ;
proposition de retard ;
proposition de désarmement ;
proposition de protection de scène ;
risque de macro-autonomie ;
état de conflit réversible ou non.
```

Exemple :

```text
si pré-drop autorisé mais sub instable + halo excessif
→ Conductor : retarder résolution ;
→ Router : promouvoir Stabiliser sub / Réduire halo ;
→ Trajectory Engine : maintenir phase seuil.
```

---

# 16. Relation avec les modules sonores

Le module ne remplace pas Spectral & Comfort Governor, Halo Controller ou Output/Mix. Il leur envoie des demandes.

```text
Spectral & Comfort Governor : réduire fatigue, mid_load, harshness, pression excessive ;
Halo / Space / Resonance Controller : réduire queue, largeur, distance, résonance ;
Pitch / Harmonic Field Manager : stabiliser centre, partiels, relation sub ;
Timbre & Material Mapper : éviter matière incompatible avec rôle ;
Output / Mix / Performance Layer : signaler risque de traduction ou diffusion.
```

---

# 17. Risques du module

```text
tout interdire ;
tout lisser ;
agir trop tard ;
agir trop visiblement ;
confondre tension féconde et conflit dangereux ;
transformer les protections en contraintes permanentes ;
masquer les urgences ;
bloquer l’ingénieur son futur ;
réduire l’intensité phénoménale ;
perdre l’agency live ;
complexifier l’interface.
```

## Garde-fous

```text
distinguer protection et interdiction ;
utiliser des niveaux de gravité ;
privilégier retard avant annulation ;
laisser vivre les tensions lisibles ;
préserver un noyau d’urgence ;
transmettre au Router seulement ce qui est jouable ;
transmettre au Conductor seulement ce qui affecte la forme ;
préserver la possibilité d’override humain ;
rester compatible avec les catégories comme facettes multiples.
```

---

# 18. Prochaine étape conceptuelle

Après ce module, deux directions deviennent possibles :

```text
1. Audit Conflict / Protection ↔ Router / Conductor ;
2. Détail de Pitch / Harmonic Field Manager.
```

Avis actuel : faire un audit léger `Conflict / Protection ↔ Conductor / Router` avant de passer au Pitch, car les urgences, retards, verrouillages et protections doivent être cohérents avec la scène et l’interface.
