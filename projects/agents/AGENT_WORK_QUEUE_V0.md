# AGENT_WORK_QUEUE_V0

## Statut

Queue de travail pour agents cadrés.

But : éviter de continuer par micro-documents dispersés.

---

# 1. Règle

Un agent run doit prendre une seule entrée de cette queue.

Pas de travail hors queue sans nouvelle décision.

---

# 2. Queue actuelle

## RUN-01 — Revue critique de MTC01

Statut : prêt.

Prompt :

```text
projects/agents/CODEX_AGENT_PROMPT_MTC01_REVIEW.md
```

Objet :

```text
MICRO_TEST_AUTHORIZATION_DRAFT_MTC01_REVISED.md
```

Sortie attendue :

```text
projects/agents/outputs/MTC01_AGENT_REVIEW_OUTPUT.md
```

Décision possible après sortie :

```text
garder / réviser / suspendre / abandonner MTC01 comme candidat.
```

## RUN-02 — Revue méthode / surcharge

Statut : à faire seulement après RUN-01.

Objet :

```text
la méthode est-elle devenue trop lourde ?
```

Sortie attendue :

```text
projects/agents/outputs/METHOD_LOAD_REVIEW_OUTPUT.md
```

Décision possible :

```text
alléger ;
continuer ;
figer ;
refactoriser les documents.
```

## RUN-03 — Source_needs next batch gate

Statut : bloqué jusqu’après RUN-01 et RUN-02.

Objet :

```text
faut-il ouvrir un Batch 02 source_needs ?
```

Sortie attendue :

```text
projects/agents/outputs/SOURCE_NEEDS_BATCH_02_GATE_OUTPUT.md
```

Décision possible :

```text
ouvrir un batch très limité ;
rester sur micro-tests ;
suspendre source_needs.
```

## RUN-04 — Préparation agent de spec locale

Statut : pas encore autorisé.

Objet possible futur :

```text
spécifier localement un micro-test autorisé, pas le système global.
```

Condition :

```text
un micro-test doit être explicitement autorisé avant.
```

---

# 3. Interdictions globales de la queue

Aucun run ne peut :

```text
modifier main ;
merger ;
créer un patch ;
créer un mapping ;
créer une spec globale ;
lancer un prototype ;
lancer un micro-test ;
auditer tout le repo.
```

---

# 4. Prochaine action unique

```text
RUN-01 — Revue critique de MTC01
```

Ne pas créer d’autre document avant d’avoir soit :

```text
une sortie d’agent pour RUN-01 ;
soit une décision explicite de changer la queue.
```
