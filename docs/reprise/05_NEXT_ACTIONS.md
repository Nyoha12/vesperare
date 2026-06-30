# Prochaines actions de reprise

Statut : plan de reprise documentaire minimal apres DETTE-ACT-28.
Date : 2026-06-30.

## 1. Principe

Recommandation :

La prochaine action ne doit pas etre une implementation, un patch, un mapping, une UI, un choix d'objet Max final, un asset ou une banque de samples.

Fait :

DETTE-ACT-28 est instruite dans :

`docs/reprise/07_AUDIT_COMPATIBILITE_NIVEAU_5_OBJETS_MAX_CANDIDATS_AVEC_MATRICE_SYNTHESE_CANDIDATS_LOURDS_VESPERARE_v0_1.md`

Fait :

Son verdict est :

```text
compatible avec corrections documentaires limitees
```

Fait :

La synchronisation niveau 5 / matrice lourde est creee dans :

`docs/reprise/08_SYNCHRONISATION_NIVEAU_5_MATRICE_LOURDE_STATUTS_CHEMINS_FALLBACK_SIG.md`

Inference :

DETTE-ACT-28 n'est plus une urgence ouverte dans le pilotage documentaire. La suite logique n'est pas de passer a l'implementation, mais de verifier si une reprise niveau 6 peut etre instruite proprement depuis le niveau 5 synchronise, la matrice lourde et la synchronisation ACT28.

Sources :

- `docs/reprise/07_AUDIT_COMPATIBILITE_NIVEAU_5_OBJETS_MAX_CANDIDATS_AVEC_MATRICE_SYNTHESE_CANDIDATS_LOURDS_VESPERARE_v0_1.md`
- `docs/reprise/08_SYNCHRONISATION_NIVEAU_5_MATRICE_LOURDE_STATUTS_CHEMINS_FALLBACK_SIG.md`
- `reprise/AUDIT_IMPACT_REPRISE_CANDIDATS_LOURDS_SUR_DOCUMENTS_ULTERIEURS_EXISTANTS_VESPERARE_v0_1.md`

## 2. Prochaine action logique

Recommandation :

Preparer une readiness niveau 6 documentaire.

Cette readiness doit seulement verifier :

- si le corpus niveau 6 a instruire est present, absent ou ambigu ;
- si le futur niveau 6 peut citer le niveau 5 synchronise et la matrice lourde sans contredire P0/P1, direct/safe, MIN-DID-PC, fallback et SIG ;
- si les corrections ACT28 doivent etre reportees avant tout document plus prescriptif ;
- si des fichiers absents ou a statut inconnu bloquent la suite ;
- quelles conditions d'arret doivent preceder toute implementation.

Interdictions :

- ne pas creer de niveau 6 ;
- ne pas modifier `reprise/` ;
- ne pas faire de patch Max ;
- ne pas produire UI, mapping, prototype, asset, sample bank, seuil numerique ou objet Max final ;
- ne pas transformer la synchronisation ACT28 en decision artistique.

## 3. Corpus propose pour la readiness niveau 6

Fait :

Les sources minimales deja disponibles pour cadrer la readiness sont :

- `docs/reprise/02_PROJECT_STATE.md`
- `docs/reprise/03_DECISIONS_LOG.md`
- `docs/reprise/04_OPEN_QUESTIONS.md`
- `docs/reprise/07_AUDIT_COMPATIBILITE_NIVEAU_5_OBJETS_MAX_CANDIDATS_AVEC_MATRICE_SYNTHESE_CANDIDATS_LOURDS_VESPERARE_v0_1.md`
- `docs/reprise/08_SYNCHRONISATION_NIVEAU_5_MATRICE_LOURDE_STATUTS_CHEMINS_FALLBACK_SIG.md`
- `reprise/SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_VESPERARE_v0_1.md`
- `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`
- `reprise/AUDIT_IMPACT_REPRISE_CANDIDATS_LOURDS_SUR_DOCUMENTS_ULTERIEURS_EXISTANTS_VESPERARE_v0_1.md`
- `reprise/REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`

Inference :

Le corpus niveau 6 ne doit pas etre suppose complet. La readiness doit d'abord verifier les references niveau 6 presentes, absentes ou ambigues avant toute creation de fiche.

## 4. Taches prioritaires

Priorite 1 :

Faire une readiness niveau 6 documentaire.

Sortie attendue :

- statut pret / pret avec reserves / bloque ;
- corpus autorise et corpus exclu ;
- fichiers absents ou ambigus ;
- conditions pour reporter les corrections ACT28 ;
- rappel explicite : pas d'implementation et pas de creation de niveau 6.

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

## 5. Decision humaine attendue

Yohan ne doit pas trancher une architecture non instruite.

Decision humaine utile apres readiness niveau 6 :

- accepter ou refuser le passage a une fiche niveau 6 separee ;
- corriger l'intention musicale si les corrections ACT28 tirent le systeme vers une direction trop technique ;
- confirmer seulement ce qui a ete clairement separe entre fait, inference et recommandation.

## 6. Arret

Condition d'arret de la prochaine action :

La reprise doit s'arreter des que le statut de readiness niveau 6 est clair. Elle ne doit pas produire de niveau 6, implementation, patch, mapping, UI, prototype, asset ou banque de samples.
