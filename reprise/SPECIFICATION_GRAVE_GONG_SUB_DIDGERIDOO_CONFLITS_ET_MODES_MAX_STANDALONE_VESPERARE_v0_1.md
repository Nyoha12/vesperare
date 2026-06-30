# SPECIFICATION GRAVE / GONG / SUB / DIDGERIDOO CONFLITS ET MODES MAX STANDALONE VESPERARE v0.1

Projet : Vesperare
Statut : specification fonctionnelle dediee au noeud grave / gong / sub / didgeridoo
Date : 2026-06-23

Sources actives principales :

- `MATRICE_GEN_ROLE_SCENES_CONTROLES_LIVE_RISQUES_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_MATRICE_GEN_ROLE_SCENES_CONTROLES_LIVE_RISQUES_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_GENERATION_FINE_PAR_GEN_ROLE_MAX_STANDALONE_VESPERARE_v0_1.md`
- `SPECIFICATION_CONTROLES_LIVE_ET_MODES_SCENE_v0_1.md`
- `SPECIFICATION_NOYAU_JOUABLE_SCENES_COUCHES_v0_1.md`
- `SPECIFICATION_SCENES_PRIORITAIRES_ET_MACROS_v0_1.md`
- `SPECIFICATION_TECHNIQUE_CONCEPTUELLE_REVERB_SPACE_HALO_FREEZE_RESONATEURS_CONVOLUTION_MAX_STANDALONE_VESPERARE_v0_1.md`
- `DECISION_RUNTIME_MAX_STANDALONE_LATENCE_SANS_COMPROMIS_VESPERARE_v0_1.md`

But :

```text
separer et organiser les fonctions grave/gong/sub/didgeridoo : porteur du vrai
grave, soutien discret, retrait du grave genere, graves libres, didgeridoo
guide, didgeridoo adapte, gong bloom, souffle grave, base microtonale, conflits,
protections, controles live et criticite de latence.
```

Hors perimetre :

```text
algorithmes definitifs ;
objets Max definitifs ;
syntaxe Max ;
seuils ;
buffers ;
mesures pratiques ;
calibration finale de PA ;
mapping MIDI ;
controleur physique ;
UI finale ;
patch final ;
tests pratiques ;
benchmark.
```

---

## 1. Decision centrale

Decision :

```text
le grave Vesperare n'est pas une piste de basse.
c'est un systeme de fonctions partagees entre didgeridoo, sub genere,
basse-motif, gong, bloom, souffle, espace, halo et protections.
```

Regle principale :

```text
a un moment critique, une seule fonction porte le vrai grave lisible.
les autres fonctions deviennent soutien, trace, partiels, souffle, reponse,
halo, texture ou source protegee.
```

Exceptions :

```text
graves libres si choix live explicite ;
transgression controlee si fonction, duree, risque et sortie sont declares ;
scene composee si deux fonctions graves portent volontairement une tension ;
P0/P1 si la protection impose une limitation.
```

Cette fiche ne remplace pas `GEN-SUB-GONG-BREATH`.

Elle le decoupe en sous-fonctions `GRV-FUNC` pour eviter que sub, gong, souffle,
base microtonale, soutien discret et didgeridoo soient traites comme une seule
masse indistincte.

---

## 2. Definitions utiles

### 2.1. Vrai grave lisible

Definition :

```text
fonction percue comme porteur physique ou harmonique principal du bas du
spectre a un moment donne.
```

Peut etre porte par :

```text
didgeridoo ;
sub genere ;
basse-motif naturalisee ;
gong bloom ;
resonance grave ;
voix transformee si scene explicite ;
friction ou souffle grave.
```

Risque :

```text
si plusieurs fonctions portent le vrai grave sans hierarchie, la puissance
augmente mais la musicalite, la precision et la lisibilite baissent.
```

### 2.2. Vrai sub

Definition :

```text
partie tres basse qui produit pression physique, appui, retour, domination ou
seuil, sans devoir etre reconnaissable comme synthese electronique.
```

Etats :

```text
absent ;
trace ;
soutien ;
porteur ponctuel ;
porteur principal ;
libre si choix explicite.
```

Regle :

```text
le vrai sub doit rester lisible, stable et protege.
il ne doit pas etre brouille par bloom, reverb, gong ou didgeridoo.
```

### 2.3. Grave harmonique

Definition :

```text
zone ou les partiels, formants, battements, centres ressentis et tensions
microtonales organisent le bas du spectre sans forcement etre le vrai sub.
```

Sources principales :

```text
didgeridoo ;
gong ;
basse-motif naturalisee ;
resonateurs ;
voix transformee ;
reverb/cavite.
```

Risque :

```text
grave harmonique confondu avec vrai sub.
```

### 2.4. Bloom grave

