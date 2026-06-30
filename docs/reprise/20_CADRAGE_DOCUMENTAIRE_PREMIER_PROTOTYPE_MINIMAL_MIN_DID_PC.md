# Cadrage documentaire premier prototype minimal MIN-DID-PC

Statut : cadrage documentaire avant patch pour un premier prototype minimal `MIN-DID-PC`.
Date : 2026-06-30.
Verdict repris : `sortie documentaire autorisee avec reserves`.
Perimetre : documentation seulement, sans modification de `reprise/`, sans modification de l'audit niveau 6 source, sans creation de niveau 6, sans recreation de matrice niveau 6, sans implementation, sans patch Max, sans UI, sans mapping, sans prototype reel, sans asset, sans sample bank, sans seuil numerique et sans objet Max final.

## 1. Statut du document

Fait :

La fiche 19 autorise comme prochaine action un cadrage du premier prototype minimal `MIN-DID-PC`, uniquement comme cadrage documentaire avant patch.

Decision :

La presente fiche est ce cadrage documentaire.

Decision :

Cette fiche n'est pas :

- un prototype reel ;
- un patch Max ;
- une implementation ;
- une UI ;
- un mapping ;
- un asset ;
- une sample bank ;
- une liste d'objets Max finaux ;
- un routage Max final ;
- une architecture validee ;
- un audit nouveau ;
- un niveau 6 ;
- une matrice niveau 6 recreee.

Inference :

La fiche peut decrire ce qu'un futur premier prototype devra verifier musicalement et techniquement. Elle ne construit pas ce prototype et ne choisit pas les moyens Max finaux.

## 2. Sources autorisees

Fait :

Sources autorisees et consultees :

- `docs/reprise/05_NEXT_ACTIONS.md`
- `docs/reprise/19_PRE_SPEC_MAX_CONCRETE_NON_IMPLEMENTATION_MIN_DID_PC.md`
- `docs/reprise/18_DECISION_SORTIE_REPRISE_DOCUMENTAIRE_VERS_PRE_SPEC_MAX.md`
- `docs/reprise/17_RECONDITIONNEMENT_DOCUMENTAIRE_BORNE_NIVEAU_6_ACT28.md`
- `docs/reprise/08_SYNCHRONISATION_NIVEAU_5_MATRICE_LOURDE_STATUTS_CHEMINS_FALLBACK_SIG.md`
- `docs/reprise/07_AUDIT_COMPATIBILITE_NIVEAU_5_OBJETS_MAX_CANDIDATS_AVEC_MATRICE_SYNTHESE_CANDIDATS_LOURDS_VESPERARE_v0_1.md`
- `docs/reprise/MANIFEST_FICHIERS.yml`

Fait :

La matrice niveau 6 source reste absente :

```text
reprise/MATRICE_ARCHITECTURE_MAX_STANDALONE_NIVEAU_6_ROLES_TECHNIQUES_CANDIDATS_CHEMINS_RISQUES_VESPERARE_v0_1.md
```

Decision :

La presente fiche ne consulte pas cette matrice absente comme source, ne la reconstruit pas et ne la remplace pas.

Decision :

L'audit niveau 6 source n'est pas modifie et ne devient pas preuve, source prescriptive ou nomenclature active.

## 3. Fait / Inference / Decision / Recommandation

Fait :

Un fait reprend un statut, une contrainte ou une formule deja stabilisee dans les sources autorisees.

Inference :

Une inference organise ces faits vers un cadrage avant patch. Elle ne vaut ni validation musicale, ni preuve technique, ni validation niveau 6.

Decision :

Une decision fixe une limite documentaire pour la suite. Elle ne choisit aucun objet Max final, aucun routage final, aucune architecture et aucune implementation.

Recommandation :

Une recommandation propose la prochaine action minimale ou une prudence de lecture. Elle ne demande pas a Yohan de trancher une architecture non instruite et ne transforme pas ACT28 en decision artistique definitive.

