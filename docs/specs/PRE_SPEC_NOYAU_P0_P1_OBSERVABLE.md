# PRE_SPEC_NOYAU_P0_P1_OBSERVABLE

Statut : pre-spec courte non implementatoire du noyau P0/P1 observable, issue du cadrage post-harness.  
Date : 2026-07-02.  
Perimetre : responsabilites, modes, fallback, SIG et conditions d'arret ; sans patch Max, sans modification du patch 01, sans lancement Max, sans Ableton, sans audio, sans DSP, sans UI, sans mapping, sans asset, sans sample bank, sans seuil numerique, sans objet Max final, sans routage final et sans architecture validee.

## 1. Objet

Ce document transforme le cadrage post-harness en pre-spec exploitable pour une suite de construction bornee.

Il ne choisit pas d'implementation.  
Il ne cree pas de patch.  
Il ne valide pas le noyau musical.

Question traitee :

```text
quelles responsabilites P0/P1 doivent etre observables avant toute action de patch ?
```

Question non traitee :

```text
comment construire ces responsabilites dans Max ?
```

## 2. Sources consultees

Fait :

- `docs/START_HERE_VESPERARE.md`
- `docs/reprise/05_NEXT_ACTIONS.md`
- `docs/PROJECT_ROADMAP_VESPERARE.md`
- `docs/specs/CADRAGE_NOYAU_SYSTEME_DIDGERIDOO_PC_POST_HARNESS.md`
- `AGENTS.md`

Limite :

Ce corpus suffit pour preparer une pre-spec P0/P1 observable.  
Il ne suffit pas a choisir un objet Max, un routage, un mapping, une UI, un seuil ou une architecture.

## 3. Decision de frontiere

Decision :

P0/P1 decrivent des responsabilites minimales du noyau systeme didgeridoo/PC.

Decision :

Les responsabilites P0 doivent rester vraies meme si toutes les branches optionnelles sont absentes, off, bypass ou reduites.

Decision :

Les responsabilites P1 peuvent aider le jeu et l'observation, mais ne doivent jamais devenir condition cachee de P0.

Decision :

Le harness peut observer des contrats techniques futurs. Il ne devient pas une dependance du noyau musical.

## 4. Responsabilites P0 retenues

| ID | Responsabilite P0 | Fonction situee | Etat minimal attendu | Fallback | SIG critique | Hors perimetre |
|---|---|---|---|---|---|---|
| P0-DID | Presence live didgeridoo/PC | preserver une relation de jeu live, pas une simple entree audio | present / absent / incertain / masque | revenir a une sortie simple ou proteger le direct si la presence devient illisible | did absent, incertain, masque ou protege | detection finale, pitch tracking, role fixe du didgeridoo |
| P0-DIRECT | Direct prioritaire | maintenir un chemin direct lisible | direct actif / menace / preserve | reduire ou bypasser ce qui menace le direct | direct menace ou preserve par reduction | routage final, matrice, objet Max final |
| P0-SAFE | Safe jouable | garantir une sortie jouable minimale si une branche echoue | safe disponible / actif / indisponible | retour a simple/off ou bypass protecteur | safe indisponible, fallback actif | promesse de securite non testee, systeme autonome |
| P0-SORTIE | Sortie simple disponible | eviter un systeme confortable mais sans sortie musicale | sortie disponible / sortie promue / sortie manquante | promouvoir une sortie simple ou retirer une couche | sortie manquante, sortie promue | forme musicale finale, resolution automatique |
| P0-CONTROLE | Controle live et override | rendre disponible le geste humain pertinent | humain prioritaire / override disponible / controle verrouille | laisser le controle humain gagner sur l'automation non critique | verrou, override demande, conflit de controle | dashboard, mapping, automation expressive cachee |
| P0-PROTECTION | Protection minimale | empecher qu'une branche optionnelle coupe le noyau | normal / reduction / bypass / protection | reduction, bypass ou retour direct/safe | protection active ou echec protection | limite numerique finale, validation DSP |

