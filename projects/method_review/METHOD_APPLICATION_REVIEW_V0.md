# METHOD_APPLICATION_REVIEW_V0

## Statut

Revue de la méthode telle qu’elle a été appliquée jusqu’ici à Vesperare.

Ce document n’est pas :

- une spec ;
- un verifier complet ;
- un prototype ;
- un audit musical final ;
- une décision de merge ;
- une validation de `main`.

---

# 1. Question de revue

```text
La méthode installée aide-t-elle réellement Vesperare, ou devient-elle elle-même une surcharge ?
```

---

# 2. Ce qui fonctionne

## 2.1 Main protégé

La méthode a permis de travailler sur une branche séparée :

```text
ai/method-core
```

sans modifier `main`.

## 2.2 L’ancien chemin n’a pas été suivi automatiquement

Le repo historique indiquait un chemin vers `assets/source_needs`.

La méthode a corrigé cela :

```text
ne pas suivre automatiquement l’ancien next step ;
repartir par intake, claims, acquis, agency, puis gate.
```

## 2.3 La correction utilisateur a été intégrée

L’interview fondatrice était trop lourde.

Correction intégrée :

```text
ne pas demander à Yohan de résoudre verbalement tout le design ;
transformer les questions impossibles en questions de recherche/design/vérification.
```

## 2.4 Agency-first est devenu un principe opératoire

La méthode a transformé :

```text
le système ne doit rien m’enlever
```

en carte de préservation, critères de micro-test, scénarios ergonomiques, audit agency/control et protocole source_needs.

## 2.5 Premier audit source_needs limité

La méthode a permis d’ouvrir `source_needs` sans tout auditer et sans relancer le prototype.

Batch 01 limité :

```text
didgeridoo live
guimbardes live
sub pressure engine
```

---

# 3. Ce qui a posé problème

## 3.1 Surcharge de copier-coller

Problème : la méthode a d’abord été appliquée localement par gros blocs PowerShell, ce qui a créé fatigue, erreurs de here-string et perte de fluidité.

Correction : passage à la branche distante `ai/method-core`, écriture directe via GitHub.

## 3.2 Questions trop larges

Problème : l’interview initiale demandait à Yohan de répondre à des questions qui étaient déjà le problème de conception.

Correction : création de `FOUNDATION_AXIOMS_AND_RESEARCH_QUESTIONS.md` et bascule vers questions de recherche.

## 3.3 Risque de méthode trop lourde

La méthode produit beaucoup de documents.

Risque : créer une couche documentaire qui ralentit l’intuition au lieu de la servir.

Correction : utiliser des gates, batches courts et revues de proportionnalité.

---

# 4. Niveau actuel de maturité

## Prêt

La méthode est prête pour :

```text
revues limitées ;
audits par batch ;
comparaisons de perspectives ;
préparation de micro-tests candidats ;
préparation d’agents de critique ou de recherche.
```

## Pas encore prêt

La méthode n’est pas encore prête pour :

```text
agents de prototypage ;
agents de patch Max for Live ;
agents de mapping ;
agents modifiant main ;
agents écrivant une spec globale ;
agents lançant un audit massif.
```

---

# 5. Critère de proportionnalité

Avant de créer un nouveau document, demander :

```text
Ce document réduit-il vraiment l’incertitude ou ajoute-t-il seulement une couche ?
```

Si la réponse est non, ne pas créer le document.

---

# 6. Décision de revue

La méthode est utile, mais elle doit être allégée à partir de maintenant.

Règle :

```text
avancer par gates, petits batches et sorties actionnables.
```

Ne pas multiplier les documents s’ils ne changent pas une décision.

---

# 7. Prochaine étape recommandée

Créer :

```text
projects/agents/AGENT_READINESS_GATE_V0.md
```

But : décider à quel moment il devient utile de faire travailler plusieurs agents/subagents indépendants.

---

# 8. Interdictions maintenues

Ne pas :

- modifier main ;
- merger la branche ;
- écrire SPEC.md ;
- écrire VERIFY.md ;
- créer un prototype ;
- créer un patch ;
- créer un mapping complet ;
- lancer des agents sur une tâche vague ;
- utiliser des agents pour remplacer le jugement de Yohan.
