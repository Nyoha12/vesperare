# 18_LIVE_CONTROL_DECISION_QUESTIONS_BEFORE_LAYERS

Version : v0.1  
Statut : résolution des questions de décision avant organisation en couches. Sans interface graphique, sans Max for Live, sans mapping matériel, sans prototype.

## Objet

Ce document répond aux sept questions laissées ouvertes par :

```text
17_LIVE_CONTROL_REQUIREMENTS_MATRIX_REDUCED.md
```

Le but est de savoir si le noyau réduit tient assez pour organiser ensuite les contrôles en couches de performance.

Il ne crée pas encore :

```text
un layout ;
un contrôleur ;
un patch ;
un mapping ;
un module ;
une interface graphique.
```

Il décide seulement :

```text
quels contrôles restent des macros ;
quels contrôles deviennent états ;
quels contrôles deviennent protections ;
quels contrôles restent préparatoires ;
quels contrôles doivent être groupés dans une même famille de performance.
```

---

# 1. Question 1 — `MACRO_BODY_RETURN` et `MACRO_WITHDRAWAL` sont-ils assez distincts ?

Réponse : oui, mais ils doivent être groupés.

Distinction :

```text
MACRO_BODY_RETURN = objectif musical perceptible.
MACRO_WITHDRAWAL = geste ou mécanisme permettant de retirer, faire place, réduire, révéler.
```

Donc :

```text
BODY_RETURN dit où l’on veut aller.
WITHDRAWAL dit comment on libère l’espace pour y aller.
```

Ils doivent rester distincts parce qu’un retrait ne ramène pas toujours au corps.

Exemples :

```text
retirer un drone peut ramener au corps ;
retirer une polytexture peut créer un vide ;
retirer un halo peut exposer la voix ;
retirer une pression peut préparer une suspension.
```

Décision :

```text
MACRO_BODY_RETURN: garder comme macro centrale.
MACRO_WITHDRAWAL: garder comme macro-geste transversal.
Famille future: RETURN / WITHDRAWAL.
```

---

# 2. Question 2 — `MACRO_PRESSURE` doit-il être un seul contrôle ou plusieurs ?

Réponse : un contrôle principal, avec profils internes.

Raison : quatre contrôles séparés risqueraient de créer trop de charge cognitive.

Sous-types à conserver dans le système :

```text
pression physique ;
pression spectrale ;
pression de densité ;
pression rythmique.
```

Mais en performance, le musicien doit d’abord pouvoir agir sur :

```text
augmenter / relâcher / orienter la pression.
```

Décision :

```text
MACRO_PRESSURE: garder comme macro centrale.
profiles: physical / spectral / density / rhythmic.
exposition directe des sous-types: différée.
```

Règle :

```text
si les sous-types deviennent nécessaires en live, ils apparaîtront comme profils de scène ou sous-paramètres contextuels,
pas comme quatre faders permanents dès le départ.
```

---

# 3. Question 3 — `MACRO_LONG_TENSION` est-il jouable ou seulement un état de scène ?

Réponse : il est jouable, mais seulement dans certaines scènes.

C’est une macro de trajectoire, pas une macro permanente.

Rôle :

```text
tenir l’attente ;
retarder la résolution ;
orienter la durée ;
maintenir tension sans remplir ;
préparer retrait ou retour.
```

Risque :

```text
si disponible en permanence, il peut devenir un mode drone / ambient / remplissage.
```

Décision :

```text
MACRO_LONG_TENSION: garder.
visibilité: contextuelle.
Famille future: SCENE / TRAJECTORY.
```

---

# 4. Question 4 — `MACRO_POLYTEXTURE_DENSITY` est-il jouable sans micro-management ?

Réponse : oui, si l’articulation reste interne ou secondaire.

Le contrôle principal doit rester simple :

```text
ouvrir / resserrer une densité articulée.
```

Il ne doit pas demander au musicien de gérer directement :

```text
chaque micro-événement ;
chaque subdivision ;
chaque source secondaire ;
chaque relation de phase ;
chaque one-shot.
```

Décision :

```text
MACRO_POLYTEXTURE_DENSITY: garder.
SUBCTRL_POLYTEXTURE_ARTICULATION: garder en sous-contrôle ou profil contextuel.
interaction guimbardes: à protéger.
```

Règle :

```text
si la polytexture devient confuse, réduire densité avant d’ajouter des paramètres.
```

---

# 5. Question 5 — `STATE_LIVE_PRIORITY` doit-il être activable ou seulement visible ?

