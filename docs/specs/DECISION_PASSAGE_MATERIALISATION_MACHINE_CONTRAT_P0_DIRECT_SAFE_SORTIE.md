# DECISION_PASSAGE_MATERIALISATION_MACHINE_CONTRAT_P0_DIRECT_SAFE_SORTIE

Statut : decision documentaire de passage vers une materialisation machine-lisible strictement bornee du contrat technique observable P0.  
Date : 2026-07-02.  
Perimetre : decision de phase seulement ; sans schema JSON produit dans cette action, sans exemple produit dans cette action, sans script, sans validateur, sans patch Max, sans modification du patch 01, sans lancement Max, sans Ableton, sans audio, sans DSP, sans UI, sans mapping, sans asset, sans sample bank, sans seuil numerique, sans objet Max final, sans routage final et sans architecture validee.

## 1. Objet

Ce document applique la prochaine action minimale issue de :

```text
docs/specs/CONTRAT_TECHNIQUE_OBSERVABLE_P0_DIRECT_SAFE_SORTIE.md
```

Il choisit entre :

- autoriser une materialisation machine-lisible strictement bornee ;
- reporter parce que le contrat technique observable est insuffisant ;
- refuser parce que la materialisation risquerait de devenir implementation Max ou architecture.

## 2. Sources consultees

Fait :

- `docs/START_HERE_VESPERARE.md`
- `docs/reprise/05_NEXT_ACTIONS.md`
- `docs/PROJECT_ROADMAP_VESPERARE.md`
- `docs/specs/CONTRAT_P0_DIRECT_SAFE_SORTIE.md`
- `docs/specs/DECISION_PASSAGE_ACTION_TECHNIQUE_OBSERVABLE_P0_DIRECT_SAFE_SORTIE.md`
- `docs/specs/CONTRAT_TECHNIQUE_OBSERVABLE_P0_DIRECT_SAFE_SORTIE.md`
- `tools/vesperare-harness/README.md`
- `tools/vesperare-harness/schemas/command.schema.json`
- `tools/vesperare-harness/schemas/log.schema.json`
- `tools/vesperare-harness/schemas/state.schema.json`
- `AGENTS.md`

Limite :

Ce corpus suffit pour decider une materialisation machine-lisible minimale.  
Il ne suffit pas a valider un runtime, un patch, un routage, un objet Max, l'audio, le DSP, la musicalite ou une architecture.

## 3. Verification des conditions d'entree

| Condition | Statut | Justification |
|---|---|---|
| contrat source nomme | OK | `CONTRAT_TECHNIQUE_OBSERVABLE_P0_DIRECT_SAFE_SORTIE` |
| identifiant documentaire present | OK | `vesperare.p0_direct_safe_sortie.observable.v0` |
| responsabilites presentes | OK | `p0_direct`, `p0_safe`, `p0_sortie` |
| modes representables | OK | `absent`, `off`, `bypass`, `reduit`, `active` |
| status representables | OK | `ok`, `blocked`, `degraded`, `failed`, `unknown` |
| fallback et SIG nommes | OK | fallback et libelles SIG stables par responsabilite |
| preuve machine possible nommee | OK | champs requis, modes, SIG, dependances interdites |
| preuve interdite nommee | OK | audio, DSP, musicalite, patch 01, architecture |
| conditions d'arret nommees | OK | pas de `.maxpat`, pas de Max, pas de routage final |
| separation harness / noyau | OK | le harness peut observer plus tard, mais ne devient pas noyau |

Inference :

Les conditions documentaires sont suffisantes pour autoriser une materialisation machine-lisible minimale.

## 4. Decision

Decision :

Autoriser une future materialisation machine-lisible strictement bornee du contrat :

```text
CONTRAT_TECHNIQUE_OBSERVABLE_P0_DIRECT_SAFE_SORTIE
```

Decision :

Cette future materialisation doit produire seulement :

```text
un schema JSON documentaire ;
un exemple JSON conforme ;
une mise a jour courte du README harness ou du pilotage si necessaire.
```

Decision :

Cette future materialisation ne doit pas produire dans la meme action :

```text
script ;
validateur PowerShell ;
patch Max ;
implementation Max ;
commande runtime ;
smoke Max ;
routage ;
objet Max final ;
architecture.
```

