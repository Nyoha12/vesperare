# Audit compatibilite matrice synthese statuts candidats lourds / contraintes avec coherence post re-audits candidats lourds et corrections SIG

Projet : Vesperare  
Version : v0.1  
Statut : audit compatibilite DETTE-ACT-64  
Runtime actif : Max/MSP standalone  
Date : 2026-06-24

## 1. Role du document

Ce document absorbe DETTE-ACT-64.

Il verifie que la matrice suivante reste utilisable apres la reprise des
candidats lourds :

- `MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md`

Sources actives de controle :

- `AUDIT_COHERENCE_POST_REAUDITS_CANDIDATS_LOURDS_AVANT_SYNTHESE_LOURDE_OU_IMPLEMENTATION_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_AUDIT_CANDIDATS_SUPPORTS_STRUCTURELS_LOURDS_ETATS_OPAQUES_AVEC_PRE_AUDIT_LOURD_REAUDITE_COHERENCE_A_B_C_D_ET_CORRECTIONS_SIG_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_AUDIT_CANDIDATS_TRANSFORMATIONS_LOURDES_SPECTRAL_GRANULARITE_MODELES_PHYSIQUES_AVEC_SUPPORTS_REAUDITES_PRE_AUDIT_LOURD_ET_CORRECTIONS_SIG_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_AUDIT_CANDIDATS_ESPACE_EMPREINTE_CORPUS_CONVOLUTION_IR_PLAYBACK_PREPARE_AVEC_TRANSFORMATIONS_REAUDITEES_SPC_HAL_REV_ET_CORRECTIONS_SIG_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_AUDIT_CANDIDATS_OPACITE_DECISIONNELLE_ML_CLASSIFICATION_MARKOV_GRAMMAIRE_STATISTIQUE_AVEC_ESPACE_CORPUS_REAUDITE_GENERATION_C_D_ET_CORRECTIONS_SIG_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_AUDIT_CANDIDATS_DEPENDANCES_EXTERNES_PLUGINS_PACKAGES_BIBLIOTHEQUES_AVEC_OPACITE_REAUDITEE_RUNTIME_MAX_STANDALONE_ET_CORRECTIONS_SIG_VESPERARE_v0_1.md`
- `MATRICE_EXCLUSIONS_CANDIDATS_PAR_CRITICITE_ET_LATENCE_MAX_STANDALONE_VESPERARE_v0_1.md`

Il ne choisit pas :

- objet Max final ;
- moteur final ;
- plugin final ;
- external final ;
- patch ;
- UI ;
- mapping ;
- benchmark ;
- implementation.

## 2. Verdict

Verdict :

```text
matrice compatible sous restriction de lecture.
```

Decision :

```text
la matrice reste utilisable comme synthese de statuts, chemins, interdits,
conditions, fallbacks et signalisations.

elle ne doit pas etre utilisee comme source finale de choix technique, moteur,
objet Max, plugin, architecture, UI, mapping ou implementation.
```

Correction appliquee :

```text
la matrice source a recu une note de reprise re-auditee DETTE-ACT-64.
```

## 3. Restrictions de lecture

Lecture autorisee :

- lire les candidats comme familles possibles ;
- lire les statuts comme niveaux d'admissibilite conceptuelle ;
- lire les chemins comme zones maximales de fonctionnement ;
- lire les interdits comme garde-fous bloquants ;
- lire les fallbacks et SIG comme obligations de sortie, pas comme simples options ;
- lire les sources courtes `AUDIT SUPPORTS`, `AUDIT TRANSFORM`, `AUDIT ESPACE`, `AUDIT OPACITE`, `AUDIT DEPENDANCES` comme alias historiques vers les re-audits actifs.

Lecture interdite :

- transformer `ACCEPTE CONDITIONNEL` en choix final ;
- transformer `CONDITIONNEL LOURD` en moteur de scene ;
- transformer `REPORTE` en abandon definitif ;
- transformer `fallback` en degradation esthetique acceptee ;
- transformer `SIG` en bruit visuel obligatoire ;
- deduire un patch Max concret ;
- deduire une priorite live definitive.

## 4. Controle supports structurels

Verdict :

```text
compatible.
```

Elements valides :

