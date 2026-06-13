# SOURCE_NEED_OPTIONAL_FRAME_DRUM_PRESENCE_ABSENCE_STRATEGY

Version : v0.1  
Statut : fiche `source_need` conditionnelle. Sans sample confirmé, sans asset, sans prototypage.

## Objet

Cette fiche définit ce qui change selon qu’un tambour sur cadre live est présent ou absent.

Elle part des données fixes suivantes :

```text
toujours présents : didgeridoo + guimbardes ;
parfois présent : 1 gong parmi 5 ;
parfois présent : 1 tambour sur cadre parmi 3 ;
possibilités réelles :
- didgeridoo + guimbardes seuls ;
- didgeridoo + guimbardes + gong ;
- didgeridoo + guimbardes + tambour ;
- didgeridoo + guimbardes + gong + tambour.
```

Décision :

```text
l’absence de tambour ne doit pas être acceptée comme simple absence ;
si une fonction de peau, impact acoustique ou corps percussif est nécessaire dans une scène, elle doit être compensée ;
la compensation peut être :
- sample minimal de peau / tambour ;
- génération / synthèse d’impact ;
- hybridation sub + attaque + résonance ;
- traitement des sources live fixes ;
- combinaison hybride.
```

Elle ne dit pas :

```text
il faut une banque de tambours ;
il faut toujours un sample de tambour ;
le tambour doit être présent dans chaque scène ;
le tambour doit remplacer le gong ;
le sub doit transformer le tambour en kick standard.
```

Elle sert à décider :

```text
quelles fonctions le tambour live couvre quand il est présent ;
quelles fonctions doivent être compensées quand il est absent ;
si ces fonctions doivent être couvertes par sample minimal, génération, traitement live, hybridation ou rien d’autre ;
comment le tambour interagit avec didgeridoo, guimbardes, sub et gong.
```

---

# 1. SOURCE_NEED

```text
source_need_id: SOURCE_NEED_OPTIONAL_FRAME_DRUM_PRESENCE_ABSENCE_STRATEGY
source_need_origin: source live optionnelle + besoin esthétique/phénoménal + analyse zéro sample
linked_candidates: [cand_frame_drum_01, LIVE_OPTIONAL_FRAME_DRUMS, LIVE_FIXED_DIDGERIDOO, LIVE_FIXED_JAW_HARPS, LIVE_OPTIONAL_GONGS, SOURCE_NEED_SUB_PRESSURE_ENGINE]
function_tags: [impact acoustique, peau, corps, attaque, retour au corps, fondation, polytexture, accent]
phenomenon_tags: [peau, impact-fondation, grain de peau, geste humain, corps acoustique, contour sculpté, polytexture percussive]
role_target: stratégie conditionnelle pour présence ou absence du tambour sur cadre live
object_candidates: [Tambour live, Peau frappée, Impact acoustique, Grain de peau, Sub+peau hybride, Sample minimal de peau]
scene_affinities: [scènes de corps, scènes d’impact, scènes de retour au corps, scènes de polytexture, scènes de tension rythmique]
trajectory_affinities: [absence → compensation, impact → corps, peau → sub, tension → retour, suspension → réincorporation]
centrality_level: haute quand présent ; haute comme compensation si fonction corporelle indispensable
quality_requirement: très haute si le rôle de peau/impact est exposé
source_recognition_requirement: moyenne si peau exposée ; faible si impact hybridé
abstraction_allowed: moyenne à forte si le rôle est impact/hybride ; faible si le grain de peau réel est central
frame_drum_live_requirement: optionnelle, jamais garantie
frame_drum_function_requirement: obligatoire si scène validée autour de peau / impact / corps acoustique
generation_viability: moyenne pour corps, enveloppe, résonance ; faible pour grain de peau réel exposé
sample_viability: forte seulement si tambour absent et fonction de peau indispensable
hybrid_viability: très forte
offline_preparation_viability: forte pour profils d’attaque, queues courtes, samples minimaux éventuels, calibrage sub/peau
selection_mode_default: manuel / scène / assisté ; pas automatique par défaut
risk_profile: [tribalisation, world cliché, kick standard, bas-médium, attaque molle, perte techno, conflit sub, conflit gong, surcharge]
protected_dimensions: [attaque, corps, grain de peau, sub, bas-médium, lisibilité rythmique, danse]
router_controls_expected: [Tambour présent, Tambour absent compensé, Impact, Peau, Corps, Sub relation, Gong relation, Grain, Sécurité bas-médium]
priority_level: haute comme stratégie conditionnelle
status: à préparer avant décision de samples de peaux / tambours
```

---

# 2. Fonctions couvertes par le tambour quand présent

```text
impact acoustique ;
peau ;
grain humain ;
geste frappé ;
corps percussif ;
retour au corps ;
accent large ;
polytexture corporelle ;
attaque non synthétique.
```

Le tambour peut aussi soutenir :

