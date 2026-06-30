# SPECIFICATION PRE-AUDIT CANDIDATS COMMANDES LIVE SCHEDULER SIGNALISATION VESPERARE v0.1

Projet : Vesperare
Date : 2026-06-24
Statut : pre-audit candidat B, non-implementation

Sources internes principales :

- `AUDIT_CANDIDATS_ROUTAGE_DIRECT_SAFE_TRANSITIONS_MAX_STANDALONE_VESPERARE_v0_1.md`
- `MATRICE_COMMANDES_PACKETS_ETATS_SIGNAUX_PERFORMANCE_MAX_STANDALONE_VESPERARE_v0_1.md`
- `SPECIFICATION_LATENCE_SCHEDULER_VECTORS_AUDIO_SETTINGS_MAX_STANDALONE_VESPERARE_v0_1.md`
- `MATRICE_EXCLUSIONS_CANDIDATS_PAR_CRITICITE_ET_LATENCE_MAX_STANDALONE_VESPERARE_v0_1.md`
- `SPECIFICATION_TRANSACTIONS_RELEASE_ROLLBACK_COMMANDES_ETATS_MAX_STANDALONE_VESPERARE_v0_1.md`
- `REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`

Sources externes consultees comme garde-fous techniques :

- Documentation Cycling '74 : `route`, `select`, `trigger`, `message`
- Documentation Cycling '74 : Scheduler and Priority
- Documentation Cycling '74 : Sample Accurate Messages
- Documentation Cycling '74 : `pattr`, `pattrstorage`

But :

```text
preparer l'audit candidat B :
commandes live ;
route/select/trigger/messages ;
Overdrive ;
Scheduler in Audio Interrupt ;
SIG ;
pattr hors critique ;
sans UI finale, sans mapping final, sans patch final.
```

Hors perimetre :

```text
interface finale ;
controleur physique ;
mapping MIDI/OSC/HID final ;
syntaxe definitive des messages Max ;
objet final ;
patch final ;
seuils finaux ;
benchmark ;
implementation ;
tests comme methode de conception.
```

---

## 1. Decision de cadrage

Decision :

```text
le groupe B est la couche commande / reponse / signalisation.
il ne choisit pas l'interface.
il ne choisit pas le mapping.
il ne choisit pas la syntaxe definitive.
il doit permettre d'auditer les candidats qui feront circuler les intentions
jouables entre performer, scene, modules, protections, etats et signaux.
```

Raison :

```text
dans le corpus Vesperare, une commande n'est pas un bouton.
une commande est un contrat jouable :
origine ;
autorite ;
cible ;
etat attendu ;
preconditions ;
packets transportes ;
reponse audible ou fonctionnelle ;
release ;
rollback ;
signal si la reponse modifie la jouabilite.
```

Consequence :

```text
route/select/trigger/messages sont des candidats de structuration de commandes,
pas encore une architecture de patch.
Overdrive et Scheduler in Audio Interrupt sont des candidats de timing,
pas une garantie artistique ni une autorisation de complexite.
SIG est une couche d'information de performance,
pas une UI finale.
pattr est une memoire d'etat/preset possible,
pas une source unique de geste live.
```

---

## 2. Questions actives absorbees par ce pre-audit

### 2.1. Q-B-1 - commandes live sans UI finale

Resolution pre-audit :

```text
les commandes live doivent etre auditees comme contrats OP-LIVE-COMMAND.
elles peuvent venir plus tard d'un bouton, controleur, clavier, footswitch,
MIDI, OSC, HID, scene ou automation,
mais le groupe B ne choisit pas cette source finale.
```

Regle :

```text
aucun candidat B ne doit etre valide s'il suppose :
un clic souris ;
un objet UI visible ;
un controleur precis ;
un mapping fixe ;
un layout de performance.
```

### 2.2. Q-B-2 - scheduler / overdrive comme candidats non garants

Resolution pre-audit :

```text
Overdrive et Scheduler in Audio Interrupt peuvent ameliorer la precision des
evenements hauts prioritaires et leur relation a l'audio,
mais ne doivent jamais etre decrits comme une garantie absolue.
```

Regle :

```text
P0 direct/safe ne depend pas d'un scheduler complexe.
P1 protection critique ne depend pas d'un calcul couteux dans le scheduler.
P2 geste live peut beneficier de ces reglages s'il garde fallback et SIG.
```

### 2.3. Q-B-3 - SIG comme signalisation, pas interface

Resolution pre-audit :

