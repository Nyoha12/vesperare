# 21_TEMPORAL_INFRASTRUCTURE_DECISION_QUESTIONS

Version : v0.1  
Statut : réponses aux questions de décision temporelle. Sans interface graphique, sans Max for Live, sans mapping matériel, sans prototype.

## Objet

Ce document répond aux questions ouvertes dans :

```text
20_TEMPORAL_INFRASTRUCTURE_MEASURE_LOOP_REPEAT_FREEZE.md
```

Il ne décrit pas encore une implémentation.

Il décide :

```text
quelles sources peuvent être loopées ;
quand le live peut être capturé ;
quels repeats suivent la mesure ;
ce que le freeze peut viser ;
quels usages doivent rester interdits ou manuels ;
comment éviter l’effet reconnaissable ou décoratif.
```

---

## Note de statut

Ce fichier est le document 21 temporel existant pour les questions de décision issues de `20`. Il suffit pour traiter les angles source-based, layer-based et state-based tant qu'une phase réelle ne demande pas un document séparé ; ne pas créer un nouveau document `SOURCE_BASED_LAYER_BASED` par simple découpage.

Les catégories source-based, layer-based et state-based sont des angles de décision : elles aident à demander ce qui est capturé, suspendu ou répété, à quel niveau, pour quelle fonction et avec quelle sortie. Elles ne sont pas des modes automatiques, des presets, des clips ou des autorisations permanentes.

Tout choix de cible temporelle doit préserver la source live, la fonction de scène, la relation au corps, le risque identifié et la sortie disponible. Toute capture, boucle, repeat ou freeze doit rester réversible, temporaire, ou explicitement assumé comme franchissement de limite sous contrôle humain. Le système peut protéger, signaler, rendre visible ou verrouiller en cas de risque ; il ne valide pas une décision expressive à la place de Yohan.

---

# 1. Quelles sources peuvent être capturées en loop ?

Réponse : oui, mais seulement par fonction.

Sources autorisées sous condition :

```text
didgeridoo ;
guimbardes ;
gong optionnel ;
tambour optionnel ;
engine de sub / pression ;
polytexture générée ;
matière préparée validée ;
voix si rôle clairement défini ;
field recording si source_need validé.
```

Règle :

```text
une source n’est pas loopable parce qu’elle est intéressante ;
elle est loopable si la loop porte une fonction de scène.
```

Fonctions valides :

```text
corps ;
pression ;
hypnose ;
polytexture ;
tension longue ;
retour au corps ;
exposition de matière ;
transition.
```

Interdit :

```text
loop comme banque ;
loop comme remplissage ;
loop comme remplacement durable du live ;
loop sans sortie pensée.
```

---

# 2. Les loops peuvent-elles venir du live fixe sans le remplacer ?

Réponse : oui, mais avec garde-fou.

Le didgeridoo et les guimbardes peuvent être capturés, mais la loop doit rester :

```text
double ;
trace ;
ombre ;
pression tenue ;
contrepoint ;
matériau temporaire ;
extension du geste live.
```

Elle ne doit pas devenir :

```text
substitut au jeu live ;
clip principal ;
preuve que le musicien peut arrêter de jouer ;
boucle autonome sans relation au corps présent.
```

Décision :

```text
LIVE_LOOP_CAPTURE: autorisé sous STATE_LIVE_PRIORITY.
LIVE_LOOP_REPLACE: interdit.
LIVE_LOOP_TEMPORARY: autorisé.
LIVE_LOOP_COMMITTED: seulement si fonction de scène validée.
```

---

# 3. Quels repeats suivent la mesure, lesquels restent libres ?

Réponse : distinguer repeat rythmique, repeat de texture et repeat de pression.

## Repeats probablement quantifiés

```text
repeat rythmique ;
repeat d’impact ;
repeat de pré-drop ;
repeat de loop courte ;
repeat lié à polytexture métrique.
```

## Repeats semi-libres

```text
repeat de guimbarde ;
repeat de frottement ;
repeat de matière ;
repeat de champ ;
repeat comme tension instable.
```

## Repeats libres ou déconseillés

```text
repeat expressif sur didgeridoo live ;
repeat vocal signalétique ;
repeat sur matière exposée fragile.
```

Règle :

```text
un repeat peut suivre la mesure sans devenir mécanique ;
il peut être libre sans devenir aléatoire.
```

---

# 4. Le freeze vise-t-il une source, une couche ou un état de scène ?

Réponse : les trois, mais pas au même niveau.

## Freeze source-based

Vise une source précise.

Exemples :

```text
didgeridoo ;
guimbarde ;
gong ;
tambour ;
voix ;
résonance ;
field recording.
```

Usage : exposition, suspension, transformation courte.

## Freeze layer-based

Vise une couche de performance.

Exemples :

