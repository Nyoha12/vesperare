# 10_METHODE_EXTRACTION_INTEGRATION

Version : v0.1  
Statut : méthode locale d'extraction pour le dossier `docs/research_notes`. N'est pas une méthode générale du projet. N'ajoute pas de règle source.

## Objet

Ce fichier définit comment stocker et utiliser les informations documentaires spécialisées issues de recherches externes.

Objectif : rendre ces informations faciles à extraire et à intégrer plus tard, sans créer de doublons ni transformer les sources externes en doctrine.

## Principe

Une recherche externe ne doit jamais passer directement en règle système.

Chemin obligatoire :

```text
source externe
-> observation musicale ou méthodologique
-> traduction Vesperare possible
-> risque de mauvaise interprétation
-> document interne source-of-truth
-> décision future éventuelle
```

## Gabarit d'entrée documentaire

Chaque note ou extrait doit idéalement suivre ce format :

```text
research_id :
domaine :
source_type : article / papier / page de référence / critique / historique / autre
source_title :
source_url :
source_date :
source_status : vérifié / à vérifier / indirect / secondaire
observation_brute :
lecture_musicale :
traduction_vesperare_possible :
risque_de_surinterpretation :
document_interne_a_relie :
element_systeme_potentiel :
question_eventuelle :
solidite : utile / partiel / à vérifier / fragile
```

## Champs de traduction Vesperare

Pour intégrer une observation, demander :

```text
Quelle notion musicale éclaire-t-elle ?
Quel phénomène sonore est concerné ?
Quelle fonction techno ou influence secondaire est concernée ?
Quelle source live peut être concernée ?
Quel rôle d'objet est éclairé ?
Quelle scène ou trajectoire peut être affectée ?
Quel contrôle pourrait être mieux formulé ?
Quelle automation pourrait être mieux limitée ?
Quelle protection pourrait être mieux justifiée ?
Quelle sortie ou bifurcation est concernée ?
```

## Degrés d'intégration

Utiliser ces niveaux :

```text
NIVEAU 0 — Stockage documentaire seulement.
NIVEAU 1 — Observation utile à garder.
NIVEAU 2 — Peut éclairer une notion Vesperare existante.
NIVEAU 3 — Peut aider à reformuler un phénomène ou risque.
NIVEAU 4 — Peut informer une future correction de document interne.
NIVEAU 5 — Peut informer une future décision système, mais seulement après réaudit interne.
```

Aucune note externe ne doit passer directement au niveau 5.

## Ce qu'il faut éviter

Ne pas utiliser une source externe pour :

- importer un genre entier ;
- corriger directement le style de Yohan ;
- justifier une nouvelle scène ;
- justifier un nouveau module ;
- inventer un seuil ;
- créer un mapping ;
- réduire une influence à une recette ;
- remplacer les retours d'écoute techno de Yohan ;
- donner autorité à une critique ou page web isolée.

## Usage dans les audits

Dans `NOTION_TO_SYSTEM_SOLIDITY_AUDIT_BATCH_01`, ces notes peuvent servir à enrichir les colonnes :

- origine musicale ;
- phénomène sonore ;
- risque de caricature ;
- manque actuel ;
- question éventuelle à Yohan ;
- recherches web à poursuivre.

Elles ne doivent pas servir à remplir directement :

- solidité finale ;
- contrôle final ;
- automation finale ;
- protection finale ;
- mapping ;
- spec.

## Règle sur les questions à Yohan

Une question à Yohan ne doit être formulée qu'après une extraction documentaire.

Bonne question :

```text
Dans les retours techno, la pression semble recouvrir pression physique, spectrale et formelle. En performance live, laquelle doit rester prioritaire pour toi ?
```

Mauvaise question :

```text
Peux-tu définir ton esthétique ?
```

## Règle sur les recherches web restantes

Les recherches web doivent être utilisées par lots :

1. techno-first ;
2. live electronics / mapping / liveness ;
3. influences secondaires ;
4. sources acoustiques et instrumentation ;
5. IA seulement plus tard dans un fichier séparé si besoin.

## Règle de non-doublon

Si une information peut déjà être intégrée dans `05`, `01`, `06`, `07`, `08`, `12`, `13`, `14`, `23`, `42` ou `modules/18`, ne pas créer de nouvelle source de vérité.

Ce dossier n'est qu'un stock documentaire.
