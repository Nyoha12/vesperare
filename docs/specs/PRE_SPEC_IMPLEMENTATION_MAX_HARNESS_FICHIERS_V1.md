# Pre-spec implementation Max harness fichiers v1

Statut : pre-spec d'implementation Max-side minimale du harness fichiers v1.
Date : 2026-07-01.
Perimetre : preparation documentaire d'un futur patch Max separe ; sans creation de `.maxpat`, sans modification de `.maxpat`, sans lancement Max, sans lancement Ableton, sans UI, sans mapping, sans asset, sans sample bank, sans seuil numerique, sans choix d'objet Max final, sans routage final et sans validation Max, audio, DSP, technique, architecturale ou musicale.

## Sources consultees

Fait :

- `docs/PROJECT_ROADMAP_VESPERARE.md`
- `docs/AI_WORKFLOW_CONTRACT.md`
- `docs/specs/CONCEPTION_HARNESS_COMMANDES_LOGS_MAX_CODEX.md`
- `docs/specs/INTEGRATION_MAX_HARNESS_FICHIERS_V0.md`
- `docs/reprise/34_TRACE_ARTEFACT_MAX_OBSERVABLE_HARNESS_FICHIERS_V0.md`
- `docs/reprise/33_TRACE_CONTRAT_STATE_SESSION_HARNESS_FICHIERS_V0.md`
- `docs/reprise/05_NEXT_ACTIONS.md`
- `tools/vesperare-harness/README.md`
- `tools/vesperare-harness/schemas/command.schema.json`
- `tools/vesperare-harness/schemas/ack.schema.json`
- `tools/vesperare-harness/schemas/error.schema.json`
- `tools/vesperare-harness/schemas/log.schema.json`
- `tools/vesperare-harness/schemas/state.schema.json`
- `projects/max/_harness/README.md`
- `projects/max/MANIFEST_MAX_PATCHES.md`
- `projects/max/_harness/patches/vesperare-harness-file-observer-v0.maxpat`
- `projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat`

## 1. Statut de l'artefact v0

Fait :

L'artefact Max-side observable v0 existe :

```text
projects/max/_harness/patches/vesperare-harness-file-observer-v0.maxpat
```

Fait :

Cet artefact est comment-only. Il contient uniquement des boites `comment` et aucune ligne de patch.

Fait :

Il ne lit pas de fichier, n'ecrit pas de fichier, ne traite aucune commande, ne lance pas Max, ne lance pas Ableton et ne modifie pas le patch 01.

Decision :

Le v0 reste un artefact documentaire observable. Il ne vaut pas implementation Max-side du harness fichiers.

Limite :

Sa lisibilite JSON n'est pas une validation Max, audio, DSP, technique, architecturale ou musicale.

## 2. Objectif du futur v1

Decision :

Le futur v1 pourra etre un patch Max harness fichiers separe, strictement borne a l'implementation minimale du contrat fichier deja documente.

Objectif minimal :

- lire ou importer `command.pending.json` ;
- accepter seulement `ping` et `request_state` ;
- produire `ack.json` pour une commande acceptee ;
- produire `error.json` pour une commande refusee ou echouee ;
- produire `harness-session.jsonl` avec une ligne JSON par evenement ;
- produire ou rafraichir `state.current.json` pour `request_state`.

Inference :

Cette implementation minimale sert a passer du commentaire observable vers une observabilite fichier executable cote Max. Elle ne cree pas de validation musicale et ne rend pas le patch 01 valide.

## 3. Objets Max candidats provisoires

Decision :

Les seuls objets Max autorises pour l'investigation v1 sont des candidats provisoires et bornes :

- `dict`
- `text`
- `message`
- `trigger`
- `route` / `select`
- `loadbang`
- `deferlow` si necessaire

Inference :

Ces objets correspondent a des operations de lecture, stockage, declenchement, tri de messages et ordonnancement basique. Ils sont compatibles avec une investigation fichier non audio et non DSP.

Decision :

Aucun de ces objets n'est choisi comme objet final par cette pre-spec.

Raison :

- le v1 n'est pas encore cree ;
- aucun chargement Max n'a ete realise dans cette action ;
- la robustesse de lecture/ecriture JSON cote Max n'est pas encore observee ;
- l'ordre exact des messages et la strategie d'ecriture restent a tester dans un futur patch separe ;
- le contrat fichier prime sur la forme interne du patch.

Recommandation :

Le futur patch v1 devra garder les objets visibles et minimaux, avec un marquage documentaire minimal pour leur statut provisoire, sans transformer cette pre-spec en routage final.

## 4. Objets et domaines interdits

Interdictions :

- `adc~` / `dac~` ;
- `gen~` ;
- `poly~` ;
- MC ;
- `buffer~` ;
- `pfft` / FFT ;
- corpus ;
- plugin ;
- ML ;
- externals ;
- UI de performance ;
- mapping ;
- asset ;
- sample bank.

Decision :

Ces interdictions restent valables pour la creation future du patch Max harness fichiers v1.

Limite :

Le futur v1 ne doit pas devenir un module audio, un prototype musical, une architecture Max generale ou une couche de performance.

## 5. Strategie fichier proposee

Decision :

Le futur v1 devra rester dans le perimetre `projects/max/_harness/`.

Chemins relatifs proposes :

```text
projects/max/_harness/commands/command.pending.json
projects/max/_harness/responses/ack.json
projects/max/_harness/responses/error.json
projects/max/_harness/logs/harness-session.jsonl
projects/max/_harness/state/state.current.json
```

Inference :

