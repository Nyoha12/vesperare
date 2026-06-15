# SUB_PRESSURE_ENGINE_AGENCY_RISK_NOTE

## Statut

Note de consolidation sur le risque agency lié à `SOURCE_NEED_SUB_PRESSURE_ENGINE`.

Ce document n’est pas :

- une spec de sub engine ;
- un design sonore ;
- un patch ;
- un mapping ;
- un prototype ;
- une décision d’architecture ;
- un micro-test autorisé.

---

# 1. Pourquoi cette note existe

Le premier audit source_needs et la revue agent-style ont identifié le sub pressure engine comme point le plus sensible.

Raison : contrairement au didgeridoo et aux guimbardes, le sub n’est pas une source live acoustique fixe.

Il est un moteur / une fonction / une source paramétrique future.

Donc il peut :

```text
soutenir l’agency live
```

mais aussi :

```text
remplacer, masquer ou rediriger l’agency live.
```

---

# 2. Distinction fondamentale

## Fonction sub

La fonction sub désigne le besoin musical :

```text
pression grave ;
corps ;
ancrage ;
retour au corps ;
stabilité ;
résolution ;
continuité physique.
```

Statut : acquis fort comme besoin musical techno/corps.

## Engine sub

L’engine sub désigne une solution future possible pour porter cette fonction.

Statut : hypothèse active, non validée comme architecture.

## Conclusion

```text
La fonction sub est gardée.
L’engine sub reste sous contrainte forte.
```

---

# 3. Risques principaux

## R01 — Remplacement du didgeridoo

Le sub peut devenir la vraie fondation grave, tandis que le didgeridoo devient couleur ou texture.

Risque agency : Yohan perd la centralité de son souffle / corps / geste.

Garde-fou : le sub doit rester partenaire, non fondation dominante par défaut.

## R02 — Masquage des guimbardes

Le sub peut écraser la finesse micro-pulsée et formantique des guimbardes.

Risque agency : les micro-gestes live deviennent secondaires.

Garde-fou : le sub doit préserver la lisibilité du contraste micro / macro.

## R03 — Retour au corps trop standard

Le sub peut produire un retour techno trop attendu, type basse générique, drop évident ou résolution automatique.

Risque agency : la forme se standardise.

Garde-fou : le retour au corps doit rester décidé, situé et réversible.

## R04 — Pression réduite au volume

Le sub peut confondre pression physique et augmentation de volume grave.

Risque agency : perte de nuance, fatigue, boue.

Garde-fou : la pression doit rester relationnelle : didgeridoo, scène, densité, retrait, tension.

## R05 — Engine devenu architecture implicite

Un test de sub pourrait devenir base du système.

Risque méthode : prototype déguisé.

Garde-fou : aucun sub patch, preset ou mapping ne devient fondation sans spec et verifier ultérieurs.

---

# 4. Statut corrigé du source_need

Ancien statut d’audit :

```text
garder
```

Statut clarifié :

```text
garder comme fonction musicale ;
garder l’engine comme hypothèse active sous contrainte agency ;
ne pas valider comme solution technique.
```

---

# 5. Contraintes minimales futures

Tout futur travail sur le sub devra respecter :

```text
1. le didgeridoo reste lisible ;
2. les guimbardes restent lisibles ;
3. le sub peut se retirer ;
4. le sub ne déclenche pas de retour automatique au corps ;
5. le sub ne remplace pas une source live ;
6. le sub garde une relation explicite au contexte de scène ;
7. le sub reste contrôlable en live ;
8. le sub ne devient pas preset générique ;
9. le sub ne transforme pas un micro-test en architecture ;
10. le sub reste soumis à une sortie / réduction / override.
```

---

# 6. Questions de micro-test possibles plus tard

Ces questions ne sont pas des autorisations de test.

Elles peuvent nourrir `MICRO_TEST_CANDIDATES_V0`.

```text
Q1 — Un sub peut-il soutenir le corps sans masquer les formants du didgeridoo ?
Q2 — Un sub peut-il rester discret quand les sources live suffisent ?
Q3 — Un sub peut-il augmenter la pression sans augmenter seulement le volume ?
Q4 — Un sub peut-il permettre un retrait musical clair ?
Q5 — Un sub peut-il éviter le retour techno standard ?
```

---

# 7. Décision

Ne pas lancer de test sub maintenant.

Créer d’abord une liste de micro-tests candidats, puis choisir plus tard s’il faut en autoriser un seul.

---

# 8. Garde-fous

Ne pas :

- créer de sub engine ;
- créer de patch ;
- créer de mapping ;
- choisir un preset ;
- écrire SPEC.md ;
- écrire VERIFY.md ;
- modifier main ;
- merger la branche méthode.
