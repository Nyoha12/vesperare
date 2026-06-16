# OPERATING_MODE_NOW

## Statut

Mode opératoire actuel après revue de charge.

Ce document remplace la logique de progression par micro-documents.

---

# 1. Règle principale

```text
Ne plus construire la méthode.
Utiliser la méthode.
```

---

# 2. Mode de travail maintenant

Pour chaque prochaine étape :

```text
1. prendre une tâche cadrée ;
2. donner le prompt à un agent / Codex ;
3. recevoir une sortie ;
4. synthétiser court ;
5. décider : continuer, réviser, suspendre ou abandonner.
```

---

# 3. Tâche prête

```text
RUN-01 — Revue critique de MTC01
```

Fichier prompt :

```text
projects/agents/MASTER_AGENT_PROMPT_V0.md
```

Prompt spécifique :

```text
projects/agents/CODEX_AGENT_PROMPT_MTC01_REVIEW.md
```

Objet :

```text
projects/micro_tests/MICRO_TEST_AUTHORIZATION_DRAFT_MTC01_FINAL_CANDIDATE.md
```

---

# 4. Ce que l’agent doit faire

```text
critiquer le cadrage MTC01 ;
repérer les risques ;
dire si le candidat doit être gardé, révisé, suspendu ou abandonné.
```

---

# 5. Ce que l’agent ne doit pas faire

```text
ne pas modifier main ;
ne pas créer de patch ;
ne pas créer de mapping ;
ne pas écrire SPEC.md ;
ne pas écrire VERIFY.md ;
ne pas lancer MTC01 ;
ne pas transformer le sub en engine validé.
```

---

# 6. Prochaine action humaine minimale

Si Yohan veut utiliser Codex Windows :

```text
ouvrir Codex ;
lui donner MASTER_AGENT_PROMPT_V0.md ;
le laisser produire la sortie demandée ;
revenir avec la sortie ou le diff.
```

Si Yohan ne veut pas lancer Codex maintenant :

```text
stop ici ;
la branche ai/method-core est prête pour un premier run agent.
```

---

# 7. Décision actuelle

```text
La méthode est installée assez loin.
La suite doit être agent run, pas nouvelle documentation méthodologique.
```
