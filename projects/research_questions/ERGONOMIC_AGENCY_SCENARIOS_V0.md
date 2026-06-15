# ERGONOMIC_AGENCY_SCENARIOS_V0

## Statut

Première série de scénarios pour étudier comment l’interface et le contrôle peuvent préserver ou réduire l’agency musicale live de Yohan.

Ce document n’est pas :

- une spec ;
- un verifier complet ;
- un prototype ;
- un patch ;
- un mapping ;
- un audit `assets/source_needs` ;
- une décision d’architecture.

## Objectif

Transformer les questions d’ergonomie musicale en situations concrètes.

Le but n’est pas encore de choisir une interface, mais d’identifier les moments où un système peut aider Yohan ou, au contraire, lui enlever quelque chose.

---

# 1. Principe

Une interface est musicalement ergonomique si elle préserve l’agency live.

Elle doit permettre à Yohan de rester dans :

- l’écoute ;
- le corps ;
- le timing ;
- la décision ;
- le risque ;
- la nuance ;
- le retrait ;
- la continuité improvisée.

Une interface peut être techniquement fonctionnelle et musicalement mauvaise si elle force Yohan à quitter l’état de performance.

---

# 2. Scénarios initiaux

## S01 — Commencer une scène

Situation : Yohan lance ou fait émerger une nouvelle zone musicale.

Agency à préserver :

- choix du moment ;
- degré d’entrée ;
- fragilité initiale ;
- possibilité de ne pas encore densifier.

Risque d’interface :

- trop de préparation technique ;
- menu ou écran au mauvais moment ;
- lancement automatique trop affirmé ;
- preset qui impose une direction.

Question de design :

```text
Comment ouvrir une scène sans voler le premier geste musical ?
```

## S02 — Tenir une pression

Situation : la performance maintient une tension, un drone, une saturation, un halo ou une énergie stable mais vivante.

Agency à préserver :

- micro-variations ;
- endurance ;
- écoute du seuil ;
- décision de rester ou de basculer.

Risque d’interface :

- automatisation trop stable ;
- contrôle trop grossier ;
- besoin de regarder l’écran ;
- perte du grain vivant.

Question de design :

```text
Comment aider à tenir une pression sans la figer ?
```

## S03 — Augmenter la densité

Situation : Yohan veut intensifier la matière musicale.

Agency à préserver :

- rythme d’accumulation ;
- choix des couches ;
- droit de rester lisible ;
- perception de la limite.

Risque d’interface :

- accumulation automatique ;
- couches trop nombreuses ;
- feedback insuffisant ;
- confusion entre intensité et surcharge.

Question de design :

```text
Comment densifier sans perdre la lisibilité ni l’autorité musicale ?
```

## S04 — Se retirer ou laisser un silence

Situation : Yohan réduit, suspend, retire ou laisse un vide.

Agency à préserver :

- silence ;
- retrait ;
- respiration ;
- droit de ne pas remplir.

Risque d’interface :

- système qui compense automatiquement ;
- génération qui continue trop longtemps ;
- boucle qui refuse de mourir ;
- densité résiduelle imposée.

Question de design :

```text
Comment garantir que le retrait reste un geste musical actif ?
```

## S05 — Sortir d’un freeze, d’un drone ou d’une boucle

Situation : une matière tenue doit pouvoir être relâchée, cassée, fondue ou arrêtée.

Agency à préserver :

- sortie immédiate ;
- sortie progressive ;
- choix de rupture ou de dissolution ;
- contrôle de la durée.

Risque d’interface :

- état bloqué ;
- sortie cachée ;
- sortie trop brutale ;
- besoin de manipulations multiples.

Question de design :

```text
Comment rendre la sortie aussi musicale que l’entrée ?
```

## S06 — Récupérer d’une surcharge

Situation : trop de matière, trop d’effets ou trop de complexité apparaissent.

Agency à préserver :

- lucidité ;
- possibilité de simplifier ;
- contrôle d’urgence ;
- continuité musicale malgré la correction.

Risque d’interface :

- panique technique ;
- plusieurs boutons à chercher ;
- perte d’écoute ;
- arrêt brutal non musical.

Question de design :

```text
Comment corriger une surcharge sans sortir de la performance ?
```

## S07 — Refuser une suggestion du système

Situation : le système propose, prépare ou rend disponible une action.

Agency à préserver :

- droit de refuser ;
- non-obligation ;
- absence de pression ;
- décision humaine finale.

Risque d’interface :

- suggestion trop présente ;
- choix orienté ;
- comportement par défaut trop fort ;
- impression de suivre la machine.

Question de design :

```text
Comment une suggestion peut-elle rester disponible sans pousser la décision ?
```

## S08 — Changer de direction

Situation : Yohan veut bifurquer, contredire ou abandonner la trajectoire en cours.

Agency à préserver :

- interruption ;
- bifurcation ;
- imprévu ;
- capacité de changer d’idée.

Risque d’interface :

- trajectoire trop scénarisée ;
- automation difficile à détourner ;
- logique de scène rigide ;
- paramètres dépendants les uns des autres.

Question de design :

```text
Comment permettre une bifurcation sans casser le set ?
```

## S09 — Continuer sans regarder

Situation : Yohan doit rester dans le jeu, l’écoute et le corps.

Agency à préserver :

- attention auditive ;
- présence corporelle ;
- geste musical ;
- non-dépendance à l’écran.

Risque d’interface :

- écran indispensable ;
- état système illisible sans visuel ;
- contrôle trop abstrait ;
- monitoring envahissant.

Question de design :

```text
Quels contrôles restent utilisables sans quitter l’écoute ?
```

## S10 — Réagir à une latence, panne ou comportement inattendu

Situation : le système réagit mal, lentement, ou de manière imprévue.

Agency à préserver :

- sécurité performative ;
- reprise manuelle ;
- confiance ;
- possibilité de continuer musicalement.

Risque d’interface :

- dépendance excessive ;
- absence de fallback ;
- panique ;
- blocage de la performance.

Question de design :

```text
Comment préserver l’agency quand le système se comporte mal ?
```

---

# 3. Critères transversaux

Pour chaque scénario futur, vérifier :

```text
1. Est-ce que Yohan garde le choix du moment ?
2. Est-ce que Yohan peut refuser ou interrompre ?
3. Est-ce que l’écoute reste prioritaire ?
4. Est-ce que le corps reste central ?
5. Est-ce que le système évite de remplir automatiquement ?
6. Est-ce que la densité reste lisible ?
7. Est-ce que la sortie est claire ?
8. Est-ce que l’erreur reste récupérable ?
9. Est-ce que l’interface évite la surcharge cognitive ?
10. Est-ce que la décision finale reste humaine ?
```

---

# 4. Ce que ce document permet

Ce document peut nourrir plus tard :

- des critères de verifier ;
- des micro-tests ;
- un audit de claims ;
- une future spec ;
- une grille d’évaluation ergonomique.

Mais il ne produit pas encore ces objets.

---

# 5. Prochaine action recommandée

Créer :

```text
projects/research_questions/DECISION_GATE_BEFORE_SOURCE_NEEDS_AUDIT.md
```

But : décider si l’audit `assets/source_needs` peut commencer, ou si un audit agency/control doit être intercalé avant.

---

# 6. Interdictions actuelles

Ne pas :

- écrire SPEC.md ;
- écrire VERIFY.md ;
- créer un prototype ;
- créer un patch ;
- créer un mapping complet ;
- auditer `assets/source_needs` ;
- modifier main ;
- merger la branche méthode.
