# AUDIT COHERENCE POST AUDITS CANDIDATS A B C D AVANT CANDIDATS LOURDS VESPERARE v0.1

Projet : Vesperare
Date : 2026-06-24
Statut : audit de coherence, non-implementation

Sources internes principales :

- `AUDIT_CANDIDATS_ROUTAGE_DIRECT_SAFE_TRANSITIONS_MAX_STANDALONE_VESPERARE_v0_1.md`
- `AUDIT_CANDIDATS_COMMANDES_LIVE_SCHEDULER_SIGNALISATION_MAX_STANDALONE_VESPERARE_v0_1.md`
- `AUDIT_CANDIDATS_GENERATION_RYTHMIQUE_MOTIFS_TIMING_MAX_STANDALONE_VESPERARE_v0_1.md`
- `AUDIT_CANDIDATS_GENERATION_TIMBRALE_NATURALISATION_TRANSFORMATIONS_MAX_STANDALONE_VESPERARE_v0_1.md`
- `MATRICE_FONCTIONS_CRITICITE_LATENCE_CHEMINS_MAX_STANDALONE_VESPERARE_v0_1.md`
- `MATRICE_EXCLUSIONS_CANDIDATS_PAR_CRITICITE_ET_LATENCE_MAX_STANDALONE_VESPERARE_v0_1.md`
- `MATRICE_COMMANDES_PACKETS_ETATS_SIGNAUX_PERFORMANCE_MAX_STANDALONE_VESPERARE_v0_1.md`
- `SPECIFICATION_TECHNIQUE_CONCEPTUELLE_REVERB_SPACE_HALO_FREEZE_RESONATEURS_CONVOLUTION_MAX_STANDALONE_VESPERARE_v0_1.md`
- `SPECIFICATION_GRAVE_GONG_SUB_DIDGERIDOO_CONFLITS_ET_MODES_MAX_STANDALONE_VESPERARE_v0_1.md`
- `SPECIFICATION_LATENCE_SCHEDULER_VECTORS_AUDIO_SETTINGS_MAX_STANDALONE_VESPERARE_v0_1.md`
- `REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`

But :

```text
verifier que les audits candidats A, B, C et D tiennent ensemble avant toute
ouverture de DETTE-ACT-6, moteurs lourds, supports Max lourds, synthese finale,
UI, mapping ou patch.
```

Hors perimetre :

```text
choix final d'objet Max ;
choix final de moteur sonore ;
choix final de synthese ;
choix final de sequenceur ;
ouverture detaillee gen~, pfft~, convolution, corpus, ML, externals ou plugins ;
patch ;
UI ;
mapping ;
implementation ;
benchmark.
```

---

## 1. Verdict general

Verdict :

```text
coherence generale validee.
```

Decision :

```text
les audits candidats A, B, C et D ne se contredisent pas.
ils forment maintenant une couche de cadrage candidate suffisante pour ouvrir
un pre-audit cible des candidats lourds et supports opaques, si la suite en a
besoin.
```

Restriction :

```text
DETTE-ACT-6 ne doit pas etre ouverte comme panier global.
elle doit etre ouverte sous forme de pre-audit cible, avec familles, raisons
fonctionnelles, criticite, latence, reports et exclusions.
```

Decision negative :

```text
pas de passage direct a la synthese finale.
pas de choix direct gen~, pfft~, convolution, corpus, ML, externals, plugins,
moteur granulaire, modele physique ou polyphonie.
pas de patch.
pas de UI.
pas de mapping.
```

---

## 2. Roles stabilises par les audits A/B/C/D

| Groupe | Role stabilise | Autorite | Exclu |
|---|---|---|---|
| A | routage direct, safe, fallback, transitions, rollback audio | protege direct/safe et sorties | ne choisit pas moteur, UI ou generation |
| B | commandes live, packets, ordre, scheduler, SIG | formalise gestes, messages, signalisation | ne conditionne pas P0/P1 seul |
| C | timing, motifs, generation rythmique/melodique, AUT/REC | produit ou cadre evenements et motifs | ne choisit pas moteur final |
| D | matiere timbrale, NAT, source-bonding, transformations | qualifie appartenance perceptive et transformation | ne choisit pas synthese finale |

