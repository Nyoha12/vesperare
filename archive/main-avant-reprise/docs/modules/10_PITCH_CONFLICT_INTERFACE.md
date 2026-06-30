# 10_PITCH_CONFLICT_INTERFACE

Version : v0.1  
Statut : audit d’interface entre modules, sans prototypage.

## Objet

Ce document vérifie la cohérence entre :

```text
09_PITCH_HARMONIC_FIELD_MANAGER ;
07_CONFLICT_PROTECTION_MANAGER ;
08_CONFLICT_CONDUCTOR_ROUTER_INTERFACE.
```

Il sert à formaliser comment les relations de hauteur, sub, partiels, formants, microtensions et halos doivent être évaluées par le Conflict / Protection Manager.

Le but n’est pas de rendre le champ harmonique toujours stable ou propre. Le but est de distinguer :

```text
tension harmonique féconde ;
instabilité dangereuse ;
sub relation volontaire ;
sub relation problématique ;
partiels expressifs ;
partiels masquants ;
formants identitaires ;
formants concurrents ;
microtonalité matérielle ;
microtonalité gratuite ;
résolution différée ;
résolution impossible.
```

---

# 1. Question centrale

```text
Quand un champ harmonique, spectral ou formantique devient-il un risque à protéger plutôt qu’une tension à laisser vivre ?
```

Réponse générale :

```text
Pitch / Harmonic Field Manager = décrit l’état du champ ;
Conflict / Protection Manager = décide si cet état est fécond, risqué, dangereux ou urgent ;
Conductor = adapte la scène / trajectoire si nécessaire ;
Router = rend les protections jouables si nécessaire.
```

---

# 2. Contrat Pitch → Conflict

Le Pitch / Harmonic Field Manager doit envoyer au Conflict / Protection Manager :

```text
pitch_center ;
spectral_root ;
sub_center ;
sub_pitch_relation ;
partial_alignment ;
partial_density ;
formant_focus ;
formant_conflict ;
microtonal_spread ;
harmonic_tension ;
field_stability ;
inharmonicity_amount ;
resolution_target ;
resolution_possibility ;
halo_tuning ;
source_recognition_weight.
```

Le Conflict / Protection Manager ne doit pas interpréter ces données comme des erreurs par défaut.

Il doit d’abord demander :

```text
est-ce voulu par la scène ?
est-ce lié à une trajectoire active ?
est-ce réversible ?
est-ce lisible ?
est-ce compatible avec le corps ?
est-ce dangereux pour une dimension protégée ?
```

---

# 3. Contrat Conflict → Pitch

Le Conflict / Protection Manager peut demander au Pitch / Harmonic Field Manager :

```text
stabiliser sub ;
clarifier spectral_root ;
réduire microtonal_spread ;
protéger formant_focus ;
réduire partial_density ;
limiter pitch modulation ;
verrouiller temporairement une relation ;
retarder resolution_target ;
préserver body_trace ;
réduire halo_tuning ;
préserver source_recognition_weight.
```

Mais il doit éviter :

```text
forcer tous les champs vers le tempéré ;
nettoyer tous les partiels ;
réduire toute inharmonicité ;
faire disparaître les battements ;
quantifier automatiquement le live ;
lisser la tension harmonique féconde.
```

---

# 4. Table d’interprétation

## Microtonalité

```text
microtonal_spread faible + tension lisible
→ laisser vivre / surveiller.

microtonal_spread fort + résolution possible
→ maintenir tension, préparer résolution.

microtonal_spread fort + field_stability faible + corps perdu
→ demander stabilisation ou retour au centre.

microtonal_spread décoratif sans rôle
→ réduire ou rétrograder.
```

## Sub relation

```text
sub stable + champ mobile
→ tension potentiellement féconde.

sub instable + body_trace requis
→ protéger sub.

sub concurrence didgeridoo live
→ protéger live agency, réduire graves concurrents.

sub décroché sans trajectoire claire
→ signaler conflit corporel.
```

## Partiels

