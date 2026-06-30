# Audit compatibilite ancien audit matrice synthese candidats lourds avec matrice revalidee et coherence post re-audits

Projet : Vesperare  
Version : v0.1  
Statut : audit compatibilite DETTE-ACT-65  
Runtime actif : Max/MSP standalone  
Date : 2026-06-24

## 1. Role du document

Ce document absorbe DETTE-ACT-65.

Il verifie que l'ancien audit suivant reste utilisable apres revalidation de la
matrice :

- `AUDIT_COMPATIBILITE_MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_AVEC_AUDITS_SOURCES_VESPERARE_v0_1.md`

Sources actives :

- `AUDIT_COMPATIBILITE_MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_AVEC_COHERENCE_POST_REAUDITS_CANDIDATS_LOURDS_ET_CORRECTIONS_SIG_VESPERARE_v0_1.md`
- `MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`
- `AUDIT_COHERENCE_POST_REAUDITS_CANDIDATS_LOURDS_AVANT_SYNTHESE_LOURDE_OU_IMPLEMENTATION_VESPERARE_v0_1.md`
- les cinq audits compatibilite candidats lourds re-audites.

Il ne choisit pas :

- objet Max final ;
- moteur final ;
- external final ;
- plugin final ;
- patch ;
- UI ;
- mapping ;
- benchmark ;
- implementation.

## 2. Verdict

Verdict :

```text
ancien audit compatible comme audit historique revalide, mais non suffisant
comme passerelle directe vers les documents aval.
```

Decision :

```text
l'ancien audit reste utilisable pour confirmer que la matrice historique ne
trahissait pas les familles candidates lourdes.

il doit maintenant etre lu a travers la matrice revalidee DETTE-ACT-64 et les
re-audits recents.
```

Correction appliquee :

```text
l'ancien audit source a recu une note de reprise re-auditee DETTE-ACT-65.
```

## 3. Controle des sources de l'ancien audit

Constat :

```text
l'ancien audit compare la matrice aux audits candidats lourds d'origine et a
l'ancien audit coherence post candidats lourds.
```

Compatibilite :

```text
compatible sous alias historique.
```

Lecture obligatoire :

| Source ancienne | Lecture active |
|---|---|
| audit supports d'origine | audit compatibilite supports re-audite DETTE-ACT-58 |
| audit transformations d'origine | audit compatibilite transformations re-audite DETTE-ACT-59 |
| audit espace/corpus d'origine | audit compatibilite espace/corpus re-audite DETTE-ACT-60 |
| audit opacite d'origine | audit compatibilite opacite re-audite DETTE-ACT-61 |
| audit dependances d'origine | audit compatibilite dependances re-audite DETTE-ACT-62 |
| coherence post audits lourds d'origine | coherence post re-audits candidats lourds DETTE-ACT-63 |
| matrice historique | matrice revalidee par DETTE-ACT-64 |

Restriction :

```text
les noms de sources de l'ancien audit ne sont plus normatifs seuls.
ils servent de trace historique et doivent etre resolus vers les sources
actives ci-dessus.
```

## 4. Controle du verdict "compatible"

Ancien verdict :

```text
compatible.
```

Controle :

```text
compatible, si "compatible" signifie seulement :
la matrice reprend les familles, statuts, chemins, interdits, conditions,
fallbacks et besoins de SIG a un niveau de synthese.
```

Lecture interdite :

```text
compatible ne signifie pas :
pret pour implementation, choix d'objet Max, choix de moteur, choix de plugin,
mapping, UI, routage definitif ou architecture finale.
```

## 5. Controle familles couvertes

Verdict :

```text
compatible.
```

Les familles listees restent pertinentes :

- supports : `gen~`, `poly~`, MC, `buffer~`, scripts, presets ;
- transformations : pfft~/FFT/spectral, granularite, modeles physiques ;
- espace/corpus : convolution, IR, corpus, playback prepare, hybridation ;
- opacite : ML, classification, embeddings, Markov, grammaire, statistiques, prediction ;
- dependances : packages, externals, plugins, outils ML/corpus/spatialisation, scripts, bibliotheques.

Limite :

```text
la couverture est suffisante pour une synthese de candidats lourds.
elle n'est pas une liste de construction Max concrete.
```

## 6. Controle omissions acceptees

Anciennes omissions acceptees :

- objets Max natifs simples non lourds ;
- details d'implementation ;
- seuils numeriques ;
- objets finaux ;
- mapping UI ;
- tests ou benchmarks.

Verdict :

```text
compatible.
```

Raison :

```text
ces omissions restent voulues au niveau conception.
elles evitent de transformer l'audit de candidats lourds en specification
technique prematuree.
```

Restriction :

