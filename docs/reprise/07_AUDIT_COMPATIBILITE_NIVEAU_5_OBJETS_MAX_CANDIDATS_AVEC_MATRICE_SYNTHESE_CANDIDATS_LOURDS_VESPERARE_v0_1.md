# Audit compatibilite niveau 5 objets Max candidats avec matrice synthese candidats lourds

Statut : audit documentaire DETTE-ACT-28.
Date : 2026-06-30.
Perimetre : verification documentaire uniquement, sans modification de `reprise/`, sans patch Max, sans objet Max final, sans UI, sans mapping, sans prototype, sans asset et sans sample bank.

## 1. Verdict

Verdict :

```text
compatible avec corrections documentaires limitees
```

Fait :

La specification niveau 5 declare que les objets et patterns Max nommes sont des candidats non definitifs, interdit tout statut `FINAL`, exige PCH / CONTRACT / CHK, garde `LAT` comme mesure / signal / diagnostic / preparation et demande fallback ou statut `LATER` pour `MIN-DID-PC`.

Sources :

- `reprise/SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_VESPERARE_v0_1.md`
- `reprise/AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_AVEC_CORPUS_v0_1.md`

Fait :

La matrice des candidats lourds interdit par defaut les familles lourdes en P0/P1, leur interdit de remplacer `direct/safe` ou de conditionner `MIN-DID-PC`, et exige owner, fonction, sortie, fallback et SIG pour les absences, bypass, reductions ou incertitudes qui affectent le live.

Sources :

- `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`
- `reprise/AUDIT_COMPATIBILITE_MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_AVEC_AUDITS_SOURCES_VESPERARE_v0_1.md`

Inference :

Il n'y a pas d'incompatibilite structurelle entre le niveau 5 et la matrice lourde. En revanche, le niveau 5 reste plus grossier que la matrice sur les statuts des familles lourdes : `CANDIDATE`, `OPTION` et `LATER` ne suffisent pas toujours a porter les conditions `ACCEPTE CONDITIONNEL`, `CONDITIONNEL LOURD`, `REPORTE`, `REPORTE FORT` ou `REFUSE PAR DEFAUT`.

Sources :

- `reprise/SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_VESPERARE_v0_1.md`
- `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`
- `reprise/AUDIT_IMPACT_REPRISE_CANDIDATS_LOURDS_SUR_DOCUMENTS_ULTERIEURS_EXISTANTS_VESPERARE_v0_1.md`
- `reprise/REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`

Recommandation :

Reporter des corrections ciblees dans la suite documentaire avant niveau 6, sans modifier les sources dans cette action.

Sources :

- `reprise/AUDIT_IMPACT_REPRISE_CANDIDATS_LOURDS_SUR_DOCUMENTS_ULTERIEURS_EXISTANTS_VESPERARE_v0_1.md`
- `reprise/REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`

## 2. Sources consultees

Sources de cadrage de reprise consultees :

- `docs/reprise/00_INDEX.md`
- `docs/reprise/02_PROJECT_STATE.md`
- `docs/reprise/04_OPEN_QUESTIONS.md`
- `docs/reprise/05_NEXT_ACTIONS.md`
- `docs/reprise/MANIFEST_FICHIERS.yml`
- `docs/reprise/06_DETTE_ACT_28_READINESS.md`

Sources DETTE-ACT-28 autorisees consultees :

- `reprise/SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_VESPERARE_v0_1.md`
- `reprise/AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_AVEC_CORPUS_v0_1.md`
- `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`
- `reprise/AUDIT_COMPATIBILITE_MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_AVEC_AUDITS_SOURCES_VESPERARE_v0_1.md`
- `reprise/AUDIT_IMPACT_REPRISE_CANDIDATS_LOURDS_SUR_DOCUMENTS_ULTERIEURS_EXISTANTS_VESPERARE_v0_1.md`
- `reprise/REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`

Exclusions appliquees :

