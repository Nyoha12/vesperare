# AGENT_WORK_QUEUE_V0

## Statut

Queue de travail pour agents cadrés.

But : éviter de continuer par micro-documents dispersés, éviter de demander à Yohan de répondre à des questions que le programme doit instruire, et éviter que l’assistant choisisse le prochain contenu à la place de la méthode.

---

# 1. Règle

Un agent run doit prendre une seule entrée de cette queue.

Pas de travail hors queue sans nouvelle décision.

---

# 2. Correction de trajectoire

La focalisation sur MTC01 était prématurée.

MTC01 reste en réserve, mais ne doit plus être la prochaine tâche.

La proposition `MUSICAL_MATERIAL_INTAKE` est probablement meilleure, mais elle ne doit pas être imposée par l’assistant.

La prochaine tâche doit d’abord demander :

```text
que ferait la méthode étudiée / synthétisée pour choisir le premier run ?
```

---

# 3. Queue actuelle

## RUN-00 — Select first run

Statut : prêt.

Prompt :

```text
projects/agents/CODEX_AGENT_PROMPT_SELECT_FIRST_RUN.md
```

Objet :

```text
choisir le premier vrai run Codex/agent à partir de la méthode, du rôle, du corpus et des corrections récentes
```

Sortie attendue :

```text
projects/agents/outputs/SELECT_FIRST_RUN_OUTPUT.md
```

Décision possible après sortie :

```text
adopter le run recommandé ;
réviser le prompt ;
suspendre ;
demander une seconde revue agent.
```

## RUN-01 — Musical material intake

Statut : candidat, non prioritaire tant que RUN-00 n’a pas confirmé.

Prompt :

```text
projects/agents/CODEX_AGENT_PROMPT_MUSICAL_MATERIAL_INTAKE.md
```

Objet :

```text
extraire du corpus les matières musicales concrètes disponibles ou décrites
```

Sortie attendue :

```text
projects/agents/outputs/MUSICAL_MATERIAL_INTAKE_OUTPUT.md
```

## RUN-02 — Revue méthode / surcharge

Statut : candidat.

Objet :

```text
la méthode est-elle devenue trop lourde ?
```

Sortie attendue :

```text
projects/agents/outputs/METHOD_LOAD_REVIEW_OUTPUT.md
```

## RUN-03 — Reprise éventuelle de MTC01

Statut : suspendu.

Condition : seulement après clarification des matières musicales concrètes et seulement si une matière musicale concrète rend la question pertinente.

## RUN-04 — Source_needs next batch gate

Statut : bloqué.

Condition : seulement après clarification des matières musicales concrètes.

---

# 4. Interdictions globales de la queue

Aucun run ne peut :

```text
modifier main ;
merger ;
créer un patch ;
créer un mapping ;
créer une spec globale ;
lancer un prototype ;
lancer un micro-test ;
auditer tout le repo ;
demander à Yohan de résoudre une question de recherche à la place du programme ;
faire décider l’assistant à la place de la méthode.
```

---

# 5. Prochaine action unique

```text
RUN-00 — Select first run
```

Ne pas lancer Musical Material Intake, MTC01 ou Source Needs avant cette sortie.
