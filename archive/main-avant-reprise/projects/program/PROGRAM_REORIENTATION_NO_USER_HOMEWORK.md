# PROGRAM_REORIENTATION_NO_USER_HOMEWORK

## Statut

Garde-fou de programme intégré dans `integration/method-harmonization`.

Ce document formalise une correction importante : ne pas renvoyer à Yohan les questions que le programme doit instruire.

---

# 1. Problème corrigé

Mauvais pattern :

```text
question complexe → demander à Yohan une décision immédiate.
```

Bon pattern :

```text
question complexe → lire les documents existants → extraire → comparer → synthétiser → formuler options → demander à Yohan une validation ciblée.
```

---

# 2. Pourquoi c'est important

Vesperare contient déjà beaucoup de documents de méthode, de priorités, de statuts et de tri.

Le programme ne doit donc pas créer une nouvelle couche avant d'avoir vérifié :

```text
README.md ;
docs/00_INDEX_METHODE_DECISIONS.md ;
docs/45_REPRISE_DEPUIS_FICHE_MESURES_INSTRUMENTS.md ;
docs/assets/00_ASSETS_INDEX.md ;
docs/assets/15_DONNEES_INSTRUMENTALES_MANQUANTES_PRIORITAIRES.md ;
docs/assets/16_ACOUSTICARCHIVE_MAPPING_DONNEES_VESPERARE.md ;
docs/42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md ;
docs/modules/18_CONTEXTUAL_CONTROL_ROUTER_AMPLITUDES_LIMITES_OVERRIDE_ADDENDUM.md.
```

---

# 3. Ce que le programme doit faire avant de demander à Yohan

```text
identifier le bon document existant ;
distinguer fait / inférence / recommandation ;
classer le statut de la question ;
indiquer ce qui manque ;
préparer des options limitées ;
repérer les risques ;
formuler une question humaine ciblée seulement si nécessaire.
```

---

# 4. Ce que Yohan ne doit pas recevoir comme devoir

Ne pas demander à Yohan de :

```text
définir tout son jeu ;
valider toutes les matières ;
répondre à une question de conception non instruite ;
choisir une architecture sans options préparées ;
faire une classification exhaustive de sa pratique ;
fournir des mesures ou prises comme condition de poursuite ;
trancher un micro-test prématuré.
```

---

# 5. Ce que Yohan doit garder

Yohan garde :

```text
jugement musical ;
validation finale ;
correction d'intention ;
choix entre options instruites ;
apport volontaire de matière réelle ;
refus d'un cadre qui déforme le projet.
```

---

# 6. Relation avec docs/45

`docs/45_REPRISE_DEPUIS_FICHE_MESURES_INSTRUMENTS.md` est le point de reprise actuel de `main`.

Il rappelle :

```text
mesures utiles mais non bloquantes ;
données non exhaustives ;
AcousticArchive outil de connaissance, pas décideur ;
automation située ;
Router comme arbitre ;
anti-doublons ;
pas de fiche vide ;
pas de seuil fictif ;
pas de prototype.
```

Ce garde-fou doit être lu dans cette continuité.

---

# 7. Règle finale

Avant de demander à Yohan :

```text
qu'est-ce que la méthode peut instruire elle-même ?
```

Seulement après :

```text
quelle validation humaine ciblée reste nécessaire ?
```