Conclusion :

```text
A protege le chemin.
B transporte et ordonne la decision.
C organise le temps et les motifs.
D organise la matiere et l'appartenance perceptive.
aucun de ces groupes ne doit prendre l'autorite des autres.
```

---

## 3. Controle A/B

Question :

```text
les commandes live et le scheduler peuvent-ils piloter le routage sans fragiliser
direct/safe ?
```

Verdict :

```text
compatible.
```

Raison :

```text
A exige fallback direct/safe et interdit les dependances lentes.
B declare que route/select/trigger/message, Overdrive, Scheduler in Audio
Interrupt, pattr et SIG ne garantissent pas P0/P1 et ne conditionnent pas
CRIT-0.
```

Garde-fou :

```text
toute commande B qui modifie un chemin A doit avoir autorite, cible, fallback,
rollback ou release et SIG si impact.
```

Risque residuel :

```text
commande qui parait simple mais change un etat audio critique sans signal.
```

Correction :

```text
renvoyer vers contrat OP-LIVE-COMMAND et groupe A.
```

---

## 4. Controle A/C

Question :

```text
la generation rythmique/melodique peut-elle coexister avec direct/safe ?
```

Verdict :

```text
compatible.
```

Raison :

```text
C exclut la generation de P0/P1 et impose source, scene, sortie, AUT, REC,
fallback et SIG.
A preserve le chemin direct et safe meme si generation, analyse ou motifs sont
absents.
```

Garde-fou :

```text
aucun motif C ne doit devenir condition de sortie directe, de protection, de
grave critique ou de recuperation.
```

Risque residuel :

```text
motif ou clock qui continue alors que la scene ou le retour corporel demande
retrait.
```

Correction :

```text
watchdog AUT/REC + commande B de sortie + fallback A.
```

---

## 5. Controle A/D

Question :

```text
les transformations timbrales peuvent-elles coexister avec direct/safe ?
```

Verdict :

```text
compatible.
```

Raison :

```text
D exclut FFT/pfft, convolution, corpus, ML, supports lourds et resonances non
controlees des chemins directs/safe.
A exige source directe, fallback, safe, transitions et routage lisible.
```

Garde-fou :

```text
si D transforme didgeridoo, voix, gong, peaux ou grave, A doit conserver un
chemin source seule ou safe.
```

Risque residuel :

```text
transformation belle mais impossible a sortir sans trou musical.
```

Correction :

```text
sortie D obligatoire : off, source seule, re-naturalisation, transfert vers
halo, retrait progressif ou cut safe selon criticite.
```

---

## 6. Controle B/C

Question :

```text
les commandes live peuvent-elles encadrer la generation rythmique/melodique sans
devenir UI finale ou moteur cache ?
```

Verdict :

```text
compatible.
```

Raison :

```text
B formalise commande, packets, ordre, SIG et scheduler.
C formalise les candidats de timing, motif, variation, interlocking, acid,
voix fragmentaire, jazz/Keita et watchdog AUT/REC.
```

Garde-fou :

```text
B ne doit pas imposer une UI.
C ne doit pas supposer un mapping.
les commandes doivent viser des fonctions : densite, apparition, retrait,
variation, AUT, REC, source priority, scene, retour.
```

Risque residuel :

```text
controle live trop fin ou trop nombreux pour le setup didgeridoo + PC.
```

Correction :

```text
renvoyer a QV-2 et au futur travail UI/mapping, sans choisir maintenant.
```

---

## 7. Controle B/D

Question :

```text
les commandes live peuvent-elles piloter la matiere timbrale sans transformer
les effets en sons subis ?
```

Verdict :

```text
compatible.
```

Raison :

