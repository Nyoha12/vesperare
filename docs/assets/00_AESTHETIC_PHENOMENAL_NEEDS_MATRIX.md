# 00_AESTHETIC_PHENOMENAL_NEEDS_MATRIX

Version : v0.1  
Statut : matrice source pour besoins esthétiques, phénomènes, sources, samples et engines. Sans collecte audio, sans prototypage.

## Objet

Ce document corrige un point de méthode : les besoins de samples, d’assets ou d’engines ne doivent pas être déduits d’une liste intuitive de familles sonores.

Ils doivent d’abord être extraits de la complexité déjà définie dans les documents du projet :

```text
05_CARTOGRAPHIE_STYLE_PERSONNEL_TECHNO ;
06_CARTOGRAPHIE_INFLUENCES_STYLE_VESPERARE ;
01_CAHIER_DES_PHENOMENES_SONORES ;
07_PITCH_HARMONIQUES_MICROTONALITE ;
08_PERFORMANCE_SCENES_TRAJECTOIRES_OBJETS ;
10_SOUND_DESIGN_MIX_OUTILS_CONTRAINTES ;
modules récents ;
protocoles assets / source_needs.
```

Ce document sert donc d’étape amont pour :

```text
04_SAMPLE_NEEDS_INITIAL ;
03_SAMPLE_NEEDS_TO_SOURCE_NEEDS_BRIDGE ;
16_SOURCE_NEEDS_ASSET_DATABASE_PROTOCOL ;
future préparation d’assets ;
futurs tests de traitements live ;
futures décisions de génération / modélisation.
```

---

# 1. Règle de méthode

Avant de décider un sample, un corpus, un engine ou une modélisation, il faut passer par la chaîne suivante :

```text
besoin esthétique / fonction techno / influence / phénomène / trajectoire / scène / risque
→ fonction musicale précise
→ phénomène sonore souhaité
→ rôle dans scène ou trajectoire
→ dimensions concernées
→ objets ou sources possibles
→ ce qui peut être généré / traité / joué live / samplé
→ besoin réel minimal de samples
→ source_need éventuel
→ asset éventuel.
```

Un besoin de sample n’est donc jamais seulement :

```text
“il faut des gongs” ;
“il faut des voix” ;
“il faut de l’eau” ;
“il faut des peaux”.
```

Il doit être formulé comme :

```text
“il faut peut-être une source réelle ou un sample si une fonction / un phénomène / un rôle précis ne peut pas être obtenu par existant, traitement live, génération ou live input”.
```

---

# 2. Matrice des besoins esthétiques et phénoménaux

## 2.1 Techno naturalisée / conservation des fonctions techno

```text
source_docs: 05, 01, 08
besoin esthétique: conserver corps, impact, hypnose, pression, tension longue, efficacité performative, mais avec supports transformés.
fonctions: impact-fondation, pression corporelle, répétition, retour, résolution, hypnose active.
phénomènes: impact-fondation corporel ; pression spectrale corporelle ; hypnose active ; tension / résolution.
rôles possibles: fondation principale, retour au corps, masse de résolution, trace corporelle, peak corporel non agressif.
dimensions: corps, rythme, sub, pression, forme, lisibilité, scène.
objets / sources possibles: peaux, tambours profonds, objets frappés, gongs resserrés, didgeridoo filtré, sub synthétique, synthèse acoustique.
implication samples: samples probables seulement pour attaques réelles, peaux, objets singuliers, gongs centraux ; pas pour sub principal.
implication traitement live: un petit nombre d’impacts doit d’abord être testé avec transient shaping, enveloppe, pitch, hybridation sub, EQ dynamique.
implication génération: sub, pression grave et corps de soutien générables ; impact acoustique réel non entièrement remplaçable.
risques: kick standard, grave flou, queue longue, perte de danse, timbre illustratif, pression réduite au volume.
impact sur 04: les lignes corps / impact / sub / peaux doivent rester prioritaires, mais avec recherche du minimum de samples.
```

## 2.2 Intensité phénoménale sans agression

