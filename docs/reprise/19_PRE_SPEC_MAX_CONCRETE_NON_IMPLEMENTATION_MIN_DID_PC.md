# Pre-specification Max concrete non-implementatoire minimale MIN-DID-PC

Statut : pre-specification Max concrete non-implementatoire minimale.
Date : 2026-06-30.
Verdict repris : `sortie documentaire autorisee avec reserves`.
Perimetre : documentation seulement, sans modification de `reprise/`, sans modification de l'audit niveau 6 source, sans creation de niveau 6, sans recreation de matrice niveau 6, sans implementation, sans patch Max, sans UI, sans mapping, sans prototype, sans asset, sans sample bank, sans seuil numerique et sans objet Max final.

## 1. Statut du document

Fait :

La fiche 18 autorise une sortie documentaire avec reserves vers une pre-specification Max concrete non-implementatoire.

Decision :

La presente fiche est cette pre-specification minimale. Elle reduit les acquis documentaires vers des responsabilites, chemins critiques, garde-fous et conditions avant patch.

Decision :

Cette fiche n'est pas :

- un audit ;
- un niveau 6 ;
- une matrice ;
- une architecture validee ;
- une liste d'objets Max finaux ;
- un patch Max ;
- un mapping ;
- une UI ;
- un prototype ;
- un asset ;
- une sample bank ;
- une implementation.

Inference :

La fiche peut etre concrete seulement au sens documentaire : elle nomme ce qui doit rester garanti, exclu, signale ou arrete avant tout passage au patch. Elle ne choisit pas comment Max doit router, instancier ou implementer ces garanties.

## 2. Sources autorisees

Fait :

Sources autorisees et consultees pour cette fiche :

- `docs/reprise/05_NEXT_ACTIONS.md`
- `docs/reprise/18_DECISION_SORTIE_REPRISE_DOCUMENTAIRE_VERS_PRE_SPEC_MAX.md`
- `docs/reprise/17_RECONDITIONNEMENT_DOCUMENTAIRE_BORNE_NIVEAU_6_ACT28.md`
- `docs/reprise/16_STATUT_TABLE_15_RECONDITIONNEMENT_NIVEAU_6.md`
- `docs/reprise/15_RECONCILIATION_NIVEAU_6_CORRIGEE_TABLE_COURTE.md`
- `docs/reprise/12_CORRECTIONS_DOCUMENTAIRES_NIVEAU_6_ACT28.md`
- `docs/reprise/08_SYNCHRONISATION_NIVEAU_5_MATRICE_LOURDE_STATUTS_CHEMINS_FALLBACK_SIG.md`
- `docs/reprise/07_AUDIT_COMPATIBILITE_NIVEAU_5_OBJETS_MAX_CANDIDATS_AVEC_MATRICE_SYNTHESE_CANDIDATS_LOURDS_VESPERARE_v0_1.md`
- `docs/reprise/MANIFEST_FICHIERS.yml`

Fait :

La matrice niveau 6 source reste absente :

```text
reprise/MATRICE_ARCHITECTURE_MAX_STANDALONE_NIVEAU_6_ROLES_TECHNIQUES_CANDIDATS_CHEMINS_RISQUES_VESPERARE_v0_1.md
```

Decision :

Cette fiche ne consulte pas cette matrice absente comme source, ne la reconstruit pas et ne la remplace pas.

Decision :

L'audit niveau 6 source n'est pas modifie. Il reste symptome documentaire, trace de sequence et checklist, pas preuve ni source prescriptive.

## 3. Fait / Inference / Decision / Recommandation

Fait :

Un fait dans cette fiche reprend un statut, une contrainte ou une formule deja stabilisee par les sources autorisees.

Inference :

Une inference organise ces faits vers une pre-specification minimale. Elle ne vaut ni preuve technique, ni validation musicale, ni validation de niveau 6.

Decision :

Une decision dans cette fiche est une decision documentaire de cadrage. Elle ne choisit aucun objet Max final, aucun routage Max final, aucune architecture et aucune implementation.

Recommandation :

Une recommandation indique la prochaine action documentaire minimale ou une condition de prudence. Elle ne demande pas a Yohan de trancher une architecture non instruite et ne transforme pas ACT28 en decision artistique definitive.

Condition :

Si une phrase devient prescriptive techniquement, choisit un objet final, decrit un patch, produit un mapping ou valide le niveau 6, elle sort du statut de cette fiche et doit etre retiree ou requalifiee.

