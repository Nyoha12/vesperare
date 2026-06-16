# 45_REPRISE_DEPUIS_FICHE_MESURES_INSTRUMENTS

Version : v0.2  
Statut : fiche de reprise courte depuis la fiche de mesures instrumentales / AcousticArchive. Sans patch, sans prototype, sans asset réel, sans seuil fictif.

## Objet

Ce document sert à reprendre le projet depuis le moment où Yohan a fourni la fiche sur les mesures possibles des instruments et les sorties d’analyse acoustique.

La fiche de départ est maintenant formalisée ici :

```text
docs/assets/16_ACOUSTICARCHIVE_MAPPING_DONNEES_VESPERARE.md
```

Cette fiche `45` ne répète pas tous les contenus.  
Elle indique seulement :

```text
fichiers ajoutés ;
fichiers modifiés ;
fichiers supprimés ;
changements méthodologiques ;
points de reprise.
```

---

# 1. Fichiers ajoutés depuis cette phase

## 1.1 Fiche AcousticArchive / Vesperare

```text
docs/assets/16_ACOUSTICARCHIVE_MAPPING_DONNEES_VESPERARE.md
```

Rôle : relier les sorties d’analyse acoustique aux besoins de Vesperare.

Contenu principal :

```text
f0 / note estimée ;
partiels ;
inharmonicité ;
rugosité / battements ;
spectral centroid ;
HNR ;
transitoires ;
tremolo / vibrato ;
decay / T60 ;
velocity layers ;
formants F1/F2 ;
conditions de prise.
```

Décisions :

```text
descripteur acoustique ≠ fonction musicale ;
donnée AcousticArchive ≠ asset ;
donnée AcousticArchive ≠ seuil définitif ;
donnée de brouillon = orientation seulement ;
donnée fiable = utile pour calibrage futur, mais pas décision automatique.
```

## 1.2 Fiche de reprise actuelle

```text
docs/45_REPRISE_DEPUIS_FICHE_MESURES_INSTRUMENTS.md
```

Rôle : document de reprise pour une autre conversation ou une reprise ultérieure du projet depuis la fiche de mesures.

---

# 2. Fichiers modifiés depuis cette phase

## 2.1 Données instrumentales manquantes

```text
docs/assets/15_DONNEES_INSTRUMENTALES_MANQUANTES_PRIORITAIRES.md
```

Modification principale : passage à une logique **non exhaustive**.

Avant, le risque était que les données instrumentales deviennent implicitement une demande de description complète des instruments et du jeu.

Correction :

```text
Yohan n’a pas à expliquer tout son art ;
les données brutes peuvent être partielles ;
un geste peut être seulement un indice ;
une donnée peut être seulement une trace de potentiel ou de limite ;
le système doit soutenir le jeu, pas exiger sa formalisation complète.
```

Ajouts méthodologiques :

```text
système bucco-vocal étendu ;
techniques de langue, souffle, beatbox, vocalisations, attaques de bouche, clics, gorge, formants ;
classification souple ;
format minimal acceptable ;
absence de donnée exhaustive non bloquante.
```

## 2.2 Contrôles / amplitudes / limites / override

```text
docs/42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md
```

Modification principale : ajout de la notion d’**automation située**.

Formule actuelle :

```text
contrôle = sélection + organisation + amplitude + contexte + risque + sortie + automation située + override.
```

Ajouts :

```text
fonctions automatisables ;
fonctions à laisser au réglage de Yohan ;
fonctions hybrides ;
automation située ;
réglage humain contextualisé ;
distinction automatiser / assister / suggérer / régler / override / verrouiller.
```

Décision :

```text
le système automatise ce qui soutient, protège ou coordonne ;
Yohan règle ce qui relève de la décision musicale ;
le Router présente les contrôles pertinents selon le contexte actif ;
l’override reste humain.
```

## 2.3 Addendum Router

```text
docs/modules/18_CONTEXTUAL_CONTROL_ROUTER_AMPLITUDES_LIMITES_OVERRIDE_ADDENDUM.md
```

Modification principale : le Router devient explicitement l’arbitre entre :

```text
automation ;
réglage humain ;
visibilité ;
urgence ;
masquage ;
verrouillage ;
override.
```

Il doit décider ce qui est :

```text
visible ;
masqué ;
urgent ;
profond ;
verrouillé ;
automatisé ;
réglable ;
overrideable.
```

