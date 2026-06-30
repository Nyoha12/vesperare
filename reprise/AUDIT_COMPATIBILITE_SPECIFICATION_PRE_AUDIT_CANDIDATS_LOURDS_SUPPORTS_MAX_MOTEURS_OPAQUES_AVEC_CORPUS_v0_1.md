# AUDIT COMPATIBILITE SPECIFICATION PRE-AUDIT CANDIDATS LOURDS SUPPORTS MAX MOTEURS OPAQUES AVEC CORPUS v0.1

Projet : Vesperare
Date : 2026-06-24
Statut : audit compatibilite, non-implementation

Fiche auditee :

- `SPECIFICATION_PRE_AUDIT_CANDIDATS_LOURDS_SUPPORTS_MAX_MOTEURS_OPAQUES_VESPERARE_v0_1.md`

Corpus de verification :

- `AUDIT_COHERENCE_POST_AUDITS_CANDIDATS_A_B_C_D_AVANT_CANDIDATS_LOURDS_VESPERARE_v0_1.md`
- `AUDIT_CANDIDATS_ROUTAGE_DIRECT_SAFE_TRANSITIONS_MAX_STANDALONE_VESPERARE_v0_1.md`
- `AUDIT_CANDIDATS_COMMANDES_LIVE_SCHEDULER_SIGNALISATION_MAX_STANDALONE_VESPERARE_v0_1.md`
- `AUDIT_CANDIDATS_GENERATION_RYTHMIQUE_MOTIFS_TIMING_MAX_STANDALONE_VESPERARE_v0_1.md`
- `AUDIT_CANDIDATS_GENERATION_TIMBRALE_NATURALISATION_TRANSFORMATIONS_MAX_STANDALONE_VESPERARE_v0_1.md`
- `MATRICE_EXCLUSIONS_CANDIDATS_PAR_CRITICITE_ET_LATENCE_MAX_STANDALONE_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_MATRICE_EXCLUSIONS_CANDIDATS_PAR_CRITICITE_ET_LATENCE_AVEC_CORPUS_v0_1.md`
- `MATRICE_FONCTIONS_CRITICITE_LATENCE_CHEMINS_MAX_STANDALONE_VESPERARE_v0_1.md`
- `SPECIFICATION_LATENCE_SCHEDULER_VECTORS_AUDIO_SETTINGS_MAX_STANDALONE_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_SPECIFICATION_LATENCE_SCHEDULER_VECTORS_AUDIO_SETTINGS_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_TECHNIQUE_CONCEPTUELLE_REVERB_SPACE_HALO_FREEZE_RESONATEURS_CONVOLUTION_MAX_STANDALONE_VESPERARE_v0_1.md`
- `SPECIFICATION_GRAVE_GONG_SUB_DIDGERIDOO_CONFLITS_ET_MODES_MAX_STANDALONE_VESPERARE_v0_1.md`
- `REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`

But :

```text
verifier que le pre-audit DETTE-ACT-6 cadre correctement les candidats lourds,
supports Max et moteurs opaques sans devenir catalogue technique, sans choisir
de moteur final, sans contredire A/B/C/D, sans affaiblir la latence comme enjeu
musical et sans compromettre MIN-DID-PC.
```

Hors perimetre :

```text
audit individuel gen~ ;
audit individuel pfft~ ;
audit individuel convolution ;
audit individuel corpus ;
audit individuel ML ;
audit individuel externals/plugins ;
choix final de moteur ;
choix final d'objet Max ;
patch ;
UI ;
mapping ;
benchmark ;
implementation.
```

---

## 1. Verdict general

Verdict :

```text
compatible avec le corpus actif.
```

Decision :

```text
le pre-audit lourd peut etre conserve comme cadrage de DETTE-ACT-6.
il n'autorise pas encore d'audit individuel complet de chaque technologie.
il autorise une prochaine fiche ciblee sur les supports structurels lourds et
les etats opaques qui peuvent affecter les chemins critiques ou la lisibilite
du systeme.
```

Raison :

```text
le document classe les candidats lourds par fonction, criticite, latence,
opacite, dependance et fallback.
il maintient A/B/C/D comme socle.
il exclut les familles lourdes de P0/P1 par defaut.
il refuse l'ouverture par curiosite technique.
```

Correction obligatoire :

```text
aucune.
```

Clarification obligatoire pour la suite :

```text
la premiere suite ne doit pas etre un audit de synthese sonore.
elle doit auditer les supports structurels lourds et etats opaques qui
conditionnent ensuite les autres audits : gen~, poly~, MC, buffers/playback,
js/node/scripts et pattrstorage/presets critiques.
```

