# DECISION_SAUT_TEST_NEGATIF_ET_PASSAGE_P0_ECOUTE_01

Statut : decision strategique post-validateur documentaire P0.
Date : 2026-07-02.
Perimetre : decision de phase ; sans test negatif produit maintenant, sans patch Max, sans modification du patch 01, sans lancement Max, sans Ableton, sans audio, sans DSP, sans UI, sans mapping, sans asset, sans sample bank, sans seuil numerique, sans objet Max final, sans routage final et sans architecture validee.

## 1. Objet

Ce document applique la prochaine action post-validateur :

```text
decider si un test negatif documentaire du validateur est utile,
ou synchroniser la suite de pilotage si necessaire.
```

Il ne prolonge pas mecaniquement la chaine JSON.
Il decide si cette chaine doit continuer maintenant ou si elle doit etre reportee pour permettre une premiere information sonore reelle.

## 2. Verdict

Decision :

Ne pas produire maintenant de test negatif documentaire du validateur P0.

Decision :

Reporter ce test negatif dans la pile d'hygiene outillage. Il pourra redevenir utile si le validateur devient un point de CI, de packaging, de generation automatique ou de revue systematique.

Decision :

La prochaine action principale devient :

```text
P0-ECOUTE-01
```

Definition bornee :

```text
reconnaissance locale courte, non validante, pour savoir si une situation
entree audio / direct perceptible / sortie simple nommee / safe ou bypass possible
peut exister sans transformer le patch 01 en architecture.
```

## 3. Sources internes consultees

Fait :

- `docs/START_HERE_VESPERARE.md`
- `docs/reprise/05_NEXT_ACTIONS.md`
- `docs/PROJECT_ROADMAP_VESPERARE.md`
- `docs/specs/CADRAGE_NOYAU_SYSTEME_DIDGERIDOO_PC_POST_HARNESS.md`
- `docs/specs/PRE_SPEC_NOYAU_P0_P1_OBSERVABLE.md`
- `docs/specs/CONTRAT_P0_DIRECT_SAFE_SORTIE.md`
- `docs/specs/CONTRAT_TECHNIQUE_OBSERVABLE_P0_DIRECT_SAFE_SORTIE.md`
- `docs/specs/DECISION_PASSAGE_VALIDATION_MACHINE_DOCUMENTAIRE_P0_DIRECT_SAFE_SORTIE.md`
- `tools/vesperare-harness/schemas/p0-direct-safe-sortie.observable.schema.json`
- `tools/vesperare-harness/examples/p0-direct-safe-sortie.observable.sample.json`
- `tools/vesperare-harness/powershell/Test-VesperareP0DirectSafeSortieObservable.ps1`
- `AGENTS.md`

Limite :

Ce corpus suffit pour refuser ou reporter le test negatif documentaire.
Il ne suffit pas a valider Max, l'audio, le DSP, la musicalite, le patch 01 ou l'architecture.

## 4. Sources externes ciblees

| Source | Enseignement utile | Effet sur la decision |
|---|---|---|
| Wessel & Wright, "Problems and Prospects for Intimate Musical Control of Computers", NIME 2001, https://www.nime.org/proc/nime2001_wessel/index.html | Les instruments informatiques de performance demandent une relation geste/resultat claire, une prise en main initiale possible, et une latence minimale et peu variable. | Le prochain risque a reduire est la boucle jouable, pas une preuve negative JSON. |
| Orio, Schnell & Wanderley, "Input Devices for Musical Expression: Borrowing Tools from HCI", https://arxiv.org/abs/2010.01571 | L'evaluation d'interfaces musicales gagne a passer par des taches musicales situees, pas seulement par des tests abstraits. | La tache pertinente devient entendre/observer le triplet direct/safe/sortie en situation minimale. |
| Ableton, "How Latency Works", https://help.ableton.com/hc/en-us/articles/360010545559-How-Latency-Works | La latence vient de la conversion, des buffers, du driver, de l'OS et des traitements ; buffers plus petits reduisent la latence mais augmentent la charge et les dropouts. | Latence, CPU, driver et monitoring deviennent des risques plus reels que le JSON negatif. |
| Ableton, "How to reduce latency while monitoring", https://help.ableton.com/hc/en-us/articles/360011924559-How-to-reduce-latency-while-monitoring | Le monitoring direct ou une reduction de latence au monitoring peuvent etre preferables quand une source live doit etre entendue clairement. | `P0-DIRECT` doit etre eprouve comme retour perceptible, pas seulement comme etat documentaire. |
| Cycling '74, "Audio Status Window", https://docs.cycling74.com/max8/vignettes/audio_status | Max expose driver, sampling rate, I/O vector size et signal vector size comme parametres concrets de l'audio live. | La premiere reconnaissance doit regarder les conditions audio reelles sans les confondre avec validation musicale. |
| Cycling '74, references `adc~` et `dac~`, https://docs.cycling74.com/reference/adc~/ et https://docs.cycling74.com/reference/dac~/ | `adc~` lit les entrees audio materiel ; `dac~` envoie le signal vers les sorties audio et depend du mapping logique/physique. | La question minimale devient bien entree audio -> sortie nommee, sans choisir encore de routage final. |

