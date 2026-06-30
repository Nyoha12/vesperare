# MATERIAL_ASSET_SCHEMA_LIVE_JAW_HARPS

Version : v0.1  
Statut : schéma préparatoire `material_asset`. Sans asset individuel, sans sample, sans prototypage.

## Objet

Ce document définit comment décrire les guimbardes live de Yohan lorsqu’elles deviendront des `material_assets` utilisables dans le système Vesperare.

Il ne crée pas encore :

```text
les fiches des ~20 guimbardes ;
une banque de samples ;
un preset de traitement ;
un module Max for Live ;
un mapping définitif.
```

Il prépare la conversion :

```text
SOURCE_NEED_LIVE_JAW_HARPS_FORMANT_MICROPULSE
→ live material profiles
→ futurs material_assets individuels ou groupés
→ traitements / contrôles / protections / validations.
```

---

# 1. Rôle du schéma

Les guimbardes sont une source live fixe.

Elles portent déjà plusieurs besoins du style :

```text
micro-pulse ;
formants de bouche ;
voix-sans-voix ;
torsion ;
brillance rythmique ;
polytexture ;
ligne vivante ;
hypnose active.
```

Le schéma doit permettre de documenter chaque guimbarde non comme objet organologique neutre, mais comme matériau musical situé.

---

# 2. Identité minimale du material_asset

```text
asset_id: à créer plus tard
asset_type: live_instrument_profile
source_need_id: SOURCE_NEED_LIVE_JAW_HARPS_FORMANT_MICROPULSE
source_family: guimbarde
source_identity: guimbarde live de Yohan
instrument_index: à définir parmi les ~20 guimbardes
instrument_name_or_label: optionnel
ownership: Yohan
live_status: always_available_if_selected
sample_status: no_primary_sample
asset_status: schema_only / profiled / validated / active / archived
```

---

# 3. Dimensions sonores à documenter

## 3.1 Hauteur / centre spectral

```text
felt_pitch: note ou zone ressentie
pitch_stability: stable / mobile / instable / indéterminée
pitch_center_relation: compatible / tension / conflit / non pertinent
microtonal_behavior: faible / moyen / fort
beating_profile: absent / léger / moyen / fort
```

## 3.2 Formants / bouche

```text
formant_range: grave / médium / aigu / large
mouth_position_sensitivity: faible / moyenne / forte
vowel_like_profiles: ouvert / fermé / nasal / sombre / brillant / variable
voice_without_voice_strength: faible / moyenne / forte
semantic_risk: nul / faible / moyen / fort
```

## 3.3 Attaque / micro-pulse

```text
attack_profile: doux / net / sec / claquant / double / irrégulier
micro_pulse_strength: faible / moyenne / forte
rhythmic_precision: stable / souple / instable / très performative
accent_capacity: faible / moyenne / forte
repeatability: faible / moyenne / forte
```

## 3.4 Timbre / brillance

```text
brightness_level: sombre / moyen / brillant / très brillant
metallic_edge: doux / net / agressif potentiel
high_fatigue_risk: faible / moyen / fort
spectral_density: mince / moyenne / dense / très dense
noise_component: faible / moyen / fort
```

## 3.5 Torsion / ligne vivante

```text
torsion_capacity: faible / moyenne / forte
line_potential: ponctuel / motif / ligne / drone-pulse / texture
acid_like_risk: faible / moyen / fort
movement_type: stable / ondulant / tremblé / plié / nerveux
```

---

# 4. Rôles contextuels possibles

Une même guimbarde peut avoir plusieurs rôles selon la scène.

```text
possible_roles:
- micro-pulse principal ;
- micro-pulse secondaire ;
- voix-sans-voix ;
- torsion rythmique ;
- signal métallique fin ;
- réponse au didgeridoo ;
- contraste au sub ;
- contraste au gong ;
- contraste au tambour ;
- densification polytexturale ;
- trace de bouche ;
- matière formantique ;
- beauté miniature ;
- tension pré-drop ;
- halo court par traitement.
```

Rôles interdits ou à protéger :