Definition :

```text
ouverture, expansion ou queue grave qui grossit la perception de masse, de
metal, de souffle ou d'espace.
```

Fonctions possibles :

```text
signal ;
seuil ;
retour ;
resolution ;
domination ;
matiere longue ;
consequence apres impact ;
base microtonale.
```

Risque :

```text
bloom devient boue grave, nappe ou decor.
```

### 2.5. Souffle grave

Definition :

```text
sensation de pression aerienne, turbulence, respiration ou masse mouvante dans
le bas, souvent liee a didgeridoo, gong, reverb, sub ou friction.
```

Fonctions possibles :

```text
immersion ;
attente ;
suspension ;
presence ;
transgression douce ;
pre-retour ;
metal vivant.
```

Risque :

```text
souffle sans contour, confondu avec bruit ou reverb indistincte.
```

### 2.6. Base microtonale

Definition :

```text
organisation de tension par battements, partiels inharmoniques, centres
instables ou attraction entre didgeridoo, gong et generation.
```

Fonctions possibles :

```text
tension ;
couleur ;
attente ;
resolution ;
rugosite ;
guide harmonique ;
hors-monde.
```

Risque :

```text
effet theorique ou conflit non musical.
```

### 2.7. Graves libres

Definition :

```text
mode ou plusieurs forces graves peuvent coexister sans hierarchie stricte,
par choix live explicite.
```

Conditions :

```text
choix live explicite ;
scene ou passage compatible ;
risque accepte ;
sortie possible ;
Auto-Pro P0/P1 toujours actif.
```

Interdit :

```text
graves libres par defaut.
```

---

## 3. Sous-fonctions GRV

Les sous-fonctions suivantes ne sont pas de nouveaux `GEN-ROLE` officiels.
Elles precisent les responsabilites internes du noeud grave.

### 3.1. `GRV-FUNC-DID-GUIDE`

Fonction :

```text
le didgeridoo guide harmoniquement ce qui est genere.
```

Comportements autorises :

```text
generation attiree par partiels ;
ligne ou basse-motif qui suit un centre ressenti ;
sub qui soutient sans contredire ;
halo ou reverb qui conserve la trace du bourdon ;
microtension derivee de formants ou battements.
```

Risques :

```text
didgeridoo force en basse ;
generation trop docile ;
perte de liberte live ;
conflit si le didgeridoo change de role.
```

Controle :

```text
LIVE-B1 Mode DID ;
LIVE-B3 Guidage harmonique ;
LIVE-C1 Mode GRV ;
LIVE-C3 Source porteuse ;
LIVE-GEN-GRAVE.
```

### 3.2. `GRV-FUNC-SUPPORT`

Fonction :

```text
le grave soutient discretement sans devenir porteur principal.
```

Comportements autorises :

```text
sub trace ;
renfort du poids ;
fondation quasi invisible ;
retour corporel leger ;
ombre sous didgeridoo, gong, voix ou pulse.
```

Risques :

```text
soutien devenu masque ;
soutien devenu basse standard ;
accumulation avec reverb ou bloom ;
sub inutile mais couteux en headroom.
```

Controle :

```text
LIVE-C2 Vrai sub ;
LIVE-C5 Retrait grave ;
MON-1 sub protege / grave reduit.
```

### 3.3. `GRV-FUNC-DID-ADAPT`

Fonction :

```text
le didgeridoo traite ou adapte certaines harmoniques pour mieux cohabiter avec
le systeme, seulement si l'option est active.
```

Point important :

```text
l'adaptation vise d'abord la hauteur, la couleur ou la relation harmonique.
elle ne doit pas devenir une baisse automatique de niveau qui efface le
didgeridoo.
```

Comportements autorises :

```text
adaptation harmonique optionnelle ;
filtrage ou coloration douce ;
traitement de source pour fonction musicale ;
co-evolution avec basse, gong ou ligne.
```

Risques :

```text
artefact audible ;
didgeridoo moins libre ;
source live trop corrigee ;
perte du caractere acoustique possible.
```

Controle :

```text
LIVE-B1 Mode DID ;
LIVE-B4 Adaptation des harmoniques ;
LIVE-B5 Protection didgeridoo ;
LIVE-C6 Conflit grave.
```

### 3.4. `GRV-FUNC-GENERATED-RETRAIT`

Fonction :

```text
le grave genere se retire quand le conflit devient deletere pour la musicalite.
```

Comportements autorises :

```text
retirer sub ;
passer de porteur a soutien ;
passer de soutien a trace ;
laisser didgeridoo, gong ou source live porter ;
preparer un retour grave ulterieur.
```

Risques :

```text
retrait percu comme panne ;
perte de corps non decidee ;
Auto-Pro qui coupe trop musicalement.
```

