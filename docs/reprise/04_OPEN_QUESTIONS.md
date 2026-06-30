# Questions ouvertes de reprise

Statut : contradictions, informations manquantes et points a trancher.  
Date : 2026-06-30.

## 1. Contradictions ou tensions documentaires

### 1.1 Runtime README vs corpus reprise

Fait :

`README.md` presente encore le projet comme systeme Ableton Live / Max for Live. Dans `reprise/`, la decision active indique Max/MSP standalone comme runtime principal.

Inference :

Ce n'est pas forcement une contradiction de fond : le README de `main` peut etre plus general ou plus ancien, tandis que le corpus `reprise/` porte une correction runtime. Pour la reprise technique, Max standalone doit primer tant que cette decision n'est pas annulee.

Sources :

- `README.md`
- `reprise/DECISION_RUNTIME_MAX_STANDALONE_LATENCE_SANS_COMPROMIS_VESPERARE_v0_1.md`

### 1.2 Fichiers references mais absents

Fait :

`reprise/INDEX_ACTIF_VESPERARE_CONCEPTION.md` reference plusieurs fichiers non presents dans le dossier `reprise/` actuel. Les plus structurants sont :

- `AUDIT_COMPATIBILITE_NIVEAU_5_OBJETS_MAX_CANDIDATS_AVEC_MATRICE_SYNTHESE_CANDIDATS_LOURDS_VESPERARE_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_2_MODULES_MESSAGES_VESPERARE_v0_1.md`
- `MATRICE_ARCHITECTURE_MAX_STANDALONE_NIVEAU_6_ROLES_TECHNIQUES_CANDIDATS_CHEMINS_RISQUES_VESPERARE_v0_1.md`
- `NOMENCLATURE_ETATS_PACKETS_REPONSES_RELEASES_VESPERARE_v0_1.md`
- `MATRICE_CORRESPONDANCE_NOMENCLATURE_STRUCTURES_MAX_CANDIDATES_NON_DEFINITIVES_VESPERARE_v0_1.md`
- `SPECIFICATION_CONTRAINTES_TRADUCTION_MAX_CONCRETE_NON_IMPLEMENTATION_VESPERARE_v0_1.md`
- `SPECIFICATION_LATENCE_SCHEDULER_VECTORS_AUDIO_SETTINGS_MAX_STANDALONE_VESPERARE_v0_1.md`
- `SPECIFICATION_TECHNIQUE_CONCEPTUELLE_REVERB_SPACE_HALO_FREEZE_RESONATEURS_CONVOLUTION_MAX_STANDALONE_VESPERARE_v0_1.md`

Inference :

Ces absences peuvent venir d'une importation incomplete, de fichiers non copies, ou d'un index en avance sur le dossier. Elles ne doivent pas etre lues comme des decisions abandonnees sans verification.

Source :

- comparaison entre `reprise/INDEX_ACTIF_VESPERARE_CONCEPTION.md` et les fichiers presents dans `reprise/`

### 1.3 DETTE-ACT-28 vs audit niveau 5 deja present

Fait :

Un audit niveau 5 contre le corpus existe :

`reprise/AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_AVEC_CORPUS_v0_1.md`

Mais la prochaine action demande un audit niveau 5 contre la matrice synthese candidats lourds :

`AUDIT_COMPATIBILITE_NIVEAU_5_OBJETS_MAX_CANDIDATS_AVEC_MATRICE_SYNTHESE_CANDIDATS_LOURDS_VESPERARE_v0_1.md`

Inference :

Ce sont deux controles differents. Le second manque encore ou n'a pas ete retrouve.

### 1.4 Copies suffixees `(1)`

Fait :

Les fichiers suivants ont des variantes suffixees `(1)` et les hash ne sont pas identiques aux versions sans suffixe :

- `reprise/REVERBS_ESPACE_REACTIF_v0_2.md`
- `reprise/REVERBS_ESPACE_REACTIF_v0_2 (1).md`
- `reprise/MATRICE_BLOCS_RESPONSABILITES_PACKETS_CONTROLES_VESPERARE_v0_1.md`
- `reprise/MATRICE_BLOCS_RESPONSABILITES_PACKETS_CONTROLES_VESPERARE_v0_1 (1).md`

Point a trancher :

Identifier si les fichiers `(1)` sont archives, variantes importees, doublons accidentels ou sources a auditer.

## 2. Informations manquantes

Fait :

Les donnees AcousticArchive reelles ne sont pas encore integrees dans le corpus de reprise. Les fiches instrumentales futures ne doivent pas etre creees vides.

Sources :

- `docs/assets/15_DONNEES_INSTRUMENTALES_MANQUANTES_PRIORITAIRES.md`
- `docs/assets/16_ACOUSTICARCHIVE_MAPPING_DONNEES_VESPERARE.md`

Fait :

Les choix finaux suivants restent non documentes comme decisions :

- UI ;
- mapping ;
- controleur ;
- objets Max finaux ;
- routages finaux ;
- seuils numeriques ;
- latence mesuree ;
- assets reels ;
- banques de samples.

Sources :

- `reprise/SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_VESPERARE_v0_1.md`
- `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`

## 3. Questions vivantes prioritaires

Fait :

Le registre court de reprise garde notamment ces questions vivantes :

- QV-2 : controles P2 immediats en setup didgeridoo seul ;
- QV-7 : signaux pendant transgression ;
- QV-9 : releases espace / halo / freeze ;
- QV-10 : GEN-HAL sous-famille ou owner autonome ;
- QV-11 : MIN-DID-PC sans accumulation.

Source :

- `reprise/REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`

## 4. Points a trancher plus tard

Recommandation :

Avant toute implementation :

1. Confirmer le statut exact de DETTE-ACT-28.
2. Clarifier les fichiers references mais absents.
3. Clarifier les copies suffixees `(1)`.
4. Verifier que niveau 5 objets Max candidats reste compatible avec la matrice des candidats lourds.
5. Maintenir P0/P1, direct/safe, MIN-DID-PC, fallback et SIG comme garde-fous.
6. Ne demander a Yohan une decision artistique qu'apres instruction documentaire bornee.