## 4. Responsabilites minimales MIN-DID-PC

Fait :

Les sources demandent que `MIN-DID-PC` soit formule par responsabilites minimales, sans accumulation d'objets, sans liste de modules obligatoires et sans dependance lourde.

Decision :

`MIN-DID-PC` designe ici un noyau de responsabilites minimales, pas une nomenclature d'objets Max.

| Responsabilite minimale | Ce qui doit rester garanti | Ce qui reste exclu |
|---|---|---|
| Presence live didgeridoo / PC | Une presence live du didgeridoo peut rester disponible au systeme et a la sortie jouable | Source preparee obligatoire, corpus obligatoire, fichier obligatoire, driver final fixe |
| Direct | Un chemin direct reste lisible, prioritaire et sortible | Famille lourde sur le direct critique, routage final deduit, objet final |
| Safe | Un repli ou bypass jouable existe quand une branche optionnelle manque, bypass ou degrade | Remplacement par polyphonie, script, preset, modele opaque ou decision cachee |
| Mix | Une sortie principale simple reste controlable et comprehensible | Matrice finale non auditee, routage opaque, mix autonome |
| Generation simple | Une generation minimale peut exister seulement sous controle live et comme couche non vitale | `gen~`, `poly~`, MC, Markov, ML, grammaire ou modele obligatoire |
| Analyse simple | Une observation non autoritaire peut aider le suivi | FFT/pfft, spectral lourd, classification ou score de confiance obligatoire |
| Espace simple | Un espace minimal peut exister sans devenir condition de jouabilite | Reverb, convolution, IR, corpus ou halo comme condition de sortie |
| Protection | Des limites, bypass et sorties de secours restent visibles documentairement | External, plugin, script, preset critique ou seuil numerique fictif comme protection |
| Controle live | Le geste humain reste prioritaire dans les decisions expressives | Automation qui decide scene, transgression, tension, densite ou override |
| Signalisation critique | Les absences, bypass, reductions, surcharges, releases ou incertitudes peuvent etre signalees | UI finale obligatoire, log technique comme condition audio, SIG comme decision expressive |

Inference :

Ces responsabilites suffisent pour cadrer un premier noyau minimal. Elles ne suffisent pas pour produire un patch, choisir un objet Max final ou valider une architecture.

## 5. Chemins critiques non-implementatoires

Decision :

Les chemins critiques ci-dessous sont des chemins de responsabilite. Ils ne sont pas des routages Max, des `PATH-*` valides, des connexions, des patchers ou des objets.

| Chemin critique documentaire | Responsabilite | Interdit dans cette fiche |
|---|---|---|
| Presence live vers sortie jouable | Preserver la relation didgeridoo / PC / sortie sans source preparee obligatoire | Choisir entree, driver, routage, objet final ou mapping |
| Direct | Garder un chemin direct lisible, sortible et non remplace par une famille lourde | Transformer `PATH-DID-DIRECT` en routage Max final |
| Safe / bypass | Garder un repli jouable si une branche manque, surcharge, release ou echoue | Faire porter le safe a un script, preset, modele, external ou objet lourd |
| Mix / sortie principale | Garder une sortie simple et controlable | Valider une matrice, un mix autonome ou un routage final |
| Protection | Garder des conditions de sortie de secours et d'arret avant risque | Creer des seuils numeriques, protections cachees ou automations expressives |
| Controle live | Maintenir une priorite humaine sur les decisions expressives | Deleguer scene, tension, densite, franchissement ou override a l'automation |
| Signalisation critique | Signaler absence, bypass, reduction, surcharge, release ou incertitude affectant le live | Produire une UI finale ou un systeme de logs comme implementation |
| Branches simples optionnelles | Analyse simple, generation simple ou espace simple peuvent etre absents ou degrades | Faire d'une branche optionnelle une condition P0/P1, direct/safe ou `MIN-DID-PC` |

Inference :

Le vocabulaire `PATH`, quand il apparait dans les sources, reste un vocabulaire a reconditionner. Il ne devient pas contrat de routage Max reel dans cette fiche.

## 6. Clauses direct/safe

Decision :

`direct/safe` est un garde-fou transversal.

Clauses :