Controle :

```text
LIVE-B6 Retrait du grave genere si conflit ;
LIVE-C5 Retrait grave ;
LIVE-GEN-RETURN ;
LIVE-GEN-SIGNAL.
```

### 3.5. `GRV-FUNC-GRAVES-LIBRES`

Fonction :

```text
autoriser la coexistence conflictuelle de plusieurs graves si le choix est
artistique, assume et jouable.
```

Comportements autorises :

```text
didgeridoo + sub porteur ;
gong + basses riches ;
sub + bloom ;
grave spatial + transgression ;
tension microtonale volontaire.
```

Risques :

```text
boue ;
headroom consomme ;
source essentielle masquee ;
fatigue ;
perte de precision ;
transgression non sortie.
```

Controle :

```text
LIVE-C1 Mode GRV ;
LIVE-C2 Vrai sub ;
LIVE-C6 Conflit grave ;
LIVE-GEN-TRANS ;
MON-1 P0/P1/P2.
```

### 3.6. `GRV-FUNC-GONG-BLOOM`

Fonction :

```text
le gong ou sa modelisation porte bloom, metal, souffle, queue, signal, base
microtonale ou rugissement.
```

Comportements autorises :

```text
impact ;
signal ;
halo ;
peak ;
resolution ;
rugissement ;
bloom grave ;
base microtonale ;
souffle grave.
```

Risques :

```text
gong decoratif ;
new-age involontaire ;
sub brouille ;
queue qui masque didgeridoo ou voix ;
metal agressif ;
bloom confondu avec reverb.
```

Controle :

```text
LIVE-J1 Fonction gong ;
LIVE-J2 Droit a la queue longue ;
LIVE-J3 Seuil de rugissement ;
LIVE-J4 Bloom grave ;
LIVE-J5 Relation au vrai sub ;
LIVE-J6 Relation au halo.
```

### 3.7. `GRV-FUNC-SUB-PRESSURE`

Fonction :

```text
le sub produit pression physique, appui, seuil, domination, retour ou impact
rare.
```

Comportements autorises :

```text
trace ;
soutien ;
porteur ponctuel ;
porteur principal si scene explicite ;
retour grave ;
domination sound-system ;
sub non identifiable.
```

Risques :

```text
sub standard reconnaissable ;
sub destructeur ;
sub illisible ;
latence ressentie ;
conflit avec didgeridoo ou gong ;
pression sans fonction.
```

Controle :

```text
LIVE-C2 Vrai sub ;
LIVE-C3 Source porteuse ;
LIVE-C5 Retrait grave ;
MON-1 sub protege.
```

### 3.8. `GRV-FUNC-BREATH`

Fonction :

```text
creer souffle grave, pression d'air, turbulence ou respiration massive sans
perdre la precision du vrai sub.
```

Comportements autorises :

```text
souffle didgeridoo ;
souffle gong ;
souffle sub ;
souffle-air spatial ;
pression respirante ;
friction grave ;
pre-retour.
```

Risques :

```text
bruit non fonctionnel ;
grave flou ;
reverb trop large ;
effet ambient subi ;
masquage des attaques.
```

Controle :

```text
LIVE-D1 Monde spatial principal ;
LIVE-C2 Vrai sub ;
LIVE-J1 Fonction gong ;
PLAY-5 Corps / retour.
```

---

## 4. Modes GRV principaux

### 4.1. `GRV-M0 - Off / absent`

Usage :

```text
aucun grave genere significatif.
```

Fonctions :

```text
laisser source live nue/proche ;
creer rarete ;
preparer retour ;
eviter conflit.
```

Attention :

```text
Off ne signifie pas panne.
Il doit etre lisible comme retrait, silence, proximite ou choix de forme.
```

### 4.2. `GRV-M1 - Didgeridoo guide harmonique`

Usage :

```text
le didgeridoo guide harmoniquement ce qui est genere.
les elements evoluent librement ensemble.
```

Porteur typique :

```text
didgeridoo ou centre ressenti du didgeridoo.
```

Fonctions compatibles :

```text
GEN-DID-GUIDED-LINE ;
GEN-BASS-MOTIF ;
GEN-ACID-NAT ;
GEN-LINE-MODAL-MICRO ;
GEN-HAL-SOURCE.
```

Risques :

```text
didgeridoo reduit a reference ;
sub trop docile mais sans vie ;
ligne qui copie au lieu de dialoguer.
```

### 4.3. `GRV-M2 - Soutien discret`

Usage :

```text
le grave soutient sans diriger.
```

Porteur typique :

```text
scene, source live, pulse, gong ou espace.
```

Fonctions compatibles :

```text
techno corporelle ;
suspension ;
didgeridoo libre ;
voix integree ;
polytexture ;
retour prepare.
```

