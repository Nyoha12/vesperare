# ARBITRAGE RUNTIME HOST PORTABILITE LATENCE VESPERARE v0.1

Projet : Vesperare
Statut : arbitrage runtime / host / portabilite / latence
Date : 2026-06-22

Sources actives principales :

- `DECISION_RUNTIME_MAX_STANDALONE_LATENCE_SANS_COMPROMIS_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_FOR_LIVE_DETAILLEE_NIVEAU_3_TRADUCTION_SESSION_ABSTRAITE_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_MAX_FOR_LIVE_DETAILLEE_NIVEAU_3_TRADUCTION_SESSION_ABSTRAITE_VESPERARE_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_MAX_FOR_LIVE_DETAILLEE_NIVEAU_2_MODULES_MESSAGES_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_FOR_LIVE_DETAILLEE_NIVEAU_2_MODULES_MESSAGES_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_BLOC_GENERATION_SONORE_MOTIFS_RYTHMIQUES_MELODIQUES_v0_1.md`
- `REVERBS_ESPACE_REACTIF_v0_2.md`
- `AUDIT_TRACABILITE_CAHIER_CHARGES_GENERATIF_STYLISTIQUE_v0_1.md`

Cadrage externe consulte :

- Cycling '74 : Max est officiellement cible macOS / Windows ; Linux general n'est pas une cible Max stabilisee.
- Cycling '74 : RNBO permet l'export vers plusieurs cibles, dont VST3 Mac/Win/Linux, Raspberry Pi, C++ et JavaScript.
- Cycling '74 : RNBO Raspberry Pi supporte MIDI, interfaces audio USB class-compliant et OSC reseau.
- Cycling '74 : Max standalone est possible via applications standalone / collectives.
- Cycling '74 : Max peut heberger des plug-ins via `vst~`.
- Bela : plateforme embarquee Linux basse latence pour audio et capteurs, mais pas equivalente a Max complet.

Rectification active :

```text
la decision active posterieure a cet arbitrage est :
Max/MSP standalone devient le runtime principal de Vesperare.
Max for Live, RNBO, Linux et embarque deviennent secondaires ou futurs.
la latence doit etre optimisee sans compromis musical reel.
```

But historique :

```text
trancher si la suite devait continuer directement vers Ableton abstrait,
Max for Live, Max/MSP standalone, Linux embarque, RNBO, ou une architecture
portable avant toute traduction definitive.
```

---

## 1. Constat technique

### 1.1. Max/MSP complet

Constat :

```text
Max complet est pertinent comme environnement de conception, patching,
performance, standalone et experimentation.
```

Limite :

```text
Max complet n'est pas une solution Linux generale stabilisee officiellement.
```

Implication :

```text
penser "Max sur Linux" comme cible principale immediate serait fragile.
```

### 1.2. Max for Live

Constat :

```text
Max for Live donne acces a Max dans Ableton Live.
```

Avantage :

```text
Live apporte pistes, monitoring, retours, scenes, plugins,
controle MIDI, sauvegarde de set et environnement club.
```

Limite :

```text
la logique DAW peut imposer trop vite une forme de session,
de routage et de performance.
```

Implication :

```text
Max for Live est une cible possible, pas le coeur conceptuel obligatoire.
```

### 1.3. RNBO

Constat :

```text
RNBO permet d'ecrire dans un environnement proche de Max puis d'exporter
vers plusieurs cibles logicielles ou materielles.
```

Cibles pertinentes :

```text
Raspberry Pi ;
VST3 Mac/Win/Linux ;
Max externals Mac/Win ;
C++ ;
JavaScript / Web Audio.
```

Avantage :

```text
RNBO donne une vraie perspective de portabilite.
```

Limite :

```text
RNBO ne remplace pas tout Max.
tous les objets, logiques d'interface, outils de scene et fonctions
complexes ne sont pas automatiquement exportables.
```

Implication :

```text
RNBO est excellent comme cible pour des moteurs audio/generatifs definis,
pas forcement pour tout le systeme Vesperare.
```

### 1.4. Linux / embarque / Bela

Constat :

```text
Linux embarque peut etre tres pertinent pour basse latence,
stabilite et instrument dedie.
```

Avantage :

```text
systeme dedie ;
moins de couches logicielles ;
latence potentiellement tres basse ;
meilleure integration capteurs/audio dans certains cas.
```

Limite :

```text
il faut porter, compiler, maintenir, monitorer et debugger.
ce n'est pas automatiquement compatible avec Max complet.
```

Implication :

```text
embarque est une cible future possible pour un sous-ensemble stabilise,
pas le bon point de depart pour la conception globale actuelle.
```

---

## 2. Latence : conclusion prudente

Decision :

```text
la latence ne justifie pas a elle seule un pivot immediat vers Linux
ou embarque.
```

Raison :

```text
la latence reelle depend de l'interface audio, du driver, du buffer,
de la charge CPU, de la taille des vectors, de la complexite du patch,
du monitoring et de la stabilite generale.
```

Conclusion :

```text
Max standalone ou embarque peut etre meilleur qu'Ableton + Max for Live
dans certains cas.
mais ce gain n'est pas garanti sans conception technique dediee.
```

Garde-fou :

```text
ne pas concevoir Vesperare autour d'une promesse abstraite de latence.
concevoir un noyau portable, puis choisir les cibles.
```

