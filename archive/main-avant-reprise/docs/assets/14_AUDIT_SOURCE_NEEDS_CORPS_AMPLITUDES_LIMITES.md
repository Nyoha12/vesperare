# 14_AUDIT_SOURCE_NEEDS_CORPS_AMPLITUDES_LIMITES

Version : v0.1  
Statut : audit de cohérence des `source_needs` existants. Sans nouveau besoin, sans asset réel, sans prototype, sans sample confirmé.

## Objet

Ce document audite les `source_needs` et matrices du dossier `docs/assets` à la lumière du recentrage :

```text
corps composé ;
amplitude ;
limite ;
sortie ;
override ;
provenance ;
statut conditionnel des sources.
```

Il ne crée pas de nouvelle source.
Il ne valide aucun sample.
Il ne crée aucun asset réel.
Il ne remplace pas les fiches existantes.

Il sert à éviter trois dérives :

```text
1. traiter un source_need comme un asset ;
2. transformer un besoin conditionnel en décision ;
3. continuer automatiquement l’axe harmonic drone sans réévaluation par fonctions et scènes.
```

---

# 1. Documents audités

Documents racines assets :

```text
00_ASSETS_INDEX.md
07_INITIAL_REAL_NEEDS_NO_SAMPLES_ANALYSIS.md
08_REMAINING_NEEDS_AFTER_LIVE_BASE_AND_COMPENSATIONS.md
10_HIGH_PRIORITY_SOURCE_NEEDS_COMPARISON.md
```

Source_needs relus directement :

```text
SOURCE_NEED_LIVE_DIDGERIDOO_PRESSURE_FORMANTS.md
SOURCE_NEED_LIVE_JAW_HARPS_FORMANT_MICROPULSE.md
SOURCE_NEED_SUB_PRESSURE_ENGINE.md
SOURCE_NEED_OPTIONAL_GONG_PRESENCE_ABSENCE_STRATEGY.md
SOURCE_NEED_OPTIONAL_FRAME_DRUM_PRESENCE_ABSENCE_STRATEGY.md
SOURCE_NEED_MINIMAL_VOICE_IF_NOT_LIVE.md
SOURCE_NEED_MINIMAL_FIELD_RECORDINGS_IF_EXPOSED.md
SOURCE_NEED_HARMONIC_DRONE_SHRUTI_ORGAN.md
```

Non relus intégralement dans cet audit mais concernés par la synthèse :

```text
SOURCE_NEED_BOWED_STRING_TORSION_FIELD.md
SOURCE_NEED_TUNED_METAL_PARTIALS_BELLS_VIBRAPHONE.md
MATERIAL_ASSET_SCHEMA_HARMONIC_DRONE_FIELDS.md
```

---

# 2. Décision générale

Le dossier `docs/assets` est globalement cohérent avec le principe :

```text
zéro sample initial ;
didgeridoo toujours live ;
guimbardes toujours live ;
gong optionnel ;
tambour optionnel ;
samples seulement si besoin réel confirmé.
```

Le problème principal n’est pas une incohérence forte.

Le point à corriger est plutôt :

```text
certains documents donnent une priorité ancienne à l’axe harmonic drone ;
avec le recentrage, cette priorité doit être repondérée par corps, amplitude, limite, sortie et override ;
aucun axe source supplémentaire ne doit devenir automatique.
```

---

# 3. Classification actuelle des sources

## 3.1 Sources live fixes — statut ferme

```text
LIVE_FIXED
- didgeridoo ;
- guimbardes.
```

Décision :

```text
sources centrales ;
pas samples ;
pas banque ;
pas remplacement ;
préparer captation, traitement, profils live, protections et relations aux autres sources.
```

### Didgeridoo

Fonctions principales :

```text
corps-pression ;
corps-geste ;
corps-ancrage ;
corps-attente ;
corps-retour partiel ;
pression grave organique ;
souffle ;
formants ;
torsion ;
ligne grave vivante.
```

Amplitudes :

