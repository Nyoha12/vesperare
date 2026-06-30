# 17_LIVE_CONTROL_REQUIREMENTS_MATRIX_REDUCED

Version : v0.1  
Statut : matrice réduite des contrôles live abstraits. Sans interface graphique, sans Max for Live, sans mapping matériel, sans prototype.

## Objet

Ce document réduit la matrice `15_LIVE_CONTROL_REQUIREMENTS_MATRIX.md` après l’audit `16_LIVE_CONTROL_MATRIX_PERFORMABILITY_AUDIT.md`.

Le but est de conserver un noyau de contrôles jouables et d’éviter :

```text
surcharge cognitive ;
doublons ;
contrôles trop abstraits ;
paramètres techniques déguisés en macros ;
logiques backend jouées directement par le musicien ;
interface-banque ;
interface trop fragile pour la performance.
```

Ce document ne décide pas encore la forme des contrôles.

Il ne dit pas : fader, bouton, encodeur, écran, pédale, mapping MIDI ou interface graphique.

Il dit seulement : quels rôles de contrôle doivent exister.

---

# 1. Noyau réduit

## 1.1 Contrôles performables centraux

```text
MACRO_BODY_RETURN
MACRO_PRESSURE
MACRO_IMPACT
MACRO_WITHDRAWAL
MACRO_LONG_TENSION
MACRO_POLYTEXTURE_DENSITY
```

Ces contrôles sont jouables parce qu’ils correspondent à des gestes musicaux compréhensibles :

```text
revenir au corps ;
augmenter / orienter la pression ;
frapper / ancrer / résoudre ;
retirer ;
tenir une tension ;
ouvrir / resserrer une densité articulée.
```

## 1.2 États et protections visibles

```text
STATE_BODY_FOCUS
STATE_LIVE_PRIORITY
GUARD_ANTI_AMBIENT
GUARD_LOW_MID_SAFETY
```

Ces éléments doivent être accessibles ou lisibles, mais pas forcément joués comme macros expressives.

## 1.3 Arbitrage / routing

```text
ARBITRATE_SOURCE_CONFIGURATION
```

Ce contrôle n’est pas une macro continue. Il sert à gérer les configurations live :

```text
didgeridoo + guimbardes seuls ;
avec gong ;
avec tambour ;
avec gong + tambour ;
sans gong ni tambour ;
engine conditionnel ;
matière préparée conditionnelle.
```

## 1.4 Sous-contrôles partagés

```text
SUBCTRL_CONTOUR
SUBCTRL_POLYTEXTURE_ARTICULATION
SUBCTRL_HARMONIC_DENSITY
```

Ces contrôles ne doivent pas dominer l’interface. Ils servent à préciser un contrôle principal.

## 1.5 Contrôles différés / conditionnels

```text
COND_HARMONIC_FRICTION
COND_HARMONIC_DENSITY
COND_NATURALIZATION_ROLE
```

Ils sont utiles, mais seulement si une scène, un test ou une source_need confirme leur nécessité.

## 1.6 Backend / policy

```text
POLICY_SELECTION_MODE
```

Le musicien ne doit pas piloter directement cette logique comme un contrôle de scène.

---

# 2. Contrôles performables centraux

## 2.1 MACRO_BODY_RETURN

Ancien contrôle : `CTRL_BODY_RETURN`.

Rôle : ramener la scène vers une sensation corporelle claire.

Agit probablement sur :

```text
priorité sub ;
impact ;
réduction de couches longues ;
réactivation didgeridoo / guimbardes ;
rétablissement du contour ;
réduction densité / halo / champ.
```

Ne doit pas être :

```text
un simple bouton mute ;
un retour automatique imposé ;
un “drop” standard ;
un raccourci brutal qui détruit la tension construite.
```

Relations :

```text
utilise MACRO_WITHDRAWAL ;
s’appuie sur STATE_BODY_FOCUS ;
active parfois GUARD_ANTI_AMBIENT ;
protège STATE_LIVE_PRIORITY.
```

Priorité : A.

## 2.2 MACRO_PRESSURE

Ancien contrôle : `CTRL_PRESSURE`.

Rôle : piloter l’intensité sans la réduire au volume.

Sous-dimensions internes :

```text
pression physique ;
pression spectrale ;
pression de densité ;
pression rythmique.
```

Le musicien ne doit pas forcément voir quatre contrôles séparés dès le départ.

Première hypothèse :

```text
un macro-contrôle principal ;
des profils ou sous-régimes contextuels ;
des guards pour éviter fatigue, volume, boue et masquage du live.
```

Ne doit pas être :

```text
un gain ;
un compresseur déguisé ;
un saturateur général ;
un bouton “plus fort”.
```

Priorité : A.

## 2.3 MACRO_IMPACT

Ancien contrôle : `CTRL_IMPACT`.

Rôle : rendre l’impact performable comme ancrage, accent, masse ou résolution.

Sous-modes fonctionnels :

```text
sec ;
masse ;
peau ;
métal ;
sub ;
objet.
```

