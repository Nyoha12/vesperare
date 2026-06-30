# AUDIT SYNCHRONISATION REVERBS / AUTRES DOCUMENTS v0.1

Date : 2026-06-21

Statut : audit de synchronisation documentaire.

Perimetre :

- `REVERBS_ESPACE_REACTIF_v0_2.md` ;
- `BESOINS_STYLISTIQUES_v0_3.md` ;
- `BESOINS_GENERATION_v0_3.md` ;
- `CARACTERISATION_DETAILLEE_ELEMENTS_v0_3.md` ;
- index actif.

But :

- verifier si les autres documents sont encore compatibles avec la fiche reverb/espace v0.2 ;
- identifier les passages devenus trop simples, trop anciens ou trop binaires ;
- eviter une refonte inutile des documents stables ;
- preparer les mises a jour strictement necessaires avant la suite.

Hors perimetre :

- architecture Max for Live ;
- choix de devices, plugins ou routings ;
- seuils numeriques ;
- reecriture exhaustive des inspirations ;
- protocoles d'essai ou validation par experimentation.

---

## 1. Verdict global

Les autres documents ne sont pas obsoletes.

Ils restent utiles et necessaires, mais ils ne sont pas tous au meme niveau de precision que `REVERBS_ESPACE_REACTIF_v0_2.md`.

Le probleme principal n'est pas une contradiction artistique majeure.

Le probleme principal est une difference de granularite :

```text
Anciennes fiches :
limiter / reduire / couper / eviter

Fiche reverb v0.2 :
choisir / verrouiller / adapter / proteger / signaler / couper seulement si necessaire
```

Conclusion :

- ne pas reecrire tout le corpus ;
- ne pas passer directement a la suite sans synchronisation ;
- corriger en priorite les zones ou la generation dependra de l'espace, du halo, du grave, des queues et de la naturalisation.

---

## 2. Documents par statut

### 2.1. Intention initiale

Statut : stable.

Action :

- aucune mise a jour necessaire maintenant.

Raison :

- document d'orientation ;
- il ne porte pas de regles fines de halo, reverb ou generation ;
- il ne doit pas absorber les details techniques recents.

### 2.2. Besoins stylistiques v0.3

Statut : valide mais a synchroniser localement.

Zones touchees :

- `BS-08 - Espace et halo comme fonctions` ;
- passages sur ambient decoratif ;
- passages sur naturalisation ;
- risques de monopoles perceptifs ;
- relation didgeridoo / grave / espace.

Verdict :

- le fond est correct ;
- certaines formulations sont trop restrictives apres `REVERBS_ESPACE_REACTIF_v0_2.md`.

Mise a jour recommandee :

- creer `BESOINS_STYLISTIQUES_v0_4.md` apres correction ciblee ;
- ne pas reprendre tous les styles ;
- remplacer les garde-fous binaires par une logique de fonction forte, choix live explicite et protection critique.

### 2.3. Besoins generation v0.3

Statut : document le plus impacte.

Zones touchees :

- `BG-10 - Grave, sub et masse` ;
- `BG-13 - Espace et halo generatifs` ;
- `BG-16 - Scene auditive generative` ;
- `BG-17 - Monopoles perceptifs` ;
- `BG-18 - Anti-glissement generatif`.

Verdict :

- c'est le premier document a mettre a jour avant de continuer le bloc generation ;
- plusieurs regles sont encore formulees comme des interdictions ou reductions automatiques ;
- il faut integrer les modes reverb/espace v0.2 comme conditions generatives.

Mise a jour recommandee :

- creer `BESOINS_GENERATION_v0_4.md` ;
- incorporer les modes Auto / Lock / Force / Cut / Momentary / Safe force ;
- incorporer les modes de grave spatial Auto-Pro / Off / Trace / Corps / Pression / Bloom / Libre ;
- expliciter les choix de porteur de grave ;
- expliciter les conditions ou espace/halo deviennent fonction principale.

### 2.4. Caracterisation detaillee elements v0.3

Statut : globalement stable, a annoter plus tard.

Zones touchees :

- `ET-03 - Espace / halo` ;
- `CE-12 - Didgeridoo` ;
- `CE-13 - Gong / bols / cloches / metaux` ;
- `FC-06 - Espace, halo, sound system`.

Verdict :

- la grille de caracterisation est encore pertinente ;
- elle doit rester une fiche de caracterisation, pas devenir une fiche reverb bis ;
- quelques champs devront etre ajoutes ou relies aux nouveaux concepts.

Mise a jour recommandee :

