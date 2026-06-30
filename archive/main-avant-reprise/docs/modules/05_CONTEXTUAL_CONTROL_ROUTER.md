# 05_CONTEXTUAL_CONTROL_ROUTER

Version : v0.1  
Statut : spécification détaillée de module, sans prototypage.

## Objet

Ce document détaille le futur module **Contextual Control Router** décrit dans `02_SPECIFICATION_MAX_FOR_LIVE`.

Le rôle du Contextual Control Router est de décider quels contrôles deviennent jouables, visibles, prioritaires, profonds ou urgents selon le contexte musical actif.

Il ne définit pas encore l’interface finale.  
Il définit la logique d’apparition, de masquage, de priorité et de protection des contrôles.

## Question centrale

```text
qu’est-ce qui devient jouable maintenant ?
```

Plus précisément :

```text
quels contrôles doivent rester permanents ;
quels contrôles apparaissent selon la scène ;
quels contrôles apparaissent selon les trajectoires armées ;
quels contrôles concernent un objet prioritaire ;
quels contrôles doivent rester profonds ;
quels contrôles d’urgence doivent toujours être accessibles ;
quels contrôles doivent être masqués pour éviter la surcharge.
```

---

# 1. Principe général

Un contrôle n’est pas un paramètre.

Un contrôle live peut piloter plusieurs paramètres, plusieurs objets ou plusieurs modules.

Exemple :

```text
Réduire halo
→ réduire longueur de queue ;
→ réduire largeur ;
→ réduire feedback ;
→ réduire wet reverb ;
→ protéger voix ou impact ;
→ informer le Conflict / Protection Manager.
```

Formule :

```text
contrôle contextuel = intention jouable + contexte + priorité + cible(s) + garde-fous.
```

Le Router doit donc traduire :

```text
état musical ;
scène ;
objets actifs ;
rôles actifs ;
trajectoires armées ;
risques ;
protections ;
autonomie autorisée ;
```

en contrôles performables.

---

# 2. Entrées du Router

## Depuis Scene / Performance Conductor

```text
état actif ;
scène active ;
objets prioritaires ;
rôles actifs ;
trajectoires autorisées ;
trajectoires armées ;
événements armés ;
protections actives ;
risques actifs ;
niveau d’autonomie autorisé.
```

## Depuis Trajectory Engine

```text
phase de trajectoire ;
opérations actives ;
conditions de résolution ;
conditions de bifurcation ;
trajectoires retardables ;
trajectoires annulables ;
objets impliqués ;
contrôles demandés.
```

## Depuis Object Registry

```text
objets disponibles ;
objets actifs ;
rôles possibles ;
profils activés ;
protections d’objet ;
niveau de certitude ;
relations entre objets ;
risques d’objet.
```

## Depuis Conflict / Protection / Governor

```text
sub instable ;
halo excessif ;
voix masquée ;
mid_load ;
fatigue aiguë ;
pression excessive ;
perte de lisibilité ;
masquage live ;
conflit spectral ;
risque de mix.
```

## Depuis contraintes futures de sound design / mix / outils

```text
source recognition ;
source abstraction ;
distance ;
traitement profond ;
protection mix ;
mode club / hors-club ;
mode ingénieur son / autonome ;
urgence spectrale ;
stabilité master ;
présence live.
```

Ces entrées futures ne doivent pas surcharger l’interface maintenant. Elles doivent seulement être prévues.

---

# 3. Sorties du Router

Le Router produit :

```text
contrôles permanents ;
contrôles contextuels ;
contrôles objet ;
contrôles trajectoire ;
contrôles profonds ;
contrôles d’urgence ;
contrôles à masquer ;
contrôles à verrouiller ;
contrôles à rendre disponibles seulement si demandés.
```

Il peut aussi produire :

```text
priorité d’affichage ;
priorité MIDI / contrôleur ;
état d’armement ;
état de protection ;
messages de risque ;
indications de scène ;
verrous temporaires ;
rappels de retour au corps.
```

---

# 4. Niveaux de contrôle

## A. Contrôles permanents

Toujours disponibles, même si leur action exacte dépend du contexte.

Exemples :

```text
Corps ;
Densité ;
Tension ;
Halo ;
Lisibilité ;
Retour au corps ;
Stabiliser ;
Geler / Reprise ;
Réduire intensité ;
Protection.
```

Ces contrôles ne doivent pas devenir des macros trop générales. Ils doivent rester reliés au contexte actif.

## B. Contrôles contextuels

Apparaissent selon scène, état ou trajectoire.

Exemples :

```text
Retarder ;
Résoudre ;
Annuler ;
Fausse résolution ;
Réduire halo ;
Réincorporer ;
Ouvrir espace ;
Contrôler queue ;
Protéger voix ;
Stabiliser sub.
```

## C. Contrôles objet

Liés à un objet prioritaire.

Exemples :

