# 43_HARMONISATION_CONTROLES_15_22

Version : v0.1  
Statut : guide d’harmonisation pour les documents de contrôle `15–22`. Sans patch, sans mapping, sans prototype.

## Objet

Ce document relit les documents `15–22` à la lumière de :

```text
40_STRATEGIE_SYSTEME_CONTROLE_LIMITES_HARMONISATION.md
41_CORPS_COMME_FONCTION_COMPOSEE_ET_SITUEE.md
42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md
```

Il ne remplace pas les documents `15–22`.  
Il sert à harmoniser leur vocabulaire et à préciser ce qui doit être corrigé localement plus tard.

Documents concernés :

```text
15_LIVE_CONTROL_REQUIREMENTS_MATRIX.md
16_LIVE_CONTROL_MATRIX_PERFORMABILITY_AUDIT.md
17_LIVE_CONTROL_REQUIREMENTS_MATRIX_REDUCED.md
18_LIVE_CONTROL_DECISION_QUESTIONS_BEFORE_LAYERS.md
19_LIVE_CONTROL_LAYERS_AND_PERFORMANCE_STATES.md
20_TEMPORAL_INFRASTRUCTURE_MEASURE_LOOP_REPEAT_FREEZE.md
21_TEMPORAL_INFRASTRUCTURE_DECISION_QUESTIONS.md
22_CONTEXTUAL_VISUALIZATION_REQUIREMENTS.md
```

---

# 1. Diagnostic général

Les documents `15–22` restent utiles et globalement valides.

Ils ont déjà établi :

```text
les contrôles live par fonctions ;
la réduction de la matrice initiale ;
les couches de performance ;
les questions temporelles ;
la visualisation contextuelle ;
les protections anti-ambient ;
la priorité live ;
la séparation entre macro, état, guard, routing et vue.
```

Le problème n’est pas leur contenu principal.

Le problème est que certaines notions y apparaissent encore comme blocs trop compacts :

```text
corps ;
retour au corps ;
anti-ambient ;
protection ;
interdit ;
contrôle ;
macro ;
guard ;
risque.
```

Ces notions doivent être relues selon :

```text
provenance ;
sous-fonction ;
amplitude ;
zone de bord ;
sortie ;
override.
```

---

# 2. Principe d’harmonisation des contrôles

Chaque contrôle important doit être décrit non seulement par son nom et sa cible, mais par :

```text
fonction musicale ;
source ou objet porteur ;
contexte de scène ;
sous-fonction du corps si concernée ;
amplitude sûre ;
amplitude expressive ;
amplitude de bord ;
amplitude dangereuse ;
override possible ;
risque principal ;
sortie disponible ;
visualisation utile.
```

Formule de référence :

```text
contrôle = sélection + organisation + amplitude + contexte + risque + sortie + override.
```

---

# 3. Harmonisation de `15_LIVE_CONTROL_REQUIREMENTS_MATRIX.md`

## Statut actuel

`15` est une matrice de besoins de contrôle live abstraits.

Elle reste valide comme première cartographie.

## Harmonisation nécessaire

Elle doit être relue comme une matrice de **fonctions à rendre jouables**, pas comme une liste de paramètres.

À ajouter dans sa lecture :

```text
chaque macro doit avoir une amplitude ;
chaque guard doit être distingué d’un interdit absolu ;
chaque risque doit pouvoir être zone de bord ou danger réel ;
chaque contrôle lié au corps doit préciser quelle sous-fonction du corps est visée ;
chaque protection doit indiquer si override humain est possible.
```

Exemple :

```text
MACRO_BODY_RETURN
ne doit pas seulement indiquer “retour au corps”.
Il doit préciser : corps-impact, corps-pression, corps-pulsation, corps-geste ou corps-retour.
```

---

# 4. Harmonisation de `16_LIVE_CONTROL_MATRIX_PERFORMABILITY_AUDIT.md`

## Statut actuel

`16` est un audit de performabilité. Il est déjà très important car il évite la surcharge de contrôles.

## Harmonisation nécessaire

Il doit intégrer la notion d’amplitude performative.

Un contrôle est performable si :

```text
il est jouable rapidement ;
il agit sur une fonction musicale claire ;
il a une amplitude expressive ;
il ne demande pas une lecture technique permanente ;
il permet une sortie ou un retrait ;
il peut signaler une limite sans bloquer le geste.
```

À ajouter :

```text
un contrôle n’est pas seulement performable parce qu’il est simple ;
il est performable s’il permet de traverser plusieurs zones d’amplitude sans perdre la décision musicale.
```

---

# 5. Harmonisation de `17_LIVE_CONTROL_REQUIREMENTS_MATRIX_REDUCED.md`

## Statut actuel

`17` réduit les contrôles à un noyau plus performable.

Il reste central.

## Harmonisation nécessaire

Les macros réduites doivent être relues avec les sous-fonctions de corps et les amplitudes.

```text
MACRO_BODY_RETURN : préciser retour par sub, impact, pulsation, live trace, fermeture de halo, release freeze.
MACRO_PRESSURE : préciser pression physique, pression spectrale, pression organique, pression limite.
MACRO_IMPACT : distinguer impact peau, impact sub, impact gong, impact synthétique, impact-retour.
MACRO_WITHDRAWAL : préciser ce qui se retire et ce qui reste corporel.
MACRO_LONG_TENSION : distinguer attente, hypnose, pression retenue, seuil, pré-drop.
MACRO_POLYTEXTURE_DENSITY : distinguer densité lisible, densité fertile, densité confuse, densité override.
```

