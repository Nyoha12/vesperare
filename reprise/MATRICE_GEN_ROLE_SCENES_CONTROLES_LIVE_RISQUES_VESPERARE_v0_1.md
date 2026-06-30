# MATRICE GEN-ROLE / SCENES / CONTROLES LIVE / RISQUES VESPERARE v0.1

Projet : Vesperare
Statut : matrice de jouabilite generation / scenes / controles / risques
Date : 2026-06-23

Sources actives principales :

- `SPECIFICATION_GENERATION_FINE_PAR_GEN_ROLE_MAX_STANDALONE_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_SPECIFICATION_GENERATION_FINE_PAR_GEN_ROLE_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_SCENES_PRIORITAIRES_ET_MACROS_v0_1.md`
- `SPECIFICATION_NOYAU_JOUABLE_SCENES_COUCHES_v0_1.md`
- `SPECIFICATION_CONTROLES_LIVE_ET_MODES_SCENE_v0_1.md`
- `SPECIFICATION_TECHNIQUE_CONCEPTUELLE_REVERB_SPACE_HALO_FREEZE_RESONATEURS_CONVOLUTION_MAX_STANDALONE_VESPERARE_v0_1.md`
- `DECISION_RUNTIME_MAX_STANDALONE_LATENCE_SANS_COMPROMIS_VESPERARE_v0_1.md`

But :

```text
relier chaque GEN-ROLE aux scenes, couches, gestes, etats, controles live,
risques et garde-fous, pour rendre la generation jouable sans la transformer
en banque de patterns, presets, algorithmes, objets Max definitifs ou UI finale.
```

Hors perimetre :

```text
algorithmes definitifs ;
objets Max definitifs ;
syntaxe Max ;
seuils ;
buffers ;
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
un GEN-ROLE n'est pas un son, un pattern ou un style.
c'est une fonction musicale activable dans une scene, une couche, un geste ou
un etat, avec controles live, autonomie limitee et risque explicite.
```

Cette matrice sert a eviter trois derives :

```text
1. transformer les roles generatifs en presets ;
2. traiter les scenes comme des cases exclusives ;
3. passer trop vite de l'intention musicale a l'implementation Max.
```

Regle principale :

```text
une seule scene dominante dirige la forme principale.
zero a deux couches peuvent rester actives en continu.
les gestes ponctuels sont libres si leur consequence musicale est lisible.
les etats peuvent durer longtemps si le choix est decide.
Auto-Pro protege sans composer.
```

---

## 2. Legende

### 2.1. Types de presence

```text
DOM
Le GEN-ROLE peut porter la scene dominante.

LAYER
Le GEN-ROLE ajoute une couche sans diriger toute la forme.

GESTE
Le GEN-ROLE intervient ponctuellement : impact, mutation, cut, retour, crise.

ETAT
Le GEN-ROLE maintient une qualite persistante : suspension, halo, retrait,
immersion, pression, silence, attente.

PROTECT
Le GEN-ROLE n'est pas choisi pour composer, mais il peut etre limite ou adapte
par Auto-Pro selon P0/P1.
```

### 2.2. Scenes

```text
SCN-1 - Didgeridoo / systeme minimum.
SCN-2 - Techno corporelle naturalisee.
SCN-3 - Techno suspendue tres longue.
SCN-4 - Gong / bloom grave / metal-gong.
SCN-5 - Sound-system immersion / domination.
SCN-6 - Voix exposee integree.
SCN-7 - Acid naturalise / ligne vivante.
SCN-8 - Polytexture rythmico-spectrale.
SCN-9 - Transgression controlee.
```

### 2.3. Controles generatifs transversaux

```text
LIVE-GEN-ROLE
Choix du role generatif actif ou arme.

LIVE-GEN-AUT
Autonomie : Off, Reponse, Variation, Proposition, Maintien, Autonomie forte
seulement si scene ou choix live explicite.

LIVE-GEN-DENSITY
Densite d'evenements, attaques, partiels ou mutations.

LIVE-GEN-RECOGNIZE
Degre de reconnaissance : motif lisible, acid perceptible, voix lisible,
electronique reconnaissable seulement par exception explicite.

LIVE-GEN-NAT
Naturalisation : source-bonding, cavite, reverb, resonance, traces acoustiques,
perception virtualo-acoustique.

LIVE-GEN-GRAVE
Relation au grave : retrait, trace, soutien, porteur ponctuel, bloom, libre.

LIVE-GEN-HAL
Relation au halo : aucun, source, memoire, lock, force, cut, momentary.

LIVE-GEN-SPC
Relation a l'espace : commun, proche, cavite, immersif, immense, hors-monde.

LIVE-GEN-RETURN
Preparation, condition, declenchement, refus ou sortie du retour corporel.

LIVE-GEN-TRANS
Niveau de rugosite, saturation, masse, nudite, cri, crise ou dissonance.

LIVE-GEN-MUTE
Retrait volontaire ou inhibition d'un role.

LIVE-GEN-SIGNAL
Signalisation : motif bloque, grave adapte, halo limite, source protegee,
retour prepare, densite nettoyee, P0/P1/P2 actif.
```