```text
partiels riches + lisibilité conservée
→ laisser vivre.

partiels denses + voix masquée
→ protéger voix / réduire partial_density.

partiels de gong + résolution armée
→ maintenir si queue contrôlée.

partiels trop alignés artificiellement
→ risque de perdre matière inharmonique.
```

## Formants

```text
formants live prioritaires
→ protéger.

formants transformés mais source encore reconnue
→ laisser vivre.

formants déplacés au point de perdre la source alors que reconnaissance requise
→ réduire formant_shift.

formants concurrents voix / didgeridoo
→ Conflict Manager arbitre selon rôle déclaré.
```

## Halo tuning

```text
halo accordé + rôle harmonique clair
→ autorisé.

halo inharmonique + suspension
→ peut être fécond si retour possible.

halo masquant centre, voix ou sub
→ réduire halo_tuning / halo_depth.

halo trop beau mais décoratif
→ signaler risque de beauté sans fonction.
```

---

# 5. Niveaux de gravité spécifiques

```text
H0 : champ stable ou tension féconde ;
H1 : micro-instabilité à surveiller ;
H2 : tension à signaler ;
H3 : réduction douce de spread ou densité ;
H4 : protection sub / formants / centre ;
H5 : résolution retardée ;
H6 : modulation verrouillée temporairement ;
H7 : trajectoire harmonique désarmée ;
H8 : urgence — stabiliser sub / retour centre / protéger live.
```

Ces niveaux peuvent être traduits vers les niveaux généraux `G0–G8` du Conflict / Protection Manager.

---

# 6. Cas test — Sub stable, champ instable

## Situation

```text
sub_center stable ;
halo_tuning flottant ;
gongs et clochettes contribuent à un champ instable ;
scène = suspension ;
body_trace requis.
```

## Réaction attendue

```text
Pitch Manager : signale field_stability moyenne mais body_trace présent ;
Conflict Manager : G1 / G2, surveiller sans réduire ;
Conductor : maintient suspension ;
Router : garde Retour au corps et Stabiliser sub disponibles, non urgents.
```

## Échec

```text
stabilisation automatique trop prudente ;
perte de suspension ;
halo réduit sans nécessité ;
sub rendu trop dominant.
```

---

# 7. Cas test — Sub instable en pré-drop

## Situation

```text
pré-drop armé ;
sub retenu ;
resolution_target proche ;
sub_pitch_relation instable ;
halo ouvert.
```

## Réaction attendue

```text
Pitch Manager : signale sub relation dangereuse ;
Conflict Manager : G5 ou G8 selon gravité ;
Conductor : retarde résolution si nécessaire ;
Router : promeut Stabiliser sub / Réduire halo ;
Trajectory Engine : maintient phase seuil.
```

## Échec

```text
résolution déclenchée malgré sub instable ;
sub nettoyé brutalement alors qu’une retenue était volontaire ;
pré-drop annulé alors qu’un retard suffisait.
```

---

# 8. Cas test — Gong comme résolution inharmonique

## Situation

```text
gong armé comme masse de résolution ;
partial_profile riche ;
inharmonicity_amount élevé ;
sub stable ;
queue longue mais contrôlable.
```

## Réaction attendue

```text
Pitch Manager : ne force pas le gong vers une note tempérée ;
Conflict Manager : laisse vivre inharmonicité si sub et voix ne sont pas masqués ;
Halo Controller : contrôle queue ;
Router : Partiels / Queue / Résoudre peuvent être visibles selon scène.
```

## Échec

```text
gong accordé trop proprement ;
partiels réduits par excès de prudence ;
sub masqué sans alerte ;
queue incontrôlée.
```

---

# 9. Cas test — Voix signal et formants concurrents

## Situation

```text
voix rôle = signal ;
formants importants ;
halo vocal ou résonateur actif ;
didgeridoo ou autre source formantique présent ;
semantic_clarity requise.
```

## Réaction attendue

```text
Pitch Manager : signale formant_conflict ;
Conflict Manager : protège voix si rôle signal déclaré ;
Router : promeut Protéger voix / Réduire masque ;
Timbre Mapper futur : évite matière formantique concurrente.
```