```text
sûre: souffle / formants lisibles ;
expressive: pression et torsion contrôlées ;
bord: conflit sub / boue bas-médium / drone statique ;
danger: feedback, masque live, didgeridoo réduit à basse ;
override: surcharge grave ou drone assumé avec sortie claire.
```

Sorties :

```text
réduire grave ;
stabiliser relation sub ;
repasser souffle ;
retirer résonateur ;
laisser trace formantique ;
retour au corps.
```

### Guimbardes

Fonctions principales :

```text
corps-geste ;
corps-pulsation ;
corps-hypnose ;
corps-attente ;
micro-pulse ;
voix-sans-voix ;
formants de bouche ;
brillance rythmique ;
torsion fine ;
polytexture articulée.
```

Amplitudes :

```text
sûre: micro-pulse lisible ;
expressive: torsion et formants vivants ;
bord: fatigue aiguë / gimmick / nasalité excessive ;
danger: folklore, gadget, masque voix/sub, perte techno ;
override: répétition ou brillance poussée si le rôle est assumé et sortie disponible.
```

Sorties :

```text
réduire aigu ;
raréfier ;
filtrer formants ;
protéger micro-pulse ;
retour au silence ;
passer en trace.
```

---

# 4. Source engine centrale — statut ferme mais à calibrer

```text
SOURCE_NEED_SUB_PRESSURE_ENGINE
```

Décision :

```text
engine central ;
pas sample principal ;
pas preset de basse ;
pas remplacement du didgeridoo ;
pas remplacement du gong ou du tambour.
```

Fonctions principales :

```text
corps-pression ;
corps-ancrage ;
corps-retour ;
corps-attente ;
pression grave stable ;
centre physique ;
sub retenu ;
résolution grave.
```

Amplitudes :

```text
sûre: centre grave stable, mono, discret ;
expressive: pression contrôlée, retenue, résolution ;
bord: low-mid overload, sub trop central, relation didgeridoo instable ;
danger: volume punitif, boue, largeur basse, sub générique ;
override: surcharge sub volontaire si sortie et réduction disponibles.
```

Sorties :

```text
réduire pression ;
stabiliser sub ;
retirer sub ;
sidechain didgeridoo ;
retour corps ;
sub retenu sans résolution.
```

---

# 5. Sources live optionnelles — statut conditionnel fort

```text
LIVE_OPTIONAL
- gong ;
- tambour sur cadre.
```

Ces sources ne doivent pas être traitées comme absentes par défaut ni comme toujours présentes.

Elles appellent une stratégie de présence/absence.

## 5.1 Gong

Fonctions principales :

```text
corps-impact métallique ;
corps-retour ;
corps-limite ;
masse de résolution ;
halo métallique ;
partiels inharmoniques ;
beauté autonome ;
post-résonance.
```

Statut :

```text
conditionnel ;
compensation obligatoire seulement si la fonction de gong est nécessaire dans la scène et gong absent ;
sample minimal possible mais non automatique.
```

Amplitudes :

```text
sûre: gong rare, rôle clair ;
expressive: queue / halo / partiels contrôlés ;
bord: dramatisme, rituel, boue sub+gong, queue trop longue ;
danger: gong décoratif ou monumental non situé ;
override: gong massif assumé avec hiérarchie, sortie et réduction queue/sub.
```

Sorties :

```text
couper queue ;
réduire halo ;
retirer sub ;
passer en post-résonance ;
remplacer par trace métallique légère ;
annuler résolution.
```

## 5.2 Tambour sur cadre

Fonctions principales :

```text
corps-impact ;
corps-geste ;
corps-retour ;
corps-pulsation ;
peau ;
attaque acoustique ;
grain humain ;
accent large ;
polytexture corporelle.
```

Statut :

```text
conditionnel ;
compensation obligatoire seulement si la fonction peau/impact est nécessaire dans la scène et tambour absent ;
sample minimal possible mais non automatique.
```

Amplitudes :

