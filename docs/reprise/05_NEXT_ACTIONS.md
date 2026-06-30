# Prochaines actions de reprise

Statut : plan de reprise documentaire apres creation de la fiche 23 de preparation de branche prototype Max minimal `MIN-DID-PC`.
Date : 2026-07-01.
Verdict courant : `branche prototype/min-did-pc-minimal preparee ; prototype reel non produit`.

## 1. Principe courant

Fait :

La fiche 23 existe :

```text
docs/reprise/23_PREPARATION_BRANCHE_PROTOTYPE_MAX_MINIMAL_MIN_DID_PC.md
```

Fait :

La fiche 23 prepare la branche `prototype/min-did-pc-minimal` comme branche strictement bornee avant tout patch reel. Elle ne produit pas le prototype reel.

Fait :

La fiche 22 existe :

```text
docs/reprise/22_CADRAGE_OPERATIONNEL_ACTION_PROTOTYPE_MAX_MINIMAL_MIN_DID_PC.md
```

Fait :

La fiche 22 cadre operationnellement l'action prototype Max minimal `MIN-DID-PC`. Elle ne produit pas le prototype reel.

Fait :

La fiche 21 existe :

```text
docs/reprise/21_DECISION_PASSAGE_PROTOTYPE_MAX_MINIMAL_MIN_DID_PC.md
```

Fait :

La fiche 21 autorise avec reserves le passage vers une action ulterieure de prototype Max minimal `MIN-DID-PC`, strictement bornee par la fiche 20. Elle ne produit pas le prototype reel.

Fait :

La fiche 20 existe :

```text
docs/reprise/20_CADRAGE_DOCUMENTAIRE_PREMIER_PROTOTYPE_MINIMAL_MIN_DID_PC.md
```

Fait :

La fiche 20 cadre seulement le premier prototype minimal `MIN-DID-PC` comme document avant patch. Elle ne produit pas le prototype reel.

Fait :

La fiche 19 existe et reste la pre-specification Max concrete non-implementatoire minimale :

```text
docs/reprise/19_PRE_SPEC_MAX_CONCRETE_NON_IMPLEMENTATION_MIN_DID_PC.md
```

Fait :

La fiche 18 a autorise la sortie documentaire avec reserves vers une pre-specification Max concrete non-implementatoire :

```text
docs/reprise/18_DECISION_SORTIE_REPRISE_DOCUMENTAIRE_VERS_PRE_SPEC_MAX.md
```

Fait :

La fiche 17 reste le dernier reconditionnement documentaire borne avant sortie :

```text
docs/reprise/17_RECONDITIONNEMENT_DOCUMENTAIRE_BORNE_NIVEAU_6_ACT28.md
```

Decision :

La branche `prototype/min-did-pc-minimal` est preparee comme branche de travail strictement bornee. La prochaine action n'est pas un prototype reel produit par ce document ; elle est la verification finale de conformite de la branche avant autorisation eventuelle d'un premier patch Max minimal.

Decision :

Le patch reel ne doit etre produit qu'apres verification explicite que la fiche 23 et la branche restent conformes a la fiche 22, puis aux fiches 20 et 21.

Inference :

Les fiches 20, 21, 22 et 23 ne rouvrent pas une chaine d'audits, ne creent pas de niveau 6, ne recreent pas la matrice niveau 6 absente et ne valident aucune architecture. Elles autorisent seulement une suite limitee a la verification finale de la branche de prototype Max minimal, avec verification limitee a presence live didgeridoo / PC, direct/safe, sortie simple, absence/bypass/reduction de branches optionnelles, fallback et SIG.

## 2. Statut niveau 6

Fait :

La matrice niveau 6 source reste absente :

```text
reprise/MATRICE_ARCHITECTURE_MAX_STANDALONE_NIVEAU_6_ROLES_TECHNIQUES_CANDIDATS_CHEMINS_RISQUES_VESPERARE_v0_1.md
```

Fait :

L'audit niveau 6 existant reste symptome documentaire, trace de sequence et checklist. Il ne constitue pas une preuve, une source prescriptive, une nomenclature active ou une validation du niveau 6.

Decision :

La matrice niveau 6 absente bloque toute validation du niveau 6, toute preuve et toute prescription niveau 6.

Decision :

La matrice niveau 6 absente ne bloque pas la preparation documentaire deja effectuee de la branche de prototype Max minimal strictement bornee, ni une verification finale de conformite, si cette suite reste hors niveau 6, hors architecture validee, hors objet final et hors implementation generale.

Recommandation :

Ne pas creer ni valider de niveau 6 maintenant. Ne pas recreer la matrice absente. Ne pas utiliser l'audit niveau 6 comme preuve. Ne pas transformer la sortie documentaire en validation musicale, artistique, technique ou architecturale.

