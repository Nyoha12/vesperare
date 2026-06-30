# Audit compatibilite audit niveau 5 objets Max candidats avec impact revalide, matrice revalidee et coherence post re-audits

Projet : Vesperare  
Version : v0.1  
Statut : audit compatibilite DETTE-ACT-67  
Runtime actif : Max/MSP standalone  
Date : 2026-06-24

## 1. Role du document

Ce document absorbe DETTE-ACT-67.

Il verifie que l'audit niveau 5 existant reste utilisable apres revalidation de
la matrice, de l'ancien audit matrice et du document d'impact :

- `AUDIT_COMPATIBILITE_NIVEAU_5_OBJETS_MAX_CANDIDATS_AVEC_MATRICE_SYNTHESE_CANDIDATS_LOURDS_VESPERARE_v0_1.md`

Source auditee par cet audit :

- `SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_VESPERARE_v0_1.md`

Sources actives :

- `AUDIT_COMPATIBILITE_AUDIT_IMPACT_REPRISE_CANDIDATS_LOURDS_DOCUMENTS_ULTERIEURS_AVEC_MATRICE_REVALIDEE_ET_COHERENCE_POST_REAUDITS_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_AUDIT_MATRICE_SYNTHESE_CANDIDATS_LOURDS_AVEC_MATRICE_REVALIDEE_ET_COHERENCE_POST_REAUDITS_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_AVEC_COHERENCE_POST_REAUDITS_CANDIDATS_LOURDS_ET_CORRECTIONS_SIG_VESPERARE_v0_1.md`
- `AUDIT_COHERENCE_POST_REAUDITS_CANDIDATS_LOURDS_AVANT_SYNTHESE_LOURDE_OU_IMPLEMENTATION_VESPERARE_v0_1.md`

Il ne choisit pas :

- objet Max final ;
- moteur final ;
- pattern final ;
- external final ;
- plugin final ;
- patch ;
- UI ;
- mapping ;
- implementation.

## 2. Verdict

Verdict :

```text
audit niveau 5 compatible sous restriction de non-finalite renforcee.
```

Decision :

```text
le niveau 5 reste un inventaire de familles d'objets et patterns candidats.
il peut servir au niveau 6 seulement si chaque candidat lourd est relu par la
matrice revalidee et par les garde-fous owner/chemin/interdits/fallback/SIG.
```

Corrections appliquees :

```text
l'audit niveau 5 source a recu une note de reprise re-auditee DETTE-ACT-67.
la specification niveau 5 source a recu une note indiquant que ses questions
restantes sont historiques, absorbees ou requalifiees.
```

## 3. Controle statut general niveau 5

Verdict :

```text
compatible.
```

Le niveau 5 declare correctement :

- objets et patterns candidats seulement ;
- aucun objet final ;
- aucun patch final ;
- aucun routage final ;
- aucun seuil final ;
- aucun driver/interface audio/controleur/UI final ;
- aucun test pratique comme condition de conception.

Restriction active :

```text
un candidat niveau 5 est une hypothese de conception, pas un choix.
```

## 4. Controle statuts CANDIDATE / OPTION / LATER / REJECTED

Verdict :

```text
compatible avec surcouche normative.
```

Lecture active :

| Statut niveau 5 | Lecture active |
|---|---|
| CANDIDATE | hypothese admissible a revalider, jamais objet retenu |
| OPTION | possibilite utile mais non necessaire |
| LATER | reporte, pas prochaine implementation par inertie |
| REJECTED | refuse par garde-fou courant, rouvrable seulement par decision explicite |

Regle :

```text
pour toute famille lourde, le statut niveau 5 est subordonne a la matrice
revalidee.
```

## 5. Controle familles lourdes

Verdict :

```text
compatible.
```

Lecture active par famille :

| Famille | Statut actif | Condition de passage vers niveau 6 |
|---|---|---|
| `gen~` | support audio-rate conditionnel | fonction nommee, owner, sortie, fallback non-gen~, hors P0/P1/direct/safe/MIN-DID-PC |
| `poly~` / MC | densite/polytexture conditionnelle | densite bornee, fallback simple/downmix, SIG reduction/repli |
| `buffer~` / playback | support prepare conditionnel | preload, mode absent, provenance/role, pas lecture critique |
| `js` / node / scripts | reporte hors critique | config/outils/vue/diag seulement, pas audio critique |
| `pattrstorage` | etat lent reporte | pas scene critique, pas P0/P1/P2 immediat, SIG recall partiel/echec |
| pfft~/FFT/spectral | conditionnel lourd | source-bonding, release, owner, fallback, DIAG/SLOW ou GEN/HAL/SPC lent |
| convolution/reverb/resonateurs | conditionnel lourd ou LATER | owner SPC/REV/HAL/NAT, pas reverb automatique, fallback espace simple |
| externals/plugins | reportes ou conditionnels forts | jamais obligatoires, version/licence/maintenance/fallback/SIG |

