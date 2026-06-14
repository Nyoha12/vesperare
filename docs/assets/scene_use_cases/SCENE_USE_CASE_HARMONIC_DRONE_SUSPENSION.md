# SCENE_USE_CASE_HARMONIC_DRONE_SUSPENSION

Version : v0.1  
Statut : cas de scène préparatoire. Sans source validée, sans sample, sans asset individuel, sans prototypage.

## Objet

Ce document teste la nécessité d’un champ harmonique / bourdon dans une scène de suspension active.

Il s’appuie sur :

```text
12_HARMONIC_DRONE_SCENE_TRAJECTORY_NEEDS
MATERIAL_ASSET_SCHEMA_HARMONIC_DRONE_FIELDS
SOURCE_NEED_HARMONIC_DRONE_SHRUTI_ORGAN
10_HIGH_PRIORITY_SOURCE_NEEDS_COMPARISON
```

Il ne choisit pas encore entre :

```text
shruti ;
harmonium ;
orgue ;
résonateur ;
engine harmonique ;
sample minimal ;
field recording ;
source concrète.
```

Il sert uniquement à vérifier si la fonction musicale du champ harmonique est nécessaire.

---

# 1. Hypothèse de scène

```text
scene_id: SCENE_HARMONIC_DRONE_SUSPENSION_01
scene_type: suspension active
fonction_principale: tenir une tension sans immobiliser la musique
etat: hypothèse de conception
source_validated: none
sample_status: none
prototype_status: none
```

Hypothèse :

```text
Le didgeridoo, le sub et les guimbardes peuvent maintenir une pression et une activité organique.
Mais il peut manquer un champ harmonique large, tenu, battant et polyphonique pour créer une suspension active sans percussion.
```

---

# 2. Base de scène sans champ harmonique

Sources déjà disponibles ou prévues :

```text
didgeridoo live ;
guimbardes live ;
sub / pressure engine ;
traitements / résonateurs à définir ;
gong optionnel ;
tambour optionnel.
```

Ce que la base couvre déjà :

```text
pression grave ;
corps latent ;
formants graves ;
micro-pulse ;
voix-sans-voix ;
torsion fine ;
centre physique ;
activité organique.
```

Ce que la base ne couvre pas forcément :

```text
polyphonie harmonique tenue ;
battements larges ;
suspension harmonique ;
champ spectral stable mais vivant ;
architecture harmonique ;
expansion non ambient.
```

---

# 3. Fonction exacte du champ harmonique dans cette scène

Le champ harmonique ne doit pas être une nappe.

Il doit remplir au moins une fonction mesurable :

```text
créer des battements perceptibles ;
élargir la tension au-dessus du sub ;
maintenir une suspension sans percussion ;
préparer un retour au corps ;
faire respirer la scène sans la rendre ambient ;
introduire une tension harmonique impossible à obtenir par didgeridoo + guimbardes seuls.
```

Si aucune de ces fonctions n’est nécessaire, le champ est rejeté ou reporté.

---

# 4. Déroulé de scène proposé

## 4.1 État A : pression initiale

```text
sources: sub + didgeridoo
fonction: poser le corps, la pression, le centre grave.
risque: pression trop statique ou trop générique.
contrôle: relation sub/didgeridoo, low-mid safety, pitch_center.
```

## 4.2 État B : micro-activité

```text
sources: guimbardes
fonction: introduire micro-pulse, bouche, formants, scintillement rythmique.
risque: fatigue aiguë ou gimmick.
contrôle: densité, high safety, rôle contextuel.
```

## 4.3 État C : entrée du champ harmonique

```text
sources: champ harmonique non validé encore, engine/résonateur/référence.
fonction: ouvrir une suspension active par battements et tension harmonique.
risque: nappe, décor, ambientisation, perte du corps.
contrôle: battements, densité, pitch_center, anti-ambient, retrait.
```

## 4.4 État D : retrait ou bascule