Règle ajoutée :

```text
Yohan ne doit pas avoir à chercher le bon paramètre dans tout le système.
Le système doit lui présenter les bons gestes de contrôle au bon moment.
```

## 2.4 README

```text
README.md
```

Modifications :

```text
ajout de la correspondance AcousticArchive / Vesperare ;
ajout des audits assets 14–16 dans la carte documentaire ;
ajout du principe automation située ;
clarification : certaines fonctions sont automatisées, d’autres restent sous réglage humain ;
règle : donnée instrumentale manquante ≠ obligation de collecte immédiate ;
règle : descripteur acoustique ≠ fonction musicale automatique ;
prochaine étape : attendre des données réelles avant fiches instrumentales, pas de fiches vides ni seuils fictifs.
```

## 2.5 Index maître

```text
docs/00_INDEX_METHODE_DECISIONS.md
```

Modifications :

```text
ajout de docs/assets/16 dans les audits assets récents ;
passage de la définition du contrôle à automation située + override ;
ajout du principe automation située / réglage humain contextualisé ;
prototypes futurs doivent dire ce qui est automatisé et ce qui reste humain ;
workflow mis à jour : contrôles = amplitudes + risques + limites + sorties + automations + réglages contextuels.
```

## 2.6 Index assets

```text
docs/assets/00_ASSETS_INDEX.md
```

Modifications :

```text
ajout de 16_ACOUSTICARCHIVE_MAPPING_DONNEES_VESPERARE.md ;
règle : descripteur acoustique ≠ fonction musicale automatique ;
règle : donnée instrumentale manquante ≠ collecte obligatoire ;
règle : AcousticArchive prépare l’interprétation, pas les assets.
```

## 2.7 Snapshot arborescence

```text
docs/REPO_TREE_SNAPSHOT.md
```

Modifications avant cette fiche :

```text
ajout de docs/assets/16_ACOUSTICARCHIVE_MAPPING_DONNEES_VESPERARE.md ;
trace des documents récents 14–16 ;
trace de modules/18 et documents de recentrage.
```

À faire après création de cette fiche :

```text
ajouter docs/45_REPRISE_DEPUIS_FICHE_MESURES_INSTRUMENTS.md au snapshot.
```

---

# 3. Fichiers supprimés

Aucun fichier supprimé.

```text
suppression: aucune.
```

---

# 4. Fichiers non créés volontairement

Depuis cette phase, il a été explicitement décidé de ne pas créer :

```text
nouveau source_need ;
asset réel ;
sample bank ;
profil d’engine ;
prototype Max for Live ;
layout ;
mapping matériel ;
fiche instrumentale vide ;
seuil acoustique fictif ;
classification exhaustive du jeu de Yohan.
```

---

# 5. Points de méthode ajoutés

## 5.1 Données acoustiques : utiles, non souveraines

Les données d’analyse acoustique peuvent aider à :

```text
connaissance instrumentale ;
calibrage futur ;
identification de zones de bord ;
relations source / sub ;
relations source / corps ;
préparation du Router ;
préparation du Conflict Manager ;
préparation du Pitch Manager ;
préparation du Timbre Mapper ;
préparation de l’Object Registry.
```

Mais elles ne décident pas automatiquement :

```text
fonction musicale ;
contrôle ;
asset ;
sample ;
seuil définitif ;
choix esthétique ;
mapping.
```

## 5.2 Les mesures ne sont pas bloquantes

Décision :

```text
les mesures précises sont utiles pour le calibrage ;
elles ne sont pas nécessaires pour continuer la conception.
```

On peut continuer sans elles sur :

```text
architecture ;
logique de contrôle ;
solidité des objectifs musicaux ;
organisation du système ;
automation située ;
Router ;
Conductor ;
Conflict ;
scènes ouvertes ;
statuts documentaires.
```

## 5.3 Fréquences approximatives et web

Méthode retenue :

```text
utiliser les fréquences approximatives déjà données par Yohan ;
compléter avec repères web prudents si utile ;
toujours conserver une marge d’incertitude ;
ne jamais transformer une approximation en seuil final ;
ne pas bloquer faute de mesure exacte.
```

Formule :

```text
repère externe ≠ vérité instrumentale ;
fréquence approximative ≠ mapping final ;
absence de mesure exacte ≠ blocage.
```

