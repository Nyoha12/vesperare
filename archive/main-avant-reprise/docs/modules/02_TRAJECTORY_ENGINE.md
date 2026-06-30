# 02_TRAJECTORY_ENGINE

Version : v0.1  
Statut : spécification détaillée de module, sans prototypage.

## Objet

Ce document détaille le futur module **Trajectory Engine** décrit dans `02_SPECIFICATION_MAX_FOR_LIVE`.

Le rôle du Trajectory Engine est de représenter, organiser et piloter les trajectoires musicales de Vesperare : transformations de corps, densité, sub, halo, pitch, partiels, espace, polytexture, voix, objets live, tension, résolution et forme.

Une trajectoire ne doit pas être comprise comme une automation linéaire, un preset ou un effet de style.  
Elle est une transformation distribuée entre objets sonores, rôles musicaux, dimensions affectées, phases, opérations, garde-fous et contrôles contextuels.

## Principe général

Une trajectoire est une logique de transformation.

Formule :

```text
trajectoire = intention formelle + opérations + phases + objets impliqués + rôles + dimensions + conditions + garde-fous.
```

Une trajectoire ne doit pas enfermer le système. Elle doit au contraire permettre :

```text
plusieurs objets impliqués ;
plusieurs rôles par objet ;
plusieurs dimensions affectées ;
plusieurs issues possibles ;
annulation, retard, bifurcation ;
transfert d’une énergie d’un objet vers un autre ;
coexistence avec d’autres trajectoires.
```

---

# 1. Principe anti-preset

Les trajectoires ne sont pas des catégories fermées.

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

Ces noms sont des raccourcis de travail. Ils ne doivent pas devenir des modes fermés.

Une trajectoire doit toujours pouvoir être décomposée en opérations plus petites.

Exemple :

```text
Pré-drop naturalisé
= retirer + retenir + fragmenter + tendre + armer + retarder + résoudre / bifurquer.
```

Exemple :

```text
Suspension / expansion
= retirer + suspendre + ouvrir + éclaircir + étendre + respirer + stabiliser + réincorporer.
```

Le système doit donc stocker les trajectoires comme combinaisons d’opérations, et non comme blocs fixes.

---

# 2. Types de trajectoires

Une trajectoire peut exister à plusieurs niveaux.

## Trajectoire globale

Transformation dominante d’une scène ou section.

Exemples :

```text
corps → suspension → réincorporation ;
pré-drop → résolution ;
expansion → peak non brutal ;
beauté autonome → retour techno.
```

## Trajectoire locale

Transformation appliquée à un objet ou groupe d’objets.

Exemples :

```text
gong : partiels fermés → rugissement → post-résonance ;
voix : fragment → cri armé → signal ;
sub : retenu → tension → résolution ;
polytexture : densité → fragmentation → réalignement.
```

## Trajectoire dimensionnelle

Transformation qui affecte une dimension musicale plutôt qu’un objet unique.

Exemples :

```text
halo : fermé → ouvert → réduit ;
pitch : instable → tendu → stabilisé ;
rythme : syncopé → désaligné → réaligné ;
corps : présent → latent → réincorporé.
```

## Trajectoire transférée

Transformation qui passe d’un objet à un autre.

Exemples :

```text
tension sub → gong ;
voix fragmentée → polytexture ;
halo harmonique → sub stabilisé ;
didgeridoo formantique → torsion d’un résonateur.
```

## Trajectoires coexistantes

Plusieurs trajectoires peuvent être actives en même temps si elles affectent des objets ou dimensions compatibles.

Exemple :

```text
trajectoire globale : suspension ;
trajectoire locale : gong vers résolution ;
trajectoire dimensionnelle : halo en expansion ;
trajectoire rythmique : polytexture en raréfaction.
```

---

# 3. Opérations de base

Les opérations sont les briques réutilisables des trajectoires.

```text
retirer ;
retenir ;
densifier ;
raréfier ;
ouvrir ;
fermer ;
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
transférer ;
armer ;
retarder ;
annuler ;
résoudre ;
bifurquer.
```

Chaque opération doit être traduite selon l’objet.

Exemple :

```text
ouvrir un halo ≠ ouvrir une voix ≠ ouvrir un gong ≠ ouvrir une polytexture.
```

Le Trajectory Engine ne doit donc pas envoyer une opération abstraite directement aux paramètres techniques. Il doit passer par :

```text
opération abstraite
→ objet concerné
→ rôle actuel
→ dimension affectée
→ traduction musicale
→ paramètres possibles.
```

---

# 4. Phases de trajectoire

Les trajectoires doivent être phasées pour rester jouables et contrôlables.

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

## Armement

