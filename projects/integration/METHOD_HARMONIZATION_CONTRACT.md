# METHOD_HARMONIZATION_CONTRACT

## Statut

Contrat d'harmonisation entre le travail vivant de `main` et la méthode formalisée de `ai/method-core`.

Ce contrat doit être relu avant toute intégration de méthode dans `main`.

---

# 1. Autorité des branches

## main

`main` reste l'état vivant du projet Vesperare.

Il porte :

```text
les décisions récentes ;
les avancées parallèles ;
la continuité de travail de Yohan ;
les orientations artistiques et documentaires en cours.
```

## ai/method-core

`ai/method-core` porte :

```text
une méthode opératoire ;
des protocoles agents ;
des garde-fous ;
des sorties expérimentales ;
des corrections de trajectoire ;
une mémoire de reprise.
```

`ai/method-core` n'est pas automatiquement plus vrai que `main`.

---

# 2. Règle d'autorité

En cas de conflit :

```text
une règle de méthode ne peut pas écraser une décision artistique vivante.
```

Elle peut seulement :

```text
la signaler ;
la reformuler comme claim ;
proposer un audit ;
proposer un verifier ;
proposer un agent run ;
identifier un risque.
```

---

# 3. Rôle de Yohan

Yohan garde :

```text
intention ;
jugement musical ;
décision finale ;
correction d'orientation ;
validation des choix importants ;
refus de la méthode si elle surcharge.
```

La méthode ne doit pas lui renvoyer les questions qu'elle doit instruire.

---

# 4. Rôle des agents

Les agents servent à :

```text
lire un corpus limité ;
extraire ;
critiquer ;
comparer ;
chercher les risques ;
préparer une synthèse ;
préserver les désaccords.
```

Les agents ne servent pas à :

```text
décider ;
remplacer Yohan ;
créer un patch ;
créer un mapping ;
modifier main ;
merger ;
transformer une hypothèse en architecture.
```

---

# 5. Statut des outputs

Les fichiers dans :

```text
projects/agents/outputs/*
```

sont des sorties de travail.

Ils ne sont pas :

```text
des décisions ;
des preuves ;
des specs ;
des validations musicales ;
des priorités définitives.
```

Pour entrer dans `main`, une sortie doit être :

```text
synthétisée ;
filtrée ;
requalifiée ;
validée comme utile ;
libérée de ses formulations erronées ou corrigées.
```

---

# 6. Statut des micro-tests

Un micro-test candidat n'est pas un test autorisé.

Un test ne peut être autorisé que par décision explicite, après :

```text
question unique ;
scope limité ;
conditions d'arrêt ;
risque de prototype contrôlé ;
validation humaine ;
sortie attendue non architecturale.
```

MTC01 reste en réserve.

Il ne doit pas guider l'intégration.

---

# 7. Statut des source_needs

Un source_need est :

```text
une hypothèse documentée de besoin ;
pas un asset ;
pas un module ;
pas un test ;
pas une décision de production.
```

Toute intégration source_needs doit préserver cette distinction.

---

# 8. Rythme de méthode dans main

La méthode doit être légère par défaut.

Elle devient stricte seulement pour :

```text
décisions irréversibles ;
prototype ;
patch ;
mapping ;
architecture ;
spec ;
source/asset réel ;
agent run modifiant des fichiers ;
merge vers main.
```

Elle ne doit pas ralentir chaque intuition, note, idée musicale ou exploration documentaire.

---

# 9. Ce qui peut être intégré dans main

Candidat stable :

```text
AGENTS.md ;
ai_method/ ;
skills/ ;
evals/ ;
scripts/ ;
knowledge/ ;
projects/agents/AGENT_RUN_PROTOCOL_V0.md ;
projects/agents/OPERATING_MODE_NOW.md ;
projects/program/PROGRAM_REORIENTATION_NO_USER_HOMEWORK.md ;
projects/integration/*.
```

À discuter :

```text
projects/agents/AGENT_WORK_QUEUE_V0.md ;
projects/agents/CODEX_AGENT_PROMPT_* ;
projects/CURRENT_DECISION_SUMMARY.md ;
projects/METHOD_PROGRESS_INDEX.md.
```

À exclure par défaut :

```text
projects/agents/outputs/* ;
projects/micro_tests/* ;
projects/source_needs_audit/* ;
projects/agency_control/* ;
projects/intake/PROJECT_INTAKE_CONTEXT.md.
```

---

# 10. Condition avant PR

Avant toute PR vers main, produire :

```text
INTEGRATION_PR_SCOPE.md
```

avec :

```text
fichiers inclus ;
fichiers exclus ;
risques ;
raison de chaque inclusion ;
raison de chaque exclusion ;
procédure de rollback.
```
