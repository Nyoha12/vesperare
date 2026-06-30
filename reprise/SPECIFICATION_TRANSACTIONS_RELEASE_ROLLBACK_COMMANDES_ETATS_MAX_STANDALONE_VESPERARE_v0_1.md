# SPECIFICATION TRANSACTIONS / RELEASE / ROLLBACK COMMANDES ET ETATS MAX STANDALONE VESPERARE v0.1

Projet : Vesperare
Date : 2026-06-23
Statut : specification fonctionnelle operationnelle, avant traduction Max concrete

Sources actives principales :

- `AUDIT_COMPATIBILITE_SPECIFICATION_ARCHITECTURE_OPERATIONNELLE_ABSTRAITE_MAX_STANDALONE_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_OPERATIONNELLE_ABSTRAITE_MAX_STANDALONE_VESPERARE_v0_1.md`
- `MATRICE_COMMANDES_PACKETS_ETATS_SIGNAUX_PERFORMANCE_MAX_STANDALONE_VESPERARE_v0_1.md`
- `REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`
- `MATRICE_PREUVE_VERIFICATION_DETTES_AVANT_REPRISE_VESPERARE_v0_1.md`
- `DECISION_RUNTIME_MAX_STANDALONE_LATENCE_SANS_COMPROMIS_VESPERARE_v0_1.md`

But :

```text
specifier comment une commande, une permission, un etat ou une reaction passe
de demande a decision, puis a etat actif, limitation, blocage, release,
rollback, expiration, trace ou reprise, sans definir objets Max, UI, routage
final, seuils ou implementation.
```

Hors perimetre :

```text
objets Max definitifs ;
patchers Max definitifs ;
syntaxe Max ;
send/receive ;
dictionaries finaux ;
UI ;
controleur ;
mapping physique ;
routage audio final ;
seuils numeriques ;
buffers ;
driver ;
tests pratiques ;
benchmark ;
implementation.
```

---

## 1. Decision centrale

Decision :

```text
une transaction Vesperare est le cycle de vie controle d'une intention jouable,
d'une protection, d'une permission, d'une generation, d'un etat spatial,
d'un halo, d'un grave ou d'une sortie.
```

Elle n'est pas :

```text
un message Max final ;
un bouton ;
un preset ;
un routage ;
un patcher ;
un automatisme esthetique ;
une preuve que l'action sera techniquement implementee telle quelle.
```

Regle :

```text
aucune action audible forte ne doit exister sans autorite, contexte, owner,
sortie et signalisation si elle modifie la jouabilite.
```

---

## 2. Corrections OP maintenues

Cette fiche applique explicitement :

```text
CORR-OP-1
OP-* = centres de responsabilite, pas patchers Max.

CORR-OP-2
PATH-* = familles de flux, pas routages finaux.

CORR-OP-3
OP-LIVE-COMMAND = couche de commandes, pas UI.

CORR-OP-4
OP-STATE-HUB = synthese de lecture, pas mega-etat.

CORR-OP-5
OP-ANA-FAST informe ; OP-DEC-FAST decide.

CORR-OP-6
Transactions, releases et rollback doivent etre specifies avant traduction Max
plus concrete.

CORR-OP-7
GEN-HAL reste matiere generative rattachee a GEN/HAL tant que son owner autonome
n'est pas justifie.

CORR-OP-8
MIN-DID-PC est ensemble de responsabilites minimales, pas accumulation de
modules.

CORR-OP-9
Signalisation = information de jouabilite, pas UI finale.

CORR-OP-10
Toute limitation P2 ou action P0/P1 sensible doit rester signalable.
```

---

## 3. Vocabulaire transactionnel

