# Roadmap projet Vesperare

Statut : pilotage global de construction apres stabilisation du smoke Max/Codex par script, cadrage post-harness du noyau systeme didgeridoo/PC, pre-spec du noyau P0/P1 observable, contrat documentaire P0 direct/safe/sortie et decision de passage technique observable bornee.
Date : 2026-07-02.
Perimetre : document de pilotage ; harness Max/Codex borne dans `_harness` ; noyau systeme didgeridoo/PC cadre documentairement ; pre-spec P0/P1 observable produite ; contrat documentaire `P0-DIRECT / P0-SAFE / P0-SORTIE` produit ; decision de passage technique observable produite ; prochaine phase contrat technique observable minimal ; sans UI de performance, sans mapping, sans asset, sans sample bank, sans seuil numerique et sans validation audio, DSP ou musicale.

## Sources consultees

Fait :

- `README.md`
- `docs/00_INDEX_METHODE_DECISIONS.md`
- `docs/42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md`
- `docs/45_REPRISE_DEPUIS_FICHE_MESURES_INSTRUMENTS.md`
- `docs/modules/18_CONTEXTUAL_CONTROL_ROUTER_AMPLITUDES_LIMITES_OVERRIDE_ADDENDUM.md`
- `docs/assets/00_ASSETS_INDEX.md`
- `docs/assets/15_DONNEES_INSTRUMENTALES_MANQUANTES_PRIORITAIRES.md`
- `docs/assets/16_ACOUSTICARCHIVE_MAPPING_DONNEES_VESPERARE.md`
- `docs/reprise/00_INDEX.md`
- `docs/reprise/02_PROJECT_STATE.md`
- `docs/reprise/05_NEXT_ACTIONS.md`
- `docs/reprise/32_TRACE_HARNESS_LOCAL_STUB_COMMANDES_LOGS_V0.md`
- `docs/reprise/33_TRACE_CONTRAT_STATE_SESSION_HARNESS_FICHIERS_V0.md`
- `docs/reprise/34_TRACE_ARTEFACT_MAX_OBSERVABLE_HARNESS_FICHIERS_V0.md`
- `docs/reprise/35_DECISION_PASSAGE_IMPLEMENTATION_MAX_HARNESS_FICHIERS_V1.md`
- `docs/reprise/36_TRACE_CREATION_PATCH_MAX_HARNESS_FICHIERS_V1.md`
- `docs/reprise/37_DIAGNOSTIC_LOGS_MAX_PATCH_HARNESS_FICHIERS_V1.md`
- `docs/reprise/38_TRACE_DIAGNOSTIC_NODE_SCRIPT_MAX_HARNESS_V2.md`
- `docs/reprise/39_TRACE_STABILISATION_RUNTIME_HARNESS_MAX_CODEX.md`
- `docs/specs/INTEGRATION_MAX_HARNESS_FICHIERS_V0.md`
- `docs/specs/PRE_SPEC_IMPLEMENTATION_MAX_HARNESS_FICHIERS_V1.md`
- `docs/specs/PRE_SPEC_NODE_FOR_MAX_HARNESS_FICHIERS_V2.md`
- `docs/specs/CADRAGE_NOYAU_SYSTEME_DIDGERIDOO_PC_POST_HARNESS.md`
- `docs/specs/PRE_SPEC_NOYAU_P0_P1_OBSERVABLE.md`
- `docs/specs/CONTRAT_P0_DIRECT_SAFE_SORTIE.md`
- `docs/specs/DECISION_PASSAGE_ACTION_TECHNIQUE_OBSERVABLE_P0_DIRECT_SAFE_SORTIE.md`
- `projects/max/_harness/README.md`
- `projects/max/_harness/patches/vesperare-harness-file-observer-v0.maxpat`
- `projects/max/_harness/patches/vesperare-harness-files-v1.maxpat`
- `projects/max/_harness/node/vesperare-harness-bridge-v2.js`
- `projects/max/_harness/patches/vesperare-harness-node-bridge-v2.maxpat`
- `tools/vesperare-harness/schemas/state.schema.json`
- `tools/vesperare-harness/examples/command.request-state.json`
- `tools/vesperare-harness/examples/state.current.sample.json`
- `tools/vesperare-harness/powershell/Test-VesperareHarnessState.ps1`
- `tools/vesperare-harness/powershell/Invoke-VesperareMaxHarnessSmoke.ps1`
- `docs/reprise/27_TRACE_CREATION_PREMIER_PATCH_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/28_TRACE_TEST_CHARGEMENT_PATCH_MAX_MINIMAL_MIN_DID_PC.md`
- `reprise/INDEX_ACTIF_VESPERARE_CONCEPTION.md`
- `reprise/BESOINS_STYLISTIQUES_v0_4.md`
- `reprise/BESOINS_GENERATION_v0_4.md`
- `projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat`

