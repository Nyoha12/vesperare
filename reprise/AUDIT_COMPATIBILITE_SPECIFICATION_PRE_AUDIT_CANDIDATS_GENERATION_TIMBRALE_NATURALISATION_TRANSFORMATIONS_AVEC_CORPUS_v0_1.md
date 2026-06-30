# AUDIT COMPATIBILITE SPECIFICATION PRE-AUDIT CANDIDATS GENERATION TIMBRALE NATURALISATION TRANSFORMATIONS AVEC CORPUS v0.1

Projet : Vesperare
Date : 2026-06-24
Statut : audit compatibilite, non-implementation

Fiche auditee :

- `SPECIFICATION_PRE_AUDIT_CANDIDATS_GENERATION_TIMBRALE_NATURALISATION_TRANSFORMATIONS_VESPERARE_v0_1.md`

Corpus de verification :

- `AUDIT_CANDIDATS_GENERATION_RYTHMIQUE_MOTIFS_TIMING_MAX_STANDALONE_VESPERARE_v0_1.md`
- `SPECIFICATION_BLOC_GENERATION_SONORE_MOTIFS_RYTHMIQUES_MELODIQUES_v0_1.md`
- `SPECIFICATION_GENERATION_FINE_PAR_GEN_ROLE_MAX_STANDALONE_VESPERARE_v0_1.md`
- `MATRICE_GEN_ROLE_SCENES_CONTROLES_LIVE_RISQUES_VESPERARE_v0_1.md`
- `SPECIFICATION_TECHNIQUE_CONCEPTUELLE_REVERB_SPACE_HALO_FREEZE_RESONATEURS_CONVOLUTION_MAX_STANDALONE_VESPERARE_v0_1.md`
- `AUDIT_TRACABILITE_CAHIER_CHARGES_GENERATIF_STYLISTIQUE_v0_1.md`
- `MATRICE_EXCLUSIONS_CANDIDATS_PAR_CRITICITE_ET_LATENCE_MAX_STANDALONE_VESPERARE_v0_1.md`
- `REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`

But :

```text
verifier que le pre-audit candidat D prepare correctement l'audit generation
timbrale / naturalisation / transformations sans choisir synthese, moteur,
algorithme, UI, mapping ou patch final.
```

---

## 1. Verdict general

Verdict :

```text
compatible avec le corpus actif.
```

Decision :

```text
le pre-audit D peut autoriser l'audit candidat D.
il n'autorise pas de choix de synthese finale.
il n'autorise pas d'ouverture detaillee FFT/pfft, convolution, corpus, ML,
externals ou plugins.
```

Raison :

```text
la fiche reprend les modes NAT deja actifs,
distingue naturalisation, espace et halo,
maintient les sources acoustiques,
et conserve les candidats lourds comme reports conditionnels.
```

---

## 2. Controles de compatibilite

### 2.1. Naturalisation non reduite a reverb

Constat :

```text
compatible.
```

Preuve :

```text
la fiche conserve les modes NAT-SRC, NAT-CAV, NAT-FOR, NAT-FRI, NAT-MET,
NAT-PEAU, NAT-ESP, NAT-HAL, NAT-IRR, NAT-HYB, NAT-FNC et NAT-PA-X.
elle dit explicitement que la reverb n'est qu'un mode possible.
```

Risque restant :

```text
l'audit candidat D devra refuser toute famille qui naturalise seulement par
effet spatial sans source, fonction ou sortie.
```

### 2.2. Distinction D / C / SPC-HAL-REV

Constat :

```text
compatible.
```

Preuve :

```text
D = matiere timbrale et appartenance perceptive.
C = timing, motifs, lignes et sensation rythmique/melodique.
SPC/HAL/REV = monde spatial, halo, queue, freeze, espace.
```

Risque restant :

```text
l'audit candidat D devra traiter les interfaces sans laisser D decider HAL,
SPC ou les moteurs rythmiques.
```

