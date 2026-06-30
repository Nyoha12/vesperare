# REGISTRE QUESTIONS VIVANTES ET DETTES ACTIVES VESPERARE v0.1

Projet : Vesperare
Date : 2026-06-24
Statut : registre court de reprise

Source directe :

```text
AUDIT_REPRISE_DETTE_DOCUMENTAIRE_ET_POINT_DE_REPRISE_VESPERARE_v0_1.md
```

But :

```text
garder les questions utiles sans les transformer en blocage general.
```

Regle :

```text
une question vivante n'autorise pas a refaire tout le corpus.
elle doit etre resolue seulement quand elle conditionne la fiche en cours.
```

## 1. Dettes documentaires et statut actuel

### DETTE-ACT-1 - Index / statut des anciennes fiches Max for Live / RNBO

Statut :

```text
absorbee comme correction structurelle ; reste garde-fou historique.
```

Decision :

```text
les fiches Max for Live / RNBO restent consultables comme historique,
comparaison ou trace.
elles ne sont plus normatives apres decision Max standalone.
```

Document de reference :

```text
DECISION_RUNTIME_MAX_STANDALONE_LATENCE_SANS_COMPROMIS_VESPERARE_v0_1.md
```

Moment de resolution :

```text
deja traite dans l'index actif.
a reconsulter seulement si une fiche future reutilise Max for Live, Ableton,
RNBO, Linux, embarque, host, session, routage ou portabilite.
```

### DETTE-ACT-2 - Transactions / releases / rollback

Statut :

```text
absorbee par specification transactions, audit transactions, audit coherence,
nomenclature, matrice correspondance, specification contraintes et audit
contraintes.
```

Question :

```text
comment une commande passe-t-elle de demande a etat actif,
puis a limitation, sortie, rollback, expiration, trace ou reprise ?
```

Contrainte :

```text
ne pas definir objets Max, UI, seuils ou patch final.
```

Moment de resolution :

```text
deja traite.
reste utile comme reference si une fiche future parle commande, release,
rollback, expiration, trace, reprise ou signalisation.
```

### DETTE-ACT-3 - Corrections OP a maintenir

Statut :

```text
absorbe comme dette bloquante ; actif comme garde-fou permanent.
```

Liste :

```text
OP-* = centres de responsabilite, pas patchers.
PATH-* = familles de flux, pas routages.
OP-LIVE-COMMAND = couche de commande, pas UI.
OP-STATE-HUB = synthese de lecture, pas etat magique.
OP-ANA-FAST informe, OP-DEC-FAST decide.
GEN-HAL reste matiere generative rattachee a GEN/HAL.
MIN-DID-PC reste ensemble de responsabilites minimales, pas accumulation.
Signalisation = information de jouabilite, pas UI finale.
Toute limitation P2 ou action P0/P1 sensible doit rester signalable.
```

Moment de resolution :

```text
traite dans les fiches transactions et contraintes.
a maintenir dans toute fiche ulterieure.
```

### DETTE-ACT-4 - Exclusions candidats par criticite

Statut :

```text
absorbee par la matrice d'exclusions et son audit.
reste reference avant tout objet final.
```

Question :

```text
quels objets, structures ou familles candidates sont autorises, interdits ou
conditionnels pour CRIT-0, CRIT-1, CRIT-2, CRIT-3 et CRIT-4 ?
```

Contrainte :

```text
ne pas transformer les exclusions en choix final.
ne pas ecrire de patch.
ne pas fixer routage, UI, seuils ou implementation.
```

Document de reference :

```text
MATRICE_EXCLUSIONS_CANDIDATS_PAR_CRITICITE_ET_LATENCE_MAX_STANDALONE_VESPERARE_v0_1.md
AUDIT_COMPATIBILITE_MATRICE_EXCLUSIONS_CANDIDATS_PAR_CRITICITE_ET_LATENCE_AVEC_CORPUS_v0_1.md
```

### DETTE-ACT-5 - Latence / scheduler / audio interrupt

Statut :

```text
absorbee par la specification latence / scheduler / vectors et son audit.
reste reference avant tout choix d'objets finaux sur chemins critiques.
```

Question :

```text
quelles dependances scheduler, overdrive, scheduler in audio interrupt, signal
vector, I/O vector, driver latency, diagnostics et objets de controle sont
acceptables ou interdits par criticite ?
```

Contrainte :

```text
utiliser seulement sources officielles ou primaires pour cadrer Max.
ne pas promettre de latence numerique non verifiee.
ne pas autoriser de compromis musical reel.
```

Document de reference :

```text
SPECIFICATION_LATENCE_SCHEDULER_VECTORS_AUDIO_SETTINGS_MAX_STANDALONE_VESPERARE_v0_1.md
AUDIT_COMPATIBILITE_SPECIFICATION_LATENCE_SCHEDULER_VECTORS_AUDIO_SETTINGS_AVEC_CORPUS_v0_1.md
```

### DETTE-ACT-6 - Audits individuels candidats lourds ou opaques

Statut :

```text
actif apres specification latence / scheduler / vectors.
bloquant avant matrice d'objets plus prescriptive.
```

Question :

```text
quels candidats doivent recevoir un audit individuel avant acceptation :
matrix~, send~/receive~, gen~, poly~, MC, buffer~/groove~, pattrstorage, js,
FFT/pfft, convolution, external/plugin ?
```

Contrainte :

```text
ne pas auditer par fascination technique.
auditer seulement quand un candidat devient necessaire pour une fonction
musicale, une criticite ou un chemin precis.
```

### DETTE-ACT-7 - Latence ressentie par fonction et chemin

Statut :

```text
absorbee par la matrice de latence ressentie et son audit.
reste reference avant profils de patch futurs.
```

Question :

