# 11_LIVE_INSTRUMENT_SPECTRAL_CAPTURE_PROTOCOL

Version : v0.1  
Statut : protocole léger. Non bloquant pour la suite.

## Objet

Ce document définit une méthode simple pour collecter des informations spectrales exploitables sur les instruments live réels de Yohan, principalement :

```text
didgeridoos ;
guimbardes ;
gong(s) ;
tambour(s) sur cadre ;
autres instruments réels présents en live.
```

Le protocole ne remplace pas une vraie analyse en studio. Il sert à fournir assez d’information pour orienter :

```text
pitch_center ;
dominant peaks ;
registre ;
relation au sub ;
relation aux traitements ;
risques de masque ;
priorités de material_assets.
```

---

# 1. Décision immédiate

Pour la phase actuelle, des estimations grossières suffisent.

Il n’est pas nécessaire de bloquer le travail tant que les instruments sont décrits par :

```text
registre approximatif ;
hauteur ressentie ;
pics dominants approximatifs ;
rôle musical ;
comportement de jeu ;
risques de masque ;
relations au sub / didgeridoo / guimbardes / gong / tambour.
```

Les mesures plus précises deviendront utiles seulement lorsque l’on créera des fiches `material_asset` individuelles ou des mappings de scène.

---

# 2. Notes préliminaires fournies par Yohan

## 2.1 Didgeridoo 1

```text
instrument: didgeridoo 1
registre: grave
note la plus grave: deux pics principaux environ 48 Hz et 96 Hz
incertitude: 48 Hz peut être fondamentale réelle, sous-harmonique ou composante basse ; 96 Hz peut être dominant perceptif selon contexte
catégorisation provisoire: ne pas classer par octave seule ; décrire comme double-pic 48/96 avec centre perceptif à confirmer
```

## 2.2 Didgeridoo 2

```text
instrument: didgeridoo 2
registre: plus grave
note la plus grave: deux pics environ 40 Hz et 80 Hz
observation: 80 Hz est plus fort que 40 Hz
extension: s’accorde jusqu’à environ une quinte plus haut
catégorisation provisoire: double-pic 40/80 ; 80 Hz peut être dominant perceptif, 40 Hz peut rester composante fondamentale/sub ; à traiter comme relation sub + drone, pas comme simple note unique
```

## 2.3 Guimbardes

```text
nombre approximatif: ~20
groupes utiles immédiats: très graves / graves / médium / aiguës / très aiguës
accordages: environ 5–6 tons par octave
niveau de jeu: très bon
catégorisation provisoire: suffisamment précise pour la phase actuelle
mesure détaillée: utile plus tard pour material_assets individuels, mais non bloquante maintenant
```

---

# 3. Interprétation musicale des pics didgeridoo

Pour Vesperare, il n’est pas nécessaire de décider immédiatement si le pic le plus bas est “la vraie fondamentale”.

Il faut plutôt noter trois valeurs :

```text
lowest_visible_peak: pic le plus bas visible ou mesuré
strongest_low_peak: pic grave le plus fort
felt_pitch_center: hauteur ou zone ressentie à l’écoute
```

Exemple :

```text
DIDG_01:
lowest_visible_peak: 48 Hz
strongest_low_peak: à confirmer
felt_pitch_center: à confirmer par écoute

DIDG_02:
lowest_visible_peak: 40 Hz
strongest_low_peak: 80 Hz
felt_pitch_center: probablement entre sensation de 40 et dominance de 80 selon système d’écoute
```

Cette méthode évite une décision trop théorique sur octave / sous-harmonique / fondamentale.

---

# 4. Limites du téléphone

Un téléphone peut suffire pour une analyse relative, mais pas pour une mesure fiable absolue du sub.

Limites probables :

```text
réponse faible ou instable sous environ 60–80 Hz ;
compression automatique ;
réduction de bruit ;
limiteur ;
auto-gain ;
orientation du micro très influente ;
pièce et distance très influentes.
```

Conséquence :

```text
un téléphone peut aider à comparer des instruments entre eux ;
il peut repérer des pics dominants ;
il peut montrer les zones de formants ;
il ne doit pas être utilisé seul pour décider du vrai niveau sub réel.
```

---

# 5. Méthode légère d’enregistrement au téléphone

## 5.1 Conditions générales