Risques :

```text
soutien devenu boue ;
soutien devenu timbre electronique ;
headroom consomme pour peu de fonction.
```

### 4.4. `GRV-M3 - Adaptation harmonique du didgeridoo`

Usage :

```text
si necessaire, certaines harmoniques du didgeridoo sont adaptees pour cohabiter
avec la basse, le sub, le gong ou le reste du systeme.
```

Condition :

```text
option explicite, jamais correction cachee lourde.
```

Priorite :

```text
preserver presence et niveau perceptif du didgeridoo.
```

Risques :

```text
traitement trop audible ;
effet de pitch correction ;
source acoustique artificielle ;
perte de confiance live.
```

### 4.5. `GRV-M4 - Retrait du grave genere`

Usage :

```text
le grave genere se retire quand le conflit nuit a la musicalite.
```

Porteur restant :

```text
didgeridoo ;
gong ;
source live ;
espace ;
silence ;
retour prepare.
```

Risques :

```text
perte de corps non decidee ;
retour affaibli ;
retrait trop automatique.
```

### 4.6. `GRV-M5 - Graves libres`

Usage :

```text
plusieurs graves coexistent, se frictionnent ou se superposent par choix.
```

Conditions :

```text
choix live explicite ;
scene compatible ;
Auto-Pro P0/P1 actif ;
sortie ou consequence claire.
```

Risques :

```text
masse sans precision ;
fatigue ;
danger PA ;
didgeridoo masque ;
gong brouille ;
sub non lisible.
```

### 4.7. `GRV-M6 - Gong / bloom porte`

Usage :

```text
le gong, le bloom ou la matiere metal-grave porte le centre grave.
```

Fonctions :

```text
base microtonale ;
seuil ;
souffle ;
signal ;
rugissement ;
resolution ;
immersion.
```

Risques :

```text
gong decoratif ;
bloom confondu avec nappe ;
sub masque ;
didgeridoo secondaire non protege.
```

### 4.8. `GRV-M7 - Sub ponctuel non identifiable`

Usage :

```text
sub comme impact, appui, seuil ou retour, sans timbre de sub electronique
reconnaissable.
```

Fonctions :

```text
retour du corps ;
domination ;
impact rare ;
appel ;
stabilisation ;
pression sound-system naturalisee.
```

Risques :

```text
sub standard ;
effet club banal ;
latence ressentie ;
conflit avec attaque ou source.
```

### 4.9. `GRV-M8 - Souffle / pression aerienne`

Usage :

```text
le grave devient sensation de souffle, air, masse respirante ou turbulence.
```

Fonctions :

```text
suspension tres longue ;
gong bloom ;
immersion ;
proximite transformee ;
pre-retour ;
transgression douce.
```

Risques :

```text
ambient subi ;
bas flou ;
perte de corps si non decidee ;
attaque principale masquee.
```

---

## 5. Modes DID lies au grave

### 5.1. `DID-GRV-1 - Libre protege`

Definition :

```text
le didgeridoo reste libre.
le systeme protege source, headroom, feedback, masquage critique et conflits
dangereux sans forcer la musique.
```

Compatible avec :

```text
GRV-M2 soutien discret ;
GRV-M4 retrait du grave genere ;
GRV-M5 graves libres si choix explicite ;
GRV-M8 souffle / pression aerienne.
```

### 5.2. `DID-GRV-2 - Systeme adapte au didgeridoo`

Definition :

```text
le systeme entier s'adapte au didgeridoo : generation, grave, lignes, halo,
espace ou reverb prennent le didgeridoo comme reference principale.
```

Compatible avec :

```text
GRV-M1 didgeridoo guide harmonique ;
GEN-DID-GUIDED-LINE ;
GEN-ACID-NAT naturalise ;
GEN-LINE-MODAL-MICRO ;
GEN-HAL-SOURCE.
```

Risques :

```text
systeme trop soumis ;
didgeridoo devenu controleur ;
perte de scene si le didgeridoo change brutalement de fonction.
```

### 5.3. `DID-GRV-3 - Didgeridoo adapte au systeme`

Definition :

```text
le didgeridoo peut etre traite pour s'integrer au systeme, si le choix est actif.
```

Traitements conceptuels possibles :

```text
adaptation harmonique ;
coloration ;
source-filter ;
cavite ;
halo source ;
fonctionnalisation rythmique ou spectrale.
```

Interdits par defaut :

```text
pitch correction reconnaissable ;
correction cachee qui efface le geste ;
reduction automatique de niveau comme solution principale ;
didgeridoo transforme en simple sample ou input.
```

### 5.4. `DID-GRV-4 - Perturbateur`

Definition :

```text
le didgeridoo trouble volontairement le grave, le sub, la ligne ou le gong.
```

