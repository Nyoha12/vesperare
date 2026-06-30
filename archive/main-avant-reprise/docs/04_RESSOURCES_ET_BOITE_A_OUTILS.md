# 04_RESSOURCES_ET_BOITE_A_OUTILS

Version : v0.1  
Statut : document satellite.

## Objet

Ce document garde les ressources, outils et pistes techniques utiles pour Vesperare. Il ne remplace pas les documents de conception.

## Répartition générale des outils

### Max for Live

Rôle : cœur temps réel du système.

À utiliser pour :

```text
génération MIDI temps réel ;
traitement audio temps réel ;
analyse d’entrées live ;
macros jouables ;
régulation densité / grain / halo / saillance ;
Spectral Governor ;
Halo Controller ;
Impact Matrix ;
devices dans la chaîne Live ;
performance.
```

Décision : Max for Live reste l’outil central du projet.

### Ableton Extensions SDK

Rôle : outil satellite hors temps réel autour du Set Live.

À utiliser pour :

```text
préparer des Sets ;
créer des pistes et groupes ;
générer des clips MIDI de test ;
créer des scènes de test ;
annoter les pistes par fonction ;
auditer la structure d’un Set ;
exporter des snapshots ;
automatiser des tâches répétitives ;
documenter les essais ;
accélérer les prototypes futurs.
```

À ne pas utiliser pour :

```text
audio temps réel ;
analyse audio live ;
instruments ;
effets audio ;
monitoring MIDI temps réel ;
réactions sample-accurate ;
performance interactive.
```

### Node for Max

Rôle : relier Max à JavaScript / Node / npm / outils externes.

Usages possibles :

```text
scripts auxiliaires ;
gestion de fichiers ;
export JSON ;
interface de debug ;
petits serveurs locaux ;
liaison avec outils IA ou processus externes non temps réel.
```

### JavaScript dans Max

Rôle : logique, matrices, règles, structures de données.

Usages :

```text
Impact Matrix ;
tables de comportements ;
gestion de presets ;
règles conditionnelles ;
mapping fonctions → paramètres ;
configuration utilisateur.
```

### Gen / gen~

Rôle : DSP rapide, précis, bas niveau.

À envisager pour :

```text
traitements audio spécifiques ;
filtrages personnalisés ;
oscillateurs ;
enveloppes précises ;
micro-DSP.
```

### RNBO

Rôle : export futur possible.

À envisager plus tard pour :

```text
VST/AU ;
Web Audio ;
Raspberry Pi ;
modules portables ;
code exporté.
```

Pas prioritaire actuellement.

## Analyse audio / machine listening

### FluCoMa

Très pertinent pour :

```text
analyse de samples ;
extraction de descripteurs ;
similarité timbrale ;
slicing intelligent ;
classification douce de matériaux ;
préparation de banques de sons ;
analyse de gongs / tambours / objets.
```

### MuBu / IRCAM

Pertinent pour :

```text
analyse de sons longs ;
didgeridoo ;
gongs ;
tambours ;
corpus de résonances ;
mémoire d’événements ;
apprentissage interactif ;
CataRT / synthèse concaténative.
```

### ml.star / Wekinator

À envisager plus tard pour mappings appris, comportements adaptatifs, classification interactive ou apprentissage de modes de jeu.

## IA dans le workflow

Usage prévu :

```text
aider à concevoir ;
générer du code ;
documenter ;
structurer des matrices JSON ;
produire des scripts Extensions SDK ;
aider au debug ;
accélérer la recherche.
```

Prudence : l’IA n’est pas le cœur esthétique du système.

## Extensions SDK envisagées

### Set Scaffold

Crée automatiquement :

```text
groupes Fondation / Corps / Articulation / Air / Halo / Live Inputs ;
returns HALO / ECHO / ANALYSIS ;
pistes MIDI de test ;
pistes audio live ;
noms et couleurs.
```

### Pattern Batch Generator

Génère des clips :

```text
densité basse / moyenne / haute ;
rotations ;
accent-melodies ;
patterns euclidiens ;
silences ;
variations.
```

### Scene Test Builder

Crée des scènes :

```text
Sec / contour sculpté ;
Dense ;
Halo faible ;
Halo fort ;
Glissement ;
Respiration ;
Stress test médium ;
Stress test aigu.
```

### Snapshot Reporter

Exporte :

```text
structure du Set ;
pistes ;
clips ;
macros ;
valeurs importantes ;
hypothèse du test ;
observations.
```

### Spectral Role Annotator

Ajoute ou vérifie des tags :

```text
sub ;
low ;
mid ;
high ;
air ;
halo ;
live ;
accent ;
body.
```

## Ressources à rechercher plus tard

```text
techno minimal / hypnotique / hardcore mais confortable ;
sound design acoustiquement plausible ;
percussions fines : cymbales, cymbalettes, cloches, bols, gongs ;
traitement de voix non chantée ;
systèmes live Ableton avancés ;
Max for Live Live API ;
analyse audio et descripteurs ;
performance complète dans Ableton.
```