| Candidat | Lecture compatible | Condition non negociable |
|---|---|---|
| `gen~` | support audio-rate local possible | jamais direct/safe, P0/P1 ou MIN-DID-PC obligatoire |
| `poly~` | voix/couches/polytexture | densite bornee, sortie, fallback mono/simple |
| MC | couches, multicanal, espace, polytexture | downmix/repli, owner, pas densite opaque |
| `buffer~` / playback | traces, corpus, grains, playback prepare | preload, mode absent, aucune lecture critique fragile |
| `js` / node / scripts | config, diagnostic, preparation, vues lentes | aucune autorite audio critique |
| `pattrstorage` / presets | snapshots et scenes preparees | aucun recall vital pendant action critique |

Raison :

```text
la matrice conserve la separation entre support utile et dependance structurelle
critique. elle ne transforme aucun support lourd en fondation obligatoire du
setup didgeridoo + PC.
```

## 5. Controle transformations lourdes

Verdict :

```text
compatible.
```

Elements valides :

| Candidat | Lecture compatible | Condition non negociable |
|---|---|---|
| pfft~/FFT/spectral | freeze, resynthese, trace impossible, filtrage lent | source-bonding, owner, release, fallback sans spectral |
| granularite complexe | texture sourcee, mutation, dissolution, freeze vivant | densite bornee, sortie, pas texture par defaut |
| modeles physiques detailles | tube, souffle, membrane, metal, cavite | fonction musicale declaree, pas simulation pour elle-meme |

Raison :

```text
les transformations lourdes restent des etats ou procedes conditionnels.
elles ne deviennent pas une obligation de naturalisation, un moteur timbral
central ou une justification automatique de sons anonymes.
```

## 6. Controle espace / corpus / convolution / IR / playback

Verdict :

```text
compatible.
```

Elements valides :

| Candidat | Lecture compatible | Condition non negociable |
|---|---|---|
| convolution | empreinte lieu/corps/cavite/air, naturalisation lente | source, owner, preparation, fallback sans convolution |
| IR salle | reference acoustique, teinte de lieu, coherence | aucune verite automatique de la salle live |
| IR source/objet | corps de gong, didgeridoo, voix, metal, cavite | lien source audible ou fonctionnel |
| corpus sonore | matiere preparee, texture, empreinte, variante | provenance, role, autonomie bornee, sortie |
| playback prepare | couche stable, transition, queue, reference | preload, etat clair, release |
| corpus pour HAL/SPC/REV/NAT | interface de matiere, empreinte, queue, texture | HAL/SPC/REV/NAT gardent leur owner |
| cross-convolution / hybridation | cas special de corps improbable | scene/fonction/source-bonding strict |

Raison :

```text
la matrice respecte la reprise reverb/espace : l'espace peut enrichir la
perception, naturaliser, rapprocher, eloigner ou stabiliser, mais il ne decide
pas seul la scene, la reverb, le halo ou la source.
```

## 7. Controle opacite decisionnelle

Verdict :

```text
compatible.
```

Elements valides :

| Candidat | Lecture compatible | Condition non negociable |
|---|---|---|
| ML temps reel | reporte / diagnostic lent | aucune decision musicale autonome |
| classification timbrale | observation souffle/attaque/metal/voix/peau | incertitude signalee, erreur bornee |
| embeddings / similarite | preparation offline | pas de navigation live critique opaque |
| Markov | variation motif/memoire locale | vocabulaire limite, controle live |
| grammaire generative | contraintes locales de motif/forme | pas de composition autonome |
| statistiques simples | densite, probabilite bornee | lisible, reversible, non decoratif |
| prediction | preparation ou anticipation douce | aucune action critique seule |
| systeme hybride opaque | recherche/prototype | pas de noyau live |

Raison :

```text
la matrice garde l'opacite du cote observation, proposition ou variation
bornee. elle ne donne pas d'autorite expressive finale a un modele opaque.
```

## 8. Controle dependances externes

Verdict :

```text
compatible.
```

Elements valides :

| Candidat | Lecture compatible | Condition non negociable |
|---|---|---|
| package Max officiel/reconnu | outil utile non critique | version fixee, docs, fallback natif |
| external Max tiers | conditionnel fort hors critique | jamais direct/safe/protection/MIN-DID-PC |
| plugin audio | reporte fort | pas de signature sonore imposee |
| outil ML / machine listening externe | analyse, confiance, preparation | pas d'autorite musicale |
| outil corpus externe | tri/descripteurs/preparation | resultat portable, pas banque cachee |
| outil spatialisation externe | monde optionnel, spatialisation avancee | fallback SPC/REV simple |
| script/runtime tiers | preparation/build/conversion | pas de live critique |
| bibliotheque custom | cas impossible autrement | audit dedie, code/maintenance/fallback |