```text
quelles fonctions exigent une latence ressentie quasi directe, lesquelles
acceptent une latence de commande live, lesquelles peuvent etre musicales non
directes, lesquelles appartiennent aux espaces/halos/freezes longs, et
lesquelles sont seulement diagnostiques ?
```

Contrainte :

```text
ne pas transformer cette classification en reglages finaux.
ne pas utiliser la latence acceptable d'une fonction lente pour affaiblir le
didgeridoo direct, le grave critique, la pression rythmique ou P0/P1.
```

### DETTE-ACT-8 - Arbitrage profil latence et priorisation audits

Statut :

```text
absorbee par l'arbitrage profil latence et son audit.
reste reference pour l'ordre des audits candidats.
```

Question :

```text
64 samples doit-il devenir profil conceptuel principal, 32 profil ambitieux,
128 profil de robustesse prudente, et quel groupe d'audits candidats doit
venir d'abord ?
```

Contrainte :

```text
l'arbitrage ne fixe aucun reglage final.
il ordonne seulement la conception et les audits futurs.
```

### DETTE-ACT-9 - Pre-audit candidats routage direct / safe / transitions

Statut :

```text
absorbee par le pre-audit candidat A et son audit.
reste reference pour l'audit candidat A.
```

Question :

```text
comment preparer l'audit de selector~, gate~, line~, curve~, matrix~,
send~/receive~, chemins direct/safe, transitions, fallback et routage cache
sans choisir d'objets finaux ?
```

Contrainte :

```text
ne pas transformer le pre-audit en patch.
ne pas declarer matrix~ ou send~/receive~ comme choix final.
```

### DETTE-ACT-10 - Audit candidat A routage direct / safe / transitions

Statut :

```text
absorbee par l'audit candidat A.
reste reference pour routage direct/safe/transitions.
```

Question :

```text
quels statuts candidats donner a selector~, gate~, line~, curve~, matrix~,
send~/receive~, routage MSP simple, transitions, fallback direct/safe et SIG,
sans choisir d'objets finaux ?
```

Contrainte :

```text
auditer les candidats par fonction, risque, criticite, LPER, fallback,
signalisation et rollback, pas par preference technique.
```

### DETTE-ACT-11 - Pre-audit candidat B commandes live / scheduler / signalisation

Statut :

```text
absorbee par le pre-audit candidat B, son audit de compatibilite et l'audit
candidat B.
reste reference pour commandes live, scheduler, signalisation et pattr hors
critique.
```

Question :

```text
comment preparer l'audit des commandes live, route/select/trigger/messages,
Overdrive, Scheduler in Audio Interrupt, SIG, pattr hors critique, sans UI
finale ni mapping ?
```

Contrainte :

```text
ne pas transformer les commandes en interface finale.
ne pas supposer que scheduler/overdrive garantissent la jouabilite.
```

Documents de reference :

```text
SPECIFICATION_PRE_AUDIT_CANDIDATS_COMMANDES_LIVE_SCHEDULER_SIGNALISATION_VESPERARE_v0_1.md
AUDIT_COMPATIBILITE_SPECIFICATION_PRE_AUDIT_CANDIDATS_COMMANDES_LIVE_SCHEDULER_SIGNALISATION_AVEC_CORPUS_v0_1.md
AUDIT_CANDIDATS_COMMANDES_LIVE_SCHEDULER_SIGNALISATION_MAX_STANDALONE_VESPERARE_v0_1.md
```

### DETTE-ACT-12 - Pre-audit candidat C generation rythmique / motifs / timing

Statut :

```text
absorbee par le pre-audit candidat C et son audit de compatibilite.
reste reference pour cadrer l'audit candidat C.
```

Question :

```text
comment preparer l'audit des candidats lies a la generation rythmique,
aux motifs, au timing generation, a l'interlocking, a l'acid naturalise,
a la voix fragmentaire, au jazz/Keita comme phenomenes retenus,
sans moteur final, algorithme final, UI, mapping ou patch ?
```

Contrainte :

```text
ne pas importer des styles entiers.
ne pas transformer jazz, Keita, acid, techno, voix ou sound system en etiquettes
generales.
ne caracteriser que les phenomenes retenus et leur fonction Vesperare.
ne pas choisir de moteur generation final.
ne pas compter sur des tests pour resoudre la conception.
```

Sous-questions directes :

```text
Q-C-1 : comment auditer la generation rythmique sans choisir de moteur final ?
Q-C-2 : comment traiter les motifs sans les laisser devenir autonomes,
lead banals ou signatures electroniques reconnaissables ?
Q-C-3 : comment articuler timing generation, scheduler et sensation rythmique
sans confondre precision technique et intention musicale ?
Q-C-4 : comment reprendre jazz, Keita, acid, voix, techno et sound system
comme phenomenes retenus, pas comme styles entiers ?
```

Documents de reference :

```text
SPECIFICATION_PRE_AUDIT_CANDIDATS_GENERATION_RYTHMIQUE_MOTIFS_TIMING_VESPERARE_v0_1.md
AUDIT_COMPATIBILITE_SPECIFICATION_PRE_AUDIT_CANDIDATS_GENERATION_RYTHMIQUE_MOTIFS_TIMING_AVEC_CORPUS_v0_1.md
```

### DETTE-ACT-13 - Audit candidat C generation rythmique / motifs / timing

Statut :

```text
absorbee par l'audit candidat C.
reste reference pour generation rythmique, motifs, timing, interlocking,
acid naturalise, voix fragmentaire, jazz/Keita comme methode, AUT/REC/SIG
et reports de candidats lourds.
```

Question :

```text
quels statuts candidats donner aux familles de base de temps, source-derived
triggers, representation de motifs, variation/probabilite, interlocking,
ligne/acid naturalisee, voix fragmentaire, jazz/Keita comme methode,
protections AUT/REC/SIG et candidats lourds reportables,
sans choisir de moteur final, algorithme final, UI, mapping ou patch ?
```