- les copies suffixees `(1)` n'ont pas ete utilisees ;
- le fichier proche DETTE-ACT-67 n'a pas ete traite comme remplacement ;
- aucune source non autorisee pour DETTE-ACT-28 n'a ete ouverte apres le cadrage initial ;
- aucun fichier dans `reprise/` n'a ete modifie.

Sources :

- `docs/reprise/06_DETTE_ACT_28_READINESS.md`
- `docs/reprise/05_NEXT_ACTIONS.md`

## 3. Comparaison documentaire

### 3.1. Statuts de candidats

Fait :

Le niveau 5 utilise les statuts `CANDIDATE`, `OPTION`, `LATER` et `REJECTED`. La matrice lourde utilise des statuts plus contraignants pour les familles lourdes : `ACCEPTE CONDITIONNEL`, `CONDITIONNEL LOURD`, `REPORTE`, `REPORTE FORT` et `REFUSE PAR DEFAUT`.

Sources :

- `reprise/SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_VESPERARE_v0_1.md`
- `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`

Inference :

La compatibilite tient si les statuts niveau 5 restent des statuts de conception, pas des autorisations d'implementation. Le risque principal est qu'un `OPTION / LATER` du niveau 5 soit lu moins strictement que le statut conditionnel ou reporte de la matrice lourde.

Sources :

- `reprise/AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_AVEC_CORPUS_v0_1.md`
- `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`

Recommandation :

Reporter une table de correspondance documentaire :

```text
statut niveau 5 -> statut matrice lourde -> chemin admis -> interdit -> fallback/SIG
```

Sources :

- `reprise/AUDIT_IMPACT_REPRISE_CANDIDATS_LOURDS_SUR_DOCUMENTS_ULTERIEURS_EXISTANTS_VESPERARE_v0_1.md`
- `reprise/REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`

### 3.2. `gen~`

Fait :

Le niveau 5 classe `gen~` comme `OPTION / LATER`, jamais obligatoire, possible seulement apres audit, avec fallback MSP simple et separation SPC/HAL. La matrice lourde l'accepte conditionnellement comme support audio-rate sur `PATH-GEN/PLAY`, `CRIT-2/3/4`, en l'interdisant en P0/P1, direct critique et `MIN-DID-PC` obligatoire.

Sources :

- `reprise/SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_VESPERARE_v0_1.md`
- `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`

Inference :

Compatible, mais fragilise par la puissance de l'objet : `gen~` peut devenir une algorithmie cachee si la fonction, l'owner, la sortie, le fallback non-gen~ et le SIG bypass/limite ne sont pas reportes.

Sources :

- `reprise/AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_AVEC_CORPUS_v0_1.md`
- `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`

### 3.3. `poly~` et MC

Fait :

Le niveau 5 place `poly~` et la famille MC en `OPTION / LATER`, hors chemin critique par defaut, avec version simple obligatoire. La matrice lourde les accepte conditionnellement avec controle de densite, owner, fallback mono/simple ou stereo/simple, SIG reduction voix ou repli.

Sources :

- `reprise/SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_VESPERARE_v0_1.md`
- `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`

Inference :

Compatible si la densite reste bornee, si la polytexture ne remplace pas le geste live et si MC ne devient pas une densite opaque ou une dependance du setup minimal.

Sources :

- `reprise/AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_AVEC_CORPUS_v0_1.md`
- `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`

### 3.4. `buffer~`, playback prepare et corpus

Fait :

La matrice lourde encadre `buffer~` / playback support, corpus sonore et playback prepare comme supports conditionnels, lents, prepares ou offline, avec preload, provenance / role, sortie, fallback et SIG manque / reduction / absence. Le niveau 5 ne les formalise pas comme famille candidate centrale, meme s'il interdit les buffers finaux et reporte les familles lourdes d'espace / corpus / convolution.

Sources :

- `reprise/SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_VESPERARE_v0_1.md`
- `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`

Inference :

Ce n'est pas une contradiction, mais c'est une fragilite : la question DETTE-ACT-28 nomme `buffer/playback`, alors que le niveau 5 ne donne pas encore de clause assez explicite pour eviter une future banque cachee, un fichier indispensable au live ou une source obligatoire en `MIN-DID-PC`.

