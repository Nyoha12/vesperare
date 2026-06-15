# SOURCE_NEEDS_AUDIT_BATCH_01_REVIEW

## Statut

Revue méthodologique du premier audit limité `source_needs`.

Ce document vérifie que l’audit reste agency-first et ne relance pas trop vite l’ancien chemin.

---

# 1. Question de revue

```text
SOURCE_NEEDS_AUDIT_BATCH_01 a-t-il respecté les garde-fous de la méthode ?
```

---

# 2. Points conformes

## 2.1 Scope limité

Conforme.

L’audit a porté seulement sur :

```text
SOURCE_NEED_LIVE_DIDGERIDOO_PRESSURE_FORMANTS
SOURCE_NEED_LIVE_JAW_HARPS_FORMANT_MICROPULSE
SOURCE_NEED_SUB_PRESSURE_ENGINE
```

Il n’a pas audité tout le dossier `source_needs`.

## 2.2 Lecture agency-first

Conforme.

Chaque source_need a été relu selon :

- agency live ;
- risque de remplacement du live ;
- surcharge cognitive ;
- risque de décor/caricature ;
- sortie / retrait / override ;
- micro-test possible plus tard.

## 2.3 Pas de prototype

Conforme.

Aucun patch, mapping, engine ou test audio n’a été créé.

## 2.4 Pas de spec

Conforme.

L’audit n’a pas produit `SPEC.md` ni architecture finale.

## 2.5 Pas de verifier complet

Conforme.

L’audit a seulement identifié des risques et futurs critères possibles.

---

# 3. Points à surveiller

## 3.1 Trois source_needs gardés

Les trois source_needs ont été classés `garder`.

Ce n’est acceptable que parce que :

- les fiches elles-mêmes contiennent déjà des garde-fous forts ;
- les sources live restent live ;
- les samples sont explicitement non principaux ;
- le sub est décrit comme partenaire, pas remplacement.

Risque : transformer `garder` en validation définitive.

Correction : interpréter `garder` comme :

```text
garder comme hypothèse documentée, pas comme obligation de production.
```

## 3.2 Sub pressure engine

Le sub est le point le plus sensible.

Même gardé, il doit rester sous surveillance parce qu’il peut devenir :

- trop central ;
- trop stable ;
- trop générique ;
- trop prescriptif ;
- concurrent du didgeridoo ;
- masque des guimbardes ;
- moteur de retour au corps trop standard.

Correction : tout futur micro-test autour du sub doit être agency-first.

## 3.3 Micro-tests possibles

L’audit propose des questions de micro-test, mais aucun micro-test n’est autorisé directement.

Correction : créer une fiche micro-test séparée avant toute expérimentation.

---

# 4. Décision de revue

```text
SOURCE_NEEDS_AUDIT_BATCH_01 est méthodologiquement acceptable.
```

Mais il ne doit pas être suivi par un audit massif.

---

# 5. Prochaine étape recommandée

Créer un index de progression pour figer l’état atteint :

```text
projects/METHOD_PROGRESS_INDEX.md
```

But : rendre lisible ce qui a été fait, ce qui est ouvert, et ce qui reste interdit.

---

# 6. Interdictions maintenues

Ne pas :

- auditer tout `docs/assets/source_needs` ;
- créer un patch ;
- créer un mapping ;
- créer un prototype ;
- écrire SPEC.md ;
- écrire VERIFY.md ;
- modifier main ;
- merger la branche méthode.