Condition :

Toute phrase qui choisirait un objet final, produirait un patch, definirait un mapping, fixerait un seuil numerique ou validerait un niveau 6 sort du statut de cette fiche.

## 4. Objectif minimal du prototype

Decision :

Le futur premier prototype minimal, s'il est autorise plus tard, devra verifier un noyau jouable minimal `MIN-DID-PC` par responsabilites, pas une architecture.

Objectif musical minimal a verifier plus tard :

- la relation didgeridoo / PC / sortie jouable reste perceptible comme presence live et non comme banque preparee ;
- le direct reste prioritaire et audible quand les branches optionnelles sont absentes, bypass ou reduites ;
- le safe laisse une sortie jouable si une couche optionnelle echoue, se retire ou devient inutile ;
- le controle live garde la priorite sur les decisions expressives, notamment densite, tension, maintien au bord, franchissement de limite et override ;
- les reductions, retraits et bypass ne produisent pas une scene autonome cachee.

Objectif technique minimal a verifier plus tard :

- une presence live peut entrer dans un systeme Max standalone futur sans source preparee obligatoire ;
- une sortie simple reste disponible si tout ce qui est optionnel est absent ;
- une branche optionnelle peut etre absente, off, bypass, reduite ou ignoree sans couper direct/safe ;
- un SIG minimal peut signaler absence, bypass, reduction, surcharge, release ou incertitude sans devenir UI finale ;
- aucune famille lourde ne devient condition de P0/P1, direct/safe, protection ou `MIN-DID-PC`.

Inference :

Ce prototype futur sert a verifier la jouabilite minimale et les risques de glissement. Il ne sert pas a valider le niveau 6, a choisir une architecture ou a tester une esthetique complete.

## 5. Responsabilites P0/P1 sans objet Max final

Decision :

P0/P1 restent des responsabilites documentaires. Elles ne sont pas des objets Max, modules, patchers, seuils, benchmarks ou preuves de latence.

| Priorite | Responsabilites minimales admissibles | Ce qui reste interdit |
|---|---|---|
| P0 | Presence live didgeridoo / PC, direct prioritaire, safe jouable, sortie simple, controle live prioritaire, protection documentaire, SIG critique minimal | Objet Max final, routage final, famille lourde, source preparee obligatoire, script, preset critique, external, plugin, seuil numerique |
| P1 | Mix simple, observation simple non autoritaire, couche simple non vitale, espace simple/off, fallback lisible, SIG de reduction ou absence | Famille lourde comme condition, corpus, IR, convolution, pfft/FFT, ML, Markov, grammaire, routage opaque, matrice finale |

Decision :

`MIN-DID-PC` reste formule par responsabilites minimales :

- presence live didgeridoo / PC ;
- direct ;
- safe ;
- sortie simple ;
- mix simple ;
- observation simple non autoritaire ;
- couche simple non vitale ;
- espace simple ou off ;
- protection visible ;
- controle live prioritaire ;
- signalisation critique.

Inference :

Une responsabilite peut etre testee plus tard par plusieurs moyens techniques. La presente fiche ne choisit pas ces moyens.

## 6. Garde-fous direct/safe

Decision :

`direct/safe` est prioritaire et transversal.

Garde-fous :

- le direct ne doit pas etre remplace par une famille lourde ;
- le safe doit rester un repli jouable et lisible ;
- le direct doit rester disponible quand une branche optionnelle est absente, bypass, reduite, surchargee ou retiree ;
- le safe ne doit pas dependre d'un script, preset critique, external, plugin, modele opaque ou source preparee ;
- un SIG peut indiquer l'etat du direct/safe, mais ne decide pas la situation musicale ;
- aucune automation ne prend les decisions expressives de densite, tension, franchissement, maintien au bord ou override.

Interdit :

`direct/safe` ne peut pas etre porte ou remplace par `gen~`, `poly~`, MC, `buffer~`, corpus, IR, convolution, pfft/FFT, script, preset critique, external, plugin, ML, Markov, grammaire ou outil opaque.

