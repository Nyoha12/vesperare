# 24_SCENES_PIVOTS_CHAMPS_OUVERTS_PREMIERE_SERIE

Version : v0.1  
Statut : première série de scènes-pivots comme champs ouverts. Sans interface graphique, sans mapping, sans Max for Live, sans prototype.

## Objet

Ce document applique :

```text
23_SCENES_COMME_CHAMPS_OUVERTS_DE_PERFORMANCE.md
```

Il ne définit pas des morceaux, presets ou scènes Ableton finales.

Il remplit trois scènes-pivots capables de couvrir large sans fermer :

```text
1. SCENE_PIVOT_CORPS_VIVANT_POLYTEXTURE
2. SCENE_PIVOT_TENSION_ARMEE_PRE_DROP
3. SCENE_PIVOT_SUSPENSION_MATIERE_RETOUR
```

Ces trois scènes servent à tester la congruence entre :

```text
fonctions techno ;
sources live ;
objets / rôles ;
trajectoires ;
contrôles live ;
infrastructure temporelle ;
visualisation contextuelle ;
protections.
```

Règle :

```text
ouvrir sans diluer ;
structurer sans fermer.
```

---

# 1. SCENE_PIVOT_CORPS_VIVANT_POLYTEXTURE

## Fonction centrale

Installer un corps vivant, lisible, actif, capable de porter pression, hypnose et densité sans devenir une boucle fermée.

## Champs couverts

```text
BASE_BODY ;
PRESSURE_BUILD ;
POLYTEXTURE_BODY ;
RETURN_TO_BODY.
```

## Sources privilégiées

```text
didgeridoo live ;
guimbardes live ;
sub / pression engine ;
tambour si présent ;
objets percussifs courts si validés.
```

## Sources optionnelles

```text
gong comme ponctuation ou masse ;
loop temporaire de guimbarde ;
repeat rythmique contrôlé ;
freeze court seulement si rôle clair.
```

## Rôles possibles

```text
didgeridoo: fondation organique / pression / trace corporelle ;
guimbardes: micro-pulse / formants / articulation polytexturale ;
sub: centre physique / tension grave / stabilisation ;
tambour: peau / impact / ancrage ;
gong: masse ponctuelle / résolution / halo court.
```

## Trajectoires ouvertes

```text
corps stable → pression ;
corps stable → polytexture ;
polytexture → pré-drop ;
pression → retour au corps ;
corps → suspension avec trace corporelle.
```

## Opérations disponibles

```text
densifier ;
réaligner ;
retenir ;
accentuer ;
retirer ;
réincorporer ;
stabiliser.
```

## Contrôles prioritaires

```text
MACRO_BODY_RETURN ;
MACRO_PRESSURE ;
MACRO_IMPACT ;
MACRO_POLYTEXTURE_DENSITY ;
STATE_LIVE_PRIORITY ;
GUARD_LOW_MID_SAFETY.
```

## Infrastructure temporelle

```text
METER_STATE actif ;
CYCLE_STATE utile ;
REPEAT_EVENT autorisé si rythmique ;
LOOP_OBJECT autorisé comme trace temporaire ;
TEMPORAL_FREEZE déconseillé sauf micro-suspension.
```

## Visualisations utiles

```text
VIEW_MEASURE_RHYTHM ;
VIEW_TOUCHED_CONTROL_CONTEXT ;
VIEW_GUARDS_WARNINGS ;
VIEW_SOURCE_CONFIGURATION.
```

## Protections

```text
live priority ;
low-mid safety ;
anti-loop-as-bank ;
anti-repeat-decoratif ;
sub stability ;
polytexture readability.
```

## Interdits

```text
loop qui remplace guimbardes ou didgeridoo ;
polytexture confuse ;
repeat spectaculaire gratuit ;
sub qui couvre le didgeridoo ;
body return réduit à drop standard.
```

## Sorties possibles

