# Prochaines actions de reprise

Statut : plan de reprise documentaire apres creation de la fiche 26 de clarification minimale d'emplacement et de format du premier patch Max minimal `MIN-DID-PC`.
Date : 2026-07-01.
Verdict courant : `convention minimale provisoire definie ; patch minimal non produit`.

## 1. Principe courant

Fait :

La fiche 26 existe :

```text
docs/reprise/26_CLARIFICATION_MINIMALE_EMPLACEMENT_FORMAT_PATCH_MAX_MINIMAL_MIN_DID_PC.md
```

Fait :

La fiche 26 leve uniquement le blocage constate par la fiche 25 en definissant une convention minimale, provisoire et strictement bornee d'emplacement, de format et de nommage pour un futur premier patch Max minimal `MIN-DID-PC`. Elle ne produit pas le patch Max minimal.

Fait :

La fiche 25 existe :

```text
docs/reprise/25_TRACE_PREMIER_PATCH_MAX_MINIMAL_MIN_DID_PC.md
```

Fait :

La fiche 25 verifie l'action de premier patch Max minimal strictement bornee par les fiches 24, 23, 22, 20 et 21, puis arrete la production du patch parce que l'emplacement et le format attendus sont ambigus dans le repo.

Fait :

La fiche 24 existe :

```text
docs/reprise/24_DECISION_AUTORISATION_PREMIER_PATCH_MAX_MINIMAL_MIN_DID_PC.md
```

Fait :

La fiche 24 autorise avec reserves une action ulterieure separee de premier patch Max minimal `MIN-DID-PC`, strictement bornee par les fiches 23, 22, 20 et 21. Elle ne produit pas le patch Max minimal.

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

Decision :

La branche `prototype/min-did-pc-minimal` est suffisamment bornee documentairement.

Decision :

La fiche 23 est conforme a la fiche 22, puis aux fiches 20 et 21.

Decision :

Le passage vers une action ulterieure separee de premier patch Max minimal reste autorise avec reserves. Depuis la fiche 26, il ne peut etre execute que dans l'emplacement, le format et le nom de fichier minimaux definis par cette fiche.

Decision :

La fiche 24 ne produit pas le patch Max minimal. La fiche 25 ne produit pas le patch Max minimal parce que la convention locale d'emplacement et de format n'avait pas ete localisee. La fiche 26 ne produit pas le patch Max minimal non plus ; elle definit seulement une convention minimale provisoire.

Inference :

Les fiches 20, 21, 22, 23, 24, 25 et 26 ne rouvrent pas une chaine d'audits, ne creent pas de niveau 6, ne recreent pas la matrice niveau 6 absente et ne valident aucune architecture. Elles autorisent seulement une suite limitee a un premier patch Max minimal, avec verification limitee a presence live didgeridoo / PC, `direct/safe`, sortie simple, absence/off/bypass/reduction de branches optionnelles, fallback et SIG, a condition que la future production respecte strictement la convention minimale de la fiche 26.

Recommandation :

La prochaine action doit rester strictement minimale : produire, dans une action ulterieure separee, le premier patch Max minimal uniquement sous `projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat`, au format `.maxpat`, sans UI, mapping, asset, sample bank, seuil numerique, objet Max final, routage final ou architecture validee.

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

La matrice niveau 6 absente ne bloque pas l'action ulterieure separee de premier patch Max minimal si cette action reste strictement conforme aux fiches 26, 24, 23, 22, 20 et 21, hors niveau 6, hors architecture validee, hors objet final et hors routage final.

Recommandation :

Ne pas creer ni valider de niveau 6 maintenant. Ne pas recreer la matrice absente. Ne pas utiliser l'audit niveau 6 comme preuve. Ne pas transformer la sortie documentaire en validation musicale, artistique, technique ou architecturale.

## 3. Prochaine action exacte

Decision :

La prochaine action remplace l'ancienne clarification d'emplacement et de format :

```text
produire, dans une action ulterieure separee, le premier patch Max minimal
MIN-DID-PC uniquement sous
projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat,
au format .maxpat, apres verification explicite de conformite a
docs/reprise/26_CLARIFICATION_MINIMALE_EMPLACEMENT_FORMAT_PATCH_MAX_MINIMAL_MIN_DID_PC.md,
docs/reprise/24_DECISION_AUTORISATION_PREMIER_PATCH_MAX_MINIMAL_MIN_DID_PC.md,
docs/reprise/23_PREPARATION_BRANCHE_PROTOTYPE_MAX_MINIMAL_MIN_DID_PC.md,
docs/reprise/22_CADRAGE_OPERATIONNEL_ACTION_PROTOTYPE_MAX_MINIMAL_MIN_DID_PC.md,
docs/reprise/20_CADRAGE_DOCUMENTAIRE_PREMIER_PROTOTYPE_MINIMAL_MIN_DID_PC.md
et
docs/reprise/21_DECISION_PASSAGE_PROTOTYPE_MAX_MINIMAL_MIN_DID_PC.md.
```

Decision :

Cette prochaine action pourra produire un premier patch minimal seulement dans l'emplacement et le format definis par la fiche 26.

Decision :

La verification du futur patch minimal doit porter uniquement sur :

- presence live didgeridoo / PC ;
- `direct/safe` ;
- sortie simple ;
- absence, off, bypass ou reduction de branches optionnelles ;
- fallback ;
- SIG.

Decision :

La convention d'emplacement et de format ne vaut pas production de niveau 6, matrice, architecture validee, objet Max final, routage final, UI, mapping, asset, sample bank, seuil numerique ou patch Max deja produit.

Interdit :

