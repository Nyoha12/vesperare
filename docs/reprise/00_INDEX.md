# Index de reprise Vesperare

Statut : synthese de navigation creee depuis `reprise/`.  
Date : 2026-06-30.  
Perimetre : reprise documentaire, sans modification du dossier `reprise/`, sans patch, sans prototype, sans mapping et sans decision musicale nouvelle.

## 1. Sources utilisees

Sources brutes prioritaires :

- `reprise/INDEX_ACTIF_VESPERARE_CONCEPTION.md`
- `reprise/INTENTION_INITIALE_RECONSTRUITE_v0_2.md`
- `reprise/BESOINS_STYLISTIQUES_v0_4.md`
- `reprise/BESOINS_GENERATION_v0_4.md`
- `reprise/CARACTERISATION_DETAILLEE_ELEMENTS_v0_4.md`
- `reprise/QUESTIONS_DE_PRECISION_PRIORITAIRES_v0_1.md`
- `reprise/ARBITRAGES_QUESTIONS_PRIORITAIRES_v0_1.md`
- `reprise/REVERBS_ESPACE_REACTIF_v0_2.md`
- `reprise/DECISION_RUNTIME_MAX_STANDALONE_LATENCE_SANS_COMPROMIS_VESPERARE_v0_1.md`
- `reprise/REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`
- `reprise/MATRICE_PREUVE_VERIFICATION_DETTES_AVANT_REPRISE_VESPERARE_v0_1.md`
- `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`
- `reprise/AUDIT_IMPACT_REPRISE_CANDIDATS_LOURDS_SUR_DOCUMENTS_ULTERIEURS_EXISTANTS_VESPERARE_v0_1.md`

Sources de methode consultees :

- `README.md`
- `docs/00_INDEX_METHODE_DECISIONS.md`
- `docs/42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md`
- `docs/45_REPRISE_DEPUIS_FICHE_MESURES_INSTRUMENTS.md`
- `docs/modules/18_CONTEXTUAL_CONTROL_ROUTER_AMPLITUDES_LIMITES_OVERRIDE_ADDENDUM.md`
- `docs/assets/00_ASSETS_INDEX.md`
- `docs/assets/15_DONNEES_INSTRUMENTALES_MANQUANTES_PRIORITAIRES.md`
- `docs/assets/16_ACOUSTICARCHIVE_MAPPING_DONNEES_VESPERARE.md`

Bundle brut :

- `docs/reprise/10_BUNDLE_ALL_MARKDOWN.md`

## 2. Carte claire du projet

Fait :

Vesperare est un projet de recherche-creation pour concevoir un systeme de composition et de performance live. Le style vise est nomme localement techno organique : la techno reste l'influence principale, mais ses fonctions sont reincarnees dans des matieres acoustiques, instrumentales, vocales, hybrides ou synthetisees comme phenomenes physiques.

Fait :

Le corpus `reprise/` contient 129 fichiers Markdown. Il documente une progression allant de l'intention, des besoins stylistiques et generatifs, des questions et arbitrages, vers les specifications conceptuelles, le runtime Max standalone, les audits de compatibilite, les matrices de contraintes et les dettes actives.

Inference :

Le point de reprise canonique n'est pas le dernier nom de fichier par ordre alphabetique. Il faut repartir de l'index actif, puis verifier le registre des dettes et la matrice de preuve.

## 3. Familles de fichiers

- Index et reprise : `INDEX_ACTIF_VESPERARE_CONCEPTION.md`, `AUDIT_REPRISE_DETTE_DOCUMENTAIRE_ET_POINT_DE_REPRISE_VESPERARE_v0_1.md`, `REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`, `MATRICE_PREUVE_VERIFICATION_DETTES_AVANT_REPRISE_VESPERARE_v0_1.md`.
- Intention et besoins : `INTENTION_INITIALE_RECONSTRUITE_v0_2.md`, `BESOINS_STYLISTIQUES_v0_4.md`, `BESOINS_GENERATION_v0_4.md`, `CARACTERISATION_DETAILLEE_ELEMENTS_v0_4.md`.
- Questions et arbitrages : `QUESTIONS_DE_PRECISION_PRIORITAIRES_v0_1.md`, `ARBITRAGES_QUESTIONS_PRIORITAIRES_v0_1.md`, `ARBITRAGES_ARTISTIQUES_BESOINS_v0_1.md`.
- Reverb, espace, halo, naturalisation : `REVERBS_ESPACE_REACTIF_v0_2.md` et audits associes.
- Specifications conceptuelles : generation, protocoles, analyses, systeme decisionnel, architecture fonctionnelle abstraite.
- Runtime et architecture : decision Max standalone, architecture Max standalone niveaux 1 a 5 presents, audits associes, architecture operationnelle abstraite.
- Performance et transactions : noyau de performance, commandes, packets, etats, signaux, release, rollback.
- Candidats et contraintes : pre-audits A/B/C/D, audits candidats lourds, matrice de statuts, exclusions, latence, impact documentaire.
- Archives et anciennes versions : fichiers `v0_1`, `v0_2`, `v0_3` remplaces par versions actives plus recentes.
- Copies a statut flou : `REVERBS_ESPACE_REACTIF_v0_2 (1).md` et `MATRICE_BLOCS_RESPONSABILITES_PACKETS_CONTROLES_VESPERARE_v0_1 (1).md` ne sont pas identiques a leurs fichiers sans suffixe selon les hash constates.

