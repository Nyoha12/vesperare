# SOURCE_NEED_MINIMAL_VOICE_IF_NOT_LIVE

Version : v0.1  
Statut : fiche `source_need` conditionnelle. Sans sample confirmé, sans asset, sans prototypage.

## Objet

Cette fiche définit le besoin minimal de voix si la voix n’est pas jouée live mais qu’une fonction vocale reste nécessaire dans Vesperare.

Elle part de l’état actuel :

```text
didgeridoo toujours live ;
guimbardes toujours live ;
gong parfois live ;
tambour sur cadre parfois live ;
voix live non encore fixée ;
zéro sample initial ;
accès possible à des samples si le besoin réel le justifie.
```

Elle ne dit pas :

```text
il faut une banque vocale ;
il faut une chanson ;
il faut une voix lead ;
il faut un gimmick vocal ;
il faut des paroles compréhensibles ;
il faut automatiser le choix de fragments vocaux.
```

Elle sert à décider :

```text
quelles fonctions vocales sont réellement nécessaires ;
si elles peuvent être couvertes par live, didgeridoo, guimbardes, anches, formants ou traitement ;
si un minimum de fragments vocaux est indispensable ;
quel type de fragment est nécessaire : signal, souffle, cri, phonème, parole, texture, présence humaine.
```

---

# 1. SOURCE_NEED

```text
source_need_id: SOURCE_NEED_MINIMAL_VOICE_IF_NOT_LIVE
source_need_origin: besoin esthétique/phénoménal + voix non garantie live + analyse zéro sample
linked_candidates: [cand_voice_01, LIVE_FIXED_DIDGERIDOO, LIVE_FIXED_JAW_HARPS, cand_yohan_reeds_winds_01]
function_tags: [signal humain, voix matière, souffle, cri, parole fragmentée, présence, tension, rupture, hook non-chanson]
phenomenon_tags: [voix signal, voix matière, souffle humain, formants, sémantique fragmentaire, voix-sans-voix, beauté autonome, tension]
role_target: source conditionnelle de présence humaine vocale minimale
object_candidates: [Voix signal, Souffle vocal, Cri retenu, Phonème, Fragment parlé, Texture formantique]
scene_affinities: [scènes de signal, scènes de tension, scènes de rupture, scènes de présence humaine, scènes de beauté autonome, scènes de suspension]
trajectory_affinities: [silence → signal, tension → cri, matière → parole, souffle → halo, humanité → abstraction]
centrality_level: variable ; haute seulement si scène validée autour d’un signal vocal
quality_requirement: très haute si voix exposée ; moyenne si voix très transformée
source_recognition_requirement: variable ; forte pour signal/parole, faible pour matière/souffle abstrait
abstraction_allowed: forte pour voix matière ; faible à moyenne pour voix signal
voice_live_requirement: non fixée
voice_function_requirement: obligatoire si scène validée autour de présence humaine / signal / souffle / parole
live_substitution_viability: didgeridoo et guimbardes peuvent couvrir voix-sans-voix / formants, mais pas toujours présence vocale humaine
Generation_viability: moyenne pour formants / souffles abstraits ; faible pour signal humain réel
sample_viability: forte si voix non live et fonction vocale humaine indispensable
hybrid_viability: très forte
offline_preparation_viability: forte pour fragments, nettoyage, formants, versions transformées
selection_mode_default: manuel / scène / assisté ; pas automatique par défaut
risk_profile: [chanson involontaire, gimmick vocal, pathos, sémantique non contrôlée, voix trop illustrative, masque didgeridoo, masque guimbardes, cliché rituel]
protected_dimensions: [présence humaine, intelligibilité contextuelle, formants, espace, tension, non-chanson, non-gimmick]
router_controls_expected: [Voix présente, Signal, Souffle, Formants, Fragment, Sémantique, Distance, Réduire pathos, Masque voix]
priority_level: moyenne à haute selon scènes
status: à confirmer après décision voix live / voix sample minimale
```

---

# 2. Fonctions vocales possibles

## 2.1 Voix signal

```text
fonction: produire un événement humain reconnaissable, un appel, un mot, une syllabe, un cri ou un fragment signifiant.
rôle: signal de scène, rupture, point de tension, annonce non narrative, hook non-chanson.
exigence: présence réelle forte.
remplacement par didgeridoo/guimbardes: insuffisant si le besoin est vraiment humain/vocal.
sample_minimal: probable si pas de voix live.
risques: gimmick, chanson, slogan, pathos, sémantique trop explicite.
```