```text
sub / profondeur ;
pré-drop corporel ;
résolution non métallique ;
contraste avec gong ;
contraste avec guimbardes ;
contour sculpté ;
hypnose active.
```

---

# 3. Ce que le tambour ne doit pas faire seul

```text
sub stable ;
masse métallique de gong ;
partiels inharmoniques de gong ;
halo métallique long ;
ligne formantique ;
didgeridoo / souffle ;
guimbardes / micro-pulse ;
voix ;
field recording ;
beauté autonome harmonique.
```

Le tambour doit rester un objet corporel, situé, sculpté, non folklorisé.

---

# 4. Matrice des configurations live

## 4.1 Configuration A — didgeridoo + guimbardes seuls

```text
configuration_id: LIVE_BASE_ONLY
présents: didgeridoo + guimbardes
absents: gong + tambour
fonctions à compenser si requises par la scène: peau, impact acoustique, corps percussif, attaque humaine, retour au corps par peau.
compensations possibles:
- sample minimal de peau / tambour si grain réel nécessaire ;
- génération d’impact + sub + enveloppe si peau non exposée ;
- didgeridoo + sub pour corps grave, sans prétendre produire une peau ;
- guimbardes pour micro-attaque, sans prétendre produire impact large ;
- objets frappés / peaux alternatives futures si source confirmée.
priorité: compenser la fonction corporelle nécessaire sans inventer une banque de tambours.
sample_implication: conditionnelle mais obligatoire si génération/hybridation ne couvre pas la fonction de peau.
```

## 4.2 Configuration B — didgeridoo + guimbardes + gong

```text
configuration_id: LIVE_WITH_GONG
présents: didgeridoo + guimbardes + 1 gong parmi 5
absent: tambour
fonctions couvertes: masse métallique, partiels, halo, résolution, souffle/formants, micro-pulse.
fonctions à compenser si requises par la scène: peau, impact sec, corps percussif acoustique.
compensations possibles:
- sample minimal de peau ;
- génération d’impact corporel ;
- sub + enveloppe + attaque synthétique naturalisée ;
- gong + sub comme masse, mais pas comme peau.
priorité: ne pas transformer le gong en substitut de tambour ; préserver distinction métal/peau.
sample_implication: conditionnelle mais obligatoire si peau/impact acoustique est structurel.
```

## 4.3 Configuration C — didgeridoo + guimbardes + tambour

```text
configuration_id: LIVE_WITH_FRAME_DRUM
présents: didgeridoo + guimbardes + 1 tambour sur cadre parmi 3
absent: gong
fonctions couvertes: peau, corps acoustique, impact, souffle/formants, micro-pulse, retour au corps.
fonctions à compenser côté tambour: aucune fonction de peau prioritaire si le tambour est effectivement présent et utilisable.
fonctions à compenser côté gong si requises: masse métallique, halo de gong, partiels, résolution métallique.
options:
- exploiter tambour live comme source corporelle ;
- traiter attaque / corps / queue courte ;
- garder sub en renfort contrôlé ;
- ne pas utiliser de sample de tambour.
priorité: captation, contrôle de bas-médium, préservation du grain de peau.
sample_implication: aucun sample de tambour nécessaire dans cette configuration.
```

## 4.4 Configuration D — didgeridoo + guimbardes + gong + tambour

```text
configuration_id: LIVE_WITH_GONG_AND_FRAME_DRUM
présents: didgeridoo + guimbardes + 1 gong + 1 tambour
fonctions couvertes: souffle/formants, micro-pulse, peau, impact, corps, masse métallique, partiels, halo, résolution.
fonctions à compenser côté tambour/gong: aucune fonction prioritaire si les deux sources sont effectivement présentes et utilisables.
risque principal: surcharge, bas-médium, concurrence sub/gong/tambour.
options:
- alterner impact peau / masse métallique ;
- réduire sub si tambour + gong occupent déjà le corps ;
- garder guimbardes comme micro-détail ou les retirer ;
- définir hiérarchie claire par scène.
priorité: hiérarchie, conflit, mix, espace, contrôle dynamique.
sample_implication: aucun sample nécessaire pour couvrir gong ou tambour.
```

---

# 5. Stratégies de compensation quand le tambour est absent

Quand le tambour est absent mais que la fonction de peau / impact / corps acoustique est nécessaire, la compensation est obligatoire.

## 5.1 Compensation par sample minimal de peau

```text
usage: besoin de grain de peau réel ou attaque humaine exposée.
solution: très petit nombre de samples de peaux / tambours, idéalement liés aux 3 tambours ou à sources très choisies.
avantage: réalité d’attaque, peau, geste.
risque: banque de percussions, dérive folklorique, kick standard.
condition: seulement si la fonction de peau est structurelle et non couverte par génération/hybridation.
```

## 5.2 Compensation par génération / synthèse d’impact

