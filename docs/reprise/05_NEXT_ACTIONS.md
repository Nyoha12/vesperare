# Prochaines actions de reprise

Statut : plan de reprise documentaire minimal.  
Date : 2026-06-30.

## 1. Principe

Recommandation :

La prochaine action ne doit pas etre une implementation, un patch, un mapping, une UI, un choix d'objet Max final, un asset ou une banque de samples.

Fait :

Le corpus pointe vers une verification documentaire precise :

`DETTE-ACT-28 - Audit compatibilite niveau 5 objets Max candidats avec matrice synthese candidats lourds`

Sources :

- `reprise/INDEX_ACTIF_VESPERARE_CONCEPTION.md`
- `reprise/REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`
- `reprise/AUDIT_IMPACT_REPRISE_CANDIDATS_LOURDS_SUR_DOCUMENTS_ULTERIEURS_EXISTANTS_VESPERARE_v0_1.md`

## 2. Plan de reprise

1. Lire les syntheses `docs/reprise/00_INDEX.md`, `docs/reprise/01_PROJECT_BRIEF.md`, `docs/reprise/02_PROJECT_STATE.md`, `docs/reprise/03_DECISIONS_LOG.md` et `docs/reprise/04_OPEN_QUESTIONS.md`.
2. Verifier la presence ou l'absence de la fiche DETTE-ACT-28 attendue.
3. Si elle est absente, creer une fiche ciblee uniquement si la decision humaine attendue est claire : verifier niveau 5 objets Max candidats contre matrice synthese candidats lourds.
4. Corpus autorise pour DETTE-ACT-28 :
   - `reprise/SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_VESPERARE_v0_1.md`
   - `reprise/AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_AVEC_CORPUS_v0_1.md`
   - `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`
   - `reprise/AUDIT_COMPATIBILITE_MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_AVEC_AUDITS_SOURCES_VESPERARE_v0_1.md`
   - `reprise/AUDIT_IMPACT_REPRISE_CANDIDATS_LOURDS_SUR_DOCUMENTS_ULTERIEURS_EXISTANTS_VESPERARE_v0_1.md`
   - `reprise/REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`
5. Corpus interdit pour DETTE-ACT-28 :
   - choix final d'objet Max ;
   - implementation ;
   - patch ;
   - UI ;
   - mapping ;
   - seuils numeriques ;
   - prototype ;
   - asset reel ou sample bank.
6. Sortie attendue de DETTE-ACT-28 :
   - verdict compatible / compatible avec corrections / incompatible ;
   - corrections limitees a reporter ;
   - points niveau 5 fragilises par les candidats lourds ;
   - confirmation P0/P1, direct/safe, MIN-DID-PC, fallback, SIG ;
   - prochaines dettes si necessaire.

## 3. Taches prioritaires

Priorite 1 :

Verifier DETTE-ACT-28 et ne pas confondre avec l'audit niveau 5 deja present contre le corpus.

Fichiers concernes :

- `reprise/AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_AVEC_CORPUS_v0_1.md`
- `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`

Priorite 2 :

Clarifier les fichiers references par l'index actif mais absents du dossier `reprise/`.

Fichiers concernes :

- `reprise/INDEX_ACTIF_VESPERARE_CONCEPTION.md`
- `docs/reprise/04_OPEN_QUESTIONS.md`

Priorite 3 :

Clarifier les variantes suffixees `(1)` avant de les utiliser comme source.

Fichiers concernes :

- `reprise/REVERBS_ESPACE_REACTIF_v0_2.md`
- `reprise/REVERBS_ESPACE_REACTIF_v0_2 (1).md`
- `reprise/MATRICE_BLOCS_RESPONSABILITES_PACKETS_CONTROLES_VESPERARE_v0_1.md`
- `reprise/MATRICE_BLOCS_RESPONSABILITES_PACKETS_CONTROLES_VESPERARE_v0_1 (1).md`

Priorite 4 :

Ne reprendre les donnees AcousticArchive qu'apres reception de donnees reelles.

Fichiers concernes :

- `docs/assets/15_DONNEES_INSTRUMENTALES_MANQUANTES_PRIORITAIRES.md`
- `docs/assets/16_ACOUSTICARCHIVE_MAPPING_DONNEES_VESPERARE.md`

## 4. Decision humaine attendue

Yohan ne doit pas trancher une architecture non instruite.

Decision humaine utile apres DETTE-ACT-28 :

- accepter ou refuser les corrections documentaires proposees ;
- confirmer si certains candidats Max restent admissibles, reportes ou exclus ;
- corriger l'intention musicale si l'audit tire le systeme vers une direction trop technique ;
- valider seulement ce qui a ete clairement separe entre fait, inference et recommandation.

## 5. Arret

Condition d'arret de la prochaine action :

La reprise doit s'arreter avant implementation des que le statut de DETTE-ACT-28 est clair et que les corrections documentaires limitees sont listees.