Conclusion :

```text
aucune famille lourde du niveau 5 ne passe en choix final.
```

## 6. Controle MIN-DID-PC

Verdict :

```text
compatible avec reformulation obligatoire au niveau 6.
```

Le niveau 5 donne une table de candidats minimaux.

Lecture active :

```text
la table MIN-DID-PC de niveau 5 est une liste d'exemples de roles minimaux,
pas une liste d'objets imposes.
```

Obligation niveau 6 :

```text
exprimer MIN-DID-PC par roles et chemins, pas par objets lourds imposes.
```

Interdits maintenus :

- source optionnelle obligatoire ;
- analyse lourde obligatoire ;
- polyphonie obligatoire ;
- `gen~` obligatoire ;
- `js` obligatoire ;
- external obligatoire ;
- plugin obligatoire ;
- UI obligatoire pour audio.

## 7. Controle SIG et fallback

Verdict :

```text
compatible mais insuffisant pour mapping live.
```

L'audit niveau 5 exige deja :

- fallback ;
- mode absent ;
- version simple ;
- downmix/repli ;
- release ;
- SIG si reduction, echec, limitation, incertitude ou repli affecte le live.

Restriction :

```text
le niveau 5 ne classe pas encore les signaux dans la taxonomie SIG numerique
ou diagnostique.
cette classification reste a faire dans les documents de controle live,
vue, mapping ou etats.
```

Interdit :

```text
ne pas transformer SIG en surcharge visuelle.
```

## 8. Controle latence sans compromis

Verdict :

```text
compatible.
```

Le niveau 5 maintient :

- analyses lourdes hors chemin direct ;
- diagnostic non vital ;
- UI hors chemin vital ;
- externals/plugins non obligatoires ;
- objets lourds hors MIN-DID-PC ;
- fallback simple pour chemins critiques.

Lecture active :

```text
latence sans compromis signifie : placer, preparer, borner, replier ou reporter
les familles lourdes sans appauvrir le projet musical par defaut.
```

## 9. Controle questions restantes niveau 5

Constat :

```text
la specification niveau 5 contient une section "Questions restantes".
```

Verdict :

```text
non bloquant apres note de reprise.
```

Lecture active :

- certaines questions sont absorbees par les audits candidats lourds ;
- certaines sont reportees au niveau 6 ;
- certaines ne seront utiles qu'avant choix final d'objet ;
- aucune ne justifie de sauter le niveau 6 ou de lancer l'implementation.

Restriction :

```text
ces questions ne sont plus des dettes bloquantes autonomes.
si l'une redevient bloquante, elle doit etre recreee dans le registre comme
dette explicite.
```

## 10. Controle de la sortie vers niveau 6

Ancienne sortie :

```text
auditer niveau 6 roles techniques / candidats / chemins avec matrice synthese
candidats lourds et niveau 5 re-audite.
```

Verdict :

```text
compatible mais a revalider.
```

Lecture active :

```text
l'ancien audit niveau 5 autorise a examiner l'audit niveau 6 existant.
il n'autorise pas a utiliser le niveau 6 comme deja conforme aux re-audits
recents.
```

## 11. Decision de passage

DETTE-ACT-67 est absorbee.

L'audit niveau 5 est revalide.

Il autorise :

- revalidation de l'audit niveau 6 existant ;
- lecture du niveau 5 comme inventaire non definitif ;
- passage des candidats vers roles seulement avec surcouche matrice revalidee.

Il n'autorise pas :

- choix final d'objet Max ;
- choix final de moteur ;
- choix final de plugin/external/package ;
- reprise directe des exclusions ;
- reprise directe des contraintes de traduction ;
- patch ;
- UI ;
- mapping ;
- implementation.

Prochaine dette logique :

```text
DETTE-ACT-68 - Audit compatibilite audit niveau 6 roles techniques candidats
chemins avec niveau 5 revalide, matrice revalidee et coherence post re-audits
```

Prochaine fiche :

```text
AUDIT_COMPATIBILITE_AUDIT_NIVEAU_6_ROLES_TECHNIQUES_CANDIDATS_CHEMINS_AVEC_NIVEAU_5_REVALIDE_MATRICE_REVALIDEE_ET_COHERENCE_POST_REAUDITS_VESPERARE_v0_1.md
```
