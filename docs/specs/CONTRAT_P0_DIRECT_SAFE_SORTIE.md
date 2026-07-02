# CONTRAT_P0_DIRECT_SAFE_SORTIE

Statut : contrat documentaire court pour le triplet `P0-DIRECT / P0-SAFE / P0-SORTIE`, issu de `PRE_SPEC_NOYAU_P0_P1_OBSERVABLE`.  
Date : 2026-07-02.  
Perimetre : definitions bornees, modes, fallback, SIG et conditions d'arret ; sans patch Max, sans modification du patch 01, sans lancement Max, sans Ableton, sans audio, sans DSP, sans UI, sans mapping, sans asset, sans sample bank, sans seuil numerique, sans objet Max final, sans routage final et sans architecture validee.

## 1. Objet

Ce document formalise le premier contrat documentaire du noyau P0/P1 observable.

Il ne construit pas le noyau.  
Il ne choisit pas d'objet Max.  
Il ne produit pas de routage.  
Il ne valide pas la musique.

Question traitee :

```text
quels engagements minimaux doivent etre vrais pour direct, safe et sortie avant toute action de patch ?
```

Question non traitee :

```text
comment realiser ces engagements dans Max ?
```

## 2. Sources consultees

Fait :

- `docs/START_HERE_VESPERARE.md`
- `docs/reprise/05_NEXT_ACTIONS.md`
- `docs/PROJECT_ROADMAP_VESPERARE.md`
- `docs/specs/CADRAGE_NOYAU_SYSTEME_DIDGERIDOO_PC_POST_HARNESS.md`
- `docs/specs/PRE_SPEC_NOYAU_P0_P1_OBSERVABLE.md`
- `AGENTS.md`

Limite :

Ce corpus suffit pour formaliser un contrat documentaire.  
Il ne suffit pas a valider Max, l'audio, le DSP, le routage, la musicalite ou une architecture.

## 3. Frontiere du contrat

Decision :

`P0-DIRECT`, `P0-SAFE` et `P0-SORTIE` sont des responsabilites de noyau, pas des modules Max.

Decision :

Ces trois responsabilites doivent rester lisibles meme si `P0-DID`, une branche P1 ou le harness sont absents, off, bypass ou reduits.

Inference :

Le triplet direct/safe/sortie est le premier endroit a contractualiser parce qu'il garantit une sortie jouable avant toute zone de bord, avant toute detection fine du didgeridoo et avant toute hypothese d'objet Max.

## 4. Definitions bornees

| ID | Definition courte | Ce que la definition garantit | Ce qu'elle ne choisit pas |
|---|---|---|---|
| P0-DIRECT | responsabilite de maintenir un chemin direct prioritaire, lisible et non remplace par une branche lourde | le jeu peut rester perceptible sans dependance optionnelle | entree, objet Max, routage, mixeur ou chemin final |
| P0-SAFE | responsabilite de garder un repli jouable si une branche manque, echoue, sature, se retire ou devient inutile | l'absence ou l'echec d'un element non vital ne coupe pas la sortie | mecanisme technique, bypass final, seuil ou protection DSP |
| P0-SORTIE | responsabilite de maintenir une sortie simple disponible et comprehensible | il existe toujours une sortie nommee avant d'autoriser une zone de bord | forme musicale, resolution, scene, routage final ou objet de sortie |

Decision :

Le triplet doit etre compris comme un contrat de responsabilites liees :

```text
P0-DIRECT sans P0-SAFE peut devenir fragile.
P0-SAFE sans P0-SORTIE peut devenir une promesse abstraite.
P0-SORTIE sans P0-DIRECT peut devenir une sortie confortable mais non live.
```

## 5. Modes requis par responsabilite

| Responsabilite | absent | off | bypass | reduit |
|---|---|---|---|---|
| P0-DIRECT | si le direct est absent ou indeterminable, SIG critique ; ne pas pretendre que le noyau est valide | direct off seulement si decision humaine explicite ou situation non jouee ; sortie simple doit rester nommee | bypass interdit comme remplacement opaque ; acceptable seulement pour proteger la sortie avec SIG | direct reduit doit rester perceptible ou etre signale comme menace |
| P0-SAFE | si safe absent, aucune action de patch ne peut pretendre au noyau P0 observable | safe off interdit sauf phase documentaire ; en test futur, il doit etre disponible | bypass safe = passage a simple/off ou retrait de non critique ; doit etre lisible | safe reduit doit dire ce qui reste protege et ce qui ne l'est pas |
| P0-SORTIE | si sortie absente, arret ; aucune zone de bord n'est autorisable | sortie off interdit pour une situation jouable ; possible seulement hors jeu | bypass sortie interdit si cela coupe la jouabilite ; une autre sortie doit etre nommee | sortie reduite acceptable si elle reste jouable et lisible |

Decision :

Un mode est valide seulement si le SIG et la sortie restante sont nommes.

## 6. Fallback et SIG

