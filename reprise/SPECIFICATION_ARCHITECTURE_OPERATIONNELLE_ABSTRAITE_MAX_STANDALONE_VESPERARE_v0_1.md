# SPECIFICATION ARCHITECTURE OPERATIONNELLE ABSTRAITE MAX STANDALONE VESPERARE v0.1

Projet : Vesperare
Statut : specification d'architecture operationnelle abstraite Max standalone
Date : 2026-06-23

Sources actives principales :

- `AUDIT_COHERENCE_GLOBALE_PRE_ARCHITECTURE_OPERATIONNELLE_MAX_STANDALONE_VESPERARE_v0_1.md`
- `MATRICE_COMMANDES_PACKETS_ETATS_SIGNAUX_PERFORMANCE_MAX_STANDALONE_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_MATRICE_COMMANDES_PACKETS_ETATS_SIGNAUX_PERFORMANCE_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_NOYAU_PERFORMANCE_MAX_STANDALONE_CONTROLES_SCENES_CHEMINS_VESPERARE_v0_1.md`
- `SPECIFICATION_SYSTEME_DECISIONNEL_CONCEPTUEL_VESPERARE_v0_1.md`
- `MATRICE_FONCTIONS_CRITICITE_LATENCE_CHEMINS_MAX_STANDALONE_VESPERARE_v0_1.md`
- `SPECIFICATION_GENERATION_FINE_PAR_GEN_ROLE_MAX_STANDALONE_VESPERARE_v0_1.md`
- `MATRICE_GEN_ROLE_SCENES_CONTROLES_LIVE_RISQUES_VESPERARE_v0_1.md`
- `SPECIFICATION_TECHNIQUE_CONCEPTUELLE_REVERB_SPACE_HALO_FREEZE_RESONATEURS_CONVOLUTION_MAX_STANDALONE_VESPERARE_v0_1.md`
- `SPECIFICATION_GRAVE_GONG_SUB_DIDGERIDOO_CONFLITS_ET_MODES_MAX_STANDALONE_VESPERARE_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_2_MODULES_MESSAGES_VESPERARE_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_4_PATCHERS_ABSTRAITS_ET_CONTRATS_VESPERARE_v0_1.md`
- `MATRICE_ARCHITECTURE_MAX_STANDALONE_NIVEAU_6_ROLES_TECHNIQUES_CANDIDATS_CHEMINS_RISQUES_VESPERARE_v0_1.md`
- `DECISION_RUNTIME_MAX_STANDALONE_LATENCE_SANS_COMPROMIS_VESPERARE_v0_1.md`

But :

```text
specifier l'architecture operationnelle abstraite de Vesperare pour Max/MSP
standalone : centres de responsabilite, chemins, flux de commandes, owners
d'etats, packets persistants, signalisation, releases, fallback MIN-DID-PC et
contraintes de latence, sans choisir objets Max, syntaxe, routage final, UI,
controleur, seuils, buffers ou patch final.
```

Hors perimetre :

```text
implementation ;
patch final ;
fichiers Max definitifs ;
objets Max definitifs ;
syntaxe Max definitive ;
send/receive definitifs ;
dictionaries definitifs ;
routage audio final ;
seuils numeriques ;
buffers finaux ;
driver audio final ;
interface audio finale ;
controleur physique ;
UI finale ;
mapping MIDI/OSC/HID ;
tests pratiques ;
benchmark ;
calibration PA finale.
```

---

## 1. Decision centrale

Decision :

```text
l'architecture operationnelle abstraite recolle le corpus actif en centres de
responsabilite jouables et auditables.
```

Elle ne doit pas devenir :

```text
un niveau 7 technique automatique ;
un patch Max en attente ;
une UI cachee ;
une liste d'objets ;
un routage audio final ;
un systeme compositeur autonome.
```

Elle doit rendre explicite :

```text
ce qui entre ;
ce qui sort ;
qui decide ;
qui possede les etats ;
qui ecrit les packets ;
qui lit les packets ;
qui peut limiter ;
qui doit signaler ;
qui doit relacher ;
quels chemins restent critiques ;
quels chemins restent lents ou diagnostiques ;
comment MIN-DID-PC reste complet.
```

Regle :

```text
une responsabilite operationnelle n'est valide que si elle protege au moins une
fonction musicale, une decision live, une source, une sortie, un etat, un chemin
critique ou un garde-fou.
```