```text
source_docs: 05, 01
besoin esthétique: intensité forte, presque hardcore, sans agressivité gratuite.
fonctions: impact, pression, singularité, présence sur-réelle, peak non brutal.
phénomènes: intensité phénoménale ; pression spectrale ; masse de résolution ; surgissement.
rôles possibles: événement formel, drop naturalisé, peak non brutal, masse phénoménale, présence sur-réelle.
dimensions: intensité, spectre, corps, espace, forme, confort, densité.
objets / sources possibles: gongs rugissants, voix criées, sub contrôlé, didgeridoo massif, percussions profondes, field recordings transformés.
implication samples: quelques sources réelles fortes peuvent être nécessaires pour singularité et impact ; pas multiplication automatique.
implication traitement live: saturation contrôlée, compression, filtrage, gestion des queues, limites de harshness.
implication génération: utile pour pression, sub, renforts, densité ; insuffisante si l’intensité dépend d’une présence acoustique singulière.
risques: harshness, fatigue, volume punitif, spectacle pauvre, surcharge.
impact sur 04: tout besoin sample central doit être justifié par singularité matérielle ou fonction de résolution, pas par envie d’intensité générique.
```

## 2.3 Contour sculpté / netteté sensible

```text
source_docs: 05, 01
besoin esthétique: sons dessinés, attaques lisibles, queues maîtrisées, richesse non floue.
fonctions: articulation, ponctuation, accent, contrôle de queue, lisibilité.
phénomènes: contour sculpté ; netteté sensible ; attaque / queue contrôlées.
rôles possibles: accent, saillance, signal rythmique, limite de halo, préparation de résolution.
dimensions: attaque, queue, rythme, lisibilité, densité, fonction.
objets / sources possibles: peaux courtes, bois frappés, petits métaux mats, voix coupées, cymbalettes contrôlées, impacts resserrés.
implication samples: samples utiles si l’attaque réelle ou la queue naturelle importent ; mais édition et traitement peuvent réduire la quantité.
implication traitement live: transient / tail split, envelope shaping, gate, EQ dynamique, tail budget, ducking.
implication génération: très utile pour enveloppes, transitoires secondaires, grains courts ; moins convaincante pour matières exposées singulières.
risques: son mort, trop sec, trop résonant, attaque illisible, ornement sans rôle.
impact sur 04: les besoins de micro-impacts et peaux doivent préciser attaque / queue / rôle, pas seulement source.
```

## 2.4 Répétition non redondante / hypnose active

```text
source_docs: 05, 01, 08
besoin esthétique: répétition techno vivante, portée par corps, détail, mutation lente et stabilité.
fonctions: cadre, retour perceptible, micro-variation, continuité, mutation contrôlée.
phénomènes: hypnose active ; ligne vivante ; répétition → suspension ; mutation lente.
rôles possibles: motif porteur, cadre hypnotique, ligne vivante, retour corporel, continuité de scène.
dimensions: temps, rythme, forme, mutation, corps, stabilité, variation.
objets / sources possibles: impact-fondation, sub stable, polytexture, didgeridoo pulsé, voix rythmée, clochettes répétitives, percussions tonales.
implication samples: besoin de variantes seulement si les traitements ne suffisent pas à maintenir la micro-variation sans tuer l’identité.
implication traitement live: probability, microtiming, random start contrôlé, variation d’enveloppe, modulation lente, slicing.
implication génération: forte pour placement, densité, mutation lente et micro-variation ; faible pour identité acoustique centrale.
risques: variation gratuite, répétition morte, texture ambient, perte du corps.
impact sur 04: les quantités de micro-impacts doivent dépendre du pouvoir de variation live, pas d’un goût pour collections.
```

## 2.5 Brillance rythmique naturalisée

```text
source_docs: 05, 01
besoin esthétique: remplacer ou déplacer les fonctions hats/rides/micro-percussions sans décor naturaliste.
fonctions: grille lisible, propulsion, vitesse, détail, électricité, signal de densification.
phénomènes: brillance rythmique naturalisée ; micro-pulsation ; texture rythmique.
rôles possibles: contretemps, propulsion légère, préparation de montée, pré-drop fragmenté.
dimensions: aigu, temps, rythme, brillance, confort, lisibilité, propulsion.
objets / sources possibles: insectes, oiseaux, froissements, grains, clochettes, cymbalettes, petits métaux, souffles courts, micro-objets.
implication samples: quelques sons réels courts peuvent servir, mais beaucoup peut être généré ou traité ; corpus large seulement si rôle central.
implication traitement live: slicing, pitch, EQ, vélocité, random start, microtiming, transient shaping.
implication génération: forte pour micro-événements, densité, placement, bruit filtré ; plus faible pour timbres exposés.
risques: aigus fatigants, bruit blanc organique, décor naturaliste, ornement sans propulsion.
impact sur 04: maintenir brillance rythmique en HYBRID_REQUIRED léger, pas banque décorative.
```

## 2.6 Polytexture percussive raffinée

