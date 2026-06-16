# CODEX_AGENT_PROMPT_MUSICAL_MATERIAL_INTAKE

## Statut

Prompt agent pour extraire la matière musicale concrète du corpus Vesperare.

Cette tâche remplace la focalisation prématurée sur MTC01.

Mode attendu : lecture, extraction, structuration.

Aucun prototype.

Aucun patch.

Aucun mapping.

---

# Prompt

Tu travailles sur la branche `ai/method-core` du repo Vesperare.

Ta tâche est :

```text
MUSICAL_MATERIAL_INTAKE
```

## Objectif

Extraire du corpus les matières musicales concrètes déjà disponibles ou décrites.

Le but est de savoir sur quoi le programme peut réellement travailler avant de formuler des micro-tests.

## Fichiers à lire en priorité

```text
README.md
docs/00_INDEX_METHODE_DECISIONS.md
docs/01_CAHIER_DES_PHENOMENES_SONORES.md
docs/05_CARTOGRAPHIE_STYLE_PERSONNEL_TECHNO.md
docs/06_CARTOGRAPHIE_INFLUENCES_STYLE_VESPERARE.md
docs/08_PERFORMANCE_SCENES_TRAJECTOIRES_OBJETS.md
docs/23_SCENES_COMME_CHAMPS_OUVERTS_DE_PERFORMANCE.md
docs/24_SCENES_PIVOTS_CHAMPS_OUVERTS_PREMIERE_SERIE.md
docs/32_SCENES_PIVOTS_DRAMATURGIES_MUSICALES.md
docs/33_FICHE_PERFORMANCE_CORPS_VIVANT_POLYTEXTURE.md
docs/34_FICHE_PERFORMANCE_TENSION_ARMEE_PRE_DROP.md
docs/35_FICHE_PERFORMANCE_SUSPENSION_MATIERE_RETOUR.md
```

## Fichiers à ne pas lire pour cette tâche

```text
docs/assets/source_needs/*
docs/assets/material_assets/*
docs/assets/function_tests/*
docs/assets/engine_sketches/*
```

## Ce qu’il faut extraire

1. Sources concrètes mentionnées.
2. Gestes musicaux décrits.
3. Situations ou scènes décrites.
4. Problèmes sonores concrets.
5. Critères perceptifs ou sensibles.
6. Exemples de perte ou risque.
7. Exemples de réussite ou direction positive.
8. Matières qui semblent manquer encore.
9. Questions qui ne peuvent pas encore être testées faute de matière.

## Format de sortie attendu

Créer uniquement :

```text
projects/agents/outputs/MUSICAL_MATERIAL_INTAKE_OUTPUT.md
```

Format :

```md
# MUSICAL_MATERIAL_INTAKE_OUTPUT

## Résumé court

## Sources concrètes

## Gestes décrits

## Scènes / situations décrites

## Problèmes sonores concrets

## Critères perceptifs

## Risques / pertes décrits

## Directions positives décrites

## Matière manquante

## Questions non testables maintenant

## Recommandation de prochaine étape
```

## Interdictions

Ne pas :

- proposer de micro-test ;
- relancer MTC01 ;
- créer un patch ;
- créer un mapping ;
- créer une spec globale ;
- créer un verifier complet ;
- auditer les source_needs ;
- modifier main ;
- inventer de matière non présente dans les fichiers lus.