```text
TXN
Transaction complete : demande, precheck, decision, reponse, etat, signal,
release, rollback ou trace.

REQ
Demande brute : geste, scene, protection, proposition, evenement ou choix live.

PRECHECK
Verification conceptuelle avant decision : contexte, owner, autorite, packets,
chemin, conflit, sortie, MIN-DID-PC.

DECISION
Arbitrage par P0/P1/P2/P3/P4/P5/DIAG.

PERMISSION
Droit d'agir donne par choix live, scene, protection ou contexte.

ACK
Commande acceptee.

LIMIT
Commande acceptee mais limitee.

BLOCK
Commande refusee.

COMMIT
Ecriture d'un etat actif ou semi-actif par son owner.

STATE
Etat persistant, semi-persistant ou transitoire.

SIG
Signal de jouabilite : visible, audible, tactile plus tard, ou diagnostique.

REL
Release : sortie normale, fin de fonction, transfert, trace ou retour stable.

ROLLBACK
Retour controle a un etat precedent, stable, direct, safe ou trace.

EXP
Expiration : permission, lock, proposition ou etat arrive a terme.

TRACE
Reste perceptif ou documentaire d'une fonction qui n'est plus active.

RESUME
Reprise d'une fonction limitee, bloquee ou suspendue.
```

---

## 4. Cycle generique d'une transaction

### 4.1. Sequence abstraite

```text
REQ
-> OP-LIVE-COMMAND ou source autorisee
-> normalisation de l'intention
-> PRECHECK
-> classification autorite
-> validation packets
-> verification owner / conflit / sortie
-> DECISION
-> ACK / LIMIT / BLOCK
-> COMMIT si accepte
-> SIG si la jouabilite change
-> maintien / monitoring
-> REL / ROLLBACK / EXP / TRACE / RESUME
```

### 4.2. Regle de non-implementation

Cette sequence ne dit pas :

```text
quel objet Max traite la commande ;
quel message transporte l'information ;
quel delai exact est acceptable ;
quel affichage sera utilise ;
quel routage audio est cree.
```

Elle dit seulement :

```text
quelles garanties musicales et operationnelles doivent exister.
```

---

## 5. Precheck obligatoire

Toute transaction audible ou structurelle doit verifier :

```text
PRE-1 : intention
Que demande-t-on exactement ?

PRE-2 : source de demande
Choix live, scene, protection, generation, analyse, diagnostic ou evenement ?

PRE-3 : autorite
P0, P1, P2, P3, P4, P5 ou DIAG ?

PRE-4 : contexte musical
Scene dominante, couche, geste, etat, suspension, transgression, minimum ?

PRE-5 : owner
Quel centre possede l'etat a modifier ?

PRE-6 : packets obligatoires
GEN-PACKET, PERM-PACKET, DEC-PACKET, GRAVE-PACKET, HAL-PACKET, SPC-PACKET,
SIG-PACKET ou autre packet requis.

PRE-7 : chemin
PATH-DIRECT, PATH-SAFE, PATH-PLAY-FAST, PATH-GRV-CRITICAL, PATH-GEN-MUS,
PATH-SPC-HAL-SLOW, PATH-ANA-FAST, PATH-ANA-SLOW, PATH-DIAG-VIEW.

PRE-8 : conflit
Grave, didgeridoo, gong, halo, espace, generation, scene, P0/P1/P2.

PRE-9 : sortie
Release, rollback, trace, expiration ou maintien decide.

PRE-10 : MIN-DID-PC
La transaction degrade-t-elle le setup minimum ou l'alourdit-elle ?
```

Si `PRE-9` manque :

```text
BLOCK-SORTIE
```

ou :

```text
LIMIT-TRACE
```

si la fonction peut rester comme trace non dangereuse.

---

## 6. Classes de transactions

### TXN-P0 - Protection critique

Autorite :

```text
P0
```

Fonction :

```text
proteger immediatement contre clipping critique, feedback dangereux, resonance
dangereuse, headroom critique, sub destructeur ou situation physiquement
risquee.
```

Regles :

```text
agit meme contre P2 ;
doit etre signalee si elle modifie la jouabilite ;
doit relacher des que le danger disparait ;
ne doit pas devenir choix esthetique ;
rollback cible : direct safe, safe mix, retrait critique, etat stable.
```

### TXN-P1 - Lisibilite vitale

Autorite :

```text
P1
```

Fonction :

