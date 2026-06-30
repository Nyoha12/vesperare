# Matrice synthese statuts candidats lourds / contraintes Max standalone

Projet : Vesperare  
Version : v0.1  
Statut : matrice de synthese DETTE-ACT-25  
Runtime actif : Max/MSP standalone  
Date : 2026-06-24

## 1. Role du document

Ce document absorbe DETTE-ACT-25.

Il consolide les statuts issus des audits candidats lourds :

- supports structurels lourds / etats opaques ;
- transformations lourdes spectral / granularite / modeles physiques ;
- espace / empreinte / corpus / convolution / IR / playback prepare ;
- opacite decisionnelle / ML / classification / Markov / grammaire / statistique ;
- dependances externes / plugins / packages / bibliotheques ;
- audit de coherence post-candidats lourds.

Il ne choisit pas :

- objet final ;
- moteur final ;
- external final ;
- plugin final ;
- patch ;
- UI ;
- mapping ;
- implementation.

## 2. Legende

Statuts :

- ACCEPTE CONDITIONNEL : utilisable si les conditions sont respectees ;
- CONDITIONNEL LOURD : utilisable seulement hors chemin critique, avec contrat strict ;
- REPORTE : pas a integrer maintenant, garder comme possibilite future ;
- REPORTE FORT : non admissible sans audit dedie ulterieur ;
- REFUSE PAR DEFAUT : interdit sauf decision explicite future et audit dedie.

Criticite :

- P0/P1 : interdit par defaut pour toutes les familles lourdes ;
- P2 : seulement si controle live clair, non vital, sortible, avec fallback ;
- P3/P4 : admissible selon scene/assignation ;
- P5 : admissible pour Auto-Pro doux, diagnostic ou preparation, jamais decision expressive forte.

Colonnes :

- Candidat : famille technique ou conceptuelle ;
- Statut : statut consolide ;
- Chemin admis : zone de fonctionnement maximale ;
- Interdits : ce que le candidat ne doit pas toucher ;
- Fonction admise : ce qu'il peut faire ;
- Conditions : exigences minimales ;
- Fallback/SIG : sortie, etat absent, signalisation ;
- Source : document de reference.

## 3. Matrice principale

