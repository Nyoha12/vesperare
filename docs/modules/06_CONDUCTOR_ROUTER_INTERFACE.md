# 06_CONDUCTOR_ROUTER_INTERFACE

Version : v0.1  
Statut : audit d’interface entre modules, sans prototypage.

## Objet

Ce document vérifie la compatibilité entre :

```text
04_SCENE_PERFORMANCE_CONDUCTOR
05_CONTEXTUAL_CONTROL_ROUTER
```

Il sert à formaliser comment ce que le Conductor autorise, arme, protège, interdit ou retarde devient réellement jouable dans le Router, sans surcharge d’interface et sans perte des contrôles d’urgence.

## Question centrale

```text
Comment transformer une situation musicale en contrôles jouables sans transformer l’interface en tableau de bord ?
```

La réponse doit préserver trois principes :

```text
1. Le Conductor décide du contexte, pas des knobs finaux.
2. Le Router décide de la visibilité et de la priorité, pas de la forme musicale globale.
3. L’interface doit rendre la performance jouable, pas exposer toute la complexité interne.
```

---

# 1. Contrat général entre les deux modules

## Ce que le Conductor envoie

Le Conductor envoie un état de contexte.

```text
scene_id ;
scene_tags ;
state_family ;
active_objects ;
priority_objects ;
protected_objects ;
active_roles ;
allowed_trajectories ;
prepared_trajectories ;
armed_trajectories ;
forbidden_trajectories ;
armed_events ;
forbidden_events ;
protected_dimensions ;
risk_profile ;
autonomy_level ;
human_override_required.
```

## Ce que le Router répond

Le Router répond par une configuration de contrôles.

```text
visible_controls ;
permanent_controls ;
contextual_controls ;
object_controls ;
trajectory_controls ;
deep_controls_available ;
emergency_controls ;
masked_controls ;
locked_controls ;
control_priorities ;
feedback_messages ;
mapping_priority.
```

## Ce que le Router ne doit pas faire

```text
changer seul la scène ;
autoriser une trajectoire interdite ;
déclencher un événement armé sans action ou règle explicite ;
remplacer le Conductor dans les décisions formelles ;
exposer tous les paramètres disponibles ;
transformer un contrôle technique en contrôle live sans fonction musicale claire.
```

---

# 2. Table d’interprétation Conductor → Router

```text
Conductor : autorisé
Router : contrôle disponible, pas forcément visible.

Conductor : préparé
Router : contrôle contextuel possible, souvent discret ou profond.

Conductor : armé
Router : contrôle visible si l’action est performativement pertinente.

Conductor : actif
Router : contrôle visible ou permanent selon importance.

Conductor : retardé
Router : afficher Retarder / Maintenir / Résoudre si utile.

Conductor : interdit
Router : masquer ou verrouiller le contrôle correspondant.

Conductor : protégé
Router : promouvoir les contrôles de protection associés.

Conductor : danger actif
Router : promouvoir contrôle d’urgence P0 ou P1.

Conductor : macro-autonomie interdite
Router : masquer les contrôles qui impliquent une décision formelle automatique.
```

---

# 3. Principe de non-surcharge

Le Router ne doit pas afficher toutes les possibilités autorisées.

Une scène peut autoriser :

```text
pré-drop ;
suspension ;
résolution microtonale ;
retour au corps ;
beauté autonome ;
fausse résolution.
```

Mais l’interface ne doit afficher que les contrôles utiles au moment présent.

Critères de visibilité :

```text
urgence ;
scène active ;
trajectoire armée ;
objet prioritaire ;
risque actif ;
protection nécessaire ;
action performative possible maintenant ;
contrôle demandé par le performeur ;
phase de trajectoire.
```

Principe :

```text
possibilité autorisée ≠ contrôle visible.
```

---

# 4. Noyau permanent vs contrôles contextuels

Le système doit conserver un petit noyau permanent.

Exemple possible :

```text
Corps ;
Densité ;
Tension ;
Halo ;
Lisibilité ;
Retour au corps ;
Stabiliser ;
Geler / Reprise.
```

Mais ces contrôles permanents ne doivent pas être abstraits. Leur action exacte dépend du contexte envoyé par le Conductor.

Exemple :

```text
Retour au corps
- en suspension : réintroduire trace / impact / sub ;
- en beauté autonome : préparer sortie sans brutalité ;
- en torsion live : stabiliser grave et pulsation ;
- en densification : clarifier impact et sub.
```

---

# 5. Cas test — Suspension avant résolution

## Contexte Conductor

