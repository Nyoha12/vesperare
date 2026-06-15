# FOUNDATIONAL_RESEARCH_QUESTIONS_V0

## Statut

Document de cadrage de recherche/design, créé après la correction de l’interview fondatrice.

Ce document n’est pas :

- une spec ;
- un verifier ;
- un audit complet ;
- un plan de prototype ;
- une décision d’architecture ;
- un audit assets/source_needs.

## Pourquoi ce document existe

L’étape d’interview a révélé une erreur méthodologique : certaines questions posées à Yohan étaient trop larges et demandaient déjà de résoudre le problème de conception.

La correction est la suivante :

> Quand Yohan ne peut pas répondre parce que la question est précisément l’objet de la recherche, la question doit devenir une question de recherche/design/vérification, pas un devoir d’interview.

## Axiomes issus de la correction utilisateur

### A1 — Le système ne doit rien enlever à Yohan

Le futur système doit préserver l’intégrité de l’agency musicale de Yohan.

Il ne doit pas retirer :

- le timing ;
- l’écoute ;
- la décision ;
- la présence ;
- le risque ;
- la tension ;
- le silence ;
- le corps ;
- la sensibilité ;
- la continuité improvisée ;
- la capacité de redirection ;
- l’autorité musicale finale.

### A2 — Ce que Yohan fait bien comme improvisateur acoustique : tout

Cette réponse ne doit pas être traitée comme vague ou insuffisante.

Elle signifie que l’objet à préserver n’est pas une compétence isolée, mais une écologie globale de performance.

Le système ne doit donc pas chercher une petite liste de talents à assister. Il doit apprendre à ne pas réduire l’ensemble.

## Principe de recherche

L’objet central à préserver est :

```text
l’agency musicale live complète de Yohan
```

Cette agency inclut au minimum :

```text
corps ;
écoute ;
timing ;
souffle ;
silence ;
risque ;
densité ;
timbre ;
forme ;
décision ;
sensibilité ;
présence ;
continuité improvisée.
```

Ces mots ne sont pas des catégories finales. Ce sont des poignées de recherche.

---

# 1. Questions de recherche fondamentales

## RQ01 — Préservation de l’agency

Question :

```text
Qu’est-ce que le système risque d’enlever à Yohan, même lorsqu’il semble l’aider ?
```

Sous-questions :

- Quelles décisions doivent toujours rester humaines ?
- Quels gestes ne doivent jamais être remplacés par une automatisation ?
- Quels types d’aide peuvent devenir intrusifs ?
- À quel moment une assistance devient-elle une prise de pouvoir ?

Type de sortie attendu plus tard :

- liste de zones d’agency à protéger ;
- critères de non-dépossession ;
- human validation zones ;
- futurs verifiers de préservation de l’agency.

## RQ02 — Amplification sans remplacement

Question :

```text
Comment amplifier ce que Yohan fait déjà bien sans le remplacer ?
```

Sous-questions :

- Quels éléments de jeu peuvent être prolongés électroniquement ?
- Quels éléments doivent seulement être accompagnés ?
- Quels éléments doivent rester entièrement acoustiques ?
- Comment distinguer augmentation, miroir, prolongement, traduction et remplacement ?

Type de sortie attendu plus tard :

- typologie des modes d’assistance ;
- règles d’augmentation ;
- zones interdites à l’automation.

## RQ03 — Intuition en situation live

Question :

```text
Qu’est-ce qui rend un contrôle intuitif pendant une performance live ?
```

Sous-questions :

- Un contrôle est-il intuitif parce qu’il est simple ?
- Parce qu’il arrive au bon moment ?
- Parce qu’il suit un geste ?
- Parce qu’il donne un retour perceptible ?
- Parce qu’il ne demande pas d’attention visuelle ?
- Parce qu’il laisse une sortie immédiate ?

Type de sortie attendu plus tard :

- critères d’ergonomie musicale ;
- scénarios de contrôle ;
- futurs tests de charge cognitive.

## RQ04 — Sensibilité électronique

Question :

```text
Qu’est-ce qui rend une transformation électronique sensible plutôt que décorative ou caricaturale ?
```

Sous-questions :

