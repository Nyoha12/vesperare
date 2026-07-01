# Integration Max harness fichiers v0

Statut : conception d'integration Max-side fichier pour le harness commandes/logs.
Date : 2026-07-01.
Perimetre : spec d'observabilite et de contrat fichier ; sans patch Max, sans `.maxpat`, sans lancement Max, sans lancement Ableton, sans UI, sans mapping, sans asset, sans sample bank, sans seuil numerique, sans objet Max final, sans routage final et sans validation audio, DSP, technique ou musicale.

## Sources consultees

Fait :

- `README.md`
- `docs/00_INDEX_METHODE_DECISIONS.md`
- `docs/45_REPRISE_DEPUIS_FICHE_MESURES_INSTRUMENTS.md`
- `docs/42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md`
- `docs/modules/18_CONTEXTUAL_CONTROL_ROUTER_AMPLITUDES_LIMITES_OVERRIDE_ADDENDUM.md`
- `docs/assets/00_ASSETS_INDEX.md`
- `docs/assets/15_DONNEES_INSTRUMENTALES_MANQUANTES_PRIORITAIRES.md`
- `docs/assets/16_ACOUSTICARCHIVE_MAPPING_DONNEES_VESPERARE.md`
- `docs/PROJECT_ROADMAP_VESPERARE.md`
- `docs/AI_WORKFLOW_CONTRACT.md`
- `docs/specs/CONCEPTION_HARNESS_COMMANDES_LOGS_MAX_CODEX.md`
- `docs/reprise/32_TRACE_HARNESS_LOCAL_STUB_COMMANDES_LOGS_V0.md`
- `docs/reprise/33_TRACE_CONTRAT_STATE_SESSION_HARNESS_FICHIERS_V0.md`
- `docs/reprise/05_NEXT_ACTIONS.md`
- `tools/vesperare-harness/README.md`
- `tools/vesperare-harness/schemas/command.schema.json`
- `tools/vesperare-harness/schemas/log.schema.json`
- `tools/vesperare-harness/schemas/ack.schema.json`
- `tools/vesperare-harness/schemas/error.schema.json`
- `tools/vesperare-harness/schemas/state.schema.json`
- `tools/vesperare-harness/examples/command.request-state.json`
- `tools/vesperare-harness/examples/state.current.sample.json`
- `projects/max/MANIFEST_MAX_PATCHES.md`
- `projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat`

## 1. Objectif

Decision :

Cette spec definit comment un futur patch Max observable pourra lire et ecrire le contrat fichier v0 du harness commandes/logs.

Objectif :

- permettre a Codex CLI ou au harness PowerShell de deposer une commande bornee ;
- permettre a un futur patch Max observable de constater cette commande ;
- produire un accuse de reception ou une erreur explicite ;
- produire des logs JSONL machine-lisibles ;
- exposer un etat courant technique minimal ;
- permettre une verification locale par fichiers, sans lecture visuelle Max comme preuve principale.

Inference :

Cette integration Max-side sert a rendre un futur patch observable. Elle ne transforme pas le flux local v0 en integration Max deja realisee.

## 2. Non-objectifs

Non-objectifs :

- creer un patch Max ;
- creer ou modifier un `.maxpat` ;
- modifier `projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat` ;
- lancer Max ;
- lancer Ableton ;
- valider un chargement Max ;
- valider le DSP ;
- valider l'audio ;
- valider la jouabilite ;
- valider la musicalite ;
- choisir un objet Max final ;
- definir un routage final ;
- definir une architecture finale ;
- produire une UI ;
- produire un mapping ;
- produire un asset ou une sample bank ;
- fixer un seuil numerique ;
- creer un nouvel audit.

Decision :

Le harness reste une couche d'observabilite et de test. Il n'est pas une condition `P0/P1`, `direct/safe`, protection ou `MIN-DID-PC`.

## 3. Flux fichier cible

Convention de fichiers v0 :

```text
command.pending.json
ack.json
error.json
harness-session.jsonl
state.current.json
```

Roles :

- `command.pending.json` : commande courante deposee par Codex CLI ou par le harness PowerShell.
- `ack.json` : reponse positive du futur patch Max observable pour une commande acceptee.
- `error.json` : reponse explicite du futur patch Max observable pour une commande refusee ou echouee.
- `harness-session.jsonl` : journal de session, une ligne JSON par evenement.
- `state.current.json` : dernier etat technique minimal observable, conforme a `tools/vesperare-harness/schemas/state.schema.json`.

Decision :

Ces noms de fichiers sont le contrat v0 cible. Les sous-dossiers exacts restent une convention de rangement future, pas une architecture Max finale.

Chemin de travail possible, non obligatoire et non complet :

```text
projects/max/_harness/
  commands/command.pending.json
  responses/ack.json
  responses/error.json
  logs/harness-session.jsonl
  state/state.current.json
```

