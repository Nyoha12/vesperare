# HARMONIC_DRONE_ENGINE_PARAMETER_SKETCH

Version : v0.1  
Statut : croquis de paramètres. Sans implémentation, sans module Max for Live, sans sample, sans prototype esthétique.

## Objet

Ce document définit les paramètres minimaux d’un engine / résonateur de test pour la scène :

```text
SCENE_USE_CASE_HARMONIC_DRONE_SUSPENSION
```

Il s’appuie sur :

```text
FUNCTION_TEST_HARMONIC_DRONE_SUSPENSION_ENGINE
DECISION_GATE_HARMONIC_DRONE_AFTER_FUNCTION_TEST
MATERIAL_ASSET_SCHEMA_HARMONIC_DRONE_FIELDS
SOURCE_NEED_HARMONIC_DRONE_SHRUTI_ORGAN
```

Il ne sert pas encore à fabriquer le son final.

Il sert à définir un banc d’essai musical capable de répondre à :

```text
le champ harmonique augmente-t-il la tension ?
les battements sont-ils utiles ?
le sub reste-t-il physique ?
le didgeridoo reste-t-il lisible ?
les guimbardes restent-elles lisibles ?
le retrait rend-il le retour au corps plus fort ?
le résultat évite-t-il la nappe ambient ?
```

---

# 1. Principe général

L’engine doit être minimal.

Il ne doit pas chercher à imiter :

```text
un orgue ;
une shruti ;
un harmonium ;
un pad ;
une nappe ;
un sample réaliste.
```

Il doit seulement permettre de tester des fonctions :

```text
pitch_center ;
battements ;
densité harmonique ;
relation au sub ;
relation au didgeridoo ;
relation aux guimbardes ;
entrée ;
retrait ;
anti-ambient ;
retour au corps.
```

---

# 2. Entrées musicales

## 2.1 Centres possibles issus des didgeridoos

```text
DIDG_01_lowest_visible_peak: 48 Hz
DIDG_01_double_peak: 96 Hz
DIDG_02_lowest_visible_peak: 40 Hz
DIDG_02_strongest_low_peak: 80 Hz
```

Ces valeurs ne sont pas encore des notes fixes.

Elles servent à créer des relations :

```text
alignement ;
friction légère ;
friction forte ;
contre-centre ;
retrait ;
conflit à éviter.
```

## 2.2 Sources live à préserver

```text
sub: centre physique / pression ;
didgeridoo: souffle grave / corps / formants ;
guimbardes: micro-pulse / formants / brillance rythmique ;
gong: optionnel ;
tambour: optionnel.
```

---

# 3. Axes de contrôle minimaux

## 3.1 Drone active

```text
paramètre: Drone_active
type: on/off
fonction: introduire ou retirer le champ harmonique.
valeurs: off / on
protection: retrait rapide obligatoire.
```

Le champ doit pouvoir disparaître immédiatement si :

```text
il masque le didgeridoo ;
il masque les guimbardes ;
il affaiblit le retour au corps ;
il devient décoratif.
```

## 3.2 Pitch center relation

```text
paramètre: Pitch_center_relation
type: choix discret + offset fin
valeurs:
- align_lowest_peak ;
- align_strongest_peak ;
- slight_friction ;
- strong_friction ;
- independent_center ;
- avoid_center.
```

Repères :

```text
align_lowest_peak: autour de 40 ou 48 Hz selon didgeridoo.
align_strongest_peak: autour de 80 ou 96 Hz selon didgeridoo.
slight_friction: écart subtil pour battements lents.
strong_friction: écart plus marqué, à surveiller.
independent_center: centre non lié directement au didgeridoo.
avoid_center: retrait ou évitement si conflit.
```

## 3.3 Beating rate

```text
paramètre: Beating_rate
type: continu ou macro discret
valeurs:
- none ;
- slow ;
- medium ;
- fast ;
- variable.
```

Interprétation musicale :

```text
none: champ stable, risque de nappe.
slow: tension lente, suspension.
medium: mouvement perceptible, risque de pulsation trop visible.
fast: nervosité, risque de fatigue.
variable: vivant, mais risque d’instabilité excessive.
```

## 3.4 Beating depth

```text
paramètre: Beating_depth
type: macro discret
valeurs: weak / medium / strong
fonction: contrôler l’amplitude perceptive des battements.
```

Décision :

```text
weak: utile si la tension doit rester sous la surface.
medium: point de test principal.
strong: seulement si le battement devient fonction structurante.
```

## 3.5 Harmonic density

```text
paramètre: Harmonic_density
type: macro discret
valeurs:
- thin ;
- medium ;
- dense ;
- cluster.
```

Règles :

```text
thin: 1–2 couches, test de base.
medium: 3–4 couches, champ lisible.
dense: 5+ couches, risque d’ambientisation.
cluster: seulement pour tension forte, à valider strictement.
```

## 3.6 Low-mid safety

```text
paramètre: Low_mid_safety
type: monitoring / macro protection
valeurs: safe / warning / overload
fonction: empêcher boue, conflit sub, masque didgeridoo.
```

Action si warning :

```text
réduire densité ;
réduire sustain ;
filtrer low-mid ;
ducker le champ ;
retirer certaines couches.
```

## 3.7 Sub relation

```text
paramètre: Sub_relation
type: choix de comportement
valeurs:
- complementary ;
- duck_drone ;
- duck_sub ;
- side_by_side ;
- conflict.
```

Règle :

```text
si conflict persiste, le champ est rejeté pour cette scène.
```

Le sub doit rester la référence corporelle.

## 3.8 Didgeridoo relation

```text
paramètre: Didgeridoo_relation
type: choix de comportement
valeurs:
- parallel ;
- extension ;
- contrast ;
- masked ;
- withdrawn.
```

