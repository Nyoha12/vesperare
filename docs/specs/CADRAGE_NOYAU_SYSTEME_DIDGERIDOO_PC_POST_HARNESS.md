# CADRAGE_NOYAU_SYSTEME_DIDGERIDOO_PC_POST_HARNESS

Statut : cadrage concret non-implementatoire du noyau systeme didgeridoo/PC apres stabilisation du smoke Max/Codex par PR #40.  
Date : 2026-07-02.  
Perimetre : documentation de conception seulement ; sans patch Max, sans modification du patch 01, sans lancement Max, sans Ableton, sans audio, sans DSP, sans UI, sans mapping, sans asset, sans sample bank, sans seuil numerique, sans objet Max final, sans routage final et sans architecture validee.

## 1. Objet

Ce document transforme la prochaine action post-harness en livrable de conception borne :

```text
concevoir concretement le noyau systeme didgeridoo/PC.
```

Il ne relance pas la phase de stabilisation du harness.  
Il ne produit pas de prototype.  
Il ne modifie pas `projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat`.

Justification du document nouveau :

- les fiches 19 et 20 ont deja cadre `MIN-DID-PC` avant le patch 01 ;
- la PR #40 a stabilise un outil d'observabilite technique separe ;
- la question actuelle n'est donc plus "comment cadrer le premier patch minimal", mais "quel noyau systeme didgeridoo/PC doit rester vrai quand on construira plus tard".

Ce document sert a regrouper la transition au lieu de multiplier des traces fines.

## 2. Sources consultees

Fait :

- `docs/START_HERE_VESPERARE.md`
- `AGENTS.md`
- `docs/reprise/05_NEXT_ACTIONS.md`
- `docs/PROJECT_ROADMAP_VESPERARE.md`
- `docs/reprise/19_PRE_SPEC_MAX_CONCRETE_NON_IMPLEMENTATION_MIN_DID_PC.md`
- `docs/reprise/20_CADRAGE_DOCUMENTAIRE_PREMIER_PROTOTYPE_MINIMAL_MIN_DID_PC.md`
- `docs/42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md`
- `docs/modules/18_CONTEXTUAL_CONTROL_ROUTER_AMPLITUDES_LIMITES_OVERRIDE_ADDENDUM.md`
- `docs/45_REPRISE_DEPUIS_FICHE_MESURES_INSTRUMENTS.md`
- `docs/assets/15_DONNEES_INSTRUMENTALES_MANQUANTES_PRIORITAIRES.md`
- `docs/assets/16_ACOUSTICARCHIVE_MAPPING_DONNEES_VESPERARE.md`
- `reprise/BESOINS_STYLISTIQUES_v0_4.md`
- `reprise/BESOINS_GENERATION_v0_4.md`

Limite :

Ces sources suffisent pour cadrer des responsabilites de noyau.  
Elles ne suffisent pas a valider une architecture, un patch, un routage, une musicalite ou une implementation.

## 3. Decision de phase

Decision :

Le harness Max/Codex reste un outil d'observabilite technique borne.  
Il ne devient pas le noyau musical, ni une preuve audio, DSP, technique, musicale ou architecturale.

Decision :

Le noyau systeme didgeridoo/PC doit etre formule par responsabilites minimales et relations musicales, pas par objets Max, modules obligatoires, schema de routage ou patch.

Inference :

`MIN-DID-PC` et "noyau systeme didgeridoo/PC" ne sont pas synonymes exacts.

- `MIN-DID-PC` designe le contenant minimal et les responsabilites documentaires ayant mene au patch 01 provisoire.
- Le noyau systeme didgeridoo/PC designe les invariants qui devront rester vrais avant toute extension : presence live, direct/safe, sortie jouable, controle humain, fallback/SIG, separation du harness et refus des familles lourdes en P0/P1.

## 4. Definition bornee du noyau systeme

Decision :

```text
noyau systeme didgeridoo/PC =
ensemble minimal de responsabilites permettant de preserver une relation live
didgeridoo / ordinateur / sortie jouable, avec direct/safe, controle humain,
fallbacks et signalisation, meme quand les branches optionnelles sont absentes,
off, bypass ou reduites.
```

Ce noyau n'est pas :

- un patch ;
- une architecture Max finale ;
- une nomenclature d'objets ;
- une UI ;
- un mapping ;
- une banque de sources ;
- un moteur de generation ;
- un systeme autonome de decision musicale ;
- une validation du patch 01.

## 5. Invariants P0/P1

Decision :

P0/P1 restent des responsabilites documentaires.  
Elles ne sont pas des objets, des sous-patchers, des seuils, des benchmarks ou des routages.

