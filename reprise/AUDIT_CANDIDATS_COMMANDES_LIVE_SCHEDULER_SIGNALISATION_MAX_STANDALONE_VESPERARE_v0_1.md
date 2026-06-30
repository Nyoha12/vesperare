# AUDIT CANDIDATS COMMANDES LIVE SCHEDULER SIGNALISATION MAX STANDALONE VESPERARE v0.1

Projet : Vesperare
Date : 2026-06-24
Statut : audit candidat B, non-implementation

Sources internes principales :

- `AUDIT_COMPATIBILITE_SPECIFICATION_PRE_AUDIT_CANDIDATS_COMMANDES_LIVE_SCHEDULER_SIGNALISATION_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_PRE_AUDIT_CANDIDATS_COMMANDES_LIVE_SCHEDULER_SIGNALISATION_VESPERARE_v0_1.md`
- `AUDIT_CANDIDATS_ROUTAGE_DIRECT_SAFE_TRANSITIONS_MAX_STANDALONE_VESPERARE_v0_1.md`
- `MATRICE_COMMANDES_PACKETS_ETATS_SIGNAUX_PERFORMANCE_MAX_STANDALONE_VESPERARE_v0_1.md`
- `MATRICE_EXCLUSIONS_CANDIDATS_PAR_CRITICITE_ET_LATENCE_MAX_STANDALONE_VESPERARE_v0_1.md`
- `SPECIFICATION_LATENCE_SCHEDULER_VECTORS_AUDIO_SETTINGS_MAX_STANDALONE_VESPERARE_v0_1.md`
- `MATRICE_LATENCE_RESSENTIE_PAR_FONCTION_ET_CHEMIN_MAX_STANDALONE_VESPERARE_v0_1.md`
- `SPECIFICATION_TRANSACTIONS_RELEASE_ROLLBACK_COMMANDES_ETATS_MAX_STANDALONE_VESPERARE_v0_1.md`
- `NOMENCLATURE_ETATS_PACKETS_REPONSES_RELEASES_VESPERARE_v0_1.md`

Sources externes consultees comme garde-fous techniques :

- Cycling '74 Max Reference : `route`, `select`, `trigger`, `message`
- Cycling '74 Max User Guide : Scheduler and Priority
- Cycling '74 Max User Guide : Sample Accurate Messages
- Cycling '74 Max Reference : `pattr`, `pattrstorage`, `adstatus`

But :

```text
auditer les candidats du groupe B :
commandes live ;
routage de messages ;
ordre d'evenements ;
formatage de messages ;
scheduler ;
sample-accurate messages ;
memoire hors critique ;
signalisation ;
sans UI finale, sans mapping final, sans patch final.
```

Hors perimetre :

```text
interface finale ;
controleur physique ;
mapping MIDI/OSC/HID ;
layout performer ;
objets definitifs ;
syntaxe definitive ;
seuils finaux ;
tests ou benchmarks comme methode de conception ;
implementation.
```

---

## 1. Verdict general

Verdict :

```text
compatible avec statuts candidats conditionnels.
```

Decision :

```text
le groupe B peut etre conserve comme couche commande / timing / signalisation.
route/select/trigger/message sont des candidats utiles pour CRIT-2/3/4.
Overdrive et Scheduler in Audio Interrupt sont des reglages candidats utiles,
mais non suffisants et non garants.
pattr est candidat hors critique.
pattrstorage est reporte a un futur groupe etats/presets sauf besoin local.
SIG devient obligatoire quand une commande affecte jouabilite, protection,
transgression, limitation, rollback ou etat audible.
```

Decision negative :

```text
aucun candidat B ne doit conditionner le direct CRIT-0.
aucun candidat B ne doit masquer une protection CRIT-1.
aucun candidat B ne doit transformer une commande en UI finale.
aucun candidat B ne doit faire passer un diagnostic pour une autorite musicale.
```

---

## 2. Tableau des statuts

