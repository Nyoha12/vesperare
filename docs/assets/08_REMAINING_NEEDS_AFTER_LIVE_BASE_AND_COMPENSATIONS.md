# 08_REMAINING_NEEDS_AFTER_LIVE_BASE_AND_COMPENSATIONS

Version : v0.1  
Statut : matrice d’analyse. Sans décision d’instrument supplémentaire, sans sample confirmé, sans prototypage.

## Objet

Ce document sert à identifier les besoins du style Vesperare qui restent faibles, incomplets ou dépendants de compensation après avoir posé :

```text
sources live fixes : didgeridoo + guimbardes ;
source engine centrale : sub / pression grave ;
sources live optionnelles : gong + tambour sur cadre ;
compensations obligatoires si gong ou tambour absents ;
besoin vocal minimal conditionnel ;
besoin field recording minimal conditionnel.
```

Il prépare la prochaine étape : rouvrir les instruments / sources candidates supplémentaires, mais seulement à partir de besoins encore mal couverts.

Il ne sert pas à ajouter des instruments parce qu’ils sont intéressants en eux-mêmes.

---

# 1. Base actuelle

## 1.1 Toujours présent

```text
didgeridoo live ;
guimbardes live ;
sub / pression engine ;
traitements / résonateurs / protections à définir ;
zéro sample initial comme point de départ.
```

## 1.2 Présence conditionnelle

```text
gong live parfois ;
tambour sur cadre live parfois ;
voix live non fixée ;
field recordings non présents au départ.
```

## 1.3 Compensation obligatoire

```text
si fonction de gong nécessaire et gong absent : compensation obligatoire ;
si fonction de tambour/peau nécessaire et tambour absent : compensation obligatoire ;
si fonction vocale humaine réelle nécessaire et voix non live : fragments minimaux ou solution dédiée ;
si lieu réel exposé nécessaire : field recording minimal.
```

---

# 2. Échelle d’évaluation

```text
COVERED_BY_LIVE_FIXED: couvert par didgeridoo + guimbardes.
COVERED_BY_ENGINE: couvert par engine sub / traitement / résonateur.
COVERED_IF_OPTIONAL_PRESENT: couvert si gong ou tambour live est présent.
COMPENSATION_REQUIRED_IF_ABSENT: manque à compenser si source optionnelle absente.
PARTIALLY_COVERED: couvert partiellement mais encore fragile.
OPEN_NEED: besoin encore mal couvert, candidat à instruments/sources supplémentaires.
DEFER: besoin à reporter tant que les scènes ne l’exigent pas.
```

---

# 3. Matrice des besoins restants

## 3.1 Corps / pression / sub

```text
besoin: corps, pression grave, retour au corps, continuité physique.
base: didgeridoo + sub engine.
status: COVERED_BY_LIVE_FIXED + COVERED_BY_ENGINE.
fragilité: relation didgeridoo/sub encore à calibrer ; risque de boue ou sub générique.
manque restant: pas besoin prioritaire d’instrument supplémentaire.
prochaine action: material_asset didgeridoo + engine sub profile, pas recherche d’instrument.
```

## 3.2 Impact / peau / attaque corporelle

```text
besoin: impact acoustique, peau, grain humain, retour au corps par attaque.
base: tambour si présent ; compensation obligatoire si absent.
status: COVERED_IF_OPTIONAL_PRESENT + COMPENSATION_REQUIRED_IF_ABSENT.
fragilité: si tambour absent, génération peut devenir kick générique ; samples nécessaires si grain de peau réel exposé.
manque restant: attaque corporelle non standardisée.
instruments/sources à rouvrir plus tard: autres peaux, objets frappés, percussions non folklorisantes, matériaux corporels frappés.
priorité: moyenne à haute, seulement après validation des besoins de scènes.
```

## 3.3 Masse métallique / gong / résolution

```text
besoin: masse métallique, partiels inharmoniques, halo de gong, résolution formelle.
base: gong si présent ; compensation obligatoire si absent.
status: COVERED_IF_OPTIONAL_PRESENT + COMPENSATION_REQUIRED_IF_ABSENT.
fragilité: si gong absent, génération seule peut manquer de réalité ; sample minimal possible.
manque restant: masse métallique réelle et queue riche si aucun gong live.
instruments/sources à rouvrir plus tard: autres métaux résonants, cloches, cymbales, bols, plaques, vibraphone, cloches tubulaires.
priorité: haute si scènes de résolution métallique confirmées.
```

