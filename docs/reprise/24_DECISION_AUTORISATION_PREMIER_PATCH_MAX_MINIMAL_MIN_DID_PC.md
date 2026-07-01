# Decision autorisation premier patch Max minimal MIN-DID-PC

Statut : decision documentaire d'autorisation reservee pour une action ulterieure de premier patch Max minimal `MIN-DID-PC`.
Date : 2026-07-01.
Verdict : `passage patch minimal autorise avec reserves`.
Perimetre : documentation seulement dans la presente fiche, sans production de patch Max, sans modification de `reprise/`, sans modification de l'audit niveau 6 source, sans creation de niveau 6, sans recreation de matrice niveau 6, sans UI, sans mapping, sans asset, sans sample bank, sans seuil numerique, sans objet Max final, sans routage final et sans architecture validee.

## Sources consultees

Fait :

Sources directes consultees :

- `docs/reprise/05_NEXT_ACTIONS.md`
- `docs/reprise/23_PREPARATION_BRANCHE_PROTOTYPE_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/22_CADRAGE_OPERATIONNEL_ACTION_PROTOTYPE_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/21_DECISION_PASSAGE_PROTOTYPE_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/20_CADRAGE_DOCUMENTAIRE_PREMIER_PROTOTYPE_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/19_PRE_SPEC_MAX_CONCRETE_NON_IMPLEMENTATION_MIN_DID_PC.md`

Fait :

Sources methodologiques consultees :

- `README.md`
- `docs/00_INDEX_METHODE_DECISIONS.md`
- `docs/45_REPRISE_DEPUIS_FICHE_MESURES_INSTRUMENTS.md`
- `docs/42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md`
- `docs/modules/18_CONTEXTUAL_CONTROL_ROUTER_AMPLITUDES_LIMITES_OVERRIDE_ADDENDUM.md`
- `docs/assets/00_ASSETS_INDEX.md`
- `docs/assets/15_DONNEES_INSTRUMENTALES_MANQUANTES_PRIORITAIRES.md`
- `docs/assets/16_ACOUSTICARCHIVE_MAPPING_DONNEES_VESPERARE.md`

Fait :

La presente fiche ne consulte pas la matrice niveau 6 absente comme source, ne modifie pas `reprise/`, ne modifie pas l'audit niveau 6 source et ne produit pas le patch Max minimal.

## 1. Fait

Fait :

La fiche 19 stabilise une pre-specification Max concrete non-implementatoire minimale `MIN-DID-PC` par responsabilites, chemins critiques, garde-fous, fallback, SIG et exclusions lourdes.

Fait :

La fiche 20 cadre le premier prototype minimal `MIN-DID-PC` comme document avant patch. Elle ne produit pas le prototype reel et ne choisit aucun objet Max final.

Fait :

La fiche 21 autorise avec reserves le passage vers une action ulterieure de prototype Max minimal `MIN-DID-PC`, strictement bornee par la fiche 20.

Fait :

La fiche 22 cadre operationnellement l'action prototype Max minimal avec verification limitee a :

- presence live didgeridoo / PC ;
- `direct/safe` ;
- sortie simple ;
- absence, off, bypass ou reduction de branches optionnelles ;
- fallback ;
- SIG.

Fait :

La fiche 23 prepare la branche `prototype/min-did-pc-minimal` comme branche strictement bornee avant tout patch reel. Elle ne produit pas le prototype reel.

Fait :

La matrice niveau 6 source reste absente :

```text
reprise/MATRICE_ARCHITECTURE_MAX_STANDALONE_NIVEAU_6_ROLES_TECHNIQUES_CANDIDATS_CHEMINS_RISQUES_VESPERARE_v0_1.md
```

Fait :

L'audit niveau 6 existant reste symptome documentaire, trace de sequence et checklist. Il ne constitue pas une preuve, une validation niveau 6, une source prescriptive ou une nomenclature active.

## 2. Inference

Inference :

La branche `prototype/min-did-pc-minimal` est suffisamment bornee documentairement pour autoriser une action ulterieure separee de premier patch Max minimal, a condition que cette action reste strictement conforme aux fiches 24, 23, 22, 20 et 21.

Inference :

La fiche 23 est conforme a la fiche 22 parce qu'elle prepare seulement la branche, les bornes et les conditions d'arret, sans patch Max, sans prototype reel, sans choix d'objet, sans routage et sans architecture.

Inference :