```text
eviter perte de forme, grave illisible, attaque principale masquee, boue
grave/reverb, source essentielle masquee ou retour corporel rendu impossible
hors choix explicite.
```

Regles :

```text
peut limiter P2 mais doit le signaler ;
ne peut pas devenir correction artistique cachee ;
release obligatoire quand la lisibilite revient ;
rollback cible : limitation douce, trace, retour a l'etat choisi.
```

### TXN-P2 - Choix live explicite

Autorite :

```text
P2
```

Fonction :

```text
porter les choix directs du musicien : mode DID, grave, generation, halo,
retour, transgression, scene, safe/direct, maintien ou refus.
```

Regles :

```text
gagne contre P3/P4/P5 ordinaires ;
peut etre limite par P0/P1 seulement ;
toute limitation doit etre signalable ;
release ou sortie doit etre prevue ;
ne doit pas etre transforme en UI finale.
```

### TXN-P3 - Scene / preparation

Autorite :

```text
P3
```

Fonction :

```text
preparer un contexte : scene dominante, couches, permissions, defaults,
mondes, fonctions fortes, limites et sorties.
```

Regles :

```text
ne doit pas forcer P2 ;
ne doit pas devenir preset rigide ;
doit pouvoir etre transferee en LAYER, GESTE, ETAT, TRACE ou REL-SCENE.
```

### TXN-P4 - Proposition / generation

Autorite :

```text
P4
```

Fonction :

```text
proposer une generation, variation, motif, trace, retour ou mutation sans
l'imposer.
```

Regles :

```text
REQUEST ne demarre jamais seul ;
GEN-START exige permission, contexte, GEN-PACKET et sortie ;
P2 peut refuser, limiter, transformer ou reprendre ;
autonomie doit rester bornee.
```

### TXN-P5 - Auto-Pro doux

Autorite :

```text
P5
```

Fonction :

```text
coherence douce, maintien, prevention, nettoyage non esthetique, adaptation
legere.
```

Regles :

```text
ne compose jamais ;
ne retire pas un choix live fort ;
ne decide pas une direction musicale ;
doit relacher si P2 reprend ou si la fonction n'est plus necessaire.
```

### TXN-DIAG - Diagnostic / trace

Autorite :

```text
DIAG
```

Fonction :

```text
observer, historiser, annoter, signaler hors audio ou preparer une analyse
future.
```

Regles :

```text
ne conditionne jamais PLAN-AUDIO ;
ne bloque jamais PATH-DIRECT ;
peut nourrir INFO ou SIG non critique ;
expire ou s'archive sans effet musical automatique.
```

---

## 7. Reponses transactionnelles

```text
ACK
Demande acceptee sans limitation critique.

ACK-SAFE
Demande acceptee avec garantie direct/safe.

LIMIT-P0
Limitation critique.

LIMIT-P1
Limitation de lisibilite vitale.

LIMIT-P5
Correction douce non esthetique.

BLOCK-PERM
Permission absente.

BLOCK-PACKET
Packet obligatoire invalide ou absent.

BLOCK-OWNER
Owner incorrect ou conflit d'ecriture.

BLOCK-SORTIE
Aucune sortie/release/rollback.

BLOCK-PA-X
Risque de signature electronique reconnaissable non decidee.

BLOCK-AUTONOMIE
Generation ou motif devenu trop autonome.

REL-STABLE
Retour a etat stable.

REL-TRACE
Fonction reduite en trace.

REL-TRANSFER
Transfert DOM/LAYER/GESTE/ETAT/TRACE.

ROLLBACK-SAFE
Retour vers direct/safe.

ROLLBACK-STATE
Retour vers etat precedent valide.

EXP
Expiration d'une permission, lock, proposition ou trace.
```

---

## 8. Owners d'etats

Regle :

```text
un etat ne peut etre ecrit que par son owner ou par une decision P0/P1 declaree.
OP-STATE-HUB coordonne et lit ; il ne devient pas mega-etat magique.
```

Owners principaux :

