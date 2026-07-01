# Trace test chargement patch Max minimal MIN-DID-PC

Statut : trace de tentative de test de chargement reel du premier patch Max minimal `MIN-DID-PC`.
Date : 2026-07-01.
Branche : `test/chargement-max-min-did-pc-01`.
Verdict : `chargement Max non teste ; blocage reel par absence de Max standalone local detectable ; patch inchange`.
Perimetre : tentative strictement bornee au chargement local du fichier `.maxpat` et a la verification documentaire minimale presence live didgeridoo / PC prevue, `direct/safe`, sortie simple, fallback, branches optionnelles absentes et SIG, sans modification de `reprise/`, sans modification de l'audit niveau 6 source, sans creation de niveau 6, sans recreation de matrice niveau 6, sans UI, sans mapping, sans asset, sans sample bank, sans seuil numerique, sans objet Max final, sans routage final et sans architecture validee.

## Sources consultees

Fait :

Sources directement consultees :

- `docs/reprise/05_NEXT_ACTIONS.md`
- `docs/reprise/27_TRACE_CREATION_PREMIER_PATCH_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/26_CLARIFICATION_MINIMALE_EMPLACEMENT_FORMAT_PATCH_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/24_DECISION_AUTORISATION_PREMIER_PATCH_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/23_PREPARATION_BRANCHE_PROTOTYPE_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/22_CADRAGE_OPERATIONNEL_ACTION_PROTOTYPE_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/21_DECISION_PASSAGE_PROTOTYPE_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/20_CADRAGE_DOCUMENTAIRE_PREMIER_PROTOTYPE_MINIMAL_MIN_DID_PC.md`
- `projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat`

Fait :

La matrice niveau 6 absente n'a pas ete consultee comme source, n'a pas ete recreee et n'a pas ete remplacee.

Fait :

L'audit niveau 6 source n'a pas ete modifie et n'est pas utilise comme preuve.

## 1. Fait

Fait :

Le depot etait propre sur `main` avant creation de la branche de test.

Fait :

`main` etait a jour apres :

```text
git pull --ff-only
```

Fait :

La branche de test creee pour la presente action est :

```text
test/chargement-max-min-did-pc-01
```

Fait :

Le patch vise existe a l'emplacement autorise :

```text
projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat
```

Fait :

Le fichier `.maxpat` a ete lu comme JSON par l'environnement local. Cette lecture n'est pas un chargement Max.

Fait :

La lecture structuree du fichier constate seulement les objets suivants :

```text
adc~ 1 2
dac~ 1 2
loadmess min_did_pc_sig_direct_safe_optional_absent_fallback_ready
s min-did-pc-sig
```

Fait :

La lecture structuree du fichier constate seulement les connexions suivantes :

```text
adc~ sortie 1 -> dac~ entree 1
adc~ sortie 2 -> dac~ entree 2
loadmess -> s min-did-pc-sig
```

Fait :

La recherche locale de Max standalone n'a trouve aucun executable disponible par les moyens controles :

- `Max.exe` absent du `PATH` ;
- `C:\Program Files\Cycling '74\Max 8\Max.exe` absent ;
- `C:\Program Files\Cycling '74\Max 9\Max.exe` absent ;
- `C:\Program Files (x86)\Cycling '74\Max 8\Max.exe` absent ;
- `C:\Program Files (x86)\Cycling '74\Max 9\Max.exe` absent ;
- aucun dossier Cycling '74 ou Max pertinent trouve sous les dossiers `Program Files` controles ;
- aucun `Max.exe` trouve sous l'emplacement utilisateur `LOCALAPPDATA\Programs` controle ;
- aucune entree d'installation Cycling '74 / Max pertinente trouvee dans les registres d'applications installables controles ;
- aucun raccourci Max pertinent trouve dans les menus Demarrer controles.

Fait :

Aucun lancement Max standalone n'a ete effectue.

