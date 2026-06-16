# CODEX_AGENT_PROMPT_REPAIR_MATERIAL_TRIAGE_AUDIO_DRIFT

## Statut

Prompt de correction après dérive de cadrage dans `MATERIAL_TRIAGE_FROM_INTAKE_OUTPUT.md`.

Problème : la sortie a trop traité l'absence de prises audio comme un manque bloquant.

Correction : à ce stade, l'analyse porte sur la matière musicale décrite, pas sur l'écoute ou la validation audio.

---

# Prompt

Tu travailles sur la branche `ai/method-core` du repo Vesperare.

Ta tâche est :

```text
REPAIR_MATERIAL_TRIAGE_AUDIO_DRIFT
```

## Objectif

Réparer la dérive de cadrage introduite dans `MATERIAL_TRIAGE_FROM_INTAKE_OUTPUT.md`.

La sortie précédente a trop insisté sur le manque d'audio, de prises, d'exemples sonores et de validation acoustique.

Or la phase actuelle n'est pas une phase d'écoute, de test, de validation audio ou de prototypage.

La phase actuelle est une analyse de matière musicale décrite :

```text
sources ;
gestes ;
phénomènes ;
fonctions ;
scènes ;
risques ;
critères ;
relations ;
contraintes ;
questions de conception.
```

## Fichiers à lire

Lis uniquement :

```text
projects/agents/outputs/MUSICAL_MATERIAL_INTAKE_OUTPUT.md
projects/agents/outputs/MATERIAL_TRIAGE_FROM_INTAKE_OUTPUT.md
projects/program/PROGRAM_REORIENTATION_NO_USER_HOMEWORK.md
projects/agents/AGENT_WORK_QUEUE_V0.md
```

## Ce qu'il faut faire

Produire une version corrigée du triage qui :

1. ne demande pas de matière audio comme condition préalable ;
2. ne traite pas l'absence de prises comme blocage général ;
3. distingue matière musicale décrite et matière sonore enregistrée ;
4. identifie quelles matières sont exploitables conceptuellement maintenant ;
5. identifie quelles matières demandent seulement clarification documentaire ou jugement de Yohan ;
6. garde les micro-tests suspendus ;
7. ne relance pas MTC01 ;
8. ne propose pas de patch, mapping, prototype, spec ou verifier.

## Correction conceptuelle à appliquer

À ce stade :

```text
une matière peut être exploitable si elle est assez décrite par source + geste + fonction + scène + risque + critère perceptif.
```

Elle n'a pas besoin d'être déjà entendue.

L'audio deviendra nécessaire plus tard seulement pour :

```text
validation perceptive ;
comparaison d'exemples ;
mesure ;
exécution d'un micro-test ;
prototypage sonore.
```

Mais cette étape n'est pas encore ouverte.

## Sortie attendue

Créer uniquement :

```text
projects/agents/outputs/MATERIAL_TRIAGE_FRAME_REPAIR_OUTPUT.md
```

Format :

```md
# MATERIAL_TRIAGE_FRAME_REPAIR_OUTPUT

## Résumé court

## Erreur de cadrage corrigée

## Matières exploitables maintenant sans audio

## Matières qui demandent clarification documentaire

## Matières qui demandent jugement musical de Yohan plus tard

## Matières réellement absentes du cadre actuel

## Questions à garder ouvertes

## Questions à ne pas poser à Yohan maintenant

## Prochaine tâche recommandée
```

## Interdictions

Ne pas :

- exiger des prises audio ;
- proposer d'enregistrer ;
- proposer d'écouter des instruments ;
- proposer un micro-test ;
- relancer MTC01 ;
- créer un patch ;
- créer un mapping ;
- créer un prototype ;
- écrire SPEC.md ;
- écrire VERIFY.md ;
- modifier main ;
- décider à la place de Yohan.
