# 04_SAMPLE_NEEDS_INITIAL

Version : v0.1  
Statut : première exécution du protocole pré-live, sans collecte audio, sans prototypage.

## Objet

Ce document applique une première fois `02_PRE_LIVE_SAMPLE_CORPUS_NEEDS_PROTOCOL`.

Il ne constitue pas une liste définitive de samples à collecter.

Il produit une première table d’audit pour savoir :

```text
quels besoins musicaux demandent peut-être des samples ;
ce qui doit d’abord être vérifié dans l’existant ;
ce que des traitements live peuvent déjà produire avec peu de samples ;
ce que la génération / modélisation réaliste peut couvrir ;
ce qui exige encore des samples concrets pré-live ;
quelle quantité minimale et idéale est raisonnable.
```

Principe central :

```text
ne pas augmenter le nombre de samples avant d’avoir testé :
1. l’existant ;
2. le pouvoir de traitement live de quelques très bons samples ;
3. la génération / modélisation réaliste des phénomènes.
```

---

# 1. Hypothèses de cette première passe

Cette première passe part de l’état documentaire actuel.

Elle suppose :

```text
aucun audit complet des fichiers existants n’a encore été fait ;
aucune session d’enregistrement n’est lancée ;
aucun sample pack n’est encore choisi ;
aucun engine concret n’est encore validé ;
les propositions spontanées d’instruments de Yohan pourront enrichir ou modifier cette table ;
les quantités indiquées sont des ordres de grandeur de travail, pas des prescriptions fixes.
```

Elle tient compte de :

```text
fonctions techno conservées ;
phénomènes sonores de Vesperare ;
influences déconstruites ;
objets sonores multi-profils ;
trajectoires et scènes ;
timbre / matériaux ;
Sound Engines ;
Conflict / Protection ;
source candidates ;
possibilités de traitement live ;
possibilités réalistes de génération ;
préparation pré-live.
```

---

# 2. Niveaux de décision

## Statuts possibles

```text
NO_SAMPLE_GENERATE : génération / engine suffisant, pas de sample nécessaire.
REFERENCE_ONLY : quelques références utiles, pas de corpus performatif.
EXISTING_TO_QUALIFY : l’existant pourrait suffire après tri / tags / édition.
MINIMAL_SAMPLE_SET : petit noyau de samples nécessaire.
TARGETED_CORPUS : corpus ciblé nécessaire, mais limité par rôle.
HYBRID_REQUIRED : samples + génération / traitement / live.
LIVE_PRIORITY : le live prime ; sample seulement soutien ou référence.
DEFER : besoin encore trop instable.
REFUSE : besoin décoratif ou non justifié.
```

## Champs de la table

```text
sample_need_id
besoin musical / phénomène
fonction ou ambition servie
candidats source possibles
existant à vérifier
traitement live pouvant réduire les samples
génération / modélisation réaliste
statut recommandé
minimum pré-live
idéal prudent
samples concrets à constituer si nécessaire
risques principaux
prochaine action
```

---

# 3. SAMPLE_NEEDS_INITIAL

## 3.1 Corps / impact / fondation

```text
sample_need_id: sample_need_body_impact_foundation_01
besoin musical / phénomène: impact-fondation, retour au corps, accent corporel
fonction ou ambition servie: conserver le corps techno par des matières acoustiques / hybrides
candidats source possibles: peaux, tambours sur cadre, métaux courts, objets graves, frappes sèches, sub synthétique
existant à vérifier: prises de peaux, objets frappés, impacts métalliques courts, samples déjà disponibles
traitement live pouvant réduire les samples: transient shaping, pitch, enveloppes, layering, hybridation sub, EQ dynamique, saturation contrôlée, random start léger
génération / modélisation réaliste: sub et corps grave générables ; peau réaliste complète non supposée ; résonance / enveloppe modélisables en soutien
statut recommandé: HYBRID_REQUIRED + MINIMAL_SAMPLE_SET
minimum pré-live: 6–10 impacts très bons, toutes sources confondues
idéal prudent: 12–18 impacts répartis par attaque / registre / matière
samples concrets à constituer si nécessaire: peaux graves amorties, frappes larges, métaux courts corporels, objets graves secs
risques principaux: cliché rituel, bas-médium, perte de techno, pression réduite au volume
prochaine action: tester ce que 3–5 impacts très bons peuvent produire avec traitement live avant d’élargir.
```

