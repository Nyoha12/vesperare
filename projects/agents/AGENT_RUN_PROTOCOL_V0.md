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

# 2. Choisir le bon niveau de run

## Niveau 0 — Pas d'agent

À utiliser si le document existant donne déjà le cadre ou si une simple mise à jour ciblée suffit.

Sortie : aucune sortie agent, seulement une action minimale.

## Niveau 1 — Agent unique

À utiliser pour :

```text
extraction limitée ;
revue simple ;
tri de statuts ;
comparaison de deux options ;
vérification anti-glissement.
```

Sortie : un fichier court ou un commentaire structuré.

## Niveau 2 — Multi-agents parallèles

À utiliser quand plusieurs dimensions doivent rester indépendantes avant synthèse :

```text
méthode ;
statut documentaire ;
agency live ;
contrôle / Router ;
source / données instrumentales ;
anti-prototype ;
intégration main / méthode.
```

Chaque agent reçoit :

```text
le même problème ;
un angle différent ;
le même corpus autorisé ;
le même format de sortie ;
les mêmes interdictions.
```

La synthèse vient après.

Aucun vote d'agents ne vaut preuve.

## Niveau 3 — Interdit par défaut

```text
agent qui modifie main ;
agent de prototype ;
agent de patch ;
agent de mapping ;
agent de spec globale ;
agent qui lit tout le repo ;
agent qui décide pour Yohan.
```

---

# 3. Format obligatoire d'un run

Chaque run doit déclarer :

```text
nom du run ;
niveau : 0 / 1 / 2 ;
question centrale ;
corpus autorisé ;
corpus interdit ;
sortie attendue ;
interdictions ;
conditions d'arrêt ;
décision humaine attendue.
```

---

# 4. Corpus limité

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

# 5. Types de runs autorisés

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

## Revue de mise à jour existante

Dire quel document existant devrait recevoir une information, au lieu de créer un nouveau fichier.

## Désambiguïsation lexicale contextuelle

Quand un run manipule pression, hypnose, répétition, beauté avec conséquence, corps, suspension, organique, naturalisation, fonction ou source live, il doit les rattacher à un contexte musical précis.

Ces mots ne doivent pas être employés comme concepts autonomes ou catégories déjà comprises. Un contexte peut être un style, une tradition, un phénomène musical reconnu, un phénomène acoustique reconnu, un matériau sonore, un registre, un motif, un type de répétition, une source ou famille sonore, une situation formelle, un risque précis ou une conséquence musicale nommée.

Pour suspension, préciser retrait / reste perceptible / sortie ; pour source live, présence, geste, jeu ou relation musicale ; pour naturalisation, support transformé et phénomène conservé ; pour fonction, phénomène et situation.

### Formulations à refuser

```text
didgeridoo = pression ;
guimbardes = répétition ;
gong = beauté ;
field recording = suspension ;
hypnose = loop ;
beauté = joli son ;
corps = sensation générale ;
organique = naturel ;
naturalisation = sons naturels ;
fonction = rôle fixe ;
source live = input audio ;
source live = banque de sons.
```

### Formulations acceptables

```text
pression dans un contexte de grave / bas-médium / centre spectral / intensité techno ;
hypnose dans un contexte de motif stable, retour perceptible et micro-variation ;
répétition liée à un motif identifiable, une stabilité et une mutation lente ;
beauté d'une résonance longue ou d'une matière exposée avec conséquence formelle nommée ;
suspension si le retrait, ce qui reste perceptible et la sortie sont précisés ;
organique employé seulement avec support sonore, matériau et risque de décor explicités ;
naturalisation comme changement de support sonore avec phénomène musical ou acoustique nommé ;
fonction utilisée seulement pour décrire ce qu'un élément fait dans une situation musicale précise, sans fixer le rôle du jeu ;
source live comme présence, geste ou relation musicale à préserver, jamais comme simple entrée audio.
```

---

# 6. Types de runs non autorisés par défaut

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

# 7. Format de sortie recommandé

```md
# RUN_OUTPUT

## Résumé court

## Faits issus des fichiers

## Inférences prudentes

## Risques

## Incertitudes

## Recommandation non décisoire

## Document existant à mettre à jour, si applicable

## Décision humaine requise
```

---

# 8. Format multi-agents

Pour un run de niveau 2, chaque agent doit produire :

```md
# AGENT_OUTPUT

## Rôle

## Conclusion courte

## Faits observés

## Risques selon ce rôle

## Désaccords possibles avec d'autres rôles

## Recommandation non décisoire

## Confiance
```

La synthèse doit produire :

```md
# MULTI_AGENT_SYNTHESIS

## Accords

## Désaccords

## Risques transversaux

## Points qui demandent Yohan

## Document existant à mettre à jour

## Prochaine action minimale
```

---

# 9. Règles de synthèse multi-agents

Si plusieurs agents travaillent en parallèle :

```text
1. chaque agent produit sa sortie indépendamment ;
2. la synthèse préserve les désaccords ;
3. aucune majorité d'agents ne vaut preuve ;
4. les sorties sont classées comme supports de décision ;
5. Yohan garde la décision finale ;
6. la synthèse cherche d'abord le bon document existant à mettre à jour.
```

---

# 10. Conditions d'arrêt

Un agent doit s'arrêter si :

```text
le corpus requis est absent ;
la tâche devient vague ;
le run exige un fichier interdit ;
la sortie devient une décision artistique ;
le run commence à proposer un patch, mapping ou prototype ;
le run demande à Yohan de résoudre une question non instruite ;
le run contredit docs/45 ou docs/00_INDEX sans le signaler ;
le run propose un nouveau document sans vérifier les documents existants.
```

---

# 11. Règle anti-doublon

Si une sortie recommande de créer un nouveau document, elle doit d'abord répondre :

```text
quel document existant pourrait recevoir cette information ?
```

Créer un document nouveau seulement si aucun document existant n'est approprié ou si une nouvelle phase réelle commence.

---

# 12. Règle de vitesse

La vitesse vient de :

```text
corpus limité ;
roles parallèles ;
formats comparables ;
synthèse courte ;
réutilisation des documents existants ;
absence de validation humaine prématurée ;
arrêt immédiat en cas de glissement vers prototype.
```

La vitesse ne vient pas de :

```text
lire tout le repo ;
créer plus de documents ;
lancer des micro-tests trop tôt ;
remplacer le jugement humain ;
faire décider un agent seul.
```
