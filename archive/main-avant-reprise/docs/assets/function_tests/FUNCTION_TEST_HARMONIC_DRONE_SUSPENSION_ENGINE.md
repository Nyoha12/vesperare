# FUNCTION_TEST_HARMONIC_DRONE_SUSPENSION_ENGINE

Version : v0.1  
Statut : test fonctionnel conceptuel. Sans sample, sans source validée, sans prototype esthétique, sans module définitif.

## Objet

Ce document définit un test minimal pour vérifier si un champ harmonique / bourdon apporte réellement une fonction dans la scène :

```text
SCENE_USE_CASE_HARMONIC_DRONE_SUSPENSION
```

Il ne sert pas à choisir une source sonore.

Il sert à tester :

```text
battements ;
densité harmonique ;
relation au pitch_center ;
relation sub / didgeridoo / guimbardes ;
anti-ambient ;
retrait ;
retour au corps.
```

Si le test échoue, on ne cherche pas de sample, pas de shruti, pas d’orgue et pas d’asset concret.

---

# 1. Hypothèse de test

```text
test_id: FUNCTION_TEST_HARMONIC_DRONE_SUSPENSION_ENGINE_01
linked_scene: SCENE_HARMONIC_DRONE_SUSPENSION_01
linked_source_need: SOURCE_NEED_HARMONIC_DRONE_SHRUTI_ORGAN
linked_material_schema: MATERIAL_ASSET_SCHEMA_HARMONIC_DRONE_FIELDS
source_status: none
sample_status: none
prototype_status: conceptual_function_test
```

Hypothèse :

```text
Un champ harmonique simple, contrôlé par battements, densité, pitch_center et retrait,
peut augmenter la tension d’une scène de suspension sans la rendre ambient.
```

---

# 2. Sources de base du test

Le test doit être imaginé avec la base déjà disponible :

```text
sub / pressure engine ;
didgeridoo live ;
guimbardes live ;
aucun sample ;
gong/tambour absents ou optionnels selon version du test.
```

Le champ harmonique testé ne doit pas remplacer la base.

Il doit se placer :

```text
au-dessus ou autour du sub ;
en relation avec le didgeridoo ;
en contraste macro avec les guimbardes ;
avec possibilité de retrait rapide ou progressif.
```

---

# 3. Forme minimale du champ harmonique testé

Le champ peut être représenté conceptuellement par :

```text
un ou plusieurs oscillateurs tenus ;
un résonateur modal ;
un filtre/résonance accordée ;
un spectral freeze contrôlé ;
un resampling abstrait de didgeridoo ou guimbardes ;
un moteur de battements très simple.
```

Mais aucune de ces solutions n’est validée comme source finale.

La forme minimale doit permettre de contrôler :

```text
pitch_center ;
beating_rate ;
harmonic_density ;
low_mid_load ;
entry_time ;
withdrawal_time ;
relation_to_sub ;
relation_to_didgeridoo ;
relation_to_jaw_harps.
```

---

# 4. Variables principales

```text
Drone_active: off / on
Drone_density: none / thin / medium / dense
Beating_rate: none / slow / medium / fast / variable
Beating_depth: weak / medium / strong
Pitch_center_relation: aligned / slight_friction / strong_friction / conflict
Sub_relation: independent / complementary / duck_sub / duck_drone / conflict
Didgeridoo_relation: parallel / contrast / masked / withdrawn
Jaw_harp_relation: micro_macro / masked / separated / withdrawn
Low_mid_safety: safe / warning / overload
Anti_ambient: pass / warning / fail
Withdrawal_mode: cut / fade / duck / collapse / none
Return_to_body: strengthened / unchanged / weakened
```

---

# 5. Variantes à tester conceptuellement

## 5.1 Variante A : sans champ harmonique

```text
objectif: vérifier si la base suffit.
sources: sub + didgeridoo + guimbardes.
attendu: tension lisible, activité organique, corps présent.
question: manque-t-il réellement une dimension harmonique tenue ?
si non: rejeter le champ harmonique pour cette scène.
```

## 5.2 Variante B : champ aligné

```text
objectif: tester un champ harmonique aligné avec le pitch_center ou le strongest_low_peak.
fonction: stabiliser, élargir, donner de la suspension.
risque: nappe, immobilité, fusion trop douce.
validation: uniquement si la suspension devient plus tendue sans perte de corps.
```

## 5.3 Variante C : champ en friction légère

```text
objectif: créer battements et microtensions par léger décalage.
fonction: tension perceptive, mouvement sans percussion.
risque: pitch flou, instabilité inutile, fatigue.
validation: uniquement si les battements sont perceptibles et utiles.
```