```text
source_docs: 05, 01, 08
besoin esthétique: interlocking, groove composite, densité articulée, harmonie de timbres percussifs, complexité lisible.
fonctions: enrichir l’énergie, complexifier sans perdre le cadre, articuler des accents.
phénomènes: polytexture percussive raffinée ; densification ; complexité lisible ; finesse d’accentuation.
rôles possibles: contrepoint, maintien d’énergie sans kick dominant, préparation de résolution, réponse à instrument live.
dimensions: rythme, densité, lisibilité, accent, timbre, interlocking, mid_load.
objets / sources possibles: peaux, bois, cloches, petits métaux, percussions tonales, fragments vocaux, field recordings découpés.
implication samples: corpus ciblé possible, mais par rôle et registre, pas par collection d’objets ; micro-samples nécessaires si timbres acoustiques singuliers.
implication traitement live: placement génératif, probability, microtiming, filtrage, hiérarchie d’accents, humanisation contrôlée.
implication génération: forte pour organisation/placement/densité ; insuffisante pour richesse timbrale acoustique centrale.
risques: virtuosité décorative, médium chargé, confusion des accents, style importé, trop de couches équivalentes.
impact sur 04: la ligne polytexture doit rester ciblée et liée aux rôles rythmiques.
```

## 2.7 Espace musical occupé / halo fonctionnel

```text
source_docs: 05, 01, 08, 10
besoin esthétique: profondeur, présence, scène, mystère, halo, espace non décoratif.
fonctions: suspension, post-résonance, expansion, liaison entre objets, trace d’événement, scène nocturne.
phénomènes: espace musical occupé ; halo fonctionnel ; post-résonance ; beauté autonome.
rôles possibles: halo, profondeur, suspension, expansion, beauté autonome, trace.
dimensions: espace, halo, queue, résonance, proximité, lisibilité, confort.
objets / sources possibles: gongs, bols, cloches, espaces enregistrés, voix spatialisée, résonateurs, field recordings transformés.
implication samples: samples utiles pour queues réelles, impulses, lieux exposés ; génération/résonateurs utiles pour halos fonctionnels.
implication traitement live: convolution, résonateurs, spectral freeze, ducking, tail control, spatialisation.
implication génération: forte pour résonance synthétique / modale ; faible pour lieux très identifiables ou beauté de source exposée.
risques: ambientisation, halo permanent, perte d’impact, flou rythmique, espace décoratif.
impact sur 04: halo/field recordings doivent être limités par rôle, exposition et tail budget.
```

## 2.8 Voix comme matière, instrument ou signal

```text
source_docs: 05, 01, 06, 08
besoin esthétique: voix présente sans devenir chanson ; signal, matière, cri, hook minimal, présence humaine.
fonctions: signal formel, impact vocal, texture, halo, pré-drop vocal, humanité, rupture.
phénomènes: voix signal ; voix matière ; voix-halo ; cri → résolution ; intelligibilité → abstraction.
rôles possibles: signal, fragment rythmique, cri armé, masse de résolution, présence autonome, objet sémantique ponctuel.
dimensions: présence, sémantique, rythme, formants, harmonie, texture, espace.
objets / sources possibles: voix parlée, souffle, mot isolé, voix coupée, voix brute, cri, formant, parole semi-compréhensible.
implication samples: samples probablement nécessaires pour présence humaine, signal, cri, sémantique ; live aussi prioritaire selon rôle.
implication traitement live: formant shift, granulation, slicing, delay, spectral freeze, spatialisation, filtre.
implication génération: utile pour renforts formantiques ou textures synthétiques ; insuffisante pour vraie présence signal.
risques: chanson, gimmick, sur-signification, centre trop dominant, perte d’énergie techno.
impact sur 04: séparer voix signal, matière, souffle, sémantique avant toute collecte.
```

## 2.9 Beauté autonome / moment de matière

```text
source_docs: 05, 01, 07, 08
besoin esthétique: autoriser son pur, résonance, voix nue, instrument exposé, matière de nature, sans perdre la forme.
fonctions: respiration, suspension formelle, point d’écoute, préparation harmonique, contrepoint à l’efficacité techno.
phénomènes: beauté autonome ; matière exposée ; partiels exposés ; halo harmonique.
rôles possibles: matière exposée, respiration, trace poétique, source de réincorporation.
dimensions: matière, forme, temps, espace, harmoniques, attention, retour au corps.
objets / sources possibles: gong long, bol, voix nue, field recording presque intact, objet acoustique isolé, son pur.
implication samples: samples réels nécessaires si la beauté dépend d’une qualité acoustique singulière ; sinon résonateurs/génération peuvent suffire.
implication traitement live: tail control, spatialisation, filtrage minimal, spectral focus, limites temporelles.
implication génération: possible pour halos et sons purs ; moins forte pour présence matérielle exposée.
risques: parenthèse décorative, ambientisation, perte de tension, fascination sans conséquence formelle.
impact sur 04: les samples de beauté autonome doivent rester rares et reliés à une trajectoire de retour ou de transformation.
```

