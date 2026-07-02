# START_HERE_VESPERARE

Statut : point d'entree court pour reprendre Vesperare apres PR #40, cadrage post-harness, pre-spec P0/P1 observable, contrat P0 direct/safe/sortie, decision de passage technique observable, contrat technique observable P0, decision de materialisation machine-lisible bornee, materialisation schema/exemple P0, decision de validation machine documentaire, validateur documentaire P0 et decision de saut du test negatif documentaire vers `P0-ECOUTE-01`.
Date : 2026-07-02.
Perimetre : navigation, etat courant et prudence de reprise ; sans validation audio, DSP, musicale ou architecturale.

## Objet

Ce fichier sert a reprendre le repo sans relire tout le corpus et sans appliquer une regle d'une phase ancienne comme interdiction generale hors contexte.

## Ordre de lecture minimal

1. `docs/START_HERE_VESPERARE.md`
2. `docs/reprise/05_NEXT_ACTIONS.md`
3. `docs/PROJECT_ROADMAP_VESPERARE.md`
4. `docs/specs/CADRAGE_NOYAU_SYSTEME_DIDGERIDOO_PC_POST_HARNESS.md`
5. `docs/specs/PRE_SPEC_NOYAU_P0_P1_OBSERVABLE.md`
6. `docs/specs/CONTRAT_P0_DIRECT_SAFE_SORTIE.md`
7. `docs/specs/DECISION_PASSAGE_ACTION_TECHNIQUE_OBSERVABLE_P0_DIRECT_SAFE_SORTIE.md`
8. `docs/specs/CONTRAT_TECHNIQUE_OBSERVABLE_P0_DIRECT_SAFE_SORTIE.md`
9. `docs/specs/DECISION_PASSAGE_MATERIALISATION_MACHINE_CONTRAT_P0_DIRECT_SAFE_SORTIE.md`
10. `tools/vesperare-harness/schemas/p0-direct-safe-sortie.observable.schema.json`
11. `tools/vesperare-harness/examples/p0-direct-safe-sortie.observable.sample.json`
12. `docs/specs/DECISION_PASSAGE_VALIDATION_MACHINE_DOCUMENTAIRE_P0_DIRECT_SAFE_SORTIE.md`
13. `tools/vesperare-harness/powershell/Test-VesperareP0DirectSafeSortieObservable.ps1`
14. `docs/specs/DECISION_SAUT_TEST_NEGATIF_ET_PASSAGE_P0_ECOUTE_01.md`
15. `docs/AI_WORKFLOW_CONTRACT.md`
16. `projects/max/MANIFEST_MAX_PATCHES.md`
17. `tools/vesperare-harness/README.md`
18. `projects/max/_harness/README.md`
19. `docs/reprise/39_TRACE_STABILISATION_RUNTIME_HARNESS_MAX_CODEX.md`

Pour une reprise musicale ou methodologique plus large, revenir ensuite a `README.md` et `docs/00_INDEX_METHODE_DECISIONS.md`.

## Mode de reprise

Les regles de pilotage doivent etre relues avec l'etat courant du repo.

Pour Codex, `AGENTS.md` contient les regles operationnelles actives du repo.

Pour merger une PR depuis Codex, utiliser `tools/github/Merge-CleanPrSquash.ps1` ; ne pas utiliser `gh pr merge`.

Certaines regles ont ete posees pour une phase precise ; elles peuvent devoir etre confirmees, assouplies ou remplacees quand le contexte change.

Avant d'executer une prochaine action, verifier les traces recentes et l'etat Git reel.

## Etat actuel

Fait :

- PR #40 rend le smoke Max/Codex reproductible via `tools/vesperare-harness/powershell/Invoke-VesperareMaxHarnessSmoke.ps1`.
- Le harness Max/Codex est un outil d'observabilite technique borne.
- Le cadrage post-harness du noyau systeme didgeridoo/PC existe dans `docs/specs/CADRAGE_NOYAU_SYSTEME_DIDGERIDOO_PC_POST_HARNESS.md`.
- La pre-spec courte du noyau P0/P1 observable existe dans `docs/specs/PRE_SPEC_NOYAU_P0_P1_OBSERVABLE.md`.
- Le contrat documentaire `P0-DIRECT / P0-SAFE / P0-SORTIE` existe dans `docs/specs/CONTRAT_P0_DIRECT_SAFE_SORTIE.md`.
- La decision documentaire de passage vers une action technique observable bornee existe dans `docs/specs/DECISION_PASSAGE_ACTION_TECHNIQUE_OBSERVABLE_P0_DIRECT_SAFE_SORTIE.md`.
- Le contrat technique observable minimal `P0-DIRECT / P0-SAFE / P0-SORTIE` existe dans `docs/specs/CONTRAT_TECHNIQUE_OBSERVABLE_P0_DIRECT_SAFE_SORTIE.md`.
- La decision documentaire de passage vers une materialisation machine-lisible bornee existe dans `docs/specs/DECISION_PASSAGE_MATERIALISATION_MACHINE_CONTRAT_P0_DIRECT_SAFE_SORTIE.md`.
- Le schema machine-lisible documentaire existe dans `tools/vesperare-harness/schemas/p0-direct-safe-sortie.observable.schema.json`.
- L'exemple JSON conforme existe dans `tools/vesperare-harness/examples/p0-direct-safe-sortie.observable.sample.json`.
- La decision documentaire de passage vers une validation machine documentaire hors Max existe dans `docs/specs/DECISION_PASSAGE_VALIDATION_MACHINE_DOCUMENTAIRE_P0_DIRECT_SAFE_SORTIE.md`.
- Le validateur documentaire hors Max existe dans `tools/vesperare-harness/powershell/Test-VesperareP0DirectSafeSortieObservable.ps1`.
- La decision strategique de reporter le test negatif documentaire et de passer vers `P0-ECOUTE-01` existe dans `docs/specs/DECISION_SAUT_TEST_NEGATIF_ET_PASSAGE_P0_ECOUTE_01.md`.
- Le patch minimal `projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat` existe, mais reste non valide par Max, non valide musicalement et non architectural.
- Le patch source v2 ne contient pas de chemin absolu local committe ; le smoke utilise un patch temporaire ignore sous `.codex_tmp/`.

