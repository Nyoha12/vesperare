# Trace premier patch Max minimal MIN-DID-PC

Statut : trace de verification et blocage cible avant production du premier patch Max minimal `MIN-DID-PC`.
Date : 2026-07-01.
Verdict : `patch non produit : emplacement et format attendus ambigus`.
Perimetre : verification strictement bornee par les fiches 24, 23, 22, 20 et 21, sans modification de `reprise/`, sans modification de l'audit niveau 6 source, sans creation de niveau 6, sans recreation de matrice niveau 6, sans UI, sans mapping, sans asset, sans sample bank, sans seuil numerique, sans objet Max final, sans routage final et sans architecture validee.

## Sources consultees

Fait :

Sources documentaires directement consultees :

- `docs/reprise/05_NEXT_ACTIONS.md`
- `docs/reprise/24_DECISION_AUTORISATION_PREMIER_PATCH_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/23_PREPARATION_BRANCHE_PROTOTYPE_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/22_CADRAGE_OPERATIONNEL_ACTION_PROTOTYPE_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/21_DECISION_PASSAGE_PROTOTYPE_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/20_CADRAGE_DOCUMENTAIRE_PREMIER_PROTOTYPE_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/19_PRE_SPEC_MAX_CONCRETE_NON_IMPLEMENTATION_MIN_DID_PC.md`

Fait :

Sources methodologiques et reperage des conventions Max :

- `README.md`
- `docs/00_INDEX_METHODE_DECISIONS.md`
- `docs/02_SPECIFICATION_MAX_FOR_LIVE.md`
- `docs/02A_SYNCHRONISATION_ARCHITECTURE_MODULES.md`
- `docs/04_RESSOURCES_ET_BOITE_A_OUTILS.md`
- `projects/`
- `docs/`

Fait :

La presente trace ne consulte pas la matrice niveau 6 absente comme source, ne modifie pas `reprise/`, ne modifie pas l'audit niveau 6 source et ne produit pas le patch Max minimal.

## 1. Verification de conformite avant edition

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

La branche courante observee avant edition est :

```text
patch/min-did-pc-minimal-01
```

Fait :

Le statut Git observe avant edition est propre.

Decision :

L'action reste conforme aux fiches 24, 23, 22, 20 et 21 seulement si aucun emplacement, format, objet Max, routage ou choix d'architecture n'est invente pour compenser une convention absente.

Decision :

La production d'un fichier de patch Max est arretee ici, car l'emplacement et le format attendus ne sont pas stabilises dans le repo.

## 2. Localisation des conventions existantes du repo pour les patchs Max

Fait :

La recherche de fichiers Max reels dans le repo ne trouve aucun fichier :

```text
*.maxpat
*.maxproj
*.amxd
*.maxhelp
*.maxsnap
*.maxpresets
```

Fait :

Les dossiers observes ne font pas apparaitre de dossier de patch Max existant :

```text
docs/
projects/
reprise/
checkpoints/
```

Fait :

Le dossier `projects/` contient des documents de methode, integration, programme et agents. Il ne contient pas de convention locale de stockage de patchs Max.

Fait :

Les documents consultes mentionnent Max, Max for Live ou Max standalone comme horizon technique, methode ou architecture future. Ils ne fixent pas un chemin de fichier, un nom de fichier, un format concret ou une version de fichier de patch a utiliser pour le premier patch minimal `MIN-DID-PC`.

Inference :

Creer un fichier dans un chemin comme `patches/`, `max/`, `projects/patches/`, `projects/max/` ou un autre emplacement serait une convention nouvelle, non localisee dans les sources consultees.

Inference :

Creer un fichier `.maxpat` manuel sans convention locale de version, d'emplacement, de nommage et de niveau de contenu reviendrait a choisir un format attendu au lieu de le constater.

Decision :

L'emplacement attendu et le format attendu sont ambigus.

Decision :

La condition d'arret demandee s'applique : ne pas produire de patch et creer une note de blocage ciblee.

## 3. Verification limitee demandee

Fait :

La verification technique sous forme de patch n'est pas produite.

Fait :

La verification documentaire reste limitee aux six points autorises :

| Point | Statut dans cette trace |
|---|---|
| Presence live didgeridoo / PC | Maintenue comme relation a preserver ; aucun fichier, corpus, banque ou source preparee n'est cree |
| `direct/safe` | Maintenu comme garde-fou ; aucune famille lourde n'est introduite |
| Sortie simple | Non implementee ; aucun routage final ou objet de sortie n'est choisi |
| Branches optionnelles | Aucune branche optionnelle n'est creee ; elles restent absentes, off, bypass ou reduites par statut |
| Fallback | Documente comme condition ; aucun module final ou decision expressive cachee n'est cree |
| SIG | Documente comme signalisation critique situee ; aucune UI, log obligatoire ou automation expressive n'est cree |

Inference :

Cette trace preserve le noyau minimal sans le transformer en architecture, niveau 6, mapping, asset, banque, routage final, objet Max final ou validation musicale.

Decision :

Aucune famille lourde n'entre dans `P0/P1`, `direct/safe`, protection ou `MIN-DID-PC`.

## 4. Decision

Decision :

Verdict de l'action :

```text
patch non produit : emplacement et format attendus ambigus
```

Decision :

Aucun premier patch Max minimal n'est cree dans cette action.

Decision :

La presente trace ne vaut pas validation musicale, artistique, technique, architecturale ou niveau 6.

Decision :

La mise a jour autorisee porte seulement sur :

- la presente trace ;
- `docs/reprise/05_NEXT_ACTIONS.md`.

## 5. Prochaine action minimale

Recommandation :

Avant toute reprise de production du premier patch Max minimal, clarifier dans un document existant ou une note ciblee :

- l'emplacement exact autorise pour un premier fichier Max ;
- le format attendu du premier fichier Max ;
- la convention de nommage minimale ;
- le niveau de contenu admissible sans choix d'objet Max final, routage final, UI, mapping, asset, sample bank, seuil numerique ou architecture validee.

Recommandation :

Une fois cette convention minimale documentee, reprendre seulement la verification du noyau autorise : presence live didgeridoo / PC, `direct/safe`, sortie simple, branches optionnelles absentes/off/bypass/reduites, fallback et SIG.

Condition d'arret :

Arreter si la clarification d'emplacement ou de format tente de produire un niveau 6, une architecture validee, un routage final, un objet Max final, une UI, un mapping, un asset, une sample bank, un seuil numerique, une famille lourde en `P0/P1`, `direct/safe`, protection ou `MIN-DID-PC`.