---

## 2. Principes operationnels

### 2.1. Trois plans

```text
PLAN-AUDIO
Audio temps reel, direct, safe, grave critique, generation audio, espace/halo,
mix et sortie.

PLAN-CMD-STATE
Commandes, decisions, permissions, etats, owners, releases, packets.

PLAN-INFO
Signalisation, diagnostic, historique, vues, mesures non bloquantes.
```

Regles :

```text
PLAN-INFO ne conditionne jamais PLAN-AUDIO.
PLAN-CMD-STATE autorise et organise, mais ne doit pas rallonger le chemin direct.
PLAN-AUDIO doit garder direct et safe recuperables.
```

### 2.2. Deux horizons temporels

```text
H-FAST
presence, direct, attaque, retour, P0/P1, grave critique, interaction jouee.

H-SLOW
espace long, halo long, analyse lente, preparation, diagnostic, historique,
mesure de salle, evolution non critique.
```

Regles :

```text
H-SLOW ne bloque pas H-FAST.
H-FAST peut ignorer H-SLOW si la presence ou la securite l'exige.
H-SLOW peut etre central musicalement, mais il doit etre place hors attaque
critique.
```

### 2.3. Autorite

Ordre actif :

```text
P0 > P1 > P2 > P3 > P4 > P5 > DIAG.
```

Regles :

```text
P0 protege immediatement.
P1 limite la lisibilite vitale.
P2 reste choix live explicite.
P3 prepare scene/page/contexte.
P4 propose.
P5 maintient/cohere sans composer.
DIAG observe sans autorite audio.
LAT informe sans autorite de degradation.
```

---

## 3. Centres operationnels `OP-*`

Les centres `OP-*` sont des centres de responsabilite.
Ils ne sont pas des fichiers Max, des patchers finaux ou des objets.

### 3.1. Liste

```text
OP-BOOT-CONFIG
Initialisation, configuration conceptuelle, setup actif, mode minimum.

OP-AUDIO-IO
Entrees/sorties audio, sources disponibles, sorties principales.

OP-DIRECT-SAFE
Chemin direct recuperable, safe, protections immediates, bypass de presence.

OP-LIVE-COMMAND
Reception et normalisation des commandes live, gestes, modes, permissions.

OP-SCENE-FORM
Scene dominante, pages conceptuelles, couches, etat de forme, transitions.

OP-STATE-HUB
Etats persistants, owners, lectures, ecritures, releases.

OP-DEC-FAST
Decisions P0/P1 et protections a reactivite immediate.

OP-DEC-CORE
Decisions P2/P3/P4/P5, permissions, refus, limites, sorties.

OP-ANA-FAST
Analyses rapides utiles a presence, attaque, grave, P0/P1, confiance immediate.

OP-ANA-SLOW
Analyses lentes, contexte, tendance, salle, historique non bloquant.

OP-PROTO-HUB
Relations source -> cible -> reaction -> garde-fou.

OP-GEN-HUB
Generation par GEN-ROLE, GEN-PACKET, autonomie, apparition, variation, sortie.

OP-GRV-DID-GONG
Didgeridoo, vrai grave, sub, gong, bloom, souffle, conflits et owner grave.

OP-SPC-HUB
Mondes spatiaux, proximite, immersion, reverb, grave spatial, reaction spatiale.

OP-HAL-HUB
Memoire, queue, halo, freeze, lock, force, cut, momentary, safe force.

OP-AUTOPRO
P0/P1/P5, hygiene, protections, coherence non esthetique.

OP-MIX-OUT
Mix principal, safe mix, headroom, sortie, coherence de destination.

OP-SIGNAL
Signalisation performer, niveaux SIG-0 a SIG-3, visibilite.

OP-DIAG-REC
Diagnostic, logs, archive, vues non vitales, mesures non bloquantes.

OP-MIN-DID-PC
Mode minimum complet didgeridoo + PC.
```

### 3.2. Regles de lecture

```text
OP-* ne veut pas dire module Max.
OP-* ne veut pas dire piste audio.
OP-* ne veut pas dire page UI.
OP-* ne choisit pas d'objet.
OP-* ne fixe pas de routage final.
```

---

## 4. Table des responsabilites

