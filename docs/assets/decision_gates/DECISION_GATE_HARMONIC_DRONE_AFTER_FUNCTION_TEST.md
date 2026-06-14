# DECISION_GATE_HARMONIC_DRONE_AFTER_FUNCTION_TEST

Version : v0.1  
Statut : porte de décision. Sans source validée, sans sample, sans asset individuel, sans prototypage.

## Objet

Ce document définit comment interpréter les résultats du test :

```text
FUNCTION_TEST_HARMONIC_DRONE_SUSPENSION_ENGINE
```

Il empêche de passer trop vite vers :

```text
sample d’orgue ;
shruti / harmonium ;
asset concret ;
module définitif ;
banque de drones ;
prototype esthétique.
```

Il sert à décider si le champ harmonique / bourdon doit être :

```text
rejeté ;
reporté ;
traité par engine/résonateur ;
traité par source réelle ;
traité par sample minimal ;
converti en material_asset concret.
```

---

# 1. Entrées nécessaires

Avant toute décision, le test doit fournir :

```text
variant_id:
base_without_drone_result:
beating_usefulness:
harmonic_density_usefulness:
sub_relation:
didgeridoo_relation:
jaw_harp_relation:
low_mid_load:
anti_ambient_result:
return_to_body_result:
felt_need_for_real_source:
felt_need_for_sample:
main_risk:
main_success:
```

Sans ces observations, aucune source ne doit être cherchée.

---

# 2. Décision A : rejet ou report

## 2.1 Rejet

Rejeter le champ harmonique pour cette scène si :

```text
la base sub + didgeridoo + guimbardes est plus forte sans champ ;
le champ rend la scène passive ;
le champ devient une nappe ;
le champ affaiblit le retour au corps ;
le champ masque les guimbardes ;
le champ masque le didgeridoo ;
le champ crée un décor sacré, méditatif ou ambient ;
les battements ne sont pas utiles ;
le champ est beau mais sans conséquence.
```

Décision résultante :

```text
harmonic_drone_for_scene: rejected
sample_search: no
source_search: no
asset_creation: no
matrix_update: noter que la base suffit pour cette scène
```

## 2.2 Report

Reporter si :

```text
le champ semble utile mais la scène n’est pas encore assez définie ;
le rôle du retour au corps n’est pas clair ;
le pitch_center n’est pas assez compris ;
la relation didgeridoo/sub reste trop floue ;
les guimbardes ne sont pas encore positionnées.
```

Décision résultante :

```text
harmonic_drone_for_scene: deferred
sample_search: no
source_search: no
asset_creation: no
next_action: clarifier scène / trajectoire / pitch_center
```

---

# 3. Décision B : engine ou résonateur suffisant

Valider un engine/résonateur si :

```text
les battements sont perceptibles et utiles ;
la densité est contrôlable ;
le champ reste lié au sub ;
le didgeridoo reste lisible ;
les guimbardes restent lisibles ;
le retrait est efficace ;
la scène ne devient pas ambient ;
aucun besoin de souffle ou texture réelle n’est ressenti.
```

Décision résultante :

```text
harmonic_drone_for_scene: valid_as_engine
sample_search: no
source_search: no
asset_creation: engine_profile_later
next_action: définir paramètres engine/résonateur
```

Ce cas est prioritaire car il évite d’ouvrir un corpus inutile.

---

# 4. Décision C : besoin de source réelle

Valider le besoin d’une source réelle si :

```text
l’engine couvre la fonction mais manque de souffle ;
l’engine couvre la structure mais manque de matière ;
les battements doivent sembler acoustiques ;
la scène exige une présence respirante ;
le champ doit avoir une instabilité impossible à générer de façon convaincante ;
le caractère humain/mécanique du bourdon devient musicalement important.
```

Décision résultante :

```text
harmonic_drone_for_scene: real_source_needed
sample_search: maybe_later
source_search: yes_but_limited
asset_creation: no_immediate
next_action: comparer shruti / harmonium / orgue / resampling / source hybride
```

Attention : source réelle ne signifie pas encore sample.

---

# 5. Décision D : besoin de sample minimal

Valider un sample minimal seulement si :

```text
une source réelle est nécessaire ;
la source n’est pas jouable live ;
1–3 drones ou accords peuvent couvrir la fonction ;
le sample reste lié à une scène précise ;
le sample ne devient pas banque de nappes ;
le retrait / retour au corps reste fort ;
le risque ambient est contrôlé.
```

Décision résultante :

```text
harmonic_drone_for_scene: sample_minimal_allowed
sample_search: yes_limited
source_search: yes_limited
asset_creation: sample_asset_later
minimum: 1–3 drones / accords / bourdons
maximum_prudent_initial: 5
next_action: rédiger un sample_need ciblé
```

Refuser le sample si :

```text
le besoin est seulement “plus beau” ;
il sert de fond ;
il épaissit sans fonction ;
il remplace un problème de composition ;
il rend la scène ambient.
```

---

# 6. Décision E : material_asset concret

Créer un material_asset concret seulement si :

```text
la fonction est validée dans au moins une scène ;
le mode de matérialisation est clair ;
le risque principal est identifié ;
une protection existe ;
le rôle n’est pas décoratif ;
le champ est réutilisable dans plusieurs scènes ou central dans une scène majeure.
```

Décision résultante :

```text
material_asset_creation: allowed
asset_type: engine_profile / live_instrument_profile / conditional_sample / hybrid_profile
linked_scene: required
linked_source_need: SOURCE_NEED_HARMONIC_DRONE_SHRUTI_ORGAN
linked_schema: MATERIAL_ASSET_SCHEMA_HARMONIC_DRONE_FIELDS
```

---

# 7. Décision F : mise à jour de la matrice des manques

Après test, mettre à jour la matrice des manques si :

```text
le champ harmonique couvre réellement suspension active ;
le champ harmonique couvre tension longue ;
le champ harmonique couvre expansion non ambient ;
la base suffit et le besoin doit baisser en priorité ;
le champ échoue et une autre source doit être explorée.
```

Résultats possibles :

```text
remaining_need_status: still_open
remaining_need_status: covered_by_engine
remaining_need_status: covered_by_live_base
remaining_need_status: conditional_sample_needed
remaining_need_status: deferred
remaining_need_status: rejected_for_scene
```

---

# 8. Tableau de décision rapide

```text
Si base seule plus forte → rejet.
Si champ utile mais scène floue → report.
Si engine suffit → engine/résonateur, pas de sample.
Si engine manque de matière réelle → recherche limitée de source.
Si source réelle nécessaire mais non live → sample minimal possible.
Si rôle stable et réutilisable → material_asset concret.
```

---

# 9. Décision actuelle avant test réel

```text
sample_search_now: no
source_purchase_now: no
material_asset_individual_now: no
engine_function_test_needed: yes
decision_gate_status: ready
```

---

# 10. Prochaine action recommandée

Continuer avec la planification du test côté système :

```text
HARMONIC_DRONE_ENGINE_PARAMETER_SKETCH.md
```

Objectif : définir les paramètres minimaux d’un engine/résonateur de test, sans implémenter encore de module Max for Live.