## Échec

```text
voix masquée ;
formants traités comme simples fréquences ;
rôle signal ignoré ;
source recognition perdue sans intention.
```

---

# 10. Cas test — Didgeridoo live et formant motion

## Situation

```text
didgeridoo live central ;
formant_motion actif ;
torsion résonante ;
analysis_confidence moyenne ;
sub synthétique présent.
```

## Réaction attendue

```text
Pitch Manager : suit formant_focus sans imposer quantification ;
Conflict Manager : protège agency live ;
Router : rend Désactiver influence automatique / Stabiliser grave accessibles ;
Conductor : réduit autonomie automatique si nécessaire.
```

## Échec

```text
didgeridoo quantifié comme basse ;
formant motion trop déterministe ;
sub écrase le live ;
contrôle humain absent.
```

---

# 11. Cas test — Microtonalité décorative

## Situation

```text
microtonal_spread actif ;
aucune trajectoire ne demande tension ;
aucune résolution n’est préparée ;
corps affaibli ;
écoute confuse.
```

## Réaction attendue

```text
Pitch Manager : signale microtension sans rôle ;
Conflict Manager : G3 / G4, réduire ou protéger centre ;
Conductor : peut demander retour au corps ;
Router : proposer Réduire instabilité / Retour au centre.
```

## Échec

```text
complexité microtonale gratuite ;
perte du corps ;
aucune sortie formelle ;
interface expose trop de paramètres techniques.
```

---

# 12. Règles de cohérence

```text
1. Une microtension peut être féconde si elle est située, lisible et résoluble.
2. Le sub peut résister au champ si le corps reste lisible.
3. Les objets inharmoniques ne doivent pas être forcés vers une propreté tempérée.
4. Les formants live doivent être protégés quand ils portent l’identité ou l’agency humaine.
5. Une résolution peut être retardée plutôt qu’annulée si la tension reste pertinente.
6. L’instabilité devient dangereuse si elle détruit corps, lisibilité, voix, live ou résolution.
7. Les contrôles techniques restent profonds sauf urgence ou valeur performative claire.
8. Le Conflict Manager peut demander stabilisation, mais ne doit pas lisser toute tension.
9. Le Pitch Manager signale les états du champ, il ne décide pas seul de la forme.
10. Le Router ne doit montrer que les contrôles harmoniques utiles au contexte.
```

---

# 13. Signaux minimaux à échanger

## Pitch → Conflict

```text
field_stability ;
sub_pitch_relation ;
partial_masking_risk ;
formant_conflict ;
microtonal_spread ;
resolution_possibility ;
source_recognition_weight ;
harmonic_tension.
```

## Conflict → Pitch

```text
stabilize_sub_request ;
reduce_spread_request ;
protect_formants_request ;
lock_pitch_modulation ;
delay_resolution_request ;
protect_center_request ;
allow_tension_state.
```

## Pitch → Router

```text
router_control_suggestions ;
harmonic_tension_label ;
stabilize_field_label ;
resolution_ready_label ;
deep_controls_available.
```

## Pitch → Conductor

```text
resolution_possibility ;
field_state ;
body_trace_status ;
harmonic_bifurcation_options.
```

---

# 14. Conclusion

L’interface Pitch / Harmonic Field ↔ Conflict / Protection est cohérente si :

```text
la tension harmonique peut vivre ;
le sub reste lisible ou volontairement retenu ;
les partiels peuvent être riches sans masquer ;
les formants peuvent porter l’identité de source ;
la microtonalité reste située et résoluble ;
les urgences de stabilisation restent accessibles ;
les objets inharmoniques ne sont pas forcés vers une grille classique ;
le live n’est pas quantifié sans nécessité.
```

## Prochaine étape

Après cet audit, le projet peut passer à :

```text
Timbre & Material Mapper
```

Ce module devra décider comment choisir ou transformer une matière sonore selon fonction, rôle, trajectoire, reconnaissance de source, abstraction, hybridation et contraintes de conflit.
