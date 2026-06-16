# SELECT_FIRST_RUN_OUTPUT

## Conclusion courte

Recommandation : choisir `A — MUSICAL_MATERIAL_INTAKE` comme premier vrai run Codex/agent.

Fait : les documents récents corrigent la trajectoire après une focalisation prématurée sur MTC01. `PROGRAM_REORIENTATION_NO_USER_HOMEWORK.md` indique qu'il manque de la matière musicale concrète pour traiter MTC01 utilement, et `AGENT_WORK_QUEUE_V0.md` place `RUN-00 — Select first run` avant toute reprise de MTC01 ou lancement de `MUSICAL_MATERIAL_INTAKE`.

Inférence : le premier run utile doit réduire l'incertitude sur le corpus musical concret, sans demander à Yohan de résoudre lui-même une question de recherche.

Recommandation : lancer ensuite un run d'extraction limitée de matière musicale concrète, puis laisser Yohan décider quoi faire de cette sortie.

## Options comparées

| Option | Pertinence | Risque | Verdict |
|---|---|---|---|
| A — `MUSICAL_MATERIAL_INTAKE` | Forte : répond à la correction de trajectoire, réduit l'incertitude concrète, évite de demander à Yohan de résoudre la recherche seul. | Moyen : peut devenir un mapping si le corpus s'élargit trop ou si l'agent classe tout le projet au lieu d'extraire seulement la matière. | Recommandée comme premier vrai run. |
| B — `METHOD_LOAD_REVIEW` / simplification de la méthode | Moyenne : la surcharge méthodologique est un vrai risque et une sortie existe déjà sur ce point. | Fort : refaire une revue de méthode ajoute une couche documentaire alors que les fichiers disent de cesser l'installation méthodologique générale. | Pas première maintenant. Garder comme alerte, pas comme prochain run. |
| C — `SELECT_FIRST_REAL_DESIGN_QUESTION` | Moyenne : utile après extraction, car le programme devra choisir une vraie question de design. | Moyen à fort : sans matière extraite, cela risque de redevenir abstrait ou de demander à Yohan de trancher trop tôt. | À faire après `MUSICAL_MATERIAL_INTAKE`, si la sortie fournit assez de matière. |
| D — `REPO_METHOD_ALIGNMENT_CHECK` | Faible à moyenne : peut repérer des contradictions entre documents. | Fort : ressemble à un audit large ou mapping, ajoute de la méthode, et ne réduit pas directement l'incertitude musicale. | Pas premier. |
| E — `MTC01_REVIEW` ou reprise de MTC01 | Faible maintenant : MTC01 a déjà été revu et reste non autorisé. | Fort : maintient la focalisation sur le sub/didgeridoo alors que la correction récente dit que la question manque de matière sonore, de scène, de geste et de critère d'écoute. | Suspendre jusqu'après extraction de matière musicale concrète. |
| F — autre option : corriger l'aiguillage `MASTER_AGENT_PROMPT_V0` / queue | Pertinence technique réelle : `MASTER_AGENT_PROMPT_V0` contient une indication MTC01 devenue contradictoire avec la queue corrigée. | Fort pour ce run : ce serait une modification documentaire ou un patch de méthode, interdit ici, et ce n'est pas un vrai run d'analyse du corpus. | À noter pour plus tard, mais pas premier run. |

## Option recommandée

`A — MUSICAL_MATERIAL_INTAKE`

Le run recommandé doit extraire du corpus les matières musicales concrètes déjà disponibles ou décrites : sources, gestes, scènes, problèmes sonores, critères perceptifs, risques de perte, directions positives, manques, et questions non testables maintenant.

Ce run ne doit pas proposer de micro-test, ne doit pas relancer MTC01, ne doit pas créer de mapping, et ne doit pas modifier `main`.

## Pourquoi cette option

Elle respecte la méthode analysée : elle part d'un corpus limité, produit une sortie d'agent, et laisse la décision finale à Yohan.

Elle évite le devoir utilisateur : au lieu de demander à Yohan de répondre directement à une question de recherche, elle demande à Codex d'extraire ce que le corpus contient déjà.

