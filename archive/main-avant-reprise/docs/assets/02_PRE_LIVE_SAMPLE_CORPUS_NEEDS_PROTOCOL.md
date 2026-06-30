# 02_PRE_LIVE_SAMPLE_CORPUS_NEEDS_PROTOCOL

Version : v0.2  
Statut : protocole de décision hors-live, sans collecte audio immédiate, sans prototypage.

## Objet

Ce document formalise le processus à exécuter pour décider **quels genres de samples et quels samples concrets doivent être constitués avant le live** pour réaliser les ambitions de Vesperare.

Il prend en compte :

```text
1. les besoins musicaux et sonores du projet ;
2. les fonctions / phénomènes / rôles attendus ;
3. les instruments, sources et assets déjà disponibles ;
4. ce que la génération, la synthèse ou la simulation instrumentale peuvent réellement faire ;
5. ce qu’elles ne peuvent pas faire avec assez de beauté, stabilité, détail ou latence ;
6. la quantité minimale et idéale de samples à préparer ;
7. les samples à enregistrer, chercher, préparer offline, garder comme référence, différer ou refuser.
```

Question exacte :

```text
Quels genres de samples et quels samples concrets faut-il constituer avant le live,
en fonction des besoins musicaux, de l’existant, et des limites des engines / génération / simulation instrumentale ?
```

Ce document ne décide pas :

```text
quelle configuration afficher au musicien pendant le live ;
quel contrôle proposer au performeur à un moment donné ;
quel instrument suggérer dans l’interface live ;
quel sample déclencher automatiquement en performance.
```

Ces sujets relèvent d’un futur système d’interface / Router live. Ils sont hors périmètre ici.

---

# 1. Périmètre précis

Ce protocole est un **audit de préparation pré-live**.

Il sert à décider :

```text
quels types de samples sont nécessaires ;
quels samples concrets devraient être créés ou réunis ;
quels corpus doivent exister avant une performance ;
quels samples sont seulement utiles comme référence ;
quels samples sont inutiles ou dangereux ;
quels besoins peuvent être couverts par génération / synthèse ;
quels besoins ne peuvent pas être couverts correctement par génération / synthèse ;
quels besoins demandent live plutôt que sample ;
quels besoins demandent hybride.
```

Il ne produit pas encore les fichiers audio. Il produit une **liste argumentée de besoins de samples pré-live**.

---

# 2. Différence avec les autres documents

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
Comment transformer un besoin ou une candidate en source_need, asset, pool, métadonnées et politique de sélection ?
```

## Pre-Live Sample Corpus Needs Protocol

Question spécifique de ce document :

```text
Quels genres de samples et quels samples concrets faut-il constituer avant le live,
compte tenu des fonctions, de l’existant et des limites réelles de la génération / simulation instrumentale ?
```

Donc :

```text
un instrument candidat ne crée pas automatiquement un besoin de sample ;
un besoin de sample peut venir d’une fonction sans instrument encore choisi ;
un sample_need décrit un manque fonctionnel / esthétique / technique ;
un sample_need peut ensuite devenir un sample concret à enregistrer, chercher ou préparer ;
la génération doit être évaluée comme alternative réelle, pas comme idéal abstrait.
```

---

# 3. Quand exécuter ce protocole

À exécuter :

```text
avant une session d’enregistrement ;
avant une recherche de sample pack ;
avant de constituer un corpus ;
avant de développer un Sound Engine coûteux ;
avant de décider qu’une source doit être live, samplée, générée ou hybride ;
après une nouvelle liste d’instruments proposée par Yohan ;
après l’identification d’une lacune sonore ;
après une nouvelle ambition esthétique ou fonctionnelle importante ;
après une évaluation des limites d’un moteur génératif / synthétique.
```

À ne pas exécuter pendant le live.

Ce protocole est un outil de préparation et de conception, pas un outil de performance.

---

# 4. Entrées du protocole

Le protocole reçoit :

```text
fonctions musicales visées ;
phénomènes sonores désirés ;
ambitions esthétiques ;
inspirations à intégrer ou déconstruire ;
instruments / sources candidates ;
assets déjà disponibles ;
samples déjà disponibles ;
prises live possibles ;
engines déjà possibles ;
limites connues des engines ;
qualité de génération estimée ;
latence / CPU estimés ;
lacunes perçues ;
contraintes de qualité ;
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

# 5. Inventaire de l’existant avant décision

Avant de déclarer un nouveau besoin de samples, on doit savoir ce qui existe déjà.

