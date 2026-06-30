# Cadrage operationnel action prototype Max minimal MIN-DID-PC

Statut : cadrage operationnel tres borne avant prototype reel.
Date : 2026-07-01.
Verdict repris : `passage autorise avec reserves`.
Perimetre : documentation seulement, sans modification de `reprise/`, sans modification de l'audit niveau 6 source, sans creation de niveau 6, sans recreation de matrice niveau 6, sans implementation, sans patch Max, sans UI, sans mapping, sans prototype reel, sans asset, sans sample bank, sans seuil numerique, sans objet Max final, sans routage final et sans architecture validee.

## Sources consultees

Fait :

Sources directes consultees :

- `docs/reprise/05_NEXT_ACTIONS.md`
- `docs/reprise/21_DECISION_PASSAGE_PROTOTYPE_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/20_CADRAGE_DOCUMENTAIRE_PREMIER_PROTOTYPE_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/19_PRE_SPEC_MAX_CONCRETE_NON_IMPLEMENTATION_MIN_DID_PC.md`
- `docs/reprise/18_DECISION_SORTIE_REPRISE_DOCUMENTAIRE_VERS_PRE_SPEC_MAX.md`

Fait :

Sources methodologiques consultees :

- `README.md`
- `docs/00_INDEX_METHODE_DECISIONS.md`

Fait :

La presente fiche ne consulte pas la matrice niveau 6 absente comme source, ne modifie pas `reprise/`, ne modifie pas l'audit niveau 6 source et ne produit pas de prototype reel.

## 1. Fait

Fait :

La fiche 18 autorise une sortie documentaire avec reserves vers une pre-specification Max concrete non-implementatoire.

Fait :

La fiche 19 produit une pre-specification minimale `MIN-DID-PC` par responsabilites, chemins critiques, garde-fous, fallback, SIG et exclusions, sans implementation.

Fait :

La fiche 20 cadre le premier prototype minimal `MIN-DID-PC` comme cadrage documentaire avant patch. Elle ne produit pas de prototype reel et ne choisit aucun objet Max final.

Fait :

La fiche 21 autorise avec reserves le passage vers une action ulterieure de prototype Max minimal `MIN-DID-PC`.

Fait :

La fiche 21 demande comme prochaine action un cadrage operationnel separe du prototype Max minimal, avec verification limitee a presence live didgeridoo / PC, `direct/safe`, sortie simple, absence/bypass/reduction de branches optionnelles, fallback et SIG.

Fait :

La matrice niveau 6 source reste absente :

```text
reprise/MATRICE_ARCHITECTURE_MAX_STANDALONE_NIVEAU_6_ROLES_TECHNIQUES_CANDIDATS_CHEMINS_RISQUES_VESPERARE_v0_1.md
```

Fait :

L'audit niveau 6 existant reste symptome documentaire, trace de sequence et checklist. Il ne constitue pas une preuve, une validation niveau 6, une source prescriptive ou une nomenclature active.

## 2. Inference

Inference :

La chaine 18 -> 21 suffit pour preparer operationnellement une action de prototype Max minimal, mais elle ne suffit pas pour valider un niveau 6, une architecture, un routage final, des objets Max finaux ou une implementation generale.

Inference :

Le cadrage operationnel utile consiste a transformer la decision 21 en conditions d'action strictes : quoi verifier, quoi garder minimal, quoi laisser absent/off/bypass/reduit, quoi signaler, quand arreter.

Inference :

Un futur prototype correct devra rester jouable quand les branches optionnelles manquent ou se retirent. Si une branche optionnelle devient indispensable au direct, au safe, a la sortie simple ou a `MIN-DID-PC`, l'action sort du perimetre autorise.

Inference :

La preparation d'une branche de prototype peut etre autorisee apres cette fiche seulement si elle commence par verifier la conformite a la fiche 20 et a la decision 21, avant toute production de patch reel.

## 3. Decision

Decision :

La presente fiche est le cadrage operationnel tres borne de l'action prototype Max minimal `MIN-DID-PC`.

Decision :

Le futur prototype Max minimal est autorise avec reserves par la fiche 21.

Decision :

La presente fiche 22 ne produit pas encore le prototype reel.

Decision :