```text
forbidden_or_risky_roles:
- remplacement du sub ;
- remplacement du gong ;
- remplacement du tambour ;
- remplissage aigu permanent ;
- gimmick ethnique ;
- démonstration instrumentale ;
- brillance punitive ;
- solo décoratif sans fonction ;
- accumulation confuse de formants.
```

---

# 5. Relations aux autres sources

## 5.1 Didgeridoo

```text
relation_possible: bouche / souffle / formants / grave-aigu / tension corporelle.
risque: conflit de formants ou masque dans les médiums.
protection: filtrage dynamique, rôle de scène, espace différencié, hiérarchie de priorité.
```

## 5.2 Sub

```text
relation_possible: contraste micro/macro, sol grave + micro-pulse.
risque: sub trop fort qui efface la finesse ou micro-pulse trop brillante au-dessus du sub.
protection: high guard, density limit, sidechain léger si nécessaire.
```

## 5.3 Gong

```text
relation_possible: micro-métal contre macro-métal, partiels courts contre queue longue.
risque: surcharge métallique, confusion brillance/halo.
protection: séparation temporelle, contrôle de queue, priorité gong/guimbarde selon scène.
```

## 5.4 Tambour

```text
relation_possible: micro-attaque métallique contre attaque peau.
risque: guimbardes trop fines ou trop nombreuses masquant l’impact peau.
protection: fenêtre temporelle, filtrage, priorité attaque tambour si retour au corps.
```

## 5.5 Voix

```text
relation_possible: bouche instrumentale contre bouche vocale.
risque: accumulation de formants, gimmick bouche, masque de sémantique.
protection: priorité voix si signal sémantique, guimbardes en retrait ou filtrées.
```

## 5.6 Field recordings / lieux

```text
relation_possible: micro-pulse dans un espace réel ou contre-espace.
risque: field recording qui masque les micro-attaques.
protection: ducking, nettoyage spectral, placement différencié.
```

---

# 6. Traitements autorisés à documenter

Chaque future fiche de guimbarde pourra indiquer quels traitements sont pertinents.

```text
processing_candidates:
- EQ dynamique ;
- formant filter ;
- resonator ;
- short delay ;
- transient shaping ;
- soft gate ;
- envelope follower ;
- spectral focus ;
- controlled saturation ;
- micro-pitch relation ;
- spatialisation courte ;
- convolution courte ;
- granular micro-texture.
```

Traitements à surveiller :

```text
processing_risks:
- surbrillance ;
- nasalité fatigante ;
- acidification trop évidente ;
- caricature ethnique ;
- perte du geste live ;
- lissage trop propre ;
- effet gadget.
```

---

# 7. Contrôles live probables

```text
router_controls_expected:
- Guimbarde active ;
- Intensité guimbarde ;
- Micro-pulse ;
- Formants ;
- Torsion ;
- Brillance ;
- Densité ;
- Résonance ;
- Distance ;
- High safety ;
- Relation didgeridoo ;
- Relation sub ;
- Relation voix ;
- Retrait rapide.
```

Ces contrôles ne sont pas encore des paramètres Max for Live. Ce sont des besoins de contrôle musical.

---

# 8. Protections à prévoir

```text
protection_checks:
- high_fatigue_check ;
- formant_masking_check ;
- sub_relation_check ;
- voice_masking_check ;
- gong_metal_overload_check ;
- frame_drum_attack_masking_check ;
- density_limit_check ;
- gimmick_check ;
- role_context_check.
```

---

# 9. Validation minimale future

Une guimbarde ne devient pas `material_asset` actif tant qu’elle n’a pas :

```text
un rôle musical possible ;
un profil de hauteur ou de centre spectral ;
un profil de formants ;
un profil d’attaque ;
un risque identifié ;
au moins une protection ;
une relation claire avec didgeridoo/sub/gong/tambour/voix selon contexte ;
une décision : active / référence / archive / à réévaluer.
```

---

# 10. Prochaine action

Créer ensuite :

```text
MATERIAL_ASSET_SCHEMA_LIVE_DIDGERIDOO.md
```

Puis seulement après :

```text
matrice des manques restants après base live + compensations ;
retour aux instruments candidats supplémentaires.
```
