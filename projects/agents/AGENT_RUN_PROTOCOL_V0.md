# AGENT_RUN_PROTOCOL_V0

## Statut

Protocole standard pour faire travailler plusieurs agents/subagents dans Vesperare.

Ce document n’est pas :

- une automatisation autonome ;
- une autorisation de modifier `main` ;
- une autorisation de prototypage ;
- une spec ;
- un verifier complet.

---

# 1. Principe

Un run d’agents sert à produire plusieurs regards indépendants sur une tâche cadrée.

Il ne sert pas à :

- remplacer Yohan ;
- décider à la majorité ;
- créer une fausse autorité ;
- éviter la responsabilité de synthèse ;
- avancer quand la tâche est vague.

---

# 2. Structure obligatoire d’un run

Chaque run doit avoir :

```text
1. nom du run ;
2. question centrale ;
3. corpus autorisé ;
4. corpus interdit ;
5. agents / rôles ;
6. consignes communes ;
7. format de sortie individuel ;
8. format de synthèse ;
9. décisions interdites ;
10. décision humaine attendue.
```

---

# 3. Template de run

```md
# AGENT_RUN_NAME

## Question centrale

## Corpus autorisé

## Corpus interdit

## Agents

### Agent 1
- Rôle :
- Angle :
- Tâche :
- Ce qu’il doit chercher :
- Ce qu’il ne doit pas faire :

### Agent 2
- Rôle :
- Angle :
- Tâche :
- Ce qu’il doit chercher :
- Ce qu’il ne doit pas faire :

## Consignes communes

- Ne pas modifier main.
- Ne pas écrire de patch.
- Ne pas écrire de spec globale.
- Ne pas inventer de décision humaine.
- Préserver les désaccords.
- Signaler les incertitudes.

## Format de sortie individuel

```text
Agent :
Conclusion courte :
Arguments principaux :
Risques :
Angles morts :
Ce qui devrait changer :
Confiance : faible / moyenne / forte
```

## Format de synthèse

```text
Accords :
Désaccords :
Risques majeurs :
Angles morts communs :
Recommandation :
Décision humaine requise :
```
```

---

# 4. Règles d’indépendance

Les agents doivent produire leur première réponse sans lire les conclusions des autres.

La synthèse intervient seulement après.

Si l’outil utilisé ne permet pas une vraie indépendance technique, le prompt doit au moins séparer strictement les rôles et demander des sorties individuelles avant synthèse.

---

# 5. Règles de comparaison

Les sorties doivent être comparables.

Un run d’agents est mauvais si :

- chaque agent répond à une question différente ;
- les formats sont incompatibles ;
- la synthèse écrase les désaccords ;
- la conclusion prétend prouver une vérité ;
- le désaccord est traité comme un bug au lieu d’une information.

---

# 6. Rôles standards possibles

## Agent agency live

Cherche les risques de dépossession, remplacement du live, perte de décision ou perte de corps.

## Agent anti-prototype

Cherche les glissements vers patch, mapping, spec, architecture ou production prématurée.

## Agent contrôle / override

Cherche si les sorties, retraits, limites, amplitudes et overrides sont assez clairs.

## Agent source_needs sceptique

Traite chaque source_need comme hypothèse, pas comme nécessité.

## Agent ergonomie cognitive

Cherche surcharge, écran mental, trop de contrôles, urgence cachée, opacité.

## Agent esthétique anti-caricature

Cherche les risques de cliché, effet décoratif, techno standard, folklore, ambientisation ou sound-design démonstratif.

## Agent méthode / proportionnalité

Cherche si la méthode produit de la clarté ou seulement de la documentation supplémentaire.

---

# 7. Premier run recommandé

Créer :

```text
projects/agents/runs/AGENT_REVIEW_SOURCE_NEEDS_BATCH_01.md
```

Question centrale :

```text
SOURCE_NEEDS_AUDIT_BATCH_01 reste-t-il agency-first, ou valide-t-il trop vite didgeridoo / guimbardes / sub ?
```

Agents :

```text
agency live ;
anti-prototype ;
contrôle / override ;
source_needs sceptique ;
ergonomie cognitive ;
méthode / proportionnalité.
```

---

# 8. Garde-fous

Ne pas :

- lancer un agent sur tout le repo ;
- lancer des agents sans question centrale ;
- utiliser les agents pour décider à la place de Yohan ;
- traiter leurs sorties comme preuve ;
- autoriser patch, mapping, spec ou prototype ;
- modifier main ;
- merger la branche méthode.
