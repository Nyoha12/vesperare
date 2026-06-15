# AGENT_REVIEW_MTC01_AUTHORIZATION_DRAFT

## Statut

Revue agent-style du brouillon d’autorisation `MICRO_TEST_AUTHORIZATION_DRAFT_MTC01`.

Ce document ne lance pas le micro-test.

Il vérifie si le cadrage est assez strict ou s’il glisse encore vers prototype.

---

# 1. Question centrale

```text
MTC01 est-il assez cadré pour devenir plus tard un micro-test autorisable, ou reste-t-il trop proche d’un prototype sub/didgeridoo ?
```

---

# 2. Corpus autorisé

```text
projects/micro_tests/MICRO_TEST_CANDIDATES_V0.md
projects/micro_tests/MICRO_TEST_AUTHORIZATION_DRAFT_MTC01.md
projects/source_needs_audit/SUB_PRESSURE_ENGINE_AGENCY_RISK_NOTE.md
projects/source_needs_audit/SOURCE_NEEDS_AUDIT_BATCH_01.md
projects/research_questions/MICRO_TEST_CRITERIA_V0.md
projects/agents/AGENT_RUN_PROTOCOL_V0.md
docs/assets/source_needs/SOURCE_NEED_LIVE_DIDGERIDOO_PRESSURE_FORMANTS.md
docs/assets/source_needs/SOURCE_NEED_SUB_PRESSURE_ENGINE.md
```

---

# 3. Sorties individuelles

## Agent 1 — Agency live

Conclusion :

```text
MTC01 est pertinent parce qu’il teste directement le risque de dépossession par le sub.
```

Arguments :

- La question garde le didgeridoo comme centre.
- Le sub est présenté comme soutien, pas comme objet principal.
- Le test observe soutien versus masquage.

Risque :

- Le mot “sub” peut attirer trop vite vers design sonore et puissance.

Recommandation :

- Maintenir explicitement : l’objet central du test est la lisibilité du didgeridoo, pas la qualité du sub.

Confiance : forte.

---

## Agent 2 — Anti-prototype

Conclusion :

```text
Le cadrage est bon, mais le risque de glissement est très réel.
```

Arguments :

- La fiche interdit patch, mapping, engine, scène complète et spec.
- Les critères d’arrêt sont nombreux et clairs.

Risque :

- Tester un sub nécessite presque forcément un dispositif sonore, donc le risque de garder le montage est fort.

Recommandation :

- Si le test est un jour autorisé, il doit être explicitement jetable.
- Aucun fichier audio, preset ou patch ne doit devenir asset ou base.

Confiance : forte.

---

## Agent 3 — Contrôle / override

Conclusion :

```text
La fiche parle de masquage mais pas encore assez de sortie et retrait pendant le test.
```

Arguments :

- La question soutien/masquage est claire.
- Les critères d’arrêt incluent masquage et glissement.

Risque :

- On pourrait tester le sub comme présence continue, sans évaluer son retrait.

Recommandation :

- Ajouter une condition future : le test doit observer au moins un moment de retrait/réduction du sub.

Confiance : moyenne.

---

## Agent 4 — Ergonomie cognitive

Conclusion :

```text
Le test est sonore, mais il doit aussi surveiller l’attention de Yohan.
```

Arguments :

- La fiche évite l’interface finale.
- Elle ne précise pas encore comment noter la charge mentale.

Risque :

- Même un test simple peut forcer Yohan à écouter techniquement au lieu de jouer.

Recommandation :

- Le résultat futur devrait inclure une ligne : “est-ce que le test a fait sortir Yohan du jeu ?”.

Confiance : moyenne.

---

## Agent 5 — Source_needs sceptique

Conclusion :

```text
MTC01 est le bon premier candidat, mais seulement parce qu’il teste une relation critique, pas une source_need complète.
```

Arguments :

- Le sub est le plus ambigu des trois source_needs audités.
- La relation sub/didgeridoo est le point le plus structurant.

Risque :

- Un résultat positif pourrait être surinterprété comme validation du sub engine.

Recommandation :

- Toute conclusion future doit dire : “indice local, non validation de l’engine”.

Confiance : forte.

---

# 4. Synthèse

## Accords

```text
MTC01 est pertinent ;
MTC01 reste dangereux ;
MTC01 ne doit pas lancer de patch ;
le didgeridoo doit rester l’objet central ;
un résultat positif ne validerait pas le sub engine.
```

## Désaccords / nuances

- Agency live insiste sur la pertinence du test.
- Anti-prototype insiste sur le risque de montage conservé.
- Contrôle/override veut ajouter retrait/réduction du sub dans le protocole futur.
- Ergonomie veut évaluer la sortie du jeu / charge mentale.

## Décision de revue

```text
MTC01 peut rester candidat prioritaire.
```

Mais il n’est toujours pas autorisé.

Avant autorisation, réviser la fiche pour ajouter :

```text
1. observation d’un retrait/réduction du sub ;
2. ligne d’observation sur la charge mentale ;
3. rappel que résultat positif = indice local, pas validation engine.
```

---

# 5. Prochaine action recommandée

Créer :

```text
projects/micro_tests/MICRO_TEST_AUTHORIZATION_DRAFT_MTC01_REVISED.md
```

But : intégrer les corrections de la revue sans lancer le test.

---

# 6. Garde-fous

Ne pas :

- lancer MTC01 ;
- créer un patch ;
- créer un mapping ;
- choisir un preset ;
- écrire SPEC.md ;
- écrire VERIFY.md ;
- modifier main ;
- merger la branche méthode.