| Responsabilite | Fallback minimal | SIG minimal | Situation d'arret |
|---|---|---|---|
| P0-DIRECT | reduire ou bypasser ce qui masque le direct ; revenir a presence live ou sortie simple | direct actif / direct menace / direct preserve par reduction / direct absent | direct remplace par branche lourde ou routage opaque |
| P0-SAFE | retirer, bypasser ou reduire le non critique ; revenir a simple/off | safe disponible / safe actif / safe indisponible / fallback actif | safe porte par script, preset critique, external, objet lourd ou promesse non verifiee |
| P0-SORTIE | promouvoir une sortie simple ; retirer couche optionnelle ; nommer sortie restante | sortie disponible / sortie promue / sortie manquante / sortie reduite | absence de sortie ou sortie non nommee avant zone de bord |

Inference :

Le SIG n'est pas une UI. C'est une obligation de lisibilite minimale pour eviter qu'un fallback ou une reduction devienne cache.

## 7. Relation avec P0-DID

Decision :

`P0-DID` reste une responsabilite P0 distincte : presence live didgeridoo/PC.

Relation :

- `P0-DIRECT` protege le fait que la presence live puisse rester perceptible.
- `P0-SAFE` evite qu'une hypothese sur le didgeridoo coupe le systeme si elle est absente ou incertaine.
- `P0-SORTIE` garantit qu'une sortie simple reste disponible meme si la presence didgeridoo est masquee, incertaine ou non analysee.

Limite :

Ce contrat ne detecte pas le didgeridoo.  
Il ne fixe pas de seuil de presence, de pitch tracking, de mapping ou de role musical du didgeridoo.

## 8. Relation avec P0-CONTROLE

Decision :

Le controle humain reste prioritaire sur les decisions expressives.

Relation :

- `P0-DIRECT` peut etre protege ou reduit automatiquement si une menace technique ou de lisibilite apparait.
- `P0-SAFE` peut automatiser retrait, bypass ou reduction du non critique.
- `P0-SORTIE` peut promouvoir une sortie simple.
- Yohan garde la decision de pression, densite, tension, maintien au bord, resolution, retrait expressif et override.

Condition :

Si une automation decide la situation musicale au lieu de proteger, assister ou rendre une sortie disponible, elle sort du contrat.

## 9. Preuve possible future

Preuve documentaire possible :

- chaque responsabilite a une definition ;
- chaque responsabilite declare `absent`, `off`, `bypass`, `reduit` ;
- chaque responsabilite nomme fallback et SIG ;
- chaque responsabilite nomme au moins une condition d'arret ;
- le triplet ne depend pas de Node for Max, script, preset critique, external, plugin, corpus, sample bank, seuil ou objet final.

Preuve technique possible plus tard, si une action future est explicitement autorisee :

- une lecture machine peut constater des etats nommes ;
- un harness peut observer commandes, etats, logs, fallback et SIG ;
- un smoke peut verifier que le contrat technique expose les etats attendus.

## 10. Preuve interdite

Interdit :

- une lecture JSON ne prouve pas le chargement Max ;
- un smoke technique ne prouve pas l'audio ;
- un log ne prouve pas la musicalite ;
- un etat `direct actif` ne prouve pas que le direct sonne ;
- un etat `safe disponible` ne prouve pas que le safe est musicalement satisfaisant ;
- ce contrat ne valide pas le patch 01 ;
- ce contrat ne valide pas l'architecture.

## 11. Conditions d'entree vers action technique

Avant toute action technique future sur ce triplet, il faudra produire ou confirmer :

- la question technique exacte ;
- le perimetre P0 vise ;
- les sorties observables attendues ;
- les fichiers autorises ;
- les fichiers interdits ;
- le statut de Max : non lance, smoke borne ou hors perimetre ;
- la preuve possible ;
- la preuve explicitement interdite ;
- la condition d'arret.

Decision :

Tant que ces points ne sont pas nommes, la suite reste documentaire.

## 12. Conditions d'arret

Arreter si la suite tente de :

- modifier `projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat` ;
- creer un patch ;
- choisir un objet Max final ;
- choisir un routage final ;
- creer un mapping, une UI, un asset, une sample bank ou un seuil numerique ;
- rendre Node for Max necessaire a `P0-DIRECT`, `P0-SAFE` ou `P0-SORTIE` ;
- rendre une famille lourde obligatoire en P0 ;
- transformer ce contrat en validation audio, DSP, musicale ou architecturale ;
- demander a Yohan de valider une architecture non instruite.

## 13. Prochaine action minimale

Recommandation :

Preparer une decision documentaire de passage ou non vers une premiere action technique observable et strictement bornee sur le triplet :

```text
P0-DIRECT / P0-SAFE / P0-SORTIE
```

Cette decision devra choisir seulement entre :

- autoriser une action technique observable strictement bornee ;
- reporter et completer le contrat documentaire ;
- refuser le passage technique si une condition d'arret est touchee.

Limite :

Cette decision future ne devra pas produire le patch dans la meme action. Elle ne devra pas choisir de routage final, d'objet Max final, de mapping, d'UI, d'asset, de seuil ou d'architecture validee.
