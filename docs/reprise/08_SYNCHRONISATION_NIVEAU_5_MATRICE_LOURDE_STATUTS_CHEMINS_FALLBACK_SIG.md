# Synchronisation niveau 5 / matrice lourde : statuts, chemins, fallback, SIG

Statut : synchronisation documentaire ACT28 exploitable avant tout niveau 6.
Date : 2026-06-30.
Perimetre : documentation seulement, sans modification de `reprise/`, sans modification du niveau 5 source, sans creation de niveau 6, sans implementation, sans patch Max, sans UI, sans mapping, sans prototype, sans asset et sans sample bank.

## 1. Role du document

Fait :

`docs/reprise/07_AUDIT_COMPATIBILITE_NIVEAU_5_OBJETS_MAX_CANDIDATS_AVEC_MATRICE_SYNTHESE_CANDIDATS_LOURDS_VESPERARE_v0_1.md` donne le verdict ACT28 :

```text
compatible avec corrections documentaires limitees
```

Fait :

`docs/reprise/05_NEXT_ACTIONS.md` demandait une sortie ACT28 limitee a un verdict, des corrections a reporter, les points niveau 5 fragilises, et les confirmations P0/P1, direct/safe, MIN-DID-PC, fallback et SIG.

Fait :

`docs/reprise/06_DETTE_ACT_28_READINESS.md` confirmait que la creation de la fiche ACT28 etait possible avec un corpus borne, sans integration de fichiers ambigus, sans patch, sans UI, sans mapping, sans prototype, sans choix d'objet Max final.

Fait :

`docs/reprise/MANIFEST_FICHIERS.yml` classe les sources niveau 5 et matrice lourde utiles comme probablement actives et signale les copies suffixees `(1)` comme ambigues.

Inference :

Le present document n'est pas un nouvel audit et ne remplace pas les sources. Il transforme les corrections ACT28 en couche de synchronisation courte avant niveau 6.

Recommandation :

Utiliser cette fiche comme point de passage documentaire avant tout document plus prescriptif. Ne pas l'utiliser comme autorisation d'implementation.

Sources :

- `docs/reprise/07_AUDIT_COMPATIBILITE_NIVEAU_5_OBJETS_MAX_CANDIDATS_AVEC_MATRICE_SYNTHESE_CANDIDATS_LOURDS_VESPERARE_v0_1.md`
- `docs/reprise/05_NEXT_ACTIONS.md`
- `docs/reprise/06_DETTE_ACT_28_READINESS.md`
- `docs/reprise/MANIFEST_FICHIERS.yml`

Sources ACT28 de fond consultees en lecture :

- `reprise/SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_VESPERARE_v0_1.md`
- `reprise/AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_AVEC_CORPUS_v0_1.md`
- `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`
- `reprise/AUDIT_COMPATIBILITE_MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_AVEC_AUDITS_SOURCES_VESPERARE_v0_1.md`
- `reprise/AUDIT_IMPACT_REPRISE_CANDIDATS_LOURDS_SUR_DOCUMENTS_ULTERIEURS_EXISTANTS_VESPERARE_v0_1.md`
- `reprise/REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`

## 2. Table de synchronisation statuts / chemins / interdits

Fait :

Le niveau 5 utilise `CANDIDATE`, `OPTION`, `LATER` et `REJECTED`. La matrice lourde utilise `ACCEPTE CONDITIONNEL`, `CONDITIONNEL LOURD`, `CONDITIONNEL OFFLINE`, `CONDITIONNEL SUPPORT`, `CONDITIONNEL INTERFACE`, `REPORTE`, `REPORTE FORT` et `REFUSE PAR DEFAUT`.

Inference :

Un statut niveau 5 ne vaut pas autorisation d'implementation. Il doit etre lu a travers le statut matrice lourde, le chemin admis, les interdits et le couple fallback/SIG.

Recommandation :

Reporter la table suivante dans les documents futurs qui transformeront le niveau 5 en roles ou chemins.

