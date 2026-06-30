# 06_IA_COMPANION_OPTION_FUTURE

Version : v0.1  
Statut : références externes spécialisées. Option future uniquement. Non source de vérité Vesperare.

## Objet

Stocker les premiers résultats sur l'option d'une IA d'écoute, diagnostic et suggestion textuelle live.

Cette fiche est séparée pour éviter de contaminer le chantier principal de consolidation musicale et système.

Décision provisoire :

```text
IA Companion future = accès aux données, aucun contrôle.
```

---

# Position actuelle dans Vesperare

L'IA n'est pas une priorité de conception immédiate.

Elle peut être retenue comme perspective future sous forme :

```text
A. écoute / diagnostic ;
B. suggestion textuelle live ;
```

Modes initiaux autorisés :

```text
listen ;
diagnose ;
warn ;
suggest.
```

Modes initiaux interdits :

```text
control ;
automate ;
generate ;
route ;
override ;
modify audio ;
trigger scenes.
```

Principe :

```text
l'IA peut tout lire, mais ne touche à rien.
```

---

# Données que l'IA pourrait lire plus tard

```text
scène active ;
état actif ;
trajectoire ;
phase ;
sources live présentes ;
rôles actifs ;
densité ;
pression ;
sub / low-mid ;
masquage du didgeridoo ;
lisibilité des guimbardes ;
halo ;
risque d'ambientisation ;
risque de remplacement du live ;
contrôles prioritaires ;
sorties disponibles ;
guards actifs ;
zones de bord ;
historique récent.
```

---

# Sortie prévue

Fenêtre textuelle live, par exemple :

```text
Le didgeridoo commence à être masqué par le bas-médium.
Tu es en zone presque ambient, mais le corps reste récupérable.
Retour au corps disponible : sub stable + impact court.
Pré-drop armé, résolution non obligatoire.
Polytexture lisible, mais les guimbardes passent au second plan.
Suggestion : retirer halo ou ouvrir une sortie vers BODY_RETURN.
```

---

# Sources / cartes documentaires

## Source 1 — LiveBand: Live Accompaniment Generation in the Audio Domain

URL : https://arxiv.org/abs/2606.03803  
Type : recherche IA / accompagnement audio temps réel.  
Statut : utile comme horizon technique, pas comme priorité de projet.

### Ce que la source dit

LiveBand propose un système temps réel générant un accompagnement audio en streaming, sous contraintes causales strictes, sans accès aux frames futures.

### Notions Vesperare concernées

```text
IA d'accompagnement ;
latence ;
causalité ;
streaming ;
accompagnement audio ;
risque de remplacement du live ;
look-ahead / no-lookahead ;
qualité audio ;
cohérence de mix.
```

### Extraction Vesperare possible

```text
L'accompagnement IA audio est techniquement envisageable, mais doit rester horizon lointain.
Une IA de suggestion textuelle est plus compatible à court terme.
La causalité / latence / qualité audio doivent être pensées selon la fonction musicale.
```

### Risques

```text
faire entrer trop tôt une IA générative audio ;
masquer les instruments live ;
générer du remplissage ;
normaliser l'esthétique ;
perdre l'override ;
complexifier le système avant consolidation.
```

---

## Source 2 — AILive Mixer: Zero Latency Automatic Music Mixer for Live Music Performances

URL : https://arxiv.org/abs/2603.15995  
Type : recherche IA / mixage live.  
Statut : utile pour diagnostic/mix/protection, pas pour génération.

### Ce que la source dit

Système de mixage automatique live visant à gérer le bleed et les contraintes de latence, avec prédiction de gains mono et possibilité future d'autres paramètres.

### Notions Vesperare concernées

```text
masquage ;
bleed ;
priority live ;
protection des instruments ;
low-mid safety ;
source-priority protection ;
IA diagnostic ;
IA warning ;
mix live.
```

### Extraction Vesperare possible

```text
Une IA pourrait aider au diagnostic de masquage ou de balance live.
Elle ne doit pas décider artistiquement du mix.
Elle pourrait signaler qu'une source centrale est couverte.
```

### Risques

```text
automix qui neutralise l'intention ;
correction automatique trop intrusive ;
perte d'impact voulu ;
impossibilité de pousser une limite musicalement.
```

---

## Source 3 — Human-AI co-performance / Max/MSP accompaniment

URL de recherche utilisée : real-time human AI musical co-performance Max MSP accompaniment  
Type : piste de recherche.  
Statut : à approfondir plus tard.

### Ce qu'il faut extraire plus tard

```text
compromis latence / anticipation / qualité ;
relation audio live / génération ;
contexte glissant ;
contrôle humain ;
annulation ;
fenêtre de suggestion ;
co-performance non intrusive.
```

### Extraction Vesperare possible

```text
Si l'IA apparaît, la première forme doit être textuelle et sans contrôle.
Elle peut aider à lire le contexte mieux qu'un guard local.
Elle peut proposer des sorties sans les déclencher.
```

---

# Catégorie future à ajouter dans les audits

Colonne légère possible :

```text
IA future possible : none / diagnostic / warning / suggestion textuelle
```

Ne pas ajouter de colonne générative dans le batch actuel.

---

# Règles d'intégration future

```text
Aucune action audio directe.
Aucun changement de scène.
Aucun routing.
Aucun déclenchement.
Aucune automation.
Aucun override.
Fenêtre textuelle seulement.
Suggestion ignorables.
Lecture de contexte uniquement.
```

---

# Questions futures possibles à Yohan

```text
Veux-tu que l'IA parle rarement ou souvent ?
Doit-elle signaler seulement les risques ou aussi les opportunités ?
Doit-elle utiliser un vocabulaire musical ou technique ?
Doit-elle être visible tout le temps ou seulement en warning ?
Doit-elle commenter le live, la scène, les sorties, ou seulement les dangers ?
```

---

# Requêtes web suivantes

```text
real-time human AI musical co-performance Max MSP accompaniment
machine improvisation OMax Continuator stylistic reinjection live
Dicy2 computer assisted improvisation guided generation
human-in-the-loop AI music performance control
real-time accompaniment latency look-ahead music AI
AI live mixing acoustic bleed latency performance
```
