# AGENCY_CONTROL_AUDIT_BATCH_02

## Statut

Deuxième audit limité agency/control.

Scope :

```text
AC09 à AC15
```

Ce document n’est pas :

- une spec ;
- un verifier complet ;
- un audit `assets/source_needs` ;
- un prototype ;
- un patch ;
- un mapping ;
- une décision d’architecture.

---

# 1. Résumé exécutif

Le deuxième batch confirme que les documents de contrôle et protection contiennent déjà une logique compatible avec l’agency : urgence accessible, protection non neutralisante, distinction entre conflit dangereux et tension féconde.

Mais il confirme aussi un risque majeur :

```text
un système qui protège trop, route trop, masque trop ou automatise trop peut réduire l’agency même en prétendant l’aider.
```

Donc l’ouverture future de `assets/source_needs` doit être encadrée par un protocole agency-first.

---

# 2. Audit des claims

## AC09 — Contrôles d’urgence toujours accessibles

Claim : les contrôles d’urgence doivent toujours rester accessibles.

Statut : strong acquisition.

Justification : le Router distingue explicitement les contrôles d’urgence des contrôles contextuels, profonds ou masqués.

Conséquence : aucune intelligence contextuelle ne doit cacher l’arrêt, le retrait, la réduction ou la sortie.

Risque : un système trop contextuel pourrait masquer la sortie au moment précis où elle devient nécessaire.

Décision : garder comme exigence stricte.

## AC10 — Protéger sans figer

Claim : le Conflict / Protection Manager doit protéger sans figer.

Statut : strong acquisition.

Justification : le module affirme qu’il ne doit pas tout empêcher et qu’il doit éviter deux excès : tout laisser passer ou tout protéger.

Conséquence : la protection doit préserver puissance, lisibilité, liberté live et singularité sonore.

Risque : protection trop prudente, musique lissée, perte de risque.

Décision : garder comme principe central.

## AC11 — Conflit dangereux versus tension féconde

Claim : le système doit distinguer conflit dangereux et tension musicalement féconde.

Statut : strong acquisition.

Justification : le Conflict / Protection Manager distingue conflit dangereux, tension féconde, risque temporaire acceptable, risque à surveiller, protection nécessaire et urgence performative.

Conséquence : un conflit ne doit pas être annulé automatiquement.

Risque : neutraliser la friction qui fait la force musicale du projet.

Décision : garder comme critère majeur de protection.

## AC12 — Risque de dépossession implicite

Claim : le système peut réduire l’agency s’il masque le live, impose un rôle, ou rend l’autonomie trop forte.

Statut : risk to monitor.

Justification : les conflits live incluent l’analyse qui impose un rôle à l’instrument, le système qui masque l’instrument live, la latence ou la réactivité qui empêche le jeu humain, et l’agency du performeur réduite.

Conséquence : toute future analyse de source, détection ou routing doit être auditée comme risque d’interprétation imposée.

Risque : le système croit comprendre le jeu et force une lecture trop pauvre.

Décision : garder comme risque transversal.

## AC13 — Surcharge d’interface comme conflit musical

Claim : la surcharge d’interface est un conflit musical, pas seulement UX.

Statut : provisional acquisition.

Justification : les conflits d’interface listent trop de contrôles visibles, urgence masquée, contrôles redondants, contrôle technique promu trop tôt, et conflit entre contrôle manuel et automatisation.

Conséquence : l’interface peut casser la performance même si le son fonctionne.

Risque : traiter l’ergonomie comme secondaire.

Décision : garder et transformer plus tard en critères de verifier.

## AC14 — Amplitudes musicales

Claim : les amplitudes de contrôle doivent être musicales : sûres, expressives, de bord, dangereuses, override.

Statut : strong acquisition.

Justification : `docs/42` et `docs/44` stabilisent cette typologie.

Conséquence : un contrôle doit indiquer non seulement une valeur, mais le statut musical et le risque de cette valeur.

Risque : valeurs techniques sans signification performative.

Décision : garder comme future structure d’évaluation.

## AC15 — Micro-test agency/control

Claim : un micro-test ne peut être autorisé que s’il répond à une seule question d’agency/control.

Statut : provisional acquisition.

Justification : `MICRO_TEST_CRITERIA_V0` définit un micro-test comme une expérience courte, locale, réversible, à une seule question.

Conséquence : un micro-test futur ne doit pas commencer par une solution technique, mais par un risque d’agency à observer.

Risque : micro-test qui devient module, patch ou prototype implicite.

Décision : garder comme garde-fou avant toute expérimentation.

---

# 3. Synthèse

## Acquis forts

```text
AC09 — contrôles d’urgence toujours accessibles
AC10 — protéger sans figer
AC11 — conflit dangereux versus tension féconde
AC14 — amplitudes musicales
```

## Acquis provisoires

```text
AC13 — surcharge d’interface comme conflit musical
AC15 — micro-test agency/control
```

## Risque transversal

```text
AC12 — dépossession implicite par analyse, routing, masquage live, latence ou autonomie excessive
```

---

# 4. Décision après Batch 02

L’audit agency/control minimal est suffisant pour ne plus bloquer indéfiniment l’ouverture future de `assets/source_needs`.

Mais `assets/source_needs` ne doit pas être audité avec l’ancienne logique.

Il faut d’abord créer un protocole d’audit source_needs agency-first.

---

# 5. Prochaine action recommandée

Créer :

```text
projects/source_needs_audit/SOURCE_NEEDS_AUDIT_PROTOCOL_V0.md
```

But : définir comment auditer les source_needs sans relancer le prototype, sans supposer les sources nécessaires, et sans réduire l’agency de Yohan.

---

# 6. Interdictions actuelles

Ne pas :

- auditer encore les fichiers `docs/assets/source_needs/*` ;
- écrire SPEC.md ;
- écrire VERIFY.md ;
- créer un prototype ;
- créer un patch ;
- créer un mapping complet ;
- modifier main ;
- merger la branche méthode.