- attendre apres `BESOINS_GENERATION_v0_4` ;
- eventuellement produire `CARACTERISATION_DETAILLEE_ELEMENTS_v0_4.md` avec renvois aux mondes spatiaux, Halo Lock, grave spatial et espaces longs decides.

### 2.5. Arbitrages et audits precedents

Statut : memoire.

Documents concernes :

- `ARBITRAGES_QUESTIONS_PRIORITAIRES_v0_1.md` ;
- `AUDIT_WEB_CARACTERISATION_ELEMENTS_v0_1.md` ;
- `AUDIT_INTERNE_REVERBS_ESPACE_v0_1.md`.

Action :

- ne pas reecrire ;
- conserver comme trace ;
- utiliser seulement pour verifier une nuance ou une decision.

---

## 3. Ecarts detectes

### 3.1. Ecart A - "Pas d'effet permanent" vs espaces longs acceptes

Ancienne logique :

```text
L'espace et le halo doivent etre des fonctions musicales actives, pas des effets permanents.
halo long limite a certaines fonctions.
pas de reverb large permanente.
```

Probleme :

- la phrase reste vraie si elle veut dire "pas d'effet automatique non voulu" ;
- elle devient trop restrictive si elle interdit un espace tres long, un halo stable ou un decor decide.

Resolution v0.2 :

```text
Un halo, une grande reverb ou un espace tres long peuvent durer longtemps
si leur fonction est decidee, perceptible et compatible avec les priorites P0-P5.
```

Nouvelle nuance a integrer :

- permanent automatique : non ;
- long decide : oui ;
- decor impose par l'outil : non ;
- decor choisi comme monde : oui ;
- retrait long du corps : oui si voulu ;
- perte du corps accidentelle : non.

Documents a corriger :

- `BESOINS_STYLISTIQUES_v0_3.md` ;
- `BESOINS_GENERATION_v0_3.md`.

### 3.2. Ecart B - "Halo reduit" vs Halo Lock

Ancienne logique :

```text
densite haute -> halo reduit ou deplace
sustain instrumental fort -> halo generatif reduit
attaque principale -> halo coupe, deplace ou reduit
```

Probleme :

- ces regles sont utiles comme comportement Auto-Pro ordinaire ;
- elles deviennent fausses si le halo est un choix live explicite ou une fonction principale.

Resolution v0.2 :

```text
Auto-Pro peut adapter un halo.
Il ne doit pas supprimer un Halo Lock sauf P0 ou P1.
Avant de couper : filtrer, ducker, reduire decay, deplacer spectralement, garder une trace.
```

Nouvelle nuance a integrer :

- halo faible : Auto-Pro peut le reduire ;
- halo de scene : scene decide ;
- Halo Lock : maintien de fonction ;
- Halo Force : choix live fort ;
- Halo Cut : retrait volontaire ;
- coupe automatique seulement en protection critique ou mix vitale.

Document a corriger en priorite :

- `BESOINS_GENERATION_v0_3.md`.

### 3.3. Ecart C - "Une source porte le vrai sub" vs options live de grave

Ancienne logique :

```text
Une seule source doit porter le vrai sub a un moment donne.
```

Probleme :

- la regle est juste comme garde-fou de lisibilite ;
- elle ne decrit pas encore les options validees par l'utilisateur.

Options utilisateur a integrer :

```text
1. Le didgeridoo guide harmoniquement ce qui est genere.
2. Le grave soutient discretement.
3. Les harmoniques du didgeridoo en conflit sont adaptees en hauteur si necessaire.
4. Le grave se retire quand le conflit devient deletere.
5. Graves libres.
```

Resolution documentaire :

La regle doit devenir :

```text
Par defaut, une seule fonction porte le vrai sub lisible.
Mais plusieurs modes live doivent permettre partage, retrait, soutien, guidage harmonique,
adaptation des harmoniques ou liberte volontaire.
```

Documents a corriger :

- `BESOINS_GENERATION_v0_3.md` ;
- eventuellement `BESOINS_STYLISTIQUES_v0_3.md`.

### 3.4. Ecart D - Grave spatial encore trop peu relie au gong

Fiche reverb v0.2 :

- grave spatial : Auto-Pro / Off / Trace / Corps / Pression / Bloom / Libre ;
- vrai sub prioritaire ;
- sub protege ;
- gong grave et basse riche doivent rester precis.

Besoin utilisateur :

- gong grave comme element important ;
- base microtonale ou harmonique possible ;
- sensation de souffle avec forte presence ;
- subs tres precis ;
- basses riches, harmonieuses et complexes.

Probleme :

- `BESOINS_GENERATION_v0_3.md` liste gong grave comme support possible ;
- il ne formalise pas encore assez les modes de relation entre gong, sub, souffle, microtonalite et espace.