| Candidat | Statut | CRIT | LPER | Autorise pour | Exclu / condition | Risque principal |
|---|---|---|---|---|---|---|
| Contrat OP-LIVE-COMMAND | OBLIGATOIRE | CRIT-1/2/3/4 | LPER-0/1/2/3/5 | formaliser toute commande jouable | non UI, non syntaxe finale | commande vague |
| `route` | ACCEPTE CANDIDAT CONDITIONNEL | CRIT-2/3/4, CRIT-1 tres simple | LPER-1/2/3/5 | separer familles de commandes | jamais condition P0 ; fallback inconnu obligatoire | routage opaque |
| `select` | ACCEPTE CANDIDAT CONDITIONNEL | CRIT-2/3/4, CRIT-1 tres simple | LPER-1/2/3/5 | detecter etats discrets | garder contexte/packet | bang sans cause |
| `trigger` / `t` | ACCEPTE CANDIDAT CONDITIONNEL | CRIT-2/3/4, CRIT-1 tres simple | LPER-1/2/3/5 | ordre explicite prepare/commit/signal | pas d'ordre musical cache | fragilite d'ordre |
| `message` | ACCEPTE CANDIDAT CONDITIONNEL | CRIT-2/3/4, CRIT-1 simple | LPER-1/2/3/5 | formater messages candidats | syntaxe non finale | intention reduite a texte |
| Messages a Max / `adstatus` | CONDITIONNEL SETUP/DIAG | SETUP/DIAG, P1/P2 avec prudence | LPER-5 ou pre-scene | lire/regler etats audio candidats | pas geste musical critique | runtime confondu avec performance |
| Overdrive | CONFIG CANDIDATE | P2/GEN/TIMING | LPER-1/2 | ameliorer priorite evenements | pas garantie ; pas P0/P1 seul | fausse securite |
| Scheduler in Audio Interrupt | CONFIG CANDIDATE CONDITIONNELLE | P2/GEN/TIMING | LPER-1/2 | coupler scheduler/audio | scheduler leger ; vigilance drop vectors | audio thread surcharge |
| Sample-accurate messages | CAPACITE CANDIDATE | P2/GEN/TIMING | LPER-1/2 | message-to-audio precis si conditions reunies | seulement evenements planifies/haute priorite | precision supposee a tort |
| `pattr` | CONDITIONNEL HORS CRITIQUE | CRIT-3/4, setup, presets | LPER-3/5 | memoire, alias, exposition d'etat | pas source unique P0/P1/P2 | etat magique |
| `pattrstorage` | REPORTE / HORS CRITIQUE | CRIT-3/4 | LPER-3/5 | presets, recalls, interpolation future | pas audit complet ici | recall non jouable |
| SIG-0 | OBLIGATOIRE SI IMPACT DIRECT/SAFE | CRIT-0/1 | LPER-0/1/5 | direct/safe/protection | pas UI finale | absence de signal critique |
| SIG-1 | OBLIGATOIRE SI IMPACT PROTECTION | CRIT-1/2 | LPER-1/5 | limitation/protection | pas bruit cognitif | protection invisible |
| SIG-2 | OBLIGATOIRE SI IMPACT JOUABLE | CRIT-2/3 | LPER-1/2/3/5 | geste, transgression, generation, retour | pas decoration | surcharge |
| SIG-3 | AUTORISE DIAG | DIAG | LPER-5 | analyse, debug, trace | ne commande jamais l'audio | diagnostic autoritaire |

---

## 3. Contrat OP-LIVE-COMMAND

Statut :

```text
OBLIGATOIRE.
```

Raison :

```text
la commande est le seul moyen de ne pas confondre :
intention musicale ;
controle live ;
message Max ;
etat interne ;
signalisation ;
UI future.
```

Forme minimale :

```text
id ;
origine ;
autorite ;
cible ;
criticite ;
LPER ;
etat avant ;
etat demande ;
preconditions ;
packets ;
timing ;
reponse attendue ;
fallback ;
release ;
rollback ;
SIG ;
diag.
```

Condition :

