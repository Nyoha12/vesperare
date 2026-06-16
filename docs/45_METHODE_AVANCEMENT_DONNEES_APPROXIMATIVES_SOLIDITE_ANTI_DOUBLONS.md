# 45_METHODE_AVANCEMENT_DONNEES_APPROXIMATIVES_SOLIDITE_ANTI_DOUBLONS

Version : v0.1  
Statut : note méthodologique directrice. Sans prototype, sans asset réel, sans nouveau source_need.

## Objet

Ce document fixe une méthode pour continuer à avancer sans attendre des données parfaites, sans fragiliser les objectifs esthétiques, et sans dupliquer les mêmes nuances dans plusieurs documents.

Il sert de garde-fou pour la suite de la conception du système Vesperare.

---

# 1. Avancer avec des approximations suffisantes

Les données instrumentales exactes ne sont pas toujours nécessaires pour avancer.

On peut utiliser :

```text
fréquences approximatives déjà données par Yohan ;
notes approximatives ;
fourchettes larges ;
références web ;
références acoustiques ;
tables note → Hz ;
inférences prudentes depuis une famille instrumentale ;
mesures futures seulement si elles deviennent nécessaires.
```

Niveaux de solidité :

```text
MEASURED_YOHAN : mesuré directement sur les instruments de Yohan ;
APPROX_YOHAN : indiqué approximativement par Yohan ;
WEB_REFERENCE : information sourcée externe ;
INFERRED_RANGE : fourchette déduite ;
UNKNOWN : ne pas inventer.
```

Règle :

```text
une approximation sourcée avec marge d’incertitude peut suffire pour concevoir ;
un seuil de sécurité ou un prototype critique demandera recalibrage ;
l’absence de mesure parfaite ne doit pas bloquer la conception système.
```

---

# 2. Recherche web complémentaire

Il faut utiliser le web ou des sources acoustiques quand une information externe peut faire avancer :

```text
plages de fréquence typiques ;
comportement acoustique général du didgeridoo ;
comportement acoustique général des guimbardes / jaw harps ;
tables de fréquences musicales ;
acoustique des résonateurs ;
risques connus de masquage, formants, harmoniques ;
références de style ou d’écoute si nécessaire.
```

Règle :

```text
le web complète les instruments de Yohan, il ne les remplace pas ;
une donnée externe doit rester marquée comme externe ;
une donnée externe ne doit pas imposer une fonction musicale ;
une approximation web peut suffire pour réfléchir aux plages et relations.
```

---

# 3. Solidité des objectifs esthétiques

Les objectifs esthétiques doivent être évalués par provenance.

```text
SOLIDE : demandé, validé, répété, cohérent avec le socle ;
PROBABLE : fortement soutenu mais à préciser ;
À RE-ANALYSER : concept compacté, style d’emprunt, transposition subtile ;
HYPOTHÉTIQUE : source ou esthétique possible mais non nécessaire ;
NON DIRECTEUR : exemple, support pratique, protocole optionnel.
```

Règle :

```text
rien n’est simple en musique ;
les styles d’emprunt doivent être réanalysés finement ;
les exceptions, bords et contre-exemples doivent rester visibles ;
une fonction empruntée à un style doit être transposée vers Vesperare, pas importée comme cliché.
```

---

# 4. Organisation et anti-doublons

Le projet contient beaucoup d’informations.

Avant d’ajouter un document ou une nuance, vérifier :

```text
est-ce une nouvelle décision ?
est-ce une précision locale ?
est-ce un rappel déjà intégré ?
est-ce une alerte de cohérence ?
est-ce une information à garder non documentée pour l’instant ?
```

Sources de vérité actuelles :

```text
README.md : vue générale ;
00_INDEX_METHODE_DECISIONS.md : méthode et décisions ;
40–44 : recentrage, corps, contrôles, cohérence ;
42 + modules/18 : automation située / contrôle contextualisé ;
14–15 assets : source_needs et données instrumentales ;
45 : méthode d’avancement, approximations, solidité et anti-doublons.
```

Règle :

```text
ne pas créer un nouveau document si une correction locale suffit ;
ne pas reformuler partout une nuance déjà stabilisée ;
identifier la source de vérité avant de modifier ;
distinguer décision, rappel, nuance, audit, fiche pratique et hypothèse.
```

---

# 5. Possibilités structurelles du système

La conception doit rester organisée pour ne pas passer à côté de possibilités.

À chaque fonction importante, vérifier plusieurs modes possibles :

```text
manuel ;
automatisé ;
semi-automatisé ;
contextualisé ;
visible ;
profond ;
protégé ;
overrideable ;
conditionnel ;
désactivable.
```

À chaque contrôle important, vérifier :

```text
quelle fonction musicale ?
quelle source ?
quelle amplitude ?
quelle limite ?
quelle sortie ?
quelle automation possible ?
quel réglage humain ?
quel risque de cliché ou de simplification ?
```

---

# 6. Décision actuelle

La suite ne doit pas attendre des données parfaites.

La suite doit avancer par :

```text
approximations prudentes ;
recherches web complémentaires ;
réanalyse des objectifs esthétiques ;
organisation des possibilités structurelles ;
anti-doublons ;
intégration progressive des données réelles quand elles arrivent.
```

Ne pas créer maintenant :

```text
prototype ;
patch ;
mapping ;
asset réel ;
nouveau source_need ;
banque de samples.
```
