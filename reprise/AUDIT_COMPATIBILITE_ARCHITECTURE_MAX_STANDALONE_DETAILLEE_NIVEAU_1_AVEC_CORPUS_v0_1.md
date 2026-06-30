# AUDIT COMPATIBILITE ARCHITECTURE MAX STANDALONE DETAILLEE NIVEAU 1 AVEC CORPUS v0.1

Projet : Vesperare
Statut : audit compatibilite architecture Max standalone detaillee niveau 1
Date : 2026-06-23

Sources actives principales :

- `SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_1_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_CONCEPTUELLE_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_CONCEPTUELLE_VESPERARE_v0_1.md`
- `DECISION_RUNTIME_MAX_STANDALONE_LATENCE_SANS_COMPROMIS_VESPERARE_v0_1.md`
- `MATRICE_BLOCS_RESPONSABILITES_PACKETS_CONTROLES_VESPERARE_v0_1.md`
- `SPECIFICATION_SYSTEME_DECISIONNEL_CONCEPTUEL_VESPERARE_v0_1.md`
- `SPECIFICATION_PROTOCOLS_SIDECHAINS_CONCEPTUELS_v0_1.md`
- `SPECIFICATION_ANALYSES_INDICES_CONCEPTUELS_ET_CONFIANCE_v0_1.md`
- `SPECIFICATION_BLOC_GENERATION_SONORE_MOTIFS_RYTHMIQUES_MELODIQUES_v0_1.md`
- `REVERBS_ESPACE_REACTIF_v0_2.md`

But :

```text
verifier que la partition Max standalone niveau 1 respecte le corpus actif,
ne fragmente pas inutilement le systeme, conserve les fonctions musicales,
traite la latence comme enjeu musical sans compromis, et prepare un niveau 2
modules/messages sans commencer l'implementation.
```

Hors perimetre :

```text
objets Max ;
algorithmes ;
seuils ;
externals ;
plugins ;
UI finale ;
controleur physique ;
materiel final ;
patch final ;
tests pratiques.
```

---

## 1. Verdict general

Verdict :

```text
compatible avec corrections mineures de niveau 1.
```

La specification niveau 1 est compatible parce qu'elle :

- maintient Max standalone comme trajectoire principale ;
- garde Ableton/M4L, RNBO, Linux et embarque comme secondaires ou futurs ;
- structure l'application en responsabilites `MX-*` ;
- separe chemins audio, chemins de controle et chemins d'analyse ;
- conserve `PATH-DIRECT` et `PATH-GRAVE-CRITICAL` comme chemins forts ;
- maintient `MX-DEC-FAST` pour P0/P1 et `MX-DEC-CORE` pour permissions generales ;
- conserve `GEN-PACKET` ;
- regroupe les moteurs GEN par comportements plutot que par styles ;
- separe `SPC`, `HAL`, `AUTOPRO` et `SIG` ;
- classe les controles live en `ALWAYS-ON-HAND`, `SCENE-PREP`, `DEEP-EDIT`, `DIAGNOSTIC` ;
- formule la latence comme enjeu de presence, jouabilite et pression, pas seulement CPU.

Corrections mineures requises :

```text
CORR-MX1-1 : integrer explicitement MX-HAL-CUT dans PATH-HAL.
CORR-MX1-2 : clarifier la relation entre patcher parent MX-GRAVE et sous-patchers MX-GRAVE-*.
CORR-MX1-3 : clarifier la relation entre MX-GEN et familles GEN-*.
CORR-MX1-4 : preciser que MX-REC-DIAG ne doit jamais etre dependance de sortie principale.
CORR-MX1-5 : rappeler que les controles ALWAYS-ON-HAND ne sont pas forcement tous physiques au niveau 1.
```

Ces corrections ne remettent pas en cause l'architecture.

---

## 2. Compatibilite avec la decision Max standalone

La specification respecte :

```text
Max/MSP standalone comme runtime principal ;
application instrumentale live ;
pas session Ableton ;
pas pile d'effets ;
pas generateur autonome ;
pas patch monolithique.
```

Verdict :

```text
compatible.
```

Point fort :

```text
la partition `MX-*` commence a traduire le corpus vers une application Max
sans imposer encore objets, algorithmes ou patch final.
```

Fragilite `FRAG-MX1-1` :

