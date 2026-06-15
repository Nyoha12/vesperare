# FOUNDATIONAL_RESEARCH_PLAN_V0

## Statut

Plan d’exploration des questions fondatrices issues de `FOUNDATIONAL_RESEARCH_QUESTIONS_V0.md`.

Ce document n’est pas une spec, un verifier complet, un audit global, un audit `assets/source_needs` ou un plan de prototype.

## Objectif

Définir comment explorer les questions fondatrices sans demander à Yohan de résoudre verbalement tout le système.

Quand une question est trop large pour recevoir une réponse directe, elle doit devenir l’un de ces objets :

- question de recherche ;
- question de design ;
- claim à auditer ;
- futur critère de micro-test ;
- futur critère de verifier ;
- question ouverte.

---

# 1. Point de départ

## A1 — Préserver l’agency musicale de Yohan

Le futur système doit préserver l’intégrité de l’agency musicale live de Yohan.

Cela concerne notamment :

- le timing ;
- l’écoute ;
- la décision ;
- la présence ;
- le risque ;
- la tension ;
- le silence ;
- le corps ;
- la sensibilité ;
- la continuité improvisée ;
- la capacité de redirection ;
- l’autorité musicale finale.

## A2 — Ne pas réduire la musicalité de Yohan à une compétence isolée

La réponse de Yohan indique que l’objet à préserver n’est pas une compétence particulière, mais une écologie globale de performance.

La méthode doit donc éviter de transformer cette agency en une petite liste de capacités fixes.

---

# 2. Questions fondatrices et modes d’exploration

## RQ01 — Préservation de l’agency

Question : qu’est-ce que le système risque de réduire ou déplacer dans l’agency de Yohan lorsqu’il l’assiste ?

Mode d’exploration : lecture limitée du corpus sur agency, override, contrôle et live ; scénarios de réduction d’agency ; futurs critères de préservation.

## RQ02 — Amplification sans remplacement

Question : comment amplifier ce que Yohan fait déjà bien sans le remplacer ?

Mode d’exploration : distinguer augmentation, miroir, prolongement, traduction, délégation et remplacement.

## RQ03 — Intuition en situation live

Question : qu’est-ce qui rend un contrôle intuitif pendant une performance live ?

Mode d’exploration : analyser les documents de contrôle/contextualisation et préparer des scénarios de performance.

## RQ04 — Sensibilité électronique

Question : qu’est-ce qui rend une transformation électronique sensible plutôt que décorative ou caricaturale ?

Mode d’exploration : chercher dans le corpus les notions de naturalisation, non-décor, beauté autonome, halo, impact et corps.

## RQ05 — Traduction acoustique vers contrôle électronique

Question : quelles dimensions du jeu acoustique peuvent devenir des influences électroniques sans être réduites ?

Mode d’exploration : distinguer traduction, extraction de features, mapping, influence et remplacement.

## RQ06 — Charge cognitive

Question : quels types de charge cognitive dégradent la performance ?

Mode d’exploration : repérer les risques de surcharge de contrôle, surcharge visuelle, opacité système, anxiété technique et perte d’écoute.

## RQ07 — Micro-test versus prototype

Question : comment distinguer un micro-test utile d’un prototype prématuré ?

Mode d’exploration : formaliser les critères de micro-test et les conditions d’arrêt.

## RQ08 — Ancienne prochaine étape du repo

Question : l’audit `assets/source_needs` est-il encore la bonne prochaine étape après la reprise méthodologique ?

Mode d’exploration : finir d’abord le cadrage agency / contrôle / micro-test, puis décider.

---

# 3. Plan d’exploration minimal

## Phase 1 — Agency preservation map

Fichier futur :

```text
projects/research_questions/AGENCY_PRESERVATION_MAP_V0.md
```

But : cartographier ce que le système doit préserver dans l’agency live de Yohan.

## Phase 2 — Micro-test criteria

Fichier futur :

```text
projects/research_questions/MICRO_TEST_CRITERIA_V0.md
```

But : définir ce qui distingue un micro-test d’un prototype.

## Phase 3 — Ergonomic agency scenarios

Fichier futur :

```text
projects/research_questions/ERGONOMIC_AGENCY_SCENARIOS_V0.md
```

But : transformer l’ergonomie musicale en scénarios de performance.

## Phase 4 — Decision gate before source-needs audit

Fichier futur :

```text
projects/research_questions/DECISION_GATE_BEFORE_SOURCE_NEEDS_AUDIT.md
```

But : décider si l’audit `assets/source_needs` est réellement la prochaine étape.

---

# 4. Lecture minimale du corpus

Documents candidats pour la prochaine phase :

```text
README.md
docs/00_INDEX_METHODE_DECISIONS.md
docs/40_STRATEGIE_SYSTEME_CONTROLE_LIMITES_HARMONISATION.md
docs/42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md
docs/43_HARMONISATION_CONTROLES_15_22.md
docs/44_AUDIT_COHERENCE_RECENTRAGE_PAQUET.md
docs/modules/05_CONTEXTUAL_CONTROL_ROUTER.md
docs/modules/07_CONFLICT_PROTECTION_MANAGER.md
docs/modules/18_CONTEXTUAL_CONTROL_ROUTER_AMPLITUDES_LIMITES_OVERRIDE_ADDENDUM.md
```

Documents à garder pour plus tard :

```text
docs/assets/source_needs/*
docs/assets/material_assets/*
docs/assets/function_tests/*
docs/assets/decision_gates/*
docs/assets/engine_sketches/*
```

---

# 5. Prochaine action recommandée

Créer :

```text
projects/research_questions/AGENCY_PRESERVATION_MAP_V0.md
```

But : passer de l’axiome de préservation de l’agency à une carte exploitable de ce que le système doit préserver.

Cette prochaine action doit rester courte, non exhaustive, non technique au sens implémentation, sans spec, sans verifier complet, sans prototype, et sans audit `assets/source_needs`.