## Champs d’inventaire existant

```text
existing_asset_id
source_name
asset_type
quality_status
roles_already_supported
functions_already_supported
phenomena_already_supported
usable_live
usable_offline
metadata_complete
known_risks
missing_information
status
```

## Questions

```text
Avons-nous déjà des samples qui couvrent ce besoin ?
Sont-ils assez beaux ?
Sont-ils assez contrôlables ?
Sont-ils correctement métadonnés ?
Peuvent-ils être utilisés live sans risque ?
Sont-ils trop identifiables, trop faibles, trop décoratifs ?
Manque-t-il seulement des métadonnées ou faut-il réellement de nouveaux samples ?
```

Décision :

```text
ne pas créer un nouveau besoin de corpus si l’existant peut être qualifié, tagué ou transformé correctement.
```

---

# 6. Définition : genre de sample pré-live

Dans ce protocole, “genre de sample” signifie :

```text
famille fonctionnelle de matériau audio à constituer avant le live.
```

Un genre de sample est défini par :

```text
fonction ;
phénomène ;
rôle ;
type de source ;
qualité acoustique attendue ;
degré de reconnaissance ;
usage pré-live / live / offline ;
mode de sélection futur ;
risques ;
quantité minimale ;
quantité idéale ;
possibilité ou impossibilité de génération équivalente.
```

Exemples :

```text
gongs de résolution centrale ;
queues métalliques longues pour post-résonance ;
impacts corporels courts ;
peaux graves pour retour au corps ;
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

# 7. Processus de décision en 11 étapes

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

## Étape 3 — Examiner l’existant

Question :

```text
Avons-nous déjà quelque chose qui couvre partiellement ou totalement ce besoin ?
```

Sorties possibles :

```text
existant suffisant ;
existant suffisant après tag / nettoyage / édition ;
existant utile seulement comme référence ;
existant insuffisant ;
aucun existant.
```

## Étape 4 — Évaluer la génération / simulation instrumentale

Question :

```text
Un engine, une synthèse, une resynthèse, une modélisation ou un processus génératif peut-il produire ce matériau avec une qualité suffisante avant ou pendant le live ?
```

Critères :

```text
beauté du résultat ;
détail acoustique ;
stabilité ;
latence ;
CPU ;
contrôlabilité ;
capacité à préserver la source ;
capacité à varier ;
capacité à être protégé par Conflict Manager ;
capacité à être jouable par Router ;
compatibilité avec Output / Mix futur.
```

Réponses possibles :

```text
génération suffisante ;
génération suffisante mais moins belle ;
génération utile seulement comme renfort ;
génération utile seulement pour variation / placement ;
génération trop coûteuse ;
génération trop pauvre ;
génération non pertinente.
```

## Étape 5 — Identifier ce qui exige du réel

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

## Étape 6 — Identifier ce qui exige de la génération

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

## Étape 7 — Identifier ce qui exige du live

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

## Étape 8 — Décider la stratégie de source

Options :

```text
sample prioritaire ;
sample concret à constituer ;
corpus ciblé à constituer ;
live prioritaire ;
génération prioritaire ;
hybride sample + engine ;
hybride live + renfort ;
offline préparé ;
référence seulement ;
existant à qualifier ;
à différer ;
à refuser.
```

## Étape 9 — Définir le genre de sample

Formule :

```text
fonction + phénomène + rôle + source + qualité + usage + génération_possible? = genre de sample.
```

Exemple :

```text
résolution + halo métallique + masse centrale + gong réel + très haute qualité + sélection manuelle + génération insuffisante
= gongs de résolution centrale à constituer avant le live.
```

## Étape 10 — Définir les samples concrets à constituer

Pour chaque genre validé, décider :

```text
combien de samples minimaux ;
combien de samples idéaux ;
quels registres ;
quelles attaques ;
quelles queues ;
quelles intensités ;
quelles variantes ;
quelles métadonnées obligatoires ;
quels formats ;
quels traitements offline nécessaires ;
quels samples sont centraux ;
quels samples sont secondaires ;
quels samples sont référence seulement.
```

## Étape 11 — Décider le statut

Statuts possibles :

```text
à enregistrer ;
à chercher ;
à préparer offline ;
à générer ;
à jouer live ;
à garder comme référence ;
à qualifier depuis existant ;
à différer ;
à refuser.
```

---

# 8. Table SAMPLE_NEED

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
existing_assets_checked
generation_assessment
source_strategy
centrality_level
quality_requirement
recognition_requirement
abstraction_allowed
minimum_count
ideal_count
concrete_samples_to_constitute
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
engine_alternative_limits
live_alternative_possible
reference_examples
notes
```