```text
vers PRESSURE_BUILD ;
vers PRE_DROP ;
vers LONG_TENSION ;
vers SUSPENSION avec trace corporelle ;
vers RETURN_TO_BODY.
```

---

# 2. SCENE_PIVOT_TENSION_ARMEE_PRE_DROP

## Fonction centrale

Armer une résolution sans l’imposer : tension, retrait, attente, seuil, bifurcation.

## Champs couverts

```text
PRESSURE_BUILD ;
LONG_TENSION ;
PRE_DROP ;
WITHDRAWAL ;
RETURN_TO_BODY.
```

## Sources privilégiées

```text
sub / pression ;
didgeridoo comme grave vivant ou trace ;
guimbardes comme microtension ;
gong si présent ;
voix si fonction signal/cri validée ;
tambour si résolution peau nécessaire.
```

## Sources optionnelles

```text
repeat rythmique ;
loop courte ;
freeze source-based bref ;
field recording seulement si fonction de scène validée.
```

## Rôles possibles

```text
sub: retenu / tension / résolution possible ;
didgeridoo: pression organique / trace / centre instable ;
guimbardes: tension de surface / fragmentation ;
gong: masse armée / rugissement / résolution ;
voix: signal armé / cri possible / fragment ;
tambour: impact de résolution.
```

## Trajectoires ouvertes

```text
pression → pré-drop ;
pré-drop → drop rare ;
pré-drop → fausse résolution ;
pré-drop → suspension ;
long tension → retrait ;
long tension → retour au corps.
```

## Opérations disponibles

```text
retirer ;
retenir ;
fragmenter ;
tendre ;
armer ;
retarder ;
réaligner ;
résoudre ;
bifurquer.
```

## Contrôles prioritaires

```text
MACRO_LONG_TENSION ;
MACRO_PRESSURE ;
MACRO_IMPACT ;
MACRO_WITHDRAWAL ;
MACRO_BODY_RETURN ;
GUARD_ANTI_AMBIENT ;
STATE_LIVE_PRIORITY.
```

## Infrastructure temporelle

```text
METER_STATE important ;
CYCLE_STATE important ;
REPEAT_EVENT quantifiable si rythmique ;
LOOP_OBJECT seulement temporaire ;
TEMPORAL_FREEZE autorisé uniquement si release claire.
```

## Visualisations utiles

```text
VIEW_MEASURE_RHYTHM ;
VIEW_LOOP_REPEAT_FREEZE ;
VIEW_SCENE_PROPORTIONS ;
VIEW_GUARDS_WARNINGS ;
VIEW_SOURCE_CONFIGURATION.
```

## Protections

```text
anti-drop-automatique ;
anti-effet-style-identifiable ;
anti-repeat-decoratif ;
sub stability ;
low-mid safety ;
live priority ;
release obligatoire pour freeze.
```

## Interdits

```text
drop automatique ;
repeat comme effet démonstratif ;
freeze qui devient drone ;
voix-gimmick ;
gong spectaculaire sans préparation ;
résolution qui efface la tension construite.
```

## Sorties possibles

```text
résolution par impact ;
résolution par sub ;
résolution par gong ;
résolution par voix ;
fausse résolution ;
annulation ;
suspension ;
retour au corps.
```

---

# 3. SCENE_PIVOT_SUSPENSION_MATIERE_RETOUR

## Fonction centrale

Suspendre, exposer une matière ou un champ, puis garder une possibilité claire de retrait ou de retour au corps.

## Champs couverts

```text
SUSPENSION_EXPANSION ;
EXPOSED_MATERIAL ;
WITHDRAWAL ;
LONG_TENSION ;
RETURN_TO_BODY.
```

## Sources privilégiées

```text
didgeridoo comme trace corporelle ;
guimbardes comme formants / micro-pulse raréfié ;
gong comme halo ou partiels ;
voix comme matière / signal / souffle si validée ;
sub comme trace ou contrepoids ;
field recording seulement conditionnel.
```

## Sources optionnelles