Contrainte :

```text
auditer par fonction musicale et criticite.
ne pas ouvrir gen~, poly~, MC, js, machine learning, buffers ou externals sans
necessite explicite.
ne pas importer un style entier.
ne pas confondre timing technique et timing musical.
ne pas utiliser des tests comme methode de resolution conceptuelle.
```

Document de reference :

```text
AUDIT_CANDIDATS_GENERATION_RYTHMIQUE_MOTIFS_TIMING_MAX_STANDALONE_VESPERARE_v0_1.md
```

### DETTE-ACT-14 - Pre-audit candidat D generation timbrale / naturalisation / transformations

Statut :

```text
absorbee par le pre-audit candidat D et son audit de compatibilite.
reste reference pour cadrer l'audit candidat D.
```

Question :

```text
comment preparer l'audit des candidats lies a la generation timbrale,
la naturalisation, les transformations source/timbre, textures, resonances,
grains, formants, bruit/friction, source-bonding et hybridations acoustiques,
sans moteur final, algorithme final, UI, mapping ou patch ?
```

Contrainte :

```text
ne pas transformer naturalisation en simple reverb.
ne pas choisir de synthese finale.
ne pas ouvrir FFT/pfft, convolution, corpus sonore, gen~, externals ou ML sans
necessite fonctionnelle precise.
garder la relation aux sources acoustiques, a PA-0/PA-X, au didgeridoo, a la
voix, au gong, au grave et a l'espace.
```

Documents de reference :

```text
SPECIFICATION_PRE_AUDIT_CANDIDATS_GENERATION_TIMBRALE_NATURALISATION_TRANSFORMATIONS_VESPERARE_v0_1.md
AUDIT_COMPATIBILITE_SPECIFICATION_PRE_AUDIT_CANDIDATS_GENERATION_TIMBRALE_NATURALISATION_TRANSFORMATIONS_AVEC_CORPUS_v0_1.md
```

### DETTE-ACT-15 - Audit candidat D generation timbrale / naturalisation / transformations

Statut :

```text
absorbe par audit candidat D.
```

Question :

```text
quels statuts candidats donner aux familles NAT, source-bonding, source-filter,
formants, friction/souffle, resonances/cavites, partiels/microtension,
metal/gong/bloom, peau/bois/membrane, texture/grain, saturation/rugosite,
halo-source, espace commun/proximite et candidats lourds reportables,
sans choisir synthese finale, moteur final, algorithme final, UI, mapping ou
patch ?
```

Contrainte :

```text
auditer par fonction musicale, source, NAT, criticite, latence, sortie et risque.
ne pas ouvrir FFT/pfft, convolution, corpus sonore, ML, gen~, externals,
plugins, modele physique detaille ou granularite complexe sans necessite
explicite.
ne pas confondre naturalisation et reverb.
ne pas laisser GEN-HAL decider HAL.
ne pas laisser PA-X surgir comme accident.
```

Documents de reference :

```text
SPECIFICATION_PRE_AUDIT_CANDIDATS_GENERATION_TIMBRALE_NATURALISATION_TRANSFORMATIONS_VESPERARE_v0_1.md
AUDIT_COMPATIBILITE_SPECIFICATION_PRE_AUDIT_CANDIDATS_GENERATION_TIMBRALE_NATURALISATION_TRANSFORMATIONS_AVEC_CORPUS_v0_1.md
AUDIT_CANDIDATS_GENERATION_TIMBRALE_NATURALISATION_TRANSFORMATIONS_MAX_STANDALONE_VESPERARE_v0_1.md
```

### DETTE-ACT-16 - Coherence post audits candidats A/B/C/D avant candidats lourds

Statut :

```text
absorbe par audit de coherence post A/B/C/D.
```

Question :

```text
les audits candidats A, B, C et D tiennent-ils ensemble sans conflit de
responsabilite, latence, source priority, NAT, HAL/SPC, grave, PA-X, SIG,
fallback, sorties, reports et autorites de decision ?
```

Contrainte :

```text
ne pas ouvrir directement gen~, pfft~, convolution, corpus, ML, externals,
plugins, moteur granulaire, modele physique detaille ou synthese finale.
verifier d'abord si A/B/C/D suffisent a cadrer les besoins et si les reports
restent coherents.
```

Documents de reference :

```text
AUDIT_CANDIDATS_ROUTAGE_DIRECT_SAFE_TRANSITIONS_MAX_STANDALONE_VESPERARE_v0_1.md
AUDIT_CANDIDATS_COMMANDES_LIVE_SCHEDULER_SIGNALISATION_MAX_STANDALONE_VESPERARE_v0_1.md
AUDIT_CANDIDATS_GENERATION_RYTHMIQUE_MOTIFS_TIMING_MAX_STANDALONE_VESPERARE_v0_1.md
AUDIT_CANDIDATS_GENERATION_TIMBRALE_NATURALISATION_TRANSFORMATIONS_MAX_STANDALONE_VESPERARE_v0_1.md
MATRICE_FONCTIONS_CRITICITE_LATENCE_CHEMINS_MAX_STANDALONE_VESPERARE_v0_1.md
MATRICE_EXCLUSIONS_CANDIDATS_PAR_CRITICITE_ET_LATENCE_MAX_STANDALONE_VESPERARE_v0_1.md
SPECIFICATION_TECHNIQUE_CONCEPTUELLE_REVERB_SPACE_HALO_FREEZE_RESONATEURS_CONVOLUTION_MAX_STANDALONE_VESPERARE_v0_1.md
SPECIFICATION_GRAVE_GONG_SUB_DIDGERIDOO_CONFLITS_ET_MODES_MAX_STANDALONE_VESPERARE_v0_1.md
AUDIT_COHERENCE_POST_AUDITS_CANDIDATS_A_B_C_D_AVANT_CANDIDATS_LOURDS_VESPERARE_v0_1.md
```

