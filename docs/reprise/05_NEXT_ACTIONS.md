# Prochaines actions de reprise

Statut : plan de reprise documentaire apres tentative de test de chargement du premier patch Max minimal `MIN-DID-PC`.
Date : 2026-07-01.
Verdict courant : `reprise documentaire terminee avec reserves ; chargement Max non teste ; patch minimal existant mais non valide ; prochaine phase = harness commandes/logs Max <-> Codex`.

## Sources consultees

Fait :

- `docs/reprise/00_INDEX.md`
- `docs/reprise/02_PROJECT_STATE.md`
- `docs/reprise/27_TRACE_CREATION_PREMIER_PATCH_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/28_TRACE_TEST_CHARGEMENT_PATCH_MAX_MINIMAL_MIN_DID_PC.md`
- `reprise/INDEX_ACTIF_VESPERARE_CONCEPTION.md`
- `reprise/BESOINS_STYLISTIQUES_v0_4.md`
- `reprise/BESOINS_GENERATION_v0_4.md`
- `projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat`
- `docs/PROJECT_ROADMAP_VESPERARE.md`
- `docs/AI_WORKFLOW_CONTRACT.md`
- `projects/max/MANIFEST_MAX_PATCHES.md`
- `docs/specs/CONCEPTION_HARNESS_COMMANDES_LOGS_MAX_CODEX.md`

## 1. Principe courant

Fait :

La fiche 28 existe :

```text
docs/reprise/28_TRACE_TEST_CHARGEMENT_PATCH_MAX_MINIMAL_MIN_DID_PC.md
```

Fait :

La fiche 28 constate un blocage reel : Max standalone n'a pas ete trouve localement, donc le chargement reel du patch n'a pas ete teste.

Fait :

La fiche 27 existe :

```text
docs/reprise/27_TRACE_CREATION_PREMIER_PATCH_MAX_MINIMAL_MIN_DID_PC.md
```

Fait :

Le premier patch Max minimal strictement borne existe :

```text
projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat
```

Fait :

Le fichier `.maxpat` est lisible comme JSON selon la trace 28. Une verification Codex CLI actuelle confirme aussi le parsing JSON avec cle `patcher` presente. Cette lecture n'est pas un chargement Max.

Decision :

La reprise documentaire est terminee avec reserves.

Decision :

Le patch cree par la fiche 27 et non modifie par la fiche 28 est un premier contenant Max minimal, provisoire et strictement borne. Il ne vaut pas validation musicale, technique, architecturale, niveau 6, routage final, objet Max final, UI, mapping, asset, sample bank ou seuil numerique.

Inference :

Continuer par lecture visuelle de Max ou par test humain precoce ne resout pas le manque principal constate par la trace 28 : l'absence d'un canal machine-lisible de commandes, etats, logs, fallback et SIG.

## 2. Statut du patch 01

Valide a ce stade :

- existence du fichier ;
- `.maxpat` parseable comme JSON ;
- contenant minimal provisoire ;
- absence de modification dans la presente phase.

Non valide a ce stade :

- chargement Max ;
- ouverture sans erreur dans Max ;
- console Max sans erreur ;
- DSP ;
- audio ;
- jouabilite ;
- relation musicale didgeridoo / PC / sortie ;
- validation musicale ;
- validation technique ;
- validation architecturale ;
- validation niveau 6 ;
- routage final ;
- objet Max final ;
- mapping ;
- UI ;
- protection critique finale.

Decision :

Le patch 01 reste non valide par Max, non valide musicalement, non valide techniquement et non architectural.

## 3. Prochaine action exacte

Decision :

La prochaine action exacte est :

```text
concevoir et preparer le harness commandes/logs Max <-> Codex,
afin qu'un futur patch observable puisse recevoir des commandes bornees,
emettre des logs machine-lisibles, exposer ses etats, signaler ses fallback,
emettre ses SIG et rendre visibles les modes absent/off/bypass/reduit,
avant toute reprise de test Max local ou test humain.
```

Decision :

Le test Max local est reporte.

Decision :

Les tests humains sont reportes.

Decision :

La prochaine action n'est pas une lecture visuelle Max, pas une validation GUI et pas une validation musicale.

Decision :

Le harness est une couche de test et d'observabilite. Il n'est pas une condition `P0/P1`, `direct/safe`, protection ou `MIN-DID-PC`.

## 4. Roles outils

Decision :

Codex CLI peut :

- modifier le repo dans le perimetre autorise ;
- verifier JSON ;
- lire logs et traces ;
- verifier les diffs ;
- preparer commit, push, PR et merge si demande.

Decision :

Codex CLI ne doit pas :

- valider l'audio ;
- valider la musicalite ;
- remplacer un chargement Max par une lecture JSON ;
- transformer une sortie de log en decision artistique.

Decision :

Codex Computer Use peut etre envisage plus tard seulement comme smoke test GUI ponctuel, non principal.

Decision :

Pro etendu est reserve aux gates strategiques.

Decision :

Le multi-agent est reserve aux analyses independantes ; l'ecriture finale reste faite par l'agent principal.

## 5. Exigences pour futurs modules observables

Decision :

Les futurs modules devront exposer :

- commandes ;
- etats ;
- logs ;
- fallback ;
- SIG ;
- modes `absent`, `off`, `bypass`, `reduit`.

Inference :

Ces expositions servent a rendre les tests lisibles par machine. Elles ne valident pas la musique et ne fixent pas une architecture finale.

## 6. Corpus de reference courant

Fait :

Fiches documentaires directement stabilisees dans la chaine de sortie :

