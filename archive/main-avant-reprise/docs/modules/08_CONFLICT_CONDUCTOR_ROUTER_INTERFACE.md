# 08_CONFLICT_CONDUCTOR_ROUTER_INTERFACE

Version : v0.1  
Statut : audit d’interface entre modules, sans prototypage.

## Objet

Ce document vérifie la cohérence entre :

```text
07_CONFLICT_PROTECTION_MANAGER ;
04_SCENE_PERFORMANCE_CONDUCTOR ;
05_CONTEXTUAL_CONTROL_ROUTER ;
06_CONDUCTOR_ROUTER_INTERFACE.
```

Il sert à formaliser comment un conflit ou une protection modifie :

```text
la scène ;
les trajectoires armées ;
les retards / désarmements ;
les contrôles visibles ;
les urgences ;
les contrôles masqués ou verrouillés ;
le niveau d’autonomie.
```

---

# 1. Question centrale

```text
Quand le Conflict / Protection Manager détecte un risque, comment le Conductor et le Router doivent-ils réagir sans casser la performance ?
```

Réponse générale :

```text
Conflict / Protection Manager = évalue le risque et propose une action ;
Conductor = décide si la scène, trajectoire ou autorisation doit changer ;
Router = rend les protections et urgences jouables au bon moment.
```

---

# 2. Contrat général

## Conflict / Protection Manager → Conductor

Le Conflict Manager envoie au Conductor :

```text
conflict_state ;
conflict_severity ;
affected_scene ;
affected_trajectory ;
affected_event ;
protected_dimensions ;
delay_request ;
lock_request ;
cancel_request ;
autonomy_warning ;
conductor_warning ;
reversibility_state.
```

Le Conductor répond par :

```text
maintain_scene ;
protect_scene ;
delay_trajectory ;
disarm_event ;
forbid_bifurcation ;
reduce_autonomy ;
request_router_emergency ;
request_deep_control ;
keep_tension_alive.
```

## Conflict / Protection Manager → Router

Le Conflict Manager envoie au Router :

```text
emergency_promotion ;
controls_to_promote ;
controls_to_mask ;
controls_to_lock ;
deep_controls_to_enable ;
feedback_messages ;
risk_display_level ;
manual_override_request.
```

Le Router répond par :

```text
visible_emergency_controls ;
updated_priority_levels ;
masked_controls ;
locked_controls ;
interface_warning ;
performer_action_available ;
deep_view_available.
```

---

# 3. Table d’interprétation gravité → Conductor / Router

```text
G0 — aucune action
Conductor : maintenir scène.
Router : aucun changement.

G1 — surveiller
Conductor : aucun changement formel.
Router : aucun changement visible, possible marquage interne.

G2 — signaler
Conductor : recevoir information discrète.
Router : message discret ou indicateur non intrusif.

G3 — réduire doucement
Conductor : maintenir scène.
Router : contrôle de réduction peut devenir contextuel.

G4 — protéger activement
Conductor : protéger dimension / objet.
Router : promouvoir contrôle de protection.

G5 — retarder
Conductor : retarder trajectoire / événement.
Router : afficher Retarder / Maintenir / Stabiliser si pertinent.

G6 — verrouiller temporairement
Conductor : verrouiller trajectoire ou dimension.
Router : masquer ou verrouiller contrôle correspondant.

G7 — annuler / désarmer
Conductor : désarmer événement ou trajectoire.
Router : retirer contrôle d’action, garder retour / stabilisation.

G8 — urgence performative
Conductor : suspendre ou protéger si nécessaire.
Router : promouvoir immédiatement contrôle d’urgence P0.
```

---

# 4. Principe de tension féconde

Un conflit ne doit pas automatiquement entraîner une réduction.

Avant d’agir, le Conflict Manager doit évaluer :

```text
la tension est-elle lisible ?
est-elle située dans une scène compatible ?
est-elle réversible ?
sert-elle une trajectoire ?
menace-t-elle le corps, le live, la voix, le sub ou le confort ?
le performeur peut-il l’interrompre ?
```

Si oui :

```text
laisser vivre ;
surveiller ;
garder contrôle d’urgence disponible ;
ne pas lisser.
```

Si non :

```text
réduire ;
protéger ;
retarder ;
verrouiller ;
annuler si nécessaire.
```

---

# 5. Cas test — Pré-drop autorisé mais sub instable

## Situation

```text
Conductor : pré-drop autorisé et armé ;
Trajectory Engine : phase seuil ;
Object Registry : sub rôle = trace corporelle ;
Conflict Manager : sub_stability faible + halo ouvert ;
Router : contrôles Retarder / Résoudre visibles.
```

## Réaction attendue

```text
Conflict Manager → Conductor : delay_request sur résolution ;
Conflict Manager → Router : promouvoir Stabiliser sub + Réduire halo ;
Conductor : maintenir phase seuil, retarder résolution ;
Router : garder Retarder / Annuler / Retour au corps visibles ;
Trajectory Engine : ne pas déclencher résolution tant que sub n’est pas stabilisé.
```

## Échec