## 2.10 Tension syncopée / attente / résolution

```text
source_docs: 06, 01, 08
besoin esthétique: syncope de rythme, masse, sub, voix, gong, halo ou spectre ; attente ; drop rare ; résolution corporelle.
fonctions: préparer, retenir, fragmenter, retarder, résoudre, réaligner.
phénomènes: tension syncopée ; pré-drop ; sub retenu ; voix fragmentée ; gong préparé ; polytexture désalignée.
rôles possibles: préparation de drop, attente corporelle, résolution rythmique, résolution spectrale, fausse résolution.
dimensions: rythme, forme, sub, corps, spectre, microtonalité, espace, contrôle live.
objets / sources possibles: sub, impact, gong, voix criée/coupée, polytexture, halo, bruits courts, percussions graves.
implication samples: besoin réel de samples pour gongs/voix/impacts si résolution exige présence singulière ; placement et attente plutôt générables.
implication traitement live: mutes, slicing, randomisation contrôlée, reverse, queue coupée, sub withholding, ducking.
implication génération: forte pour timing, vide/plein, probabilités, retenue ; faible pour objet de résolution acoustique central.
risques: effet dubstep plaqué, drop automatique, syncope gratuite, wobble/brostep trop explicite.
impact sur 04: relier gongs, voix, sub, polytexture aux trajectoires de résolution, pas comme familles indépendantes.
```

## 2.11 Suspension / ouverture / expansion / peak non brutal

```text
source_docs: 06, 01, 08
besoin esthétique: ouverture progressive, suspension corporelle, expansion de matière, peak sans brutalité.
fonctions: ouvrir, suspendre, élargir, intensifier, revenir au corps.
phénomènes: suspension ; expansion ; peak spatial / harmonique / matériel ; build-up naturalisé.
rôles possibles: suspension, ouverture, respiration de scène, retour doux au corps, peak harmonique.
dimensions: espace, halo, harmoniques, partiels, corps, forme, brillance, largeur, confort.
objets / sources possibles: gongs, bols, clochettes, voix étirées, field recordings, sub doux/retiré, résonateurs, percussions tonales.
implication samples: samples utiles pour voix/gongs/field recordings exposés ; procédural/résonateurs utiles pour montée et ouverture.
implication traitement live: time-stretch, spectral freeze, convolution, widening prudent, sidechain/pumping comme respiration.
implication génération: forte pour risers naturalisés, halos, ouverture harmonique, densités progressives.
risques: riser générique, supersaw plastique, euphorie standard, perte du corps.
impact sur 04: éléments naturels et halos peuvent être générés prioritairement ; samples seulement pour sources exposées.
```

## 2.12 Torsion résonante / ligne vivante

```text
source_docs: 06, 01, 07, 08
besoin esthétique: ligne vivante, torsion, résonance contrôlée, mutation timbrale, hypnose par variation de timbre.
fonctions: faire vivre une matière, créer tension continue, filtrer comme geste, transformer sans citation acid.
phénomènes: torsion résonante ; ligne vivante ; formant motion ; partial bend ; filtre comme phénomène acoustique.
rôles possibles: ligne vivante, mutation timbrale, acidité dosée, tension continue, variation interne.
dimensions: timbre, résonance, partiels, formants, pitch ressenti, microtonalité, geste live.
objets / sources possibles: voix, didgeridoo, gong, bol, sub texturé, résonance filtrée, percussion tonale, field recording resserré.
implication samples: samples utiles si torsion part d’un objet réel reconnaissable ; sinon engine/résonateur/filtre peut porter la ligne.
implication traitement live: filtre, formants, résonateurs, morphing, feedback contrôlé, microtonal pitch bend.
implication génération: forte pour ligne de matière, résonance contrôlée, filtres ; faible pour identité de source exposée.
risques: citation acid, squelch plaqué, nervosité excessive, torsion sans phénomène acoustique.
impact sur 04: ne pas créer “samples acid”; créer/choisir sources tordables si un rôle l’exige.
```

## 2.13 Champs harmoniques / microtensions / partiels