```text
scene_tags: suspension, attente, pre_drop_possible, body_trace
state_family: suspension / attente
active_objects: sub, gong, voix, halo, polytexture raréfiée
protected_dimensions: sub, corps, voix, confort spectral
armed_events: drop gong, cri vocal, retour impact, résolution sub
allowed_trajectories: suspension, expansion, pré-drop naturalisé, résolution microtonale, retour au corps
forbidden_trajectories: densification massive non préparée, halo libre incontrôlé
risks: perte du corps, halo excessif, sub instable, voix masquée
```

## Réponse Router attendue

```text
P0 / urgence : Stabiliser sub, Réduire halo, Protéger voix, Geler / Reprise
P1 / permanent : Corps, Tension, Halo, Retour au corps
P2 / scène : Trace corporelle, Suspension, Réduire halo
P3 / trajectoire : Retarder, Résoudre, Annuler, Fausse résolution
P4 / objet : Gong central, Sub retenu, Voix fragmentée
P7 / profond : Queue gong, Partiels gong, Tension microtonale, Halo harmonique
masqué : densification massive, halo libre, macro-drop automatique
```

## Validation

La scène est jouable si :

```text
les issues armées sont accessibles ;
les urgences sont immédiates ;
les options profondes ne surchargent pas ;
le pré-drop reste retardable et annulable ;
le retour au corps reste disponible ;
le halo est contrôlable sans interrompre la forme.
```

---

# 6. Cas test — Corps plein / densification

## Contexte Conductor

```text
scene_tags: corps, densification, polytexture, pression
state_family: corps plein / énergie
active_objects: impact-fondation, sub, polytexture, micro-brillance, voix ponctuelle
protected_dimensions: sub, impact, lisibilité, confort spectral
allowed_trajectories: densification polytexturale, hypnose active, micro-variation, peak corporel non agressif
forbidden_trajectories: halo large non contrôlé, beauté autonome longue, retrait total du corps
risks: mid_load, confusion rythmique, fatigue aiguë, perte du cadre techno
```

## Réponse Router attendue

```text
P0 / urgence : Réduire densité, Limiter aigus, Préserver impact, Stabiliser sub
P1 / permanent : Corps, Densité, Lisibilité, Stabiliser
P2 / scène : Pression, Maintien corps, Réduire médiums
P3 / trajectoire : Accents, Interlocking, Raréfier, Réaligner
P4 / objet : Polytexture accents, Sub central, Impact-fondation
P7 / profond : microtiming, génératif rythmique, stacking, détails de modulation
masqué : halo large, beauté autonome longue, pré-drop non préparé
```

## Validation

La scène est jouable si :

```text
la densification peut être augmentée ou réduite ;
la lisibilité reste toujours accessible ;
le sub et l’impact restent protégés ;
les options profondes ne remplacent pas les contrôles musicaux ;
le système peut préparer une raréfaction sans imposer une suspension.
```

---

# 7. Cas test — Beauté autonome exposée

## Contexte Conductor

```text
scene_tags: beauté_autonome, exposition, matière
state_family: exposition / écoute
active_objects: gong, voix nue, bol, halo discret, field recording
protected_dimensions: matière, voix, silence relatif, queue, espace
allowed_trajectories: exposition, halo contrôlé, retour au corps, résolution douce
forbidden_trajectories: drop automatique, densification brutale, polytexture démonstrative
risks: système trop bavard, ambientisation, retour abrupt
```

## Réponse Router attendue

```text
P0 / urgence : Protéger voix, Réduire halo, Geler / Reprise
P1 / permanent : Lisibilité, Halo, Retour au corps, Stabiliser
P2 / scène : Objet central, Protéger matière, Distance, Queue
P3 / trajectoire : Retour doux, Post-résonance, Bifurquer vers suspension
P4 / objet : Gong exposé, Voix nue, Bol, Field recording discret
P7 / profond : convolution, traitement de queue, source abstraction
masqué : densification, pré-drop, feedback agressif, macro-autonomie
```

## Validation

La scène est jouable si :

```text
l’objet exposé reste protégé ;
le système ne devient pas trop bavard ;
la sortie formelle est disponible sans être imposée ;
les traitements profonds restent discrets ;
la beauté autonome ne devient pas une parenthèse sans conséquence.
```

---

# 8. Cas test — Torsion résonante avec didgeridoo

## Contexte Conductor

```text
scene_tags: torsion, live, grave, formants, corps
state_family: tension formantique / ligne vivante
active_objects: didgeridoo live, sub, voix, résonateur, halo contrôlé
protected_dimensions: agency live, grave, formants, confort bas-médium
allowed_trajectories: torsion résonante, ligne vivante, suspension avec trace, stabilisation
forbidden_trajectories: analyse déterministe, sub automatique écrasant, densité médium excessive
risks: boue bas-médium, analyse trop déterministe, conflit sub / voix
```

