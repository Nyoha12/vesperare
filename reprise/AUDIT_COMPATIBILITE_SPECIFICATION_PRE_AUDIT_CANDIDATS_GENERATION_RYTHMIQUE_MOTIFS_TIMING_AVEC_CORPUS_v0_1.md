# AUDIT COMPATIBILITE SPECIFICATION PRE-AUDIT CANDIDATS GENERATION RYTHMIQUE MOTIFS TIMING AVEC CORPUS v0.1

Projet : Vesperare
Date : 2026-06-24
Statut : audit compatibilite, non-implementation

Fiche auditee :

- `SPECIFICATION_PRE_AUDIT_CANDIDATS_GENERATION_RYTHMIQUE_MOTIFS_TIMING_VESPERARE_v0_1.md`

Corpus de verification :

- `AUDIT_CANDIDATS_COMMANDES_LIVE_SCHEDULER_SIGNALISATION_MAX_STANDALONE_VESPERARE_v0_1.md`
- `SPECIFICATION_BLOC_GENERATION_SONORE_MOTIFS_RYTHMIQUES_MELODIQUES_v0_1.md`
- `SPECIFICATION_GENERATION_FINE_PAR_GEN_ROLE_MAX_STANDALONE_VESPERARE_v0_1.md`
- `MATRICE_GEN_ROLE_SCENES_CONTROLES_LIVE_RISQUES_VESPERARE_v0_1.md`
- `AUDIT_TRACABILITE_CAHIER_CHARGES_GENERATIF_STYLISTIQUE_v0_1.md`
- `MATRICE_COMMANDES_PACKETS_ETATS_SIGNAUX_PERFORMANCE_MAX_STANDALONE_VESPERARE_v0_1.md`
- `MATRICE_EXCLUSIONS_CANDIDATS_PAR_CRITICITE_ET_LATENCE_MAX_STANDALONE_VESPERARE_v0_1.md`
- `REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`

But :

```text
verifier que le pre-audit candidat C prepare correctement l'audit generation
rythmique / motifs / timing sans choisir de moteur, style, algorithme, UI,
mapping ou patch final.
```

---

## 1. Verdict general

Verdict :

```text
compatible avec le corpus actif.
```

Decision :

```text
le pre-audit C peut autoriser l'audit candidat C.
il ne declenche pas encore de choix de moteur generation.
il ne declenche pas encore de choix d'objets Max definitifs.
il ne declenche pas encore d'implementation.
```

Raison :

```text
le document reprend les phenomenes deja retenus et les rattache aux fonctions
Vesperare :
pression rythmique ;
motif ;
interlocking ;
acid naturalise ;
voix integree ;
jazz/Keita comme methode de subtilite ;
timing technique vs timing musical.
```

---

## 2. Controles de compatibilite

### 2.1. Pas d'import de styles entiers

Constat :

```text
compatible.
```

Preuve :

```text
la fiche retient seulement les phenomenes :
tissage, attaques differenciees, couche directrice, ponctuation, silence actif,
torsion acid, voix fragmentaire, pression rythmique, retour, retrait.
```

Risque restant :

```text
l'audit candidat C devra continuer a refuser :
imitation Keita ;
style jazz plaque ;
pattern acid cliche ;
techno standard ;
voix nue ;
signature electronique non decidee.
```

### 2.2. Respect du bloc generation existant

Constat :

```text
compatible.
```

Preuve :

```text
la fiche reprend GEN-ROLE, AUT, REC, naturalisation, sortie, source, scene,
risque et SIG.
elle ne remplace pas la specification generation existante.
elle prepare seulement un audit de candidats techniques/fonctionnels.
```

Risque restant :

```text
l'audit candidat C devra eviter de dupliquer toute la fiche generation.
il devra se concentrer sur les familles candidates et leurs conditions.
```

### 2.3. Timing technique distingue du timing musical

Constat :

```text
compatible.
```

Preuve :

