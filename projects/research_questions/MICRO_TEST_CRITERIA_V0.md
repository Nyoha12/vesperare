# MICRO_TEST_CRITERIA_V0

## Statut

Première définition méthodologique d’un micro-test acceptable pour Vesperare.

Ce document n’est pas :

- une spec ;
- un verifier complet ;
- un prototype ;
- un plan de patch ;
- une décision d’architecture ;
- un audit `assets/source_needs`.

## Pourquoi ce document existe

La méthode interdit le prototype prématuré, mais elle ne doit pas interdire toute confrontation au réel.

Un micro-test est autorisable seulement s’il répond à une question limitée, sans installer une architecture implicite.

---

# 1. Définition courte

## Micro-test

Un micro-test est une expérience courte, locale et réversible, conçue pour répondre à une seule question précise.

Il produit une observation, pas une fondation de système.

## Prototype prématuré

Un prototype prématuré est une construction qui commence à figer une architecture, un workflow, une esthétique ou un mapping avant que les claims, les contraintes d’agency et les critères de vérification soient assez clairs.

---

# 2. Conditions d’autorisation d’un micro-test

Un micro-test peut être autorisé seulement si toutes les conditions suivantes sont vraies.

## C01 — Une seule question

Le test doit répondre à une seule question.

Exemple acceptable :

```text
Est-ce qu’un signal de souffle peut influencer une densité électronique sans masquer la source acoustique ?
```

Exemple non acceptable :

```text
Créer une première version du système live.
```

## C02 — Durée courte

Le test doit être limité dans le temps.

Il ne doit pas devenir une session de développement ouverte.

## C03 — Sortie observable

Le résultat attendu doit être une observation simple :

- ça préserve l’agency ;
- ça réduit l’agency ;
- c’est ambigu ;
- ça exige un autre test ;
- c’est à abandonner.

## C04 — Aucune dette d’architecture

Le test ne doit pas créer une structure destinée à devenir automatiquement la base du système.

Le code, patch ou montage peut être jeté.

## C05 — Réversibilité

Le test doit pouvoir être abandonné sans perte.

Aucun document central ne doit dépendre du test tant qu’il n’a pas été évalué.

## C06 — Human agency first

Le test doit vérifier au moins un risque lié à l’agency de Yohan.

Il ne doit pas seulement prouver qu’une technique fonctionne.

## C07 — Pas de généralisation immédiate

Un résultat positif ne prouve pas que la solution est bonne pour tout le système.

Il ne produit qu’un indice.

## C08 — Pas de glissement vers le produit

Le test ne doit pas devenir :

- une architecture ;
- un module officiel ;
- un mapping définitif ;
- une scène live ;
- une spec complète ;
- un dossier de production.

---

# 3. Format obligatoire d’un micro-test futur

Tout micro-test futur devra être décrit avec ce format minimal.

```text
Nom du micro-test :
Question unique :
Dimension d’agency concernée :
Ce qui est testé :
Ce qui n’est pas testé :
Durée limite :
Critère d’arrêt :
Observation attendue :
Risque de glissement vers prototype :
Décision après test : garder comme indice / refaire / abandonner / transformer en claim / transformer en verifier.
```

---

# 4. Exemples de micro-tests acceptables

## M01 — Souffle vers densité

Question unique :

```text
Une information de souffle peut-elle influencer une densité électronique sans remplacer le geste acoustique ?
```

Pourquoi c’est un micro-test :

- une seule relation est étudiée ;
- pas de système complet ;
- résultat observable ;
- test jetable.

## M02 — Silence et retrait

Question unique :

```text
Le système peut-il respecter un retrait acoustique sans remplir automatiquement l’espace ?
```

Pourquoi c’est un micro-test :

- centré sur une dimension d’agency ;
- vérifie un risque précis ;
- ne nécessite pas d’architecture complète.

## M03 — Override immédiat

Question unique :

```text
Un contrôle d’arrêt ou de retrait peut-il rester immédiatement disponible sans détourner l’attention musicale ?
```

Pourquoi c’est un micro-test :

- concerne la sécurité performative ;
- teste l’ergonomie ;
- ne définit pas encore le système global.

---

# 5. Exemples non acceptables maintenant

## N01 — Premier patch global

```text
Créer un patch Max for Live qui combine captation, analyse, mapping, effets, freeze et scène live.
```

Pourquoi non :

- trop large ;
- architecture implicite ;
- glissement vers prototype ;
- risque de figer de mauvaises décisions.

## N02 — Mapping complet didgeridoo / guimbarde / électronique

Pourquoi non :

- trop de claims à la fois ;
- trop proche d’une spec ;
- risque de réduire la musicalité à des paramètres.

## N03 — Démo esthétique complète

Pourquoi non :

- juge le rendu avant de clarifier l’agency ;
- risque de produire une caricature séduisante ;
- peut faire croire que le système est déjà orienté.

---

# 6. Critères d’arrêt

Un micro-test doit s’arrêter si :

- il ajoute une deuxième question majeure ;
- il exige une architecture durable ;
- il commence à définir le système global ;
- il réduit l’agency de Yohan ;
- il devient principalement technique ;
- il demande un audit `assets/source_needs` pour continuer ;
- il produit plus de décisions que d’observations.

---

# 7. Relation avec la spec future

Un micro-test ne remplace pas une spec.

Il peut seulement nourrir plus tard :

- un claim mieux formulé ;
- un critère de verifier ;
- une contrainte d’agency ;
- une hypothèse technique ;
- une décision d’abandon.

---

# 8. Prochaine action recommandée

Créer :

```text
projects/research_questions/ERGONOMIC_AGENCY_SCENARIOS_V0.md
```

But : décrire quelques situations de performance où l’agency peut être préservée ou réduite par l’interface et le contrôle.

---

# 9. Interdictions actuelles

Ne pas :

- écrire SPEC.md ;
- écrire VERIFY.md ;
- créer un prototype ;
- créer un patch ;
- créer un mapping complet ;
- auditer `assets/source_needs` ;
- modifier main ;
- merger la branche méthode.
