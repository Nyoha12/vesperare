# DECISION_PASSAGE_ACTION_TECHNIQUE_OBSERVABLE_P0_DIRECT_SAFE_SORTIE

Statut : decision documentaire de passage vers une premiere action technique observable strictement bornee.  
Date : 2026-07-02.  
Perimetre : decision de phase seulement ; sans patch Max, sans modification du patch 01, sans lancement Max, sans Ableton, sans audio, sans DSP, sans UI, sans mapping, sans asset, sans sample bank, sans seuil numerique, sans objet Max final, sans routage final et sans architecture validee.

## 1. Objet

Ce document applique la prochaine action minimale issue de :

```text
docs/specs/CONTRAT_P0_DIRECT_SAFE_SORTIE.md
```

Il choisit entre :

- autoriser une action technique observable strictement bornee ;
- reporter et completer le contrat documentaire ;
- refuser le passage technique si une condition d'arret est touchee.

## 2. Sources consultees

Fait :

- `docs/START_HERE_VESPERARE.md`
- `docs/reprise/05_NEXT_ACTIONS.md`
- `docs/PROJECT_ROADMAP_VESPERARE.md`
- `docs/specs/CADRAGE_NOYAU_SYSTEME_DIDGERIDOO_PC_POST_HARNESS.md`
- `docs/specs/PRE_SPEC_NOYAU_P0_P1_OBSERVABLE.md`
- `docs/specs/CONTRAT_P0_DIRECT_SAFE_SORTIE.md`
- `AGENTS.md`

Limite :

Ce corpus suffit pour prendre une decision documentaire de passage.  
Il ne suffit pas a produire un patch ni a valider Max, l'audio, le DSP, la musicalite ou une architecture.

## 3. Verification des conditions d'entree

| Condition | Statut | Justification |
|---|---|---|
| responsabilite visee nommee | OK | triplet `P0-DIRECT / P0-SAFE / P0-SORTIE` |
| perimetre P0 explicite | OK | contrat documentaire P0, hors P1 optionnel |
| modes `absent`, `off`, `bypass`, `reduit` declares | OK | declares pour chaque responsabilite dans le contrat |
| fallback nomme | OK | fallback minimal par responsabilite |
| SIG nomme | OK | SIG minimal par responsabilite |
| sortie disponible nommee | OK | sortie simple / sortie promue / sortie reduite / sortie manquante |
| dependances interdites nommees | OK | Node for Max, script, preset critique, external, objet lourd, famille lourde, routage final |
| preuve possible nommee | OK | preuve documentaire et preuve technique future bornee |
| preuve interdite nommee | OK | pas de validation audio, DSP, musicale, architecture, patch 01 ou chargement Max par lecture JSON |
| condition d'arret nommee | OK | conditions d'arret du contrat reprises ci-dessous |

Inference :

Les conditions documentaires d'entree vers une action technique strictement bornee sont remplies.

## 4. Decision

Decision :

Autoriser une prochaine action technique observable strictement bornee sur le triplet :

```text
P0-DIRECT / P0-SAFE / P0-SORTIE
```

Cette autorisation ne vaut que pour une action technique de specification observable ou de contrat machine-lisible minimal. Elle n'autorise pas encore un patch Max musical, un routage final, un objet Max final, une UI, un mapping, un asset, un seuil numerique ou une architecture.

Decision :

La prochaine action technique devra produire un contrat observable minimal, pas le patch final.

Formulation bornee de l'action autorisee :

```text
preparer un contrat technique observable minimal pour P0-DIRECT / P0-SAFE / P0-SORTIE,
sans modifier le patch 01,
sans lancer Max sauf smoke explicitement justifie,
sans choisir d'objet Max final,
sans routage final,
et sans validation audio, DSP ou musicale.
```

## 5. Fichiers autorises pour la prochaine action

Autorises :

- un document de specification technique observable dans `docs/specs/` ;
- eventuellement un schema documentaire ou exemple de contrat sous `tools/vesperare-harness/` seulement si le lien avec l'observabilite est strictement justifie ;
- une mise a jour ciblee de pilotage si la prochaine action est acceptee et reste bornee.

Interdits :

- `projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat` ;
- tout nouveau `.maxpat` ;
- `reprise/` racine ;
- audit niveau 6 source ;
- matrice niveau 6 absente ou recreee ;
- UI, mapping, asset, sample bank, seuil numerique, routage final ou objet Max final.

## 6. Preuve possible pour la prochaine action

Preuve possible :

- le contrat technique observable nomme ses etats ;
- les modes `absent`, `off`, `bypass`, `reduit` sont representables ;
- le fallback et le SIG sont explicitement exposes ;
- le contrat reste separable du harness ;
- le contrat ne rend aucune famille lourde obligatoire ;
- une future validation machine pourrait verifier la presence de ces champs.

Preuve interdite :

- cette action ne prouve pas que le direct sonne ;
- cette action ne prouve pas que le safe est musicalement satisfaisant ;
- cette action ne prouve pas que la sortie est audio ou DSP validee ;
- cette action ne prouve pas le patch 01 ;
- cette action ne valide pas l'architecture.

## 7. Conditions d'arret maintenues

Arreter si la suite tente de :

- modifier `projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat` ;
- creer un patch Max ;
- lancer Max sans smoke strictement borne et explicitement justifie ;
- lancer Ableton ;
- choisir un objet Max final ;
- choisir un routage final ;
- creer UI, mapping, asset, sample bank ou seuil numerique ;
- rendre Node for Max necessaire a `P0-DIRECT`, `P0-SAFE` ou `P0-SORTIE` ;
- rendre une famille lourde obligatoire en P0 ;
- transformer une preuve technique en validation musicale ;
- demander a Yohan de valider une architecture non instruite.

## 8. Prochaine action minimale

Recommandation :

Preparer la specification technique observable minimale suivante :

```text
CONTRAT_TECHNIQUE_OBSERVABLE_P0_DIRECT_SAFE_SORTIE
```

Sortie attendue :

- etats observables minimaux pour `P0-DIRECT`, `P0-SAFE`, `P0-SORTIE` ;
- modes `absent`, `off`, `bypass`, `reduit` ;
- fallback et SIG representables ;
- preuve machine possible et preuve interdite ;
- separation stricte entre noyau, optionnel et harness ;
- aucune implementation Max.

Limite :

Cette prochaine action ne doit pas produire un patch dans la meme action. Elle ne doit pas lancer Max, sauf justification explicite et strictement bornee, et ne doit pas pretendre valider audio, DSP, musicalite ou architecture.
