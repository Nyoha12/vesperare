# Audit compatibilite audit impact reprise candidats lourds documents ulterieurs avec matrice revalidee et coherence post re-audits

Projet : Vesperare  
Version : v0.1  
Statut : audit compatibilite DETTE-ACT-66  
Runtime actif : Max/MSP standalone  
Date : 2026-06-24

## 1. Role du document

Ce document absorbe DETTE-ACT-66.

Il verifie que le document suivant reste valable apres revalidation de la
matrice et de l'ancien audit matrice / audits sources :

- `AUDIT_IMPACT_REPRISE_CANDIDATS_LOURDS_SUR_DOCUMENTS_ULTERIEURS_EXISTANTS_VESPERARE_v0_1.md`

Sources actives :

- `AUDIT_COMPATIBILITE_AUDIT_MATRICE_SYNTHESE_CANDIDATS_LOURDS_AVEC_MATRICE_REVALIDEE_ET_COHERENCE_POST_REAUDITS_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_AVEC_COHERENCE_POST_REAUDITS_CANDIDATS_LOURDS_ET_CORRECTIONS_SIG_VESPERARE_v0_1.md`
- `AUDIT_COHERENCE_POST_REAUDITS_CANDIDATS_LOURDS_AVANT_SYNTHESE_LOURDE_OU_IMPLEMENTATION_VESPERARE_v0_1.md`

Il ne choisit pas :

- objet Max final ;
- moteur final ;
- external final ;
- plugin final ;
- patch ;
- UI ;
- mapping ;
- implementation.

## 2. Verdict

Verdict :

```text
document d'impact compatible sous restriction de reprise.
```

Decision :

```text
son ordre general reste correct : niveau 5 d'abord, puis niveau 6, puis
exclusions/contraintes/correspondances.

mais ses references doivent etre lues comme historiques et resolues vers les
re-audits actifs.
```

Correction appliquee :

```text
le document d'impact source a recu une note de reprise re-auditee DETTE-ACT-66.
```

## 3. Controle des references

Constat :

```text
le document d'impact cite la matrice synthese et l'ancien audit matrice / audits
sources, ainsi que l'ancien audit coherence post candidats lourds.
```

Lecture active :

| Reference historique | Reference active |
|---|---|
| matrice synthese statuts candidats lourds | matrice revalidee par DETTE-ACT-64 |
| audit matrice / audits sources | audit revalide par DETTE-ACT-65 |
| coherence post audits lourds | coherence post re-audits candidats lourds DETTE-ACT-63 |

Verdict :

```text
compatible apres resolution des references.
```

Interdit :

```text
ne pas utiliser les references historiques comme justification autonome de
niveau 5, niveau 6, exclusions, contraintes ou implementation.
```

## 4. Controle verdict general

Ancien verdict :

```text
pas de rupture structurelle detectee, mais reprise ordonnee obligatoire.
```

Verdict actif :

```text
compatible.
```

Raison :

- les documents aval n'ont pas a etre jetes ;
- ils contiennent deja de nombreux garde-fous ;
- ils precedent cependant les re-audits recents ;
- ils doivent donc etre repris par audits cibles, dans l'ordre.

Correction de lecture :

```text
"globalement prudents" ne signifie pas "deja conformes".
```

## 5. Controle classification des documents aval

Verdict :

```text
classification globalement compatible.
```

Classification revalidee :

| Famille aval | Statut actif | Action active |
|---|---|---|
| Niveau 5 objets Max candidats | premier bloc a revalider | audit de l'audit niveau 5 existant contre matrice revalidee |
| Audit niveau 5 avec corpus | a relire apres niveau 5 | ne pas utiliser avant revalidation niveau 5 |
| Niveau 6 roles/candidats/chemins | apres niveau 5 | re-audit contre niveau 5 revalide et matrice |
| Audit niveau 6 avec corpus | apres niveau 6 | re-audit/addendum si necessaire |
| Matrice exclusions criticite/latence | apres niveau 5/6 | synchronisation SIG/statuts/interdits |
| Contraintes traduction Max concrete | apres exclusions | verifier non-implementation et non-finalite |
| Correspondance nomenclature/structures | plus tard | depend des statuts candidats revalides |
| Documents M4L/RNBO | historique/supplante | ne pas utiliser comme trajectoire normative |
| Latence/scheduler/vectors | compatible mais deja a garder sous surveillance | maintenir latence sans compromis |
| Reverb/space/halo | compatible avec surcouche espace/corpus | pas prioritaire avant niveau 5/6 |