```text
Gong central ;
Queue gong ;
Partiels gong ;
Voix signal ;
Fragmentation voix ;
Sub retenu ;
Didgeridoo formants ;
Polytexture accents ;
Halo distance.
```

## D. Contrôles trajectoire

Liés à une trajectoire active ou armée.

Exemples :

```text
Pré-drop : Retarder / Résoudre / Annuler ;
Suspension : Trace corporelle / Ouvrir / Réincorporer ;
Torsion : Formants / Stabiliser / Réduire acidité ;
Densification : Accents / Lisibilité / Raréfier.
```

## E. Contrôles profonds

Contrôles techniques, rarement joués directement.

Exemples :

```text
granulation ;
convolution ;
feedback ;
ring modulation ;
resynthesis ;
MIDI echo ;
LFO / random / remap ;
stacking ;
mode analyse ;
réglages de seuil.
```

Ils peuvent devenir visibles seulement si :

```text
la scène le demande ;
l’objet est en focus ;
le système est en préparation ;
le performeur ouvre un niveau profond ;
un problème doit être corrigé.
```

## F. Contrôles d’urgence

Toujours accessibles ou très rapidement accessibles.

Exemples :

```text
Stabiliser sub ;
Réduire halo ;
Réduire densité ;
Limiter aigus ;
Préserver impact ;
Protéger voix ;
Geler / Reprise ;
Retour corps ;
Réduire pression ;
Mode sûr.
```

---

# 5. Priorité de contrôle

Le Router doit éviter de tout afficher.

Une priorité possible :

```text
P0 : urgence / sécurité musicale ;
P1 : contrôles permanents essentiels ;
P2 : scène active ;
P3 : trajectoire armée ou active ;
P4 : objet prioritaire ;
P5 : sound design contextuel ;
P6 : mix / master contextuel ;
P7 : profondeur technique ;
P8 : configuration hors-performance.
```

Le Router doit pouvoir :

```text
promouvoir un contrôle ;
rétrograder un contrôle ;
masquer un contrôle ;
verrouiller temporairement un contrôle ;
transformer un contrôle profond en contrôle contextuel ;
transformer un risque en contrôle d’urgence.
```

Exemple :

```text
si halo excessif + voix signal protégée :
Réduire halo devient P0 ou P1.
```

---

# 6. Structure possible d’une fiche contrôle interne

```text
control_id
control_name
control_family
control_tags
control_level
priority_level

CONTEXT
allowed_scenes
forbidden_scenes
required_states
required_trajectories
required_objects
required_roles
risk_conditions

TARGETS
object_targets
trajectory_targets
dimension_targets
module_targets
parameter_targets

BEHAVIOR
momentary_or_continuous
range_behavior
safe_range
default_state
lock_conditions
promotion_conditions
demotion_conditions

PROTECTION
protected_dimensions
emergency_status
conflict_rules
human_override

INTERFACE
visibility_state
mapping_priority
label_variants
feedback_required
```

Cette structure est conceptuelle. Elle ne définit pas encore un format final d’interface.

---

# 7. Cas modèle — Suspension avant résolution

## Contexte reçu

```text
scene_tags: suspension, attente, pre_drop_possible, body_trace
active_objects: sub, gong, voix, halo, polytexture raréfiée
armed_events: drop gong, cri vocal, retour impact, résolution sub
risks: perte du corps, halo excessif, sub instable, voix masquée
```

## Contrôles promus

```text
Retarder ;
Résoudre ;
Annuler ;
Sub retenu ;
Gong central ;
Voix fragmentée ;
Trace corporelle ;
Réduire halo ;
Retour au corps.
```

## Contrôles d’urgence

```text
Stabiliser sub ;
Réduire halo ;
Protéger voix ;
Retour impact ;
Geler / Reprise.
```

## Contrôles profonds accessibles mais non prioritaires

```text
Queue gong ;
Partiels gong ;
Fragmentation voix ;
Halo harmonique ;
Tension microtonale.
```

---

# 8. Cas modèle — Corps plein / densification

## Contexte reçu

```text
scene_tags: corps, densification, polytexture, pression
active_objects: impact-fondation, sub, polytexture, micro-brillance, voix ponctuelle
risks: mid_load, confusion rythmique, fatigue aiguë, perte lisibilité
```

## Contrôles promus

```text
Corps ;
Densité ;
Lisibilité ;
Accents ;
Interlocking ;
Stabiliser sub ;
Préserver impact ;
Réduire médiums ;
Raréfier.
```

## Contrôles d’urgence

```text
Réduire densité ;
Limiter aigus ;
Préserver impact ;
Stabiliser sub ;
Mode sûr.
```

## Contrôles masqués ou rétrogradés

```text
Halo large ;
Beauté autonome longue ;
Drop non préparé ;
Convolution profonde.
```

---

# 9. Cas modèle — Beauté autonome exposée

