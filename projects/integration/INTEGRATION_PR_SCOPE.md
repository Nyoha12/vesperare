# INTEGRATION_PR_SCOPE

## Statut

Scope provisoire d'une future PR d'intégration de méthode vers `main`.

Ce document ne crée pas encore de PR.

Il définit ce qui est candidat à l'intégration et ce qui doit rester hors de `main`.

---

# 1. Principe

La future PR ne doit pas importer `ai/method-core` entier.

Elle doit importer seulement un noyau stable.

Objectif :

```text
outiller main sans le remplacer.
```

---

# 2. Candidat à inclure — noyau stable

## Racine et méthode

```text
AGENTS.md
ai_method/
skills/
evals/
scripts/
knowledge/
```

Raison : ces fichiers forment l'environnement durable de travail agentique.

Risque : surcharge si la méthode devient obligatoire pour tout.

Garde-fou : la méthode s'applique strictement aux décisions à risque.

## Agents / protocole

```text
projects/agents/AGENT_RUN_PROTOCOL_V0.md
projects/agents/OPERATING_MODE_NOW.md
projects/agents/AGENT_ORCHESTRATION_READY_V0.md
```

Raison : permettre à Codex / agents de travailler avec un cadre clair.

Risque : importer trop de prompts contradictoires.

Garde-fou : garder seulement protocoles stables, pas toutes les sorties.

## Programme / correction utilisateur

```text
projects/program/PROGRAM_REORIENTATION_NO_USER_HOMEWORK.md
```

Raison : règle centrale — ne pas renvoyer à Yohan les questions que le programme doit instruire.

Risque : aucun majeur, si formulé comme garde-fou et non comme blocage.

## Intégration

```text
projects/integration/METHOD_HARMONIZATION_PLAN.md
projects/integration/METHOD_DIVERGENCE_REGISTER.md
projects/integration/METHOD_HARMONIZATION_CONTRACT.md
projects/integration/INTEGRATION_PR_SCOPE.md
```

Raison : rendre explicite le contrat d'intégration.

---

# 3. À discuter avant inclusion

```text
projects/agents/AGENT_WORK_QUEUE_V0.md
projects/agents/CODEX_AGENT_PROMPT_SELECT_FIRST_RUN.md
projects/agents/CODEX_AGENT_PROMPT_MUSICAL_MATERIAL_INTAKE.md
projects/CURRENT_DECISION_SUMMARY.md
projects/METHOD_PROGRESS_INDEX.md
```

Raison possible d'inclusion : utiles pour reprendre le travail.

Risque : ces fichiers peuvent refléter des états transitoires de `ai/method-core`, pas la méthode stable.

Décision provisoire : inclure seulement après revue.

---

# 4. À exclure par défaut

```text
projects/agents/outputs/*
projects/agents/runs/*
projects/micro_tests/*
projects/source_needs_audit/*
projects/agency_control/*
projects/acquis_audit/*
projects/claims/*
projects/intake/PROJECT_INTAKE_CONTEXT.md
projects/intake/PROJECT_INTAKE.md
projects/intake/PROJECT_MAP.md
projects/research_questions/*
projects/material_validation/*
projects/sessions/*
```

Raison : traces de travail, audits, expérimentations, outputs, corrections et faux départs.

Ils peuvent rester dans `ai/method-core` comme archive.

Ils ne doivent pas devenir automatiquement mémoire durable de `main`.

---

# 5. Risques de PR

## R01 — Surcharge documentaire

Trop de fichiers importés rendent `main` illisible.

Réponse : PR minimale.

## R02 — Méthode qui écrase le projet vivant

Réponse : contrat d'harmonisation.

## R03 — Agents traités comme autorité

Réponse : outputs exclus par défaut.

## R04 — MTC01 réactivé implicitement

Réponse : micro_tests exclus.

## R05 — Conflit avec avancées récentes de main

Réponse : branche issue de main, import sélectif, revue de diff.

---

# 6. Rollback

Si la PR surcharge `main`, rollback simple :

```text
revert du commit d'intégration ;
conservation de ai/method-core comme archive séparée.
```

Ne pas supprimer `ai/method-core`.

---

# 7. Prochaine action

Avant PR :

```text
1. vérifier localement le diff de integration/method-harmonization ;
2. décider si le noyau stable doit être importé maintenant ;
3. créer une PR draft seulement si le scope est accepté.
```