| Candidat | Statut | Chemin admis | Interdits | Fonction admise | Conditions | Fallback/SIG | Source |
|---|---|---|---|---|---|---|---|
| `gen~` support audio-rate | ACCEPTE CONDITIONNEL | PATH-GEN/PLAY, CRIT-2/3/4 | P0/P1, direct critique, MIN-DID-PC obligatoire | DSP local, resonateurs, source-filter, traitement signal | fonction nommee, owner, sortie, pas condition du direct | fallback non-gen~, SIG bypass/limite | AUDIT SUPPORTS |
| `poly~` | ACCEPTE CONDITIONNEL | PATH-GEN/PLAY, CRIT-3, CRIT-2 limite | P0/P1, direct/safe, MIN-DID-PC obligatoire | voix multiples, instances, polytexture structuree | controle densite, etats lisibles, owner | fallback mono/simple, SIG reduction voix | AUDIT SUPPORTS |
| MC | ACCEPTE CONDITIONNEL | PATH-GEN/SPC, CRIT-3, CRIT-2 limite | P0/P1, MIN-DID-PC, densite opaque | couches, multicanal, polytexture, espace | downmix, owner, densite bornee | fallback stereo/simple, SIG repli | AUDIT SUPPORTS |
| `buffer~` / playback support | ACCEPTE CONDITIONNEL | PATH-GEN/SLOW/OFFLINE | source indispensable directe, lecture critique | traces, corpus, grains, playback prepare | preload, role declare, sortie | fallback sans buffer, SIG manque/reduction | AUDIT SUPPORTS |
| `js` / node / scripts | REPORTE HORS CRITIQUE | DIAG/SLOW/OFFLINE | audio critique, direct, safe, protection | config, outils, vues, preparation, logique lente | pas autorite audio, pas chemin critique | fallback sans script, SIG indisponible | AUDIT SUPPORTS |
| `pattrstorage` / presets critiques | REPORTE ETAT LENT | SETUP/SLOW/SCENE non critique | P0/P1/P2 immediat, direct/safe | snapshots, recalls, scenes preparees | recall borne, etat lisible, pas scene qui joue seule | SIG recall partiel/echec | AUDIT SUPPORTS |
| pfft~/FFT/spectral | CONDITIONNEL LOURD | PATH-GEN/SLOW/HAL/SPC, DIAG | P0/P1, direct, safe, source priority vitale | freeze spectral, resynthese, filtrage, trace impossible | source-bonding, release, owner, non vital | fallback sans spectral, SIG limitation | AUDIT TRANSFORM |
| Granularite complexe | CONDITIONNEL LOURD | PATH-GEN/SLOW/HAL, CRIT-3/4, CRIT-2 tres limite | P0/P1, source directe, texture par defaut | texture sourcee, mutation, dissolution, freeze vivant | source/fonction, densite bornee, sortie | fallback sans granularite, SIG limitation | AUDIT TRANSFORM |
| Modeles physiques detailles | CONDITIONNEL LOURD / REPORTE | PATH-GEN/PLAY conditionnel, SLOW/OFFLINE | P0/P1, preuve d'acousticite, grave accidentel | tube, souffle, membrane, metal, cavite | modele utile, pas simulation pour elle-meme | fallback filtre/resonateur/off, SIG limitation | AUDIT TRANSFORM |
| Convolution | CONDITIONNEL LOURD | PATH-SPC-SLOW, PATH-REV-SLOW, PATH-NAT-SLOW | reverb automatique, P0/P1, decision HAL/SPC cachee | empreinte lieu/corps/cavite/air, naturalisation | source, owner, fonction, preparation | fallback sans convolution, SIG absent/limite | AUDIT ESPACE |
| IR salle | CONDITIONNEL OFFLINE | PREP/OFFLINE puis usage non critique | dependance live obligatoire, verite automatique | reference acoustique, teinte de lieu, coherence | mesure documentee, limites explicites | fallback no room data, SIG disponibilite | AUDIT ESPACE |
| IR source/objet | CONDITIONNEL OFFLINE | PREP/OFFLINE puis PATH-NAT-SLOW | effet anonyme sans source | corps de gong, didgeridoo, voix, metal, cavite | lien source audible/fonctionnel | fallback sans IR, SIG indisponible | AUDIT ESPACE |
| Corpus sonore | CONDITIONNEL LOURD | PATH-GEN-SLOW, PATH-HAL-SLOW, PATH-NAT-SLOW | banque cachee, style plaque, remplacement live | matiere preparee, texture, empreinte, variante | provenance, role, autonomie bornee, sortie | fallback sans corpus, SIG actif/absent | AUDIT ESPACE |
| Playback prepare espace/corpus | CONDITIONNEL SUPPORT | PATH-GEN-SLOW, PATH-SPC-SLOW | lecture disque critique, pilote musical cache | couche stable, transition, queue, reference | preload, etat clair, release | fallback sans fichier, SIG manque/release | AUDIT ESPACE |
| Corpus pour HAL/SPC/REV/NAT | CONDITIONNEL INTERFACE | GEN-HAL/SPC/REV/NAT | autorite HAL/SPC/REV cachee | fournir matiere, empreinte, queue, texture | HAL/SPC/REV/NAT gardent autorite | SIG owner et fallback | AUDIT ESPACE |
| Cross-convolution / hybridation | REPORTE CONDITIONNEL | PATH-NAT-SLOW ou SPECIAL | masque de source non decide | source-lieu hybride, corps improbable | source-bonding strict, scene/fonction | fallback off, SIG transgression | AUDIT ESPACE |
| ML temps reel | REPORTE / DIAG-SLOW | DIAG/SLOW/OFFLINE | P0/P1, scene, direct/safe, composition | etiquetage, confiance lente, aide analyse | confiance explicite, pas autorite musicale | fallback sans ML, SIG confiance | AUDIT OPACITE |
| Classification timbrale | CONDITIONNEL DIAG | DIAG/SLOW | controle live remplace, decision source | souffle, attaque, metal, voix, peau | source connue, erreur bornee, non autoritaire | SIG incertitude, fallback simple | AUDIT OPACITE |
| Embeddings / similarite | REPORTE OFFLINE | OFFLINE/PREP | navigation live critique opaque | tri corpus, similarite, preparation | corpus audite, pas decision live | fallback listes simples, SIG non dispo | AUDIT OPACITE |
| Markov | CONDITIONNEL LOURD | PATH-GEN-SLOW | forme globale, scene, transgression | variation motif, relance, memoire locale | vocabulaire limite, borne, controle live | fallback deterministe, SIG variation | AUDIT OPACITE |
| Grammaire generative | CONDITIONNEL LOURD | PATH-GEN-SLOW | composition autonome, style plaque | contraintes de motif, forme locale, densite | regles auditees, vocabulaire explicite | fallback simple, SIG actif | AUDIT OPACITE |
| Statistiques simples | ACCEPTE CONDITIONNEL | DIAG/SLOW ou GEN-SLOW | hasard decoratif, decision cachee | densite, frequence, probabilite bornee | lisible, reversible, borne | SIG si influence perceptible | AUDIT OPACITE |
| Prediction | REPORTE FORT | DIAG/PREP seulement | action critique, correction musicien | prechargement, anticipation douce | proposition seulement, pas action seule | prediction ignoree, SIG | AUDIT OPACITE |
| Systeme hybride opaque | REPORTE FORT | OFFLINE/PREP | noyau live, MIN-DID-PC, protection | recherche, prototype conceptuel | audit dedie, explicabilite minimale | fallback total, SIG absent | AUDIT OPACITE |
| Package Max officiel/reconnu | ACCEPTE CONDITIONNEL | selon fonction, hors P0/P1 | noyau critique sans fallback | outil utile, analyse, preparation | version fixee, docs, desactivation | fallback natif, SIG dispo | AUDIT DEPENDANCES |
| External Max tiers | REPORTE / CONDITIONNEL FORT | hors critique | direct/safe, protection, MIN-DID-PC | capacite impossible autrement | licence, maintenance, OS, stabilite | fallback natif, SIG absent | AUDIT DEPENDANCES |
| Plugin audio | REPORTE FORT | hors direct critique | signature sonore imposee, P0/P1 | couleur ou traitement optionnel | bypass, latence connue, recall | fallback natif/off, SIG bypass | AUDIT DEPENDANCES |
| Outil ML / machine listening externe | CONDITIONNEL DIAG | DIAG/SLOW/OFFLINE | decision live autonome | analyse, confiance, preparation | pas autorite musicale, version/fallback | SIG confiance/absence | AUDIT DEPENDANCES |
| Outil corpus externe | CONDITIONNEL OFFLINE | PREP/OFFLINE/SLOW | banque cachee, moteur principal | tri, descripteurs, preparation | corpus audite, resultat portable | fallback sans outil, SIG prep | AUDIT DEPENDANCES |
| Outil spatialisation externe | CONDITIONNEL FORT | SPC/REV-SLOW | espace indispensable au set | monde optionnel, spatialisation avancee | fallback SPC/REV simple | SIG fallback/espace limite | AUDIT DEPENDANCES |
| Script/runtime tiers | REPORTE | OFFLINE/DIAG | runtime live fragile, audio critique | preparation, build, conversion | reproductibilite, pas live critique | fallback sans script, SIG outil absent | AUDIT DEPENDANCES |
| Bibliotheque custom | REPORTE FORT | audit dedie | boite noire critique | fonction impossible autrement | code/maintenance/fallback | fallback natif, SIG | AUDIT DEPENDANCES |

