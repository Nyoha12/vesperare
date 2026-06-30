# SPECIFICATION PRE-AUDIT CANDIDATS LOURDS SUPPORTS MAX MOTEURS OPAQUES VESPERARE v0.1

Projet : Vesperare
Date : 2026-06-24
Statut : specification pre-audit DETTE-ACT-6, non-implementation

Sources internes principales :

- `AUDIT_COHERENCE_POST_AUDITS_CANDIDATS_A_B_C_D_AVANT_CANDIDATS_LOURDS_VESPERARE_v0_1.md`
- `AUDIT_CANDIDATS_ROUTAGE_DIRECT_SAFE_TRANSITIONS_MAX_STANDALONE_VESPERARE_v0_1.md`
- `AUDIT_CANDIDATS_COMMANDES_LIVE_SCHEDULER_SIGNALISATION_MAX_STANDALONE_VESPERARE_v0_1.md`
- `AUDIT_CANDIDATS_GENERATION_RYTHMIQUE_MOTIFS_TIMING_MAX_STANDALONE_VESPERARE_v0_1.md`
- `AUDIT_CANDIDATS_GENERATION_TIMBRALE_NATURALISATION_TRANSFORMATIONS_MAX_STANDALONE_VESPERARE_v0_1.md`
- `MATRICE_EXCLUSIONS_CANDIDATS_PAR_CRITICITE_ET_LATENCE_MAX_STANDALONE_VESPERARE_v0_1.md`
- `MATRICE_FONCTIONS_CRITICITE_LATENCE_CHEMINS_MAX_STANDALONE_VESPERARE_v0_1.md`
- `SPECIFICATION_LATENCE_SCHEDULER_VECTORS_AUDIO_SETTINGS_MAX_STANDALONE_VESPERARE_v0_1.md`
- `SPECIFICATION_TECHNIQUE_CONCEPTUELLE_REVERB_SPACE_HALO_FREEZE_RESONATEURS_CONVOLUTION_MAX_STANDALONE_VESPERARE_v0_1.md`
- `REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`

Sources externes a garder comme garde-fous pour l'audit suivant :

- documentation officielle Cycling '74 pour `gen~`, `pfft~`, `poly~`, MC, buffers, scheduler, audio settings ;
- litterature DSP generale pour FFT/STFT, convolution, modeles physiques, granularite, source-filter et analyse timbrale ;
- references NIME / live electronics pour risques de latence, opacite, controle live et interaction instrumentale.

But :

```text
preparer DETTE-ACT-6 sans ouvrir un catalogue technique.
classer les candidats lourds, supports Max et moteurs opaques deja signales par
A/B/C/D selon :
fonction Vesperare ;
necessite musicale ;
criticite ;
latence ;
charge ;
opacite ;
dependance runtime ;
source priority ;
fallback ;
sortie ;
SIG ;
niveau d'audit requis.
```

Hors perimetre :

```text
audit individuel complet ;
choix final de moteur ;
choix final d'objet Max ;
syntaxe Max ;
patch ;
UI ;
mapping ;
benchmark ;
implementation.
```

---

## 1. Decision de cadrage

Decision :

```text
un candidat est "lourd" pour Vesperare s'il ajoute au moins un risque de :
latence ;
charge ;
etat cache ;
opacite ;
dependance externe ;
memoire/corpus ;
complexite de sortie ;
masquage source ;
controle live difficile ;
artefact reconnaissable ;
confusion entre besoin musical et puissance technique.
```

Consequence :

```text
DETTE-ACT-6 ne doit pas auditer les technologies par curiosite.
elle doit auditer seulement les familles lourdes qui resoudraient une fonction
Vesperare que les candidats simples A/B/C/D ne couvrent pas.
```

Interdit :

```text
ouvrir gen~ parce que c'est puissant ;
ouvrir pfft~ parce que le spectral est interessant ;
ouvrir convolution parce que reverb ;
ouvrir ML parce que analyse ;
ouvrir externals/plugins parce qu'ils existent ;
ouvrir granularite complexe parce que texture ;
ouvrir modeles physiques parce que sources acoustiques.
```

---

## 2. Contrat `HEAVY-CANDIDATE`

Tout candidat lourd devra declarer :

