# START_HERE_VESPERARE

Statut : point d'entree court pour reprendre Vesperare dans une nouvelle conversation apres PR #40.
Perimetre : navigation, etat courant et prudence de reprise ; sans validation audio, DSP, musicale ou architecturale.

## Objet

Ce fichier sert a reprendre le repo sans relire tout le corpus et sans appliquer une regle d'une phase ancienne comme interdiction generale hors contexte.

## Ordre de lecture minimal

1. `docs/START_HERE_VESPERARE.md`
2. `docs/reprise/05_NEXT_ACTIONS.md`
3. `docs/PROJECT_ROADMAP_VESPERARE.md`
4. `docs/AI_WORKFLOW_CONTRACT.md`
5. `projects/max/MANIFEST_MAX_PATCHES.md`
6. `tools/vesperare-harness/README.md`
7. `projects/max/_harness/README.md`
8. `docs/reprise/39_TRACE_STABILISATION_RUNTIME_HARNESS_MAX_CODEX.md`

Pour une reprise musicale ou methodologique plus large, revenir ensuite a `README.md` et `docs/00_INDEX_METHODE_DECISIONS.md`.

## Mode de reprise

Les regles de pilotage doivent etre relues avec l'etat courant du repo.

Pour Codex, `AGENTS.md` contient les regles operationnelles actives du repo.

Certaines regles ont ete posees pour une phase precise ; elles peuvent devoir etre confirmees, assouplies ou remplacees quand le contexte change.

Avant d'executer une prochaine action, verifier les traces recentes et l'etat Git reel.

## Etat actuel

Fait :

- PR #40 rend le smoke Max/Codex reproductible via `tools/vesperare-harness/powershell/Invoke-VesperareMaxHarnessSmoke.ps1`.
- Le harness Max/Codex est un outil d'observabilite technique borne.
- Le patch minimal `projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat` existe, mais reste non valide par Max, non valide musicalement et non architectural.
- Le patch source v2 ne contient pas de chemin absolu local committe ; le smoke utilise un patch temporaire ignore sous `.codex_tmp/`.

Inference :

Le repo peut etre repris dans une nouvelle conversation sans refaire la phase de stabilisation du harness.

## Ce qui est valide

- L'existence du flux local harness commandes/logs/state.
- La commande smoke Max/Codex bornee pour `ping` et `request_state`, si `VESPERARE_MAX_EXE` pointe vers Max.
- La separation du harness dans `projects/max/_harness/`.
- La separation entre observabilite technique et noyau musical.

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

Reprendre par la conception concrete du noyau systeme didgeridoo/PC.

Cette action doit partir de l'etat reel du repo et des fichiers de pilotage actuels. Si une trace recente rend une ancienne prochaine action obsolete, mettre a jour le pilotage avant de continuer.

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
