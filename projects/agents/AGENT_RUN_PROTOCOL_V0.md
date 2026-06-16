# AGENT_RUN_PROTOCOL_V0

## Statut

Protocole minimal pour lancer un agent / Codex dans Vesperare sans créer une méthode parallèle.

Ce protocole est subordonné à :

```text
AGENTS.md
docs/00_INDEX_METHODE_DECISIONS.md
docs/45_REPRISE_DEPUIS_FICHE_MESURES_INSTRUMENTS.md
```

---

# 1. Principe

Un run agent sert à produire une sortie limitée qui aide le projet.

Il ne doit pas devenir :

```text
une décision ;
une preuve ;
une spec ;
un prototype ;
un substitut au jugement de Yohan ;
un nouveau système documentaire autonome.
```

---

# 2. Format obligatoire d'un run

Chaque run doit déclarer :

```text
nom du run ;
question centrale ;
corpus autorisé ;
corpus interdit ;
sortie attendue ;
interdictions ;
conditions d'arrêt ;
décision humaine attendue.
```

---

# 3. Corpus limité

Un agent ne lit pas tout le repo.

Il lit seulement les documents nécessaires.

Documents d'ancrage possibles :

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

---

# 4. Types de runs autorisés

## Revue limitée

Lire un petit corpus et signaler :

```text
accords ;
divergences ;
risques ;
points à clarifier ;
recommandation non décisoire.
```

## Extraction limitée

Extraire :

```text
sources ;
gestes ;
fonctions ;
scènes ;
risques ;
questions ouvertes.
```

## Harmonisation

Comparer deux méthodes, deux versions ou deux vocabulaires, sans merger.

## Critique anti-prototype

Vérifier qu'une proposition ne glisse pas vers patch, mapping, asset, sample, spec ou prototype.

---

# 5. Types de runs non autorisés par défaut

```text
prototype ;
patch Max for Live ;
mapping matériel ;
création d'asset ;
création de sample bank ;
création de fiche instrumentale vide ;
seuil acoustique fictif ;
lecture de tout le repo ;
choix d'architecture finale ;
merge vers main ;
validation musicale à la place de Yohan.
```

---

# 6. Format de sortie recommandé

```md
# RUN_OUTPUT

## Résumé court

## Faits issus des fichiers

## Inférences prudentes

## Risques

## Incertitudes

## Recommandation non décisoire

## Décision humaine requise
```

---

# 7. Règles de synthèse multi-agents

Si plusieurs agents travaillent en parallèle :

```text
1. chaque agent produit sa sortie indépendamment ;
2. la synthèse préserve les désaccords ;
3. aucune majorité d'agents ne vaut preuve ;
4. les sorties sont classées comme supports de décision ;
5. Yohan garde la décision finale.
```

Rôles utiles possibles :

```text
méthode / statut ;
contrôle / Router ;
agency live ;
source / données instrumentales ;
anti-prototype ;
intégration main / méthode.
```

---

# 8. Conditions d'arrêt

Un agent doit s'arrêter si :

```text
le corpus requis est absent ;
la tâche devient vague ;
le run exige un fichier interdit ;
la sortie devient une décision artistique ;
le run commence à proposer un patch, mapping ou prototype ;
le run demande à Yohan de résoudre une question non instruite ;
le run contredit docs/45 ou docs/00_INDEX sans le signaler.
```

---

# 9. Règle anti-doublon

Si une sortie recommande de créer un nouveau document, elle doit d'abord répondre :

```text
quel document existant pourrait recevoir cette information ?
```

Créer un document nouveau seulement si aucun document existant n'est approprié ou si une nouvelle phase réelle commence.