### 2.4. Etats d'activation

```text
OFF
Role inactif.

ARMED
Role pret mais pas audible ou pas encore autonome.

LIGHT
Trace perceptible, faible autonomie.

ACTIVE
Fonction clairement active.

FORCED
Choix live explicite impose hors Auto-Pro ordinaire.

LOCKED
Maintien decide, sauf P0/P1.

CUT
Retrait decide.

SAFE
Mode protege : la fonction reste disponible, mais limitee par P0/P1.
```

---

## 3. Matrice principale GEN-ROLE -> scenes -> controles -> risques

### 3.1. `GEN-PULSE`

Fonction :

```text
orienter le corps par pression rythmique, pulse explicite ou implicite,
attaques, respiration cyclique, micro-pulse ou retour progressif.
```

Scenes :

```text
DOM : SCN-2.
LAYER : SCN-1, SCN-3, SCN-5, SCN-8.
GESTE : SCN-9, retour ponctuel dans SCN-3.
ETAT : corps latent, corps oriente, retour prepare.
```

Controles requis :

```text
LIVE-GEN-DENSITY ;
LIVE-GEN-RETURN ;
PLAY-5 Corps / retour ;
STRUCT-2 Etat de forme ;
LIVE-GEN-MUTE ;
LIVE-GEN-SIGNAL.
```

Risques :

```text
kick techno banal ;
grille mecanique trop evidente ;
effacement du didgeridoo ;
retour du corps impose alors qu'un retrait etait decide.
```

Garde-fous :

```text
ne pas rendre le pulse frontal par defaut ;
laisser le pulse latent possible ;
interdire le retour automatique hors choix live, scene ou preparation claire.
```

### 3.2. `GEN-COUNTERTIME`

Fonction :

```text
creer tension par absence, retard, deplacement, suspension, respiration ou
appel non resolu.
```

Scenes :

```text
DOM : rarement, seulement passage tres specifique dans SCN-3 ou SCN-8.
LAYER : SCN-2, SCN-3, SCN-7, SCN-8.
GESTE : rupture, contre-appel, faux retour, contraction.
ETAT : attente active, retour differe, corps retenu.
```

Controles requis :

```text
LIVE-GEN-RETURN ;
LIVE-GEN-DENSITY ;
STRUCT-2 Etat de forme ;
PLAY-5 Corps / retour ;
LIVE-GEN-SIGNAL.
```

Risques :

```text
break/drop generique ;
effet de suspense artificiel ;
perte de lisibilite corporelle ;
retour non prepare.
```

Garde-fous :

```text
lier chaque contretemps a une fonction de forme ;
specifier si le manque doit appeler, frustrer, suspendre, repousser ou ouvrir.
```

### 3.3. `GEN-POLYRHYTHM`

Fonction :

```text
installer plusieurs cycles ou periodicites corporelles lisibles sans transformer
la complexite en demonstration.
```

Scenes :

```text
DOM : SCN-8.
LAYER : SCN-2, SCN-4, SCN-5, SCN-9.
GESTE : densification courte, bascule de plan, crise rythmique.
ETAT : complexite cyclique maintenue.
```

Controles requis :

```text
LIVE-GEN-DENSITY ;
LIVE-GEN-AUT ;
LIVE-GEN-RETURN ;
STRUCT-3 Couches actives ;
MON-1 Protection / signalisation.
```

Risques :

```text
accumulation non lisible ;
perte de couche directrice ;
confusion avec interlocking ;
fatigue si la densite reste haute trop longtemps sans raison.
```

Garde-fous :

```text
garder une couche directrice perceptible ;
separer POLYRHYTHM = plusieurs cycles de INTERLOCKING = complement d'attaques.
```

### 3.4. `GEN-INTERLOCKING`

Fonction :

```text
creer un tissage d'attaques, de plans et de complements rythmiques inspire par
des phenomenes de precision, d'ecoute et de circulation, notamment Keita Ogawa,
sans imitation stylistique.
```

Scenes :

```text
DOM : SCN-8.
LAYER : SCN-1, SCN-2, SCN-6, SCN-7, SCN-9.
GESTE : reponse d'attaque, ping rythmique, ponctuation, deraillement controle.
ETAT : tissu actif autour d'une source ou d'un pulse.
```

Controles requis :

```text
LIVE-GEN-DENSITY ;
LIVE-GEN-AUT ;
LIVE-GEN-NAT ;
PLAY-1 Didgeridoo / source live ;
STRUCT-3 Couches actives ;
LIVE-GEN-SIGNAL.
```

Risques :

```text
percussion illustrative ;
style plaque ;
densite qui vole la source live ;
motif trop regulier ou trop autonome.
```

Garde-fous :

```text
penser interlocking comme relation entre plans, pas comme pattern ethnique ;
autoriser le retrait rapide si la source essentielle devient illisible.
```

### 3.5. `GEN-BASS-MOTIF`

Fonction :

```text
porter poids, corps, seuil et retour par un motif grave ou une basse-motif,
sans devenir une basse electronique standard.
```

Scenes :