Conditions :

```text
scene ou choix live explicite ;
conflit musicalement utile ;
sortie possible ;
Auto-Pro P0/P1 actif.
```

Risques :

```text
conflit non lisible ;
sub instable ;
masquage ;
fatigue ;
perte de retour.
```

---

## 6. Arbitres de porteur du grave

### 6.1. Table de decision conceptuelle

```text
Porteur : didgeridoo
Quand : setup minimum, guide harmonique, presence live, bourdon central.
Les autres : soutien, trace, halo, ligne guidee, retrait.
Risque : didgeridoo force en basse ou masque.

Porteur : sub genere
Quand : retour corporel, sound-system, domination, impact, seuil.
Les autres : partiels, souffle, texture, source protegee.
Risque : sub standard, conflit avec didgeridoo/gong, latence.

Porteur : basse-motif naturalisee
Quand : motif grave, retour, acid naturalise, techno corporelle.
Les autres : didgeridoo guide/repond, sub soutient, gong trace.
Risque : lead ou basse electronique banale.

Porteur : gong / bloom
Quand : SCN-4, metal-gong, base microtonale, seuil, resolution.
Les autres : sub soutien/trace, didgeridoo dialogue/protege.
Risque : boue, gong decoratif, queue trop large.

Porteur : souffle grave
Quand : suspension, immersion, pre-retour, presence aerienne.
Les autres : sub protege, source lisible, halo separe.
Risque : ambient subi, bas flou.

Porteur : aucun / retrait
Quand : silence, proximite, attente, source exposee, reset.
Les autres : traces ou absence decidee.
Risque : panne percue si non signale.

Porteur : graves libres
Quand : transgression controlee, crise, scene composee.
Les autres : tous peuvent rester actifs.
Risque : perte de precision, danger PA, sortie obligatoire.
```

### 6.2. Regle de bascule

Une bascule de porteur doit declarer :

```text
porteur avant ;
porteur apres ;
fonction de la bascule ;
etat de forme ;
role du didgeridoo ;
role du sub ;
role du gong ;
etat du halo/espace ;
sortie ou maintien ;
signalisation si protection active.
```

Exemples :

```text
didgeridoo porte -> sub soutient -> retour pulse.
gong bloom porte -> sub trace -> suspension longue.
sub porte -> grave genere se retire -> didgeridoo redevient centre.
soutien discret -> graves libres -> transgression controlee -> retrait.
```

---

## 7. Conflits typiques et traitements

### 7.1. Conflit didgeridoo / sub

Description :

```text
le bourdon, les partiels ou le souffle du didgeridoo entrent en lutte avec le
sub genere ou la basse-motif.
```

Options :

```text
systeme adapte au didgeridoo ;
sub devient soutien ou trace ;
grave genere se retire ;
didgeridoo adapte harmoniquement si option active ;
graves libres si choix explicite ;
source didgeridoo protegee.
```

Interdit :

```text
masquer le didgeridoo comme solution automatique ordinaire.
```

### 7.2. Conflit gong / sub

Description :

```text
la queue, le bloom, le metal ou les battements du gong brouillent le vrai sub.
```

Options :

```text
gong porte, sub trace ;
sub porte, gong devient texture ;
bloom momentary puis retrait ;
queue longue lock si decide ;
Auto-Pro limite seulement selon P0/P1.
```

Interdit :

```text
confondre bloom decide et boue grave.
```

### 7.3. Conflit didgeridoo / gong

Description :

```text
deux sources acoustiques ou virtualo-acoustiques fortes occupent le grave
harmonique, les partiels et le souffle.
```

Options :

```text
didgeridoo guide, gong dialogue ;
gong porte, didgeridoo protege ;
alternance ;
base microtonale commune ;
graves libres ;
retrait partiel du grave genere.
```

Risque :

```text
microtonalite non musicale ou masse indistincte.
```

### 7.4. Conflit grave / reverb / halo

Description :

```text
le grave, le bloom, le halo et la reverb longue fusionnent en nappe ou boue.
```

Options :

```text
separer PLAY-3 espace, PLAY-4 halo, GRV-M6 bloom ;
reduire la queue non essentielle ;
garder le halo lock si decide sauf P0/P1 ;
preserver l'attaque principale ;
nettoyer le grave seulement comme protection, pas comme choix esthetique cache.
```

### 7.5. Conflit grave / corps

Description :

```text
le grave produit pression mais ne porte plus le corps ou le retour.
```

Options :

```text
retour grave ;
retour pulse ;
sub trace ;
silence actif ;
contraction d'espace ;
maintien prolonge sans retour si decide.
```

### 7.6. Conflit grave / latence

Description :

```text
une fonction grave reagit trop tard pour rester musicale.
```