## 7. Setup minimal admissible

Decision :

Le setup minimal admissible est seulement une limite documentaire pour un futur patch eventuel. Il n'est pas construit ici.

Setup minimal admissible, si un patch est autorise plus tard :

- environnement Max standalone, sans dependance obligatoire externe ;
- presence live didgeridoo / PC comme relation a preserver, pas comme simple entree audio abstraite ;
- sortie principale simple ;
- direct prioritaire ;
- safe jouable ;
- controle live manuel prioritaire ;
- branches optionnelles desactivees par defaut si elles menacent P0/P1 ;
- SIG minimal d'absence, bypass, reduction, surcharge, release ou incertitude ;
- aucune source preparee obligatoire ;
- aucun corpus, asset, sample bank ou fichier indispensable.

Peut etre absent, bypass, reduit ou signale :

| Element | Statut admissible avant patch |
|---|---|
| Analyse simple | Peut etre absente ou reduite si elle n'est pas necessaire a la sortie jouable |
| Generation simple | Peut etre absente, off ou reduite ; jamais condition de P0/P1 |
| Espace simple | Peut etre off ; jamais condition de sortie |
| Source preparee | Peut etre absente ; ne doit pas couper la presence live ou le direct |
| SIG | Peut etre textuel, conceptuel ou reporte ; ne devient pas UI finale |
| Branches lourdes | Doivent rester absentes du setup minimal |

Inference :

Le setup minimal correct est celui qui reste jouable quand les couches optionnelles manquent. Un setup qui exige une famille lourde pour son direct ou son safe n'est pas minimal.

## 8. Branches explicitement exclues du prototype minimal

Decision :

Les branches suivantes sont exclues du prototype minimal, de P0/P1, de direct/safe, de la protection critique et de `MIN-DID-PC` :

- `gen~` ;
- `poly~` ;
- MC ;
- `buffer~` ;
- playback prepare ;
- corpus ;
- IR ;
- convolution ;
- reverb comme condition de sortie ;
- pfft/FFT ;
- spectral lourd ;
- granularite complexe ;
- modeles physiques ;
- scripts, `js`, node et logique opaque ;
- presets critiques et etats caches ;
- externals ;
- packages et runtimes tiers obligatoires ;
- plugins ;
- ML ;
- classification ;
- prediction ;
- Markov ;
- grammaire ;
- statistiques decisionnelles ;
- outils opaques ;
- UI finale ;
- mapping ;
- asset ;
- sample bank ;
- seuil numerique ;
- routage final ;
- objet Max final.

Inference :

Ces familles peuvent etre citees seulement comme risques, exclusions ou objets d'un futur cadrage conditionnel separe. Elles ne sont pas choisies, validees ou implementees ici.

## 9. Fallback et SIG attendus

Decision :

Fallback et SIG sont attendus par situation. Ils ne sont pas des modules, objets, patchers, UI finale ou decisions expressives.

| Situation future possible | Fallback minimal attendu | SIG attendu |
|---|---|---|
| Branche optionnelle absente | Continuer avec presence live, direct/safe et sortie simple | Signaler ce qui manque et que la sortie reste jouable |
| Bypass actif | Ignorer la branche optionnelle | Signaler la branche bypass |
| Reduction de couche, densite, voix ou espace | Revenir a simple, off, mono/simple ou stereo/simple selon le cas futur | Signaler la reduction sans en faire une scene |
| Surcharge ou limite de charge | Couper ou reduire le non critique | Signaler que direct/safe est preserve |
| Release ou retrait d'une couche | Retirer la couche sans couper la sortie | Signaler le retrait, ce qui reste perceptible si applicable, et la sortie attendue |
| Incertitude d'analyse ou outil opaque | Ignorer l'information optionnelle | Signaler l'incertitude sans autorite musicale |
| Source preparee indisponible | Jouer sans fichier, corpus, asset ou sample bank | Signaler l'absence du support optionnel |
| Echec d'un rappel, preset ou etat cache | Revenir a un etat manuel ou par defaut non critique | Signaler le rappel ignore ou partiel |

