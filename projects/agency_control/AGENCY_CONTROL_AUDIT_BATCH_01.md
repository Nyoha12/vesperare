# AGENCY_CONTROL_AUDIT_BATCH_01

## Statut

Premier audit limité agency/control.

Scope :

```text
AC01 à AC08
```

Ce document n’est pas :

- une spec ;
- un verifier complet ;
- un audit `assets/source_needs` ;
- un prototype ;
- un patch ;
- un mapping ;
- une décision d’architecture.

---

# 1. Résumé exécutif

L’audit confirme que le corpus contient déjà une logique forte de préservation de l’agency :

- phase avant prototypage ;
- contrôle comme fonction musicale, pas paramètre ;
- amplitude, risque, sortie et override ;
- décision finale humaine ;
- nécessité de masquer ce qui surcharge ;
- distinction entre zone de bord et interdit strict.

Mais l’audit signale aussi un risque :

```text
plus la logique de contrôle devient riche, plus elle peut elle-même devenir une surcharge ou une architecture implicite.
```

Donc la suite doit rester prudente : pas encore de source_needs, pas encore de spec, pas encore de prototype.

---

# 2. Audit des claims

## AC01 — Phase avant prototypage

Claim : le projet est encore en phase de conception/consolidation avant prototypage.

Statut : strong acquisition.

Justification : le README indique explicitement cette phase. Les documents de recentrage et d’audit répètent aussi leur statut sans patch, sans mapping, sans prototype.

Conséquence : toute action future doit rester documentaire, analytique ou méthodologique jusqu’à décision explicite.

Risque : transformer un micro-test ou un audit source_needs en prototype déguisé.

Décision : garder comme garde-fou supérieur.

## AC02 — Contrôle comme fonction musicale

Claim : un contrôle n’est pas un paramètre technique mais un accès performatif organisé à une fonction musicale.

Statut : strong acquisition.

Justification : `docs/42` définit le contrôle comme accès performatif organisé à une fonction musicale, avec amplitude, risque, sortie et override.

Conséquence : les futurs contrôles ne doivent pas exposer des paramètres bruts par défaut.

Risque : interface de type dashboard, trop technique, qui force Yohan à gérer au lieu de jouer.

Décision : garder comme principe central.

## AC03 — Contrôle = sélection + organisation + amplitude + contexte + risque + sortie + override

Statut : strong acquisition.

Justification : cette formule est répétée dans README et dans l’audit de cohérence.

Conséquence : tout futur contrôle important devra être analysé avec ces dimensions.

Risque : oublier sortie ou override et créer un contrôle qui augmente la puissance mais réduit l’agency.

Décision : garder comme formule opératoire.

## AC04 — Le système ne doit pas faire la musique à la place de Yohan

Statut : strong acquisition.

Justification : `docs/42` le formule explicitement, et la correction utilisateur le renforce avec : le système ne doit rien enlever.

Conséquence : l’assistance doit être subordonnée à la décision humaine.

Risque : autonomie implicite, trajectoire imposée, suggestion trop forte, automation qui devient auteur.

Décision : garder comme interdit supérieur.

## AC05 — Les limites comme zones de bord jouables

Statut : provisional acquisition.

Justification : `docs/42` et `docs/44` indiquent que les limites ne sont pas seulement des interdits, mais aussi des zones de bord, de bascule, de risque visible, avec sortie et override.

Conséquence : certaines zones dangereuses peuvent avoir une valeur musicale.

Risque : confondre zone jouable et autorisation totale ; ou au contraire neutraliser toute intensité.

Décision : garder, mais distinguer clairement les limites jouables et les limites strictes.

## AC06 — Certaines limites doivent rester strictes

Statut : provisional acquisition.

Justification : l’audit de cohérence mentionne des limites strictes comme freeze sans release, loop remplaçant le live sans décision, prototype sans fonction, asset réel sans source_need.

Conséquence : la méthode doit garder des interdits non négociables même si certaines limites sont jouables.

Risque : utiliser l’override pour justifier n’importe quel glissement.

Décision : garder, à formaliser plus tard dans un verifier.

## AC07 — Override humain comme décision musicale assumée

Statut : strong acquisition.

Justification : `docs/42` définit l’override comme une décision humaine assumée de franchir ou prolonger une zone de risque.

Conséquence : l’override n’est pas une erreur, mais il doit rester conscient, visible et réversible.

Risque : override trop facile, ou override caché, ou absence de sortie après override.

Décision : garder comme exigence centrale d’agency.

## AC08 — Router : bons contrôles au bon moment, surcharge masquée

Statut : provisional acquisition.

Justification : `docs/modules/05` définit le Router autour de la question : qu’est-ce qui devient jouable maintenant ? Il distingue contrôles permanents, contextuels, profonds, urgents, à masquer ou à rendre disponibles seulement si demandés.

Conséquence : le Router peut être un outil de réduction de charge cognitive.

Risque : si mal conçu, le Router peut cacher une sortie nécessaire, imposer une priorité, ou rendre le système opaque.

Décision : garder comme hypothèse forte, mais à auditer plus tard avec scénarios ergonomiques.

---

# 3. Synthèse

## Acquis forts

```text
AC01 — phase avant prototypage
AC02 — contrôle comme fonction musicale
AC03 — contrôle = sélection + organisation + amplitude + contexte + risque + sortie + override
AC04 — le système ne doit pas faire la musique à la place de Yohan
AC07 — override humain comme décision musicale assumée
```

## Acquis provisoires

```text
AC05 — limites comme zones de bord jouables
AC06 — certaines limites restent strictes
AC08 — Router comme réduction de charge cognitive et sélection contextuelle
```

## Risques principaux

```text
R01 — surcharge de contrôle malgré l’intention de simplifier
R02 — sortie ou override caché par un contexte trop intelligent
R03 — zone de bord traitée comme autorisation totale
R04 — protection qui neutralise l’intensité
R05 — micro-test qui devient prototype implicite
```

---

# 4. Conséquence méthodologique

L’audit `assets/source_needs` reste prématuré.

Avant de l’ouvrir, il faut au moins un second batch agency/control sur :

```text
AC09 — contrôles d’urgence toujours accessibles
AC10 — protéger sans figer
AC11 — conflit dangereux versus tension féconde
AC12 — risque de dépossession implicite
AC13 — surcharge d’interface comme conflit musical
AC14 — amplitudes musicales
AC15 — micro-test agency/control
```

---

# 5. Prochaine action recommandée

Créer :

```text
projects/agency_control/AGENCY_CONTROL_AUDIT_BATCH_02.md
```

But : auditer les claims AC09–AC15 avant de reconsidérer l’ouverture de `assets/source_needs`.

---

# 6. Interdictions actuelles

Ne pas :

- écrire SPEC.md ;
- écrire VERIFY.md ;
- auditer `assets/source_needs` ;
- créer un prototype ;
- créer un patch ;
- créer un mapping complet ;
- modifier main ;
- merger la branche méthode.
