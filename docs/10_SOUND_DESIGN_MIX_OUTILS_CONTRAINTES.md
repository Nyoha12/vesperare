# 10_SOUND_DESIGN_MIX_OUTILS_CONTRAINTES

Version : v0.1  
Statut : document transversal de contraintes différées, sans prototypage.

## Objet

Ce document rassemble trois familles d’éléments à intégrer plus tard dans l’architecture Vesperare, sans interrompre prématurément le développement actuel des modules :

```text
1. méthodes et sources de sound design ;
2. couche mix / master subtile, professionnelle et intégrée ;
3. moments de recherche d’outils pour ajuster le plan aux possibilités réelles.
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

# 3. Sources réelles, synthèse et hybridation

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

Exemples :

```text
shruti box : probablement gérable par samples si nécessaire ;
didgeridoo : toujours présent en live ;
gongs / tambours sur cadre : quelques prises possibles, mais pas toujours disponibles en live ;
sources acoustiques ponctuelles : intégrables selon contexte, sans construire une bibliothèque infinie.
```

---

# 4. Corpus personnel Vesperare

Décision actuelle : ne pas construire une grande bibliothèque par principe.

Un corpus personnel peut être utile, mais seulement si une nécessité apparaît.

## Corpus minimal possible

```text
quelques gongs ;
quelques tambours sur cadre ;
quelques frappes ou frottements métalliques ;
quelques voix / souffles / fragments ;
quelques textures de lieu ;
quelques résonances ;
quelques sources d’eau / pluie / matières naturelles si utiles ;
quelques prises de didgeridoo hors live si nécessaire.
```

## Rôle du corpus

Le corpus ne doit pas devenir une banque de sons figée. Il peut servir à :

```text
alimenter des processus d’hybridation ;
créer des traces reconnaissables ;
fournir des impulsions / grains / queues ;
servir de référence d’analyse ;
servir de source pour convolution, granulation ou resynthèse ;
fournir des objets tests pour Object Registry et Sound Engines.
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

Cette méthode renforce l’Object Registry : un objet peut recevoir des données analysées, mais ces données ne doivent pas l’emporter sur les décisions déclarées du compositeur.

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

## Stacking / couches différenciées

```text
copies décalées ;
pitch shifts subtils ;
variations de traitement ;
empilement contrôlé ;
gain compensé ;
densification sans CPU excessif.
```

Méthode potentiellement utile pour :

```text
halo dense ;
polytexture naturelle ;
flux aqueux ;
biophonie de fond ;
queues résonantes ;
spatialisation de masses ;
préparation offline de matériaux légers pour le live.
```

---

# 6. Relation au live

Décision actuelle : le didgeridoo est un objet live stable du projet.

D’autres instruments peuvent être ajoutés ponctuellement : gongs, tambours sur cadre, voix, objets acoustiques, etc.

Principe :

```text
le système doit pouvoir accueillir un instrument live sans le réduire à un rôle fixe ;
le live doit garder une priorité humaine ;
l’analyse doit proposer, pas imposer ;
la présence live peut influencer scènes, trajectoires, mix, espace et protections ;
les instruments live peuvent être absents selon les situations, sauf didgeridoo prévu comme central.
```

Conséquence technique future : Live Object Interpreter, Object Registry, Conductor et Control Router devront gérer :

```text
instrument présent / absent ;
instrument central / secondaire ;
rôle déclaré ;
rôle proposé ;
confiance d’analyse ;
protection humaine ;
latence ;
masquage ;
priorité d’interface.
```

---

# 7. Samples préparés vs process live

Décision actuelle : les samples préparés doivent avoir une utilité spécifique.

Ils ne sont pas le cœur du projet.

Utilisations justifiées :

```text
sources difficiles à recréer en live ;
matériaux de base pour hybridation ;
queues ou résonances spécifiques ;
objets tests ;
matériaux allégés pour préserver le CPU ;
stacking préparé ;
textures longues impossibles à générer proprement en temps réel.
```

Utilisations moins justifiées :

```text
banque énorme à maintenir ;
samples comme solution par défaut ;
collection décorative ;
préparation interminable ;
sons finis qui empêchent la performance de transformer la matière.
```

---

# 8. Interface des méthodes techniques

Décision actuelle : les méthodes techniques ne doivent pas toutes apparaître directement dans l’interface live.

Par défaut, l’interface devrait afficher des fonctions musicales :

```text
Halo ;
Rugissement ;
Torsion ;
Trace ;
Partiels ;
Corps ;
Distance ;
Densité ;
Lisibilité ;
Retour ;
Stabiliser ;
Réduire halo ;
Protéger voix.
```

Les méthodes techniques peuvent rester dans un niveau profond :

```text
granulation ;
convolution ;
MIDI echo ;
ring modulation ;
feedback ;
resynthesis ;
physical modelling ;
spectral freeze ;
LFO / random / remap.
```

Exception : certaines méthodes peuvent devenir jouables si elles ont une valeur performative claire.

