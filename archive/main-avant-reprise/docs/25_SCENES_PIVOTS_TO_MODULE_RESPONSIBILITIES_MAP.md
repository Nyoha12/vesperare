# 25_SCENES_PIVOTS_TO_MODULE_RESPONSIBILITIES_MAP

Version : v0.1  
Statut : carte de liaison entre scènes-pivots et responsabilités de modules futurs. Sans patch, sans mapping, sans prototype.

## Objet

Ce document relie :

```text
24_SCENES_PIVOTS_CHAMPS_OUVERTS_PREMIERE_SERIE.md
```

aux modules futurs déjà anticipés dans :

```text
08_PERFORMANCE_SCENES_TRAJECTOIRES_OBJETS.md
09_FICHES_MODELES_OBJETS_TRAJECTOIRES_SCENES.md
README.md
00_INDEX_METHODE_DECISIONS.md
```

Il ne crée pas de nouveau module.

Il précise seulement quelles responsabilités les modules devront assumer si les scènes-pivots deviennent des situations de performance réelles.

Modules concernés :

```text
Scene / Performance Conductor ;
Contextual Control Router ;
Conflict / Protection Manager ;
Temporal Infrastructure ;
Object Registry ;
Pitch / Harmonic Field Manager ;
Timbre & Material Mapper ;
Source Needs / Asset Database Protocol.
```

---

# 1. Principe

Une scène-pivot ne doit pas être gérée par un seul module.

Elle est un champ ouvert où plusieurs modules coopèrent.

Formule :

```text
scène-pivot
→ état actif
→ objets / rôles
→ trajectoires
→ contrôles contextuels
→ temporalité
→ protections
→ visualisations
→ décisions de sources / assets si nécessaire
```

---

# 2. Responsabilités transversales des modules

## Scene / Performance Conductor

Responsabilités :

```text
connaître la scène active ;
connaître l’état actif ;
organiser trajectoires globales et locales ;
gérer phases : armement, préparation, seuil, résolution, post-trace ;
gérer sorties possibles ;
gérer bifurcations ;
dire quels événements sont armés mais non déclenchés.
```

Ne doit pas :

```text
composer à la place du musicien ;
déclencher les grands moments formels sans autorisation ;
figer la scène comme preset.
```

## Contextual Control Router

Responsabilités :

```text
présenter les contrôles prioritaires ;
masquer ou reléguer les contrôles secondaires ;
réagir au contrôle touché ;
changer selon scène, état, phase, source, rôle et risque ;
relier les vues contextuelles aux gestes.
```

Ne doit pas :

```text
tout montrer tout le temps ;
transformer l’interface en panneau technique ;
créer une navigation lente en performance.
```

## Conflict / Protection Manager

Responsabilités :

```text
protéger le corps ;
protéger le live fixe ;
prévenir ambientisation ;
prévenir boue bas-médium ;
prévenir replacement du live par loop / repeat / freeze ;
gérer conflits de densité, halo, sub, voix, gong, guimbardes.
```

Ne doit pas :

```text
interdire toute tension ;
autonomiser les protections au point de bloquer la musique ;
écraser les conflits féconds.
```

## Temporal Infrastructure

Responsabilités :

```text
gérer tempo, mesure, cycle ;
gérer loop temporaire ;
gérer repeat ;
gérer freeze et release ;
distinguer quantifié / semi-libre / libre ;
connecter objets temporels aux scènes ;
forcer une sortie si freeze ou loop deviennent permanents.
```

Ne doit pas :

```text
devenir looper générique ;
devenir effet stutter ;
remplacer le live ;
proposer freeze sans release.
```

## Object Registry

Responsabilités :

```text
connaître les objets disponibles ;
connaître sources live fixes et optionnelles ;
connaître rôles possibles ;
connaître capacités de trajectoire ;
connaître interdits et protections ;
connaître configurations de présence/absence gong/tambour.
```

Ne doit pas :

```text
traiter les sources comme banque ;
confondre objet et rôle ;
figer un objet dans une fonction unique.
```

## Pitch / Harmonic Field Manager

Responsabilités :

```text
suivre centres spectraux ;
surveiller partiels ;
gérer frictions et battements ;
gérer relations sub / didgeridoo / guimbardes / gong ;
informer les vues mélodiques / partiels ;
protéger le retour au corps si l’harmonie se dissout.
```

Ne doit pas :

```text
imposer une théorie tonale stricte ;
rendre les champs harmoniques permanents ;
transformer les partiels en décor.
```

## Timbre & Material Mapper

Responsabilités :

```text
traduire opérations selon la nature des sources ;
sculpter matière, contour, attaque, queue ;
préserver fonction malgré changement de support ;
gérer naturalisation par rôle ;
relier matière et contrôle.
```

Ne doit pas :

```text
classer les sons par familles fermées ;
produire de la couleur décorative ;
masquer la fonction musicale.
```

---

# 3. Scène-pivot 1 → modules

## SCENE_PIVOT_CORPS_VIVANT_POLYTEXTURE

Fonction centrale : corps vivant, lisible, actif, polytextural.

### Scene / Performance Conductor

Doit gérer :

```text
état BASE_BODY ou POLYTEXTURE_BODY ;
passage vers PRESSURE_BUILD ;
passage vers PRE_DROP ;
retour au corps ;
maintien d’une densité lisible.
```

### Contextual Control Router

Contrôles prioritaires :

```text
MACRO_BODY_RETURN ;
MACRO_PRESSURE ;
MACRO_IMPACT ;
MACRO_POLYTEXTURE_DENSITY ;
STATE_LIVE_PRIORITY ;
GUARD_LOW_MID_SAFETY.
```

