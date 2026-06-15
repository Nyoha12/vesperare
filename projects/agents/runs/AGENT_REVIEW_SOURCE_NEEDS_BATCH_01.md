# AGENT_REVIEW_SOURCE_NEEDS_BATCH_01

## Statut

Premier run de revue multi-rôles selon `AGENT_RUN_PROTOCOL_V0`.

Important : ce document est une revue agent-style structurée.

Il ne prétend pas être une exécution de workers autonomes réellement indépendants.

Il sert à tester le protocole avant de lancer plus tard des agents/Codex réellement séparés.

---

# 1. Question centrale

```text
SOURCE_NEEDS_AUDIT_BATCH_01 reste-t-il agency-first, ou valide-t-il trop vite didgeridoo / guimbardes / sub ?
```

---

# 2. Corpus autorisé

```text
projects/source_needs_audit/SOURCE_NEEDS_AUDIT_PROTOCOL_V0.md
projects/source_needs_audit/SOURCE_NEEDS_AUDIT_BATCH_01_SCOPE.md
projects/source_needs_audit/SOURCE_NEEDS_AUDIT_BATCH_01.md
projects/source_needs_audit/SOURCE_NEEDS_AUDIT_BATCH_01_REVIEW.md
projects/research_questions/AGENCY_PRESERVATION_MAP_V0.md
projects/research_questions/MICRO_TEST_CRITERIA_V0.md
projects/research_questions/ERGONOMIC_AGENCY_SCENARIOS_V0.md
projects/agency_control/AGENCY_CONTROL_AUDIT_BATCH_01.md
projects/agency_control/AGENCY_CONTROL_AUDIT_BATCH_02.md
docs/assets/source_needs/SOURCE_NEED_LIVE_DIDGERIDOO_PRESSURE_FORMANTS.md
docs/assets/source_needs/SOURCE_NEED_LIVE_JAW_HARPS_FORMANT_MICROPULSE.md
docs/assets/source_needs/SOURCE_NEED_SUB_PRESSURE_ENGINE.md
```

---

# 3. Corpus interdit

```text
reste du dossier docs/assets/source_needs/*
patchs
mappings
spec globale
prototype
main
```

---

# 4. Sorties individuelles

## Agent 1 — Agency live

Conclusion courte :

```text
L’audit reste globalement agency-first, mais le statut “garder” doit rester explicitement non productif.
```

Arguments principaux :

- Les deux sources acoustiques sont gardées comme live fixes, non comme banques de samples.
- Le didgeridoo et les guimbardes sont reliés à souffle, bouche, geste, formants, timing, live agency.
- Le sub est reconnu comme partenaire, mais aussi comme risque fort de remplacement.

Risques :

- Le sub peut devenir fondation dominante par défaut.
- Les traitements live peuvent devenir trop centraux et masquer le geste.
- “Garder” peut être mal lu comme validation définitive.

Angles morts :

- Pas encore de scénario de performance réel appliqué à chaque source.
- Pas encore de critère d’écoute concret.

Ce qui devrait changer :

- Ajouter partout : “garder comme hypothèse, pas comme obligation”.
- Marquer le sub comme source_need sous surveillance renforcée.

Confiance : moyenne à forte.

---

## Agent 2 — Anti-prototype / méthode

Conclusion courte :

```text
L’audit ne prototype pas, mais il approche une zone dangereuse : les micro-tests sont déjà tentants.
```

Arguments principaux :

- Aucun patch, mapping ou spec n’a été créé.
- Les micro-tests sont formulés comme questions futures, pas exécutés.
- Le scope est limité à trois fichiers.

Risques :

- Les questions de micro-test pourraient être prises comme prochaine action automatique.
- Le sub engine pourrait déclencher trop vite un test technique.
- L’audit source_needs peut redevenir l’ancien chemin s’il continue sans gate.

Angles morts :

- Pas encore de décision sur le nombre maximal de batches source_needs avant revue.

Ce qui devrait changer :

- Créer un `SOURCE_NEEDS_NEXT_STEP_GATE` avant Batch 02.
- Interdire explicitement plus d’un nouveau batch source_needs sans revue de méthode.

Confiance : forte.

---

## Agent 3 — Contrôle / override

Conclusion courte :

```text
L’audit nomme les sorties et risques, mais ne les formalise pas encore assez pour le futur verifier.
```

Arguments principaux :

- Didgeridoo : besoin de relation au sub, sécurité grave, retrait, traitement réductible.
- Guimbardes : besoin de sécurité aiguë, réduction de densité, priorité mix.
- Sub : besoin de retrait, low-end guard, relation didgeridoo, relation guimbardes.

Risques :

