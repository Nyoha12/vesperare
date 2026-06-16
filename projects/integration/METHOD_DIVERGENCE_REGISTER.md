# METHOD_DIVERGENCE_REGISTER

## Statut

Registre initial des divergences entre `main` et `ai/method-core`.

Ce document ne tranche pas tout.

Il sert à éviter de fusionner deux méthodes sans regarder leurs différences de statut, de rythme, de vocabulaire et d'autorité.

---

# 1. Catégories de divergence

## DTYPE-01 — Divergence de statut

Les deux branches peuvent donner un statut différent à une même chose.

Exemple :

```text
main peut traiter une piste comme active ;
ai/method-core peut la traiter comme hypothèse à auditer.
```

Décision par défaut :

```text
main reste autorité vivante ;
ai/method-core peut ajouter un statut critique, pas écraser.
```

## DTYPE-02 — Divergence de vocabulaire

Une branche peut utiliser un mot comme matière, validation, source, besoin, test, scène, alors que l'autre le requalifie.

Décision par défaut :

```text
harmoniser le lexique avant merge.
```

## DTYPE-03 — Divergence de rythme

`main` peut avancer vite par intuition et pratique.

`ai/method-core` ralentit avec gates, audits, agents et checklists.

Décision par défaut :

```text
la méthode s'applique aux décisions à risque, pas à chaque geste créatif.
```

## DTYPE-04 — Divergence de preuve

`main` peut accepter une intuition musicale comme hypothèse de travail.

`ai/method-core` peut demander source, statut, claim, audit ou verifier.

Décision par défaut :

```text
intuition autorisée comme hypothèse ;
non transformable en architecture sans cadrage.
```

## DTYPE-05 — Divergence de niveau

`main` travaille sur le projet.

`ai/method-core` contient beaucoup de méta-documents sur la méthode.

Décision par défaut :

```text
ne pas importer la méta-méthode si elle ne sert pas une action réelle.
```

---

# 2. Divergences déjà identifiées

## DIV-01 — MTC01

`ai/method-core` a trop longtemps focalisé le travail sur MTC01.

Statut corrigé :

```text
MTC01 = question de conception à garder en réserve.
MTC01 = pas prochaine tâche.
MTC01 = pas décision humaine immédiate.
```

Décision d'harmonisation :

```text
ne pas importer MTC01 dans main comme objet actif.
```

Type : DTYPE-03 / DTYPE-04 / DTYPE-05.

## DIV-02 — Matière sonore versus matière documentaire

Certaines sorties de `ai/method-core` ont glissé vers :

```text
matière sonore vérifiable ;
prises ;
écoute ;
validation musicale immédiate.
```

Puis `MATERIAL_FRAME_AUDIT_OUTPUT` a corrigé vers :

```text
source décrite ;
fonction supposée ;
geste conceptualisé ;
scène documentée ;
risque formulé ;
hypothèse de conception.
```

Décision d'harmonisation :

```text
n'importer que la correction de cadre, pas les formulations qui demandent de l'audio trop tôt.
```

Type : DTYPE-02 / DTYPE-04.

## DIV-03 — Outputs agents

`ai/method-core` contient beaucoup de sorties d'agents.

Ces sorties sont utiles comme trace, mais elles ne sont pas des décisions projet.

Décision d'harmonisation :

```text
ne pas importer automatiquement projects/agents/outputs/* dans main.
```

Type : DTYPE-05.

## DIV-04 — Source_needs

`main` peut avoir continué à travailler les source_needs ou les assets.

`ai/method-core` a créé un protocole agency-first et des audits partiels.

Décision d'harmonisation :

```text
source_needs reste voie possible ;
mais la méthode recommande de ne pas transformer un besoin en asset, module ou test sans statut clair.
```

Type : DTYPE-01 / DTYPE-04.

## DIV-05 — Rythme de travail

La méthode a créé une forte charge documentaire.

Décision d'harmonisation :

```text
dans main, la méthode doit être légère par défaut ;
les gates s'activent seulement sur décisions à risque.
```

Type : DTYPE-03 / DTYPE-05.

## DIV-06 — Autorité humaine

Les sorties agents ne doivent pas demander à Yohan de résoudre des questions que le programme doit instruire.

Décision d'harmonisation :

```text
Yohan intervient pour jugement musical, validation finale, correction d'intention, apport de matière réelle.
Pas comme fournisseur de réponses conceptuelles larges.
```

Type : DTYPE-04.

---

# 3. Statuts possibles

Pour chaque divergence future :

```text
compatible ;
main prioritaire ;
méthode prioritaire ;
à reformuler ;
à suspendre ;
à auditer plus tard ;
à exclure de main.
```

---

# 4. Prochaine action

Compléter ce registre après comparaison du contenu réel de `main` récent.

Ne pas supposer que `main` est identique au merge base.

Le registre devra être relu avant toute PR.