```text
DOM : SCN-2, SCN-5 seulement si la basse porte vraiment la scene.
LAYER : SCN-1, SCN-3, SCN-4, SCN-7, SCN-8.
GESTE : retour grave, appel, reponse au didgeridoo, retrait.
ETAT : soutien discret, pression grave latente.
```

Controles requis :

```text
LIVE-GEN-GRAVE ;
PLAY-2 Grave / conflit ;
LIVE-GEN-RETURN ;
LIVE-GEN-RECOGNIZE ;
MON-1 sub protege / grave reduit / source protegee.
```

Risques :

```text
conflit avec didgeridoo ;
conflit avec gong ou sub ;
motif trop autonome ;
son de basse synthetique reconnaissable hors exception.
```

Garde-fous :

```text
prevoir les modes : grave soutient, grave se retire, graves libres, didgeridoo
guide, didgeridoo adapte, harmoniques adaptees si necessaire.
```

### 3.6. `GEN-ACID-NAT`

Fonction :

```text
emprunter l'energie d'une ligne acid : torsion, tension, elasticite, repetition
vivante, resonance et mutation, sans TB-303 reconnaissable par defaut.
```

Scenes :

```text
DOM : SCN-7 seulement dans passage ou scene explicite.
LAYER : SCN-2, SCN-3, SCN-1, SCN-8.
GESTE : mutation, vrille, appel, trace, relance.
ETAT : ligne vivante naturalisee maintenue.
```

Controles requis :

```text
LIVE-GEN-RECOGNIZE ;
LIVE-GEN-NAT ;
LIVE-GEN-AUT ;
LIVE-GEN-DENSITY ;
LIVE-GEN-SPC ;
LIVE-GEN-MUTE.
```

Risques :

```text
TB-303, squelch ou acid cliche ;
lead synth banal ;
motif trop autonome ;
ligne trop lumineuse ou trop artificielle ;
conflit avec voix ou didgeridoo.
```

Garde-fous :

```text
naturaliser par source-bonding, cavite, reverb, filtrage organique, traces
acoustiques ou relation aux partiels ;
garder la reconnaissance acid comme controle, pas comme defaut.
```

### 3.7. `GEN-LINE-MODAL-MICRO`

Fonction :

```text
creer une ligne, couleur, attraction ou resolution par modalite, microtension,
partiels et ecarts, sans cours de theorie ni effet demonstratif.
```

Scenes :

```text
DOM : rarement, seulement passage contemplatif ou ligne directrice explicite.
LAYER : SCN-1, SCN-3, SCN-4, SCN-6, SCN-7, SCN-8.
GESTE : inflexion, tension, resolution, conflit, trace melodique.
ETAT : base microtonale, couleur harmonique, flottement.
```

Controles requis :

```text
LIVE-GEN-RECOGNIZE ;
LIVE-GEN-NAT ;
LIVE-GEN-GRAVE ;
PLAY-1 Didgeridoo ;
PLAY-2 Grave / conflit ;
LIVE-GEN-SIGNAL.
```

Risques :

```text
melodie trop autonome ;
conflit faux ou mal assume ;
effet exotique ;
effacement des partiels naturels du didgeridoo ou du gong.
```

Garde-fous :

```text
lier la ligne a une source, un grave, un gong, un retour ou une tension de scene ;
prevoir retrait si la ligne devient lead banal.
```

### 3.8. `GEN-JAZZ-KEITA`

Fonction :

```text
importer une intelligence de jeu : attention, deplacement, relance, ponctuation,
micro-decision, tension dynamique et precision timbrale, sans importer un style
jazz, des accords jazz, un swing plaque ou une imitation Keita Ogawa.
```

Scenes :

```text
DOM : jamais par defaut.
LAYER : SCN-1, SCN-2, SCN-6, SCN-8, SCN-9.
GESTE : ponctuation, relance, silence actif, reponse, densification breve.
ETAT : ecoute active, instabilite fine, intelligence de repartition.
```

Controles requis :

```text
LIVE-GEN-AUT ;
LIVE-GEN-DENSITY ;
LIVE-GEN-NAT ;
STRUCT-2 Etat de forme ;
PLAY-1 Source live ;
LIVE-GEN-SIGNAL.
```

Risques :

```text
style jazz plaque ;
accords ou walking implicites ;
percussion illustrative ;
virtuosite demonstrative ;
confusion avec interlocking pur.
```

Garde-fous :

```text
utiliser ce role comme methode de subtilite et d'interaction ;
ne jamais le nommer ou le traiter comme couleur stylistique autonome.
```

### 3.9. `GEN-VOICE-INTEGRATED`

Fonction :

```text
traiter la voix comme presence, signal, souffle, attaque, cri, matiere,
fragment, transgression ou proximite, sans voix nue par defaut et sans chanson
non decidee.
```

Scenes :

```text
DOM : SCN-6 ponctuellement.
LAYER : SCN-3, SCN-5, SCN-8, SCN-9.
GESTE : fragment, appel, souffle, cri, attaque, trace.
ETAT : proximite vocale integree, presence spectrale, corps humain masque ou revele.
```

Controles requis :