## 1. Phases globales du projet

Fait :

Le projet suit une progression documentee par chaines de decisions, pas par simple ordre alphabetique des fichiers.

Phases consolidees ou deja engagees :

- intention, besoins stylistiques et besoins de generation ;
- caracterisation des phenomenes, questions, arbitrages et garde-fous ;
- specifications conceptuelles, controles, scenes, protocoles, analyses et systeme decisionnel ;
- recentrage methode / controle / automation situee / override ;
- runtime Max standalone comme axe actif du corpus `reprise/` ;
- audits candidats et contraintes avant traduction Max concrete ;
- reprise documentaire post ACT28 avec synchronisation niveau 5 / matrice lourde ;
- sortie strictement bornee vers un premier artefact Max minimal `MIN-DID-PC` ;
- stabilisation du harness Max/Codex comme outil d'observabilite technique borne ;
- cadrage concret non implementatoire du noyau systeme didgeridoo/PC post-harness ;
- pre-spec courte du noyau P0/P1 observable ;
- contrat documentaire P0 direct/safe/sortie ;
- decision documentaire de passage technique observable bornee.

Inference :

La phase actuelle n'est plus une pure reprise documentaire ni une stabilisation du harness. Elle n'est pas encore une phase de test musical ou d'architecture Max validee.

## 2. Etat actuel

Decision :

La reprise documentaire est terminee avec reserves.

Fait :

Le fichier suivant existe :

```text
projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat
```

Fait :

La trace 28 indique que le fichier est lisible comme JSON et que le chargement reel dans Max standalone n'a pas ete teste, faute de Max standalone local detectable.

Decision :

Le patch 01 reste :

- non valide par Max ;
- non valide musicalement ;
- non valide techniquement ;
- non architectural ;
- non probant pour le niveau 6 ;
- non probant pour un routage final ;
- non probant pour un objet Max final.

Fait :

Le cadrage documentaire du noyau systeme didgeridoo/PC post-harness existe :

```text
docs/specs/CADRAGE_NOYAU_SYSTEME_DIDGERIDOO_PC_POST_HARNESS.md
```

Fait :

La pre-spec courte du noyau P0/P1 observable existe :

```text
docs/specs/PRE_SPEC_NOYAU_P0_P1_OBSERVABLE.md
```

Fait :

Le contrat documentaire P0 direct/safe/sortie existe :

```text
docs/specs/CONTRAT_P0_DIRECT_SAFE_SORTIE.md
```

Fait :

La decision documentaire de passage technique observable bornee existe :

```text
docs/specs/DECISION_PASSAGE_ACTION_TECHNIQUE_OBSERVABLE_P0_DIRECT_SAFE_SORTIE.md
```

Limite :

Ces documents nomment des responsabilites, invariants, contrats, modes, fallbacks, SIG, conditions d'arret et une autorisation documentaire de prochaine action technique observable bornee. Ils ne valident pas le patch 01, ne choisissent pas d'objets Max finaux, ne produisent pas de routage final et ne valident ni audio, ni DSP, ni musicalite, ni architecture.

Inference :

Continuer par lecture visuelle de Max ou test humain precoce ajouterait une validation subjective ou fragile avant d'avoir formule le contrat technique observable minimal du triplet direct/safe/sortie.

## 3. Harness Max/Codex stabilise

Decision :

Le harness Max/Codex n'est plus la prochaine phase principale. Il est stabilise comme outil d'observabilite technique borne.

Fait :

Le script suivant rend le smoke local reproductible :

```text
tools/vesperare-harness/powershell/Invoke-VesperareMaxHarnessSmoke.ps1
```

Fait :

Le smoke officiel genere un patch temporaire sous `.codex_tmp/`, lance Max via `VESPERARE_MAX_EXE`, puis valide les sorties fichier du bridge Node for Max v2.

Fait :

Les commandes stabilisees sont :

```text
ping
request_state
```

Fait :

`ping` produit `ack.json` et `harness-session.jsonl`. `request_state` produit aussi `state.current.json`. Les validateurs PowerShell `ack`, `log` et `state` passent sur ces sorties.

Limite :

Cette stabilisation prouve une observabilite locale bornee du harness. Elle ne valide pas :

- audio ;
- DSP ;
- musicalite ;
- patch 01 ;
- architecture ;
- routage final ;
- objet Max final ;
- mapping ;
- UI ;
- asset ou sample bank.

