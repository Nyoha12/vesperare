# Decision passage prototype Max minimal MIN-DID-PC

Statut : decision documentaire de passage vers une action ulterieure de prototype Max minimal `MIN-DID-PC`.
Date : 2026-06-30.
Verdict : `passage autorise avec reserves`.
Perimetre : documentation seulement, sans modification de `reprise/`, sans modification de l'audit niveau 6 source, sans creation de niveau 6, sans recreation de matrice niveau 6, sans implementation dans cette fiche, sans patch Max, sans UI, sans mapping, sans prototype reel, sans asset, sans sample bank, sans seuil numerique, sans objet Max final et sans routage final.

## Sources consultees

Fait :

Sources directes consultees :

- `docs/reprise/05_NEXT_ACTIONS.md`
- `docs/reprise/20_CADRAGE_DOCUMENTAIRE_PREMIER_PROTOTYPE_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/19_PRE_SPEC_MAX_CONCRETE_NON_IMPLEMENTATION_MIN_DID_PC.md`
- `docs/reprise/18_DECISION_SORTIE_REPRISE_DOCUMENTAIRE_VERS_PRE_SPEC_MAX.md`

Fait :

La presente fiche ne consulte pas la matrice niveau 6 absente comme source, ne modifie pas `reprise/`, ne modifie pas l'audit niveau 6 source et ne produit pas de prototype reel.

## 1. Fait

Fait :

La fiche 18 autorise une sortie documentaire avec reserves vers une pre-specification Max concrete non-implementatoire.

Fait :

La fiche 19 produit cette pre-specification minimale et maintient `MIN-DID-PC` comme noyau de responsabilites, sans objet Max final, sans routage final, sans patch, sans UI, sans mapping, sans prototype reel, sans asset, sans sample bank et sans seuil numerique.

Fait :

La fiche 20 cadre le premier prototype minimal `MIN-DID-PC` avant patch. Elle ne produit pas le prototype reel et ne choisit aucun moyen Max final.

Fait :

La fiche 20 demande comme prochaine action une decision documentaire explicite de passage ou non vers un prototype Max minimal, sans produire ce prototype dans la meme action.

Fait :

La matrice niveau 6 source reste absente et l'audit niveau 6 existant reste symptome documentaire, trace de sequence et checklist. Il ne devient pas preuve, validation niveau 6, source prescriptive ou nomenclature active.

## 2. Inference

Inference :

La fiche 20 cadre suffisamment le premier prototype minimal parce qu'elle stabilise les responsabilites P0/P1, les garde-fous `direct/safe`, le setup minimal admissible, les exclusions lourdes, les fallback, les SIG et les conditions avant patch.

Inference :

Ce cadrage suffit pour autoriser une action ulterieure de prototype Max minimal seulement si cette action reste bornee par la fiche 20 et par les reserves ci-dessous.

Inference :

Cette autorisation ne debloque pas le niveau 6, ne transforme pas l'audit niveau 6 en preuve, ne valide aucune architecture et ne permet pas de choisir des objets Max finaux ou un routage final.

## 3. Decision

Decision :

Verdict de passage :

```text
passage autorise avec reserves
```

Decision :

La fiche 20 cadre suffisamment le premier prototype minimal `MIN-DID-PC`.

Decision :

Le passage vers une action ulterieure de prototype Max minimal `MIN-DID-PC` est autorise avec reserves.

Decision :

Le prototype reel n'est pas produit par la presente fiche 21.

Decision :

Le futur prototype devra verifier uniquement :

- presence live didgeridoo / PC ;
- `direct/safe` ;
- sortie simple ;
- absence, bypass ou reduction de branches optionnelles ;
- fallback ;
- SIG.

Decision :

Aucune famille lourde ne peut entrer dans P0/P1, `direct/safe`, protection ou `MIN-DID-PC`.

Decision :

Aucun objet Max final, routage final, UI, mapping, asset, sample bank, seuil numerique, architecture validee, niveau 6 ou matrice niveau 6 ne doit etre produit par cette decision.

## 4. Reserves

Reserve :

L'autorisation porte seulement sur une action ulterieure de prototype Max minimal. Elle ne vaut pas validation musicale, artistique, technique ou architecturale.

Reserve :

L'action ulterieure doit rester strictement conforme a la fiche 20. Si elle doit sortir de ce perimetre, elle doit s'arreter ou etre requalifiee avant toute production.

