# 10_HIGH_PRIORITY_SOURCE_NEEDS_COMPARISON

Version : v0.1  
Statut : comparaison décisionnelle. Sans ajout validé, sans sample confirmé, sans prototypage.

## Objet

Ce document compare les trois `source_needs` de priorité haute créés après la matrice des manques restants :

```text
SOURCE_NEED_HARMONIC_DRONE_SHRUTI_ORGAN
SOURCE_NEED_BOWED_STRING_TORSION_FIELD
SOURCE_NEED_TUNED_METAL_PARTIALS_BELLS_VIBRAPHONE
```

Il sert à décider ce qui mérite :

```text
un schéma material_asset ;
une recherche de sources concrètes ;
un sample minimal ;
un engine/résonateur ;
une simple référence ;
un report.
```

Il ne valide pas encore d’ajout instrumental.

---

# 1. Critères de comparaison

Chaque besoin est évalué selon :

```text
besoin restant visé ;
apport par rapport à didgeridoo + guimbardes + sub ;
caractère irremplaçable ;
risque esthétique ;
mode le plus prudent ;
priorité d’approfondissement ;
prochaine action.
```

---

# 2. Comparaison synthétique

## 2.1 Harmonic drone / shruti / organ

```text
besoin visé: champs harmoniques soutenus, battements, suspension active, expansion non ambient.
apport unique: champ harmonique tenu que la base live ne couvre pas complètement.
irremplaçabilité: moyenne à haute si les scènes exigent battements ou architecture harmonique.
risques: ambientisation, décor sacré, spiritualité plaquée, drone statique, perte du corps.
mode prudent: engine/résonateur + références ; sample minimal seulement si besoin confirmé ; live shruti/harmonium à étudier.
priorité: haute.
décision provisoire: à approfondir en premier côté champ harmonique.
```

## 2.2 Bowed string torsion field

```text
besoin visé: ligne de torsion médium/aiguë, friction, cri sans voix, battements, beauté tendue.
apport unique: friction réelle et ligne tendue dans un registre que didgeridoo/guimbardes ne couvrent pas entièrement.
irremplaçabilité: moyenne ; forte seulement si la torsion médium/aiguë devient structurelle.
risques: lyrisme, pathos, cinéma, solo instrumental, surcharge émotionnelle.
mode prudent: référence + engine/physical modeling d’abord ; sample minimal de gestes frottés si la friction réelle manque.
priorité: haute mais à forte surveillance esthétique.
décision provisoire: à approfondir après champ harmonique, avec garde-fous anti-lyrisme.
```

## 2.3 Tuned metal / bells / vibraphone

```text
besoin visé: partiels contrôlés, signaux harmoniques, métal accordé, beauté ponctuelle, brillance non punitive.
apport unique: métal harmonique précis entre gong macro et guimbardes micro.
irremplaçabilité: moyenne à haute si les scènes exigent signaux accordés ou partiels stables.
risques: carillon, new age, féerie, jazz lounge, surcharge métallique, brillance punitive.
mode prudent: résonateurs/partials + références ; sample minimal de sons très différenciés si besoin confirmé.
priorité: moyenne à haute.
décision provisoire: à approfondir en parallèle du champ harmonique, mais pas comme banque de cloches.
```

---

# 3. Décision provisoire d’ordre d’approfondissement

## 3.1 Premier axe à approfondir : champ harmonique / bourdon

```text
raison: c’est le manque le plus global après la base live.
fonction: battements, suspension, expansion, masse harmonique, tension longue.
source_needs concernés: SOURCE_NEED_HARMONIC_DRONE_SHRUTI_ORGAN.
prochaine action possible: créer un material_asset schema de recherche pour drones/bourdons, ou une fiche de test conceptuel engine/résonateur.
```

Justification :

```text
le didgeridoo donne souffle grave et pression ;
les guimbardes donnent micro-formants et micro-pulse ;
le sub donne centre physique ;
mais aucun des trois ne donne encore un champ harmonique large, tenu, contrôlable et polyphonique.
```