Inference :

Le repo peut etre repris dans une nouvelle conversation sans refaire la phase de stabilisation du harness, sans refaire le cadrage global du noyau systeme, sans refaire la pre-spec P0/P1 observable, sans refaire le contrat P0 direct/safe/sortie, sans refaire la decision de passage technique observable, sans refaire le contrat technique observable P0, sans refaire la decision de materialisation machine-lisible, sans rematerialiser le schema/exemple P0, sans refaire la decision de validation machine documentaire, sans reproduire le validateur documentaire P0 et sans produire maintenant le test negatif documentaire.

## Ce qui est valide

- L'existence du flux local harness commandes/logs/state.
- La commande smoke Max/Codex bornee pour `ping` et `request_state`, si `VESPERARE_MAX_EXE` pointe vers Max.
- La separation du harness dans `projects/max/_harness/`.
- La separation entre observabilite technique et noyau musical.
- Le cadrage documentaire non implementatoire du noyau systeme didgeridoo/PC post-harness.
- La pre-spec documentaire non implementatoire du noyau P0/P1 observable.
- Le contrat documentaire non implementatoire `P0-DIRECT / P0-SAFE / P0-SORTIE`.
- La decision documentaire autorisant une prochaine action technique observable strictement bornee.
- Le contrat technique observable minimal, pre-machine et non implementatoire, pour `P0-DIRECT / P0-SAFE / P0-SORTIE`.
- La decision documentaire autorisant une materialisation machine-lisible limitee a un schema et un exemple.
- L'existence du schema JSON documentaire et de l'exemple conforme pour `P0-DIRECT / P0-SAFE / P0-SORTIE`.
- La decision documentaire autorisant un futur validateur documentaire hors Max, sans le produire dans la meme action.
- L'existence du validateur documentaire hors Max pour `P0-DIRECT / P0-SAFE / P0-SORTIE`.
- La decision strategique de reporter le test negatif documentaire et de passer vers une reconnaissance locale courte `P0-ECOUTE-01`.

## Ce qui n'est pas valide

- Audio.
- DSP.
- Musicalite.
- Architecture Max finale.
- Routage final.
- Objet Max final.
- Mapping.
- UI.
- Asset ou sample bank.
- Validation du patch 01.
- Validation du noyau musical didgeridoo/PC.

## Prochaine action recommandee

Realiser ou preparer localement une reconnaissance courte et non validante :

```text
P0-ECOUTE-01
```

Le test negatif documentaire du validateur est reporte. Il ne doit pas devenir la prochaine grande phase.

`P0-ECOUTE-01` doit seulement chercher une information sonore minimale : direct perceptible, sortie simple nommee, safe/mute/bypass possible, latence ressentie, feedback ou masquage immediat. Elle ne doit pas creer de patch, modifier le patch 01, lancer Max depuis une action documentaire, choisir d'objets Max finaux, de routage final, de mapping, d'UI, d'asset, de seuil numerique ou d'architecture validee. Elle ne valide pas l'audio, le DSP, la musicalite, le patch 01 ou le noyau musical.

## Smoke Max/Codex

Prerequis local :

```powershell
$env:VESPERARE_MAX_EXE = "C:\Program Files\Cycling '74\Max 9\Max.exe"
```

Commandes :

```powershell
powershell -ExecutionPolicy Bypass -File tools/vesperare-harness/powershell/Invoke-VesperareMaxHarnessSmoke.ps1 -Type ping
powershell -ExecutionPolicy Bypass -File tools/vesperare-harness/powershell/Invoke-VesperareMaxHarnessSmoke.ps1 -Type request_state
```

Ce smoke peut observer le contrat fichier du harness. Il ne valide pas l'audio, le DSP, le patch 01, l'architecture ou la musicalite.

## Regles de prudence simples

- Chercher d'abord le document existant qui sert deja de lieu de tri.
- Ne pas modifier `reprise/` racine sans demande explicite.
- Ne pas creer de nouveau patch, mapping, UI, asset, sample bank, seuil numerique, routage final ou architecture validee sans demande explicite.
- Ne pas faire du harness le noyau musical.
- Ne pas transformer une sortie Codex, un smoke technique ou une lecture JSON en validation musicale.
- Des permissions techniques larges ne changent pas le perimetre projet.