```text
B impose autorite, cible, release, rollback et SIG si impact.
D impose NAT, source-bonding, source priority, sortie, fallback et interdiction
des effets reconnaissables non decides.
```

Garde-fou :

```text
toute commande B vers D doit viser une famille D declaree :
NAT, source-filter, souffle, resonance, texture, saturation, halo-source,
espace commun/proximite, PA-X ou report lourd.
```

Risque residuel :

```text
commande qui modifie la naturalisation sans que le musicien comprenne ce qui a
change perceptivement.
```

Correction :

```text
SIG-2 si impact jouable ou perceptif ; SIG-3 seulement diagnostic.
```

---

## 8. Controle C/D

Question :

```text
la generation de motifs/lignes et la generation timbrale restent-elles separees
sans couper artificiellement les phenomenes musicaux ?
```

Verdict :

```text
compatible.
```

Raison :

```text
C porte le temps, la forme de motif, les lignes, l'interlocking, acid, voix et
jazz/Keita comme methode.
D porte la matiere, NAT, source-bonding, formants, souffle, resonance, grain,
saturation et halo-source.
```

Regle :

```text
un meme phenomene peut traverser C et D, mais il doit declarer quelle part est
timing/motif et quelle part est matiere/naturalisation.
```

Exemples :

```text
acid naturalise :
C = ligne, motif, timing, variation, AUT/REC.
D = cavite, source-filter, friction, resonance, non-303.

voix fragmentaire :
C = moment, fragmentation, presque-melodie, motif vocal eventuel.
D = souffle, formants, integration virtualo-acoustique, pas voix nue.

Keita/jazz :
C = micro-decision, silence, relance, tension.
D = peau/bois/membrane, attaque dessinee, tactilite, raffinement.
```

Risque residuel :

```text
un motif devient timbralement beau mais autonome, ou une texture devient
rythmiquement active sans AUT/REC.
```

Correction :

```text
double etiquette C/D + watchdog AUT/REC + sortie D.
```

---

## 9. Controle D / SPC-HAL-REV

Question :

```text
la naturalisation timbrale reste-t-elle distincte de reverb, espace et halo ?
```

Verdict :

```text
compatible, a surveiller.
```

Raison :

```text
D dit que NAT n'est pas simple reverb.
SPC/HAL/REV decide les mondes spatiaux, reverbs, freeze, halo, locks, bypass et
sorties spatiales.
```

Regle :

```text
D peut produire matiere halo-source ou demander NAT-ESP.
SPC/HAL/REV decide presence spatiale, duree, lock, force, bypass, retrait et
risque d'espace decoratif.
```

Risque residuel :

```text
un son electronique est rendu acceptable seulement parce qu'il est mis dans un
espace.
```

Correction :

```text
exiger au moins une appartenance supplementaire si necessaire :
source, cavite, formant, souffle, metal, peau, irregularite ou fonction.
```

---

## 10. Controle grave / didgeridoo / gong / sub

Question :

```text
les audits A/B/C/D respectent-ils les modes grave, didgeridoo et gong ?
```

Verdict :

```text
compatible.
```

Raison :

```text
A preserve direct/safe.
B donne commandes et SIG.
C ne definit pas le porteur grave.
D distingue timbre grave, gong, bloom, partiels, resonance, halo et porteur
grave.
la specification grave/gong/sub/didgeridoo garde l'autorite des modes grave.
```

Garde-fou :

```text
si une famille D modifie porteur grave, conflit grave, adaptation harmonique ou
retrait de grave, elle doit renvoyer au document grave et non decider seule.
```

Risque residuel :

```text
metal/gong/bloom ou resonance prend le role de grave sans mode explicite.
```

Correction :

```text
SIG + retour vers modes grave : didgeridoo guide, grave soutien, didgeridoo
adapte, grave retire, graves libres.
```

---

## 11. Controle PA-X / transgression

Question :

```text
la transgression reste-t-elle volontaire et jouable ?
```

Verdict :

