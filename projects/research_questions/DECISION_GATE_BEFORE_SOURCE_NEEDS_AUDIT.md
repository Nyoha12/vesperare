# DECISION_GATE_BEFORE_SOURCE_NEEDS_AUDIT

## Statut

Décision méthodologique provisoire avant de reprendre l’audit `assets/source_needs`.

Ce document n’est pas :

- un audit `assets/source_needs` ;
- une spec ;
- un verifier complet ;
- un prototype ;
- un patch ;
- une décision d’architecture.

## Question

```text
Peut-on reprendre maintenant l’audit assets/source_needs, ou faut-il intercaler un audit agency/control ?
```

## Sources internes utilisées

Lecture limitée des documents déjà directeurs :

```text
README.md
docs/40_STRATEGIE_SYSTEME_CONTROLE_LIMITES_HARMONISATION.md
docs/42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md
docs/44_AUDIT_COHERENCE_RECENTRAGE_PAQUET.md
docs/modules/05_CONTEXTUAL_CONTROL_ROUTER.md
docs/modules/07_CONFLICT_PROTECTION_MANAGER.md
```

---

# 1. Constat

Le dépôt historique indique que `assets/source_needs` existe et fait partie du corpus, mais la reprise méthodologique a ajouté une contrainte supérieure :

```text
le système ne doit rien enlever à Yohan.
```

L’audit des source_needs ne peut donc pas être seulement un audit de disponibilité ou de cohérence technique.

Il devra vérifier si chaque besoin de source :

- préserve l’agency live ;
- ne remplace pas involontairement le geste ;
- garde une sortie ou un override ;
- ne transforme pas une possibilité en obligation ;
- ne déclenche pas un prototype prématuré.

---

# 2. Arguments pour reprendre tout de suite assets/source_needs

Arguments favorables :

- le README mentionne déjà les source_needs dans l’état du dépôt ;
- les documents récents indiquent que les source_needs centraux font partie du corpus à harmoniser ;
- certains besoins de sources seront nécessaires plus tard pour clarifier les matériaux.

Limite : ces arguments viennent surtout du chemin historique du repo.

Ils ne suffisent pas encore à garantir que l’audit sera mené depuis le critère d’agency.

---

# 3. Arguments pour intercaler agency/control

Arguments favorables :

- le dépôt est explicitement en phase de conception/consolidation avant prototypage ;
- le contrôle est défini comme sélection, organisation, amplitude, contexte, risque, sortie et override ;
- les limites sont traitées comme zones de bord jouables, avec sortie et décision humaine ;
- les modules de contrôle et protection parlent déjà de surcharge, masquage live, risque, contrôle manuel versus autonomie, et agency réduite ;
- la correction utilisateur a clarifié que la priorité est de ne rien enlever à Yohan.

Conclusion : avant d’auditer les sources, il faut savoir quelles dimensions d’agency les sources doivent préserver ou ne pas réduire.

---

# 4. Décision provisoire

```text
Ne pas reprendre encore l’audit assets/source_needs.
```

Intercaler d’abord un audit limité :

```text
agency/control audit
```

But : relire les documents de contrôle, limites, override et protection à travers la contrainte fondatrice :

```text
préserver l’agency musicale live complète de Yohan.
```

---

# 5. Décision précise

## Autorisé maintenant

Créer :

```text
projects/agency_control/AGENCY_CONTROL_AUDIT_PLAN_V0.md
projects/agency_control/AGENCY_CONTROL_CLAIM_REGISTER_V0.md
projects/agency_control/AGENCY_CONTROL_AUDIT_BATCH_01.md
```

## Non autorisé maintenant

Ne pas encore :

```text
auditer docs/assets/source_needs/*
créer une spec
créer un verifier complet
créer un patch
créer un prototype
choisir un mapping
choisir une architecture finale
modifier main
merger la branche méthode
```

---

# 6. Critère pour ouvrir plus tard assets/source_needs

L’audit `assets/source_needs` pourra commencer seulement quand les éléments suivants existent :

1. une carte minimale de préservation de l’agency ;
2. des critères de micro-test ;
3. des scénarios ergonomiques ;
4. un premier audit agency/control ;
5. une décision explicite que les source_needs peuvent être relus sans relancer l’ancien chemin trop vite.

---

# 7. Prochaine action

Créer le cadrage :

```text
projects/agency_control/AGENCY_CONTROL_AUDIT_PLAN_V0.md
```