| Niveau | Responsabilites admissibles | Ce qui reste interdit |
|---|---|---|
| P0 | Presence live didgeridoo/PC ; direct prioritaire ; safe jouable ; sortie simple ; controle live prioritaire ; protection minimale ; SIG critique minimal | famille lourde ; source preparee obligatoire ; Node for Max ; script ; preset critique ; external ; plugin ; objet final ; seuil numerique ; routage final |
| P1 | mix simple ; observation simple non autoritaire ; couche simple non vitale ; espace simple/off ; fallback lisible ; SIG de reduction, absence ou incertitude | famille lourde comme condition ; corpus ; IR ; convolution ; FFT/pfft ; ML ; Markov ; grammaire ; routage opaque ; matrice finale |

Inference :

Une branche optionnelle peut etre utile plus tard, mais seulement si elle peut disparaitre sans couper P0/P1.

## 6. Contrats de noyau

Ces contrats sont des contrats de responsabilites.  
Ils ne sont pas des specs d'implementation.

| Contrat | Responsabilite concrete | Ce que le systeme peut automatiser ou assister | Ce qui reste humain | SIG / etat attendu | Risque principal |
|---|---|---|---|---|---|
| DID-LIVE | Preserver le didgeridoo comme presence live, pas comme simple entree audio abstraite | signaler presence, absence, masquage ou conflit ; proteger une sortie | choisir si le didgeridoo est central, libre, traite, silencieux ou perturbateur | present / absent / masque / protege / conflit | forcer le didgeridoo a devenir basse, drone, controleur ou role fixe |
| DIRECT | Maintenir un chemin direct lisible et prioritaire | signaler que le direct est preserve ou menace | decider du rapport expressif entre direct et couches | direct actif / menace / preserve par reduction | remplacer le direct par une branche lourde |
| SAFE | Maintenir une sortie jouable si une branche optionnelle echoue ou disparait | bypass, reduction ou retour a simple/off quand c'est protecteur | accepter ou refuser un maintien au bord si le risque est musical | safe actif / bypass / reduction / sortie disponible | promettre un safe non verifie ou opaque |
| SORTIE | Garder une sortie principale simple et comprehensible | promouvoir une sortie quand une zone de bord approche | choisir retrait, retour, maintien, resolution ou refus de resolution | sortie disponible / sortie promue / sortie manquante | systeme confortable mais sans sortie musicale |
| CONTROLE | Presenter les bons gestes au bon moment au lieu d'exposer tous les parametres | masquer, promouvoir, rendre urgent, rendre profond, verrouiller si risque technique | pression, densite, tension, franchissement, maintien au bord, override | controle visible / profond / urgent / verrouille / overrideable | dashboard permanent ou automation expressive cachee |
| GRAVE-SUB-DID | Preserver la relation grave/sub/didgeridoo sans ecrasement involontaire | avertir, reduire ou proteger si le grave masque une source essentielle | assumer une surcharge ou la retirer pour raison musicale | grave stable / did masque / sub dominant / reduction | didgeridoo reduit a basse ou sub punitif |
| BORD | Rendre les limites jouables seulement si une sortie existe | nommer risque, menace, gain possible, sortie | decider de rester au bord ou de sortir | zone sure / expressive / bord / dangereuse / override | bloquer trop tot ou laisser une stase non voulue |
| OPTIONAL | Autoriser seulement des branches optionnelles non vitales | off, bypass, reduction, fallback, signalisation | choisir l'exposition ou le retrait musical de la branche | absent / off / bypass / reduit / actif | branche optionnelle devenue condition cachee |
| DONNEES | Utiliser les donnees instrumentales comme indices, pas comme decisions | aider calibrage futur, identification de limites, relations source/sub/corps | corriger intention, fournir matiere reelle, juger musicalement | provenance faible / partielle / fiable / inconnue | descripteur acoustique transforme en fonction musicale |
| HARNESS | Garder l'observabilite technique separee du noyau | commandes, etats, logs, fallback technique lisible | validation musicale et artistique | commande / ack / log / state technique | smoke technique lu comme preuve musicale |

## 7. Statuts de controle a maintenir

Decision :

Chaque future responsabilite ou module candidat devra distinguer au minimum :

```text
automatiser ;
assister ;
suggerer ;
presenter au reglage humain ;
laisser profond ;
laisser sous override ;
verrouiller.
```

Decision :

Le systeme peut automatiser surtout :

```text
securite ;
coordination ;
release obligatoire ;
guards ;
routing contextuel ;
masquage de controles inutiles ;
promotion de sorties ;
protection live.
```

Decision :

Le systeme ne doit pas automatiser a la place de Yohan :

```text
pression ;
retour au corps ;
densite ;
tension ;
retarder / resoudre / annuler ;
franchissement de limite ;
maintien au bord ;
override.
```

Inference :

La question concrete du noyau n'est donc pas "quels parametres exposer ?", mais :

```text
quelle fonction musicale est active,
quel risque approche,
quelle sortie existe,
quel geste humain doit devenir disponible maintenant,
et quelle automation peut aider sans decider.
```

## 8. Donnees instrumentales et AcousticArchive

Decision :