```text
toute commande qui affecte DID, GRV, GEN, SPC, HAL, REV, SAFE, DIRECT,
TRANS ou RETURN doit pouvoir etre ramenee a cette forme avant traduction.
```

Interdit :

```text
commande sans autorite ;
commande sans cible ;
commande sans release si elle maintient un etat ;
commande sans rollback si elle peut echouer ;
commande sans SIG si elle modifie jouabilite, protection ou perception.
```

---

## 4. `route`

Statut :

```text
ACCEPTE CANDIDAT CONDITIONNEL.
```

Fonction utile :

```text
separer des familles de commandes ou packets par premier selecteur :
DID, GRV, GEN, HAL, SPC, REV, SAFE, TRANS, RETURN, SIG, DIAG.
```

Conditions :

```text
familles declarees avant routage ;
sortie inconnue/fallback obligatoire ;
pas de routage anonyme ;
pas de cascade illisible ;
pas de dependance P0 ;
CRIT-1 seulement si route simple et fallback safe local.
```

Risques :

```text
routage message opaque ;
commande perdue dans sortie inconnue ;
ordre cache si route combine avec trigger non documente ;
mutation de l'architecture par ajout de familles non auditees.
```

Decision Vesperare :

```text
`route` est bon candidat pour organiser les commandes non audio directes,
mais il ne devient jamais preuve que l'architecture est claire.
la carte des familles reste obligatoire.
```

---

## 5. `select`

Statut :

```text
ACCEPTE CANDIDAT CONDITIONNEL.
```

Fonction utile :

```text
detecter des etats discrets :
ON/OFF ;
LOCK/UNLOCK ;
SAFE/DIRECT ;
AUTO/FORCE/CUT ;
ACCEPT/REFUSE/LIMIT ;
TRANS-ARM/TRANS-COMMIT ;
RETURN-READY/RETURN-ACTIVE.
```

Conditions :

```text
le bang doit rester rattache a un contexte.
un etat detecte doit garder son owner et sa cause.
les non-matches doivent etre traites ou ignores explicitement.
pas de detection flottante pour evenement critique sans tolerance justifiee.
```

Risques :

```text
bang sans cause ;
etat discret trop pauvre ;
perte de l'autorite P2/P1/P0 ;
declenchement d'une action irreversible sans preconditions.
```

Decision Vesperare :

```text
`select` est bon candidat pour detecter des etats nominaux.
il doit etre entoure par packet/contexte si l'action est musicale.
```

---

## 6. `trigger` / `t`

Statut :

```text
ACCEPTE CANDIDAT CONDITIONNEL.
```

Fonction utile :

```text
rendre explicite l'ordre :
1. preparer ;
2. verifier ;
3. commit ;
4. signaler ;
5. lancer release ou rollback.
```

Conditions :

```text
ordre declare dans le contrat ;
pas d'ordre implicite par simple cablage ;
pas de branche critique cachee ;
pas de duplication d'evenement sans id/cause ;
si rollback possible, son ordre doit etre aussi explicite que le commit.
```

Risques :

```text
ordre cache ;
effet de bord ;
dependance a une sequence difficile a lire ;
signal envoye avant etat reel ;
commit envoye avant verification.
```

Decision Vesperare :

```text
`trigger` est candidat utile pour rendre la temporalite de message explicite.
il ne doit jamais devenir un substitut a une transaction documentee.
```

---

## 7. `message`

Statut :

```text
ACCEPTE CANDIDAT CONDITIONNEL.
```

Fonction utile :

```text
porter ou formater une commande candidate :
nom ;
arguments ;
id ;
etat ;
valeur ;
scope ;
cause ;
release.
```

Conditions :

```text
syntaxe non definitive ;
champ musical conserve ;
pas de message sans contrat ;
pas de comma/sequence cachee pour action critique ;
pas de substitution qui masque l'origine ou l'autorite.
```

Risques :

```text
intention musicale reduite a texte ;
syntaxe finale prematuree ;
sequence de messages cachee ;
message visible confondu avec interface.
```

