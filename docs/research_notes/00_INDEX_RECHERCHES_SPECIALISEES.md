# 00_INDEX_RECHERCHES_SPECIALISEES

Version : v0.1  
Statut : index de dossier de notes de recherche. Ce dossier n'est pas une source de vérité esthétique ou système. Il sert de réserve documentaire extractible pour aider les audits et futures intégrations.

## Fonction du dossier

Ce dossier stocke des éléments documentaires spécialisés utiles à Vesperare : recherches musicales, références de performance live, NIME, mapping, interfaces, liveness, styles électroniques, jazz, techno, dubstep, trance, acid et méthodes d'extraction.

Il doit permettre :

- de conserver les résultats de recherche sans les mélanger aux documents-sources du projet ;
- d'extraire rapidement une observation, un risque ou une piste d'intégration ;
- de relier chaque information externe à un document Vesperare existant ;
- d'éviter de créer une nouvelle doctrine à partir de sources web ;
- de préparer des audits ciblés sans modifier les documents-sources.

## Règle de statut

Les notes de ce dossier sont des supports de réflexion.

Elles ne doivent pas être utilisées comme :

- preuve directe ;
- règle musicale définitive ;
- source esthétique centrale ;
- justification de mapping ;
- justification de prototype ;
- justification de nouveau module ;
- justification de seuil ;
- remplacement des retours de Yohan.

Formule :

```text
recherche externe -> observation -> traduction Vesperare possible -> document source existant -> décision future
```

## Fichiers du dossier

### `10_METHODE_EXTRACTION_INTEGRATION.md`

Gabarit et méthode d'extraction : comment transformer une référence documentaire en observation utilisable par Vesperare, sans la surinterpréter.

### `20_LIVE_ELECTRONICS_NIME_MAPPING_NON_IA.md`

Notes sur live electronics, NIME, mapping, liveness, interfaces, co-design d'instruments, performabilité, charge cognitive, contrôle et vérification musicale intégrée. N'inclut pas les notes sur IA d'accompagnement.

### `30_STYLES_MUSICAUX_TECHNO_DUBSTEP_TRANCE_ACID_JAZZ.md`

Notes musicales sur techno, minimal techno, dubstep, acid, trance, jazz et polytexture. Objectif : enrichir les notions musicales sans les transformer en genres importés.

## Hors périmètre actuel

Les notes sur IA d'accompagnement ne sont pas stockées ici pour l'instant. Si elles deviennent nécessaires, créer plus tard un fichier séparé, par exemple :

```text
docs/research_notes/40_IA_COMPANION_TEXTUELLE_OBSERVATION_SUGGESTION.md
```

Mais ne pas le créer maintenant, pour respecter la consigne : stocker ici les résultats non-IA et les recherches musicales / live / méthodologiques.

## Documents Vesperare à relier lors de l'intégration

Les notes de recherche doivent toujours être rapportées à un document existant :

- `docs/05_CARTOGRAPHIE_STYLE_PERSONNEL_TECHNO.md`
- `docs/01_CAHIER_DES_PHENOMENES_SONORES.md`
- `docs/06_CARTOGRAPHIE_INFLUENCES_STYLE_VESPERARE.md`
- `docs/07_PITCH_HARMONIQUES_MICROTONALITE.md`
- `docs/08_PERFORMANCE_SCENES_TRAJECTOIRES_OBJETS.md`
- `docs/12_TECHNO_ORGANIQUE_CADRE_OPERATOIRE.md`
- `docs/13_CONCEPTS_OPERATOIRES_TECHNO_ORGANIQUE_DEPENDANCES.md`
- `docs/14_CONCEPT_CORE_TO_INTERFACE_SYSTEM_REQUIREMENTS.md`
- `docs/02_SPECIFICATION_MAX_FOR_LIVE.md`
- `docs/23_SCENES_COMME_CHAMPS_OUVERTS_DE_PERFORMANCE.md`
- `docs/42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md`
- `docs/modules/18_CONTEXTUAL_CONTROL_ROUTER_AMPLITUDES_LIMITES_OVERRIDE_ADDENDUM.md`

## Utilisation recommandée

Lors d'un audit ou d'une intégration :

1. partir d'une notion musicale ou d'un problème système ;
2. consulter d'abord les documents internes Vesperare ;
3. consulter ensuite ces notes pour enrichir ou contextualiser ;
4. extraire seulement ce qui éclaire une fonction musicale précise ;
5. indiquer le document Vesperare à mettre à jour ;
6. ne pas modifier le projet tant que la solidité de la notion n'est pas établie.
