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

# 3. Règle source-of-truth d'abord

Avant de créer une sortie ou un document, l'agent doit demander :

```text
quel document existant sert déjà de lieu de tri pour cette question ?
```

Si un document existe déjà, préférer :

```text
une proposition de mise à jour ciblée ;
un résumé de divergence ;
un patch conceptuel limité ;
une note de lecture courte.
```

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

## Règle lexicale contextuelle

Les mots pression, hypnose, répétition, beauté avec conséquence, corps, suspension, organique, naturalisation, fonction et source live ne doivent pas être traités comme des concepts autonomes ni employés seuls comme catégories déjà comprises.

Ils ne deviennent utilisables que s'ils sont rattachés à un contexte musical précis : style ou tradition, phénomène musical reconnu, phénomène acoustique reconnu, matériau sonore, registre, motif, type de répétition, source ou famille sonore, situation formelle, risque précis ou conséquence musicale nommée.

Pour suspension, préciser retrait / reste perceptible / sortie ; pour source live, présence, geste, jeu ou relation musicale ; pour naturalisation, support transformé et phénomène conservé ; pour fonction, phénomène et situation.

### Exemples interdits

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

### Exemples acceptables

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

# 7. Mode rapide / qualité

La méthode doit être plus rapide en choisissant le niveau d'agent juste.

## Pas d'agent

Utiliser quand :

```text
le bon document existe déjà ;
la réponse est une simple lecture ;
la tâche est mécanique ;
une mise à jour ciblée suffit.
```

## Agent unique

Utiliser quand :

```text
le corpus est petit ;
la tâche est une extraction ou une revue limitée ;
les critères sont clairs ;
la sortie attendue est courte.
```

## Multi-agents parallèles

Utiliser quand :

```text
plusieurs cadres peuvent entrer en tension ;
la tâche implique méthode + musique + technique + agency ;
les risques sont différents selon les perspectives ;
le désaccord est utile ;
une décision future est coûteuse ou difficile à inverser.
```

Dans ce cas, chaque agent doit avoir un rôle indépendant et une sortie comparable.

La synthèse doit préserver les désaccords, pas les écraser.

---

# 8. Règle contrôle / automation

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

# 9. Interdictions fortes

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

# 10. Toujours faire

```text
séparer fait / inférence / recommandation ;
indiquer les incertitudes ;
limiter le corpus ;
nommer les fichiers consultés ;
préserver les divergences ;
proposer la prochaine action minimale ;
respecter les sources de vérité existantes ;
choisir le niveau d'orchestration le plus léger qui suffit.
```