Elle produit une sortie utile et actionnable : la sortie peut servir à choisir ensuite une vraie question de design, à suspendre des pistes trop faibles, ou à demander à Yohan une validation ciblée.

Elle évite prototype, patch, mapping et spec globale : le livrable est seulement un fichier de sortie dans `projects/agents/outputs/`.

Elle réduit l'incertitude principale actuelle : le manque de matière musicale concrète avant MTC01 ou tout autre micro-test.

Elle évite une couche méthodologique inutile : ce n'est pas une nouvelle méthode, c'est l'utilisation de la méthode déjà installée.

Elle est adaptée à un premier vrai run Codex Windows : lecture limitée, consignes simples, sortie structurée, risque faible si les interdictions sont respectées.

Elle peut être faite avec un corpus limité : les fichiers musicaux prioritaires sont déjà listés dans `CODEX_AGENT_PROMPT_MUSICAL_MATERIAL_INTAKE.md`.

Elle préserve le jugement humain final : Yohan valide ensuite si les matières extraites sont musicalement justes, importantes, ou mal interprétées.

## Pourquoi les autres options ne sont pas premières

`B — METHOD_LOAD_REVIEW` n'est pas première parce qu'une sortie existe déjà et conclut qu'il faut arrêter l'installation méthodologique générale. Refaire ce run risquerait de confirmer la surcharge au lieu de produire une avancée.

`C — SELECT_FIRST_REAL_DESIGN_QUESTION` est prématurée sans inventaire concret. Elle deviendra plus utile après extraction des matières, car elle pourra choisir entre des questions ancrées dans le corpus.

`D — REPO_METHOD_ALIGNMENT_CHECK` est trop large pour maintenant. Elle risque de devenir audit documentaire ou mapping du dépôt, exactement ce que les garde-fous veulent éviter.

`E — MTC01_REVIEW` ou reprise de MTC01 n'est pas première parce que MTC01 a déjà été revu, reste non autorisé, et a été replacé en réserve par la correction de trajectoire. Le relancer maintenant maintiendrait une hypothèse sub/didgeridoo trop tôt.

`F — corriger l'aiguillage des prompts` est une maintenance plausible, mais ce n'est pas un run de recherche. En plus, la consigne actuelle interdit de créer un patch ou de modifier d'autres fichiers.

## Premier prompt recommandé

Prompt complet à utiliser dans Codex Windows :

```text
Tu travailles sur la branche `ai/method-core` du repo Vesperare.

Ta tâche est :

MUSICAL_MATERIAL_INTAKE

Objectif :

Extraire du corpus les matières musicales concrètes déjà disponibles ou décrites.

Le but est de savoir sur quoi le programme peut réellement travailler avant de formuler des micro-tests, des questions de design plus précises, ou des décisions humaines ciblées.

Ne lance pas MTC01.
Ne recommande pas MTC01 comme prochaine action automatique.
Ne propose pas de micro-test.
Ne crée pas de patch.
Ne crée pas de mapping.
Ne crée pas de prototype.
N'écris pas SPEC.md.
N'écris pas VERIFY.md.
Ne modifie pas main.

Important :

N'utilise pas `projects/agents/MASTER_AGENT_PROMPT_V0.md` comme routeur pour choisir une autre tâche. Ce run est explicitement `MUSICAL_MATERIAL_INTAKE`.

Lis d'abord ces fichiers de cadrage :

projects/agents/AGENT_WORK_QUEUE_V0.md
projects/program/PROGRAM_REORIENTATION_NO_USER_HOMEWORK.md
projects/CURRENT_DECISION_SUMMARY.md

Puis lis seulement ce corpus musical prioritaire :

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

Fichiers à ne pas lire pour cette tâche :

projects/agents/MASTER_AGENT_PROMPT_V0.md
projects/micro_tests/*
projects/agents/outputs/MTC01_AGENT_REVIEW_OUTPUT.md
projects/agents/outputs/MTC01_CODEX_WINDOWS_REVIEW_OUTPUT.md
docs/assets/source_needs/*
docs/assets/material_assets/*
docs/assets/function_tests/*
docs/assets/engine_sketches/*

Ce qu'il faut extraire :

1. Sources concrètes mentionnées.
2. Gestes musicaux décrits.
3. Situations ou scènes décrites.
4. Problèmes sonores concrets.
5. Critères perceptifs ou sensibles.
6. Exemples de perte ou risque.
7. Exemples de réussite ou direction positive.
8. Matières qui semblent manquer encore.
9. Questions qui ne peuvent pas encore être testées faute de matière.

Règles de lecture :

Sépare clairement :
- fait présent dans les fichiers ;
- inférence prudente ;
- recommandation ;
- incertitude.

Ne transforme pas les documents en preuve musicale.
Ne remplace pas le jugement de Yohan.
Si une matière est vague, indique qu'elle est vague.
Si une scène ou un geste manque, indique qu'il manque.

Créer uniquement :

projects/agents/outputs/MUSICAL_MATERIAL_INTAKE_OUTPUT.md

Format obligatoire :

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

Conditions d'arrêt :

Arrête-toi si la tâche exige de lire les fichiers interdits.
Arrête-toi si tu commences à proposer un micro-test, un patch, un mapping, une spec ou un prototype.
Arrête-toi si la sortie devient une décision à la place de Yohan.
Arrête-toi si le corpus autorisé ne contient pas assez de matière : dans ce cas, écris clairement ce qui manque.
Arrête-toi si tu ne peux pas écrire dans le repo : retourne alors uniquement le contenu Markdown attendu.

Décision humaine requise après la sortie :

Yohan devra décider si les matières extraites sont musicalement pertinentes, si elles corrigent l'intention du programme, et quelle prochaine tâche devient utile.
```