Inference :

Un fallback est admissible seulement s'il ne transforme pas une famille lourde en source indispensable et s'il laisse une sortie jouable.

## 10. Conditions avant patch

Decision :

Aucun patch ne peut etre produit depuis cette fiche.

Conditions minimales avant d'autoriser un futur patch :

1. Confirmer que la decision porte seulement sur un prototype Max minimal, pas sur un niveau 6.
2. Confirmer que le prototype futur a une question de verification limitee : presence live didgeridoo / PC, direct/safe, sortie simple, absence/bypass/reduction et SIG.
3. Confirmer que `MIN-DID-PC` reste formule par responsabilites, pas par objets.
4. Confirmer que P0/P1 restent hors familles lourdes.
5. Confirmer que direct/safe restent prioritaires, lisibles et non remplaces.
6. Confirmer que toute branche optionnelle peut etre absente, off, bypass, reduite ou ignoree.
7. Confirmer qu'aucun objet Max final, routage final, mapping, UI, asset, sample bank ou seuil numerique n'est choisi avant le patch.
8. Confirmer que la matrice niveau 6 absente reste hors preuve, hors validation et hors prescription.
9. Confirmer que l'audit niveau 6 source n'est pas modifie et n'est pas utilise comme preuve.
10. Confirmer que la prochaine action explicite autorise ou refuse seulement le passage a un prototype Max minimal, sans produire ce prototype dans la meme action.

Condition :

Si une de ces conditions ne peut pas etre tenue, le passage au patch doit etre refuse ou reporte.

## 11. Conditions d'arret

Condition d'arret :

Arreter si la suite tente de transformer cette fiche en prototype reel, patch Max, implementation, UI, mapping, asset, sample bank, seuil numerique, objet Max final, routage final ou architecture validee.

Condition d'arret :

Arreter si la suite cree ou valide un niveau 6, recree la matrice niveau 6 absente, modifie `reprise/`, modifie l'audit niveau 6 source ou utilise l'audit niveau 6 comme preuve.

Condition d'arret :

Arreter si une famille lourde devient condition de P0/P1, direct/safe, protection, `MIN-DID-PC`, grave critique, scene, HAL/SPC/REV ou decision expressive.

Condition d'arret :

Arreter si un SIG devient UI finale, log obligatoire pour l'audio, scene autonome, automation expressive ou validation technique.

Condition d'arret :

Arreter si la decision humaine attendue devient validation d'une architecture non instruite au lieu d'un passage ou non vers un prototype minimal strictement borne.

Condition d'arret :

Arreter et requalifier si la matrice niveau 6 absente est retrouvee : elle devra etre relue contre ACT28 et contre la chaine documentaire, sans validation automatique.

## 12. Prochaine action exacte

Decision :

Prochaine action exacte :

```text
prendre une decision documentaire explicite de passage ou non vers un
prototype Max minimal MIN-DID-PC, a partir de la presente fiche 20 et de
docs/reprise/05_NEXT_ACTIONS.md, sans produire le prototype reel dans cette
action.
```

Cette prochaine action doit choisir seulement entre :

- autoriser une action ulterieure de prototype Max minimal, strictement bornee par cette fiche ;
- refuser le passage au prototype et maintenir la phase documentaire ;
- demander une correction documentaire ciblee de la fiche 20 avant toute decision.

Interdit :

Cette prochaine action ne produit pas le prototype reel. Elle ne produit pas de patch Max, UI, mapping, asset, sample bank, seuil numerique, objet Max final, routage final, niveau 6, matrice niveau 6 ou implementation.

Arret :

La presente fiche s'arrete ici. Elle cadre un prototype possible, mais ne l'autorise pas encore comme production.
