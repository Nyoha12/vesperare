# CURRENT_DECISION_SUMMARY

## Statut

Synthèse courte de l’état actuel de la reprise méthodologique.

Branche de travail :

```text
ai/method-core
```

---

# 1. État atteint

La méthode est maintenant installée et appliquée à Vesperare.

La reprise a produit :

```text
intake ;
claim register ;
acquis audit ;
questions fondatrices ;
agency preservation map ;
micro-test criteria ;
ergonomic agency scenarios ;
agency/control audit ;
source_needs protocol ;
agent readiness gate ;
agent run protocol.
```

---

# 2. Décisions actuelles

## 2.1 Objet central

```text
préserver l’agency musicale live de Yohan
```

Le système ne doit pas isoler une compétence à préserver. Il doit éviter de réduire l’intégrité du jeu.

## 2.2 Source_needs

Le premier batch source_needs a été limité à :

```text
didgeridoo live ;
guimbardes live ;
sub pressure engine.
```

Décision : ne pas lancer Batch 02 maintenant.

## 2.3 Sub pressure

Clarification :

```text
fonction sub = besoin musical gardé ;
engine sub = hypothèse active sous contrainte agency.
```

Le sub n’est pas validé comme architecture.

## 2.4 Micro-test candidat

Candidat prioritaire :

```text
MTC01 — Sub soutient didgeridoo sans le masquer.
```

Statut : candidat cadré, non autorisé.

---

# 3. Agents

La méthode est maintenant prête pour :

```text
agents de critique ;
agents de recherche limitée ;
agents de comparaison ;
agents de revue de risques.
```

Elle n’est pas prête pour :

```text
agents de prototype ;
agents de patch ;
agents de mapping ;
agents de spec globale ;
agents de modification de branche principale.
```

---

# 4. Ce qui reste interdit maintenant

Ne pas :

```text
écrire SPEC.md ;
écrire VERIFY.md ;
créer un prototype ;
créer un patch ;
créer un mapping ;
lancer MTC01 ;
auditer tout source_needs ;
transformer le sub en engine validé ;
transformer un micro-test en architecture.
```

---

# 5. Options de prochaine étape

## Option A — Revue humaine courte

Relire cette synthèse et choisir si la méthode doit continuer, ralentir ou basculer vers une revue agent.

## Option B — Revue agent de MTC01

Utiliser le protocole agents pour relire le cadrage MTC01.

## Option C — Prompt de revue externe

Créer un prompt de travail en lecture seule pour un outil ou agent externe.

## Option D — Retour à l’audit documentaire

Continuer source_needs plus tard, seulement après décision explicite.

---

# 6. Recommandation

Recommandation actuelle : Option C.

Créer un prompt court de revue externe pour MTC01.

But : tester la méthode avec un objet limité, sans lancer de prototype.