## 3.2 Peaux / percussions réelles exposées

```text
sample_need_id: sample_need_skin_percussion_exposed_01
besoin musical / phénomène: attaque de peau, grain réel, geste humain, accent ou impact exposé
fonction ou ambition servie: donner du corps sans transformer Vesperare en percussion folklorique ou décorative
candidats source possibles: tambours sur cadre, peaux graves, frappes main/mailloche, peaux préparées
existant à vérifier: qualité de samples de peaux déjà disponibles, possibilité d’enregistrer soi-même
traitement live pouvant réduire les samples: pitch limité, transient/tail split, filtrage, envelope follow, hybridation sub, variation de vélocité, saturation douce
génération / modélisation réaliste: corps et résonance secondaire modélisables ; attaque réelle, grain de peau et geste exposé probablement à sampler
statut recommandé: MINIMAL_SAMPLE_SET, pas corpus large au départ
minimum pré-live: 4–6 coups exposables
idéal prudent: 8–12 coups si plusieurs rôles confirmés
samples concrets à constituer si nécessaire: attaques de peau sèches, coups graves larges, coups amortis, queues courtes de peau
risques principaux: couleur trop “rituelle”, bas-médium, mollesse de l’attaque, perte de sécheresse sculptée
prochaine action: distinguer coups centraux à sampler et comportements secondaires modélisables.
```

## 3.3 Résolution métallique / gong central

```text
sample_need_id: sample_need_metal_resolution_gong_01
besoin musical / phénomène: masse de résolution, gong central, partiels riches, queue physique
fonction ou ambition servie: résolution, tension longue, beauté autonome, événement formel
candidats source possibles: gongs, grands métaux résonants, bols graves, plaques métalliques
existant à vérifier: gongs disponibles, banques haute qualité, possibilités d’enregistrement
traitement live pouvant réduire les samples: tail control, EQ dynamique, partial emphasis, convolution, spectral freeze, reverse, découpe attaque/queue, renfort spectral
génération / modélisation réaliste: renforts et halos possibles ; gong central réaliste non supposé remplaçable
statut recommandé: MINIMAL_SAMPLE_SET
minimum pré-live: 3–5 prises centrales excellentes
idéal prudent: 6–8 si plusieurs couleurs formelles nécessaires
samples concrets à constituer si nécessaire: gong sombre long, gong plus court, queue riche isolable, attaque forte, résonance douce
risques principaux: dramatisme trop évident, queue incontrôlée, sub masking, bas-médium, décor “gong”
prochaine action: privilégier peu de prises très fortes et tester la variation par traitement live.
```

## 3.4 Halo / post-résonance / queues longues

```text
sample_need_id: sample_need_halo_tails_resonance_01
besoin musical / phénomène: halo fonctionnel, post-résonance, suspension, profondeur
fonction ou ambition servie: espace musical, queue, mystère, tension de sortie, respiration formelle
candidats source possibles: queues de gongs, bols, cloches, résonances de lieux, résonateurs, convolution
existant à vérifier: queues déjà extraites, impulses, longues résonances disponibles
traitement live pouvant réduire les samples: time-stretch, spectral freeze, convolution, résonateurs, EQ, ducking par impact, modulation de queue
génération / modélisation réaliste: résonateurs / synthèse modale utiles ; échantillons réels utiles pour richesse et singularité
statut recommandé: HYBRID_REQUIRED
minimum pré-live: 3–6 queues ou impulses utilisables
idéal prudent: 8–12 si plusieurs scènes de halo sont confirmées
samples concrets à constituer si nécessaire: queues métalliques isolées, impulses de résonance, longues décroissances, résonances sobres de lieu
risques principaux: ambientisation, perte du corps, masque de l’impact, excès de beauté décorative
prochaine action: tester ducking / sidechain / tail budget avant d’augmenter la quantité.
```

## 3.5 Sub / pression grave / fondation synthétique

