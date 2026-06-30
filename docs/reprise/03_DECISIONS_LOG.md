# Journal des decisions de reprise

Statut : synthese des decisions deja presentes dans le corpus.  
Date : 2026-06-30.  
Certitude : certain / probable / flou.

## 1. Decisions

| Decision | Source principale | Certitude |
| --- | --- | --- |
| Vesperare vise une techno organique personnelle, pas une simple techno avec sons naturels. | `README.md`, `reprise/INTENTION_INITIALE_RECONSTRUITE_v0_2.md`, `reprise/BESOINS_STYLISTIQUES_v0_4.md` | certain |
| La techno reste l'influence stylistique principale. | `docs/00_INDEX_METHODE_DECISIONS.md`, `reprise/BESOINS_STYLISTIQUES_v0_4.md` | certain |
| Didgeridoo et guimbardes sont sources live fixes centrales. | `README.md`, `docs/assets/00_ASSETS_INDEX.md`, `reprise/INDEX_ACTIF_VESPERARE_CONCEPTION.md` | certain |
| Gong et tambours sur cadre restent optionnels et non neutres. | `docs/assets/00_ASSETS_INDEX.md`, `reprise/ARBITRAGES_QUESTIONS_PRIORITAIRES_v0_1.md` | certain |
| Le principe zero sample initial est conserve ; un sample ne peut venir que d'un besoin reel documente. | `README.md`, `docs/assets/00_ASSETS_INDEX.md` | certain |
| Les sons electroniques reconnaissables sont a eviter ; l'ambiguite acoustique est centrale. | `reprise/ARBITRAGES_ARTISTIQUES_BESOINS_v0_1.md` | certain |
| Le controle n'est pas un parametre : il inclut selection, organisation, amplitude, contexte, risque, sortie, automation situee et override. | `docs/42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md`, `docs/modules/18_CONTEXTUAL_CONTROL_ROUTER_AMPLITUDES_LIMITES_OVERRIDE_ADDENDUM.md` | certain |
| Le systeme automatise ce qui soutient, protege ou coordonne ; Yohan garde les decisions expressives. | `docs/42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md`, `docs/45_REPRISE_DEPUIS_FICHE_MESURES_INSTRUMENTS.md` | certain |
| Le Router doit presenter les bons gestes de controle au bon moment. | `docs/modules/18_CONTEXTUAL_CONTROL_ROUTER_AMPLITUDES_LIMITES_OVERRIDE_ADDENDUM.md` | certain |
| AcousticArchive est utile comme outil de connaissance et calibrage futur, mais ne decide pas fonction, asset, sample, seuil ou mapping. | `docs/assets/16_ACOUSTICARCHIVE_MAPPING_DONNEES_VESPERARE.md`, `docs/45_REPRISE_DEPUIS_FICHE_MESURES_INSTRUMENTS.md` | certain |
| Les donnees instrumentales manquantes ne declenchent pas une collecte obligatoire et ne demandent pas une taxonomie exhaustive du jeu de Yohan. | `docs/assets/15_DONNEES_INSTRUMENTALES_MANQUANTES_PRIORITAIRES.md` | certain |
| Max/MSP standalone est le runtime principal actuel. | `reprise/DECISION_RUNTIME_MAX_STANDALONE_LATENCE_SANS_COMPROMIS_VESPERARE_v0_1.md` | certain |
| Max for Live / Ableton, RNBO, Linux et embarque sont secondaires, historiques ou futurs. | `reprise/DECISION_RUNTIME_MAX_STANDALONE_LATENCE_SANS_COMPROMIS_VESPERARE_v0_1.md`, `reprise/INDEX_ACTIF_VESPERARE_CONCEPTION.md` | certain |
| La latence est un enjeu musical sans compromis reel pour direct, didgeridoo, grave critique, P0/P1 et protections. | `reprise/DECISION_RUNTIME_MAX_STANDALONE_LATENCE_SANS_COMPROMIS_VESPERARE_v0_1.md` | certain |
| MIN-DID-PC doit rester complet mais ne doit pas devenir une accumulation. | `reprise/SPECIFICATION_NOYAU_PERFORMANCE_MAX_STANDALONE_CONTROLES_SCENES_CHEMINS_VESPERARE_v0_1.md`, `reprise/MATRICE_PREUVE_VERIFICATION_DETTES_AVANT_REPRISE_VESPERARE_v0_1.md` | certain |
| Les candidats lourds ne portent pas P0/P1 par defaut et ne conditionnent pas MIN-DID-PC. | `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md` | certain |
| Les objets Max niveau 5 sont candidats non definitifs, pas choix finaux. | `reprise/SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_VESPERARE_v0_1.md` | certain |
| DETTE-ACT-27 est absorbee par l'audit d'impact sur documents ulterieurs. | `reprise/AUDIT_IMPACT_REPRISE_CANDIDATS_LOURDS_SUR_DOCUMENTS_ULTERIEURS_EXISTANTS_VESPERARE_v0_1.md` | certain |
| La prochaine dette logique est DETTE-ACT-28. | `reprise/AUDIT_IMPACT_REPRISE_CANDIDATS_LOURDS_SUR_DOCUMENTS_ULTERIEURS_EXISTANTS_VESPERARE_v0_1.md`, `reprise/REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md` | certain |
| Le fichier DETTE-ACT-28 est attendu mais absent du dossier `reprise/` actuel. | comparaison entre `reprise/INDEX_ACTIF_VESPERARE_CONCEPTION.md` et les 129 fichiers presents dans `reprise/` | certain |
| Les fichiers suffixes `(1)` sont des copies ou variantes a statut non tranche. | hash compares sur `REVERBS_ESPACE_REACTIF_v0_2 (1).md` et `MATRICE_BLOCS_RESPONSABILITES_PACKETS_CONTROLES_VESPERARE_v0_1 (1).md` | flou |
| Les anciennes fiches Max for Live / RNBO ne doivent plus piloter la trajectoire si elles contredisent Max standalone. | `reprise/INDEX_ACTIF_VESPERARE_CONCEPTION.md`, `reprise/MATRICE_PREUVE_VERIFICATION_DETTES_AVANT_REPRISE_VESPERARE_v0_1.md` | certain |
| L'implementation ne doit pas commencer avant les synchronisations et audits encore actifs. | `reprise/AUDIT_IMPACT_REPRISE_CANDIDATS_LOURDS_SUR_DOCUMENTS_ULTERIEURS_EXISTANTS_VESPERARE_v0_1.md` | certain |

## 2. Comment lire ce journal

Fait :

Une decision notee certaine signifie qu'elle est explicitement formulee dans une source identifiee. Une decision probable est une inference forte depuis plusieurs sources mais demande encore confirmation documentaire. Une decision floue designe un statut non resolu ou une contradiction de presence de fichiers.

Recommandation :

Ne pas utiliser ce journal comme preuve musicale. Il sert a reprendre le travail documentaire et a pointer les sources a relire avant decision humaine.
