# 04_SCENE_PERFORMANCE_CONDUCTOR

Version : v0.1  
Statut : spécification détaillée de module, sans prototypage.

## Objet

Ce document détaille le futur module **Scene / Performance Conductor** décrit dans `02_SPECIFICATION_MAX_FOR_LIVE`.

Le rôle du Conductor est de maintenir la cohérence globale de la performance : scènes, états, trajectoires autorisées, événements armés, priorités, interdictions, niveaux d’autonomie, transitions, garde-fous et bifurcations.

Il ne compose pas à la place du compositeur.  
Il garantit que les possibilités programmées restent situées dans une scène, une forme et un esprit musical cohérents avec Vesperare.

## Principe général

Le Conductor répond à la question :

```text
qu’est-ce qui est musicalement possible, souhaitable, dangereux ou interdit maintenant ?
```

Formule :

```text
contexte performatif = scène + état + objets actifs + rôles + trajectoires autorisées + événements armés + garde-fous.
```

Le Conductor ne produit pas directement le son. Il oriente les autres modules.

```text
Scene / Performance Conductor
→ autorise ou interdit des trajectoires ;
→ définit les objets prioritaires ;
→ arme ou désarme des événements ;
→ indique les contrôles contextuels nécessaires ;
→ active des protections ;
→ prépare les transitions ou bifurcations.
```

---

# 1. Différence entre scène, état et trajectoire

## État

Un état décrit le régime musical actuel.

Exemples :

```text
corps plein ;
suspension ;
attente ;
expansion ;
beauté autonome ;
tension grave ;
densification ;
retour au corps ;
post-résonance.
```

Un état n’est pas nécessairement une section fixe. Il décrit ce que la musique est en train de faire.

## Scène

Une scène est une configuration performative.

Elle peut contenir :

```text
un état principal ;
des objets actifs ;
des rôles possibles ;
des trajectoires autorisées ;
des événements armés ;
des contrôles prioritaires ;
des garde-fous ;
des bifurcations possibles.
```

Une scène n’est pas seulement une scène Ableton. Elle est une situation musicale programmable.

## Trajectoire

Une trajectoire est une transformation organisée.

Elle peut traverser plusieurs scènes ou rester locale à une scène.

Le Conductor ne remplace pas le Trajectory Engine. Il lui dit plutôt :

```text
cette trajectoire est autorisée ;
cette trajectoire est préparée mais non active ;
cette trajectoire est armée ;
cette trajectoire doit être retardée ;
cette trajectoire est interdite dans ce contexte ;
cette trajectoire peut bifurquer vers telle autre.
```

---

# 2. Autorisations et interdictions

Le Conductor doit gérer plusieurs niveaux d’autorisation.

```text
autorisé ;
préparé ;
armé ;
actif ;
retardé ;
interdit ;
protégé ;
forcé ;
désarmé.
```

## Autorisé

La possibilité est compatible avec la scène.

Exemple :

```text
suspension autorisée dans une scène d’attente.
```

## Préparé

La possibilité peut être préparée, mais n’est pas encore performativement engagée.

Exemple :

```text
gong préparé comme future résolution.
```

## Armé

L’événement peut être déclenché ou laissé en suspens.

Exemple :

```text
cri vocal armé ;
retour au corps armé ;
peak non brutal armé.
```

## Actif

La trajectoire ou scène influence maintenant les modules.

Exemple :

```text
sub retenu actif ;
halo en expansion actif.
```

## Retardé

Une possibilité reste disponible mais ne se déclenche pas.

Exemple :

```text
pré-drop retardé pour prolonger l’attente.
```

## Interdit

La possibilité est incompatible avec le contexte.

Exemple :

```text
drop massif interdit pendant une beauté autonome fragile.
```

## Protégé

Un objet, rôle ou dimension doit être préservé.

Exemple :

```text
voix signal protégée ;
sub central protégé ;
halo limité.
```

---

# 3. Informations reçues par le Conductor

Le Conductor reçoit des informations de plusieurs modules.

## Object Registry

```text
objets disponibles ;
objets prioritaires ;
rôles possibles ;
profils actifs ;
risques ;
protections ;
certitude des données.
```

## Trajectory Engine

```text
trajectoires candidates ;
phases de trajectoire ;
conditions de résolution ;
conditions de bifurcation ;
risques de trajectoire ;
demandes de contrôles.
```

## Pitch / Harmonic Field Manager

```text
centre spectral ;
tension harmonique ;
stabilité du champ ;
microtensions ;
résolutions possibles ;
relation au sub.
```

## Spectral / Comfort / Conflict Modules

```text
fatigue ;
masquage ;
sub instable ;
halo excessif ;
mid_load ;
conflits d’objets ;
risques d’agression.
```

## Live Input

```text
présence instrumentale ;
objet live central ;
priorité humaine ;
réactivité autorisée ;
risque de surcharge.
```

---