## 3.4 Micro-pulse / brillance rythmique / polytexture fine

```text
besoin: micro-pulsation, brillance rythmique, voix-sans-voix, polytexture articulée.
base: guimbardes live.
status: COVERED_BY_LIVE_FIXED.
fragilité: risque de fatigue aiguë, gimmick, accumulation de formants.
manque restant: extension possible vers micro-métaux ou bois seulement si guimbardes ne suffisent pas.
instruments/sources à rouvrir plus tard: petites cloches, cymbalettes, objets fins, vibraphone préparé, percussions fines.
priorité: basse à moyenne, car la base est déjà forte.
```

## 3.5 Torsion / ligne vivante / acidité naturalisée

```text
besoin: ligne vivante, torsion, variation timbrale, tension mobile sans citation acid directe.
base: guimbardes + didgeridoo + résonateurs.
status: PARTIALLY_COVERED.
fragilité: les guimbardes couvrent bien le micro/formant ; le didgeridoo couvre le grave ; il peut manquer une ligne intermédiaire soutenue.
manque restant: ligne de torsion médium / mélodique / résonante non synthé-générique.
instruments/sources à rouvrir plus tard: anches, cuivres, cordes frottées, voix traitée, synthèse physique, feedback contrôlé.
priorité: moyenne.
```

## 3.6 Harmonie / partiels / champs microtonaux

```text
besoin: tensions harmoniques, partiels, champs microtonaux, beauté autonome, battements.
base: gong si présent, guimbardes, didgeridoo, sub/pitch_center.
status: PARTIALLY_COVERED.
fragilité: base riche mais pas forcément capable de créer des champs harmoniques soutenus, larges ou polyphoniques.
manque restant: matière harmonique tenue, battements, accords/agrégats, halos harmoniques non ambient.
instruments/sources à rouvrir plus tard: shruti box, orgue, cordes frottées, bols, cloches, vibraphone, harpes, cuivres doux, anches.
priorité: haute pour la prochaine phase de recherche d’instruments.
```

## 3.7 Suspension / expansion / trance naturalisée

```text
besoin: ouverture, expansion, montée, suspension active, tension longue.
base: didgeridoo, sub retenu, gong/halo si présent, field recording conditionnel, résonateurs.
status: PARTIALLY_COVERED.
fragilité: risque d’ambientisation si halo trop décoratif ; risque de montée techno standard si trop synthétique.
manque restant: source capable d’expansion harmonique ou respiratoire sans décor.
instruments/sources à rouvrir plus tard: shruti, orgue, cordes, cuivres longs, anches, voix matière, field recordings très choisis.
priorité: moyenne à haute.
```

## 3.8 Voix / signal humain / parole fragmentée

```text
besoin: signal humain, souffle vocal, cri, parole fragmentée, présence humaine directe.
base: didgeridoo + guimbardes couvrent voix-sans-voix mais pas toujours voix humaine réelle.
status: CONDITIONAL.
fragilité: si scène exige signal humain réel, live non fixé ; fragments minimaux nécessaires.
manque restant: présence vocale réelle si fonction validée.
instruments/sources à rouvrir plus tard: voix live, fragments vocaux, anches/cuivres comme voix-sans-voix seulement.
priorité: à confirmer par scènes.
```

## 3.9 Lieu réel / field recordings / mémoire

```text
besoin: lieu exposé, profondeur réelle, mémoire, microtexture environnementale.
base: génération/espace/résonateurs peuvent couvrir l’espace abstrait.
status: CONDITIONAL.
fragilité: si un lieu réel est exposé, génération insuffisante.
manque restant: field recordings minimaux si identité de lieu ou mémoire réelle confirmée.
instruments/sources à rouvrir plus tard: lieux réels, eau/pluie/vent/feu/orage uniquement si fonctionnels, pas décoratifs.
priorité: à confirmer par scènes.
```

## 3.10 Natural elements / procédural ecosystems

```text
besoin: eau, pluie, vent, feu, orage, gouttes, flux, micro-événements naturels.
base: génération/procédural à analyser ; field recordings si exposés.
status: PARTIALLY_COVERED_BY_GENERATION_TO_ANALYZE.
fragilité: risque bruitage, décor nature, démonstration de sound design.
manque restant: générateurs naturels contrôlés ou prises minimales si événement réel exposé.
instruments/sources à rouvrir plus tard: procedural water/rain/wind, field grains, objets réels, surfaces, matières.
priorité: moyenne, dépend de scènes.
```

