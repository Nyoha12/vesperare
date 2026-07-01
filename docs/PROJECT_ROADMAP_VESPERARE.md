# Roadmap projet Vesperare

Statut : pilotage global de construction apres reprise documentaire, trace 28, flux local harness v0, integration Max-side fichiers v0, contrat state/session local v0, artefact Max observable v0 comment-only, patch Max harness fichiers v1 separe, diagnostic v1 et voie Node for Max v2 bornee au harness.
Date : 2026-07-01.
Perimetre : document de pilotage ; artefacts Max harness separes documentes ; diagnostic smoke test Max v1 ; bridge Node for Max v2 dans `_harness` ; sans UI de performance, sans mapping, sans asset, sans sample bank, sans seuil numerique et sans validation audio, DSP ou musicale.

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
- `docs/specs/INTEGRATION_MAX_HARNESS_FICHIERS_V0.md`
- `docs/specs/PRE_SPEC_IMPLEMENTATION_MAX_HARNESS_FICHIERS_V1.md`
- `docs/specs/PRE_SPEC_NODE_FOR_MAX_HARNESS_FICHIERS_V2.md`
- `projects/max/_harness/README.md`
- `projects/max/_harness/patches/vesperare-harness-file-observer-v0.maxpat`
- `projects/max/_harness/patches/vesperare-harness-files-v1.maxpat`
- `projects/max/_harness/node/vesperare-harness-bridge-v2.js`
- `projects/max/_harness/patches/vesperare-harness-node-bridge-v2.maxpat`
- `tools/vesperare-harness/schemas/state.schema.json`
- `tools/vesperare-harness/examples/command.request-state.json`
- `tools/vesperare-harness/examples/state.current.sample.json`
- `tools/vesperare-harness/powershell/Test-VesperareHarnessState.ps1`
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
- sortie strictement bornee vers un premier artefact Max minimal `MIN-DID-PC`.

Inference :

La phase actuelle n'est plus une pure reprise documentaire, mais elle n'est pas encore une phase de test musical ou d'architecture Max validee.

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

Inference :

Continuer par lecture visuelle de Max ou test humain precoce ajouterait une validation subjective ou fragile avant d'avoir une observabilite machine-lisible.

## 3. Prochaine phase : harness commandes/logs

Decision :

Le prochain axe est la conception puis la preparation d'un harness commandes/logs Max <-> Codex.

Objectif de phase :

```text
preparer une couche minimale d'observabilite et de pilotage machine-lisible,
afin que les prochains patchs observables puissent exposer commandes, etats,
logs, fallback, SIG et modes absent/off/bypass/reduit.
```

Decision :

Cette phase remplace la relance immediate du test Max local. Le test Max local et les tests humains sont reportes.

Limite :

Le harness n'est pas :

- une condition `P0/P1` ;
- une condition `direct/safe` ;
- une condition de protection ;
- une condition de `MIN-DID-PC` ;
- une validation audio ;
- une validation musicale ;
- une architecture finale.

Fait :

Le flux local v0 cote fichiers existe dans :

```text
tools/vesperare-harness/
```

Il contient schemas, exemples, validateurs PowerShell et un stub local fichier-only qui lit une commande JSON, produit ack ou error, produit un log JSONL, produit `state.current.json` pour `request_state`, puis permet une validation Codex CLI. Il n'integre pas Max, ne lance pas Max ou Ableton et ne modifie pas le patch 01.

Decision :

Le flux local v0 prouve seulement le contrat local commandes/logs :

```text
commande JSON -> stub local -> ack/error JSON -> log JSONL/state JSON -> validation Codex
```

Limite :

Cette preuve n'est pas une integration Max, pas un test audio, pas une validation DSP, pas une validation musicale et pas une validation technique du patch 01.

Decision :

L'integration Max-side fichier v0 est specifiee dans :

```text
docs/specs/INTEGRATION_MAX_HARNESS_FICHIERS_V0.md
```

Elle definit comment un futur patch Max observable pourra lire ou ecrire :

```text
command.pending.json
ack.json
error.json
harness-session.jsonl
state.current.json
```

Fait :

Un premier artefact Max-side observable separe existe maintenant :

```text
projects/max/_harness/patches/vesperare-harness-file-observer-v0.maxpat
```

Limite :

Cet artefact est documentaire et provisoire. Il ne lit pas de fichier, n'ecrit pas de fichier, ne traite pas de commande, ne lance pas Max, ne lance pas Ableton, ne modifie pas le patch 01 et ne valide ni Max, ni l'audio, ni le DSP, ni la musique, ni une architecture.

Decision :

La prochaine action n'est plus la creation du patch v1 : elle a ete faite. La suite eventuelle doit rester une correction ou instrumentation bornee de l'observabilite fichier du v1.

Fait :

La pre-spec, la decision de passage et la trace de creation existent :

```text
docs/specs/PRE_SPEC_IMPLEMENTATION_MAX_HARNESS_FICHIERS_V1.md
docs/reprise/35_DECISION_PASSAGE_IMPLEMENTATION_MAX_HARNESS_FICHIERS_V1.md
docs/reprise/36_TRACE_CREATION_PATCH_MAX_HARNESS_FICHIERS_V1.md
```

