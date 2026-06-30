# Tâche Codex — préparer la reprise du projet Vesperare

## Contexte

Le projet s'appelle `vesperare`.

Les notes brutes importées sont dans :

`reprise/`

Le fichier d'index actif à consulter en priorité est :

`reprise/INDEX_ACTIF_VESPERARE_CONCEPTION.md`

## Objectif

Créer les fichiers centraux de reprise dans `docs/reprise/`.

Fichiers à produire :

1. `docs/reprise/00_INDEX.md`
   - carte claire du projet ;
   - familles de fichiers ;
   - ordre de lecture recommandé ;
   - fichiers sources importants.

2. `docs/reprise/01_PROJECT_BRIEF.md`
   - objectif du projet ;
   - contexte ;
   - état actuel ;
   - contraintes ;
   - hypothèses importantes.

3. `docs/reprise/02_PROJECT_STATE.md`
   - état canonique actuel ;
   - terminé ;
   - en cours ;
   - à décider.

4. `docs/reprise/03_DECISIONS_LOG.md`
   - décisions déjà prises ;
   - source de chaque décision ;
   - certitude : certain / probable / flou.

5. `docs/reprise/04_OPEN_QUESTIONS.md`
   - contradictions ;
   - informations manquantes ;
   - points à trancher.

6. `docs/reprise/05_NEXT_ACTIONS.md`
   - plan de reprise ;
   - tâches prioritaires ;
   - fichiers concernés.

7. `docs/reprise/10_BUNDLE_ALL_MARKDOWN.md`
   - bundle lisible de tous les `.md` du dossier `reprise/` ;
   - conserver des séparateurs :
     `<!-- FILE: reprise/nom-du-fichier.md -->`.

## Contraintes

- Ne pas modifier les fichiers dans `reprise/`.
- Ne pas déplacer l'ancien contenu du repo.
- Ne pas réorganiser le repo.
- Ne pas réécrire le projet lui-même.
- Ne pas inventer les décisions manquantes.
- Toujours indiquer les chemins sources utilisés.
- Signaler les contradictions au lieu de choisir silencieusement.
- Rédiger en français.

## README

Ajouter dans `README.md` une courte section pointant vers :

- `docs/reprise/00_INDEX.md`
- `docs/reprise/01_PROJECT_BRIEF.md`
- `docs/reprise/02_PROJECT_STATE.md`

Ne pas remplacer le README existant.

## Vérification finale

Avant de terminer :

- vérifier que les fichiers générés existent ;
- lancer `git diff --check` ;
- résumer les fichiers créés/modifiés.
