# SOURCE_NEEDS_AUDIT_PROTOCOL_V0

## Statut

Protocole préalable à l’audit `assets/source_needs`.

Ce document n’est pas encore l’audit des source_needs.

Il définit comment l’audit devra être mené pour ne pas relancer l’ancien chemin trop vite.

Ce document n’est pas :

- une spec ;
- un verifier complet ;
- un prototype ;
- un patch ;
- un mapping ;
- une décision d’architecture ;
- un audit du contenu détaillé des source_needs.

---

# 1. Objectif

Auditer plus tard les source_needs avec une logique agency-first.

Chaque source_need devra être relu comme une hypothèse, pas comme une obligation.

Question centrale :

```text
Ce besoin de source préserve-t-il, amplifie-t-il ou risque-t-il de réduire l’agency live de Yohan ?
```

---

# 2. Règles d’audit

## R01 — Claim, pas vérité

Un source_need est une proposition documentée.

Il ne doit pas être traité automatiquement comme nécessaire.

## R02 — Agency d’abord

Avant de demander si une source est techniquement utile, demander :

```text
qu’est-ce que cette source fait à l’agency live ?
```

## R03 — Pas de prototype implicite

Un source_need ne doit pas déclencher automatiquement :

- patch ;
- mapping ;
- test audio ;
- engine profile ;
- module ;
- scène.

## R04 — Pas de source décorative

Une source n’est pas validée parce qu’elle est belle, intéressante ou cohérente en surface.

Elle doit avoir une fonction musicale claire et une relation claire à l’agency.

## R05 — Préserver le live

Tout source_need qui risque de remplacer didgeridoo, guimbardes ou décision live doit être marqué comme risque fort.

## R06 — Sortie et override

Toute source qui introduit boucle, freeze, densité, automatisation ou transformation durable doit être auditée avec :

- sortie ;
- retrait ;
- release ;
- override ;
- risque de remplacement du live.

## R07 — Micro-test séparé

Si une source_need demande un test, ce test doit être formulé séparément selon `MICRO_TEST_CRITERIA_V0`.

L’audit ne lance pas le test.

---

# 3. Format d’audit d’un source_need

Chaque entrée future devra utiliser ce format minimal :

```text
Source_need :
Claim porté :
Fonction musicale supposée :
Dimension d’agency concernée :
Risque de remplacement du live :
Risque de surcharge cognitive :
Risque de décor/caricature :
Sortie / retrait / override nécessaire :
Statut : garder / réviser / suspendre / tester plus tard / abandonner
Micro-test possible : oui/non
Commentaire :
```

---

# 4. Statuts possibles

## garder

Le source_need est cohérent avec l’agency et utile comme hypothèse.

## réviser

Le source_need est prometteur mais trop large, trop prescriptif ou trop technique.

## suspendre

Le source_need dépend d’un claim non encore stabilisé.

## tester plus tard

Le source_need peut devenir un micro-test, mais seulement après formulation d’une question unique.

## abandonner

Le source_need réduit l’agency, impose une solution ou crée une caricature.

---

# 5. Ordre recommandé d’audit

Ne pas auditer tous les source_needs d’un coup.

Commencer par un batch très limité.

Priorité de lecture future :

```text
1. source_needs liés au live input central ;
2. source_needs liés à contrôle / sortie / override ;
3. source_needs liés à densité, loop, freeze ou halo ;
4. source_needs esthétiques ou décoratifs seulement ensuite.
```

---

# 6. Premier batch futur recommandé

Créer plus tard :

```text
projects/source_needs_audit/SOURCE_NEEDS_AUDIT_BATCH_01.md
```

Scope futur :

```text
un petit nombre de source_needs centraux seulement
```

Critère de sélection :

```text
les source_needs qui ont le plus de risque de remplacer ou masquer le live.
```

---

# 7. Garde-fous

Ne pas :

- auditer tous les source_needs à la fois ;
- transformer un source_need en module ;
- transformer un source_need en patch ;
- créer une spec ;
- créer un verifier complet ;
- choisir une architecture ;
- modifier main ;
- merger la branche méthode.