Limite :

La creation de sous-dossiers ou de fichiers de session ne vaut pas creation de patch Max, ni validation de Max, ni validation musicale.

## 4. Responsabilites du futur patch Max observable

Le futur patch Max observable devra :

- emettre un evenement `boot` au demarrage de la session observable ;
- lire ou constater `command.pending.json` sans supposer que toute commande est valide ;
- verifier que la commande est parseable et conforme au contrat de base attendu ;
- accepter seulement les commandes minimales autorisees dans cette spec ;
- ecrire soit `ack.json`, soit `error.json` pour chaque commande traitee ;
- ecrire les evenements minimaux dans `harness-session.jsonl` ;
- ecrire ou rafraichir `state.current.json` quand l'etat est demande ou change ;
- conserver un `run_id` coherent dans les reponses et les logs d'une session ;
- reprendre le `command_id` dans les reponses et les logs lies a la commande ;
- expliciter les refus par `error.json` et `command_error` ;
- garder les donnees musicales, audio, DSP et architecturales hors validation.

Interdictions :

- ne pas transformer `request_state` en validation musicale ;
- ne pas transformer `sig_emit` en preuve audio ;
- ne pas rendre `min-did-pc-minimal-01.maxpat` valide par simple observabilite ;
- ne pas choisir d'objet Max final pour satisfaire cette spec.

## 5. Responsabilites du harness PowerShell / Codex

Le harness PowerShell et Codex CLI devront :

- produire ou verifier des commandes JSON conformes au schema existant ;
- deposer une commande dans `command.pending.json` dans une session bornee ;
- lire `ack.json` ou `error.json` sans supposer qu'un timeout valide ou invalide la musique ;
- lire `harness-session.jsonl` ligne par ligne ;
- verifier que les lignes JSONL restent parseables et conformes au contrat de log ;
- verifier que `state.current.json` reste parseable et conforme au contrat de state ;
- verifier que `command_id` et `run_id` relient commande, ack, error et logs ;
- verifier la presence des evenements attendus pour une session testee ;
- reporter les blocages comme blocages d'observabilite, pas comme jugements audio ;
- ne pas lancer Max ni Ableton dans ce contrat ;
- ne pas modifier de `.maxpat`.

Decision :

Codex peut verifier des fichiers, des schemas et des logs. Codex ne valide pas l'audio, le DSP, la musicalite, le chargement Max ou l'architecture.

## 6. Evenements minimaux attendus

Le futur patch Max observable devra pouvoir produire au minimum :

- `boot` : session observable demarree.
- `command_received` : commande constatee et parsee ou analysee.
- `command_ack` : commande acceptee et reponse `ack.json` ecrite ou preparee.
- `command_error` : commande refusee ou echouee et reponse `error.json` ecrite ou preparee.
- `state_snapshot` : `state.current.json` ecrit ou rafraichi.
- `sig_emit` : signalisation technique ou interne exposee comme evenement, sans validation audio ou musicale.
- `log_flush` : point de flush ou de fermeture logique des logs.
- `shutdown` : fin de session observable.

Regle :

Chaque evenement doit etre une ligne JSON conforme a `tools/vesperare-harness/schemas/log.schema.json`.

## 7. Commandes minimales autorisees

Commandes autorisees pour l'integration Max-side v0 :

- `ping`
- `request_state`

`ping` :

- verifie seulement que le futur patch observable peut lire une commande et repondre ;
- produit `ack.json` si la commande est acceptee ;
- produit au moins `command_received` puis `command_ack` dans le log.

`request_state` :

- demande l'ecriture ou le rafraichissement de `state.current.json` ;
- produit `ack.json` si l'etat technique minimal est ecrit ;
- produit au moins `command_received`, `state_snapshot` puis `command_ack` dans le log.
- ne prouve pas que Max est charge, que le DSP fonctionne, que l'audio sort ou que la musique est validee.

Decision :

Les autres types presents dans le schema de commande existant restent hors integration Max-side v0. Un futur patch observable v0 doit les refuser par `error.json`, par exemple avec `unknown_command` ou `blocked_by_policy`, tant qu'une spec ulterieure ne les autorise pas.

## 8. Regles d'ecriture des logs JSONL

Regles :

- un evenement par ligne ;
- une ligne non vide doit etre un objet JSON complet ;
- pas de tableau enveloppant ;
- pas de virgule finale entre les lignes ;
- chaque ligne doit reprendre le schema `vesperare.max_harness.log.v0` ;
- `event_id` doit identifier la ligne de log ;
- `run_id` doit rester stable pour une session ;
- `command_id` doit etre repris quand l'evenement depend d'une commande, sinon `null` ;
- `timestamp` doit etre une date lisible au format `date-time` du schema ;
- `level`, `source`, `event`, `status` et `mode` doivent rester dans les enumerations du schema ;
- `message` doit rester court et explicite ;
- `data` doit rester un objet JSON, meme vide ;
- les logs ne doivent pas contenir de decision musicale implicite ;
- les logs ne doivent pas presenter une observation technique comme validation audio, DSP ou musicale.