Decision Vesperare :

```text
`message` est candidat de transport/formatage.
il n'est pas la commande elle-meme.
```

---

## 8. Messages a Max / `adstatus`

Statut :

```text
CONDITIONNEL SETUP/DIAG.
```

Fonction utile :

```text
lire ou regler des parametres audio/host candidats :
overdrive ;
scheduler in audio interrupt ;
sample rate ;
signal vector ;
I/O vector ;
DSP on/off ;
etat driver.
```

Conditions :

```text
principalement setup, pre-scene ou diagnostic ;
si expose en live, signaler consequence ;
pas de changement audio dangereux pendant action critique sans protocole ;
pas de confusion entre reglage host et geste musical.
```

Risques :

```text
runtime confondu avec performance ;
changement audio audible ;
etat audio modifie sans rollback ;
diagnostic qui prend autorite.
```

Decision Vesperare :

```text
messages a Max / adstatus sont candidats de surveillance ou configuration.
ils ne doivent pas porter une intention artistique directe sans couche commande.
```

---

## 9. Overdrive

Statut :

```text
CONFIG CANDIDATE.
```

Fonction utile :

```text
ameliorer le traitement des evenements haute priorite en les separant mieux des
evenements basse priorite.
```

Conditions :

```text
actif comme hypothese de profil performance ;
patch concu pour eviter etats incoherents entre priorites ;
pas de calcul lourd dans les chemins evenementiels critiques ;
SIG ou diag si le profil attendu n'est pas actif ;
pas de garantie de jouabilite deduite automatiquement.
```

Risques :

```text
fausse securite ;
etat change pendant traitement d'un autre evenement ;
debug plus difficile ;
dependance cachee a la priorite.
```

Decision Vesperare :

```text
Overdrive est une condition candidate de performance,
mais la conception doit rester robuste conceptuellement sans l'utiliser comme
excuse de complexite.
```

---

## 10. Scheduler in Audio Interrupt

Statut :

```text
CONFIG CANDIDATE CONDITIONNELLE.
```

Fonction utile :

```text
coupler scheduler et audio thread pour que les evenements haute priorite
puissent etre traites en relation plus precise avec les vectors audio.
```

Conditions :

```text
Overdrive actif ;
scheduler leger ;
pas de calcul couteux dans le scheduler ;
pas de dependance P0/P1 au scheduler ;
choix vectoriel coherent avec la latence visee ;
surveillance du risque de drop vectors ;
SIG/diag si profil non conforme.
```

Risques :

```text
surcharge audio thread ;
clicks/glitches par vectors rates ;
precision DSP mais relation au temps reel plus ambigue ;
clumping d'evenements ;
geste UI bas-priorite pris a tort pour sample-accurate.
```

Decision Vesperare :

```text
Scheduler in Audio Interrupt est candidat important pour P2 timing/generation,
mais jamais fondation unique du direct, du safe ou de la protection.
```

---

## 11. Sample-accurate messages

Statut :

```text
CAPACITE CANDIDATE.
```

Fonction utile :

```text
convertir certains evenements planifies/haute priorite vers audio avec une
meilleure precision temporelle, notamment pour rampes, impulses, sig~, line~,
curve~ ou autres objets compatibles.
```

Conditions :

```text
Overdrive actif ;
Scheduler in Audio Interrupt actif ;
evenement haute priorite ;
objet compatible ;
signal vector coherent ;
pas de source UI directe supposee precise ;
pas de calcul lourd.
```

Risques :

```text
croire qu'un clic, slider ou action basse priorite devient sample-accurate ;
croire que toute commande Max devient sample-accurate ;
faire porter une sensation rythmique fine par un chemin non planifie ;
masquer une latence d'un vector dans certaines conversions signal->event.
```

Decision Vesperare :

```text
sample-accurate messages sont pertinents pour des gestes rythmiques,
transitions courtes, micro-declenchements, motifs et generation,
mais seulement quand les conditions de priorite et de compatibilite sont
reunies.
```

