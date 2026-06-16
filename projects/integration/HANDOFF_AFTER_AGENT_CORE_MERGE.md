# HANDOFF_AFTER_AGENT_CORE_MERGE

## Statut

Fiche courte pour expliquer à une autre conversation ce qui a été ajouté à `main` après l'intégration du noyau agentique.

Cette fiche n'est pas une nouvelle méthode.

Elle sert seulement de point de reprise.

---

# 1. Ce qui a été ajouté à main

Une PR minimale a été mergée dans `main`.

Elle ajoute seulement 7 fichiers :

```text
AGENTS.md
projects/agents/AGENT_RUN_PROTOCOL_V0.md
projects/program/PROGRAM_REORIENTATION_NO_USER_HOMEWORK.md
projects/integration/METHOD_HARMONIZATION_PLAN.md
projects/integration/METHOD_DIVERGENCE_REGISTER.md
projects/integration/METHOD_HARMONIZATION_CONTRACT.md
projects/integration/INTEGRATION_PR_SCOPE.md
```

Ces fichiers ajoutent une couche d'orchestration agents / Codex compatible avec la méthode déjà présente dans `main`.

---

# 2. Ce qui n'a pas été ajouté

Les éléments expérimentaux de `ai/method-core` n'ont pas été importés.

Non ajoutés :

```text
ai_method/
skills/
evals/
scripts/
knowledge/
projects/agents/outputs/*
projects/agents/runs/*
projects/micro_tests/*
projects/source_needs_audit/*
projects/agency_control/*
projects/acquis_audit/*
projects/claims/*
projects/intake/*
projects/research_questions/*
```

Raison : éviter de créer une méthode parallèle ou d'importer les sorties expérimentales, faux départs, audits intermédiaires et micro-tests suspendus.

---

# 3. Principe d'intégration

Le principe retenu est :

```text
main garde la méthode Vesperare spécifique ;
les agents ajoutent lecture, extraction, critique, comparaison, synthèse et garde-fous ;
les sorties agents restent des supports de décision, pas des preuves.
```

La méthode intégrée ne remplace pas les documents directeurs de `main`.

Elle doit rester subordonnée à :

```text
README.md
docs/00_INDEX_METHODE_DECISIONS.md
docs/45_REPRISE_DEPUIS_FICHE_MESURES_INSTRUMENTS.md
docs/42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md
docs/modules/18_CONTEXTUAL_CONTROL_ROUTER_AMPLITUDES_LIMITES_OVERRIDE_ADDENDUM.md
docs/assets/00_ASSETS_INDEX.md
docs/assets/15_DONNEES_INSTRUMENTALES_MANQUANTES_PRIORITAIRES.md
docs/assets/16_ACOUSTICARCHIVE_MAPPING_DONNEES_VESPERARE.md
```

---

# 4. Ce que fait AGENTS.md

`AGENTS.md` définit le comportement attendu des agents IA / Codex.

Il dit notamment :

```text
l'agent aide à lire, extraire, comparer, critiquer, synthétiser et préparer des décisions ;
il ne remplace pas l'intention, le jugement musical ou la décision finale de Yohan ;
il doit consulter les documents de méthode existants ;
il doit limiter le corpus ;
il doit séparer fait, inférence et recommandation ;
il ne doit pas créer de patch, mapping, prototype, asset réel ou seuil fictif.
```

Il ajoute aussi une règle importante :

```text
source-of-truth d'abord
```

Avant de créer un document ou une sortie, l'agent doit chercher quel document existant sert déjà de lieu de tri pour la question.

---

# 5. Ce que fait AGENT_RUN_PROTOCOL_V0

`projects/agents/AGENT_RUN_PROTOCOL_V0.md` définit comment lancer un agent ou plusieurs agents sans créer une méthode parallèle.

Il distingue :