```text
la fiche separe explicitement timing technique et timing musical.
elle reprend les limites du groupe B :
scheduler non garant ;
sample-accurate non generalisable ;
commande live non UI ;
fallback et SIG.
```

Risque restant :

```text
l'audit candidat C devra classer :
event clock ;
signal/audio clock ;
source-derived triggers ;
planned events ;
variation lente ;
motifs longs.
```

### 2.4. Motif reconnaissable non interdit

Constat :

```text
compatible.
```

Preuve :

```text
la fiche confirme que le probleme n'est pas la reconnaissance,
mais l'autonomie hors fonction, le cliche, le lead banal, la source masquee ou
l'absence de sortie.
```

Risque restant :

```text
l'audit candidat C devra definir les conditions AUT/REC par famille candidate,
notamment hook minimal, basse-motif, acid naturalise et fragment vocal.
```

### 2.5. Setup minimum didgeridoo + PC

Constat :

```text
compatible.
```

Preuve :

```text
la fiche exige source/scene et interdit de reduire didgeridoo, voix, gong ou
peau a de simples controleurs.
```

Risque restant :

```text
l'audit candidat C devra verifier que les candidats restent utiles en MIN-DID-PC :
source-derived triggers, motifs simples, retrait, retour, densite, signal.
```

### 2.6. Candidats lourds reportes

Constat :

```text
compatible.
```

Preuve :

```text
gen~, poly~, MC, buffer~/groove~, js, externals/plugins, machine learning,
FFT/pfft, convolution et pattrstorage sont reportes sauf necessite fonctionnelle.
```

Risque restant :

```text
l'audit candidat C devra refuser une ouverture technique trop large.
un candidat lourd doit etre justifie par une fonction musicale precise.
```

---

## 3. Corrections necessaires avant audit candidat C

Correction obligatoire :

```text
aucune.
```

Clarification a maintenir :

```text
l'audit C doit auditer des familles de candidats et des conditions.
il ne doit pas devenir le moteur generation final.
```

---

## 4. Questions reportees

### Q-AUDPREC-1 - choix de clock final

Statut :

```text
reporte.
```

Motif :

```text
le pre-audit prepare l'audit des bases de temps.
il ne choisit pas encore entre event clock, signal clock, transport,
sample-accurate messages ou source-derived timing.
```

### Q-AUDPREC-2 - choix d'algorithme generation

Statut :

```text
reporte.
```

Motif :

```text
probabilite, contraintes, Markov, regles, euclidien, sequenceur, buffer ou
machine learning ne doivent etre ouverts que si une fonction les exige.
```

### Q-AUDPREC-3 - moteurs lourds

Statut :

```text
reporte vers DETTE-ACT-6.
```

Motif :

```text
gen~, poly~, MC, js, externals/plugins et buffers demandent une justification
fonctionnelle avant audit individuel.
```

### Q-AUDPREC-4 - recherches supplementaires

Statut :

```text
utile pour l'audit candidat C.
```

Motif :

```text
les objets Max nommes devront etre verifies sur documentation Cycling '74.
les methodes generatives devront etre comparees a des sources NIME ou
recherche interactive si elles deviennent candidates.
les sources musicales devront rester orientees phenomenes, pas biographies ou
styles entiers.
```

---

## 5. Decision de sortie

Autorise :

```text
AUDIT_CANDIDATS_GENERATION_RYTHMIQUE_MOTIFS_TIMING_MAX_STANDALONE_VESPERARE_v0_1.md
```

Conditions :

```text
auditer par familles candidates ;
conserver GEN-ROLE / AUT / REC / source / scene / timing / sortie / risque ;
separer timing technique et timing musical ;
garder Keita/jazz/acid/voix comme phenomenes retenus ;
reporter moteurs lourds si non indispensables ;
ne pas choisir moteur final, patch, UI, mapping ou algorithme definitif.
```

N'autorise pas :

```text
implementation ;
patch final ;
UI finale ;
mapping final ;
moteur generation final ;
algorithme final ;
tests comme condition de conception.
```