## 5. Fichiers autorises pour la future materialisation

Autorises :

- `tools/vesperare-harness/schemas/p0-direct-safe-sortie.observable.schema.json`
- `tools/vesperare-harness/examples/p0-direct-safe-sortie.observable.sample.json`
- mise a jour ciblee de `tools/vesperare-harness/README.md`, seulement pour declarer le schema et l'exemple comme artefacts documentaires ;
- mise a jour ciblee de pilotage, seulement pour pointer vers la prochaine action apres materialisation.

Interdits dans cette future action :

- `projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat` ;
- tout nouveau `.maxpat` ;
- tout script ou validateur ;
- `reprise/` racine ;
- audit niveau 6 source ;
- matrice niveau 6 absente ou recreee ;
- UI, mapping, asset, sample bank, seuil numerique, routage final ou objet Max final.

## 6. Contraintes du schema futur

Le schema futur devra rester :

- ferme au niveau racine, comme les schemas harness existants ;
- borne aux champs du contrat technique observable ;
- explicite sur les preuves interdites ;
- sans seuil numerique ;
- sans choix de routage ;
- sans objet Max ;
- sans dependance a Node for Max ;
- sans obligation que le harness devienne noyau musical.

Champs minimaux attendus :

- `schema`
- `status`
- `mode`
- `updated_at`
- `source`
- `responsibilities.p0_direct`
- `responsibilities.p0_safe`
- `responsibilities.p0_sortie`
- `proof.machine_checkable`
- `proof.forbidden`

## 7. Contraintes de l'exemple futur

L'exemple futur devra montrer un etat jouable minimal mais non validant :

```text
status global : ok ou degraded ;
mode global : active ou reduit ;
p0_direct present ;
p0_safe disponible ;
p0_sortie disponible ou promue ;
proof.forbidden explicitement renseigne.
```

Limite :

Un exemple conforme ne prouve pas que le direct sonne, que le safe est musicalement satisfaisant ou que la sortie est audio/DSP validee.

## 8. Preuve possible future

Preuve possible apres materialisation :

- le schema existe au chemin autorise ;
- l'exemple existe au chemin autorise ;
- l'exemple declare `vesperare.p0_direct_safe_sortie.observable.v0` ;
- les trois responsabilites sont presentes ;
- les modes et SIG appartiennent aux ensembles autorises ;
- aucune dependance interdite n'est declaree obligatoire.

Preuve interdite :

- cette materialisation ne prouvera pas Max ;
- cette materialisation ne prouvera pas l'audio ;
- cette materialisation ne prouvera pas le DSP ;
- cette materialisation ne prouvera pas la musicalite ;
- cette materialisation ne prouvera pas le patch 01 ;
- cette materialisation ne validera pas l'architecture.

## 9. Conditions d'arret maintenues

Arreter si la suite tente de :

- produire le schema dans cette meme action de decision ;
- produire un validateur ou un script en meme temps que le schema ;
- creer ou modifier un `.maxpat` ;
- modifier `projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat` ;
- lancer Max ;
- lancer Ableton ;
- choisir un objet Max final ;
- choisir un routage final ;
- produire UI, mapping, asset, sample bank ou seuil numerique ;
- rendre Node for Max necessaire au noyau P0 ;
- rendre le harness necessaire au noyau musical ;
- presenter une preuve technique comme validation audio, DSP, musicale ou architecturale.

## 10. Prochaine action minimale

Recommandation :

Materialiser le contrat technique observable P0 par deux artefacts strictement bornes :

```text
tools/vesperare-harness/schemas/p0-direct-safe-sortie.observable.schema.json
tools/vesperare-harness/examples/p0-direct-safe-sortie.observable.sample.json
```

Sortie attendue :

- schema JSON documentaire ;
- exemple JSON conforme ;
- eventuelle mention README courte ;
- pilotage mis a jour ;
- aucun script ;
- aucun validateur ;
- aucun patch ;
- aucun lancement Max.

Limite :

Cette prochaine action ne doit pas valider audio, DSP, musicalite, patch 01 ou architecture. Elle ne doit pas creer de validateur dans la meme action.
