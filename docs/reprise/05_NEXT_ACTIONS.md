# Prochaines actions de reprise

Statut : plan de reprise documentaire apres tentative de test de chargement du premier patch Max minimal `MIN-DID-PC`.
Date : 2026-07-01.
Verdict courant : `chargement Max non teste ; blocage reel par absence de Max standalone local detectable ; patch minimal inchange ; validation musicale, technique, architecturale et niveau 6 non acquise`.

## 1. Principe courant

Fait :

La fiche 28 existe :

```text
docs/reprise/28_TRACE_TEST_CHARGEMENT_PATCH_MAX_MINIMAL_MIN_DID_PC.md
```

Fait :

La fiche 28 constate un blocage reel : Max standalone n'a pas ete trouve localement, donc le chargement reel du patch n'a pas ete teste.

Fait :

La fiche 27 existe :

```text
docs/reprise/27_TRACE_CREATION_PREMIER_PATCH_MAX_MINIMAL_MIN_DID_PC.md
```

Fait :

Le premier patch Max minimal strictement borne existe :

```text
projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat
```

Fait :

La fiche 28 ne modifie pas le `.maxpat`. Elle cree seulement sa trace et met a jour la presente fiche. Elle ne modifie pas `reprise/`, ne modifie pas l'audit niveau 6 source, ne cree pas de niveau 6, ne recree pas la matrice niveau 6 absente et ne valide aucune architecture.

Fait :

La fiche 27 cree seulement ce fichier `.maxpat`, cree sa trace et met a jour la presente fiche. Elle ne modifie pas `reprise/`, ne modifie pas l'audit niveau 6 source, ne cree pas de niveau 6, ne recree pas la matrice niveau 6 absente et ne valide aucune architecture.

Fait :

La fiche 26 a defini la convention minimale provisoire d'emplacement, de format et de nommage qui autorisait cette creation :

```text
projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat
```

Fait :

La fiche 25 avait bloque correctement la production du patch tant que l'emplacement et le format etaient ambigus. Ce blocage cible est leve uniquement par la fiche 26, puis execute dans la fiche 27.

Decision :

Le patch cree par la fiche 27 et non modifie par la fiche 28 est un premier contenant Max minimal, provisoire et strictement borne. Il ne vaut pas validation musicale, technique, architecturale, niveau 6, routage final, objet Max final, UI, mapping, asset, sample bank ou seuil numerique.

Decision :

La verification documentaire reste limitee a :

- presence live didgeridoo / PC ;
- `direct/safe` ;
- sortie simple ;
- absence, off, bypass ou reduction de branches optionnelles ;
- fallback ;
- SIG.

Inference :

Les objets et connexions presents dans le fichier `.maxpat` servent seulement a rendre le premier patch ouvrable et minimal. Ils ne sont pas des objets Max finaux et ne definissent pas un routage final. La fiche 28 ne prouve pas que ce fichier s'ouvre dans Max standalone.

Recommandation :

La prochaine action doit etre une nouvelle verification locale sur un poste ou Max standalone est installe et lancable proprement, strictement bornee au chargement du fichier et aux six points ci-dessus, sans ajout d'UI, mapping, asset, sample bank, seuil numerique, objet Max final, routage final, architecture validee, niveau 6 ou famille lourde.

## 2. Statut niveau 6

Fait :

La matrice niveau 6 source reste absente :

```text
reprise/MATRICE_ARCHITECTURE_MAX_STANDALONE_NIVEAU_6_ROLES_TECHNIQUES_CANDIDATS_CHEMINS_RISQUES_VESPERARE_v0_1.md
```

Fait :

L'audit niveau 6 existant reste symptome documentaire, trace de sequence et checklist. Il ne constitue pas une preuve, une source prescriptive, une nomenclature active ou une validation du niveau 6.

Decision :

La matrice niveau 6 absente bloque toujours toute validation du niveau 6, toute preuve et toute prescription niveau 6.

Decision :

Le patch minimal cree par la fiche 27 ne debloque pas le niveau 6 et ne remplace pas la matrice absente.

Recommandation :

