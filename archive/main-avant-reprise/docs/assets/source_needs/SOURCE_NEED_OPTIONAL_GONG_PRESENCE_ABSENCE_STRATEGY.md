# SOURCE_NEED_OPTIONAL_GONG_PRESENCE_ABSENCE_STRATEGY

Version : v0.2  
Statut : fiche `source_need` conditionnelle. Sans sample confirmé, sans asset, sans prototypage.

## Objet

Cette fiche définit ce qui change selon que le gong live est présent ou absent.

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

Décision corrigée :

```text
l’absence de gong ne doit pas être acceptée comme simple absence ;
si une fonction de gong est nécessaire dans une scène, elle doit être compensée ;
la compensation peut être :
- génération / résonateur / synthèse modale ;
- traitement des sources live fixes ;
- sample minimal de gong/métal ;
- combinaison hybride.
```

Elle ne dit pas :

```text
il faut une banque de gongs ;
il faut toujours un sample de gong ;
le gong doit être présent dans chaque scène ;
le gong doit remplacer les fonctions du tambour ;
le sub doit remplacer le gong seul.
```

Elle sert à décider :

```text
quelles fonctions le gong live couvre quand il est présent ;
quelles fonctions doivent être compensées quand il est absent ;
si ces fonctions doivent être couvertes par résonateur, génération, traitement live, sample minimal ou hybride ;
comment le gong interagit avec didgeridoo, guimbardes, sub et tambour.
```

---

# 1. SOURCE_NEED

```text
source_need_id: SOURCE_NEED_OPTIONAL_GONG_PRESENCE_ABSENCE_STRATEGY
source_need_origin: source live optionnelle + besoin esthétique/phénoménal + analyse zéro sample
linked_candidates: [cand_gong_01, LIVE_OPTIONAL_GONGS, LIVE_FIXED_DIDGERIDOO, LIVE_FIXED_JAW_HARPS, LIVE_OPTIONAL_FRAME_DRUMS, SOURCE_NEED_SUB_PRESSURE_ENGINE]
function_tags: [résolution, impact métallique, masse, halo, partiels, beauté autonome, tension, signal formel]
phenomenon_tags: [gong, masse métallique, partiels inharmoniques, halo fonctionnel, beauté autonome, tension/résolution, post-résonance]
role_target: stratégie conditionnelle pour présence ou absence du gong live
object_candidates: [Gong live, Métal résonant, Halo métallique, Masse de résolution, Résonateur de substitution, Sample minimal conditionnel]
scene_affinities: [pré-drop, résolution, beauté autonome, tension longue, suspension, retour au corps]
trajectory_affinities: [préparation → résolution, tension → masse, impact → halo, absence → compensation, gong → post-résonance]
centrality_level: haute quand présent ; haute comme compensation si fonction indispensable
quality_requirement: très haute si la fonction de résolution métallique est centrale
source_recognition_requirement: moyenne à haute quand gong live exposé ; faible à moyenne si substitution abstraite
abstraction_allowed: moyenne à forte si le rôle est halo/partiels ; faible si le rôle est gong central exposé
gong_live_requirement: optionnelle, jamais garantie
gong_function_requirement: obligatoire si scène validée autour de masse / résolution / halo métallique
generation_viability: moyenne pour renfort / halo / résonance ; faible pour gong central réaliste exposé
sample_viability: forte seulement si gong absent et fonction de gong indispensable
hybrid_viability: très forte
offline_preparation_viability: forte pour profils de queues, références, résonateurs, samples minimaux éventuels
selection_mode_default: manuel / scène / assisté ; pas automatique par défaut
risk_profile: [gong décoratif, dramatisme trop évident, queue incontrôlée, boue bas-médium, conflit sub, cliché rituel, surdensité avec tambour]
protected_dimensions: [partiels, queue, sub, impact, halo, lisibilité formelle, confort bas-médium]
router_controls_expected: [Gong présent, Gong absent compensé, Sub relation, Queue, Partiels, Halo, Résolution, Résonance substitute, Réduire bas-médium, Couper queue]
priority_level: haute comme stratégie conditionnelle
status: à préparer avant décision de samples de gong
```

---

# 2. Fonctions couvertes par le gong quand présent

```text
impact métallique ;
masse de résolution ;
partiels inharmoniques réels ;
queue longue ;
halo métallique ;
beauté autonome ;
marqueur formel ;
préparation / résolution de tension ;
objet central ponctuel.
```

Le gong peut aussi soutenir :

```text
champs harmoniques ;
microtensions ;
spatialité ;
suspension ;
retour au corps avec sub ;
contraste avec guimbardes ;
contraste avec tambour.
```