Ces chemins reprennent les conventions du contrat v0 et evitent de melanger le harness avec `projects/max/min-did-pc-minimal/`.

Limite :

Ces chemins ne definissent pas une architecture Max finale. Ils sont une convention de travail pour un futur patch separe.

## 6. Comportement minimal pour `ping`

Decision :

Pour `ping`, le futur v1 devra seulement prouver la chaine fichier minimale :

```text
command.pending.json -> lecture Max-side -> ack.json -> harness-session.jsonl
```

Comportement attendu :

- lire une commande parseable de type `ping` ;
- reprendre `command_id` et `run_id` dans la reponse ;
- produire `ack.json` conforme au contrat existant ;
- produire au minimum les evenements `command_received` et `command_ack` dans `harness-session.jsonl` ;
- ne pas produire `state.current.json` comme preuve obligatoire pour `ping`.

Limite :

`ping` ne valide pas Max, l'audio, le DSP, le patch 01, une architecture ou la musicalite.

## 7. Comportement minimal pour `request_state`

Decision :

Pour `request_state`, le futur v1 devra produire un etat technique minimal en plus de l'ack.

Comportement attendu :

- lire une commande parseable de type `request_state` ;
- reprendre `command_id` et `run_id` dans la reponse et le state ;
- produire `state.current.json` conforme a `tools/vesperare-harness/schemas/state.schema.json` ;
- produire `ack.json` conforme au contrat existant ;
- produire au minimum les evenements `command_received`, `state_snapshot` et `command_ack` dans `harness-session.jsonl`.

Limite :

`state.current.json` reste un etat technique. Il ne contient pas de score audio, seuil numerique, routage final, mapping, asset, sample bank, validation musicale ou validation du patch 01.

## 8. Commande refusee

Decision :

Toute commande autre que `ping` ou `request_state` devra etre refusee dans le futur v1 tant qu'une spec ulterieure ne l'autorise pas.

Comportement attendu :

- ne pas executer la commande ;
- produire `error.json` conforme a `tools/vesperare-harness/schemas/error.schema.json` ;
- utiliser un `error_code` du schema existant, par exemple `unknown_command` ou `blocked_by_policy` selon le cas ;
- produire `command_received` puis `command_error` dans `harness-session.jsonl` ;
- conserver `run_id` et `command_id` quand ils sont lisibles.

Limite :

Le refus d'une commande est une protection du contrat fichier. Ce n'est pas une decision musicale.

## 9. Logs obligatoires

Decision :

Le futur v1 devra produire `harness-session.jsonl`.

Evenements minimaux attendus :

- `boot` au demarrage observable du patch ;
- `command_received` pour une commande lue ou analysee ;
- `command_ack` pour une commande acceptee ;
- `command_error` pour une commande refusee ou echouee ;
- `state_snapshot` pour `request_state` ;
- `log_flush` quand un point de flush logique est atteint ;
- `shutdown` si une fermeture observable est implementee sans depasser le perimetre.

Regles :

- une ligne JSON par evenement ;
- aucune enveloppe tableau ;
- aucune virgule finale entre lignes ;
- chaque ligne conforme a `tools/vesperare-harness/schemas/log.schema.json` ;
- aucun message de log ne doit presenter une observation technique comme validation Max, audio, DSP ou musicale.

## 10. State minimal

Decision :

Le state minimal du futur v1 reste celui du schema existant :

- `schema`
- `run_id`
- `updated_at`
- `source`
- `status`
- `mode`
- `last_command_id`
- `last_event`
- `capabilities`
- `errors`
- `message`

Recommandation :

Pour un premier v1, `capabilities` et `errors` doivent rester des tableaux simples de chaines.

Limite :

Le state minimal ne doit pas contenir de seuil numerique, parametre musical, routage final, mapping, asset, sample bank ou jugement artistique.

## 11. Limites explicites

Limites :

- pas de validation Max ;
- pas de validation audio ;
- pas de validation DSP ;
- pas de validation musicale ;
- pas de validation technique du patch 01 ;
- pas de validation architecturale ;
- pas de choix d'objet Max final ;
- pas de routage final ;
- pas de seuil numerique ;
- pas de mapping ;
- pas d'asset ;
- pas de sample bank ;
- pas d'UI de performance.

Decision :

Cette pre-spec autorise seulement la preparation de la prochaine implementation Max-side minimale. Elle ne cree pas cette implementation.

## 12. Conditions d'arret

Arreter si la suite tente de :

- creer un `.maxpat` dans cette action ;
- modifier un `.maxpat` existant dans cette action ;
- modifier `projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat` ;
- lancer Max ;
- lancer Ableton ;
- introduire `adc~`, `dac~`, `gen~`, `poly~`, MC, `buffer~`, `pfft` / FFT, externals, plugin, corpus ou ML ;
- produire UI de performance, mapping, asset ou sample bank ;
- fixer un seuil numerique ;
- choisir un objet Max final ;
- definir un routage final ;
- produire une architecture validee ;
- presenter le futur v1 comme validation Max, audio, DSP, technique, architecturale ou musicale.

## 13. Prochaine action exacte

Decision :

La prochaine action exacte, seulement si cette pre-spec reste conforme, est :

```text
creer un patch Max harness fichiers v1 separe dans projects/max/_harness/,
strictement borne a lire command.pending.json, repondre ping/request_state,
produire ack.json ou error.json, ecrire harness-session.jsonl et produire
state.current.json, sans modifier le patch 01 et sans validation Max, audio,
DSP, technique, architecturale ou musicale.
```

Recommandation :

Cette action future devra reprendre les interdictions de la presente pre-spec et verifier les `.maxpat` existants inchanges.
