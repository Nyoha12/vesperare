# SPECIFICATION ARCHITECTURE RUNTIME PORTABLE MAX RNBO M4L VESPERARE v0.1

Projet : Vesperare
Statut : specification historique runtime portable, corrigee par decision Max standalone
Date : 2026-06-22

Sources actives principales :

- `DECISION_RUNTIME_MAX_STANDALONE_LATENCE_SANS_COMPROMIS_VESPERARE_v0_1.md`
- `ARBITRAGE_RUNTIME_HOST_PORTABILITE_LATENCE_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_FOR_LIVE_DETAILLEE_NIVEAU_3_TRADUCTION_SESSION_ABSTRAITE_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_MAX_FOR_LIVE_DETAILLEE_NIVEAU_3_TRADUCTION_SESSION_ABSTRAITE_VESPERARE_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_MAX_FOR_LIVE_DETAILLEE_NIVEAU_2_MODULES_MESSAGES_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_FOR_LIVE_DETAILLEE_NIVEAU_2_MODULES_MESSAGES_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_BLOC_GENERATION_SONORE_MOTIFS_RYTHMIQUES_MELODIQUES_v0_1.md`
- `REVERBS_ESPACE_REACTIF_v0_2.md`
- `SPECIFICATION_SYSTEME_DECISIONNEL_CONCEPTUEL_VESPERARE_v0_1.md`
- `AUDIT_TRACABILITE_CAHIER_CHARGES_GENERATIF_STYLISTIQUE_v0_1.md`

Cadrage externe consulte :

- Max/MSP : I/O vector size et signal vector size influencent latence et charge CPU.
- Max/MSP : le signal vector peut descendre bas selon driver, mais plus petit augmente la charge.
- Ableton Live : baisser le buffer reduit la latence mais augmente la charge CPU et le risque de dropouts.
- Ableton Live : la reduction de latence en monitoring ne supprime pas la latence propre a la chaine audio.
- RNBO : export possible vers VST3 Mac/Win/Linux, Raspberry Pi, C++, JavaScript, Max externals.
- Bela : plateforme embarquee hard-real-time / ultra-low-latency, mais non equivalente a Max complet.

Rectification active :

```text
Max/MSP standalone est maintenant le runtime principal.
La portabilite reste utile comme discipline de separation, mais ne guide plus
la roadmap avant Max standalone.
```

But historique :

```text
reformuler Vesperare comme architecture runtime-portable,
separable entre coeur musical/fonctionnel, noyaux audio exportables,
host possible, cibles futures et budget de latence.
```

Cette fiche peut definir :

```text
composants runtime-portables ;
frontieres entre coeur, host et cibles ;
classes de latence par fonction ;
budget de latence estime ;
criteres de choix Max standalone / M4L / RNBO / embarque ;
contraintes de conception liees a la latence.
```

Cette fiche ne doit pas definir :

```text
implementation reelle ;
patch Max final ;
device Max for Live final ;
export RNBO final ;
materiel final ;
interface audio finale ;
systeme embarque final ;
seuils definitifs ;
algorithmes definitifs ;
tests pratiques.
```

---

## 1. Decision centrale corrigee

Decision :

```text
Vesperare doit etre concu comme architecture Max/MSP standalone principale.
```

Cela signifie :

```text
le coeur du systeme doit etre exploitable directement dans Max standalone,
avec chemin critique faible latence et sans dependance Ableton.
```

Le coeur peut rester separable plus tard vers :

```text
TARGET-MAX-STANDALONE ;
TARGET-MAX-FOR-LIVE ;
TARGET-RNBO-SUBMODULE ;
TARGET-RASPBERRY-PI ;
TARGET-VST3 ;
TARGET-EMBEDDED-FUTURE.
```

Priorite :

```text
TARGET-MAX-STANDALONE est la cible de reference.
les autres cibles ne doivent pas contraindre les besoins musicaux.
```

Interdit central :

```text
choisir un host avant d'avoir separe ce qui est musicalement central,
ce qui est audio temps reel, ce qui est scene/live, ce qui est interface,
et ce qui est exportable.
```

---

## 2. Architecture runtime-portable

Composants principaux :