## 4. Regles globales consolidees

Interdits globaux :

- aucun candidat lourd ne conditionne MIN-DID-PC ;
- aucun candidat lourd ne porte P0/P1 par defaut ;
- aucun candidat lourd ne remplace direct/safe ;
- aucun candidat lourd ne porte le vrai grave par accident ;
- aucun candidat lourd ne decide une scene ;
- aucun candidat lourd ne force HAL/SPC/REV ;
- aucun candidat lourd ne compose sans scene, choix live, fonction et sortie ;
- aucune dependance externe ne devient obligatoire sans fallback natif ;
- aucun outil opaque ne transforme une erreur en intention.

Obligatoires globaux :

- owner ;
- fonction musicale ;
- chemin de criticite ;
- sortie ;
- fallback ;
- SIG si absence, bypass, reduction ou incertitude affecte le live ;
- source-bonding ou fonction de naturalisation si le son devient ambigu ;
- preload/preparation pour fichiers, corpus, IR et dependances ;
- mode absent pour tout fichier, modele, corpus, external ou package.

## 5. Candidats admissibles sans ouvrir l'implementation

Ces candidats peuvent rester dans les futures specifications comme candidats plausibles :

- `gen~` comme support audio-rate conditionnel ;
- `poly~` comme support de voix/couches ;
- MC comme support dense ou spatial avec fallback ;
- `buffer~` comme support prepare ;
- pfft~/FFT/spectral comme transformation lente ;
- granularite complexe comme transformation lente sourcee ;
- modeles physiques detailles selon complexite ;
- convolution/IR/corpus comme espace, empreinte ou naturalisation lente ;
- Markov/grammaire/statistique comme variation bornee ;
- packages Max si non critiques et avec fallback ;
- outils externes offline/diag si resultat portable.

Cela n'autorise pas leur choix final.

## 6. Candidats reportes ou fortement controles

Reports forts :

- ML temps reel ;
- embeddings live ;
- prediction active ;
- systeme hybride opaque ;
- external tiers central ;
- plugin audio central ;
- bibliotheque custom ;
- scripts/runtimes live critiques ;
- pattrstorage critique ;
- modeles physiques complexes centraux.

Condition de reouverture :

- fonction indispensable ;
- impossibilite native documentee ;
- audit dedie ;
- fallback ;
- SIG ;
- absence de dependance P0/P1/MIN-DID-PC ;
- arbitrage explicite si l'autonomie musicale augmente.

## 7. Passage vers la suite

DETTE-ACT-25 est absorbee.

La matrice rend les statuts lisibles, mais elle doit etre auditee contre les cinq audits sources avant de servir de reference de passage.

Prochaine dette logique :

```text
DETTE-ACT-26 - Audit compatibilite matrice synthese candidats lourds avec audits sources
```

Prochaine fiche :

```text
AUDIT_COMPATIBILITE_MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_AVEC_AUDITS_SOURCES_VESPERARE_v0_1.md
```