```text
sources: sub / tambour / gong / silence / retour guimbardes.
fonction: rendre la conséquence du champ audible.
risque: beauté sans conséquence, suspension décorative.
contrôle: condition de retrait, retour au corps, impact ou résolution.
```

---

# 5. Trajectoire principale

```text
pression grave → micro-pulse → champ de battements → retrait → retour au corps
```

Lecture musicale :

```text
Le sub et le didgeridoo donnent un sol physique.
Les guimbardes donnent l’activité fine.
Le champ harmonique élargit l’écoute et crée la suspension.
Le retrait du champ rend le retour au corps plus lisible.
```

---

# 6. Variables de contrôle nécessaires

```text
Drone_active: on/off
Drone_density: faible / moyen / fort
Beating_rate: lent / moyen / rapide / variable
Pitch_center_relation: aligné / tension / conflit
Sub_relation: complément / duck / retrait
Didgeridoo_relation: complément / conflit / retrait
Jaw_harp_relation: micro/macro / masque / retrait
Anti_ambient: faible / moyen / fort
Return_to_body: préparé / immédiat / reporté
Retrait: progressif / coupure / fondu / ducking
```

---

# 7. Pitch center et didgeridoos

Les données actuelles de didgeridoo donnent des repères mais ne forcent pas encore une note unique :

```text
DIDG_01: double-pic environ 48 / 96 Hz ;
DIDG_02: double-pic environ 40 / 80 Hz, avec 80 Hz plus fort.
```

Pour cette scène, le champ harmonique doit être évalué selon :

```text
relation au lowest_visible_peak ;
relation au strongest_low_peak ;
relation au felt_pitch_center ;
capacité à créer des battements sans brouiller le sub ;
capacité à rester perceptible sans masquer le didgeridoo.
```

Décision :

```text
ne pas chercher à “accorder l’asset” maintenant ;
noter seulement les relations possibles : alignement, friction, conflit, retrait.
```

---

# 8. Sources possibles pour test conceptuel

À ce stade, aucune source concrète n’est validée.

Pour imaginer la scène, les sources possibles restent :

```text
engine harmonique simple ;
résonateur modal ;
spectral freeze contrôlé ;
référence shruti/harmonium ;
référence orgue très prudente ;
resampling de didgeridoo/guimbardes ;
combinaison hybride.
```

Ordre prudent :

```text
1. engine/résonateur conceptuel ;
2. référence shruti/harmonium ;
3. orgue seulement si architecture harmonique nécessaire ;
4. sample minimal seulement après validation de scène.
```

---

# 9. Conditions de rejet

Le champ harmonique doit être rejeté ou reporté si :

```text
la base didgeridoo + sub + guimbardes suffit ;
le champ devient une nappe ;
la scène perd son corps ;
le champ masque les guimbardes ;
le champ masque la voix si voix présente ;
le champ crée un décor sacré ou méditatif ;
le retour au corps devient moins fort ;
les battements ne sont pas perceptibles ou utiles ;
la suspension devient passive.
```

---

# 10. Critères de validation

Le champ harmonique est validé pour cette scène seulement si :

```text
il augmente la tension sans immobiliser la scène ;
il crée des battements ou une instabilité utile ;
il reste lié au corps/sub ;
il laisse de la place au didgeridoo et aux guimbardes ;
il prépare un retrait, un retour ou une bascule ;
il ne produit pas de décor ambient ;
il a une fonction que la base ne couvre pas seule.
```

---

# 11. Décision actuelle

```text
source_concrete_needed_now: no
sample_needed_now: no
material_asset_individual_needed_now: no
engine_or_reference_test_needed_next: yes
scene_priority: high
```

Le prochain travail ne doit pas être une recherche de sample.

Il doit être :

```text
concevoir un test de fonction : battements / densité / pitch_center / retrait / retour au corps.
```

---

# 12. Prochaine action

Créer ensuite :

```text
FUNCTION_TEST_HARMONIC_DRONE_SUSPENSION_ENGINE.md
```

Objectif : décrire un test conceptuel minimal du champ harmonique sans sample, avec seulement des paramètres de fonction musicale.
