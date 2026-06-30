# 03_SCHEMA_EXTRACTION_INTEGRATION

Version : v0.1  
Statut : schéma pratique d'extraction et d'intégration des recherches spécialisées. Pas une source esthétique, pas une spec, pas une nouvelle méthode concurrente.

## Objet

Ce fichier décrit comment utiliser les notes de `docs/recherches_specialisees/` sans créer de doublons ni importer des idées externes en bloc.

Il sert à transformer :

```text
source externe → extrait utile → notion Vesperare → document interne cible → décision éventuelle
```

---

# 1. Principe central

Une recherche externe ne doit jamais devenir directement une règle Vesperare.

Elle doit passer par une chaîne d'extraction :

```text
source externe
→ fait / description / vocabulaire
→ idée musicale extraite
→ notion Vesperare concernée
→ phénomène sonore concerné
→ risque ou précision utile
→ document interne cible
→ statut d'intégration
```

---

# 2. Fiche d'extraction minimale

Pour chaque source externe, produire si besoin :

```text
source_id :
titre :
url :
type : encyclopédie / article critique / article académique / entretien / documentation technique
fiabilité : faible / moyenne / forte / à recouper
statut : À EXTRAIRE / EXTRAIT / À COMPARER / INTÉGRABLE / À DÉCLASSER / À RECHERCHER PLUS
notions Vesperare concernées :
phénomènes concernés :
fonctions musicales concernées :
risques éclairés :
ce que la source ne doit PAS faire :
document interne cible :
question éventuelle à Yohan :
```

---

# 3. Distinction obligatoire

Chaque extraction doit distinguer :

```text
fait historique ;
description musicale ;
interprétation critique ;
terme de vocabulaire ;
hypothèse pour Vesperare ;
risque de caricature ;
question ouverte.
```

Exemple :

```text
fait historique : le dubstep vient en partie de UK garage / 2-step.
description musicale : sub-bass proéminent, syncopes, drop possible mais non obligatoire.
interprétation Vesperare : utile pour tension syncopée, attente, sub comme espace, résolution rare.
risque : importer le drop comme recette.
```

---

# 4. Statuts d'intégration

## À EXTRAIRE

La source est repérée mais non encore analysée.

## EXTRAIT

Une idée a été résumée, mais pas encore reliée précisément à un document interne.

## À COMPARER

La source semble utile mais doit être comparée à un document Vesperare avant intégration.

## INTÉGRABLE

La source précise une notion ou un risque déjà présent, sans créer de doublon.

## À DÉCLASSER

La source est intéressante mais ne doit pas entrer dans Vesperare.

## À RECHERCHER PLUS

La piste est prometteuse mais trop faible ou trop générale.

---

# 5. Documents internes cibles possibles

## Socle techno

```text
docs/05_CARTOGRAPHIE_STYLE_PERSONNEL_TECHNO.md
```

Pour :

```text
corps techno ;
impact ;
pression ;
rôles de la répétition ;
intensité ;
hypnose ;
contour ;
non-décor ;
naturalisation des fonctions techno.
```

## Phénomènes

```text
docs/01_CAHIER_DES_PHENOMENES_SONORES.md
```

Pour :

```text
phénomènes perceptibles ;
variables sensibles ;
formes de tension ;
risques ;
trajectoires phénoménales ;
relations entre corps, spectre, espace, rythme, matière.
```

## Influences

```text
docs/06_CARTOGRAPHIE_INFLUENCES_STYLE_VESPERARE.md
```

Pour :

```text
dubstep ;
jazz ;
trance ;
acid ;
polytexture ;
apports extérieurs ;
éléments retenus ;
éléments refusés ;
risques de reconnaissance stylistique trop forte.
```

## Pitch / harmoniques / microtonalité

```text
docs/07_PITCH_HARMONIQUES_MICROTONALITE.md
```

Pour :

```text
partiels ;
battements ;
formants ;
champs harmoniques ;
voicings distribués ;
tensions microtonales ;
relations sub / didgeridoo / guimbardes / gong / voix.
```

## Performance / scènes / trajectoires

```text
docs/08_PERFORMANCE_SCENES_TRAJECTOIRES_OBJETS.md
docs/23_SCENES_COMME_CHAMPS_OUVERTS_DE_PERFORMANCE.md
docs/24_SCENES_PIVOTS_CHAMPS_OUVERTS_PREMIERE_SERIE.md
```

