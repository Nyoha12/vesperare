# 16_ACOUSTICARCHIVE_MAPPING_DONNEES_VESPERARE

Version : v0.1  
Statut : document de correspondance entre sorties AcousticArchive et besoins Vesperare. Sans asset réel, sans collecte obligatoire, sans prototype.

## Objet

Yohan développe un logiciel d’analyse acoustique nommé ici `AcousticArchive`.

Le protocole fourni indique que l’outil peut extraire notamment :

```text
f0 / note estimée ;
cartographie harmonique et partiels ;
inharmonicité ;
rugosité / battements ;
spectral centroid ;
HNR ;
transitoires d’attaque ;
trémolo ;
vibrato ;
decay / T60 ;
couches de vélocité ;
formants F1/F2 pour didgeridoo et guimbardes ;
conditions de prise de son.
```

Ce document ne demande pas de nouvelle prise de son.
Il prépare seulement la façon d’interpréter les futures données produites par l’outil dans le cadre de Vesperare.

Références internes :

```text
14_AUDIT_SOURCE_NEEDS_CORPS_AMPLITUDES_LIMITES.md
15_DONNEES_INSTRUMENTALES_MANQUANTES_PRIORITAIRES.md
SOURCE_NEED_LIVE_DIDGERIDOO_PRESSURE_FORMANTS.md
SOURCE_NEED_LIVE_JAW_HARPS_FORMANT_MICROPULSE.md
SOURCE_NEED_SUB_PRESSURE_ENGINE.md
```

---

# 1. Principe de lecture

Les données AcousticArchive ne doivent pas être interprétées comme des décisions musicales automatiques.

Elles doivent alimenter :

```text
connaissance instrumentale ;
calibrage des amplitudes ;
identification des zones de bord ;
relations source / corps ;
relations source / sub ;
risques spectral, timbral, dynamique ;
futurs contrôles Router ;
futurs guards Conflict Manager ;
futurs profils Object Registry.
```

Règle :

```text
descripteur acoustique ≠ fonction musicale.
```

Un descripteur devient utile seulement s’il est relié à :

```text
source ;
fonction ;
body_subfunction ;
amplitude ;
limite ;
sortie ;
contexte de scène ;
provenance.
```

---

# 2. Correspondance des descripteurs

## 2.1 f0 / note estimée

Utilisation Vesperare :

```text
pitch_center ;
spectral_root ;
relation au sub ;
relation didgeridoo / guimbarde / gong ;
registre de corps-ancrage ;
registre de tension ;
registre de conflit.
```

Ne pas utiliser pour :

```text
forcer un tempérament égal ;
réduire un instrument à une note ;
classer une source uniquement par pitch ;
faire une harmonie automatique.
```

Questions utiles :

```text
cette f0 stabilise-t-elle le corps ?
entre-t-elle en conflit avec le sub ?
porte-t-elle un corps-ancrage ou une tension ?
est-elle suffisamment stable pour servir de centre ?
est-elle au contraire une hauteur ressentie fluctuante ?
```

---

## 2.2 Partiels / cartographie harmonique

Utilisation Vesperare :

```text
profil de partiels ;
inharmonicité naturelle ;
compatibilité avec Pitch / Harmonic Field Manager ;
risque de masque ;
fonction de halo ;
fonction de brillance ;
fonction de masse ;
fonction de beauté autonome ;
fonction de signal harmonique.
```

Sources concernées :

```text
gongs ;
guimbardes ;
didgeridoo ;
tambours ;
métaux accordés futurs si besoin confirmé.
```

Questions utiles :

```text
les partiels forment-ils une masse, un signal ou une texture ?
créent-ils une tension utile ?
créent-ils une zone de bord par surcharge ?
quels partiels doivent être protégés ?
quels partiels doivent être réduits ?
```

---

## 2.3 Inharmonicité

Utilisation Vesperare :

```text
métal réel ;
gong ;
cloche ;
bol ;
guimbarde ;
beauté autonome ;
tension non tonale ;
zone de bord harmonique.
```

Lecture musicale :

```text
faible inharmonicité: stabilité, ancrage, lisibilité ;
inharmonicité moyenne: tension, couleur, battements possibles ;
forte inharmonicité: gong, métal, friction, beauté, mais risque de masque ou décor.
```

Risque :

```text
le système pourrait valoriser une inharmonicité forte parce qu’elle est spectaculaire.
```

Règle :

```text
inharmonicité intéressante seulement si elle porte une fonction de scène.
```

---

## 2.4 Rugosité / battements