Traitement :

```text
classer la fonction en chemin direct, chemin musical rapide ou chemin lent ;
ne pas resoudre par degradation musicale ;
si une analyse lente est utile, elle prepare un etat futur au lieu de corriger
un evenement direct.
```

---

## 8. Compatibilite scenes

### 8.1. `SCN-1 - Didgeridoo / systeme minimum`

Modes prioritaires :

```text
DID-GRV-1 libre protege ;
DID-GRV-2 systeme adapte au didgeridoo ;
GRV-M1 didgeridoo guide harmonique ;
GRV-M2 soutien discret ;
GRV-M4 retrait du grave genere.
```

Modes possibles :

```text
GRV-M5 graves libres si choix ;
GRV-M7 sub ponctuel ;
GRV-M8 souffle.
```

Risques :

```text
didgeridoo ignore ;
didgeridoo force en basse ;
sub qui masque le bourdon ;
setup minimum rendu dependant du gong.
```

### 8.2. `SCN-2 - Techno corporelle naturalisee`

Modes prioritaires :

```text
GRV-M2 soutien discret ;
GRV-M7 sub ponctuel non identifiable ;
GRV-M4 retrait si conflit ;
GRV-M1 si didgeridoo guide.
```

Modes possibles :

```text
GRV-M5 graves libres pour transgression ;
GRV-M6 gong/bloom comme couche ;
GRV-M8 souffle pour suspension interne.
```

Risques :

```text
sub club banal ;
kick/basse standard ;
didgeridoo masque ;
corps porte par grave mais non par pression rythmique.
```

### 8.3. `SCN-3 - Techno suspendue tres longue`

Modes prioritaires :

```text
GRV-M0 off/absent ;
GRV-M2 soutien discret ;
GRV-M4 retrait ;
GRV-M8 souffle ;
GRV-M6 bloom long si decide.
```

Modes possibles :

```text
GRV-M7 retour grave ponctuel ;
GRV-M1 didgeridoo guide ;
GRV-M5 graves libres si maintien conflictuel decide.
```

Risques :

```text
ambient subi ;
retour grave impose ;
perte du corps non decidee ;
sub latent devenu boue.
```

### 8.4. `SCN-4 - Gong / bloom grave / metal-gong`

Modes prioritaires :

```text
GRV-M6 gong / bloom porte ;
GRV-M8 souffle ;
GRV-M2 soutien discret ;
GRV-M7 sub ponctuel.
```

Modes possibles :

```text
GRV-M1 didgeridoo guide si dialogue ;
GRV-M5 graves libres ;
GRV-M4 retrait du grave genere apres bloom.
```

Risques :

```text
gong decoratif ;
bloom sans fonction ;
sub brouille ;
didgeridoo secondaire non protege ;
metal agressif.
```

### 8.5. `SCN-5 - Sound-system immersion / domination`

Modes prioritaires :

```text
GRV-M7 sub ponctuel ou porteur ;
GRV-M2 soutien discret ;
GRV-M8 souffle ;
GRV-M6 bloom si gong/metal.
```

Modes possibles :

```text
GRV-M5 graves libres pour domination/transgression ;
GRV-M4 retrait si source live doit revenir ;
GRV-M1 si didgeridoo guide.
```

Risques :

```text
domination qui ecrase source live ;
sub destructeur ;
pression sans lisibilite ;
grand espace decoratif non decide.
```

### 8.6. `SCN-6 - Voix exposee integree`

Modes prioritaires :

```text
GRV-M0 off/absent ;
GRV-M2 soutien discret ;
GRV-M4 retrait ;
GRV-M8 souffle si integration vocale.
```

Modes possibles :

```text
GRV-M7 impact grave rare ;
GRV-M6 bloom comme consequence ou halo metal.
```

Risques :

```text
voix masquee ;
grave trop spectaculaire ;
proximite detruite ;
reverb grave qui noie l'integration.
```

### 8.7. `SCN-7 - Acid naturalise / ligne vivante`

Modes prioritaires :

```text
GRV-M1 didgeridoo guide harmonique ;
GRV-M2 soutien discret ;
GRV-M7 sub ponctuel non identifiable ;
GRV-M4 retrait si ligne devient trop autonome.
```

Modes possibles :

```text
GRV-M3 adaptation harmonique optionnelle ;
GRV-M5 graves libres si torsion extreme decidee.
```

Risques :

```text
TB-303 ou basse acid reconnaissable ;
ligne qui force le grave ;
motif trop autonome ;
didgeridoo reduit a input.
```

### 8.8. `SCN-8 - Polytexture rythmico-spectrale`

Modes prioritaires :

```text
GRV-M2 soutien discret ;
GRV-M4 retrait si densite efface la forme ;
GRV-M1 didgeridoo guide si source centrale ;
GRV-M6 bloom si texture grave.
```