Exemple :

```text
Torsion formantique ;
Feedback contrôlé ;
Distance ;
Convolution scène ;
Densité MIDI ;
Stacking / épaississement.
```

---

# 9. Mix / master intégré

Décision actuelle : prévoir une couche mix / master ultra subtile, professionnelle, viable dans des situations différentes, mais ne pas encore la concevoir en détail.

Elle doit être intégrée à l’architecture, pas collée à la fin.

Modules concernés :

```text
Spectral & Comfort Governor ;
Conflict / Protection Manager ;
Output / Mix / Performance Layer ;
Scene / Performance Conductor ;
Contextual Control Router ;
Live Object Interpreter ;
Object Registry.
```

Fonctions probables :

```text
traduction entre systèmes de diffusion ;
protection sub ;
contrôle bas-médium ;
contrôle fatigue aiguë ;
préservation dynamique ;
compatibilité club ;
compatibilité hors-club ;
non-blocage de l’ingénieur son ;
mode autonome quand pas d’ingénieur son ;
contrôle de loudness sans écrasement ;
préservation des transitoires ;
préservation de l’espace ;
limitation intelligente des risques.
```

Principe :

```text
transparent par défaut ;
coloration subtile seulement si musicalement voulue ;
priorité à la traduction, à la stabilité et au confort ;
jamais compenser une mauvaise architecture sonore par du mastering lourd.
```

Cas à prévoir :

```text
club avec ingénieur son ;
club sans ingénieur son attentif ;
salle non-club ;
petit système ;
gros système ;
monitoring incertain ;
répétition / studio ;
installation ;
stream / enregistrement.
```

---

# 10. Recherche d’outils

Décision actuelle : faire des recherches d’outils au bon moment, sans laisser les outils piloter l’esthétique.

Moments adaptés :

```text
après architecture globale suffisante ;
avant premiers prototypes ;
avant choix Max for Live / plugins / Ableton / SDK / scripts ;
avant module mix-master ;
avant Live Object Interpreter ;
avant Sound Engines ;
avant Output / Mix / Performance Layer.
```

Questions de recherche futures :

```text
quels outils Max for Live existent déjà ?
quels outils doivent être créés ?
quels plugins sont plus fiables que Max pour certaines fonctions ?
quels traitements doivent être offline ?
quels traitements peuvent être live ?
quelles analyses sont réalistes en temps réel ?
quels outils risquent de rigidifier le système ?
quels outils peuvent rester remplaçables ?
```

Principe :

```text
les outils doivent servir les modules ;
les modules doivent servir les fonctions musicales ;
les fonctions musicales doivent servir l’esprit Vesperare.
```

---

# 11. Conséquences immédiates sur les modules à venir

## Contextual Control Router

Le Router devra prévoir plus tard des contrôles liés à :

```text
sound design contextuel ;
distance ;
source recognition ;
source abstraction ;
protection mix ;
stabilisation master ;
urgence spectrale ;
mode club / hors-club ;
mode ingénieur son / autonome ;
présence live ;
traitement profond.
```

Mais il ne doit pas tout afficher.

## Timbre & Material Mapper

Ce module deviendra central pour :

```text
choisir la matière adaptée à une fonction ;
transformer une source sans perdre sa trace ;
organiser hybridation ;
gérer reconnaissance / abstraction ;
relier source, phénomène et rôle.
```

## Sound Engines

Ils devront pouvoir être :

```text
sample-based ;
procedural ;
hybrides ;
live-input based ;
génératifs ;
préparés offline ;
allégés pour performance.
```

## Mix / Master Intelligence Layer

À développer plus tard, après plus de clarté sur :

```text
Output / Mix / Performance Layer ;
Spectral & Comfort Governor ;
Conflict / Protection Manager ;
conditions de performance ;
choix d’outils ;
interfaces avec ingénieur son.
```

---

# 12. Points à vérifier plus tard

```text
1. Quels procédés de sound design deviennent vraiment nécessaires ?
2. Faut-il un corpus minimal de samples ? Si oui, lequel ?
3. Quelle part doit être générée live ?
4. Quelle part doit être préparée offline ?
5. Comment préserver la reconnaissance de source sans rigidifier les objets ?
6. Comment faire fonctionner le mix-master sans bloquer un ingénieur son ?
7. Comment adapter le système aux contextes club / hors-club ?
8. Quels outils existants peuvent réduire le travail sans enfermer l’esthétique ?
9. Quels modules doivent absolument rester faits maison ?
10. Comment éviter que le sound design naturaliste devienne décoratif ?
```

---

# 13. Décision actuelle

On ne suspend pas le développement des modules actuels.

On inscrit ces éléments comme contraintes obligatoires à garder en mémoire, puis on continue avec :

```text
Contextual Control Router
```

Le Router devra déjà être conçu de façon à pouvoir accueillir plus tard des contrôles liés au sound design, au mix-master, aux outils externes et aux contextes de diffusion.
