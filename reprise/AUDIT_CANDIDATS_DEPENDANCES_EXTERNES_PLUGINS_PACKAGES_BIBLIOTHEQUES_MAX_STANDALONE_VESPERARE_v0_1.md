# Audit candidats dependances externes / plugins / packages / bibliotheques

Projet : Vesperare  
Version : v0.1  
Statut : audit candidat lourd DETTE-ACT-6, groupe dependances externes  
Runtime actif : Max/MSP standalone  
Date : 2026-06-24

## 1. Role du document

Ce document absorbe DETTE-ACT-23.

Il audite les dependances externes possibles :

- externals Max ;
- packages Max ;
- plugins audio ;
- bibliotheques ;
- outils de machine listening ;
- outils de corpus ;
- outils de ML ;
- outils de spatialisation ;
- scripts ou runtimes associes ;
- dependances de standalone.

Il ne choisit pas :

- plugin final ;
- package final ;
- external final ;
- bibliotheque finale ;
- installation finale ;
- architecture de build ;
- patch ;
- UI ;
- mapping ;
- implementation.

## 2. Sources internes utilisees

Documents internes principaux :

- `DECISION_RUNTIME_MAX_STANDALONE_LATENCE_SANS_COMPROMIS_VESPERARE_v0_1.md`
- `SPECIFICATION_PRE_AUDIT_CANDIDATS_LOURDS_SUPPORTS_MAX_MOTEURS_OPAQUES_VESPERARE_v0_1.md`
- `AUDIT_CANDIDATS_SUPPORTS_STRUCTURELS_LOURDS_ETATS_OPAQUES_MAX_STANDALONE_VESPERARE_v0_1.md`
- `AUDIT_CANDIDATS_TRANSFORMATIONS_LOURDES_SPECTRAL_GRANULARITE_MODELES_PHYSIQUES_MAX_STANDALONE_VESPERARE_v0_1.md`
- `AUDIT_CANDIDATS_ESPACE_EMPREINTE_CORPUS_CONVOLUTION_IR_PLAYBACK_PREPARE_MAX_STANDALONE_VESPERARE_v0_1.md`
- `AUDIT_CANDIDATS_OPACITE_DECISIONNELLE_ML_CLASSIFICATION_MARKOV_GRAMMAIRE_STATISTIQUE_MAX_STANDALONE_VESPERARE_v0_1.md`

Sources externes consultees pour cadrage :

- documentation Max sur packages ;
- documentation Max sur standalones et collectives ;
- ecosystemes cites comme exemples de pratique : ml.star, FluCoMa, Wekinator.

Ces sources confirment qu'une dependance externe peut etre techniquement normale en Max. Elles confirment aussi que l'installation, l'empaquetage, la maintenance et la portabilite doivent etre traites comme contraintes de conception, pas comme details tardifs.

## 3. Verdict general

Les dependances externes sont compatibles seulement si elles sont justifiees par une fonction musicale ou technique indispensable.

Par defaut :

```text
dependance externe = reportee.
dependance externe dans noyau critique = refusee.
dependance externe avec fallback natif = conditionnellement admissible.
```

Elles peuvent servir :

- analyse lente ;
- preparation ;
- corpus ;
- visualisation de diagnostic ;
- aide a machine listening ;
- outil de spatialisation non critique ;
- prototype ;
- matiere optionnelle ;
- enrichissement non indispensable.

Elles ne doivent jamais devenir :

- condition de MIN-DID-PC ;
- condition du didgeridoo direct/safe ;
- condition des protections P0/P1 ;
- condition du grave critique ;
- condition du routage essentiel ;
- condition d'une scene principale ;
- source d'un son reconnaissable non desire ;
- dependance fragile qui bloque le live.

## 4. Statuts candidats