Utilisation Vesperare :

```text
corps-attente ;
corps-hypnose ;
corps-limite ;
tension longue ;
microtonalité ;
friction ;
pré-résolution ;
instabilité contrôlée.
```

Questions utiles :

```text
les battements sont-ils perceptibles et musicaux ?
créent-ils attente ou fatigue ?
servent-ils la suspension active ou deviennent-ils haze ?
sont-ils contrôlables par amplitude ?
quelle sortie permet de les calmer ?
```

Sorties possibles :

```text
réduire densité harmonique ;
stabiliser pitch_center ;
filtrer partiels conflictuels ;
retirer champ harmonique ;
retour au sub / corps.
```

---

## 2.5 Spectral centroid / luminosité perceptuelle

Utilisation Vesperare :

```text
brillance ;
fatigue aiguë ;
corps-pulsation ;
corps-geste ;
guimbardes ;
cloches/métaux ;
polytexture ;
limite de halo ;
protection du mix.
```

Lecture musicale :

```text
centroid bas: masse, corps, obscurité, pression ;
centroid moyen: lisibilité, matière, présence ;
centroid haut: brillance, micro-pulse, danger de fatigue.
```

À relier à :

```text
amplitude de jeu ;
fatigue ;
masque voix ;
masque guimbardes ;
perte de corps ;
zone de bord.
```

---

## 2.6 HNR

Utilisation Vesperare :

```text
souffle vs tonalité ;
bruit de frottement ;
formants ;
présence humaine ;
source reconnaissable ;
texture ;
risque de bruit statique.
```

Lecture musicale :

```text
HNR élevé: source tonale, partiels lisibles, stabilité ;
HNR moyen: mélange matière / bruit, souvent très intéressant ;
HNR faible: souffle, frottement, bruit, texture, risque de décor ou fatigue.
```

Questions utiles :

```text
le bruit porte-t-il un geste ?
le souffle porte-t-il le corps ?
la composante bruitée devient-elle masque ?
le signal tonal reste-t-il assez lisible ?
```

---

## 2.7 Transitoires d’attaque

Utilisation Vesperare :

```text
corps-impact ;
corps-geste ;
attaque de peau ;
attaque de gong ;
attaque de guimbarde ;
retour au corps ;
préservation de l’impact ;
risque kick standard.
```

Questions utiles :

```text
l’attaque est-elle lisible ?
est-elle douce, sèche, explosive, bruitée ?
porte-t-elle le geste humain ?
peut-elle ramener le corps ?
devient-elle trop standardisée ?
```

Sorties :

```text
transient soften ;
transient emphasize ;
réduire attaque ;
préserver impact ;
passer en trace ;
retour au corps moins frontal.
```

---

## 2.8 Tremolo / vibrato / modulations

Utilisation Vesperare :

```text
corps-hypnose ;
corps-attente ;
mouvement interne ;
ligne vivante ;
instabilité ;
variation non mécanique ;
battements de bol/gong ;
modulation guimbardes/didgeridoo.
```

Questions utiles :

```text
la modulation est-elle cyclique, irrégulière, expressive ?
crée-t-elle vie ou fatigue ?
sert-elle une montée, une suspension ou un retour ?
quelle amplitude la rend expressive ?
à partir de quand devient-elle démonstrative ?
```

---

## 2.9 Decay / T60

Utilisation Vesperare :

```text
gong ;
bol ;
peau ;
halo ;
queue ;
post-résonance ;
freeze ;
release ;
anti-ambient ;
retour au corps.
```

Questions utiles :

```text
la queue est-elle fonctionnelle ou décorative ?
le decay permet-il un retour ?
masque-t-il le corps ?
exige-t-il un contrôle de release ?
est-il utilisable comme post-trace ?
```

Sorties :

```text
couper queue ;
réduire halo ;
ducking ;
filtrer decay ;
passer en post-résonance ;
release obligatoire.
```

---

## 2.10 Velocity layers

Utilisation Vesperare :

```text
amplitude sûre ;
amplitude expressive ;
amplitude de bord ;
amplitude dangereuse ;
réponse à l’intensité ;
dynamique de jeu ;
contrôles Router ;
limites Conflict Manager.
```

Interprétation :

```text
piano: seuil d’apparition, timbre doux, corps discret ;
mezzo: zone de référence stable ;
forte: ouverture, brillance, pression, risque ;
fortissimo: zone de bord ou danger selon source.
```

Questions utiles :

```text
à quel moment l’instrument s’ouvre ?
à quel moment il devient fatigant ?
à quel moment il perd son rôle ?
quelle amplitude est performable ?
quelle amplitude demande override ?
```