```text
sample_need_id: sample_need_sub_foundation_01
besoin musical / phénomène: sub, pression grave, trace corporelle, stabilité
fonction ou ambition servie: techno, corps, club, ancrage, intensité
candidats source possibles: synthèse sub, renfort grave, traitement de peaux, didgeridoo en référence
existant à vérifier: presets internes, références de mix, références de sub propres
traitement live pouvant réduire les samples: non pertinent comme sample principal ; contrôle paramétrique, mono, saturation, sidechain, enveloppes
génération / modélisation réaliste: génération prioritaire ; sample non nécessaire sauf référence
statut recommandé: NO_SAMPLE_GENERATE + REFERENCE_ONLY
minimum pré-live: 0 sample performatif ; 2–4 références audio si utile
idéal prudent: 0 sample performatif
samples concrets à constituer si nécessaire: aucun pour la fondation ; éventuellement références de sub / didgeridoo pour comparaison
risques principaux: sub générique, largeur excessive, instabilité, pression réduite au volume
prochaine action: traiter comme engine / contrôle, pas comme corpus.
```

## 3.6 Voix signal

```text
sample_need_id: sample_need_voice_signal_01
besoin musical / phénomène: voix signal, fragment, rupture, présence humaine, hook non chanson
fonction ou ambition servie: signal, singularité, tension, appel, repère formel
candidats source possibles: voix de Yohan, voix parlée, souffle d’attaque, cri court, phonème expressif
existant à vérifier: fragments vocaux disponibles, textes, prises propres, possibilité de live
traitement live pouvant réduire les samples: pitch/formant léger, granulation contrôlée, découpe, filtre, delay court, reverse, résonateur, spatialisation ciblée
génération / modélisation réaliste: insuffisante pour présence humaine signal ; utile seulement pour traitement/renfort formantique
statut recommandé: LIVE_PRIORITY + MINIMAL_SAMPLE_SET
minimum pré-live: 4–8 fragments signal très choisis
idéal prudent: 8–14 si plusieurs rôles sémantiques/non-sémantiques sont confirmés
samples concrets à constituer si nécessaire: mots courts, syllabes, souffles d’attaque, cris courts, phonèmes, fragments parlés non chanson
risques principaux: chanson involontaire, gimmick, pathos, sémantique non contrôlée, voix masquée
prochaine action: séparer voix signal, voix matière, voix souffle, voix sémantique avant de collecter.
```

## 3.7 Voix matière / souffle / phonèmes

```text
sample_need_id: sample_need_voice_matter_01
besoin musical / phénomène: voix matière, souffle, grain humain, formants abstraits
fonction ou ambition servie: halo humain, texture, transition, présence non narrative
candidats source possibles: souffles, consonnes, voyelles tenues, chuchotements, fragments sans phrase
existant à vérifier: prises vocales non sémantiques, souffles propres, phonèmes disponibles
traitement live pouvant réduire les samples: granulation, formant shift, convolution, spectral freeze, enveloppes, random start, slicing
génération / modélisation réaliste: formants synthétiques possibles ; grain humain réel probablement plus riche
statut recommandé: MINIMAL_SAMPLE_SET + HYBRID_REQUIRED
minimum pré-live: 6–10 micro-matériaux vocaux
idéal prudent: 12–18 si voix matière devient axe fort
samples concrets à constituer si nécessaire: souffles, consonnes, voyelles, attaques, fragments non verbaux, chuchotements
risques principaux: texture décorative, pathos, formants masqués, confusion avec voix signal
prochaine action: constituer peu de matières vocales mais très transformables.
```

## 3.8 Didgeridoo live / références non substitutives

```text
sample_need_id: sample_need_didgeridoo_reference_01
besoin musical / phénomène: souffle grave, formants vivants, torsion, drone humain
fonction ou ambition servie: live central, corps, tension grave, singularité
candidats source possibles: didgeridoo live de Yohan, prises de référence, textures de souffle
existant à vérifier: enregistrements personnels, possibilités d’entrée live stable, références de timbre
traitement live pouvant réduire les samples: traitement d’entrée live, formant tracking léger, résonateurs, saturation, EQ, sidechain avec sub
génération / modélisation réaliste: insuffisante comme remplacement ; possible comme renfort ou couche formantique
statut recommandé: LIVE_PRIORITY + REFERENCE_ONLY
minimum pré-live: 2–4 références si besoin
idéal prudent: 4–6 références / textures secondaires, pas corpus substitutif
samples concrets à constituer si nécessaire: notes graves de référence, attaques de souffle, textures de souffle, variations formantiques
risques principaux: remplacer le live, figer l’agency, concurrence avec sub, couleur trop identifiable
prochaine action: penser entrée live + renforts, pas banque de didgeridoo.
```

## 3.9 Field recordings exposés / lieux nocturnes

