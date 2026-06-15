# 18_CONTEXTUAL_CONTROL_ROUTER_AMPLITUDES_LIMITES_OVERRIDE_ADDENDUM

Version : v0.1  
Statut : addendum ciblé à `05_CONTEXTUAL_CONTROL_ROUTER.md`. Sans interface, sans mapping, sans patch, sans prototype.

## Objet

Ce document complète `05_CONTEXTUAL_CONTROL_ROUTER.md` après recentrage autour de :

```text
corps composé ;
amplitudes ;
zones de bord ;
limites jouables ;
sorties ;
override humain.
```

Il ne remplace pas le module `05`.  
Il précise comment le Router doit rendre ces dimensions jouables sans créer un dashboard permanent.

Références :

```text
41_CORPS_COMME_FONCTION_COMPOSEE_ET_SITUEE.md
42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md
43_HARMONISATION_CONTROLES_15_22.md
17A_HARMONISATION_MACROS_CORPS_AMPLITUDES_LIMITES.md
19A_HARMONISATION_ETATS_CORPS_LIMITES_SORTIES.md
22A_HARMONISATION_VISUALISATION_AMPLITUDES_LIMITES.md
17_HARMONISATION_MODULES_CENTRAUX_CORPS_CONTROLES_LIMITES.md
```

---

# 1. Pourquoi un addendum spécifique au Router

Le Router est le module qui transforme les décisions de scène en accès performatif.

Il est donc le point où le recentrage devient critique.

Le Conductor peut dire :

```text
cette limite est autorisable ;
cette scène est en zone de bord ;
ce retour au corps est armé ;
cette tension peut être retardée.
```

Mais c’est le Router qui doit décider :

```text
quel contrôle devient visible ;
quel contrôle reste profond ;
quel contrôle devient urgent ;
quel contrôle est masqué ;
quel contrôle est verrouillé ;
quel contrôle peut être override.
```

---

# 2. Formule corrigée du contrôle contextuel

Formule initiale de `05` :

```text
contrôle contextuel = intention jouable + contexte + priorité + cible(s) + garde-fous.
```

Formule harmonisée :

```text
contrôle contextuel = intention jouable + contexte + priorité + cible(s) + amplitude + risque + sortie + override.
```

Ce changement ne remplace pas la formule initiale. Il la complète.

---

# 3. Entrées supplémentaires à recevoir

Le Router devrait pouvoir recevoir ou déduire :

```text
body_subfunction ;
control_amplitude_zone ;
edge_zone_status ;
risk_profile ;
output_or_exit_mode ;
override_status ;
source_live_priority ;
provenance_level.
```

Ces informations ne doivent pas toutes être affichées.

Elles servent à prioriser ce qui devient jouable.

---

# 4. Règle anti-dashboard

Le Router ne doit pas tout montrer.

Il doit choisir entre :

```text
montrer ;
masquer ;
promouvoir ;
rétrograder ;
verrouiller ;
rendre profond ;
rendre urgent ;
laisser permanent ;
laisser accessible sur demande.
```

Règle :

```text
moins d’informations visibles,
mais plus justes,
plus contextuelles,
plus musicales.
```

Ce qui ne doit pas arriver :

```text
vue permanente de tous les risques ;
vue permanente de toutes les amplitudes ;
interface de monitoring ;
paramètres techniques exposés sans fonction ;
warnings qui remplacent l’écoute ;
contrôles de bord visibles alors que la scène n’approche pas de limite.
```

---

# 5. Amplitudes comme priorité de routing

Le Router doit adapter la visibilité selon la zone actuelle.

## 5.1 Zone sûre

```text
afficher seulement le noyau de jeu ;
masquer les warnings ;
garder les sorties profondes mais disponibles.
```

## 5.2 Zone expressive

```text
montrer le contrôle en cours ;
montrer éventuellement une sortie ;
ne pas signaler comme danger.
```

## 5.3 Zone de bord

```text
montrer la limite approchée ;
montrer ce qui est gagné ;
montrer ce qui risque d’être perdu ;
montrer au moins une sortie.
```

## 5.4 Zone dangereuse

```text
promouvoir les sorties ;
promouvoir les contrôles d’urgence ;
avertir le Conductor ;
réduire la profondeur disponible ;
préparer un éventuel verrouillage.
```

## 5.5 Zone override

```text
montrer que l’override est actif ;
maintenir sortie ou panic fonctionnel ;
ne pas multiplier les warnings ;
préserver la décision humaine.
```

---

# 6. Corps comme information de routing

Le Router ne doit pas seulement recevoir :

```text
body_active.
```

Il doit pouvoir recevoir :

```text
corps-pression ;
corps-impact ;
corps-pulsation ;
corps-geste ;
corps-ancrage ;
corps-attente ;
corps-hypnose ;
corps-retour ;
corps-limite.
```

Exemple :

```text
Si corps = corps-attente,
le Router peut promouvoir Retarder / Annuler / Maintenir tension,
plutôt que Retour au corps.

Si corps = corps-pression,
le Router peut promouvoir Pressure / Stabiliser sub / Low-mid safety.

Si corps = corps-retour,
le Router peut promouvoir Body Return / Impact / Release / Sub return.

Si corps = corps-limite,
le Router peut promouvoir Sortie / Réduire halo / Release freeze / Repasser live.
```