### 2.3. Sources acoustiques preservees

Constat :

```text
compatible.
```

Preuve :

```text
la fiche exige source priority, fallback source seule et SIG si didgeridoo,
voix, gong ou peau est masquee.
```

Risque restant :

```text
l'audit candidat D devra verifier les transformations qui pourraient reduire
didgeridoo, voix, gong ou peau a de simples controles.
```

### 2.4. PA-X volontaire seulement

Constat :

```text
compatible.
```

Preuve :

```text
la fiche interdit PA-X accidentel et impose choix live, scene ou fonction forte,
avec sortie et signalisation.
```

Risque restant :

```text
saturation, rugosite, nudite, dissonance, freeze, resonateur ou distorsion
devront etre audites comme fonctions decidees, pas comme resultats d'effet.
```

### 2.5. Candidats lourds reportes

Constat :

```text
compatible.
```

Preuve :

```text
FFT/pfft, convolution, corpus sonore, cross-synthesis, ML, gen~, externals,
plugins, granularite complexe et modeles physiques sont reportes sauf fonction
musicale precise.
```

Risque restant :

```text
l'audit candidat D devra peut-etre ouvrir des sous-audits via DETTE-ACT-6 si
une famille lourde devient indispensable.
```

### 2.6. GEN-HAL ne decide pas HAL

Constat :

```text
compatible.
```

Preuve :

```text
la fiche reprend la regle :
GEN-HAL fournit une matiere ;
HAL autorise, maintient, force, coupe ou sort.
```

Risque restant :

```text
l'audit candidat D devra verifier toute matiere halo-source pour eviter que
la generation decide un halo long, lock ou force.
```

---

## 3. Corrections necessaires avant audit candidat D

Correction obligatoire :

```text
aucune.
```

Clarification a maintenir :

```text
l'audit D doit auditer des familles candidates de matiere et transformation.
il ne doit pas devenir une selection d'objets, de synthese ou de plugins.
```

---

## 4. Questions reportees

### Q-AUDPRE-D-1 - detail FFT/pfft

Statut :

```text
reporte vers DETTE-ACT-6.
```

Motif :

```text
FFT/pfft peut etre pertinent pour transformation spectrale, mais il est lourd
et doit etre justifie par une fonction precise.
```

### Q-AUDPRE-D-2 - convolution / corpus sonore

Statut :

```text
reporte vers DETTE-ACT-6 ou audit dedie reverb/espace si necessaire.
```

Motif :

```text
convolution et corpus peuvent servir naturalisation, empreinte ou matiere,
mais risquent dependance lourde, latence, opacite et effet reconnaissable.
```

### Q-AUDPRE-D-3 - granularite complexe

Statut :

```text
reporte.
```

Motif :

```text
le pre-audit accepte grain/texture comme famille,
mais pas encore moteur granulaire final.
```

### Q-AUDPRE-D-4 - modele physique

Statut :

```text
reporte.
```

Motif :

```text
modeliser tube, corde, membrane, metal, souffle ou cavite peut etre pertinent,
mais demanderait un audit propre si cela devient necessaire.
```

---

## 5. Decision de sortie

Autorise :

```text
AUDIT_CANDIDATS_GENERATION_TIMBRALE_NATURALISATION_TRANSFORMATIONS_MAX_STANDALONE_VESPERARE_v0_1.md
```

Conditions :

```text
auditer par familles candidates ;
conserver source, fonction, NAT, GEN-ROLE, relation grave/espace/halo,
criticite, latence, sortie, fallback, SIG et risques ;
refuser naturalisation cosmetique ;
reporter les familles lourdes si non indispensables ;
ne pas choisir synthese, moteur, objet Max, plugin, UI, mapping ou patch.
```

N'autorise pas :

```text
implementation ;
patch final ;
UI finale ;
mapping final ;
synthese finale ;
algorithme final ;
FFT/pfft detaille ;
convolution detaillee ;
ML ;
externals/plugins.
```