| Centre | Recoit | Produit | Ne doit jamais faire |
|---|---|---|---|
| `OP-BOOT-CONFIG` | config, setup, mode minimum | SETUP-PACKET, CONFIG-PACKET | imposer une scene expressive |
| `OP-AUDIO-IO` | sources audio | SRC-PACKET, presence source | conditionner audio par diagnostic |
| `OP-DIRECT-SAFE` | source directe, P0/P1 | direct, safe, MIX-SAFE, SIG si repli | ajouter traitement lent obligatoire |
| `OP-LIVE-COMMAND` | gestes, modes, force, lock, cut, permissions | LIVE-PACKET, PERF-PACKET | devenir UI finale |
| `OP-SCENE-FORM` | DOM, LAYER, GESTE, ETAT, PAGE | SCN-PACKET, STATE-DOM, STATE-FORM | transformer page en preset |
| `OP-STATE-HUB` | packets owners, releases | STATE-PACKET de lecture | devenir etat global magique |
| `OP-DEC-FAST` | P0/P1, ana rapide, safe | DEC-PACKET P0/P1, AUTOPRO-PACKET, SIG | composer |
| `OP-DEC-CORE` | P2/P3/P4/P5, contexte, permissions | DEC-PACKET, PERM-PACKET | accepter LAT comme autorite |
| `OP-ANA-FAST` | taps rapides | ANA-PACKET, CONF-PACKET, LAT-PACKET info | decider seul |
| `OP-ANA-SLOW` | historique, salle, tendances | ANA-PACKET lent, DIAG-PACKET | protection directe |
| `OP-PROTO-HUB` | source, cible, contexte | PROTO-PACKET | activer sans DEC/PERM |
| `OP-GEN-HUB` | GEN-PACKET, PERM, DEC | generation, GEN-PACKET actif, GEN-REL | demarrer sur REQUEST seul |
| `OP-GRV-DID-GONG` | source, grave, conflit, mode DID/GRV | GRAVE-PACKET, owner grave, SIG | traiter grave comme simple basse |
| `OP-SPC-HUB` | monde spatial, PERM, source | SPC-PACKET, monde, release | changer de monde sans permission |
| `OP-HAL-HUB` | HAL mode, source, SPC, GEN-HAL | HAL-PACKET, REL-HAL | retirer halo voulu hors P0/P1/choix/sortie |
| `OP-AUTOPRO` | P0/P1/P5, mix, source | AUTOPRO-PACKET, limitation, release | devenir couche artistique |
| `OP-MIX-OUT` | audio, protections, grave, halo | MIX-PACKET, OUT-MAIN, OUT-SAFE | dependre de DIAG/VIEW |
| `OP-SIGNAL` | DEC, LIMIT, BLOCK, P0/P1/P2 | SIG-PACKET, SIG-0..SIG-3 | masquer limitation sensible |
| `OP-DIAG-REC` | copies non bloquantes | DIAG-PACKET, archive | ecrire decision musicale |
| `OP-MIN-DID-PC` | subset minimum | setup minimum complet | devenir mode pauvre |

---

## 5. Chemins operationnels

### 5.1. Chemins actifs

```text
PATH-DIRECT
OP-AUDIO-IO -> OP-DIRECT-SAFE -> OP-MIX-OUT.
Doit rester recuperable.

PATH-SAFE
OP-DEC-FAST / OP-AUTOPRO -> OP-DIRECT-SAFE -> OP-MIX-OUT -> OP-SIGNAL.
Protege sans devenir style.

PATH-PLAY-FAST
OP-LIVE-COMMAND -> OP-DEC-CORE/OP-DEC-FAST -> OP-GRV-DID-GONG ou OP-GEN-HUB
ou OP-SPC-HUB/OP-HAL-HUB -> OP-MIX-OUT.
Sert au jeu ressenti.

PATH-GRV-CRITICAL
OP-AUDIO-IO / OP-GEN-HUB / OP-SPC-HUB -> OP-GRV-DID-GONG -> OP-DEC-FAST
si risque -> OP-MIX-OUT -> OP-SIGNAL.
Traite vrai grave, sub, gong, didgeridoo, bloom, souffle.

PATH-GEN-MUS
OP-SCENE-FORM / OP-LIVE-COMMAND / OP-PROTO-HUB -> OP-DEC-CORE ->
OP-GEN-HUB -> OP-MIX-OUT ou OP-SPC-HUB/OP-HAL-HUB.
Ne demarre pas sans GEN-PACKET/PERM/DEC.

PATH-SPC-HAL-SLOW
OP-LIVE-COMMAND / OP-SCENE-FORM / OP-GEN-HUB -> OP-DEC-CORE ->
OP-SPC-HUB / OP-HAL-HUB -> OP-MIX-OUT.
Peut etre central musicalement mais hors attaque critique.

PATH-ANA-FAST
OP-AUDIO-IO / taps non bloquants -> OP-ANA-FAST -> OP-DEC-FAST ou
OP-SIGNAL.
Analyse utile mais non compositrice.

PATH-ANA-SLOW
OP-AUDIO-IO / OP-DIAG-REC -> OP-ANA-SLOW -> OP-DIAG-REC ou preparation.
Ne decide pas protection directe.

PATH-DIAG-VIEW
copies de packets et signaux -> OP-DIAG-REC / OP-SIGNAL.
Ne conditionne jamais l'audio.
```

