# Clarification minimale emplacement format patch Max minimal MIN-DID-PC

Statut : clarification documentaire minimale de l'emplacement et du format attendus pour un futur premier patch Max minimal `MIN-DID-PC`.
Date : 2026-07-01.
Verdict : `convention minimale provisoire definie ; patch non produit`.
Perimetre : documentation seulement, sans production de patch Max, sans creation de fichier `.maxpat`, `.maxproj` ou `.amxd`, sans creation de repertoire de patch, sans modification de `reprise/`, sans modification de l'audit niveau 6 source, sans creation de niveau 6, sans recreation de matrice niveau 6, sans UI, sans mapping, sans asset, sans sample bank, sans seuil numerique, sans objet Max final, sans routage final et sans architecture validee.

## Sources consultees

Fait :

Sources documentaires consultees :

- `docs/reprise/05_NEXT_ACTIONS.md`
- `docs/reprise/25_TRACE_PREMIER_PATCH_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/24_DECISION_AUTORISATION_PREMIER_PATCH_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/23_PREPARATION_BRANCHE_PROTOTYPE_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/22_CADRAGE_OPERATIONNEL_ACTION_PROTOTYPE_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/21_DECISION_PASSAGE_PROTOTYPE_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/20_CADRAGE_DOCUMENTAIRE_PREMIER_PROTOTYPE_MINIMAL_MIN_DID_PC.md`

Fait :

La presente fiche reprend le blocage cible constate par la fiche 25. Elle ne consulte pas la matrice niveau 6 absente comme source, ne modifie pas `reprise/`, ne modifie pas l'audit niveau 6 source et ne produit pas le patch Max minimal.

## 1. Fait

Fait :

La fiche 25 a bloque correctement la production du premier patch Max minimal `MIN-DID-PC` parce que l'emplacement et le format attendus etaient ambigus dans le repo.

Fait :

La fiche 25 a constate l'absence de fichiers Max reels et l'absence de convention locale stabilisee pour un chemin, un nom de fichier, un format concret ou une version de patch a utiliser pour le premier patch minimal.

Fait :

La fiche 24 autorise avec reserves une action ulterieure separee de premier patch Max minimal, strictement conforme aux fiches 24, 23, 22, 20 et 21.

Fait :

Les fiches 24, 23, 22, 20 et 21 limitent la verification autorisee a :

- presence live didgeridoo / PC ;
- `direct/safe` ;
- sortie simple ;
- absence, off, bypass ou reduction de branches optionnelles ;
- fallback ;
- SIG.

Fait :

La presente fiche 26 ne produit toujours pas le patch Max minimal.

## 2. Inference

Inference :

Le blocage constate par la fiche 25 peut etre leve sans produire le patch si une convention locale minimale, provisoire et strictement bornee definit seulement :

- un emplacement futur autorise ;
- un format futur autorise ;
- un nom de fichier futur attendu.

Inference :

Placer le futur fichier sous `projects/` evite de transformer `docs/reprise/` en lieu de patch reel et respecte l'interdiction de modifier `reprise/`.

Inference :

Le format `.maxpat` est le format minimal compatible avec un patch Max standalone futur. Un format `.maxproj` ajouterait une logique de projet non autorisee ici, et un format `.amxd` deplacerait l'action vers Max for Live sans decision documentaire correspondante.

Inference :

Cette convention nouvelle ne constate pas une tradition preexistante du repo. Elle cree seulement une borne locale minimale pour eviter qu'une action ulterieure invente un emplacement ou un format pendant la production du patch.

## 3. Decision

Decision :

La fiche 25 a bloque correctement la production du patch.

Decision :

La presente fiche 26 ne produit toujours pas le patch.

Decision :

La presente fiche 26 definit une convention minimale, provisoire et strictement bornee d'emplacement, de format et de nommage pour le futur premier patch Max minimal `MIN-DID-PC`.

Decision :

Le futur patch pourra etre produit seulement dans l'emplacement et le format definis par la presente fiche, sauf clarification documentaire ulterieure explicite avant production.

Decision :

Cette convention ne vaut pas architecture validee, routage final, objet Max final, UI, mapping, asset, sample bank ou seuil numerique.

Decision :

Cette convention ne vaut pas validation musicale, artistique, technique, architecturale ou niveau 6.

## 4. Reserves

Reserve :

La convention porte seulement sur le premier patch Max minimal `MIN-DID-PC`. Elle ne cree pas de convention generale pour Vesperare.

Reserve :

La future action de patch devra reverifier explicitement sa conformite a la presente fiche 26, puis aux fiches 24, 23, 22, 20 et 21 avant de creer le repertoire ou le fichier.

Reserve :

La convention ne choisit aucun objet Max final, aucun routage final et aucune architecture. Elle fixe seulement le contenant minimal autorise pour une action ulterieure.

Reserve :

Si une convention locale preexistante contraire est retrouvee avant production, l'action devra s'arreter et ouvrir une clarification documentaire separee.

## 5. Emplacement minimal autorise pour le futur patch

Decision :

Emplacement minimal autorise pour le futur patch :

```text
projects/max/min-did-pc-minimal/
```

Decision :

Chemin complet minimal autorise pour le futur fichier :

```text
projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat
```

Decision :

Ce repertoire n'est pas cree par la presente fiche. Il pourra etre cree seulement dans une action ulterieure de production du patch, si toutes les conditions restent tenues.