```text
résolution automatique malgré sub instable ;
Stabiliser sub non visible ;
pré-drop annulé alors qu’un retard suffisait ;
halo réduit brutalement sans raison musicale.
```

---

# 6. Cas test — Beauté autonome menacée par système trop bavard

## Situation

```text
Conductor : beauté autonome exposée ;
Object Registry : gong ou voix nue objet central ;
Trajectory Engine : exposition / post-résonance ;
Router : Objet central, Queue, Distance visibles ;
Conflict Manager : densité contextuelle excessive, système trop bavard.
```

## Réaction attendue

```text
Conflict Manager → Conductor : protect_scene + reduce_autonomy ;
Conflict Manager → Router : promouvoir Réduire système / Protéger matière / Geler-Reprise ;
Conductor : empêcher densification ou macro-bifurcation ;
Router : masquer pré-drop, densification, feedback agressif ;
Sound Engines : réduire couches non nécessaires.
```

## Échec

```text
beauté autonome devient décor sans sortie ;
le système ajoute des couches automatiquement ;
la protection devient interdiction permanente ;
Retour au corps disparaît.
```

---

# 7. Cas test — Didgeridoo live et sub synthétique en conflit

## Situation

```text
Conductor : torsion live / grave / formants ;
Object Registry : didgeridoo = objet live prioritaire ;
Live Interpreter : didgeridoo occupe grave + formants ;
Trajectory Engine : torsion résonante ;
Conflict Manager : sub synthétique concurrence le centre grave.
```

## Réaction attendue

```text
Conflict Manager → Conductor : protect live agency + protect grave ;
Conflict Manager → Router : promouvoir Protéger live / Réduire graves concurrents / Stabiliser sub ;
Conductor : réduire autonomie automatique sur sub ;
Router : rendre Désactiver influence automatique accessible ;
Pitch Manager futur : vérifier sub_pitch_relation ;
Spectral Governor : surveiller bas-médium.
```

## Échec

```text
didgeridoo réduit à une basse automatique ;
sub synthétique écrase live ;
formants masqués ;
analyse impose un rôle ;
contrôles de protection live absents.
```

---

# 8. Cas test — Polytexture dense mais tension féconde

## Situation

```text
Conductor : corps plein / densification ;
Trajectory Engine : densification polytexturale ;
Object Registry : polytexture rôle = densité articulée ;
Conflict Manager : mid_load modéré, accents lisibles ;
Router : Densité, Lisibilité, Accents visibles.
```

## Réaction attendue

```text
Conflict Manager : G1 ou G2, surveiller / signaler ;
Conductor : maintenir densification ;
Router : garder Réduire densité disponible mais non urgent ;
Spectral Governor : surveiller bas-médium ;
aucune réduction automatique tant que la tension reste lisible.
```

## Échec

```text
réduction automatique trop prudente ;
polytexture lissée ;
intensité affaiblie ;
Router panique avec trop d’alertes.
```

---

# 9. Règles de cohérence

```text
1. Un risque ne devient urgence que s’il menace une dimension protégée ou la jouabilité.
2. Une tension féconde doit rester possible.
3. Le Conductor décide des conséquences formelles.
4. Le Router décide de la visibilité des protections.
5. Le Conflict Manager propose, alerte et demande, mais ne compose pas seul.
6. Les urgences doivent rester jouables même si le contrôle profond correspondant est masqué.
7. Les protections ne doivent pas effacer l’identité sonore.
8. Les actions doivent être aussi localisées que possible : dimension avant objet, objet avant scène, scène avant forme globale.
9. Retarder vaut mieux qu’annuler quand la trajectoire reste pertinente.
10. L’override humain doit rester possible.
```

---

# 10. Signaux minimaux à échanger

## Vers Conductor

```text
severity_level ;
affected_scene ;
affected_trajectory ;
affected_event ;
protected_dimension ;
recommended_form_action ;
reversibility_state ;
autonomy_warning.
```

## Vers Router

```text
severity_level ;
controls_to_promote ;
controls_to_mask ;
controls_to_lock ;
emergency_status ;
message_label ;
deep_control_access.
```

## Vers Trajectory Engine

```text
delay_request ;
phase_hold_request ;
operation_limit ;
resolution_block ;
bifurcation_warning.
```

## Vers Governors / Output

```text
spectral_reduction_request ;
halo_reduction_request ;
sub_stabilization_request ;
mid_load_warning ;
output_translation_warning.
```

---

# 11. Conclusion

L’interface Conflict / Protection ↔ Conductor / Router est cohérente si :

```text
le Conflict Manager évalue et propose ;
le Conductor décide des conséquences de scène / trajectoire / forme ;
le Router rend les protections jouables ;
les tensions fécondes restent possibles ;
les urgences restent immédiates ;
les protections ne deviennent pas une police musicale permanente.
```

## Prochaine étape

Après cet audit, le système peut passer au prochain module :

```text
Pitch / Harmonic Field Manager
```

Mais il faudra y garder les contraintes du Conflict / Protection Manager : stabilité du sub, lisibilité des partiels, tension microtonale réversible, relation aux formants, et possibilité de résolution.