### DETTE-ACT-17 - Pre-audit cible candidats lourds / supports Max / moteurs opaques

Statut :

```text
absorbe par specification pre-audit cible DETTE-ACT-6.
```

Question :

```text
quels candidats lourds et supports opaques doivent vraiment etre conserves,
reportes, exclus ou soumis a audit individuel, en fonction des besoins
Vesperare deja cadrees par A/B/C/D ?
```

Contrainte :

```text
ne pas auditer un catalogue d'objets.
classer seulement les familles lourdes deja signalees par A/B/C/D :
gen~, pfft~/FFT, convolution, corpus, granularite complexe, modeles physiques,
ML/classification, externals/plugins, js/node/scripts, polyphonie, MC, buffers,
Markov/grammaire/statistique opaque et memoires/presets critiques.
```

Documents de reference :

```text
AUDIT_COHERENCE_POST_AUDITS_CANDIDATS_A_B_C_D_AVANT_CANDIDATS_LOURDS_VESPERARE_v0_1.md
AUDIT_CANDIDATS_ROUTAGE_DIRECT_SAFE_TRANSITIONS_MAX_STANDALONE_VESPERARE_v0_1.md
AUDIT_CANDIDATS_COMMANDES_LIVE_SCHEDULER_SIGNALISATION_MAX_STANDALONE_VESPERARE_v0_1.md
AUDIT_CANDIDATS_GENERATION_RYTHMIQUE_MOTIFS_TIMING_MAX_STANDALONE_VESPERARE_v0_1.md
AUDIT_CANDIDATS_GENERATION_TIMBRALE_NATURALISATION_TRANSFORMATIONS_MAX_STANDALONE_VESPERARE_v0_1.md
MATRICE_EXCLUSIONS_CANDIDATS_PAR_CRITICITE_ET_LATENCE_MAX_STANDALONE_VESPERARE_v0_1.md
MATRICE_FONCTIONS_CRITICITE_LATENCE_CHEMINS_MAX_STANDALONE_VESPERARE_v0_1.md
SPECIFICATION_PRE_AUDIT_CANDIDATS_LOURDS_SUPPORTS_MAX_MOTEURS_OPAQUES_VESPERARE_v0_1.md
```

### DETTE-ACT-18 - Audit compatibilite pre-audit candidats lourds / supports Max / moteurs opaques

Statut :

```text
absorbe par audit de compatibilite.
```

Question :

```text
le pre-audit DETTE-ACT-6 cadre-t-il correctement les candidats lourds sans
contredire A/B/C/D, latence sans compromis, source priority, SPC/HAL/REV,
grave/didgeridoo/gong, MIN-DID-PC et les exclusions de chemins critiques ?
```

Contrainte :

```text
ne pas choisir encore d'audit individuel lourd.
verifier d'abord que la taxonomie lourd/support/opaque est coherente avec le
corpus et qu'elle ne transforme pas DETTE-ACT-6 en catalogue technique.
```

Documents de reference :

```text
SPECIFICATION_PRE_AUDIT_CANDIDATS_LOURDS_SUPPORTS_MAX_MOTEURS_OPAQUES_VESPERARE_v0_1.md
AUDIT_COHERENCE_POST_AUDITS_CANDIDATS_A_B_C_D_AVANT_CANDIDATS_LOURDS_VESPERARE_v0_1.md
MATRICE_EXCLUSIONS_CANDIDATS_PAR_CRITICITE_ET_LATENCE_MAX_STANDALONE_VESPERARE_v0_1.md
MATRICE_FONCTIONS_CRITICITE_LATENCE_CHEMINS_MAX_STANDALONE_VESPERARE_v0_1.md
SPECIFICATION_LATENCE_SCHEDULER_VECTORS_AUDIO_SETTINGS_MAX_STANDALONE_VESPERARE_v0_1.md
AUDIT_COMPATIBILITE_SPECIFICATION_PRE_AUDIT_CANDIDATS_LOURDS_SUPPORTS_MAX_MOTEURS_OPAQUES_AVEC_CORPUS_v0_1.md
```

### DETTE-ACT-19 - Audit candidats supports structurels lourds / etats opaques

Statut :

```text
absorbe par audit candidats supports structurels lourds / etats opaques.
```

Question :

```text
quels statuts candidats donner a gen~ comme support audio-rate potentiel,
poly~, MC, buffers/playback, js/node/scripts et pattrstorage/presets critiques,
en tant que supports structurels et etats opaques, sans choisir moteur, synthese,
objet final, patch, UI ou mapping ?
```

Contrainte :

```text
auditer comme supports et risques d'etat/charge/latence, pas comme moteurs
sonores.
maintenir P0/P1 exclus par defaut.
exiger fallback MIN-DID-PC, sortie, release, SIG et absence d'autorite cachee.
```

Documents de reference :

```text
AUDIT_COMPATIBILITE_SPECIFICATION_PRE_AUDIT_CANDIDATS_LOURDS_SUPPORTS_MAX_MOTEURS_OPAQUES_AVEC_CORPUS_v0_1.md
SPECIFICATION_PRE_AUDIT_CANDIDATS_LOURDS_SUPPORTS_MAX_MOTEURS_OPAQUES_VESPERARE_v0_1.md
MATRICE_EXCLUSIONS_CANDIDATS_PAR_CRITICITE_ET_LATENCE_MAX_STANDALONE_VESPERARE_v0_1.md
MATRICE_ARCHITECTURE_MAX_STANDALONE_NIVEAU_6_ROLES_TECHNIQUES_CANDIDATS_CHEMINS_RISQUES_VESPERARE_v0_1.md
AUDIT_CANDIDATS_SUPPORTS_STRUCTURELS_LOURDS_ETATS_OPAQUES_MAX_STANDALONE_VESPERARE_v0_1.md
```