Sources :

- `reprise/REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`
- `reprise/AUDIT_IMPACT_REPRISE_CANDIDATS_LOURDS_SUR_DOCUMENTS_ULTERIEURS_EXISTANTS_VESPERARE_v0_1.md`
- `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`

Recommandation :

Reporter une clause documentaire limitee : `buffer~`, playback, corpus et fichiers prepares restent hors source indispensable directe, hors lecture critique et hors `MIN-DID-PC`, sauf audit dedie futur avec fallback et SIG.

Sources :

- `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`
- `reprise/AUDIT_COMPATIBILITE_MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_AVEC_AUDITS_SOURCES_VESPERARE_v0_1.md`

### 3.5. `js`, node, scripts et logique lente

Fait :

Le niveau 5 classe `js` comme `OPTION / LATER`, interdit par defaut sur le chemin critique et limite a l'etat, au routage message ou au diagnostic. La matrice lourde reporte `js` / node / scripts hors critique, pour config, outils, vues, preparation ou logique lente, sans autorite audio.

Sources :

- `reprise/SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_VESPERARE_v0_1.md`
- `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`

Inference :

Compatible. Le point fragile est l'autorite cachee : un script ne doit pas devenir decision musicale, protection, direct/safe ou dependance de performance.

Sources :

- `reprise/AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_AVEC_CORPUS_v0_1.md`
- `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`

### 3.6. `pattrstorage` et presets critiques

Fait :

Le niveau 5 classe `pattr` / `autopattr` / `pattrstorage` comme option recall/config, interdite sur chemin critique. La matrice lourde reporte `pattrstorage` / presets critiques en etat lent, non P0/P1/P2 immediat, hors direct/safe.

Sources :

- `reprise/SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_VESPERARE_v0_1.md`
- `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`

Inference :

Compatible avec correction de vocabulaire : recall/config ne doit jamais etre lu comme scene qui joue seule, controle P2 immediat ou decision de performance.

Sources :

- `reprise/REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`
- `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`

### 3.7. pfft~/FFT, spectral, granularite et modeles physiques

Fait :

Le niveau 5 classe FFT/pfft et analyses spectrales en `LATER / OPTION`, diagnostic ou lent, hors chemin critique par defaut. La matrice lourde place pfft~/FFT/spectral, granularite complexe et modeles physiques dans des statuts conditionnels lourds ou reportes, hors P0/P1, direct et safe, avec source-bonding, release, owner, fallback et SIG.

Sources :

- `reprise/SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_VESPERARE_v0_1.md`
- `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`

Inference :

Compatible si ces familles restent lentes, non vitales et rattachees a une fonction musicale precise. Fragilite : l'analyse ou la transformation lourde peut produire une illusion de precision ou une esthetique autonome si elle n'est pas reliee a source, fonction, sortie et fallback.

Sources :

- `reprise/AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_AVEC_CORPUS_v0_1.md`
- `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`

### 3.8. Convolution, IR, reverb, espace, HAL et GEN-HAL

Fait :

Le niveau 5 garde delay / reverb / resonator / convolution families en `LATER`, hors chemin critique par defaut, avec separation SPC/HAL/GEN-HAL. La matrice lourde encadre convolution, IR, corpus pour HAL/SPC/REV/NAT et cross-convolution comme conditions lentes, offline, interfaces ou reports conditionnels, sans autorite HAL/SPC/REV cachee.

Sources :

- `reprise/SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_VESPERARE_v0_1.md`
- `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`

Inference :

Compatible, mais la zone SPC/HAL/GEN-HAL est fragilisee par la largeur des familles. Convolution, IR, corpus, reverb, halo et naturalisation ne doivent pas etre traites comme une meme categorie technique.

Sources :

- `reprise/AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_AVEC_CORPUS_v0_1.md`
- `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`
- `reprise/REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`

Recommandation :

Reporter une couche documentaire dediee aux objets / patterns reverb, espace, halo, freeze, resonateurs, convolution, IR, corpus et naturalisation avant tout choix concret.

Sources :

