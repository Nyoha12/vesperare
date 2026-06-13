# 04_SAMPLE_NEEDS_INITIAL

Version : v0.2  
Statut : première table d’audit pré-live, relue à travers `00_AESTHETIC_PHENOMENAL_NEEDS_MATRIX`. Sans collecte audio, sans prototypage.

## Objet

Ce document applique une première fois `02_PRE_LIVE_SAMPLE_CORPUS_NEEDS_PROTOCOL`, mais sa version v0.2 corrige un point essentiel : les besoins de samples ne sont pas déduits d’une liste intuitive de familles sonores.

Ils sont maintenant dérivés depuis :

```text
fonctions techno naturalisées ;
influences déconstruites ;
phénomènes sonores ;
pitch / partiels / microtensions ;
scènes / trajectoires / objets ;
sound design comme écologie d’objets ;
contraintes de live, conflits, sources, assets et engines.
```

Ce document ne constitue pas une liste définitive de samples à collecter.

Il produit une première table d’audit pour savoir :

```text
quels besoins musicaux demandent peut-être des samples ;
d’où viennent ces besoins dans le projet ;
quel rôle ils jouent dans les scènes et trajectoires ;
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
3. la génération / modélisation réaliste des phénomènes ;
4. la nécessité esthétique / phénoménale réelle du besoin.
```

---

# 0. Source amont obligatoire

Ce document dépend de :

```text
00_AESTHETIC_PHENOMENAL_NEEDS_MATRIX
```

Chaque besoin de sample doit pouvoir se rattacher à au moins un des axes suivants :

```text
techno naturalisée / conservation des fonctions techno ;
intensité phénoménale sans agression ;
contour sculpté / netteté sensible ;
répétition non redondante / hypnose active ;
brillance rythmique naturalisée ;
polytexture percussive raffinée ;
espace musical occupé / halo fonctionnel ;
voix comme matière, instrument ou signal ;
beauté autonome / moment de matière ;
tension syncopée / attente / résolution ;
suspension / ouverture / expansion / peak non brutal ;
torsion résonante / ligne vivante ;
champs harmoniques / microtensions / partiels ;
sound design comme écologie d’objets.
```

Si un besoin ne se rattache à aucun de ces axes, il ne doit pas devenir `sample_need`. Il peut rester dans l’inventaire des sources candidates.

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
pitch / harmoniques / microtonalité ;
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

## Champs de chaque entrée