Inference :

Ces sources ne commandent pas une architecture. Elles changent seulement la priorite : le projet a plus a apprendre maintenant d'une reconnaissance audio locale et courte que d'un nouveau test de robustesse documentaire.

## 5. Pourquoi le test negatif est reporte

Fait :

Le validateur documentaire existe et un exemple positif a ete valide localement.

Inference :

Un test negatif verifierait surtout que le script refuse un JSON volontairement invalide. Cette preuve serait utile pour durcir un outil critique, mais elle ne reduit presque pas les risques principaux actuels :

- latence ;
- monitoring direct ;
- sortie simple audible ;
- safe ou bypass perceptible ;
- risque de feedback ou masquage ;
- glissement du patch 01 vers une architecture non decidee ;
- confusion entre observabilite technique et preuve musicale.

Decision :

Ne pas depenser la prochaine action principale sur ce test negatif.

## 6. Definition de P0-ECOUTE-01

`P0-ECOUTE-01` est une reconnaissance locale, courte et non validante.

Objectif :

```text
savoir si une premiere situation sonore P0 est reconnaissable,
pas construire le systeme,
pas valider le patch,
pas valider la musique.
```

Questions admises :

- le direct est-il perceptible ?
- une sortie simple est-elle nommee et audible ?
- un safe, mute ou bypass minimal est-il possible ou necessaire ?
- la latence ressentie bloque-t-elle le jeu ?
- un risque immediat de feedback, masquage, saturation ou fatigue apparait-il ?
- le patch 01 peut-il rester intact ?

Questions interdites dans cette action :

- quel objet Max final choisir ?
- quel routage final choisir ?
- quel mapping choisir ?
- quelle UI construire ?
- quel seuil numerique fixer ?
- quelle architecture valider ?
- le noyau musical est-il valide ?

## 7. Fichiers autorises et interdits

Autorise maintenant :

- synchroniser le pilotage pour pointer vers cette decision ;
- preparer un protocole court `P0-ECOUTE-01` si les conditions locales ne sont pas assez claires.

Autorise plus tard, seulement pendant la reconnaissance locale :

- notes locales de session ;
- patch temporaire scratch non commite si le patch 01 ne doit pas etre touche ;
- trace courte apres coup si une information utile est apprise.

Interdit maintenant :

- creer un test negatif documentaire ;
- creer ou modifier un patch Max ;
- modifier `projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat` ;
- lancer Max depuis cette action documentaire ;
- lancer Ableton ;
- produire UI, mapping, asset, sample bank, seuil numerique, routage final ou objet Max final ;
- transformer un lancement Max, un direct audible ou un log en validation musicale.

## 8. Conditions d'arret

Arreter et requalifier si la suite tente de :

- faire du test negatif JSON la prochaine grande phase ;
- creer une architecture Max finale ;
- modifier lourdement ou silencieusement le patch 01 ;
- introduire `gen~`, `poly~`, `buffer~`, FFT, corpus, ML, external, plugin ou famille lourde ;
- choisir un mapping, une UI, un seuil ou un routage final ;
- presenter `P0-ECOUTE-01` comme validation audio, DSP, musicale ou architecturale ;
- demander a Yohan de valider une architecture non instruite.

## 9. Prochaine action minimale

Recommandation :

Realiser ou preparer localement :

```text
P0-ECOUTE-01
```

Sortie attendue :

- verdict court : chemin audio P0 reconnaissable / non reconnaissable / bloque ;
- observations : direct, sortie, safe/bypass, latence, feedback/masquage ;
- liste des obstacles concrets ;
- aucune conclusion musicale generale ;
- aucune architecture par glissement.

Limite :

Si une preparation de protocole est necessaire, elle doit tenir en une page utile et ne pas redevenir une nouvelle phase documentaire.