---

# 9. Table SAMPLE_TO_CONSTITUTE

Quand un sample_need est validé, il peut produire des entrées concrètes.

## Champs obligatoires

```text
sample_to_constitute_id
sample_need_id
intended_source
intended_role
central_or_secondary
recording_or_search
minimum_quality
required_variations
required_metadata
expected_processing
selection_mode_allowed
status
```

## Exemple

```text
sample_to_constitute_id: gong_res_central_dark_long_01
sample_need_id: sample_need_gongs_resolution_central
intended_source: grand gong sombre
intended_role: masse de résolution centrale
central_or_secondary: central
recording_or_search: enregistrer ou obtenir prise haute qualité
minimum_quality: très haute
required_variations: [attaque forte, queue longue, partiels riches]
required_metadata: [tail_profile, partial_profile, pitch_center_if_any, mid_load_risk]
expected_processing: [tail control, EQ bas-médium, renfort spectral possible]
selection_mode_allowed: manuel / assisté
status: à constituer
```

---

# 10. Grille de décision rapide

```text
Si fonction centrale + source réelle essentielle + génération faible → sample prioritaire.
Si fonction centrale + agency humaine essentielle → live prioritaire, sample seulement référence/secours.
Si fonction secondaire + variation continue → procédural ou hybride.
Si beauté acoustique rare + rôle exposé → petit corpus très qualitatif.
Si l’existant suffit après qualification → ne pas constituer nouveau corpus.
Si usage décoratif ou flou → refuser ou différer.
Si moteur temps réel trop coûteux mais fonction nécessaire → sample/offline.
Si source très reconnaissable mais risquée stylistiquement → manuel ou assisté, pas automatique.
Si matériau interchangeable → pool secondaire possible.
```

---

# 11. Premiers genres de samples probables à auditer

## A. Gongs / métaux résonants de résolution

```text
fonctions: impact, résolution, halo, tension, beauté autonome
existant à vérifier: aucun / à renseigner
génération: insuffisante pour réalisme complet ; possible comme renfort
stratégie: samples haute qualité + traitements / renforts
minimum: 3–8 prises fortes
samples concrets: gongs sombres longs, gongs plus courts, queues riches, attaques fortes
mode: manuel / assisté
risques: queue, bas-médium, sub masking, gong décoratif
statut: très probable
```

## B. Queues métalliques / résonances longues

```text
fonctions: halo, post-résonance, suspension, transition
existant à vérifier: gongs/bols/cloches disponibles ?
génération: possible via résonateurs, mais samples utiles pour richesse réelle
stratégie: samples / offline / convolution / résonateurs
minimum: petit corpus par type de queue
samples concrets: queues isolées, résonances longues, impacts coupés, impulses
mode: manuel / assisté ; automatique seulement pour couches secondaires
risques: ambientisation, perte du corps, masque
statut: probable
```

## C. Impacts corporels acoustiques

```text
fonctions: corps, impact, retour au corps, accent
sources: peaux, tambours sur cadre, objets graves, métaux courts
existant à vérifier: prises disponibles ? objets à enregistrer ?
génération: possible pour sub/renfort, faible pour peau réaliste
stratégie: samples ciblés + hybridation sub éventuelle
minimum: petit corpus par registre / attaque
samples concrets: frappes graves courtes, frappes larges, peaux amorties, objets graves secs
mode: manuel / assisté pour rôle central ; auto contrainte pour micro-variantes
risques: cliché rituel, bas-médium, perte techno
statut: très probable
```

## D. Voix signal / fragments vocaux

```text
fonctions: signal, rupture, présence, tension, hook non chanson
existant à vérifier: fragments de voix disponibles ? textes ? prises ?
génération: insuffisante pour présence humaine ; utile seulement traitement/formant
stratégie: live + fragments ciblés
minimum: peu, très choisis
samples concrets: mots courts, souffles d’attaque, cris courts, phonèmes, fragments parlés non chanson
mode: manuel / assisté uniquement
risques: chanson involontaire, gimmick, sémantique non contrôlée
statut: très probable
```

## E. Voix matière / souffles / phonèmes