| Famille / cas | Statut niveau 5 | Statut matrice lourde | Chemin admis | Interdit | Fallback / SIG |
|---|---|---|---|---|---|
| Regle generale candidat non final | `CANDIDATE` / `OPTION` / `LATER` | A recalculer par famille lourde | Seulement si PCH, CONTRACT, CHK, owner, sortie et risque sont explicites | Lecture comme `FINAL`, choix d'objet, implementation directe | Fallback explicite et SIG si absence, bypass, reduction ou incertitude affecte le live |
| `gen~` support audio-rate | `OPTION / LATER` | `ACCEPTE CONDITIONNEL` | `PATH-GEN/PLAY`, `CRIT-2/3/4` non vital | P0/P1, direct critique, `MIN-DID-PC` obligatoire, algorithmie cachee | Fallback non-`gen~` / MSP simple ; SIG bypass ou limite |
| `poly~` / MC | `OPTION / LATER` | `ACCEPTE CONDITIONNEL` | `PATH-GEN/PLAY`, `PATH-GEN/SPC`, `CRIT-3`, `CRIT-2` limite | P0/P1, direct/safe, `MIN-DID-PC`, densite opaque | Fallback mono/simple ou stereo/simple ; SIG reduction voix ou repli |
| `buffer~` / playback / corpus | Angle mort niveau 5, a rattacher aux familles `OPTION / LATER` | `ACCEPTE CONDITIONNEL`, `CONDITIONNEL SUPPORT` ou `CONDITIONNEL LOURD` | `PATH-GEN/SLOW/OFFLINE`, `PATH-SPC-SLOW`, `PATH-NAT-SLOW` | Source indispensable directe, lecture critique, banque cachee, fichier obligatoire en `MIN-DID-PC` | Fallback sans buffer/corpus/fichier ; SIG manque, absence, reduction ou release |
| `js` / node / scripts | `OPTION / LATER` | `REPORTE HORS CRITIQUE` | `DIAG/SLOW/OFFLINE`, config, outils, vues, preparation | Audio critique, direct, safe, protection, autorite audio | Fallback sans script ou logique Max simple ; SIG indisponible |
| `pattrstorage` / presets critiques | `OPTION` recall/config | `REPORTE ETAT LENT` | Setup lent, scene non critique, recall borne | P0/P1/P2 immediat, direct/safe, scene qui joue seule | Etat manuel ou valeurs par defaut ; SIG recall partiel ou echec |
| pfft~/FFT/spectral, granularite, modeles physiques | `LATER / OPTION` | `CONDITIONNEL LOURD` ou `REPORTE` | `PATH-GEN/SLOW/HAL/SPC`, diagnostic, offline si necessaire | P0/P1, direct, safe, source priority vitale, esthetique autonome | Fallback sans spectral/granularite/modele ; SIG limitation |
| Convolution, IR, reverb, espace, halo, corpus pour HAL/SPC/REV/NAT | `LATER` ou candidat espace non final | `CONDITIONNEL LOURD`, `CONDITIONNEL OFFLINE`, `CONDITIONNEL INTERFACE`, `REPORTE CONDITIONNEL` | `PATH-SPC-SLOW`, `PATH-REV-SLOW`, `PATH-NAT-SLOW`, preparation/offline, usage non critique | Reverb automatique, decision HAL/SPC cachee, fusion SPC/HAL/REV/NAT, verite acoustique automatique | Fallback sans convolution/IR/corpus ou espace simple ; SIG absent, limite, disponibilite, owner |
| Externals, plugins, packages, runtimes tiers | `REJECTED` si obligatoire, `LATER` si besoin futur prouve | `ACCEPTE CONDITIONNEL`, `REPORTE`, `REPORTE FORT`, `REFUSE PAR DEFAUT` selon dependance | Hors P0/P1, hors noyau, hors direct critique, offline/diag si resultat portable | Dependances obligatoires, external/plugin central, `MIN-DID-PC`, protection, direct/safe | Fallback natif/off ; SIG absent, bypass, disponibilite |
| ML, classification, Markov, grammaire, statistiques | Non central au niveau 5, a garder hors choix final | `CONDITIONNEL DIAG`, `CONDITIONNEL LOURD`, `REPORTE`, `REPORTE FORT` | `DIAG/SLOW/OFFLINE` ou `PATH-GEN-SLOW` avec vocabulaire borne | Composition autonome, scene, direct/safe, protection, modele opaque qui decide | Fallback simple/deterministe/sans ML ; SIG confiance, incertitude ou influence perceptible |

Sources :

- `reprise/SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_VESPERARE_v0_1.md`
- `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`
- `docs/reprise/07_AUDIT_COMPATIBILITE_NIVEAU_5_OBJETS_MAX_CANDIDATS_AVEC_MATRICE_SYNTHESE_CANDIDATS_LOURDS_VESPERARE_v0_1.md`

## 3. Clause transversale candidats lourds

Fait :