- `docs/reprise/28_TRACE_TEST_CHARGEMENT_PATCH_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/27_TRACE_CREATION_PREMIER_PATCH_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/26_CLARIFICATION_MINIMALE_EMPLACEMENT_FORMAT_PATCH_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/25_TRACE_PREMIER_PATCH_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/24_DECISION_AUTORISATION_PREMIER_PATCH_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/23_PREPARATION_BRANCHE_PROTOTYPE_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/22_CADRAGE_OPERATIONNEL_ACTION_PROTOTYPE_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/21_DECISION_PASSAGE_PROTOTYPE_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/20_CADRAGE_DOCUMENTAIRE_PREMIER_PROTOTYPE_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/19_PRE_SPEC_MAX_CONCRETE_NON_IMPLEMENTATION_MIN_DID_PC.md`
- `docs/reprise/18_DECISION_SORTIE_REPRISE_DOCUMENTAIRE_VERS_PRE_SPEC_MAX.md`
- `docs/reprise/17_RECONDITIONNEMENT_DOCUMENTAIRE_BORNE_NIVEAU_6_ACT28.md`
- `docs/reprise/16_STATUT_TABLE_15_RECONDITIONNEMENT_NIVEAU_6.md`
- `docs/reprise/15_RECONCILIATION_NIVEAU_6_CORRIGEE_TABLE_COURTE.md`
- `docs/reprise/14_READINESS_RECONCILIATION_NIVEAU_6_CORRIGEE.md`
- `docs/reprise/12_CORRECTIONS_DOCUMENTAIRES_NIVEAU_6_ACT28.md`
- `docs/reprise/11_RECONCILIATION_AUDIT_NIVEAU_6_EXISTANT_AVEC_ACT28_ET_MATRICE_LOURDE.md`
- `docs/reprise/10_CLARIFICATION_MATRICE_NIVEAU_6_ABSENTE.md`
- `docs/reprise/09_READINESS_NIVEAU_6_DOCUMENTAIRE.md`
- `docs/reprise/08_SYNCHRONISATION_NIVEAU_5_MATRICE_LOURDE_STATUTS_CHEMINS_FALLBACK_SIG.md`
- `docs/reprise/07_AUDIT_COMPATIBILITE_NIVEAU_5_OBJETS_MAX_CANDIDATS_AVEC_MATRICE_SYNTHESE_CANDIDATS_LOURDS_VESPERARE_v0_1.md`
- `docs/reprise/MANIFEST_FICHIERS.yml`

Fait :

Documents de pilotage crees pour la phase harness :

- `docs/PROJECT_ROADMAP_VESPERARE.md`
- `docs/AI_WORKFLOW_CONTRACT.md`
- `projects/max/MANIFEST_MAX_PATCHES.md`
- `docs/specs/CONCEPTION_HARNESS_COMMANDES_LOGS_MAX_CODEX.md`

Inference :

Ce corpus suffit pour encadrer la conception du harness commandes/logs. Il ne suffit pas pour valider un niveau 6, choisir des objets Max finaux, modifier l'audit niveau 6 source, reconstruire la matrice absente ou produire une architecture validee.

## 7. Interdictions maintenues

Interdictions :

- ne pas modifier `reprise/` ;
- ne pas modifier l'audit niveau 6 source ;
- ne pas creer de niveau 6 ;
- ne pas valider de niveau 6 ;
- ne pas recreer la matrice niveau 6 absente ;
- ne pas utiliser l'audit niveau 6 comme preuve ;
- ne pas produire de nouvel audit ;
- ne pas produire d'implementation generale ;
- ne pas produire UI ;
- ne pas produire mapping ;
- ne pas produire asset ;
- ne pas produire sample bank ;
- ne pas produire seuil numerique ;
- ne pas produire objet Max final ;
- ne pas produire routage final ;
- ne pas produire architecture validee ;
- ne pas modifier le `.maxpat` existant dans cette phase ;
- ne pas creer de nouveau patch dans cette phase ;
- ne pas lancer Max ;
- ne pas lancer Ableton ;
- ne pas transformer ACT28 en decision artistique definitive ;
- ne pas transformer la sortie documentaire en validation du niveau 6 ;
- ne pas demander a Yohan de trancher une architecture non instruite.

Interdictions lourdes :

- `gen~`, `poly~`, MC, `buffer~`, corpus, IR, convolution, pfft/FFT, scripts, presets critiques, externals, plugins, ML, Markov, grammaire et outils opaques restent hors `P0/P1`, hors `direct/safe`, hors protection, hors `MIN-DID-PC` et hors setup minimal.

## 8. Conditions d'arret

Condition d'arret :

Arreter si la suite tente de deplacer, dupliquer, remplacer ou modifier le patch minimal :

```text
projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat
```

Condition d'arret :

Arreter si la suite tente de creer ou valider un niveau 6, de valider une architecture, de recreer la matrice niveau 6 absente, de modifier `reprise/`, de modifier l'audit niveau 6 source ou d'utiliser l'audit niveau 6 comme preuve.

Condition d'arret :

Arreter si la suite produit un nouvel audit au lieu de concevoir le harness commandes/logs.

Condition d'arret :

Arreter si la suite produit une implementation generale, UI, mapping, asset, sample bank, seuil numerique, routage final, objet Max final, architecture validee ou patch Max.

Condition d'arret :

Arreter si une famille lourde devient condition de `P0/P1`, `direct/safe`, protection, `MIN-DID-PC`, grave critique, scene, HAL/SPC/REV ou decision expressive.

Condition d'arret :

Arreter si le patch minimal devient validation musicale, artistique, technique ou architecturale.

Condition d'arret :

Arreter et requalifier si la matrice niveau 6 absente est retrouvee : elle devra etre relue contre ACT28 et contre la chaine documentaire avant toute suite, sans validation automatique.
