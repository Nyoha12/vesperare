# 02_SAMPLE_NEEDS_DISCOVERY_PROTOCOL

Version : v0.1  
Statut : protocole de décision hors-live, sans collecte audio, sans prototypage.

## Objet

Ce document formalise le processus à exécuter pour décider **quels genres de samples, prises, références audio ou corpus ciblés** doivent être préparés pour réaliser les ambitions de Vesperare.

Il répond à la question :

```text
De quels genres de samples avons-nous réellement besoin ?
```

Il ne répond pas à :

```text
quel instrument ou quelle configuration afficher au musicien pendant le live ?
quel contrôle proposer au performeur à un moment donné ?
quel sample déclencher automatiquement en performance ?
```

Ces questions relèvent d’un futur système d’interface / Router live. Elles sont volontairement exclues ici.

---

# 1. Différence avec les autres documents

## Instrument / Source Candidate Inventory

Question :

```text
Quels instruments, objets, lieux ou matières pourraient être intéressants ?
```

Exemples :

```text
gong ;
voix ;
tambour sur cadre ;
field recording ;
shruti box ;
eau ;
métal frotté.
```

## Source Need / Asset Database Protocol

Question :

```text
Comment transformer un besoin ou une candidate en asset, pool, métadonnées et politique de sélection ?
```

## Sample Needs Discovery Protocol

Question spécifique de ce document :

```text
Quels genres de samples faut-il constituer ou rechercher pour que les fonctions, esthétiques et ambitions du projet deviennent réalisables ?
```

Donc :

```text
un instrument candidat ne crée pas automatiquement un besoin de sample ;
un besoin de sample peut venir d’une fonction sans instrument encore choisi ;
un sample_need décrit un manque fonctionnel / esthétique / technique ;
un sample_need n’est pas encore un fichier audio.
```

---

# 2. Quand exécuter ce protocole

À exécuter :

```text
avant une session d’enregistrement ;
avant une recherche de sample pack ;
avant de constituer un corpus ;
avant de développer un Sound Engine coûteux ;
avant de décider qu’une source doit être live, samplée, générée ou hybride ;
après une nouvelle liste d’instruments proposée par Yohan ;
après l’identification d’une lacune sonore ;
après une nouvelle ambition esthétique ou fonctionnelle importante.
```

À ne pas exécuter pendant le live.

Ce protocole est un outil de préparation et de conception, pas un outil de performance.

---

# 3. Entrées du protocole

Le protocole reçoit :

```text
fonctions musicales visées ;
phénomènes sonores désirés ;
ambitions esthétiques ;
inspirations à intégrer ou déconstruire ;
instruments / sources candidates ;
lacunes perçues ;
contraintes de live ;
contraintes de qualité ;
contraintes de latence / CPU ;
contraintes de reconnaissance de source ;
risques stylistiques ;
risques de masque / fatigue / perte du corps.
```

Sources documentaires internes :

```text
05_CARTOGRAPHIE_STYLE_PERSONNEL_TECHNO ;
06_CARTOGRAPHIE_INFLUENCES_STYLE_VESPERARE ;
01_CAHIER_DES_PHENOMENES_SONORES ;
10_SOUND_DESIGN_MIX_OUTILS_CONTRAINTES ;
11_TIMBRE_MATERIAL_MAPPER ;
13_SOUND_ENGINES_INSTRUMENTS ;
16_SOURCE_NEEDS_ASSET_DATABASE_PROTOCOL ;
01_INSTRUMENT_SOURCE_CANDIDATES_INITIAL.
```

---

# 4. Définition : genre de sample

Dans ce protocole, “genre de sample” ne signifie pas style musical.

Cela signifie :

```text
famille fonctionnelle de matériau audio à préparer.
```

Un genre de sample est défini par :

```text
fonction ;
phénomène ;
rôle ;
type de source ;
qualité acoustique attendue ;
degré de reconnaissance ;
mode d’usage ;
mode de sélection futur ;
risques ;
quantité nécessaire.
```

Exemples :

```text
gongs de résolution ;
queues métalliques longues ;
impacts corporels courts ;
peaux graves ;
fragments vocaux signal ;
souffles vocaux matière ;
field recordings nocturnes exposables ;
grains de pluie secondaires ;
impulsions / résonances pour convolution ;
références de didgeridoo non substitutives ;
textures frottées graves ;
clochettes / micro-impacts brillants.
```

---

# 5. Processus de découverte en 9 étapes

## Étape 1 — Lister les fonctions à servir

Exemples :

```text
corps ;
impact ;
résolution ;
halo ;
pression ;
tension ;
polytexture ;
brillance ;
voix signal ;
beauté autonome ;
retour au corps ;
post-résonance ;
texture secondaire ;
transition ;
suspension.
```

