# 03_SAMPLE_NEEDS_TO_SOURCE_NEEDS_BRIDGE

Version : v0.1  
Statut : pont de cohérence documentaire, sans collecte audio, sans prototypage.

## Objet

Ce document relie explicitement :

```text
01_INSTRUMENT_SOURCE_CANDIDATES_INITIAL
02_PRE_LIVE_SAMPLE_CORPUS_NEEDS_PROTOCOL
16_SOURCE_NEEDS_ASSET_DATABASE_PROTOCOL
```

Il corrige un risque de confusion : passer trop vite de `instrument_source_candidate` à `source_need`, puis à `asset`, sans effectuer l’audit intermédiaire qui décide **quels genres de samples et quels samples concrets doivent réellement être constitués avant le live**.

---

# 1. Rôle des trois couches

## 01 — Instrument / Source Candidate Inventory

Question :

```text
Quelles sources, instruments, objets, matières ou lieux pourraient être musicalement intéressants ?
```

Sortie :

```text
instrument_source_candidate
```

Ce niveau est ouvert, intuitif, exploratoire.

## 02 — Pre-Live Sample Corpus Needs Protocol

Question :

```text
Quels genres de samples et quels samples concrets faut-il constituer avant le live,
selon les besoins, l’existant, le pouvoir de traitement live des samples,
et les limites réalistes de la génération / simulation instrumentale ?
```

Sorties :

```text
SAMPLE_NEED ;
SAMPLE_TO_CONSTITUTE ;
statut : existant suffisant / à qualifier / à enregistrer / à chercher / à générer / live / hybride / différer / refuser.
```

Ce niveau est un audit de réduction : il cherche le minimum réel de samples nécessaires, pas l’expansion d’une banque.

## 16 — Source Needs / Asset Database Protocol

Question :

```text
Comment transformer les besoins validés en source_need, material_asset, material_pool,
selection_policy et quality_evaluation ?
```

Sorties :

```text
SOURCE_NEED ;
MATERIAL_ASSET ;
MATERIAL_POOL ;
SELECTION_POLICY ;
QUALITY_EVALUATION.
```

Ce niveau structure la base de données.

---

# 2. Chaîne corrigée

La chaîne complète devient :

```text
fonction / phénomène / esthétique / inspiration / intuition / lacune
→ instrument_source_candidate
→ affordances sonores
→ audit de l’existant
→ audit du traitement live possible des samples
→ audit réaliste génération / modélisation / simulation
→ SAMPLE_NEED
→ SAMPLE_TO_CONSTITUTE si nécessaire
→ SOURCE_NEED
→ MATERIAL_ASSET
→ MATERIAL_POOL
→ SELECTION_POLICY
→ QUALITY_EVALUATION
```

---

# 3. Règles de passage

## Candidat → Sample Need

Un instrument candidat ne crée un sample need que si :

```text
une fonction ou un phénomène en a besoin ;
l’existant ne suffit pas ;
le traitement live d’un petit nombre de samples ne suffit pas ;
la génération / modélisation ne suffit pas, ou seulement comme renfort ;
la qualité acoustique réelle est musicalement importante ;
le besoin est compatible avec les risques stylistiques et performatifs.
```

## Sample Need → Source Need

Un `sample_need` peut devenir un `source_need` si le besoin est stable et relié à :

```text
fonction ;
phénomène ;
rôle ;
objet candidat ;
scène ;
trajectoire ;
qualité attendue ;
stratégie de source.
```

## Sample Need → Sample To Constitute

Un `sample_need` produit un `sample_to_constitute` seulement si la décision est concrète :

```text
à enregistrer ;
à chercher ;
à préparer offline ;
à qualifier depuis existant.
```

S’il est marqué :

```text
à générer ;
à jouer live ;
référence seulement ;
à différer ;
à refuser.
```

alors il ne doit pas produire automatiquement de sample concret.

---

# 4. Rôle du traitement live des samples

Avant d’augmenter la quantité de samples, il faut évaluer ce qu’un petit nombre de samples permet déjà grâce aux traitements live.

Exemples de transformations pouvant réduire les besoins de corpus :

```text
pitch / transposition ;
time-stretch ;
slicing ;
transient / tail separation ;
filtrage ;
EQ dynamique ;
granulation ;
spectral freeze ;
résonateurs ;
convolution ;
random start ;
microtiming ;
reverse ;
layering ;
modulation de queue ;
traitement formantique ;
renfort spectral ;
hybridation sub / sample.
```

Principe :

```text
ne pas décider “plus de samples” avant d’avoir demandé ce que 1, 3 ou 5 très bons samples peuvent produire par traitement live.
```

---

# 5. Rôle de la génération / modélisation

Décision méthodologique :

```text
Par défaut, aucune modélisation d’instrument ne remplace automatiquement un besoin en sample.
```

Mais :

```text
la génération peut remplacer ou compléter certains phénomènes sonores.
```

## Phénomènes où la génération peut être prioritaire

```text
sub ;
vent ;
eau ;
pluie ;
gouttes ;
vagues ;
orage ;
feu ;
bruits de sol ;
flux granulaire ;
souffle abstrait ;
bruit filtré ;
densité de particules ;
micro-événements secondaires.
```

## Phénomènes où les samples restent probablement nécessaires

```text
gong central ;
queue acoustique exceptionnelle ;
voix signal ;
présence humaine expressive ;
field recording exposé ;
objet acoustique singulier ;
attaque de peau réaliste centrale ;
frottement ou raclage très caractéristique.
```

## Cas à analyser finement : peaux / percussions

Pour les peaux, il faut distinguer :

```text
modélisable : corps grave simple, enveloppe, résonance, variation secondaire ;
probablement sample : attaque réelle, grain de peau, geste humain, richesse transitoire, coups exposés ;
hybride probable : attaque sample + résonance / sub / traitement généré.
```

---

# 6. Réalisme logiciel / hardware

Hypothèse de travail :

```text
budget hardware possible : 5000 € ;
logiciels existants accessibles, y compris payants ;
pas de limite budgétaire logicielle théorique.
```

Mais :

```text
on ne suppose pas la création de modèles complexes d’instruments inexistants ;
on ne suppose pas une R&D lourde de modélisation physique au niveau laboratoire ;
on utilise les outils existants et les développements réalistes en Max for Live / Ableton ;
on peut inventer des systèmes originaux d’hybridation, de contrôle, d’organisation, de transformation, mais pas fonder le projet sur un modèle instrumental irréaliste.
```

Contraintes à considérer :

```text
qualité sonore ;
latence ;
CPU ;
stabilité live ;
complexité d’implémentation ;
temps de développement ;
contrôle musical ;
sécurité performative.
```

---

# 7. Sortie attendue avant la suite

Avant les fiches `source_need` définitives, il faut produire :

```text
SAMPLE_NEEDS_INITIAL
```

Cette table doit contenir :

```text
sample_need_id ;
fonction / phénomène / rôle ;
existant vérifié ;
pouvoir de traitement live ;
évaluation génération / modélisation ;
statut ;
quantité minimale ;
quantité idéale ;
samples concrets à constituer si nécessaire ;
raison de ne pas constituer si génération / existant / live suffit.
```

---

# 8. Séparation avec le système live

Ce document ne décide pas :

```text
quoi afficher au musicien ;
quel instrument suggérer pendant le live ;
quelle configuration proposer selon la scène ;
quelle option présenter dans le Router.
```

Ces décisions relèveront d’un futur système d’interface live.

Le lien futur possible est seulement :

```text
le système live pourra consulter les assets et pools validés,
mais il ne détermine pas les besoins de samples pré-live.
```