```text
la liste `MX-*` peut devenir nombreuse si le niveau 2 transforme chaque
responsabilite en gros patcher autonome.
```

Traitement :

```text
niveau 2 : distinguer patchers principaux, sous-patchers, abstractions,
vues de controle et modules purement logiques.
```

---

## 3. Compatibilite latence comme enjeu sans compromis

La specification pose :

```text
la latence est un enjeu musical actif :
presence, precision rythmique, confiance du geste, pression corporelle,
reactivite du grave, continuite entre acoustique et systeme.
```

Compatibilite :

- `PATH-DIRECT` reste LAT-0 ;
- `PATH-GRAVE-CRITICAL` reste LAT-0/LAT-1 ;
- `MX-ANA-SLOW` reste hors chemin critique ;
- `SPC-LONG` reste hors attaque critique ;
- `HAL-LONG` reste hors direct ;
- diagnostic et UI restent hors audio vital ;
- aucune fonction desiree ne peut etre retiree pour simplifier.

Verdict :

```text
compatible.
```

Fragilite `FRAG-MX1-2` :

```text
le niveau 1 nomme le profil de latence courant dans MX-STATE, mais ne dit pas
encore comment ce profil influence seulement la signalisation et l'organisation,
pas les choix musicaux.
```

Traitement :

```text
niveau 2 : definir LAT-STATE comme information, pas comme autorite artistique.
```

---

## 4. Compatibilite chemins audio

Chemins presents :

```text
PATH-DIRECT ;
PATH-SOURCE-TREAT ;
PATH-GRAVE-CRITICAL ;
PATH-GEN ;
PATH-SPC ;
PATH-HAL.
```

Verdict :

```text
compatible.
```

Points forts :

- le direct ne traverse pas analyse lente, generation, reverb longue ou diagnostic ;
- les traitements source ne rendent pas le direct indisponible ;
- le grave critique est reconnu comme fonction musicale et corporelle ;
- `PATH-GEN` impose `GEN-PACKET` ;
- `PATH-SPC` separe proximite, monde, salle, long, grave ;
- `PATH-HAL` preserve halo voulu hors P0/P1.

Correction `CORR-MX1-1` :

```text
PATH-HAL traverse MX-HAL-MEM, MX-HAL-FREEZE, MX-HAL-LOCK, MX-HAL-FORCE,
MX-HAL-EXIT, mais omet MX-HAL-CUT alors que MX-HAL-CUT existe ensuite.
```

Traitement :

```text
ajouter MX-HAL-CUT a PATH-HAL au niveau 2 ou dans une revision v0.2.
```

Fragilite `FRAG-MX1-3` :

```text
PATH-SPC et PATH-HAL sont separes, mais leur point de rencontre dans MX-MIX
et Auto-Pro n'est pas encore detaille.
```

Traitement :

```text
niveau 2 : definir messages entre SPC/HAL/AUTOPRO/MIX pour masquage,
queue voulue, lock, cut et protection P1.
```

---

## 5. Compatibilite chemins de controle

Chemins presents :

```text
CTRL-LIVE ;
CTRL-SCENE ;
CTRL-FAST-PROTECT ;
CTRL-PROTO.
```

Verdict :

```text
compatible.
```

Compatibilite :

- P2 passe par `MX-LIVE -> MX-STATE -> MX-DEC-CORE` ;
- scene ne contourne pas choix live ;
- P0/P1 peuvent passer par `MX-DEC-FAST` sans attendre `MX-ANA-SLOW` ;
- protocoles influencent seulement une cible deja autorisee.

Fragilite `FRAG-MX1-4` :

```text
CTRL-LIVE ne distingue pas encore commandes momentary, latch, mode,
macro continue et scene preparee.
```

Traitement :

```text
niveau 2 : typologie des messages live :
LIVE-MOMENTARY, LIVE-TOGGLE, LIVE-MODE, LIVE-MACRO, LIVE-SCENE.
```

---

## 6. Compatibilite analyse fast/slow

La separation :

```text
MX-ANA-FAST ;
MX-ANA-SLOW.
```

est compatible avec le corpus.

MX-ANA-FAST couvre :

```text
presence source ;
niveau critique ;
attaque ;
risque feedback ;
grave conflictuel ;
masquage flagrant ;
lisibilite immediate ;
etat P0/P1.
```