```text
CORE-MUSIC-INTENT ;
CORE-AUDIO-REALTIME ;
CORE-GEN ;
CORE-ANA ;
CORE-DEC ;
CORE-PROTO ;
CORE-SPC ;
CORE-HAL ;
CORE-AP ;
CORE-SIG ;
CORE-SCENE ;
CORE-IO ;
HOST-ADAPTER ;
TARGET-ADAPTER.
```

Regle :

```text
CORE-* decrit le comportement Vesperare.
HOST-ADAPTER decrit l'environnement qui porte le live.
TARGET-ADAPTER decrit une traduction vers un format ou materiel precis.
```

Interdit :

```text
mettre une decision artistique dans HOST-ADAPTER ou TARGET-ADAPTER.
```

---

## 3. CORE-MUSIC-INTENT

Role :

```text
conserver l'intention musicale, sensorielle et stylistique.
```

Contient :

```text
pression rythmique ;
espace ;
grave ;
densite ;
rarete ;
attente ;
resolution ;
techno suspendue ;
transgression decidee ;
naturalisation ;
ambiguites acoustiques ;
inspirations tracees.
```

Dependances interdites :

```text
Ableton ;
Max for Live ;
RNBO ;
Linux ;
Raspberry Pi ;
interface specifique ;
plugin specifique.
```

Regle :

```text
un choix runtime ne doit pas changer l'identite Vesperare.
```

---

## 4. CORE-AUDIO-REALTIME

Role :

```text
porter ce qui doit reagir vite au son entrant ou a la sortie audible.
```

Fonctions :

```text
source directe protegee ;
didgeridoo direct ;
adaptation didgeridoo / systeme ;
grave en conflit ;
Auto-Pro P0/P1 ;
limites de masquage ;
analyse audio critique ;
certains traitements source ;
certains gestes de generation immediate.
```

Contraintes :

```text
chemin court ;
peu de couches ;
peu de latence ajoutee ;
signalisation claire ;
sortie possible ;
optimisation technique si CPU limite, sans compromis musical.
```

Interdits :

```text
chaine longue non necessaire ;
reverb lourde sur chemin direct critique ;
analyse lourde bloquante ;
generation qui retarde source directe ;
Auto-Pro opaque.
```

---

## 5. CORE-GEN

Role :

```text
porter generation sonore, motifs rythmiques, motifs melodiques,
textures, lignes, grave, voix integree, transgression et retours.
```

Sous-composants :

```text
CORE-GEN-RHY ;
CORE-GEN-LIN ;
CORE-GEN-GRV ;
CORE-GEN-TEX ;
CORE-GEN-VOX ;
CORE-GEN-HALSPC ;
CORE-GEN-TRG ;
CORE-GEN-RET.
```

Portabilite :

```text
les sous-composants audio DSP stables peuvent devenir RNBO.
les sous-composants scene/decision/interface restent hors RNBO au depart.
```

Obligation :

```text
GEN-PACKET obligatoire pour tout objet GEN.
```

Interdits :

```text
style entier ;
motif autonome non autorise ;
retour choisi seul ;
transgression choisie seule ;
timbre electronique reconnaissable non decide.
```

---

## 6. CORE-ANA

Role :

```text
observer sources, grave, rythme, espace, halo, sortie et risques.
```

Sous-composants :

```text
CORE-ANA-SRC ;
CORE-ANA-DID ;
CORE-ANA-GRV ;
CORE-ANA-RHY ;
CORE-ANA-SPC ;
CORE-ANA-HAL ;
CORE-ANA-OUT ;
CORE-CONF.
```

Portabilite :

```text
analyses simples et audio-rate peuvent etre candidates RNBO.
analyses lourdes, historiques ou interfaces peuvent rester dans Max
ou dans un host.
```

Interdits :

```text
analyse decideuse ;
analyse bloquante sur chemin audio critique ;
analyse permanente de tout par principe.
```

---

## 7. CORE-DEC / CORE-PROTO

Role :

```text
arbitrer permissions, scenes, couches, roles, retours et protocoles.
```

Sous-composants :

