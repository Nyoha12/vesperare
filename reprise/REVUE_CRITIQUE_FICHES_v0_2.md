# REVUE CRITIQUE - FICHES BS/BG v0.2

Projet : Vesperare
Statut : revue critique avant consolidation v0.3
Date : 2026-06-20

Fichiers relus :
- BESOINS_STYLISTIQUES_v0_2.md
- BESOINS_GENERATION_v0_2.md

But :

Identifier les doublons, formulations trop larges, besoins mal classes, hypotheses prematurees et elements de performance live a garder separes.

## 1. Verdict

Les fiches v0.2 sont utilisables comme extraction, mais elles ne sont pas encore assez strictes comme cahier de besoins.

Problemes principaux :

1. Certaines formulations stylistiques contiennent deja des consequences generatives ou live.
2. Certaines formulations generatives contiennent des elements de verification ou de performance future.
3. Les inspirations secondaires sont toutes marquees "confirme", mais il faut distinguer "confirme comme reservoir de phenomenes" et "confirme comme besoin stylistique central".
4. Les codes et modes risquent encore d'etre lus comme modules ou controles.
5. Les fiches melangent parfois besoin, exemples, risques et garde-fous au meme niveau.

## 2. Doublons utiles mais a clarifier

### D-01. Techno socle / techno suspendue

Doublon :

- BS-01 : techno comme socle recuperable.
- BS-07 : techno suspendue longue.
- BG-03 : cadres techno sans timbres techno.
- BG-05 : techno suspendue longue.

Decision :

Garder le doublon car il correspond a deux niveaux :

- stylistique : la techno peut etre absente en surface mais recuperable ;
- generatif : produire des scenes suspendues avec conditions de retour.

Correction :

Dans v0.3, BS-01 doit rester principe global, BS-07 doit decrire le regime de suspension.

### D-02. Espace / halo

Doublon :

- BS-05 : espace comme pression active.
- BS-06 : halo controle.
- BG-13 : espace et halo.

Decision :

Garder separe.

Raison :

- l'espace est une dimension de scene ;
- le halo est une morphologie sonore et spectrale ;
- la generation doit gerer les deux ensemble.

Correction :

BS-05 doit eviter les mentions "live" et rester perceptif.
BS-06 doit parler de halo comme besoin stylistique.
BG-13 doit porter les regles de reduction/adaptation.

### D-03. Didgeridoo stylistique / didgeridoo generation

Doublon :

- BS-10 : didgeridoo libre et accommodable.
- BG-10 : coexistence didgeridoo/systeme.

Decision :

Garder les deux.

Correction :

- BS-10 : droit stylistique du didgeridoo a rester libre.
- BG-10 : besoin de generation autour de cette liberte.
- Les details de performance live restent hors fiche.

## 3. Formulations trop larges

### F-01. "Tout peut etre present, absent, latent..."

Utile mais trop general.

Correction :

Ajouter une condition :

```text
Tout element peut etre absent ou present, mais son activation doit toujours etre justifiee par une fonction musicale situee.
```

### F-02. "La generation doit pouvoir..."

Trop proche d'une specification technique.

Correction :

Remplacer par :

```text
Besoin musical de generation :
Permettre d'obtenir...
```

ou :

```text
La generation vise a rendre possible...
```

### F-03. "Modes" et codes

Risque :

`DID`, `PA`, `PR`, `M`, `T`, `TS` peuvent etre pris pour des modules.

Correction :

Dans v0.3, les appeler explicitement :

```text
descripteurs de conception
```

et non :

```text
modes techniques
```

## 4. Besoins qui doivent rester hypotheses

### H-01. Verification situee

BG-18 est utile, mais ce n'est pas un besoin de generation.

Decision :

Sortir BG-18 de la fiche generation v0.3 et le placer en section "a traiter plus tard : verification situee".

### H-02. Relation au live

Plusieurs besoins mentionnent "live".

Decision :

Garder seulement les impacts musicaux generaux :

- relation au didgeridoo ;
- coexistence avec instrument ;
- preservation de l'autonomie expressive.

Reporter a plus tard :

- mapping ;
- interaction live precise ;
- analyse temps reel ;
- controle manuel/autonome ;
- interface.

### H-03. Seuils exacts

Les seuils de densite, de halo, de sub, de transgression, de mutation melodique ne sont pas decides.

Decision :

Les garder comme descripteurs qualitatifs.

## 5. Separation stricte BS / BG

### Stylistique doit dire

- quelle sensation est recherchee ;
- quelles inspirations sont retenues ;
- ce qui est exclu ;
- comment eviter le cliche ;
- quels signes auditifs indiquent la reussite.

### Generation doit dire

- quels objets musicaux doivent pouvoir exister ;
- quels descripteurs doivent les caracteriser ;
- quelles conditions d'apparition/disparition ;
- quels garde-fous generatifs ;
- quelles familles d'objets sont necessaires.

### Performance live doit rester separe

Reporter :

- mapping ;
- interface ;
- scenes jouables ;
- controles contextuels ;
- capteurs/analyse temps reel ;
- ergonomie live ;
- verification pratique.

## 6. Corrections a appliquer en v0.3

### BS v0.3

Corrections :

1. Ajouter statuts : `central`, `transversal`, `reservoir de phenomenes`, `garde-fou`.
2. Remplacer les mentions live trop techniques par "instrument / source live / presence instrumentale".
3. Marquer dubstep, sound system, jazz, trance, acid comme reservoirs confirmes, non centres stylistiques permanents.
4. Ajouter une section finale "elements reportes a plus tard".
5. Garder BS-21 anti-collage comme garde-fou transversal.

### BG v0.3

Corrections :

1. Remplacer "la generation doit" par formulations de besoin musical.
2. Sortir BG-18 du coeur de generation et le mettre en annexe "verification future".
3. Renommer BG-10 pour eviter "systeme" trop technique : "coexistence avec didgeridoo".
4. Marquer les codes comme descripteurs de conception.
5. Ajouter une colonne implicite : apparition / transformation / disparition.
6. Distinguer objets generes, descripteurs, garde-fous, hypotheses reportees.

## 7. Decision

Produire :

- BESOINS_STYLISTIQUES_v0_3.md
- BESOINS_GENERATION_v0_3.md

Sans ecraser les v0.2.
