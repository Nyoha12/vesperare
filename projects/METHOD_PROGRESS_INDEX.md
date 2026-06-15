# METHOD_PROGRESS_INDEX

## Statut

Index de progression de la reprise méthodologique sur la branche :

```text
ai/method-core
```

Ce document sert à rendre lisible l’état atteint sans ouvrir de spec, verifier complet, prototype ou merge.

---

# 1. État général

## Branche

```text
ai/method-core
```

## Main

```text
main non modifié par cette reprise méthodologique
```

## Phase actuelle

```text
méthode installée + reprise de projet + claim register + agency/control + premier audit source_needs limité
```

---

# 2. Méthode installée

Documents et couches déjà créés ou intégrés :

```text
AGENTS.md
ai_method/*
skills/*
evals/*
scripts/*
projects/intake/*
projects/claims/*
projects/acquis_audit/*
projects/interviews/*
projects/research_questions/*
projects/agency_control/*
projects/source_needs_audit/*
```

---

# 3. Décisions méthodologiques importantes

## D01 — Ne pas demander à Yohan de résoudre tout le design par interview

Les questions trop complexes doivent devenir :

```text
questions de recherche / design / vérification
```

et non devoir d’interview.

## D02 — Objet central à préserver

```text
l’agency musicale live complète de Yohan
```

et non une compétence isolée.

## D03 — Pas de prototype prématuré

Le projet reste en conception, consolidation et harmonisation avant prototypage.

## D04 — Micro-test possible seulement sous conditions

Un micro-test doit être court, local, réversible et centré sur une seule question.

## D05 — Source_needs relus avec protocole agency-first

Les source_needs ne sont pas des obligations de production.

Ils sont des hypothèses à auditer.

---

# 4. Documents de recherche créés

```text
projects/research_questions/FOUNDATIONAL_RESEARCH_QUESTIONS_V0.md
projects/research_questions/FOUNDATIONAL_RESEARCH_PLAN_V0.md
projects/research_questions/AGENCY_PRESERVATION_MAP_V0.md
projects/research_questions/MICRO_TEST_CRITERIA_V0.md
projects/research_questions/ERGONOMIC_AGENCY_SCENARIOS_V0.md
projects/research_questions/DECISION_GATE_BEFORE_SOURCE_NEEDS_AUDIT.md
```

---

# 5. Agency/control

Créé :

```text
projects/agency_control/AGENCY_CONTROL_AUDIT_PLAN_V0.md
projects/agency_control/AGENCY_CONTROL_CLAIM_REGISTER_V0.md
projects/agency_control/AGENCY_CONTROL_AUDIT_BATCH_01.md
projects/agency_control/AGENCY_CONTROL_AUDIT_BATCH_02.md
```

Décision :

```text
agency/control minimalement audité avant ouverture source_needs
```

---

# 6. Source_needs audit

Créé :

```text
projects/source_needs_audit/SOURCE_NEEDS_AUDIT_PROTOCOL_V0.md
projects/source_needs_audit/SOURCE_NEEDS_AUDIT_BATCH_01_SCOPE.md
projects/source_needs_audit/SOURCE_NEEDS_AUDIT_BATCH_01.md
projects/source_needs_audit/SOURCE_NEEDS_AUDIT_BATCH_01_REVIEW.md
```

Premier batch audité :

```text
SOURCE_NEED_LIVE_DIDGERIDOO_PRESSURE_FORMANTS
SOURCE_NEED_LIVE_JAW_HARPS_FORMANT_MICROPULSE
SOURCE_NEED_SUB_PRESSURE_ENGINE
```

Décision :

```text
les trois sont gardés comme hypothèses documentées, pas comme obligations de production
```

Point sensible :

```text
le sub pressure engine reste le risque principal de remplacement ou masquage du live
```

---

# 7. Ce qui reste interdit maintenant

Ne pas :

```text
modifier main
merger la branche
écrire SPEC.md
écrire VERIFY.md
créer un prototype
créer un patch
créer un mapping complet
auditer tout source_needs d’un coup
transformer un source_need en module
transformer un micro-test en architecture
```

---

# 8. Prochaines options possibles

## Option A — Continuer source_needs par petits batches

Créer :

```text
projects/source_needs_audit/SOURCE_NEEDS_AUDIT_BATCH_02_SCOPE.md
```

Probable sujet : sources optionnelles gong / tambour, avec prudence.

## Option B — Préparer des micro-tests candidats sans les lancer

Créer :

```text
projects/micro_tests/MICRO_TEST_CANDIDATES_V0.md
```

But : lister des candidats issus des audits sans autoriser leur exécution.

## Option C — Faire une revue de cohérence de la méthode installée

Créer :

```text
projects/method_review/METHOD_APPLICATION_REVIEW_V0.md
```

But : vérifier si la méthode aide réellement ou si elle devient trop lourde.

---

# 9. Recommandation actuelle

Recommandation : Option C.

Avant d’avancer plus loin dans les source_needs, vérifier que la méthode reste utile, lisible et proportionnée.

Cela évite que la méthode devienne elle-même une surcharge.