```text
CORE-DEC-PERM ;
CORE-DEC-ROLE ;
CORE-DEC-CONFLICT ;
CORE-PROTO-SIDECHAIN ;
CORE-PROTO-RET ;
CORE-PROTO-EXIT.
```

Portabilite :

```text
la decision peut rester dans Max ou M4L.
elle n'a pas besoin d'etre RNBO sauf si elle doit etre embarquee.
```

Interdits :

```text
decision comme compositeur ;
decision opaque ;
protocole comme sidechain audio non decide ;
retour impose hors decision.
```

---

## 8. CORE-SPC / CORE-HAL

Role :

```text
porter espace, reverb, proximite, immersion, monde, reactivite,
salle, grave spatial, halo, memoire, queue, Lock, Force et Cut.
```

Sous-composants :

```text
CORE-SPC-PROX ;
CORE-SPC-WORLD ;
CORE-SPC-IMM ;
CORE-SPC-REACT ;
CORE-SPC-ROOM ;
CORE-SPC-GRV ;
CORE-HAL-SRC ;
CORE-HAL-MEM ;
CORE-HAL-LOCK ;
CORE-HAL-FORCE ;
CORE-HAL-CUT ;
CORE-HAL-EXIT.
```

Portabilite :

```text
certains moteurs reverb/halo peuvent etre RNBO si leur DSP est stabilise.
les decisions de scene, modes et priorites restent hors RNBO au depart.
```

Interdits :

```text
SPC, HAL et GEN-HAL fusionnes ;
halo voulu retire hors P0/P1 ;
reverb decorative non decidee ;
espace long impose.
```

---

## 9. CORE-AP

Role :

```text
proteger P0/P1 et maintenir P5 sans corriger le gout.
```

Sous-composants :

```text
CORE-AP-SAFE ;
CORE-AP-MIX ;
CORE-AP-SUB ;
CORE-AP-FEED ;
CORE-AP-ATTACK ;
CORE-AP-SRC ;
CORE-AP-DENSITY ;
CORE-AP-SPC ;
CORE-AP-HAL ;
CORE-AP-OUT.
```

Portabilite :

```text
les limiteurs/protections DSP simples peuvent etre RNBO.
les arbitrages de cause/priorite/visibilite restent dans CORE-DEC
ou CORE-SIG.
```

Obligation :

```text
AP-CAUSE obligatoire avant limitation.
```

Interdits :

```text
correction esthetique ;
limitation invisible hors P0/P1 ;
suppression de choix live ;
Auto-Pro comme mixeur automatique global.
```

---

## 10. CORE-SIG / CORE-SCENE / CORE-IO

CORE-SIG :

```text
prioriser P0, P1, P2, conflit majeur, retour et information.
```

CORE-SCENE :

```text
stocker scenes comme matrices superposables :
dominante, couches, roles, familles GEN, mondes SPC, modes HAL,
sorties et risques.
```

CORE-IO :

```text
gerer sources, sorties, monitoring conceptuel, controles live
et absence de sources optionnelles.
```

Interdits :

```text
scene preset exclusif ;
diagnostic permanent impose ;
controleur physique obligatoire ;
source optionnelle obligatoire ;
setup didgeridoo + PC perdu.
```

---

## 11. HOST-ADAPTERS possibles

### 11.1. HOST-MAX-STANDALONE

Avantages :

```text
logique non DAW ;
interface sur mesure ;
chemin audio potentiellement plus direct ;
architecture systeme plus pure.
```

Risques :

```text
routage, scenes, sauvegarde, monitoring, plugins, signalisation
et securites a construire.
```

Latence probable :

```text
potentiellement tres bonne avec interface audio et patch optimises.
non garantie sans architecture rigoureuse.
```

### 11.2. HOST-MAX-FOR-LIVE / ABLETON

Avantages :

```text
routage, scenes, plugins, monitoring, MIDI, sauvegarde,
retours et environnement club deja presents.
```

Risques :

```text
latence de chaine Live ;
logique DAW trop structurante ;
dependance a Live ;
risque de routages implicites.
```

Latence probable :

```text
acceptable si buffer bas, chaine courte et monitoring bien gere.
fragile si beaucoup de devices, retours, groupes ou plugins latents.
```

### 11.3. HOST-RNBO-SUBMODULE