- `reprise/AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_AVEC_CORPUS_v0_1.md`
- `reprise/AUDIT_IMPACT_REPRISE_CANDIDATS_LOURDS_SUR_DOCUMENTS_ULTERIEURS_EXISTANTS_VESPERARE_v0_1.md`

### 3.9. Externals, plugins, packages et dependances

Fait :

Le niveau 5 rejette les externals obligatoires et plugins audio obligatoires. La matrice lourde accepte seulement des packages Max ou outils externes sous conditions, hors P0/P1 et avec fallback natif, tandis que les externals tiers centraux, plugins centraux, bibliotheques custom et scripts live critiques sont reportes fortement ou refuses par defaut.

Sources :

- `reprise/SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_VESPERARE_v0_1.md`
- `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`

Inference :

Compatible. La correction est surtout lexicale : "rejet des obligatoires" ne doit pas empecher une future recherche conditionnelle, mais toute reouverture devra rester hors critique, auditee, versionnee, desactivable et sans dependance `MIN-DID-PC`.

Sources :

- `reprise/AUDIT_COMPATIBILITE_MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_AVEC_AUDITS_SOURCES_VESPERARE_v0_1.md`
- `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`

## 4. Garde-fous demandes

| Point | Conclusion | Fragilite restante | Sources |
|---|---|---|---|
| P0/P1 | Confirmes : les candidats lourds restent interdits par defaut en P0/P1. | Toute future lecture de `ACCEPTE CONDITIONNEL` comme autorisation critique serait une sur-autorisation. | `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`; `reprise/AUDIT_COMPATIBILITE_MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_AVEC_AUDITS_SOURCES_VESPERARE_v0_1.md` |
| direct/safe | Confirmes : aucun candidat lourd ne remplace direct/safe ; le niveau 5 garde les routages candidats non finaux. | `matrix~`, `send~` et `receive~` peuvent rendre les chemins illisibles si une future matrice de chemins n'est pas explicite. | `reprise/SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_VESPERARE_v0_1.md`; `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`; `reprise/AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_AVEC_CORPUS_v0_1.md` |
| MIN-DID-PC | Confirme : aucune famille lourde ne doit conditionner le setup minimal. | Le niveau 5 liste encore des objets minimaux ; la garantie doit rester formulee par responsabilites minimales, pas comme accumulation de modules. | `reprise/SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_VESPERARE_v0_1.md`; `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`; `reprise/REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md` |
| fallback | Confirme : le niveau 5 et la matrice exigent des fallbacks. | Le niveau 5 ne porte pas partout le meme degre de precision que la matrice : fallback non-gen~, mono/simple, stereo/simple, sans buffer, sans script, sans spectral, sans convolution, natif/off. | `reprise/SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_VESPERARE_v0_1.md`; `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md` |
| SIG | Confirme comme exigence de jouabilite dans la matrice et le registre. | Le niveau 5 signale moins systematiquement les SIG d'absence, bypass, reduction, indisponibilite, incertitude ou transgression. | `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`; `reprise/REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`; `reprise/AUDIT_COMPATIBILITE_MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_AVEC_AUDITS_SOURCES_VESPERARE_v0_1.md` |

## 5. Corrections documentaires limitees a reporter

### CORR-ACT28-1 - Correspondance statuts niveau 5 / matrice lourde

Fait :

Le niveau 5 et la matrice n'utilisent pas la meme granularite de statuts.

Inference :

La compatibilite documentaire restera fragile tant que `OPTION / LATER / CANDIDATE` n'est pas croise avec les statuts lourds.

Recommandation :

Ajouter plus tard une table de correspondance, sans choisir d'objet final.

Sources :

- `reprise/SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_VESPERARE_v0_1.md`
- `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`

### CORR-ACT28-2 - Clause candidats lourds transversale

Fait :

La matrice impose owner, fonction, chemin de criticite, sortie, fallback et SIG aux familles lourdes.

Inference :

Le niveau 5 doit rester lisible comme inventaire non final, mais les familles lourdes qui y apparaissent doivent porter ces conditions transversales.

