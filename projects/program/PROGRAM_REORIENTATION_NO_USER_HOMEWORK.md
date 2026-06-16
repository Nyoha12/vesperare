# PROGRAM_REORIENTATION_NO_USER_HOMEWORK

## Statut

Correction de trajectoire après frustration utilisateur.

Ce document annule la logique consistant à demander à Yohan de répondre directement à des questions que le programme doit justement explorer.

---

# 1. Correction principale

Ne plus transformer les questions de recherche en demandes de décision immédiate à Yohan.

Mauvais pattern :

```text
Question complexe → demander à Yohan oui/non.
```

Bon pattern :

```text
Question complexe → construire un protocole de recherche / agent / corpus / synthèse.
```

---

# 2. Statut de MTC01

MTC01 ne doit plus être présenté comme une décision humaine immédiate.

Statut corrigé :

```text
MTC01 = exemple de question de conception à garder dans le programme.
MTC01 = non autorisé.
MTC01 = pas à poser à Yohan comme choix isolé.
```

Il pourra revenir plus tard seulement si le programme a produit assez de matière musicale concrète pour que la question ait du sens.

---

# 3. Problème identifié

La question :

```text
Un sub peut-il soutenir le didgeridoo sans le masquer ?
```

n’a pas assez de matière actuellement.

Il manque :

```text
matière sonore ;
situation musicale ;
scène ;
geste ;
critère d’écoute ;
exemple de masquage ;
exemple de soutien ;
contexte de performance.
```

Donc elle doit être traitée comme objet de recherche, pas comme choix.

---

# 4. Nouvelle priorité

Avant tout micro-test, le programme doit extraire les matières musicales concrètes disponibles ou décrites dans le corpus.

Nouvelle tâche prioritaire :

```text
MUSICAL_MATERIAL_INTAKE
```

Objectif : trouver dans le corpus ce qui est assez concret pour servir de base à de futurs tests ou décisions.

---

# 5. Ce qu’il faut extraire

Le prochain agent run doit chercher :

```text
sources concrètes ;
gestes décrits ;
scènes décrites ;
problèmes sonores réels ;
critères perceptifs ;
exemples de perte ;
exemples de réussite ;
éléments qui manquent encore ;
questions qui ne peuvent pas encore recevoir de réponse.
```

---

# 6. Règle anti-user-homework

Ne pas demander à Yohan de fournir une réponse conceptuelle large quand :

```text
le corpus peut être lu ;
les agents peuvent extraire ;
la question demande une analyse ;
la question demande de la matière ;
la question demande une comparaison ;
la question demande une future écoute.
```

Yohan doit intervenir pour :

```text
jugement musical ;
validation finale ;
apports de matière réelle ;
correction d’intention ;
choix entre options déjà instruites.
```

Pas pour résoudre seul les questions que la méthode doit instruire.

---

# 7. Prochaine action

Créer un prompt agent :

```text
projects/agents/CODEX_AGENT_PROMPT_MUSICAL_MATERIAL_INTAKE.md
```

Puis mettre à jour la queue :

```text
RUN-01 = Musical material intake
```

MTC01 passe en réserve.
