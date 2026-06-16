# METHOD_HARMONIZATION_PLAN

## Statut

Plan d'harmonisation entre :

```text
main
ai/method-core
```

Ce document ne fusionne pas les branches.

Il définit comment éviter qu'une méthode remplace brutalement l'autre.

---

# 1. Problème réel

Le problème n'est pas seulement Git.

Le problème est la divergence entre deux manières de travailler :

```text
main = méthode vivante du projet, avancée en parallèle
ai/method-core = méthode formalisée, agents, gates, corrections et traces de reprise
```

Un merge technique pourrait réussir tout en ratant l'harmonisation méthodologique.

---

# 2. Principe supérieur

```text
main reste l'état vivant du projet.
ai/method-core devient une couche opératoire possible.
```

La méthode formalisée ne doit pas écraser :

```text
les décisions vivantes de main ;
les intuitions musicales récentes ;
les documents réellement avancés ;
le rythme de travail déjà engagé par Yohan.
```

Elle doit aider à :

```text
clarifier ;
critiquer ;
trier ;
préserver la mémoire ;
faire travailler des agents cadrés ;
prévenir les glissements vers prototype ou décision implicite.
```

---

# 3. Ce qu'il ne faut pas faire

Ne pas faire :

```text
git merge ai/method-core dans main tel quel.
```

Raison : `ai/method-core` contient aussi :

```text
outputs expérimentaux ;
fausses pistes ;
corrections de cadre ;
audits intermédiaires ;
MTC01 et ses révisions ;
traces utiles mais non stabilisées.
```

Tout importer dans main créerait une surcharge documentaire.

---

# 4. Stratégie correcte

Créer une branche depuis main :

```text
integration/method-harmonization
```

Puis y intégrer seulement :

```text
1. un registre de divergences ;
2. un contrat d'harmonisation ;
3. un scope de PR ;
4. plus tard seulement, le noyau stable de méthode.
```

---

# 5. Phases

## Phase A — Harmonisation sans import massif

Créer :

```text
projects/integration/METHOD_DIVERGENCE_REGISTER.md
projects/integration/METHOD_HARMONIZATION_CONTRACT.md
projects/integration/INTEGRATION_PR_SCOPE.md
```

But : décider ce qui peut entrer dans main, ce qui reste en archive, ce qui doit être reformulé.

## Phase B — Import sélectif du noyau stable

Importer plus tard seulement :

```text
AGENTS.md
ai_method/
skills/
evals/
scripts/
knowledge/
projects/agents/protocols stables
projects/program/PROGRAM_REORIENTATION_NO_USER_HOMEWORK.md
```

Ne pas importer automatiquement :

```text
projects/agents/outputs/*
projects/micro_tests/*
projects/source_needs_audit/*
projects/agency_control/*
projects/intake/PROJECT_INTAKE_CONTEXT.md
```

## Phase C — Shadow mode

Avant merge vers main :

```text
prendre une tâche réelle récente de main ;
faire passer la méthode dessus en lecture seule ;
comparer ce que main ferait et ce que la méthode propose ;
identifier ce qui aide et ce qui surcharge.
```

## Phase D — PR minimale

Faire une PR de `integration/method-harmonization` vers `main` seulement quand le scope est stable.

---

# 6. Garde-fous

Ne pas :

```text
modifier directement main ;
importer tous les outputs ;
importer MTC01 comme décision ;
transformer la méthode en autorité artistique ;
traiter les sorties d'agents comme preuves ;
remplacer le jugement de Yohan ;
forcer un rythme de gates sur toutes les intuitions musicales.
```