## 3. Prochaine action exacte

Decision :

La prochaine action remplace l'ancienne action de preparation de branche :

```text
verifier la conformite finale de la branche prototype/min-did-pc-minimal
avant autorisation eventuelle d'un premier patch Max minimal, en controlant
d'abord la conformite a
docs/reprise/23_PREPARATION_BRANCHE_PROTOTYPE_MAX_MINIMAL_MIN_DID_PC.md
et
docs/reprise/22_CADRAGE_OPERATIONNEL_ACTION_PROTOTYPE_MAX_MINIMAL_MIN_DID_PC.md,
avant de verifier la conformite a
docs/reprise/20_CADRAGE_DOCUMENTAIRE_PREMIER_PROTOTYPE_MINIMAL_MIN_DID_PC.md
et
docs/reprise/21_DECISION_PASSAGE_PROTOTYPE_MAX_MINIMAL_MIN_DID_PC.md,
avec verification limitee a presence live didgeridoo / PC, direct/safe,
sortie simple, absence/bypass/reduction de branches optionnelles, fallback
et SIG.
```

Decision :

Le patch reel ne doit etre produit qu'apres verification que la fiche 23 et la branche restent conformes a la fiche 22, puis aux fiches 20 et 21.

Decision :

La preparation de branche actee par la fiche 23 ne vaut pas production de prototype reel, patch Max, objet Max final, routage final, UI, mapping, asset, sample bank, seuil numerique, niveau 6 ou architecture validee.

Recommandation :

La verification finale de branche doit verifier seulement :

- presence live didgeridoo / PC ;
- `direct/safe` ;
- sortie simple ;
- absence, bypass ou reduction de branches optionnelles ;
- fallback ;
- SIG ;
- conditions d'arret.

Interdit :

Cette prochaine action ne doit pas devenir un nouvel audit, un niveau 6, une matrice, un patch Max produit, un mapping, une UI, un prototype reel produit, un asset, une sample bank, un seuil numerique, un choix d'objet Max final, un routage final, une architecture validee ou une implementation generale.

Decision :

La verification conforme de la fiche 23 et de la branche contre la fiche 22, puis contre les fiches 20 et 21, conditionne seulement une action ulterieure separee. Elle ne transforme pas la verification de branche en patch reel dans la meme phase.

Interdit :

Aucune famille lourde ne peut entrer dans P0/P1, `direct/safe`, protection ou `MIN-DID-PC`.

## 4. Corpus de reference courant

Fait :

Fiches documentaires directement stabilisees dans la chaine de sortie :

- `docs/reprise/23_PREPARATION_BRANCHE_PROTOTYPE_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/22_CADRAGE_OPERATIONNEL_ACTION_PROTOTYPE_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/21_DECISION_PASSAGE_PROTOTYPE_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/20_CADRAGE_DOCUMENTAIRE_PREMIER_PROTOTYPE_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/19_PRE_SPEC_MAX_CONCRETE_NON_IMPLEMENTATION_MIN_DID_PC.md`
- `docs/reprise/18_DECISION_SORTIE_REPRISE_DOCUMENTAIRE_VERS_PRE_SPEC_MAX.md`
- `docs/reprise/17_RECONDITIONNEMENT_DOCUMENTAIRE_BORNE_NIVEAU_6_ACT28.md`
- `docs/reprise/16_STATUT_TABLE_15_RECONDITIONNEMENT_NIVEAU_6.md`
- `docs/reprise/15_RECONCILIATION_NIVEAU_6_CORRIGEE_TABLE_COURTE.md`
- `docs/reprise/14_READINESS_RECONCILIATION_NIVEAU_6_CORRIGEE.md`
- `docs/reprise/12_CORRECTIONS_DOCUMENTAIRES_NIVEAU_6_ACT28.md`
- `docs/reprise/11_RECONCILIATION_AUDIT_NIVEAU_6_EXISTANT_AVEC_ACT28_ET_MATRICE_LOURDE.md`
- `docs/reprise/10_CLARIFICATION_MATRICE_NIVEAU_6_ABSENTE.md`
- `docs/reprise/09_READINESS_NIVEAU_6_DOCUMENTAIRE.md`
- `docs/reprise/08_SYNCHRONISATION_NIVEAU_5_MATRICE_LOURDE_STATUTS_CHEMINS_FALLBACK_SIG.md`
- `docs/reprise/07_AUDIT_COMPATIBILITE_NIVEAU_5_OBJETS_MAX_CANDIDATS_AVEC_MATRICE_SYNTHESE_CANDIDATS_LOURDS_VESPERARE_v0_1.md`
- `docs/reprise/MANIFEST_FICHIERS.yml`