### 5.2. Points `CHK`

```text
CHK-DIRECT
Direct recuperable, pas analyse lente, pas diagnostic, pas reverb longue
obligatoire.

CHK-MIX-SAFE
Safe disponible, source directe possible, repli signale.

CHK-OUT-MAIN
Sortie principale non dependante de DIAG/VIEW.

CHK-GRAVE-CRITICAL
Owner grave, conflit, tension decidee, retrait ou limitation signalee.

CHK-GEN-PACKET
GEN actif seulement avec GEN-PACKET, PERM et DEC.

CHK-SPC-HAL-SEPARATION
SPC, HAL et GEN-HAL separes.

CHK-HAL-CUT
Halo voulu retire seulement par P0/P1, choix live ou sortie decidee.

CHK-LAT-NONAUTH
LAT informe, ne coupe pas, ne degrade pas.

CHK-DIAG-NONBLOCK
DIAG n'ecrit pas decision et ne bloque pas sortie.

CHK-VIEW-NONVITAL
Vue non conditionnelle.

CHK-MIN-DID-PC
Minimum complet actif ou recuperable.
```

---

## 6. Flux de commande

### 6.1. Flux general

```text
CMD / EVT / SOURCE
-> OP-LIVE-COMMAND ou OP-ANA-FAST/OP-ANA-SLOW
-> OP-DEC-FAST si P0/P1 possible
-> OP-DEC-CORE si P2/P3/P4/P5
-> PERM-PACKET / DEC-PACKET / BLOCK / LIMIT
-> OP cible
-> STATE update par owner
-> SIG si jouabilite modifiee
-> REL quand sortie ou release.
```

### 6.2. Commandes live

```text
CMD-CORE-* -> OP-LIVE-COMMAND -> OP-DEC-CORE -> OP-STATE-HUB + OP cible.
CMD-PAGE-* -> OP-LIVE-COMMAND / OP-SCENE-FORM -> PERM-PACKET.
CMD-GESTE-* -> OP-LIVE-COMMAND -> OP-DEC-CORE ou OP-DEC-FAST si risque.
CMD-PROTECT-* -> OP-DEC-FAST / OP-AUTOPRO.
CMD-GEN-* -> OP-DEC-CORE -> OP-GEN-HUB avec GEN-PACKET/PERM.
CMD-SPC-HAL-* -> OP-DEC-CORE -> OP-SPC-HUB / OP-HAL-HUB.
CMD-GRV-DID-* -> OP-DEC-CORE / OP-DEC-FAST -> OP-GRV-DID-GONG.
```

### 6.3. Reponses

```text
ACK
La commande est acceptee.

LIMIT
La commande existe mais est limitee par P0/P1, conflit, lisibilite ou sortie.

BLOCK
La commande est refusee : permission absente, packet invalide, risque,
pas de sortie, diagnostic non autorise, REQUEST seul.

REL
La commande, l'etat ou la fonction sort, relache, transfere ou devient trace.
```

Regle :

```text
LIMIT et BLOCK qui modifient la jouabilite doivent produire SIG.
```

---

## 7. Owners d'etats

### 7.1. Table owner

