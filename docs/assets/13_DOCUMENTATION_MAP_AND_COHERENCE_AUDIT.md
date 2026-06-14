# 13_DOCUMENTATION_MAP_AND_COHERENCE_AUDIT

Version : v0.2  
Statut : audit de cohérence documentaire mis à jour après intégration des documents `12–22`. Sans nouveau besoin sonore, sans ajout de source, sans prototype.

## Objet

Ce document garde la trace d’un risque apparu après la création de nombreux documents `assets`, `source_needs`, `material_assets`, `scene_use_cases`, `function_tests`, `decision_gates`, `engine_sketches`, puis après la création de la branche conceptuelle et interface `12–22`.

Risque principal :

```text
perdre la vue d’ensemble ;
continuer à produire des documents locaux sans carte générale ;
ne plus savoir quel document sert à quoi ;
laisser README / index / protocole source_need obsolètes ;
faire diverger les décisions récentes du workflow directeur.
```

Ce document ne crée aucune nouvelle direction musicale.

Il sert à :

```text
cartographier les documents récents ;
clarifier leur usage ;
repérer les mises à jour nécessaires ;
empêcher l’approfondissement prématuré d’un seul axe ;
indiquer quand il faut consolider plutôt que produire de nouveaux concepts.
```

---

# 1. Diagnostic mis à jour

La progression récente est cohérente localement et mieux intégrée globalement qu’en v0.1.

Intégrations désormais réalisées :

```text
README.md mis à jour ;
docs/00_INDEX_METHODE_DECISIONS.md mis à jour ;
docs/assets/00_ASSETS_INDEX.md créé précédemment ;
documents 12–22 cartographiés dans README et 00_INDEX.
```

Ce qui reste à vérifier :

```text
docs/modules/16_SOURCE_NEEDS_ASSET_DATABASE_PROTOCOL.md ;
cohérence entre décisions de contrôle live et architecture future ;
cohérence entre visualisation contextuelle et Contextual Control Router ;
nécessité ou non d’un addenda technique avant tout prototype.
```

Conclusion actuelle :

```text
ne pas créer de nouveau concept immédiatement ;
ne pas reprendre l’axe harmonic drone maintenant ;
ne pas créer de prototype ;
consolider les index, puis choisir un axe ciblé.
```

---

# 2. Chaîne documentaire assets

La chaîne assets reste valide :

```text
besoins du style
→ sources réellement disponibles
→ fonctions couvertes / non couvertes
→ compensations conditionnelles
→ manques restants
→ instruments candidats ciblés
→ source_needs prioritaires
→ comparaison
→ scène candidate
→ test fonctionnel
→ décision gate
→ croquis de paramètres
→ audit de cohérence
→ index local assets
```

Cette chaîne concerne surtout les sources, samples, instruments, assets et tests fonctionnels.

Elle ne doit pas être confondue avec la branche `12–22`, qui concerne :

```text
cadre opératoire ;
concepts ;
exigences système/interface ;
contrôles live ;
couches de performance ;
infrastructure temporelle ;
visualisation contextuelle.
```

---

# 3. Chaîne documentaire techno organique / contrôle live

La nouvelle chaîne intégrée est :

```text
12_TECHNO_ORGANIQUE_CADRE_OPERATOIRE
→ cadrer le contexte pratique et le nom local techno organique.

13_CONCEPTS_OPERATOIRES_TECHNO_ORGANIQUE_DEPENDANCES
→ vérifier les dépendances entre concepts opératoires.

14_CONCEPT_CORE_TO_INTERFACE_SYSTEM_REQUIREMENTS
→ transformer les concepts en exigences système/interface.

15_LIVE_CONTROL_REQUIREMENTS_MATRIX
→ première matrice de contrôles live abstraits.

16_LIVE_CONTROL_MATRIX_PERFORMABILITY_AUDIT
→ audit de jouabilité et charge cognitive.

17_LIVE_CONTROL_REQUIREMENTS_MATRIX_REDUCED
→ matrice réduite.

18_LIVE_CONTROL_DECISION_QUESTIONS_BEFORE_LAYERS
→ résolution des questions avant couches.

19_LIVE_CONTROL_LAYERS_AND_PERFORMANCE_STATES
→ couches de performance et états abstraits.

20_TEMPORAL_INFRASTRUCTURE_MEASURE_LOOP_REPEAT_FREEZE
→ mesure, tempo, loop, repeat, freeze.

21_TEMPORAL_INFRASTRUCTURE_DECISION_QUESTIONS
→ décisions temporelles.

22_CONTEXTUAL_VISUALIZATION_REQUIREMENTS
→ visualisation contextuelle.
```

Cette chaîne ne crée pas encore d’interface, de mapping, de module, de patch ou de prototype.

---

# 4. Cohérence actuelle

La cohérence globale repose sur trois branches complémentaires :

```text
A. Style / phénomènes / architecture historique.
B. Sources / assets / besoins / tests.
C. Contrôle live / performance / temps / visualisation.
```

Ces branches doivent se rejoindre plus tard dans l’architecture Max for Live, mais aucune ne suffit seule à lancer un prototype.

Point de vigilance :

```text
les documents de contrôle live parlent déjà d’interface ;
mais ils restent abstraits ;
ils ne remplacent pas les modules ;
ils doivent être reliés ensuite aux modules existants seulement si le rôle technique est clair.
```

---

# 5. Documents désormais intégrés

## README.md

Statut : mis à jour.

Contient maintenant :

```text
nom local techno organique ;
principe techno principale ;
sources live fixes et optionnelles ;
branche 12–22 ;
workflow actuel ;
prochaine étape de consolidation.
```

## docs/00_INDEX_METHODE_DECISIONS.md

Statut : mis à jour.

Contient maintenant :

```text
formulation actuelle du projet ;
branche 12–22 ;
workflow étendu ;
règle anti-prototype ;
règle anti-classement ;
décision de ne pas ajouter de nouveau concept immédiatement.
```

## docs/assets/00_ASSETS_INDEX.md

Statut : créé précédemment.

Rôle : carte locale du dossier `docs/assets`.

Peut rester inchangé pour l’instant, sauf si l’on veut remplacer les anciennes mentions “README/index à mettre à jour” par “intégration faite”.

## docs/modules/16_SOURCE_NEEDS_ASSET_DATABASE_PROTOCOL.md

Statut : à relire, mais pas forcément à modifier immédiatement.

À modifier seulement si les documents `12–22` changent réellement :

```text
source_need ;
material_asset ;
conditional_sample ;
source configuration ;
live priority ;
selection policy.
```

---

# 6. Décision de pause actuelle

```text
create_more_concepts_now: no
create_more_assets_now: no
create_engine_profile_now: no
prototype_now: no
update_readme: done
update_master_index: done
update_documentation_map: done
check_protocol_16: pending
```

---

# 7. Options de reprise après consolidation

Après cette consolidation, les options réalistes sont :

```text
A. vérifier si docs/modules/16 doit être mis à jour ;
B. relier les couches de contrôle live aux modules existants ;
C. revenir aux scènes globales et trajectoires ;
D. revenir aux sources / assets prioritaires ;
E. préparer une première question de prototype, mais seulement si elle est reliée à un module final clair.
```

Décision provisoire recommandée :

```text
vérifier d’abord docs/modules/16_SOURCE_NEEDS_ASSET_DATABASE_PROTOCOL.md,
puis choisir entre contrôle live ↔ modules ou reprise des scènes globales.
```
