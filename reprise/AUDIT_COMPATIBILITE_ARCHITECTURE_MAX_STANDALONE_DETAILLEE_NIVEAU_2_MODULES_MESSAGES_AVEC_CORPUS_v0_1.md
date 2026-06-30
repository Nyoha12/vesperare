# AUDIT COMPATIBILITE ARCHITECTURE MAX STANDALONE DETAILLEE NIVEAU 2 MODULES MESSAGES AVEC CORPUS v0.1

Projet : Vesperare
Statut : audit compatibilite architecture Max standalone detaillee niveau 2 modules/messages
Date : 2026-06-23

Sources actives principales :

- `SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_2_MODULES_MESSAGES_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_1_AVEC_CORPUS_v0_1.md`
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
verifier que le niveau 2 modules/messages Max standalone reste compatible
avec le corpus actif, que les messages ne deviennent pas une implementation
cachee, que la latence reste un enjeu musical sans compromis, et que le
niveau suivant peut traduire ces contrats vers des structures Max sans
choisir objets, algorithmes, seuils, materiel ou patch final.
```

Hors perimetre :

```text
objets Max ;
syntax Max finale ;
algorithmes ;
seuils ;
externals ;
plugins ;
controleur physique ;
interface finale ;
materiel final ;
tests pratiques ;
patch final.
```

---

## 1. Verdict general

Verdict :

```text
compatible avec corrections de cadrage niveau 2.
```

La specification est compatible parce qu'elle :

- confirme Max/MSP standalone comme runtime principal ;
- maintient les messages comme intentions structurees, pas comme protocole Max final ;
- distingue `MAIN-PATCHER`, `SUB-PATCHER`, `LOGIC-MODULE` et `VIEW` ;
- preserve `GEN-PACKET` comme condition obligatoire de toute generation ;
- traite `LAT` comme information de presence, reactivite et risque, pas comme autorite artistique ;
- separe `DEC`, `PERM`, `PROTO`, `GEN`, `GRAVE`, `SPC`, `HAL`, `AUTOPRO`, `MIX`, `SIG`, `LAT` et `DIAG` ;
- applique les corrections `CORR-MX1-1` a `CORR-MX1-5` ;
- conserve le setup minimum didgeridoo + PC ;
- ne revient pas vers Ableton/Max for Live comme cadre actif ;
- ne supprime aucune fonction musicale au nom de la latence ou de la charge.

Corrections de cadrage requises pour le niveau suivant :

```text
CORR-MX2-1 : ajouter un cycle de vie commun aux messages.
CORR-MX2-2 : interdire explicitement a LAT d'ecrire directement PERM ou DEC.
CORR-MX2-3 : borner PERM-FORCE par portee, duree, sortie, autorite et signal.
CORR-MX2-4 : interdire qu'un GEN-REQUEST devienne GEN-START sans DEC/PERM.
CORR-MX2-5 : renforcer HAL-CUT par signal audible/visible si l'action est sensible.
CORR-MX2-6 : regrouper les familles MSG au niveau 3 par espaces de noms lisibles.
CORR-MX2-7 : definir les messages inactifs, ignores ou remplaces en setup didgeridoo seul.
```

Ces corrections ne remettent pas en cause la fiche niveau 2.

---

## 2. Compatibilite avec Max standalone

La fiche respecte :

```text
Max/MSP standalone comme application instrumentale principale ;
pas session Ableton comme runtime directeur ;
pas patch monolithique ;
pas generateur autonome ;
pas pile d'effets ;
pas routage final.
```

Verdict :

```text
compatible.
```

Point fort :

```text
les messages sont assez precis pour preparer une application Max, mais
restent assez abstraits pour ne pas figer objets, sends, receives, dictionnaires,
coll, pattr, matrices audio ou vues finales.
```

Fragilite `FRAG-MX2-1` :

```text
la liste des familles MSG est large.
si le niveau 3 traduit chaque famille en structure separee, le systeme peut
devenir trop disperse.
```

Traitement :

```text
niveau 3 : organiser les messages par espaces de noms et flux :
BOOT/CONFIG, LIVE/SCENE/STATE, ANA/CONF, DEC/PERM, PROTO, AUDIO-FUNCTIONS,
MIX/SIG/LAT/DIAG.
```

---

## 3. Compatibilite avec les corrections niveau 1

Corrections traitees :

```text
CORR-MX1-1 : MX-HAL-CUT ajoute a PATH-HAL.
CORR-MX1-2 : MX-GRAVE parent / MX-GRAVE-* voies clarifie.
CORR-MX1-3 : MX-GEN parent / GEN-* familles clarifie.
CORR-MX1-4 : MX-REC-DIAG hors dependance OUT-MAIN clarifie.
CORR-MX1-5 : ALWAYS-ON-HAND != controle physique dedie obligatoire clarifie.
```

Verdict :

```text
couvert.
```

Point de vigilance :

```text
les corrections sont posees comme contrats.
le niveau 3 devra verifier qu'elles restent vraies dans la structure Max :
aucun diagnostic dans la sortie vitale, aucun halo cut banalise, aucun grave
parent transforme en decision musicale cachee.
```

---

## 4. Compatibilite typologie de composants

La typologie :

```text
MAIN-PATCHER ;
SUB-PATCHER ;
LOGIC-MODULE ;
VIEW.
```

est compatible avec le corpus.

Verdict :

```text
compatible.
```

Points forts :

- `MAIN-PATCHER` porte une famille de responsabilites ;
- `SUB-PATCHER` permet separation par clarte, latence ou sous-fonction ;
- `LOGIC-MODULE` n'a pas d'autonomie musicale ;
- `VIEW` ne conditionne pas le son vital.

Fragilite `FRAG-MX2-2` :

```text
un LOGIC-MODULE comme priority resolver, latency watcher ou permission
resolver peut devenir compositeur cache si ses sorties ne sont pas bornees.
```

Traitement :

```text
niveau 3 : tout LOGIC-MODULE doit declarer :
ce qu'il lit ;
ce qu'il peut proposer ;
ce qu'il ne peut jamais activer seul ;
quelle autorite valide son action.
```

---

## 5. Compatibilite format general de message

Le format general :

```text
id ;
type ;
source ;
cible ;
autorite ;
etat ;
fonction ;
cause ;
confiance ;
priorite ;
duree ;
sortie ;
signal ;
garde-fou.
```

est compatible.

Verdict :

```text
compatible.
```

Point fort :

```text
les champs obligent a expliciter provenance, fonction, autorite et sortie.
cela correspond au corpus : pas de transformation, generation, halo, espace
ou protection sans contexte musical.
```

Fragilite `FRAG-MX2-3` :

```text
le format general ne definit pas encore le cycle de vie commun :
demande, preparation, autorisation, demarrage, maintien, variation, sortie,
release, refus.
```

Correction `CORR-MX2-1` :

```text
niveau 3 : ajouter un cycle commun non obligatoire mais disponible :
REQUEST -> PREPARE -> ALLOW/REFUSE -> START -> HOLD/VARY -> EXIT -> RELEASE.
```

Regle :

```text
ce cycle ne doit pas imposer une forme musicale.
il sert a eviter les actions brusques, autonomes ou sans sortie.
```

---

## 6. Compatibilite packets

Packets niveau 2 :

```text
SRC-PACKET ;
SCN-PACKET ;
LIVE-PACKET ;
ANA-PACKET ;
CONF-PACKET ;
DEC-PACKET ;
PERM-PACKET ;
PROTO-PACKET ;
GEN-PACKET ;
GRAVE-PACKET ;
SPC-PACKET ;
HAL-PACKET ;
AUTOPRO-PACKET ;
MIX-PACKET ;
SIG-PACKET ;
LAT-PACKET ;
DIAG-PACKET.
```

Verdict :

```text
compatible.
```

Point fort :

```text
les packets restent des contrats de contexte, pas des bus audio ni des
presets esthetiques caches.
```

Fragilite `FRAG-MX2-4` :

```text
la fiche ne precise pas encore quels packets sont persistants dans MX-STATE,
lesquels sont transitoires, et lesquels doivent etre historises seulement
dans DIAG.
```

Traitement :

```text
niveau 3 : distinguer STATE-PERSISTENT, STATE-TRANSIENT, EVENT-ONLY,
DIAG-HISTORY.
```

Regle :

```text
un packet persistant doit avoir une sortie ou une condition de release.
```

---

## 7. Compatibilite generation

Familles GEN niveau 2 :

```text
GEN-PULSE-RHY ;
GEN-LINE-MEL ;
GEN-SOURCE-HARM ;
GEN-TEXTURE-BLOOM ;
GEN-VOICE ;
GEN-RET-FORM.
```

Sous-modes cites :

```text
PULSE-BODY ;
PULSE-INTERLOCK ;
PULSE-SUSP ;
PULSE-RUPTURE ;
LINE-BASS-MOTIF ;
LINE-ACID-NAT ;
LINE-FRAG ;
LINE-HOOK-MIN ;
LINE-DID-GUIDED ;
SRC-DID-HARM ;
SRC-GONG-HARM ;
SRC-PARTIAL-ADAPT ;
SRC-NATURALIZE ;
TEXTURE-RUG ;
BLOOM-GONG ;
BREATH-SUB ;
MASS-TRANSGRESS ;
SOUNDSYSTEM-PRESSURE ;
VOX-BREATH ;
VOX-FRAG ;
VOX-CAVITY ;
VOX-CRY-INTEGRATED ;
VOX-TRACE ;
RET-BODY ;
RET-RHY ;
RET-SPC ;
RET-MOTIF ;
RET-SUSP-EXIT.
```

Verdict :

```text
compatible.
```

Compatibilite :

- les familles ne sont pas des styles entiers ;
- Keita Ogawa / jazz reste une question de precision, polyrythmie, timbre, attaques, tension dynamique et jeu corporel, pas un style colle ;
- acid reste naturalisee, pas 303 reconnaissable par defaut ;
- trance suspendue reste une fonction d'etat long, attente, retour et pression possible ;
- sound system reste pression, grave, immersion et corps, pas simple volume ;
- dubstep reste trace de rupture, sub, espace ou tension, pas code de genre ;
- voix reste integree, transformee ou virtualo-acoustique, pas voix nue ;
- gong et didgeridoo peuvent guider harmonie, partiels, grave, espace ou generation ;
- les motifs melodiques sont permis, mais doivent garder fonction, contexte et sortie.

Fragilite `FRAG-MX2-5` :

```text
GEN-REQUEST peut etre lu comme une demande autonome si le niveau 3 ne separe
pas demande, preparation, permission et demarrage.
```

Correction `CORR-MX2-4` :

```text
GEN-REQUEST ne doit jamais declencher GEN-START directement.
il doit produire au maximum GEN-PREPARE ou SIG, puis passer par DEC/PERM.
```

Regle :

```text
tout GEN-START exige :
GEN-PACKET ;
PERM-PACKET ;
role musical ;
source ou origine perceptive ;
sortie prevue ;
risques ;
signal si necessaire.
```

---

## 8. Compatibilite didgeridoo / setup minimum

Le niveau 2 preserve :

```text
Didg Free ;
System Follows Didg ;
Didg Adapts ;
GRV-DID-GUIDE ;
GRAVE-DID-ADAPT ;
GEN-LINE-DID-GUIDED ;
SRC-DID-HARM ;
PATH-DIRECT ;
MIX-SAFE.
```

Verdict :

```text
compatible.
```

Point fort :

```text
le didgeridoo peut rester libre, guider le systeme, etre adapte au systeme,
ou jouer en mode direct protege.
```

Fragilite `FRAG-MX2-6` :

```text
les messages lies aux sources optionnelles gong, voix, tambour et salle
doivent etre inactifs ou remplaces proprement en setup didgeridoo seul.
```

Correction `CORR-MX2-7` :

```text
niveau 3 : definir pour chaque famille optionnelle :
DISABLED si source absente ;
IGNORED si message sans effet ;
FALLBACK si une fonction peut etre assuree par didgeridoo ou generation ;
SIGNAL si l'absence change la scene ou la preparation.
```

Regle :

```text
le setup didgeridoo seul ne doit pas etre une version appauvrie instable.
il doit rester un mode musical complet, avec moins de sources mais les memes
garde-fous de presence, direct, grave, generation, espace, halo et signal.
```

---

## 9. Compatibilite grave / gong / sub

Messages presents :

```text
GRAVE-CRITICAL ;
GRAVE-SUPPORT ;
GRAVE-FREE ;
GRAVE-CONFLICT ;
GRAVE-WITHDRAW ;
GRAVE-DID-GUIDE ;
GRAVE-DID-ADAPT ;
GONG-BLOOM ;
GONG-HARM ;
GONG-SPC-SOURCE.
```

Verdict :

```text
compatible.
```

Compatibilite :

- grave critique reconnu comme fonction corporelle et musicale ;
- grave support discret possible ;
- grave libre possible par choix live ou scene ;
- retrait du grave seulement par conflit deletere ou choix live ;
- gong comme source harmonique, microtonale, souffle, bloom, espace et queue ;
- gong ne remplace pas automatiquement le vrai sub ;
- didgeridoo et grave peuvent se guider, s'adapter ou rester libres selon mode.

Point de vigilance :

```text
GRAVE-CRITICAL peut relever P1, mais ne doit pas devenir un veto permanent
contre les etats longs, la microtonalite ou les conflits decides.
```

Traitement :

```text
niveau 3 : GRAVE-CRITICAL doit distinguer danger de sortie, conflit deletere,
masquage de presence, et tension musicale decidee.
```

---

## 10. Compatibilite espace / reverb

Messages SPC :

```text
SPC-NEAR ;
SPC-ROOM ;
SPC-WORLD ;
SPC-LONG ;
SPC-GRAVE ;
SPC-ROOM-OBS ;
SPC-ROOM-COMPAT ;
SPC-ROOM-RISK ;
SPC-ROOM-ADAPT ;
SPC-EXIT.
```

Verdict :

```text
compatible.
```

Compatibilite :

- proximite et immersion ne sont pas opposees de facon rigide ;
- mondes spatiaux peuvent etre combines si les roles sont declares ;
- reverb longue reste hors attaque critique ;
- analyse de salle informe, ne decide pas ;
- espace reactif peut enrichir perception sans devenir decor automatique ;
- grave spatial respecte grave critique ;
- sortie d'espace preparee.

Fragilite `FRAG-MX2-7` :

```text
les familles `SPC-*` sont correctes, mais leur traduction en Max devra eviter
de fusionner distance, queue, monde, salle, halo et grave spatial dans un seul
parametre de reverb.
```

Traitement :

```text
niveau 3 : garder au minimum des plans separes :
distance/proximite ;
room commune ;
monde spatial ;
longue queue ;
grave spatial ;
observation de salle ;
sortie/retour.
```

---

## 11. Compatibilite halo

Messages HAL :

```text
HAL-MEM ;
HAL-FREEZE ;
HAL-LOCK ;
HAL-FORCE ;
HAL-CUT ;
HAL-EXIT ;
HAL-SAFE ;
HAL-SIGNAL.
```

Verdict :

```text
compatible avec garde-fou renforce.
```

Compatibilite :

- halo voulu maintenu par `HAL-LOCK` ;
- halo force exige live ou scene ;
- halo cut est possible mais borne ;
- freeze rattache source ou monde par defaut ;
- sortie halo preparee ;
- Auto-Pro ne retire pas halo voulu hors P0/P1.

Fragilite `FRAG-MX2-8` :

```text
HAL-CUT est necessaire pour la jouabilite, mais dangereux s'il devient une
commande technique silencieuse.
```

Correction `CORR-MX2-5` :

```text
HAL-CUT doit porter cause, autorite, cible, duree, sortie et signal.
si le cut est audible ou musicalement sensible, il doit produire un signal
performer visible, sonore ou gestuel selon le futur niveau d'interface.
```

Regle :

```text
HAL-CUT hors P0/P1 exige choix live, scene explicite ou sortie deja decidee.
```

---

## 12. Compatibilite analyse / confiance

Messages ANA :

```text
ANA-PRESENCE ;
ANA-ATTACK ;
ANA-GRAVE ;
ANA-FEEDBACK ;
ANA-MASK ;
ANA-PULSE ;
ANA-DENSITY ;
ANA-ROOM ;
ANA-HALO ;
ANA-SPECTRAL ;
ANA-FORM.
```

Niveaux CONF :

```text
CONF-0 a CONF-5 ;
CONF-X.
```

Verdict :

```text
compatible.
```

Point fort :

```text
CONF ne decide pas.
CONF limite le droit de reaction.
```

Fragilite `FRAG-MX2-9` :

```text
CONF-5 autorise "agir dans bornes explicites".
si ces bornes ne sont pas detaillees, CONF-5 peut etre surestime.
```

Traitement :

```text
niveau 3 : toute reaction CONF-5 doit declarer :
permission active ;
fonction cible ;
borne ;
duree ;
sortie ;
signal si action perceptible.
```

---

## 13. Compatibilite decision / permission

Ordre :

```text
P0 > P1 > P2 > P3 > P4 > P5.
```

Messages DEC :

```text
DEC-ALLOW ;
DEC-REFUSE ;
DEC-HOLD ;
DEC-PREPARE ;
DEC-LIMIT ;
DEC-CUT ;
DEC-EXIT ;
DEC-SIGNAL ;
DEC-PROTECT.
```

Messages PERM :

```text
PERM-OFF ;
PERM-PREP ;
PERM-TRACE ;
PERM-SOFT ;
PERM-STRONG ;
PERM-FORCE ;
PERM-LIMIT ;
PERM-CUT.
```

Verdict :

```text
compatible avec cadrage de `PERM-FORCE`.
```

Fragilite `FRAG-MX2-10` :

```text
PERM-FORCE est utile pour scene forte, halo force, transgression, maintien
ou retour, mais peut devenir trop large si sa portee n'est pas bornee.
```

Correction `CORR-MX2-3` :

```text
PERM-FORCE exige :
live ou scene explicite ;
fonction cible ;
portee ;
duree ;
condition de maintien ;
sortie ;
signal ;
mode de release.
```

Regle :

```text
PERM-FORCE ne doit pas annuler P0/P1.
PERM-FORCE ne doit pas transformer une preparation en obligation musicale.
```

---

## 14. Compatibilite protocoles

Protocols prioritaires :

```text
DID -> GRAVE ;
DID -> GEN-LINE ;
DID -> GEN-SOURCE-HARM ;
GONG -> GRAVE ;
GONG -> SPC-WORLD ;
ATTACK -> GEN-PULSE ;
SUB -> AUTOPRO-P1 ;
VOX -> SPC-NEAR ;
HAL -> AUTOPRO-MASK ;
SCENE -> GEN-RET.
```

Verdict :

```text
compatible.
```

Point fort :

```text
PROTO influence une cible autorisee.
PROTO n'active pas une cible.
PROTO sans PERM reste inactif.
```

Point de vigilance :

```text
les protocols les plus sensibles sont DID -> GRAVE, DID -> GEN-LINE,
GONG -> GRAVE, HAL -> AUTOPRO-MASK et SCENE -> GEN-RET.
ils devront etre detailles en premier car ils touchent le grave, le retour,
la liberte du didgeridoo, le halo voulu et la coherence corporelle.
```

---

## 15. Compatibilite Auto-Pro

Messages Auto-Pro :

```text
AUTOPRO-P0 ;
AUTOPRO-P1 ;
AUTOPRO-P5 ;
AUTOPRO-MONITOR ;
AUTOPRO-REQUEST ;
AUTOPRO-SIGNAL ;
AUTOPRO-RELEASE.
```

Verdict :

```text
compatible.
```

Compatibilite :

- P0 peut agir immediatement ;
- P1 protege lisibilite vitale ;
- P5 stabilise sans choisir ;
- Auto-Pro observe, historise, signale et propose ;
- Auto-Pro ne compose pas ;
- Auto-Pro ne change pas de monde ;
- Auto-Pro ne coupe pas halo voulu hors danger critique.

Point de vigilance :

```text
AUTOPRO-REQUEST doit rester une demande ou preparation, pas une activation.
```

Traitement :

```text
niveau 3 : AUTOPRO-REQUEST passe par DEC/PERM sauf P0/P1 deja explicitement
definis comme protections immediates.
```

---

## 16. Compatibilite mix / sortie / diagnostic

Messages MIX :

```text
MIX-DIRECT ;
MIX-SOURCE-TREAT ;
MIX-GRAVE ;
MIX-GEN ;
MIX-SPC ;
MIX-HAL ;
MIX-PROTECT ;
MIX-MAIN ;
MIX-MONITOR ;
MIX-REC ;
MIX-DIAG ;
MIX-SAFE.
```

Messages DIAG :

```text
DIAG-STATE ;
DIAG-PACKET ;
DIAG-LOAD ;
DIAG-LAT ;
DIAG-AUDIO ;
DIAG-CONF ;
DIAG-GEN ;
DIAG-HAL ;
DIAG-SPC ;
DIAG-AUTOPRO ;
DIAG-WARN.
```

Verdict :

```text
compatible.
```

Points forts :

- `MIX-MAIN` prioritaire ;
- `MIX-SAFE` peut recevoir repli direct ;
- `MIX-DIAG` et `MIX-REC` non critiques ;
- diagnostic observe et explique ;
- diagnostic ne bloque pas `OUT-MAIN` ;
- diagnostic ne decide pas.

Fragilite `FRAG-MX2-11` :

```text
les messages de diagnostic peuvent devenir trop nombreux en live.
```

Traitement :

```text
niveau 3 : distinguer DIAG-HIDDEN, SIG-DISCREET, SIG-PERFORM,
SIG-CRITICAL.
```

---

## 17. Compatibilite latence comme enjeu musical

Messages LAT :

```text
LAT-INFO ;
LAT-RISK ;
LAT-CRITICAL ;
LAT-PATH ;
LAT-PRESENCE ;
LAT-SIGNAL.
```

Regle centrale deja posee :

```text
LAT informe sur presence, reactivite, chemin critique et risque.
LAT n'est pas une autorite artistique.
LAT ne retire pas de fonction musicale.
```

Verdict :

```text
compatible avec verrou supplementaire.
```

Compatibilite :

- la latence est bien traitee comme presence, jouabilite, pression, reactivite et confiance ;
- les actions techniques proposees restent organisationnelles ;
- les fonctions desirees ne sont pas retirees ;
- aucune scene n'est appauvrie ;
- aucun monde spatial n'est change par LAT seul ;
- aucune reconnaissance electronique n'est autorisee pour simplifier.

Fragilite `FRAG-MX2-12` :

```text
LAT-CRITICAL peut etre confondu avec P0/P1 si le niveau 3 ne separe pas
risque technique, presence ressentie, surcharge et securite sonore.
```

Correction `CORR-MX2-2` :

```text
LAT ne doit jamais ecrire directement PERM ou DEC.
LAT peut informer SIG, DIAG, PREPARE ou une proposition technique.
DEC/PERM restent les seules autorites de modification musicale hors P0/P1
deja definis.
```

Regle :

```text
la latence est un enjeu musical et technique.
elle ne devient pas une permission automatique de simplification.
```

---

## 18. Compatibilite commandes live

Types :

```text
LIVE-MOMENTARY ;
LIVE-TOGGLE ;
LIVE-MODE ;
LIVE-MACRO ;
LIVE-SCENE ;
LIVE-SAFETY ;
LIVE-BYPASS ;
LIVE-HOLD ;
LIVE-EXIT.
```

Verdict :

```text
compatible.
```

Point fort :

```text
la fiche separe acces live et controle physique definitif.
ALWAYS-ON-HAND veut dire disponible pendant le jeu, pas forcement bouton
dedie des maintenant.
```

Fragilite `FRAG-MX2-13` :

```text
les macros multidimensionnelles peuvent produire trop d'effets simultanes
si leurs relations ne sont pas declarees.
```

Traitement :

```text
niveau 3 : chaque LIVE-MACRO doit declarer :
fonctions touchees ;
priorite ;
plage symbolique ;
effets interdits ;
signalisation ;
relation avec scene dominante et couches.
```

---

## 19. Compatibilite avec non-dispersion documentaire

La fiche niveau 2 garde une fonction nette :

```text
definir contrats modules/messages.
```

Elle ne remplace pas :

```text
besoins stylistiques ;
besoins generation ;
caracterisation detaillee ;
reverbs/espace ;
protocoles ;
analyses ;
systeme decisionnel ;
matrice blocs ;
decision runtime.
```

Verdict :

```text
compatible.
```

Point de vigilance :

```text
le niveau 3 doit eviter de relancer une branche parallele Ableton/M4L.
les anciens documents M4L restent memoire ou comparaison, pas trajectoire
active.
```

---

## 20. Corrections requises pour le niveau 3

Corrections a reporter :

```text
CORR-MX2-1 : cycle de vie commun des messages.
CORR-MX2-2 : LAT informe, signale ou propose ; LAT n'ecrit pas DEC/PERM.
CORR-MX2-3 : PERM-FORCE borne par portee, duree, sortie, autorite et signal.
CORR-MX2-4 : GEN-REQUEST ne devient jamais GEN-START sans DEC/PERM.
CORR-MX2-5 : HAL-CUT sensible exige signal et sortie musicale.
CORR-MX2-6 : regroupement lisible des familles MSG au niveau 3.
CORR-MX2-7 : statut des messages en setup didgeridoo seul.
```

Corrections non necessaires :

```text
pas de changement de runtime ;
pas de retour a Ableton comme cible principale ;
pas de suppression de fonctions pour latence ;
pas de reduction de GEN-PACKET ;
pas de fusion SPC/HAL/GEN-HAL ;
pas de transformation Auto-Pro en compositeur ;
pas de tests pratiques a cette etape.
```

---

## 21. Questions restantes

Questions a traiter au niveau 3 ou apres :

1. Quels packets sont persistants dans `MX-STATE`, transitoires ou seulement historises ?
2. Quels protocols prioritaires doivent etre traduits en premier ?
3. Quels messages doivent rester visibles en performance et lesquels restent diagnostic ?
4. Quels controles `ALWAYS-ON-HAND` doivent devenir physiques plus tard ?
5. Quelle granularite garder pour `LAT-PRESENCE` sans distraire le jeu ?
6. Comment organiser `SPC`, `HAL` et `GEN-HAL` sans les fusionner dans une seule reverb ?
7. Comment representer le setup didgeridoo seul sans faux messages de sources absentes ?
8. Comment faire exister `PERM-FORCE` sans le transformer en override global ?
9. Quels messages doivent avoir une sortie musicale obligatoire ?
10. Quels messages doivent etre impossibles hors scene explicite ou live explicite ?

Ces questions ne bloquent pas la suite.

---

## 22. Decision v0.1

Decision :

```text
la specification Max standalone detaillee niveau 2 modules/messages est
compatible avec le corpus actif.
```

Elle peut servir de base au niveau suivant sous conditions :

```text
ne pas transformer les messages en protocole Max final ;
ne pas transformer les packets en structures logicielles finales ;
ne pas laisser LAT modifier DEC/PERM ;
ne pas laisser GEN-REQUEST activer seul ;
ne pas laisser PERM-FORCE devenir global ;
ne pas banaliser HAL-CUT ;
ne pas fusionner SPC, HAL et GEN-HAL ;
ne pas perdre GEN-PACKET ;
ne pas perdre le setup didgeridoo + PC ;
ne pas retirer de fonctions musicales au nom de la latence ;
ne pas revenir vers Ableton/Max for Live comme trajectoire principale.
```

Prochaine action recommandee :

```text
SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_3_TRADUCTION_STRUCTURES_MAX_VESPERARE_v0_1
```

But :

```text
traduire les contrats niveau 2 vers une organisation de structures Max
standalone : patchers, sous-patchers, vues, etat, messages, flux audio,
flux controle, flux analyse, flux diagnostic et priorites, sans choisir
encore objets Max, algorithmes, seuils, externals, interface finale,
controleur physique, materiel ou patch final.
```
