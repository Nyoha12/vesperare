# SOURCE_NEED_LIVE_JAW_HARPS_FORMANT_MICROPULSE

Version : v0.1  
Statut : première fiche `source_need` issue d’une source live fixe. Sans sample, sans asset, sans prototypage.

## Objet

Cette fiche décrit le besoin musical porté par les guimbardes de Yohan.

Elle ne décrit pas une banque de samples.

Elle sert à préparer :

```text
captation live ;
traitement live ;
formants ;
micro-pulse ;
torsion ;
résonateurs ;
rôles scéniques ;
protections de mix ;
futures métadonnées d’assets si des références ou secours sont créés.
```

---

# 1. SOURCE_NEED

```text
source_need_id: SOURCE_NEED_LIVE_JAW_HARPS_FORMANT_MICROPULSE
source_need_origin: instrument_source_candidate + live fixed source + besoin esthétique/phénoménal
linked_candidates: [cand_yohan_jaw_harps_01]
function_tags: [micro-pulse, ligne vivante, torsion, brillance rythmique, voix-sans-voix, polytexture, hypnose active]
phenomenon_tags: [torsion résonante, formants de bouche, micro-impacts métalliques, brillance naturalisée, hypnose par variation timbrale, ligne formantique]
role_target: source live de micro-pulse formantique et de torsion rythmique
object_candidates: [Guimbarde live, Guimbarde traitée, Ligne formantique, Micro-pulse métallique, Voix-sans-voix]
scene_affinities: [scènes de tension, scènes de micro-pulsation, scènes de torsion, scènes de polytexture, scènes de suspension active]
trajectory_affinities: [torsion résonante, densification polytexturale, répétition non redondante, pré-drop fragmenté, suspension → retour au corps]
centrality_level: haute comme source live, moyenne comme source structurelle globale
quality_requirement: haute pour captation, stabilité, contrôle d’aigus et lisibilité des formants
source_recognition_requirement: variable ; reconnaissance possible mais non obligatoire
abstraction_allowed: forte, si la source garde des traces de formants / lamelle / bouche
live_requirement: obligatoire ; source toujours live selon donnée Yohan
generation_viability: faible pour remplacement, moyenne pour renforts formantiques / résonateurs / doubles synthétiques
sample_viability: faible comme source principale ; possible uniquement pour référence, secours, grains courts ou analyse
hybrid_viability: très forte
offline_preparation_viability: moyenne pour mapping, profils de traitement, IR/résonateurs, références
selection_mode_default: manuel / live, pas automatique
risk_profile: [folklore, gadget, nasalité fatigante, aigu métallique, perte de techno, masque voix/sub, effet démonstratif]
protected_dimensions: [formants, micro-pulse, lisibilité rythmique, confort aigu, corps global, live agency]
router_controls_expected: [Intensité guimbarde, Filtre formants, Micro-pulse, Torsion, Résonance, Brillance, Sécurité aiguë, Placement espace]
priority_level: très haute
status: à préparer comme source live centrale secondaire
```

---

# 2. Justification esthétique / phénoménale

Les guimbardes couvrent plusieurs besoins déjà définis :

```text
torsion résonante / ligne vivante ;
hypnose active ;
brillance rythmique naturalisée ;
polytexture percussive raffinée ;
voix-sans-voix ;
formants ;
micro-pulse ;
interaction live / agency humaine.
```

Elles sont particulièrement importantes parce que :

```text
Yohan en possède environ vingt ;
elles sont jouables live ;
elles peuvent produire des variations réelles d’attaque, bouche, formant, pulsation, couleur, hauteur ressentie ;
elles peuvent remplacer plusieurs micro-sources qui auraient sinon demandé des samples ;
elles ouvrent un axe live spécifique à Vesperare.
```

---

# 3. Ce que cette source couvre potentiellement

## 3.1 Micro-pulse / brillance rythmique

```text
fonction: produire des impulsions métalliques courtes, rapides, lisibles.
possible_role: micro-pulsation, contretemps, brillance active, accent fin.
risque: aigus fatigants, effet gadget, perte de hiérarchie.
protection: filtre aigu, gate/enveloppe, contrôle de densité, limite de priorité dans le mix.
```

## 3.2 Ligne vivante / torsion

```text
fonction: créer une ligne timbrale vivante sans citation acid.
possible_role: torsion, variation interne, ligne formantique, tension continue.
risque: nasalité excessive, instabilité trop démonstrative, citation folklorique.
protection: contrôle de formants, lissage, résonateur harmonique, relation pitch_center.
```