Resolution a integrer :

```text
Le gong grave peut etre :
- source de partiels et inharmonicite ;
- source de halo resonant ;
- guide microtonal ;
- generateur de souffle grave par modelisation ;
- support de Bloom grave ;
- signal de transition ou peak ;
- matiere de pression si le sub reste lisible.
```

Document a corriger :

- `BESOINS_GENERATION_v0_3.md`.

### 3.5. Ecart E - "Espace -> ambient" trop simple

Ancienne logique :

```text
espace -> ambient
eviter ambient decoratif
```

Probleme :

- c'est juste comme anti-glissement ;
- c'est insuffisant apres les decisions recentes.

Resolution v0.2 :

```text
Le danger n'est pas "ambient" en soi.
Le danger est un espace automatique, non decide, flou, sans fonction, qui remplace le corps ou la forme.
```

Nuance a integrer :

- espace decoratif non voulu : risque ;
- espace decoratif decide : possible ;
- espace long decide : possible ;
- espace proche : possible ;
- espace immersif : possible ;
- espace hors-monde : possible ;
- perte longue du corps : possible si choisie ;
- perte accidentelle du corps : risque.

Documents a corriger :

- `BESOINS_STYLISTIQUES_v0_3.md` ;
- `BESOINS_GENERATION_v0_3.md`.

### 3.6. Ecart F - Naturalisation encore trop defensive

Ancienne logique :

```text
naturalisation -> decor
```

Probleme :

- l'alerte est utile ;
- mais la fiche reverb v0.2 decrit la naturalisation comme fonction positive.

Resolution v0.2 :

```text
Naturaliser = donner a un son une cause perceptive, une matiere, un geste,
un espace ou une fonction.
```

Nouvelle nuance :

- naturalisation comme decoration : risque ;
- naturalisation comme appartenance a un monde : besoin ;
- naturalisation comme rythme/pression : besoin ;
- naturalisation comme source live : besoin ;
- naturalisation comme cavite/resonance : besoin ;
- naturalisation comme pretexte narratif gratuit : risque.

Documents a corriger :

- `BESOINS_STYLISTIQUES_v0_3.md` ;
- `BESOINS_GENERATION_v0_3.md`.

### 3.7. Ecart G - Scene auditive generative incomplete

`BG-16` contient deja :

```text
statut perceptif
plan
separation
fusion
saillance
morphologie temporelle
fonction
risque de masquage
condition de retrait
```

Manques apres reverb v0.2 :

```text
monde spatial principal :
modificateurs spatiaux :
mode halo :
mode grave spatial :
source d'appartenance :
degre de source-bonding :
fonction forte :
priorite P0-P5 impliquee :
conditions ou Auto-Pro peut intervenir :
conditions ou Auto-Pro ne doit pas intervenir :
signalisation necessaire :
```

Document a corriger :

- `BESOINS_GENERATION_v0_3.md`.

### 3.8. Ecart H - Caracterisation espace/halo trop generique

`ET-03` est correct mais trop general.

Il decrit :

- fonction du halo ;
- source du halo ;
- duree ;
- zone spectrale ;
- plan ;
- fusion/separation ;
- source-bonding ;
- distance ;
- masquage ;
- relation a l'attaque ;
- relation au grave ;
- moment de baisse ;
- condition ou le halo devient principal ;
- risque flou/ambient.

Manques possibles :

```text
monde spatial :
mode halo : Auto / Lock / Force / Cut / Momentary / Safe force
mode grave spatial : Auto-Pro / Off / Trace / Corps / Pression / Bloom / Libre
fonction forte :
priorite :
etat long decide :
decor decide :
retrait du corps decide :
intervention Auto-Pro autorisee :
signalisation :
```

Mais il ne faut pas corriger ce document en premier.

Raison :

- la generation doit d'abord stabiliser les modes ;
- la caracterisation pourra ensuite se contenter d'une grille propre et transversale.

---

## 4. Corrections recommandees par fichier

### 4.1. `BESOINS_GENERATION_v0_4.md`

Priorite : tres haute.

Objectif :

- synchroniser la generation avec les decisions reverb/espace v0.2.

Corrections minimales :

1. Remplacer les regles automatiques de reduction du halo par une logique de modes.
2. Ajouter un bloc "Espace comme parametre generatif de scene".
3. Ajouter un bloc "Modes de grave/sub".
4. Integrer les options didgeridoo/sub/gong grave.
5. Reformuler les monopoles perceptifs comme garde-fous reversibles.
6. Remplacer "espace -> ambient" par une distinction entre espace non decide et espace decide.
7. Ajouter les champs de scene auditive manquants.
8. Distinguer Auto-Pro, choix de scene et choix live explicite.