Un événement devient possible mais n’est pas encore engagé.

Exemples :

```text
drop possible ;
gong armé ;
cri vocal armé ;
retour au corps possible ;
peak possible.
```

## Préparation

Le système prépare une transformation.

Exemples :

```text
sub retenu ;
densité réduite ;
halo ouvert ;
voix fragmentée ;
partiels tendus.
```

## Engagement

La trajectoire commence à orienter fortement la scène.

Exemples :

```text
objets convergents ;
priorités modifiées ;
contrôles contextuels affichés ;
risques surveillés.
```

## Seuil

Moment où une résolution, annulation ou bifurcation devient critique.

Exemples :

```text
résoudre ;
retarder ;
annuler ;
fausse résolution ;
bifurquer vers suspension.
```

## Résolution

Transformation accomplie.

Exemples :

```text
retour impact ;
résolution sub ;
rugissement gong ;
cri vocal ;
réalignement polytexture ;
stabilisation harmonique.
```

## Bifurcation

La trajectoire change de direction au lieu de se résoudre normalement.

Exemples :

```text
pré-drop → suspension ;
suspension → beauté autonome ;
torsion → expansion ;
retour au corps → nouvelle densification.
```

## Post-trace

La résolution laisse une trace.

Exemples :

```text
halo post-impact ;
queue de gong ;
résonance vocale ;
sub stabilisé ;
polytexture raréfiée.
```

## Désarmement

La trajectoire cesse d’être active.

Exemples :

```text
contrôles contextuels retirés ;
objets libérés ;
garde-fous relâchés ;
scène stabilisée.
```

---

# 5. Dimensions affectées

Une trajectoire doit spécifier quelles dimensions elle affecte.

```text
corps ;
impact ;
sub ;
rythme ;
densité ;
accent ;
spectre ;
halo ;
espace ;
partiels ;
formants ;
pitch_center ;
microtonalité ;
harmonie ;
forme ;
lisibilité ;
confort ;
live input ;
autonomie.
```

Une même trajectoire peut affecter plusieurs dimensions.

Exemple :

```text
Pré-drop naturalisé : corps, sub, rythme, attente, tension, espace, contrôle live.
```

Exemple :

```text
Suspension / expansion : corps, halo, espace, partiels, harmonie, intensité, confort.
```

---

# 6. Structure possible d’une fiche trajectoire interne

```text
trajectory_id
trajectory_name
trajectory_family
musical_intent
allowed_scenes
forbidden_scenes

OPERATIONS
operation_stack
operation_order
optional_operations
forbidden_operations

PHASES
current_phase
allowed_phases
phase_conditions
phase_transitions
phase_controls

OBJECTS / ROLES
primary_objects
secondary_objects
excluded_objects
object_roles
object_involvement
role_constraints

DIMENSIONS
dimension_targets
dimension_priorities
dimension_conflicts
protected_dimensions

CONDITIONS
start_conditions
hold_conditions
resolution_conditions
bifurcation_conditions
cancellation_conditions

OUTPUTS
parameter_targets
control_router_requests
protection_requests
conflict_alerts
state_change_requests

RISKS
risk_profile
failure_modes
emergency_actions
```

Cette structure est conceptuelle. Elle ne définit pas encore un format de données final.

---

# 7. Dépendances avec les autres modules

## Scene / Performance Conductor

Le Conductor autorise, interdit, prépare ou désarme les trajectoires selon la scène et l’état.

Le Trajectory Engine ne doit pas décider seul qu’un drop, peak, suspension ou retour au corps est musicalement approprié.

## Object Registry

Le Trajectory Engine demande à l’Object Registry quels objets peuvent participer, dans quels rôles, avec quels profils et garde-fous.

## Pitch / Harmonic Field Manager

Les trajectoires harmoniques, microtonales, formantiques ou liées au sub doivent passer par ce module.

## Contextual Control Router

Le Trajectory Engine indique quels contrôles deviennent pertinents selon la phase : retarder, résoudre, annuler, ouvrir, stabiliser, réduire halo, retour au corps, etc.

## Conflict / Protection Manager

Le Trajectory Engine signale les conflits potentiels : trop de halo, sub instable, voix masquée, polytexture trop dense, gong trop long, etc.

## Spectral & Comfort Governor

Certaines trajectoires peuvent augmenter intensité, brillance, pression ou densité. Le Governor protège l’écoute sans neutraliser la force musicale.

## Live Object Interpreter

Les entrées live peuvent influencer ou perturber une trajectoire, mais ne doivent pas la remplacer automatiquement.

---

# 8. Trajectoires modèles

## Pré-drop naturalisé

