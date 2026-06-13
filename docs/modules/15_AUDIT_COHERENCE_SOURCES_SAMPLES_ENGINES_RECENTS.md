# 15_AUDIT_COHERENCE_SOURCES_SAMPLES_ENGINES_RECENTS

Version : v0.1  
Statut : audit de cohérence des derniers documents créés, sans prototypage.

## Objet

Ce document vérifie la cohérence des documents récents :

```text
09_PITCH_HARMONIC_FIELD_MANAGER ;
10_PITCH_CONFLICT_INTERFACE ;
11_TIMBRE_MATERIAL_MAPPER ;
12_TIMBRE_REGISTRY_CONFLICT_PITCH_INTERFACE ;
13_SOUND_ENGINES_INSTRUMENTS ;
14_SOUND_ENGINE_MAPPER_CONFLICT_ROUTER_INTERFACE.
```

Il les compare aux décisions déjà stabilisées dans :

```text
03_VALIDATION_TESTS_EXTENSIONS ;
10_SOUND_DESIGN_MIX_OUTILS_CONTRAINTES ;
11_AUDIT_COHERENCE_NOTATION_CATEGORIES_RESPONSABILITES ;
01A_SYNCHRONISATION_PHENOMENES_MODULES ;
02A_SYNCHRONISATION_ARCHITECTURE_MODULES.
```

But : vérifier si les réflexions sur samples, génération live, moteurs sonores, base de données et sélection automatique restent cohérentes avec l’architecture générale.

---

# 1. Diagnostic général

Les documents récents sont globalement cohérents avec l’architecture Vesperare.

Ils respectent les décisions suivantes :

```text
1. pas de prototypage prématuré ;
2. catégories comme facettes, pas classes exclusives ;
3. séparation objet / rôle / matière / engine / contrôle ;
4. sound design comme écologie d’objets et relations ;
5. outils et engines au service des fonctions, pas l’inverse ;
6. live input prioritaire quand l’agency humaine est centrale ;
7. samples autorisés quand ils sont justifiés ;
8. pas de banque décorative ;
9. sélection automatique très encadrée ;
10. nécessité d’un système de préparation de base de données.
```

Mais ils ne suffisent pas encore à clore la question pratique :

```text
quoi préparer concrètement comme base de données ?
combien de matériaux par famille ?
quels champs de métadonnées remplir en premier ?
quels assets sont prioritaires ?
quels pools sont nécessaires ?
quels matériaux restent manuels ?
quels matériaux peuvent devenir sélectionnables automatiquement ?
```

Conclusion courte :

```text
cohérence : oui ;
complétude opérationnelle sur la base de données : non, pas encore.
```

---

# 2. Cohérence avec la méthode de validation

Les documents récents restent dans la phase conceptuelle / structurelle / inter-modulaire.

Ils ne demandent pas encore :

```text
création de device ;
choix de plugin ;
construction massive de banque ;
prototype sonore définitif ;
implémentation Max for Live ;
modélisation complète d’instruments.
```

Ils restent compatibles avec la règle :

```text
penser les modules avant de tester techniquement ;
tester plus tard pour vérifier une architecture déjà pensée ;
faire d’abord des matrices, scénarios, contrats d’interface et audits.
```

Donc les documents 09–14 ne contredisent pas `03_VALIDATION_TESTS_EXTENSIONS`.

---

# 3. Cohérence avec les catégories comme facettes

Les derniers documents ne figent pas les objets en classes uniques.

Exemples cohérents :

```text
Gong = impact + halo + partiels + résolution + beauté autonome ;
Voix = signal + matière + cri + halo + sémantique possible ;
Didgeridoo = live + grave + souffle + formants + agency ;
Sub = corps + pression + pitch_center + résolution ;
Eau / pluie = source, texture, halo, microtexture, masque contrôlé, post-résonance.
```

Les samples et engines sont traités comme :

```text
assets liés à des rôles ;
variantes d’objets ;
pools par fonction ;
matériaux sélectionnables selon contexte ;
engines remplaçables selon capacité.
```