### DETTE-ACT-20 - Audit candidats transformations lourdes spectral / granularite / modeles physiques

Statut :

```text
absorbe par audit candidats transformations lourdes spectral / granularite /
modeles physiques.
```

Question :

```text
quels statuts candidats donner a pfft~/FFT/spectral, granularite complexe et
modeles physiques detailles, en tant que transformations lourdes et familles de
matiere, sans choisir moteur, synthese finale, objet final, patch, UI ou mapping ?
```

Contrainte :

```text
ne pas transformer ces familles en esthetique autonome.
maintenir NAT, source-bonding, sortie, fallback, SIG, chemins non critiques et
interdiction P0/P1 par defaut.
ne pas confondre transformation lourde, espace/corpus, halo ou moteur final.
```

Documents de reference :

```text
AUDIT_CANDIDATS_SUPPORTS_STRUCTURELS_LOURDS_ETATS_OPAQUES_MAX_STANDALONE_VESPERARE_v0_1.md
AUDIT_CANDIDATS_GENERATION_TIMBRALE_NATURALISATION_TRANSFORMATIONS_MAX_STANDALONE_VESPERARE_v0_1.md
SPECIFICATION_PRE_AUDIT_CANDIDATS_LOURDS_SUPPORTS_MAX_MOTEURS_OPAQUES_VESPERARE_v0_1.md
MATRICE_EXCLUSIONS_CANDIDATS_PAR_CRITICITE_ET_LATENCE_MAX_STANDALONE_VESPERARE_v0_1.md
AUDIT_CANDIDATS_TRANSFORMATIONS_LOURDES_SPECTRAL_GRANULARITE_MODELES_PHYSIQUES_MAX_STANDALONE_VESPERARE_v0_1.md
```

### DETTE-ACT-21 - Audit candidats espace / empreinte / corpus / convolution / IR / playback prepare

Statut :

```text
absorbe par audit candidats espace / empreinte / corpus / convolution / IR /
playback prepare.
```

Question :

```text
quels statuts candidats donner a convolution, IR, corpus sonore, playback
prepare et empreintes de salle/source, en lien avec SPC/HAL/REV, naturalisation,
reverb, mesure de salle et dependance fichier, sans choisir moteur, objet final,
patch, UI ou mapping ?
```

Contrainte :

```text
ne pas transformer convolution en reverb automatique.
ne pas transformer corpus/playback en banque sonore cachee.
ne pas court-circuiter SPC/HAL/REV.
maintenir fallback, sortie, owner, SIG, preparation hors critique et MIN-DID-PC.
```

Documents de reference :

```text
AUDIT_CANDIDATS_TRANSFORMATIONS_LOURDES_SPECTRAL_GRANULARITE_MODELES_PHYSIQUES_MAX_STANDALONE_VESPERARE_v0_1.md
SPECIFICATION_TECHNIQUE_CONCEPTUELLE_REVERB_SPACE_HALO_FREEZE_RESONATEURS_CONVOLUTION_MAX_STANDALONE_VESPERARE_v0_1.md
AUDIT_CANDIDATS_GENERATION_TIMBRALE_NATURALISATION_TRANSFORMATIONS_MAX_STANDALONE_VESPERARE_v0_1.md
SPECIFICATION_PRE_AUDIT_CANDIDATS_LOURDS_SUPPORTS_MAX_MOTEURS_OPAQUES_VESPERARE_v0_1.md
AUDIT_CANDIDATS_ESPACE_EMPREINTE_CORPUS_CONVOLUTION_IR_PLAYBACK_PREPARE_MAX_STANDALONE_VESPERARE_v0_1.md
```

### DETTE-ACT-22 - Audit candidats opacite decisionnelle / ML / classification / Markov / grammaire / statistique

Statut :

```text
absorbe par audit candidats opacite decisionnelle / ML / classification /
Markov / grammaire / statistique.
```

Question :

```text
quels statuts candidats donner aux familles ML, classification, indices
probabilistes, Markov, grammaires, statistiques et systemes decisionnels
opaques, sans leur donner d'autorite musicale cachee, sans choisir algorithme,
objet final, patch, UI ou mapping ?
```

Contrainte :

```text
ne pas utiliser ML ou statistiques comme compositeur automatique.
ne pas laisser un modele opaque decider scene, source, direct/safe, protection,
grave, halo, reverb ou transgression.
maintenir owner, confiance, fallback, sortie, SIG, chemins hors critique et
controle live explicite.
ne pas transformer des inspirations stylistiques en modeles generatifs caches.
ne pas rendre MIN-DID-PC dependant d'un modele, corpus ou apprentissage.
```

Documents de reference :

```text
AUDIT_CANDIDATS_ESPACE_EMPREINTE_CORPUS_CONVOLUTION_IR_PLAYBACK_PREPARE_MAX_STANDALONE_VESPERARE_v0_1.md
SPECIFICATION_ANALYSES_INDICES_CONCEPTUELS_ET_CONFIANCE_v0_1.md
SPECIFICATION_SYSTEME_DECISIONNEL_CONCEPTUEL_VESPERARE_v0_1.md
AUDIT_COMPATIBILITE_SYSTEME_DECISIONNEL_AVEC_CORPUS_v0_1.md
SPECIFICATION_PRE_AUDIT_CANDIDATS_LOURDS_SUPPORTS_MAX_MOTEURS_OPAQUES_VESPERARE_v0_1.md
AUDIT_CANDIDATS_OPACITE_DECISIONNELLE_ML_CLASSIFICATION_MARKOV_GRAMMAIRE_STATISTIQUE_MAX_STANDALONE_VESPERARE_v0_1.md
```

