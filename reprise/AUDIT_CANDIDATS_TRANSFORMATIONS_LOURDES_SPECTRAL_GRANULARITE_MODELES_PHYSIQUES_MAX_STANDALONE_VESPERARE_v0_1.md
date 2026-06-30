# AUDIT CANDIDATS TRANSFORMATIONS LOURDES SPECTRAL GRANULARITE MODELES PHYSIQUES MAX STANDALONE VESPERARE v0.1

Projet : Vesperare
Date : 2026-06-24
Statut : audit candidat DETTE-ACT-20, non-implementation

Sources internes principales :

- `AUDIT_CANDIDATS_SUPPORTS_STRUCTURELS_LOURDS_ETATS_OPAQUES_MAX_STANDALONE_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_SPECIFICATION_PRE_AUDIT_CANDIDATS_LOURDS_SUPPORTS_MAX_MOTEURS_OPAQUES_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_PRE_AUDIT_CANDIDATS_LOURDS_SUPPORTS_MAX_MOTEURS_OPAQUES_VESPERARE_v0_1.md`
- `AUDIT_CANDIDATS_GENERATION_TIMBRALE_NATURALISATION_TRANSFORMATIONS_MAX_STANDALONE_VESPERARE_v0_1.md`
- `SPECIFICATION_TECHNIQUE_CONCEPTUELLE_REVERB_SPACE_HALO_FREEZE_RESONATEURS_CONVOLUTION_MAX_STANDALONE_VESPERARE_v0_1.md`
- `SPECIFICATION_GRAVE_GONG_SUB_DIDGERIDOO_CONFLITS_ET_MODES_MAX_STANDALONE_VESPERARE_v0_1.md`
- `MATRICE_EXCLUSIONS_CANDIDATS_PAR_CRITICITE_ET_LATENCE_MAX_STANDALONE_VESPERARE_v0_1.md`
- `MATRICE_FONCTIONS_CRITICITE_LATENCE_CHEMINS_MAX_STANDALONE_VESPERARE_v0_1.md`
- `REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`

But :

```text
auditer le second groupe DETTE-ACT-6 :
pfft~/FFT/spectral ;
granularite complexe ;
modeles physiques detailles ;
en tant que transformations lourdes et familles de matiere, sans choisir moteur,
synthese finale, objet final, patch, UI ou mapping.
```

Hors perimetre :

```text
choix final pfft~ ;
choix final moteur spectral ;
choix final moteur granulaire ;
choix final modele physique ;
convolution / IR / corpus ;
ML / classification ;
externals / plugins ;
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
compatible avec statuts candidats conditionnels et reports forts.
```

Decision :

```text
les transformations lourdes peuvent rester candidates Vesperare, mais aucune
ne devient moteur, solution de naturalisation, effet par defaut ou autorite de
scene.
```

Decision negative :

```text
spectral/FFT/pfft ne devient pas moteur de freeze ou de magie sonore.
granularite complexe ne devient pas nappe ou texture automatique.
modele physique detaille ne devient pas preuve d'acousticite.
aucune de ces familles ne conditionne P0/P1, direct, safe, source priority
vitale, grave critique ou MIN-DID-PC.
```

Regle :

```text
une transformation lourde est recevable seulement si elle declare :
source ;
fonction Vesperare ;
NAT ;
owner ;
chemin ;
latence ;
sortie ;
fallback ;
SIG ;
ce qu'elle ne decide pas.
```

---

## 2. Tableau des statuts

| Candidat | Statut | Chemins autorises | Interdit par defaut | Fonction recevable | Risque principal |
|---|---|---|---|---|---|
| Contrat `HEAVY-TRANSFORM` | OBLIGATOIRE | toutes transformations lourdes | aucune transformation sans contrat | cadrer source/fonction/NAT/sortie | effet autonome |
| pfft~/FFT/spectral | CONDITIONNEL LOURD | PATH-GEN/SLOW/HAL/SPC, DIAG | P0/P1, direct, safe, source priority vitale | freeze spectral, resynthese, filtrage spectral, trace impossible | latence/artefact numerique |
| granularite complexe | CONDITIONNEL LOURD | PATH-GEN/SLOW/HAL, CRIT-3/4, CRIT-2 tres limite | P0/P1, source directe, texture par defaut | texture sourcee, mutation, dissolution, freeze vivant | nappe/ambient subi |
| modeles physiques detailles | CONDITIONNEL LOURD / REPORTE SELON COMPLEXITE | PATH-GEN/PLAY conditionnel, SLOW, OFFLINE | P0/P1, preuve d'acousticite | tube, souffle, membrane, metal, cavite, resonances | simulation prise pour intention |

---

## 3. Contrat `HEAVY-TRANSFORM`

Statut :

```text
OBLIGATOIRE.
```

Champs obligatoires :