Avantages :

```text
export de noyaux DSP ;
portabilite ;
VST3 ;
Raspberry Pi ;
C++ ;
JavaScript.
```

Risques :

```text
RNBO ne porte pas tout Max ;
interface et logique globale a separer ;
objets non exportables possibles.
```

Latence probable :

```text
depend de la cible exportee.
peut etre excellente pour modules DSP simples et stables.
```

### 11.4. HOST-EMBEDDED-FUTURE

Avantages :

```text
instrument dedie ;
latence potentiellement tres basse ;
stabilite ;
autonomie ;
capteurs possibles.
```

Risques :

```text
portage, compilation, maintenance, limites CPU/I/O, debug.
```

Latence probable :

```text
excellente sur plateformes speciales comme Bela.
non equivalente a Max complet.
```

---

## 12. Budget de latence conceptuel

Definition :

```text
la latence critique est le delai entre action acoustique ou entree audio
et consequence audible percue.
```

Formule de base :

```text
latence d'un buffer en ms = buffer_samples / sample_rate * 1000
```

Repere a 48 kHz :

```text
32 samples  -> 0.67 ms par buffer
64 samples  -> 1.33 ms par buffer
128 samples -> 2.67 ms par buffer
256 samples -> 5.33 ms par buffer
512 samples -> 10.67 ms par buffer
```

Repere a 44.1 kHz :

```text
64 samples  -> 1.45 ms par buffer
128 samples -> 2.90 ms par buffer
256 samples -> 5.80 ms par buffer
512 samples -> 11.61 ms par buffer
```

Attention :

```text
la latence audible totale n'est pas un seul buffer.
elle peut inclure entree, sortie, convertisseurs, driver, safety buffer,
traitements, routage, plugins, compensation, monitoring et charge CPU.
```

---

## 13. Classes de latence Vesperare

### LAT-0 : critique immediate

Fonctions :

```text
didgeridoo direct ;
source directe protegee ;
Auto-Pro P0/P1 ;
conflit grave critique ;
feedback / larsen ;
monitoring acoustique traite.
```

Objectif estime :

```text
ideal : moins de 5 ms ressenti.
acceptable prudent : 5 a 10 ms.
risque musical : plus de 10 ms si le son traite remplace le direct.
```

Regle :

```text
LAT-0 doit avoir chemin court, peu de DSP et bypass/degradation possible.
```

### LAT-1 : interaction jouee

Fonctions :

```text
transformations didgeridoo jouees ;
motifs rythmiques guides ;
generation par source ;
adaptation harmoniques / grave ;
signalisation critique.
```

Objectif estime :

```text
ideal : moins de 10 ms.
acceptable : 10 a 20 ms si le direct acoustique reste present.
risque : plus de 20 ms pour interaction ressentie comme instrumentale.
```

Regle :

```text
LAT-1 peut accepter plus de delai si la source directe porte le geste.
```

### LAT-2 : generation musicale non immediate

Fonctions :

```text
motifs generes ;
textures ;
retours prepares ;
techno suspendue ;
polytexture ;
transgression preparee.
```

Objectif estime :

```text
ideal : moins de 25 ms pour reaction audible proche.
acceptable : 25 a 60 ms selon fonction.
possible : plus de 60 ms si l'evenement est scene, etat, halo ou texture.
```

Regle :

```text
LAT-2 n'est pas forcement problematique si le delai est musicalement integre.
```

### LAT-3 : espace, halo, analyse lente

Fonctions :

```text
reverbs longues ;
halo ;
memoire ;
analyse de tendance ;
scene ;
statistiques ;
historique ;
retours non immediats.
```

Objectif estime :

```text
latence souvent non critique si elle ne remplace pas l'attaque directe.
```

Regle :

```text
LAT-3 peut etre hors chemin critique.
```

---

## 14. Estimation par cible runtime

### Max standalone sur PC/Mac optimise

Estimation prudente :

```text
64 samples  : souvent cible plausible pour LAT-0/LAT-1 si CPU stable.
128 samples : plausible pour performance robuste, LAT-0 a surveiller.
256 samples : souvent trop haut pour remplacement direct d'un geste acoustique.
```