```text
LIVE-GEN-NAT ;
LIVE-GEN-RECOGNIZE ;
LIVE-GEN-SPC ;
LIVE-GEN-HAL ;
LIVE-GEN-TRANS ;
MON-1 source protegee / voix essentielle masquee.
```

Risques :

```text
voix nue ;
effet chanson ;
lead humain trop frontal ;
pitch correction ou auto-tune reconnaissable ;
fragilite masquee par reverb ou densite.
```

Garde-fous :

```text
imposer integration sonore ou virtualo-acoustique ;
prevoir source-filter, cavite, proximite, halo, texture ou fonction rythmique ;
bloquer pitch correction reconnaissable par defaut.
```

### 3.10. `GEN-TEXTURE-BLOOM`

Fonction :

```text
creer masse, ouverture, souffle, metal, queue, bloom, resonance et croissance
spectrale sans nappe decorative.
```

Scenes :

```text
DOM : SCN-4, SCN-5, SCN-3 selon fonction.
LAYER : SCN-1, SCN-8, SCN-9.
GESTE : bloom gong, apparition de masse, ouverture, saturation douce, effondrement.
ETAT : souffle grave, metal vivant, espace enrichi, halo materiel.
```

Controles requis :

```text
LIVE-GEN-GRAVE ;
LIVE-GEN-SPC ;
LIVE-GEN-HAL ;
LIVE-GEN-DENSITY ;
PLAY-3 Espace monde ;
PLAY-4 Halo ;
MON-1 boue de reverb / sub illisible.
```

Risques :

```text
nappe ambient ;
gong new-age ;
boue grave/reverb ;
brillance agressive ;
attaque principale masquee ;
perte de corps si non decidee.
```

Garde-fous :

```text
clarifier si bloom = grave, metal, halo, souffle, espace ou consequence ;
ne pas laisser une texture longue devenir decor par inertie.
```

### 3.11. `GEN-RETURN`

Fonction :

```text
preparer, declencher, retarder, refuser ou transformer un retour corporel,
grave, rythmique, spatial ou formel.
```

Scenes :

```text
DOM : rarement, scene de sortie ou transition.
LAYER : toutes les scenes.
GESTE : retour grave, retour pulse, contraction, drop non generique, resolution.
ETAT : retour latent, retour prepare, refus du retour, maintien prolonge.
```

Controles requis :

```text
LIVE-GEN-RETURN ;
STRUCT-2 Etat de forme ;
PLAY-5 Corps / retour ;
LIVE-GEN-GRAVE ;
LIVE-GEN-DENSITY ;
LIVE-GEN-SIGNAL.
```

Risques :

```text
drop automatique ;
retour trop tot ;
retour impose a une suspension decidee ;
absence de consequence apres preparation.
```

Garde-fous :

```text
declarer toujours preparation, condition et sortie ;
autoriser maintien prolonge ou refus explicite du retour.
```

### 3.12. `GEN-SILENCE`

Fonction :

```text
utiliser silence, retrait, vide, absence, respiration ou inhibition comme
decision musicale, pas comme simple mute technique.
```

Scenes :

```text
DOM : SCN-3 ponctuellement ou etat long decide.
LAYER : toutes les scenes comme retrait local.
GESTE : cut, trou, suspension, effacement, respiration.
ETAT : rarete, attente, espace vide, corps retire.
```

Controles requis :

```text
LIVE-GEN-MUTE ;
LIVE-GEN-RETURN ;
STRUCT-2 Etat de forme ;
PLAY-5 Corps / retour ;
LIVE-GEN-SIGNAL.
```

Risques :

```text
confusion avec panne ou protection ;
perte de tension ;
vide decoratif ;
retour non prepare.
```

Garde-fous :

```text
signaler la difference entre retrait decide et limitation Auto-Pro ;
lier le silence a attente, pression, proximite, transgression ou retour.
```

### 3.13. `GEN-HAL-SOURCE`

Fonction :

```text
fournir de la matiere de halo depuis source, queue, memoire, trace, resonances
ou gestes, sans decider lui-meme du mode HAL.
```

Scenes :

```text
DOM : jamais.
LAYER : SCN-1, SCN-3, SCN-4, SCN-6, SCN-8, SCN-9.
GESTE : capture, trace, prolongement, cut, halo momentary.
ETAT : memoire source, queue active, halo force si PLAY-4 le decide.
```

Controles requis :

```text
LIVE-GEN-HAL ;
PLAY-4 Halo ;
LIVE-GEN-SPC ;
LIVE-GEN-NAT ;
MON-1 halo adapte / source protegee.
```

Risques :

```text
halo decide par generation ;
queue qui masque la source ;
memoire qui devient nappe ;
Halo Lock retire hors P0/P1 ;
confusion entre halo, reverb et texture.
```

Garde-fous :

```text
GEN-HAL-SOURCE propose une matiere ;
PLAY-4 decide Auto, Lock, Force, Cut, Momentary ou Safe force.
```

### 3.14. `GEN-SUB-GONG-BREATH`

Fonction :

```text
produire ou organiser souffle grave, sub precis, basse riche, gong, metal,
base microtonale et presence physique complexe.
```

Scenes :