```text
freeze source-based ;
freeze layer-based ;
halo harmonique ;
champ de partiels ;
loop temporaire comme ombre ;
engine de résonance si fonction validée.
```

## Rôles possibles

```text
didgeridoo: trace corporelle / souffle / partiels ;
guimbardes: détail exposé / formants / texture articulée ;
gong: halo / champ / beauté exposée ;
voix: présence humaine / souffle / fragment / signal ;
sub: contrepoids / retour latent ;
halo: espace actif mais surveillé.
```

## Trajectoires ouvertes

```text
corps → suspension ;
suspension → matière exposée ;
matière exposée → retrait ;
matière exposée → retour au corps ;
halo → fermeture ;
champ harmonique → stabilisation ;
suspension → pré-drop.
```

## Opérations disponibles

```text
retirer ;
suspendre ;
exposer ;
ouvrir ;
figer ;
laisser respirer ;
réduire ;
réincorporer ;
transférer.
```

## Contrôles prioritaires

```text
MACRO_WITHDRAWAL ;
MACRO_BODY_RETURN ;
MACRO_LONG_TENSION ;
SUBCTRL_CONTOUR ;
GUARD_ANTI_AMBIENT ;
STATE_LIVE_PRIORITY ;
GUARD_LOW_MID_SAFETY.
```

## Infrastructure temporelle

```text
TEMPORAL_FREEZE autorisé si source-based ou layer-based ;
FREEZE_RELEASE obligatoire ;
LOOP_OBJECT seulement comme trace temporaire ;
REPEAT_EVENT rare, plutôt semi-libre ;
CYCLE_STATE utile pour sortie et retour.
```

## Visualisations utiles

```text
VIEW_LOOP_REPEAT_FREEZE ;
VIEW_PITCH_PARTIALS_MELODY ;
VIEW_SCENE_PROPORTIONS ;
VIEW_GUARDS_WARNINGS ;
VIEW_TOUCHED_CONTROL_CONTEXT.
```

## Protections

```text
anti-ambient ;
freeze duration ;
release obligatoire ;
live priority ;
retour au corps ;
low-mid safety ;
source recognition risk.
```

## Interdits

```text
freeze sans sortie ;
halo permanent ;
beauté exposée qui coupe la forme ;
field recording décoratif ;
source trop identifiable sans fonction ;
perte totale du corps ;
drone automatique.
```

## Sorties possibles

```text
retour au corps ;
withdrawal ;
pré-drop ;
long tension ;
fermeture de halo ;
réincorporation sub / didgeridoo ;
transfert vers polytexture.
```

---

# 4. Ce que ces trois scènes couvrent déjà

```text
corps ;
pression ;
impact ;
hypnose ;
polytexture ;
tension longue ;
pré-drop ;
suspension ;
retrait ;
retour au corps ;
exposition de matière ;
loop temporaire ;
repeat contrôlé ;
freeze avec release ;
live priority ;
anti-ambient ;
visualisation contextuelle.
```

Elles ne ferment pas les autres scènes.

Elles servent de pivots pour vérifier les relations.

---

# 5. Ce qui reste ouvert

```text
scène field recording / lieu réel ;
scène voix plus centrale ;
scène gong/tambour comme double live optionnel ;
scène harmonic drone si vraiment nécessaire ;
scène métaux accordés / signaux harmoniques ;
scène cordes / torsion si besoin confirmé ;
scène silence relatif / quasi-vide ;
scène de peak corporel non agressif.
```

Ces scènes ne doivent être créées que si elles répondent à un besoin réel.

---

# 6. Décision actuelle

Ces trois scènes-pivots sont suffisantes pour une première validation structurelle.

Prochaine étape recommandée :

```text
relier ces trois scènes-pivots aux modules futurs :
Scene / Performance Conductor ;
Contextual Control Router ;
Conflict / Protection Manager ;
Temporal Infrastructure ;
Object Registry.
```

Ne pas créer plus de scènes avant cette vérification.