## 3.3 Voix-sans-voix / formants de bouche

```text
fonction: produire un signal humain non verbal, lié à la bouche sans devenir chant/parole.
possible_role: signal faible, texture de bouche, présence humaine abstraite.
risque: confusion avec voix, trop identifiable, masque voix réelle.
protection: EQ dynamique, placement spectral, priorité contextuelle.
```

## 3.4 Polytexture

```text
fonction: contribuer à la densité articulée, aux micro-accents et à l’interlocking.
possible_role: couche live de polytexture, accent irrégulier, réponse à micro-événements générés.
risque: complexité confuse, superposition avec clochettes / petits métaux / micro-impacts.
protection: hiérarchie d’accents, mid/high-load check, conflict manager.
```

---

# 4. Ce que cette source ne doit pas couvrir seule

```text
sub stable ;
impact-fondation principal ;
masse de résolution de gong ;
halo long large ;
field recording exposé ;
peau / tambour ;
voix sémantique ;
champs harmoniques larges complets.
```

Elle peut soutenir ces besoins, mais ne doit pas être forcée à les remplacer.

---

# 5. Besoin de samples associé

```text
sample_need_status: pas de sample principal nécessaire au départ.
reference_samples_allowed: oui, pour analyse / secours / comparaison.
max_initial_reference_count: 0–3 si besoin.
performative_sample_bank: non.
```

Justification :

```text
la source est live fixe ;
la richesse vient du geste réel et de la bouche ;
la banque de samples risquerait de figer l’agency ;
les besoins principaux sont de captation, traitement et contrôle.
```

---

# 6. Besoins d’engine / traitement

## 6.1 Captation live

```text
besoin: entrée stable, niveau contrôlé, gestion des transitoires et aigus.
à définir plus tard: type de micro, placement, préampli, bruit de bouche, gestion feedback.
```

## 6.2 Traitement formantique

```text
besoin: préserver / accentuer / déplacer les formants de bouche.
traitements possibles: EQ dynamique, filtre formantique, résonateur, spectral focus, pitch/formant relation.
```

## 6.3 Micro-pulse / enveloppe

```text
besoin: transformer le jeu en micro-pulsation contrôlable.
traitements possibles: envelope follower, gate souple, transient shaping, rhythmic sidechain, density control.
```

## 6.4 Résonance / torsion

```text
besoin: relier guimbardes à torsion, champs harmoniques, halos courts.
traitements possibles: résonateurs, delay court filtré, feedback contrôlé, microtonal bend, convolution courte.
```

## 6.5 Sécurité spectrale

```text
besoin: éviter fatigue aiguë, nasalité excessive, masque voix/sub.
protections possibles: high guard, dynamic EQ, de-esser, conflict check, mid/high load budget.
```

---

# 7. Métadonnées futures à prévoir

Si des assets live profiles ou références sont créés plus tard :

```text
asset_type: live_profile / reference_sample / processing_preset / resonator_profile
source_identity: guimbarde précise parmi les 20
mouth_position_profile: ouvert / fermé / voyelle approximative / nasal / gorge
attack_profile: sec / claquant / doux / double attaque
formant_profile: grave / médium / aigu / instable / vocalisé
pitch_center_if_any: à déclarer ou analyser
spectral_brightness: faible / moyen / fort
micro_pulse_density: lente / moyenne / rapide / irrégulière
fatigue_risk: faible / moyen / fort
masking_risk: voix / sub / clochettes / cymbalettes / aucune
preferred_roles: micro-pulse / torsion / ligne / signal / texture
forbidden_roles: sub / fondation principale / halo long / masse de résolution
```

---

# 8. Checks nécessaires

```text
conflict_checks_required: [aigu fatigue, masque voix, masque brillance, mid/high-load, live feedback]
pitch_checks_required: [hauteur ressentie, formants, relation avec sub/gong/didgeridoo]
output_mix_checks_required: [présence live, largeur, agressivité, stabilité, intelligibilité]
```

---

# 9. Prochaine action

Créer ou préparer ensuite :

```text
SOURCE_NEED_LIVE_DIDGERIDOO_PRESSURE_FORMANTS
```

Puis, seulement après ces deux sources live fixes :

```text
source_need minimal pour sub / pression ;
source_need conditionnel pour gong absent ;
source_need conditionnel pour tambour absent ;
source_need minimal pour voix si voix non live.
```
