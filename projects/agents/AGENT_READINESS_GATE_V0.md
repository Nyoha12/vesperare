# AGENT_READINESS_GATE_V0

## Statut

Gate de décision : quand la méthode est-elle assez implémentée pour faire travailler des agents/subagents ?

Ce document n’est pas :

- une autorisation générale de lancer des agents ;
- une spec ;
- un verifier complet ;
- un prototype ;
- une décision de merge ;
- une automatisation autonome.

---

# 1. Réponse courte

Oui, la méthode vise bien à rendre possible le travail par agents.

Mais les agents ne doivent pas arriver avant le cadre.

Le rôle de la méthode est de fournir :

```text
contexte commun ;
claims ;
garde-fous ;
formats de sortie ;
critères d’évaluation ;
interdictions ;
points de comparaison ;
responsabilité humaine finale.
```

Sans cela, plusieurs agents produisent seulement plusieurs hallucinations ou plusieurs intuitions incompatibles.

---

# 2. Types d’agents possibles

## A — Agents de critique

But : relire un document, trouver les risques, contradictions, angles morts.

Statut actuel : autorisable.

## B — Agents de recherche limitée

But : lire un petit corpus autorisé et extraire des claims ou tensions.

Statut actuel : autorisable si scope très clair.

## C — Agents de comparaison

But : comparer deux options, deux chemins, deux interprétations.

Statut actuel : autorisable.

## D — Agents de board / perspectives

But : produire plusieurs angles indépendants, sans remplacer le jugement de Yohan.

Statut actuel : autorisable si les perspectives sont définies et non fictivement autoritaires.

## E — Agents de focus group interne

But : simuler des réactions d’audience ou d’usage, sans les confondre avec de vrais retours.

Statut actuel : autorisable plus tard, quand l’objet testé sera clair.

## F — Agents de spec

But : proposer ou critiquer une spec.

Statut actuel : pas encore autorisé pour spec globale.

Autorisation possible plus tard pour spec locale uniquement.

## G — Agents de prototype / patch / mapping

But : écrire ou modifier des artefacts techniques.

Statut actuel : interdit.

---

# 3. Conditions minimales avant un run d’agents

Un run d’agents est autorisé seulement si les éléments suivants sont définis.

## C01 — Tâche claire

La tâche ne doit pas être vague.

Mauvais :

```text
Réfléchis à Vesperare.
```

Bon :

```text
Critique SOURCE_NEEDS_AUDIT_BATCH_01 sous l’angle du risque de remplacement du live.
```

## C02 — Corpus autorisé

Les agents doivent savoir quels fichiers ils peuvent utiliser.

## C03 — Interdictions explicites

Exemples :

```text
ne pas modifier main ;
ne pas écrire de patch ;
ne pas écrire SPEC.md ;
ne pas auditer tout source_needs ;
ne pas inventer de décision humaine.
```

## C04 — Rôles distincts

Chaque agent doit avoir un angle différent.

Exemples :

```text
agent agency ;
agent contrôle/override ;
agent source_needs ;
agent méthode/surcharge ;
agent anti-prototype.
```

## C05 — Format de sortie commun

Les sorties doivent être comparables.

## C06 — Synthèse finale

Un agent principal doit synthétiser :

```text
accords ;
désaccords ;
angles morts ;
risques ;
recommandations ;
questions pour Yohan.
```

## C07 — Décision humaine finale

Les agents ne décident pas à la place de Yohan.

Ils produisent une carte de décision.

---

# 4. Gate actuel

## Autorisé maintenant

La méthode est assez implémentée pour lancer des agents sur :

```text
revue de cohérence ;
critique de documents créés ;
comparaison de risques ;
préparation de micro-tests candidats ;
lecture limitée de petits batches ;
board review d’une décision méthodologique.
```

## Non autorisé maintenant

La méthode n’est pas assez avancée pour lancer des agents sur :

```text
prototypage ;
patch Max for Live ;
mapping complet ;
architecture finale ;
spec globale ;
merge ;
modification de main ;
audit massif de tout le corpus.
```

---

# 5. Premier run d’agents recommandé

Objet :

```text
Review du premier audit source_needs agency-first.
```

Question :

```text
SOURCE_NEEDS_AUDIT_BATCH_01 reste-t-il réellement agency-first, ou valide-t-il trop vite didgeridoo / guimbardes / sub ?
```

Agents proposés :

```text
Agent 1 — Agency live
Agent 2 — Anti-prototype / méthode
Agent 3 — Contrôle / override
Agent 4 — Source_needs sceptique
Agent 5 — Ergonomie cognitive
```

Sortie attendue :

```text
AGENT_REVIEW_SOURCE_NEEDS_BATCH_01.md
```

---

# 6. Prochaine action recommandée

Créer :

```text
projects/agents/AGENT_RUN_PROTOCOL_V0.md
```

But : définir le format standard d’un run d’agents dans ce repo.

---

# 7. Garde-fous

Ne pas :

- lancer des agents sur une tâche vague ;
- leur donner tout le repo sans scope ;
- mélanger leurs réponses avant synthèse ;
- traiter une majorité d’agents comme preuve ;
- remplacer le jugement de Yohan ;
- laisser un agent modifier main ;
- laisser un agent créer patch, prototype ou mapping sans gate explicite.