Ordres de grandeur ressentis :

```text
64 samples  : environ 4 a 10 ms total selon interface/driver/patch.
128 samples : environ 8 a 18 ms total selon interface/driver/patch.
256 samples : souvent plus de 15 ms total, parfois beaucoup plus.
```

### Ableton + Max for Live

Estimation prudente :

```text
64 samples  : viable si set leger, chaine courte, pas de plugins latents.
128 samples : viable pour beaucoup de fonctions, critique pour LAT-0.
256 samples : plutot LAT-2/LAT-3 ou direct acoustique non remplace.
```

Risque specifique :

```text
latence de chaine, groupes, retours, plugins, monitoring et compensation.
```

### RNBO sur host leger ou VST3

Estimation prudente :

```text
bon candidat pour DSP stable a faible latence.
la latence depend surtout du host, du driver et du materiel cible.
```

Usage recommande :

```text
CORE-AUDIO-REALTIME partiel ;
CORE-GEN audio stable ;
certains moteurs SPC/HAL ;
protections DSP simples.
```

### Raspberry Pi / RNBO

Estimation prudente :

```text
potentiellement viable pour modules autonomes.
pas automatiquement meilleur qu'un bon PC audio.
```

Risques :

```text
USB audio ;
charge CPU ;
stabilite Linux audio ;
maintenance ;
limites I/O.
```

### Bela / embarque hard-real-time

Estimation prudente :

```text
tres bon candidat pour tres basse latence et capteurs.
pas une cible Max complet.
```

Usage recommande :

```text
sous-systemes ultra-reactifs stabilises, pas tout Vesperare au depart.
```

---

## 15. Regles d'architecture liees a la latence

Regles :

```text
LAT-0 et LAT-1 doivent rester separables de LAT-2 et LAT-3.
le direct acoustique ne doit pas dependre d'une chaine longue.
les reverbs longues et halos doivent etre hors chemin d'attaque critique.
Auto-Pro doit pouvoir agir localement sans attendre une analyse lourde.
les analyses lentes ne doivent pas bloquer le son.
les moteurs eventuellement exportables RNBO peuvent etre isoles, sans priorite sur Max standalone.
le systeme doit optimiser la latence sans compromis musical reel.
```

Reponses techniques autorisees en cas de risque latence :

```text
sortir une analyse lente du chemin critique ;
deplacer un calcul vers controle-rate ;
precalculer ce qui peut l'etre ;
remplacer un routage lourd par un routage plus direct ;
optimiser le patch ou le materiel ;
ameliorer interface audio / driver / buffer ;
garder source en direct protege si necessaire ;
signaler P1/P2.
```

Degradation interdite :

```text
couper source essentielle sans P0/P1 ;
retirer halo voulu hors P0/P1 ;
changer style ou motif sans decision ;
masquer une limitation importante ;
perdre le didgeridoo direct.
```

---

## 16. Traduction des SLOT niveau 3 vers CORE portable

Correspondance :

```text
SLOT-00-CONTROL-STATE       -> CORE-DEC / CORE-PROTO / CORE-SCENE
SLOT-01-INPUTS-ACOUSTIC     -> CORE-IO
SLOT-02-SOURCE-DIRECT       -> CORE-AUDIO-REALTIME
SLOT-03-SOURCE-TRANSFORMED  -> CORE-AUDIO-REALTIME / CORE-GEN
SLOT-04-ANALYSIS-TAPS       -> CORE-ANA
SLOT-05-GENERATION          -> CORE-GEN
SLOT-06-SPACE-RETURNS       -> CORE-SPC
SLOT-07-HALO-MEMORY         -> CORE-HAL
SLOT-08-AUTOPRO             -> CORE-AP
SLOT-09-SIGNAL-VIEWS        -> CORE-SIG
SLOT-10-OUTPUT-CHECK        -> CORE-IO / CORE-AP / CORE-SIG
SLOT-11-SCENE-LIBRARY       -> CORE-SCENE
SLOT-12-MIN-DID-PC          -> CORE-IO / CORE-AUDIO-REALTIME / CORE-GEN
```

Regle :

```text
les SLOT restent utiles comme carte, mais la suite doit raisonner en CORE
pour eviter une dependance Ableton.
```

