# DECISION_PASSAGE_VALIDATION_MACHINE_DOCUMENTAIRE_P0_DIRECT_SAFE_SORTIE

Statut : decision documentaire de passage vers une validation machine documentaire hors Max du schema et de l'exemple `P0-DIRECT / P0-SAFE / P0-SORTIE`.
Date : 2026-07-02.
Perimetre : decision de phase seulement ; sans creation du validateur dans cette action, sans patch Max, sans modification du patch 01, sans lancement Max, sans Ableton, sans audio, sans DSP, sans UI, sans mapping, sans asset, sans sample bank, sans seuil numerique, sans objet Max final, sans routage final et sans architecture validee.

## 1. Objet

Ce document applique la prochaine action minimale issue de :

```text
tools/vesperare-harness/schemas/p0-direct-safe-sortie.observable.schema.json
tools/vesperare-harness/examples/p0-direct-safe-sortie.observable.sample.json
```

Il choisit entre :

- autoriser une validation machine documentaire hors Max ;
- reporter et completer le schema ou l'exemple ;
- refuser le passage si la validation glisse vers runtime, patch, architecture ou musicalite.

## 2. Sources consultees

Fait :

- `docs/START_HERE_VESPERARE.md`
- `docs/reprise/05_NEXT_ACTIONS.md`
- `docs/PROJECT_ROADMAP_VESPERARE.md`
- `docs/specs/CADRAGE_NOYAU_SYSTEME_DIDGERIDOO_PC_POST_HARNESS.md`
- `docs/specs/PRE_SPEC_NOYAU_P0_P1_OBSERVABLE.md`
- `docs/specs/CONTRAT_P0_DIRECT_SAFE_SORTIE.md`
- `docs/specs/DECISION_PASSAGE_ACTION_TECHNIQUE_OBSERVABLE_P0_DIRECT_SAFE_SORTIE.md`
- `docs/specs/CONTRAT_TECHNIQUE_OBSERVABLE_P0_DIRECT_SAFE_SORTIE.md`
- `docs/specs/DECISION_PASSAGE_MATERIALISATION_MACHINE_CONTRAT_P0_DIRECT_SAFE_SORTIE.md`
- `tools/vesperare-harness/schemas/p0-direct-safe-sortie.observable.schema.json`
- `tools/vesperare-harness/examples/p0-direct-safe-sortie.observable.sample.json`
- `tools/vesperare-harness/powershell/Test-VesperareHarnessState.ps1`
- `AGENTS.md`

Limite :

Ce corpus suffit pour autoriser ou refuser une validation machine documentaire.
Il ne suffit pas a valider Max, l'audio, le DSP, la musicalite, le patch 01 ou une architecture.

## 3. Verification des conditions

| Condition | Statut | Justification |
|---|---|---|
| cible documentaire nommee | OK | schema et exemple P0 direct/safe/sortie existent |
| contrat source nomme | OK | `CONTRAT_TECHNIQUE_OBSERVABLE_P0_DIRECT_SAFE_SORTIE.md` |
| artefacts machine-lisibles produits | OK | schema JSON et exemple JSON |
| besoin de validation borne | OK | verifier forme, champs, modes, fallback, SIG, preuves interdites |
| patch requis | NON | aucune action Max ou `.maxpat` necessaire |
| runtime musical requis | NON | la validation porte sur un document JSON |
| dependance lourde requise | NON | le style existant permet un script PowerShell simple |
| preuve interdite explicite | OK | pas de validation audio, DSP, musicale, architecture, patch 01 |

Inference :

Les conditions documentaires sont remplies pour autoriser un futur validateur documentaire hors Max.

## 4. Decision

Decision :

Autoriser la prochaine action suivante :

```text
produire un validateur documentaire hors Max pour
tools/vesperare-harness/examples/p0-direct-safe-sortie.observable.sample.json
contre
tools/vesperare-harness/schemas/p0-direct-safe-sortie.observable.schema.json
```

Decision :

Cette autorisation vaut seulement pour une validation de forme documentaire et d'invariants machine-lisibles.