---

## 12. `pattr`

Statut :

```text
CONDITIONNEL HORS CRITIQUE.
```

Fonction utile :

```text
nommer, exposer, memoriser ou rappeler des donnees d'etat :
mode ;
scope ;
scene ;
preset ;
lock ;
valeur de preparation ;
etat non critique.
```

Conditions :

```text
pas condition P0 ;
pas condition P1 ;
pas source unique d'un geste P2 ;
autorite explicite si une valeur pattr devient audible ;
signal si recall modifie jouabilite ;
pas d'etat magique cache.
```

Risques :

```text
memoire qui commande sans autorite ;
valeur restauree au load sans intention live ;
etat apparent different de l'etat audible ;
interpolation ou recall qui compose sans decision.
```

Decision Vesperare :

```text
pattr est candidat utile pour memoire et exposition d'etat.
il est interdit comme source unique du chemin critique.
```

---

## 13. `pattrstorage`

Statut :

```text
REPORTE / HORS CRITIQUE.
```

Fonction utile potentielle :

```text
presets ;
recall de scenes ;
interpolation d'etats ;
snapshots ;
memoire de configurations.
```

Decision :

```text
ne pas auditer en detail dans le groupe B.
le garder comme famille a traiter dans un futur groupe etats/presets/memoire
si le systeme en a besoin.
```

Interdits provisoires :

```text
recall preset comme commande live critique ;
interpolation pattrstorage comme transition P0/P1 ;
scene recall qui modifie grave/didgeridoo/generation sans contrat ;
memoire qui bat P2 explicite.
```

---

## 14. SIG

Statut :

```text
OBLIGATOIRE SI IMPACT.
```

Definition :

```text
SIG n'est pas l'interface.
SIG est le niveau de necessite d'information pour que le performer sache ce qui
arrive au systeme quand cela change la jouabilite, la protection, le risque,
le retour ou l'audible.
```

### 14.1. SIG-0

Fonction :

```text
direct/safe critique ;
perte ou recuperation directe ;
protection urgente ;
etat qui affecte la survie sonore.
```

Contraintes :

```text
rare ;
non ambigu ;
pas decoratif ;
pas noyable dans SIG-2/3.
```

### 14.2. SIG-1

Fonction :

```text
protection, limitation, conflit important, safe active, P2 limite.
```

Contraintes :

```text
doit expliquer assez pour agir ;
ne doit pas imposer un choix UI final ;
doit rester supportable en club.
```

### 14.3. SIG-2

Fonction :

```text
geste live ;
scene ;
mode ;
generation ;
transgression ;
halo lock ;
retour ;
etat long.
```

Contraintes :

```text
signaler ce qui change la decision du performer.
ne pas signaler chaque micro-evenement.
```

### 14.4. SIG-3

Fonction :

```text
diagnostic ;
trace ;
debug ;
post-analyse ;
etat technique non urgent.
```

Contraintes :

```text
ne commande jamais l'audio.
ne doit pas concurrencer SIG-0/1/2 pendant performance.
```

Decision Vesperare :

```text
SIG est retenu comme exigence de couche.
la forme visible, gestuelle ou sonore sera definie plus tard.
```

---

## 15. Application aux commandes minimales

### 15.1. Didgeridoo

Commandes a preserver :

```text
DID-LIBRE ;
DID-SYSTEME-SUIT ;
DID-SADAPTE-AU-SYSTEME ;
DID-HARMONIC-GUIDE ;
DID-HARMONIC-ADAPT ;
DID-PROTECTION-SEULE ;
DID-TRANSFORMATION-MUSICALE.
```

Audit B :

```text
ces commandes doivent etre transportables par OP-LIVE-COMMAND.
route/select/trigger peuvent aider a les organiser.
pattr peut memoriser un mode mais ne doit pas le rendre audible sans commande.
SIG requis si le didgeridoo change de role ou si le systeme le limite.
```

### 15.2. Grave / sub / gong