---

## 3. Options runtime

### Option A - Ableton Live + Max for Live

Meilleur pour :

```text
club ;
routage rapide ;
plugins ;
scenes ;
monitoring ;
controle MIDI ;
integration performance ;
mise en place initiale.
```

Risque :

```text
logique DAW trop structurante ;
dependance a Live ;
architecture moins portable.
```

### Option B - Max/MSP standalone

Meilleur pour :

```text
instrument informatique autonome ;
interface sur mesure ;
architecture audio propre ;
logique live non DAW ;
controle fin du systeme.
```

Risque :

```text
il faut reconstruire scenes, presets, routage, monitoring,
sauvegarde, signalisation, securites et ergonomie live.
```

### Option C - Max/RNBO portable

Meilleur pour :

```text
noyaux audio/generation/exportables ;
Raspberry Pi ;
VST3 ;
C++ ;
futures cibles Linux ;
portabilite a long terme.
```

Risque :

```text
tout Vesperare ne sera pas naturellement exportable.
il faut separer noyaux exportables et systeme global.
```

### Option D - embarque Linux / Bela / cible dediee

Meilleur pour :

```text
instrument dedie ;
latence tres basse potentielle ;
stabilite de scene ;
capteurs ;
installation autonome.
```

Risque :

```text
developpement plus complexe ;
maintenance technique ;
limites CPU/I/O ;
portage hors Max complet.
```

---

## 4. Decision Vesperare v0.1 historique

Decision :

```text
ne pas continuer immediatement vers une architecture Ableton comme si
elle etait la cible obligatoire.
```

Decision positive :

```text
concevoir Vesperare comme architecture runtime-portable.
```

Correction 2026-06-22 :

```text
cette decision est remplacee comme trajectoire principale.
la cible active est Max/MSP standalone.
la logique portable reste une discipline interne, pas une priorite de roadmap.
```

Cible conceptuelle principale :

```text
CORE-VESPERARE portable.
```

Le coeur doit rester separable en :

```text
CORE-AUDIO ;
CORE-GEN ;
CORE-ANA ;
CORE-DEC ;
CORE-SPC ;
CORE-HAL ;
CORE-AP ;
CORE-SIG ;
CORE-SCENE ;
CORE-IO.
```

Cibles possibles :

```text
TARGET-MAX-STANDALONE ;
TARGET-MAX-FOR-LIVE ;
TARGET-RNBO-SUBMODULE ;
TARGET-RASPBERRY-PI ;
TARGET-VST3 ;
TARGET-EMBEDDED-FUTURE.
```

Regle historique :

```text
la prochaine architecture doit definir un noyau portable avant de choisir
Ableton, Max for Live, standalone ou embarque.
```

Regle corrigee :

```text
la prochaine architecture doit definir Max standalone comme host principal,
en conservant seulement les separations utiles pour eviter les dependances
et garder des sous-modules eventuellement exportables.
```

---

## 5. Consequence sur la suite documentaire

Correction de trajectoire :

```text
la prochaine action ne doit plus etre directement :
SPECIFICATION_ARCHITECTURE_MAX_FOR_LIVE_DETAILLEE_NIVEAU_4_TRADUCTION_ABLETON_ABSTRAITE
```

Nouvelle prochaine action historique :

```text
SPECIFICATION_ARCHITECTURE_RUNTIME_PORTABLE_MAX_RNBO_M4L_VESPERARE_v0_1
```

Prochaine action corrigee :

```text
SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_CONCEPTUELLE_VESPERARE_v0_1
```

But :

```text
reformuler les SLOT, LANE, TAP, ACT, BUS, VIEW et CHK comme composants
runtime-portables, puis seulement ensuite decider quelles parties vont
vers Max standalone, Max for Live, RNBO, Ableton ou cible embarquee.
```

---

## 6. Interdits

```text
supposer Ableton obligatoire ;
supposer Linux meilleur sans cible precise ;
supposer RNBO capable de porter tout Vesperare ;
supposer Max complet disponible sur Linux general ;
choisir embarque avant de stabiliser le noyau ;
choisir latence comme critere unique ;
perdre le setup didgeridoo + PC ;
perdre GEN-PACKET ;
perdre les fonctions live accessibles et cumulables.
```

---

## 7. Decision finale courte corrigee

```text
Vesperare doit etre concu pour Max/MSP standalone comme runtime principal.
RNBO, Max for Live, Ableton, Linux et embarque restent secondaires ou futurs.
La latence est une contrainte forte, mais ne doit autoriser aucun compromis
musical reel.
```

---

## 8. Suivi architecture runtime portable

Action realisee :

```text
SPECIFICATION_ARCHITECTURE_RUNTIME_PORTABLE_MAX_RNBO_M4L_VESPERARE_v0_1.md
```

Audit cree :

```text
AUDIT_COMPATIBILITE_ARCHITECTURE_RUNTIME_PORTABLE_MAX_RNBO_M4L_AVEC_CORPUS_v0_1.md
```

Conclusion :

```text
la trajectoire runtime-portable est compatible avec le corpus actif.
la latence doit maintenant etre traitee comme contrainte technique forte,
avec budget, charge et degradation explicites.
```

Prochaine action recommandee :

```text
SPECIFICATION_BUDGET_LATENCE_CHARGE_DEGRADATION_VESPERARE_v0_1
```