- Les sorties sont listées mais pas encore hiérarchisées.
- Override et retrait ne sont pas encore transformés en critères testables.

Angles morts :

- Pas encore de tableau : source_need → sortie obligatoire → risque si sortie absente.

Ce qui devrait changer :

- Créer plus tard une matrice `SOURCE_NEED_EXIT_OVERRIDE_MATRIX_V0` avant tout micro-test.

Confiance : moyenne.

---

## Agent 4 — Source_needs sceptique

Conclusion courte :

```text
Les trois source_needs sont plausibles, mais “sub pressure engine” mérite un statut plus prudent que les deux sources live.
```

Arguments principaux :

- Didgeridoo : live fixe, agency évidente, samples faibles.
- Guimbardes : live fixe, agency forte, risque esthétique nommé.
- Sub : engine génératif, centralité très haute, risque de devenir solution implicite.

Risques :

- Le sub est “garder” alors qu’il n’est pas source live acoustique.
- Le sub pourrait importer une esthétique techno générique.
- La nécessité du sub peut être vraie, mais son rôle exact doit rester ouvert.

Angles morts :

- Pas encore de distinction entre “besoin de fonction sub” et “besoin d’un engine sub spécifique”.

Ce qui devrait changer :

- Reclasser le sub non pas comme simple “garder”, mais comme :

```text
garder sous contrainte forte / active hypothesis for engine design
```

Confiance : forte.

---

## Agent 5 — Ergonomie cognitive

Conclusion courte :

```text
L’audit voit les risques sonores, mais doit mieux surveiller la charge cognitive créée par trop de contrôles de sécurité.
```

Arguments principaux :

- Chaque source a beaucoup de contrôles attendus.
- Le Router devra masquer ou prioriser, mais cela peut rendre le système opaque.
- Les contrôles d’urgence doivent rester accessibles.

Risques :

- Trop de sécurité devient elle-même surcharge.
- Trop de routing contextuel peut cacher les sorties.
- Les labels musicaux peuvent devenir trop abstraits en live.

Angles morts :

- Pas encore de scénario “continuer sans regarder” appliqué à ces trois source_needs.

Ce qui devrait changer :

- Ajouter une contrainte : chaque source_need central doit avoir un mode minimal live, lisible sans écran lourd.

Confiance : moyenne.

---

## Agent 6 — Méthode / proportionnalité

Conclusion courte :

```text
La méthode a fonctionné, mais elle doit maintenant ralentir la production de nouveaux documents et augmenter les décisions synthétiques.
```

Arguments principaux :

- L’audit est limité, relu, et correctement gardé hors prototype.
- Beaucoup de documents ont été créés en peu de temps.
- La prochaine valeur n’est pas forcément un nouveau batch, mais une décision de consolidation.

Risques :

- La méthode devient une couche autonome.
- Les documents deviennent plus nombreux que les décisions.
- Yohan perd la lisibilité du chemin.

Angles morts :

- Pas encore de page courte “où on en est / prochaine décision”.

Ce qui devrait changer :

- Créer un gate de prochaine action plutôt qu’un nouveau batch automatique.

Confiance : forte.

---

# 5. Synthèse

## Accords

Tous les agents convergent sur :

```text
SOURCE_NEEDS_AUDIT_BATCH_01 est acceptable ;
il reste globalement agency-first ;
il ne prototype pas ;
le scope limité était bon ;
le sub est le point le plus dangereux ;
“garder” ne doit pas signifier “valider pour production”.
```

## Désaccords / nuances

- Agency live accepte le batch si “garder” reste hypothèse.
- Source_needs sceptique veut un statut plus prudent pour le sub.
- Méthode/proportionnalité recommande de ne pas enchaîner tout de suite sur Batch 02.

## Risques majeurs

```text
R01 — sub engine trop central
R02 — garder lu comme validation définitive
R03 — micro-test qui devient prochaine action automatique
R04 — trop de contrôles de sécurité créant surcharge
R05 — méthode produisant trop de documents
```

## Recommandation

Ne pas continuer immédiatement vers `SOURCE_NEEDS_AUDIT_BATCH_02`.

Créer d’abord :

```text
projects/source_needs_audit/SOURCE_NEEDS_NEXT_STEP_GATE.md
```

But : décider entre :

```text
A — continuer source_needs Batch 02 ;
B — consolider le statut du sub ;
C — préparer micro-test candidates sans les lancer ;
D — faire une pause méthode / synthèse pour Yohan.
```

## Décision humaine requise

Yohan devra décider plus tard si la prochaine valeur vient de :

- continuer l’audit documentaire ;
- préparer des micro-tests candidats ;
- consolider les risques sub/agency ;
- alléger la méthode.