```text
nom ;
famille ;
fonction Vesperare ;
besoin source ;
besoin scene ;
besoin GEN/SPC/HAL/GRV/DID ;
ce que les candidats simples ne couvrent pas ;
criticite maximale autorisee ;
chemins autorises ;
latence estimee ;
charge estimee ;
etat/memoire/cache ;
dependance runtime ;
fallback simple ;
sortie ;
release ;
rollback si necessaire ;
SIG ;
risque de cliche ;
risque de son electronique reconnaissable ;
risque de perte du controle live ;
decision : exclu, reporte, pre-auditable, audit individuel requis.
```

Interdit :

```text
candidat lourd sans fonction musicale precise ;
candidat lourd sans alternative simple comparee ;
candidat lourd sans sortie ;
candidat lourd sans fallback ;
candidat lourd qui conditionne P0/P1 ;
candidat lourd qui rend une source acoustique dependante d'un calcul opaque.
```

---

## 3. Tableau de tri initial

| Famille lourde | Statut pre-audit | Fonctions possibles | Chemin autorise | Audit individuel ? | Risque principal |
|---|---|---|---|---|---|
| `gen~` / DSP custom audio-rate | PRE-AUDITABLE | traitements signal, resonateurs, source-filter, synthesis locale | PATH-PLAY/GEN, jamais P0/P1 par defaut | oui si necessaire | puissance prise pour besoin |
| `pfft~` / FFT / spectral | PRE-AUDITABLE MAIS LENT | freeze, spectral, resynthese, analyse, transformation | PATH-SLOW/GEN, hors direct | oui | latence/artefact |
| Convolution / IR | PRE-AUDITABLE | empreinte, salle, naturalisation, reverb speciale | PATH-SPC/SLOW/OFFLINE | oui si live | dependance/latence |
| Corpus sonore / sample banks | PRE-AUDITABLE | matiere, source, banque, preparation | PATH-GEN/SLOW/OFFLINE | oui | banque reconnaissable |
| Granularite complexe | PRE-AUDITABLE | texture, grain, freeze vivant, mutation source | PATH-GEN/SLOW | oui | nappe/artefact |
| Modeles physiques detailles | PRE-AUDITABLE | tube, souffle, membrane, metal, corde, cavite | PATH-GEN/PLAY conditionnel | oui | simulation prise pour intention |
| ML / classification / embeddings | REPORTE DIAG | analyse lente, etiquetage, confiance | PATH-DIAG/SLOW/OFFLINE | oui avant tout live | opacite |
| Externals / plugins | REPORTE DEPENDANCE | capacite non native | selon fonction | oui + audit runtime | dependance fragile |
| `js` / node / scripts | REPORTE HORS CRITIQUE | logique lente, config, vues, preparation | DIAG/SLOW/OFFLINE | oui si audio/decision | etat opaque |
| `poly~` / polyphonie | PRE-AUDITABLE SUPPORT | voix, couches, polytexture, instances | PATH-GEN/PLAY conditionnel | oui si structure centrale | etat/charge/voix |
| MC | PRE-AUDITABLE SUPPORT | couches, multicanal, polytexture, espace | PATH-GEN/SPC conditionnel | oui si central | densite opaque |
| `buffer~` / playback / boucles | PRE-AUDITABLE SUPPORT | corpus, traces, grains, source preparee | PATH-GEN/SLOW, pas indispensable direct | oui | sample cache |
| Markov / grammaire / statistique | PRE-AUDITABLE OPAQUE | variation formelle, motifs, relances | PATH-GEN/SLOW | oui | autonomie opaque |
| `pattrstorage` / presets critiques | REPORTE ETAT | recall, scene, morphing, memoire | PATH-SLOW/SETUP | oui si critique | etat magique |

---

## 4. Familles a ne pas auditer tout de suite

Ne pas ouvrir immediatement :

```text
ML / embeddings ;
externals/plugins ;
js/node audio ou decisionnel ;
pattrstorage critique ;
modele physique detaille complet ;
corpus sonore massif ;
convolution live complexe.
```

Motif :

```text
ces familles demandent d'abord une fonction encore plus precise ou une decision
de dependance runtime.
les ouvrir maintenant ferait perdre le fil musical.
```

Statut :

```text
reporte, sauf si la prochaine fiche prouve une necessite Vesperare directe.
```