Formulation cible :

```text
Une generation peut produire halo, espace ou grave long seulement si elle sait
quel monde, quelle fonction, quelle priorite et quelle condition de retrait sont associes.
```

### 4.2. `BESOINS_STYLISTIQUES_v0_4.md`

Priorite : haute mais apres generation v0.4.

Objectif :

- corriger les formulations stylistiques trop restrictives.

Corrections minimales :

1. `pas de reverb large permanente` devient `pas de grande reverb automatique non decidee`.
2. `halo long limite a certaines fonctions` devient `halo long autorise par fonction forte, scene ou choix live`.
3. `pas de halo dans le grave sans raison` devient `grave spatial uniquement selon mode defini`.
4. `espace -> ambient` devient `espace non decide -> risque d'ambient decoratif`.
5. Clarifier que decor decide, vide decide et retrait long du corps sont compatibles avec Vesperare.

### 4.3. `CARACTERISATION_DETAILLEE_ELEMENTS_v0_4.md`

Priorite : moyenne.

Objectif :

- ajouter des champs de caracterisation, pas refaire les analyses.

Corrections minimales :

1. Ajouter references aux mondes spatiaux.
2. Ajouter mode halo.
3. Ajouter mode grave spatial.
4. Ajouter fonction forte.
5. Ajouter priorite P0-P5 si conflit.
6. Ajouter signalisation si intervention automatique.

Action recommandee :

- attendre apres la mise a jour generation/stylistique.

### 4.4. Index actif

Priorite : immediate.

Objectif :

- ajouter ce document comme audit de synchronisation ;
- preciser qu'il ne remplace pas les documents actifs ;
- signaler que les prochaines mises a jour probables sont `BESOINS_GENERATION_v0_4` puis `BESOINS_STYLISTIQUES_v0_4`.

---

## 5. Ce qu'il ne faut pas faire maintenant

Ne pas :

- relire tous les documents sources depuis zero ;
- refaire toute la caracterisation musicale ;
- transformer la fiche reverb en architecture technique ;
- ajouter des modules Max for Live ;
- figer les seuils ;
- lancer une logique de validation par essai ;
- multiplier les fichiers intermediaires sans decision.

Raison :

- les besoins principaux sont assez consolides ;
- le risque actuel est la dispersion ;
- la bonne operation est une synchronisation ciblee.

---

## 6. Prochaine action recommandee

Statut au 2026-06-21 : les etapes 2, 4 et 5 sont realisees avec `BESOINS_GENERATION_v0_4.md`, `BESOINS_STYLISTIQUES_v0_4.md` et `CARACTERISATION_DETAILLEE_ELEMENTS_v0_4.md`.

Ordre recommande :

1. Mettre a jour l'index actif avec ce document.
2. Creer `BESOINS_GENERATION_v0_4.md`.
3. Synchroniser seulement les sections touchees.
4. Creer ensuite `BESOINS_STYLISTIQUES_v0_4.md` si les corrections stylistiques restent substantielles.
5. Reporter la mise a jour de `CARACTERISATION_DETAILLEE_ELEMENTS_v0_4.md` apres stabilisation generation/stylistique.
6. Faire ensuite l'audit de compatibilite reverb avec l'ensemble consolide.

Decision :

```text
Oui, il faut retravailler certains documents avant l'audit global.
Non, il ne faut pas tout retravailler.
Le fichier prioritaire est BESOINS_GENERATION.
```

---

## 7. Suivi

Date : 2026-06-21

Action realisee :

- `BESOINS_GENERATION_v0_4.md` cree ;
- synchronisation effectuee sur grave/sub, didgeridoo, gong grave, espace/halo generatif, scene auditive, monopoles perceptifs et anti-glissements ;
- `BESOINS_STYLISTIQUES_v0_4.md` cree ;
- synchronisation effectuee sur techno suspendue, plausibilite acoustique, didgeridoo, espace/halo, scene auditive, intensite, reservoirs sound system/trance/voix et anti-glissements ;
- `CARACTERISATION_DETAILLEE_ELEMENTS_v0_4.md` cree ;
- synchronisation effectuee sur familles de caracterisation, sound system, trance, nature/acoustique, didgeridoo, gong, techno suspendue, espace/halo et transgression ;
- `AUDIT_COMPATIBILITE_CORPUS_ACTIF_v0_1.md` cree ;
- index actif mis a jour.

Reste a decider :

- creation de la specification conceptuelle.