La presente fiche 22 prepare seulement l'action prototype.

Decision :

La verification reste limitee a :

- presence live didgeridoo / PC ;
- `direct/safe` ;
- sortie simple ;
- absence, bypass ou reduction de branches optionnelles ;
- fallback ;
- SIG.

Decision :

Aucune famille lourde ne peut entrer dans P0/P1, `direct/safe`, protection ou `MIN-DID-PC`.

Decision :

Aucun objet Max final, routage final, UI, mapping, asset, sample bank, seuil numerique, architecture validee, niveau 6 ou matrice niveau 6 ne doit etre produit par la presente fiche.

Decision :

Le patch reel ne doit pas etre produit avant verification explicite que la presente fiche 22 reste conforme aux fiches 20 et 21.

## 4. Recommandation

Recommandation :

La prochaine action minimale doit etre la preparation d'une branche de travail strictement bornee pour le prototype Max minimal `MIN-DID-PC`, pas la production immediate du patch.

Recommandation :

La premiere operation de cette branche devrait etre une verification de conformite a :

- `docs/reprise/20_CADRAGE_DOCUMENTAIRE_PREMIER_PROTOTYPE_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/21_DECISION_PASSAGE_PROTOTYPE_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/22_CADRAGE_OPERATIONNEL_ACTION_PROTOTYPE_MAX_MINIMAL_MIN_DID_PC.md`

Recommandation :

Ne pas demander a Yohan de trancher une architecture non instruite. Lui laisser correction d'intention, refus d'une methode trop lourde, jugement musical et validation finale quand une matiere reelle sera instruite.

## 5. Perimetre operationnel autorise

Decision :

Le perimetre operationnel autorise est limite a preparer une action de prototype Max minimal, sans produire encore le prototype.

Autorise :

- preparer une branche de travail strictement bornee ;
- reprendre les responsabilites minimales `MIN-DID-PC` ;
- verifier la presence live didgeridoo / PC comme relation a preserver ;
- verifier que le direct reste prioritaire ;
- verifier que le safe reste jouable ;
- verifier qu'une sortie simple reste disponible ;
- verifier que les branches optionnelles peuvent etre absentes, off, bypass, reduites ou ignorees ;
- decrire les fallback par absence, bypass, reduction, surcharge, release ou incertitude ;
- decrire les SIG comme signalisation critique situee ;
- maintenir les conditions d'arret avant patch reel.

Interdit dans ce perimetre :

- produire un patch Max ;
- choisir un objet Max final ;
- definir un routage final ;
- creer une UI ;
- creer un mapping ;
- produire un asset ;
- produire une sample bank ;
- fixer un seuil numerique ;
- valider une architecture ;
- creer ou valider un niveau 6 ;
- recreer la matrice niveau 6 absente.

Inference :

Le perimetre est operationnel parce qu'il prepare les conditions d'action. Il reste non-implementatoire parce qu'il ne choisit ni moyens Max finaux, ni connexions, ni objets, ni interface.

## 6. Verification limitee

Decision :

La verification autorisee pour la future action reste seulement :

| Point a verifier | Formulation autorisee | Sortie de perimetre |
|---|---|---|
| Presence live didgeridoo / PC | La relation live didgeridoo / PC / sortie peut rester perceptible et jouable | Transformer la presence live en banque, fichier, driver final ou entree abstraite definitive |
| `direct/safe` | Le direct reste prioritaire et le safe reste jouable si une branche manque ou se retire | Faire porter direct/safe par une famille lourde, script, preset critique, external, plugin ou objet final |
| Sortie simple | Une sortie principale simple reste disponible | Definir un routage final, une matrice, une UI ou une architecture |
| Branches optionnelles | Elles peuvent etre absentes, off, bypass ou reduites | Les rendre indispensables a P0/P1, direct/safe, protection ou `MIN-DID-PC` |
| Fallback | Le repli garde presence live, direct/safe et sortie simple | Transformer le fallback en module final ou en decision expressive cachee |
| SIG | Signaler absence, bypass, reduction, surcharge, release ou incertitude | Produire une UI finale, un log obligatoire, une scene autonome ou une automation expressive |

Condition :

