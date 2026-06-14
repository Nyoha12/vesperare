# 22_CONTEXTUAL_VISUALIZATION_REQUIREMENTS

Version : v0.1  
Statut : exigences compactes de visualisation contextuelle. Sans interface graphique, sans Max for Live, sans mapping matériel, sans prototype.

## Objet

Ce document précise :

```text
LAYER_7_CONTEXTUAL_VISUALIZATION
```

La visualisation doit aider le musicien à décider pendant la performance.

Elle ne doit pas être décorative, spectaculaire, permanente ou purement technique.

Règle centrale :

```text
visualiser pour décider, pas pour illustrer.
```

---

# 1. Déclencheurs de visualisation

Une vue peut apparaître ou changer selon :

```text
contrôle touché ;
knob / macro / paramètre sélectionné ;
source active ;
état de scène ;
mesure / cycle / phase ;
loop / repeat / freeze actif ;
risque détecté ;
configuration live ;
fonction musicale en cours.
```

Priorité d’apparition :

```text
1. risque critique actif ;
2. contrôle touché ;
3. objet temporel actif ;
4. état de scène ;
5. configuration de source ;
6. information de fond.
```

---

# 2. Vues nécessaires

## VIEW_MEASURE_RHYTHM

Rôle : lire mesure, tempo, cycle, subdivisions, points de retour au corps.

À montrer quand :

```text
tempo / mesure / loop / repeat sont manipulés ;
polytexture change ;
une transition approche.
```

Peut afficher :

```text
bar_position ;
beat_position ;
cycle_phase ;
subdivision_grid ;
loop_length ;
repeat_rate ;
polytexture_activity ;
return_to_body_points.
```

## VIEW_LOOP_REPEAT_FREEZE

Rôle : lire l’état des objets temporels.

À montrer quand :

```text
loop capturée ;
repeat activé ;
freeze actif ;
sortie de freeze à préparer ;
risque de remplacement du live.
```

Peut afficher :

```text
source ciblée ;
état loop / repeat / freeze ;
longueur ;
quantification ;
mode de sortie ;
risque anti-ambient ;
relation au live ;
relation au corps.
```

## VIEW_TOUCHED_CONTROL_CONTEXT

Rôle : montrer ce que le contrôle touché modifie vraiment.

Peut afficher :

```text
fonction musicale ;
paramètres affectés ;
couches concernées ;
sources affectées ;
protections liées ;
risques possibles ;
état de scène affecté.
```

## VIEW_SCENE_PROPORTIONS

Rôle : lire le contenu et les proportions de scène.

Peut afficher :

```text
corps / champ / texture / live ;
densité relative ;
présence des sources ;
pression ;
état de retrait ;
contenu de scène ;
trajectoire actuelle.
```

## VIEW_SOURCE_CONFIGURATION

Rôle : lire les sources disponibles et leur fonction.

Peut afficher :

```text
didgeridoo ;
guimbardes ;
gong optionnel ;
tambour optionnel ;
engine actif ;
matière préparée ;
fonction occupée ;
risque de remplacement.
```

## VIEW_PITCH_PARTIALS_MELODY

Rôle : lire les relations de hauteurs, partiels, formants ou gestes mélodiques pertinents.

Peut afficher :

```text
centres spectraux ;
relation sub / didgeridoo ;
partiels dominants ;
frictions ;
battements ;
formants ;
contours mélodiques ;
risque de conflit.
```

Ne doit pas forcer une théorie tonale stricte.

## VIEW_GUARDS_WARNINGS

Rôle : montrer les risques utiles, sans devenir un panneau d’alarme permanent.

Peut afficher :

```text
anti-ambientisation ;
low-mid overload ;
masquage du live ;
loop qui remplace le live ;
freeze trop long ;
repeat décoratif ;
retour au corps affaibli ;
auto-sélection interdite.
```

---

# 3. Catégories fonctionnelles possibles

Ces catégories ne sont pas encore des onglets d’interface.

Elles sont des zones fonctionnelles possibles :

```text
temps / mesure / rythme ;
loop / repeat / freeze ;
corps / pression / impact ;
scène / proportion / arrangement ;
sources / configuration ;
hauteurs / partiels / mélodie ;
protections / warnings ;
contrôle touché / contexte local.
```

---

# 4. Interdictions actuelles

Ne pas encore :

```text
dessiner l’interface ;
choisir un layout ;
choisir couleurs ou graphiques définitifs ;
implémenter les vues ;
figer le nombre de vues ;
figer la navigation ;
créer un dashboard global permanent ;
faire une visualisation décorative.
```

---

# 5. Décision actuelle

La visualisation contextuelle est nécessaire.

Elle doit être :

```text
pratique ;
contextuelle ;
priorisée ;
liée aux gestes ;
liée aux risques ;
liée au temps ;
liée au live ;
non décorative.
```

Cette série doit maintenant être consolidée dans les index avant d’ajouter de nouveaux concepts.

Action suivante :

```text
mettre à jour README, 00_INDEX_METHODE_DECISIONS, assets index / documentation map si nécessaire.
```