## 2.2 Voix matière

```text
fonction: utiliser la voix comme texture, souffle, grain, formants, attaque consonantique.
rôle: matière humaine abstraite, halo formantique, texture granulaire, transition.
exigence: variable ; peut être très transformée.
remplacement par didgeridoo/guimbardes: partiel possible, car ils fournissent formants / bouche / souffle non verbal.
sample_minimal: possible mais pas automatique.
risques: texture décorative, pathos, bruit de souffle plat.
```

## 2.3 Souffle vocal

```text
fonction: présence respirée humaine, proximité, tension, fatigue, attente.
rôle: halo humain, tension faible, scène intime, transition.
remplacement par didgeridoo: partiel, mais le didgeridoo reste instrumental et grave.
remplacement par guimbardes: faible, sauf bouche/formants.
sample_minimal: possible si souffle humain est exposé.
risques: ASMR involontaire, pathos, cliché intime.
```

## 2.4 Cri / exclamation / tension vocale

```text
fonction: pic humain, tension, rupture, pré-drop ou résolution non instrumentale.
rôle: événement, signal fort, tension incarnée.
remplacement par cuivres/anches: possible comme voix-sans-voix, mais pas humain réel.
sample_minimal: probable si rôle confirmé et pas de voix live.
risques: dramatisme, violence, cliché rituel, effet trailer.
```

## 2.5 Parole fragmentée

```text
fonction: présence sémantique minimale, mystère, indice, nom, mot, fragment.
rôle: signal, trace humaine, point de mémoire, tension conceptuelle.
exigence: très contrôlée.
sample_minimal: probable si scène requiert sémantique.
risques: narration trop explicite, chanson, texte plaqué, effet spoken-word involontaire.
```

---

# 3. Relations avec les sources live fixes

## 3.1 Relation au didgeridoo

```text
le didgeridoo fournit : souffle, grave, formants, corps, présence instrumentale non verbale.
la voix fournit : humanité explicite, signal, souffle humain, parole, cri.
relation souhaitée: continuité souffle → voix ou contraste instrument/humain.
relation interdite: didgeridoo qui masque la voix, voix qui réduit le didgeridoo à accompagnement.
```

## 3.2 Relation aux guimbardes

```text
les guimbardes fournissent : bouche, formants, micro-pulse, voix-sans-voix.
la voix fournit : présence humaine directe, sémantique éventuelle, souffle humain.
relation souhaitée: continuité bouche/lamelle → bouche/voix ; ou contraste micro-pulse / signal humain.
relation interdite: accumulation de formants confuse, masque aigu/médium, gimmick bouche.
```

## 3.3 Relation au sub

```text
le sub fournit : corps, pression, retour physique.
la voix fournit : signal humain et matière formantique.
relation souhaitée: sub comme support ou retenue sous signal vocal.
relation interdite: sub qui masque formants / consonnes / intelligibilité.
```

## 3.4 Relation au gong / tambour

```text
gong: peut encadrer la voix comme signal formel ou post-résonance.
tambour: peut ramener la voix au corps par impact.
risque: dramatisme rituel plaqué si voix + gong + tambour sont trop littéraux.
protection: rareté, hiérarchie, réduction du pathos, rôle contextuel clair.
```

---

# 4. Matrice de décision voix live / non live

## 4.1 Voix live confirmée plus tard

```text
status: LIVE_VOICE_TO_CREATE_SEPARATE_SOURCE_NEED
conséquence: créer une fiche live dédiée.
samples: références seulement.
priorité: captation, contrôle formants, latence, sécurité, relation didgeridoo/guimbardes.
```

## 4.2 Pas de voix live, mais signal humain requis

```text
status: SAMPLE_MINIMAL_REQUIRED
besoin: fragments vocaux forts, très sélectionnés.
minimum: 1–3 fragments si une seule fonction ; 3–7 si plusieurs rôles signal/souffle/cri/parole.
maximum prudent initial: 10 fragments avant réévaluation.
condition: uniquement si la scène exige humanité vocale réelle.
```

## 4.3 Pas de voix live, voix matière seulement

```text
status: HYBRID_OR_SAMPLE_MINIMAL
besoin: souffles / phonèmes / grains.
minimum: 3–5 matières courtes si les formants live/générés ne suffisent pas.
priorité: tester didgeridoo, guimbardes, formants synthétiques, anches/vents avant corpus vocal.
```