```text
STATE-SCENE
Owner : OP-SCENE-FORM.

STATE-DID
Owner : OP-GRV-DID-GONG avec information OP-AUDIO-IO.

STATE-GRAVE
Owner : OP-GRV-DID-GONG.

STATE-GEN
Owner : OP-GEN-HUB.

STATE-SPC
Owner : OP-SPC-HUB.

STATE-HAL
Owner : OP-HAL-HUB.

STATE-GEN-HAL
Owner : OP-GEN-HUB pour la matiere, OP-HAL-HUB pour la fonction halo.

STATE-AUTOPRO
Owner : OP-AUTOPRO.

STATE-SIGNAL
Owner : OP-SIGNAL.

STATE-DIAG
Owner : OP-DIAG-REC.

STATE-LAT
Owner : OP-DIAG-REC / OP-SIGNAL selon lisibilite, sans autorite audio.
```

---

## 9. Releases obligatoires

### 9.1. Release scene

```text
REL-SCENE-STABLE
Scene terminee vers etat stable.

REL-SCENE-LAYER
Scene dominante devient couche.

REL-SCENE-GESTE
Scene devient geste ponctuel.

REL-SCENE-TRACE
Scene laisse une trace.
```

### 9.2. Release generation

```text
REL-GEN-OFF
Generation arretee.

REL-GEN-TRACE
Generation reduite a trace.

REL-GEN-ROLE-SHIFT
Role musical change avec permission.

REL-GEN-RET
Generation transferee vers retour.

REL-GEN-BLOCK
Generation bloquee pour autonomie, PA-X, conflit ou absence de sortie.
```

### 9.3. Release espace / halo / freeze

```text
REL-SPC-COMMON
Retour vers espace commun.

REL-SPC-PROX
Contraction vers proximite.

REL-SPC-TRACE
Monde spatial devient trace.

REL-HAL-UNLOCK
Fin de Halo Lock.

REL-HAL-CUT-END
Fin de coupure halo.

REL-HAL-FORCE-END
Fin de Force ou Safe Force.

REL-FRZ-THAW
Freeze relache.

REL-FRZ-TRACE
Freeze devient trace, resonance ou queue naturalisee.
```

Regle QV-4 :

```text
un HAL lock doit porter un scope :
global, scene, source, fonction ou monde spatial.
par defaut, preferer scene/fonction/source.
global exige choix live explicite ou scene forte.
```

### 9.4. Release grave / didgeridoo / gong

```text
REL-GRV-OWNER
Owner grave transfere.

REL-GRV-SUPPORT
Grave revient en soutien discret.

REL-GRV-RETRAIT
Grave genere se retire.

REL-GRV-LIBRE-END
Fin du mode graves libres.

REL-GRV-BLOOM-TRACE
Gong/bloom reste comme trace.

REL-DID-LIBRE
Didgeridoo revient libre protege.

REL-DID-INTEGRATION-END
Fin de traitement integrateur.
```

### 9.5. Release transgression

```text
REL-TRANS-PEAK
Fin de peak.

REL-TRANS-PLATEAU
Transgression maintenue explicitement.

REL-TRANS-RET
Retour prepare.

REL-TRANS-SAFE
Retour direct/safe si P0/P1.

REL-TRANS-TRACE
Transgression devient trace, rugosite ou queue.
```

Signaux requis pendant transgression :

```text
risque accepte ;
P1 limite si present ;
source protegee si une source est preservee ;
sortie disponible ;
retour possible ou refuse explicitement.
```

### 9.6. Release protections / Auto-Pro

```text
REL-P0-SAFE
Danger critique disparu ; retour vers safe, direct ou etat precedent valide.

REL-P1-LISIBILITE
Lisibilite vitale revenue ; limitation levee ou reduite.

REL-P5-COHERENCE
Correction douce terminee ; retour au choix live, scene ou etat precedent.

REL-AUTOPRO-TRACE
Auto-Pro laisse une trace diagnostique ou signal faible, sans autorite audio.
```

Regles :

