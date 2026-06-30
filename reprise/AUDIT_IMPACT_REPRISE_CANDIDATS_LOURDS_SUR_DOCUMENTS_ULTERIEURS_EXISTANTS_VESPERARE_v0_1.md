# Audit impact reprise candidats lourds sur documents ulterieurs existants

Projet : Vesperare  
Version : v0.1  
Statut : audit d'impact DETTE-ACT-27  
Runtime actif : Max/MSP standalone  
Date : 2026-06-24

## 1. Role du document

Ce document absorbe DETTE-ACT-27.

Il classe les documents existants apres consolidation des candidats lourds.

Il ne modifie pas encore les documents ulterieurs.

Il determine :

- quels documents restent compatibles ;
- quels documents deviennent historiques ;
- quels documents doivent etre relus avant usage ;
- quels documents doivent etre re-audites ou repris en premier ;
- quel ordre de reprise evite de casser le projet.

## 2. Documents utilises

References nouvelles :

- `MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_AVEC_AUDITS_SOURCES_VESPERARE_v0_1.md`
- `AUDIT_COHERENCE_POST_AUDITS_CANDIDATS_LOURDS_AVANT_IMPLEMENTATION_MAX_STANDALONE_VESPERARE_v0_1.md`

Documents ulterieurs inspectes ou reperes comme directement impactes :

- `SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_AVEC_CORPUS_v0_1.md`
- `MATRICE_ARCHITECTURE_MAX_STANDALONE_NIVEAU_6_ROLES_TECHNIQUES_CANDIDATS_CHEMINS_RISQUES_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_NIVEAU_6_ROLES_TECHNIQUES_CANDIDATS_CHEMINS_RISQUES_AVEC_CORPUS_v0_1.md`
- `MATRICE_EXCLUSIONS_CANDIDATS_PAR_CRITICITE_ET_LATENCE_MAX_STANDALONE_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_MATRICE_EXCLUSIONS_CANDIDATS_PAR_CRITICITE_ET_LATENCE_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_CONTRAINTES_TRADUCTION_MAX_CONCRETE_NON_IMPLEMENTATION_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_SPECIFICATION_CONTRAINTES_TRADUCTION_MAX_CONCRETE_AVEC_CORPUS_v0_1.md`
- `MATRICE_CORRESPONDANCE_NOMENCLATURE_STRUCTURES_MAX_CANDIDATES_NON_DEFINITIVES_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_MATRICE_CORRESPONDANCE_NOMENCLATURE_STRUCTURES_MAX_CANDIDATES_AVEC_CORPUS_v0_1.md`

## 3. Verdict general

Verdict :

```text
pas de rupture structurelle detectee, mais reprise ordonnee obligatoire.
```

Les documents ulterieurs ne sont pas a jeter.

Ils sont globalement prudents :

- ils disent souvent "candidat", "non final", "fallback", "MIN-DID-PC" ;
- ils excluent deja les plugins/externals obligatoires ;
- ils gardent Max standalone comme runtime actif ;
- ils refusent la dependance M4L/RNBO comme trajectoire principale ;
- ils maintiennent l'idee de non-implementation.

Mais ils precedent les audits lourds consolides.

Donc :

```text
ils ne doivent pas etre utilises directement comme reference normative finale
tant qu'ils n'ont pas ete compares a la matrice de synthese candidats lourds.
```

## 4. Classification des documents

| Document | Statut apres reprise candidats lourds | Raison | Action |
|---|---|---|---|
| Niveau 5 objets Max candidats non definitifs | A RE-AUDITER EN PREMIER | contient objets/patterns candidats, questions sur gen~/js/poly~/MC, pfft, convolution, plugins | audit compatibilite avec matrice synthese candidats lourds |
| Audit compatibilite niveau 5 avec corpus | A RELIRE APRES NIVEAU 5 | valide le document contre corpus, pas contre la nouvelle matrice lourde | re-audit ou addendum apres niveau 5 |
| Niveau 6 roles/candidats/chemins/risques | A RE-AUDITER APRES NIVEAU 5 | contient statuts FINAL-CANDIDATE/LATER/REJECTED et roles techniques | audit compatibilite avec matrice lourde apres niveau 5 |
| Audit compatibilite niveau 6 avec corpus | A RELIRE APRES NIVEAU 6 | audit anterieur a la synthese lourde | re-audit ou addendum apres niveau 6 |
| Matrice exclusions candidats criticite/latence | COMPATIBLE MAIS A SYNCHRONISER | deja coherente sur P0/P1, direct/safe, exclusions lourdes | audit cible apres niveau 5/6 |
| Specification contraintes traduction Max concrete | COMPATIBLE MAIS A SYNCHRONISER | contient contraintes utiles, mais doit pointer vers matrice lourde | audit cible avant traduction concrete |
| Matrice correspondance nomenclature/structures Max candidates | A RE-AUDITER PLUS TARD | depend des statuts candidats et structures candidates | apres niveau 5/6 et exclusions |
| Documents M4L/RNBO historiques | HISTORIQUE / SUPPLANTE | Max standalone est runtime actif | ne pas utiliser comme trajectoire normative |
| Documents latence/scheduler/vectors | COMPATIBLE | deja alignes avec latence sans compromis | pas de reprise immediate |
| Documents reverb/space/halo | COMPATIBLE AVEC SURCOUCHE ESPACE/CORPUS | les nouveaux audits clarifient convolution/corpus | pas prioritaire avant niveau 5/6 |