| Famille | Statut Vesperare | Chemin admis | Fonction admise | Conditions obligatoires | Interdictions |
|---|---|---|---|---|---|
| Package Max officiel ou reconnu | CONDITIONNEL | selon fonction, hors P0/P1 | outil utile, analyse, preparation, support | version fixee, docs, fallback, desactivation | noyau critique sans fallback |
| External Max tiers | REPORTE / CONDITIONNEL FORT | hors critique | capacite impossible autrement | licence, maintenance, OS, crash risk, fallback | direct/safe, protection, MIN-DID-PC |
| Plugin audio | REPORTE FORT | hors direct critique | couleur ou traitement optionnel | bypass, latence connue, recall, fallback | signature sonore imposee |
| Outil ML / machine listening | CONDITIONNEL DIAG | DIAG/SLOW/OFFLINE | analyse, confiance, preparation | pas d'autorite musicale, fallback | decision live autonome |
| Outil corpus | CONDITIONNEL OFFLINE | PREP/OFFLINE/SLOW | tri, descripteurs, preparation | corpus audite, pas banque cachee | moteur sonore principal |
| Outil spatialisation externe | CONDITIONNEL FORT | SPC/REV-SLOW | monde optionnel, spatialisation avancee | fallback SPC/REV natif ou simple | espace indispensable au set |
| Script/runtime tiers | REPORTE | OFFLINE/DIAG | preparation, build, conversion | pas audio critique, reproductibilite | runtime live fragile |
| Bibliotheque custom | REPORTE FORT | selon audit dedie | seulement si fonction impossible autrement | maintenance, code source, fallback | boite noire critique |

## 5. Critere d'admission

Une dependance externe est admissible seulement si toutes les conditions suivantes sont remplies :

- fonction musicale nommee ;
- impossibilite ou fragilite excessive en natif ;
- criticite compatible ;
- installation documentable ;
- version fixable ;
- licence compatible ;
- maintenance plausible ;
- stabilite raisonnable ;
- latence compatible avec le chemin ;
- charge CPU compatible ;
- fallback natif ou bypass musicalement acceptable ;
- absence de dependance MIN-DID-PC ;
- signalisation si absente, bypassed ou degradee.

Une dependance externe est refusee si :

- elle existe seulement parce qu'elle est interessante ;
- elle reduit la maitrise du systeme ;
- elle impose une couleur reconnaissable ;
- elle cache une decision ;
- elle rend le live non reproductible ;
- elle rend le projet fragile a une mise a jour ;
- elle remplace une specification musicale par un outil.

## 6. Noyau interdit aux dependances externes

Interdits par defaut :

- P0 ;
- P1 ;
- direct/safe ;
- routage essentiel ;
- didgeridoo direct ;
- protections sonores vitales ;
- grave critique ;
- bypass de secours ;
- signalisation minimale ;
- MIN-DID-PC ;
- fonctionnement de base du set.

Regle :

```text
Le systeme peut etre enrichi par des dependances.
Il ne doit pas etre sauve par elles.
```

## 7. Latence, charge et stabilite

Une dependance externe ajoute un risque qui n'est pas seulement CPU.

Risques :

- latence ajoutee ;
- buffer interne non visible ;
- compensation non maitrisee ;
- changement de comportement apres mise a jour ;
- crash ;
- incompatibilite OS ;
- incompatibilite standalone ;
- conflit de version ;
- installation incomplete ;
- presets ou etats caches ;
- sonorite reconnaissable.

Decision :

- aucune dependance externe en chemin direct critique sans audit ulterieur dedie ;
- aucun plugin comme solution a un probleme P0/P1 ;
- aucun external comme condition d'une scene ;
- tout candidat externe doit avoir un mode "absent" prevu.

## 8. Relation aux familles auditees

### Supports structurels

Les supports structurels natifs restent preferes.

Une dependance externe ne doit pas remplacer :

- routage ;
- etats essentiels ;
- signalisation ;
- fallback ;
- direct/safe.

### Transformations lourdes

Une dependance externe peut etre interessante pour :

- spectral ;
- granularite ;
- modeles physiques ;
- analyse avancee.

Mais elle est refusee comme raccourci si elle impose :

- signature sonore ;
- latence non maitrisee ;
- preset opaque ;
- effet reconnaissable ;
- absence de sortie.

### Espace / corpus

Une dependance externe peut aider :

- convolution ;
- corpus ;
- analyse IR ;
- spatialisation ;
- descriptors.

Mais elle ne doit pas :

- devenir reverb automatique ;
- imposer une banque ;
- conditionner SPC/REV/HAL ;
- rendre le set dependant d'un package de corpus.

### Opacite decisionnelle

Les outils ML, machine listening ou classification externes sont possibles seulement en DIAG/SLOW/OFFLINE.

Ils ne doivent pas :

- choisir la musique ;
- decider scene ;
- piloter direct/safe ;
- remplacer la confiance live ;
- transformer un modele en autorite.

## 9. Categories d'usage autorisees

### 9.1. Preparation

Admissible :