```text
P0/P1 doivent relacher des que leur cause disparait.
P5 ne doit jamais prolonger une correction douce comme direction musicale.
toute limitation P2 par P0/P1 reste signalable jusqu'a release.
```

---

## 10. Rollback

### 10.1. Definition

```text
rollback ne signifie pas annuler musicalement ce qui a ete entendu.
rollback signifie ramener le systeme vers un etat operationnel coherent,
jouable, signale et non dangereux.
```

### 10.2. Causes de rollback

```text
P0 actif ;
P1 actif et forme illisible ;
owner incorrect ;
packet invalide ;
permission retiree ;
sortie manquante ;
GEN devenu autonome ;
GEN-HAL traite comme owner autonome ;
HAL Lock impossible a maintenir ;
SPC monde perdu sans fonction ;
grave conflit deletere ;
didgeridoo masque en cachette ;
MIN-DID-PC surcharge ;
scene devenue preset rigide ;
transgression sans sortie ;
diagnostic qui conditionne l'audio.
```

### 10.3. Cibles de rollback

```text
ROLLBACK-DIRECT
Retour presence directe.

ROLLBACK-SAFE
Retour safe mix.

ROLLBACK-STATE-PREV
Retour etat precedent valide.

ROLLBACK-TRACE
Reduction en trace.

ROLLBACK-OFF
Extinction propre.

ROLLBACK-OWNER
Retour vers owner musical principal.

ROLLBACK-MIN
Retour profil MIN-DID-PC complet.
```

### 10.4. Garde-fou P2

```text
un rollback ne doit pas effacer silencieusement un choix live.
si P2 est limite ou remplace par rollback, la cause doit etre P0, P1, sortie
manquante, owner invalide ou demande P2 explicite.
```

---

## 11. Expiration

Les etats suivants doivent pouvoir expirer :

```text
permission P3 non confirmee ;
proposition P4 non acceptee ;
lock HAL sans maintien decide ;
force HAL sans sortie ;
freeze sans thaw/trace ;
generation sans fonction actuelle ;
transgression sans maintien explicite ;
diagnostic devenu obsolete ;
analyse lente devenue trop ancienne ;
latence info devenue non pertinente ;
trace qui n'a plus de fonction.
```

Regle :

```text
expiration d'une fonction audible doit produire SIG si elle change la
jouabilite ou la perception de la scene.
expiration ne doit pas imposer un retour automatique si le retour a ete refuse
explicitement par P2.
```

---

## 12. Motifs et autonomie

Question QV-5 integree :

```text
un motif devient trop autonome quand il continue sans fonction, ignore
scene/source, attire l'ecoute comme lead banal, remplace le geste live, devient
hook non voulu, perd naturalisation ou devient signature electronique
reconnaissable.
```

Reactions :

```text
LIMIT-AUTONOMIE
reduire variation, densite, repetition ou presence.

REL-GEN-TRACE
ramener le motif en trace.

BLOCK-AUTONOMIE
bloquer la continuation.

SIG-GEN-AUTONOMIE
signaler si cela change la jouabilite.
```

Interdit :

```text
un motif ne doit pas etre corrige par pitch correction reconnaissable,
lead synth banal ou signature electronique standard.
```

---

## 13. GEN-HAL

Decision active :

```text
GEN-HAL est une matiere generative rattachee a GEN/HAL.
il ne devient pas owner autonome dans cette fiche.
```

Transaction autorisee :

```text
GEN produit matiere halo ;
HAL decide mode, lock, force, cut, release ;
SPC decide monde spatial si espace concerne ;
DEC/PERM arbitre ;
SIG signale si la jouabilite change.
```

Blocage :

```text
BLOCK-OWNER si GEN-HAL tente de decider HAL seul.
```

---

## 14. MIN-DID-PC

### 14.1. Principe

```text
MIN-DID-PC est un profil complet de responsabilites minimales regroupables.
ce n'est pas une accumulation de modules obligatoires.
```

Transactions P2 immediates a conserver conceptuellement :

```text
mode DID ;
mode grave ;
generation simple ;
halo simple ;
retour ;
transgression decidee ;
safe/direct ;
signalisation critique.
```