- Quand une transformation respecte-t-elle le geste acoustique ?
- Quand le traitement devient-il un effet plaqué ?
- Quand l’électronique prolonge-t-elle la nuance ?
- Quand la simplifie-t-elle ?
- Comment repérer la perte de subtilité ?

Type de sortie attendu plus tard :

- critères anti-caricature ;
- exemples positifs/négatifs ;
- future grille d’écoute.

## RQ05 — Traduction acoustique → contrôle électronique

Question :

```text
Quelles dimensions du jeu acoustique peuvent être traduites en contrôle électronique sans être réduites ?
```

Sous-questions :

- Le souffle peut-il piloter une densité, une pression, un espace ?
- Les micro-pulses peuvent-ils influencer une granularité ou une répétition ?
- L’instabilité peut-elle moduler une tension ?
- Le retrait peut-il réduire une couche générée ?
- La présence acoustique peut-elle ouvrir ou fermer un champ électronique ?

Type de sortie attendu plus tard :

- matrice geste/signal → fonction électronique ;
- hypothèses de micro-tests ;
- critères de succès perceptif.

## RQ06 — Charge cognitive

Question :

```text
Quels types de charge cognitive détruisent la performance ?
```

Sous-questions :

- Trop de contrôles ?
- Mauvais contrôle au mauvais moment ?
- Écran trop présent ?
- État du système trop opaque ?
- Peur de casser le set ?
- Latence ou imprévisibilité ?
- Décisions techniques qui coupent l’écoute ?

Type de sortie attendu plus tard :

- typologie des charges cognitives ;
- critères d’interface ;
- verifiers de lisibilité/performance.

## RQ07 — Micro-test versus prototype

Question :

```text
Comment distinguer un micro-test utile d’un prototype prématuré ?
```

Hypothèse provisoire :

Un micro-test répond à une seule question précise.

Un prototype engage une direction de système.

Sous-questions :

- Quelle taille maximale pour un micro-test ?
- Quelle durée maximale ?
- Quel type de résultat doit-il produire ?
- Quand un test devient-il déjà une architecture ?
- Comment éviter qu’un patch jetable devienne une fondation implicite ?

Type de sortie attendu plus tard :

- critères de micro-test ;
- garde-fous anti-prototype prématuré ;
- protocole de test sans dette architecturale.

## RQ08 — Ancienne prochaine étape du repo

Question :

```text
L’audit assets/source_needs est-il encore la bonne prochaine étape après la reprise méthodologique ?
```

Sous-questions :

- Est-ce que les claims humains/performance sont assez stabilisés ?
- Est-ce que les claims stylistiques sont assez stabilisés ?
- Est-ce que la notion de source_need dépend encore de questions non résolues ?
- Est-ce que l’audit assets/source_needs risque de continuer trop vite l’ancienne trajectoire ?

Type de sortie attendu plus tard :

- décision : continuer vers assets/source_needs, ou intercaler style/acquis audit, agency audit, ou micro-test criteria.

---

# 2. Ce que ces questions remplacent

Ce document remplace une interview trop lourde.

Au lieu de demander :

```text
Yohan, définis tout de suite ton système idéal.
```

La méthode demande maintenant :

```text
Quelles questions doivent être étudiées pour que le système ne réduise pas Yohan ?
```

---

# 3. Prochaine étape recommandée

Créer :

```text
projects/research_questions/FOUNDATIONAL_RESEARCH_PLAN_V0.md
```

Ce futur plan devra proposer une manière d’explorer ces questions sans :

- tout auditer ;
- écrire une spec ;
- écrire un verifier complet ;
- prototyper ;
- lancer l’audit assets/source_needs trop tôt.

Il devra classer les questions en :

- questions à clarifier par discussion courte ;
- questions à explorer par lecture du corpus ;
- questions à transformer en claim audit ;
- questions à transformer plus tard en micro-test ;
- questions à garder ouvertes.

---

# 4. Interdictions actuelles

Ne pas :

- demander une interview exhaustive à Yohan ;
- demander à Yohan de résoudre le design entier ;
- écrire SPEC.md ;
- écrire VERIFY.md ;
- auditer assets/source_needs ;
- créer un prototype ;
- créer un patch ;
- modifier main ;
- merger la branche méthode.