## 4.4 Voix seulement comme voix-sans-voix

```text
status: MAYBE_NO_VOICE_SAMPLE
besoin: formants non verbaux / bouche / signal humain abstrait.
source_possible: guimbardes, didgeridoo, anches, cuivres, résonateurs, formants synthétiques.
samples: non prioritaires.
```

---

# 5. Besoin de samples associé

```text
sample_need_status: conditionnel.
reference_samples_allowed: oui, pour analyse / calibration.
performative_sample_bank: non.
minimum_if_signal_confirmed: 1–3 fragments vocaux très forts.
minimum_if_matter_confirmed: 3–5 souffles/phonèmes/grains.
maximum_prudent_initial: 10 fragments tous rôles confondus avant réévaluation.
```

Les samples possibles ne doivent pas couvrir “toutes les voix”. Ils doivent couvrir des fonctions :

```text
signal humain ;
fragment parlé ;
cri ou exclamation ;
souffle ;
phonème ;
texture formantique ;
présence humaine abstraite.
```

---

# 6. Besoins d’engine / traitement

## 6.1 Nettoyage / préparation minimale

```text
besoin: rendre les fragments utilisables sans les lisser excessivement.
traitements possibles: noise trim léger, de-click, gain staging, transient control, breath shaping.
```

## 6.2 Traitement formantique

```text
besoin: déplacer ou accentuer les formants sans perdre la présence.
traitements possibles: formant shift, EQ dynamique, spectral focus, resonator, pitch/formant relation.
```

## 6.3 Granulation / matière

```text
besoin: transformer voix en matière sans perdre l’origine humaine quand nécessaire.
traitements possibles: granulation, random start, time-stretch, spectral freeze, convolution courte.
```

## 6.4 Distance / espace

```text
besoin: placer la voix comme signal proche, lointain, intérieur ou fantôme.
traitements possibles: spatialisation, short reverb, pre-delay, filtering, ducking avec sub/gongs.
```

## 6.5 Sécurité esthétique

```text
besoin: éviter chanson, gimmick, pathos, rituel plaqué.
protections possibles: rareté, longueur maximale, rôle par scène, contrôle de sémantique, validation manuelle.
```

---

# 7. Métadonnées futures à prévoir

```text
asset_type: vocal_fragment / breath / phoneme / cry / spoken_fragment / processing_preset / live_profile
voice_role: signal / matter / breath / semantic / cry / formant_texture
text_content: aucun / syllabe / mot / phrase courte / indéterminé
semantic_weight: none / low / medium / high
recognition_level: abstract / partial / clear
source_identity: Yohan / autre voix / source externe / à décider
language: none / français / autre / indéterminé
formant_profile: grave / médium / aigu / nasal / ouvert / fermé / instable
attack_profile: consonant / vowel / breath / cry / soft / sharp
length_category: micro / court / moyen / long interdit
sub_relation: indépendant / supported / masked / sidechained
didgeridoo_relation: continuum souffle / contraste / masque / réponse
guimbardes_relation: bouche-métal / contraste / masque / réponse
gong_relation: signal avant / post-résonance / dramatisme à éviter
tambour_relation: retour au corps / accent / conflit / indépendant
risk_profile: chanson / gimmick / pathos / slogan / trop narratif / rituel plaqué
preferred_roles: signal rare / matière / souffle / cri / trace humaine
forbidden_roles: lead vocal standard / couplet / refrain / décoration / sélection automatique libre
```

---

# 8. Checks nécessaires

```text
conflict_checks_required: [voice_sub_masking, voice_didgeridoo_masking, voice_jaw_harp_formant_conflict, voice_gong_dramatism, voice_pathos, semantic_overload]
pitch_checks_required: [formants, hauteur ressentie, relation au pitch_center, relation aux partiels]
output_mix_checks_required: [intelligibilité contextuelle, distance, présence, fatigue, sibilance, headroom]
manual_review_required: true
```

---

# 9. Prochaine action

Créer ensuite :

```text
SOURCE_NEED_MINIMAL_FIELD_RECORDINGS_IF_EXPOSED
```

Objectif : définir si un lieu réel / field recording est nécessaire, et dans quels cas il exige un sample minimal plutôt qu’une génération d’espace ou un halo synthétique.