---

## 2. Compatibilite avec A/B/C/D

### 2.1. Compatibilite avec A - routage direct/safe

Verdict :

```text
compatible.
```

Preuve :

```text
le pre-audit exclut par defaut les candidats lourds de CRIT-0 et CRIT-1.
il conserve fallback direct, safe, source directe et chemin critique hors
dependance lourde.
```

Risque residuel :

```text
un support lourd comme gen~, buffer, poly~ ou MC pourrait etre lu plus tard
comme optimisation du direct.
```

Traitement :

```text
la prochaine fiche devra maintenir : aucun support lourd ne conditionne direct
ou safe sans audit individuel dedie et fallback local.
```

### 2.2. Compatibilite avec B - commandes live / scheduler / SIG

Verdict :

```text
compatible.
```

Preuve :

```text
le pre-audit traite scripts, pattrstorage, presets, diagnostics, scheduler et
etats opaques comme hors critique ou a auditer.
il exige sortie, release, rollback si necessaire et SIG.
```

Risque residuel :

```text
script, pattrstorage ou preset peut devenir autorite cachee de scene.
```

Traitement :

```text
auditer d'abord ces supports comme etats opaques avant de les utiliser dans un
moteur generation, espace ou scene.
```

### 2.3. Compatibilite avec C - generation rythmique / motifs / timing

Verdict :

```text
compatible.
```

Preuve :

```text
le pre-audit reprend Markov/grammaire/statistique, buffers, polyphonie,
scripts et moteurs lourds comme candidats conditionnels, jamais comme moteurs
generation finals.
il maintient AUT/REC et fonction musicale.
```

Risque residuel :

```text
un moteur de variation opaque pourrait produire forme ou motif sans fonction.
```

Traitement :

```text
Markov/grammaire/statistique doivent rester apres supports structurels et
apres clarification AUT/REC.
```

### 2.4. Compatibilite avec D - timbre / naturalisation / transformations

Verdict :

```text
compatible.
```

Preuve :

```text
le pre-audit ne transforme pas pfft~, convolution, granularite, modeles
physiques, corpus ou ML en solutions par defaut.
il exige fonction Vesperare, alternative simple comparee, fallback et sortie.
```

Risque residuel :

```text
la granularite, la convolution ou le spectral peuvent redevenir des esthetiques
par elles-memes.
```

Traitement :

```text
les audits de transformations lourdes doivent venir apres les supports
structurels et rester relies a NAT/source/fonction.
```

---

## 3. Compatibilite avec latence et non-compromis

Verdict :

```text
compatible.
```

Conforme :

```text
le pre-audit refuse de transformer CPU, charge, latence ou complexite en
appauvrissement artistique.
si une famille est lourde, elle doit changer de chemin, etre preparee,
precalculee, reportee, separee du direct ou signalee.
```

Conforme aussi :

```text
CRIT-0 et CRIT-1 excluent par defaut :
gen~ non audite ;
pfft~/FFT ;
convolution ;
corpus ;
granularite complexe ;
ML ;
externals/plugins ;
js/node ;
poly~ ;
MC ;
buffer comme source indispensable ;
pattrstorage ;
Markov/grammaire/statistique.
```

Risque residuel :

```text
le mot "pre-auditable" pourrait etre lu comme "a utiliser bientot".
```

Traitement :

```text
pre-auditable signifie seulement : peut recevoir une fiche si une fonction
Vesperare precise l'exige.
```

---

## 4. Compatibilite avec MIN-DID-PC

Verdict :

```text
compatible.
```

Preuve :

```text
le pre-audit confirme que MIN-DID-PC ne depend pas de dict, coll, text, js,
pattrstorage, poly~, MC, gen~, FFT/pfft, convolution, reverb longue, freeze,
mesure salle, UI complexe, external/plugin ou transport global.
```

Risque residuel :

```text
les candidats lourds pourraient devenir indirectement obligatoires si la
generation simple est mal definie.
```

Traitement :

```text
les audits individuels devront declarer fallback MIN-DID-PC et mode off.
```

---

## 5. Compatibilite avec SPC/HAL/REV

Verdict :

```text
compatible.
```

Preuve :

```text
le pre-audit place convolution, IR, corpus, freeze, granularite et spectral dans
des chemins SPC/SLOW/HAL/OFFLINE ou GEN conditionnels.
il ne laisse pas D ou un moteur lourd decider HAL.
```

Risque residuel :

```text
convolution ou pfft~ peuvent contourner les decisions HAL/SPC si traites comme
effets autonomes.
```

Traitement :