La fiche 23 reste ensuite conforme aux fiches 20 et 21 parce qu'elle ne transforme pas l'autorisation avec reserves en validation technique, musicale ou architecturale.

Inference :

La chaine 20 -> 21 -> 22 -> 23 suffit pour autoriser avec reserves une action ulterieure de premier patch Max minimal, mais elle ne suffit pas pour valider un niveau 6, une matrice, une architecture, un routage final ou des objets Max finaux.

Inference :

Un premier patch minimal admissible est celui qui reste jouable quand les branches optionnelles sont absentes, off, bypass ou reduites. S'il exige une famille lourde pour `P0/P1`, `direct/safe`, protection ou `MIN-DID-PC`, il sort du perimetre autorise.

## 3. Decision

Decision :

Verdict de passage :

```text
passage patch minimal autorise avec reserves
```

Decision :

La branche `prototype/min-did-pc-minimal` est suffisamment bornee documentairement.

Decision :

La fiche 23 est conforme a la fiche 22, puis aux fiches 20 et 21.

Decision :

Une action ulterieure separee de premier patch Max minimal `MIN-DID-PC` est autorisee avec reserves.

Decision :

La presente fiche 24 ne produit pas le patch Max minimal.

Decision :

Le futur patch devra verifier uniquement :

- presence live didgeridoo / PC ;
- `direct/safe` ;
- sortie simple ;
- absence, off, bypass ou reduction de branches optionnelles ;
- fallback ;
- SIG.

Decision :

Aucune famille lourde ne peut entrer dans `P0/P1`, `direct/safe`, protection ou `MIN-DID-PC`.

Decision :

Aucun niveau 6, aucune matrice, aucune architecture validee, aucun objet Max final, aucun routage final, aucune UI, aucun mapping, aucun asset, aucune sample bank et aucun seuil numerique ne sont autorises par cette fiche.

## 4. Reserves

Reserve :

L'autorisation porte seulement sur une action ulterieure separee de premier patch Max minimal. Elle ne vaut pas validation musicale, artistique, technique, architecturale ou niveau 6.

Reserve :

L'action ulterieure doit rester strictement conforme a la presente fiche 24, a la fiche 23, a la fiche 22, a la fiche 20 et a la fiche 21.

Reserve :

Le premier patch minimal ne peut pas devenir une implementation generale de Vesperare, un audit, un niveau 6, une matrice, une architecture, une UI, un mapping, une banque de matiere ou une selection d'objets Max finaux.

Reserve :

Les branches optionnelles doivent rester absentes, off, bypass, reduites ou ignorees si elles ne sont pas necessaires au noyau minimal. Elles ne peuvent pas conditionner `P0/P1`, `direct/safe`, protection, sortie simple ou `MIN-DID-PC`.

Reserve :

Le SIG reste une signalisation critique situee. Il ne devient pas UI finale, log obligatoire pour l'audio, scene autonome, automation expressive, validation technique ou mapping.

Reserve :

Si le futur patch minimal exige une famille lourde, un seuil numerique, une source preparee obligatoire, un asset, une sample bank, un routage final ou un objet Max final pour tenir le noyau minimal, l'action doit s'arreter ou etre requalifiee.

## 5. Bornes strictes du premier patch minimal

Decision :

Le premier patch Max minimal, s'il est produit dans l'action ulterieure separee, devra rester borne a la verification du noyau suivant :

- presence live didgeridoo / PC comme relation a preserver, pas comme banque, fichier, corpus ou source preparee obligatoire ;
- `direct/safe` comme garde-fou transversal, lisible et non remplace par une famille lourde ;
- sortie simple disponible si les branches optionnelles sont absentes, off, bypass ou reduites ;
- branches optionnelles absentes, off, bypass, reduites ou ignorees sans couper `direct/safe` ;
- fallback lisible pour absence, bypass, reduction, surcharge, release ou incertitude ;
- SIG minimal pour absence, bypass, reduction, surcharge, release ou incertitude.

Decision :

`MIN-DID-PC` reste formule par responsabilites minimales. Il ne devient pas nomenclature d'objets Max, routage final, architecture ou preuve technique.

Inference :

Le premier patch minimal peut verifier la possibilite de jouer ce noyau. Il ne doit pas verifier une esthetique complete, un niveau 6, une matrice, une architecture finale, une UI, un mapping ou une banque de sons.

## 6. Ce qui reste interdit

Interdictions :