Inference :

Ce corpus suffit pour verifier la conformite finale de la branche de prototype Max minimal strictement bornee par les fiches 23, 22, 20 et 21. Il ne suffit pas pour valider un niveau 6, choisir des objets Max finaux, modifier l'audit niveau 6 source, reconstruire la matrice absente ou produire une architecture validee.

Recommandation :

Ne pas elargir le corpus pour produire un nouvel audit. Si une source absente, suffixee `(1)` ou a statut `inconnu` devient necessaire, arreter et ouvrir une clarification documentaire separee avant toute reprise.

## 5. Interdictions maintenues

Interdictions :

- ne pas modifier `reprise/` ;
- ne pas modifier l'audit niveau 6 source ;
- ne pas creer de niveau 6 ;
- ne pas valider de niveau 6 ;
- ne pas recreer la matrice niveau 6 absente ;
- ne pas utiliser l'audit niveau 6 comme preuve ;
- ne pas produire de nouvel audit dans la prochaine phase ;
- ne pas implementer ;
- ne pas faire de patch Max dans la phase de preparation de branche ;
- ne pas faire de patch Max dans la phase de verification finale de branche ;
- ne pas produire UI ;
- ne pas produire mapping ;
- ne pas produire prototype reel dans la phase de preparation de branche ;
- ne pas produire prototype reel dans la phase de verification finale de branche ;
- ne pas produire asset ;
- ne pas produire sample bank ;
- ne pas produire seuil numerique ;
- ne pas produire objet Max final ;
- ne pas produire routage final ;
- ne pas transformer ACT28 en decision artistique definitive ;
- ne pas transformer la sortie documentaire en validation du niveau 6 ;
- ne pas demander a Yohan de trancher une architecture non instruite.

Interdictions lourdes :

- `gen~`, `poly~`, MC, `buffer~`, corpus, IR, convolution, pfft/FFT, scripts, presets critiques, externals, plugins, ML, Markov, grammaire et outils opaques restent hors P0/P1, hors direct/safe, hors protection, hors `MIN-DID-PC` et hors setup minimal.

## 6. Prototype reel non produit

Fait :

Aucun prototype reel n'est produit par la fiche 20, par la fiche 21, par la fiche 22, par la fiche 23 ni par la presente mise a jour.

Decision :

Un futur prototype Max minimal reste seulement autorisable avec reserves comme action ulterieure separee, explicitement bornee par les fiches 23, 22, 20 et 21.

Decision :

La prochaine intervention utile consiste seulement a verifier la conformite finale de la branche `prototype/min-did-pc-minimal` avant autorisation eventuelle d'un premier patch Max minimal.

Inference :

La prochaine intervention utile ne consiste pas a valider le niveau 6 ou une architecture. Elle consiste seulement a verifier la branche de prototype Max minimal strictement bornee, avec verification limitee a presence live didgeridoo / PC, direct/safe, sortie simple, absence/bypass/reduction de branches optionnelles, fallback et SIG.

Recommandation :

Ne pas demander a Yohan de trancher une architecture niveau 6 non instruite. Lui laisser correction d'intention, refus d'une methode trop lourde, jugement musical et validation finale quand la matiere sera reellement instruite.

## 7. Conditions d'arret

Condition d'arret :

Arreter si la suite tente de creer ou valider un niveau 6, de valider une architecture, de recreer la matrice niveau 6 absente, de modifier `reprise/`, de modifier l'audit niveau 6 source ou d'utiliser l'audit niveau 6 comme preuve.

Condition d'arret :

Arreter si la prochaine phase produit un nouvel audit au lieu de verifier la conformite finale de la branche de prototype Max minimal strictement bornee.

Condition d'arret :

Arreter si la prochaine phase produit directement une implementation generale, un patch Max produit, UI, mapping, prototype reel produit, asset, sample bank, seuil numerique, routage final ou objet Max final.

Condition d'arret :

Arreter si la prochaine phase prepare ou produit un patch minimal sans verifier explicitement que la fiche 23 et la branche restent conformes a la fiche 22, puis aux fiches 20 et 21.

Condition d'arret :

Arreter si une famille lourde devient condition de P0/P1, direct/safe, protection, `MIN-DID-PC`, grave critique, scene, HAL/SPC/REV ou decision expressive.

Condition d'arret :

Arreter si le cadrage operationnel du prototype, la preparation de branche ou la verification finale de branche devient validation musicale, artistique, technique ou architecturale.

Condition d'arret :

Arreter et requalifier si la matrice niveau 6 absente est retrouvee : elle devra etre relue contre ACT28 et contre la chaine documentaire avant toute suite, sans validation automatique.
