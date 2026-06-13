# 10_SOUND_DESIGN_MIX_OUTILS_CONTRAINTES

Version : v0.2  
Statut : document transversal de contraintes différées, sans prototypage.

## Objet

Ce document rassemble trois familles d’éléments à intégrer plus tard dans l’architecture Vesperare, sans interrompre prématurément le développement actuel des modules :

```text
1. méthodes et sources de sound design ;
2. couche mix / master subtile, professionnelle et intégrée ;
3. moments de recherche d’outils pour ajuster le plan aux possibilités réelles.
```

Il intègre désormais les décisions récentes sur :

```text
instruments / sources candidates ;
samples et corpus ciblés ;
base d’assets ;
source_needs ;
engines ;
sélection manuelle / assistée / automatique contrainte.
```

Ce document ne remplace pas les modules existants. Il sert à éviter que l’architecture avance dans une direction qui rendrait ces éléments difficiles à intégrer ensuite.

---

# 1. Décision centrale : le sound design comme écologie d’objets, pas banque de sons

Les ressources fournies autour de BIOTA et de la synthèse procédurale de l’eau sont utiles parce qu’elles ne présentent pas seulement des recettes de sons. Elles invitent à penser :

```text
relations entre sons ;
écosystèmes ;
densité ;
occupation spectrale ;
distance ;
masquage ;
jour / nuit ;
interaction entre géophonie et biophonie ;
propagation acoustique ;
variations génératives ;
stacking ;
processus par couches.
```

Pour Vesperare, cela doit être traduit ainsi :

```text
sound design = organisation d’objets, de comportements, de relations et de milieux sonores.
```

Pas :

```text
sound design = collection de samples ou effets décoratifs.
```

---

# 2. Source reconnaissable vs phénomène transformé

Décision actuelle : conserver autant que possible une reconnaissance de la source, mais sans compromettre les fonctions musicales.

Un objet peut donc exister sur un continuum :

```text
source reconnaissable ;
source transformée ;
source partiellement abstraite ;
phénomène presque autonome ;
trace de source.
```

Exemple :

```text
gong reconnaissable
→ gong filtré
→ champ de partiels
→ masse métallique
→ halo / rugissement / résolution
```

La reconnaissance n’est pas obligatoire en permanence. Elle est évaluée au cas par cas.

Principe :

```text
préserver l’identité quand elle sert la musique ;
accepter l’abstraction quand elle sert mieux la fonction ;
utiliser les harmoniques, formants, transitoires ou queues pour garder une trace de source ;
permettre de retirer certaines bandes sans perdre toute identité.
```

Exemple possible :

```text
renforcer ou régénérer certains partiels pour qu’un instrument reste identifiable même si ses subs ou ses aigus sont filtrés.
```

---

# 3. Sources réelles, synthèse, instruments candidats et hybridation

Décision actuelle : aucune source ne doit être exclue par principe.

Le système doit pouvoir accueillir :

```text
prises réelles ;
samples ;
instruments live ;
synthèse naturalisée ;
resynthèse ;
granulation ;
convolution ;
résonateurs ;
modelage physique partiel ;
génération MIDI / procédurale ;
stacking ;
traitements live ;
hybridation réel / synthèse.
```

Mais il ne faut pas modéliser tous les instruments de manière exhaustive.

Principe :

```text
cas par cas ;
minimum viable ;
pratique avant exhaustivité ;
hybridation plutôt que modélisation complète ;
bibliothèques de samples seulement si elles servent un processus précis.
```

Nouvelle précision : avant de décider un sample ou un engine, on peut passer par une étape d’inventaire :

```text
fonction / esthétique / inspiration / intuition / lacune
→ instrument_source_candidate
→ affordances sonores
→ source_need
→ asset / pool / engine.
```

Cette étape permet d’accueillir les instruments ou sources proposés spontanément sans les forcer immédiatement dans un rôle fixe.

Exemples :

```text
shruti box / harmonium : candidat possible pour bourdon, souffle, halo harmonique, suspension ;
didgeridoo : live prioritaire, références possibles, renforts discrets ;
gongs / tambours sur cadre : quelques prises possibles, surtout si qualité réelle nécessaire ;
sources acoustiques ponctuelles : intégrables selon contexte, sans construire une bibliothèque infinie.
```

---

# 4. Corpus personnel Vesperare

Décision ancienne corrigée : ne pas construire une grande bibliothèque **par principe**.

Décision actuelle :

```text
pas de banque non justifiée ;
une banque ciblée peut devenir grande si les besoins réels l’exigent ;
la base doit commencer par les instruments / sources candidates et les besoins de source, pas par les fichiers audio.
```

Un corpus personnel peut être utile, voire nécessaire, si une nécessité apparaît.

## Corpus minimal possible

