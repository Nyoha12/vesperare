# AGENT_WORK_QUEUE_V0

## Statut

Queue de travail pour agents cadrés.

But : éviter de continuer par micro-documents dispersés et éviter de demander à Yohan de répondre à des questions que le programme doit instruire.

---

# 1. Règle

Un agent run doit prendre une seule entrée de cette queue.

Pas de travail hors queue sans nouvelle décision.

---

# 2. Correction de trajectoire

La focalisation sur MTC01 était prématurée.

MTC01 reste en réserve, mais ne doit plus être la prochaine tâche.

Raison : la question manque encore de matière musicale concrète.

---

# 3. Queue actuelle

## RUN-01 — Musical material intake

Statut : prêt.

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

Décision possible après sortie :

```text
choisir les vrais objets de conception ;
identifier les matières manquantes ;
choisir une question à instruire ;
suspendre les micro-tests.
```

## RUN-02 — Revue méthode / surcharge

Statut : à faire seulement après RUN-01 si nécessaire.

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

Condition : seulement après MUSICAL_MATERIAL_INTAKE_OUTPUT et seulement si une matière musicale concrète rend la question pertinente.

Objet :

```text
MTC01 peut-il redevenir une question utile, ou doit-il rester suspendu ?
```

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
demander à Yohan de résoudre une question de recherche à la place du programme.
```

---

# 5. Prochaine action unique

```text
RUN-01 — Musical material intake
```

Ne pas revenir à MTC01 avant cette sortie.