Recommandation :

Reporter une clause :

```text
gen~, poly~, MC, buffer/playback/corpus, js, pattrstorage, pfft/FFT,
convolution/IR, externals/plugins/packages, ML/Markov/grammaire/statistiques
ne peuvent jamais conditionner P0/P1, direct/safe ou MIN-DID-PC.
```

Sources :

- `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`
- `reprise/REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`

### CORR-ACT28-3 - MIN-DID-PC par responsabilites minimales

Fait :

Le niveau 5 propose une table d'objets minimaux ; le registre rappelle que `MIN-DID-PC` est un ensemble de responsabilites minimales, pas une accumulation de modules imposes un par un.

Inference :

La table niveau 5 reste compatible si elle est lue comme exemple candidat, pas comme liste obligatoire.

Recommandation :

Reporter une reformulation par roles : input, direct, safe, mix, generation simple, analyse simple, espace simple, protection, controle live, signalisation critique.

Sources :

- `reprise/SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_VESPERARE_v0_1.md`
- `reprise/REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`
- `reprise/AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_AVEC_CORPUS_v0_1.md`

### CORR-ACT28-4 - Fallback et SIG explicites par famille lourde

Fait :

La matrice donne des fallbacks et SIG plus precis que le niveau 5 pour les familles lourdes.

Inference :

Le niveau 5 est compatible, mais doit heriter explicitement des SIG de bypass, limitation, reduction, manque, absence, incertitude ou repli.

Recommandation :

Reporter les SIG par famille dans le prochain document de synchronisation.

Sources :

- `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`
- `reprise/AUDIT_COMPATIBILITE_MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_AVEC_AUDITS_SOURCES_VESPERARE_v0_1.md`
- `reprise/REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`

### CORR-ACT28-5 - Couche dediee espace / halo / corpus

Fait :

Le niveau 5 reporte les familles reverb/convolution/resonateur ; la matrice distingue convolution, IR, corpus, playback prepare, corpus pour HAL/SPC/REV/NAT et cross-convolution.

Inference :

Une couche dediee est necessaire avant de passer a un niveau plus prescriptif, sinon SPC, HAL, REV, NAT et GEN-HAL peuvent etre fusionnes par simplification technique.

Recommandation :

Reporter une fiche ou matrice dediee reverb / espace / halo / freeze / resonateurs / convolution / IR / corpus / naturalisation.

Sources :

- `reprise/SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_VESPERARE_v0_1.md`
- `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`
- `reprise/REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`

### CORR-ACT28-6 - Buffer/playback/corpus comme trou de synchronisation

Fait :

`buffer/playback` est nomme dans DETTE-ACT-28 et dans la matrice lourde, mais il n'est pas encore isole dans le niveau 5 comme famille candidate explicite.

Inference :

Cette absence ne rend pas le niveau 5 incompatible, mais elle laisse un angle mort pour les documents suivants.

Recommandation :

Reporter une note de synchronisation : `buffer~`, playback, corpus et fichier prepare restent seulement supports conditionnels, lents, offline ou prepares, jamais sources indispensables du direct ou de `MIN-DID-PC`.

Sources :

- `reprise/REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`
- `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`
- `reprise/SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_VESPERARE_v0_1.md`

## 6. Points niveau 5 fragilises par les candidats lourds

Fait :

Les fragilites deja identifiees par l'audit niveau 5 contre corpus restent valables : objet candidat lu comme choix final, routage implicite, etat cache, LAT devenu autorite, GEN devenu compositeur global, fusion SPC/HAL/GEN-HAL, diagnostic sur chemin vital, `MIN-DID-PC` appauvri ou dependant de sources optionnelles, objet lourd sur chemin critique, external/plugin devenu dependance.

Sources :

- `reprise/AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_AVEC_CORPUS_v0_1.md`
- `reprise/SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_VESPERARE_v0_1.md`

Inference :

La matrice lourde ne contredit pas ces fragilites ; elle les renforce. Les points les plus exposes sont :