```text
SIG nomme ce qui doit etre perceptible pour le performer :
etat direct/safe ;
protection ;
limitation ;
conflit accepte ;
retour possible ;
cause de rollback ;
etat generation/reverb/espace si impact live.
```

Regle :

```text
SIG ne decide pas l'objet visuel.
SIG ne decide pas la couleur.
SIG ne decide pas le layout.
SIG indique seulement la necessite, le niveau et la fonction du signal.
```

### 2.4. Q-B-4 - pattr hors chemin critique

Resolution pre-audit :

```text
pattr peut etre audite comme candidat de memoire, alias de donnee,
etat rappelle, preset ou interpolation hors audio critique.
pattrstorage peut etre mentionne seulement comme famille de preset/memoire.
```

Regle :

```text
pattr/pattrstorage ne sont pas sources uniques d'un geste live critique.
ils ne sont pas conditions de P0.
ils ne sont pas conditions de P1.
ils ne sont pas conditions du chemin audio direct.
ils peuvent preparer, rappeler ou exposer des etats non critiques,
si la commande jouable garde une autorite explicite.
```

---

## 3. Candidats a auditer dans le groupe B

| Candidat | Fonction pre-audit | Perimetre probable | Risque principal |
|---|---|---|---|
| `route` | separer familles de commandes | CRIT-2/3/4, CRIT-1 conditionnel | routage message opaque |
| `select` | detecter etats discrets | CRIT-2/3/4, CRIT-1 conditionnel | bang sans contexte |
| `trigger` / `t` | rendre l'ordre explicite | CRIT-2/3/4, CRIT-1 conditionnel | ordre cache ou fragile |
| `message` | formater/emettre messages | CRIT-2/3/4, CRIT-1 conditionnel | syntaxe finale prematuree |
| Messages a Max / `adstatus` | reglages host/audio candidates | DIAG/SETUP, P2/P1 avec prudence | controle runtime confondu avec geste musical |
| Overdrive | priorite scheduler candidate | profil performance | fausse garantie |
| Scheduler in Audio Interrupt | couplage scheduler/audio candidat | P2 precis, event-to-audio | surcharge audio, clumping, drop vectors |
| `pattr` | memoire/alias d'etat | hors critique | etat magique/cache |
| `pattrstorage` | presets/recall/interpolation | hors critique ou futur groupe etats | rappel lourd ou non jouable |
| SIG | signalisation performance | tous niveaux si impact | UI prematuree ou bruit cognitif |

---

## 4. Contraintes de criticite

### 4.1. CRIT-0

Autorise :

```text
chemin audio direct deja assure par groupe A ;
signal minimal si le direct est modifie ou indisponible ;
eventuelle commande d'urgence si elle ne depend pas d'un reseau message lourd.
```

Interdit :

```text
route/select/trigger comme condition obligatoire du direct ;
message Max comme condition obligatoire du direct ;
pattr/pattrstorage comme condition obligatoire du direct ;
UI comme condition du direct ;
diagnostic comme condition du direct.
```

### 4.2. CRIT-1

Autorise :

```text
commandes simples de safe ;
signalisation de protection ;
release/rollback explicite ;
ordre d'evenements simple si fallback local.
```

Condition :

```text
si route/select/trigger/message intervient en CRIT-1,
son echec doit conduire a un etat safe connu.
```

Interdit :

```text
calcul scheduler couteux ;
etat pattr obligatoire ;
recall preset obligatoire ;
message UI bas-priorite comme seule cause de protection.
```

### 4.3. CRIT-2

Autorise :

```text
commandes live principales ;
P2 explicite ;
transgression decidee ;
changement de scene ;
modes didgeridoo/grave/generation/espace ;
activation ou retrait de fonctions ;
signalisation jouable.
```

Condition :

```text
une commande P2 doit declarer :
autorite ;
cible ;
reponse ;
etat attendu ;
fallback ;
si retard/ignore : signal.
```

### 4.4. CRIT-3 / CRIT-4 / DIAG

Autorise :

```text
diagnostic ;
memoire ;
vues ;
preparation ;
rappel ;
suivi ;
statistiques ;
confort de patch.
```

Interdit :

```text
prendre autorite sur P0/P1/P2 sans contrat.
masquer un etat qui affecte le son.
```

---

## 5. Autorites et priorites a conserver

Regle normative deja active :

```text
P0 > P1 > P2 > P3 > P4 > P5 > DIAG
```

Application au groupe B :

