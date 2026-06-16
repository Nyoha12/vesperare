# INTEGRATION_PR_SCOPE

## Statut

Scope provisoire d'une future PR d'intégration de méthode vers `main`.

Ce document ne crée pas encore de PR.

Il définit ce qui est candidat à l'intégration et ce qui doit rester hors de `main`.

---

# 1. Principe

La future PR ne doit pas importer `ai/method-core` entier.

Elle doit importer seulement un noyau agentique stable et compatible avec la méthode déjà présente dans `main`.

Objectif :

```text
outiller main sans le remplacer.
```

Règle ajoutée :

```text
ne pas créer une deuxième méthode parallèle.
```

`main` contient déjà des documents de méthode, priorités, statuts et reprise. L'intégration doit d'abord s'adosser à eux.

---

# 2. Candidat à inclure maintenant — noyau minimal

## Racine agentique

```text
AGENTS.md
```

Raison : donner à Codex / agents les règles de comportement sans créer un nouveau système documentaire.

Condition : ce fichier doit rester subordonné à :

```text
docs/00_INDEX_METHODE_DECISIONS.md
docs/45_REPRISE_DEPUIS_FICHE_MESURES_INSTRUMENTS.md
docs/42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md
docs/modules/18_CONTEXTUAL_CONTROL_ROUTER_AMPLITUDES_LIMITES_OVERRIDE_ADDENDUM.md
docs/assets/00_ASSETS_INDEX.md
docs/assets/15_DONNEES_INSTRUMENTALES_MANQUANTES_PRIORITAIRES.md
docs/assets/16_ACOUSTICARCHIVE_MAPPING_DONNEES_VESPERARE.md
```

## Protocole agent minimal

```text
projects/agents/AGENT_RUN_PROTOCOL_V0.md
```

Raison : permettre des runs Codex cadrés, à corpus limité, sans prototype ni décision automatique.

## Garde-fou anti-user-homework

```text
projects/program/PROGRAM_REORIENTATION_NO_USER_HOMEWORK.md
```

Raison : formaliser que les questions complexes doivent être instruites par le programme avant d'être renvoyées à Yohan.

## Contrat d'intégration

```text
projects/integration/METHOD_HARMONIZATION_PLAN.md
projects/integration/METHOD_DIVERGENCE_REGISTER.md
projects/integration/METHOD_HARMONIZATION_CONTRACT.md
projects/integration/INTEGRATION_PR_SCOPE.md
```

Raison : rendre explicite le contrat d'intégration.

---

# 3. À ne pas inclure maintenant

## Méthode générique complète

```text
ai_method/
skills/
evals/
scripts/
knowledge/
```

Ancienne intuition : les importer comme noyau stable.

Correction : ne pas les importer maintenant.

Raison : `main` possède déjà des documents de méthode projet-spécifiques. Importer toute la méthode générique créerait un double système.

Décision provisoire : garder ces dossiers dans `ai/method-core` comme archive / laboratoire. Importer plus tard seulement si un besoin concret apparaît.

## Prompts et queue agents transitoires

```text
projects/agents/AGENT_WORK_QUEUE_V0.md
projects/agents/OPERATING_MODE_NOW.md
projects/agents/AGENT_ORCHESTRATION_READY_V0.md
projects/agents/MASTER_AGENT_PROMPT_V0.md
projects/agents/CODEX_AGENT_PROMPT_*.md
projects/CURRENT_DECISION_SUMMARY.md
projects/METHOD_PROGRESS_INDEX.md
```

Raison : utiles dans `ai/method-core`, mais reflètent une trajectoire expérimentale et parfois corrigée.

Décision provisoire : ne pas importer dans `main` tant qu'ils ne sont pas réécrits en version compatible `docs/45`.

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

Réponse : contrat d'harmonisation + subordination explicite à `docs/45` et `docs/00_INDEX`.

## R03 — Agents traités comme autorité

Réponse : outputs exclus par défaut.

## R04 — MTC01 réactivé implicitement

Réponse : micro_tests exclus.

## R05 — Conflit avec avancées récentes de main

Réponse : branche issue de main, import sélectif, revue de diff.

## R06 — Double méthode

Réponse : ne pas importer `ai_method/` maintenant ; utiliser les documents existants de `main` comme méthode projet.

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
1. vérifier le diff de integration/method-harmonization ;
2. vérifier que seuls AGENTS.md + protocole agent minimal + garde-fou + integration docs entrent dans main ;
3. créer une PR draft seulement si ce scope minimal est accepté.
```
