# MATERIAL_ASSET_SCHEMA_HARMONIC_DRONE_FIELDS

Version : v0.1  
Statut : schéma préparatoire `material_asset`. Sans asset individuel, sans sample confirmé, sans source validée, sans prototypage.

## Objet

Ce document définit comment décrire de futurs matériaux de bourdon / champ harmonique si Vesperare confirme le besoin d’un champ harmonique soutenu, de battements ou d’une expansion non ambient.

Il ne choisit pas encore entre :

```text
shruti box ;
harmonium ;
orgue ;
résonateur ;
engine harmonique ;
sample minimal ;
resampling ;
source de référence.
```

Il prépare la conversion :

```text
SOURCE_NEED_HARMONIC_DRONE_SHRUTI_ORGAN
→ profils de matériaux harmoniques
→ futurs material_assets
→ contrôles / protections / validations.
```

---

# 1. Rôle du schéma

Le champ harmonique / bourdon vise un manque réel :

```text
le didgeridoo donne souffle grave et pression ;
les guimbardes donnent micro-formants et micro-pulse ;
le sub donne centre physique ;
mais aucun des trois ne donne encore un champ harmonique large, tenu, contrôlable et polyphonique.
```

Le schéma doit permettre de décrire un matériau de bourdon non comme nappe ou décor, mais comme fonction musicale située :

```text
battements ;
suspension active ;
expansion ;
tension longue ;
champ harmonique ;
architecture ;
beauté autonome contrôlée ;
relation au corps techno.
```

---

# 2. Identité minimale du material_asset

```text
asset_id: à créer plus tard
asset_type: harmonic_drone_field_profile
source_need_id: SOURCE_NEED_HARMONIC_DRONE_SHRUTI_ORGAN
source_family: harmonic_drone / sustained_field / resonant_field
source_identity: shruti / harmonium / orgue / résonateur / engine / resampling / à définir
source_status: candidate / reference / generated / sampled / live / hybrid
ownership: Yohan / source externe / généré / à décider
sample_status: no_primary_sample_yet / conditional_sample / reference_only / generated
asset_status: schema_only / profiled / validated / active / archived
```

---

# 3. Dimensions sonores à documenter

## 3.1 Hauteur / pitch center

```text
pitch_center: note / fréquence / zone ressentie / indéterminée
pitch_center_stability: stable / légèrement mobile / instable / glissant
relation_to_sub: complément / conflit / fusion / sidechained / retrait
relation_to_didgeridoo: complément / conflit / continuité / contraste
microtonal_offset: aucun / léger / moyen / fort
```

## 3.2 Battements / microtensions

```text
beating_rate: absent / lent / moyen / rapide / variable
beating_depth: faible / moyen / fort
microtension_profile: stable / respirant / nerveux / irrégulier / instable
phase_motion: faible / moyen / fort
perceptual_tension: faible / moyenne / forte
```

## 3.3 Harmonie / densité

```text
harmonic_density: mince / moyenne / dense / très dense
interval_profile: unisson / quinte / quartes / cluster / accord / spectral / microtonal
partial_clarity: floue / moyenne / claire / très claire
polyphony_level: un / peu / moyen / large
harmonic_opacity_risk: faible / moyen / fort
```

## 3.4 Souffle / mouvement interne

```text
breath_or_air_presence: absent / faible / moyen / fort
movement_type: statique / respirant / ondulant / pulsé / battant / granulaire
agency_feel: mécanique / humain / généré / indéterminé / hybride
stasis_risk: faible / moyen / fort
```

## 3.5 Enveloppe / durée / trajectoire

```text
attack_profile: immédiat / lent / soufflé / fondu / articulé
sustain_profile: stable / mouvant / cyclique / fragile / instable
release_profile: court / moyen / long / coupé / fondu
duration_category: court / moyen / long / très long contrôlé
trajectory_function: suspension / montée / expansion / retrait / pré-résolution / retour au corps
```

## 3.6 Spectre / mix

```text
low_mid_load: faible / moyen / fort
high_content: faible / moyen / fort
masking_risk: sub / didgeridoo / guimbardes / voix / gong / tambour / aucun
stereo_width: mono / étroit / moyen / large / variable
headroom_risk: faible / moyen / fort
```

---

# 4. Rôles contextuels possibles

```text
possible_roles:
- champ harmonique de suspension ;
- bourdon de tension ;
- battements microtonaux ;
- masse harmonique respirante ;
- architecture harmonique ;
- beauté autonome contrôlée ;
- pré-résolution ;
- expansion non ambient ;
- fond harmonique filtré ;
- matière à résonateur ;
- source de convolution / empreinte harmonique ;
- contraste au sub ;
- support de voix signal ;
- préparation de gong ;
- espace harmonique autour du didgeridoo.
```

Rôles interdits ou à protéger :

```text
forbidden_or_risky_roles:
- nappe ambient décorative ;
- remplissage harmonique permanent ;
- décor sacré ;
- drone statique sans tension ;
- pseudo-méditation ;
- grandeur orgue/cathédrale plaquée ;
- accompagnement harmonique de chanson ;
- perte du corps techno ;
- masque du sub ;
- masque des guimbardes ;
- halo non fonctionnel.
```

---

# 5. Relations aux autres sources

