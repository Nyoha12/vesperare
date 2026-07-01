# Roadmap projet Vesperare

Statut : pilotage global de construction apres reprise documentaire, trace 28, flux local harness v0, integration Max-side fichiers v0 et contrat state/session local v0.
Date : 2026-07-01.
Perimetre : document de pilotage ; sans patch Max nouveau, sans lancement Max, sans UI, sans mapping, sans asset, sans sample bank, sans seuil numerique et sans validation musicale.

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
- `docs/specs/INTEGRATION_MAX_HARNESS_FICHIERS_V0.md`
- `projects/max/_harness/README.md`
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

L'integration Max-side fichier v0 est maintenant en cours de conception dans :

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

Limite :

Cette conception ne cree pas de patch Max, ne cree pas de `.maxpat`, ne lance pas Max, ne lance pas Ableton, ne modifie pas le patch 01 et ne valide ni Max, ni l'audio, ni le DSP, ni la musique, ni une architecture.

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

Livrables futurs possibles, non produits maintenant :

- lib Max observable future ;
- patch Max observable futur, par exemple un patch `02` observable ;
- trace de chargement Max instrumentee ;
- smoke test GUI ponctuel par Codex Computer Use, seulement si le harness et les logs le justifient ;
- test humain apres observabilite, jamais comme premiere preuve technique.

## 7. Prochaine action minimale

Recommandation :

Apres cette PR, la prochaine action minimale sera de creer un premier artefact Max observable seulement si `docs/specs/INTEGRATION_MAX_HARNESS_FICHIERS_V0.md` et le contrat local `state.current.json` restent conformes.

Options futures possibles :

- une lib Max observable ;
- un patch `02` observable.

Limite :

Cette action future ne devra pas modifier le patch 01, ne devra pas en faire une architecture finale et ne devra pas presenter l'observabilite comme validation Max, audio, DSP ou musicale.

Condition d'arret :

Arreter si la suite demande de lancer Max, de lancer Ableton, de creer un patch, de modifier le `.maxpat`, de modifier `reprise/`, de produire un mapping, une UI, un asset, une sample bank, un seuil numerique, un objet Max final, un routage final, un nouvel audit ou une validation musicale.