```text
intent: attente / tension / résolution rare
operations: retirer, retenir, fragmenter, tendre, armer, retarder, résoudre ou bifurquer
phases: armement, préparation, engagement, seuil, résolution, post-trace, désarmement
objects: sub, impact, gong, voix, polytexture, halo
roles: sub retenu, gong armé, voix criée armée, polytexture fragmentée
risks: drop automatique, surcharge spectaculaire, perte d’hypnose
controls: Retarder, Annuler, Résoudre, Fausse résolution, Retour au corps
```

## Suspension / expansion

```text
intent: retrait partiel du corps, ouverture, peak non brutal, réincorporation possible
operations: retirer, suspendre, ouvrir, éclaircir, étendre, respirer, stabiliser, réincorporer
phases: retrait, suspension, ouverture, expansion, peak, retour
objects: halo, gong, voix, sub trace, clochettes, polytexture raréfiée
roles: halo porteur, gong expansif, voix suspendue, sub trace corporelle
risks: ambientisation, perte du corps, brillance agressive
controls: Suspension, Ouverture, Partiels, Largeur, Réduire halo, Réincorporation
```

## Torsion résonante

```text
intent: ligne vivante / mutation timbrale / résonance naturalisée
operations: tordre, resserrer, ouvrir, déplacer, stabiliser, transférer
objects: didgeridoo, voix, gong, bol, sub texturé, résonateur
roles: ligne vivante, formants, résonance contrôlée, tension continue
risks: citation acid trop reconnaissable, nervosité excessive, squelch non naturalisé
controls: Torsion, Formants, Résonance, Stabiliser, Ouvrir, Réduire acidité
```

## Densification polytexturale

```text
intent: augmenter énergie, interlocking et complexité sans confusion
operations: densifier, articuler, déplacer, hiérarchiser, éclaircir, raréfier
objects: polytexture, clochettes, micro-percussions, voix percussive, field recordings découpés
roles: densité articulée, brillance, contrepoint, maintien d’énergie
risks: mid_load, couches équivalentes, virtuosité décorative
controls: Densité, Accents, Interlocking, Lisibilité, Raréfier, Réduire médiums
```

---

# 9. Principe de coexistence

Plusieurs trajectoires peuvent coexister si elles ne détruisent pas la lisibilité ou le corps.

Exemple cohérent :

```text
scène : Suspension avant résolution
trajectoire globale : suspension
trajectoire locale : gong vers résolution
trajectoire rythmique : polytexture en raréfaction
trajectoire harmonique : sub microtonal vers stabilisation
```

Exemple dangereux :

```text
sub en résolution forte + gong long + voix centrale + halo large + polytexture dense
```

Ce cas nécessite une intervention du Conflict / Protection Manager.

---

# 10. Principe anti-classement limitant

Une trajectoire peut appartenir à plusieurs familles.

Exemples :

```text
Pré-drop peut être rythmique, corporelle, spectrale ou microtonale ;
Suspension peut être spatiale, harmonique, corporelle ou vocale ;
Torsion peut être formantique, filtrale, harmonique ou gestuelle ;
Densification peut être rythmique, spectrale ou scénique.
```

Donc `trajectory_family` ne doit pas être un classement exclusif.  
Il doit fonctionner comme un ensemble de facettes activables.

```text
trajectory_tags: [pre_drop, sub_tension, rhythmic_fragmentation, harmonic_resolution]
```

plutôt que :

```text
trajectory_type: pre_drop_only
```

---

# 11. Risques du module

```text
trajectoires trop générales ;
trajectoires devenant des presets ;
confusion entre trajectoire et scène ;
confusion entre trajectoire et automation ;
trop de trajectoires simultanées ;
perte de lisibilité ;
perte du corps ;
autonomie excessive ;
contrôles contextuels trop nombreux ;
phases trop rigides.
```

## Garde-fous de conception

```text
décomposer chaque trajectoire en opérations ;
spécifier objets, rôles et dimensions ;
permettre retard, annulation et bifurcation ;
ne pas rendre les familles exclusives ;
séparer trajectoire globale et locale ;
laisser le Conductor autoriser ou non les trajectoires ;
demander au Conflict Manager d’arbitrer les conflits ;
garder les contrôles live lisibles.
```

---

# 12. Prochaine étape conceptuelle

Avant tout prototype, il faudra vérifier le Trajectory Engine avec des fiches scènes supplémentaires :

```text
Scène : Corps plein / densification ;
Scène : Beauté autonome exposée ;
Scène : Torsion résonante avec didgeridoo ;
Scène : Retour au corps après suspension ;
Scène : Peak non brutal.
```

Ces scènes permettront de vérifier si les trajectoires restent ouvertes, combinables et performables sans devenir des catégories limitantes.
