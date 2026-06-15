# MICRO_TEST_CANDIDATES_V0

## Statut

Liste de candidats de micro-tests.

Aucun micro-test n’est autorisé par ce document.

Ce document sert seulement à transformer des tensions identifiées en questions testables plus tard.

Ce document n’est pas :

- une autorisation d’expérimentation ;
- une spec ;
- un verifier complet ;
- un patch ;
- un mapping ;
- un prototype ;
- une décision d’architecture.

---

# 1. Règle générale

Un candidat de micro-test n’est pas un micro-test lancé.

Pour devenir autorisé, il devra avoir sa propre fiche avec :

```text
question unique ;
dimension d’agency ;
ce qui est testé ;
ce qui n’est pas testé ;
durée limite ;
critère d’arrêt ;
observation attendue ;
risque de glissement vers prototype ;
décision après test.
```

---

# 2. Candidats prioritaires

## MTC01 — Sub soutient didgeridoo sans le masquer

Question unique :

```text
Un sub peut-il soutenir le corps sans masquer les formants, le souffle et la pression organique du didgeridoo live ?
```

Dimension d’agency :

```text
souffle ; corps ; live agency ; relation sub/didgeridoo ; lisibilité.
```

Ce qui serait testé :

```text
relation de soutien / masquage entre didgeridoo live et fonction sub.
```

Ce qui ne serait pas testé :

```text
architecture du sub engine ;
patch final ;
mapping ;
scène complète ;
mix global.
```

Risque de glissement : fort.

Statut : candidat prioritaire, non autorisé.

## MTC02 — Sub discret quand le live suffit

Question unique :

```text
Le sub peut-il se retirer ou devenir discret quand didgeridoo + guimbardes portent déjà assez le corps ?
```

Dimension d’agency :

```text
retrait ; silence ; densité ; décision humaine ; non-remplacement.
```

Ce qui serait testé :

```text
capacité du sub à ne pas remplir automatiquement.
```

Risque de glissement : moyen.

Statut : candidat fort, non autorisé.

## MTC03 — Guimbarde micro-pulse sans gadget

Question unique :

```text
Une guimbarde live peut-elle créer une micro-pulsation électronique lisible sans devenir gadget, folklore ou surcharge aiguë ?
```

Dimension d’agency :

```text
micro-timing ; bouche ; attaque ; brillance ; anti-caricature.
```

Ce qui serait testé :

```text
lisibilité d’une influence micro-pulse issue du geste live.
```

Risque de glissement : moyen.

Statut : candidat, non autorisé.

## MTC04 — Retrait respecté

Question unique :

```text
Le système peut-il respecter un retrait acoustique sans compenser automatiquement par sub, halo, loop ou densité ?
```

Dimension d’agency :

```text
silence ; retrait ; forme ; décision ; non-remplissage.
```

Ce qui serait testé :

```text
comportement de non-réaction ou réduction quand Yohan se retire.
```

Risque de glissement : faible à moyen.

Statut : candidat important, non autorisé.

## MTC05 — Sortie d’un freeze / loop / sub

Question unique :

```text
Une sortie immédiate ou progressive peut-elle rester disponible sans détourner l’attention musicale ?
```

Dimension d’agency :

```text
sortie ; override ; sécurité performative ; charge cognitive.
```

Ce qui serait testé :

```text
accessibilité d’une sortie, pas le son final.
```

Risque de glissement : moyen.

Statut : candidat, non autorisé.

## MTC06 — Continuer sans regarder

Question unique :

```text
Un contrôle critique peut-il rester compréhensible et utilisable sans dépendre d’un écran ?
```

Dimension d’agency :

```text
écoute ; corps ; interface ; charge cognitive.
```

Ce qui serait testé :

```text
ergonomie minimale d’un contrôle critique.
```

Risque de glissement : moyen.

Statut : candidat, non autorisé.

---

# 3. Classement provisoire

## Plus prioritaire

```text
MTC01 — Sub soutient didgeridoo sans le masquer
MTC02 — Sub discret quand le live suffit
MTC04 — Retrait respecté
```

Raison : ces candidats touchent directement le risque de dépossession.

## Priorité moyenne

```text
MTC03 — Guimbarde micro-pulse sans gadget
MTC05 — Sortie d’un freeze / loop / sub
MTC06 — Continuer sans regarder
```

Raison : importants, mais dépendants d’un cadrage plus concret de l’interface ou du traitement.

---

# 4. Recommandation

Ne pas lancer encore de micro-test.

Prochaine étape saine : choisir un seul candidat prioritaire et créer une fiche d’autorisation détaillée, sans exécution.

Fichier recommandé :

```text
projects/micro_tests/MICRO_TEST_AUTHORIZATION_DRAFT_MTC01.md
```

Ce fichier ne lancerait pas le test. Il dirait seulement quelles conditions devraient être vraies pour l’autoriser.

---

# 5. Garde-fous

Ne pas :

- ouvrir Ableton ;
- ouvrir Max for Live ;
- créer de patch ;
- créer de mapping ;
- choisir un preset ;
- écrire SPEC.md ;
- écrire VERIFY.md ;
- lancer plusieurs micro-tests ;
- modifier main ;
- merger la branche méthode.