```text
pièce calme ;
pas de ventilation proche ;
téléphone en mode avion ;
si possible, appli qui enregistre en WAV ou qualité non compressée ;
désactiver si possible auto-gain / réduction de bruit / traitement vocal ;
placer le téléphone toujours au même endroit pour comparer ;
ne pas saturer ;
faire plusieurs prises courtes plutôt qu’une longue prise.
```

Si l’application ne permet pas le WAV, un enregistrement téléphone standard reste utile comme référence d’écoute, mais moins fiable pour le spectre.

## 5.2 Distance recommandée

```text
didgeridoo: 70 cm à 1,5 m, légèrement hors axe du pavillon, pour éviter souffle direct et saturation ;
guimbardes: 25 à 50 cm devant la bouche, même position pour chaque guimbarde ;
gong: 1 à 2 m, pas trop proche du centre, laisser la queue complète ;
tambour: 50 cm à 1 m, éviter saturation d’attaque.
```

## 5.3 Prises minimales par instrument

Pour chaque instrument, enregistrer :

```text
A_LOW_OR_BASE: note/geste le plus bas ou le plus stable ;
B_MEDIUM_OR_TYPICAL: jeu typique, intensité moyenne ;
C_STRONG_OR_EXTREME: intensité forte ou registre extrême ;
D_VARIATION_OPTIONAL: variation expressive, seulement si utile.
```

Pour les didgeridoos :

```text
1. note la plus grave stable ;
2. montée jusqu’à la limite utile ;
3. jeu avec articulation / pression ;
4. jeu doux ou souffle si important.
```

Pour les guimbardes :

```text
au lieu de mesurer les 20 immédiatement, mesurer d’abord 5 représentantes :
- très grave ;
- grave ;
- médium ;
- aiguë ;
- très aiguë.
```

---

# 6. Nommage recommandé des fichiers

```text
YYYYMMDD_INSTRUMENT_ID_REGISTER_TAKE.wav
```

Exemples :

```text
20260614_DIDG_01_LOW_48_96_T01.wav
20260614_DIDG_02_LOW_40_80_T01.wav
20260614_JH_VERY_LOW_T01.wav
20260614_JH_MEDIUM_T01.wav
20260614_JH_VERY_HIGH_T01.wav
20260614_GONG_01_SOFT_T01.wav
20260614_FRAME_DRUM_01_CENTER_T01.wav
```

---

# 7. Métadonnées minimales à fournir avec les fichiers

Pour chaque prise :

```text
instrument_id:
instrument_type:
registre_estime:
hauteur_ressentie:
pics_connus_ou_estimes:
mode_de_jeu:
intensite:
distance_telephone:
position_telephone:
piece:
remarques:
```

Exemple :

```text
instrument_id: DIDG_02
instrument_type: didgeridoo
registre_estime: très grave
hauteur_ressentie: à confirmer
pics_connus_ou_estimes: 40 Hz / 80 Hz, 80 plus fort
mode_de_jeu: note basse stable
intensite: moyenne
distance_telephone: environ 1 m
position_telephone: hors axe pavillon
piece: salon calme
remarques: s’accorde jusqu’à environ une quinte plus haut
```

---

# 8. Données utiles pour ChatGPT / analyse ultérieure

Si Yohan fournit les fichiers audio, les données les plus exploitables seront :

```text
pics spectraux dominants ;
rapport entre pic le plus bas et pic dominant ;
stabilité du pitch_center ;
zones de formants ;
densité spectrale ;
attaque / queue ;
risque de masque avec sub, voix, guimbardes, gong, tambour ;
classification utile pour material_asset.
```

Les images de spectrogramme peuvent aider, mais les fichiers audio courts sont plus utiles.

---

# 9. Seuil de suffisance pour continuer maintenant

Pour continuer le travail de conception, il suffit actuellement de garder :

```text
didgeridoo 1: double-pic 48/96 Hz ;
didgeridoo 2: double-pic 40/80 Hz, 80 Hz plus fort, accordable jusqu’à environ une quinte ;
guimbardes: très graves / graves / médium / aiguës / très aiguës, environ 5–6 tons par octave ;
gong/tambour: à documenter plus tard si leurs rôles deviennent centraux.
```

Donc :

```text
mesures détaillées utiles plus tard ;
estimations grossières suffisantes maintenant ;
pas de blocage de la suite.
```

---

# 10. Prochaine action

Continuer le travail conceptuel et revenir aux mesures seulement au moment de créer :

```text
material_assets individuels ;
profils de scène ;
mappings pitch_center / sub / résonateurs ;
protections de mix ;
décisions de sample minimal.
```
