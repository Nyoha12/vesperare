# AUDIT REPRISE - DETTE DOCUMENTAIRE ET POINT DE REPRISE VESPERARE v0.1

Projet : Vesperare
Date : 2026-06-23
Statut : audit de reprise apres risque de progression automatique

## 0. Decision courte

La suite automatique vers :

```text
SPECIFICATION_TRANSACTIONS_RELEASE_ROLLBACK_COMMANDES_ETATS_MAX_STANDALONE_VESPERARE_v0_1.md
```

est suspendue tant que les dettes ci-dessous ne sont pas explicitement classees.

Le projet ne doit pas etre repris depuis zero.

Le point de reprise correct est :

```text
apres AUDIT_COMPATIBILITE_SPECIFICATION_ARCHITECTURE_OPERATIONNELLE_ABSTRAITE_MAX_STANDALONE_AVEC_CORPUS_v0_1.md
mais avant toute nouvelle fiche operationnelle.
```

Condition :

```text
creer une lecture de dette active :
ce qui est resolu ;
ce qui est non bloquant ;
ce qui reste bloquant ;
ce qui est historique ou supplante.
```

## 1. Methode d'audit

Lecture effectuee dans l'ordre de `INDEX_ACTIF_VESPERARE_CONCEPTION.md`.

Marqueurs cherches :

```text
a preciser
a corriger
a consolider
a traiter
a reprendre
questions restantes
corrections a appliquer
fragilites
risques residuels
non resolu
bloquant
prochaine action
suivi
```

Regle de tri :

```text
un marqueur ancien n'est pas automatiquement une dette active.
il devient dette active seulement s'il n'est pas absorbe par un fichier ulterieur,
ou s'il conditionne explicitement la fiche suivante.
```

## 2. Plus anciens marqueurs trouves et statut

### 2.1. `INTENTION_INITIALE_RECONSTRUITE_v0_2.md`

Marqueur :

```text
questions restantes apres correction
```

Questions :

- generation melodique : grave, partiels, voix, acid naturalise, motifs techno ;
- motifs rythmiques : techno, polytexture Keita, instruments live, hybride ;
- sons generes : naturalises ou electroniques reconnaissables ;
- configurations : sons, motifs, roles, scenes, controles, couches.

Statut :

```text
absorbe.
```

Absorption :

- `QUESTIONS_DE_PRECISION_PRIORITAIRES_v0_1.md`
- `ARBITRAGES_QUESTIONS_PRIORITAIRES_v0_1.md`
- `BESOINS_GENERATION_v0_4.md`
- `SPECIFICATION_BLOC_GENERATION_SONORE_MOTIFS_RYTHMIQUES_MELODIQUES_v0_1.md`
- `SPECIFICATION_CONTROLES_LIVE_ET_MODES_SCENE_v0_1.md`

Conclusion :

```text
pas un point de retour obligatoire.
```

### 2.2. `AUDIT_WEB_CARACTERISATION_ELEMENTS_v0_1.md`

Marqueurs :

```text
corrections prioritaires
questions restantes apres recherche
```

Questions :

- seuil acid naturalise / 303 ;
- duree de techno suspendue ;
- regimes vocaux ;
- tension jazz ;
- niveau sound-system ;
- rugissement gong ;
- densite de polytexture.

Statut :

```text
majoritairement absorbe, mais a surveiller.
```

Absorption :

- acid, techno suspendue, voix, sound-system, gong, polytexture :
  absorbes par arbitrages, besoins v0.4, generation, scenes, grave/gong/sub.
- jazz / Keita Ogawa :
  absorbe conceptuellement, mais la tracabilite a deja montre un risque de dilution.

Point important :

```text
le probleme n'est pas un manque de donnees,
mais le risque que les inspirations concretes deviennent invisibles
dans les familles GEN, OP, PATH ou MSG.
```

Conclusion :

```text
pas un point de retour,
mais obligation permanente de tracabilite inspiration -> fonction.
```

### 2.3. `QUESTIONS_DE_PRECISION_PRIORITAIRES_v0_1.md`

Marqueur :

```text
ne pas passer a une nouvelle fiche longue avant traitement des P1.
```

Statut :

```text
absorbe.
```

Absorption :

- blocs A, B, C, D traites dans `ARBITRAGES_QUESTIONS_PRIORITAIRES_v0_1.md` ;
- bloc E traite dans `REVERBS_ESPACE_REACTIF_v0_2.md` ;
- corrections synchronisees dans besoins v0.4 et caracterisation v0.4.

Conclusion :

```text
pas un point de retour.
```

### 2.4. `AUDIT_INTERNE_REVERBS_ESPACE_v0_1.md`

Marqueur :

