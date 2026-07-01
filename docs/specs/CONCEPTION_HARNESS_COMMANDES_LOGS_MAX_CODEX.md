# Conception harness commandes/logs Max <-> Codex

Statut : conception preliminaire d'une couche de test et d'observabilite.
Date : 2026-07-01.
Perimetre : principe de harness ; sans patch Max nouveau, sans lancement Max, sans objet Max final, sans routage final, sans seuil numerique.

## Sources consultees

Fait :

- `docs/reprise/05_NEXT_ACTIONS.md`
- `docs/reprise/27_TRACE_CREATION_PREMIER_PATCH_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/28_TRACE_TEST_CHARGEMENT_PATCH_MAX_MINIMAL_MIN_DID_PC.md`
- `projects/max/MANIFEST_MAX_PATCHES.md`
- `docs/PROJECT_ROADMAP_VESPERARE.md`
- `docs/AI_WORKFLOW_CONTRACT.md`
- `docs/42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md`
- `docs/modules/18_CONTEXTUAL_CONTROL_ROUTER_AMPLITUDES_LIMITES_OVERRIDE_ADDENDUM.md`

## 1. Objectifs

Objectifs :

- disposer d'une couche machine-lisible entre Max et Codex ;
- permettre a Codex CLI de deposer ou lire des commandes bornees ;
- permettre a Max, dans un futur patch observable, d'ecrire des logs structures ;
- distinguer chargement, etat, erreur, fallback, SIG et modes ;
- produire des traces relisibles sans lecture visuelle Max comme preuve principale ;
- preparer des futurs tests reproductibles avant test humain.

Decision :

Le harness doit rester une couche de test et d'observabilite.

## 2. Non-objectifs

Non-objectifs :

- valider l'audio ;
- valider la musicalite ;
- valider la jouabilite ;
- valider une architecture finale ;
- choisir un objet Max final ;
- definir un routage final ;
- fixer un seuil numerique ;
- produire une UI ;
- produire un mapping ;
- produire un asset ou une sample bank ;
- faire entrer une famille lourde dans `P0/P1`, `direct/safe`, protection ou `MIN-DID-PC`.

Decision :

Le harness n'est pas une condition `P0/P1`, `direct/safe`, protection ou `MIN-DID-PC`. Il observe et pilote des tests ; il ne remplace pas ces decisions.

## 3. Architecture proposee

Architecture logique :

```text
Codex CLI
  -> ecrit des commandes machine-lisibles
  -> verifie JSON / JSONL / traces
  -> lit les logs produits

Harness Max futur
  -> lit ou recoit des commandes bornees
  -> execute seulement les commandes autorisees
  -> emet ack, error, state, fallback, SIG et mode

Depot Vesperare
  -> conserve les specs et traces utiles
  -> ne conserve pas automatiquement les logs de session comme preuve musicale
```

Decision :

Les futurs modules devront exposer :

- commandes ;
- etats ;
- logs ;
- fallback ;
- SIG ;
- modes `absent`, `off`, `bypass`, `reduit`.

Inference :

Cette exposition aide Codex a verifier la disponibilite et l'etat technique minimal, mais elle ne dit pas si la musique fonctionne.

## 4. Canaux possibles

### Fichier log / fichiers commandes

Principe :

- Codex ecrit une commande dans un emplacement convenu ;
- Max lit ou importe la commande dans un futur harness ;
- Max ecrit des logs JSONL ;
- Codex relit les logs et verifie les evenements attendus.

Avantages :

- simple ;
- lisible ;
- compatible Git et traces ;
- facile a verifier par Codex CLI ;
- peu dependant d'un runtime reseau.

Risques :

- latence de fichier possible ;
- besoin d'une convention claire d'accuse de reception ;
- risque d'accumulation de logs si les sessions ne sont pas bornees.

### UDP

Principe :

- Codex ou un petit outil futur envoie des messages ;
- Max recoit et repond via messages reseau.

Avantages :

- plus immediat ;
- utile pour tests interactifs futurs.

Risques :

- plus difficile a tracer sans journal parallele ;
- depend du reseau local ;
- peut compliquer les tests avant que l'observabilite fichier soit stable.

### Node for Max

Principe :

- un script Node futur sert de pont entre Max et fichiers, JSONL ou autres canaux.

Avantages :

- manipulation JSON plus confortable ;
- possibilite d'outillage plus riche plus tard.

Risques :

- dependance runtime supplementaire ;
- risque de transformer le harness en sous-systeme opaque ;
- choix a reporter tant que le besoin n'est pas prouve.

## 5. Choix recommande pour v0

Recommandation :

Commencer par fichiers de commandes simples et logs JSONL.

Decision :

UDP et Node for Max restent des options futures, pas des choix principaux pour v0.