MX-ANA-SLOW couvre :

```text
densite ;
stabilite rythmique ;
tendance spectrale ;
relation salle ;
queue/halo ;
memoire de scene ;
preparation de retour ;
diagnostic non critique.
```

Verdict :

```text
compatible.
```

Fragilite `FRAG-MX1-5` :

```text
les niveaux CONF ne sont pas encore transformes en messages ou permissions.
```

Traitement :

```text
niveau 2 : chaque ANA-PACKET doit porter CONF et type de reaction maximale.
```

---

## 7. Compatibilite decision

La separation :

```text
MX-DEC-FAST ;
MX-DEC-CORE.
```

resout correctement la fragilite precedente.

Verdict :

```text
compatible.
```

Point fort :

```text
MX-DEC-FAST peut agir vite sur P0/P1 sans devenir compositeur.
MX-DEC-CORE reste l'arbitre general des permissions.
```

Fragilite `FRAG-MX1-6` :

```text
MX-DEC-FAST et MX-DEC-CORE peuvent produire des decisions concurrentes si
le niveau 2 ne definit pas une precedence claire.
```

Traitement :

```text
niveau 2 : precedence explicite :
P0 > P1 > P2 > P3 > P4 > P5.
MX-DEC-FAST ne doit pas emettre de decision expressive.
```

---

## 8. Compatibilite MX-STATE

MX-STATE contient :

```text
scene active ;
couches actives ;
mode didgeridoo ;
mode grave ;
mode generation ;
mode espace ;
mode halo ;
etat P0/P1/P2 ;
GEN-PACKET actifs ;
SPC-PACKET actifs ;
HAL-PACKET actifs ;
PROTOCOLS actifs ;
sorties preparees ;
verrouillages ;
limitations signalees ;
profil de latence courant ;
profil de charge courant.
```

Verdict :

```text
compatible.
```

Fragilite `FRAG-MX1-7` :

```text
MX-STATE est central ; il pourrait devenir une decision cachee si le niveau 2
ne separe pas etat, permission et commande.
```

Traitement :

```text
niveau 2 : separer STATE-VALUE, PERMISSION, COMMAND et SIGNAL.
```

---

## 9. Compatibilite generation

Familles GEN niveau 1 :

```text
GEN-PULSE-RHY ;
GEN-LINE-MEL ;
GEN-SOURCE-HARM ;
GEN-TEXTURE-BLOOM ;
GEN-VOICE ;
GEN-RET-FORM.
```

Verdict :

```text
compatible.
```

Points forts :

- Keita Ogawa / jazz reste phenomene de precision, tension, timbre et dynamique ;
- acid reste naturalisee, pas 303 par defaut ;
- voix reste integree, pas nue ;
- transgression reste decidee ;
- retour reste prepare, pas impose ;
- inspirations guident les comportements, pas l'arborescence brute.

Fragilite `FRAG-MX1-8` :

```text
GEN-PULSE-RHY porte beaucoup de fonctions : pression, interlocking,
Keita Ogawa, trance suspendue, dubstep trace.
```

Traitement :

```text
niveau 2 : distinguer sous-modes de GEN-PULSE-RHY sans creer styles :
PULSE-BODY, PULSE-INTERLOCK, PULSE-SUSP, PULSE-RUPTURE.
```

Fragilite `FRAG-MX1-9` :

```text
GEN-LINE-MEL couvre basse-motif, acid naturalisee, fragment melodique,
hook minimal et ligne guidee par didgeridoo ; le risque est un lead banal
si les permissions ne sont pas strictes.
```

Traitement :

```text
niveau 2 : tout GEN-LINE-MEL doit exiger role, source, reconnaissance,
naturalisation et sortie.
```

---

## 10. Compatibilite grave / gong

Patchers conceptuels :

```text
MX-GRAVE-CRITICAL ;
MX-GRAVE-SUPPORT ;
MX-GRAVE-FREE ;
MX-GONG-BLOOM ;
MX-GONG-HARM ;
MX-GONG-SPC-SOURCE.
```

Verdict :

```text
compatible.
```

Point fort :

```text
le gong reste plus qu'un sample ou effet :
harmonie, microtonalite, souffle, bloom, monde spatial et grave.
```

Correction `CORR-MX1-2` :