---

# 7. Limites jouables

Le Router doit distinguer :

```text
limite à surveiller ;
limite à rendre jouable ;
limite à bloquer ;
limite à autoriser sous override.
```

## 7.1 Limite à surveiller

Exemple :

```text
halo long mais corps encore présent.
```

Action Router :

```text
préparer Réduire halo ;
ne pas encore l’imposer.
```

## 7.2 Limite à rendre jouable

Exemple :

```text
pré-drop presque attendu.
```

Action Router :

```text
promouvoir Retarder / Annuler / Fausse résolution.
```

## 7.3 Limite à bloquer

Exemple :

```text
freeze sans release ;
feedback dangereux ;
loop remplace live sans décision ;
source optionnelle supposée présente mais absente.
```

Action Router :

```text
verrouiller ou promouvoir sortie urgente.
```

## 7.4 Limite à autoriser sous override

Exemple :

```text
surcharge sub volontaire ;
quasi-ambient assumé ;
chaos polytextural temporaire ;
repeat démonstratif volontairement poussé.
```

Action Router :

```text
montrer override actif ;
préserver sortie ;
ne pas bloquer trop tôt.
```

---

# 8. Sorties comme contrôles prioritaires

Quand une zone de bord est proche, les sorties doivent devenir plus accessibles.

Sorties possibles :

```text
Retirer ;
Réduire ;
Release ;
Retour corps ;
Annuler ;
Fausse résolution ;
Raréfier ;
Stabiliser ;
Repasser live ;
Fermer halo ;
Couper influence automatique.
```

Règle :

```text
pas de zone de bord jouable sans sortie disponible.
```

---

# 9. Exemples de routing harmonisé

## 9.1 Suspension quasi-ambient

Contexte :

```text
state: suspension
body_subfunction: corps-limite / corps-retour latent
edge_zone: anti-ambient edge
risk: halo permanent / perte corps
```

Router :

```text
promouvoir Réduire halo ;
promouvoir Release freeze si freeze actif ;
garder Retour corps disponible ;
montrer override si Yohan maintient la suspension ;
masquer contrôles de densification non pertinents.
```

## 9.2 Tension pré-drop

Contexte :

```text
state: long tension / pre-drop
body_subfunction: corps-attente
edge_zone: drop attendu
risk: recette de build-up
```

Router :

```text
promouvoir Retarder ;
promouvoir Annuler ;
promouvoir Fausse résolution ;
garder Résoudre disponible mais non central ;
montrer zone de bord si la résolution devient trop attendue.
```

## 9.3 Corps-pression surcharge

Contexte :

```text
state: build pressure
body_subfunction: corps-pression
edge_zone: low-mid danger
risk: didgeridoo masqué par sub
```

Router :

```text
promouvoir Stabiliser sub ;
promouvoir Réduire bas-médium ;
montrer didgeridoo live menacé ;
conserver Pressure mais afficher zone bord/danger ;
permettre override si niveau non dangereux et sortie disponible.
```

## 9.4 Polytexture proche confusion

Contexte :

```text
state: polytexture opening
body_subfunction: corps-pulsation / corps-geste
edge_zone: density confusion
risk: guimbardes masquées / perte lisibilité
```

Router :

```text
promouvoir Raréfier ;
promouvoir Lisibilité ;
promouvoir Protéger guimbardes ;
réduire visibilité des contrôles décoratifs ;
permettre chaos temporaire sous override.
```

---

# 10. Relation avec Conductor

Le Router ne décide pas seul si une limite est acceptable.

Il reçoit du Conductor :

```text
scène active ;
fonction dominante ;
trajectoire autorisée ;
risque déclaré ;
limite autorisable ;
limite interdite ;
conditions de sortie ;
override autorisé ou non.
```

Mais le Router peut signaler au Conductor :

```text
le contrôle nécessaire n’est pas performable ;
la limite approche trop vite ;
la sortie manque ;
l’interface risque d’être surchargée ;
un contrôle d’urgence doit être promu.
```

---

# 11. Relation avec Conflict / Protection Manager

Le Conflict Manager signale :

```text
risque ;
gravité ;
urgence ;
réversibilité ;
tension féconde ou danger réel.
```

Le Router transforme cela en :

```text
contrôle visible ;
contrôle urgent ;
message discret ;
verrou temporaire ;
contrôle profond ;
sortie ;
override.
```

Règle :

```text
le Router ne doit pas transformer chaque warning en alarme.
```

---

# 12. Décision actuelle

`05_CONTEXTUAL_CONTROL_ROUTER.md` reste valide.

Cet addendum ajoute une couche nécessaire parce que le Router est le lieu où :

```text
les amplitudes deviennent jouables ;
les limites deviennent visibles ;
les sorties deviennent accessibles ;
l’override humain devient performativement réel.
```

Prochaine étape recommandée :

```text
ne pas créer automatiquement d’addendum individuel Conductor ou Conflict.
Leurs documents sont déjà suffisamment alignés ;
le guide transversal modules peut suffire pour eux pour l’instant.
```

Ne pas encore créer :

```text
interface ;
layout ;
mapping ;
patch ;
prototype.
```