## 3.11 Bois / cordes pincées / harpes / guitares

```text
besoin potentiel: attaques organiques, résonances courtes, beauté, tension harmonique, matière fragile.
base: non couvert directement par didgeridoo/guimbardes/sub.
status: OPEN_NEED_POTENTIAL.
fragilité: risque décoratif, folk, guitare/harpe trop identifiables, éloignement techno.
manque restant: résonances pincées organiques si nécessaires aux champs harmoniques ou à la beauté autonome.
instruments/sources à rouvrir plus tard: harpes, guitares, cordes pincées, objets tendus.
priorité: moyenne après analyse harmonie/beauty.
```

## 3.12 Anches / vents / cuivres

```text
besoin potentiel: voix-sans-voix, cris, signaux, tension, souffle, formants, lignes vivantes.
base: didgeridoo + guimbardes couvrent déjà beaucoup de souffle/bouche/formants.
status: OPEN_NEED_POTENTIAL.
fragilité: risque d’ajouter des doublons ; intérêt surtout si besoin de registre, couleur ou ligne non couvert.
manque restant: cris/voix-sans-voix médiums/aigus, lignes tenues, signaux harmoniques.
instruments/sources à rouvrir plus tard: trompettes/cuivres, hautbois, bassons, anches, flûtes.
priorité: moyenne, à cibler par fonction.
```

## 3.13 Orgue / shruti / bourdons

```text
besoin potentiel: masse harmonique, souffle tenu, battements, expansion, architecture.
base: didgeridoo donne souffle grave ; sub donne centre ; mais pas champ harmonique large.
status: OPEN_NEED_HIGH.
fragilité: risque décor sacré, ambientisation, majesté trop évidente.
manque restant: champ harmonique soutenu non décoratif, battements, tension longue.
instruments/sources à rouvrir plus tard: shruti box, orgue, harmonium, bourdons traités.
priorité: haute pour la prochaine phase.
```

## 3.14 Cloches / vibraphone / bols / métaux accordés

```text
besoin potentiel: partiels, brillance contrôlée, beauté autonome, signaux harmoniques, microtensions.
base: gong/guimbardes couvrent métal macro/micro mais pas forcément métal accordé ou stable.
status: OPEN_NEED_MEDIUM_HIGH.
fragilité: risque de décor féerique, new age, carillon, cloche illustrative.
manque restant: métal harmonique précis, partiels contrôlés, signaux ponctuels.
instruments/sources à rouvrir plus tard: vibraphone, cloches, cloches tubulaires, bols, cymbales accordées.
priorité: moyenne à haute.
```

---

# 4. Synthèse des besoins encore vraiment ouverts

Les besoins les plus ouverts après la base live + compensations sont :

```text
champs harmoniques soutenus ;
battements / microtonalité élargie ;
expansion / suspension non ambient ;
ligne de torsion médium ou aiguë ;
voix humaine réelle si scène l’exige ;
lieu réel si scène l’exige ;
éléments naturels procéduraux ou réels si fonctionnels ;
résonances pincées / frappées organiques si besoin de beauté ou tension ;
métaux accordés / cloches / vibraphone si besoin de partiels contrôlés.
```

---

# 5. Ce que la prochaine recherche d’instruments doit éviter

```text
ajouter des instruments parce qu’ils sont beaux ;
faire une liste de possibles sans lien aux manques ;
remplacer des sources déjà fortes ;
multiplier les couleurs ;
folkloriser tambours / guimbardes / didgeridoo ;
ambientiser par orgue, field recordings ou halos ;
faire du gong/cloche/vibraphone un décor ;
faire des voix un gimmick ;
faire des cuivres/anches un effet dramatique plaqué.
```

---

# 6. Prochaine action recommandée

Créer ensuite :

```text
09_TARGETED_ADDITIONAL_INSTRUMENTS_FROM_REMAINING_NEEDS.md
```

Objectif : rouvrir les instruments candidats supplémentaires en partant de cette matrice, avec pour chaque source :

```text
besoin restant visé ;
fonction couverte ;
risques ;
mode possible : live / sample / génération / référence ;
priorité ;
raison de ne pas l’ajouter si la base suffit.
```