## Contexte reçu

```text
scene_tags: beauté_autonome, exposition, matière
active_objects: gong, voix nue, bol, halo discret, field recording
protected_dimensions: matière, voix, silence relatif, queue, espace
risks: système trop bavard, ambientisation, retour abrupt
```

## Contrôles promus

```text
Objet central ;
Protéger matière ;
Protéger voix ;
Distance ;
Queue ;
Retour au corps ;
Réduire système ;
Stabiliser espace.
```

## Contrôles rétrogradés

```text
Densification ;
Pré-drop ;
Polytexture active ;
Feedback agressif ;
Macro-autonomie.
```

---

# 10. Cas modèle — Torsion résonante avec didgeridoo

## Contexte reçu

```text
scene_tags: torsion, live, grave, formants, corps
active_objects: didgeridoo live, sub, voix, résonateur, halo contrôlé
protected_dimensions: agency live, grave, formants, confort bas-médium
risks: boue bas-médium, analyse trop déterministe, conflit sub / voix
```

## Contrôles promus

```text
Didgeridoo central ;
Influence live ;
Formants ;
Torsion ;
Stabiliser grave ;
Sub vivant ;
Réduire graves concurrents ;
Protéger voix ;
Analyse douce.
```

## Contrôles d’urgence

```text
Réduire bas-médium ;
Stabiliser sub ;
Protéger live ;
Désactiver influence automatique ;
Geler / Reprise.
```

---

# 11. Intégration future sound design / mix / outils

Le Router doit être conçu pour accueillir plus tard des contrôles liés à :

```text
source recognition ;
source abstraction ;
distance ;
traitement profond ;
convolution scène ;
stacking ;
feedback contrôlé ;
protection mix ;
stabilisation master ;
mode club / hors-club ;
mode ingénieur son / autonome ;
présence live.
```

Mais il doit éviter de les afficher tous.

Principe :

```text
les contrôles techniques restent profonds tant qu’ils ne deviennent pas musicalement urgents ou performativement pertinents.
```

Exemple :

```text
convolution n’est pas affichée comme effet ;
elle peut devenir Distance, Espace, Scène, Halo, Profondeur ou Réduire espace.
```

---

# 12. Relation au mix / master intégré

Le Router ne fait pas le mix/master, mais il doit rendre certaines protections jouables.

Exemples futurs :

```text
Stabiliser sub ;
Réduire bas-médium ;
Limiter aigus ;
Préserver transitoires ;
Réduire pression ;
Mode club ;
Mode hors-club ;
Mode ingénieur son ;
Mode autonome ;
Sortie sûre.
```

Ces contrôles ne doivent pas remplacer le travail d’un ingénieur son. Ils doivent :

```text
éviter de bloquer l’ingénieur ;
permettre une autonomie si aucun ingénieur n’est disponible ;
préserver la cohérence musicale ;
rester subtils ;
être désactivables ou adaptables selon contexte.
```

---

# 13. Règles d’arbitrage

```text
1. Les contrôles d’urgence priment sur les contrôles contextuels.
2. Les protections déclarées priment sur les suggestions d’autonomie.
3. Les objets live peuvent promouvoir des contrôles humains prioritaires.
4. Un contrôle technique ne devient visible que s’il a une fonction musicale claire.
5. Un contrôle peut changer de nom selon le contexte.
6. Un contrôle peut agir différemment selon scène, objet ou trajectoire.
7. Le Router doit éviter de montrer plusieurs contrôles qui font musicalement la même chose.
8. Les catégories de contrôle ne sont pas exclusives.
9. L’interface doit permettre de jouer, pas de gérer une base de données.
```

---

# 14. Risques du module

```text
interface trop chargée ;
contrôles trop abstraits ;
contrôles trop techniques ;
macros trop globales ;
urgence inaccessible ;
perte de spontanéité ;
contrôles contextuels instables ;
trop de changements d’interface ;
confusion entre scène, objet et trajectoire ;
contrôles profonds promus trop souvent.
```

## Garde-fous de conception

```text
limiter le nombre de contrôles visibles ;
prioriser par scène et risque ;
conserver un noyau permanent ;
prévoir un niveau profond ;
prévoir un niveau urgence ;
laisser les contrôles changer de signification selon contexte mais garder des noms lisibles ;
masquer les méthodes techniques derrière des fonctions musicales ;
tester sur scènes modèles avant interface finale.
```

---

# 15. Prochaine étape conceptuelle

Le prochain travail logique est un audit :

```text
Scene / Performance Conductor ↔ Contextual Control Router
```

Objectif : vérifier que ce que le Conductor autorise, arme, protège ou interdit peut réellement devenir jouable sans surcharge d’interface.

Ensuite, il faudra commencer à mettre à jour `03_VALIDATION_TESTS_EXTENSIONS.md` avec des validations conceptuelles par module.