```text
compatible.
```

Raison :

```text
B impose SIG si transgression ou limitation affecte le live.
C n'autorise pas motif ou cliche autonome.
D interdit PA-X accidentel et impose sortie/fallback.
```

Garde-fou :

```text
masse, rugissement, voix brute, saturation, nudite, espace immense,
dissonance/microtonalite et rugosite doivent etre des fonctions decidees.
```

Risque residuel :

```text
PA-X confondu avec surcharge, clipping, effet numerique ou degradation.
```

Correction :

```text
Auto-Pro protege headroom et feedback, mais ne decide pas la transgression.
```

---

## 12. Controle latence / charge / non-compromis

Question :

```text
les audits A/B/C/D respectent-ils la latence comme enjeu musical sans compromis
artistique ?
```

Verdict :

```text
compatible.
```

Raison :

```text
A garde direct/safe court.
B ne presente pas scheduler/Overdrive comme garantie universelle.
C reporte les moteurs lourds.
D reporte spectral, convolution, corpus, ML et supports lourds.
les matrices latence/exclusions interdisent de transformer CPU en choix
esthetique cache.
```

Garde-fou :

```text
si une fonction desiree est lourde, changer chemin, preparation, architecture,
precalcul, separation direct/analyse ou statut, sans l'appauvrir.
```

Risque residuel :

```text
DETTE-ACT-6 ouverte trop largement et transformee en choix de technologie.
```

Correction :

```text
ouvrir un pre-audit DETTE-ACT-6 cible avant tout audit lourd individuel.
```

---

## 13. Controle des reports lourds

Reports convergents depuis A/B/C/D :

```text
gen~ ;
poly~ ;
MC ;
pfft~ ;
FFT / spectral ;
convolution ;
corpus sonore ;
granularite complexe ;
modeles physiques ;
ML / classification ;
externals ;
plugins ;
js/node/scripts ;
buffer~/groove~/play~ comme source indispensable ;
Markov / grammaire / statistique opaque ;
pattrstorage / presets si critique.
```

Constat :

```text
les reports sont coherents mais nombreux.
ils ne doivent pas rester en dette floue.
```

Decision :

```text
ouvrir ensuite un pre-audit cible DETTE-ACT-6.
ce pre-audit doit classer les familles lourdes par necessite musicale, chemin,
risque, latence, charge, opacite, sortie, fallback et niveau d'audit requis.
```

Interdit :

```text
auditer tous les objets lourds comme catalogue Max.
choisir un moteur parce qu'il est puissant.
laisser DETTE-ACT-6 devenir un bloc infini.
```

---

## 14. Corrections necessaires avant la suite

Correction obligatoire :

```text
aucune correction de fond sur A/B/C/D.
```

Corrections de methode :

```text
1. ne plus dire "audit candidat D" comme point actif ;
2. pointer vers un pre-audit DETTE-ACT-6 cible ;
3. garder A/B/C/D comme socle, pas comme implementation ;
4. ne pas ouvrir de technologie lourde sans fonction Vesperare explicite.
```

---

## 15. Decision de sortie

Verdict :

```text
DETTE-ACT-16 peut etre consideree comme absorbee par cet audit.
```

Autorise ensuite :

```text
SPECIFICATION_PRE_AUDIT_CANDIDATS_LOURDS_SUPPORTS_MAX_MOTEURS_OPAQUES_VESPERARE_v0_1.md
```

But de la prochaine fiche :

```text
preparer DETTE-ACT-6 sans l'ouvrir comme catalogue :
classer les candidats lourds et supports opaques par fonction Vesperare,
necessite, criticite, latence, charge, opacite, fallback, sortie, SIG et niveau
d'audit requis.
```

N'autorise pas :

```text
choix final de synthese ;
choix final d'objet Max ;
choix final de moteur ;
audit individuel complet gen~ / pfft~ / convolution / ML sans pre-audit ;
patch ;
UI ;
mapping ;
implementation.
```