```text
la specification liste MX-GRAVE dans la partition generale puis des
sous-patchers MX-GRAVE-* ; la relation parent/enfants doit etre explicite.
```

Traitement :

```text
niveau 2 : MX-GRAVE = parent / hub ;
MX-GRAVE-CRITICAL, SUPPORT, FREE = voies ;
MX-GONG-* = sources/fonctions associees.
```

---

## 11. Compatibilite espace / reverb

Patchers SPC :

```text
MX-SPC-NEAR ;
MX-SPC-ROOM ;
MX-SPC-WORLD ;
MX-SPC-LONG ;
MX-SPC-GRAVE ;
MX-SPC-ROOM-ANALYSIS.
```

Verdict :

```text
compatible.
```

Points forts :

- proximite separee de longueur ;
- monde separe de room commune ;
- grave spatial separe ;
- analyse de salle ne decide pas ;
- Auto-Pro ne change pas de monde seul.

Fragilite `FRAG-MX1-10` :

```text
la relation entre reverb naturelle de salle et reverb produite par le systeme
reste encore conceptuelle.
```

Traitement :

```text
niveau 2 : definir messages ROOM-OBS, ROOM-COMPAT, ROOM-RISK, ROOM-ADAPT.
```

---

## 12. Compatibilite halo

Patchers HAL :

```text
MX-HAL-MEM ;
MX-HAL-FREEZE ;
MX-HAL-LOCK ;
MX-HAL-FORCE ;
MX-HAL-CUT ;
MX-HAL-EXIT.
```

Verdict :

```text
compatible avec correction `CORR-MX1-1`.
```

Points forts :

- Halo Lock preserve le halo voulu ;
- Halo Force exige choix live ou scene explicite ;
- Halo Cut est borne ;
- Halo Exit prepare la sortie ;
- freeze rattache a source ou monde par defaut.

Fragilite `FRAG-MX1-11` :

```text
HAL-CUT est necessaire mais dangereux s'il devient une simple commande
technique sans sortie musicale.
```

Traitement :

```text
niveau 2 : HAL-CUT doit porter cause, autorite, cible, duree et sortie.
```

---

## 13. Compatibilite Auto-Pro

Patchers Auto-Pro :

```text
MX-AUTOPRO-P0 ;
MX-AUTOPRO-P1 ;
MX-AUTOPRO-P5 ;
MX-AUTOPRO-MONITOR.
```

Verdict :

```text
compatible.
```

Point fort :

```text
P0, P1 et P5 sont separes ; cela evite de confondre protection vitale
et coherence douce.
```

Fragilite `FRAG-MX1-12` :

```text
MX-AUTOPRO-MONITOR n'est pas encore defini : surveillance passive,
diagnostic, ou source de demandes ?
```

Traitement :

```text
niveau 2 : MX-AUTOPRO-MONITOR doit observer et signaler ;
il ne doit pas agir directement hors P0/P1/P5.
```

---

## 14. Compatibilite interface live

Niveaux :

```text
ALWAYS-ON-HAND ;
SCENE-PREP ;
DEEP-EDIT ;
DIAGNOSTIC.
```

Verdict :

```text
compatible.
```

Points forts :

- les controles critiques restent sous la main ;
- les modes avances peuvent etre prepares par scene ;
- edition profonde ne parasite pas la performance ;
- diagnostic ne sature pas la performance.

Correction `CORR-MX1-5` :

```text
ALWAYS-ON-HAND signifie accessible pendant le jeu.
cela ne signifie pas encore controle physique dedie pour chaque commande.
```

Traitement :

```text
niveau 2 : distinguer PHYSICAL, SCREEN, MACRO, MENU, SAFETY.
```

---

## 15. Compatibilite signalisation

Niveaux :

```text
SIG-CRITICAL ;
SIG-PERFORM ;
SIG-DISCREET ;
SIG-DIAG.
```

Verdict :

```text
compatible.
```

Fragilite `FRAG-MX1-13` :

```text
SIG-PERFORM et SIG-DISCREET doivent rester sobres ; trop de signalisation
peut nuire a la presence live.
```

Traitement :

```text
niveau 2 : definir intensite, persistance, effacement et priorite des signaux.
```

---

## 16. Compatibilite configuration

MX-CONFIG prevoit :