Ne pas creer ni valider de niveau 6 maintenant. Ne pas recreer la matrice absente. Ne pas utiliser l'audit niveau 6 comme preuve.

## 3. Prochaine action exacte

Decision :

La prochaine action exacte est :

```text
relancer, sur un poste ou Max standalone est installe et lancable proprement,
l'ouverture de
projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat
dans Max standalone pour une verification locale strictement bornee de
chargement reel, presence live didgeridoo / PC prevue, direct/safe, sortie
simple, branches optionnelles absentes, fallback minimal et SIG interne,
puis documenter le resultat sans ajouter UI, mapping, asset, sample bank,
seuil numerique, objet Max final, routage final, architecture validee,
niveau 6 ou famille lourde.
```

Decision :

Cette prochaine action ne doit pas etendre le patch au-dela du noyau minimal autorise.

Decision :

Aucune famille lourde ne peut entrer dans `P0/P1`, `direct/safe`, protection ou `MIN-DID-PC`.

## 4. Corpus de reference courant

Fait :

Fiches documentaires directement stabilisees dans la chaine de sortie :

- `docs/reprise/27_TRACE_CREATION_PREMIER_PATCH_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/28_TRACE_TEST_CHARGEMENT_PATCH_MAX_MINIMAL_MIN_DID_PC.md`
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

Ce corpus suffit pour encadrer le premier patch Max minimal produit par la fiche 27 et sa prochaine verification locale. Il ne suffit pas pour valider un niveau 6, choisir des objets Max finaux, modifier l'audit niveau 6 source, reconstruire la matrice absente ou produire une architecture validee.

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
- ne pas produire de nouvel audit ;
- ne pas produire d'implementation generale ;
- ne pas produire UI ;
- ne pas produire mapping ;
- ne pas produire asset ;
- ne pas produire sample bank ;
- ne pas produire seuil numerique ;
- ne pas produire objet Max final ;
- ne pas produire routage final ;
- ne pas produire architecture validee ;
- ne pas transformer ACT28 en decision artistique definitive ;
- ne pas transformer la sortie documentaire en validation du niveau 6 ;
- ne pas demander a Yohan de trancher une architecture non instruite.

Interdictions lourdes :

- `gen~`, `poly~`, MC, `buffer~`, corpus, IR, convolution, pfft/FFT, scripts, presets critiques, externals, plugins, ML, Markov, grammaire et outils opaques restent hors `P0/P1`, hors `direct/safe`, hors protection, hors `MIN-DID-PC` et hors setup minimal.

## 6. Conditions d'arret

Condition d'arret :

Arreter si la suite tente de deplacer, dupliquer ou remplacer le patch minimal hors de :

```text
projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat
```

Condition d'arret :

Arreter si la suite tente de creer ou valider un niveau 6, de valider une architecture, de recreer la matrice niveau 6 absente, de modifier `reprise/`, de modifier l'audit niveau 6 source ou d'utiliser l'audit niveau 6 comme preuve.

Condition d'arret :

Arreter si la suite produit un nouvel audit au lieu de verifier localement le patch Max minimal deja cree.

Condition d'arret :

Arreter si la suite produit une implementation generale, UI, mapping, asset, sample bank, seuil numerique, routage final, objet Max final, architecture validee ou patch Max hors des bornes minimales definies par les fiches 26 et 27.

Condition d'arret :

Arreter si une famille lourde devient condition de `P0/P1`, `direct/safe`, protection, `MIN-DID-PC`, grave critique, scene, HAL/SPC/REV ou decision expressive.

Condition d'arret :

Arreter si la prochaine phase verifie autre chose que chargement local, presence live didgeridoo / PC, `direct/safe`, sortie simple, absence/off/bypass/reduction de branches optionnelles, fallback et SIG.

Condition d'arret :

Arreter si le patch minimal devient validation musicale, artistique, technique ou architecturale.

Condition d'arret :

Arreter et requalifier si la matrice niveau 6 absente est retrouvee : elle devra etre relue contre ACT28 et contre la chaine documentaire avant toute suite, sans validation automatique.
