# Audit compatibilite matrice synthese candidats lourds avec audits sources

Projet : Vesperare  
Version : v0.1  
Statut : audit de compatibilite DETTE-ACT-26  
Runtime actif : Max/MSP standalone  
Date : 2026-06-24

## 1. Role du document

Ce document absorbe DETTE-ACT-26.

Il verifie :

- `MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`

contre :

- `AUDIT_CANDIDATS_SUPPORTS_STRUCTURELS_LOURDS_ETATS_OPAQUES_MAX_STANDALONE_VESPERARE_v0_1.md`
- `AUDIT_CANDIDATS_TRANSFORMATIONS_LOURDES_SPECTRAL_GRANULARITE_MODELES_PHYSIQUES_MAX_STANDALONE_VESPERARE_v0_1.md`
- `AUDIT_CANDIDATS_ESPACE_EMPREINTE_CORPUS_CONVOLUTION_IR_PLAYBACK_PREPARE_MAX_STANDALONE_VESPERARE_v0_1.md`
- `AUDIT_CANDIDATS_OPACITE_DECISIONNELLE_ML_CLASSIFICATION_MARKOV_GRAMMAIRE_STATISTIQUE_MAX_STANDALONE_VESPERARE_v0_1.md`
- `AUDIT_CANDIDATS_DEPENDANCES_EXTERNES_PLUGINS_PACKAGES_BIBLIOTHEQUES_MAX_STANDALONE_VESPERARE_v0_1.md`
- `AUDIT_COHERENCE_POST_AUDITS_CANDIDATS_LOURDS_AVANT_IMPLEMENTATION_MAX_STANDALONE_VESPERARE_v0_1.md`

Il ne choisit pas :

- objet final ;
- moteur final ;
- external final ;
- patch ;
- UI ;
- mapping ;
- implementation.

## 2. Verdict general

Verdict :

```text
compatible.
```

La matrice reprend correctement :

- les familles auditees ;
- les statuts principaux ;
- les chemins admis ;
- les interdits P0/P1, direct/safe et MIN-DID-PC ;
- les fonctions admises ;
- les conditions minimales ;
- les fallbacks ;
- les besoins de SIG ;
- les reports forts.

Aucune correction bloquante n'est necessaire dans la matrice avant la suite.

## 3. Verification des familles couvertes

Statut :

```text
complet pour le niveau de synthese attendu.
```

Familles presentes :

- `gen~`, `poly~`, MC ;
- `buffer~` / playback, `js` / node / scripts, `pattrstorage` ;
- pfft~/FFT/spectral, granularite complexe, modeles physiques ;
- convolution, IR salle, IR source/objet, corpus, playback prepare ;
- corpus pour HAL/SPC/REV/NAT, cross-convolution ;
- ML, classification, embeddings, Markov, grammaire, statistiques, prediction ;
- systemes hybrides opaques ;
- packages Max, externals, plugins, outils ML/corpus/spatialisation, scripts, bibliotheques.

Omissions acceptees :

- objets Max natifs simples non lourds ;
- details d'implementation ;
- seuils numeriques ;
- objets finaux ;
- mapping UI ;
- tests ou benchmarks.

Ces omissions sont voulues.

## 4. Verification des interdits critiques

Statut :

```text
compatible.
```

La matrice maintient :

- aucun candidat lourd ne conditionne MIN-DID-PC ;
- aucun candidat lourd ne porte P0/P1 par defaut ;
- aucun candidat lourd ne remplace direct/safe ;
- aucun candidat lourd ne porte le vrai grave par accident ;
- aucun outil opaque ne decide scene, protection ou composition ;
- aucune dependance externe ne devient obligatoire sans fallback natif.

Risque residuel :

```text
si une future specification transforme "accepte conditionnel" en "retenu",
elle devra etre corrigee.
```

## 5. Verification des statuts

Statut :

```text
compatible.
```

Les statuts sont coherents :

- supports structurels : acceptes conditionnels ou reportes hors critique ;
- transformations lourdes : conditionnelles lourdes ou reportees selon complexite ;
- espace / corpus : conditionnel lourd, offline ou support conditionnel ;
- opacite : diagnostic, conditionnel lourd, reporte fort selon autonomie ;
- dependances externes : conditionnelles seulement avec justification, ou reportees fortes.

La matrice ne transforme pas un report en acceptation libre.

Elle ne transforme pas un conditionnel en choix final.

## 6. Verification fallbacks / SIG

Statut :

```text
compatible.
```

Chaque famille sensible garde :

- fallback ;
- mode absent ;
- bypass ou reduction ;
- SIG si absence, limitation, incertitude, surcharge ou reduction affecte le live.

Point de vigilance :

```text
la future architecture devra conserver ces colonnes, pas les reduire a des
notes secondaires.
```

## 7. Verification contexte musical

Statut :

```text
compatible.
```

La matrice garde :

- fonction musicale admise ;
- risque de style plaque ;
- source-bonding ;
- naturalisation ;
- espace/halo/reverb sous autorite SPC/REV/HAL ;
- didgeridoo/grave/MIN-DID-PC proteges.

Elle ne transforme pas les audits en catalogue technique.

## 8. Decision de sortie

DETTE-ACT-26 est absorbee.

La matrice de synthese peut servir de reference courte pour les prochaines etapes.

Elle ne suffit pas encore a l'implementation.

Prochaine dette logique :

```text
DETTE-ACT-27 - Audit impact reprise candidats lourds sur documents ulterieurs existants
```

Prochaine fiche :

```text
AUDIT_IMPACT_REPRISE_CANDIDATS_LOURDS_SUR_DOCUMENTS_ULTERIEURS_EXISTANTS_VESPERARE_v0_1.md
```

Raison :

```text
des documents plus anciens ou plus concrets existent deja dans le dossier.
avant de continuer vers implementation, il faut verifier s'ils restent
compatibles avec les audits lourds nouvellement consolides.
```