### DETTE-ACT-23 - Audit dependances externes / plugins / packages / bibliotheques

Statut :

```text
absorbe par audit candidats dependances externes / plugins / packages /
bibliotheques.
```

Question :

```text
quelles dependances externes, plugins, packages Max, bibliotheques ou outils
non natifs peuvent etre autorises, reportes ou refuses selon installation,
licence, maintenance, stabilite, latence, charge, portabilite, fallback natif
et necessite musicale ?
```

Contrainte :

```text
ne pas ajouter une dependance par confort ou fascination technique.
ne pas rendre MIN-DID-PC dependant d'un plugin, external, package ou outil
externe.
ne pas mettre P0/P1, direct/safe, grave critique ou protections essentielles
sous dependance externe.
exiger fallback natif, role musical clair, mode degrade sans compromis musical,
et audit de maintenance.
```

Documents de reference :

```text
AUDIT_CANDIDATS_OPACITE_DECISIONNELLE_ML_CLASSIFICATION_MARKOV_GRAMMAIRE_STATISTIQUE_MAX_STANDALONE_VESPERARE_v0_1.md
SPECIFICATION_PRE_AUDIT_CANDIDATS_LOURDS_SUPPORTS_MAX_MOTEURS_OPAQUES_VESPERARE_v0_1.md
AUDIT_CANDIDATS_SUPPORTS_STRUCTURELS_LOURDS_ETATS_OPAQUES_MAX_STANDALONE_VESPERARE_v0_1.md
AUDIT_CANDIDATS_ESPACE_EMPREINTE_CORPUS_CONVOLUTION_IR_PLAYBACK_PREPARE_MAX_STANDALONE_VESPERARE_v0_1.md
AUDIT_CANDIDATS_DEPENDANCES_EXTERNES_PLUGINS_PACKAGES_BIBLIOTHEQUES_MAX_STANDALONE_VESPERARE_v0_1.md
```

### DETTE-ACT-24 - Audit coherence post audits candidats lourds avant implementation

Statut :

```text
absorbe par audit coherence post audits candidats lourds avant implementation.
```

Question :

```text
les cinq audits candidats lourds DETTE-ACT-6 sont-ils coherents entre eux,
compatibles avec Max standalone sans compromis musical, et sans trou dans
P0/P1, MIN-DID-PC, direct/safe, grave, espace, halo, generation, opacite et
dependances externes ?
```

Contrainte :

```text
ne pas transformer l'audit de coherence en implementation.
ne pas choisir d'objet final.
verifier seulement les conflits, doublons, lacunes, autorites cachees,
dependances critiques, chemins de latence et besoins de report explicite.
```

Documents de reference :

```text
AUDIT_CANDIDATS_SUPPORTS_STRUCTURELS_LOURDS_ETATS_OPAQUES_MAX_STANDALONE_VESPERARE_v0_1.md
AUDIT_CANDIDATS_TRANSFORMATIONS_LOURDES_SPECTRAL_GRANULARITE_MODELES_PHYSIQUES_MAX_STANDALONE_VESPERARE_v0_1.md
AUDIT_CANDIDATS_ESPACE_EMPREINTE_CORPUS_CONVOLUTION_IR_PLAYBACK_PREPARE_MAX_STANDALONE_VESPERARE_v0_1.md
AUDIT_CANDIDATS_OPACITE_DECISIONNELLE_ML_CLASSIFICATION_MARKOV_GRAMMAIRE_STATISTIQUE_MAX_STANDALONE_VESPERARE_v0_1.md
AUDIT_CANDIDATS_DEPENDANCES_EXTERNES_PLUGINS_PACKAGES_BIBLIOTHEQUES_MAX_STANDALONE_VESPERARE_v0_1.md
AUDIT_COHERENCE_POST_AUDITS_CANDIDATS_LOURDS_AVANT_IMPLEMENTATION_MAX_STANDALONE_VESPERARE_v0_1.md
```

### DETTE-ACT-25 - Matrice synthese statuts candidats lourds / contraintes avant implementation

Statut :

```text
absorbe par matrice synthese statuts candidats lourds / contraintes.
```

Question :

```text
comment consolider en une seule matrice les statuts, chemins, interdits,
conditions, fallbacks, SIG, reports et documents sources des candidats lourds
audites, pour eviter que les prochains choix Max reinterpretent les audits ?
```

Contrainte :

```text
ne pas transformer la matrice en architecture finale.
ne pas choisir d'objet final.
ne pas reduire les conditions musicales a une simple liste technique.
chaque ligne doit garder fonction musicale, criticite interdite, fallback et
document source.
```

Documents de reference :

```text
AUDIT_COHERENCE_POST_AUDITS_CANDIDATS_LOURDS_AVANT_IMPLEMENTATION_MAX_STANDALONE_VESPERARE_v0_1.md
AUDIT_CANDIDATS_SUPPORTS_STRUCTURELS_LOURDS_ETATS_OPAQUES_MAX_STANDALONE_VESPERARE_v0_1.md
AUDIT_CANDIDATS_TRANSFORMATIONS_LOURDES_SPECTRAL_GRANULARITE_MODELES_PHYSIQUES_MAX_STANDALONE_VESPERARE_v0_1.md
AUDIT_CANDIDATS_ESPACE_EMPREINTE_CORPUS_CONVOLUTION_IR_PLAYBACK_PREPARE_MAX_STANDALONE_VESPERARE_v0_1.md
AUDIT_CANDIDATS_OPACITE_DECISIONNELLE_ML_CLASSIFICATION_MARKOV_GRAMMAIRE_STATISTIQUE_MAX_STANDALONE_VESPERARE_v0_1.md
AUDIT_CANDIDATS_DEPENDANCES_EXTERNES_PLUGINS_PACKAGES_BIBLIOTHEQUES_MAX_STANDALONE_VESPERARE_v0_1.md
MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md
```