## Réponse Router attendue

```text
P0 / urgence : Protéger live, Réduire bas-médium, Stabiliser sub, Désactiver influence automatique
P1 / permanent : Corps, Tension, Stabiliser, Geler / Reprise
P2 / scène : Influence live, Analyse douce, Trace corporelle
P3 / trajectoire : Torsion, Formants, Stabiliser grave, Ouvrir
P4 / objet : Didgeridoo central, Sub vivant, Voix protégée
P7 / profond : analyse de formants, seuils d’influence, résonateur, feedback contrôlé
masqué : analyse forcée, sub automatique, densification médium excessive
```

## Validation

La scène est jouable si :

```text
le musicien live garde la priorité ;
l’analyse reste douce et désactivable ;
la torsion est jouable sans écraser le grave ;
les conflits avec sub et voix sont visibles ;
les contrôles techniques restent profonds sauf problème réel.
```

---

# 9. Conflits d’interface possibles

## Trop de contrôles contextuels

Le Conductor autorise beaucoup de possibilités, mais le Router en affiche trop.

Solution :

```text
priorité stricte ;
masquage ;
niveau profond ;
focalisation objet ;
focalisation trajectoire.
```

## Urgence masquée

Un risque actif existe, mais le contrôle d’urgence n’est pas visible.

Solution :

```text
les risques P0 doivent toujours promouvoir un contrôle d’urgence.
```

## Contrôle redondant

Plusieurs contrôles font musicalement la même chose.

Exemple :

```text
Réduire halo ;
Fermer espace ;
Réduire reverb ;
Réduire queue.
```

Solution :

```text
unifier sous une intention jouable si possible ;
garder les variantes en profondeur.
```

## Contrôle technique trop visible

Une méthode apparaît trop tôt dans l’interface.

Exemple :

```text
convolution ;
ring modulation ;
MIDI echo ;
seuil analyse.
```

Solution :

```text
traduire en fonction musicale : Distance, Torsion, Densité, Influence live.
```

## Conductor trop autoritaire

Le Conductor verrouille trop de contrôles et réduit la performance.

Solution :

```text
laisser retard, bifurcation, annulation, override humain ;
distinguer interdit de masqué ;
distinguer protégé de figé.
```

## Router trop instable

Les contrôles changent trop souvent, ce qui rend l’interface injouable.

Solution :

```text
fenêtres de stabilité ;
changements seulement aux seuils ;
labels stables ;
noyau permanent.
```

---

# 10. Règles d’arbitrage Conductor ↔ Router

```text
1. Le Router ne peut pas rendre visible une action explicitement interdite par le Conductor.
2. Le Router peut rendre disponible un contrôle profond si le performeur le demande.
3. Un risque actif peut promouvoir un contrôle d’urgence même si la scène ne le mettait pas au premier plan.
4. Un contrôle peut être masqué sans que la possibilité musicale soit interdite.
5. Un contrôle peut être verrouillé temporairement si la dimension correspondante est protégée.
6. Les contrôles permanents doivent rester stables, mais leur cible peut changer selon contexte.
7. Les objets live peuvent promouvoir des contrôles de protection humaine.
8. Les méthodes techniques doivent être traduites en fonctions musicales sauf exception performative claire.
9. L’interface doit toujours permettre un retour au corps ou une stabilisation si le système devient trop ouvert.
```

---

# 11. Conclusion de l’audit

L’interface Conductor ↔ Router est cohérente si elle respecte la différence suivante :

```text
Conductor = ce qui est musicalement possible / interdit / armé / protégé.
Router = ce qui est jouable / visible / prioritaire / profond / urgent.
```

La bonne direction n’est pas :

```text
scène active = tous les contrôles de la scène visibles.
```

Mais :

```text
scène active = petit noyau permanent + contrôles promus selon urgence, trajectoire, objet et risque.
```

## Point à vérifier ensuite

Le système a maintenant suffisamment de modules conceptuels pour revenir vers `03_VALIDATION_TESTS_EXTENSIONS.md`.

Prochaine tâche recommandée :

```text
définir les validations conceptuelles par module :
Object Registry ;
Trajectory Engine ;
Registry ↔ Trajectory Interface ;
Scene / Performance Conductor ;
Contextual Control Router ;
Conductor ↔ Router Interface ;
contraintes sound design / mix / outils.
```
