# 12_TIMBRE_REGISTRY_CONFLICT_PITCH_INTERFACE

Version : v0.1  
Statut : audit d’interface entre modules, sans prototypage.

## Objet

Ce document vérifie la cohérence entre :

```text
11_TIMBRE_MATERIAL_MAPPER ;
01_OBJECT_REGISTRY ;
09_PITCH_HARMONIC_FIELD_MANAGER ;
07_CONFLICT_PROTECTION_MANAGER ;
10_PITCH_CONFLICT_INTERFACE.
```

Il sert à vérifier que le choix ou la transformation d’une matière sonore reste compatible avec :

```text
l’identité de l’objet ;
les rôles disponibles ;
les profils activables ;
les contraintes de pitch, partiels et formants ;
les risques de masquage ;
les protections déclarées ;
le niveau de reconnaissance ou d’abstraction souhaité ;
la trajectoire active ;
la scène ;
la jouabilité live.
```

---

# 1. Question centrale

```text
Quand le Timbre & Material Mapper propose une matière, comment vérifier qu’elle respecte l’objet, le champ harmonique, les protections et le rôle musical ?
```

Réponse générale :

```text
Object Registry = ce que l’objet est et peut devenir ;
Timbre & Material Mapper = comment une matière peut porter un rôle maintenant ;
Pitch / Harmonic Field Manager = contraintes de centres, partiels, formants, sub, halo ;
Conflict / Protection Manager = arbitrage des risques et protections ;
Router = exposition des contrôles nécessaires.
```

---

# 2. Principe général

Le Mapper ne doit pas créer une banque de sons cachée.

Il doit éviter :

```text
source choisie pour sa beauté seule ;
source naturelle choisie comme décor ;
transformation technique devenue effet ;
objet réinventé sans mise à jour du Registry ;
matière choisie sans tenir compte du rôle ;
source recognition ignorée ;
abstraction excessive ;
conflit pitch / formants / sub non signalé.
```

Principe :

```text
matière proposée = objet compatible + rôle situé + stratégie de source + degré de transformation + contraintes pitch/conflit + contrôles nécessaires.
```

---

# 3. Contrat Object Registry → Mapper

Object Registry fournit :

```text
object_id ;
object_name ;
source_type ;
material_family ;
object_profiles ;
role_candidates ;
forbidden_roles ;
trajectory_capabilities ;
source_recognition_priority ;
protected_dimensions ;
risk_profile ;
relations_to_other_objects ;
live_availability ;
certainty_level.
```

Le Mapper ne doit pas interpréter une liste d’objets comme une banque de samples.

Il doit demander :

```text
quel rôle cet objet doit-il porter maintenant ?
quelle facette de l’objet est activée ?
quelle trace de source doit rester ?
quelle transformation est compatible avec ce rôle ?
quelle transformation est interdite ?
```

---

# 4. Contrat Mapper → Object Registry

Le Mapper doit renvoyer au Registry :

```text
material_strategy ;
role_specific_use ;
recognition_level ;
abstraction_level ;
transformation_chain ;
hybridization_plan ;
source_trace_preserved ;
new_risk_profile ;
new_protection_needs ;
updated_role_fit ;
updated_trajectory_fit ;
new_material_variant_if_needed.
```

Si une transformation crée une nouvelle entité suffisamment distincte, elle doit être renvoyée au Registry comme variante ou sous-objet, pas rester cachée dans le Mapper.

Exemple :

```text
gong brut → objet Gong ;
gong resynthétisé + sub discret + queue raccourcie → variante Gong_masse_resolution ;
voix granulaire méconnaissable → sous-objet Voix_matière_grain si usage récurrent.
```

---

# 5. Contrat Pitch → Mapper

Pitch / Harmonic Field Manager fournit :

```text
pitch_center ;
spectral_root ;
sub_pitch_relation ;
partial_alignment ;
partial_density ;
formant_focus ;
formant_conflict ;
halo_tuning ;
field_stability ;
resolution_target ;
source_recognition_weight.
```

Le Mapper doit utiliser ces informations pour éviter :

```text
matière incompatible avec le centre spectral ;
partiels masquants ;
formants concurrents ;
halo qui dissout le centre ;
source transformée au point de perdre le rôle ;
sub renforcé mais harmoniquement dangereux.
```

---

# 6. Contrat Mapper → Pitch

Le Mapper doit renvoyer au Pitch Manager :

```text
material_partial_profile ;
material_formant_profile ;
material_pitch_ambiguity ;
source_trace_strategy ;
transformation_pitch_effect ;
formant_shift_intention ;
resonator_constraints ;
sub_reinforcement_plan ;
halo_material_profile ;
pitch_modulation_needs.
```

Exemple :

```text
si le Mapper propose une voix matière avec formant shift,
Pitch doit savoir si les formants doivent rester reconnaissables ou devenir abstraits.
```

---

# 7. Contrat Conflict → Mapper