## Étape 2 — Associer les phénomènes sonores

Exemples :

```text
impact-fondation ;
pression spectrale corporelle ;
brillance rythmique naturalisée ;
polytexture percussive raffinée ;
halo fonctionnel ;
torsion résonante ;
beauté autonome exposée ;
field recording / lieu ;
eau / pluie / flux ;
voix signal / matière.
```

## Étape 3 — Identifier ce qui exige du réel

Question :

```text
Cette fonction perd-elle quelque chose d’essentiel si elle est générée ou synthétisée ?
```

Critères indiquant un besoin probable de sample :

```text
complexité acoustique difficile à simuler ;
beauté de queue ou de partiels ;
source reconnaissable importante ;
présence humaine ou geste réel ;
imperfection sensible ;
latence / CPU d’un modèle trop coûteux ;
besoin d’un matériau très stable en live ;
qualité que la synthèse ne donne pas assez bien.
```

## Étape 4 — Identifier ce qui exige de la génération

Question :

```text
Cette fonction demande-t-elle une variation continue ou un comportement plutôt qu’un son fixé ?
```

Critères indiquant génération / procédural :

```text
variation de densité ;
microtiming ;
probabilité ;
flux continu ;
interaction avec scène ;
adaptation à un contrôle ;
comportement plutôt qu’objet identifiable.
```

## Étape 5 — Identifier ce qui exige du live

Question :

```text
Cette fonction doit-elle préserver une agency humaine immédiate ?
```

Critères indiquant live prioritaire :

```text
didgeridoo central ;
voix performée ;
geste instrumental exposé ;
réponse corporelle directe ;
variation expressive ;
fragilité humaine voulue.
```

## Étape 6 — Décider la stratégie de source

Options :

```text
sample prioritaire ;
live prioritaire ;
génération prioritaire ;
hybride sample + engine ;
hybride live + renfort ;
offline préparé ;
référence seulement ;
à différer.
```

## Étape 7 — Définir le genre de sample

Formule :

```text
fonction + phénomène + rôle + source + qualité + usage = genre de sample.
```

Exemple :

```text
résolution + halo métallique + masse centrale + gong réel + très haute qualité + sélection manuelle
= gongs de résolution centrale.
```

## Étape 8 — Définir la quantité minimale et idéale

Règle :

```text
minimum = assez pour tester une fonction sans figer le système ;
idéal = assez pour choisir sans transformer le projet en banque décorative.
```

Exemples :

```text
gongs de résolution : 3–8 très bons, pas 200 ;
fragments vocaux signal : peu, très choisis ;
grains de pluie secondaires : plus nombreux possibles si métadonnés ;
field recordings exposables : peu, très forts ;
micro-impacts de polytexture : quantité moyenne, mais par rôles clairs.
```

## Étape 9 — Décider le statut

Statuts possibles :

```text
à enregistrer ;
à chercher ;
à préparer offline ;
à générer ;
à jouer live ;
à garder comme référence ;
à différer ;
à refuser.
```

---

# 6. Table SAMPLE_NEED

Chaque genre de sample décidé par ce protocole doit produire une entrée `sample_need`.

## Champs obligatoires

```text
sample_need_id
sample_genre_name
function_links
phenomenon_links
role_links
source_family
candidate_links
source_strategy
centrality_level
quality_requirement
recognition_requirement
abstraction_allowed
minimum_count
ideal_count
selection_mode_recommendation
metadata_requirements
risk_profile
conflict_checks
pitch_checks
output_mix_checks
status
```

## Champs recommandés

```text
recording_needed
external_source_needed
commercial_pack_allowed
personal_recording_preferred
offline_preparation_needed
engine_alternative_possible
live_alternative_possible
reference_examples
notes
```

---

# 7. Grille de décision rapide

```text
Si fonction centrale + source réelle essentielle + génération faible → sample prioritaire.
Si fonction centrale + agency humaine essentielle → live prioritaire, sample seulement référence/secours.
Si fonction secondaire + variation continue → procédural ou hybride.
Si beauté acoustique rare + rôle exposé → petit corpus très qualitatif.
Si usage décoratif ou flou → refuser ou différer.
Si moteur temps réel trop coûteux mais fonction nécessaire → sample/offline.
Si source très reconnaissable mais risquée stylistiquement → manuel ou assisté, pas automatique.
Si matériau interchangeable → pool secondaire possible.
```

---

# 8. Premiers genres de samples probables

## A. Gongs / métaux résonants de résolution

```text
fonctions: impact, résolution, halo, tension, beauté autonome
stratégie: samples haute qualité + traitements / renforts
minimum: 3–8 prises fortes
mode: manuel / assisté
risques: queue, bas-médium, sub masking, gong décoratif
statut: très probable
```

## B. Queues métalliques / résonances longues