- `gen~`, `poly~`, MC : puissance locale, densite et autonomie ;
- `buffer~`, playback, corpus : risque de banque cachee ou source obligatoire ;
- `js`, scripts, pattrstorage : logique ou etat cache ;
- pfft~/FFT, spectral, granularite, modeles physiques : latence, charge et illusion de precision ;
- convolution, IR, corpus, reverb : fusion possible de SPC/HAL/REV/NAT ;
- externals, plugins, packages : dependance technique et portabilite ;
- Markov, grammaire, statistiques, ML : autonomie musicale cachee si ouverts plus tard.

Sources :

- `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`
- `reprise/AUDIT_COMPATIBILITE_MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_AVEC_AUDITS_SOURCES_VESPERARE_v0_1.md`
- `reprise/REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`

Recommandation :

Ne pas ouvrir le niveau 6 comme suite technique tant que ces fragilites n'ont pas ete reportees dans une synchronisation documentaire.

Sources :

- `reprise/AUDIT_IMPACT_REPRISE_CANDIDATS_LOURDS_SUR_DOCUMENTS_ULTERIEURS_EXISTANTS_VESPERARE_v0_1.md`
- `reprise/REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`

## 7. Prochaines dettes

Fait :

DETTE-ACT-28 est active et bloquante avant reprise niveau 6, exclusions, contraintes de traduction ou implementation.

Sources :

- `reprise/REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`
- `reprise/AUDIT_IMPACT_REPRISE_CANDIDATS_LOURDS_SUR_DOCUMENTS_ULTERIEURS_EXISTANTS_VESPERARE_v0_1.md`

Inference :

L'audit DETTE-ACT-28 peut etre considere comme instruit par ce document, mais il appelle une synchronisation ciblee avant toute suite plus concrete.

Sources :

- `reprise/AUDIT_IMPACT_REPRISE_CANDIDATS_LOURDS_SUR_DOCUMENTS_ULTERIEURS_EXISTANTS_VESPERARE_v0_1.md`
- `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`

Recommandation :

Ne pas ouvrir de nouvelle dette globale. Reporter seulement ces actions minimales :

1. synchroniser le niveau 5 avec la matrice lourde par statuts, chemins, interdits, fallback et SIG ;
2. auditer ensuite le niveau 6 contre le niveau 5 synchronise et la matrice lourde ;
3. synchroniser ensuite les exclusions / contraintes de traduction si le niveau 6 change des statuts ;
4. garder une dette separee pour la couche reverb / espace / halo / freeze / resonateurs / convolution / IR / corpus si elle devient necessaire avant implementation.

Sources :

- `reprise/AUDIT_IMPACT_REPRISE_CANDIDATS_LOURDS_SUR_DOCUMENTS_ULTERIEURS_EXISTANTS_VESPERARE_v0_1.md`
- `reprise/REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`
- `reprise/AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_AVEC_CORPUS_v0_1.md`

## 8. Decision de sortie

Fait :

Le niveau 5 reste compatible avec la matrice de synthese des candidats lourds si ses objets restent des candidats non definitifs et si les conditions lourdes sont reportees avant niveau 6.

Sources :

- `reprise/SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_VESPERARE_v0_1.md`
- `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`
- `reprise/AUDIT_COMPATIBILITE_MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_AVEC_AUDITS_SOURCES_VESPERARE_v0_1.md`

Inference :

Le verdict n'est pas `incompatible`, car aucune source autorisee ne montre que le niveau 5 impose un objet final, une dependance lourde obligatoire, une famille lourde en P0/P1, un remplacement direct/safe ou une dependance `MIN-DID-PC`.

Sources :

- `reprise/SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_VESPERARE_v0_1.md`
- `reprise/AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_AVEC_CORPUS_v0_1.md`
- `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`

Recommandation :

Arret de l'action a l'audit documentaire. Ne pas creer de patch Max, mapping, prototype, asset, banque de samples, UI ou objet final a partir de cette fiche.

Sources :

- `docs/reprise/05_NEXT_ACTIONS.md`
- `docs/reprise/06_DETTE_ACT_28_READINESS.md`
