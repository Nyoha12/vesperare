# CODEX_AGENT_PROMPT_MTC01_REVIEW

## Statut

Prompt de revue externe / agent pour MTC01.

Mode attendu : lecture et critique uniquement.

Aucune modification de fichiers n’est demandée par ce prompt.

---

# Prompt

Tu travailles sur la branche `ai/method-core` du repo Vesperare.

Ta tâche est une revue critique limitée.

## Question centrale

```text
MTC01 — “Sub soutient didgeridoo sans le masquer” — est-il assez bien cadré pour rester un micro-test candidat, ou glisse-t-il encore trop vers prototype / patch / engine ?
```

## Fichiers à lire

```text
projects/CURRENT_DECISION_SUMMARY.md
projects/agents/AGENT_RUN_PROTOCOL_V0.md
projects/micro_tests/MICRO_TEST_CANDIDATES_V0.md
projects/micro_tests/MICRO_TEST_AUTHORIZATION_DRAFT_MTC01_REVISED.md
projects/source_needs_audit/SUB_PRESSURE_ENGINE_AGENCY_RISK_NOTE.md
projects/source_needs_audit/SOURCE_NEEDS_AUDIT_BATCH_01.md
docs/assets/source_needs/SOURCE_NEED_LIVE_DIDGERIDOO_PRESSURE_FORMANTS.md
docs/assets/source_needs/SOURCE_NEED_SUB_PRESSURE_ENGINE.md
```

## Fichiers à ne pas lire pour cette tâche

```text
reste de docs/assets/source_needs/*
docs/assets/material_assets/*
docs/assets/function_tests/*
docs/assets/engine_sketches/*
```

## Ce qu’il faut vérifier

1. Le didgeridoo reste-t-il l’objet central du test ?
2. Le sub est-il seulement une variable de soutien ?
3. Les garde-fous anti-prototype sont-ils suffisants ?
4. Le test observe-t-il bien l’agency, et pas seulement le son ?
5. Le retrait / réduction du sub est-il assez présent ?
6. Le résultat positif est-il bien limité à un indice local ?
7. Manque-t-il une condition d’arrêt ?
8. Le test risque-t-il encore de devenir un patch ou engine implicite ?

## Format de sortie attendu

```md
# MTC01_AGENT_REVIEW

## Conclusion courte

## Points solides

## Risques restants

## Conditions à ajouter

## Décision recommandée

Choisir une seule option :

- garder comme candidat non autorisé ;
- réviser encore ;
- suspendre ;
- abandonner.

## Confiance

faible / moyenne / forte
```

## Limites de la tâche

Ne pas proposer de patch.

Ne pas proposer de mapping.

Ne pas proposer de spec globale.

Ne pas autoriser le micro-test.

Ne pas transformer le sub en engine validé.

Ne pas élargir la tâche à tout Vesperare.