```text
nom ;
famille ;
source ;
fonction Vesperare ;
GEN/SPC/HAL/GRV/DID concerne ;
mode NAT ;
phenomene retenu ;
alternative simple comparee ;
raison de lourdeur ;
chemin autorise ;
criticite maximale ;
latence perceptive ;
charge ;
sortie ;
fallback ;
SIG ;
risque de cliche ;
risque de son electronique reconnaissable ;
risque source/grave/halo/espace ;
interdits ;
reports.
```

Interdit :

```text
transformation sans source ou fonction ;
transformation qui naturalise seulement par complexite ;
transformation qui cree un halo, freeze ou espace force sans HAL/SPC/REV ;
transformation qui masque didgeridoo, voix, gong, peaux ou grave sans sortie ;
transformation qui transforme PA-X en accident ;
transformation qui impose un moteur final.
```

---

## 4. pfft~ / FFT / spectral

Statut :

```text
CONDITIONNEL LOURD.
```

Fonctions recevables :

```text
freeze spectral decide ;
resynthese partielle ;
filtrage spectral fin ;
trace impossible assumee ;
matiere stable decidee ;
analyse spectrale non critique ;
transformation de source avec source-bonding fort.
```

Non-fonctions :

```text
halo automatique ;
reverb alternative ;
texture par defaut ;
moteur de transformation global ;
solution pour rendre un son "pro" ;
effet spectral reconnaissable non decide.
```

Chemins :

```text
CRIT-0 : exclu.
CRIT-1 : exclu.
CRIT-2 : tres conditionnel, seulement si prepare, sortible et non vital.
CRIT-3 : candidat lourd.
CRIT-4 : candidat lent / diag / preparation.
```

Conditions :

```text
source ou scene precise ;
raison pour laquelle filtre, resonateur, source-filter, souffle, saturation ou
texture simple ne suffit pas ;
fenetre / latence conceptualisee ;
pas d'autorite sur attaque directe ;
fallback sans spectral ;
sortie claire : off, dry, re-naturalisation, transfert HAL autorise, dissolution ;
SIG si le spectral limite source, retour, rythme ou grave.
```

Ordres de grandeur conceptuels :

```text
512 samples a 48 kHz representent environ 10,7 ms de signal.
1024 samples representent environ 21,3 ms.
2048 samples representent environ 42,7 ms.
ces valeurs ne sont pas une latence finale, mais elles rappellent que le
spectral ne doit pas etre place sur un chemin direct critique par defaut.
```

Risques :

```text
artefact numerique reconnaissable ;
latence perceptive ;
freeze qui devient halo force ;
source dissoute sans decision ;
pression rythmique affaiblie ;
grave flou ;
spectral comme esthetique autonome.
```

Decision Vesperare :

```text
pfft~/FFT/spectral reste candidat lourd pour fonctions precises de transformation
ou d'analyse, jamais moteur general ni solution de naturalisation.
```

---

## 5. Granularite complexe

Statut :

```text
CONDITIONNEL LOURD.
```

Fonctions recevables :

```text
texture sourcee ;
mutation de source ;
dissolution decidee ;
freeze vivant ;
matiere stable decidee ;
fragmentation organique ;
trace de voix/didgeridoo/gong/peau ;
transition longue ;
techno suspendue tres longue si retour corporel decidable.
```

Non-fonctions :

```text
nappe automatique ;
ambient par remplissage ;
texture qui reste parce qu'elle sonne bien ;
cache-misere de naturalisation ;
source floutee sans decision ;
solution de polytexture par defaut.
```

Chemins :

```text
CRIT-0 : exclu.
CRIT-1 : exclu.
CRIT-2 : conditionnel tres limite si reaction jouee non vitale.
CRIT-3 : candidat lourd.
CRIT-4 : candidat lent / HAL / preparation.
```

Conditions :

```text
source-bonding explicite ;
duree et densite declarees ;
relation a HAL si la granularite devient trace, freeze ou memoire ;
relation a C si elle devient rythmique ;
relation a D si elle porte NAT ;
fallback sans granularite ;
sortie : off, source seule, densite reduite, dissolution, transfert HAL decide.
```

Risques :

```text
nappe decorative ;
perte de corps non decidee ;
attaque effacee ;
motif granulaire autonome ;
ambient subi ;
artefact numerique ;
texture qui masque source ou grave ;
confusion texture / halo / reverb.
```

Decision Vesperare :

```text
la granularite complexe est recevable seulement comme transformation sourcee ou
matiere decidee. Elle ne doit jamais devenir le mode normal de texture.
```

---

## 6. Modeles physiques detailles

Statut :

```text
CONDITIONNEL LOURD / REPORTE SELON COMPLEXITE.
```

Fonctions recevables :

```text
tube / didgeridoo abstrait ;
souffle / turbulence ;
membrane / peau ;
metal / gong / partiels ;
cavite / bouche / corps ;
resonance modale ;
objet acoustique imaginaire ;
naturalisation structurelle quand les modeles simples ne suffisent pas.
```

Non-fonctions :

```text
preuve que le son est acoustique ;
simulation realiste comme objectif ;
modele complet de didgeridoo, gong ou voix ;
substitution a la source acoustique reelle ;
justification technique d'une esthetique floue.
```