### DETTE-ACT-26 - Audit compatibilite matrice synthese candidats lourds avec audits sources

Statut :

```text
absorbe par audit compatibilite matrice synthese candidats lourds avec audits
sources.
```

Question :

```text
la matrice synthese reprend-elle correctement les cinq audits candidats lourds
et l'audit de coherence, sans omission, simplification dangereuse,
sur-autorisation, oubli de fallback, oubli de SIG ou perte de contexte musical ?
```

Contrainte :

```text
ne pas transformer cet audit en nouvelle specification technique.
verifier les correspondances et les risques de perte.
si une incoherence est trouvee, corriger la matrice avant toute suite.
```

Documents de reference :

```text
MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md
AUDIT_COHERENCE_POST_AUDITS_CANDIDATS_LOURDS_AVANT_IMPLEMENTATION_MAX_STANDALONE_VESPERARE_v0_1.md
AUDIT_CANDIDATS_SUPPORTS_STRUCTURELS_LOURDS_ETATS_OPAQUES_MAX_STANDALONE_VESPERARE_v0_1.md
AUDIT_CANDIDATS_TRANSFORMATIONS_LOURDES_SPECTRAL_GRANULARITE_MODELES_PHYSIQUES_MAX_STANDALONE_VESPERARE_v0_1.md
AUDIT_CANDIDATS_ESPACE_EMPREINTE_CORPUS_CONVOLUTION_IR_PLAYBACK_PREPARE_MAX_STANDALONE_VESPERARE_v0_1.md
AUDIT_CANDIDATS_OPACITE_DECISIONNELLE_ML_CLASSIFICATION_MARKOV_GRAMMAIRE_STATISTIQUE_MAX_STANDALONE_VESPERARE_v0_1.md
AUDIT_CANDIDATS_DEPENDANCES_EXTERNES_PLUGINS_PACKAGES_BIBLIOTHEQUES_MAX_STANDALONE_VESPERARE_v0_1.md
AUDIT_COMPATIBILITE_MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_AVEC_AUDITS_SOURCES_VESPERARE_v0_1.md
```

### DETTE-ACT-27 - Audit impact reprise candidats lourds sur documents ulterieurs existants

Statut :

```text
absorbe par audit impact reprise candidats lourds sur documents ulterieurs
existants.
```

Question :

```text
quels documents deja existants deviennent incompatibles, archives, a relire ou
a reprendre apres la consolidation des candidats lourds, notamment les
documents de traduction Max, matrices d'exclusion, contraintes, objets
candidats et architectures plus concretes ?
```

Contrainte :

```text
ne pas modifier massivement sans diagnostic.
classer d'abord les documents : compatibles, historiques, a auditer, a reprendre.
ne pas passer en implementation.
```

Documents de reference :

```text
AUDIT_COMPATIBILITE_MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_AVEC_AUDITS_SOURCES_VESPERARE_v0_1.md
MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md
INDEX_ACTIF_VESPERARE_CONCEPTION.md
MATRICE_PREUVE_VERIFICATION_DETTES_AVANT_REPRISE_VESPERARE_v0_1.md
AUDIT_IMPACT_REPRISE_CANDIDATS_LOURDS_SUR_DOCUMENTS_ULTERIEURS_EXISTANTS_VESPERARE_v0_1.md
```

### DETTE-ACT-28 - Audit compatibilite niveau 5 objets Max candidats avec matrice synthese candidats lourds

Statut :

```text
actif bloquant avant reprise niveau 6, exclusions, contraintes de traduction ou
implementation.
```

Question :

```text
la specification niveau 5 objets Max candidats non definitifs reste-t-elle
compatible avec la matrice synthese candidats lourds, notamment pour gen~,
poly~, MC, buffer/playback, js, pattrstorage, pfft, convolution, plugins,
MIN-DID-PC, direct/safe, fallback et SIG ?
```

Contrainte :

```text
ne pas transformer niveau 5 en choix final.
si une sur-autorisation est trouvee, corriger par addendum ou reprise ciblee.
ne pas passer au niveau 6 avant resolution.
```

Documents de reference :

```text
AUDIT_IMPACT_REPRISE_CANDIDATS_LOURDS_SUR_DOCUMENTS_ULTERIEURS_EXISTANTS_VESPERARE_v0_1.md
MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md
SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_VESPERARE_v0_1.md
```

## 2. Questions vivantes prioritaires

### QV-1 - Signalisation supportable en live

Question :

```text
quelle granularite de signalisation reste jouable en club ?
```

Statut :

```text
non bloquant maintenant.
```

Moment utile :

```text
avant UI, controleur, vues performer ou mappings physiques.
```

### QV-2 - Controles P2 immediats en setup didgeridoo seul

Question :

```text
quels choix live explicites doivent rester immediats avec seulement didgeridoo + PC ?
```

Candidats :

```text
mode DID ;
mode grave ;
generation simple ;
halo ;
retour ;
transgression ;
safe/direct ;
signalisation critique.
```

Statut :

```text
utile pour transactions et noyau minimum,
mais pas a resoudre par interface finale maintenant.
```

### QV-3 - Nuances des graves libres

Question :

```text
faut-il un mode unique "graves libres" ou plusieurs nuances :
sub libre, grave spatial libre, bloom libre, conflit accepte ?
```

Statut :

```text
non bloquant pour architecture operationnelle,
utile pour transactions grave et futures pages live.
```

### QV-4 - Halo lock global ou local

Question :

```text
le maintien anti-retrait du halo doit-il etre global,
par monde spatial, par source, par scene ou par fonction ?
```

Statut :

```text
utile pour releases HAL/SPC/GEN-HAL.
```

### QV-5 - Autonomie excessive d'un motif