| Etat | Owner principal | Ecrit par | Lu par | Release |
|---|---|---|---|---|
| `STATE-DOM` | `OP-SCENE-FORM` | `CMD-CORE-DOM`, transition validee | `OP-DEC-CORE`, `OP-GEN-HUB`, `OP-SPC-HUB`, `OP-SIGNAL` | `REL-SCENE`, transfert DOM |
| `STATE-FORM` | `OP-SCENE-FORM` | `CMD-CORE-FORM`, geste, sortie | `OP-DEC-CORE`, `OP-GEN-HUB`, `OP-SPC-HUB`, `OP-HAL-HUB` | sortie, consequence |
| `STATE-LAYER` | `OP-SCENE-FORM` | `CMD-CORE-LAYER`, `CMD-PAGE-PERM` | `OP-GEN-HUB`, `OP-GRV-DID-GONG`, `OP-SPC-HUB` | couche retiree, trace |
| `STATE-DID` | `OP-GRV-DID-GONG` | `CMD-DID-MODE`, `CMD-CORE-DID` | `OP-DIRECT-SAFE`, `OP-DEC-CORE`, `OP-GEN-HUB` | retour libre protege |
| `STATE-GRV` | `OP-GRV-DID-GONG` | `CMD-GRV-*`, P0/P1 grave | `OP-MIX-OUT`, `OP-DEC-FAST`, `OP-SPC-HUB`, `OP-GEN-HUB` | `REL-GRAVE` |
| `STATE-SPC` | `OP-SPC-HUB` | `CMD-SPC-WORLD`, scene, PERM | `OP-HAL-HUB`, `OP-GEN-HUB`, `OP-MIX-OUT` | `REL-SPC` |
| `STATE-HAL` | `OP-HAL-HUB` | `CMD-HAL-*`, `CMD-GESTE-HAL-*`, P0/P1 | `OP-SPC-HUB`, `OP-MIX-OUT`, `OP-SIGNAL` | `REL-HAL` |
| `STATE-RET` | `OP-SCENE-FORM` | `CMD-CORE-RET`, `CMD-GESTE-RET-*` | `OP-GEN-HUB`, `OP-GRV-DID-GONG`, `OP-SPC-HUB` | retour stable, retrait |
| `STATE-GEN` | `OP-GEN-HUB` | `CMD-GEN-*`, PERM/DEC | `OP-SCENE-FORM`, `OP-GRV-DID-GONG`, `OP-SPC-HUB`, `OP-HAL-HUB` | `REL-GEN` |
| `STATE-PROTECT` | `OP-AUTOPRO` | P0/P1/P5, `OP-DEC-FAST` | tous centres critiques | `REL-AUTOPRO` |
| `STATE-SIG` | `OP-SIGNAL` | P0/P1/P2 limite, DEC, LIMIT, BLOCK | performer, DIAG | expiration, remplacement |
| `STATE-LAT` | `OP-ANA-FAST` / `OP-ANA-SLOW` | LAT-PACKET | `OP-SIGNAL`, `OP-DIAG-REC`, `OP-DEC-CORE` info | expiration |
| `STATE-MIN` | `OP-MIN-DID-PC` | setup, fallback, safe | tous centres | sortie du minimum ou maintien |

### 7.2. Regles owner

```text
un owner peut ecrire.
DEC/PERM peut autoriser.
P0/P1 peut ecrire via OP-DEC-FAST si protection immediate.
VIEW n'ecrit pas un etat musical.
DIAG n'ecrit pas un etat musical.
LAT n'ecrit pas une decision.
```

---

## 8. Packets persistants

### 8.1. Owners