```text
les omissions ne doivent pas cacher un besoin musical ou sensoriel.
si une fonction musicale depend d'un candidat lourd, elle doit rester tracee
par owner, chemin, interdits, fallback, sortie et SIG.
```

## 7. Controle interdits critiques

Verdict :

```text
compatible et renforce par les re-audits.
```

Interdits maintenus :

- aucun candidat lourd ne conditionne MIN-DID-PC ;
- aucun candidat lourd ne porte P0/P1 par defaut ;
- aucun candidat lourd ne remplace direct/safe ;
- aucun candidat lourd ne porte le vrai grave par accident ;
- aucun outil opaque ne decide scene, protection ou composition ;
- aucune dependance externe ne devient obligatoire sans fallback natif.

Ajout actif :

```text
la latence est un enjeu artistique/fonctionnel sans compromis musical reel.
les candidats lourds doivent donc etre prepares, bornes, routes, precharges,
fallback ou reportes, pas simplement degrader le resultat.
```

## 8. Controle statuts

Verdict :

```text
compatible.
```

La lecture active des statuts est :

| Statut | Lecture autorisee | Lecture interdite |
|---|---|---|
| ACCEPTE CONDITIONNEL | candidat utilisable sous contrat | choix final |
| CONDITIONNEL LOURD | utilisable hors critique ou sous owner strict | moteur global |
| REPORTE | possibilite future ou hors chemin courant | abandon definitif |
| REPORTE FORT | non admissible sans audit dedie | interdiction metaphysique |
| REFUSE PAR DEFAUT | interdit sauf decision explicite future | impossibilite absolue |

Conclusion :

```text
l'ancien audit conserve correctement les nuances de statut.
```

## 9. Controle fallbacks / SIG

Verdict :

```text
compatible mais insuffisant pour interface ou mapping.
```

L'ancien audit verifie bien :

- fallback ;
- mode absent ;
- bypass ;
- reduction ;
- SIG si absence, limitation, incertitude, surcharge ou reduction affecte le live.

Correction de lecture :

```text
les SIG de l'ancien audit restent generiques.
la classification numerique ou fonctionnelle SIG-0, SIG-1, SIG-2, SIG-3 ou
SIG-DIAG doit etre faite seulement dans les documents qui traduisent vers
controle live, vues, mapping, etats ou alertes.
```

Interdit :

```text
un SIG ne doit pas devenir une perturbation visuelle ou cognitive inutile.
il doit rester proportionne a l'effet reel sur le live.
```

## 10. Controle contexte musical

Verdict :

```text
compatible.
```

L'ancien audit garde correctement :

- fonction musicale ;
- source-bonding ;
- naturalisation ;
- espace/halo/reverb sous owner ;
- didgeridoo, grave et MIN-DID-PC proteges ;
- refus du catalogue technique plaque.

Restriction active :

```text
la compatibilite musicale ne veut pas dire que chaque candidat lourd est
artistiquement souhaite partout.
chaque usage doit rester rattache a une fonction, une scene, un geste, une
source, une texture ou une transformation definie.
```

## 11. Controle decision de sortie historique

Ancienne sortie :

```text
autoriser AUDIT_IMPACT_REPRISE_CANDIDATS_LOURDS_SUR_DOCUMENTS_ULTERIEURS_EXISTANTS_VESPERARE_v0_1.md.
```

Verdict :

```text
compatible mais a re-auditer.
```

Lecture active :

```text
l'ancien audit autorise a examiner le document d'impact.
il n'autorise pas a le reprendre comme deja compatible avec les re-audits
recents.
```

Consequence :

```text
le prochain document a creer doit auditer le document d'impact contre cette
chaine revalidee, avant niveau 5/6, exclusions, contraintes ou implementation.
```

## 12. Decision de passage

DETTE-ACT-65 est absorbee.

L'ancien audit matrice / audits sources est revalide comme audit historique.

Il autorise :

- revalidation du document d'impact sur les documents ulterieurs existants ;
- conservation de l'ancien audit comme trace de controle ;
- lecture de la matrice a travers les re-audits actifs.

Il n'autorise pas :

- reprise directe du niveau 5 ;
- reprise directe du niveau 6 ;
- reprise directe des exclusions ;
- reprise directe des contraintes de traduction ;
- implementation ;
- choix final d'objet, moteur, plugin, external, UI ou mapping.

Prochaine dette logique :

```text
DETTE-ACT-66 - Audit compatibilite audit impact reprise candidats lourds sur
documents ulterieurs existants avec matrice revalidee et coherence post
re-audits
```

Prochaine fiche :

```text
AUDIT_COMPATIBILITE_AUDIT_IMPACT_REPRISE_CANDIDATS_LOURDS_DOCUMENTS_ULTERIEURS_AVEC_MATRICE_REVALIDEE_ET_COHERENCE_POST_REAUDITS_VESPERARE_v0_1.md
```