```text
halo ;
polytexture ;
champ harmonique ;
pression ;
texture longue.
```

Usage : tension, retrait, contraste.

## Freeze state-based

Vise un état de scène.

Exemples :

```text
suspension ;
pré-drop ;
exposed material ;
long tension.
```

Usage : dramaturgie performative, mais très risqué.

Décision :

```text
source-based: autorisé prudemment.
layer-based: autorisé si sortie claire.
state-based: différé / rare / haut risque.
```

---

# 5. Le freeze peut-il capturer didgeridoo ou guimbardes ?

Réponse : oui, mais avec protection live.

## Didgeridoo

Autorisé pour :

```text
pression tenue ;
formants ;
partiels ;
transition ;
suspension courte ;
contre-corps.
```

Interdit si :

```text
le freeze remplace le souffle live ;
la texture devient drone permanent ;
le sub devient boueux ;
le retour au corps est affaibli.
```

## Guimbardes

Autorisé pour :

```text
micro-pulse ;
formants ;
attaque résonante ;
polytexture ;
texture articulée ;
transition courte.
```

Interdit si :

```text
la boucle/freeze transforme les guimbardes en gimmick ;
le live devient décor ;
le détail masque le corps ;
le système automatise trop l’articulation.
```

Décision :

```text
FREEZE_LIVE_FIXED: autorisé sous STATE_LIVE_PRIORITY.
FREEZE_LIVE_REPLACE: interdit.
FREEZE_DURATION: doit être surveillée.
FREEZE_RELEASE: obligatoire.
```

---

# 6. Quelles sorties de freeze renforcent le retour au corps ?

Sorties utiles :

```text
return_to_body ;
impact_release ;
duck_to_sub ;
collapse_to_live ;
filter_release_to_didgeridoo ;
cut_to_guimbardes ;
fade_to_pressure ;
rejoin_cycle.
```

Sorties risquées :

```text
fade infini ;
drone continu ;
réouverture de couche longue ;
release sans point de corps ;
sortie qui masque le live ;
sortie hors cycle sans intention.
```

Décision :

```text
FREEZE_RELEASE doit être un geste musical, pas une simple fin d’effet.
```

---

# 7. Quelles fonctions temporelles sont trop risquées pour l’automatisation ?

À ne pas automatiser librement :

```text
capture du live fixe ;
commit d’une loop live ;
freeze de didgeridoo ;
freeze de guimbarde ;
state-based freeze ;
repeat vocal ;
entrée de matière préparée ;
remplacement gong/tambour par engine ;
retour au corps principal.
```

Automatisation possible sous contrainte :

```text
micro-repeat de texture secondaire ;
variation de repeat_rate dans limites ;
release de loop courte ;
anti-ambient guard ;
low-mid guard ;
cycle markers ;
visualisation contextuelle.
```

Règle :

```text
l’automatisation peut protéger ou assister ;
elle ne doit pas décider à la place du musicien des moments formels importants.
```

---

# 8. Comment éviter que loop / repeat / freeze deviennent des effets reconnaissables ?

Méthodes :

```text
lier chaque usage à une fonction de scène ;
limiter les durées ;
forcer des sorties ;
éviter presets spectaculaires ;
conserver relation au corps ;
conserver relation au live ;
varier selon source et contexte ;
interdire activation sans rôle ;
afficher le risque si la fonction devient décorative.
```

Critère simple :

```text
si l’auditeur entend surtout “un effet de loop/repeat/freeze”, l’usage est trop identifiable.
```

Correction possible :

```text
réduire durée ;
réduire wetness ;
changer sortie ;
rattacher à impact ;
rattacher à corps ;
rattacher à live ;
forcer retrait.
```

---

# 9. Décisions finales v0.1

```text
LOOP sur live fixe: autorisée mais temporaire et protégée.
LOOP comme remplacement: interdite.
REPEAT rythmique: quantifiable.
REPEAT de matière: semi-libre.
REPEAT fragile/vocal/live expressif: manuel ou déconseillé.
FREEZE source-based: autorisé prudemment.
FREEZE layer-based: autorisé si sortie claire.
FREEZE state-based: différé.
FREEZE sur didgeridoo/guimbardes: autorisé sous garde-fou.
FREEZE sans release: interdit.
Automation formelle: interdite.
Automation protectrice: autorisée.
```

---

# 10. Conséquence pour la suite

L’infrastructure temporelle est assez cadrée pour passer à la visualisation contextuelle.

Mais avant de créer beaucoup de nouveaux fichiers, il faudra ensuite consolider :

```text
README ;
00_INDEX_METHODE_DECISIONS ;
assets index ;
documentation map.
```

Prochaine étape logique unique :

```text
22_CONTEXTUAL_VISUALIZATION_REQUIREMENTS.md
```

Puis pause documentaire et mise à jour des index.