Fait :

Aucune correction du patch `.maxpat` n'a ete faite.

## 2. Inference

Inference :

Le blocage observe est un blocage d'environnement local : Max standalone n'est pas disponible ou detectable dans cette session.

Inference :

Il ne faut pas transformer la lecture JSON du fichier en preuve de chargement Max. Elle indique seulement que le fichier reste lisible comme texte structure, pas qu'il s'ouvre correctement dans Max standalone.

Inference :

Comme aucun chargement Max reel n'a eu lieu, aucune erreur Max locale au patch n'a ete constatee. Il n'y a donc pas de raison autorisee de corriger le `.maxpat`.

Inference :

Les objets `adc~`, `dac~`, `loadmess` et `s` restent des moyens provisoires presents dans le contenant minimal. Ils ne deviennent ni objets Max finaux, ni routage final, ni architecture validee.

## 3. Decision

Decision :

Le resultat du test est :

```text
chargement Max non teste ; blocage reel par absence de Max standalone local detectable.
```

Decision :

Le patch reste inchange.

Decision :

La presente trace documente le blocage au lieu de simuler un test de chargement.

Decision :

Aucune correction minimale locale du `.maxpat` n'est appliquee, parce que le blocage ne vient pas d'un echec de chargement Max observe.

Decision :

La prochaine action doit etre une reprise du meme test sur un poste ou Max standalone est disponible et peut ouvrir le fichier cible.

## 4. Verification minimale sans chargement Max

Fait :

La verification suivante est seulement une verification documentaire et structurelle du fichier lu. Elle ne remplace pas le chargement Max.

Fait :

Presence live didgeridoo / PC prevue :

```text
adc~ 1 2
```

Inference :

`adc~ 1 2` est seulement le support technique provisoire d'entree audio Max standalone prevu par la fiche 27. Il ne valide pas la relation musicale live didgeridoo / PC / sortie.

Fait :

`direct/safe` prevu :

```text
adc~ 1 2 -> dac~ 1 2
```

Inference :

Cette liaison directe prevue reste une connexion provisoire de contenant minimal. Elle ne valide pas la securite, la latence, le routage, la protection, la jouabilite ou la situation musicale.

Fait :

Sortie simple prevue :

```text
dac~ 1 2
```

Inference :

`dac~ 1 2` est seulement le support technique provisoire de sortie audio Max standalone. Les numeros de canaux ne sont pas des seuils acoustiques ni des criteres de decision.

Fait :

Branches optionnelles :

```text
aucune branche optionnelle encodee
```

Inference :

Le fichier ne contient pas de famille lourde ni de branche optionnelle indispensable au noyau minimal.

Fait :

Fallback prevu :

```text
absence de branches optionnelles ; maintien du noyau direct/safe et sortie simple
```

Inference :

Ce fallback reste minimal et documentaire tant que le patch n'a pas ete charge dans Max.

Fait :

SIG prevu :

```text
loadmess min_did_pc_sig_direct_safe_optional_absent_fallback_ready -> s min-did-pc-sig
```

Inference :

Ce SIG reste interne et minimal. Il ne devient pas UI finale, log obligatoire, mapping, scene autonome, automation expressive ou validation technique.

## 5. Conformite aux fiches 27, 26, 24, 23, 22, 21 et 20

### Fiche 27

Fait :

La presente action porte sur le patch cree par la fiche 27 et ne deplace pas le fichier.

Decision :

La presente action reste conforme a la fiche 27 : le patch n'est pas presente comme validation musicale, technique, architecturale ou niveau 6, et aucun objet Max final n'est affirme.

### Fiche 26

Fait :

Le fichier teste ou a tester reste uniquement :

```text
projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat
```

Decision :

La convention minimale provisoire d'emplacement, de format et de nommage reste respectee.

### Fiche 24

Fait :

La verification reste limitee aux six points autorises :