Pour :

```text
scènes ;
champs ouverts ;
objets ;
rôles ;
trajectoires ;
bifurcations ;
sorties ;
source live ;
fonctions de scène.
```

## Contrôles / Router / protections

```text
docs/42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md
docs/modules/18_CONTEXTUAL_CONTROL_ROUTER_AMPLITUDES_LIMITES_OVERRIDE_ADDENDUM.md
docs/modules/07_CONFLICT_PROTECTION_MANAGER.md
```

Pour :

```text
contrôle contextuel ;
automation située ;
priorité ;
masquage / promotion ;
guards ;
zone de bord ;
warning ;
visibilité ;
override ;
sortie.
```

---

# 6. Catégories d'extraction par besoin Vesperare

## 6.1 Besoin : réancrer une notion musicale

Extraire :

```text
origine stylistique ;
rôle musical ;
phénomène perceptible ;
subtilité perdue ;
risque de caricature ;
ce que Vesperare peut en retenir sans importer le style.
```

## 6.2 Besoin : concevoir un contrôle

Extraire :

```text
relation contrôle → fonction ;
charge cognitive ;
risque de mauvais mapping ;
contrôle musical plutôt que paramètre technique ;
conditions d'affichage ;
conséquence visible.
```

## 6.3 Besoin : concevoir une scène

Extraire :

```text
fonction centrale ;
ouvertures ;
interdits ;
sorties ;
source live ;
priorité de contrôle ;
risques de dilution ;
transition ou bifurcation.
```

## 6.4 Besoin : valoriser un instrument live

Extraire :

```text
rôle possible ;
ce que la source porte mieux que le système ;
ce que le système peut soutenir ;
ce que le système doit éviter de masquer ;
relation à la scène ;
relation à la sortie.
```

## 6.5 Besoin : éviter une caricature stylistique

Extraire :

```text
ce que le style n'est pas ;
éléments mal compris ;
version clichée ;
fonction plus profonde ;
conditions de transposition Vesperare.
```

---

# 7. Exemple d'extraction complète

## Source

```text
Titre : Dubstep
URL : https://en.wikipedia.org/wiki/Dubstep
Type : synthèse encyclopédique
Fiabilité : moyenne, utile pour cadrage général
Statut : À COMPARER
```

## Extraction

```text
Fait : dubstep issu d'expérimentations UK garage / 2-step.
Description : rythmes syncopés, tempo 132–142, sub-bass proéminent, drop possible mais non obligatoire.
Notions Vesperare : tension syncopée, pré-drop, sub comme espace, résolution rare.
Risque : importer drop spectaculaire ou wobble cliché.
Document cible : docs/06 + docs/01 + docs/23.
Statut final : intégrable uniquement comme contexte de tension / attente / sub / sortie.
```

---

# 8. Exemple d'intégration refusée

## Source externe

Une source décrit la TB-303 comme centre du son acid.

## Mauvaise intégration

```text
Vesperare doit imiter une TB-303.
```

## Bonne extraction

```text
Acid = torsion timbrale + ligne vivante + résonance + accent + slide.
```

## Transposition possible

```text
formants voix ;
résonances didgeridoo ;
partiels guimbarde ;
gong filtré ;
microtonalité ;
ligne de tension non tempérée.
```

## Document cible

```text
docs/06
docs/07
docs/01
```

---

# 9. Exemple d'intégration partielle

## Source externe

Natural mapping.

## Mauvaise intégration

```text
l'interface doit être intuitive au sens général.
```

## Bonne extraction

```text
un contrôle doit rendre lisible la relation entre geste, fonction musicale, risque et sortie.
```

## Transposition Vesperare

```text
un bouton ne doit pas exposer seulement Density ou Amount ;
il doit donner accès à une fonction musicale contextuelle comme retour au corps, retenue, retrait, pression, live priority.
```

## Document cible

```text
docs/42
docs/modules/18
docs/22
```

---

# 10. Règle finale

Une recherche externe est intégrable seulement si elle répond au moins à une des fonctions suivantes :

```text
rendre une notion musicale plus solide ;
éviter une caricature ;
préciser une scène ;
préciser un rôle d'instrument ;
préciser un risque ;
préciser un contrôle ;
préciser une sortie ;
formuler une question ciblée à Yohan.
```

Sinon elle reste dans ce dossier comme contexte, mais ne doit pas entrer dans les documents source.
