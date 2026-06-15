# AGENT_ORCHESTRATION_READY_V0

## Statut

Point d’arrivée de la phase d’installation de méthode.

La méthode est maintenant assez installée pour passer du mode :

```text
construction documentaire pas à pas
```

au mode :

```text
orchestration d’agents cadrés
```

Ce document ne lance aucun agent automatiquement.

Il définit le seuil atteint et ce qui devient possible.

---

# 1. Décision

```text
La méthode est suffisamment implémentée pour des agents de critique, recherche limitée, comparaison et revue de risques.
```

Elle n’est pas encore prête pour des agents de production technique.

---

# 2. Ce que “quasi autonomie” veut dire ici

Autorisé :

```text
un agent reçoit un contexte limité ;
un agent lit les fichiers autorisés ;
un agent produit une revue ou une synthèse ;
un agent crée éventuellement un fichier de sortie dans projects/agents/runs ou projects/agents/outputs ;
un agent respecte les garde-fous ;
la synthèse finale préserve les désaccords.
```

Non autorisé :

```text
un agent décide à la place de Yohan ;
un agent modifie main ;
un agent merge ;
un agent crée un patch ;
un agent crée un mapping ;
un agent écrit une spec globale ;
un agent lance un prototype ;
un agent transforme un micro-test candidat en exécution.
```

---

# 3. Pourquoi on peut arrêter la phase longue d’installation

Les éléments nécessaires existent déjà :

```text
AGENTS.md ;
ai_method/* ;
skills/* ;
evals/* ;
projects/CURRENT_DECISION_SUMMARY.md ;
projects/METHOD_PROGRESS_INDEX.md ;
projects/agents/AGENT_RUN_PROTOCOL_V0.md ;
projects/agents/CODEX_AGENT_PROMPT_MTC01_REVIEW.md ;
projects/micro_tests/MICRO_TEST_AUTHORIZATION_DRAFT_MTC01_REVISED.md.
```

Le dépôt possède maintenant :

```text
contexte ;
claims ;
garde-fous ;
protocoles ;
queue de décisions ;
objet limité pour premier agent run.
```

---

# 4. Premier objet d’orchestration recommandé

```text
MTC01 — Sub soutient didgeridoo sans le masquer
```

Raison :

```text
objet limité ;
risque réel ;
fort enjeu agency ;
pas besoin de prototype ;
bon test de la méthode agents.
```

---

# 5. Mode d’emploi court

Pour un agent externe ou Codex :

```text
Lire projects/agents/CODEX_AGENT_PROMPT_MTC01_REVIEW.md.
Suivre strictement ce prompt.
Ne produire qu’une revue critique.
Ne pas modifier main.
Ne pas proposer de patch.
Ne pas autoriser le test.
```

---

# 6. Prochaine sortie attendue

Si un agent externe est lancé, sa sortie devrait être enregistrée dans :

```text
projects/agents/outputs/MTC01_AGENT_REVIEW_OUTPUT.md
```

Puis une synthèse humaine/assistant pourra décider :

```text
garder MTC01 comme candidat ;
le réviser ;
le suspendre ;
l’abandonner ;
ou préparer un autre objet agent.
```

---

# 7. Arrêt de la dérive documentaire

À partir d’ici, ne plus créer de nouveaux documents sauf s’ils remplissent une de ces fonctions :

```text
1. lancer/cadrer un agent run ;
2. recevoir la sortie d’un agent ;
3. synthétiser une décision ;
4. alléger ou remplacer un document existant ;
5. préparer explicitement un prochain gate.
```

Tout autre document est suspect de surcharge.