```text
sample_need_id: sample_need_field_recording_exposed_01
besoin musical / phénomène: lieu exposé, espace réel, mémoire, profondeur, beauté autonome
fonction ou ambition servie: suspension, espace musical, scène, nuit, matérialité du monde
candidats source possibles: lieux nocturnes, espaces résonants, ambiances naturelles sobres, traces humaines lointaines
existant à vérifier: enregistrements déjà disponibles, lieux accessibles, qualité de captation possible
traitement live pouvant réduire les samples: EQ, spectral denoise léger, convolution inverse, slicing, granularité, spatialisation, ducking contre impact
génération / modélisation réaliste: faible pour identité réelle ; utile pour espace abstrait ou couches secondaires
statut recommandé: MINIMAL_SAMPLE_SET
minimum pré-live: 2–4 lieux très forts
idéal prudent: 4–6 si plusieurs scènes d’exposition existent
samples concrets à constituer si nécessaire: lieu nocturne calme, espace résonant, texture de profondeur, trace humaine discrète
risques principaux: paysage sonore plaqué, documentaire, ambientisation, perte de tension techno
prochaine action: sélectionner peu de lieux avec fort rôle formel.
```

## 3.10 Éléments naturels modélisables : eau / pluie / vent / orage / feu / sol / vagues

```text
sample_need_id: sample_need_natural_elements_modeling_01
besoin musical / phénomène: microtexture naturelle, flux, densité, souffle, turbulence, sol, feu, vagues
fonction ou ambition servie: halo, texture secondaire, transition, post-résonance, écologie sonore
candidats source possibles: eau, pluie, gouttes, vent, sifflements, orage, feu, bruits de sol, vagues
existant à vérifier: références personnelles ou bibliothèques propres, mais pas besoin de gros corpus initial
traitement live pouvant réduire les samples: grains, slicing, random start, layering, filtrage, spatialisation, modulation de densité
génération / modélisation réaliste: génération prioritaire pour densité / flux / particules / vent / gouttes / bruit ; samples utiles comme références ou grains réels
statut recommandé: NO_SAMPLE_GENERATE + REFERENCE_ONLY, avec HYBRID_REQUIRED si texture exposée
minimum pré-live: 0–2 références par phénomène utilisé
idéal prudent: 2–4 références seulement si exposition ou hybridation claire
samples concrets à constituer si nécessaire: quelques gouttes, pluie fine, vent/sifflement, feu discret, sol/granularité, vague courte
risques principaux: décor naturaliste, masque, banque énorme, texture permanente
prochaine action: commencer par modèles/procédural ; sample seulement référence ou grain.
```

## 3.11 Polytexture percussive / micro-impacts

```text
sample_need_id: sample_need_polytexture_microimpacts_01
besoin musical / phénomène: interlocking, complexité lisible, densité articulée, micro-impacts
fonction ou ambition servie: polytexture percussive raffinée, énergie, précision, richesse timbrale
candidats source possibles: petits métaux, objets secs, bois, pierres, clochettes, cymbalettes, peaux courtes
existant à vérifier: micro-impacts existants, objets disponibles à enregistrer, collections personnelles
traitement live pouvant réduire les samples: slicing, random start, pitch, vélocité, microtiming, probability, filtrage, humanisation contrôlée
génération / modélisation réaliste: placement/densité générables ; timbres acoustiques singuliers mieux samplés ; synthèse possible pour grains secondaires
statut recommandé: HYBRID_REQUIRED + TARGETED_CORPUS léger
minimum pré-live: 8–12 micro-impacts variés
idéal prudent: 16–24 si la polytexture devient axe central
samples concrets à constituer si nécessaire: petits métaux courts, objets secs, bois/pierre, clochettes courtes, peaux courtes
risques principaux: banque de one-shots, perte de hiérarchie, aigus fatigants, style plaqué
prochaine action: constituer par rôles rythmiques, pas par collection d’objets.
```

## 3.12 Brillance rythmique naturalisée