Fait :

Le patch Max harness fichiers v1 separe existe :

```text
projects/max/_harness/patches/vesperare-harness-files-v1.maxpat
```

Fait :

Le patch v1 est parseable comme JSON, contient la cle `patcher`, reste separe du patch 01 et utilise seulement les objets provisoires autorises par la pre-spec.

Fait :

Un smoke test Max borne a ete tente avec une commande `ping`, sans ouvrir le patch 01. Max n'a produit ni `ack.json`, ni `error.json`, ni `harness-session.jsonl`, ni `state.current.json`.

Limite :

Cette creation et ce lancement Max non concluant ne valident ni Max, ni l'audio, ni le DSP, ni la musique, ni une architecture, ni le patch 01.

Decision :

Le diagnostic v1 retient que Max est lancable et que le patch v1 s'ouvre assez pour produire des logs, mais que l'implementation `message` / `text` / `dict` du v1 est non fiable pour JSON brut, chemins relatifs et ecriture de fichiers. Le probleme observe est donc l'implementation v1, pas l'installation Max.

Decision :

Node for Max est autorise comme couche de harness `_harness` seulement. Il reste interdit dans le noyau audio, `P0/P1`, `direct/safe`, protection, `MIN-DID-PC` et le patch 01.

Fait :

Le bridge Node for Max v2 existe :

```text
projects/max/_harness/node/vesperare-harness-bridge-v2.js
```

Fait :

Le patch Max v2 separe existe :

```text
projects/max/_harness/patches/vesperare-harness-node-bridge-v2.maxpat
```

Fait :

Hors Max, le bridge Node v2 lit `command.pending.json`, accepte `ping` et `request_state`, produit `ack.json`, `harness-session.jsonl` et `state.current.json` pour `request_state`, puis passe les validateurs PowerShell existants.

Fait :

Un smoke test Max v2 a ouvert ou reference le patch v2, mais n'a produit ni `ack.json`, ni `error.json`, ni `harness-session.jsonl`, ni `state.current.json`.

Limite :

Le v2 prouve actuellement le contrat fichier du bridge Node standalone, pas encore l'execution effective par `node.script` dans Max.

Decision :

Le contrat local `request_state` / `state.current.json` est complete cote harness PowerShell. `state.current.json` reste un etat technique minimal conforme au schema local ; il n'est pas une preuve de chargement Max, pas une validation audio, pas une validation DSP, pas une validation musicale et pas une validation architecturale.

## 4. Place du patch 01

Decision :

`min-did-pc-minimal-01.maxpat` est un artefact minimal provisoire.

Fait :

Il sert seulement de trace materielle de la sortie minimale deja autorisee par les fiches 26 et 27.

Decision :

Il ne doit pas etre modifie dans la presente phase.

Recommandation :

Le prochain patch Max observable, s'il est autorise plus tard, devra etre pense apres la conception du harness. Il ne devra pas convertir le patch 01 en architecture finale.

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

Livrables futurs possibles, non produits maintenant :

- lib Max observable future ;
- correction ou instrumentation bornee du v1 pour obtenir au moins `ack.json` ou `error.json` sur `ping` ;
- trace de chargement Max instrumentee seulement si le harness produit des sorties observables ;
- smoke test GUI ponctuel par Codex Computer Use, seulement si le harness et les logs le justifient ;
- test humain apres observabilite, jamais comme premiere preuve technique.

## 7. Prochaine action minimale

Decision :

Le premier artefact Max observable v0 est cree, separe du patch 01 et comment-only. Le patch Max harness fichiers v1 est cree, separe du patch 01 et file-only, mais son smoke test Max n'a pas produit de sorties harness. Le bridge Node for Max v2 est cree et valide hors Max par fichiers, mais le smoke test Max v2 n'a pas encore produit de sortie via `node.script`.

Recommandation :

Apres cette PR, la prochaine action minimale est d'isoler le chargement `node.script` du patch v2, seulement sur l'observabilite fichier.

Perimetre de cette action future :

- obtenir au moins `ack.json` ou `error.json` depuis Max pour `ping` ;
- verifier la resolution du chemin du script par `node.script` ;
- tenter `request_state` seulement apres une reponse observable a `ping` ;
- valider `ack.json`, `error.json`, `harness-session.jsonl` et `state.current.json` par les scripts PowerShell si ces fichiers sont produits ;
- rester dans `projects/max/_harness/` ;
- laisser le patch 01 inchange.

Limite :

Cette suite ne devra pas lancer Ableton, ne devra pas faire de Node for Max une architecture finale et ne devra pas presenter l'observabilite comme validation Max, audio, DSP ou musicale.

Condition d'arret :

Arreter si la suite demande de lancer Max hors smoke test strictement borne du patch v1, de lancer Ableton, de modifier le patch 01, de modifier `reprise/` hors document explicitement demande, de produire un mapping, une UI de performance, un asset, une sample bank, un seuil numerique, un objet Max final, un routage final, un nouvel audit ou une validation musicale.