# 4. Informations envoyées par le Conductor

## Vers Trajectory Engine

```text
trajectoires autorisées ;
trajectoires interdites ;
trajectoires armées ;
trajectoires retardées ;
bifurcations possibles ;
priorités de trajectoires.
```

## Vers Object Registry

```text
objets prioritaires ;
rôles actifs ;
rôles interdits dans la scène ;
objets protégés ;
objets disponibles pour transition ;
objets à désarmer.
```

## Vers Contextual Control Router

```text
contrôles permanents à maintenir ;
contrôles contextuels à afficher ;
contrôles profonds à rendre accessibles ;
contrôles d’urgence ;
objets prioritaires ;
événements armés ;
risques actifs.
```

## Vers Conflict / Protection Manager

```text
priorités musicales ;
objets protégés ;
dimensions protégées ;
risques acceptables ;
risques interdits ;
conditions d’arrêt ou réduction.
```

---

# 5. Scènes comme configurations non fermées

Une scène ne doit pas être un mode fermé.

Elle doit fonctionner comme un ensemble de facettes activables :

```text
scene_tags ;
state_family ;
active_objects ;
allowed_trajectories ;
protected_dimensions ;
armed_events ;
control_priorities ;
bifurcation_options.
```

Exemple :

```text
scene_tags: [suspension, pre_drop_possible, harmonic_tension, body_trace]
```

plutôt que :

```text
scene_type: suspension_only
```

Cela évite que la scène enferme la musique dans une seule fonction.

---

# 6. Structure possible d’une fiche scène interne

```text
scene_id
scene_name
scene_tags
state_family
musical_intent

OBJECTS
active_objects
priority_objects
protected_objects
excluded_objects
object_roles

TRAJECTORIES
allowed_trajectories
prepared_trajectories
armed_trajectories
forbidden_trajectories
bifurcation_options

EVENTS
armed_events
forbidden_events
resolution_events
false_resolution_options
post_trace_options

DIMENSIONS
protected_dimensions
active_dimensions
risk_dimensions
focus_dimensions

CONTROLS
permanent_controls
contextual_controls
deep_controls
emergency_controls
control_priorities

AUTONOMY
autonomy_level
allowed_autonomy_types
forbidden_autonomy_types
human_override_required

RISKS
risk_profile
conflict_profile
comfort_limits
failure_modes
```

Cette structure est conceptuelle. Elle ne définit pas encore un format de données final.

---

# 7. Niveaux d’autonomie

Le Conductor doit contrôler l’autonomie.

```text
aucune autonomie ;
micro-autonomie ;
méso-autonomie ;
macro-autonomie assistée ;
macro-autonomie interdite.
```

## Micro-autonomie

Variations fines : accents, micro-densité, petites mutations, détails de timbre.

## Méso-autonomie

Évolution locale d’une trajectoire déjà autorisée : densification, raréfaction, ouverture, torsion, tension.

## Macro-autonomie assistée

Suggestion de bifurcation, transition ou scène suivante. Elle ne doit pas être automatique par défaut.

## Macro-autonomie interdite

Le système ne peut pas décider seul d’un changement formel majeur.

Exemple :

```text
passer d’une beauté autonome à un drop massif sans autorisation humaine.
```

---

# 8. Cas modèle — Suspension avant résolution

## Configuration

```text
scene_tags: suspension, attente, pre_drop_possible, body_trace
state_family: suspension / attente
active_objects: sub, gong, voix, halo, polytexture raréfiée, clochettes
protected_dimensions: sub, corps, voix, confort spectral
armed_events: drop gong, cri vocal, retour impact, résolution sub
allowed_trajectories: suspension, expansion, pré-drop naturalisé, résolution microtonale, retour au corps
forbidden_trajectories: densification massive non préparée, halo libre incontrôlé
```

## Décisions du Conductor

```text
autoriser pré-drop mais ne pas le déclencher ;
maintenir sub comme trace corporelle ;
armer gong comme résolution possible ;
préserver voix si rôle = signal ;
limiter halo si densité augmente ;
afficher Retarder / Résoudre / Annuler / Retour au corps.
```

## Risques surveillés

```text
perte du corps ;
halo excessif ;
sub instable ;
voix masquée ;
drop automatique ;
fatigue aiguë.
```

---

# 9. Cas modèle — Corps plein / densification

## Configuration

```text
scene_tags: corps, densification, polytexture, pression
state_family: corps plein / énergie
active_objects: impact-fondation, sub, polytexture, micro-brillance, voix ponctuelle
protected_dimensions: sub, impact, lisibilité, confort spectral
armed_events: densification, variation polytexture, retour simplifié
allowed_trajectories: densification polytexturale, hypnose active, micro-variation, peak corporel non agressif
forbidden_trajectories: halo large non contrôlé, beauté autonome longue, retrait total du corps
```

## Décisions du Conductor