```text
Niveau 0 — pas d'agent ;
Niveau 1 — agent unique ;
Niveau 2 — multi-agents parallèles ;
Niveau 3 — interdit par défaut.
```

Le multi-agents est réservé aux cas où plusieurs cadres doivent rester indépendants avant synthèse, par exemple :

```text
méthode ;
statut documentaire ;
agency live ;
contrôle / Router ;
source / données instrumentales ;
anti-prototype ;
intégration main / méthode.
```

La synthèse doit préserver les désaccords.

Aucune majorité d'agents ne vaut preuve.

---

# 6. Ce que fait PROGRAM_REORIENTATION_NO_USER_HOMEWORK

`projects/program/PROGRAM_REORIENTATION_NO_USER_HOMEWORK.md` formalise une correction importante.

Mauvais pattern :

```text
question complexe → demander à Yohan une décision immédiate.
```

Bon pattern :

```text
question complexe → lire les documents existants → extraire → comparer → synthétiser → formuler options → demander à Yohan une validation ciblée si nécessaire.
```

Yohan garde le jugement musical et la validation finale.

Le programme ne doit pas lui renvoyer les questions qu'il doit instruire lui-même.

---

# 7. Pourquoi les documents d'intégration existent

Les fichiers dans `projects/integration/` expliquent comment harmoniser `main` et l'ancienne branche `ai/method-core`.

Ils servent à éviter :

```text
merge brutal ;
import de sorties expérimentales ;
méthode parallèle ;
réactivation de MTC01 ;
prolifération documentaire ;
agents traités comme autorité.
```

---

# 8. État de ai/method-core

`ai/method-core` reste utile comme archive / laboratoire.

Mais le travail normal doit maintenant repartir de :

```text
main
```

Ne pas continuer le projet depuis `ai/method-core` sauf décision explicite.

---

# 9. Comment l'autre conversation doit reprendre

L'autre conversation doit commencer par lire :

```text
AGENTS.md
projects/agents/AGENT_RUN_PROTOCOL_V0.md
projects/program/PROGRAM_REORIENTATION_NO_USER_HOMEWORK.md
docs/45_REPRISE_DEPUIS_FICHE_MESURES_INSTRUMENTS.md
docs/00_INDEX_METHODE_DECISIONS.md
```

Puis elle doit respecter cette règle :

```text
ne pas créer de nouveau document avant d'avoir identifié le document existant qui devrait recevoir l'information.
```

---

# 10. Prompt de reprise conseillé

```text
Tu travailles sur main dans le repo Vesperare.

Lis d'abord :
- AGENTS.md
- projects/agents/AGENT_RUN_PROTOCOL_V0.md
- projects/program/PROGRAM_REORIENTATION_NO_USER_HOMEWORK.md
- docs/45_REPRISE_DEPUIS_FICHE_MESURES_INSTRUMENTS.md
- docs/00_INDEX_METHODE_DECISIONS.md

Ta tâche n'est pas de créer une nouvelle méthode.
Ta tâche n'est pas de continuer depuis ai/method-core.
Ta tâche est d'utiliser la méthode déjà intégrée dans main.

Avant de proposer une nouvelle sortie, réponds :
quel document existant sert déjà de source de vérité ou de lieu de tri pour cette question ?

Ne crée pas de patch, mapping, prototype, asset réel, sample bank, seuil fictif, SPEC.md ou VERIFY.md sans décision explicite.
Ne demande pas à Yohan de résoudre une question que le programme doit instruire.
Sépare fait, inférence, recommandation et incertitude.
```

---

# 11. Prochaine étape recommandée

Faire un petit test d'usage de la méthode intégrée :

```text
choisir une information ou question réelle ;
demander à Codex quel document existant devrait la recevoir ;
ne créer aucun nouveau fichier ;
comparer la réponse avec la méthode Vesperare existante.
```

Cela teste la règle :

```text
source-of-truth d'abord
```

sans relancer un gros chantier.