Inference :

Ces six responsabilites forment le noyau P0 documentaire minimal. Elles peuvent etre regroupees plus tard dans un patch ou un contrat, mais elles ne sont pas des modules Max.

## 5. Responsabilites P1 retenues

| ID | Responsabilite P1 | Fonction situee | Condition de validite | Fallback | SIG attendu | Hors perimetre |
|---|---|---|---|---|---|---|
| P1-MIX | Mix simple non vital | aider a entendre relation direct / couche simple | disparait sans couper P0 | off ou bypass | mix off / reduit / actif | mixeur final, automation expressive |
| P1-OBS | Observation simple non autoritaire | rendre lisibles etats, risques et fallback | ne decide pas a la place de Yohan | silence d'observation ou etat inconnu | observe / inconnu / conflit | preuve musicale, jugement artistique |
| P1-ESPACE | Espace simple/off | autoriser une profondeur minimale non critique | off par defaut possible | off, bypass ou reduction | espace off / reduit / actif | reverberation finale, IR, convolution |
| P1-OPTION | Branche optionnelle gardee non vitale | permettre des extensions futures sans couper le noyau | aucune branche optionnelle obligatoire | absent, off, bypass ou reduit | optional absent / off / bypass / reduit / actif | corpus, sample bank, ML, Markov, grammaire |
| P1-DONNEES | Indices instrumentaux non souverains | informer le calibrage futur | les donnees n'imposent pas la fonction musicale | provenance faible ou inconnue acceptable | provenance faible / partielle / fiable / inconnue | seuil final, mapping, asset, classification exhaustive |

Inference :

P1 augmente la lisibilite, la jouabilite ou la preparation future. P1 ne doit pas devenir un niveau cache de complexite obligatoire.

## 6. Modes d'absence et de reduction

Decision :

Chaque responsabilite future devra declarer son comportement dans ces quatre modes :

| Mode | Sens documentaire | Attendu P0 | Attendu P1 |
|---|---|---|---|
| absent | la source, branche ou information n'existe pas dans la situation | le noyau reste jouable si la responsabilite n'est pas elle-meme vitale ; sinon SIG critique | P1 disparait sans bloquer |
| off | la fonction est volontairement eteinte | P0 garde direct/safe/sortie si applicable | etat normal possible |
| bypass | la fonction est contournee pour proteger le jeu | le bypass doit etre lisible et reversible | bypass acceptable, non dramatise |
| reduit | la fonction reste presente avec amplitude ou role diminue | reduction preferree a coupure opaque | reduction signalee sans devenir alarme permanente |

Regle :

Un mode n'est acceptable que si la sortie disponible reste nommee.

## 7. Ce qui reste humain et ce qui peut etre automatise

Decision :

Le systeme peut automatiser ou assister :

```text
securite ;
coordination ;
fallback ;
reduction ;
bypass ;
protection du direct ;
signalisation d'absence ou d'incertitude ;
promotion d'une sortie simple ;
masquage de controles non pertinents.
```

Decision :

Le systeme ne doit pas automatiser a la place de Yohan :

```text
pression ;
retour au corps ;
densite ;
tension ;
franchissement de limite ;
maintien au bord ;
resolution expressive ;
override ;
validation musicale.
```

Inference :

La future observabilite doit signaler ce qui se passe, pas produire une decision musicale autonome.

## 8. SIG minimal attendu

Decision :

SIG signifie ici signalisation lisible d'etat, de risque, de fallback ou de limite. Ce n'est pas une UI et ce n'est pas un mapping.

SIG minimal P0 :

- didgeridoo present, absent, incertain ou masque ;
- direct actif, menace ou preserve ;
- safe disponible, actif ou indisponible ;
- sortie disponible, promue ou manquante ;
- controle humain prioritaire, override disponible ou verrou critique ;
- protection normale, reduction, bypass ou echec.