Modes possibles :

```text
GRV-M5 graves libres ;
GRV-M8 souffle ;
GRV-M7 retour grave.
```

Risques :

```text
densite sans hierarchie ;
conflit grave + texture + halo ;
source essentielle masquee ;
sub illisible.
```

### 8.9. `SCN-9 - Transgression controlee`

Modes prioritaires :

```text
GRV-M5 graves libres ;
GRV-M7 sub porteur ou impact ;
GRV-M6 gong/rugissement ;
GRV-M8 souffle massif ;
GRV-M4 retrait comme consequence.
```

Modes possibles :

```text
DID-GRV-4 perturbateur ;
GRV-M3 adaptation harmonique si effet decide ;
GRV-M0 cut brutal si forme claire.
```

Risques :

```text
perte de qualite non choisie ;
danger PA ;
fatigue ;
absence de sortie ;
source essentielle detruite.
```

---

## 9. Controles live requis

### 9.1. Toujours disponibles

```text
LIVE-B1 - Mode DID.
LIVE-B3 - Guidage harmonique.
LIVE-B4 - Adaptation des harmoniques.
LIVE-B5 - Protection didgeridoo.
LIVE-B6 - Retrait du grave genere si conflit.
LIVE-C1 - Mode GRV.
LIVE-C2 - Vrai sub.
LIVE-C3 - Source porteuse.
LIVE-C4 - Bloom grave.
LIVE-C5 - Retrait grave.
LIVE-C6 - Conflit grave.
LIVE-GEN-GRAVE.
LIVE-GEN-RETURN.
LIVE-GEN-SIGNAL.
MON-1 - Protection / signalisation.
```

### 9.2. Selon scene ou instrument

```text
LIVE-J1 - Fonction gong.
LIVE-J2 - Droit a la queue longue.
LIVE-J3 - Seuil de rugissement.
LIVE-J4 - Bloom grave.
LIVE-J5 - Relation au vrai sub.
LIVE-J6 - Relation au halo.
PLAY-3 - Espace monde.
PLAY-4 - Halo.
PLAY-5 - Corps / retour.
```

### 9.3. Etats de signalisation

```text
grave porte par didgeridoo ;
grave porte par sub ;
grave porte par gong ;
grave en soutien ;
grave genere retire ;
graves libres actifs ;
didgeridoo protege ;
sub protege ;
gong protege ;
source essentielle masquee ;
halo/reverb limite ;
P0 actif ;
P1 actif ;
P2 actif.
```

Regle :

```text
si une protection limite un choix live grave, le musicien doit le savoir.
```

---

## 10. Auto-Pro

### 10.1. Auto-Pro autorise

```text
limiter sub destructeur ;
limiter sub illisible ;
proteger headroom ;
proteger feedback ;
proteger resonance salle dangereuse ;
proteger source essentielle ;
signaler conflit grave ;
reduire boue non decidee ;
empecher attaque principale masquee ;
limiter halo/reverb si P0/P1.
```

### 10.2. Auto-Pro interdit

```text
choisir le porteur du grave hors protection ;
choisir graves libres ;
choisir transgression grave ;
choisir bloom expressif ;
retirer un Halo Lock hors P0/P1 ;
forcer le didgeridoo a s'adapter ;
decider un retour grave ;
transformer une scene en sound-system par automatisme.
```

### 10.3. Hierarchie P0/P1/P2

```text
P0
securite critique, feedback, danger PA, headroom critique.

P1
sub illisible, source essentielle masquee, boue grave non voulue,
attaque principale effacee.

P2
choix live explicite : graves libres, halo lock, gong bloom, sub porteur,
didgeridoo perturbateur, retour ou refus de retour.
```

Regle :

```text
P2 ne bat jamais P0.
P2 peut etre limite par P1 si la musicalite ou la lisibilite s'effondre.
Cette limitation doit etre signalee.
```

---

## 11. Criticite de latence

La latence est un enjeu musical et technique.
Elle ne doit pas etre resolue par compromis musical reel.

### 11.1. Chemin direct critique

Fonctions :

```text
didgeridoo audible/protege ;
sub direct ou porteur ;
retrait grave critique ;
protections P0/P1 ;
feedback/headroom ;
attaque principale ;
retour grave ponctuel.
```

Exigence :

```text
reaction immediate ou tres rapide au niveau musical.
```

Interdit :

```text
analyse lente qui corrige apres coup un conflit direct.
```

### 11.2. Chemin musical rapide

Fonctions :

```text
guidage harmonique ;
adaptation douce ;
basse-motif ;
acid naturalise guide ;
bloom court ;
contraction d'espace ;
signalisation.
```

Exigence :