## 4. Ordre de lecture recommande

1. Lire `docs/reprise/01_PROJECT_BRIEF.md` pour le cadrage court.
2. Lire `docs/reprise/02_PROJECT_STATE.md` pour l'etat canonique.
3. Lire `docs/reprise/03_DECISIONS_LOG.md` pour les decisions et leur certitude.
4. Lire `docs/reprise/04_OPEN_QUESTIONS.md` avant toute nouvelle fiche.
5. Lire `docs/reprise/05_NEXT_ACTIONS.md` pour la prochaine action minimale.
6. Revenir a `reprise/INDEX_ACTIF_VESPERARE_CONCEPTION.md` pour l'ordre de lecture source.
7. Consulter `docs/reprise/10_BUNDLE_ALL_MARKDOWN.md` seulement si une verification exhaustive du corpus brut est necessaire.

## 5. Fichiers sources importants

Pour l'intention musicale :

- `reprise/INTENTION_INITIALE_RECONSTRUITE_v0_2.md`
- `reprise/BESOINS_STYLISTIQUES_v0_4.md`
- `reprise/BESOINS_GENERATION_v0_4.md`
- `reprise/CARACTERISATION_DETAILLEE_ELEMENTS_v0_4.md`
- `reprise/ARBITRAGES_ARTISTIQUES_BESOINS_v0_1.md`

Pour le controle et la jouabilite :

- `reprise/SPECIFICATION_CONTROLES_LIVE_ET_MODES_SCENE_v0_1.md`
- `reprise/SPECIFICATION_NOYAU_JOUABLE_SCENES_COUCHES_v0_1.md`
- `reprise/SPECIFICATION_NOYAU_PERFORMANCE_MAX_STANDALONE_CONTROLES_SCENES_CHEMINS_VESPERARE_v0_1.md`
- `reprise/SPECIFICATION_TRANSACTIONS_RELEASE_ROLLBACK_COMMANDES_ETATS_MAX_STANDALONE_VESPERARE_v0_1.md`

Pour le runtime et l'architecture :

- `reprise/DECISION_RUNTIME_MAX_STANDALONE_LATENCE_SANS_COMPROMIS_VESPERARE_v0_1.md`
- `reprise/SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_CONCEPTUELLE_VESPERARE_v0_1.md`
- `reprise/SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_VESPERARE_v0_1.md`
- `reprise/AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_AVEC_CORPUS_v0_1.md`
- `reprise/SPECIFICATION_ARCHITECTURE_OPERATIONNELLE_ABSTRAITE_MAX_STANDALONE_VESPERARE_v0_1.md`

Pour les dettes actives :

- `reprise/REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`
- `reprise/MATRICE_PREUVE_VERIFICATION_DETTES_AVANT_REPRISE_VESPERARE_v0_1.md`
- `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`
- `reprise/AUDIT_IMPACT_REPRISE_CANDIDATS_LOURDS_SUR_DOCUMENTS_ULTERIEURS_EXISTANTS_VESPERARE_v0_1.md`

## 6. Alerte de navigation

Fait :

`reprise/INDEX_ACTIF_VESPERARE_CONCEPTION.md` reference plusieurs fichiers qui ne sont pas presents dans le dossier `reprise/` actuel. Le cas le plus important est la prochaine fiche attendue :

`AUDIT_COMPATIBILITE_NIVEAU_5_OBJETS_MAX_CANDIDATS_AVEC_MATRICE_SYNTHESE_CANDIDATS_LOURDS_VESPERARE_v0_1.md`

Recommandation :

Ne pas traiter cette absence comme une decision implicite. La signaler et, avant toute suite technique, confirmer si le fichier doit etre cree, retrouve ou remplace par un audit deja existant.