---

## 2.11 Formants F1 / F2

Utilisation Vesperare :

```text
didgeridoo ;
guimbardes ;
voix-sans-voix ;
corps-geste ;
corps-attente ;
formants vivants ;
relation bouche / instrument ;
relation voix / non-voix.
```

Questions utiles :

```text
quels gestes de bouche déplacent les formants ?
quels formants sont sûrs ?
quels formants deviennent caricaturaux ?
quels formants masquent voix/sub/guimbardes ?
quels formants peuvent piloter un contrôle live ?
```

---

# 3. Qualité de captation et statut des données

Les données AcousticArchive doivent porter un statut de fiabilité.

## 3.1 Données fiables

```text
micro de studio adapté ;
24 bits ;
44.1 kHz minimum ;
48 kHz ou 96 kHz si transitoires rapides ;
pièce maîtrisée ;
niveau non saturé ;
absence d’auto-gain ou DSP caché.
```

## 3.2 Données de brouillon

```text
micro interne ;
smartphone ;
ordinateur portable ;
pièce non contrôlée ;
compression ou noise gate automatique ;
incertitude de gain ;
fond de pièce fort.
```

Les données de brouillon peuvent servir à :

```text
orientation ;
comparaison grossière ;
repérage ;
préparation de questions.
```

Elles ne doivent pas servir à :

```text
calibrage définitif ;
seuils de sécurité ;
profil d’asset ;
décision de sample ;
décision de mix.
```

---

# 4. Phases de prise de son et usage Vesperare

## 4.1 Stabilisation du fondamental

Usage Vesperare :

```text
pitch_center ;
stabilité ;
registre ;
relation au sub ;
corps-ancrage ;
corps-pression.
```

## 4.2 Modulations et transitoires

Usage Vesperare :

```text
corps-geste ;
corps-impact ;
corps-hypnose ;
velocity layers ;
seuils de bord ;
transitions de timbre ;
contrôles performables.
```

## 4.3 Overblown / toots didgeridoo

Usage Vesperare :

```text
registre inharmonique du tube ;
points de tension ;
relations aux formants ;
relations pitch_center ;
limites de jeu ;
risques de cliché ou effet démonstratif.
```

---

# 5. Format recommandé pour futures données

Quand AcousticArchive exportera des données JSON/Markdown, Vesperare devrait les relire via une fiche de ce type :

```text
instrument_id:
instrument_family:
recording_status: reliable / draft / unusable
recording_chain:
sample_rate:
bit_depth:
room_status:

acoustic_descriptors:
  f0:
  estimated_note:
  partials:
  inharmonicity:
  roughness:
  spectral_centroid:
  hnr:
  attack_duration:
  attack_noise_ratio:
  spectral_flux:
  tremolo:
  vibrato:
  decay_t60:
  velocity_layers:
  formants:

vesperare_interpretation:
  source_status:
  body_subfunctions:
  stable_functions:
  expressive_amplitudes:
  edge_zones:
  danger_zones:
  possible_outputs:
  router_controls:
  conflict_checks:
  pitch_relations:
  source_need_links:
  asset_implication:
  sample_implication:
```

---

# 6. Décision actuelle

AcousticArchive est pertinent pour Vesperare.

Il doit devenir :

```text
un outil de connaissance instrumentale ;
un outil de calibration future ;
un outil de description des limites ;
un outil de préparation du Router, Conflict Manager, Pitch Manager, Timbre Mapper et Object Registry.
```

Il ne doit pas devenir :

```text
une obligation de mesure immédiate ;
un protocole de performance ;
une justification automatique d’assets ;
un déclencheur de banque de samples ;
un substitut à l’écoute musicale.
```

---

# 7. Prochaine étape recommandée

Lorsque les premières données AcousticArchive seront disponibles, créer une fiche par instrument prioritaire :

```text
INSTRUMENT_DATA_DIDGERIDOO_ACOUSTICARCHIVE.md
INSTRUMENT_DATA_JAW_HARPS_ACOUSTICARCHIVE.md
INSTRUMENT_DATA_GONGS_ACOUSTICARCHIVE.md
INSTRUMENT_DATA_FRAME_DRUMS_ACOUSTICARCHIVE.md
```

Mais seulement après réception de données réelles.

Pour l’instant :

```text
ne pas créer de profil vide ;
ne pas créer de seuils fictifs ;
ne pas créer d’asset ;
ne pas créer de sample ;
ne pas imposer de session.
```