Point important :

```text
le document d'impact parle du niveau 5 comme premier document a re-auditer.
dans la chaine active, il faut revalider l'audit niveau 5 deja existant, car il
est lui-meme construit sur la matrice historique.
```

## 6. Controle niveau 5

Verdict :

```text
priorite confirmee.
```

Raison :

- le niveau 5 nomme des objets et patterns Max ;
- il touche `gen~`, `poly~`, MC, `pattrstorage`, `buffer~`, pfft/FFT,
  convolution, plugins, externals ;
- il est proche du risque "objet candidat lu comme choix final" ;
- il conditionne la lecture du niveau 6.

Regle :

```text
niveau 5 ne doit pas etre corrige directement avant l'audit cible.
il faut d'abord revalider l'audit niveau 5 existant contre la matrice revalidee.
```

## 7. Controle niveau 6

Verdict :

```text
a maintenir apres niveau 5.
```

Raison :

- niveau 6 transforme les objets candidats en roles techniques ;
- ses statuts `FINAL-CANDIDATE`, `LATER-CANDIDATE`, `DIAG-CANDIDATE` peuvent
  etre lus trop fortement ;
- il depend du niveau 5 et de la matrice lourde.

Interdit :

```text
ne pas reprendre niveau 6 avant que niveau 5 soit revalide.
```

## 8. Controle exclusions / contraintes / correspondances

Verdict :

```text
ordre compatible.
```

Les exclusions et contraintes restent en aval parce qu'elles doivent recevoir :

- les statuts niveau 5 revalides ;
- les roles niveau 6 revalides ;
- les interdits P0/P1, direct/safe, MIN-DID-PC ;
- la correction SIG ;
- les contraintes de latence sans compromis ;
- la non-finalite des candidats lourds.

Interdit :

```text
ne pas synchroniser exclusions ou contraintes avant d'avoir revalide niveau 5/6.
```

## 9. Controle documents latence et reverb/espace

Verdict :

```text
compatible avec surveillance.
```

Latence :

```text
le document d'impact dit "compatible", mais la reprise active exige de garder
la latence comme enjeu artistique/fonctionnel sans compromis, pas comme simple
contrainte technique.
```

Reverb/espace :

```text
la non-priorite avant niveau 5/6 reste correcte, car les audits espace/corpus
ont deja renforce convolution, IR, corpus, HAL/SPC/REV/NAT et source-bonding.
```

Limite :

```text
si un document aval choisit concretement convolution, corpus, IR, Markov,
GEN-HAL, HAL/REV/SPC ou naturalisation, il devra pointer vers les audits
revalides.
```

## 10. Decision de passage

DETTE-ACT-66 est absorbee.

Le document d'impact est revalide comme ordre de reprise.

Il autorise :

- audit cible du niveau 5 objets Max candidats ;
- conservation du document d'impact comme classement historique revalide ;
- reprise ordonnee des documents aval apres audit cible.

Il n'autorise pas :

- reprise directe niveau 6 ;
- reprise directe exclusions ;
- reprise directe contraintes ;
- reprise directe correspondances ;
- implementation ;
- choix final objet/moteur/plugin/external/UI/mapping.

Prochaine dette logique :

```text
DETTE-ACT-67 - Audit compatibilite audit niveau 5 objets Max candidats avec
impact revalide, matrice revalidee et coherence post re-audits
```

Prochaine fiche :

```text
AUDIT_COMPATIBILITE_AUDIT_NIVEAU_5_OBJETS_MAX_CANDIDATS_AVEC_IMPACT_REVALIDE_MATRICE_REVALIDEE_ET_COHERENCE_POST_REAUDITS_VESPERARE_v0_1.md
```