---

## 17. Partition exportable / non exportable

Candidates RNBO ou export DSP :

```text
moteur generation rythmique stable ;
moteur ligne/partiels stable ;
moteur grave support/retrait stable ;
certains traitements didgeridoo ;
certains traitements gong ;
certains moteurs reverb/halo ;
protections DSP simples ;
analyse audio simple.
```

Non candidates RNBO au depart :

```text
scene globale ;
interface live ;
signalisation complexe ;
arbitrage complet ;
historique ;
gestion documentaire ;
controleur physique ;
mapping complet ;
edition de scenes ;
decision artistique.
```

Regle :

```text
exporter des noyaux, pas tout le systeme.
```

---

## 18. Decisions ouvertes

Questions :

```text
DO-RT-1 : comment organiser Max standalone comme host prioritaire ?
DO-RT-2 : quelles fonctions LAT-0 doivent etre garanties absolument ?
DO-RT-3 : quels moteurs peuvent rester RNBO-compatibles sans contraindre Max standalone ?
DO-RT-4 : quelles fonctions M4L/Ableton deviennent hors trajectoire active ?
DO-RT-5 : quelles fonctions doivent absolument rester hors dependance Ableton ?
DO-RT-6 : quel niveau de signalisation latence/surcharge est necessaire en live ?
DO-RT-7 : faut-il une fiche dediee "budget latence et charge CPU" plus tard ?
DO-RT-8 : faut-il une architecture d'optimisation charge sans compromis musical ?
```

Position corrigee :

```text
concevoir le coeur pour Max standalone.
garder LAT-0/LAT-1 comme contraintes fortes.
isoler seulement les noyaux RNBO possibles si cela ne complique pas Max standalone.
ne pas utiliser la portabilite comme pretexte a repousser le choix du host.
```

---

## 19. Interdits

```text
latence traitee comme detail secondaire ;
latence promettant un resultat sans cible materielle ;
Ableton suppose obligatoire ;
Max standalone suppose toujours plus rapide sans optimisation concrete ;
Linux suppose automatiquement meilleur ;
RNBO suppose capable de porter tout Vesperare ;
embarque choisi avant stabilisation du noyau ;
chemin direct didgeridoo rendu dependant de LAT-2/LAT-3 ;
analyse lente sur chemin critique ;
reverb longue sur attaque critique ;
Auto-Pro dependant d'une chaine lourde ;
setup minimum didgeridoo + PC perdu ;
GEN-PACKET perdu.
```

---

## 20. Decision v0.1 corrigee

Decision :

```text
l'architecture runtime portable Max / RNBO / M4L Vesperare reste un support,
mais la cible active devient Max standalone.
```

Elle etablit :

```text
CORE structure ;
HOST-ADAPTER ;
TARGET-ADAPTER ;
budget de latence conceptuel ;
classes LAT-0 a LAT-3 ;
estimations prudentes par cible ;
regles d'architecture liees a la latence ;
correspondance SLOT -> CORE ;
partition exportable / non exportable ;
decisions ouvertes.
```

Prochaine action recommandee :

```text
SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_CONCEPTUELLE_VESPERARE_v0_1
```

But de l'audit :

```text
verifier que l'architecture runtime portable conserve les besoins
stylistiques et generatifs, ne surestime pas la portabilite ou la latence,
et prepare correctement les choix futurs Max standalone, M4L, RNBO,
Ableton ou embarque.
```

---

## 21. Suivi budget latence / charge / degradation

Action realisee :

```text
SPECIFICATION_BUDGET_LATENCE_CHARGE_DEGRADATION_VESPERARE_v0_1.md
```

Audit cree :

```text
AUDIT_COMPATIBILITE_BUDGET_LATENCE_CHARGE_DEGRADATION_AVEC_CORPUS_v0_1.md
```

Conclusion :

```text
les classes LAT-0 a LAT-3 et CHG-0 a CHG-3 sont compatibles avec
le corpus actif.
```

Prochaine action recommandee :

```text
SPECIFICATION_MATRICE_SCENES_CHARGE_DEGRADATION_RUNTIME_VESPERARE_v0_1
```