```text
CORR-1 a CORR-10 a integrer dans v0.2.
```

Statut :

```text
absorbe.
```

Absorption :

- `REVERBS_ESPACE_REACTIF_v0_2.md`
- `AUDIT_SYNCHRONISATION_REVERBS_AUTRES_DOCS_v0_1.md`
- `BESOINS_GENERATION_v0_4.md`
- `BESOINS_STYLISTIQUES_v0_4.md`
- `CARACTERISATION_DETAILLEE_ELEMENTS_v0_4.md`
- `AUDIT_COMPATIBILITE_CORPUS_ACTIF_v0_1.md`

Conclusion :

```text
pas un point de retour.
```

### 2.5. `SPECIFICATION_SCENES_PRIORITAIRES_ET_MACROS_v0_1.md`

Marqueurs :

```text
questions restantes par scene
```

Statut :

```text
absorbe en defaults provisoires ou reporte non bloquant.
```

Absorption :

- `AUDIT_JOUABILITE_CONCEPTUELLE_SCENES_MACROS_v0_1.md`
- `SPECIFICATION_NOYAU_JOUABLE_SCENES_COUCHES_v0_1.md`

Conclusion :

```text
pas un point de retour,
mais les questions doivent rester disponibles dans un registre vivant.
```

### 2.6. `AUDIT_TRACABILITE_CAHIER_CHARGES_GENERATIF_STYLISTIQUE_v0_1.md`

Marqueur :

```text
Keita Ogawa, jazz, trance, dub/sound-system, dubstep devenus moins visibles.
```

Statut :

```text
absorbe mais critique.
```

Absorption :

- ajout de suivi de tracabilite dans la fiche generation ;
- architecture fonctionnelle impose `GEN-PACKET` avec inspiration, phenomene retenu,
  fonction Vesperare, role musical, origine, regime, autonomie, naturalisation,
  reconnaissance, apparition, transformation, retrait, risques et garde-fous.

Risque residuel :

```text
les couches techniques recentes peuvent de nouveau masquer les inspirations.
```

Conclusion :

```text
pas un point de retour,
mais chaque future fiche doit conserver une colonne ou un champ
inspiration / phenomene / fonction.
```

## 3. Premier vrai probleme structurel

### 3.1. Ancienne chaine Max for Live / RNBO encore trop presente dans l'index actif

Fichiers concernes :

```text
SPECIFICATION_ARCHITECTURE_TECHNIQUE_ABSTRAITE_PRE_MAX_FOR_LIVE_VESPERARE_v0_1.md
AUDIT_COMPATIBILITE_ARCHITECTURE_TECHNIQUE_ABSTRAITE_PRE_MAX_FOR_LIVE_AVEC_CORPUS_v0_1.md
SPECIFICATION_ARCHITECTURE_MAX_FOR_LIVE_CONCEPTUELLE_VESPERARE_v0_1.md
AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_FOR_LIVE_CONCEPTUELLE_AVEC_CORPUS_v0_1.md
SPECIFICATION_ARCHITECTURE_MAX_FOR_LIVE_DETAILLEE_NIVEAU_1_VESPERARE_v0_1.md
AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_FOR_LIVE_DETAILLEE_NIVEAU_1_AVEC_CORPUS_v0_1.md
SPECIFICATION_ARCHITECTURE_MAX_FOR_LIVE_DETAILLEE_NIVEAU_2_MODULES_MESSAGES_VESPERARE_v0_1.md
AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_FOR_LIVE_DETAILLEE_NIVEAU_2_MODULES_MESSAGES_AVEC_CORPUS_v0_1.md
SPECIFICATION_ARCHITECTURE_MAX_FOR_LIVE_DETAILLEE_NIVEAU_3_TRADUCTION_SESSION_ABSTRAITE_VESPERARE_v0_1.md
AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_FOR_LIVE_DETAILLEE_NIVEAU_3_TRADUCTION_SESSION_ABSTRAITE_AVEC_CORPUS_v0_1.md
ARBITRAGE_RUNTIME_HOST_PORTABILITE_LATENCE_VESPERARE_v0_1.md
SPECIFICATION_ARCHITECTURE_RUNTIME_PORTABLE_MAX_RNBO_M4L_VESPERARE_v0_1.md
AUDIT_COMPATIBILITE_ARCHITECTURE_RUNTIME_PORTABLE_MAX_RNBO_M4L_AVEC_CORPUS_v0_1.md
SPECIFICATION_BUDGET_LATENCE_CHARGE_DEGRADATION_VESPERARE_v0_1.md
AUDIT_COMPATIBILITE_BUDGET_LATENCE_CHARGE_DEGRADATION_AVEC_CORPUS_v0_1.md
```