Conflict / Protection Manager peut demander :

```text
préserver trace de source ;
réduire abstraction ;
changer matériau ;
réduire densité de matière ;
réduire bas-médium ;
protéger live input ;
protéger voix ;
verrouiller un procédé ;
retarder transformation ;
réduire CPU / latence ;
préserver retour au corps.
```

Le Mapper doit répondre par :

```text
material_adjustment ;
alternative_material ;
reduced_transformation_chain ;
source_trace_recovery ;
role_preservation_strategy ;
low_cost_variant ;
safer_hybridization ;
warning_if_function_will_be_weakened.
```

---

# 8. Contrat Mapper → Conflict

Le Mapper doit signaler :

```text
masking_risk ;
mid_load_risk ;
fatigue_risk ;
source_loss_risk ;
style_drift_risk ;
role_mismatch ;
pitch_conflict ;
formant_conflict ;
sub_conflict ;
live_agency_risk ;
cpu_risk ;
latency_risk.
```

Il doit aussi indiquer si le conflit est :

```text
évitable par réduction ;
évitable par changement de matière ;
évitable par retard ;
acceptable comme tension féconde ;
nécessaire à la fonction musicale ;
dangereux pour la scène ou le live.
```

---

# 9. Séquence de décision recommandée

Pour chaque demande de matière :

```text
1. Identifier fonction et phénomène.
2. Identifier rôle actuel ou rôle demandé.
3. Demander objets candidats au Registry.
4. Évaluer les profils activables.
5. Choisir stratégie de source : directe, transformée, hybride, synthèse, resynthèse, offline.
6. Définir recognition_level et abstraction_level.
7. Vérifier pitch, partiels, formants, sub et halo.
8. Vérifier conflits et protections.
9. Définir contrôles jouables et contrôles profonds.
10. Définir exigences pour les Sound Engines.
11. Retourner les variantes récurrentes au Registry.
```

---

# 10. Cas test — Gong comme masse de résolution

## Situation

```text
Conductor : pré-drop armé ;
Trajectory Engine : phase seuil ;
Registry : Gong = impact + halo + partiels + résolution ;
Pitch : inharmonicité forte, sub stable ;
Conflict : surveille bas-médium et queue ;
Mapper : doit choisir matière de résolution.
```

## Réaction attendue

```text
Mapper choisit gong dense avec attaque préservée ;
source recognition moyenne ;
abstraction limitée ;
queue contrôlée ;
partiels non tempérés préservés ;
hybridation sub discrète seulement si nécessaire ;
Conflict reçoit mid_load_risk ;
Pitch reçoit material_partial_profile ;
Router peut exposer Partiels / Queue / Résoudre selon contexte.
```

## Échec

```text
gong traité comme sample décoratif ;
gong forcé en note tempérée ;
queue incontrôlée ;
sub masqué ;
rôle résolution affaibli.
```

---

# 11. Cas test — Voix signal vs voix matière

## Situation A — voix signal

```text
Registry : voix peut être signal, matière, cri, halo ;
Conductor : pré-drop avec voix signal ;
Pitch : formants importants ;
Conflict : semantic_clarity protégée ;
Mapper : doit choisir traitement.
```

Attendu :

```text
préserver trace humaine ;
limiter abstraction ;
protéger formants ;
éviter masque par halo ou résonateur ;
Router : Protéger voix / Réduire masque possibles.
```

## Situation B — voix matière

```text
Conductor : suspension / texture ;
semantic_clarity non prioritaire ;
Trajectory : fragmentation ou halo vocal ;
Mapper : peut abstraire.
```

Attendu :

```text
autoriser granulation, souffle, formant drift ;
garder trace humaine si utile ;
prévenir source_loss_risk si abstraction totale ;
renvoyer variante au Registry si usage récurrent.
```

## Échec général

```text
voix devient chanson non voulue ;
voix devient gimmick ;
voix signal masquée ;
voix matière perd toute trace sans intention.
```

---

# 12. Cas test — Didgeridoo live + renfort sub

## Situation

```text
Registry : didgeridoo live = grave + souffle + formants + agency ;
Pitch : formant_focus actif, sub relation sensible ;
Conflict : protège live agency ;
Mapper : propose éventuel renfort sub.
```

## Réaction attendue

```text
renfort sub discret et désactivable ;
ne pas remplacer source live ;
préserver souffle et formants ;
indiquer live_agency_risk si renfort domine ;
Pitch reçoit sub_reinforcement_plan ;
Router peut exposer Protéger live / Réduire graves concurrents.
```

## Échec

```text
didgeridoo devient basse automatique ;
renfort sub masque formants ;
source live perd priorité ;
Mapper crée une identité synthétique non déclarée.
```

---

# 13. Cas test — Eau / pluie comme texture fonctionnelle

## Situation

```text
Registry : field recording / eau / pluie possible ;
Conductor : suspension ou transition ;
Trajectory : halo, post-résonance ou densité naturelle ;
Conflict : surveille masque voix / impact ;
Mapper : doit éviter décor naturaliste.
```