| Packet | Owner operationnel | Autorise par | Signal si sensible |
|---|---|---|---|
| `CONFIG-PACKET` | `OP-BOOT-CONFIG` | setup | non sauf erreur |
| `SETUP-PACKET` | `OP-BOOT-CONFIG` / `OP-MIN-DID-PC` | setup | si MIN change |
| `SRC-PACKET` | `OP-AUDIO-IO` | source active | si source protegee/absente |
| `SCN-PACKET` | `OP-SCENE-FORM` | P2/P3 | si DOM change |
| `LIVE-PACKET` | `OP-LIVE-COMMAND` | P2 | si limite |
| `ANA-PACKET` | `OP-ANA-FAST` / `OP-ANA-SLOW` | analyse | non sauf risque |
| `CONF-PACKET` | `OP-ANA-FAST` / `OP-ANA-SLOW` | analyse | si confiance bloque action |
| `DEC-PACKET` | `OP-DEC-CORE` / `OP-DEC-FAST` | autorite | si audible/sensible |
| `PERM-PACKET` | `OP-DEC-CORE` | P2/P3/P4/P5 | si refuse/limite |
| `PROTO-PACKET` | `OP-PROTO-HUB` | DEC/PERM | si reaction bloquee |
| `GEN-PACKET` | `OP-GEN-HUB` | PERM/DEC | si start/exit important |
| `GRAVE-PACKET` | `OP-GRV-DID-GONG` | DEC/PERM/P0/P1 | souvent requis |
| `SPC-PACKET` | `OP-SPC-HUB` | DEC/PERM | si monde change/limite |
| `HAL-PACKET` | `OP-HAL-HUB` | P2/P3/P0/P1 | si lock/cut/force/limite |
| `AUTOPRO-PACKET` | `OP-AUTOPRO` | P0/P1/P5 | si action sensible |
| `MIX-PACKET` | `OP-MIX-OUT` | P0/P1/P5/out | si safe/limite |
| `SIG-PACKET` | `OP-SIGNAL` | cause | visible selon niveau |
| `LAT-PACKET` | `OP-ANA-FAST` / `OP-ANA-SLOW` | information | si presence affectee |
| `DIAG-PACKET` | `OP-DIAG-REC` | diagnostic | non performatif |

### 8.2. Regles

```text
un packet doit rester lisible, borne, associe a source, fonction, autorite,
sortie et garde-fou.
un packet ne doit pas devenir preset, bus audio, decision autonome ou
permission permanente.
```

---

## 9. Generation operationnelle

### 9.1. Contrat

```text
OP-GEN-HUB ne produit rien sans GEN-PACKET valide.
GEN-PACKET ne demarre rien sans PERM-PACKET et DEC-PACKET.
REQUEST ne demarre jamais seul.
AUT-5 jamais par defaut.
VARY reste dans le meme role musical.
```

### 9.2. Flux

```text
SCN / LIVE / PROTO / SOURCE
-> CMD-GEN-* ou REQUEST
-> OP-DEC-CORE
-> CHK-GEN-PACKET
-> OP-GEN-HUB
-> audio ou controle vers OP-MIX-OUT / OP-GRV-DID-GONG / OP-SPC-HUB / OP-HAL-HUB
-> SIG si start, exit, limite ou blocage sensible.
```

### 9.3. Garde-fous

```text
pas de motif autonome sans sortie.
pas de style importe entier.
pas d'electronique reconnaissable par defaut.
pas de voix nue par defaut.
pas de clone TB-303 par defaut.
pas de jazz plaque.
pas de generation qui remplace P2.
```

---

## 10. Grave / didgeridoo / gong operationnel

### 10.1. Contrat

```text
OP-GRV-DID-GONG gere le noeud le plus critique : didgeridoo, vrai grave, sub,
gong, bloom, souffle, base microtonale, conflits et owner grave.
```

Regle :

```text
a un moment critique, une seule fonction porte le vrai grave lisible, sauf
graves libres, transgression controlee, scene composee explicite ou P0/P1.
```

### 10.2. Flux

```text
SRC-PACKET / GEN-PACKET / SPC-PACKET / LIVE-PACKET
-> OP-GRV-DID-GONG
-> GRAVE-PACKET + owner grave
-> OP-DEC-FAST si P0/P1 possible
-> OP-MIX-OUT
-> OP-SIGNAL si grave limite, retrait, conflit ou sub protege.
```

### 10.3. Modes operationnels

```text
DID libre protege.
Systeme adapte au didgeridoo.
Didgeridoo adapte au systeme.
Didgeridoo guide harmonique.
Didgeridoo source traitee/fonctionnalisee.
Didgeridoo perturbateur.
Grave absent/off.
Soutien discret.
Retrait du grave genere.
Adaptation harmonique optionnelle.
Graves libres explicites.
Gong/bloom porte.
Sub ponctuel non identifiable.
Souffle/pression aerienne.
```

Interdits :

```text
didgeridoo ignore ;
didgeridoo baisse en cachette ;
grave libre par defaut ;
sub brouille ;
gong decoratif ;
bloom confondu avec boue ;
grave traite comme simple basse.
```

---

## 11. Espace / halo operationnel

### 11.1. Separation

```text
OP-SPC-HUB gere le monde spatial.
OP-HAL-HUB gere memoire, queue, lock, force, cut, freeze et sortie.
OP-GEN-HUB peut fournir GEN-HAL comme matiere, mais ne decide pas HAL.
```

