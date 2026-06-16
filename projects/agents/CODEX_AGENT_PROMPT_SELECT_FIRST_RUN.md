# CODEX_AGENT_PROMPT_SELECT_FIRST_RUN

## Statut

Prompt meta-agent pour demander au système quel premier run Codex/agent est le plus judicieux.

Ce prompt ne lance pas le run choisi.

Il demande seulement une recommandation argumentée.

---

# Prompt

Tu travailles sur la branche `ai/method-core` du repo Vesperare.

Ta tâche est :

```text
SELECT_FIRST_RUN
```

## Objectif

Choisir le premier vrai run agent/Codex le plus utile maintenant, en fonction de l’état réel du système, de la méthode installée, des corrections méthodologiques récentes et du corpus disponible.

Tu ne dois pas supposer que MTC01 est le bon premier run.

Tu ne dois pas supposer que `MUSICAL_MATERIAL_INTAKE` est forcément le bon premier run.

Tu dois comparer les options et recommander un premier prompt/run.

## Fichiers à lire

Lis au minimum :

```text
AGENTS.md
ai_method/README.md
ai_method/10_STARTING_A_SESSION.md
ai_method/11_APPLYING_TO_EXISTING_PROJECT.md
projects/agents/OPERATING_MODE_NOW.md
projects/agents/AGENT_ORCHESTRATION_READY_V0.md
projects/agents/AGENT_RUN_PROTOCOL_V0.md
projects/agents/AGENT_WORK_QUEUE_V0.md
projects/agents/MASTER_AGENT_PROMPT_V0.md
projects/program/PROGRAM_REORIENTATION_NO_USER_HOMEWORK.md
projects/CURRENT_DECISION_SUMMARY.md
projects/METHOD_PROGRESS_INDEX.md
```

Tu peux aussi consulter, seulement si nécessaire :

```text
projects/agents/CODEX_AGENT_PROMPT_MUSICAL_MATERIAL_INTAKE.md
projects/agents/CODEX_AGENT_PROMPT_MTC01_REVIEW.md
projects/micro_tests/MICRO_TEST_AUTHORIZATION_DRAFT_MTC01_FINAL_CANDIDATE.md
projects/agents/outputs/MTC01_CODEX_WINDOWS_REVIEW_OUTPUT.md
```

## Options à comparer

Compare au moins ces options :

```text
A — MUSICAL_MATERIAL_INTAKE
B — METHOD_LOAD_REVIEW / simplification de la méthode
C — SELECT_FIRST_REAL_DESIGN_QUESTION
D — REPO_METHOD_ALIGNMENT_CHECK
E — MTC01_REVIEW ou reprise de MTC01
F — autre option mieux justifiée
```

## Critères de choix

Évalue chaque option selon :

```text
1. respecte-t-elle la méthode analysée ?
2. évite-t-elle de demander à Yohan de résoudre la recherche lui-même ?
3. produit-elle une sortie utile et actionnable ?
4. évite-t-elle prototype, patch, mapping, spec globale ?
5. réduit-elle vraiment l’incertitude ?
6. évite-t-elle d’ajouter une couche documentaire inutile ?
7. est-elle adaptée à un premier vrai run Codex Windows ?
8. peut-elle être faite avec un corpus limité ?
9. préserve-t-elle le jugement humain final ?
```

## Sortie attendue

Crée uniquement :

```text
projects/agents/outputs/SELECT_FIRST_RUN_OUTPUT.md
```

Format obligatoire :

```md
# SELECT_FIRST_RUN_OUTPUT

## Conclusion courte

## Options comparées

| Option | Pertinence | Risque | Verdict |
|---|---|---|---|

## Option recommandée

## Pourquoi cette option

## Pourquoi les autres options ne sont pas premières

## Premier prompt recommandé

Donne le prompt complet à utiliser dans Codex Windows.

## Fichiers à lire pour ce run

## Fichiers à ne pas lire

## Sortie attendue

## Interdictions

## Conditions d’arrêt

## Décision humaine requise après la sortie
```

## Interdictions

Ne pas :

```text
exécuter le run recommandé ;
modifier main ;
créer un patch ;
créer un mapping ;
créer un prototype ;
écrire SPEC.md ;
écrire VERIFY.md ;
lancer un micro-test ;
autoriser MTC01 ;
décider à la place de Yohan ;
inventer une connaissance du projet non présente dans les fichiers.
```

## Principe important

Ton travail est de recommander le meilleur premier prompt/run.

Tu ne dois pas faire le travail de ce prompt.