```text
coherence rythmique et gestuelle.
```

### 11.3. Chemin lent / etat

Fonctions :

```text
mesure ou estimation de salle ;
mode scene ;
espace long ;
halo long ;
base microtonale stable ;
suivi de tendance ;
preparation de retour.
```

Exigence :

```text
stabilite et coherence, pas reactivite instantanee.
```

Regle :

```text
une analyse lente peut preparer un etat futur.
elle ne doit pas etre responsable d'une protection directe.
```

---

## 12. Naturalisation du grave genere

Objectif :

```text
le grave genere peut etre tres puissant, mais il ne doit pas devenir un son
electronique reconnaissable par defaut.
```

Moyens conceptuels autorises :

```text
source-bonding avec didgeridoo, gong, voix, friction ou resonance ;
cavite ;
reverb proche ou espace reactif ;
trace acoustique ;
formants ;
partiels ;
battements ;
souffle ;
micro-instabilite ;
relation au geste live ;
relation au retour corporel.
```

Interdits par defaut :

```text
sub standard reconnaissable ;
bassline electronique banale ;
effet club non decide ;
son de synthese frontal ;
grave impressionnant mais sans fonction.
```

Exception :

```text
electronique reconnaissable possible seulement si exception explicite,
fonction claire, scene compatible et sortie decidee.
```

---

## 13. Sorties et retours

### 13.1. Sorties possibles

```text
retour pulse ;
retour grave ;
retrait grave ;
cut sub ;
extinction bloom ;
queue longue lock ;
queue longue cut ;
transfer vers didgeridoo ;
transfer vers gong ;
transfer vers silence ;
transfer vers espace ;
graves libres -> soutien discret ;
graves libres -> retrait ;
sub porteur -> trace.
```

### 13.2. Retour grave

Un retour grave doit declarer :

```text
retour vers quoi ;
porteur du retour ;
role du didgeridoo ;
role du sub ;
role du gong ;
etat du halo ;
etat de l'espace ;
duree attendue ;
sortie possible.
```

### 13.3. Refus du retour

Le refus du retour est valide si :

```text
choix live ou scene explicite ;
corps retire ou suspendu decide ;
grave absent, trace ou souffle ;
retour futur preparable ou refus assume.
```

---

## 14. Fallback MIN-DID-PC

Le setup minimum didgeridoo + PC doit rester complet.

Sans gong :

```text
GRV-M1 didgeridoo guide harmonique ;
GRV-M2 soutien discret ;
GRV-M4 retrait du grave genere ;
GRV-M7 sub ponctuel non identifiable ;
GRV-M8 souffle derive du didgeridoo ou espace.
```

Sans sub puissant :

```text
pression par attaques ;
souffle ;
basse-motif trace ;
halo source ;
espace proche ;
retour par densite ou silence.
```

Sans source autre que didgeridoo :

```text
didgeridoo libre protege ;
systeme adapte au didgeridoo ;
traitement source optionnel ;
generation guidee ;
protections P0/P1.
```

Interdit :

```text
faire dependre la coherence du projet d'un gong physique, d'une PA parfaite ou
d'une configuration lourde.
```

---

## 15. Questions restantes

### `Q-GRV-1 - Gong physique ou modelise`

Question :

```text
quand le gong n'est pas present physiquement, jusqu'ou une fonction gong/bloom
modelisee peut-elle etre consideree acceptable ?
```

Reponse provisoire :

```text
acceptable si elle reste naturalisee, fonctionnelle et non decorative.
elle ne doit pas devenir un preset de gong ou un decor.
```

### `Q-GRV-2 - Default de grave par scene`

Question :

```text
faut-il fixer plus tard un default GRV precis pour chaque scene ?
```

Reponse provisoire :

```text
oui pour la jouabilite, mais pas encore en mapping physique.
```

### `Q-GRV-3 - Adaptation harmonique du didgeridoo`

Question :

```text
quels traitements seront acceptables pour adapter les harmoniques sans perdre
la sensation acoustique ?
```

Reponse provisoire :

```text
question technique future, a traiter sans choisir d'objet Max final maintenant.
```

### `Q-GRV-4 - Graves libres`

Question :

```text
quels signes live doivent indiquer que les graves libres sont actifs et risquent
d'etre limites par P0/P1 ?
```

Reponse provisoire :

```text
signalisation obligatoire, mais forme UI non definie.
```

---

## 16. Decision v0.1

Decision :

```text
le noeud grave/gong/sub/didgeridoo est suffisamment separe en modes, porteurs,
conflits, controles, protections et criticites de latence pour etre audite.
```

Etape suivante recommandee :

```text
auditer cette specification contre le corpus actif avant toute traduction vers
architecture concrete, patchers, objets Max, algorithmes ou interface physique.
```