Question :

```text
quel symptome indique qu'un motif devient trop autonome ?
```

Indices possibles :

```text
il continue sans fonction ;
il ignore scene/source ;
il attire l'ecoute comme lead banal ;
il remplace le geste live ;
il devient hook non voulu ;
il perd naturalisation ;
il devient signature electronique reconnaissable.
```

Statut :

```text
utile pour transactions GEN, releases GEN et future signalisation.
```

### QV-6 - Salle reelle : exploitation ou prudence

Question :

```text
quand une salle semble enrichissante mais mal connue,
qu'est-ce qui reste permis ?
```

Default provisoire :

```text
exploiter comme information lente, non comme autorite de correction absolue.
ne pas conditionner le chemin direct.
```

Statut :

```text
non bloquant avant calibration et mesure reelle.
```

### QV-7 - Signaux pendant transgression

Question :

```text
pendant une transgression, quels signaux doivent rester visibles :
P1, sortie, source protegee, risque accepte, retour possible ?
```

Statut :

```text
utile pour transactions, rollback et signalisation.
```

### QV-8 - Jazz / Keita Ogawa avant traduction algorithmique

Question :

```text
quel niveau de detail est necessaire pour que jazz / Keita / interlocking
ne deviennent pas des abstractions GEN trop vagues ?
```

Garde-fou :

```text
ne pas caracteriser tout le style.
garder seulement les phenomenes retenus :
polytexture, interlocking, tension/resolution, ponctuation,
micro-instabilite, raffinement d'attaque, densite corporelle.
```

Statut :

```text
surveillance permanente.
devient bloquant seulement avant traduction algorithmique de ces roles.
```

### QV-9 - Releases espace / halo / freeze

Question :

```text
quels etats SPC/HAL/FRZ doivent avoir release, expiration, rollback ou trace ?
```

Statut :

```text
principe traite par transactions et matrices suivantes.
a consulter si la fiche latence / scheduler / vectors touche espace, halo,
freeze ou diagnostics de release.
```

### QV-10 - GEN-HAL : sous-famille ou owner autonome

Question :

```text
GEN-HAL reste-t-il matiere generative sous GEN/HAL,
ou devient-il un owner autonome plus tard ?
```

Default actuel :

```text
GEN-HAL reste matiere generative rattachee a GEN/HAL.
pas d'owner autonome sans audit dedie.
```

Statut :

```text
actif pour transactions.
```

### QV-11 - MIN-DID-PC sans accumulation

Question :

```text
comment garder le setup minimum complet sans le transformer en accumulation
de modules obligatoires ?
```

Default actuel :

```text
les centres sont des responsabilites minimales regroupables,
pas des modules imposes un par un.
```

Statut :

```text
actif pour architecture plus concrete et futur schema MIN-DID-PC.
```

## 3. Questions anciennes considerees absorbees

Ces questions ne sont pas effacees, mais ne bloquent pas la suite :

```text
generation melodique : absorbee au niveau artistique par generation, GEN-ROLE,
scenes et controles ; deja reprise au niveau candidats techniques dans C ;
reste a surveiller si Markov, grammaire ou ML propose une autonomie cachee.
motifs rythmiques : absorbes au niveau artistique par generation,
Keita/interlocking, techno et scenes ; deja repris au niveau candidats
techniques dans C ; restent a surveiller si statistiques ou grammaires
deviennent pilotes opaques.
sons naturalises vs electroniques : absorbe par PA-0 a PA-4 / PA-X.
configurations cumulables : absorbe par scenes, couches, commandes et packets.
reverb/espace : absorbe par REVERBS_ESPACE_REACTIF_v0_2 et specs Max standalone.
didgeridoo/sub/gong grave : absorbe par specification dediee grave/gong/sub/didgeridoo.
latence comme enjeu : absorbe par decision Max standalone et matrice LAT.
```

## 4. Prochaine utilisation du registre

Avant de creer une fiche :

```text
1. lire la fiche precedente ;
2. lire son audit ;
3. consulter ce registre ;
4. ne traiter que les questions qui conditionnent vraiment la fiche ;
5. reporter explicitement le reste sans le transformer en decision cachee.
```

Pour le prochain audit compatibilite niveau 5 objets Max candidats avec matrice synthese candidats lourds,
questions a prendre directement :

```text
DETTE-ACT-28 ;
DETTE-ACT-6 comme dette mere des audits lourds ;
DETTE-ACT-3 comme garde-fou ;
QV-2 pour setup didgeridoo + PC ;
QV-7 pour transgression et signalisation ;
QV-9 pour releases espace / halo / freeze ;
QV-10 pour GEN-HAL sous-famille ou owner autonome ;
QV-11 pour MIN-DID-PC.
DETTE-ACT-27 comme audit impact documents ulterieurs deja absorbe.
DETTE-ACT-26 comme audit compatibilite matrice synthese deja absorbe.
DETTE-ACT-25 comme matrice synthese candidats lourds deja absorbee.
DETTE-ACT-24 comme audit coherence post candidats lourds deja absorbe.
DETTE-ACT-23 comme audit dependances externes deja absorbe.
DETTE-ACT-22 comme audit opacite decisionnelle deja absorbe.
DETTE-ACT-21 comme audit espace / empreinte / corpus deja absorbe.
DETTE-ACT-20 comme audit transformations lourdes deja absorbe.
DETTE-ACT-19 comme audit supports structurels deja absorbe.
DETTE-ACT-18 comme audit compatibilite pre-audit lourd deja absorbe.
DETTE-ACT-17 comme pre-audit lourd deja cree.
DETTE-ACT-16 comme audit coherence A/B/C/D deja absorbe.
DETTE-ACT-15 comme audit D deja absorbe.
DETTE-ACT-14 comme cadrage pre-audit deja valide.
```