```text
autoriser densification mais surveiller mid_load ;
protéger impact-fondation ;
empêcher polytexture de masquer sub ou voix ;
autoriser micro-autonomie rythmique ;
interdire macro-bifurcation non préparée ;
préparer éventuellement raréfaction ou suspension.
```

## Risques surveillés

```text
confusion rythmique ;
virtuosité décorative ;
boue médium ;
fatigue aiguë ;
perte du cadre techno.
```

---

# 10. Cas modèle — Beauté autonome exposée

## Configuration

```text
scene_tags: beauté_autonome, exposition, suspension, matière
state_family: exposition / écoute
active_objects: gong, voix nue, bol, halo discret, field recording
protected_dimensions: matière, silence relatif, voix, queue, espace
armed_events: retour au corps, post-résonance, bifurcation vers suspension
allowed_trajectories: exposition, halo contrôlé, retour au corps, résolution douce
forbidden_trajectories: drop automatique, densification brutale, polytexture démonstrative
```

## Décisions du Conductor

```text
protéger l’objet exposé ;
réduire densité ;
limiter automatisations réactives ;
empêcher le système d’ajouter trop de couches ;
préparer retour au corps sans l’imposer ;
maintenir contrôle humain fort.
```

## Risques surveillés

```text
parenthèse décorative ;
perte de tension ;
ambientisation ;
système trop bavard ;
retour au corps trop abrupt.
```

---

# 11. Cas modèle — Torsion résonante avec didgeridoo

## Configuration

```text
scene_tags: torsion, live, grave, formants, corps
state_family: tension formantique / ligne vivante
active_objects: didgeridoo live, sub, voix, résonateur, halo contrôlé
protected_dimensions: grave, agency live, formants, confort bas-médium
armed_events: stabilisation sub, ouverture formantique, transfert vers halo, retour au corps
allowed_trajectories: torsion résonante, ligne vivante, suspension avec trace, stabilisation
forbidden_trajectories: analyse déterministe, sub automatique écrasant, densité médium excessive
```

## Décisions du Conductor

```text
laisser priorité au musicien live ;
autoriser le système à proposer, pas imposer ;
réduire graves concurrents si nécessaire ;
transmettre formants au Pitch / Harmonic Field Manager ;
protéger sub et voix ;
afficher contrôles Torsion / Formants / Stabiliser grave / Influence live.
```

## Risques surveillés

```text
boue bas-médium ;
réduction du didgeridoo à une basse ;
analyse trop déterministe ;
perte de liberté live ;
conflit avec sub ou voix.
```

---

# 12. Règles d’arbitrage du Conductor

```text
1. Les décisions déclarées fortes priment sur les suggestions du système.
2. Les objets live gardent une priorité humaine.
3. Le corps peut être retiré seulement si une trace ou une stratégie de retour existe.
4. Une beauté autonome doit avoir une conséquence formelle ou une sortie prévue.
5. Une trajectoire peut être retardée plutôt qu’annulée.
6. Une trajectoire peut être désarmée sans retirer les objets concernés.
7. Les protections peuvent limiter une dimension sans bloquer toute la scène.
8. Le Conductor doit éviter les bascules stylistiques non préparées.
9. Le Conductor ne doit pas transformer les scènes en modes fermés.
```

---

# 13. Relation avec Contextual Control Router

Le Conductor ne définit pas l’interface finale, mais il fournit au futur Router les informations nécessaires.

```text
état actif ;
objets prioritaires ;
rôles actifs ;
trajectoires autorisées ;
trajectoires armées ;
événements armés ;
risques actifs ;
protections actives ;
contrôles d’urgence nécessaires ;
niveau d’autonomie autorisé.
```

Exemple :

```text
si scène = suspension avant résolution :
afficher Retarder, Résoudre, Annuler, Sub retenu, Gong central, Réduire halo, Retour au corps.
```

---

# 14. Risques du module

```text
Conductor trop autoritaire ;
Conductor trop vague ;
scènes transformées en modes fermés ;
autonomie macro trop forte ;
protections qui bloquent la musique ;
priorités trop nombreuses ;
confusion entre scène et trajectoire ;
confusion entre état et scène ;
contrôles contextuels trop dépendants du Conductor.
```

## Garde-fous de conception

```text
maintenir scènes comme configurations ouvertes ;
utiliser tags multiples ;
séparer état, scène, trajectoire et événement ;
permettre armement sans déclenchement ;
permettre retard, annulation et bifurcation ;
protéger sans figer ;
laisser les décisions formelles majeures au compositeur / performeur ;
préparer le Contextual Control Router sans le remplacer.
```

---

# 15. Prochaine étape conceptuelle

Le prochain module logique est **Contextual Control Router**.

Pourquoi : le Conductor sait maintenant ce qui est autorisé, armé, actif ou dangereux. Il faut ensuite définir comment ces informations deviennent jouables : quels contrôles apparaissent, disparaissent, restent permanents, deviennent profonds ou urgents.