## Réaction attendue

```text
définir rôle précis : halo, grain, microtexture, post-résonance, masque contrôlé ;
choisir reconnaissance selon scène ;
préférer corpus minimal ;
contrôler densité ;
signaler masking_risk ;
Router : Distance / Grain / Densité matière / Réduire masque.
```

## Échec

```text
paysage sonore plaqué ;
source illustrative ;
banque eau trop grande ;
texture permanente sans fonction ;
masquage non signalé.
```

---

# 14. Cas test — Sub synthétique naturalisé

## Situation

```text
fonction = corps / fondation / pression ;
Registry : sub possible ;
Pitch : sub_center et relation au champ ;
Conflict : protège corps et stabilité ;
Mapper : propose synthèse naturalisée.
```

## Réaction attendue

```text
synthèse stable et corporelle ;
contour sculpté ;
relation au pitch field sans perte du corps ;
source recognition non nécessaire mais comportement physique requis ;
Conflict averti si sub trop large ou flou ;
Router : Stabiliser sub / Corps / Réduire pression si besoin.
```

## Échec

```text
basse standard générique ;
sub trop large ;
pression confondue avec volume ;
sub ignore pitch field ;
sub masque live.
```

---

# 15. Cas test — Field recording presque intact

## Situation

```text
source = lieu / ambiance / biophonie / géophonie ;
Conductor : beauté autonome ou suspension ;
Mapper : source recognition élevée possible ;
Conflict : surveille décor, masque et perte de corps.
```

## Réaction attendue

```text
autoriser source presque intacte seulement si fonction claire ;
conserver trace de lieu si elle sert matière / scène ;
prévoir sortie formelle ou retour corps ;
Router : Distance / Protéger matière / Réduire système ;
Conflict : surveiller ambientisation.
```

## Échec

```text
field recording décoratif ;
parenthèse naturaliste ;
aucune trajectoire ;
perte de tension techno ;
retour au corps impossible.
```

---

# 16. Règles de cohérence

```text
1. Le Mapper ne crée pas d’objet permanent sans retour au Registry.
2. Un matériau n’est valide que s’il porte un rôle situé.
3. La reconnaissance de source dépend du rôle, pas d’un goût général.
4. L’abstraction est utile seulement si elle sert la fonction.
5. La synthèse est autorisée si elle porte mieux le phénomène.
6. Le naturel n’est pas une valeur en soi.
7. Les contraintes Pitch doivent être consultées avant choix définitif.
8. Les conflits doivent être signalés avant engine final.
9. Les transformations techniques restent profondes sauf valeur performative claire.
10. Un corpus est construit seulement si une fonction ou un test le justifie.
11. L’agency live prime sur l’hybridation.
12. Une matière belle mais sans trajectoire doit être refusée ou mise en attente.
```

---

# 17. Signaux minimaux à échanger

## Registry → Mapper

```text
object_id ;
role_candidates ;
active_profiles ;
source_recognition_priority ;
protected_dimensions ;
risk_profile ;
relations_to_other_objects.
```

## Mapper → Registry

```text
material_variant ;
role_specific_use ;
recognition_level ;
abstraction_level ;
new_risk_profile ;
new_protection_needs.
```

## Pitch → Mapper

```text
spectral_root ;
partial_alignment ;
formant_focus ;
sub_pitch_relation ;
halo_tuning ;
field_stability ;
source_recognition_weight.
```

## Mapper → Pitch

```text
material_partial_profile ;
material_formant_profile ;
source_trace_strategy ;
transformation_pitch_effect ;
sub_reinforcement_plan.
```

## Mapper → Conflict

```text
masking_risk ;
mid_load_risk ;
source_loss_risk ;
style_drift_risk ;
role_mismatch ;
live_agency_risk ;
cpu_risk ;
latency_risk.
```

## Conflict → Mapper

```text
preserve_source_trace ;
reduce_abstraction ;
change_material ;
protect_live ;
protect_voice ;
reduce_density ;
lock_process ;
delay_transformation.
```

---

# 18. Conclusion

L’interface Timbre / Material ↔ Registry / Pitch / Conflict est cohérente si :

```text
la matière sert une fonction ;
l’objet garde une identité claire dans le Registry ;
la source est reconnue ou abstraite selon rôle ;
les partiels, formants et sub sont compatibles avec le champ ;
les conflits sont signalés avant production sonore ;
les outils ne sont pas choisis avant nécessité ;
les traitements profonds restent profonds ;
le naturel n’est pas utilisé comme décor ;
le live conserve son agency.
```

## Prochaine étape

Après cet audit, le projet peut passer à :

```text
Sound Engines / Instruments
```

Mais les Sound Engines devront rester au service du Mapper, du Registry, du Pitch et du Conflict Manager. Ils ne doivent pas devenir le point de départ esthétique du système.