## Fichiers à lire pour ce run

Fichiers de cadrage :

```text
projects/agents/AGENT_WORK_QUEUE_V0.md
projects/program/PROGRAM_REORIENTATION_NO_USER_HOMEWORK.md
projects/CURRENT_DECISION_SUMMARY.md
```

Corpus musical limité :

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

## Fichiers à ne pas lire

```text
projects/agents/MASTER_AGENT_PROMPT_V0.md
projects/micro_tests/*
projects/agents/outputs/MTC01_AGENT_REVIEW_OUTPUT.md
projects/agents/outputs/MTC01_CODEX_WINDOWS_REVIEW_OUTPUT.md
docs/assets/source_needs/*
docs/assets/material_assets/*
docs/assets/function_tests/*
docs/assets/engine_sketches/*
SPEC.md
VERIFY.md
```

## Sortie attendue

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

Pour le run recommandé :

```text
ne pas exécuter MTC01 ;
ne pas autoriser MTC01 ;
ne pas proposer de micro-test ;
ne pas créer de patch ;
ne pas créer de mapping ;
ne pas créer de prototype ;
ne pas écrire SPEC.md ;
ne pas écrire VERIFY.md ;
ne pas modifier main ;
ne pas auditer tout le repo ;
ne pas lire les assets interdits ;
ne pas décider à la place de Yohan ;
ne pas inventer de matière non présente dans les fichiers lus.
```

## Conditions d'arrêt

Arrêter le run si :

```text
la tâche demande de lire des fichiers interdits ;
la sortie commence à devenir un mapping du dépôt ;
la sortie propose un patch, un prototype, une spec, un verifier complet ou un micro-test ;
la sortie relance MTC01 comme prochaine action automatique ;
le corpus autorisé ne contient pas assez de matière concrète ;
une décision musicale dépend du jugement de Yohan.
```

Dans ces cas, la sortie doit nommer le blocage ou le manque, puis s'arrêter.

## Décision humaine requise après la sortie

Après `MUSICAL_MATERIAL_INTAKE_OUTPUT.md`, Yohan devra décider :

```text
les matières extraites sont-elles justes ?
les gestes et scènes extraits correspondent-ils à son intention musicale ?
quelles matières sont assez concrètes pour instruire une vraie question de design ?
quelles pistes doivent être suspendues faute de matière ?
faut-il ensuite choisir une première question de design, réviser le prompt, ou demander une seconde revue agent ?
```

Cette décision ne doit pas être prise par Codex.