SIG minimal P1 :

- observation active ou inconnue ;
- mix off, reduit ou actif ;
- espace off, reduit ou actif ;
- optional absent, off, bypass, reduit ou actif ;
- provenance de donnees faible, partielle, fiable ou inconnue.

Limite :

Ces mots sont des libelles documentaires provisoires. Ils ne sont pas un schema JSON, une UI, un protocole final ou une nomenclature d'objet Max.

## 9. Preuve possible et preuve interdite

Preuve possible plus tard :

- verifier qu'une responsabilite declare ses modes `absent`, `off`, `bypass`, `reduit` ;
- verifier qu'un fallback est nomme ;
- verifier qu'un SIG minimal existe ;
- verifier qu'une dependance lourde n'est pas devenue obligatoire ;
- verifier que le harness, si utilise, observe sans devenir noyau.

Preuve interdite :

- utiliser un smoke technique comme validation musicale ;
- utiliser une lecture JSON comme chargement Max ;
- utiliser un etat ou un log comme validation audio ou DSP ;
- utiliser cette pre-spec comme architecture validee ;
- utiliser cette pre-spec pour modifier le patch 01.

## 10. Contrats candidats pour suite directe

Recommandation :

La prochaine suite ne doit pas tout construire. Elle doit choisir un seul contrat observable a formaliser en premier.

Priorite proposee :

```text
P0-DIRECT + P0-SAFE + P0-SORTIE
```

Justification :

- ces trois responsabilites garantissent qu'il existe une sortie jouable avant toute zone de bord ;
- elles ne dependent pas d'une detection fine du didgeridoo ;
- elles permettent de verifier la separation entre noyau, optionnel et harness ;
- elles evitent de transformer trop tot le didgeridoo en role fixe ou en signal a classifier.

Limite :

Cette priorite ne retire pas `P0-DID`. Elle evite seulement de commencer par une detection qui risquerait d'imposer un seuil ou un mapping avant que direct/safe/sortie soient clairs.

## 11. Conditions d'entree vers une action technique

Une action technique future ne doit commencer que si les points suivants sont vrais :

- la responsabilite visee est nommee ;
- P0/P1/optionnel/hors noyau est explicite ;
- les modes `absent`, `off`, `bypass`, `reduit` sont declares ;
- le fallback est nomme ;
- le SIG est nomme ;
- la sortie disponible est nommee ;
- la dependance interdite est nommee ;
- ce que la preuve ne valide pas est nomme ;
- la condition d'arret est nommee.

Decision :

Tant que cette liste n'est pas remplie, la suite doit rester documentaire.

## 12. Conditions d'arret

Arreter si la suite tente de :

- modifier `projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat` ;
- creer un patch ;
- lancer Max hors smoke strictement borne et explicitement justifie ;
- lancer Ableton ;
- choisir un objet Max final ;
- choisir un routage final ;
- produire mapping, UI, asset, sample bank ou seuil numerique ;
- rendre Node for Max necessaire au noyau audio, P0/P1, direct/safe ou protection ;
- rendre une famille lourde obligatoire en P0/P1 ;
- presenter une preuve technique comme validation musicale.

## 13. Prochaine action minimale

Recommandation :

Preparer un contrat documentaire court pour le triplet :

```text
P0-DIRECT / P0-SAFE / P0-SORTIE
```

Sortie attendue :

- definitions bornees des trois responsabilites ;
- modes `absent`, `off`, `bypass`, `reduit` pour chacune ;
- fallback et SIG par responsabilite ;
- relation explicite avec `P0-DID` et `P0-CONTROLE` ;
- preuve possible future et preuve interdite ;
- condition d'arret avant tout patch.

Limite :

Cette prochaine action reste documentaire. Elle ne doit pas devenir un patch, un schema de routage, un objet Max, un mapping ou une validation musicale.