- analyse hors live ;
- classification de corpus ;
- generation de metadata ;
- extraction de descripteurs ;
- conversion de fichiers ;
- preparation d'IR ;
- verification documentaire.

Condition :

- resultat utilisable meme si l'outil n'est plus present pendant le live.

### 9.2. Diagnostic live lent

Admissible :

- signaler un etat ;
- afficher une confiance ;
- proposer une preparation ;
- detecter un risque non critique.

Condition :

- aucune action expressive automatique.

### 9.3. Enrichissement optionnel

Admissible :

- couleur ;
- espace special ;
- texture ;
- transformation lente ;
- outil experimental.

Condition :

- bypass et fallback musicalement coherents.

### 9.4. Fonction indispensable

Cas rare.

Admissible seulement si :

- fonction Vesperare clairement indispensable ;
- equivalent natif insuffisant ;
- risque documente ;
- fallback acceptable ;
- audit technique dedie ulterieur ;
- validation explicite avant implementation.

## 10. Packaging, standalone et maintenance

Puisque le runtime actif est Max standalone, toute dependance doit etre evaluee selon :

- presence dans le projet ;
- presence dans le build ;
- compatibilite macOS/Windows selon cible future ;
- chemin de recherche Max ;
- compatibilite version Max ;
- version fixee ;
- documentation locale ;
- procedure de restauration ;
- licence ;
- mise a jour ;
- mode absent ;
- etat SIG.

Une dependance qui marche dans Max mais pas en standalone n'est pas admissible comme composant de live.

Une dependance qui fonctionne seulement sur une machine non reproductible est reportee.

## 11. Controle live et SIG

Toute dependance active doit pouvoir etre rendue lisible.

SIG minimal :

- dependance disponible ;
- dependance absente ;
- fallback actif ;
- version inconnue ;
- mode bypass ;
- surcharge ;
- erreur ;
- fonction desactivee ;
- fonction optionnelle seulement.

Controle minimal futur :

- bypass global par famille ;
- mode fallback ;
- desactivation d'une dependance non critique ;
- information de disponibilite avant set.

## 12. Contrat EXTERNAL-CANDIDATE

Champs obligatoires :

- nom ;
- type : external, package, plugin, bibliotheque, script, outil offline ;
- fonction Vesperare ;
- famille liee : support, transformation, espace, corpus, opacite, diagnostic ;
- criticite maximale ;
- chemin de latence ;
- runtime requis ;
- OS cible ;
- version ;
- licence ;
- installation ;
- maintenance ;
- latence/charge attendue ;
- fallback natif ;
- mode absent ;
- SIG ;
- risques sonores ;
- risques de dependance ;
- decision : refuse, reporte, conditionnel, admissible.

Invalide si :

- fonction non nommee ;
- aucun fallback ;
- criticite P0/P1 ;
- MIN-DID-PC dependant ;
- installation non reproductible ;
- licence inconnue ;
- etat cache ;
- son reconnaissable non voulu.

## 13. Decisions de sortie

DETTE-ACT-23 est absorbee.

Statuts retenus :

- packages Max : conditionnels, hors P0/P1, avec version/fallback ;
- externals tiers : reportes ou conditionnels forts ;
- plugins audio : reportes forts, optionnels seulement ;
- outils ML/machine listening : DIAG/SLOW/OFFLINE ;
- outils corpus : PREP/OFFLINE/SLOW ;
- outils spatialisation externes : conditionnels forts ;
- scripts/runtimes tiers : OFFLINE/DIAG seulement par defaut ;
- bibliotheques custom : reportees fortes.

Le groupe DETTE-ACT-6 des audits candidats lourds est maintenant complet sur les cinq familles :

1. supports structurels lourds / etats opaques ;
2. transformations lourdes spectral / granularite / modeles physiques ;
3. espace / empreinte / corpus / convolution / IR / playback prepare ;
4. opacite decisionnelle / ML / classification / Markov / grammaire / statistique ;
5. dependances externes / plugins / packages / bibliotheques.

La prochaine dette logique est :

```text
DETTE-ACT-24 - Audit coherence post audits candidats lourds avant implementation
```

La prochaine fiche a creer est :

```text
AUDIT_COHERENCE_POST_AUDITS_CANDIDATS_LOURDS_AVANT_IMPLEMENTATION_MAX_STANDALONE_VESPERARE_v0_1.md
```

Ce passage est autorise seulement apres mise a jour de l'index, du registre et de la matrice de preuve.