---

# 3. Ce que le gong ne doit pas faire seul

```text
sub stable ;
peau / impact de tambour ;
polytexture dense ;
ligne formantique ;
didgeridoo / souffle ;
guimbardes / micro-pulse ;
voix ;
field recording ;
rythme complet.
```

Le gong doit rester un objet puissant mais situé.

---

# 4. Matrice des configurations live

## 4.1 Configuration A — didgeridoo + guimbardes seuls

```text
configuration_id: LIVE_BASE_ONLY
présents: didgeridoo + guimbardes
absents: gong + tambour
fonctions à compenser si requises par la scène: masse métallique, partiels de gong, halo long, résolution métallique.
compensations possibles:
- guimbardes + résonateurs comme trace métallique légère ;
- sub + résonateur comme masse abstraite ;
- synthèse modale / spectral freeze / convolution courte ;
- sample minimal de gong/métal si la scène exige une résolution métallique réelle.
priorité: compenser la fonction nécessaire sans inventer une banque de gongs.
sample_implication: conditionnelle mais obligatoire si génération/résonateurs ne couvrent pas la fonction.
```

## 4.2 Configuration B — didgeridoo + guimbardes + gong

```text
configuration_id: LIVE_WITH_GONG
présents: didgeridoo + guimbardes + 1 gong parmi 5
absent: tambour
fonctions couvertes: masse métallique, partiels, halo, résolution, beauté autonome, tension longue.
fonctions à compenser si requises par la scène: peau, impact sec, corps percussif acoustique.
options:
- exploiter le gong live comme source centrale ;
- traiter la queue / les partiels ;
- garder le sub en soutien ou retrait ;
- ne pas utiliser de sample de gong.
priorité: captation, traitement, contrôle de queue, protection bas-médium.
sample_implication: aucun sample de gong nécessaire dans cette configuration ; compensation éventuelle côté tambour si absence de peau requise.
```

## 4.3 Configuration C — didgeridoo + guimbardes + tambour

```text
configuration_id: LIVE_WITH_FRAME_DRUM
présents: didgeridoo + guimbardes + 1 tambour sur cadre parmi 3
absent: gong
fonctions couvertes: peau, corps acoustique, impact, souffle/formants, micro-pulse.
fonctions à compenser si requises par la scène: masse métallique, halo de gong, partiels inharmoniques, résolution métallique.
compensations possibles:
- guimbardes/résonateurs comme métal léger ;
- tambour + sub + résonateur comme résolution corporelle-hybride ;
- synthèse modale / spectral freeze / convolution courte ;
- sample minimal de gong/métal si la scène exige la masse métallique réelle.
priorité: ne pas transformer le tambour en substitut de gong ; préserver son grain de peau.
sample_implication: conditionnelle mais obligatoire si la fonction de gong central reste indispensable.
```

## 4.4 Configuration D — didgeridoo + guimbardes + gong + tambour

```text
configuration_id: LIVE_WITH_GONG_AND_FRAME_DRUM
présents: didgeridoo + guimbardes + 1 gong + 1 tambour
fonctions couvertes: souffle/formants, micro-pulse, peau, impact, masse métallique, partiels, halo, résolution.
fonctions à compenser côté gong/tambour: aucune fonction prioritaire si les deux sources sont effectivement présentes et utilisables.
risque principal: surcharge.
options:
- gong et tambour ne doivent pas toujours jouer le même rôle ;
- alterner masse métallique / impact peau ;
- réduire sub ou halo si surcharge ;
- garder les guimbardes comme micro-détail ou les retirer.
priorité: hiérarchie, conflit, espace, mix.
sample_implication: aucun sample nécessaire pour couvrir gong ou tambour.
```

---

# 5. Stratégies de compensation quand le gong est absent

Quand le gong est absent mais que la fonction de gong est nécessaire, la compensation est obligatoire.

## 5.1 Compensation par relation live + résonateurs

```text
usage: besoin de partiels / halo / métal léger, pas de gong exposé.
solution: guimbardes + résonateurs + sub + traitements.
avantage: cohérent avec live fixe, pas de sample.
risque: manque de masse réelle ; son trop synthétique si mal calibré.
```

## 5.2 Compensation par engine / synthèse modale

```text
usage: besoin de halo, queue, masse abstraite, partiels contrôlés.
solution: résonateur/modal/spectral freeze/convolution courte.
avantage: contrôlable, adaptable, non dépendant du live.
risque: gong faux, son générique, perte de beauté réelle.
```

## 5.3 Compensation par sample minimal conditionnel