La matrice lourde impose globalement que les candidats lourds ne conditionnent pas `MIN-DID-PC`, ne portent pas P0/P1 par defaut, ne remplacent pas direct/safe, ne forcent pas HAL/SPC/REV, ne decident pas une scene, et ne deviennent pas dependances externes obligatoires sans fallback natif.

Inference :

La compatibilite ACT28 tient si les objets niveau 5 restent des candidats documentaires. Elle casse si une famille lourde devient une obligation technique, un choix final, une autorite musicale cachee ou un passage obligatoire du live.

Recommandation :

Reporter cette clause dans tout document futur :

```text
Tout candidat lourd conserve depuis le niveau 5 doit declarer owner, fonction,
chemin de criticite, sortie, fallback, mode absent et SIG.

Aucun candidat lourd ne peut conditionner P0/P1, direct/safe, protection,
MIN-DID-PC, grave critique, scene, HAL/SPC/REV ou decision expressive.

Un statut CANDIDATE, OPTION, LATER ou ACCEPTE CONDITIONNEL ne vaut jamais
choix final, prototype, patch, mapping, UI, asset, sample bank ou implementation.
```

Sources :

- `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`
- `reprise/AUDIT_COMPATIBILITE_MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_AVEC_AUDITS_SOURCES_VESPERARE_v0_1.md`
- `reprise/REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`

## 4. Reformulation MIN-DID-PC par responsabilites minimales

Fait :

Le niveau 5 contient une table d'objets candidats minimaux. L'audit niveau 5 et le registre rappellent que `MIN-DID-PC` doit etre formule comme ensemble de responsabilites minimales, pas comme accumulation d'objets ou de modules.

Inference :

La table niveau 5 reste compatible si elle est lue comme exemple candidat. Elle devient fragile si elle est lue comme liste obligatoire d'objets Max ou comme prefiguration de patch.

Recommandation :

Reformuler `MIN-DID-PC` par responsabilites minimales :

| Responsabilite minimale | Ce qui doit rester garanti | Ce qui reste exclu |
|---|---|---|
| Input live | Entree audio disponible pour le didgeridoo + PC | Source preparee obligatoire, corpus obligatoire, driver final fixe |
| Direct | Chemin direct lisible et sortible | Candidat lourd en direct critique |
| Safe | Repli ou bypass jouable | Remplacement par polyphonie, script, preset ou modele |
| Mix | Sortie principale simple et controlable | Routage opaque ou matrice finale non auditee |
| Generation simple | Possibilite de generation minimale sous controle | `gen~`, polyphonie, MC, Markov, ML ou modele obligatoire |
| Analyse simple | Observation non autoritaire | FFT/pfft, spectral lourd ou classification obligatoire |
| Espace simple | Espace minimal non vital | Reverb/convolution/IR/corpus comme condition de jouabilite |
| Protection | Limites et sorties de secours visibles | External, plugin, script ou preset critique |
| Controle live | Action humaine lisible et prioritaire | Automation qui decide scene, transgression ou protection |
| Signalisation critique | SIG d'absence, bypass, reduction, incertitude ou limite | UI finale obligatoire ou log comme condition audio |

Sources :

- `reprise/SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_VESPERARE_v0_1.md`
- `reprise/AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_AVEC_CORPUS_v0_1.md`
- `reprise/REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`
- `docs/reprise/07_AUDIT_COMPATIBILITE_NIVEAU_5_OBJETS_MAX_CANDIDATS_AVEC_MATRICE_SYNTHESE_CANDIDATS_LOURDS_VESPERARE_v0_1.md`

## 5. Fallback et SIG par famille lourde

Fait :

La matrice lourde valide les familles sensibles seulement si fallback, mode absent, bypass ou reduction, et SIG restent explicites quand l'absence, la limitation, l'incertitude, la surcharge ou la reduction affectent le live.

Inference :

La synchronisation avant niveau 6 doit rendre le fallback/SIG lisible par famille, pas seulement comme principe general.

Recommandation :

Reporter cette table courte dans les documents futurs qui manipulent des candidats lourds.