- le direct reste prioritaire, lisible et non remplace par une famille lourde ;
- le safe reste un repli jouable, pas une promesse technique non verifiee ;
- toute branche optionnelle doit pouvoir etre absente, bypass, reduite, surchargee ou retiree sans couper le direct/safe ;
- un SIG peut signaler l'etat du direct/safe, mais ne decide pas la situation musicale ;
- aucune famille lourde ne peut devenir protection critique, direct critique, safe obligatoire ou condition de `MIN-DID-PC`.

Interdit :

`direct/safe` ne peut pas etre remplace par `gen~`, `poly~`, MC, `buffer~`, corpus, IR, convolution, pfft/FFT, script, preset critique, external, plugin, ML, Markov, grammaire ou outil opaque.

## 7. Priorites P0/P1

Fait :

Les sources maintiennent que les candidats lourds restent interdits par defaut en P0/P1 et ne peuvent pas conditionner direct/safe, protection ou `MIN-DID-PC`.

Decision :

P0/P1 sont des priorites documentaires. Elles ne sont pas des seuils numeriques, des benchmarks, des preuves de latence ou des niveaux valides de routage.

| Priorite | Contenu minimal admissible | Exclusion |
|---|---|---|
| P0 | Presence live, direct, safe, sortie jouable, protection documentaire, controle live prioritaire, SIG critique | Familles lourdes, source preparee obligatoire, objet Max final, script, preset, external, plugin, seuil numerique |
| P1 | Mix simple, observation simple, generation simple non vitale, espace simple non vital, conditions fallback/SIG lisibles | Familles lourdes comme condition, routage opaque, matrice finale, corpus, IR, convolution, ML, Markov, grammaire, outil opaque |

Recommandation :

Toute future action qui veut introduire une famille lourde doit la maintenir hors P0/P1 et hors setup minimal, avec statut non final, fonction situee, sortie, fallback, mode absent ou degrade, SIG et condition d'arret avant implementation.

## 8. Fallback situes

Decision :

Les fallback sont situes par risque. Ils ne sont pas des modules, objets ou branches Max finales.

| Risque ou mode degrade | Fallback documentaire minimal |
|---|---|
| Absence de source optionnelle, fichier, corpus ou support prepare | Jouer sans source preparee ; conserver presence live, direct/safe et sortie simple |
| Bypass ou echec d'une famille lourde | Mettre la branche optionnelle off, native ou simple ; ne pas affecter P0/P1 |
| Reduction de densite, voix, couche ou espace | Revenir a mono/simple, stereo/simple, couche reduite ou espace simple/off |
| Surcharge ou limitation de charge | Couper ou reduire les branches non critiques ; preserver direct/safe et controle live |
| Release ou retrait d'une couche optionnelle | Retirer la couche sans couper la sortie ; signaler ce qui reste perceptible si un reste existe |
| Incertitude ou outil opaque | Ignorer la sortie optionnelle, revenir a observation simple ou deterministe/simple |
| Echec de script, preset, etat cache ou rappel | Revenir a etat manuel, valeur par defaut ou logique simple non critique |

Inference :

Un fallback est correct seulement s'il laisse une sortie jouable et ne transforme pas une famille lourde en source indispensable.

## 9. SIG situes

Decision :

Les SIG sont situes par risque, absence ou mode degrade. Ils ne sont pas une UI finale, un log obligatoire ou une decision expressive.

| Situation a signaler | SIG attendu |
|---|---|
| Absence ou indisponibilite | Indiquer ce qui manque et si la sortie reste jouable |
| Bypass actif | Indiquer quelle branche optionnelle est ignoree ou off |
| Reduction | Indiquer reduction de couche, densite, voix, corpus, espace ou traitement |
| Surcharge | Indiquer que la reduction protege les chemins minimaux |
| Release ou retrait | Indiquer que la couche est retiree, ce qui reste perceptible si applicable, et la sortie attendue |
| Incertitude ou influence perceptible | Indiquer l'influence sans lui donner autorite musicale |
| Fallback manuel ou valeur par defaut | Indiquer que le systeme n'utilise pas le rappel, script, preset ou source optionnelle attendu |

Recommandation :

Le SIG doit rester lisible pour proteger le jeu et la sortie. Il ne doit pas devenir une scene, une automation cachee, une validation technique ou une decision artistique.

## 10. Exclusions strictes

Decision :

Les familles lourdes sont exclues du setup minimal, de P0/P1, de direct/safe, de la protection critique et de `MIN-DID-PC`.