```text
les audits individuels devront declarer owner : GEN, SPC, HAL, REV ou DIAG.
aucun candidat lourd ne doit produire un halo, freeze ou espace force sans
packet HAL/SPC/REV et sortie.
```

---

## 6. Compatibilite avec grave / didgeridoo / gong

Verdict :

```text
compatible.
```

Preuve :

```text
le pre-audit impose source priority, fallback simple et exclusion des candidats
lourds comme conditions directes de source ou grave critique.
```

Risque residuel :

```text
modeles physiques, resonateurs, convolution, buffers ou pfft~ peuvent deplacer
le role du grave, du gong ou du didgeridoo sans mode explicite.
```

Traitement :

```text
tout audit lourd lie au grave doit pointer vers les modes grave :
didgeridoo guide ;
grave soutien ;
didgeridoo adapte ;
grave retire ;
graves libres.
```

---

## 7. Compatibilite avec dependances runtime

Verdict :

```text
compatible.
```

Preuve :

```text
externals/plugins sont reportes comme dependance forte.
js/node/scripts sont hors critique.
pattrstorage/presets critiques sont reportes comme etats opaques.
le runtime principal reste Max/MSP standalone.
```

Risque residuel :

```text
une future capacite externe pourrait etre jugee indispensable trop tot.
```

Traitement :

```text
externals/plugins doivent rester dernier groupe, apres verification que les
capacites natives ou architectures simples ne suffisent pas.
```

---

## 8. Evaluation des questions du pre-audit

### 8.1. Q-HEAVY-PRE-1 - DETTE-ACT-6 doit-elle rester dette mere ?

Verdict :

```text
oui.
```

Decision :

```text
DETTE-ACT-6 reste la dette mere des audits individuels lourds.
DETTE-ACT-17 et DETTE-ACT-18 servent seulement a la cadrer.
```

### 8.2. Q-HEAVY-PRE-2 - ouvrir un audit individuel immediat ?

Verdict :

```text
oui, mais seulement apres cet audit de compatibilite et seulement sur le
premier groupe fonctionnel.
```

Decision :

```text
la suite logique est l'audit des supports structurels lourds et etats opaques,
pas un audit de synthese sonore ou de transformation.
```

### 8.3. Q-HEAVY-PRE-3 - risque de trop reporter

Verdict :

```text
risque reconnu et cadre.
```

Decision :

```text
les reports restent acceptables s'ils sont lies a fonction, criticite, chemin
et niveau d'audit.
```

### 8.4. Q-HEAVY-PRE-4 - candidats simples suffisants ?

Verdict :

```text
oui pour cadrer la conception.
non necessairement pour implementation future.
```

Decision :

```text
certains candidats lourds seront probablement utiles plus tard, mais seulement
apres un audit par groupe fonctionnel.
```

---

## 9. Ordre de suite valide

Ordre valide apres cet audit :

```text
1. audit supports structurels lourds / etats opaques :
   gen~ comme support audio-rate potentiel ;
   poly~ ;
   MC ;
   buffers/playback ;
   js/node/scripts ;
   pattrstorage/presets critiques.

2. audit transformations lourdes :
   pfft~/FFT ;
   granularite complexe ;
   modeles physiques detailles.

3. audit espace / empreinte / corpus :
   convolution ;
   IR ;
   corpus sonore ;
   playback prepare.

4. audit opacite decisionnelle :
   ML/classification ;
   Markov/grammaire/statistique.

5. audit dependances externes :
   externals/plugins.
```

Restriction :

```text
l'ordre peut etre ajuste si une fonction Vesperare exige une exception, mais
une exception doit etre documentee.
```

---

## 10. Decision de sortie

Verdict :

```text
DETTE-ACT-18 peut etre consideree comme absorbee par cet audit.
```

Autorise ensuite :

```text
AUDIT_CANDIDATS_SUPPORTS_STRUCTURELS_LOURDS_ETATS_OPAQUES_MAX_STANDALONE_VESPERARE_v0_1.md
```

But de la prochaine fiche :

```text
auditer le premier groupe de DETTE-ACT-6 :
gen~ comme support audio-rate potentiel ;
poly~ ;
MC ;
buffers/playback ;
js/node/scripts ;
pattrstorage/presets critiques ;
en tant que supports structurels et etats opaques, sans choisir de moteur,
synthese, objet final, patch, UI ou mapping.
```

N'autorise pas :

```text
audit individuel pfft~ ;
audit individuel convolution ;
audit individuel ML ;
audit individuel externals/plugins ;
choix de synthese ;
choix de moteur ;
objet Max final ;
patch ;
UI ;
mapping ;
implementation.
```