```text
sample_need_id
source esthétique / phénoménale
besoin musical / phénomène
fonction ou ambition servie
rôle scène / trajectoire
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

# 3. Dérivation depuis la matrice esthétique / phénoménale

## 3.1 Axes qui produisent déjà des sample_needs probables

```text
techno naturalisée → corps / impact / peaux / sub / gongs resserrés ;
intensité sans agression → sources réelles fortes, gongs, voix, percussions profondes, field recordings transformés ;
contour sculpté → attaques, queues maîtrisées, micro-impacts, peaux courtes, voix coupées ;
polytexture → micro-impacts, objets courts, peaux, bois, petits métaux, fragments vocaux ;
espace / halo → queues, résonances, lieux, impulses, gongs, bols ;
voix → signal, matière, souffle, cri, sémantique ponctuelle ;
beauté autonome → sources exposées rares ;
tension syncopée → gongs, voix, impacts, sub, polytexture comme objets de résolution ;
champs harmoniques → partiels réels de gongs / bols / voix / cloches si indispensables.
```

## 3.2 Axes qui produisent plutôt traitements, engines ou génération

```text
sub / pression grave → génération prioritaire ;
éléments naturels eau / vent / pluie / feu / sol → procédural prioritaire sauf exposition ;
hypnose active → variation, placement, mutation plutôt que collection de samples ;
suspension / expansion → résonateurs, time-stretch, génération de halos, quelques sources exposées ;
torsion résonante → filtres, formants, résonateurs, engine de ligne, samples seulement si source réelle tordable ;
sound design écologique → relations, densité, distance, comportement, pas banque de sons.
```

---

# 4. SAMPLE_NEEDS_INITIAL — table révisée

## 4.1 Corps / impact / fondation

```text
sample_need_id: sample_need_body_impact_foundation_01
source esthétique / phénoménale: techno naturalisée ; impact-fondation corporel ; pression corporelle ; retour au corps.
besoin musical / phénomène: impact-fondation, retour au corps, accent corporel.
fonction ou ambition servie: conserver le corps techno par des matières acoustiques / hybrides.
rôle scène / trajectoire: fondation principale ; retour au corps ; masse de résolution ; suspension → retour fondation ; peak corporel non agressif.
candidats source possibles: peaux, tambours sur cadre, métaux courts, objets graves, frappes sèches, gongs resserrés, sub synthétique.
existant à vérifier: prises de peaux, objets frappés, impacts métalliques courts, samples déjà disponibles.
traitement live pouvant réduire les samples: transient shaping, pitch, enveloppes, layering, hybridation sub, EQ dynamique, saturation contrôlée, random start léger.
génération / modélisation réaliste: sub et corps grave générables ; peau réaliste complète non supposée ; résonance / enveloppe modélisables en soutien.
statut recommandé: HYBRID_REQUIRED + MINIMAL_SAMPLE_SET.
minimum pré-live: 6–10 impacts très bons, toutes sources confondues.
idéal prudent: 12–18 impacts répartis par attaque / registre / matière si les traitements ne suffisent pas.
samples concrets à constituer si nécessaire: peaux graves amorties, frappes larges, métaux courts corporels, objets graves secs, attaques de gongs resserrées.
risques principaux: cliché rituel, bas-médium, perte de techno, pression réduite au volume, queue trop longue.
prochaine action: tester ce que 3–5 impacts très bons peuvent produire avec traitement live avant d’élargir.
```

## 4.2 Peaux / percussions réelles exposées

```text
sample_need_id: sample_need_skin_percussion_exposed_01
source esthétique / phénoménale: techno naturalisée ; contour sculpté ; polytexture ; intensité sans agression.
besoin musical / phénomène: attaque de peau, grain réel, geste humain, accent ou impact exposé.
fonction ou ambition servie: donner du corps sans transformer Vesperare en percussion folklorique ou décorative.
rôle scène / trajectoire: impact exposé ; articulation ; ponctuation ; retour au corps ; densification polytexturale.
candidats source possibles: tambours sur cadre, peaux graves, frappes main/mailloche, peaux préparées.
existant à vérifier: qualité de samples de peaux déjà disponibles, possibilité d’enregistrer soi-même.
traitement live pouvant réduire les samples: pitch limité, transient/tail split, filtrage, envelope follow, hybridation sub, variation de vélocité, saturation douce.
génération / modélisation réaliste: corps et résonance secondaire modélisables ; attaque réelle, grain de peau et geste exposé probablement à sampler.
statut recommandé: MINIMAL_SAMPLE_SET, pas corpus large au départ.
minimum pré-live: 4–6 coups exposables.
idéal prudent: 8–12 coups si plusieurs rôles confirmés.
samples concrets à constituer si nécessaire: attaques de peau sèches, coups graves larges, coups amortis, queues courtes de peau.
risques principaux: couleur trop rituelle, bas-médium, mollesse de l’attaque, perte de sécheresse sculptée.
prochaine action: distinguer coups centraux à sampler et comportements secondaires modélisables.
```

## 4.3 Résolution métallique / gong central

```text
sample_need_id: sample_need_metal_resolution_gong_01
source esthétique / phénoménale: beauté autonome ; tension syncopée / résolution ; champs harmoniques ; intensité sans agression ; espace / halo.
besoin musical / phénomène: masse de résolution, gong central, partiels riches, queue physique.
fonction ou ambition servie: résolution, tension longue, beauté autonome, événement formel.
rôle scène / trajectoire: pré-drop → résolution ; gong préparé → rugissement ; beauté autonome → intensité ; champ de partiels → résolution.
candidats source possibles: gongs, grands métaux résonants, bols graves, plaques métalliques.
existant à vérifier: gongs disponibles, banques haute qualité, possibilités d’enregistrement.
traitement live pouvant réduire les samples: tail control, EQ dynamique, partial emphasis, convolution, spectral freeze, reverse, découpe attaque/queue, renfort spectral.
génération / modélisation réaliste: renforts et halos possibles ; gong central réaliste non supposé remplaçable.
statut recommandé: MINIMAL_SAMPLE_SET.
minimum pré-live: 3–5 prises centrales excellentes.
idéal prudent: 6–8 si plusieurs couleurs formelles nécessaires.
samples concrets à constituer si nécessaire: gong sombre long, gong plus court, queue riche isolable, attaque forte, résonance douce.
risques principaux: dramatisme trop évident, queue incontrôlée, sub masking, bas-médium, décor “gong”.
prochaine action: privilégier peu de prises très fortes et tester la variation par traitement live.
```

## 4.4 Halo / post-résonance / queues longues

```text
sample_need_id: sample_need_halo_tails_resonance_01
source esthétique / phénoménale: espace musical occupé ; suspension / expansion ; beauté autonome ; champs harmoniques.
besoin musical / phénomène: halo fonctionnel, post-résonance, suspension, profondeur.
fonction ou ambition servie: espace musical, queue, mystère, tension de sortie, respiration formelle.
rôle scène / trajectoire: suspension ; post-drop ; expansion ; beauté autonome ; fermeture de scène ; trace d’événement.
candidats source possibles: queues de gongs, bols, cloches, résonances de lieux, résonateurs, convolution.
existant à vérifier: queues déjà extraites, impulses, longues résonances disponibles.
traitement live pouvant réduire les samples: time-stretch, spectral freeze, convolution, résonateurs, EQ, ducking par impact, modulation de queue.
génération / modélisation réaliste: résonateurs / synthèse modale utiles ; échantillons réels utiles pour richesse et singularité.
statut recommandé: HYBRID_REQUIRED.
minimum pré-live: 3–6 queues ou impulses utilisables.
idéal prudent: 8–12 si plusieurs scènes de halo sont confirmées.
samples concrets à constituer si nécessaire: queues métalliques isolées, impulses de résonance, longues décroissances, résonances sobres de lieu.
risques principaux: ambientisation, perte du corps, masque de l’impact, excès de beauté décorative.
prochaine action: tester ducking / sidechain / tail budget avant d’augmenter la quantité.
```

## 4.5 Sub / pression grave / fondation synthétique

```text
sample_need_id: sample_need_sub_foundation_01
source esthétique / phénoménale: techno naturalisée ; pression spectrale corporelle ; dubstep sub / masse ; pitch center.
besoin musical / phénomène: sub, pression grave, trace corporelle, stabilité.
fonction ou ambition servie: techno, corps, club, ancrage, intensité.
rôle scène / trajectoire: pression stable ; sub retenu ; retour du corps ; drop / résolution ; centre grave.
candidats source possibles: synthèse sub, renfort grave, traitement de peaux, didgeridoo en référence.
existant à vérifier: presets internes, références de mix, références de sub propres.
traitement live pouvant réduire les samples: non pertinent comme sample principal ; contrôle paramétrique, mono, saturation, sidechain, enveloppes.
génération / modélisation réaliste: génération prioritaire ; sample non nécessaire sauf référence.
statut recommandé: NO_SAMPLE_GENERATE + REFERENCE_ONLY.
minimum pré-live: 0 sample performatif ; 2–4 références audio si utile.
idéal prudent: 0 sample performatif.
samples concrets à constituer si nécessaire: aucun pour la fondation ; éventuellement références de sub / didgeridoo pour comparaison.
risques principaux: sub générique, largeur excessive, instabilité, pression réduite au volume.
prochaine action: traiter comme engine / contrôle / pitch center, pas comme corpus.
```

## 4.6 Voix signal

```text
sample_need_id: sample_need_voice_signal_01
source esthétique / phénoménale: voix comme signal ; tension syncopée ; intensité sans agression ; dubstep voix criée ; présence humaine.
besoin musical / phénomène: voix signal, fragment, rupture, présence humaine, hook non chanson.
fonction ou ambition servie: signal, singularité, tension, appel, repère formel.
rôle scène / trajectoire: pré-drop vocal ; signal de résolution ; cri → résolution ; abstraction → signal ; événement formel.
candidats source possibles: voix de Yohan, voix parlée, souffle d’attaque, cri court, phonème expressif.
existant à vérifier: fragments vocaux disponibles, textes, prises propres, possibilité de live.
traitement live pouvant réduire les samples: pitch/formant léger, granulation contrôlée, découpe, filtre, delay court, reverse, résonateur, spatialisation ciblée.
génération / modélisation réaliste: insuffisante pour présence humaine signal ; utile seulement pour traitement/renfort formantique.
statut recommandé: LIVE_PRIORITY + MINIMAL_SAMPLE_SET.
minimum pré-live: 4–8 fragments signal très choisis.
idéal prudent: 8–14 si plusieurs rôles sémantiques/non-sémantiques sont confirmés.
samples concrets à constituer si nécessaire: mots courts, syllabes, souffles d’attaque, cris courts, phonèmes, fragments parlés non chanson.
risques principaux: chanson involontaire, gimmick, pathos, sémantique non contrôlée, voix masquée.
prochaine action: séparer voix signal, voix matière, voix souffle, voix sémantique avant de collecter.
```

## 4.7 Voix matière / souffle / phonèmes

```text
sample_need_id: sample_need_voice_matter_01
source esthétique / phénoménale: voix comme matière ; beauté autonome ; halo vocal ; formants ; champs harmoniques.
besoin musical / phénomène: voix matière, souffle, grain humain, formants abstraits.
fonction ou ambition servie: halo humain, texture, transition, présence non narrative.
rôle scène / trajectoire: voix → halo ; voix → matière ; intelligibilité → abstraction ; suspension vocale.
candidats source possibles: souffles, consonnes, voyelles tenues, chuchotements, fragments sans phrase.
existant à vérifier: prises vocales non sémantiques, souffles propres, phonèmes disponibles.
traitement live pouvant réduire les samples: granulation, formant shift, convolution, spectral freeze, enveloppes, random start, slicing.
génération / modélisation réaliste: formants synthétiques possibles ; grain humain réel probablement plus riche.
statut recommandé: MINIMAL_SAMPLE_SET + HYBRID_REQUIRED.
minimum pré-live: 6–10 micro-matériaux vocaux.
idéal prudent: 12–18 si voix matière devient axe fort.
samples concrets à constituer si nécessaire: souffles, consonnes, voyelles, attaques, fragments non verbaux, chuchotements.
risques principaux: texture décorative, pathos, formants masqués, confusion avec voix signal.
prochaine action: constituer peu de matières vocales mais très transformables.
```

## 4.8 Didgeridoo live / références non substitutives

```text
sample_need_id: sample_need_didgeridoo_reference_01
source esthétique / phénoménale: techno naturalisée ; pression grave ; formants ; torsion résonante ; live central.
besoin musical / phénomène: souffle grave, formants vivants, torsion, drone humain.
fonction ou ambition servie: live central, corps, tension grave, singularité.
rôle scène / trajectoire: instrument live central ; pression retenue ; ligne vivante ; torsion ; retour au corps.
candidats source possibles: didgeridoo live de Yohan, prises de référence, textures de souffle.
existant à vérifier: enregistrements personnels, possibilités d’entrée live stable, références de timbre.
traitement live pouvant réduire les samples: traitement d’entrée live, formant tracking léger, résonateurs, saturation, EQ, sidechain avec sub.
génération / modélisation réaliste: insuffisante comme remplacement ; possible comme renfort ou couche formantique.
statut recommandé: LIVE_PRIORITY + REFERENCE_ONLY.
minimum pré-live: 2–4 références si besoin.
idéal prudent: 4–6 références / textures secondaires, pas corpus substitutif.
samples concrets à constituer si nécessaire: notes graves de référence, attaques de souffle, textures de souffle, variations formantiques.
risques principaux: remplacer le live, figer l’agency, concurrence avec sub, couleur trop identifiable.
prochaine action: penser entrée live + renforts, pas banque de didgeridoo.
```

## 4.9 Field recordings exposés / lieux nocturnes

```text
sample_need_id: sample_need_field_recording_exposed_01
source esthétique / phénoménale: espace musical occupé ; beauté autonome ; sound design écologique ; scène nocturne.
besoin musical / phénomène: lieu exposé, espace réel, mémoire, profondeur, beauté autonome.
fonction ou ambition servie: suspension, espace musical, scène, nuit, matérialité du monde.
rôle scène / trajectoire: matière exposée ; suspension formelle ; scène nocturne ; beauté autonome → retour au corps.
candidats source possibles: lieux nocturnes, espaces résonants, ambiances naturelles sobres, traces humaines lointaines.
existant à vérifier: enregistrements déjà disponibles, lieux accessibles, qualité de captation possible.
traitement live pouvant réduire les samples: EQ, spectral denoise léger, convolution inverse, slicing, granularité, spatialisation, ducking contre impact.
génération / modélisation réaliste: faible pour identité réelle ; utile pour espace abstrait ou couches secondaires.
statut recommandé: MINIMAL_SAMPLE_SET.
minimum pré-live: 2–4 lieux très forts.
idéal prudent: 4–6 si plusieurs scènes d’exposition existent.
samples concrets à constituer si nécessaire: lieu nocturne calme, espace résonant, texture de profondeur, trace humaine discrète.
risques principaux: paysage sonore plaqué, documentaire, ambientisation, perte de tension techno.
prochaine action: sélectionner peu de lieux avec fort rôle formel.
```

## 4.10 Éléments naturels modélisables : eau / pluie / vent / orage / feu / sol / vagues

```text
sample_need_id: sample_need_natural_elements_modeling_01
source esthétique / phénoménale: sound design comme écologie d’objets ; suspension / expansion ; microtexture naturelle ; géophonie procédurale.
besoin musical / phénomène: microtexture naturelle, flux, densité, souffle, turbulence, sol, feu, vagues.
fonction ou ambition servie: halo, texture secondaire, transition, post-résonance, écologie sonore.
rôle scène / trajectoire: scène de suspension ; transition ; contrepoint naturel ; beauté autonome rare ; texture relationnelle.
candidats source possibles: eau, pluie, gouttes, vent, sifflements, orage, feu, bruits de sol, vagues.
existant à vérifier: références personnelles ou bibliothèques propres, mais pas besoin de gros corpus initial.
traitement live pouvant réduire les samples: grains, slicing, random start, layering, filtrage, spatialisation, modulation de densité.
génération / modélisation réaliste: génération prioritaire pour densité / flux / particules / vent / gouttes / bruit ; samples utiles comme références ou grains réels.
statut recommandé: NO_SAMPLE_GENERATE + REFERENCE_ONLY, avec HYBRID_REQUIRED si texture exposée.
minimum pré-live: 0–2 références par phénomène utilisé.
idéal prudent: 2–4 références seulement si exposition ou hybridation claire.
samples concrets à constituer si nécessaire: quelques gouttes, pluie fine, vent/sifflement, feu discret, sol/granularité, vague courte.
risques principaux: décor naturaliste, masque, banque énorme, texture permanente.
prochaine action: commencer par modèles/procédural ; sample seulement référence ou grain.
```

## 4.11 Polytexture percussive / micro-impacts

```text
sample_need_id: sample_need_polytexture_microimpacts_01
source esthétique / phénoménale: polytexture percussive raffinée ; brillance rythmique ; hypnose active ; contour sculpté.
besoin musical / phénomène: interlocking, complexité lisible, densité articulée, micro-impacts.
fonction ou ambition servie: polytexture percussive raffinée, énergie, précision, richesse timbrale.
rôle scène / trajectoire: densification ; pré-drop syncopé ; maintien d’énergie sans kick dominant ; polytexture → peak corporel.
candidats source possibles: petits métaux, objets secs, bois, pierres, clochettes, cymbalettes, peaux courtes.
existant à vérifier: micro-impacts existants, objets disponibles à enregistrer, collections personnelles.
traitement live pouvant réduire les samples: slicing, random start, pitch, vélocité, microtiming, probability, filtrage, humanisation contrôlée.
génération / modélisation réaliste: placement/densité générables ; timbres acoustiques singuliers mieux samplés ; synthèse possible pour grains secondaires.
statut recommandé: HYBRID_REQUIRED + TARGETED_CORPUS léger.
minimum pré-live: 8–12 micro-impacts variés.
idéal prudent: 16–24 si la polytexture devient axe central et si traitements insuffisants.
samples concrets à constituer si nécessaire: petits métaux courts, objets secs, bois/pierre, clochettes courtes, peaux courtes.
risques principaux: banque de one-shots, perte de hiérarchie, aigus fatigants, style plaqué.
prochaine action: constituer par rôles rythmiques, pas par collection d’objets.
```

## 4.12 Brillance rythmique naturalisée

```text
sample_need_id: sample_need_naturalized_brightness_01
source esthétique / phénoménale: brillance rythmique naturalisée ; contour sculpté ; hypnose active ; expansion brillante.
besoin musical / phénomène: brillance, micro-pulsation, accent aigu, précision.
fonction ou ambition servie: remplacer ou déplacer certaines fonctions de hi-hat / micro-rythme techno.
rôle scène / trajectoire: micro-pulsation ; préparation de montée ; densification ; pré-drop fragmenté ; expansion brillante.
candidats source possibles: cymbalettes, clochettes, petits métaux, frottements courts, grains synthétiques, souffles courts.
existant à vérifier: petits métaux disponibles, clochettes/cymbalettes, sample packs de métaux courts.
traitement live pouvant réduire les samples: EQ dynamique, transient shaping, pitch, random start, microtiming, envelopes.
génération / modélisation réaliste: grains synthétiques possibles ; timbres réels utiles si brillance exposée.
statut recommandé: HYBRID_REQUIRED, corpus léger.
minimum pré-live: 6–10 sons courts.
idéal prudent: 12–18 si plusieurs registres d’aigus sont nécessaires.
samples concrets à constituer si nécessaire: clochettes courtes, attaques métalliques sèches, cymbalettes, frottements courts, souffles courts.
risques principaux: aigus fatigants, exotisme, ornement gratuit, perte du corps.
prochaine action: tester fatigue et lisibilité avant d’élargir.
```

## 4.13 Frictions / raclages / matières rugueuses

```text
sample_need_id: sample_need_friction_roughness_01
source esthétique / phénoménale: torsion résonante ; intensité sans agression ; contour sculpté ; sound design écologique.
besoin musical / phénomène: friction, tension, rugissement, matière rugueuse, transition.
fonction ou ambition servie: tension non agressive, torsion, pression, intensité physique.
rôle scène / trajectoire: torsion ; build-up de matière ; transition ; tension continue ; matière qui se resserre.
candidats source possibles: métaux frottés, bois raclés, pierres, surfaces rugueuses, frottements graves.
existant à vérifier: objets disponibles, enregistrements possibles, textures déjà présentes.
traitement live pouvant réduire les samples: time-stretch, filtering, spectral freeze, granulation, resonators, saturation, dynamic EQ.
génération / modélisation réaliste: bruit contrôlé possible ; geste réel détaillé mieux samplé si exposé.
statut recommandé: MINIMAL_SAMPLE_SET ou DEFER selon importance.
minimum pré-live: 4–6 gestes si besoin confirmé.
idéal prudent: 8–12 si plusieurs transitions utilisent cette matière.
samples concrets à constituer si nécessaire: frottements longs, raclages courts, grincements graves, attaques irrégulières.
risques principaux: agressivité inutile, cliché industriel, fatigue, masque voix/sub.
prochaine action: différer si aucune scène ne réclame encore cette friction.
```

## 4.14 Hypnose active / répétition non redondante

```text
sample_need_id: sample_need_hypnosis_variation_01
source esthétique / phénoménale: hypnose active ; répétition non redondante ; techno naturalisée ; polytexture.
besoin musical / phénomène: retour perceptible, micro-variation, stabilité vivante, mutation lente.
fonction ou ambition servie: éviter boucle morte tout en conservant cadre techno.
rôle scène / trajectoire: cadre hypnotique ; mutation lente ; répétition → suspension ; stabilisation après complexité.
candidats source possibles: impact-fondation, sub stable, polytexture, voix rythmée, didgeridoo pulsé, clochettes répétitives.
existant à vérifier: boucles ou fragments déjà disponibles ; micro-impacts déjà suffisants.
traitement live pouvant réduire les samples: probability, microtiming, random start contrôlé, modulation lente, slicing, enveloppes.
génération / modélisation réaliste: très utile pour placement, densité, micro-variation et mutation lente.
statut recommandé: NO_SAMPLE_GENERATE + HYBRID_REQUIRED.
minimum pré-live: 0 sample spécifique si les objets des autres lignes suffisent.
idéal prudent: aucun corpus séparé ; réutiliser impacts, micro-impacts, voix ou sources existantes.
samples concrets à constituer si nécessaire: seulement si un motif acoustique réel devient central et non remplaçable.
risques principaux: variation gratuite, répétition morte, perte d’identité, texture ambient.
prochaine action: traiter comme stratégie de transformation / engine, pas comme besoin autonome de samples.
```

## 4.15 Tension syncopée / attente / résolution

```text
sample_need_id: sample_need_syncopated_tension_resolution_01
source esthétique / phénoménale: dubstep déconstruit ; tension syncopée ; pré-drop ; résolution corporelle ; scènes performatives.
besoin musical / phénomène: attente, retard, syncope de masse, résolution rythmique / corporelle / spectrale.
fonction ou ambition servie: préparer et résoudre sans formule dubstep plaquée.
rôle scène / trajectoire: pré-drop naturalisé ; fausse résolution ; sub retenu ; voix fragmentée → cri ; gong préparé → rugissement.
candidats source possibles: sub, impact, gong, voix criée/coupée, polytexture, halo, percussions graves.
existant à vérifier: objets déjà présents dans lignes gongs / voix / impacts / polytexture.
traitement live pouvant réduire les samples: mutes, slicing, reverse, queue coupée, sub withholding, ducking, probabilités.
génération / modélisation réaliste: forte pour timing, vide/plein, retenue et réalignement ; faible pour l’objet acoustique central de résolution.
statut recommandé: HYBRID_REQUIRED, pas de corpus séparé au départ.
minimum pré-live: 0–4 samples spécifiques, seulement si gongs / voix / impacts existants ne suffisent pas.
idéal prudent: réutiliser les matériaux centraux déjà constitués.
samples concrets à constituer si nécessaire: cris courts, impacts de résolution, attaques métalliques, queues coupées de gong.
risques principaux: drop automatique, effet de style, syncope gratuite, résolution spectaculaire mais pauvre.
prochaine action: relier cette ligne aux scènes/trajectoires avant toute collecte.
```

## 4.16 Suspension / ouverture / expansion / peak non brutal

```text
sample_need_id: sample_need_suspension_expansion_peak_01
source esthétique / phénoménale: trance déconstruite ; espace / halo ; beauté autonome ; champs harmoniques.
besoin musical / phénomène: suspension corporelle, ouverture, expansion, peak sans brutalité.
fonction ou ambition servie: intensification lumineuse ou spatiale sans euphorie générique ni supersaw plastique.
rôle scène / trajectoire: suspension → expansion ; expansion → peak ; pré-drop → expansion ; halo → retour au corps.
candidats source possibles: gongs, bols, clochettes, voix étirées, field recordings, sub doux/retiré, résonateurs, percussions tonales.
existant à vérifier: queues / halos / voix / field recordings déjà disponibles.
traitement live pouvant réduire les samples: time-stretch, spectral freeze, convolution, widening prudent, sidechain / pumping comme respiration.
génération / modélisation réaliste: forte pour risers naturalisés, halos, ouverture harmonique, densité progressive.
statut recommandé: HYBRID_REQUIRED + REFERENCE_ONLY.
minimum pré-live: 0–4 sources exposées si nécessaires ; pas corpus autonome.
idéal prudent: réutiliser halos, field recordings, voix matière, gongs existants.
samples concrets à constituer si nécessaire: voix étirables, queue harmonique, source de halo, field recording court à expansion.
risques principaux: riser générique, perte du corps, euphorie standard, peak peu singulier.
prochaine action: définir les trajectoires d’expansion avant d’ajouter des sons.
```

## 4.17 Torsion résonante / ligne vivante

```text
sample_need_id: sample_need_resonant_torsion_line_01
source esthétique / phénoménale: acid déconstruit ; torsion résonante ; ligne vivante ; pitch / formants / partiels.
besoin musical / phénomène: matière vivante par résonance contrôlée, filtre, formants, glissements acoustiquement justifiés.
fonction ou ambition servie: hypnose par variation de timbre sans citation acid.
rôle scène / trajectoire: ligne vivante ; tension continue ; résonance → halo ; partiels resserrés → ouverture.
candidats source possibles: voix, didgeridoo, gong, bol, sub texturé, résonance filtrée, percussion tonale, field recording resserré.
existant à vérifier: sources tordables déjà présentes dans voix, didgeridoo, gongs, bols ou field recordings.
traitement live pouvant réduire les samples: filtre, formants, morphing, résonateurs, feedback contrôlé, microtonal pitch bend.
génération / modélisation réaliste: forte pour ligne de matière, résonance contrôlée, filtres ; faible pour identité de source exposée.
statut recommandé: NO_SAMPLE_GENERATE + HYBRID_REQUIRED.
minimum pré-live: 0 sample dédié ; utiliser sources déjà nécessaires si possible.
idéal prudent: seulement 2–4 sources tordables si aucune source existante ne suffit.
samples concrets à constituer si nécessaire: voyelle tenue, frottement résonant, queue de bol/gong, souffle de didgeridoo utilisable en torsion.
risques principaux: citation acid, squelch plaqué, nervosité excessive, torsion sans phénomène acoustique.
prochaine action: ne pas créer “samples acid”; tester les sources existantes comme matières tordables.
```

## 4.18 Champs harmoniques / microtensions / partiels

```text
sample_need_id: sample_need_harmonic_fields_partials_01
source esthétique / phénoménale: jazz comme matière ; pitch / harmoniques / microtonalité ; gongs / voix / didgeridoo / halos.
besoin musical / phénomène: harmonie comme matière, microtension, couleur, voicing distribué, partiels instables.
fonction ou ambition servie: relier sub, gongs, voix, didgeridoo, halos et résonateurs dans une cohérence harmonique non classique.
rôle scène / trajectoire: champ de tension ; microtension → résolution ; partiels instables → stabilisation ; voicing distribué → peak non brutal.
candidats source possibles: gongs, bols, cloches, voix, didgeridoo, sub, halos, résonateurs, percussions tonales.
existant à vérifier: sources avec partiels analysables ; capacité d’analyse spectrale ; hauteurs ressenties.
traitement live pouvant réduire les samples: analyse de partiels, partial alignment, pitch shifting subtil, harmonic tuning, spectral filtering.
génération / modélisation réaliste: forte pour résonateurs, champs et microtensions contrôlées ; faible pour complexité inharmonique réelle exposée.
statut recommandé: HYBRID_REQUIRED.
minimum pré-live: pas de corpus séparé ; dépend des gongs / bols / voix / cloches réellement utilisés.
idéal prudent: tags et analyses plutôt que nombreux samples.
samples concrets à constituer si nécessaire: seulement si une source réelle fournit des partiels indispensables à la scène.
risques principaux: flou harmonique, boue spectrale, perte du corps, harmonie plaquée.
prochaine action: ajouter metadata de partiels / hauteur ressentie aux assets, plutôt que collecter plus.
```

## 4.19 Beauté autonome / moment de matière

```text
sample_need_id: sample_need_autonomous_beauty_material_01
source esthétique / phénoménale: beauté autonome ; matière exposée ; espace / halo ; retour au corps.
besoin musical / phénomène: son pur, résonance, voix nue, instrument exposé, matière naturelle.
fonction ou ambition servie: respiration, point d’écoute, suspension formelle, préparation harmonique.
rôle scène / trajectoire: beauté autonome → suspension ; matière exposée → réincorporation ; exposition → halo ; exposition → fragmentation.
candidats source possibles: gong long, bol, voix nue, field recording presque intact, objet acoustique isolé, son pur.
existant à vérifier: sources déjà couvertes par gongs, voix, field recordings, bols, objets.
traitement live pouvant réduire les samples: tail control, spatialisation, filtrage minimal, spectral focus, limites temporelles.
génération / modélisation réaliste: possible pour halos et sons purs ; moins forte pour présence matérielle exposée.
statut recommandé: MINIMAL_SAMPLE_SET + DEFER selon rôle.
minimum pré-live: 2–4 sources si le rôle est confirmé.
idéal prudent: très peu ; un son fort vaut mieux qu’un corpus.
samples concrets à constituer si nécessaire: source nue rare, résonance longue, voix nue, field recording très fort.
risques principaux: parenthèse décorative, ambientisation, perte de tension, fascination sans conséquence formelle.
prochaine action: n’autoriser que si une trajectoire de retour / transformation est prévue.
```

## 4.20 Sound design comme écologie d’objets

```text
sample_need_id: sample_need_ecology_relations_01
source esthétique / phénoménale: sound design comme écologie d’objets ; BIOTA / Wildesign ; relations, densité, distance, masquage.
besoin musical / phénomène: relations entre matières, milieux sonores, densité, propagation, scènes de suspension.
fonction ou ambition servie: organiser des comportements sonores plutôt qu’empiler des sources.
rôle scène / trajectoire: texture relationnelle ; contrepoint naturel ; transition ; scène sonore ; post-résonance.
candidats source possibles: field recordings, eau, vent, pluie, feu, sol, voix, didgeridoo, procédural, micro-événements.
existant à vérifier: ressources naturelles déjà disponibles ; références de densité / distance / comportement.
traitement live pouvant réduire les samples: granulation, convolution, layering, random, density control, spatial filtering.
génération / modélisation réaliste: forte pour eau, pluie, vent, flux, densité, micro-événements et comportements.
statut recommandé: NO_SAMPLE_GENERATE + REFERENCE_ONLY, sauf scènes exposées.
minimum pré-live: 0–3 références de comportement.
idéal prudent: pas de corpus ; privilégier engines, relations et contrôles.
samples concrets à constituer si nécessaire: grains réels ou field recordings très courts servant de référence ou d’impulsion.
risques principaux: décor naturaliste, banque énorme, classes figées, masque, perte d’intention.
prochaine action: penser systèmes et relations avant samples.
```

---

# 5. Synthèse des décisions initiales révisées

## Samples probablement nécessaires mais en petit nombre

```text
gongs / métaux de résolution ;
impacts corporels acoustiques ;
peaux exposées ;
voix signal ;
voix matière ;
field recordings exposés ;
queues / résonances si les résonateurs ne suffisent pas ;
sources rares de beauté autonome si une trajectoire les justifie.
```

## Samples surtout comme référence ou matière secondaire

```text
didgeridoo ;
sub ;
élements naturels modélisables ;
certains grains d’eau / vent / feu / sol ;
certains micro-impacts secondaires ;
sources de torsion si sources existantes insuffisantes.
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
placement / densité de polytexture ;
hypnose par micro-variation ;
risers naturalisés ;
résonateurs / microtensions contrôlées ;
lignes de matière torsionnelles.
```

## Hybride probable

```text
peaux + sub / enveloppe / résonance ;
gong + renfort spectral / résonateur ;
voix + traitement formantique / granularité ;
field recording + spatialisation / granularité ;
eau réelle + procédural ;
micro-impacts réels + génération de placement ;
source réelle + torsion / filtrage / résonateur ;
partiels réels + accordage / alignement / résonance.
```

---

# 6. Ce qu’il ne faut pas encore faire

```text
chercher une grande banque de samples ;
commander ou télécharger des packs avant audit de l’existant ;
enregistrer beaucoup de variantes ;
faire des listes par instruments sans fonction ;
remplacer le live par confort ;
confondre phénomènes modélisables et instruments samplés ;
choisir des engines définitifs avant d’avoir validé les besoins ;
créer un corpus pour une source qui n’est reliée à aucune fonction / phénomène / trajectoire ;
collecter des sons naturels comme décor ;
créer des samples “acid”, “trance” ou “dubstep” au lieu de phénomènes naturalisés.
```

---

# 7. Prochaines actions

```text
1. Vérifier l’existant réel de Yohan : samples, enregistrements, instruments, objets.
2. Pour chaque ligne de cette table, tester conceptuellement le pouvoir de traitement live de 1–5 samples.
3. Marquer les besoins qui restent vraiment sample-nécessaires.
4. Transformer les besoins confirmés via 03_SAMPLE_NEEDS_TO_SOURCE_NEEDS_BRIDGE.
5. Créer seulement ensuite les fiches source_need prioritaires.
```

---

# 8. Liste courte des informations à demander à Yohan plus tard

```text
Quels instruments ou objets sont déjà disponibles physiquement ?
Quels enregistrements personnels existent déjà ?
Quels sons de voix sont acceptables ou désirables ?
Quels éléments naturels sont faciles à enregistrer ?
Quels samples / packs / bibliothèques possède-t-il déjà ?
Quels instruments sont prioritaires émotionnellement ou intuitivement ?
Quels sons seraient trop reconnaissables ou trop risqués ?
```
