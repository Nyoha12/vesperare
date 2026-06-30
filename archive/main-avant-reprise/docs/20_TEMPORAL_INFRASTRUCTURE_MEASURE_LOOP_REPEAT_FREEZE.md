# 20_TEMPORAL_INFRASTRUCTURE_MEASURE_LOOP_REPEAT_FREEZE

Version : v0.1  
Statut : cadrage compact de l’infrastructure temporelle. Sans interface graphique, sans Max for Live, sans mapping matériel, sans prototype.

## Objet

Ce document précise la couche :

```text
LAYER_0_TEMPORAL_INFRASTRUCTURE
```

Elle concerne :

```text
mesure ;
tempo ;
cycle ;
création de loop ;
repeat ;
freeze temporel ;
quantification ;
sortie temporelle.
```

Ces fonctions ne sont pas des effets ajoutés. Elles sont des conditions de jeu pour la techno organique.

---

# 1. Principe

Le temps doit pouvoir être piloté comme une matière de performance.

Mais l’infrastructure temporelle ne doit pas devenir :

```text
un looper générique ;
un beat repeat décoratif ;
un freeze permanent ;
un navigateur de clips ;
un remplacement du live ;
un système rythmique automatique hors scène.
```

Elle doit servir :

```text
corps ;
hypnose ;
polytexture ;
tension longue ;
retour au corps ;
protection du live ;
conduite de scène.
```

---

## Note de statut

Dans ce document, loop, repeat, freeze, cycle et phase sont des affordances temporelles situées. Ils ne valent pas, par eux-mêmes, répétition non redondante ni hypnose active. Une répétition peut contribuer à une identité temporelle ; une hypnose peut utiliser boucle, stabilité ou mutation lente ; mais ces objets temporels restent des moyens au service d'une fonction de scène, d'une relation au live, d'un risque et d'une sortie.

Une loop ne doit pas devenir banque, clip ou remplacement durable du didgeridoo ou des guimbardes. Un repeat ne doit pas devenir effet démonstratif. Un freeze ne doit pas devenir drone, stase ou ambientisation. Toute capture, répétition ou suspension doit garder une fonction musicale explicite, une relation au live, un risque identifié et une sortie / release disponible.

Le système peut assister, signaler, rendre visible, limiter ou protéger. Il ne décide pas la forme expressive, le moment de résolution, le maintien au bord ou le retour au corps à la place de Yohan.

---

# 2. Objets temporels abstraits

## 2.1 TEMPO_STATE

Rôle : définir ou suivre le tempo de référence.

À documenter plus tard :

```text
tempo_value ;
tempo_source ;
tempo_stability ;
tempo_transition_mode ;
external_sync_state.
```

Contraintes :

```text
soutenir le corps ;
permettre des transitions ;
ne pas rendre le live mécanique.
```

## 2.2 METER_STATE

Rôle : représenter la mesure musicale, la position et les subdivisions.

À documenter plus tard :

```text
meter_signature ;
bar_position ;
beat_position ;
subdivision_grid ;
phrase_position ;
free_meter_flag.
```

Contraintes :

```text
guider sans rigidifier ;
soutenir loops / repeats / transitions ;
rester compatible avec les sources live organiques.
```

## 2.3 CYCLE_STATE

Rôle : organiser des durées plus longues que la mesure.

Fonctions concernées :

```text
hypnose ;
tension longue ;
pré-drop ;
retour au corps ;
variation lente ;
proportion de scène.
```

## 2.4 LOOP_OBJECT

Rôle : représenter une boucle capturée ou générée comme objet temporaire.

Une loop doit avoir :

```text
source ;
fonction ;
longueur ;
phase ;
relation au live ;
relation au corps ;
mode de sortie ;
risque.
```

Règle :

```text
une loop qui remplace le live ou devient banque doit être limitée ou rejetée.
```

## 2.5 REPEAT_EVENT

Rôle : répéter temporairement un fragment, un geste, une densité ou une impulsion.

Fonctions possibles :

```text
hypnose ;
polytexture ;
pression rythmique ;
préparation d’impact ;
révélation de micro-structure.
```

Règle :

```text
un repeat doit servir une scène ou une fonction, pas attirer l’attention sur lui-même.
```

## 2.6 TEMPORAL_FREEZE

Rôle : suspendre temporairement le flux d’une source, d’une couche ou d’un état.

Fonctions possibles :

```text
suspension ;
exposition de matière ;
tension longue ;
contraste avec le corps ;
révélation de partiels ou formants.
```

Règle :

```text
un freeze doit toujours avoir une sortie pensée.
```

## 2.7 FREEZE_RELEASE

Rôle : sortir du freeze sans casser la scène.

Modes conceptuels possibles :

```text
cut ;
fade ;
duck ;
collapse ;
filter_release ;
return_to_body ;
rejoin_live.
```

---

# 3. Quantification et liberté

Le système doit distinguer :

```text
gestes quantifiés ;
gestes semi-libres ;
gestes libres.
```

Gestes probablement quantifiés :

```text
LOOP_COMMIT ;
REPEAT_TRIGGER rythmique ;
REPEAT_RELEASE ;
cycle reset ;
transition préparée.
```

Gestes probablement libres ou semi-libres :

```text
MACRO_PRESSURE ;
MACRO_WITHDRAWAL ;
freeze entry ;
traitements didgeridoo ;
traitements guimbardes ;
variation de densité.
```

Règle :

```text
la quantification doit soutenir la performance, pas tuer le live.
```

---

# 4. Relations aux contrôles validés

```text
MACRO_BODY_RETURN peut dépendre de mesure, cycle, loop release ou freeze release.
MACRO_PRESSURE peut influencer densité, repeat, compression temporelle ou tension de cycle.
MACRO_IMPACT peut être lié à mesure, cycle, loop boundary ou sortie de repeat.
MACRO_POLYTEXTURE_DENSITY dépend des cycles, subdivisions, loops courts et repeats contrôlés.
GUARD_ANTI_AMBIENT surveille loops longs, freeze, halos, drones et field recordings.
STATE_LIVE_PRIORITY vérifie que loops/repeats/freezes du live ne remplacent pas le jeu vivant.
```

---

# 5. Visualisations nécessaires

## VIEW_MEASURE_RHYTHM

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

## VIEW_GUARDS_WARNINGS

Peut afficher :

```text
freeze trop long ;
repeat décoratif ;
loop qui remplace le live ;
perte du corps ;
low-mid risk ;
absence de sortie.
```

---

# 6. Questions à résoudre avant implémentation

```text
1. Quelles sources peuvent être capturées en loop ?
2. Les loops peuvent-elles venir du live fixe sans le remplacer ?
3. Quels repeats suivent la mesure, lesquels restent libres ?
4. Le freeze vise-t-il une source, une couche ou un état de scène ?
5. Le freeze peut-il capturer didgeridoo ou guimbardes ?
6. Quelles sorties de freeze renforcent le retour au corps ?
7. Quelles fonctions temporelles sont trop risquées pour l’automatisation ?
8. Comment éviter que loop / repeat / freeze deviennent des effets reconnaissables ?
```

---

# 7. Décision actuelle

L’infrastructure temporelle est nécessaire avant toute interface graphique.

Elle doit rester :

```text
musicale ;
contrainte ;
liée aux scènes ;
liée au corps ;
protectrice du live ;
non décorative.
```

Prochaine étape recommandée :

```text
21_TEMPORAL_INFRASTRUCTURE_DECISION_QUESTIONS.md
```

Objectif : répondre aux questions ci-dessus avant d’organiser buffers, captures, loops, repeat et freeze.
