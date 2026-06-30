# Etat du projet Vesperare

Statut : etat canonique de reprise depuis `reprise/`.  
Date : 2026-06-30.

## 1. Etat canonique actuel

Fait :

Le projet reste organise autour de la chaine :

```text
Intention -> Besoins -> Caracterisation -> Questions -> Specification -> Architecture
```

Fait :

Le runtime actif du corpus `reprise/` est Max/MSP standalone. Max for Live / Ableton, RNBO, Linux et embarque sont secondaires, historiques ou futurs selon les cas.

Fait :

DETTE-ACT-28 est maintenant instruite dans :

`docs/reprise/07_AUDIT_COMPATIBILITE_NIVEAU_5_OBJETS_MAX_CANDIDATS_AVEC_MATRICE_SYNTHESE_CANDIDATS_LOURDS_VESPERARE_v0_1.md`

Fait :

Le verdict de DETTE-ACT-28 est :

```text
compatible avec corrections documentaires limitees
```

Fait :

La synchronisation niveau 5 / matrice lourde est creee dans :

`docs/reprise/08_SYNCHRONISATION_NIVEAU_5_MATRICE_LOURDE_STATUTS_CHEMINS_FALLBACK_SIG.md`

Inference :

Le fichier canonique attendu reste absent du dossier `reprise/`, car cette reprise ne modifie pas `reprise/`. Pour le pilotage documentaire courant, DETTE-ACT-28 n'est plus une urgence ouverte : le point a traiter ensuite est une readiness niveau 6 contre le niveau 5 synchronise, la matrice lourde et la synchronisation ACT28, sans implementation.

Sources :

- `reprise/INDEX_ACTIF_VESPERARE_CONCEPTION.md`
- `reprise/AUDIT_IMPACT_REPRISE_CANDIDATS_LOURDS_SUR_DOCUMENTS_ULTERIEURS_EXISTANTS_VESPERARE_v0_1.md`
- `reprise/MATRICE_PREUVE_VERIFICATION_DETTES_AVANT_REPRISE_VESPERARE_v0_1.md`
- `docs/reprise/07_AUDIT_COMPATIBILITE_NIVEAU_5_OBJETS_MAX_CANDIDATS_AVEC_MATRICE_SYNTHESE_CANDIDATS_LOURDS_VESPERARE_v0_1.md`
- `docs/reprise/08_SYNCHRONISATION_NIVEAU_5_MATRICE_LOURDE_STATUTS_CHEMINS_FALLBACK_SIG.md`

## 2. Termine

Fait :

Sont consideres termines ou absorbes dans le corpus actuel :

- intention reconstruite v0.2 ;
- besoins stylistiques v0.4 ;
- besoins de generation v0.4 ;
- caracterisation detaillee active v0.4 ;
- questions P1/P2/P3 formalisees ;
- arbitrages utilisateurs des blocs A, B, C et D ;
- bloc E reverb / espace consolide en v0.2 ;
- audit global du corpus actif ;
- specification des fonctions, controles, scenes, generation, protocoles, analyses et systeme decisionnel ;
- decision runtime Max standalone ;
- architecture Max standalone conceptuelle et niveaux presents ;
- noyau de performance Max standalone ;
- transactions, releases, rollback, commandes, etats et signaux ;
- pre-audits candidats A/B/C/D ;
- audits candidats lourds DETTE-ACT-6 ;
- audit de coherence post candidats lourds ;
- matrice de synthese des statuts candidats lourds ;
- audit de compatibilite de cette matrice avec les audits sources ;
- audit d'impact sur documents ulterieurs ;
- registre et matrice de preuve de reprise ;
- DETTE-ACT-28 instruite avec verdict compatible avec corrections documentaires limitees ;
- synchronisation niveau 5 / matrice lourde creee pour statuts, chemins, interdits, fallback et SIG.

Sources :

- `reprise/INDEX_ACTIF_VESPERARE_CONCEPTION.md`
- `reprise/MATRICE_PREUVE_VERIFICATION_DETTES_AVANT_REPRISE_VESPERARE_v0_1.md`
- `reprise/REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`

## 3. En cours

Fait :

Sont encore actifs :

- DETTE-ACT-3 : corrections OP a maintenir comme garde-fou ;
- DETTE-ACT-6 : dette mere des audits candidats lourds ou opaques, meme si plusieurs audits individuels sont deja absorbes ;
- QV-2 : controles P2 immediats en setup didgeridoo seul ;
- QV-7 : signaux pendant transgression ;
- QV-9 : releases espace / halo / freeze ;
- QV-10 : GEN-HAL comme sous-famille ou owner autonome ;
- QV-11 : MIN-DID-PC sans accumulation.

Sources :

- `reprise/MATRICE_PREUVE_VERIFICATION_DETTES_AVANT_REPRISE_VESPERARE_v0_1.md`
- `reprise/REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`

## 4. A decider

Fait :

Les points a decider ou clarifier avant une suite technique sont :

- clarifier le statut des fichiers references par l'index actif mais absents du dossier `reprise/` ;
- clarifier le statut des copies suffixees `(1)` qui ne sont pas identiques a leurs fichiers sans suffixe ;
- determiner les etats et signaux visibles sans surcharger le live ;
- determiner les controles P2 immediats pour le setup minimal didgeridoo + PC ;
- verifier GEN-HAL : sous-famille de generation liee a HAL ou owner autonome interdit ;
- maintenir MIN-DID-PC comme forme complete et non accumulation ;
- integrer les donnees AcousticArchive seulement quand des donnees reelles existent.

Recommandation :

Ne pas demander a Yohan de trancher une architecture non instruite. La prochaine action probable doit etre une readiness niveau 6 documentaire, pas une implementation, pas un patch, pas un mapping, pas une UI et pas un choix d'objet Max final.

Sources :

- `reprise/REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`
- `docs/assets/15_DONNEES_INSTRUMENTALES_MANQUANTES_PRIORITAIRES.md`
- `docs/assets/16_ACOUSTICARCHIVE_MAPPING_DONNEES_VESPERARE.md`
- `docs/reprise/08_SYNCHRONISATION_NIVEAU_5_MATRICE_LOURDE_STATUTS_CHEMINS_FALLBACK_SIG.md`

## 5. Non canonique ou a prudence

Fait :

Les anciennes trajectoires Max for Live / RNBO restent consultables mais ne sont plus normatives lorsqu'elles contredisent Max standalone.

Fait :

Les versions anciennes de besoins, caracterisation, intention ou reverb sont utiles comme archives, mais les versions actives indiquees par l'index actif priment.

Fait :

Les fichiers de specifications d'objets Max candidats restent non definitifs. Ils ne sont pas un choix d'objet final, ni un patch, ni une implementation.

Sources :

- `reprise/INDEX_ACTIF_VESPERARE_CONCEPTION.md`
- `reprise/DECISION_RUNTIME_MAX_STANDALONE_LATENCE_SANS_COMPROMIS_VESPERARE_v0_1.md`
- `reprise/SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_VESPERARE_v0_1.md`