Les donnees instrumentales et AcousticArchive sont utiles au noyau comme connaissances, pas comme souverainete.

Elles peuvent informer :

- presence didgeridoo ;
- centres ressentis ;
- zones de grave ou bas-medium ;
- conflits sub / didgeridoo ;
- formants lisibles ou caricaturaux ;
- risques de boue, feedback, fatigue, drone statique ;
- sorties possibles : reduire grave, filtrer formants, passer en souffle, retirer resonateur, revenir au geste non traite.

Elles ne doivent pas produire automatiquement :

- seuil final ;
- mapping ;
- classification exhaustive ;
- asset ;
- controle ;
- fonction musicale ;
- choix esthetique ;
- obligation de collecte.

Inference :

L'absence de mesure exacte ne bloque pas la conception du noyau.  
Elle bloque seulement un calibrage futur qui pretendrait etre precis.

## 9. Relation aux modules existants

Decision :

Ce document ne cree pas de nouveaux modules.  
Il relit seulement les roles existants comme responsabilites futures possibles.

| Role conceptuel | Contribution possible au noyau | Limite |
|---|---|---|
| Router | presenter les controles pertinents, masquer le reste, promouvoir sorties et urgences | ne devient pas UI finale ni dashboard |
| Conductor | porter contexte, scene active, limites autorisables, sorties et trajectoires possibles | ne decide pas la forme globale a la place de Yohan |
| Conflict / Protection | distinguer tension feconde et danger, proposer reduction ou verrou si necessaire | ne transforme pas chaque warning en automation active |
| AcousticArchive | fournir descripteurs et provenance pour calibrage futur | ne decide pas la fonction musicale |
| Harness Max/Codex | observer commandes, logs, etats et fallback technique | ne valide pas audio, DSP, musicalite ou architecture |

## 10. Gabarit minimal pour la suite

Toute prochaine fiche de pre-spec ou de construction devra remplir ce gabarit avant de proposer une action technique :

```text
fonction musicale situee :
source ou relation concernee :
priorite : P0 / P1 / optionnel / hors noyau
ce qui reste humain :
ce qui peut etre automatise :
modes absents : absent / off / bypass / reduit
fallback :
SIG :
risque principal :
sortie disponible :
dependance interdite :
preuve possible :
ce que cette preuve ne valide pas :
condition d'arret :
```

Regle :

Une preuve machine peut valider un contrat technique observable.  
Elle ne valide pas la musique.

## 11. Questions ouvertes utiles, sans transfert indu a Yohan

Questions que le programme doit instruire avant de demander une decision humaine :

1. Quelle est la forme minimale de "presence live didgeridoo" qui reste vraie quand tout l'optionnel est absent ?
2. Quels risques doivent etre signales sans devenir alarmes permanentes ?
3. Quelles sorties doivent etre toujours disponibles avant d'autoriser une zone de bord ?
4. Quelles fonctions peuvent etre protegees automatiquement sans voler l'override ?
5. Quels types de donnees instrumentales sont utiles au calibrage futur, mais non bloquants maintenant ?
6. Quelle distinction maintenir entre direct, safe, sortie simple, mix simple et branche optionnelle ?
7. A quel moment un futur patch serait encore un test borne, et non une architecture par glissement ?

Questions reservees a Yohan seulement quand elles seront instruites :

- correction d'intention ;
- jugement musical ;
- decision artistique ;
- validation finale ;
- refus d'une methode trop lourde.

## 12. Interdictions maintenues

Interdit dans cette phase :

- modifier `projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat` ;
- creer un nouveau patch ;
- lancer Max hors smoke strictement borne et explicitement justifie ;
- lancer Ableton ;
- faire entrer Node for Max hors `projects/max/_harness/` ;
- produire UI ;
- produire mapping ;
- produire asset ;
- produire sample bank ;
- produire seuil numerique ;
- produire objet Max final ;
- produire routage final ;
- produire architecture validee ;
- recreer ou valider un niveau 6 ;
- utiliser la matrice niveau 6 absente comme preuve ;
- modifier `reprise/` racine ;
- transformer le harness, un smoke ou une lecture JSON en validation musicale.

## 13. Prochaine action minimale apres ce cadrage

Recommandation :

Mettre a jour le pilotage pour pointer vers ce cadrage, puis choisir une seule prochaine action :

```text
preparer une pre-spec courte du noyau P0/P1 observable,
sans patch,
sans objet Max final,
sans routage final,
et sans validation musicale.
```

Sortie attendue de cette future action :

- responsabilites P0/P1 retenues ;
- modes `absent`, `off`, `bypass`, `reduit` ;
- fallback et SIG par responsabilite ;
- separation explicite noyau / optionnel / harness ;
- conditions d'arret avant toute action de patch.

Condition :

Si cette future action commence a choisir des objets Max, un routage, un mapping, une UI, un seuil ou une architecture, elle doit s'arreter et etre requalifiee.
