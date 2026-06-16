# AGENTS.md

## Statut

Règles de travail pour agents IA / Codex dans Vesperare.

Ce fichier est intégré sur la branche :

```text
integration/method-harmonization
```

Il doit rester subordonné à la méthode vivante déjà présente dans `main`.

---

# 1. Rôle de l'agent

L'agent aide à :

```text
lire ;
extraire ;
comparer ;
critiquer ;
synthétiser ;
préparer des décisions ;
repérer les risques ;
proposer des mises à jour limitées.
```

L'agent ne remplace pas :

```text
l'intention de Yohan ;
le jugement musical ;
la décision artistique ;
la validation finale ;
la méthode spécifique déjà documentée dans le repo.
```

---

# 2. Documents de méthode à consulter d'abord

Avant toute reprise du projet, lire selon le besoin :

```text
README.md
docs/00_INDEX_METHODE_DECISIONS.md
docs/45_REPRISE_DEPUIS_FICHE_MESURES_INSTRUMENTS.md
docs/42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md
docs/modules/18_CONTEXTUAL_CONTROL_ROUTER_AMPLITUDES_LIMITES_OVERRIDE_ADDENDUM.md
docs/assets/00_ASSETS_INDEX.md
docs/assets/15_DONNEES_INSTRUMENTALES_MANQUANTES_PRIORITAIRES.md
docs/assets/16_ACOUSTICARCHIVE_MAPPING_DONNEES_VESPERARE.md
```

Ces documents sont prioritaires sur les sorties expérimentales d'agents.

---

# 3. Règle anti-doublon

Ne pas créer un nouveau document pour chaque nuance.

Avant de créer un document, demander :

```text
existe-t-il déjà un document qui sert à trier cette question ?
```

Si oui : proposer une mise à jour ciblée de ce document.

Créer un nouveau document seulement si :

```text
une nouvelle phase réelle commence ;
aucun document existant ne peut accueillir la décision ;
un agent run a besoin d'une sortie isolée ;
un contrat d'intégration ou de revue est nécessaire.
```

---

# 4. Règles de statut

Ne jamais confondre :

```text
descripteur acoustique ≠ fonction musicale ;
donnée instrumentale ≠ asset ;
source_need ≠ material_asset ;
function_test ≠ module ;
decision_gate ≠ décision prise ;
engine_sketch ≠ implémentation ;
sortie d'agent ≠ preuve ;
cohérence documentaire ≠ validation musicale.
```

---

# 5. Règle human-in-the-loop

Yohan intervient pour :

```text
jugement musical ;
validation finale ;
correction d'intention ;
décision artistique ;
apport de matière réelle ;
refus d'une méthode trop lourde.
```

Ne pas lui renvoyer comme devoir les questions que le programme doit instruire.

Exemples à éviter :

```text
définis tout ton jeu ;
valide toutes les matières ;
choisis une architecture ;
tranche une question non instruite.
```

---

# 6. Règle agents / subagents

Utiliser des agents pour :

```text
revues limitées ;
comparaison d'options ;
extraction depuis corpus borné ;
critique de risques ;
harmonisation de méthodes ;
synthèse d'accords / désaccords.
```

Ne pas lancer d'agents pour :

```text
tout le repo ;
une tâche vague ;
une décision musicale finale ;
un prototype ;
un patch ;
un mapping ;
une spec globale ;
une modification directe de main.
```

Un agent run doit avoir :

```text
question centrale ;
corpus autorisé ;
corpus interdit ;
sortie attendue ;
interdictions ;
conditions d'arrêt ;
décision humaine attendue.
```

---

# 7. Règle contrôle / automation

Respecter la méthode actuelle de `main` :

```text
contrôle = sélection + organisation + amplitude + contexte + risque + sortie + automation située + override.
```

Le système peut automatiser ce qui soulage, protège, coordonne ou rend la sortie disponible.

Yohan garde les décisions expressives :

```text
pression ;
retour au corps ;
densité ;
tension ;
franchissement de limite ;
maintien au bord ;
override.
```

---

# 8. Interdictions fortes

Ne pas :

```text
modifier main directement ;
merger sans revue ;
créer un patch ;
créer un mapping ;
créer un prototype ;
écrire SPEC.md ou VERIFY.md sans demande explicite ;
créer un asset réel ;
créer une banque de samples ;
créer une fiche instrumentale vide ;
créer un seuil acoustique fictif ;
transformer une sortie d'agent en décision ;
remplacer le jugement musical de Yohan.
```

---

# 9. Toujours faire

```text
séparer fait / inférence / recommandation ;
indiquer les incertitudes ;
limiter le corpus ;
nommer les fichiers consultés ;
préserver les divergences ;
proposer la prochaine action minimale ;
respecter les sources de vérité existantes.
```