### 14.2. Regle de surcharge

Si une transaction exige :

```text
gong physique ;
voix ;
convolution ;
mesure de salle ;
sub puissant ;
UI complexe ;
diagnostic lourd ;
controleur specifique ;
```

alors elle doit devenir :

```text
OPTION ;
LATER ;
TRACE ;
ou BLOCK-MIN.
```

Elle ne doit pas redefinir le minimum.

---

## 15. Scenarios transactionnels

### 15.1. Mode didgeridoo libre protege

```text
REQ : CMD-DID-MODE libre protege.
PRECHECK : source didgeridoo disponible, direct/safe recuperable.
DECISION : P2 ou P3 selon scene.
ACK : STATE-DID = libre protege.
COMMIT : owner OP-GRV-DID-GONG.
SIG : seulement si un mode precedent est limite ou relache.
REL : REL-DID-LIBRE ou transfert vers integration.
ROLLBACK : direct/safe si P0/P1.
```

### 15.2. Grave libre

```text
REQ : CMD-GRV-MODE graves libres.
PRECHECK : conflit grave accepte, sortie prevue, P0/P1 surveilles.
DECISION : P2 explicite ou P3 scene forte.
ACK : STATE-GRAVE = libre.
LIMIT : si P1 lisibilite grave/source menacee.
SIG : limitation P2 obligatoire.
REL : REL-GRV-LIBRE-END ou REL-GRV-SUPPORT.
ROLLBACK : ROLLBACK-OWNER ou ROLLBACK-SAFE.
```

### 15.3. Generation simple en MIN-DID-PC

```text
REQ : CMD-CORE-GEN simple.
PRECHECK : GEN-PACKET simple, PERM-PACKET, sortie, non PA-X.
DECISION : P2/P3/P4.
ACK : generation active bornee.
LIMIT : autonomie, PA-X, conflit grave, masque didgeridoo.
SIG : si limite ou bloque.
REL : REL-GEN-TRACE ou REL-GEN-OFF.
ROLLBACK : trace ou off.
```

### 15.4. Halo Lock

```text
REQ : CMD-HAL-MODE Lock.
PRECHECK : scope HAL, source/fonction/scene, release, P0/P1.
DECISION : P2 ou P3.
ACK : STATE-HAL = Lock(scope).
LIMIT : P0/P1 seulement, ou sortie decidee.
SIG : si lock limite, coupe ou relache.
REL : REL-HAL-UNLOCK.
ROLLBACK : REL-HAL-CUT-END ou ROLLBACK-STATE-PREV.
```

### 15.5. Monde spatial long

```text
REQ : CMD-SPC-WORLD long.
PRECHECK : fonction forte, sortie, pas de confusion decor non decide.
DECISION : P2 ou P3.
ACK : STATE-SPC = monde long.
LIMIT : P1 si lisibilite vitale menacee.
SIG : si espace limite ou retire.
REL : REL-SPC-COMMON, REL-SPC-PROX ou REL-SPC-TRACE.
ROLLBACK : proximite ou commun.
```

### 15.6. Freeze

```text
REQ : CMD-HAL-FRZ ou fonction freeze.
PRECHECK : source freeze-able, fonction, duree non chiffree, thaw/trace.
DECISION : P2/P3.
ACK : freeze actif.
LIMIT : P0/P1, PA-X, effet plugin reconnaissable non decide.
SIG : si freeze limite, bloque ou thaw.
REL : REL-FRZ-THAW ou REL-FRZ-TRACE.
ROLLBACK : trace, thaw, off.
```

### 15.7. Transgression

```text
REQ : CMD-CORE-TRANS.
PRECHECK : risque accepte, source protegee, sortie, retour possible ou refus
explicite, P0/P1.
DECISION : P2 ou scene forte P3.
ACK : transgression active.
LIMIT : P0/P1.
SIG : risque accepte, P1, source protegee, sortie/retour.
REL : REL-TRANS-PEAK, REL-TRANS-PLATEAU, REL-TRANS-RET, REL-TRANS-TRACE.
ROLLBACK : safe ou retour prepare.
```