## 5.4 Non-exhaustivité du jeu de Yohan

Point méthodologique central :

```text
Yohan n’a pas à expliquer tout son art ;
le système ne doit pas exiger une taxonomie complète de sa pratique ;
les données brutes peuvent être partielles ;
les gestes complexes peuvent rester non nommés ;
les données servent à orienter le système, pas à enfermer le musicien.
```

## 5.5 Système bucco-vocal étendu

Les gestes de bouche, langue, souffle, beatbox, vocalisations et techniques hybrides ne doivent pas être réduits à une seule catégorie.

Ils peuvent relever de :

```text
voix ;
souffle ;
bouche ;
langue ;
attaque ;
formant ;
percussion corporelle ;
voix-sans-voix ;
corps-geste ;
corps-impact ;
corps-pulsation ;
corps-attente ;
trace ;
torsion.
```

Mais ils ne doivent pas déclencher automatiquement :

```text
banque vocale ;
source_need voix ;
asset ;
classification complète.
```

## 5.6 Automation située + réglage humain contextualisé

Le système distingue :

```text
ce qui peut être automatisé ;
ce qui doit rester réglé par Yohan ;
ce qui est hybride ;
ce qui doit être seulement suggéré ;
ce qui doit rester sous override ;
ce qui doit être verrouillé pour sécurité.
```

Automatisable :

```text
sécurité ;
coordination ;
release ;
guards ;
routing ;
masquage de contrôles inutiles ;
promotion de sorties ;
protection live.
```

À régler par Yohan :

```text
pression ;
retour au corps ;
densité ;
tension ;
retarder / résoudre / annuler ;
franchissement de limite ;
maintien au bord ;
override.
```

## 5.7 Router comme arbitre central

Le Router est désormais compris comme le module qui rend opérationnel le principe précédent.

Il décide :

```text
ce qui est visible ;
ce qui est masqué ;
ce qui est automatisé ;
ce qui reste réglable ;
ce qui est urgent ;
ce qui reste profond ;
ce qui est verrouillé ;
ce qui est overrideable.
```

## 5.8 Anti-doublons

Méthode retenue :

```text
ne pas créer un nouveau document pour chaque nuance ;
mettre à jour la source de vérité concernée ;
utiliser cette fiche 45 comme point de reprise ;
créer un nouveau document seulement si une nouvelle phase réelle commence.
```

Sources de vérité actuelles :

```text
40 : stratégie générale ;
41 : corps ;
42 : contrôle / automation / amplitude / limite / override ;
43 : harmonisation des contrôles ;
44 : audit cohérence recentrage ;
modules/18 : Router ;
assets/15 : données instrumentales non exhaustives ;
assets/16 : AcousticArchive ;
45 : reprise depuis fiche de mesures.
```

---

# 6. État actuel pour reprise

À ce point :

```text
AcousticArchive est intégré comme outil de connaissance, pas comme décideur ;
les mesures sont utiles mais non bloquantes ;
les données brutes de Yohan ne doivent pas être exhaustives ;
les fréquences approximatives peuvent suffire avec marge ;
le web peut fournir des repères prudents ;
les contrôles incluent automation située + réglage humain contextualisé ;
le Router est le module clé pour présenter les bons contrôles ;
aucun asset, sample, prototype ou nouveau source_need n’a été créé ;
aucun fichier n’a été supprimé.
```

---

# 7. Suite recommandée

Ne pas attendre passivement toutes les mesures.

Suite recommandée :

```text
1. continuer la conception du système ;
2. auditer la solidité réelle des objectifs musicaux / esthétiques ;
3. distinguer demande Yohan / analyse de style / transposition Vesperare / hypothèse ;
4. organiser les possibilités structurelles du système ;
5. intégrer les données instrumentales réelles seulement quand elles arrivent ;
6. éviter doublons et prolifération documentaire.
```

Deux chantiers possibles :

```text
AUDIT_OBJECTIFS_MUSICAUX_SOLIDITE_STYLES_TRANSPOSITION
CARTOGRAPHIE_STRUCTURELLE_SYSTEME_AUTOMATION_REGLAGE_ROUTER
```

À éviter :

```text
prototype ;
asset ;
source_need nouveau ;
seuil fictif ;
fiche instrumentale vide ;
classification exhaustive du jeu.
```