---

## 5. Familles a auditer seulement sous conditions

### 5.1. `gen~`

Condition d'ouverture :

```text
besoin audio-rate local ;
besoin de structure DSP compacte ;
besoin de resonateur/source-filter/transformation qui ne se cadre pas assez
bien avec les candidats simples ;
chemin non P0/P1 ou audit direct dedie.
```

Risque :

```text
confondre optimisation, precision signal et intention musicale.
```

Pre-decision :

```text
pre-auditable, pas prioritaire comme moteur global.
```

### 5.2. `pfft~` / FFT

Condition d'ouverture :

```text
freeze spectral, transformation spectrale ou analyse que les filtres,
resonateurs, formants, grain simple ou convolution ne peuvent pas fournir.
```

Risque :

```text
latence, fenetrage, artefact, son numerique reconnaissable, confusion HAL/freeze.
```

Pre-decision :

```text
pre-auditable apres cadrage spectral precis.
```

### 5.3. Convolution / IR

Condition d'ouverture :

```text
besoin d'empreinte spatiale, corps, cavite ou salle qui ne se resout pas par
reverb/proximite/resonance simple.
```

Risque :

```text
reverb comme camouflage, latence, dependance IR, espace qui mange le corps.
```

Pre-decision :

```text
pre-auditable en lien avec SPC/REV, pas comme naturalisation universelle.
```

### 5.4. Granularite complexe

Condition d'ouverture :

```text
besoin de texture sourcee, freeze vivant, mutation, dissolution ou matiere
stable decidee que D ne couvre pas par grain simple.
```

Risque :

```text
nappe decorative, ambient non decide, perte d'attaque, artefact reconnaissable.
```

Pre-decision :

```text
pre-auditable seulement si la fonction texture est precise.
```

### 5.5. Polyphonie / `poly~` / MC

Condition d'ouverture :

```text
besoin de voix multiples, couches, instances, polytexture, multicanal ou
gestion de densite qui ne peut pas rester simple.
```

Risque :

```text
etat de voix opaque, charge, voice stealing, densite non lisible, routage cache.
```

Pre-decision :

```text
pre-auditable comme support structurel, jamais comme intention sonore.
```

---

## 6. Familles a maintenir comme reports forts

### 6.1. ML / classification / embeddings

Pre-decision :

```text
DIAG/SLOW/OFFLINE seulement.
```

Ne pas ouvrir tant que :

```text
la fonction d'analyse timbrale peut rester explicite, simple ou controllable.
```

Audit requis si :

```text
un systeme de confiance timbrale devient necessaire pour source priority,
naturalisation ou decisions lentes.
```

### 6.2. Externals / plugins

Pre-decision :

```text
dependance runtime a eviter dans le noyau.
```

Audit requis si :

```text
une capacite musicale indispensable est impossible ou trop fragile sans eux.
```

L'audit devra traiter :

```text
licence ;
installation ;
maintenance ;
latence ;
CPU ;
stabilite ;
fallback natif ;
portabilite ;
risque de son reconnaissable ;
risque de projet dependant d'un outil tiers.
```

### 6.3. `js` / node / scripts

Pre-decision :

```text
autorises seulement pour logique lente, configuration, outils, vues ou analyse
hors chemin critique.
```

Interdit :

```text
decision audio critique ;
protection ;
direct ;
safe ;
retour joue immediat.
```

### 6.4. `pattrstorage` / presets critiques

Pre-decision :

```text
hors critique.
```

Audit requis si :

```text
les scenes, morphings, snapshots ou recalls deviennent centraux dans le jeu.
```

Risque :

```text
etat magique, scene imposee, rappel non jouable, rollback opaque.
```

---

## 7. Relation avec les chemins critiques

### 7.1. CRIT-0 / DIRECT

Exclure par defaut :