Probleme :

```text
ces fichiers ne doivent plus etre lus comme trajectoire active principale.
ils sont historiques, comparatifs ou supplantés par la decision Max standalone.
```

La decision active est :

```text
DECISION_RUNTIME_MAX_STANDALONE_LATENCE_SANS_COMPROMIS_VESPERARE_v0_1.md
```

Correction necessaire :

```text
l'index doit separer plus nettement :
1. documents actifs normatifs ;
2. documents actifs de trace historique ;
3. documents sources / memoire.
```

Conclusion :

```text
ceci est la plus ancienne dette structurelle encore dangereuse.
elle ne force pas a reecrire tous les contenus,
mais elle force a corriger la lecture de l'index avant de continuer.
```

## 4. Dette active au point actuel

Dernier audit :

```text
AUDIT_COMPATIBILITE_SPECIFICATION_ARCHITECTURE_OPERATIONNELLE_ABSTRAITE_MAX_STANDALONE_AVEC_CORPUS_v0_1.md
```

Corrections obligatoires :

```text
CORR-OP-1 : OP-* = centres de responsabilite, pas patchers Max.
CORR-OP-2 : PATH-* = familles de flux, pas routages finaux.
CORR-OP-3 : OP-LIVE-COMMAND = couche de commandes, pas UI.
CORR-OP-4 : OP-STATE-HUB = synthese de lecture, pas mega-etat.
CORR-OP-5 : OP-ANA-FAST informe ; OP-DEC-FAST decide.
CORR-OP-6 : transactions, releases et rollback avant traduction Max plus concrete.
CORR-OP-7 : GEN-HAL reste matiere generative rattachee a GEN/HAL.
CORR-OP-8 : MIN-DID-PC = responsabilites minimales, pas accumulation de modules.
CORR-OP-9 : signalisation = information de jouabilite, pas UI finale.
CORR-OP-10 : limitation P2 ou action P0/P1 sensible doit rester signalable.
```

Statut :

```text
actif.
```

Ce qui bloque :

```text
ne pas avancer vers une traduction Max plus concrete
tant que transactions / releases / rollback ne sont pas specifies.
```

Ce qui ne bloque pas :

```text
ne pas reouvrir tout le style, toute la generation ou toute la reverb.
```

## 5. Questions vivantes a ne pas perdre

Ces questions ne doivent pas bloquer toute progression, mais elles ne doivent pas etre effacees :

```text
Q-LIVE-1 : granularite de signalisation supportable en club.
Q-LIVE-2 : controles P2 immediats en setup didgeridoo seul.
Q-GRV-1 : nuances internes de graves libres.
Q-HAL-1 : maintien anti-retrait global ou par source/scene.
Q-GEN-1 : symptome d'autonomie excessive d'un motif.
Q-SPC-1 : exploitation de salle reelle vs prudence.
Q-TRANS-1 : signaux visibles pendant transgression.
Q-JAZZ-KEITA-1 : niveau de detail necessaire avant traduction algorithmique.
Q-REV-REL-1 : releases espace / halo / freeze.
Q-GEN-HAL-1 : GEN-HAL sous-famille ou owner autonome.
Q-MIN-1 : noyau minimal sans accumulation de modules.
```

Action :

```text
ces questions doivent etre regroupees dans un registre vivant avant ou pendant
la prochaine fiche, mais pas traitees comme invitations a tout recommencer.
```

## 6. Point de reprise concret

Ordre correct maintenant :

```text
1. corriger l'index actif pour marquer la suspension de la suite automatique ;
2. marquer les anciennes fiches Max for Live / RNBO comme historiques ou supplantees ;
3. creer ou maintenir un registre court des questions vivantes ;
4. reprendre seulement ensuite la fiche transactions / release / rollback ;
5. auditer cette fiche avant toute couche plus concrete.
```

Interdits methodologiques :

```text
ne pas creer la prochaine fiche parce que l'index la nomme ;
ne pas relire toutes les questions anciennes comme bloquees ;
ne pas ignorer une correction "sous reserve" ;
ne pas transformer une question reportee en decision implicite ;
ne pas convertir les anciennes fiches M4L en contraintes Max standalone ;
ne pas effacer les inspirations concretes derriere les acronymes techniques.
```

## 7. Verdict

Le projet n'est pas a jeter.

Mais le corpus doit etre repris avec une regle plus stricte :

```text
chaque "ok continue" signifie :
continuer selon les preconditions documentees,
pas avancer au prochain nom de fichier disponible.
```

Le prochain travail n'est donc pas encore la fiche transactions.

Le prochain travail est :

```text
mise a jour de l'index + registre vivant minimal,
puis seulement specification transactions / release / rollback.
```
