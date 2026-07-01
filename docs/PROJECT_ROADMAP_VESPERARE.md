# Roadmap projet Vesperare

Statut : pilotage global de construction apres reprise documentaire et trace 28.
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

Le squelette v0 cote fichiers existe dans :

```text
tools/vesperare-harness/
```

Il contient schemas, exemples et scripts PowerShell limites a la creation et a la verification de fichiers JSON/JSONL. Il n'integre pas Max et ne modifie pas le patch 01.

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

Livrables de la phase actuelle :

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
- `tools/vesperare-harness/examples/command.ping.json`
- `tools/vesperare-harness/examples/log.session.sample.jsonl`
- `tools/vesperare-harness/powershell/New-VesperareHarnessCommand.ps1`
- `tools/vesperare-harness/powershell/Test-VesperareHarnessLog.ps1`

Livrables futurs possibles, non produits maintenant :

- convention de fichiers JSONL ;
- patch Max observable futur ;
- trace de chargement Max instrumentee ;
- smoke test GUI ponctuel par Codex Computer Use, seulement si le harness et les logs le justifient ;
- test humain apres observabilite, jamais comme premiere preuve technique.

## 7. Prochaine action minimale

Recommandation :

Relire le squelette v0 du harness commandes/logs Max <-> Codex, puis seulement ensuite decider si un patch observable futur doit etre cree pour produire des logs machine-lisibles.

Condition d'arret :

Arreter si la suite demande de lancer Max, de lancer Ableton, de creer un patch, de modifier le `.maxpat`, de modifier `reprise/`, de produire un mapping, une UI, un asset, une sample bank, un seuil numerique, un objet Max final, un routage final, un nouvel audit ou une validation musicale.