Decision :

Le harness reste un outil d'observabilite, pas le noyau musical didgeridoo/PC.

Decision :

Node for Max reste autorise seulement dans :

```text
projects/max/_harness/
```

Il reste interdit dans le noyau audio, `P0/P1`, `direct/safe`, protection, `MIN-DID-PC` et le patch 01.

Dette separee :

La portabilite Max project/search-path reste a instruire seulement si un besoin explicite apparait. Elle n'est pas bloquante pour la reprise de conception du noyau didgeridoo/PC.

Decision :

La conception concrete du noyau systeme didgeridoo/PC est maintenant cadree documentairement par `docs/specs/CADRAGE_NOYAU_SYSTEME_DIDGERIDOO_PC_POST_HARNESS.md`.

Decision :

La pre-spec courte du noyau P0/P1 observable est maintenant produite dans `docs/specs/PRE_SPEC_NOYAU_P0_P1_OBSERVABLE.md`.

Decision :

Le contrat documentaire P0 direct/safe/sortie est maintenant produit dans `docs/specs/CONTRAT_P0_DIRECT_SAFE_SORTIE.md`.

Decision :

La decision documentaire de passage technique observable bornee est maintenant produite dans `docs/specs/DECISION_PASSAGE_ACTION_TECHNIQUE_OBSERVABLE_P0_DIRECT_SAFE_SORTIE.md`.

Recommandation :

La prochaine phase principale doit formaliser le contrat technique observable minimal pour `P0-DIRECT / P0-SAFE / P0-SORTIE`, toujours sans patch, sans objet Max final, sans routage final et sans validation musicale.

## 3A. Corpus harness conserve

Fait :

Le flux local v0 cote fichiers existe dans :

```text
tools/vesperare-harness/
```

Fait :

L'integration Max-side fichier v0, le patch harness fichiers v1, le bridge Node for Max v2 et les traces associees restent documentes dans :

```text
docs/specs/INTEGRATION_MAX_HARNESS_FICHIERS_V0.md
docs/specs/PRE_SPEC_IMPLEMENTATION_MAX_HARNESS_FICHIERS_V1.md
docs/specs/PRE_SPEC_NODE_FOR_MAX_HARNESS_FICHIERS_V2.md
docs/reprise/37_DIAGNOSTIC_LOGS_MAX_PATCH_HARNESS_FICHIERS_V1.md
docs/reprise/38_TRACE_DIAGNOSTIC_NODE_SCRIPT_MAX_HARNESS_V2.md
docs/reprise/39_TRACE_STABILISATION_RUNTIME_HARNESS_MAX_CODEX.md
projects/max/_harness/patches/vesperare-harness-file-observer-v0.maxpat
projects/max/_harness/patches/vesperare-harness-files-v1.maxpat
projects/max/_harness/patches/vesperare-harness-node-bridge-v2.maxpat
projects/max/_harness/node/vesperare-harness-bridge-v2.js
```

Limite :

Ce corpus suffit pour observer le harness et comprendre sa stabilisation. Il ne suffit pas pour valider le noyau didgeridoo/PC.

## 4. Place du patch 01

Decision :

`min-did-pc-minimal-01.maxpat` est un artefact minimal provisoire.

Fait :

Il sert seulement de trace materielle de la sortie minimale deja autorisee par les fiches 26 et 27.

Decision :

Il ne doit pas etre modifie dans la presente phase.

Recommandation :

Toute modification future du patch 01 devra etre explicitement bornee et ne devra pas convertir ce patch en architecture finale par glissement.

## 5. Gates Pro etendu

Decision :

Pro etendu est reserve aux gates strategiques.

Usages pertinents :

- relire une decision de phase avant elargissement de perimetre ;
- comparer des options de harness si elles engagent durablement l'architecture ;
- verifier une contradiction methode / musique / technique / agency avant decision couteuse ;
- preparer une synthese de risques independants lorsque les cadres sont en tension.

Non-usages :

- ecrire les documents finaux a la place de l'agent principal ;
- valider l'audio ;
- valider la musicalite ;
- remplacer le jugement de Yohan ;
- transformer une sortie d'agent en decision prise.

## 6. Livrables attendus

Livrables deja presents pour le flux local v0 :

