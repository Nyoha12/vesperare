# 18_CONTEXTUAL_CONTROL_ROUTER_AMPLITUDES_LIMITES_OVERRIDE_ADDENDUM

Version : v0.2  
Statut : addendum ciblé à `05_CONTEXTUAL_CONTROL_ROUTER.md`. Sans interface, sans mapping, sans patch, sans prototype.

## Objet

Ce document complète `05_CONTEXTUAL_CONTROL_ROUTER.md` après recentrage autour de :

```text
corps composé ;
amplitudes ;
zones de bord ;
limites jouables ;
sorties ;
override humain ;
automation située ;
contrôles optimisés par contexte.
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
cette tension peut être retardée ;
cette automation locale est autorisée ;
ce réglage doit rester humain.
```

Mais c’est le Router qui doit décider :

```text
quel contrôle devient visible ;
quel contrôle reste profond ;
quel contrôle devient urgent ;
quel contrôle est masqué ;
quel contrôle est verrouillé ;
quel contrôle peut être override ;
quelle fonction est automatisée ;
quelle fonction reste réglable ;
quelle automation doit être visible ou silencieuse.
```

---

# 2. Formule corrigée du contrôle contextuel

Formule initiale de `05` :

```text
contrôle contextuel = intention jouable + contexte + priorité + cible(s) + garde-fous.
```

Formule harmonisée :

```text
contrôle contextuel = intention jouable + contexte + priorité + cible(s) + amplitude + risque + sortie + automation_status + override.
```

Ce changement ne remplace pas la formule initiale. Il la complète.

---

# 3. Automation située vs réglage humain

Le Router doit distinguer, pour chaque fonction :

```text
automatiser ;
assister ;
suggérer ;
présenter au réglage humain ;
laisser profond ;
laisser sous override ;
verrouiller.
```

## 3.1 À automatiser ou semi-automatiser

Surtout les fonctions de :

```text
sécurité ;
coordination ;
range limiting ;
release obligatoire ;
protection live ;
routing contextuel ;
promotion d’urgence ;
masquage de paramètres inutiles ;
suivi de zones de bord ;
préservation des sorties.
```

Exemples :

```text
low-end guard ;
high fatigue guard ;
freeze release required ;
sub/didgeridoo conflict warning ;
control promotion ;
control hiding ;
source absent lock ;
anti-feedback ;
output safety ;
live priority protection.
```

## 3.2 À laisser au réglage de Yohan

Surtout les fonctions de :

```text
intensité ;
timing ;
choix de trajectoire ;
franchissement de limite ;
retard ou résolution ;
exposition d’une matière ;
rapport expressif à la tension ;
décision de rester au bord.
```

Exemples :

```text
Pressure amount ;
Body Return type ;
Retarder / Résoudre / Annuler ;
Polytexture Density ;
Suspension depth ;
Repeat intensity ;
Loop as trace / shadow / double ;
Freeze duration when safe ;
Halo exposure ;
Override edge.
```

## 3.3 À optimiser par contexte

Même quand le réglage reste humain, le Router doit réduire la charge en présentant :

```text
les contrôles les plus pertinents maintenant ;
les plages utiles ;
les sorties disponibles ;
les limites proches ;
les réglages dangereux mais fertiles ;
les contrôles profonds seulement si nécessaires.
```

Règle :

```text
Yohan ne doit pas avoir à chercher le bon paramètre dans tout le système.
Le système doit lui présenter les bons gestes de contrôle au bon moment.
```

---

# 4. Entrées supplémentaires à recevoir

Le Router devrait pouvoir recevoir ou déduire :

```text
body_subfunction ;
control_amplitude_zone ;
edge_zone_status ;
risk_profile ;
output_or_exit_mode ;
override_status ;
automation_status ;
manual_control_priority ;
source_live_priority ;
provenance_level.
```

Ces informations ne doivent pas toutes être affichées.

Elles servent à prioriser ce qui devient :

```text
automatisé ;
visible ;
urgent ;
réglable ;
profond ;
masqué ;
verrouillé ;
overrideable.
```

---