## 3.2 Deuxième axe : métal accordé / partiels contrôlés

```text
raison: complément naturel du gong et des guimbardes.
fonction: signaux harmoniques, partiels stables, beauté ponctuelle, brillance contrôlée.
source_needs concernés: SOURCE_NEED_TUNED_METAL_PARTIALS_BELLS_VIBRAPHONE.
prochaine action possible: garder en recherche de sources et références avant material_asset.
```

Justification :

```text
le gong couvre la masse métallique quand présent ;
les guimbardes couvrent le micro-métal live ;
mais il manque peut-être un métal accordé plus précis, moins massif, capable de signal harmonique.
```

## 3.3 Troisième axe : cordes frottées / torsion médium-aiguë

```text
raison: besoin réel mais esthétiquement dangereux.
fonction: torsion, friction, cri sans voix, battements, beauté tendue.
source_needs concernés: SOURCE_NEED_BOWED_STRING_TORSION_FIELD.
prochaine action possible: référence / sound design direction avant material_asset.
```

Justification :

```text
les cordes peuvent couvrir un manque de torsion médium/aiguë ;
mais elles présentent le plus fort risque de lyrisme, pathos, musique de film ou geste romantique.
```

---

# 4. Ce qui mérite un material_asset schema maintenant

## 4.1 Oui, mais prudemment : harmonic drone / bourdon

```text
recommandation: créer un schéma préparatoire pour matériaux de bourdon/champ harmonique.
nom possible: MATERIAL_ASSET_SCHEMA_HARMONIC_DRONE_FIELDS.md
raison: besoin ouvert haut, transversal, relié au pitch_center, aux battements et aux scènes de suspension.
attention: ne pas créer une banque de nappes ; décrire seulement les dimensions à évaluer.
```

## 4.2 Pas encore : cordes frottées

```text
recommandation: ne pas créer immédiatement de material_asset schema.
raison: risque esthétique élevé ; besoin de confirmer par scènes ou références.
étape avant schema: chercher critères anti-lyrisme et exemples de fonctions, pas fichiers.
```

## 4.3 Pas encore, mais proche : métaux accordés

```text
recommandation: reporter légèrement le material_asset schema.
raison: le besoin est plausible, mais doit être articulé au gong/guimbardes pour éviter collection de métaux.
étape avant schema: définir les rôles exacts de signal harmonique et partiels stables.
```

---

# 5. Ce qui mérite une recherche de source concrète

```text
shruti / harmonium: oui, en priorité, parce que jouable et lié au souffle/battements.
orgue: oui comme référence ou prise très ciblée, mais dangereux.
cordes frottées: oui comme références de friction anti-lyrique, pas comme corpus.
vibraphone/cloches/bols: oui comme références et exemples de fonctions, pas comme banque.
```

---

# 6. Ce qui mérite un sample minimal maintenant

```text
aucun des trois ne mérite encore un sample minimal immédiat.
```

Raison :

```text
les scènes ne sont pas encore assez définies ;
les fonctions doivent d’abord être validées ;
les engines/résonateurs/références doivent être évalués avant d’ouvrir un corpus.
```

Exception possible plus tard :

```text
1–3 drones ou bourdons si champ harmonique confirmé ;
3–5 gestes frottés si friction réelle indispensable ;
3–5 métaux accordés si signaux harmoniques confirmés.
```

---

# 7. Prochaine action recommandée

Créer :

```text
MATERIAL_ASSET_SCHEMA_HARMONIC_DRONE_FIELDS.md
```

Objectif : définir comment décrire des matériaux de bourdon / champ harmonique sans encore choisir shruti, harmonium ou orgue comme source validée.

Ensuite :

```text
revenir aux scènes et aux trajectoires pour savoir où ce champ harmonique est vraiment nécessaire ;
puis seulement créer des assets ou recherches de sources concrètes.
```