### 15.8. P0 critique

```text
REQ : evenement critique ou protection.
PRECHECK : minimal.
DECISION : OP-DEC-FAST.
ACK/LIMIT : immediate.
COMMIT : STATE-AUTOPRO/P0.
SIG : obligatoire si jouabilite change.
REL : REL-AUTOPRO des que danger disparu.
ROLLBACK : ROLLBACK-SAFE ou ROLLBACK-DIRECT.
```

---

## 16. Signalisation

Regle :

```text
signaler ce qui change la jouabilite, pas tout ce qui existe.
```

Signaux obligatoires :

```text
P0 actif ;
P1 limite P2 ;
P2 bloque ;
permission manquante ;
packet invalide ;
owner incorrect ;
generation bloquee ;
motif trop autonome ;
HAL Lock limite ou coupe ;
SPC monde retire ;
grave limite ;
didgeridoo protege ;
rollback ;
release critique ;
MIN-DID-PC fallback ;
transgression risque accepte / sortie / retour.
```

Hors perimetre :

```text
forme visuelle ;
couleur ;
ecran ;
controleur ;
signal sonore dedie ;
densite finale de UI.
```

---

## 17. Interdits

```text
transaction sans sortie ;
state sans owner ;
owner cache ;
P2 limite sans signal ;
P5 qui compose ;
DIAG qui conditionne l'audio ;
LAT qui autorise une degradation musicale automatique ;
GEN-REQUEST qui demarre seul ;
GEN-HAL owner autonome ;
HAL Lock retire hors P0/P1, sortie decidee ou choix live ;
SPC comme preset reverb ;
PAGE-SCN comme preset rigide ;
MIN-DID-PC comme mode degrade ;
rollback qui efface une decision artistique sans signal ;
release implicite non documentee ;
expiration audible non signalee ;
ancienne contrainte Max for Live reinjectee comme norme Max standalone.
```

---

## 18. Questions restantes

Questions non bloquantes avant audit :

```text
Q-TXN-1
Quel niveau de detail garder pour les scopes HAL : global, scene, source,
fonction, monde spatial ?

Q-TXN-2
Quels signaux de transaction devront etre visibles en permanence dans une
future UI ?

Q-TXN-3
Quelle granularite finale pour les etats persistants, semi-persistants et
transitoires ?

Q-TXN-4
Quels rollbacks doivent etre instantanes et lesquels peuvent etre progressifs ?

Q-TXN-5
Quels etats pourront etre historises sans alourdir MIN-DID-PC ?
```

Ces questions ne doivent pas bloquer l'audit de cette fiche.

---

## 19. Decision v0.1

Cette fiche specifie le cycle de vie operationnel des commandes et etats :

```text
REQ -> PRECHECK -> DECISION/PERMISSION -> ACK/LIMIT/BLOCK -> COMMIT ->
SIG -> REL/ROLLBACK/EXP/TRACE/RESUME.
```

Elle absorbe la dette active :

```text
DETTE-ACT-2 : transactions / releases / rollback.
```

Elle applique les garde-fous :

```text
DETTE-ACT-3 : corrections OP a maintenir.
```

Elle ne suffit pas pour :

```text
implementation ;
patch Max ;
objets Max definitifs ;
UI ;
controleur ;
routage final ;
seuils ;
tests pratiques.
```

Prochaine etape necessaire :

```text
AUDIT_COMPATIBILITE_SPECIFICATION_TRANSACTIONS_RELEASE_ROLLBACK_COMMANDES_ETATS_AVEC_CORPUS_v0_1.md
```

But :

```text
verifier que les transactions ne deviennent pas messages Max, que les releases
couvrent GEN/SPC/HAL/FRZ/GRV/DID/TRANS, que P2 reste explicite, que P0/P1 sont
signalables, que GEN-HAL n'est pas owner autonome, que MIN-DID-PC reste complet
sans accumulation, et que la suite ne glisse pas vers UI ou implementation.
```