```text
profil audio ;
profil entrees/sorties ;
setup minimal ;
setup etendu ;
scenes preparees ;
modes instruments ;
modes grave ;
modes espace ;
modes halo ;
familles GEN disponibles ;
profils Auto-Pro ;
profils interface ;
profils diagnostic.
```

Verdict :

```text
compatible.
```

Fragilite `FRAG-MX1-14` :

```text
les presets/scenes/configs peuvent devenir trop puissants s'ils portent
des decisions de performance au lieu de preparations.
```

Traitement :

```text
niveau 2 : config = preparation ; live/scene/decision = activation.
```

---

## 17. Compatibilite RNBO / portabilite secondaire

La specification rappelle :

```text
RNBO peut rester une compatibilite future de sous-moteurs.
RNBO ne doit pas contraindre Max standalone.
```

Verdict :

```text
compatible.
```

Point fort :

```text
le niveau 1 ne repart pas dans une architecture portable prioritaire.
```

Fragilite `FRAG-MX1-15` :

```text
les candidats RNBO ne doivent pas orienter le design des familles GEN/SPC
au detriment de Max standalone.
```

Traitement :

```text
niveau 2 : marquer RNBO-CANDIDATE comme etiquette secondaire seulement.
```

---

## 18. Corrections requises

Corrections mineures a reporter au niveau 2 ou v0.2 :

```text
CORR-MX1-1 : ajouter MX-HAL-CUT a PATH-HAL.
CORR-MX1-2 : expliciter MX-GRAVE parent et MX-GRAVE-* enfants.
CORR-MX1-3 : expliciter MX-GEN parent et GEN-* familles.
CORR-MX1-4 : rappeler MX-REC-DIAG hors dependance OUT-MAIN.
CORR-MX1-5 : preciser ALWAYS-ON-HAND != controle physique dedie obligatoire.
```

Corrections non necessaires :

```text
pas de changement de runtime ;
pas de retour vers Ableton ;
pas de suppression de fonctions ;
pas de simplification musicale au nom de la latence ;
pas de redecoupage complet des familles GEN.
```

---

## 19. Questions restantes

Questions pour le niveau 2 :

1. Quels patchers deviennent fichiers principaux et lesquels deviennent sous-patchers ?
2. Quels messages circulent entre `MX-DEC-FAST`, `MX-DEC-CORE` et `MX-STATE` ?
3. Comment coder conceptuellement `GEN-PACKET`, `SPC-PACKET`, `HAL-PACKET`, `PROTO-PACKET` sans implementation ?
4. Quels messages live sont momentary, toggle, mode, macro ou scene ?
5. Comment `MX-AUTOPRO-MONITOR` observe sans agir seul ?
6. Comment `HAL-CUT` porte cause, autorite et sortie ?
7. Comment `ROOM-ANALYSIS` informe sans decider ?
8. Quels messages de signalisation sont persistants, fugitifs ou caches ?
9. Comment afficher le risque latence comme information de presence, pas jugement artistique ?
10. Quels sous-modules RNBO candidats sont etiquetes sans influencer la priorite Max standalone ?

---

## 20. Decision v0.1

Decision :

```text
la specification Max standalone detaillee niveau 1 est compatible avec le corpus actif.
```

Elle peut servir de base au niveau 2 sous conditions :

```text
appliquer les corrections mineures CORR-MX1-1 a CORR-MX1-5 ;
ne pas transformer `MX-*` en patch monolithique ;
ne pas confondre parent, sous-patcher, famille et message ;
ne pas laisser MX-STATE devenir une decision cachee ;
ne pas mettre diagnostic, analyse lente, UI ou reverb longue sur chemin critique ;
ne pas transformer les familles GEN en styles autonomes ;
ne pas reduire la latence a une contrainte technique ;
ne pas creer de compromis musical au nom de la charge.
```

Prochaine action recommandee :

```text
SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_2_MODULES_MESSAGES_VESPERARE_v0_1
```

But :

```text
definir les modules/messages conceptuels niveau 2 :
patchers principaux vs sous-patchers, packets, messages live, messages DEC,
messages PROTO, messages GEN/SPC/HAL/AUTOPRO/SIG, priorites et corrections
CORR-MX1, sans choisir objets Max, algorithmes ou implementation finale.
```