Exclusions strictes dans cette fiche :

- `gen~` ;
- `poly~` ;
- MC ;
- `buffer~`, playback, fichiers prepares et corpus ;
- IR, convolution, reverb comme condition, espace lourd, halo lourd et cross-convolution ;
- pfft/FFT, spectral lourd, granularite complexe et modeles physiques ;
- scripts, `js`, node, etats caches, presets et presets critiques ;
- externals, packages, plugins, runtimes tiers et bibliotheques custom ;
- ML, classification, prediction, Markov, grammaire, statistiques et outils opaques ;
- objets Max finaux ;
- patch Max ;
- mapping ;
- UI ;
- prototype ;
- asset ;
- sample bank ;
- seuil numerique ;
- architecture validee ;
- niveau 6 ;
- matrice niveau 6 recreee ou inferee.

Inference :

Ces familles peuvent etre citees seulement comme risques, exclusions ou objets d'un futur cadrage conditionnel. Elles ne sont pas choisies, validees ou implementees ici.

## 11. Conditions avant patch

Decision :

Aucun patch ne peut etre produit depuis cette fiche.

Conditions documentaires minimales avant tout patch eventuel :

1. Confirmer que `MIN-DID-PC` reste formule par responsabilites, pas par objets.
2. Confirmer que P0/P1 restent hors familles lourdes.
3. Confirmer que direct/safe restent transversaux, lisibles et non remplaces.
4. Decrire toute branche optionnelle par responsabilite, risque, mode absent/degrade, fallback et SIG.
5. Verifier que le futur cadrage ne choisit aucun objet Max final et ne produit aucun routage final.
6. Identifier les exclusions lourdes avant toute hypothese de patch.
7. Maintenir la matrice niveau 6 absente hors preuve, hors validation et hors prescription.
8. Ne pas demander a Yohan de valider une architecture non instruite ; lui laisser seulement correction d'intention, jugement musical et validation finale quand la matiere sera reellement instruite.

Condition :

Si une condition avant patch exige une famille lourde en P0/P1, direct/safe, protection ou `MIN-DID-PC`, l'action doit s'arreter.

## 12. Conditions d'arret

Condition d'arret :

Arreter si une suite tente de transformer cette fiche en audit, niveau 6, matrice, architecture validee, preuve ou source prescriptive.

Condition d'arret :

Arreter si une suite tente de modifier `reprise/`, de modifier l'audit niveau 6 source, de recreer la matrice niveau 6 absente ou d'utiliser l'audit niveau 6 comme preuve.

Condition d'arret :

Arreter si une suite choisit un objet Max final, un routage Max final, un patch, une UI, un mapping, un prototype, un asset, une sample bank, un seuil numerique ou une implementation.

Condition d'arret :

Arreter si une famille lourde devient condition de P0/P1, direct/safe, protection, `MIN-DID-PC`, grave critique, scene, HAL/SPC/REV, controle live prioritaire ou decision expressive.

Condition d'arret :

Arreter si ACT28 est transforme en decision artistique definitive ou si la sortie documentaire est lue comme validation musicale, artistique, technique ou architecturale.

Condition d'arret :

Arreter et requalifier si la matrice niveau 6 absente est retrouvee : elle devra etre relue contre ACT28 et contre la chaine documentaire, sans validation automatique.

## 13. Prochaine action exacte

Decision :

Prochaine action exacte :

```text
cadrer le premier prototype minimal MIN-DID-PC, uniquement comme cadrage
documentaire avant patch, si et seulement si la presente fiche 19 ne glisse
pas vers implementation.
```

Sortie attendue de cette prochaine action :

- objectif minimal du prototype, sans implementation ;
- responsabilites P0/P1 formulees sans objet Max final ;
- clauses direct/safe reprises comme garde-fou transversal ;
- exclusions lourdes maintenues hors setup minimal ;
- fallback et SIG situes par risque, absence, bypass, reduction, surcharge ou release ;
- conditions d'arret avant patch ;
- rappel que la matrice niveau 6 absente bloque validation, preuve et prescription niveau 6, mais ne bloque pas ce cadrage minimal non-implementatoire.

Interdit :

Cette prochaine action ne doit pas etre un nouvel audit, une matrice, un niveau 6, un patch, un mapping, une UI, un prototype reel, un asset, une sample bank, un seuil numerique, un choix d'objet Max final ou une implementation.