```text
quelques gongs ;
quelques tambours sur cadre ;
quelques frappes ou frottements métalliques ;
quelques voix / souffles / fragments ;
quelques textures de lieu ;
quelques résonances ;
quelques sources d’eau / pluie / matières naturelles si utiles ;
quelques prises de didgeridoo hors live si nécessaire ;
quelques instruments candidats proposés spontanément, s’ils trouvent des affordances claires.
```

## Rôle du corpus

Le corpus ne doit pas devenir une banque de sons figée. Il peut servir à :

```text
alimenter des processus d’hybridation ;
créer des traces reconnaissables ;
fournir des impulsions / grains / queues ;
servir de référence d’analyse ;
servir de source pour convolution, granulation ou resynthèse ;
fournir des objets tests pour Object Registry et Sound Engines ;
répondre à un source_need clairement identifié ;
préserver la qualité acoustique quand la génération live ne suit pas.
```

## Corpus ciblé potentiellement large

Un corpus ciblé peut devenir large si :

```text
la famille sonore porte plusieurs rôles centraux ;
la qualité acoustique réelle est très variable ;
le moteur temps réel est moins beau ou moins stable ;
les variations doivent rester sensibles mais contrôlées ;
la sélection assistée ou manuelle demande plusieurs options fortes ;
les assets doivent couvrir plusieurs registres, attaques, queues, partiels ou états.
```

Cela reste interdit si le corpus :

```text
remplit une banque sans rôle ;
favorise la collecte sans objectif ;
transforme la source naturelle en décor ;
fige le système trop tôt ;
remplace inutilement le live ;
empêche les trajectoires ou protections.
```

---

# 5. Méthodes issues des ressources Wildesign / BIOTA / eau

Les ressources fournies suggèrent plusieurs méthodes intégrables.

## Écologie sonore

```text
penser les sons comme relations ;
organiser biophonie / géophonie / anthropophonie si utile ;
penser les interactions entre matières plutôt que les sons isolés ;
organiser densité, distance, masquage, appels/réponses, alternance, comportement.
```

Dans Vesperare, les catégories biophonie / géophonie / anthropophonie ne doivent pas devenir des classes fixes. Elles peuvent devenir des facettes d’analyse ou de scène.

Exemple :

```text
un field recording peut être géophonie ;
une voix peut être anthropophonie, signal, texture ou instrument ;
un didgeridoo peut être corps, souffle, instrument live, drone, formants ;
une polytexture peut être percussive, biologique-imaginaire, mécanique ou rituelle selon contexte.
```

## Analyse avant synthèse

```text
waveform ;
spectre ;
spectrogramme ;
densité ;
timing ;
pitch ;
formants ;
transitoires ;
rapport signal / bruit ;
longueur de queues ;
répartition grave / médium / aigu.
```

Cette méthode renforce l’Object Registry et le protocole d’assets : un objet peut recevoir des données analysées, mais ces données ne doivent pas l’emporter sur les décisions déclarées du compositeur.

## Génératif / procédural

```text
note chance ;
velocity deviation ;
pitch randomization ;
LFO ;
random modulation ;
remap ;
MIDI echo ;
arpeggiator ;
processus par densité ;
feedback contrôlé.
```

Ces méthodes peuvent alimenter des Sound Engines, mais elles doivent rester traduites en fonctions musicales : densité, variation, micro-instabilité, vie, pulsation, texture, attente.

## Géophonie procédurale

```text
vent = bruit filtré + modulation ;
pluie = grains / gouttes / bruit ;
eau = micro-événements + couches fréquentielles + bruit ;
flux = densité de gouttes + turbulence ;
cascade = bruit dominant + énergie large bande ;
acoustique = distance + filtrage + réverbération + convolution.
```

Ces méthodes sont intéressantes pour Vesperare si elles servent :

```text
halo ;
texture ;
espace ;
pression ;
contrepoint naturel ;
post-résonance ;
masquage contrôlé ;
scènes de suspension ;
beautés autonomes ;
transitions.
```

Pas si elles deviennent un décor naturaliste plaqué.

---

# 6. Lien avec le protocole Source Needs / Asset Database

Le document `docs/modules/16_SOURCE_NEEDS_ASSET_DATABASE_PROTOCOL.md` devient la référence pour transformer ces contraintes en système concret de préparation.

Il doit recevoir ou produire :

```text
instrument_source_candidate ;
source_need ;
material_asset ;
material_pool ;
selection_policy ;
quality_evaluation.
```

La présente contrainte transversale dit **pourquoi** il faut penser samples, sources et outils avec prudence.

Le protocole `16` dit **comment** préparer les données.

---

# 7. Ce qui reste différé

Sont toujours différés :

```text
recherche de plugins ;
choix définitif de moteurs ;
construction audio massive ;
implémentation Max for Live ;
système de suggestion d’instruments en live ;
Output / Mix / Performance Layer.
```

La suggestion d’instruments en live est un sujet d’interface / Router futur. Elle pourra consulter l’inventaire d’instruments et sources, mais elle ne doit pas être confondue avec la préparation des assets.