Interdit :

Le futur patch ne doit pas etre produit dans :

- `docs/` ;
- `docs/reprise/` ;
- `reprise/` ;
- la racine du repo ;
- un dossier top-level `patches/` ;
- un dossier top-level `max/` ;
- un autre emplacement non clarifie.

## 6. Format minimal autorise pour le futur patch

Decision :

Format minimal autorise :

```text
.maxpat
```

Decision :

Le futur fichier devra etre un seul fichier Max patcher `.maxpat`, lisible comme fichier texte JSON de patch Max standalone.

Decision :

Le futur patch ne devra pas exiger de fichier compagnon, de projet Max, de device Max for Live, de package, d'external, de plugin, d'asset, de sample bank ou de source preparee obligatoire.

Interdit :

Formats non autorises pour le premier patch minimal :

- `.maxproj` ;
- `.amxd` ;
- `.maxhelp` ;
- `.maxsnap` ;
- `.maxpresets` ;
- tout format de projet, device, preset, aide, snapshot, banque ou dependance externe.

## 7. Nom de fichier minimal attendu

Decision :

Nom de fichier minimal attendu :

```text
min-did-pc-minimal-01.maxpat
```

Decision :

Ce nom est une convention de borne, pas une validation d'architecture. Il signifie seulement :

- `min-did-pc` : rattachement au noyau minimal documente ;
- `minimal` : refus d'une implementation generale ;
- `01` : premier fichier strictement borne, sans serie ouverte par defaut ;
- `.maxpat` : patch Max standalone minimal, pas projet ni device.

## 8. Ce que cette clarification n'autorise pas

Interdictions :

- produire le patch Max dans la presente fiche ;
- creer un fichier `.maxpat`, `.maxproj` ou `.amxd` dans la presente fiche ;
- creer une UI ;
- creer un mapping ;
- creer un asset ;
- creer une sample bank ;
- creer un seuil numerique ;
- choisir un objet Max final ;
- definir un routage final ;
- produire une architecture validee ;
- creer ou valider un niveau 6 ;
- recreer la matrice niveau 6 absente ;
- modifier `reprise/` ;
- modifier l'audit niveau 6 source ;
- utiliser l'audit niveau 6 comme preuve ;
- transformer la convention d'emplacement et de format en validation musicale, artistique, technique ou architecturale.

Interdictions lourdes :

Les familles lourdes restent hors `P0/P1`, hors `direct/safe`, hors protection, hors `MIN-DID-PC` et hors setup minimal :

- `gen~` ;
- `poly~` ;
- MC ;
- `buffer~` ;
- playback prepare ;
- corpus ;
- IR ;
- convolution ;
- reverb comme condition de sortie ;
- pfft/FFT ;
- spectral lourd ;
- granularite complexe ;
- modeles physiques ;
- scripts, `js`, node et logique opaque ;
- presets critiques et etats caches ;
- externals ;
- packages et runtimes tiers obligatoires ;
- plugins ;
- ML ;
- classification ;
- prediction ;
- Markov ;
- grammaire ;
- statistiques decisionnelles ;
- outils opaques.

## 9. Conditions d'arret

Condition d'arret :

Arreter si une action ulterieure veut produire le patch dans un autre emplacement que :

```text
projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat
```

Condition d'arret :

Arreter si une action ulterieure veut produire un format autre que `.maxpat`, notamment `.maxproj` ou `.amxd`.

Condition d'arret :

Arreter si la future production du patch veut verifier autre chose que presence live didgeridoo / PC, `direct/safe`, sortie simple, absence/off/bypass/reduction de branches optionnelles, fallback et SIG.

Condition d'arret :

Arreter si la future production tente de creer une UI, un mapping, un asset, une sample bank, un seuil numerique, un objet Max final, un routage final, une architecture validee, un niveau 6 ou une matrice niveau 6.

Condition d'arret :

Arreter si la future production modifie `reprise/`, modifie l'audit niveau 6 source ou utilise l'audit niveau 6 comme preuve.

Condition d'arret :

Arreter si une famille lourde devient condition de `P0/P1`, `direct/safe`, protection ou `MIN-DID-PC`.

Condition d'arret :

Arreter et requalifier si une convention locale preexistante contradictoire est retrouvee.

## 10. Prochaine action exacte

Decision :

Prochaine action exacte :

```text
produire, dans une action ulterieure separee, le premier patch Max minimal
MIN-DID-PC uniquement sous
projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat,
au format .maxpat, apres verification explicite de conformite a la presente
fiche 26, puis aux fiches 24, 23, 22, 20 et 21, et seulement pour verifier
presence live didgeridoo / PC, direct/safe, sortie simple,
absence/off/bypass/reduction de branches optionnelles, fallback et SIG.
```

Decision :

Cette prochaine action pourra creer le repertoire `projects/max/min-did-pc-minimal/` et le fichier `min-did-pc-minimal-01.maxpat` seulement si elle reste strictement conforme a la presente fiche et aux fiches 24, 23, 22, 20 et 21.

Interdit :

Cette prochaine action ne doit pas produire de niveau 6, matrice niveau 6, architecture validee, objet Max final, routage final, UI, mapping, asset, sample bank, seuil numerique, famille lourde ou implementation generale.

Arret :

La presente fiche s'arrete ici. Elle clarifie l'emplacement et le format, mais ne produit pas le patch Max minimal.