- `docs/PROJECT_ROADMAP_VESPERARE.md`
- `docs/AI_WORKFLOW_CONTRACT.md`
- `projects/max/MANIFEST_MAX_PATCHES.md`
- `docs/specs/CONCEPTION_HARNESS_COMMANDES_LOGS_MAX_CODEX.md`
- mise a jour ciblee de `docs/reprise/05_NEXT_ACTIONS.md`
- `tools/vesperare-harness/README.md`
- `tools/vesperare-harness/schemas/command.schema.json`
- `tools/vesperare-harness/schemas/log.schema.json`
- `tools/vesperare-harness/schemas/ack.schema.json`
- `tools/vesperare-harness/schemas/error.schema.json`
- `tools/vesperare-harness/schemas/state.schema.json`
- `tools/vesperare-harness/examples/command.ping.json`
- `tools/vesperare-harness/examples/command.request-state.json`
- `tools/vesperare-harness/examples/ack.ping.sample.json`
- `tools/vesperare-harness/examples/error.unknown-command.sample.json`
- `tools/vesperare-harness/examples/log.session.sample.jsonl`
- `tools/vesperare-harness/examples/state.current.sample.json`
- `tools/vesperare-harness/powershell/New-VesperareHarnessCommand.ps1`
- `tools/vesperare-harness/powershell/Test-VesperareHarnessCommand.ps1`
- `tools/vesperare-harness/powershell/Test-VesperareHarnessAck.ps1`
- `tools/vesperare-harness/powershell/Test-VesperareHarnessError.ps1`
- `tools/vesperare-harness/powershell/Test-VesperareHarnessLog.ps1`
- `tools/vesperare-harness/powershell/Test-VesperareHarnessState.ps1`
- `tools/vesperare-harness/powershell/Invoke-VesperareHarnessStub.ps1`
- `docs/reprise/32_TRACE_HARNESS_LOCAL_STUB_COMMANDES_LOGS_V0.md`
- `docs/reprise/33_TRACE_CONTRAT_STATE_SESSION_HARNESS_FICHIERS_V0.md`

Livrables de la conception Max-side fichier v0 :

- `docs/specs/INTEGRATION_MAX_HARNESS_FICHIERS_V0.md`
- `projects/max/_harness/README.md`
- mise a jour ciblee de `docs/PROJECT_ROADMAP_VESPERARE.md`
- mise a jour ciblee de `docs/reprise/05_NEXT_ACTIONS.md`
- mise a jour ciblee de `projects/max/MANIFEST_MAX_PATCHES.md`

Livrables de l'artefact Max observable v0 :

- `projects/max/_harness/patches/vesperare-harness-file-observer-v0.maxpat`
- `docs/reprise/34_TRACE_ARTEFACT_MAX_OBSERVABLE_HARNESS_FICHIERS_V0.md`
- mise a jour ciblee de `projects/max/_harness/README.md`
- mise a jour ciblee de `projects/max/MANIFEST_MAX_PATCHES.md`
- mise a jour ciblee de `docs/PROJECT_ROADMAP_VESPERARE.md`
- mise a jour ciblee de `docs/reprise/05_NEXT_ACTIONS.md`

Livrables de la preparation implementation Max-side harness fichiers v1 :

- `docs/specs/PRE_SPEC_IMPLEMENTATION_MAX_HARNESS_FICHIERS_V1.md`
- `docs/reprise/35_DECISION_PASSAGE_IMPLEMENTATION_MAX_HARNESS_FICHIERS_V1.md`
- mise a jour ciblee de `docs/PROJECT_ROADMAP_VESPERARE.md`
- mise a jour ciblee de `docs/reprise/05_NEXT_ACTIONS.md`
- mise a jour ciblee de `projects/max/MANIFEST_MAX_PATCHES.md`
- mise a jour ciblee de `projects/max/_harness/README.md`

Livrables de la creation du patch Max harness fichiers v1 :

- `projects/max/_harness/patches/vesperare-harness-files-v1.maxpat`
- `docs/reprise/36_TRACE_CREATION_PATCH_MAX_HARNESS_FICHIERS_V1.md`
- mise a jour ciblee de `projects/max/_harness/README.md`
- mise a jour ciblee de `projects/max/MANIFEST_MAX_PATCHES.md`
- mise a jour ciblee de `docs/PROJECT_ROADMAP_VESPERARE.md`
- mise a jour ciblee de `docs/reprise/05_NEXT_ACTIONS.md`

Livrables de diagnostic v1 et voie Node for Max v2 :