- presence live didgeridoo / PC prevue ;
- `direct/safe` ;
- sortie simple ;
- branches optionnelles absentes ;
- fallback ;
- SIG.

Decision :

Aucune famille lourde n'entre dans `P0/P1`, `direct/safe`, protection ou `MIN-DID-PC`.

### Fiche 23

Fait :

La presente action reste une action de test/tentative de test strictement bornee, pas un prototype general, pas un audit, pas un niveau 6 et pas une matrice.

Decision :

Aucune architecture, aucun routage final et aucun objet Max final ne sont valides.

### Fiche 22

Fait :

La presente action suit le cadrage operationnel : elle tente seulement de verifier le chargement et les six points minimaux, puis s'arrete au blocage environnemental.

Decision :

Le blocage Max local n'autorise pas a etendre le patch, creer une UI, ajouter un mapping, ajouter un asset, ajouter une sample bank ou fixer un seuil numerique.

### Fiche 21

Fait :

La presente action ne transforme pas l'autorisation avec reserves en validation musicale, artistique, technique ou architecturale.

Decision :

Le passage reste avec reserves. Le chargement reel reste non acquis.

### Fiche 20

Fait :

`MIN-DID-PC` reste formule par responsabilites minimales et non par objets Max finaux.

Fait :

Les nombres presents dans le patch designent seulement des canaux audio Max. Ils ne constituent pas des seuils acoustiques, limites musicales ou criteres de decision.

Decision :

P0/P1, `direct/safe`, protection et `MIN-DID-PC` restent hors familles lourdes.

## 6. Limites du test

Limites :

- Max standalone n'a pas ete trouve localement ;
- le fichier n'a pas ete ouvert dans Max ;
- aucun message de console Max n'a ete observe ;
- aucun comportement de chargement Max n'est valide ;
- aucun test DSP n'a ete realise ;
- aucun test audio reel didgeridoo / PC n'a ete realise ;
- aucune latence, stabilite, protection, surcharge, release ou jouabilite n'est validee ;
- aucune validation musicale, artistique, technique, architecturale ou niveau 6 n'est acquise ;
- la lecture JSON ne vaut pas chargement Max ;
- le patch reste un contenant minimal provisoire.

## 7. Ce qui reste non valide

Non valide :

- chargement reel dans Max standalone ;
- ouverture sans erreur dans Max ;
- console Max sans erreur ;
- comportement DSP ;
- presence live didgeridoo / PC en situation ;
- sortie audio reelle ;
- jugement musical ;
- decision artistique ;
- validation technique ;
- validation architecturale ;
- validation niveau 6 ;
- routage final ;
- nomenclature d'objets Max finaux ;
- mapping ;
- UI ;
- automation expressive ;
- protection critique finale ;
- seuils acoustiques ;
- source preparee ;
- assets ;
- sample bank ;
- familles lourdes dans `P0/P1`, `direct/safe`, protection ou `MIN-DID-PC`.

Decision :

La presente trace ne transforme pas une sortie d'agent en preuve et ne remplace pas la validation finale de Yohan.

## 8. Prochaine action exacte

Decision :

Prochaine action exacte :

```text
relancer, sur un poste ou Max standalone est installe et lancable proprement,
l'ouverture de
projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat
dans Max standalone, verifier uniquement le chargement reel, la presence live
didgeridoo / PC prevue, direct/safe, sortie simple, branches optionnelles
absentes, fallback minimal et SIG interne, puis documenter le resultat sans
ajouter UI, mapping, asset, sample bank, seuil numerique, objet Max final,
routage final, architecture validee, niveau 6 ou famille lourde.
```

Condition d'arret :

Arreter si cette reprise exige une UI, un mapping, un asset, une sample bank, un seuil numerique, une famille lourde, un objet Max final, un routage final, une architecture validee, un niveau 6, une matrice niveau 6, une modification de `reprise/` ou une modification de l'audit niveau 6 source.
