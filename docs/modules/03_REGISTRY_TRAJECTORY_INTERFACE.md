# 03_REGISTRY_TRAJECTORY_INTERFACE

Version : v0.1  
Statut : audit d’interface entre modules, sans prototypage.

## Objet

Ce document vérifie la compatibilité entre :

```text
01_OBJECT_REGISTRY
02_TRAJECTORY_ENGINE
```

Il sert à formaliser le contrat entre les deux modules : comment le Trajectory Engine demande des objets, rôles, profils, dimensions et protections à l’Object Registry, sans enfermer les objets dans des catégories fixes ni transformer les trajectoires en presets.

## Question centrale

```text
Comment une trajectoire peut-elle utiliser des objets sonores multi-profils, multi-rôles et contextuels sans les rigidifier ?
```

La réponse doit préserver deux principes :

```text
1. Les objets sont des entités multidimensionnelles, pas des classes exclusives.
2. Les trajectoires sont des combinaisons d’opérations, pas des modes fermés.
```

---

# 1. Contrat général entre les deux modules

## Ce que le Trajectory Engine demande

Le Trajectory Engine ne doit pas demander :

```text
Donne-moi un objet de type X.
```

Il doit demander :

```text
Quels objets peuvent porter tel rôle,
dans telle scène,
pour telle trajectoire,
sur telles dimensions,
avec tel niveau de risque,
et avec quels garde-fous ?
```

## Ce que l’Object Registry répond

L’Object Registry ne doit pas répondre :

```text
Cet objet appartient à cette catégorie unique.
```

Il doit répondre :

```text
cet objet peut participer ;
ces rôles sont possibles ;
ces profils sont activables ;
ces dimensions sont affectées ;
ces trajectoires sont compatibles ;
ces risques sont présents ;
ces protections sont nécessaires ;
ce niveau de certitude est disponible.
```

---

# 2. Requête conceptuelle du Trajectory Engine

Une requête vers l’Object Registry pourrait être pensée ainsi :

```text
trajectory_id
scene_id
current_state
requested_operations
requested_dimensions
required_roles
optional_roles
excluded_roles
risk_tolerance
priority_level
live_context
```

Exemple :

```text
trajectory_id: pre_drop_naturalise
requested_operations: retenir, fragmenter, armer, résoudre
requested_dimensions: sub, corps, rythme, microtonalité, espace
required_roles: sub retenu, objet de résolution
optional_roles: voix criée armée, gong armé, polytexture fragmentée
excluded_roles: halo large non contrôlé
risk_tolerance: moyen
priority_level: élevé
```

---

# 3. Réponse conceptuelle de l’Object Registry

Une réponse de l’Object Registry pourrait être pensée ainsi :

```text
candidate_objects
candidate_roles
active_profiles
compatibility_score
risk_profile
protection_requirements
conflict_warnings
control_suggestions
certainty_level
```

Exemple :

```text
candidate_objects: sub_central_01, gong_grave_01, voix_fragment_01, polytexture_perc_01
candidate_roles:
  sub_central_01: sub retenu, trace corporelle
  gong_grave_01: masse de résolution, post-résonance
  voix_fragment_01: cri armé, signal
  polytexture_perc_01: fragmentation, tension rythmique
active_profiles: corporel, harmonique, spatial, rythmique, protection
risk_profile: sub instable, halo excessif, voix masquée, mid_load
protection_requirements: stabiliser sub, contrôler queue gong, protéger voix, réduire densité
certainty_level: contextuel + partiellement analysé
```

---

# 4. Cas test — Pré-drop naturalisé

## Demande trajectoire

```text
intention : attente / tension / résolution rare
opérations : retenir, fragmenter, armer, retarder, résoudre ou bifurquer
objets souhaités : sub, gong, voix, polytexture, halo
rôles souhaités : sub retenu, gong armé, voix criée armée, polytexture fragmentée
risques : drop automatique, surcharge, perte d’hypnose
```

## Réponse attendue du Registry

```text
Sub : compatible comme sub retenu, trace corporelle, tension grave.
Gong : compatible comme masse de résolution, mais queue à protéger.
Voix : compatible comme cri armé, mais intelligibilité / fatigue à surveiller.
Polytexture : compatible comme fragmentation, mais mid_load à surveiller.
Halo : compatible seulement si post-résonance ou tension, pas halo large libre.
```

## Résultat

Le Trajectory Engine peut construire une trajectoire qui ne dit pas :

```text
pré-drop = sub + drop automatique.
```

Mais :

```text
pré-drop = configuration contextuelle d’objets, rôles, opérations, seuils, protections et bifurcations.
```

---

# 5. Cas test — Suspension / expansion

## Demande trajectoire

```text
intention : retrait partiel du corps, ouverture, espace, peak non brutal
opérations : retirer, suspendre, ouvrir, éclaircir, étendre, stabiliser
objets souhaités : halo, gong, voix, sub trace, clochettes, polytexture raréfiée
rôles souhaités : halo porteur, sub trace corporelle, gong expansif, voix suspendue
risques : ambientisation, perte du corps, brillance agressive
```

## Réponse attendue du Registry

```text
Halo : compatible comme espace principal, mais risque d’ambientisation.
Sub : compatible comme trace corporelle, pas nécessairement fondation pleine.
Gong : compatible comme partiels ouverts ou post-résonance.
Voix : compatible comme suspension ou halo vocal, selon intelligibilité.
Polytexture : compatible seulement en raréfaction ou texture minimale.
Clochettes : compatibles comme ouverture brillante si fatigue aiguë contrôlée.
```