```text
DOM : SCN-4, SCN-5.
LAYER : SCN-1, SCN-2, SCN-3, SCN-8, SCN-9.
GESTE : bloom, souffle, impact grave, retrait du grave, ouverture metal.
ETAT : grave porteur, soutien discret, base microtonale, domination physique.
```

Controles requis :

```text
LIVE-GEN-GRAVE ;
PLAY-2 Grave / conflit ;
PLAY-3 Espace monde ;
LIVE-GEN-HAL ;
LIVE-GEN-SPC ;
MON-1 sub protege / grave reduit / gong essentiel masque.
```

Risques :

```text
role trop large ;
conflit didgeridoo / gong / sub ;
grave impressionnant mais illisible ;
boue de reverb ;
masquage attaque ou source ;
confusion entre base harmonique, pression sub et souffle.
```

Garde-fous :

```text
distinguer au minimum : sub physique, gong/bloom, souffle, base harmonique,
conflit didgeridoo ;
prevoir une fiche dediee grave/gong/sub/didgeridoo avant implementation.
```

### 3.15. `GEN-DID-GUIDED-LINE`

Fonction :

```text
laisser le didgeridoo guider, attirer, contraindre ou perturber une ligne ou un
motif, sans reduire le didgeridoo a un controleur ou une basse fixe.
```

Scenes :

```text
DOM : SCN-1 si le didgeridoo dirige la scene.
LAYER : SCN-2, SCN-3, SCN-4, SCN-7, SCN-8.
GESTE : reponse a partiel, adaptation harmonique, retrait de ligne, friction.
ETAT : co-evolution didgeridoo / systeme, guide harmonique leger ou central.
```

Controles requis :

```text
PLAY-1 Didgeridoo / source live ;
PLAY-2 Grave / conflit ;
LIVE-GEN-NAT ;
LIVE-GEN-RECOGNIZE ;
LIVE-GEN-GRAVE ;
MON-1 source protegee / grave reduit.
```

Risques :

```text
didgeridoo transforme en simple input ;
ligne qui force le didgeridoo ;
harmoniques adaptees de facon audible et artificielle ;
grave qui lutte contre le bourdon ;
liberte live reduite.
```

Garde-fous :

```text
conserver les modes : systeme adapte au didgeridoo, didgeridoo adapte au
systeme, mode libre protege ;
ne modifier les harmoniques que comme option explicite, pas comme defaut lourd.
```

---

## 4. Matrice scene -> roles generatifs utiles

### 4.1. `SCN-1 - Didgeridoo / systeme minimum`

Roles principaux :

```text
GEN-DID-GUIDED-LINE ;
GEN-PULSE ;
GEN-BASS-MOTIF ;
GEN-LINE-MODAL-MICRO ;
GEN-HAL-SOURCE.
```

Roles optionnels :

```text
GEN-INTERLOCKING ;
GEN-ACID-NAT ;
GEN-TEXTURE-BLOOM ;
GEN-SUB-GONG-BREATH si grave/gong disponible ou modelise ;
GEN-SILENCE ;
GEN-RETURN.
```

Interdits par defaut :

```text
effacer le didgeridoo ;
decider a sa place ;
forcer une basse contre le bourdon ;
traiter le didgeridoo comme simple controleur.
```

Controles critiques :

```text
PLAY-1 ;
PLAY-2 ;
LIVE-GEN-GRAVE ;
LIVE-GEN-NAT ;
LIVE-GEN-SIGNAL.
```

### 4.2. `SCN-2 - Techno corporelle naturalisee`

Roles principaux :

```text
GEN-PULSE ;
GEN-BASS-MOTIF ;
GEN-COUNTERTIME ;
GEN-POLYRHYTHM ;
GEN-INTERLOCKING.
```

Roles optionnels :

```text
GEN-ACID-NAT ;
GEN-DID-GUIDED-LINE ;
GEN-SUB-GONG-BREATH ;
GEN-RETURN ;
GEN-TEXTURE-BLOOM ;
GEN-JAZZ-KEITA.
```

Interdits par defaut :

```text
kick techno banal ;
loop mecanique ;
electronique reconnaissable ;
retour impose hors decision.
```

Controles critiques :

```text
LIVE-GEN-DENSITY ;
LIVE-GEN-RETURN ;
LIVE-GEN-GRAVE ;
PLAY-5 ;
MON-1.
```

### 4.3. `SCN-3 - Techno suspendue tres longue`

Roles principaux :

```text
GEN-COUNTERTIME ;
GEN-SILENCE ;
GEN-RETURN ;
GEN-HAL-SOURCE ;
GEN-TEXTURE-BLOOM.
```

Roles optionnels :

```text
GEN-PULSE latent ;
GEN-ACID-NAT trace ou ligne etiree ;
GEN-LINE-MODAL-MICRO ;
GEN-VOICE-INTEGRATED ;
GEN-SUB-GONG-BREATH ;
GEN-DID-GUIDED-LINE.
```

Interdits par defaut :

```text
retour obligatoire ;
ambiance decorative non decidee ;
perte du corps non assumee ;
source essentielle masquee.
```

Controles critiques :