Réponse : les deux, mais pas comme macro expressive.

Il doit exister comme :

```text
état visible ;
protection automatique ;
intervention manuelle possible.
```

Cas d’usage :

```text
si le didgeridoo est masqué ;
si les guimbardes deviennent décor ;
si une matière préparée concurrence le live ;
si un engine prend trop de place ;
si un sample semble plus séduisant que nécessaire.
```

Décision :

```text
STATE_LIVE_PRIORITY: visible en permanence ou très accessible.
manual_override: oui.
automatic_guard: oui.
macro expressive: non.
Famille future: LIVE PRIORITY / PROTECTION.
```

---

# 6. Question 6 — `GUARD_ANTI_AMBIENT` doit-il être automatique, manuel, ou les deux ?

Réponse : les deux, avec priorité à la protection automatique.

Il doit surveiller :

```text
couches longues ;
halos permanents ;
drones sans retrait ;
field recordings sans scène ;
densité continue ;
perte du corps ;
absence de sortie.
```

Mais il doit aussi être performable via gestes simples :

```text
réduire ;
forcer retrait ;
collapse ;
réactiver body focus ;
empêcher ajout automatique.
```

Décision :

```text
GUARD_ANTI_AMBIENT: automatique + visible.
manual_action: oui, par retrait/réduction.
macro esthétique: non.
Famille future: PROTECTIONS.
```

---

# 7. Question 7 — `ARBITRATE_SOURCE_CONFIGURATION` est-il préparation ou performance ?

Réponse : principalement préparation / routing, avec interventions rares en performance.

Il concerne des configurations lourdes :

```text
didgeridoo + guimbardes seuls ;
avec gong ;
avec tambour ;
avec gong + tambour ;
sans gong ni tambour ;
engine de compensation ;
matière préparée conditionnelle.
```

Ces configurations ne doivent pas être manipulées comme un morphing continu en permanence.

Décision :

```text
ARBITRATE_SOURCE_CONFIGURATION: routing / état de configuration.
performance_control: rare, plutôt transitions préparées.
continuous_macro: non.
Famille future: CONFIGURATION / SOURCE ARBITRATION.
```

Règle :

```text
la configuration live optionnelle ne doit jamais être traitée comme neutre.
```

---

# 8. Noyau validé après questions

Le noyau réduit tient, avec cette organisation :

## 8.1 Macros performables

```text
MACRO_BODY_RETURN ;
MACRO_PRESSURE ;
MACRO_IMPACT ;
MACRO_WITHDRAWAL ;
MACRO_LONG_TENSION ;
MACRO_POLYTEXTURE_DENSITY.
```

## 8.2 États / protections visibles

```text
STATE_BODY_FOCUS ;
STATE_LIVE_PRIORITY ;
GUARD_ANTI_AMBIENT ;
GUARD_LOW_MID_SAFETY.
```

## 8.3 Routing / configuration

```text
ARBITRATE_SOURCE_CONFIGURATION.
```

## 8.4 Sous-contrôles ou profils contextuels

```text
SUBCTRL_CONTOUR ;
SUBCTRL_POLYTEXTURE_ARTICULATION ;
SUBCTRL_HARMONIC_DENSITY ;
MACRO_PRESSURE profiles ;
MACRO_IMPACT submodes.
```

## 8.5 Conditionnels / backend

```text
COND_HARMONIC_FRICTION ;
COND_NATURALIZATION_ROLE ;
POLICY_SELECTION_MODE.
```

---

# 9. Décision : peut-on créer les couches de performance ?

Réponse : oui, mais seulement comme organisation abstraite.

Autorisé :

```text
organiser les contrôles en couches de performance ;
relier macros, états, guards et routing ;
indiquer quels contrôles doivent être visibles ensemble ;
indiquer les familles de gestes ;
préparer la future conception d’interface.
```

Interdit encore :

```text
dessiner l’interface ;
choisir un contrôleur ;
choisir un mapping ;
implémenter Max for Live ;
figer le nombre de contrôles physiques ;
créer des modules nouveaux sans retour vers architecture.
```

---

# 10. Prochaine étape recommandée

Créer maintenant :

```text
19_LIVE_CONTROL_LAYERS_AND_PERFORMANCE_STATES.md
```

Objectif : organiser le noyau validé en couches de performance :

```text
corps / énergie ;
trajectoire / scène ;
live priority ;
polytexture / matière ;
protections ;
source configuration.
```

Cette étape devient maintenant justifiée parce que les questions préalables sont résolues.