À contrôler indirectement :

```text
attaque ;
corps ;
queue ;
relation au sub ;
masquage post-impact.
```

Le détail du contour passe par `SUBCTRL_CONTOUR`.

Ne doit pas être :

```text
un lanceur de samples ;
un navigateur d’impacts ;
un one-shot décoratif ;
un geste folklorisant.
```

Priorité : A.

## 2.4 MACRO_WITHDRAWAL

Ancien contrôle : `CTRL_WITHDRAWAL`.

Rôle : retirer une couche, un état ou une densité de façon performative.

Modes internes possibles :

```text
cut ;
fader ;
duck ;
collapse ;
filter_out ;
return_to_body.
```

Mais ces modes ne doivent pas être exposés trop tôt comme liste technique.

Ce contrôle doit être ressenti comme :

```text
retirer ;
laisser respirer ;
faire place ;
préparer le retour ;
empêcher l’ambientisation ;
révéler le live.
```

Relations :

```text
sert MACRO_BODY_RETURN ;
sert MACRO_LONG_TENSION ;
sert GUARD_ANTI_AMBIENT ;
sert STATE_LIVE_PRIORITY.
```

Priorité : A.

## 2.5 MACRO_LONG_TENSION

Ancien contrôle : `CTRL_LONG_TENSION`.

Rôle : piloter attente, orientation temporelle, non-résolution et durée sous tension.

À distinguer de `MACRO_PRESSURE` :

```text
MACRO_PRESSURE = intensité / énergie / densité.
MACRO_LONG_TENSION = orientation temporelle / attente / suspension.
```

Agit probablement sur :

```text
accumulation lente ;
instabilité contrôlée ;
densité progressive ;
suspension ;
préparation du retrait ;
maintien sans résolution immédiate.
```

Ne doit pas être :

```text
un mode drone ;
un mode ambient ;
un allongement passif ;
un remplissage.
```

Priorité : B/A selon scène.

## 2.6 MACRO_POLYTEXTURE_DENSITY

Ancien contrôle : `CTRL_POLYTEXTURE_DENSITY`.

Rôle : ouvrir ou resserrer une densité articulée.

Doit garder :

```text
lisibilité ;
hiérarchie ;
interlocking ;
interaction avec guimbardes live ;
corps ;
variation faible mais sensible.
```

Le détail passe par :

```text
SUBCTRL_POLYTEXTURE_ARTICULATION.
```

Ne doit pas être :

```text
plus de notes ;
plus de samples ;
randomisation ;
remplissage ;
confusion rythmique.
```

Priorité : B.

---

# 3. États et protections visibles

## 3.1 STATE_BODY_FOCUS

Ancien contrôle : `CTRL_BODY_FOCUS`.

Rôle : état où le corps devient la référence principale.

Effet attendu :

```text
sub plus lisible ;
impact plus prioritaire ;
champs et halos contenus ;
retour au corps facilité ;
pression ancrée.
```

Ne doit pas écraser automatiquement toutes les tensions fines.

Statut : état visible / activable.

## 3.2 STATE_LIVE_PRIORITY

Ancien contrôle : `CTRL_LIVE_PRIORITY`.

Rôle : préserver didgeridoo et guimbardes comme sources centrales.

Effet attendu :

```text
traitements qui soutiennent le live ;
couches secondaires subordonnées ;
engines empêchés de remplacer le live ;
auto-sélection limitée ou interdite.
```

Ce n’est pas une macro expressive principale.

Statut : état + protection.

## 3.3 GUARD_ANTI_AMBIENT

Ancien contrôle : `CTRL_ANTI_AMBIENT`.

Rôle : éviter la dérive vers fond atmosphérique décoratif.

Surveille :

```text
couches longues ;
halos permanents ;
drones sans retrait ;
field recordings sans scène ;
densité continue ;
perte du corps ;
absence de sortie.
```

Actions possibles :

```text
alerter ;
limiter ;
forcer retrait ;
réduire densité ;
réactiver body focus.
```

Statut : guard visible, pas macro esthétique.

## 3.4 GUARD_LOW_MID_SAFETY

Ancien contrôle : `CTRL_LOW_MID_SAFETY`.

Rôle : empêcher surcharge bas-médium et masquage des sources graves/live.

Surveille :

```text
sub ;
didgeridoo ;
gong grave ;
tambour ;
champs ;
halos ;
résonateurs ;
textures longues.
```

Statut : guard / readout.

---

# 4. Arbitrage / routing

## 4.1 ARBITRATE_SOURCE_CONFIGURATION

Ancien contrôle : `CTRL_SOURCE_ARBITRATION`.

Rôle : gérer les configurations de sources disponibles.

Cas nécessaires :

```text
base fixe : didgeridoo + guimbardes ;
+ gong ;
+ tambour ;
+ gong et tambour ;
sans gong ni tambour ;
engine de compensation ;
matière préparée conditionnelle.
```

Forme probable :