## 5.1 Didgeridoo

```text
relation_possible: didgeridoo = souffle grave / corps ; champ harmonique = battements / masse / expansion.
risque: accumulation de drones, grave flou, perte de mouvement.
protection: un seul centre principal, relation au pitch_center, ducking, hiérarchie de scène.
```

## 5.2 Guimbardes

```text
relation_possible: guimbardes = micro-formants / micro-pulse ; champ harmonique = macro-champ / battements.
risque: surdensité de partiels et formants.
protection: filtrage dynamique, densité limitée, séparation temporelle.
```

## 5.3 Sub

```text
relation_possible: sub = centre physique ; champ harmonique = tension au-dessus ou autour du centre.
risque: low-mid overload, conflit de pitch_center, perte de mono clarity.
protection: mono low-end, EQ dynamique, sidechain, pitch alignment.
```

## 5.4 Gong

```text
relation_possible: gong = résolution/partiels ; champ harmonique = préparation ou post-résonance.
risque: surmonumentalité, ambientisation, halo trop long.
protection: réduction de queue, alternance, rareté, conflit bas-médium.
```

## 5.5 Tambour

```text
relation_possible: tambour = retour au corps ; champ harmonique = suspension avant/après impact.
risque: tambour noyé par bourdon, perte de grain de peau.
protection: transient priority, ducking, retrait du champ au moment de l’impact.
```

## 5.6 Voix / field recordings

```text
relation_possible: voix = signal humain ; field = lieu ; champ harmonique = support ou tension.
risque: voix + orgue + lieu = scène illustrative ou sacrée ; ambientisation.
protection: ne pas empiler sans fonction, hiérarchie stricte, rareté.
```

---

# 6. Modes de matérialisation possibles

## 6.1 Live profile

```text
applicable_to: shruti / harmonium si jouable et utile.
asset_type: live_instrument_profile
conditions: contrôle du jeu, accord, niveaux, relation sub/didgeridoo.
risques: complexité live, statisme, décor méditatif.
```

## 6.2 Conditional sample

```text
applicable_to: shruti / harmonium / orgue / drone rare.
asset_type: conditional_sample
conditions: besoin de souffle réel, battements réels ou architecture non générable.
minimum: 1–3 drones / accords / bourdons.
maximum_prudent_initial: 5.
risques: banque de nappes, décor, ambient.
```

## 6.3 Engine profile

```text
applicable_to: résonateur / modal synthesis / harmonic drone engine.
asset_type: engine_profile
conditions: besoin contrôlable par pitch_center, battements, densité, expansion.
risques: son synthétique, manque de souffle réel.
```

## 6.4 Reference only

```text
applicable_to: sources encore non validées.
asset_type: reference_profile
conditions: besoin harmonique pas encore confirmé par scènes.
risques: rester au niveau conceptuel sans matériau testable.
```

---

# 7. Traitements autorisés à documenter

```text
processing_candidates:
- EQ dynamique ;
- split grave / médium ;
- resonator ;
- modal synthesis ;
- convolution courte ;
- spectral freeze ;
- controlled saturation ;
- harmonic filtering ;
- beating enhancement ;
- pitch_center alignment ;
- sidechain avec sub ;
- ducking avec didgeridoo / voix / tambour ;
- largeur stéréo contrôlée ;
- low-mid guard.
```

Traitements à surveiller :

```text
processing_risks:
- ambientisation ;
- nappe permanente ;
- low-mid overload ;
- sacralité plaquée ;
- perte du corps ;
- disparition du pitch_center ;
- flou harmonique ;
- beauté décorative.
```

---

# 8. Contrôles live probables

```text
router_controls_expected:
- Drone active ;
- Champ harmonique ;
- Battements ;
- Expansion ;
- Tension harmonique ;
- Densité ;
- Pitch center ;
- Relation sub ;
- Relation didgeridoo ;
- Relation voix ;
- Distance ;
- Retrait ;
- Anti-ambient ;
- Low-mid safety.
```

Ces contrôles ne sont pas encore des paramètres Max for Live. Ce sont des besoins de contrôle musical.

---

# 9. Protections à prévoir

```text
protection_checks:
- ambient_excess_check ;
- low_mid_load_check ;
- sub_conflict_check ;
- didgeridoo_drone_accumulation_check ;
- voice_illustration_check ;
- sacred_decor_check ;
- harmonic_density_check ;
- stasis_check ;
- body_loss_check ;
- role_context_check.
```

---

# 10. Validation minimale future

Un matériau de champ harmonique ne devient pas `material_asset` actif tant qu’il n’a pas :

```text
un rôle musical possible ;
un pitch_center ou une relation explicite au pitch_center ;
un profil de battements ou une raison de leur absence ;
un profil de densité harmonique ;
un risque esthétique identifié ;
au moins une protection ;
une relation claire avec didgeridoo / guimbardes / sub ;
une décision : active / référence / archive / à réévaluer.
```

---

# 11. Prochaine action

Revenir aux scènes et trajectoires pour savoir où le champ harmonique est vraiment nécessaire :

```text
scène de suspension active ;
scène d’expansion ;
scène de beauté autonome ;
scène de pré-résolution ;
scène de tension longue.
```

Puis seulement créer des assets concrets ou chercher des sources.