Règle :

```text
masked = échec sauf si le didgeridoo doit volontairement disparaître.
```

## 3.9 Jaw harp relation

```text
paramètre: Jaw_harp_relation
type: choix de comportement
valeurs:
- micro_macro ;
- separated ;
- masked ;
- tension_link ;
- withdrawn.
```

Règle :

```text
les guimbardes doivent garder micro-pulse et formants si elles sont actives.
si le champ les transforme en simple brillance confuse, le champ échoue.
```

## 3.10 Anti-ambient

```text
paramètre: Anti_ambient
type: critère de sécurité
valeurs: pass / warning / fail
```

Fail si :

```text
le champ devient fond décoratif ;
il immobilise la scène ;
il épaissit sans tension ;
il devient pad ;
il remplace la composition par une atmosphère.
```

## 3.11 Withdrawal / retrait

```text
paramètre: Withdrawal_mode
type: choix de sortie
valeurs:
- cut ;
- fade ;
- duck ;
- collapse ;
- filter_out.
```

But :

```text
rendre le retour au corps audible.
```

Le retrait est réussi si :

```text
le sub paraît plus physique ;
le tambour ou l’impact paraît plus net ;
les guimbardes retrouvent de l’espace ;
la scène gagne en lisibilité.
```

## 3.12 Return to body

```text
paramètre: Return_to_body_result
type: observation
valeurs:
- strengthened ;
- unchanged ;
- weakened.
```

Règle :

```text
weakened = rejet ou forte révision.
unchanged = intérêt faible.
strengthened = piste à approfondir.
```

---

# 4. Variantes minimales de patch conceptuel

## 4.1 Patch A : deux couches alignées

```text
objectif: tester champ très simple.
structure: deux couches liées au pitch_center.
paramètres actifs: Drone_active, Pitch_center_relation, Low_mid_safety, Withdrawal_mode.
critère: la scène gagne-t-elle en suspension sans devenir nappe ?
```

## 4.2 Patch B : deux couches en friction légère

```text
objectif: tester battements lents.
structure: deux couches proches mais non identiques.
paramètres actifs: Beating_rate, Beating_depth, Pitch_center_relation.
critère: les battements sont-ils utiles ou seulement instables ?
```

## 4.3 Patch C : densité moyenne

```text
objectif: tester champ plus large.
structure: 3–4 couches, partiels ou centres harmoniques.
paramètres actifs: Harmonic_density, Low_mid_safety, Anti_ambient.
critère: l’expansion augmente-t-elle la tension ou devient-elle ambient ?
```

## 4.4 Patch D : résonateur sur source live

```text
objectif: tester naturalisation interne.
structure: champ dérivé de didgeridoo ou guimbardes.
paramètres actifs: Didgeridoo_relation, Jaw_harp_relation, Pitch_center_relation.
critère: le champ semble-t-il émerger des sources live sans les masquer ?
```

## 4.5 Patch E : retrait dramatique non décoratif

```text
objectif: tester conséquence du champ.
structure: champ actif puis retrait vers sub/tambour/gong/guimbardes.
paramètres actifs: Withdrawal_mode, Return_to_body_result, Sub_relation.
critère: le retour au corps est-il plus fort ?
```

---

# 5. Ordre de test recommandé

```text
1. Base sans champ.
2. Patch A : deux couches alignées.
3. Patch B : friction légère.
4. Patch E : retrait / retour au corps.
5. Patch C : densité moyenne seulement si besoin d’expansion.
6. Patch D : résonateur sur source live si engine abstrait manque de matière.
```

Ne pas commencer par un champ dense.

Ne pas commencer par une source réelle.

Ne pas commencer par l’orgue.

---

# 6. Observations à noter

```text
variant_id:
patch_type:
base_without_drone_comparison:
beating_rate:
beating_depth:
harmonic_density:
pitch_center_relation:
sub_relation:
didgeridoo_relation:
jaw_harp_relation:
anti_ambient:
low_mid_safety:
withdrawal_mode:
return_to_body_result:
main_success:
main_failure:
next_decision:
```

---

# 7. Résultats attendus

## 7.1 Si la base suffit

```text
decision: reject_for_scene
next_action: ne pas chercher de source harmonique pour cette scène.
```

## 7.2 Si deux couches suffisent

```text
decision: minimal_engine_enough
next_action: définir engine_profile, pas de sample.
```

## 7.3 Si friction légère fonctionne

```text
decision: beating_function_confirmed
next_action: garder le besoin ouvert, mais évaluer engine avant source réelle.
```

## 7.4 Si densité moyenne fonctionne mais sonne synthétique

```text
decision: real_source_maybe_needed
next_action: comparer source réelle vs resampling vs engine amélioré.
```

## 7.5 Si retrait renforce le corps

```text
decision: scene_function_confirmed
next_action: créer un profil de scène ou engine_profile.
```

## 7.6 Si le champ devient ambient

```text
decision: reject_or_redesign
next_action: réduire densité, renforcer retrait, ou abandonner.
```

---

# 8. Décision actuelle

```text
implementation_now: no
max_for_live_module_now: no
sample_search_now: no
source_search_now: no
parameter_sketch_ready: yes
```

La suite peut maintenant aller dans deux directions :

```text
A. définir un engine_profile abstrait à partir de ce sketch ;
B. revenir aux autres besoins/scènes avant toute implémentation.
```

---

# 9. Prochaine action recommandée

Créer :

```text
ENGINE_PROFILE_HARMONIC_DRONE_MINIMAL.md
```

Objectif : transformer ce sketch en profil d’engine testable conceptuellement, toujours sans implémentation.