Commandes a preserver :

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

Audit B :

```text
les changements de porteur du grave sont P2 ou P1 selon risque.
SIG obligatoire si grave se retire, s'adapte, ou limite une transgression.
sample-accurate messages peuvent etre utiles pour transitions/rampes,
mais le safe grave ne doit pas dependre d'un scheduler lourd.
```

### 15.3. Generation / motifs / acid / interlocking

Commandes a preserver :

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

Audit B :

```text
les gestes rythmiques et micro-declenchements peuvent beneficier de
Overdrive/SIAI/sample-accurate messages.
les commandes doivent garder scene, source, role et risque de motif autonome.
aucun motif ne doit etre active uniquement par un etat pattr cache.
SIG requis si un motif devient central, limite, retire ou transgressif.
```

### 15.4. Espace / halo / reverb

Commandes a preserver :

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

Audit B :

```text
HAL-LOCK et HAL-FORCE exigent SIG-2, et SIG-1 si protection limite.
HAL-CUT doit avoir release/rollback clair.
SPC/REV peuvent utiliser memoires/presets hors critique,
mais les etats audibles longs doivent rester decides ou signales.
```

### 15.5. Retour / sortie / rollback

Commandes a preserver :

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

Audit B :

```text
retour corporel ne doit pas etre automatique par defaut.
les outils doivent etre disponibles.
la commande doit pouvoir preparer, armer, commit, annuler ou reporter le retour.
ROLLBACK-CAUSE est signalable si la commande a echoue ou ete limitee.
```

---

## 16. Interdictions transversales

Interdit :

```text
utiliser une action UI comme seule source temporelle d'une commande rythmique fine ;
decrire Overdrive/SIAI comme "sans latence" ;
faire porter P0/P1 par un reseau message complexe ;
laisser un etat pattr modifier l'audio sans commande ;
laisser un message inconnu disparaitre sans fallback ;
laisser un bang declencher une action sans cause ;
laisser un `trigger` definir un ordre critique non documente ;
laisser SIG devenir une interface finale ;
laisser DIAG commander l'audio.
```

---

## 17. Reports explicites

### 17.1. UI / controleur / mapping

Statut :

```text
reporte.
```

Raison :

```text
la couche commande doit exister avant de choisir comment elle est jouee.
```

### 17.2. Etat/preset complet

Statut :

```text
reporte.
```

Raison :

```text
pattrstorage, snapshots, presets, recalls et interpolation d'etats demandent
un groupe dedie s'ils deviennent centraux.
```

### 17.3. Objets de timing plus larges

Statut :

```text
reporte.
```

Raison :

```text
metro, transport, clock, pipe, delay, defer/deferlow, qlim, dict/coll, js
peuvent devenir pertinents, mais les integrer ici diluerait le verrou B.
ils devront etre traites seulement si une future fonction les rend necessaires.
```

### 17.4. I/O et driver audio

Statut :

```text
reporte.
```

Raison :

```text
adc~/dac~, drivers, cartes audio, I/O physique et calibration appartiennent a
une future fiche I/O / setup / deployment.
```

---

## 18. Decision de sortie

Le groupe B est stable pour la conception suivante.

Ce que l'audit B ajoute :

```text
une commande doit rester un contrat jouable ;
route/select/trigger/message sont candidats conditionnels de transport et
structuration ;
Overdrive/SIAI/sample-accurate messages sont candidats de precision,
pas garanties ;
pattr reste hors critique ;
pattrstorage est reporte ;
SIG devient exigence de signalisation si impact ;
UI/mapping restent reportes.
```

Autorise ensuite :

```text
preparer le groupe C : generation rythmique, motifs, timing generation,
interlocking, acid naturalise, voix fragmentaire, jazz/Keita comme phenomenes
retenus, sans encore choisir moteurs finaux.
```

N'autorise pas :

```text
implementation ;
patch final ;
UI finale ;
mapping final ;
choix definitif d'objets ;
tests comme condition de conception.
```