```text
fonctions: matière, halo humain, texture, transition
existant à vérifier: prises vocales non sémantiques
génération: possible pour formants synthétiques, moins bonne pour grain humain
stratégie: samples courts + traitements / granulation
minimum: corpus réduit mais varié
samples concrets: souffles, consonnes, voyelles tenues, attaques, fragments sans phrase
mode: assisté ; auto contrainte possible si non sémantique
risques: formants masqués, pathos, texture décorative
statut: probable
```

## F. Références de didgeridoo

```text
fonctions: analyse, secours, texture, comparaison, renfort discret
existant à vérifier: prises personnelles / live records
génération: insuffisante comme remplacement ; possible pour renfort/formants
stratégie: live prioritaire ; samples comme référence ou matière secondaire
minimum: quelques prises représentatives
samples concrets: notes graves, attaques de souffle, variations formantiques, textures de souffle
mode: manuel / référence
risques: remplacer le live, figer l’agency
statut: utile mais non substitutif
```

## G. Field recordings nocturnes / lieux exposables

```text
fonctions: espace, mémoire, profondeur, beauté autonome, suspension
existant à vérifier: lieux déjà enregistrés ?
génération: faible pour identité ; possible pour espace abstrait
stratégie: samples ciblés, très sélectionnés
minimum: peu de lieux, très forts
samples concrets: lieux nocturnes calmes, espaces résonants, ambiances avec profondeur, traces humaines discrètes
mode: manuel / assisté
risques: paysage sonore plaqué, ambientisation, documentaire
statut: probable
```

## H. Eau / pluie / gouttes / flux secondaires

```text
fonctions: microtexture, halo, densité, post-résonance, transition
existant à vérifier: captures ou bibliothèques propres ?
génération: forte pour densité/flux, samples utiles pour singularité réelle
stratégie: hybride samples + procédural
minimum: corpus moyen si usage secondaire varié
samples concrets: gouttes isolées, pluies fines, ruissellements courts, flux texturaux, grains humides
mode: automatique contrainte possible uniquement en rôles secondaires
risques: décor naturaliste, masque, banque énorme
statut: probable mais secondaire
```

## I. Micro-impacts brillants / clochettes / cymbalettes

```text
fonctions: brillance rythmique, accent, microvariation, hi-hat naturalisé
existant à vérifier: petites percussions / objets métalliques disponibles ?
génération: possible pour placement, moins bonne pour timbre réel riche
stratégie: samples courts + génération de placement
minimum: corpus moyen par registre / attaque
samples concrets: clochettes courtes, cymbalettes, petits métaux, attaques sèches, frottements courts
mode: assisté ou automatique contrainte selon rôle
risques: aigus fatigants, exotisme, ornement gratuit
statut: probable
```

## J. Textures frottées / raclées / matières rugueuses

```text
fonctions: tension, friction, rugissement, transition, pression
existant à vérifier: objets métalliques / bois / surfaces disponibles ?
génération: possible pour bruit contrôlé, moins bonne pour geste réel détaillé
stratégie: samples + traitement / hybridation
minimum: petit corpus par densité / registre
samples concrets: frottements longs, raclages courts, grincements graves, matières rugueuses, attaques irrégulières
mode: manuel / assisté
risques: agressivité inutile, cliché industriel, fatigue
statut: à évaluer
```

---

# 12. Ce que ce protocole doit empêcher

```text
chercher des samples parce qu’un instrument est joli ;
enregistrer une grande quantité sans rôle ;
faire une banque avant d’avoir les fonctions ;
confondre instrument candidat et sample nécessaire ;
confondre sample need et sélection live ;
refuser les samples alors qu’ils sont nécessaires ;
forcer la génération alors qu’elle sonne moins bien ;
ignorer la qualité acoustique réelle ;
ignorer les samples déjà disponibles ;
remplacer un live input prioritaire par confort ;
constituer un corpus impossible à taguer ou à protéger.
```

---

# 13. Sorties du protocole

Après exécution, le protocole doit produire :

```text
liste de sample_needs ;
liste de sample_to_constitute ;
priorité de chaque sample_need ;
quantité minimale / idéale ;
stratégie : enregistrer / chercher / générer / live / hybride / différer ;
liens vers instruments_source_candidates ;
liens vers source_needs à créer ;
champs de métadonnées obligatoires ;
risques ;
statuts ;
justification génération insuffisante / suffisante / complémentaire ;
justification existant suffisant / insuffisant.
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

# 14. Prochaine étape

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

Cette exécution doit produire une première table :

```text
SAMPLE_NEEDS_INITIAL
```

avant de créer ou remplir les fiches `source_need` définitives.