Vues utiles :

```text
VIEW_MEASURE_RHYTHM ;
VIEW_TOUCHED_CONTROL_CONTEXT ;
VIEW_GUARDS_WARNINGS ;
VIEW_SOURCE_CONFIGURATION.
```

### Conflict / Protection Manager

Surveille :

```text
sub qui couvre didgeridoo ;
polytexture confuse ;
loop qui remplace guimbardes ;
repeat décoratif ;
boue bas-médium.
```

### Temporal Infrastructure

Autorise :

```text
repeat rythmique ;
loop temporaire de guimbarde ;
cycle de densité ;
freeze court seulement si rôle clair.
```

### Object Registry

Objets prioritaires :

```text
didgeridoo ;
guimbardes ;
sub ;
tambour optionnel ;
gong optionnel ponctuel.
```

---

# 4. Scène-pivot 2 → modules

## SCENE_PIVOT_TENSION_ARMEE_PRE_DROP

Fonction centrale : armer une résolution sans l’imposer.

### Scene / Performance Conductor

Doit gérer :

```text
armement ;
préparation ;
seuil ;
résolution ;
fausse résolution ;
annulation ;
bifurcation vers suspension.
```

### Contextual Control Router

Contrôles prioritaires :

```text
MACRO_LONG_TENSION ;
MACRO_PRESSURE ;
MACRO_IMPACT ;
MACRO_WITHDRAWAL ;
MACRO_BODY_RETURN ;
GUARD_ANTI_AMBIENT ;
STATE_LIVE_PRIORITY.
```

Vues utiles :

```text
VIEW_MEASURE_RHYTHM ;
VIEW_LOOP_REPEAT_FREEZE ;
VIEW_SCENE_PROPORTIONS ;
VIEW_GUARDS_WARNINGS ;
VIEW_SOURCE_CONFIGURATION.
```

### Conflict / Protection Manager

Surveille :

```text
drop automatique ;
repeat démonstratif ;
freeze-drone ;
sub instable ;
gong spectaculaire sans préparation ;
voix-gimmick.
```

### Temporal Infrastructure

Doit gérer :

```text
cycle de tension ;
repeat quantifié si rythmique ;
loop courte temporaire ;
freeze source-based bref avec release ;
placement possible de résolution.
```

### Object Registry

Objets pivots possibles :

```text
sub ;
didgeridoo ;
guimbardes ;
gong ;
voix ;
tambour.
```

### Pitch / Harmonic Field Manager

Intervient si :

```text
tension grave microtonale ;
relation sub / didgeridoo ;
partiels de gong ;
voix comme tension formantique.
```

---

# 5. Scène-pivot 3 → modules

## SCENE_PIVOT_SUSPENSION_MATIERE_RETOUR

Fonction centrale : suspendre, exposer, puis garder retrait ou retour au corps possible.

### Scene / Performance Conductor

Doit gérer :

```text
suspension ;
exposition ;
retrait ;
retour ;
pré-drop éventuel ;
transfert vers polytexture ;
fermeture de halo.
```

### Contextual Control Router

Contrôles prioritaires :

```text
MACRO_WITHDRAWAL ;
MACRO_BODY_RETURN ;
MACRO_LONG_TENSION ;
SUBCTRL_CONTOUR ;
GUARD_ANTI_AMBIENT ;
STATE_LIVE_PRIORITY ;
GUARD_LOW_MID_SAFETY.
```

Vues utiles :

```text
VIEW_LOOP_REPEAT_FREEZE ;
VIEW_PITCH_PARTIALS_MELODY ;
VIEW_SCENE_PROPORTIONS ;
VIEW_GUARDS_WARNINGS ;
VIEW_TOUCHED_CONTROL_CONTEXT.
```

### Conflict / Protection Manager

Surveille :

```text
freeze sans sortie ;
halo permanent ;
perte du corps ;
field recording décoratif ;
source trop identifiable ;
beauté exposée qui coupe la forme.
```

### Temporal Infrastructure

Autorise :

```text
freeze source-based ;
freeze layer-based ;
loop temporaire comme ombre ;
repeat rare semi-libre ;
cycle de sortie / retour.
```

### Pitch / Harmonic Field Manager

Intervient si :

```text
partiels de didgeridoo ;
formants de guimbardes ;
partiels de gong ;
voix comme formants ;
champ harmonique ;
frictions / battements.
```

### Timbre & Material Mapper

Doit traduire :

```text
exposer ;
figer ;
ouvrir ;
réduire ;
réincorporer ;
transférer.
```

---

# 6. Responsabilités communes à valider

Avant spécification technique détaillée, vérifier :

```text
1. Le Scene / Performance Conductor peut-il représenter les trois scènes sans les figer ?
2. Le Contextual Control Router peut-il afficher peu de contrôles mais les bons ?
3. Le Conflict / Protection Manager peut-il protéger sans neutraliser les tensions ?
4. Temporal Infrastructure peut-il gérer loop/repeat/freeze sans devenir un looper générique ?
5. Object Registry peut-il distinguer source, objet, rôle et fonction ?
6. Pitch / Harmonic Field Manager intervient-il seulement quand nécessaire ?
7. Timbre & Material Mapper préserve-t-il les fonctions en changeant de support ?
```

---

# 7. Décision actuelle

Cette carte suffit pour préparer une étape technique prudente.

Prochaine étape possible :

```text
créer un audit de congruence entre les scènes-pivots et les spécifications modules existantes,
avant toute nouvelle spécification ou prototype.
```

Ne pas encore créer :

```text
patch ;
layout ;
mapping ;
engine ;
prototype ;
module final.
```