Recommandation :

Ecrire les logs de facon append-only pour une session. Si une rotation ou archive devient necessaire, elle devra rester bornee et explicite dans une action future.

## 9. Regles d'ack et d'error

Regles d'ack :

- `ack.json` doit etre conforme a `tools/vesperare-harness/schemas/ack.schema.json` ;
- `status` doit rester `ack` ;
- `accepted` doit rester `true` ;
- `command_id` et `run_id` doivent correspondre a la commande acceptee ;
- `ack.json` signifie que la commande est acceptee au niveau du contrat fichier, pas que Max, l'audio, le DSP ou la musique sont valides.

Regles d'error :

- `error.json` doit etre conforme a `tools/vesperare-harness/schemas/error.schema.json` ;
- `status` doit rester `error` ;
- `command_id` et `run_id` doivent correspondre a la commande refusee quand ils sont lisibles ;
- `error_code` doit rester dans les valeurs du schema existant ;
- `recoverable` doit indiquer si une nouvelle commande peut raisonnablement etre tentee ;
- `message` doit expliquer le refus sans renvoyer a une lecture visuelle Max.

Decision :

Pour une commande traitee, le futur patch observable doit produire une seule reponse finale : `ack.json` ou `error.json`. Un timeout reste une observation externe geree par le harness PowerShell / Codex, pas une validation ou invalidation musicale.

## 10. Etat courant minimal

`state.current.json` est un etat technique minimal conforme a :

```text
tools/vesperare-harness/schemas/state.schema.json
```

Champs minimaux obligatoires :

- `schema` : `vesperare.max_harness.state.v0` ;
- `run_id` : identifiant de session ;
- `updated_at` : horodatage lisible au format `date-time` ;
- `source` : `harness`, `patch` ou `module` ;
- `status` : `ok`, `blocked`, `degraded`, `failed` ou `unknown` ;
- `mode` : `absent`, `off`, `bypass`, `reduit` ou `active` ;
- `last_command_id` : derniere commande liee a l'etat, ou `null` ;
- `last_event` : dernier evenement significatif dans les enumerations de log ;
- `capabilities` : tableau simple de chaines ;
- `errors` : tableau simple de chaines ;
- `message` : court message lisible.

Decision :

`capabilities` et `errors` restent volontairement plats. Ils ne contiennent pas d'objet imbrique, pas de score, pas de seuil, pas de routage, pas de mapping et pas de decision musicale.

Fait :

Le harness local PowerShell peut maintenant produire ce state sans Max via :

```text
tools/vesperare-harness/examples/command.request-state.json
tools/vesperare-harness/powershell/Invoke-VesperareHarnessStub.ps1
tools/vesperare-harness/powershell/Test-VesperareHarnessState.ps1
```

Limite :

`state.current.json` ne doit pas contenir de validation musicale, de score audio, de decision d'architecture, de routage final, de seuil numerique ou de jugement sur le patch 01.

## 11. Conditions d'arret

Arreter et requalifier la phase si la suite demande de :

- creer un `.maxpat` dans cette action ;
- creer un patch Max dans cette action ;
- modifier `projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat` ;
- modifier le dossier racine `reprise/` ;
- lancer Max ;
- lancer Ableton ;
- produire une UI ;
- produire un mapping ;
- produire un asset ou une sample bank ;
- fixer un seuil numerique ;
- choisir un objet Max final ;
- definir un routage final ;
- produire une architecture validee ;
- produire un nouvel audit ;
- presenter cette spec comme validation Max, audio, DSP, technique ou musicale.

## 12. Limites explicites

Limites :

- aucune validation audio ;
- aucune validation DSP ;
- aucune validation musicale ;
- aucune validation architecturale ;
- aucune validation du chargement Max ;
- aucune validation technique du patch 01 ;
- aucune preuve de jouabilite ;
- aucune decision de routage final ;
- aucun choix d'objet Max final.

Decision :

Cette spec est un contrat d'integration fichier v0 pour une future observabilite Max-side. Elle ne prouve pas encore une integration Max.

## 13. Future action possible

Recommandation :

Apres cette spec, une action future pourra creer une lib Max observable ou un patch `02` observable seulement si :

- la spec reste conforme aux limites ci-dessus ;
- le travail est explicitement borne a l'observabilite ;
- le patch 01 reste inchange et non valide ;
- aucun objet Max final, routage final, seuil numerique, mapping, UI, asset ou sample bank n'est produit ;
- la sortie est presentee comme artefact observable provisoire, pas comme validation Max, audio, DSP ou musicale.