- modifier `reprise/` ;
- modifier l'audit niveau 6 source ;
- creer ou valider un niveau 6 ;
- recreer la matrice niveau 6 absente ;
- utiliser l'audit niveau 6 comme preuve ;
- produire un nouvel audit ;
- produire le patch Max minimal dans la presente fiche 24 ;
- produire une implementation generale ;
- produire UI ;
- produire mapping ;
- produire asset ;
- produire sample bank ;
- produire seuil numerique ;
- choisir un objet Max final ;
- definir un routage final ;
- valider une architecture ;
- transformer ACT28 en decision artistique definitive ;
- transformer la sortie documentaire en validation musicale, artistique, technique ou architecturale ;
- demander a Yohan de trancher une architecture non instruite.

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

Ces familles restent hors `P0/P1`, hors `direct/safe`, hors protection, hors `MIN-DID-PC` et hors setup minimal.

## 7. Conditions d'arret

Condition d'arret :

Arreter si la suite tente de produire un niveau 6, une matrice, une architecture validee, une UI, un mapping, un asset, une sample bank, un seuil numerique, un objet Max final, un routage final ou une implementation generale.

Condition d'arret :

Arreter si la suite cree ou valide un niveau 6, recree la matrice niveau 6 absente, modifie `reprise/`, modifie l'audit niveau 6 source ou utilise l'audit niveau 6 comme preuve.

Condition d'arret :

Arreter si une famille lourde devient condition de `P0/P1`, `direct/safe`, protection, `MIN-DID-PC`, grave critique, scene, HAL/SPC/REV ou decision expressive.

Condition d'arret :

Arreter si le futur patch minimal veut verifier autre chose que presence live didgeridoo / PC, `direct/safe`, sortie simple, absence/off/bypass/reduction de branches optionnelles, fallback et SIG.

Condition d'arret :

Arreter si une branche optionnelle devient indispensable au direct, au safe, a la sortie simple, a la protection critique ou a `MIN-DID-PC`.

Condition d'arret :

Arreter si le premier patch minimal devient validation musicale, artistique, technique ou architecturale.

Condition d'arret :

Arreter et requalifier si la matrice niveau 6 absente est retrouvee : elle devra etre relue contre ACT28 et contre la chaine documentaire avant toute suite, sans validation automatique.

## 8. Recommandation

Recommandation :

La prochaine action doit rester plus legere qu'une implementation generale : creer une branche de premier patch Max minimal strictement bornee, verifier d'abord sa conformite aux fiches 24, 23, 22, 20 et 21, puis produire seulement le premier patch minimal si ces bornes restent tenues.

Recommandation :

Ne pas demander a Yohan de trancher une architecture non instruite. Lui laisser correction d'intention, refus d'une methode trop lourde, jugement musical et validation finale quand une matiere reelle sera instruite.

## 9. Prochaine action exacte

Decision :

Prochaine action exacte :

```text
creer une branche de premier patch Max minimal strictement bornee, a partir
de la branche prototype/min-did-pc-minimal, puis produire un premier patch
Max minimal seulement si l'action reste strictement conforme a
docs/reprise/24_DECISION_AUTORISATION_PREMIER_PATCH_MAX_MINIMAL_MIN_DID_PC.md,
docs/reprise/23_PREPARATION_BRANCHE_PROTOTYPE_MAX_MINIMAL_MIN_DID_PC.md,
docs/reprise/22_CADRAGE_OPERATIONNEL_ACTION_PROTOTYPE_MAX_MINIMAL_MIN_DID_PC.md,
docs/reprise/20_CADRAGE_DOCUMENTAIRE_PREMIER_PROTOTYPE_MINIMAL_MIN_DID_PC.md
et
docs/reprise/21_DECISION_PASSAGE_PROTOTYPE_MAX_MINIMAL_MIN_DID_PC.md.
```

Decision :

Cette prochaine action pourra produire un premier patch minimal seulement si elle verifie uniquement presence live didgeridoo / PC, `direct/safe`, sortie simple, absence/off/bypass/reduction de branches optionnelles, fallback et SIG.

Interdit :

Cette prochaine action ne doit pas produire de famille lourde en `P0/P1`, `direct/safe`, protection ou `MIN-DID-PC`. Elle ne doit pas produire niveau 6, matrice, architecture validee, objet Max final, routage final, UI, mapping, asset, sample bank, seuil numerique ou audit.

Arret :

La presente fiche s'arrete ici. Elle autorise le passage au premier patch minimal avec reserves, mais ne produit pas le patch.