```text
fonctions: halo, post-résonance, suspension, transition
stratégie: samples / offline / convolution / résonateurs
minimum: petit corpus par type de queue
mode: manuel / assisté ; automatique seulement pour couches secondaires
risques: ambientisation, perte du corps, masque
statut: probable
```

## C. Impacts corporels acoustiques

```text
fonctions: corps, impact, retour au corps, accent
sources: peaux, tambours sur cadre, objets graves, métaux courts
stratégie: samples ciblés + hybridation sub éventuelle
minimum: petit corpus par registre / attaque
mode: manuel / assisté pour rôle central ; auto contrainte pour micro-variantes
risques: cliché rituel, bas-médium, perte techno
statut: très probable
```

## D. Voix signal / fragments vocaux

```text
fonctions: signal, rupture, présence, tension, hook non chanson
stratégie: live + fragments ciblés
minimum: peu, très choisis
mode: manuel / assisté uniquement
risques: chanson involontaire, gimmick, sémantique non contrôlée
statut: très probable
```

## E. Voix matière / souffles / phonèmes

```text
fonctions: matière, halo humain, texture, transition
stratégie: samples courts + traitements / granulation
minimum: corpus réduit mais varié
mode: assisté ; auto contrainte possible si non sémantique
risques: formants masqués, pathos, texture décorative
statut: probable
```

## F. Références de didgeridoo

```text
fonctions: analyse, secours, texture, comparaison, renfort discret
stratégie: live prioritaire ; samples comme référence ou matière secondaire
minimum: quelques prises représentatives
mode: manuel / référence
risques: remplacer le live, figer l’agency
statut: utile mais non substitutif
```

## G. Field recordings nocturnes / lieux exposables

```text
fonctions: espace, mémoire, profondeur, beauté autonome, suspension
stratégie: samples ciblés, très sélectionnés
minimum: peu de lieux, très forts
mode: manuel / assisté
risques: paysage sonore plaqué, ambientisation, documentaire
statut: probable
```

## H. Eau / pluie / gouttes / flux secondaires

```text
fonctions: microtexture, halo, densité, post-résonance, transition
stratégie: hybride samples + procédural
minimum: corpus moyen si usage secondaire varié
mode: automatique contrainte possible uniquement en rôles secondaires
risques: décor naturaliste, masque, banque énorme
statut: probable mais secondaire
```

## I. Micro-impacts brillants / clochettes / cymbalettes

```text
fonctions: brillance rythmique, accent, microvariation, hi-hat naturalisé
stratégie: samples courts + génération de placement
minimum: corpus moyen par registre / attaque
mode: assisté ou automatique contrainte selon rôle
risques: aigus fatigants, exotisme, ornement gratuit
statut: probable
```

## J. Textures frottées / raclées / matières rugueuses

```text
fonctions: tension, friction, rugissement, transition, pression
stratégie: samples + traitement / hybridation
minimum: petit corpus par densité / registre
mode: manuel / assisté
risques: agressivité inutile, cliché industriel, fatigue
statut: à évaluer
```

---

# 9. Ce que ce protocole doit empêcher

```text
chercher des samples parce qu’un instrument est joli ;
enregistrer une grande quantité sans rôle ;
faire une banque avant d’avoir les fonctions ;
confondre instrument candidat et sample nécessaire ;
confondre sample need et sélection live ;
refuser les samples alors qu’ils sont nécessaires ;
forcer la génération alors qu’elle sonne moins bien ;
ignorer la qualité acoustique réelle ;
remplacer un live input prioritaire par confort ;
constituer un corpus impossible à taguer ou à protéger.
```

---

# 10. Sorties du protocole

Après exécution, le protocole doit produire :

```text
liste de sample_needs ;
priorité de chaque sample_need ;
quantité minimale / idéale ;
stratégie : enregistrer / chercher / générer / live / hybride / différer ;
liens vers instruments_source_candidates ;
liens vers source_needs à créer ;
champs de métadonnées obligatoires ;
risques ;
statuts.
```

Ces sorties alimentent ensuite :

```text
16_SOURCE_NEEDS_ASSET_DATABASE_PROTOCOL ;
MATERIAL_ASSET ;
MATERIAL_POOL ;
Timbre & Material Mapper ;
Sound Engines ;
Object Registry.
```

---

# 11. Prochaine étape

Exécuter ce protocole une première fois sur les familles déjà très probables :

```text
gongs / métaux résonants ;
voix signal / voix matière ;
didgeridoo référence ;
sub / impacts corporels ;
field recordings ;
eau / pluie ;
polytexture micro-impacts ;
textures frottées / raclées.
```

Cette exécution doit produire une première table `SAMPLE_NEEDS_INITIAL`, avant de créer ou remplir les fiches `source_need` définitives.