Reserve :

Le futur prototype ne peut pas devenir une implementation generale de Vesperare, un niveau 6, une matrice, un audit, une architecture, un mapping, une UI ou une banque de matiere.

Reserve :

Les familles lourdes restent hors P0/P1, hors `direct/safe`, hors protection, hors `MIN-DID-PC` et hors setup minimal.

Reserve :

Le SIG reste une signalisation critique situee. Il ne devient pas UI finale, log obligatoire pour l'audio, scene autonome, automation expressive ou validation technique.

## 5. Bornes strictes du futur prototype

Decision :

Le futur prototype Max minimal, s'il est produit dans une action separee, devra verifier seulement un noyau jouable minimal.

Bornes strictes :

- entree ou presence live didgeridoo / PC comme relation a preserver, pas comme source preparee ni banque de sons ;
- priorite du direct ;
- safe jouable si une branche optionnelle manque, echoue, surcharge, bypass ou se retire ;
- sortie principale simple ;
- controle live prioritaire sur densite, tension, maintien au bord, franchissement de limite et override ;
- branches optionnelles absentes, off, bypass, reduites ou ignorees sans couper le direct/safe ;
- fallback lisible pour absence, bypass, reduction, surcharge, release ou incertitude ;
- SIG minimal pour absence, bypass, reduction, surcharge, release ou incertitude ;
- aucune famille lourde comme condition de P0/P1, `direct/safe`, protection ou `MIN-DID-PC`.

Inference :

Un futur prototype correct est celui qui reste jouable quand les couches optionnelles manquent. Un prototype qui exige une famille lourde pour son direct, son safe ou sa sortie simple sort de cette autorisation.

## 6. Ce qui reste interdit

Interdictions :

- modifier `reprise/` ;
- modifier l'audit niveau 6 source ;
- creer ou valider un niveau 6 ;
- recreer la matrice niveau 6 absente ;
- utiliser l'audit niveau 6 comme preuve ;
- produire un nouvel audit ;
- produire le prototype reel dans la presente fiche ;
- produire un patch Max dans la presente fiche ;
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

## 7. Conditions d'arret

Condition d'arret :

Arreter si la suite tente de transformer la presente decision en prototype reel, patch Max, UI, mapping, asset, sample bank, seuil numerique, objet Max final, routage final, implementation, architecture validee, niveau 6 ou matrice.

Condition d'arret :

Arreter si la suite cree ou valide un niveau 6, recree la matrice niveau 6 absente, modifie `reprise/`, modifie l'audit niveau 6 source ou utilise l'audit niveau 6 comme preuve.

Condition d'arret :

Arreter si une famille lourde devient condition de P0/P1, `direct/safe`, protection, `MIN-DID-PC`, grave critique, scene, HAL/SPC/REV ou decision expressive.

Condition d'arret :

Arreter si le futur prototype veut verifier autre chose que presence live didgeridoo / PC, `direct/safe`, sortie simple, absence/bypass/reduction de branches optionnelles, fallback et SIG.

Condition d'arret :

Arreter si un SIG devient UI finale, log obligatoire pour l'audio, scene autonome, automation expressive ou validation technique.

Condition d'arret :

Arreter et requalifier si la matrice niveau 6 absente est retrouvee : elle devra etre relue contre ACT28 et contre la chaine documentaire avant toute suite, sans validation automatique.

## 8. Prochaine action exacte

Decision :

Prochaine action exacte :

```text
cadrer operationnellement, dans une action separee, le prototype Max minimal
MIN-DID-PC strictement conforme a la fiche 20 et a la presente decision 21,
avec verification limitee a presence live didgeridoo / PC, direct/safe,
sortie simple, absence/bypass/reduction de branches optionnelles, fallback
et SIG.
```

Recommandation :

Cette prochaine action pourra preparer le patch minimal seulement si elle reste strictement conforme a la fiche 20 et a la presente decision 21.

Interdit :

Cette prochaine action ne doit pas produire de famille lourde en P0/P1, `direct/safe`, protection ou `MIN-DID-PC`. Elle ne doit pas produire objet Max final, routage final, UI, mapping, asset, sample bank, seuil numerique, niveau 6, matrice niveau 6, audit ou architecture validee.

Arret :

La presente fiche s'arrete ici. Elle autorise le passage avec reserves, mais ne produit pas le prototype reel.