# 5. Règle anti-dashboard

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
laisser accessible sur demande ;
automatiser silencieusement ;
automatiser avec feedback visible.
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
contrôles de bord visibles alors que la scène n’approche pas de limite ;
automations invisibles qui changent la musique sans intelligibilité ;
automations trop bavardes qui remplacent le geste musical.
```

Note de statut : un contrôle permanent est seulement un accès de base disponible, pas une macro générale ouverte en continu. Un contrôle prioritaire de scène est une promotion temporaire issue du champ de scène actif, pas un preset ni une décision formelle. `Pressure`, `Body Return`, loop, repeat et freeze restent des raccourcis ou affordances situées : pression doit rester subdivisible, retour au corps reste une famille de sorties, et répétition / hypnose ne se réduisent pas aux objets temporels.

---

# 6. Amplitudes comme priorité de routing

Le Router doit adapter la visibilité selon la zone actuelle.

## 6.1 Zone sûre

```text
afficher seulement le noyau de jeu ;
masquer les warnings ;
garder les sorties profondes mais disponibles ;
laisser les protections de fond silencieuses.
```

## 6.2 Zone expressive

```text
montrer le contrôle en cours ;
montrer éventuellement une sortie ;
ne pas signaler comme danger ;
automatiser seulement ce qui protège sans réduire l’expression.
```

## 6.3 Zone de bord

```text
montrer la limite approchée ;
montrer ce qui est gagné ;
montrer ce qui risque d’être perdu ;
montrer au moins une sortie ;
présenter le réglage humain pertinent ;
automatiser seulement les protections nécessaires.
```

## 6.4 Zone dangereuse

```text
promouvoir les sorties ;
promouvoir les contrôles d’urgence ;
avertir le Conductor ;
réduire la profondeur disponible ;
préparer un éventuel verrouillage ;
automatiser davantage si risque technique réel.
```

## 6.5 Zone override

```text
montrer que l’override est actif ;
maintenir sortie ou panic fonctionnel ;
ne pas multiplier les warnings ;
préserver la décision humaine ;
ne pas reprendre automatiquement le contrôle sauf danger technique.
```

---

# 7. Corps comme information de routing

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

# 8. Limites jouables

Le Router doit distinguer :

```text
limite à surveiller ;
limite à rendre jouable ;
limite à bloquer ;
limite à autoriser sous override.
```

## 8.1 Limite à surveiller

Exemple :

```text
halo long mais corps encore présent.
```

Action Router :

```text
préparer Réduire halo ;
ne pas encore l’imposer.
```

## 8.2 Limite à rendre jouable

Exemple :

```text
pré-drop presque attendu.
```

Action Router :

```text
promouvoir Retarder / Annuler / Fausse résolution.
```

## 8.3 Limite à bloquer

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

## 8.4 Limite à autoriser sous override

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

# 9. Sorties comme contrôles prioritaires

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

# 10. Exemples de routing harmonisé

## 10.1 Suspension quasi-ambient

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
masquer contrôles de densification non pertinents ;
automatiser seulement release/safety, pas la décision de sortir.
```

## 10.2 Tension pré-drop

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
montrer zone de bord si la résolution devient trop attendue ;
ne pas automatiser la résolution.
```

## 10.3 Corps-pression surcharge

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
automatiser low-end guard si nécessaire ;
permettre override si niveau non dangereux et sortie disponible.
```

## 10.4 Polytexture proche confusion

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
automatiser seulement protections douces ;
permettre chaos temporaire sous override.
```

---

# 11. Relation avec Conductor

Le Router ne décide pas seul si une limite est acceptable ou si une automation est autorisée.

Il reçoit du Conductor :

```text
scène active ;
fonction dominante ;
trajectoire autorisée ;
risque déclaré ;
limite autorisable ;
limite interdite ;
conditions de sortie ;
automation autorisée ou non ;
override autorisé ou non.
```

Mais le Router peut signaler au Conductor :

```text
le contrôle nécessaire n’est pas performable ;
la limite approche trop vite ;
la sortie manque ;
l’interface risque d’être surchargée ;
un contrôle d’urgence doit être promu ;
une automation devient trop invasive ;
une fonction devrait repasser au réglage humain.
```

---

# 12. Relation avec Conflict / Protection Manager

Le Conflict Manager signale :

```text
risque ;
gravité ;
urgence ;
réversibilité ;
tension féconde ou danger réel ;
protection automatique possible ;
protection à laisser au musicien.
```

Le Router transforme cela en :

```text
contrôle visible ;
contrôle urgent ;
message discret ;
verrou temporaire ;
contrôle profond ;
sortie ;
automation ;
réglage manuel ;
override.
```

Règle :

```text
le Router ne doit pas transformer chaque warning en alarme.
le Router ne doit pas transformer chaque protection possible en automation active.
```

---

# 13. Décision actuelle

`05_CONTEXTUAL_CONTROL_ROUTER.md` reste valide.

Cet addendum ajoute une couche nécessaire parce que le Router est le lieu où :

```text
les amplitudes deviennent jouables ;
les limites deviennent visibles ;
les sorties deviennent accessibles ;
les automations deviennent situées ;
les réglages humains restent optimisés par contexte ;
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