```text
P2 live explicite bat scene/generation/Auto-Pro ordinaires.
P0 et P1 peuvent limiter P2, mais doivent signaler pourquoi.
DIAG ne commande jamais l'audio.
pattr ne bat jamais une commande live explicite.
un scheduler ne cree pas d'autorite : il ne fait que transporter ou temporiser.
```

Cas transgression :

```text
une transgression P2 peut demander masse, saturation, rugissement, nudite,
dissonance, microtonalite, espace immense ou perte longue du corps.
P0/P1 peuvent limiter si risque technique ou protection.
si limitee, la limitation doit etre signalable.
si acceptee, le risque doit etre explicite dans l'etat.
```

---

## 6. Commandes live minimales a preserver

Ces commandes ne sont pas une UI. Elles definissent seulement les familles qui
devront rester jouables dans le systeme minimum didgeridoo + PC.

### 6.1. DID

Familles :

```text
DID-LIBRE ;
DID-SYSTEME-SUIT ;
DID-SADAPTE-AU-SYSTEME ;
DID-HARMONIC-GUIDE ;
DID-HARMONIC-ADAPT ;
DID-PROTECTION-SEULE ;
DID-TRANSFORMATION-MUSICALE.
```

Contraintes :

```text
ne pas forcer le didgeridoo a etre centre ;
ne pas forcer le didgeridoo a etre integre ;
permettre son role variable ;
signaler seulement si la jouabilite ou le mix changent.
```

### 6.2. GRV / SUB / GONG

Familles :

```text
GRV-DID-GUIDE ;
GRV-SOUTIEN-DISCRET ;
GRV-HARMONIC-ADAPT ;
GRV-RETIRE-CONFLIT ;
GRV-LIBRE ;
GONG-BASE-MICROTONALE ;
GONG-SOUFFLE-SUB ;
GONG-QUEUE-RICHE.
```

Contraintes :

```text
le vrai grave peut changer de porteur en live.
la commande ne doit pas supposer une basse fixe.
les conflits doivent pouvoir etre acceptes, adaptes ou retires.
```

### 6.3. GEN

Familles :

```text
GEN-RHY ;
GEN-MOTIF ;
GEN-MEL ;
GEN-ACID-NAT ;
GEN-INTERLOCK ;
GEN-TIMBRE ;
GEN-HALO ;
GEN-VOICE-FRAG ;
GEN-SUSPEND.
```

Contraintes :

```text
les motifs peuvent etre presents, absents, superposes ou transitoires.
la melodie reconnaissable est autorisee si elle reste dans la logique Vesperare.
pas de pitch correction / auto-tune reconnaissable.
pas de lead synth banal non naturalise.
```

### 6.4. SPC / HAL / REV

Familles :

```text
HAL-AUTO ;
HAL-LOCK ;
HAL-FORCE ;
HAL-CUT ;
HAL-MOMENTARY ;
SPC-PROCHE ;
SPC-IMMERSIF ;
SPC-REACTIF ;
REV-NATURALISE ;
REV-ROOM-INFO ;
FRZ-MOMENT ;
FRZ-LONG.
```

Contraintes :

```text
un halo peut rester tres longtemps si decide.
un espace peut reagir sans devenir decoratif impose.
un bypass live doit pouvoir empecher une automation de retirer un halo decide.
```

### 6.5. RTRN / SORTIE

Familles :

```text
RETURN-BODY ;
RETURN-RHYTHM ;
RETURN-GRAVE ;
RETURN-DRY ;
RETURN-PULSE ;
EXIT-SAFE ;
EXIT-TRACE ;
ROLLBACK-CAUSE.
```

Contraintes :

```text
la techno suspendue peut durer tres longtemps.
le retour corporel peut etre prepare, retarde ou re-installe.
le systeme doit garder des sorties sans imposer un retour automatique non voulu.
```

---

## 7. Risques specifiques du groupe B

### 7.1. Commande transformee en UI

Symptome :

```text
le document commence a parler de boutons, couleurs, surfaces,
touches, mapping, layout ou workflow ecran comme si c'etait deja fixe.
```

Correction :

```text
revenir a OP-LIVE-COMMAND :
qui demande quoi ;
avec quelle autorite ;
vers quelle cible ;
avec quelle reponse et quel signal.
```

### 7.2. Message Max confondu avec intention musicale

Symptome :

```text
la syntaxe du message devient plus importante que la fonction musicale.
```

Correction :

```text
le message doit transporter le contrat.
le contrat ne doit pas etre reduit au message.
```

### 7.3. Scheduler decrit comme solution magique

Symptome :