```text
état de configuration ;
routing interne ;
choix préparé avant scène ;
contrôle rarement manipulé en continu.
```

Ne doit pas être :

```text
un navigateur de sources ;
un sélecteur de banque ;
un système qui compense sans rendre la décision lisible.
```

Statut : routing / état de configuration.

---

# 5. Sous-contrôles

## 5.1 SUBCTRL_CONTOUR

Ancien contrôle : `CTRL_CONTOUR`.

Rôle : sculpter attaque, corps, tenue, queue, retrait.

S’applique à :

```text
impact ;
champs ;
halos ;
textures ;
résonances ;
sources live traitées.
```

Statut : sous-contrôle partagé.

## 5.2 SUBCTRL_POLYTEXTURE_ARTICULATION

Ancien contrôle : `CTRL_POLYTEXTURE_ARTICULATION`.

Rôle : rendre la densité lisible par espacement, attaque, registre et hiérarchie.

Statut : sous-contrôle de `MACRO_POLYTEXTURE_DENSITY`.

## 5.3 SUBCTRL_HARMONIC_DENSITY

Ancien contrôle : `CTRL_HARMONIC_DENSITY`.

Rôle : contrôler l’épaisseur harmonique si un champ, des métaux accordés ou des partiels deviennent actifs.

Statut : sous-contrôle conditionnel.

Ne pas exposer comme macro générale maintenant.

---

# 6. Contrôles différés / conditionnels

## 6.1 COND_HARMONIC_FRICTION

Ancien contrôle : `CTRL_HARMONIC_FRICTION`.

Rôle potentiel : piloter alignement, friction, battements, instabilité partielle.

Condition d’activation :

```text
scène qui exige partiels / battements ;
function_test positif ;
relation utile avec sub / didgeridoo / guimbardes ;
risque de nappe contrôlé.
```

Statut : conditionnel.

## 6.2 COND_NATURALIZATION_ROLE

Ancien contrôle : `CTRL_NATURALIZATION_ROLE`.

Décision : ne pas exposer comme contrôle live direct.

Rôle actuel :

```text
principe de design ;
critère de source_need ;
critère de material_asset ;
critère de test.
```

Statut : différé / concept backend.

---

# 7. Backend / policy

## 7.1 POLICY_SELECTION_MODE

Ancien contrôle : `CTRL_SELECTION_POLICY`.

Rôle : décider ce qui est fixe, manuel, assisté, auto-restreint ou interdit.

Ne doit pas être joué directement.

Doit agir comme :

```text
garde-fou ;
contrainte de routing ;
limite d’auto-sélection ;
protection des sources centrales ;
protection contre banque de sons.
```

Statut : backend.

---

# 8. Noyau jouable provisoire

Pour l’instant, le noyau jouable provisoire est :

```text
MACRO_BODY_RETURN ;
MACRO_PRESSURE ;
MACRO_IMPACT ;
MACRO_WITHDRAWAL ;
MACRO_LONG_TENSION ;
MACRO_POLYTEXTURE_DENSITY.
```

Avec quatre états/protections visibles :

```text
STATE_BODY_FOCUS ;
STATE_LIVE_PRIORITY ;
GUARD_ANTI_AMBIENT ;
GUARD_LOW_MID_SAFETY.
```

Et un arbitrage de configuration :

```text
ARBITRATE_SOURCE_CONFIGURATION.
```

Tout le reste est :

```text
sous-contrôle ;
conditionnel ;
backend ;
à tester plus tard.
```

---

# 9. Points à vérifier avant couches de performance

Avant de créer `LIVE_CONTROL_LAYERS_AND_PERFORMANCE_STATES`, vérifier :

```text
1. MACRO_BODY_RETURN et MACRO_WITHDRAWAL sont-ils suffisamment distincts ?
2. MACRO_PRESSURE doit-il être un seul contrôle ou un contrôle avec profils internes ?
3. MACRO_LONG_TENSION est-il vraiment jouable ou seulement un état de scène ?
4. MACRO_POLYTEXTURE_DENSITY est-il jouable sans micro-management ?
5. STATE_LIVE_PRIORITY doit-il être activable par le musicien ou seulement visible ?
6. GUARD_ANTI_AMBIENT doit-il être automatique, manuel, ou les deux ?
7. ARBITRATE_SOURCE_CONFIGURATION est-il un état de préparation ou un contrôle de performance ?
```

---

# 10. Décision sur la suite

Ne pas encore dessiner d’interface.

Ne pas encore créer de mapping matériel.

Ne pas encore créer de patch Max for Live.

Prochaine étape recommandée :

```text
évaluer les sept points de vérification ci-dessus,
puis seulement créer une organisation en couches de performance si le noyau réduit tient.
```

Nom possible du prochain document :

```text
18_LIVE_CONTROL_DECISION_QUESTIONS_BEFORE_LAYERS.md
```

Ou bien : intégrer directement ces questions dans `18_LIVE_CONTROL_LAYERS_AND_PERFORMANCE_STATES.md` si elles sont résolues.