Ils ne deviennent pas :

```text
classes d’objet exclusives ;
types sonores définitifs ;
presets esthétiques ;
catégories fermées.
```

Cohérence confirmée avec l’audit notation / responsabilités.

---

# 4. Cohérence avec sound design comme écologie

Les derniers documents ne reviennent pas à une logique de banque décorative.

Ils précisent au contraire :

```text
un sample doit avoir un rôle ;
un corpus doit être justifié ;
un pool doit être relié à une fonction ;
un engine doit répondre à une demande du Mapper ;
une source naturelle n’est pas une valeur en soi ;
une sélection automatique doit être rare, contextualisée, métadonnée et réversible.
```

La nuance importante ajoutée est correcte :

```text
pas de grande banque non justifiée ;
oui à des corpus ciblés si la qualité, la latence ou la réalité acoustique l’exigent.
```

Cette nuance ne contredit pas `10_SOUND_DESIGN_MIX_OUTILS_CONTRAINTES`. Elle le précise.

---

# 5. Cohérence des responsabilités de modules

Les responsabilités restent correctement séparées.

## Object Registry

```text
identité d’objet ;
profils ;
rôles possibles ;
risques ;
protections ;
relations ;
variantes récurrentes.
```

Il ne choisit pas seul les samples.

## Timbre & Material Mapper

```text
choisit comment une matière porte un rôle ;
définit reconnaissance / abstraction ;
propose source directe, transformée, hybride, synthèse ou offline ;
signale ce qui doit être préparé.
```

Il ne produit pas directement le son.

## Pitch / Harmonic Field Manager

```text
contraintes de pitch_center ;
spectral_root ;
partiels ;
formants ;
sub relation ;
halo_tuning ;
field_stability.
```

Il ne choisit pas les assets.

## Conflict / Protection Manager

```text
arbitre risques ;
protège source / voix / live / sub ;
désactive auto-selection si nécessaire ;
verrouille ou réduit un engine ;
empêche la dérive décorative ou dangereuse.
```

Il ne choisit pas l’esthétique.

## Sound Engines

```text
produisent ou traitent le son ;
déclarent capacités, limites, latence, CPU, risques ;
restent remplaçables ;
répondent au Mapper.
```

Ils ne décident pas du rôle musical.

## Router

```text
expose intentions jouables ;
cache les contrôles techniques ;
promeut les urgences ;
peut rendre sélection manuelle ou assistée visible si pertinent.
```

Il ne doit pas afficher une banque entière.

Cohérence confirmée.

---

# 6. Point sensible : la base de données n’est pas encore assez opératoire

Les documents récents introduisent les bons concepts :

```text
source_need ;
material_asset ;
material_pool ;
selection_policy ;
engine_capability ;
recognition_level ;
abstraction_level ;
quality_status ;
replaceability ;
selection_mode_allowed.
```

Mais ces concepts ne sont pas encore rassemblés dans un protocole unique.

Il manque encore un document de travail du type :

```text
SOURCE_NEEDS_ASSET_DATABASE_PROTOCOL
```

Ce document devrait répondre concrètement à :

```text
quels besoins de source existent ?
quels assets faut-il préparer en premier ?
quels champs remplir dans la base ?
quels pools créer ?
quelle quantité minimale viser ?
quels assets restent manuels ?
quels assets peuvent être assistés ?
quels assets peuvent être automatiques ?
quels assets sont interdits d’automatisation ?
comment évaluer la qualité suffisante ?
comment taguer sans surcharger ?
comment importer un sample dans Object Registry ?
comment éviter une banque décorative ?
```

Donc la cohérence est bonne, mais la préparation de base de données doit devenir la prochaine étape avant Output / Mix.

---

# 7. Correction de workflow recommandée

Le workflow recommandé après les derniers échanges n’est plus :

```text
Sound Engines / Instruments → Output / Mix / Performance Layer
```

Il devient plutôt :