Raison :

```text
la matrice maintient l'externe comme enrichissement, preparation ou option.
elle ne rend aucun package, external, plugin ou runtime tiers obligatoire.
```

## 9. Controle SIG

Verdict :

```text
compatible mais non suffisant pour mapping live.
```

La matrice est compatible parce qu'elle exige une signalisation en cas de :

- absence ;
- bypass ;
- reduction ;
- incertitude ;
- fallback ;
- repli ;
- indisponibilite ;
- transgression ;
- release ;
- limitation.

Limite assumee :

```text
la matrice ne chiffre pas chaque ligne en SIG-0, SIG-1, SIG-2, SIG-3 ou
SIG-DIAG.
```

Cette limite est acceptable ici parce que le document est une matrice de
synthese, pas une specification d'interface ou de mapping.

Regle pour la suite :

```text
tout document ulterieur qui traduit ces candidats en controle live, etat,
alerte, vue ou mapping doit convertir le SIG generique en classe SIG explicite.
```

## 10. Controle latence sans compromis

Verdict :

```text
compatible.
```

La matrice respecte la decision :

```text
latence = enjeu artistique et fonctionnel, pas simple contrainte.
optimiser ne signifie pas supprimer une fonction souhaitee.
optimiser signifie preparer, router, borner, precharger, fallback, reporter ou
deplacer hors chemin critique, sans compromis musical reel.
```

Points compatibles :

- P0/P1 interdits par defaut pour les familles lourdes ;
- direct/safe non dependant des candidats lourds ;
- MIN-DID-PC non dependant des candidats lourds ;
- fichiers, IR, corpus et dependances soumis a preload/preparation/mode absent ;
- chemins lourds places en SLOW, DIAG, OFFLINE, PREP, GEN-SLOW ou SPC/REV/HAL-SLOW ;
- aucun fallback n'est une autorisation de son degrade comme choix artistique par defaut.

## 11. Points de vigilance maintenus

La matrice reste fragile si elle est lue sans les re-audits parce que :

- ses sources courtes sont des alias historiques ;
- ses SIG sont descriptifs, pas encore classes ;
- ses statuts sont conceptuels, pas techniques finaux ;
- ses fallbacks ne disent pas encore comment l'interface doit les presenter ;
- ses chemins ne definissent pas encore les objets Max, patchers ou priorites scheduler ;
- ses reports ne disent pas encore quelles recherches futures seraient necessaires.

Ces fragilites ne bloquent pas la matrice comme synthese.

Elles bloquent :

- implementation ;
- niveau objets Max final ;
- mapping ;
- UI ;
- routage definitif ;
- choix plugin/external final ;
- abandon ou adoption definitive d'un candidat lourd.

## 12. Compatibilite avec les documents ulterieurs

Recherche locale :

```text
les documents ulterieurs citent encore la matrice et l'ancien audit de
compatibilite avec audits sources.
```

Implication :

```text
il ne faut pas reprendre directement le document d'impact ou les niveaux 5/6.
il faut d'abord revalider l'ancien audit de compatibilite de la matrice avec
les audits sources contre cette matrice revalidee.
```

## 13. Decision de passage

DETTE-ACT-64 est absorbee.

La matrice de synthese candidats lourds / contraintes est revalidee comme
document de synthese conditionnel.

Elle autorise :

- relecture de l'ancien audit compatibilite matrice / audits sources ;
- revalidation des documents ulterieurs qui dependent de la matrice ;
- conservation des candidats lourds comme possibilites structurees.

Elle n'autorise pas :

- implementation ;
- choix final de moteur ;
- choix final d'objet ;
- choix final de plugin ;
- architecture operationnelle finale ;
- UI ;
- mapping.

Prochaine dette logique :

```text
DETTE-ACT-65 - Audit compatibilite ancien audit matrice synthese candidats
lourds avec matrice revalidee et coherence post re-audits
```

Prochaine fiche :

```text
AUDIT_COMPATIBILITE_AUDIT_MATRICE_SYNTHESE_CANDIDATS_LOURDS_AVEC_MATRICE_REVALIDEE_ET_COHERENCE_POST_REAUDITS_VESPERARE_v0_1.md
```