```text
une commande est consideree jouable uniquement parce que Overdrive/SIAI est actif.
```

Correction :

```text
Overdrive/SIAI sont des conditions de precision possibles.
le chemin reste concu avec criticite, fallback et signal.
```

### 7.4. `trigger` cache un ordre fragile

Symptome :

```text
un ordre d'evenements est correct seulement parce que le patch a ete cable dans
un certain ordre non documente.
```

Correction :

```text
l'ordre doit etre declare :
prepare ;
commit ;
signal ;
release ;
rollback.
```

### 7.5. `select` produit un bang sans contexte

Symptome :

```text
un etat discret declenche une action mais perd origine, autorite ou cible.
```

Correction :

```text
le bang doit rester rattache a un packet ou a une commande nommee.
```

### 7.6. `route` cree une architecture invisible

Symptome :

```text
une famille de messages se fragmente en sous-routes sans carte de responsabilite.
```

Correction :

```text
router seulement des familles declarees.
garder une sortie inconnue/fallback.
signaler ou neutraliser les commandes non reconnues.
```

### 7.7. `pattr` cree un etat magique

Symptome :

```text
un etat musical change car une memoire a ete rappelee,
mais la commande, l'autorite et la cause ne sont pas visibles.
```

Correction :

```text
pattr prepare ou expose un etat.
la commande live valide ce qui devient audible.
```

### 7.8. SIG devient bruit cognitif

Symptome :

```text
le performer recoit trop de signaux ou des signaux sans consequence.
```

Correction :

```text
SIG seulement si impact :
audible ;
jouable ;
risque ;
limitation ;
rollback ;
protection.
```

---

## 8. Forme minimale d'une commande a auditer

Forme conceptuelle :

```text
OP-LIVE-COMMAND
id :
origine :
autorite :
cible :
criticite :
LPER :
etat_avant :
etat_demande :
preconditions :
packets :
timing :
reponse_attendue :
fallback :
release :
rollback :
SIG :
diag :
```

Exemple abstrait non final :

```text
id : HAL-LOCK
origine : performer
autorite : P2
cible : HAL
criticite : CRIT-2
LPER : LPER-1/2 selon scene
etat_avant : HAL-AUTO
etat_demande : HAL-LOCK
preconditions : P0/P1 ok
packets : scene_id, source_scope, lock_scope
timing : geste live, non UI final
reponse_attendue : halo conserve malgre automations ordinaires
fallback : HAL-SAFE si protection
release : HAL-UNLOCK ou scene release
rollback : retour HAL-AUTO avec cause
SIG : lock actif / limite / refuse
diag : optionnel hors live
```

---

## 9. Questions non resolues mais non bloquantes

### Q-PREAUD-B-1 - audit unique ou sous-audits separes

Question :

```text
l'audit candidat B doit-il rester un audit unique avec sous-sections,
ou separer scheduler, commandes, SIG et pattr ?
```

Decision pre-audit :

```text
audit unique avec sous-sections.
raison : les interactions commande/timing/signalisation sont trop fortes pour
separer maintenant.
si un candidat devient lourd, il pourra recevoir une fiche dediee plus tard.
```

### Q-PREAUD-B-2 - pattrstorage maintenant ou plus tard

Question :

```text
pattrstorage appartient-il a ce groupe B ou a un futur groupe etats/presets ?
```

Decision pre-audit :

```text
le mentionner ici comme risque de commande/memoire,
mais reserver son audit detaille aux etats/presets si necessaire.
```

### Q-PREAUD-B-3 - mappings physiques

Question :

```text
faut-il inclure MIDI/OSC/HID/clavier/control surface dans l'audit B ?
```

Decision pre-audit :

```text
non.
les mappings physiques seront traites plus tard.
ici on audite la commande abstraite et ses candidats de transport interne.
```

---

## 10. Decision de sortie

Verdict pre-audit :

```text
pret pour audit compatibilite.
```

Autorise :

```text
AUDIT_COMPATIBILITE_SPECIFICATION_PRE_AUDIT_CANDIDATS_COMMANDES_LIVE_SCHEDULER_SIGNALISATION_AVEC_CORPUS_v0_1.md
```

Puis, si compatible :

```text
AUDIT_CANDIDATS_COMMANDES_LIVE_SCHEDULER_SIGNALISATION_MAX_STANDALONE_VESPERARE_v0_1.md
```

N'autorise pas :

```text
UI finale ;
mapping final ;
patch final ;
choix d'objets definitifs ;
benchmark ;
implementation.
```