Si une verification veut ajouter une famille lourde ou une decision d'architecture, elle doit etre arretee ou requalifiee avant patch.

## 7. Entrees minimales

Decision :

Les entrees minimales de la preparation sont documentaires et fonctionnelles, pas des entrees Max finales.

Entrees minimales autorisees :

- la chaine documentaire 18 -> 22 ;
- la responsabilite `MIN-DID-PC` formulee sans objets Max finaux ;
- la relation live didgeridoo / PC a preserver ;
- le principe `direct/safe` ;
- l'exigence de sortie simple ;
- l'etat absent/off/bypass/reduit des branches optionnelles ;
- les situations de fallback ;
- les situations de SIG ;
- les interdictions lourdes.

Interdit :

Ces entrees ne doivent pas devenir un choix de driver, d'objet, de routage, de mapping, de source preparee, d'asset, de sample bank ou de seuil numerique.

## 8. Sorties minimales

Decision :

Les sorties minimales de la preparation sont des sorties de cadrage, pas des sorties audio produites.

Sorties minimales autorisees :

- une branche de travail preparee ou a preparer pour le prototype minimal ;
- une verification de conformite a la fiche 22, puis aux fiches 20 et 21 ;
- une question de prototype limitee a presence live didgeridoo / PC, `direct/safe`, sortie simple, branches optionnelles absentes/off/bypass/reduites, fallback et SIG ;
- une liste d'interdictions maintenues ;
- des conditions d'arret avant patch reel.

Interdit :

La sortie minimale ne doit pas etre un patch Max, une UI, un mapping, un asset, une sample bank, un seuil numerique, un objet Max final, un routage final, une architecture validee, un niveau 6 ou un audit.

## 9. Branches optionnelles autorisees seulement comme absentes/off/bypass/reduites

Decision :

Toute branche optionnelle est autorisee seulement comme absente, off, bypass, reduite ou ignoree.

Branches optionnelles admissibles sous ce statut seulement :

- analyse simple non autoritaire ;
- generation simple non vitale ;
- couche simple non vitale ;
- espace simple ou off ;
- source preparee absente ;
- SIG conceptuel ou minimal ;
- observation simple si elle ne decide rien ;
- toute branche future seulement si elle reste hors P0/P1.

Interdit :

Une branche optionnelle ne peut pas devenir condition de :

- P0/P1 ;
- `direct/safe` ;
- protection critique ;
- `MIN-DID-PC` ;
- sortie simple ;
- decision expressive ;
- validation musicale, technique ou architecturale.

Inference :

Si une branche optionnelle devient necessaire pour entendre, proteger ou sortir le noyau minimal, elle n'est plus optionnelle et l'action doit s'arreter.

## 10. Fallback

Decision :

Les fallback restent situes, minimaux et non finaux.

| Situation | Fallback autorise |
|---|---|
| Branche optionnelle absente | Continuer avec presence live, direct/safe et sortie simple |
| Branche optionnelle off | Ignorer la branche sans couper le noyau minimal |
| Bypass actif | Maintenir direct/safe et sortie simple |
| Reduction de couche, densite, voix ou espace | Revenir a simple, off, mono/simple ou stereo/simple selon le cas futur, sans fixer de routage |
| Surcharge | Reduire ou couper le non critique ; preserver direct/safe |
| Release ou retrait | Retirer la couche sans couper la sortie ; preciser ce qui reste perceptible si applicable |
| Incertitude d'analyse | Ignorer l'information optionnelle |
| Source preparee indisponible | Jouer sans fichier, corpus, asset ou sample bank |
| Echec de rappel, preset ou etat cache | Revenir a manuel, defaut ou logique simple non critique |

Interdit :

Un fallback ne doit pas transformer une famille lourde en source indispensable, en protection critique, en routage final ou en decision expressive cachee.

## 11. SIG

Decision :

Le SIG reste une signalisation critique situee. Il ne devient pas UI finale, log obligatoire pour l'audio, scene autonome, automation expressive ou validation technique.

SIG autorises :

- absence ou indisponibilite ;
- bypass actif ;
- reduction ;
- surcharge ;
- release ou retrait ;
- incertitude ;
- fallback manuel ou valeur par defaut ;
- direct/safe preserve.

SIG interdit :