```text
source_docs: 06, 07, 01, 08
besoin esthétique: harmonie comme matière, tension, couleur, voicing distribué, micro-instabilité, relation entre partiels.
fonctions: champ de tension, couleur, préparation de résolution, ouverture harmonique, beauté autonome harmonique.
phénomènes: champ harmonique ; microtension ; stabilisation ; partiels instables ; halo accordé.
rôles possibles: champ de tension, couleur d’accord, microtension, stabilisation, ouverture, résolution.
dimensions: pitch, hauteur ressentie, partiels, formants, harmonie, microtonalité, sub, halo, forme.
objets / sources possibles: gongs, bols, cloches, voix, didgeridoo, sub, halos, résonateurs, percussions tonales.
implication samples: samples nécessaires quand les partiels réels de gongs/voix/bols/cloches structurent l’harmonie ; sinon résonateurs/synthèse peuvent suffire.
implication traitement live: analyse de partiels, partial alignment, pitch shifting subtil, harmonic tuning, spectral filtering.
implication génération: forte pour résonateurs, champs, microtensions contrôlées ; faible pour complexité inharmonique réelle exposée.
risques: flou harmonique, boue spectrale, perte du corps, harmonie plaquée, complexité ingérable.
impact sur 04: ajouter aux besoins de samples une question : la source fournit-elle des partiels indispensables ou seulement une couleur remplaçable ?
```

## 2.14 Sound design comme écologie d’objets

```text
source_docs: 10, ressources Wildesign / BIOTA / eau
besoin esthétique: penser relations, écosystèmes, densité, distance, masquage, propagation, stacking, processus par couches.
fonctions: organiser milieux sonores, relations entre objets, densité, distance, comportement.
phénomènes: biophonie/géophonie/anthropophonie comme facettes ; géophonie procédurale ; texture relationnelle ; scène sonore.
rôles possibles: halo, texture, contrepoint naturel, post-résonance, transition, beauté autonome, scène de suspension.
dimensions: densité, spectre, espace, distance, masquage, variation, couche, comportement.
objets / sources possibles: field recordings, eau, vent, pluie, gouttes, feu, sol, voix, didgeridoo, polytextures, procédural.
implication samples: samples utiles comme références, grains, textures exposées ou lieux ; pas comme décor massif.
implication traitement live: granulation, convolution, layering, random, density control, spatial filtering.
implication génération: forte pour eau, pluie, vent, grains, flux, densité, micro-événements.
risques: décor naturaliste, banque énorme, classes biophonie/géophonie figées, masquage.
impact sur 04: confirmer génération prioritaire pour éléments naturels, mais garder possible sample exposé ou grain réel si fonctionnel.
```

---

# 3. Conséquences directes pour `04_SAMPLE_NEEDS_INITIAL`

`04_SAMPLE_NEEDS_INITIAL` doit être relu à travers cette matrice.

## Lignes à conserver mais enrichir

```text
corps / impact / fondation ;
peaux / percussions réelles exposées ;
résolution métallique / gong central ;
halo / post-résonance ;
sub / pression grave ;
voix signal ;
voix matière ;
didgeridoo live / références ;
field recordings exposés ;
élements naturels modélisables ;
polytexture / micro-impacts ;
brillance rythmique naturalisée ;
frictions / raclages ;
```

## Lignes à ajouter ou mieux expliciter

```text
répétition non redondante / hypnose active ;
tension syncopée / attente / résolution ;
suspension / ouverture / expansion / peak non brutal ;
torsion résonante / ligne vivante ;
champs harmoniques / microtensions / partiels ;
beauté autonome / moment de matière ;
sound design comme écologie d’objets.
```

## Correction de méthode

Dans `04`, chaque besoin doit désormais contenir un champ :

```text
source esthétique / phénoménale :
```

avec référence à une ou plusieurs entrées de cette matrice.

Et un champ :

```text
rôle dans scène / trajectoire :
```

pour éviter de décider des samples hors contexte performatif.

---

# 4. Ordre de travail corrigé

```text
1. Lire les besoins depuis cette matrice.
2. Vérifier si le besoin est déjà couvert par existant / live / génération / traitement.
3. Décider seulement ensuite si un sample est nécessaire.
4. Si sample nécessaire : quantité minimale d’abord.
5. Transformer le besoin confirmé en source_need via 03_SAMPLE_NEEDS_TO_SOURCE_NEEDS_BRIDGE.
```

---

# 5. Question directrice

Pour chaque besoin :

```text
Ce besoin vient-il réellement d’une fonction, d’un phénomène, d’une trajectoire, d’une scène ou d’une contrainte esthétique de Vesperare,
ou seulement d’une envie de source sonore ?
```

S’il vient seulement d’une envie de source sonore, il doit rester dans l’inventaire des candidates, pas devenir sample_need.