```text
sûre: impact ponctuel, grain lisible ;
expressive: retour au corps, peau traitée, accent sculpté ;
bord: kick standard, tribalisation, bas-médium, conflit sub ;
danger: folklore, percussion plaquée, perte techno ;
override: impact corporel très exposé si contexte et sortie clairs.
```

Sorties :

```text
réduire impact ;
retirer sub ;
préserver grain ;
raréfier attaque ;
passer en trace de peau ;
retour corps moins frontal.
```

---

# 6. Sources conditionnelles non live — à maintenir conditionnelles

## 6.1 Voix

```text
SOURCE_NEED_MINIMAL_VOICE_IF_NOT_LIVE
```

Statut :

```text
conditionnel ;
aucune banque vocale ;
sample minimal seulement si scène exige présence humaine réelle et voix non live.
```

Fonctions possibles :

```text
corps-geste vocal ;
corps-attente ;
corps-limite ;
signal humain ;
souffle ;
cri ;
phonème ;
parole fragmentée ;
voix matière.
```

Amplitudes :

```text
sûre: souffle ou trace formantique discrète ;
expressive: signal humain rare ;
bord: pathos, gimmick, sémantique trop explicite ;
danger: chanson involontaire, rituel plaqué, trailer, spoken-word non voulu ;
override: fragment vocal exposé si scène clairement construite autour de lui.
```

Sorties :

```text
réduire sémantique ;
retirer voix ;
transformer en matière ;
passer à voix-sans-voix ;
protéger formants ;
retour instrumental.
```

## 6.2 Field recordings / lieux

```text
SOURCE_NEED_MINIMAL_FIELD_RECORDINGS_IF_EXPOSED
```

Statut :

```text
conditionnel ;
pas banque de paysages ;
sample minimal seulement si une scène exige lieu réel, mémoire ou profondeur non simulable.
```

Fonctions possibles :

```text
corps-limite ;
corps-attente ;
lieu réel ;
profondeur ;
mémoire ;
transition ;
post-résonance ;
beauté autonome de lieu.
```

Amplitudes :

```text
sûre: microtexture non exposée ou espace simulable ;
expressive: lieu bref, fonctionnel ;
bord: ambientisation, documentaire, décor nature ;
danger: paysage permanent, perte du corps, carte postale sonore ;
override: lieu exposé si tension, sortie et relation au corps restent claires.
```

Sorties :

```text
retirer décor ;
ducking corps ;
réduire halo réel ;
filtrer lieu ;
passer en grain ;
retour sub/live.
```

---

# 7. Sources ouvertes à réévaluer — pas de priorité automatique

Les documents antérieurs ont identifié trois axes hauts :

```text
HARMONIC_DRONE_SHRUTI_ORGAN ;
BOWED_STRING_TORSION_FIELD ;
TUNED_METAL_PARTIALS_BELLS_VIBRAPHONE.
```

Leur priorité doit maintenant être relue avec la grille récente.

## 7.1 Harmonic drone / shruti / organ

Statut :

```text
OPEN_NEED_HIGH mais non automatique.
```

Fonctions :

```text
corps-attente ;
corps-hypnose ;
corps-limite ;
champ harmonique ;
battements ;
suspension active ;
expansion non ambient ;
architecture harmonique.
```

Limite principale :

```text
risque d’ambientisation, sacralité, drone statique, perte du corps.
```

Décision corrigée :

```text
ne pas poursuivre l’axe harmonic drone seulement parce qu’il est prioritaire dans 10 ;
le poursuivre seulement si une scène ou une fonction exige champ harmonique soutenu ;
préférer d’abord référence, résonateur ou test conceptuel sans asset réel.
```

## 7.2 Cordes frottées / torsion

Statut :

```text
OPEN_NEED_POTENTIAL_HIGH_RISK.
```

Fonctions :

```text
corps-geste ;
corps-limite ;
corps-attente ;
friction ;
ligne de torsion médium/aiguë ;
cri sans voix ;
beauté tendue.
```

