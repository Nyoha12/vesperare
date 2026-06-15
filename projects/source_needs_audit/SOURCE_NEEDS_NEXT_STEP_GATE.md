# SOURCE_NEEDS_NEXT_STEP_GATE

## Statut

Gate de décision après :

```text
SOURCE_NEEDS_AUDIT_BATCH_01
SOURCE_NEEDS_AUDIT_BATCH_01_REVIEW
AGENT_REVIEW_SOURCE_NEEDS_BATCH_01
```

Ce document sert à choisir la suite sans avancer automatiquement vers un Batch 02.

Ce document n’est pas :

- un audit `source_needs` supplémentaire ;
- une spec ;
- un verifier complet ;
- un prototype ;
- un patch ;
- un mapping ;
- une décision d’architecture.

---

# 1. Question

```text
Que faut-il faire après le premier audit source_needs limité ?
```

Options examinées :

```text
A — continuer source_needs Batch 02 ;
B — consolider le risque sub / agency ;
C — préparer des micro-tests candidats sans les lancer ;
D — faire une pause méthode / synthèse pour Yohan.
```

---

# 2. Analyse

## Option A — Continuer source_needs Batch 02

Avantage :

- continue l’audit documentaire ;
- permettrait de traiter gong, tambour, voix, field recordings ou sources harmoniques.

Risque :

- relancer trop vite l’ancien chemin `assets/source_needs` ;
- auditer des sources secondaires avant d’avoir clarifié le point le plus sensible : le sub ;
- accumuler des décisions documentaires sans réduire le risque principal.

Avis : ne pas choisir maintenant.

## Option B — Consolider le risque sub / agency

Avantage :

- traite le point le plus dangereux identifié par l’audit et la revue agent-style ;
- évite que le sub devienne une fondation implicite ;
- clarifie la différence entre fonction sub, engine sub, soutien au live et remplacement du live.

Risque :

- rester trop longtemps sur le sub ;
- transformer une note de risque en quasi-spec.

Avis : choisir maintenant, avec scope court.

## Option C — Préparer des micro-tests candidats sans les lancer

Avantage :

- transforme les tensions en questions testables plus tard ;
- garde la méthode orientée vers le réel sans prototyper ;
- prépare un futur travail d’agents/Codex.

Risque :

- donner envie de lancer les tests trop tôt ;
- confondre candidat et autorisation.

Avis : choisir maintenant, mais seulement comme liste de candidats interdits d’exécution.

## Option D — Pause méthode / synthèse pour Yohan

Avantage :

- réduit la surcharge ;
- rend le chemin lisible ;
- permet une décision humaine.

Risque :

- arrêter trop tôt la structuration alors que le point sub demande encore consolidation.

Avis : utile après B et C.

---

# 3. Décision

Décision actuelle :

```text
ne pas lancer SOURCE_NEEDS_AUDIT_BATCH_02 maintenant.
```

Faire d’abord :

```text
1. SUB_PRESSURE_ENGINE_AGENCY_RISK_NOTE.md
2. MICRO_TEST_CANDIDATES_V0.md
```

Puis seulement ensuite produire une synthèse courte pour Yohan.

---

# 4. Justification

Le premier audit source_needs a gardé les trois source_needs comme hypothèses documentées.

Mais le sub pressure engine est différent des deux sources live :

```text
didgeridoo = source live fixe ;
guimbardes = source live fixe ;
sub = engine génératif / paramétrique.
```

Donc le sub peut soutenir l’agency, mais aussi la déplacer.

Avant d’auditer d’autres sources, il faut clarifier ce statut.

---

# 5. Prochaine action

Créer :

```text
projects/source_needs_audit/SUB_PRESSURE_ENGINE_AGENCY_RISK_NOTE.md
```

Puis :

```text
projects/micro_tests/MICRO_TEST_CANDIDATES_V0.md
```

---

# 6. Garde-fous

Ne pas :

- auditer Batch 02 maintenant ;
- créer un sub engine ;
- créer un patch ;
- choisir un mapping ;
- écrire SPEC.md ;
- écrire VERIFY.md ;
- modifier main ;
- merger la branche méthode.