```text
PLAY-4 Halo ;
PLAY-5 Corps / retour ;
LIVE-GEN-RETURN ;
LIVE-GEN-SPC ;
LIVE-GEN-MUTE ;
LIVE-GEN-SIGNAL.
```

### 4.4. `SCN-4 - Gong / bloom grave / metal-gong`

Roles principaux :

```text
GEN-SUB-GONG-BREATH ;
GEN-TEXTURE-BLOOM ;
GEN-LINE-MODAL-MICRO ;
GEN-HAL-SOURCE.
```

Roles optionnels :

```text
GEN-BASS-MOTIF ;
GEN-RETURN ;
GEN-SILENCE ;
GEN-POLYRHYTHM lent ;
GEN-DID-GUIDED-LINE.
```

Interdits par defaut :

```text
boue grave ;
gong new-age ;
partiels envahissants non decidees ;
sub qui masque tout ;
reverb qui remplace la matiere.
```

Controles critiques :

```text
LIVE-GEN-GRAVE ;
PLAY-2 ;
PLAY-3 ;
PLAY-4 ;
MON-1 sub protege / boue de reverb / source protegee.
```

### 4.5. `SCN-5 - Sound-system immersion / domination`

Roles principaux :

```text
GEN-BASS-MOTIF ;
GEN-SUB-GONG-BREATH ;
GEN-PULSE ;
GEN-TEXTURE-BLOOM ;
GEN-RETURN.
```

Roles optionnels :

```text
GEN-COUNTERTIME ;
GEN-SILENCE ;
GEN-VOICE-INTEGRATED ;
GEN-POLYRHYTHM ;
transgression via LIVE-GEN-TRANS depuis roles compatibles.
```

Interdits par defaut :

```text
domination qui ecrase la source live ;
pression sans lisibilite ;
grand espace decoratif non decide ;
sub destructeur.
```

Controles critiques :

```text
LIVE-GEN-GRAVE ;
LIVE-GEN-SPC ;
PLAY-3 ;
PLAY-5 ;
MON-1 headroom / sub / source protegee.
```

### 4.6. `SCN-6 - Voix exposee integree`

Roles principaux :

```text
GEN-VOICE-INTEGRATED ;
GEN-HAL-SOURCE ;
GEN-SILENCE ;
GEN-LINE-MODAL-MICRO.
```

Roles optionnels :

```text
GEN-INTERLOCKING ;
GEN-JAZZ-KEITA ;
GEN-TEXTURE-BLOOM ;
GEN-RETURN ;
GEN-COUNTERTIME.
```

Interdits par defaut :

```text
voix nue ;
auto-tune reconnaissable ;
effet chanson non decide ;
lead vocal banal ;
reverb qui noie la presence.
```

Controles critiques :

```text
LIVE-GEN-NAT ;
LIVE-GEN-RECOGNIZE ;
LIVE-GEN-SPC ;
LIVE-GEN-HAL ;
MON-1 voix essentielle masquee.
```

### 4.7. `SCN-7 - Acid naturalise / ligne vivante`

Roles principaux :

```text
GEN-ACID-NAT ;
GEN-DID-GUIDED-LINE ;
GEN-LINE-MODAL-MICRO ;
GEN-BASS-MOTIF.
```

Roles optionnels :

```text
GEN-PULSE ;
GEN-COUNTERTIME ;
GEN-INTERLOCKING ;
GEN-JAZZ-KEITA ;
GEN-RETURN ;
GEN-HAL-SOURCE.
```

Interdits par defaut :

```text
TB-303 reconnaissable ;
squelch cliche ;
lead synth banal ;
ligne toujours autonome ;
motif sans sortie.
```

Controles critiques :

```text
LIVE-GEN-RECOGNIZE ;
LIVE-GEN-NAT ;
LIVE-GEN-AUT ;
LIVE-GEN-MUTE ;
LIVE-GEN-SIGNAL.
```

### 4.8. `SCN-8 - Polytexture rythmico-spectrale`

Roles principaux :

```text
GEN-POLYRHYTHM ;
GEN-INTERLOCKING ;
GEN-TEXTURE-BLOOM ;
GEN-JAZZ-KEITA ;
GEN-LINE-MODAL-MICRO.
```

Roles optionnels :

```text
GEN-PULSE ;
GEN-ACID-NAT ;
GEN-VOICE-INTEGRATED ;
GEN-SUB-GONG-BREATH ;
GEN-HAL-SOURCE ;
GEN-RETURN.
```

Interdits par defaut :

```text
densite sans hierarchie ;
complexite illustrative ;
disparition du corps non decidee ;
source essentielle masquee.
```

Controles critiques :

```text
LIVE-GEN-DENSITY ;
STRUCT-3 Couches actives ;
LIVE-GEN-AUT ;
LIVE-GEN-SIGNAL ;
MON-1 densite nettoyee.
```

### 4.9. `SCN-9 - Transgression controlee`

Roles principaux :

```text
GEN-VOICE-INTEGRATED ;
GEN-TEXTURE-BLOOM ;
GEN-SUB-GONG-BREATH ;
GEN-POLYRHYTHM ;
GEN-SILENCE ;
GEN-RETURN.
```