## 5. Impact sur niveau 5 objets candidats

Statut :

```text
premier document a re-auditer.
```

Raison :

- il nomme des familles d'objets et patterns Max ;
- il contient des candidats lourds maintenant audites ;
- il contient des questions qui sont maintenant partiellement absorbees ;
- il peut utiliser des statuts comme `CANDIDATE`, `LATER`, `REJECTED` sans la granularite de la nouvelle matrice ;
- il est proche du risque "objet candidat lu comme choix final".

Points a verifier :

- `gen~` ne doit pas devenir choix par puissance ;
- `poly~` / MC doivent garder fallback et densite bornee ;
- `pattrstorage` doit rester lent/non critique ;
- `buffer~` doit distinguer support structurel, corpus et playback prepare ;
- pfft~/FFT doit rester hors direct critique ;
- convolution/reverb/resonateurs doivent pointer vers SPC/REV/HAL/NAT ;
- externals/plugins restent non obligatoires ;
- MIN-DID-PC ne depend d'aucune famille lourde.

## 6. Impact sur niveau 6 roles / candidats / chemins / risques

Statut :

```text
a re-auditer apres niveau 5.
```

Raison :

- le niveau 6 transforme les objets candidats en roles techniques ;
- certains roles utilisent `FINAL-CANDIDATE`, `LATER-CANDIDATE`, `DIAG-CANDIDATE` ;
- ces statuts doivent etre compares a la matrice lourde ;
- les roles `ANA-PARTIAL-HARM`, `GEN-*`, `SPC-*`, `HAL-*`, `STATE-*` et `EXTERNAL-*` sont directement touches.

Point positif :

- le niveau 6 contient deja de nombreux garde-fous : MIN-DID-PC, direct/safe, rejet external/plugin obligatoire, M4L/RNBO non centraux.

Risque :

- un statut `FINAL-CANDIDATE` peut etre lu trop fort si la matrice lourde demande conditionnel ou report.

## 7. Impact sur exclusions / contraintes traduction

Statut :

```text
compatible mais a synchroniser apres niveau 5/6.
```

Les matrices d'exclusion sont globalement coherentes avec les audits lourds :

- `pattrstorage`, pfft, convolution, gen~, poly~, MC, buffer/playback, external/plugin sont exclus des chemins critiques ;
- MIN-DID-PC reste protege ;
- direct/safe reste prioritaire ;
- signalisation et fallback sont presents.

Synchronisation requise :

- ajouter explicitement la matrice synthese candidats lourds comme reference ;
- aligner le vocabulaire des statuts ;
- verifier que "AUTORISE CANDIDAT" n'est jamais lu comme choix final ;
- verifier que les statuts conditionnels lourds restent hors P0/P1.

## 8. Impact sur documents reverb/espace/generation

Statut :

```text
pas de reprise immediate.
```

Raison :

- les audits espace/corpus et opacite ont plutot precise les frontieres ;
- ils ne contredisent pas le socle reverb/space/halo ;
- ils ajoutent surtout des conditions de corpus, convolution, IR et opacite.

Action plus tard :

- si un futur document choisit concretement convolution, corpus, IR, HAL, GEN-HAL ou Markov, il devra pointer vers la matrice synthese.

## 9. Ordre de reprise impose

Ordre logique :

1. Auditer niveau 5 objets Max candidats non definitifs contre la matrice synthese candidats lourds.
2. Corriger ou annoter niveau 5 si l'audit trouve une sur-autorisation.
3. Auditer niveau 6 roles/candidats/chemins contre niveau 5 corrige et matrice synthese.
4. Auditer matrice exclusions et contraintes traduction contre niveau 5/6 mis a jour.
5. Auditer matrices de correspondance/nomenclature si les statuts candidats changent.
6. Ne passer vers implementation qu'apres ces synchronisations.

## 10. Decision de sortie

DETTE-ACT-27 est absorbee.

Prochaine dette logique :

```text
DETTE-ACT-28 - Audit compatibilite niveau 5 objets Max candidats avec matrice synthese candidats lourds
```

Prochaine fiche :

```text
AUDIT_COMPATIBILITE_NIVEAU_5_OBJETS_MAX_CANDIDATS_AVEC_MATRICE_SYNTHESE_CANDIDATS_LOURDS_VESPERARE_v0_1.md
```

Ce passage est obligatoire avant toute reprise du niveau 6, exclusions, contraintes de traduction ou implementation.