Raison :

Cette voie donne a Codex CLI ce qu'il sait verifier : presence de fichiers, JSON parseable, lignes JSONL, evenements attendus, erreurs explicites et traces comparables.

## 6. Emplacements proposes

Emplacements proposes, non crees par cette spec :

```text
projects/max/_harness/commands/
projects/max/_harness/logs/
projects/max/_harness/state/
projects/max/_harness/archive/
```

Fichiers possibles :

```text
command.pending.json
command.ack.json
command.error.json
state.current.json
max-harness-session.jsonl
```

Decision :

Ces chemins sont des propositions de convention pour un futur harness. Ils ne creent pas encore un asset, un patch ou une architecture finale.

## 7. Schema preliminaire de commande

Schema indicatif :

```json
{
  "schema": "vesperare.max_harness.command.v0",
  "command_id": "opaque-command-id",
  "run_id": "opaque-run-id",
  "issued_by": "codex_cli",
  "created_at": "iso-8601",
  "type": "ping | load_patch | request_state | set_mode | request_log_flush | stop_harness",
  "target": "harness | patch | module",
  "mode": "absent | off | bypass | reduit | active",
  "payload": {},
  "expect_ack": true,
  "notes": "human-readable optional context"
}
```

Regles :

- `command_id` doit etre repris dans ack, error ou timeout ;
- `type` doit rester dans une liste fermee ;
- `payload` ne doit pas contenir de decision musicale implicite ;
- `mode` ne doit pas transformer un module absent en module obligatoire ;
- aucune valeur numerique de seuil n'est definie dans cette spec.

## 8. Schema preliminaire de log

Schema JSONL indicatif, une ligne par evenement :

```json
{
  "schema": "vesperare.max_harness.log.v0",
  "event_id": "opaque-event-id",
  "run_id": "opaque-run-id",
  "command_id": "opaque-command-id-or-null",
  "timestamp": "iso-8601",
  "level": "info | warning | error",
  "source": "harness | patch | module",
  "event": "boot | command_received | command_ack | command_error | state_snapshot | fallback_enter | fallback_exit | sig_emit | mode_change | patch_load_attempt | patch_load_result | log_flush | shutdown",
  "status": "ok | blocked | degraded | failed | unknown",
  "mode": "absent | off | bypass | reduit | active",
  "message": "short human-readable message",
  "data": {}
}
```

Regles :

- chaque evenement doit etre lisible sans Max ouvert ;
- `error` doit etre explicite et non silencieux ;
- `state_snapshot` doit separer etat technique et validation musicale ;
- `sig_emit` reste signalisation technique ou interne, pas validation artistique.

## 9. Ack, error, timeout

Ack :

```json
{
  "schema": "vesperare.max_harness.ack.v0",
  "command_id": "opaque-command-id",
  "run_id": "opaque-run-id",
  "status": "ack",
  "accepted": true,
  "message": "command accepted by harness"
}
```

Error :

```json
{
  "schema": "vesperare.max_harness.error.v0",
  "command_id": "opaque-command-id",
  "run_id": "opaque-run-id",
  "status": "error",
  "error_code": "unknown_command | invalid_payload | target_absent | max_error | blocked_by_policy",
  "recoverable": true,
  "message": "short explanation"
}
```

Timeout :

```json
{
  "schema": "vesperare.max_harness.timeout.v0",
  "command_id": "opaque-command-id",
  "run_id": "opaque-run-id",
  "status": "timeout",
  "timeout_policy": "externally configured; no numeric value fixed in this spec",
  "message": "no ack or error observed before the configured timeout"
}
```

Decision :

Un timeout est un etat d'observabilite. Il ne valide ni n'invalide la musicalite, l'audio ou l'architecture.

## 10. Conditions d'arret

Arreter si la suite tente de :

- lancer Max maintenant ;
- lancer Ableton ;
- creer un patch Max dans cette phase ;
- modifier `min-did-pc-minimal-01.maxpat` ;
- faire une lecture visuelle Max comme preuve principale ;
- demander un test humain avant logs machine-lisibles ;
- fixer un seuil numerique ;
- choisir un objet Max final ;
- definir un routage final ;
- produire UI, mapping, asset ou sample bank ;
- produire un nouvel audit ;
- valider musicalement ou techniquement le patch 01.

## 11. Limites explicites

Limites :

- le harness ne valide pas la musicalite ;
- le harness ne valide pas l'audio ;
- le harness ne valide pas l'architecture finale ;
- Codex CLI peut lire logs et JSON, mais pas juger le son ;
- Codex Computer Use peut etre envisage plus tard comme smoke test GUI ponctuel, pas comme strategie principale ;
- Pro etendu peut etre utilise plus tard pour gate strategique, pas pour ecriture finale ni validation musicale.
