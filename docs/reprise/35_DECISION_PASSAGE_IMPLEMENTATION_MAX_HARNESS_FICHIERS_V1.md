# 35_DECISION_PASSAGE_IMPLEMENTATION_MAX_HARNESS_FICHIERS_V1

Statut : decision de passage vers une implementation Max-side minimale du harness fichiers v1, avec reserves.
Date : 2026-07-01.
Perimetre : decision documentaire ; sans creation de patch, sans creation de `.maxpat`, sans modification de `.maxpat`, sans lancement Max, sans lancement Ableton, sans validation Max, audio, DSP, technique, architecturale ou musicale.

## Sources consultees

Fait :

- `docs/PROJECT_ROADMAP_VESPERARE.md`
- `docs/AI_WORKFLOW_CONTRACT.md`
- `docs/specs/CONCEPTION_HARNESS_COMMANDES_LOGS_MAX_CODEX.md`
- `docs/specs/INTEGRATION_MAX_HARNESS_FICHIERS_V0.md`
- `docs/specs/PRE_SPEC_IMPLEMENTATION_MAX_HARNESS_FICHIERS_V1.md`
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

## 1. Verdict

Decision :

Passage vers implementation Max-side harness fichiers v1 autorise avec reserves.

Reserve principale :

Cette autorisation porte seulement sur une future implementation minimale, separee et observable du contrat fichier. Elle ne valide pas Max, l'audio, le DSP, la technique, l'architecture ou la musique.

## 2. Ce que cette fiche ne fait pas

Fait :

La presente fiche ne cree pas le patch v1.

Fait :

La presente fiche ne cree aucun `.maxpat`.

Fait :

La presente fiche ne modifie aucun `.maxpat`.

Decision :

Elle sert seulement de gate documentaire entre l'artefact comment-only v0 et une future action de creation d'un patch Max harness fichiers v1 separe.

## 3. Patch 01

Fait :

Le patch 01 reste :

```text
projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat
```

Decision :

Le patch 01 reste inchange, non enveloppe, non etendu, non corrige et non valide par cette decision.

Limite :

L'existence d'un futur harness fichiers v1 ne rendra pas le patch 01 valide par Max, valide audio, valide DSP, valide techniquement, valide musicalement ou architectural.

## 4. Bornes strictes du futur patch v1

Decision :

Le futur patch v1, s'il est cree dans une action separee, devra etre borne a :

- lire ou importer `command.pending.json` ;
- accepter seulement `ping` et `request_state` ;
- produire `ack.json` pour une commande acceptee ;
- produire `error.json` pour une commande refusee ou echouee ;
- produire `harness-session.jsonl` ;
- produire ou rafraichir `state.current.json` pour `request_state` ;
- rester dans le perimetre `projects/max/_harness/` ;
- rester separe du patch 01.

Decision :

Les objets Max candidats restent provisoires :

- `dict`
- `text`
- `message`
- `trigger`
- `route` / `select`
- `loadbang`
- `deferlow` si necessaire

Limite :

Cette liste n'est pas un choix d'objets finaux et ne definit pas un routage final.

## 5. Interdictions maintenues

Interdictions :

- ne pas lancer Max dans cette decision ;
- ne pas lancer Ableton ;
- ne pas modifier le patch 01 ;
- ne pas creer ou modifier de `.maxpat` dans cette action ;
- ne pas introduire `adc~` / `dac~` ;
- ne pas introduire `gen~`, `poly~`, MC, `buffer~`, `pfft` / FFT ;
- ne pas introduire corpus, plugin, ML ou externals ;
- ne pas produire UI de performance ;
- ne pas produire mapping ;
- ne pas produire asset ;
- ne pas produire sample bank ;
- ne pas fixer de seuil numerique ;
- ne pas choisir d'objet Max final ;
- ne pas definir de routage final ;
- ne pas produire d'architecture validee ;
- ne pas produire de nouvel audit ;
- ne pas presenter cette decision comme validation Max, audio, DSP, technique, architecturale ou musicale.

## 6. Prochaine action exacte

Decision :

La prochaine action exacte est :

```text
creer un patch Max harness fichiers v1 separe dans projects/max/_harness/,
strictement borne a lire command.pending.json, repondre ping/request_state,
produire ack.json ou error.json, ecrire harness-session.jsonl et produire
state.current.json, sans modifier le patch 01 et sans validation Max, audio,
DSP, technique, architecturale ou musicale.
```

Condition :

Cette action future est autorisee seulement si `docs/specs/PRE_SPEC_IMPLEMENTATION_MAX_HARNESS_FICHIERS_V1.md` reste conforme et si les interdictions ci-dessus sont reprises.