### 11.2. Flux SPC

```text
CMD-SPC-WORLD / SCN / PERM / SOURCE
-> OP-DEC-CORE
-> OP-SPC-HUB
-> SPC-PACKET
-> OP-MIX-OUT
-> OP-SIGNAL si monde change, espace limite ou source masquee.
```

### 11.3. Flux HAL

```text
CMD-HAL-MODE / CMD-GESTE-HAL-* / GEN-HAL-SOURCE
-> OP-DEC-CORE ou OP-DEC-FAST si P0/P1
-> OP-HAL-HUB
-> HAL-PACKET
-> OP-MIX-OUT
-> REL-HAL ou SIG si lock/cut/force/limite.
```

### 11.4. Garde-fous

```text
SPC n'est pas un preset reverb.
HAL n'est pas un effet gratuit.
GEN-HAL ne decide pas le halo.
Halo voulu n'est retire que par P0/P1, choix live ou sortie decidee.
Espace long peut durer longtemps si decide.
MIN-DID-PC ne depend pas de convolution, mesure de salle ou reverb complexe.
```

---

## 12. Signalisation operationnelle

### 12.1. Niveaux

```text
SIG-0
Information discrete : scene, couche, etat, monde.

SIG-1
Attention performative : fonction armee, retour prepare, halo lock, graves
libres, monde long, generation armee.

SIG-2
Limitation jouable : P2 limite, motif bloque, grave limite, halo limite,
source protegee, espace limite, densite nettoyee.

SIG-3
Critique : P0/P1 actif, safe actif, feedback, clipping critique, headroom
critique, sub dangereux, direct indisponible.
```

### 12.2. Visibilite

```text
PERFORMER-REQUIRED
P0, P1, direct indisponible, MIX-SAFE, grave critique, P2 limite, HAL-CUT
sensible, GEN-START/EXIT important, SPC-WORLD change, LAT critique.

PERFORMER-OPTIONAL
GEN prepare, SPC prepare, HAL prepare, PROTO actif, confiance elevee,
couche active, scene preparee.

DISCREET
diagnostic leger, P5 doux, release non critique.

DIAG-HIDDEN
logs, historique, mesures lentes, packets archives, warnings non performatifs.
```

Regle :

```text
un changement qui modifie jouabilite, sortie, halo voulu, grave critique,
limitation P2, cut sensible ou latence ressentie ne doit pas rester cache.
```

---

## 13. MIN-DID-PC operationnel

### 13.1. Centres obligatoires

```text
OP-AUDIO-IO ;
OP-DIRECT-SAFE ;
OP-LIVE-COMMAND ;
OP-SCENE-FORM minimum ;
OP-STATE-HUB ;
OP-DEC-FAST ;
OP-DEC-CORE ;
OP-ANA-FAST simple ;
OP-GEN-HUB simple ;
OP-GRV-DID-GONG ;
OP-SPC-HUB simple ;
OP-HAL-HUB simple ;
OP-AUTOPRO ;
OP-MIX-OUT ;
OP-SIGNAL ;
OP-DIAG-REC non bloquant ;
OP-MIN-DID-PC.
```

### 13.2. Fonctions minimales

```text
didgeridoo direct recuperable ;
safe mix ;
mode DID ;
mode GRV ;
generation simple sous GEN-PACKET ;
espace simple non vital ;
halo simple ;
retour / sortie ;
P0/P1/P5 ;
signalisation critique ;
diagnostic non bloquant.
```

Interdits :

```text
dependance au gong physique ;
dependance a la voix ;
dependance a la convolution ;
dependance a la mesure de salle ;
dependance a un sub puissant ;
dependance a une UI complexe ;
lecture comme mode degrade.
```

---

## 14. Releases et sorties

### 14.1. Releases obligatoires

```text
REL-PERM
permission longue relachee, expiree ou remplacee.

REL-SCENE
scene active transferee, terminee ou devenue LAYER/GESTE/ETAT/TRACE.

REL-GEN
generation sortie, trace, retrait ou transfert.

REL-SPC
monde spatial sorti, contracte, transfere ou retourne commun/proche.

REL-HAL
halo relache, coupe, force termine, lock termine ou safe force relachee.

REL-AUTOPRO
risque disparu, limitation retiree, P2 reprend.

REL-GRAVE
owner grave transfere, grave retire, graves libres termines.

REL-DIAG
diagnostic expire, archive ou purge.
```