```text
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

Exception possible :

```text
seulement apres audit individuel dedie prouvant absence de dependance critique,
fallback direct et gain musical indispensable.
```

### 7.2. CRIT-1 / SAFE

Exclure par defaut :

```text
tout candidat lourd comme condition de protection, feedback, headroom, grave
critique, rollback ou source priority vitale.
```

### 7.3. CRIT-2 / PLAY

Possible sous condition :

```text
gen~ audite ;
poly~ / MC audites si controle live clair ;
buffers precharges ;
granularite courte et sortible ;
modeles physiques locaux simples ;
convolution courte seulement si audit.
```

### 7.4. CRIT-3 / GEN-SPC-HAL

Possible sous condition :

```text
pfft~ ;
convolution ;
corpus ;
granularite ;
polyphonie ;
MC ;
Markov/grammaire ;
modeles physiques ;
gen~ ;
buffers ;
externals si audites.
```

### 7.5. CRIT-4 / SLOW-DIAG-OFFLINE

Possible :

```text
mesure ;
analyse ;
ML ;
corpus ;
preparation IR ;
generation offline ;
diagnostic ;
vues ;
presets non critiques.
```

---

## 8. Relation aux fonctions Vesperare

| Fonction Vesperare | Candidats lourds eventuels | Condition minimale |
|---|---|---|
| didgeridoo transforme | gen~, modele tube, granularite, source-filter avance | source directe conservee |
| gong / metal / bloom | resonateurs, modeles modaux, convolution, gen~ | grave non pris par accident |
| techno suspendue longue | granularite, pfft, convolution, halo-source, buffers | retour corporel decidable |
| acid naturalise | source-filter avance, gen~, modele cavite | pas 303/squelch par defaut |
| voix integree | formants, source-filter, granularite, ML diag | pas voix nue/autotune |
| reverb/espace pro | convolution, IR, mesure salle, MC | SPC/REV garde autorite |
| polytexture | poly~, MC, granularite, buffers, gen~ | lisibilite corporelle |
| PA-X | saturation, modeles, spectral, buffers, externals | decision volontaire + sortie |
| motifs complexes | Markov/grammaire/statistique, buffers, js lent | AUT/REC + fonction |

---

## 9. Ordre d'audit individuel recommande

Si la compatibilite du pre-audit est validee, l'ordre logique n'est pas
technologique, mais fonctionnel :

```text
1. supports lourds qui menacent les chemins critiques :
   gen~, poly~, MC, buffers, scripts, pattrstorage.

2. transformations lourdes qui menacent naturalisation / source :
   pfft~/FFT, granularite complexe, modeles physiques.

3. espace / empreinte / corpus :
   convolution, IR, corpus sonore, playback prepare.

4. opacite decisionnelle :
   ML/classification, Markov/grammaire/statistique.

5. dependances externes :
   externals/plugins seulement si une fonction reste impossible autrement.
```

Raison :

```text
commencer par les supports structurels evite de confondre moteur sonore,
architecture et fonction musicale.
```

---

## 10. Questions a resoudre par le prochain audit de compatibilite

### Q-HEAVY-PRE-1 - DETTE-ACT-6 doit-elle rester dette mere ?

Hypothese :

```text
oui.
DETTE-ACT-6 reste la dette mere.
DETTE-ACT-17 est son cadrage pre-audit.
```

### Q-HEAVY-PRE-2 - ouvrir un audit individuel immediat ?

Hypothese :

```text
non.
il faut d'abord auditer la compatibilite de ce pre-audit avec le corpus.
```

### Q-HEAVY-PRE-3 - risque de trop reporter

Hypothese :

```text
le risque existe.
la solution n'est pas d'ouvrir tout, mais de lier chaque report a une fonction
Vesperare et a un niveau d'audit.
```

### Q-HEAVY-PRE-4 - candidats simples suffisants ?

Hypothese :

```text
pour le cadrage musical, oui.
pour la future implementation, certains candidats lourds seront probablement
necessaires, mais seulement apres tri.
```

---

## 11. Decision de sortie

Verdict pre-audit :

```text
pret pour audit de compatibilite.
```

Autorise :

```text
AUDIT_COMPATIBILITE_SPECIFICATION_PRE_AUDIT_CANDIDATS_LOURDS_SUPPORTS_MAX_MOTEURS_OPAQUES_AVEC_CORPUS_v0_1.md
```

N'autorise pas :

```text
audit individuel gen~ ;
audit individuel pfft~ ;
audit individuel convolution ;
audit individuel corpus ;
audit individuel ML ;
audit individuel externals/plugins ;
choix de moteur ;
choix de synthese ;
patch ;
UI ;
mapping ;
implementation.
```