- UI finale ;
- log obligatoire comme condition audio ;
- validation technique ;
- decision musicale ;
- scene autonome ;
- automation expressive ;
- mapping ;
- seuil numerique.

## 12. Interdictions strictes

Interdictions :

- ne pas modifier `reprise/` ;
- ne pas modifier l'audit niveau 6 source ;
- ne pas creer de niveau 6 ;
- ne pas valider de niveau 6 ;
- ne pas recreer la matrice niveau 6 absente ;
- ne pas utiliser l'audit niveau 6 comme preuve ;
- ne pas produire de nouvel audit ;
- ne pas implementer ;
- ne pas produire de patch Max ;
- ne pas produire de prototype reel ;
- ne pas produire UI ;
- ne pas produire mapping ;
- ne pas produire asset ;
- ne pas produire sample bank ;
- ne pas produire seuil numerique ;
- ne pas choisir d'objet Max final ;
- ne pas definir de routage final ;
- ne pas valider d'architecture ;
- ne pas transformer ACT28 en decision artistique definitive ;
- ne pas transformer la sortie documentaire en validation musicale, artistique, technique ou architecturale ;
- ne pas demander a Yohan de trancher une architecture non instruite.

Interdictions lourdes :

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
- outils opaques.

Decision :

Ces familles restent hors P0/P1, hors `direct/safe`, hors protection, hors `MIN-DID-PC` et hors setup minimal.

## 13. Conditions d'arret

Condition d'arret :

Arreter si la suite tente de produire directement un prototype reel, un patch Max, une UI, un mapping, un asset, une sample bank, un seuil numerique, un objet Max final, un routage final, une implementation ou une architecture validee.

Condition d'arret :

Arreter si la suite cree ou valide un niveau 6, recree la matrice niveau 6 absente, modifie `reprise/`, modifie l'audit niveau 6 source ou utilise l'audit niveau 6 comme preuve.

Condition d'arret :

Arreter si une famille lourde devient condition de P0/P1, `direct/safe`, protection, `MIN-DID-PC`, grave critique, scene, HAL/SPC/REV ou decision expressive.

Condition d'arret :

Arreter si la verification depasse presence live didgeridoo / PC, `direct/safe`, sortie simple, absence/bypass/reduction de branches optionnelles, fallback et SIG.

Condition d'arret :

Arreter si la preparation de branche commence a choisir un objet Max final, un routage final, une UI, un mapping, un asset, une sample bank, un seuil numerique ou une architecture.

Condition d'arret :

Arreter si le patch reel est produit avant verification explicite que la presente fiche 22 reste conforme aux fiches 20 et 21.

Condition d'arret :

Arreter si le cadrage operationnel devient validation musicale, artistique, technique ou architecturale.

Condition d'arret :

Arreter et requalifier si la matrice niveau 6 absente est retrouvee : elle devra etre relue contre ACT28 et contre la chaine documentaire avant toute suite, sans validation automatique.

## 14. Prochaine action exacte

Decision :

Prochaine action exacte :

```text
preparer une branche de travail pour le prototype Max minimal MIN-DID-PC,
strictement bornee par la presente fiche 22, par la fiche 20 et par la
decision 21, sans produire encore le patch reel.
```

Decision :

Avant tout patch reel, verifier explicitement que la presente fiche 22 reste conforme a :

- `docs/reprise/20_CADRAGE_DOCUMENTAIRE_PREMIER_PROTOTYPE_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/21_DECISION_PASSAGE_PROTOTYPE_MAX_MINIMAL_MIN_DID_PC.md`

Recommandation :

La branche de travail ne doit contenir, au depart, qu'une preparation strictement bornee de l'action prototype : question de verification, perimetre, interdictions, fallback, SIG et conditions d'arret.

Interdit :

Cette prochaine action ne doit pas produire de famille lourde en P0/P1, `direct/safe`, protection ou `MIN-DID-PC`. Elle ne doit pas produire objet Max final, routage final, UI, mapping, asset, sample bank, seuil numerique, niveau 6, matrice niveau 6, audit ou architecture validee.

Arret :

La presente fiche s'arrete ici. Elle prepare l'action prototype, mais ne produit pas le prototype reel.