| Famille lourde | Fallback minimal | SIG attendu | Mode absent / degrade |
|---|---|---|---|
| `gen~` | Version MSP simple ou non-`gen~` | Bypass, limite, indisponibilite | Traitement off ou chemin simple |
| `poly~` | Mono/simple | Reduction voix | Nombre de voix reduit ou off |
| MC | Stereo/simple ou downmix | Repli, densite limitee | Downmix, couche dense coupee |
| `buffer~` / playback | Sans buffer ou sans fichier | Manque, reduction, release | Fichier absent, support coupe |
| Corpus sonore | Sans corpus, matiere live ou simple | Corpus actif/absent | Corpus non charge, couche desactivee |
| `js` / node / scripts | Logique Max simple ou manuel | Script indisponible | Script off sans perte critique |
| `pattrstorage` / presets | Etat par defaut ou manuel | Recall partiel/echec | Preset ignore, scene non jouee seule |
| pfft~/FFT/spectral | Sans spectral, analyse simple | Limitation, surcharge, bypass | Transformation off |
| Granularite complexe | Sans granularite, texture simple | Limitation, densite reduite | Grains off ou couche reduite |
| Modeles physiques | Filtre/resonateur simple/off | Limitation | Modele off, source conservee |
| Convolution | Sans convolution | Absent/limite | Espace simple ou off |
| IR salle/source/objet | Sans IR ou no room data | Disponibilite, indisponible | Donnee non chargee, teinte retiree |
| Reverb / espace / halo | Espace simple | Owner, limite, bypass | Reverb/halo off sans couper direct/safe |
| Externals / plugins / packages | Natif/off | Disponibilite, bypass, absent | Dependances desactivees |
| ML / classification / prediction | Sans ML ou analyse simple | Confiance, incertitude, prediction ignoree | Modele ignore ou off |
| Markov / grammaire / statistiques | Deterministe/simple | Variation active, influence perceptible | Variation off |

Sources :

- `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`
- `reprise/AUDIT_COMPATIBILITE_MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_AVEC_AUDITS_SOURCES_VESPERARE_v0_1.md`
- `docs/reprise/07_AUDIT_COMPATIBILITE_NIVEAU_5_OBJETS_MAX_CANDIDATS_AVEC_MATRICE_SYNTHESE_CANDIDATS_LOURDS_VESPERARE_v0_1.md`

## 6. Note buffer / playback / corpus

Fait :

`buffer~`, playback prepare et corpus sont nommes dans la matrice lourde et dans DETTE-ACT-28. Le niveau 5 ne les isole pas encore comme famille centrale, mais il interdit les buffers finaux et garde les familles lourdes hors choix final.

Inference :

Ce n'est pas une incompatibilite. C'est un trou de synchronisation : sans clause explicite, un document futur pourrait transformer un support prepare en banque cachee, fichier indispensable, source directe ou condition de `MIN-DID-PC`.

Recommandation :

Reporter la clause suivante avant niveau 6 :

```text
buffer~, playback, corpus et fichiers prepares restent des supports
conditionnels, lents, prepares ou offline.

Ils ne deviennent jamais source indispensable du direct, lecture critique,
banque de sons cachee, remplacement du live, condition de MIN-DID-PC,
asset reel ou sample bank.

Tout usage futur declare provenance, role, sortie, preload, fallback sans
fichier/corpus et SIG manque/absence/reduction/release.
```

Sources :

- `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`
- `reprise/AUDIT_IMPACT_REPRISE_CANDIDATS_LOURDS_SUR_DOCUMENTS_ULTERIEURS_EXISTANTS_VESPERARE_v0_1.md`
- `reprise/REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`
- `docs/reprise/07_AUDIT_COMPATIBILITE_NIVEAU_5_OBJETS_MAX_CANDIDATS_AVEC_MATRICE_SYNTHESE_CANDIDATS_LOURDS_VESPERARE_v0_1.md`

## 7. Note espace / halo / reverb / convolution / IR / corpus

Fait :

Le niveau 5 garde delay, reverb, resonator et convolution en `LATER` et demande une separation SPC/HAL/GEN-HAL. La matrice lourde distingue convolution, IR salle, IR source/objet, corpus sonore, playback prepare, corpus pour HAL/SPC/REV/NAT et cross-convolution.

Inference :

La compatibilite tient si ces familles restent distinguees. Elle devient fragile si reverb, espace, halo, convolution, IR, corpus et naturalisation sont fusionnes comme une seule categorie technique ou comme une couleur automatique.

Recommandation :

Reporter la clause suivante :

```text
Espace, halo, reverb, convolution, IR et corpus doivent rester separes par
support sonore, fonction musicale/acoustique, owner, sortie et risque.

Convolution ne vaut pas reverb automatique.
IR ne vaut pas verite acoustique automatique.
Corpus ne vaut pas banque cachee.
HAL/SPC/REV/NAT gardent leurs autorites separees.

Tout usage concret futur exige fallback espace simple ou off, SIG owner,
SIG absence/disponibilite/limite, et audit dedie avant implementation.
```

