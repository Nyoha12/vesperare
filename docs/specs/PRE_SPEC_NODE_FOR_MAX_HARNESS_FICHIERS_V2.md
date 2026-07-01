# Pre-spec Node for Max harness fichiers v2

Statut : pre-spec d'autorisation locale d'un bridge Node for Max v2 pour le harness fichiers.
Date : 2026-07-01.
Perimetre : couche technique de harness strictement dans `projects/max/_harness/` ; sans modification du patch 01, sans audio, sans DSP, sans musicalite, sans UI de performance, sans mapping, sans asset, sans sample bank, sans seuil numerique, sans objet Max final, sans routage final et sans architecture validee.

## Sources consultees

Fait :

- `docs/reprise/36_TRACE_CREATION_PATCH_MAX_HARNESS_FICHIERS_V1.md`
- `docs/reprise/37_DIAGNOSTIC_LOGS_MAX_PATCH_HARNESS_FICHIERS_V1.md`
- `docs/specs/PRE_SPEC_IMPLEMENTATION_MAX_HARNESS_FICHIERS_V1.md`
- `docs/specs/INTEGRATION_MAX_HARNESS_FICHIERS_V0.md`
- `docs/AI_WORKFLOW_CONTRACT.md`
- `docs/PROJECT_ROADMAP_VESPERARE.md`
- `docs/reprise/05_NEXT_ACTIONS.md`
- `tools/vesperare-harness/README.md`
- `tools/vesperare-harness/schemas/command.schema.json`
- `tools/vesperare-harness/schemas/ack.schema.json`
- `tools/vesperare-harness/schemas/error.schema.json`
- `tools/vesperare-harness/schemas/log.schema.json`
- `tools/vesperare-harness/schemas/state.schema.json`
- `projects/max/_harness/README.md`
- `projects/max/MANIFEST_MAX_PATCHES.md`
- `projects/max/_harness/patches/vesperare-harness-files-v1.maxpat`
- `projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat`
- `C:\Program Files\Cycling '74\Max 9\resources\packages\Node for Max\docs\refpages\node.script.maxref.xml`

## 1. Probleme traite

Fait :

Le patch v1 se lance dans Max assez loin pour produire des logs, mais il ne produit pas les sorties fichier attendues.

Fait :

Les logs v1 montrent notamment :

```text
dict: file not found: ../commands/command.pending.json
text: can't find file v1_ack / v1_error / v1_state / v1_log
technical/not/audio/DSP/append/write: no such object
```

Inference :

L'approche Max `message` / `text` / `dict` du v1 est fragile pour le JSON brut, les chemins relatifs et l'ecriture fiable de fichiers JSON/JSONL.

Decision :

Le v2 peut utiliser Node for Max pour porter seulement la manipulation JSON/fichiers du harness.

## 2. Autorisation locale

Decision :

Node for Max est autorise uniquement dans :

```text
projects/max/_harness/
```

Decision :

Les fichiers autorises par cette pre-spec sont :

```text
projects/max/_harness/node/vesperare-harness-bridge-v2.js
projects/max/_harness/patches/vesperare-harness-node-bridge-v2.maxpat
```

Decision :

Node for Max reste interdit dans :

```text
noyau audio ;
P0/P1 ;
direct/safe ;
protection ;
MIN-DID-PC ;
projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat.
```

Limite :

Cette autorisation ne choisit pas Node for Max comme architecture finale et ne valide pas le patch 01.

## 3. Contrat fichier v2

Decision :

Le bridge v2 doit lire :

```text
projects/max/_harness/commands/command.pending.json
```

Decision :

Le bridge v2 doit ecrire selon le type de commande :

```text
projects/max/_harness/responses/ack.json
projects/max/_harness/responses/error.json
projects/max/_harness/logs/harness-session.jsonl
projects/max/_harness/state/state.current.json
```

Regles :

- accepter seulement `ping` et `request_state` ;
- produire `ack.json` pour une commande acceptee ;
- produire `error.json` pour une commande refusee ou invalide ;
- produire une ligne JSON par evenement dans `harness-session.jsonl` ;
- produire `state.current.json` seulement quand `request_state` le demande ;
- rester conforme aux schemas existants ;
- ne pas utiliser de dependance npm externe ;
- ne pas utiliser reseau ;
- ne pas lancer Ableton ;
- ne pas lire, ouvrir, modifier ou valider le patch 01.

## 4. Bridge Node attendu

Decision :

Le script Node doit fonctionner avec `node.script` dans Max et rester executable hors Max pour verification du contrat fichier.

Comportements attendus :

- determiner le dossier `_harness` depuis l'emplacement du script ;
- creer au besoin les dossiers `responses`, `logs` et `state` ;
- tolerer le BOM UTF-8 possible dans `command.pending.json` ;
- verifier les champs obligatoires de la commande ;
- refuser les commandes hors `ping` et `request_state` ;
- refuser les cibles autres que `harness` ;
- ecrire des JSON sans champs supplementaires au niveau racine ;
- ecrire des logs JSONL append-only ;
- garder les messages de sortie strictement techniques.

Limite :

Le bridge ne doit contenir aucune logique musicale, aucun seuil, aucun mapping, aucune automation expressive et aucune decision d'architecture.

## 5. Patch Max v2 attendu

Decision :

Le patch Max v2 doit rester separe :

```text
projects/max/_harness/patches/vesperare-harness-node-bridge-v2.maxpat
```

Contenu autorise :

- `node.script` pour lancer le bridge ;
- commentaires de perimetre ;
- objets strictement necessaires au declenchement du bridge.

Interdictions :

- `adc~` ;
- `dac~` ;
- `gen~` ;
- `poly~` ;
- `buffer~` ;
- `pfft` / FFT ;
- MC ;
- corpus ;
- plugin ;
- ML ;
- external audio ;
- UI de performance ;
- mapping ;
- asset ;
- sample bank ;
- seuil numerique ;
- routage final ;
- objet Max final.

## 6. Smoke test attendu

Procedure :

```text
deposer command.pending.json ping ;
lancer Max avec le patch v2 seulement ;
collecter ack.json, error.json, harness-session.jsonl et state.current.json ;
valider les fichiers produits avec les scripts PowerShell existants ;
documenter tout blocage si aucun fichier n'est produit.
```

Limite :

Pour `ping`, `state.current.json` n'est pas obligatoire. Il devient attendu pour `request_state`.

## 7. Conditions d'arret

Arreter si la suite tente de :

- modifier `projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat` ;
- utiliser Node for Max hors `_harness` ;
- presenter Node for Max comme architecture finale ;
- tester audio, DSP ou musicalite ;
- lancer Ableton ;
- produire un mapping ;
- produire une UI de performance ;
- creer un asset ou une sample bank ;
- fixer un seuil numerique ;
- choisir un objet Max final ;
- definir un routage final ;
- produire une architecture validee ;
- transformer une sortie de harness en decision musicale.