Roles optionnels :

```text
GEN-PULSE ;
GEN-INTERLOCKING ;
GEN-JAZZ-KEITA ;
GEN-ACID-NAT ;
GEN-HAL-SOURCE.
```

Interdits par defaut :

```text
saturation non choisie ;
masse sans fonction ;
fatigue sans consequence ;
destruction de lisibilite sans sortie ;
transgression permanente par defaut.
```

Controles critiques :

```text
LIVE-GEN-TRANS ;
LIVE-GEN-RETURN ;
LIVE-GEN-MUTE ;
STRUCT-2 Etat de forme ;
MON-1 P0/P1/P2.
```

---

## 5. Superpositions utiles et conditions

### 5.1. Superpositions centrales

```text
GEN-PULSE + GEN-INTERLOCKING
Condition : une couche directrice reste perceptible.
Usage : techno corporelle naturalisee, polytexture lisible.
Risque : densite mecanique ou surcharge.

GEN-POLYRHYTHM + GEN-JAZZ-KEITA
Condition : Keita/jazz reste methode de decision, pas style.
Usage : tension dynamique, relance, micro-ponctuation.
Risque : virtuosite illustrative.

GEN-ACID-NAT + GEN-DID-GUIDED-LINE
Condition : reconnaissance acid controlee.
Usage : ligne vivante guidee par partiels, bourdon ou conflits.
Risque : synth lead ou didgeridoo reduit a input.

GEN-BASS-MOTIF + GEN-SUB-GONG-BREATH
Condition : arbitrage grave explicite.
Usage : poids, retour, souffle, domination, bloom.
Risque : conflit sub/gong/didgeridoo.

GEN-VOICE-INTEGRATED + GEN-HAL-SOURCE
Condition : voix integree, pas nue.
Usage : presence, souffle, cri, memoire, proximite.
Risque : chanson, auto-tune, reverb cache-misere.

GEN-TEXTURE-BLOOM + LIVE-GEN-SPC + LIVE-GEN-HAL
Condition : distinguer texture, espace et halo.
Usage : gong, immersion, suspension, consequence.
Risque : nappe ambient ou boue de reverb.

GEN-RETURN + GEN-SILENCE
Condition : preparation, condition, sortie declarees.
Usage : attente, retour differe, refus du retour, impact rare.
Risque : trou percu comme panne.

GEN-LINE-MODAL-MICRO + GEN-SUB-GONG-BREATH
Condition : base harmonique/gong/sub differenciee.
Usage : tension microtonale, base grave, souffle harmonique.
Risque : conflit spectral non musical.
```

### 5.2. Superpositions a limiter ou surveiller

```text
Acid + voix
Autorise si l'un des deux reste couche ou trace.
Risque : lead/gimmick.

Gong + didgeridoo grave + sub
Autorise si PLAY-2 declare le porteur du grave.
Risque : conflit grave/harmonique.

Grande reverb + sound-system domination
Autorise si espace et pression ont chacun une fonction.
Risque : masse spectaculaire moins lisible.

Polytexture + transgression
Autorise si la transgression a forme, duree, sortie et consequence.
Risque : surcharge sans hierarchie.

Suspension tres longue + absence de corps
Autorise si decide.
Risque : retour non preparable si aucun indicateur latent n'est conserve.
```

---

## 6. Assignations par defaut conceptuelles

Ces assignations ne sont pas des mappings physiques.
Elles disent seulement quels types de decisions doivent rester accessibles.

### 6.1. Toujours sous la main

```text
STRUCT-1 Scene dominante.
STRUCT-2 Etat de forme.
STRUCT-3 Couches actives.
PLAY-1 Didgeridoo / source live.
PLAY-2 Grave / conflit.
PLAY-3 Espace monde.
PLAY-4 Halo.
PLAY-5 Corps / retour.
LIVE-GEN-ROLE.
LIVE-GEN-AUT.
LIVE-GEN-DENSITY.
LIVE-GEN-MUTE.
LIVE-GEN-SIGNAL.
```

### 6.2. Sous la main selon scene

```text
SCN-1
PLAY-1, PLAY-2, LIVE-GEN-NAT, LIVE-GEN-GRAVE.

SCN-2
LIVE-GEN-DENSITY, LIVE-GEN-RETURN, LIVE-GEN-GRAVE.

SCN-3
PLAY-4, PLAY-5, LIVE-GEN-RETURN, LIVE-GEN-SPC.

SCN-4
LIVE-GEN-GRAVE, PLAY-2, PLAY-3, PLAY-4.

SCN-5
LIVE-GEN-GRAVE, LIVE-GEN-SPC, PLAY-3, MON-1.

SCN-6
LIVE-GEN-NAT, LIVE-GEN-RECOGNIZE, LIVE-GEN-HAL, LIVE-GEN-SPC.

SCN-7
LIVE-GEN-RECOGNIZE, LIVE-GEN-NAT, LIVE-GEN-AUT, LIVE-GEN-MUTE.

SCN-8
LIVE-GEN-DENSITY, STRUCT-3, LIVE-GEN-AUT, LIVE-GEN-SIGNAL.

SCN-9
LIVE-GEN-TRANS, LIVE-GEN-RETURN, LIVE-GEN-MUTE, MON-1.
```