Chemins :

```text
CRIT-0 : exclu sauf audit direct tres specifique futur.
CRIT-1 : exclu comme condition de protection.
CRIT-2 : conditionnel si modele local simple, stable, sortible.
CRIT-3 : candidat lourd.
CRIT-4 : preparation / analyse / offline possible.
```

Conditions :

```text
phenomene physique retenu precise ;
niveau de modelisation limite ;
source ou fonction declaree ;
pas de simulation totale si un indice partiel suffit ;
relation au grave explicite ;
fallback simple : filtre, resonateur, source-filter, souffle, saturation ou off ;
SIG si modele limite source, grave, rythme ou retour.
```

Risques :

```text
simulation prise pour intention ;
complexite CPU ;
controle live difficile ;
modele trop realiste ou trop faux ;
effet special ;
grave deplace ;
source reelle appauvrie ;
maintenance et calibration lourdes.
```

Decision Vesperare :

```text
les modeles physiques detailles restent des candidats de dernier niveau pour
phenomenes precis. Les indices physiques partiels doivent etre preferes si
musicalement suffisants.
```

---

## 7. Relations avec NAT, source-bonding et PA-X

Decision :

```text
ces transformations ne naturalisent pas par elles-memes.
elles doivent passer par NAT et source-bonding.
```

NAT recevables :

```text
NAT-SRC ;
NAT-CAV ;
NAT-FOR ;
NAT-FRI ;
NAT-MET ;
NAT-PEAU ;
NAT-HAL seulement si HAL autorise ;
NAT-ESP seulement si SPC/REV autorise ;
NAT-PA-X seulement si transgression decidee.
```

Interdit :

```text
spectral = naturalise ;
granulaire = organique ;
modele physique = acoustique ;
complexe = profond ;
artefact = PA-X.
```

---

## 8. Relations avec HAL / SPC / REV

Decision :

```text
spectral, granularite et modeles physiques peuvent produire des matieres pour
HAL/SPC/REV, mais ne decident pas HAL, espace, reverb ou freeze.
```

Regles :

```text
freeze spectral -> HAL decide presence, duree, lock, force, cut.
granularite longue -> HAL ou GEN decide selon role, mais sortie obligatoire.
modele de cavite -> D/SPC selon fonction, pas reverb automatique.
matiere spatiale -> SPC/REV garde autorite.
```

Risque :

```text
un moteur lourd cree un etat long qui devient impossible a retirer sans casser
la scene.
```

Correction :

```text
release, fallback, SIG et owner obligatoires.
```

---

## 9. Relations avec grave / didgeridoo / gong / voix

### 9.1. Didgeridoo

Regle :

```text
aucune transformation lourde ne doit rendre le didgeridoo dependant d'elle.
```

Autorise :

```text
trace spectrale decidee ;
granularite sourcee ;
modele de tube partiel ;
source-filter avance ;
matiere HAL derivee.
```

Condition :

```text
source directe ou mode libre toujours recuperable.
```

### 9.2. Gong / grave

Regle :

```text
les modeles modaux, spectral ou granularite de gong ne doivent pas prendre le
role de porteur grave sans mode grave explicite.
```

Condition :

```text
relation aux modes grave et SIG si conflit.
```

### 9.3. Voix

Regle :

```text
transformer la voix ne doit pas produire voix nue, autotune, chanson involontaire
ou effet vocal reconnaissable non decide.
```

Condition :

```text
integration virtualo-acoustique, NAT et sortie.
```

---

## 10. Ordre d'audit suivant

Decision :

```text
apres ce bloc, l'audit suivant doit traiter espace / empreinte / corpus.
```

Raison :

```text
convolution, IR, corpus sonore et playback prepare touchent directement :
reverb/espace ;
naturalisation ;
mesure de salle ;
empreinte ;
banque sonore ;
dependance fichier ;
SPC/HAL/REV.
```

Ne pas ouvrir encore :

```text
ML/classification ;
Markov/grammaire/statistique ;
externals/plugins ;
moteur final.
```

---

## 11. Decision de sortie

Verdict :

```text
DETTE-ACT-20 peut etre consideree comme absorbee par cet audit.
```

Autorise ensuite :

```text
AUDIT_CANDIDATS_ESPACE_EMPREINTE_CORPUS_CONVOLUTION_IR_PLAYBACK_PREPARE_MAX_STANDALONE_VESPERARE_v0_1.md
```

But de la prochaine fiche :

```text
auditer le troisieme groupe DETTE-ACT-6 :
convolution ;
IR ;
corpus sonore ;
playback prepare ;
empreintes de salle/source ;
en lien avec SPC/HAL/REV, naturalisation, reverb, mesure de salle et dependance
fichier, sans choisir moteur, objet final, patch, UI ou mapping.
```

N'autorise pas :

```text
choix final pfft~ ;
choix final moteur spectral ;
choix final moteur granulaire ;
choix final modele physique ;
audit ML ;
audit externals/plugins ;
patch ;
UI ;
mapping ;
implementation.
```