Les guards doivent être relus ainsi :

```text
GUARD_ANTI_AMBIENT : pas mur anti-ambient, mais zone de bord visible.
GUARD_LOW_MID_SAFETY : protection parfois stricte si risque technique/mix réel.
STATE_LIVE_PRIORITY : garde-fou fort, mais peut inclure shadow / trace / double sous décision humaine.
```

---

# 6. Harmonisation de `18_LIVE_CONTROL_DECISION_QUESTIONS_BEFORE_LAYERS.md`

## Statut actuel

`18` pose des questions avant de définir les couches.

## Harmonisation nécessaire

Il doit distinguer :

```text
question conceptuelle ;
question instrumentale ;
question performative ;
question de contrôle ;
question de visualisation ;
question de prototype.
```

À corriger dans la lecture :

```text
ne pas transformer une question sur le corps en test instrumental si la sous-fonction du corps n’est pas encore nommée ;
ne pas transformer une question de limite esthétique en interdit ;
ne pas transformer une question de contrôle en mapping.
```

---

# 7. Harmonisation de `19_LIVE_CONTROL_LAYERS_AND_PERFORMANCE_STATES.md`

## Statut actuel

`19` définit les couches et états de performance.

## Harmonisation nécessaire

Chaque état doit indiquer :

```text
fonction centrale ;
corps actif ou latent ;
amplitude dominante ;
zone de bord possible ;
sortie disponible ;
override possible ou non.
```

Exemples :

```text
BUILD_PRESSURE : corps-pression, corps-attente, low-mid risk, retrait possible.
LONG_TENSION : corps-attente, corps-hypnose, pré-drop non automatique, annulation possible.
SUSPENSION : corps-limite, corps-retour latent, anti-ambient zone, release/retour obligatoire.
RETURN_TO_BODY : corps-retour, corps-impact ou corps-pression, risque de recette/drop automatique.
POLYTEXTURE_OPENING : corps-pulsation, corps-geste, densité de bord, live priority.
```

---

# 8. Harmonisation de `20_TEMPORAL_INFRASTRUCTURE_MEASURE_LOOP_REPEAT_FREEZE.md`

## Statut actuel

`20` traite loop / repeat / freeze comme infrastructure temporelle.

Il est déjà prudent.

## Harmonisation nécessaire

Loop / repeat / freeze doivent être pensés comme objets d’amplitude, pas seulement autorisés/interdits.

```text
Loop : trace → shadow → double → quasi-remplacement → remplacement dangereux / override.
Repeat : articulation → hypnose → seuil → effet démonstratif → override.
Freeze : exposition brève → suspension → quasi-drone → stase dangereuse → override sous release.
```

Règle importante :

```text
freeze sans release reste un interdit strict.
```

Mais un freeze proche du drone peut être autorisable si :

```text
release claire ;
corps restant ;
risque visible ;
override humain ;
sortie prévue.
```

---

# 9. Harmonisation de `21_TEMPORAL_INFRASTRUCTURE_DECISION_QUESTIONS.md`

## Statut actuel

`21` clarifie les décisions temporelles.

## Harmonisation nécessaire

Il doit intégrer la distinction :

```text
objet temporel comme fonction ;
objet temporel comme zone de bord ;
objet temporel comme danger ;
objet temporel comme override.
```

À vérifier :

```text
une boucle qui frôle le remplacement peut être musicalement forte,
mais seulement si le remplacement n’est pas involontaire.
```

---

# 10. Harmonisation de `22_CONTEXTUAL_VISUALIZATION_REQUIREMENTS.md`

## Statut actuel

`22` définit la visualisation contextuelle.

Il est essentiel pour rendre les limites jouables.

## Harmonisation nécessaire

La visualisation ne doit pas seulement montrer :

```text
état ;
risque ;
contrôle touché.
```

Elle doit pouvoir montrer :

```text
amplitude actuelle ;
zone actuelle : sûre / expressive / bord / danger / override ;
fonction menacée ;
fonction gagnée ;
sortie disponible ;
override possible ;
source live concernée ;
sous-fonction du corps concernée.
```

Exemple :

```text
MACRO_PRESSURE touché :
montrer pression physique, source porteuse, low-mid, relation sub/didgeridoo,
amplitude actuelle, zone de bord éventuelle, sortie par retrait ou retour.
```

---

# 11. Priorités de correction locale

À corriger en premier si modification directe des fichiers :

```text
17 : ajouter sous-fonctions du corps et amplitudes aux macros principales ;
19 : relire les états avec corps / amplitude / sortie / override ;
22 : ajouter la visualisation des zones de bord ;
20 : reformuler loop/repeat/freeze comme amplitudes ;
21 : préciser override / limite / sortie pour objets temporels.
```

À corriger plus légèrement :

```text
15 : note de lecture sur contrôle ≠ paramètre ;
16 : note de performabilité par amplitude ;
18 : distinction incertitude conceptuelle / instrumentale / performative.
```

---

# 12. Décision actuelle

Les documents `15–22` restent valides.

Ils doivent être harmonisés par ajout ciblé, non réécriture complète.

Règle :

```text
ne pas créer de nouvelle matrice massive ;
ne pas multiplier les contrôles ;
ne pas remplacer les macros existantes ;
ajouter la couche amplitude / limite / override là où elle clarifie le geste.
```

Prochaine étape recommandée :

```text
mettre à jour localement 17, 19 et 22 en priorité.
```

Ne pas encore créer :

```text
patch ;
layout ;
mapping ;
prototype.
```