## Résultat

La trajectoire peut ouvrir l’espace sans perdre automatiquement le corps, parce que l’Object Registry indique quels objets maintiennent une trace corporelle et quels risques doivent être surveillés.

---

# 6. Cas test — Torsion résonante avec didgeridoo

## Demande trajectoire

```text
intention : ligne vivante / torsion / mutation de formants
opérations : tordre, resserrer, ouvrir, déplacer, stabiliser
objets souhaités : didgeridoo, voix, résonateur, gong, sub texturé
rôles souhaités : ligne vivante, formants, tension continue, grave organique
risques : boue bas-médium, analyse trop déterministe, citation acid trop reconnaissable
```

## Réponse attendue du Registry

```text
Didgeridoo : compatible comme grave organique, sub vivant, source de formants ; profil live à activer.
Voix : compatible comme formants ou signal, mais risque de concurrence avec didgeridoo.
Sub : compatible comme stabilisateur ou tension grave, mais à ne pas écraser.
Gong : compatible comme partiels ou résolution, pas nécessairement central.
Résonateur : compatible comme prolongation contrôlée, à surveiller spectralement.
```

## Résultat

La torsion ne devient pas un effet acid plaqué. Elle devient une trajectoire de transformation formantique, spectrale et corporelle, contextualisée par les objets.

---

# 7. Compatibilités vérifiées

L’interface est compatible si :

```text
un objet peut proposer plusieurs rôles ;
une trajectoire peut utiliser plusieurs profils d’un même objet ;
une trajectoire peut exclure certains rôles d’un objet sans exclure l’objet lui-même ;
le Registry peut répondre avec des niveaux de certitude ;
les risques sont transmis au Conflict / Protection Manager ;
les contrôles pertinents sont transmis au Contextual Control Router.
```

Exemple :

```text
Gong peut être autorisé comme post-résonance mais interdit comme masse de résolution dans une scène trop dense.
Voix peut être autorisée comme texture mais protégée contre une transformation sémantique.
Sub peut être retiré comme fondation mais maintenu comme trace corporelle.
```

---

# 8. Conflits possibles

## Conflit rôle / objet

Un objet est compatible avec une trajectoire, mais pas dans le rôle demandé.

Exemple :

```text
un gong est compatible avec suspension, mais pas comme impact si sa queue est trop longue.
```

## Conflit dimensionnel

Deux objets affectent trop fortement la même dimension.

Exemple :

```text
sub + didgeridoo + gong grave saturent le bas-médium.
```

## Conflit de scène

La trajectoire est possible abstraitement mais incompatible avec l’état musical actuel.

Exemple :

```text
pré-drop trop marqué dans une beauté autonome exposée.
```

## Conflit de protection

Un objet pourrait porter une trajectoire, mais seulement au prix d’un risque trop élevé.

Exemple :

```text
voix centrale + halo large + polytexture dense → intelligibilité perdue.
```

## Conflit de décision

L’analyse automatique propose un rôle que le compositeur a interdit.

Exemple :

```text
analyse : voix comme texture ;
donnée déclarée : cette voix doit rester signal.
```

Dans ce cas, la décision déclarée doit l’emporter.

---

# 9. Règles d’arbitrage proposées

```text
1. Les données déclarées fortes l’emportent sur les suggestions d’analyse.
2. Les protections corporelles et spectrales l’emportent sur l’autonomie locale.
3. Une trajectoire peut être retardée plutôt qu’annulée.
4. Un objet peut être réassigné à un autre rôle plutôt qu’exclu.
5. Une dimension peut être protégée sans bloquer toute la trajectoire.
6. Les objets live doivent conserver une priorité humaine.
7. Les catégories ne doivent jamais être exclusives par défaut.
```

---

# 10. Informations à transmettre au Contextual Control Router

Le contrat Registry ↔ Trajectory doit produire des informations utiles pour l’interface.

```text
contrôles à afficher ;
contrôles à masquer ;
contrôles d’urgence ;
objets prioritaires ;
rôles modifiables ;
trajectoires retardables ;
trajectoires annulables ;
risques actifs ;
protections actives.
```

Exemple :

```text
si pré-drop actif + sub retenu + gong armé :
afficher Retarder, Résoudre, Annuler, Sub retenu, Gong central, Réduire halo.
```

---

# 11. Conclusion de l’audit

L’interface Object Registry ↔ Trajectory Engine est cohérente si elle reste fondée sur des requêtes contextuelles et des réponses multi-profils.

La bonne direction n’est pas :

```text
objet = catégorie fixe ;
trajectoire = preset ;
contrôle = macro globale.
```

Mais :

```text
objet = entité multi-profils ;
trajectoire = opérations + phases + rôles + dimensions ;
contrôle = interface contextuelle selon scène, risque et priorité.
```

## Point à vérifier ensuite

Le prochain module logique est probablement **Contextual Control Router**, car l’audit montre que beaucoup de décisions deviennent jouables seulement si les bons contrôles apparaissent au bon moment.

Cependant, **Scene / Performance Conductor** peut aussi venir avant, car c’est lui qui autorise ou interdit les trajectoires selon la forme globale.

La décision entre ces deux modules devra être prise après un court audit :

```text
faut-il d’abord formaliser qui décide ? → Scene / Performance Conductor
ou faut-il d’abord formaliser ce qui devient jouable ? → Contextual Control Router
```