```text
sample_need_id: sample_need_naturalized_brightness_01
besoin musical / phénomène: brillance, micro-pulsation, accent aigu, précision
fonction ou ambition servie: remplacer ou déplacer certaines fonctions de hi-hat / micro-rythme techno
candidats source possibles: cymbalettes, clochettes, petits métaux, frottements courts, grains synthétiques
existant à vérifier: petits métaux disponibles, clochettes/cymbalettes, sample packs de métaux courts
traitement live pouvant réduire les samples: EQ dynamique, transient shaping, pitch, random start, microtiming, envelopes
génération / modélisation réaliste: grains synthétiques possibles ; timbres réels utiles si brillance exposée
statut recommandé: HYBRID_REQUIRED, corpus léger
minimum pré-live: 6–10 sons courts
idéal prudent: 12–18 si plusieurs registres d’aigus sont nécessaires
samples concrets à constituer si nécessaire: clochettes courtes, attaques métalliques sèches, cymbalettes, frottements courts
risques principaux: aigus fatigants, exotisme, ornement gratuit, perte du corps
prochaine action: tester fatigue et lisibilité avant d’élargir.
```

## 3.13 Frictions / raclages / matières rugueuses

```text
sample_need_id: sample_need_friction_roughness_01
besoin musical / phénomène: friction, tension, rugissement, matière rugueuse, transition
fonction ou ambition servie: tension non agressive, torsion, pression, intensité physique
candidats source possibles: métaux frottés, bois raclés, pierres, surfaces rugueuses, frottements graves
existant à vérifier: objets disponibles, enregistrements possibles, textures déjà présentes
traitement live pouvant réduire les samples: time-stretch, filtering, spectral freeze, granulation, resonators, saturation, dynamic EQ
génération / modélisation réaliste: bruit contrôlé possible ; geste réel détaillé mieux samplé si exposé
statut recommandé: MINIMAL_SAMPLE_SET ou DEFER selon importance
minimum pré-live: 4–6 gestes si besoin confirmé
idéal prudent: 8–12 si plusieurs transitions utilisent cette matière
samples concrets à constituer si nécessaire: frottements longs, raclages courts, grincements graves, attaques irrégulières
risques principaux: agressivité inutile, cliché industriel, fatigue, masque voix/sub
prochaine action: différer si aucune scène ne réclame encore cette friction.
```

---

# 4. Synthèse des décisions initiales

## Samples probablement nécessaires mais en petit nombre

```text
gongs / métaux de résolution ;
impacts corporels acoustiques ;
voix signal ;
voix matière ;
field recordings exposés ;
peaux exposées ;
queues / résonances si les résonateurs ne suffisent pas.
```

## Samples surtout comme référence ou matière secondaire

```text
didgeridoo ;
sub ;
élements naturels modélisables ;
certains grains d’eau / vent / feu / sol ;
certains micro-impacts secondaires.
```

## Génération / modélisation prioritaire

```text
sub ;
vent ;
eau ;
pluie ;
gouttes ;
vagues ;
orage ;
feu ;
bruits de sol ;
flux granulaire ;
micro-événements secondaires ;
placement / densité de polytexture.
```

## Hybride probable

```text
peaux + sub / enveloppe / résonance ;
gong + renfort spectral / résonateur ;
voix + traitement formantique / granularité ;
field recording + spatialisation / granularité ;
eau réelle + procédural ;
micro-impacts réels + génération de placement.
```

---

# 5. Ce qu’il ne faut pas encore faire

```text
chercher une grande banque de samples ;
commander ou télécharger des packs avant audit de l’existant ;
enregistrer beaucoup de variantes ;
faire des listes par instruments sans fonction ;
remplacer le live par confort ;
confondre phénomènes modélisables et instruments samplés ;
choisir des engines définitifs avant d’avoir validé les besoins.
```

---

# 6. Prochaines actions

```text
1. Renseigner ce qui existe déjà réellement chez Yohan : samples, enregistrements, instruments, objets.
2. Tester conceptuellement le pouvoir de traitement live de 1–5 samples par besoin.
3. Marquer les besoins qui restent vraiment sample-nécessaires.
4. Transformer les besoins confirmés via 03_SAMPLE_NEEDS_TO_SOURCE_NEEDS_BRIDGE.
5. Créer seulement ensuite les fiches source_need prioritaires.
```

---

# 7. Liste courte des informations à demander à Yohan plus tard

```text
Quels instruments ou objets sont déjà disponibles physiquement ?
Quels enregistrements personnels existent déjà ?
Quels sons de voix sont acceptables ou désirables ?
Quels éléments naturels sont faciles à enregistrer ?
Quels samples / packs / bibliothèques possède-t-il déjà ?
Quels instruments sont prioritaires émotionnellement ou intuitivement ?
Quels sons seraient trop reconnaissables ou trop risqués ?
```