## 5.4 Variante D : champ plus dense / polyphonique

```text
objectif: tester si la scène a besoin de polyphonie harmonique.
fonction: expansion, architecture, largeur.
risque: ambient, low-mid overload, perte du sub.
validation: uniquement si la densité sert la trajectoire et prépare un retrait.
```

## 5.5 Variante E : champ issu de résonateur

```text
objectif: tester si un engine/résonateur suffit avant source réelle.
fonction: champ contrôlable par pitch_center et densité.
risque: son synthétique, manque de souffle réel.
validation: si la fonction est couverte sans besoin de sample.
```

## 5.6 Variante F : champ dérivé des sources live

```text
objectif: tester un champ obtenu à partir du didgeridoo ou des guimbardes traités.
fonction: continuité de source, économie de corpus, naturalisation interne.
risque: masque, perte de lisibilité, auto-accumulation.
validation: si le champ semble émerger des sources live sans les noyer.
```

---

# 6. Relation aux didgeridoos

Repères actuels :

```text
DIDG_01: double-pic environ 48 / 96 Hz.
DIDG_02: double-pic environ 40 / 80 Hz, 80 Hz plus fort.
```

Le test ne doit pas décider immédiatement la fondamentale théorique.

Il doit seulement évaluer :

```text
alignement sur lowest_visible_peak ;
alignement sur strongest_low_peak ;
friction volontaire entre les deux ;
risque de brouiller le sub ;
risque de masquer le didgeridoo ;
intérêt musical du battement obtenu.
```

---

# 7. Critères de réussite

Le test est réussi si le champ harmonique :

```text
augmente la tension sans immobiliser la scène ;
crée des battements perceptibles ou une densité harmonique utile ;
reste relié au sub et au corps ;
ne masque pas le didgeridoo ;
ne masque pas les guimbardes ;
prépare un retrait ou un retour au corps ;
ne devient pas une nappe ;
ne crée pas de décor sacré ou méditatif ;
produit une fonction que la base seule ne couvre pas.
```

---

# 8. Critères d’échec

Le test échoue si :

```text
la base sans champ est plus forte ;
le champ rend la scène ambient ;
le champ affaiblit le retour au corps ;
le champ masque les attaques / micro-pulse ;
le champ rend le grave flou ;
le champ donne une impression d’orgue/shruti plaquée ;
le champ devient sentimental ou décoratif ;
le champ ne produit pas de battements utiles ;
le champ est beau mais sans conséquence.
```

---

# 9. Observations à noter pendant le test

```text
variant_id:
sub_relation:
didgeridoo_relation:
jaw_harp_relation:
beating_rate:
beating_usefulness:
harmonic_density:
low_mid_load:
anti_ambient_result:
return_to_body_result:
felt_need_for_real_source:
felt_need_for_sample:
rejection_reason_if_any:
next_decision:
```

---

# 10. Décisions possibles après test

## 10.1 Rejet / report

```text
si la base suffit ;
si le champ devient décor ;
si le retour au corps est affaibli ;
si la suspension devient passive.
```

## 10.2 Engine/résonateur suffisant

```text
si les battements, la densité et la suspension sont obtenus sans source réelle ;
si le champ reste contrôlable et non décoratif ;
si le manque de souffle réel n’est pas problématique.
```

## 10.3 Besoin de source réelle

```text
si l’engine couvre la fonction mais manque de souffle, instabilité, beauté ou texture réelle ;
si la scène demande un geste ou une présence matérielle ;
si les battements doivent venir d’une source acoustique.
```

## 10.4 Besoin de sample minimal

```text
si la source réelle est nécessaire mais pas jouable live ;
si 1–3 drones/accords suffisent à couvrir la fonction ;
si le sample reste fonctionnel et non décoratif.
```

## 10.5 Besoin de material_asset concret

```text
si une source réelle ou engine spécifique est validé ;
si plusieurs scènes demandent ce champ ;
si le rôle est suffisamment stable pour être intégré au système.
```

---

# 11. Décision actuelle

```text
sample_search_now: no
source_purchase_now: no
material_asset_individual_now: no
function_test_next: yes
```

La suite logique est de revenir aux scènes ou de définir le test côté système, pas de chercher un sample d’orgue ou de shruti.

---

# 12. Prochaine action recommandée

Créer une fiche de décision après test :

```text
DECISION_GATE_HARMONIC_DRONE_AFTER_FUNCTION_TEST.md
```

Objectif : prévoir comment interpréter les résultats du test avant d’ouvrir une recherche de sources concrètes.