```text
usage: besoin d’impact corporel mais pas forcément de grain de peau exposé.
solution: générateur d’enveloppe, corps grave, attaque sculptée, sub contrôlé.
avantage: contrôlable, stable, non dépendant du live.
risque: kick générique, artificialité, perte de geste humain.
```

## 5.3 Compensation hybride sub + attaque + résonance

```text
usage: besoin d’impact profond, lisible, naturalisé, sans tambour live.
solution: attaque courte + corps sub + résonance courte + traitement dynamique.
avantage: combine contrôle techno et matérialité.
risque: standardisation, lourdeur, masque didgeridoo.
```

## 5.4 Compensation par sources live fixes

```text
usage: besoin de corps ou de micro-attaque, mais pas de peau exposée.
solution: didgeridoo pour pression/souffle, guimbardes pour micro-pulse, sub pour corps.
avantage: aucun sample, cohérent avec live fixe.
risque: manque de vraie attaque large ou de grain de peau.
```

---

# 6. Besoin de samples associé

```text
sample_need_status: conditionnel mais obligatoire si la fonction de peau réelle manque et ne peut pas être générée correctement.
reference_samples_allowed: oui, pour analyse / calibration.
performative_sample_bank: non.
minimum_if_confirmed: 1–3 samples de peau / tambour très forts.
maximum_prudent_initial: 5 samples, seulement si plusieurs rôles réels sont confirmés.
```

Les samples possibles ne doivent pas couvrir “tous les tambours”. Ils doivent couvrir des fonctions :

```text
attaque de peau ;
corps acoustique ;
grain humain ;
impact large ;
queue courte / résonance de cadre ;
accent de retour au corps.
```

---

# 7. Besoins d’engine / traitement

## 7.1 Captation / traitement live du tambour

```text
besoin: quand tambour présent, capter attaque, corps, peau, queue courte, dynamique.
traitements possibles: transient shaping, EQ dynamique, sub relation, saturation douce, tail control, envelope follower.
```

## 7.2 Générateur d’impact de substitution

```text
besoin: produire un impact corporel quand tambour absent.
traitements possibles: synthèse d’impact, enveloppe, bruit court, résonance courte, sub layer, saturation contrôlée.
```

## 7.3 Relation au sub

```text
besoin: éviter que sub + tambour deviennent kick standard ou boue.
traitements possibles: sidechain fin, dynamic EQ, sub retreat, transient priority, low-mid guard.
```

## 7.4 Relation au gong

```text
besoin: distinguer impact peau et masse métallique.
traitements possibles: alternance de rôles, ducking croisé, réduction de queue, séparation spectrale.
```

## 7.5 Relation aux guimbardes / didgeridoo

```text
besoin: préserver micro-pulse et formants sans masquer impact peau.
traitements possibles: hiérarchie temporelle, filtrage dynamique, priorité de scène, espace différencié.
```

---

# 8. Métadonnées futures à prévoir

```text
asset_type: live_profile / reference_sample / conditional_sample / impact_engine_profile / processing_preset
source_identity: tambour live parmi 3 / peau échantillonnée / impact généré / hybride
configuration_id: LIVE_BASE_ONLY / LIVE_WITH_GONG / LIVE_WITH_FRAME_DRUM / LIVE_WITH_GONG_AND_FRAME_DRUM
frame_drum_presence: absent_compensated / live / sampled / generated / hybrid
gong_presence: absent / live / sampled / generated / hybrid
role: attaque peau / corps / impact / retour au corps / accent / polytexture
attack_profile: net / large / doux / double / roulé / sec
body_profile: léger / moyen / massif / sub-hybrid / boisé / membraneux
tail_profile: très court / court / moyen / contrôlé / envahissant
sub_relation: renfort / conflit / sidechained / retrait / dominant
jaw_harp_relation: contraste / masque / réponse / indépendant
didgeridoo_relation: soutien / conflit grave / complément / indépendant
gong_relation: alternance / conflit / soutien / absent
fatigue_risk: faible / moyen / fort
mid_load_risk: faible / moyen / fort
preferred_roles: retour au corps / impact / fondation partielle / accent / polytexture
forbidden_roles: kick standard / remplissage percussion / banque automatique / folklore plaqué / absence non compensée si fonction requise
```

---

# 9. Checks nécessaires

```text
conflict_checks_required: [frame_drum_sub_conflict, frame_drum_gong_overload, low_mid_load, transient_masking, jaw_harp_masking, didgeridoo_masking]
pitch_checks_required: [hauteur ressentie de peau, relation sub, relation résonance de cadre]
output_mix_checks_required: [attaque, headroom, bas-médium, corps, fatigue, scène]
```

---

# 10. Prochaine action

Après les stratégies gong et tambour :

```text
analyser les besoins minimaux de voix ;
analyser les besoins minimaux de field recordings ;
puis créer les premiers material_asset schemas pour sources live fixes.
```