Cette prochaine action ne doit pas produire de famille lourde en `P0/P1`, `direct/safe`, protection ou `MIN-DID-PC`. Elle ne doit pas produire niveau 6, matrice niveau 6, audit, architecture validee, objet Max final, routage final, UI, mapping, asset, sample bank ou seuil numerique. Elle ne doit pas produire le patch hors `projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat` ni hors format `.maxpat`.

## 4. Corpus de reference courant

Fait :

Fiches documentaires directement stabilisees dans la chaine de sortie :

- `docs/reprise/26_CLARIFICATION_MINIMALE_EMPLACEMENT_FORMAT_PATCH_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/25_TRACE_PREMIER_PATCH_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/24_DECISION_AUTORISATION_PREMIER_PATCH_MAX_MINIMAL_MIN_DID_PC.md`
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

Ce corpus suffit pour autoriser avec reserves une action ulterieure separee de premier patch Max minimal strictement bornee par les fiches 26, 24, 23, 22, 20 et 21. La fiche 25 ajoute que le patch ne devait pas etre produit tant que l'emplacement et le format attendus n'etaient pas clarifies. La fiche 26 leve uniquement ce blocage par une convention minimale provisoire. Le corpus ne suffit pas pour valider un niveau 6, choisir des objets Max finaux, modifier l'audit niveau 6 source, reconstruire la matrice absente ou produire une architecture validee.

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
- ne pas produire d'implementation generale ;
- ne pas produire de patch Max dans les fiches 24, 25 ou 26 ;
- ne pas produire de patch Max hors de l'action ulterieure strictement bornee par les fiches 26, 24, 23, 22, 20 et 21 ;
- ne pas produire de patch Max hors `projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat` ;
- ne pas produire de premier patch Max minimal dans un format autre que `.maxpat` ;
- ne pas produire UI ;
- ne pas produire mapping ;
- ne pas produire asset ;
- ne pas produire sample bank ;
- ne pas produire seuil numerique ;
- ne pas produire objet Max final ;
- ne pas produire routage final ;
- ne pas transformer ACT28 en decision artistique definitive ;
- ne pas transformer la sortie documentaire en validation du niveau 6 ;
- ne pas demander a Yohan de trancher une architecture non instruite.

Interdictions lourdes :

- `gen~`, `poly~`, MC, `buffer~`, corpus, IR, convolution, pfft/FFT, scripts, presets critiques, externals, plugins, ML, Markov, grammaire et outils opaques restent hors `P0/P1`, hors `direct/safe`, hors protection, hors `MIN-DID-PC` et hors setup minimal.

## 6. Premier patch minimal non produit par les fiches 25 et 26

Fait :

Aucun prototype reel n'est produit par la fiche 20, par la fiche 21, par la fiche 22, par la fiche 23, par la fiche 24, par la fiche 25 ni par la fiche 26.

Decision :

Un futur premier patch Max minimal reste autorise avec reserves comme action ulterieure separee, explicitement bornee par les fiches 26, 24, 23, 22, 20 et 21.

Decision :

La fiche 25 a bloque correctement la production du patch parce que l'emplacement et le format attendus etaient ambigus.

Inference :

La fiche 26 leve uniquement ce blocage d'emplacement et de format par une convention minimale provisoire. Elle ne valide pas le niveau 6, ne valide pas une architecture et ne produit pas le patch.

Decision :

La prochaine intervention utile consiste a produire, dans une action ulterieure separee, un premier patch minimal seulement sous `projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat`, au format `.maxpat`, et seulement pour verifier presence live didgeridoo / PC, `direct/safe`, sortie simple, absence/off/bypass/reduction de branches optionnelles, fallback et SIG.

Recommandation :

Ne pas demander a Yohan de trancher une architecture niveau 6 non instruite. Lui laisser correction d'intention, refus d'une methode trop lourde, jugement musical et validation finale quand la matiere sera reellement instruite.

## 7. Conditions d'arret

Condition d'arret :

Arreter si la future production du premier fichier Max minimal ne respecte pas exactement :

```text
projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat
```

au format `.maxpat`.

Condition d'arret :

Arreter si l'emplacement ou le format attendu redevient ambigu, ou si une convention locale contradictoire est retrouvee.

Condition d'arret :

Arreter si la suite tente de creer ou valider un niveau 6, de valider une architecture, de recreer la matrice niveau 6 absente, de modifier `reprise/`, de modifier l'audit niveau 6 source ou d'utiliser l'audit niveau 6 comme preuve.

Condition d'arret :

Arreter si la prochaine phase produit un nouvel audit au lieu de produire, dans une action ulterieure separee, le premier patch Max minimal strictement borne par la fiche 26.

Condition d'arret :

Arreter si la prochaine phase produit une implementation generale, UI, mapping, asset, sample bank, seuil numerique, routage final, objet Max final, architecture validee ou patch Max hors des bornes minimales definies par la fiche 26.

Condition d'arret :

Arreter si la prochaine phase prepare ou produit un patch minimal sans verifier explicitement que l'action reste conforme aux fiches 26, 24, 23, 22, 20 et 21.

Condition d'arret :

Arreter si une famille lourde devient condition de `P0/P1`, `direct/safe`, protection, `MIN-DID-PC`, grave critique, scene, HAL/SPC/REV ou decision expressive.

Condition d'arret :

Arreter si le futur patch minimal verifie autre chose que presence live didgeridoo / PC, `direct/safe`, sortie simple, absence/off/bypass/reduction de branches optionnelles, fallback et SIG.

Condition d'arret :

Arreter si la creation de branche ou le premier patch minimal devient validation musicale, artistique, technique ou architecturale.

Condition d'arret :

Arreter et requalifier si la matrice niveau 6 absente est retrouvee : elle devra etre relue contre ACT28 et contre la chaine documentaire avant toute suite, sans validation automatique.