Sources :

- `reprise/SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_VESPERARE_v0_1.md`
- `reprise/MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`
- `reprise/AUDIT_IMPACT_REPRISE_CANDIDATS_LOURDS_SUR_DOCUMENTS_ULTERIEURS_EXISTANTS_VESPERARE_v0_1.md`
- `reprise/REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`

## 8. Corrections a reporter vers les documents futurs

Fait :

ACT28 ne demande pas de modifier les sources dans cette action. Il demande de rendre les corrections exploitables avant tout niveau 6.

Inference :

Les corrections suivantes sont des reports documentaires, pas des decisions artistiques finales et pas des specifications d'implementation.

Recommandation :

Reporter seulement ces corrections limitees :

1. `CORR-ACT28-SYNC-1` : ajouter une correspondance explicite `statut niveau 5 -> statut matrice lourde -> chemin admis -> interdit -> fallback/SIG` dans tout document qui reprend les objets niveau 5.
2. `CORR-ACT28-SYNC-2` : ajouter la clause transversale candidats lourds : owner, fonction, chemin, sortie, fallback, mode absent, SIG, et interdiction P0/P1, direct/safe, `MIN-DID-PC`.
3. `CORR-ACT28-SYNC-3` : reformuler `MIN-DID-PC` par responsabilites minimales avant toute liste d'objets.
4. `CORR-ACT28-SYNC-4` : reporter les fallback/SIG par famille lourde, notamment absence, bypass, reduction, incertitude, indisponibilite, surcharge, repli et release.
5. `CORR-ACT28-SYNC-5` : isoler `buffer~`, playback, corpus et fichiers prepares comme supports conditionnels, jamais source indispensable, banque cachee, asset ou sample bank.
6. `CORR-ACT28-SYNC-6` : ajouter une note dediee espace/halo/reverb/convolution/IR/corpus avant tout choix concret de reverb, convolution, IR, corpus, HAL, GEN-HAL ou naturalisation.
7. `CORR-ACT28-SYNC-7` : ne pas ouvrir niveau 6 avant que le niveau 6 futur puisse citer cette synchronisation et la matrice lourde.
8. `CORR-ACT28-SYNC-8` : synchroniser ensuite les matrices d'exclusion et contraintes de traduction seulement apres audit du niveau 6, si les statuts changent.
9. `CORR-ACT28-SYNC-9` : maintenir les fichiers ambigus, copies `(1)` et audits a statut manifeste `inconnu` hors de cette chaine, sauf decision explicite de reconciliation.
10. `CORR-ACT28-SYNC-10` : conserver la separation fait / inference / recommandation dans toute reprise de ces corrections.

Sources :

- `docs/reprise/05_NEXT_ACTIONS.md`
- `docs/reprise/06_DETTE_ACT_28_READINESS.md`
- `docs/reprise/07_AUDIT_COMPATIBILITE_NIVEAU_5_OBJETS_MAX_CANDIDATS_AVEC_MATRICE_SYNTHESE_CANDIDATS_LOURDS_VESPERARE_v0_1.md`
- `reprise/AUDIT_IMPACT_REPRISE_CANDIDATS_LOURDS_SUR_DOCUMENTS_ULTERIEURS_EXISTANTS_VESPERARE_v0_1.md`
- `reprise/REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`
- `docs/reprise/MANIFEST_FICHIERS.yml`

## 9. Decision de sortie

Fait :

Le niveau 5 reste compatible avec la matrice lourde si ses objets restent des candidats non definitifs et si les conditions lourdes sont reportees avant niveau 6.

Inference :

La prochaine etape documentaire ne doit pas etre une implementation. Elle doit etre un audit ou une synchronisation du futur niveau 6 contre le niveau 5 synchronise, la matrice lourde et la presente fiche.

Recommandation :

Arreter cette action a la synchronisation documentaire. Ne pas creer de patch Max, UI, mapping, prototype, asset, sample bank, niveau 6 ou modification de `reprise/` a partir de ce document.

Sources :

- `docs/reprise/07_AUDIT_COMPATIBILITE_NIVEAU_5_OBJETS_MAX_CANDIDATS_AVEC_MATRICE_SYNTHESE_CANDIDATS_LOURDS_VESPERARE_v0_1.md`
- `docs/reprise/05_NEXT_ACTIONS.md`
- `docs/reprise/06_DETTE_ACT_28_READINESS.md`
