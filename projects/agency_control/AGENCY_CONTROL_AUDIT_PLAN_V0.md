# AGENCY_CONTROL_AUDIT_PLAN_V0

## Statut

Plan d’audit limité agency/control.

Ce document n’est pas :

- une spec ;
- un verifier complet ;
- un audit `assets/source_needs` ;
- un prototype ;
- un patch ;
- un mapping ;
- une décision d’architecture.

## Pourquoi cet audit existe

Le decision gate avant `assets/source_needs` conclut qu’un audit agency/control doit être intercalé.

Raison : le système doit préserver l’agency musicale live de Yohan avant que les besoins de sources soient audités.

---

# 1. Question centrale

```text
Les documents de contrôle, limites, override et protection préservent-ils réellement l’agency live de Yohan, ou risquent-ils de la réduire malgré leurs bonnes intentions ?
```

---

# 2. Corpus limité

À lire pour cet audit :

```text
README.md
docs/40_STRATEGIE_SYSTEME_CONTROLE_LIMITES_HARMONISATION.md
docs/42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md
docs/44_AUDIT_COHERENCE_RECENTRAGE_PAQUET.md
docs/modules/05_CONTEXTUAL_CONTROL_ROUTER.md
docs/modules/07_CONFLICT_PROTECTION_MANAGER.md
projects/research_questions/AGENCY_PRESERVATION_MAP_V0.md
projects/research_questions/MICRO_TEST_CRITERIA_V0.md
projects/research_questions/ERGONOMIC_AGENCY_SCENARIOS_V0.md
```

À ne pas lire encore :

```text
docs/assets/source_needs/*
docs/assets/material_assets/*
docs/assets/function_tests/*
docs/assets/decision_gates/*
docs/assets/engine_sketches/*
```

---

# 3. Axes d’audit

## A — Agency humaine

Vérifier si le contrôle laisse Yohan décider :

- du moment ;
- du retrait ;
- de la densification ;
- de la bifurcation ;
- du dépassement ;
- de l’arrêt ;
- de l’override.

## B — Contrôle comme fonction musicale

Vérifier que les contrôles ne sont pas de simples paramètres techniques, mais des accès performatifs à des fonctions musicales.

## C — Limites jouables

Vérifier si les limites sont bien traitées comme zones de bord jouables, avec visibilité, sortie et possibilité de décision humaine.

## D — Risque de dépossession

Repérer les endroits où le système pourrait :

- masquer le live ;
- décider implicitement ;
- rendre l’écran trop central ;
- promouvoir trop de contrôles ;
- automatiser une trajectoire ;
- transformer une aide en direction imposée.

## E — Micro-test readiness

Repérer les claims qui pourraient devenir plus tard des micro-tests, sans lancer les tests maintenant.

---

# 4. Format de sortie

L’audit doit produire :

```text
projects/agency_control/AGENCY_CONTROL_CLAIM_REGISTER_V0.md
projects/agency_control/AGENCY_CONTROL_AUDIT_BATCH_01.md
```

Chaque claim doit être classé avec :

```text
strong acquisition
provisional acquisition
active hypothesis
design research question
risk to monitor
suspend
```

---

# 5. Garde-fous

Ne pas :

- auditer les source_needs ;
- décider de modules finaux ;
- écrire SPEC.md ;
- écrire VERIFY.md ;
- créer de patch ;
- créer de mapping complet ;
- considérer un micro-test comme déjà autorisé ;
- modifier main ;
- merger la branche.

---

# 6. Prochaine action

Créer :

```text
projects/agency_control/AGENCY_CONTROL_CLAIM_REGISTER_V0.md
```