### 14.2. Regle

```text
une fonction forte sans release est bloquee, limitee ou traitee comme etat
explicitement decide.
```

---

## 15. Scenarios operationnels de controle

### 15.1. Didgeridoo libre protege

```text
Source didgeridoo -> OP-AUDIO-IO -> OP-DIRECT-SAFE -> OP-MIX-OUT.
CMD-DID-MODE libre protege -> OP-LIVE-COMMAND -> OP-DEC-CORE.
ANA rapide peut informer presence/grave.
P0/P1 peuvent proteger.
DIAG/VIEW ne conditionne pas.
```

### 15.2. Techno suspendue longue

```text
CMD-CORE-DOM SCN-3 + CMD-CORE-FORM maintien prolonge.
OP-SCENE-FORM ecrit STATE-DOM/STATE-FORM.
OP-SPC-HUB et OP-HAL-HUB peuvent maintenir espace/halo long.
OP-GEN-HUB peut maintenir trace ou pression latente si GEN-PACKET valide.
Retour automatique interdit.
Release exige sortie, retour prepare ou maintien decide.
```

### 15.3. Retour grave

```text
CMD-GESTE-RET-GRV -> OP-LIVE-COMMAND -> OP-DEC-CORE.
OP-GRV-DID-GONG verifie owner grave.
OP-DEC-FAST limite si P0/P1.
OP-MIX-OUT applique sortie.
OP-SIGNAL signale retour prepare, grave limite ou sub protege.
```

### 15.4. Halo Lock

```text
CMD-HAL-MODE Lock -> OP-LIVE-COMMAND -> OP-DEC-CORE -> OP-HAL-HUB.
HAL-PACKET actif.
P0/P1 seuls peuvent limiter hors choix live ou sortie decidee.
REL-HAL obligatoire.
```

### 15.5. Generation acid naturalisee

```text
CMD-GEN-PERM + GEN-PACKET GEN-ACID-NAT.
OP-DEC-CORE verifie contexte, role, reconnaissance, sortie.
OP-GEN-HUB produit ligne/mutation naturalisee.
OP-GRV-DID-GONG verifie si basse-motif ou conflit didgeridoo.
OP-SIGNAL si reconnaissance trop forte, motif bloque ou grave limite.
```

---

## 16. Interdits operationnels

```text
implementation directe depuis cette fiche ;
objet Max definitif ;
UI deduite des CORE ou CMD ;
PAGE-SCN comme preset ;
GEN sans GEN-PACKET ;
GEN-START sur REQUEST seul ;
LAT comme autorite de cut/limite ;
P5 comme compositeur ;
DIAG/VIEW comme condition audio ;
SPC comme preset reverb ;
HAL comme effet gratuit ;
GEN-HAL qui decide HAL ;
grave libre par defaut ;
didgeridoo ignore ou baisse en cachette ;
MIN-DID-PC comme mode degrade ;
transgression permanente par defaut ;
sons electroniques reconnaissables par defaut ;
tests pratiques comme methode de conception actuelle.
```

---

## 17. Questions ouvertes

```text
Q-OP-1
Quelle granularite finale entre OP-* et futurs patchers Max ?
Hors perimetre avant audit de cette specification.

Q-OP-2
Quels etats doivent etre visibles directement au performer ?
Hors perimetre UI, mais a preparer apres audit.

Q-OP-3
Quel regroupement minimal des commandes rendra le systeme jouable ?
Hors perimetre controleur, mais a traiter avant UI.

Q-OP-4
Comment traduire OP-* en patchers, abstractions, dictionaries ou messages Max ?
Hors perimetre avant audit.

Q-OP-5
Faut-il une fiche specifique "transactions / release / rollback" ?
Probable si l'audit juge les releases encore trop implicites.
```

---

## 18. Decision pour la suite

Decision :

```text
cette specification pose l'architecture operationnelle abstraite Max standalone.
elle est assez structuree pour etre auditee, mais pas pour implementation.
```

Prochaine fiche logique :

```text
AUDIT_COMPATIBILITE_SPECIFICATION_ARCHITECTURE_OPERATIONNELLE_ABSTRAITE_MAX_STANDALONE_AVEC_CORPUS_v0_1.md
```
