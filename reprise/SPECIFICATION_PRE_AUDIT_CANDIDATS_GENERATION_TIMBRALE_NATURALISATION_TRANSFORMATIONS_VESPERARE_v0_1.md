# SPECIFICATION PRE-AUDIT CANDIDATS GENERATION TIMBRALE NATURALISATION TRANSFORMATIONS VESPERARE v0.1

Projet : Vesperare
Date : 2026-06-24
Statut : pre-audit candidat D, non-implementation

Sources internes principales :

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
preparer l'audit candidat D :
generation timbrale ;
naturalisation ;
transformations source/timbre ;
textures ;
resonances ;
grains ;
formants ;
bruit / friction ;
source-bonding ;
hybridations acoustiques ;
sans moteur final, algorithme final, UI, mapping ou patch.
```

Hors perimetre :

```text
synthese finale ;
moteur timbral final ;
algorithme final ;
objet Max definitif ;
FFT/pfft detaille ;
convolution detaillee ;
corpus sonore ;
machine learning ;
externals/plugins ;
patch ;
UI ;
mapping ;
seuils ;
tests / benchmarks comme methode de conception.
```

---

## 1. Decision de cadrage

Decision :

```text
le groupe D n'est pas une fiche de synthese sonore.
il est le pre-audit des familles candidates qui peuvent transformer, generer
ou naturaliser la matiere timbrale sans rendre le systeme electronique
reconnaissable par defaut.
```

Regle :

```text
un candidat D doit toujours declarer :
source ou absence de source ;
fonction Vesperare ;
phenomene retenu ;
mode de naturalisation ;
relation au corps ;
relation au grave ;
relation a l'espace / halo ;
criticite ;
latence ressentie ;
sortie ;
risque ;
SIG si impact.
```

Interdit :

```text
naturalisation = mettre de la reverb.
timbre = choisir un synth.
texture = nappe decorative.
transformation = effet reconnaissable.
source-bonding = excuse pour masquer la source.
PA-X = accident non decide.
```

---

## 2. Questions actives absorbees par ce pre-audit

### 2.1. Q-D-1 - naturalisation sans simple reverb

Resolution pre-audit :

```text
naturaliser signifie donner au son une appartenance perceptive plausible ou
decidee.
la reverb peut aider, mais elle n'est qu'un mode parmi d'autres.
```

Modes a garder :

```text
NAT-SRC : source acoustique ;
NAT-CAV : cavite / tube / corps / bouche ;
NAT-FOR : formants ;
NAT-FRI : friction / souffle / air ;
NAT-MET : metal / gong / partiels ;
NAT-PEAU : peau / bois / membrane ;
NAT-ESP : espace commun / reverb proche ;
NAT-HAL : halo / queue / memoire ;
NAT-IRR : irregularite corporelle ;
NAT-HYB : hybridation source + artefact ;
NAT-FNC : fonction de scene explicitement assumee ;
NAT-PA-X : transgression volontaire, signalee et sortible.
```

### 2.2. Q-D-2 - source-bonding sans source appauvrie

Resolution pre-audit :

```text
source-bonding rattache une matiere a une source, un geste, une cavite,
une fonction ou une scene.
il ne transforme pas le didgeridoo, la voix, le gong ou les peaux en simples
controleurs.
```

Regle :

```text
si une source est essentielle, la transformation doit preserver :
identite ;
priorite ;
lisibilite ;
sortie vers source seule ;
signal si masquage ou limitation.
```

### 2.3. Q-D-3 - transformations sans effet reconnaissable subi

Resolution pre-audit :

```text
un effet connu peut exister, mais il ne doit pas etre reconnaissable comme
outil numerique subi.
exception possible seulement si PA-X ou fonction forte decidee.
```

Regle :

```text
plus un son est impossible,
plus source ou fonction doit etre lisible.
```

### 2.4. Q-D-4 - candidats lourds

Resolution pre-audit :

```text
FFT/pfft, convolution, corpus sonore, ML, gen~, externals et plugins restent
reportes sauf necessite fonctionnelle precise.
```

Regle :

```text
ne pas ouvrir une famille lourde si une famille simple peut cadrer la fonction.
```

---

## 3. Familles candidates a auditer dans le groupe D

| Famille candidate | Fonction a auditer | Exemples non finaux | Risque principal |
|---|---|---|---|
| NAT contract | declarer appartenance perceptive | NAT-SRC/CAV/FOR/FRI/MET/PEAU/ESP/HAL/IRR/HYB/FNC | naturalisation vague |
| Source-bonding | rattacher artefact a source/fonction | source, cavite, geste, scene, pression | source reduite a controleur |
| Source-filter / formants | voix, tube, bouche, didgeridoo, cavite | formants, filtres, resonances courtes | caricature vocale/cavite |
| Friction / souffle / air | respiration, pression, proximite | noise, breath, turbulence, sibilance controlee | brillance lisse electronique |
| Resonance / cavite | tube, corps, metal, bouche, volume | resonateurs, filtres, modes | effet special reconnaissable |
| Partiels / microtension | didgeridoo, gong, voix, metal | partiels, battements, inharmonicite | theorie ou dissonance plaquee |
| Metal / gong / bloom | gong, cloche non decorative, queue | metal trace, bloom, partiels riches | cloche decorative |
| Peau / bois / membrane | attaques, friction, corps percussif | peau, frottement, membrane | percussion illustrative |
| Texture / grain | densite, seuil, polytexture, matiere | grains, couches, nuages non finaux | nappe decorative |
| Saturation / rugosite | transgression, masse, presence | soft/hard, friction, rugissement | effet distorsion banal |
| Halo-source | memoire de source, queue, trace | GEN-HAL matiere, HAL autorise | confusion GEN-HAL/HAL |
| Espace commun / proximite | coller les matieres | early, room, monde commun | naturalisation par reverb seulement |
| Spectral / FFT/pfft | transformation fine | spectral, freeze, resynthese | lourdeur / artefact numerique |
| Convolution / corpus | empreinte, matiere, salle | IR, corpus, cross-synthesis | dependance lourde |
| ML / classification / timbre ID | decisions d'analyse timbrale | reconnaissance, embeddings | opacite, faux controle |

---

## 4. Criticite et latence

### 4.1. Chemins rapides possibles

Rapide possible :

```text
source-filter simple ;
filtrage de protection ;
friction / souffle reactif ;
controle de brillance ;
retrait de texture ;
mute/cut d'effet ;
source priority ;
limitation PA-X.
```

Condition :

```text
si la transformation affecte la jouabilite du didgeridoo, de la voix, du gong,
du grave ou du retour corporel, elle doit respecter P0/P1/P2, fallback et SIG.
```

### 4.2. Chemins lents possibles

Lent possible :

```text
texture longue ;
halo-source ;
bloom ;
evolution de grain ;
empreinte de salle ;
convolution ;
freeze derive ;
corpus ;
analyse timbrale lente.
```

Condition :

```text
lent ne veut pas dire decoratif.
fonction, sortie et controle live restent obligatoires.
```

### 4.3. Ce qui ne doit pas dependre de D

Interdit :

```text
P0 direct ;
P1 safe ;
protection grave critique ;
source live essentielle ;
rollback critique ;
signalisation critique ;
controle de feedback vital.
```

---

## 5. Roles GEN concernes

### 5.1. GEN-TEX

Fonction :

```text
densite lisible, couches, partiels, interlocking spectral, tension, matiere.
```

Point D :

```text
auditer comment la texture est produite ou transformee sans devenir nappe.
```

### 5.2. GEN-VOX

Fonction :

```text
voix, souffle, formants, fragments, cris, textures vocales integrees.
```

Point D :

```text
auditer formants, source-filter, souffle, cavite et integration virtualo-acoustique
sans voix nue ni auto-tune reconnaissable.
```

### 5.3. GEN-HAL-SOURCE / GEN-HAL

Fonction :

```text
matiere generative destinee au halo : trace, queue, memoire, souffle, grain.
```

Point D :

```text
GEN-HAL fournit une matiere.
HAL autorise, maintient, force, coupe ou sort.
GEN-HAL ne decide jamais HAL.
```

### 5.4. GEN-GRV / gong / sub / bloom

Fonction :

```text
souffle grave, sub precis, basse riche, gong, metal, bloom, base harmonique.
```

Point D :

```text
distinguer timbre grave, porteur grave, espace grave et fonction grave.
```

### 5.5. GEN-TRG

Fonction :

```text
masse, rugosite, saturation, nudite, dissonance, rugissement, transgression.
```

Point D :

```text
auditer saturation/rugosite comme fonction decidee, pas effet brutal par defaut.
```

---

## 6. Forme minimale d'un candidat D

Tout candidat D devra pouvoir etre audite sous cette forme :

```text
CANDIDAT-D
nom :
famille :
source :
phenomene retenu :
fonction Vesperare :
GEN-ROLE :
mode NAT :
relation source :
relation grave :
relation espace / halo :
timing / latence :
criticite :
controle live :
Auto-Pro autorise :
Auto-Pro interdit :
sortie :
fallback :
SIG :
risques :
interdits :
report :
```

Exemple abstrait non final :

```text
nom : cavite source-filter acid naturalise
famille : source-filter / cavite / formants
source : didgeridoo + souffle + partiels
phenomene retenu : torsion acid par cavite, sans squelch 303
fonction Vesperare : ligne vivante naturalisee, tension, mutation timbrale
GEN-ROLE : GEN-LIN / GEN-TEX / GEN-ACID-NAT
mode NAT : NAT-CAV + NAT-FRI + NAT-SRC
relation source : didgeridoo reste lisible ou trace indiquee
relation grave : ne brouille pas porteur grave
relation espace / halo : peut envoyer trace a GEN-HAL, HAL decide
timing / latence : expressif, non P0/P1
criticite : CRIT-2/3
controle live : apparition, torsion, naturalisation, retrait
Auto-Pro autorise : limiter brillance / masque / conflit source
Auto-Pro interdit : transformer en lead synth banal
sortie : re-naturaliser, dissoudre, retirer, silence
fallback : source-filter simple ou off
SIG : si seuil cliche ou limitation source
risques : squelch, formant caricatural, effet numerique
interdits : TB-303 par defaut, lead banal, motif autonome
report : choix objet / algorithme
```

---

## 7. Candidats lourds a surveiller sans ouvrir trop tot

Familles reportees :

```text
FFT/pfft ;
convolution ;
corpus sonore ;
cross-synthesis ;
machine learning ;
gen~ detaille ;
externals/plugins ;
granular engines complexes ;
modeles physiques detaillees ;
resynthese spectrale.
```

Condition d'ouverture :

```text
fonction musicale precise ;
source ou scene precise ;
besoin que les familles simples ne couvrent pas ;
criticite compatible ;
fallback ;
sortie ;
SIG si impact live ;
audit dedie si lourd ou opaque.
```

Regle :

```text
un candidat lourd ne devient pas meilleur parce qu'il est plus puissant.
il devient recevable seulement s'il resout une fonction Vesperare mieux qu'un
candidat plus simple.
```

---

## 8. Risques specifiques du groupe D

### 8.1. Naturalisation cosmetique

Symptome :

```text
la matiere est mise dans une reverb, mais sa source ou sa fonction reste floue.
```

Correction :

```text
declarer NAT mode, source/fonction, sortie et risque.
```

### 8.2. Effet reconnaissable subi

Symptome :

```text
filtre, resonateur, shimmer, freeze, distorsion, granularite ou pitch deviennent
identifiables comme outil.
```

Correction :

```text
naturaliser, reduire, rattacher a source/fonction, ou declarer PA-X volontaire.
```

### 8.3. Texture decorative

Symptome :

```text
la texture reste parce qu'elle sonne bien, mais ne porte plus corps, tension,
scene, retour, source ou transgression.
```

Correction :

```text
sortie obligatoire : retrait, simplification, halo decide, retour clair,
silence ou transfert de role.
```

### 8.4. Source masquee par sa transformation

Symptome :

```text
didgeridoo, voix, gong ou peau devient moins lisible a cause de la matiere
derivee.
```

Correction :

```text
source priority, Auto-Pro, retrait, fallback source seule, SIG.
```

### 8.5. PA-X non decide

Symptome :

```text
transgression, rugosite, nudite, saturation ou dissonance surgissent comme
accident de traitement.
```

Correction :

```text
PA-X doit etre choix live, scene ou fonction forte,
avec sortie et signalisation.
```

---

## 9. Questions non resolues mais cadrees

### Q-PREAUD-D-1 - audit unique ou sous-audits separes

Decision pre-audit :

```text
audit unique avec sous-sections.
si FFT/pfft, convolution, ML, corpus ou modele physique devient necessaire,
ouvrir un audit dedie via DETTE-ACT-6.
```

### Q-PREAUD-D-2 - limite entre D et reverb/espace

Decision pre-audit :

```text
D traite la matiere timbrale et son appartenance perceptive.
SPC/HAL/REV traitent monde spatial, halo, queue, freeze et espace.
les interfaces existent, mais aucun bloc ne doit decider a la place de l'autre.
```

### Q-PREAUD-D-3 - limite entre D et generation rythmique/melodique

Decision pre-audit :

```text
C traite timing, motifs et lignes.
D traite la matiere qui rend ces lignes et motifs perceptivement plausibles,
riches, acoustiques, hybrides ou transgressifs.
```

### Q-PREAUD-D-4 - niveau de detail technique

Decision pre-audit :

```text
auditer les familles et conditions.
ne pas choisir encore filtre, resonateur, granularite, FFT, convolution,
modeles physiques ou synthese finale.
```

---

## 10. Decision de sortie

Verdict pre-audit :

```text
pret pour audit compatibilite.
```

Autorise :

```text
AUDIT_COMPATIBILITE_SPECIFICATION_PRE_AUDIT_CANDIDATS_GENERATION_TIMBRALE_NATURALISATION_TRANSFORMATIONS_AVEC_CORPUS_v0_1.md
```

Puis, si compatible :

```text
AUDIT_CANDIDATS_GENERATION_TIMBRALE_NATURALISATION_TRANSFORMATIONS_MAX_STANDALONE_VESPERARE_v0_1.md
```

N'autorise pas :

```text
moteur timbral final ;
algorithme final ;
synthese finale ;
FFT/pfft detaille ;
convolution detaillee ;
corpus sonore ;
externals/plugins ;
ML ;
patch ;
UI ;
mapping ;
benchmark ;
implementation.
```