```text
usage: besoin de gong ou métal réel exposé alors qu’aucun gong live n’est présent.
solution: très petit nombre de samples de gong/métal, idéalement issus des 5 gongs ou de sources très choisies.
avantage: réalité de partiels et de queue.
risque: banque décorative, queue figée, gong plaqué.
condition: seulement si le besoin formel ne peut pas être couvert autrement.
```

## 5.4 Compensation hybride

```text
usage: besoin de masse réelle + contrôle live + sécurité mix.
solution: attaque/queue ou sample minimal + résonateur + sub contrôlé + guimbardes comme micro-trace.
avantage: combine réalité et contrôlabilité.
risque: complexité, surcharge, masquage.
condition: seulement pour scènes où la fonction de gong est structurelle.
```

---

# 6. Besoin de samples associé

```text
sample_need_status: conditionnel mais obligatoire si la fonction de gong réel manque et ne peut pas être générée correctement.
reference_samples_allowed: oui, pour analyse / calibration.
performative_sample_bank: non.
minimum_if_confirmed: 1–3 samples de gong/métal très forts.
maximum_prudent_initial: 5 samples, seulement si plusieurs rôles réels sont confirmés.
```

Les samples possibles ne doivent pas couvrir “tous les gongs”. Ils doivent couvrir des fonctions :

```text
attaque métallique ;
queue longue ;
partiels riches ;
masse de résolution ;
halo / post-résonance ;
beauté autonome.
```

---

# 7. Besoins d’engine / traitement

## 7.1 Captation / traitement live du gong

```text
besoin: quand gong présent, capter attaque, queue, partiels, dynamique.
traitements possibles: EQ dynamique, tail control, spectral freeze, reverse, convolution, transient/tail split.
```

## 7.2 Résonateur de substitution

```text
besoin: produire une trace de métal ou un halo quand gong absent.
traitements possibles: modal resonator, filtered feedback, convolution courte, spectral freeze sur source live.
```

## 7.3 Relation au sub

```text
besoin: éviter que gong + sub créent boue ou dramatisme massif incontrôlé.
traitements possibles: ducking, dynamic EQ, sub retreat, queue/sub priority, low-mid guard.
```

## 7.4 Relation aux guimbardes

```text
besoin: préserver le contraste micro-métal / macro-métal.
traitements possibles: hiérarchie spectrale, filtrage, spatialisation séparée, priority rules.
```

## 7.5 Relation au tambour

```text
besoin: distinguer masse métallique et impact peau.
traitements possibles: rôle alterné, ducking croisé, distribution temporelle, réduction de queue.
```

---

# 8. Métadonnées futures à prévoir

```text
asset_type: live_profile / reference_sample / conditional_sample / resonator_profile / processing_preset
source_identity: gong live parmi 5 / métal résonant / résonateur substitut
configuration_id: LIVE_BASE_ONLY / LIVE_WITH_GONG / LIVE_WITH_FRAME_DRUM / LIVE_WITH_GONG_AND_FRAME_DRUM
gong_presence: absent_compensated / live / sampled / generated / hybrid
frame_drum_presence: absent / live
role: impact métallique / masse / halo / résolution / beauté autonome / trace métallique
attack_profile: doux / net / massif / frotté / roulé
tail_profile: court / moyen / long / contrôlé / envahissant
partial_profile: riche / sombre / brillant / inharmonique / stable / instable
sub_relation: indépendant / renfort / conflit / sidechained / retrait
jaw_harp_relation: contraste / fusion / masque / réponse
frame_drum_relation: alternance / conflit / soutien / absent
fatigue_risk: faible / moyen / fort
mid_load_risk: faible / moyen / fort
preferred_roles: résolution / halo / masse / beauté / tension
forbidden_roles: décor gong / remplissage systématique / banque automatique / remplacement du tambour / absence non compensée si fonction requise
```

---

# 9. Checks nécessaires

```text
conflict_checks_required: [gong_sub_conflict, gong_tail_conflict, low_mid_load, halo_excess, gong_frame_drum_overload, jaw_harp_masking]
pitch_checks_required: [partiels, hauteur ressentie, relation au pitch_center, relation aux résonateurs]
output_mix_checks_required: [queue, headroom, bas-médium, impact, fatigue, scène]
```

---

# 10. Prochaine action

Créer ensuite :

```text
SOURCE_NEED_OPTIONAL_FRAME_DRUM_PRESENCE_ABSENCE_STRATEGY
```

Objectif : définir ce qui change quand le tambour sur cadre est présent ou absent, en tenant compte du gong, du sub, du didgeridoo et des guimbardes.