```text
Sound Engines / Instruments
→ Audit Sound Engines ↔ Mapper / Conflict / Router
→ Source Needs / Asset Database Protocol
→ Output / Mix / Performance Layer
```

Raison : la couche Output / Mix aura besoin de savoir quels matériaux existent, comment ils sont sélectionnés, quels risques ils déclarent, et comment ils doivent être traduits en diffusion.

---

# 8. Cohérence spécifique sur samples vs génération

La position cohérente du projet est :

```text
ne pas préférer génération live par idéologie ;
ne pas préférer samples par facilité ;
ne pas refuser une banque ciblée si elle est nécessaire ;
ne pas construire une banque sans rôle ;
ne pas simuler un instrument si le résultat est moins beau, moins stable ou plus coûteux qu’un sample ;
ne pas sampler quand le rôle exige une variation procédurale ou une agency live.
```

Décision :

```text
source strategy = décision musicale + décision technique + décision performative.
```

Elle doit être prise par besoin, pas globalement.

---

# 9. Familles qui nécessitent probablement une base de samples ciblée

## Très probablement samples / prises haute qualité

```text
gongs ;
bols ;
cloches ;
métaux résonants ;
field recordings ;
textures de lieux ;
fragments vocaux ;
queues / impulsions / résonances ;
certains tambours / peaux ;
eaux / pluies réelles comme référence ou matériau.
```

## Très probablement génération / synthèse / paramétrique

```text
sub principal ;
renfort grave ;
certains halos synthétiques ;
certains drones contrôlés ;
certains procédés de densité ;
certains flux procéduraux secondaires.
```

## Très probablement hybride

```text
gong + renfort spectral ;
peau + sub ;
voix + résonateur ;
didgeridoo live + renfort discret ;
field recording + granularité contrôlée ;
eau réelle + densité procédurale ;
halo réel + résonance synthétique.
```

## Très probablement live prioritaire

```text
didgeridoo ;
voix si performance centrale ;
certains gestes percussionnels ;
objets acoustiques joués ponctuellement.
```

---

# 10. Risques restants

```text
1. croire que “corpus ciblé” veut dire “petite banque” alors qu’il peut devenir grand si les besoins le justifient ;
2. sous-estimer la qualité nécessaire des samples ;
3. surcharger les métadonnées avant d’avoir identifié les besoins prioritaires ;
4. créer des pools sans critères d’usage ;
5. créer une sélection automatique trop tôt ;
6. oublier la sélection manuelle comme mode central ;
7. ne pas distinguer asset de test, asset de composition, asset performatif, asset de référence ;
8. continuer vers Output / Mix sans matrice d’assets.
```

---

# 11. Décisions nouvelles à retenir

```text
1. “Pas de grande banque” devient “pas de banque non justifiée”.
2. Une banque ciblée peut être grande si les besoins réels l’exigent.
3. La première base de données doit commencer par les besoins de source, pas par les fichiers audio.
4. Les samples centraux sont plutôt manuels ou assistés.
5. L’automatique est réservé aux pools secondaires, métadonnés et réversibles.
6. La qualité acoustique réelle peut justifier le sample contre la génération live.
7. Les moteurs génératifs doivent être choisis quand ils apportent variation, contrôle ou comportement, pas parce qu’ils paraissent plus “système”.
8. Un protocole de préparation de base d’assets est nécessaire avant Output / Mix.
```

---

# 12. Prochaine étape recommandée

Créer :

```text
16_SOURCE_NEEDS_ASSET_DATABASE_PROTOCOL.md
```

Objectif : produire un système concret pour préparer la base de données.

Ce document devra contenir :

```text
source_need table ;
material_asset table ;
material_pool table ;
selection_policy table ;
quality_evaluation table ;
priorité de préparation par famille sonore ;
exemples de fiches gongs / voix / didgeridoo / sub / eau / field recordings ;
ordre de préparation minimal ;
règles d’import dans Object Registry ;
règles d’autorisation d’automatisation.
```