Limite principale :

```text
lyrisme, pathos, cinéma, solo instrumental, surcharge émotionnelle.
```

Décision corrigée :

```text
ne pas créer de schema ni sample maintenant ;
travailler seulement en critères anti-lyrisme si besoin de torsion médium/aiguë confirmé.
```

## 7.3 Métaux accordés / cloches / vibraphone

Statut :

```text
OPEN_NEED_MEDIUM_HIGH.
```

Fonctions :

```text
corps-attente ;
corps-retour ponctuel ;
corps-limite ;
partiels contrôlés ;
signaux harmoniques ;
brillance non punitive ;
beauté ponctuelle.
```

Limite principale :

```text
carillon, new age, féerie, jazz lounge, décor métallique.
```

Décision corrigée :

```text
ne pas ouvrir de banque de cloches ;
rechercher seulement si rôle de signal harmonique ou partiel stable est confirmé.
```

---

# 8. Matrice de décision mise à jour

```text
LIVE_FIXED_ALWAYS:
- didgeridoo ;
- guimbardes.

ENGINE_CORE:
- sub / pressure engine.

OPTIONAL_LIVE_WITH_COMPENSATION_IF_NEEDED:
- gong ;
- tambour sur cadre.

CONDITIONAL_HUMAN_OR_PLACE:
- voix ;
- field recordings.

OPEN_NEED_REQUIRES_SCENE_CONFIRMATION:
- harmonic drone ;
- bowed strings ;
- tuned metals.
```

---

# 9. Données instrumentales réellement manquantes

L’audit ne crée pas encore ces données. Il identifie seulement ce qui manque probablement.

## 9.1 Données fixes prioritaires

```text
didgeridoo:
- plages de jeu réelles ;
- hauteurs ressenties ;
- formants forts ;
- niveaux de pression ;
- zones de boue ;
- relations possibles au sub ;
- types de souffle / attaque / continuité.

guimbardes:
- inventaire des ~20 instruments ;
- hauteurs ressenties ;
- profils de formants ;
- brillance / fatigue ;
- densité de micro-pulse ;
- rôles préférés ;
- zones à éviter.
```

## 9.2 Données optionnelles prioritaires

```text
gongs:
- quels 5 gongs ;
- registres ;
- queues ;
- partiels ;
- durées ;
- risques de boue ;
- compatibilité sub.

tambours sur cadre:
- quels 3 tambours ;
- attaques ;
- peaux ;
- graves ;
- queues courtes ;
- relation sub ;
- risques de kick standard ou couleur plaquée.
```

## 9.3 Données conditionnelles à ne pas collecter encore

```text
voix ;
field recordings ;
harmonic drone ;
cordes frottées ;
métaux accordés.
```

Ces données ne doivent être collectées que si une scène ou fonction les exige clairement.

---

# 10. Prochaine étape recommandée

Ne pas créer de nouveau `source_need`.
Ne pas créer d’asset réel.
Ne pas créer de banque.
Ne pas créer de prototype.

Créer plutôt un document de données instrumentales manquantes :

```text
15_DONNEES_INSTRUMENTALES_MANQUANTES_PRIORITAIRES.md
```

Ce document devrait lister seulement les informations à relever sur :

```text
didgeridoo ;
guimbardes ;
gongs ;
tambours sur cadre.
```

Il ne doit pas demander d’enregistrement complet ni de session obligatoire.

Il doit être un support de connaissance instrumentale, pas un protocole de performance.

---

# 11. Décision finale de cet audit

Le dossier `assets/source_needs` est globalement cohérent.

Décisions :

```text
1. garder les live fixes comme priorité réelle ;
2. garder gong/tambour comme optionnels avec compensation conditionnelle ;
3. garder voix/field recordings comme conditionnels ;
4. repondérer harmonic drone / cordes / métaux : ouverts, mais non automatiques ;
5. ne créer aucun nouveau source_need maintenant ;
6. passer aux données instrumentales manquantes prioritaires.
```