Elle n'autorise pas :

- patch Max ;
- lancement Max ;
- modification du patch 01 ;
- runtime musical ;
- mapping ;
- UI ;
- asset ;
- sample bank ;
- seuil numerique ;
- objet Max final ;
- routage final ;
- architecture validee ;
- validation audio, DSP ou musicale.

## 5. Forme autorisee du validateur futur

Fichier autorise pour la prochaine action :

```text
tools/vesperare-harness/powershell/Test-VesperareP0DirectSafeSortieObservable.ps1
```

Fichiers pouvant etre mis a jour si necessaire :

```text
tools/vesperare-harness/README.md
docs/START_HERE_VESPERARE.md
docs/reprise/05_NEXT_ACTIONS.md
docs/PROJECT_ROADMAP_VESPERARE.md
```

Contraintes du validateur futur :

- lire un chemin JSON fourni en parametre ;
- parser un seul objet JSON ;
- verifier les proprietes requises ;
- refuser les proprietes racine non supportees ;
- verifier les enums du contrat observable ;
- verifier que `P0-DIRECT`, `P0-SAFE` et `P0-SORTIE` sont presents ;
- verifier que les modes `absent`, `off`, `bypass`, `reduit` restent representables ;
- verifier que fallback et SIG sont nommes ;
- verifier que les preuves interdites sont explicites ;
- sortir `OK` seulement pour une conformite documentaire ;
- ne jamais lancer Max ;
- ne jamais modifier un fichier.

Decision :

Le validateur futur doit rester dans le style des validateurs PowerShell existants du harness.
Il ne doit pas introduire npm, AJV, Node, external, plugin, service reseau ou dependance runtime.

## 6. Preuve possible

Preuve possible de la prochaine action :

- le script existe au chemin autorise ;
- l'exemple JSON passe le validateur ;
- un JSON volontairement invalide peut echouer si un test negatif est ajoute plus tard ;
- le README mentionne le validateur comme documentaire ;
- le pilotage est mis a jour si le validateur est produit.

Preuve strictement limitee :

```text
le schema et l'exemple respectent des contraintes documentaires machine-lisibles.
```

## 7. Preuve interdite

Interdit de conclure que :

- le direct sonne ;
- le safe est musicalement satisfaisant ;
- la sortie est audio ou DSP validee ;
- Max charge le patch 01 ;
- le patch 01 est jouable ;
- le noyau musical est valide ;
- l'architecture est validee ;
- le routage final existe ;
- un objet Max final est choisi.

## 8. Fichiers interdits

Interdits dans la prochaine action :

- `projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat` ;
- tout nouveau `.maxpat` source ;
- tout fichier sous `reprise/` racine ;
- tout audit niveau 6 source ;
- toute matrice niveau 6 recreee ;
- tout fichier de mapping, UI, asset, sample bank, seuil numerique, routage final ou objet Max final.

## 9. Conditions d'arret

Arreter si la suite tente de :

- produire le validateur dans la meme action que cette decision ;
- lancer Max ;
- lancer Ableton ;
- modifier un patch ;
- creer un patch ;
- faire de Node for Max une condition de `P0-DIRECT`, `P0-SAFE` ou `P0-SORTIE` ;
- introduire npm, AJV, service reseau, plugin, external ou dependance lourde ;
- transformer une validation JSON en validation musicale ;
- transformer une validation documentaire en architecture ;
- demander a Yohan de valider une architecture non instruite.

## 10. Prochaine action minimale

Recommandation :

Produire le validateur documentaire hors Max autorise :

```text
tools/vesperare-harness/powershell/Test-VesperareP0DirectSafeSortieObservable.ps1
```

Sortie attendue :

- script PowerShell documentaire ;
- verification positive de `tools/vesperare-harness/examples/p0-direct-safe-sortie.observable.sample.json` ;
- mention README courte ;
- pilotage mis a jour ;
- aucune modification de patch ;
- aucun lancement Max ;
- aucune validation audio, DSP ou musicale.