### 6.3. Auto-Pro autorise

```text
limiter headroom ;
limiter feedback ;
reduire sub dangereux ou illisible ;
nettoyer densite qui efface la forme ;
proteger source essentielle ;
adapter halo ou reverb si boue de mix ;
signaler que P0/P1 limite un choix.
```

### 6.4. Auto-Pro interdit

```text
choisir une scene dominante ;
choisir une transgression ;
choisir un retour corporel ;
choisir une grande reverb expressive ;
retirer un Halo Lock hors P0/P1 ;
transformer une ligne en lead ;
composer a la place du musicien.
```

---

## 7. Risques transversaux

### 7.1. `RIS-GENSCN-1 - Autonomie excessive`

Description :

```text
un motif, une ligne, une texture ou une rythmique prend la forme a la place de
la scene dominante.
```

Traitement :

```text
limiter AUT-5 a scene ou choix live explicite ;
imposer fonction, apparition, variation et sortie ;
prevoir LIVE-GEN-MUTE.
```

### 7.2. `RIS-GENSCN-2 - Reconnaissance electronique non voulue`

Description :

```text
acid, basse, lead, effet, pitch correction ou synthese devient identifiable
comme son electronique banal.
```

Traitement :

```text
LIVE-GEN-RECOGNIZE ;
LIVE-GEN-NAT ;
exception explicite seulement ;
naturalisation par source, cavite, reverb, resonance ou trace acoustique.
```

### 7.3. `RIS-GENSCN-3 - Conflit grave`

Description :

```text
didgeridoo, gong, sub, basse-motif et bloom veulent porter le grave en meme
temps.
```

Traitement :

```text
PLAY-2 declare le mode ;
un seul porteur principal sauf graves libres explicitement decides ;
fiche dediee grave/gong/sub/didgeridoo necessaire avant implementation.
```

### 7.4. `RIS-GENSCN-4 - Scene devenue case fermee`

Description :

```text
une scene empeche des superpositions pourtant souhaitables.
```

Traitement :

```text
conserver DOM / LAYER / GESTE / ETAT ;
autoriser les scenes comme centres de gravite, pas comme interdictions.
```

### 7.5. `RIS-GENSCN-5 - Auto-Pro compose`

Description :

```text
les protections deviennent decisions esthetiques cachees.
```

Traitement :

```text
Auto-Pro limite, protege, signale ;
P2 reste prioritaire sauf P0/P1 ;
aucun retour, transgression, scene ou halo expressif choisi par Auto-Pro.
```

### 7.6. `RIS-GENSCN-6 - Reverb / halo / texture confondus`

Description :

```text
une queue longue, un monde spatial, une texture bloom et un halo sont traites
comme une seule nappe.
```

Traitement :

```text
PLAY-3 decide l'espace ;
PLAY-4 decide le halo ;
GEN-TEXTURE-BLOOM produit la matiere ;
GEN-HAL-SOURCE propose de la memoire ;
Auto-Pro surveille boue, source masquee et grave illisible.
```

### 7.7. `RIS-GENSCN-7 - Latence ignoree`

Description :

```text
un role exige une reactivite impossible sans nuire a l'enjeu musical de latence.
```

Traitement :

```text
Max standalone reste runtime principal ;
les fonctions critiques doivent etre classees temps-reel, quasi temps-reel ou
hors chemin critique ;
aucun compromis musical reel n'est accepte comme solution.
```

---

## 8. Questions restantes

### `Q-GENSCN-1 - Grave / gong / sub / didgeridoo`

Question :

```text
faut-il separer `GEN-SUB-GONG-BREATH` en sous-roles avant toute architecture
plus concrete ?
```

Reponse provisoire :

```text
oui, probablement.
Le role est musicalement juste mais techniquement trop dense : sub physique,
gong bloom, souffle, base microtonale, soutien discret, domination et conflit
didgeridoo doivent etre distingues.
```

### `Q-GENSCN-2 - Surface de controle`

Question :

```text
combien de decisions generatives peuvent rester sous la main en live sans
rendre le systeme injouable ?
```

Reponse provisoire :

```text
la future surface ne doit pas exposer tous les controles en meme temps ;
elle devra presenter un noyau permanent et des pages ou modes par scene.
```

### `Q-GENSCN-3 - Scenes composees`

Question :

```text
quand une superposition devient-elle une scene composee plutot qu'une DOM avec
couches ?
```

Reponse provisoire :

```text
quand plus de deux couches restent actives longtemps ou quand deux fonctions
veulent diriger simultanement la forme.
```

---

## 9. Decision v0.1

Decision :

```text
la matrice GEN-ROLE / scenes / controles live / risques est suffisante pour
empecher la generation fine de partir directement vers algorithmes, presets ou
patch final.
```

Etape suivante recommandee :

```text
auditer cette matrice contre le corpus actif, puis ouvrir une fiche dediee
grave/gong/sub/didgeridoo si l'audit confirme que ce noeud reste le plus fragile.
```