- `docs/reprise/37_DIAGNOSTIC_LOGS_MAX_PATCH_HARNESS_FICHIERS_V1.md`
- `docs/specs/PRE_SPEC_NODE_FOR_MAX_HARNESS_FICHIERS_V2.md`
- `projects/max/_harness/node/vesperare-harness-bridge-v2.js`
- `projects/max/_harness/patches/vesperare-harness-node-bridge-v2.maxpat`
- mise a jour ciblee de `projects/max/_harness/README.md`
- mise a jour ciblee de `projects/max/MANIFEST_MAX_PATCHES.md`
- mise a jour ciblee de `docs/PROJECT_ROADMAP_VESPERARE.md`
- mise a jour ciblee de `docs/reprise/05_NEXT_ACTIONS.md`

Livrable du cadrage post-harness du noyau systeme didgeridoo/PC :

- `docs/specs/CADRAGE_NOYAU_SYSTEME_DIDGERIDOO_PC_POST_HARNESS.md`
- mise a jour ciblee de `docs/START_HERE_VESPERARE.md`
- mise a jour ciblee de `docs/PROJECT_ROADMAP_VESPERARE.md`
- mise a jour ciblee de `docs/reprise/05_NEXT_ACTIONS.md`

Livrable de la pre-spec du noyau P0/P1 observable :

- `docs/specs/PRE_SPEC_NOYAU_P0_P1_OBSERVABLE.md`
- mise a jour ciblee de `docs/START_HERE_VESPERARE.md`
- mise a jour ciblee de `docs/PROJECT_ROADMAP_VESPERARE.md`
- mise a jour ciblee de `docs/reprise/05_NEXT_ACTIONS.md`

Livrables post-pre-spec P0 :

- `docs/specs/CONTRAT_P0_DIRECT_SAFE_SORTIE.md`
- `docs/specs/DECISION_PASSAGE_ACTION_TECHNIQUE_OBSERVABLE_P0_DIRECT_SAFE_SORTIE.md`

Livrables futurs possibles, non produits maintenant :

- contrat technique observable minimal `P0-DIRECT / P0-SAFE / P0-SORTIE` ;
- regroupement des decisions utiles pour la construction, sans multiplier les traces fines ;
- resolution portabilite Max project/search-path seulement si un besoin explicite apparait ;
- smoke Max/Codex via script seulement si une action technique le justifie ;
- test humain ou GUI seulement apres une question bornee, jamais comme premiere preuve musicale.

## 7. Prochaine action minimale

Decision :

Le harness Max/Codex est stabilise comme outil d'observabilite technique borne. La prochaine action n'est plus d'isoler `node.script`.

Decision :

Le cadrage concret non implementatoire du noyau systeme didgeridoo/PC existe dans :

```text
docs/specs/CADRAGE_NOYAU_SYSTEME_DIDGERIDOO_PC_POST_HARNESS.md
```

Decision :

La pre-spec courte du noyau P0/P1 observable existe dans :

```text
docs/specs/PRE_SPEC_NOYAU_P0_P1_OBSERVABLE.md
```

Decision :

Le contrat documentaire P0 direct/safe/sortie existe dans :

```text
docs/specs/CONTRAT_P0_DIRECT_SAFE_SORTIE.md
```

Decision :

La decision documentaire de passage technique observable bornee existe dans :

```text
docs/specs/DECISION_PASSAGE_ACTION_TECHNIQUE_OBSERVABLE_P0_DIRECT_SAFE_SORTIE.md
```

Recommandation :

La prochaine action minimale est maintenant :

```text
preparer un contrat technique observable minimal pour P0-DIRECT / P0-SAFE / P0-SORTIE.
```

Perimetre de cette action future :

- repartir de la decision de passage technique observable, pas d'une ancienne prochaine action ;
- definir les etats observables minimaux pour `P0-DIRECT`, `P0-SAFE` et `P0-SORTIE` ;
- rendre representables les modes `absent`, `off`, `bypass`, `reduit` ;
- rendre representables fallback et SIG ;
- nommer preuve machine possible et preuve interdite ;
- maintenir la separation stricte noyau / optionnel / harness ;
- ne produire aucune implementation Max ;
- garder la portabilite Max project/search-path comme dette separee, non bloquante sauf besoin explicite ;
- laisser le patch 01 inchange sauf demande future explicite et bornee.

Limite :

Cette suite ne devra pas lancer Ableton, ne devra pas faire de Node for Max une architecture finale et ne devra pas presenter l'observabilite comme validation audio, DSP ou musicale.

Condition d'arret :

Arreter si la suite demande de lancer Max hors smoke Max/Codex strictement borne et explicitement justifie, de lancer Ableton, de modifier le patch 01, de modifier `reprise/` hors document explicitement demande, de produire un mapping, une UI de performance, un asset, une sample bank, un seuil numerique, un objet Max final, un routage final, un nouvel audit ou une validation musicale.
