# SPECIFICATION ARCHITECTURE MAX STANDALONE DETAILLEE NIVEAU 5 OBJETS MAX CANDIDATS NON DEFINITIFS VESPERARE v0.1

Projet : Vesperare
Statut : specification architecture Max standalone detaillee niveau 5 objets Max candidats non definitifs
Date : 2026-06-23

Sources actives principales :

- `AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_4_PATCHERS_ABSTRAITS_ET_CONTRATS_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_4_PATCHERS_ABSTRAITS_ET_CONTRATS_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_3_TRADUCTION_STRUCTURES_MAX_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_3_TRADUCTION_STRUCTURES_MAX_VESPERARE_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_2_MODULES_MESSAGES_VESPERARE_v0_1.md`
- `DECISION_RUNTIME_MAX_STANDALONE_LATENCE_SANS_COMPROMIS_VESPERARE_v0_1.md`
- `SPECIFICATION_BLOC_GENERATION_SONORE_MOTIFS_RYTHMIQUES_MELODIQUES_v0_1.md`
- `REVERBS_ESPACE_REACTIF_v0_2.md`

Cadrage externe verifie :

```text
documentation officielle Cycling '74 :
object reference ;
dictionaries / dict ;
pattr system ;
JavaScript in Max ;
audio input/output ;
polyphony ;
MC ;
gen / gen~ ;
line~ / curve~ ;
pfft~ / fft~ ;
matrix~ ;
selector~ / gate~ ;
table~ ;
mc.function.
```

But :

```text
lister des familles d'objets, patterns et mecanismes Max candidats non
definitifs par PCH/CONTRACT/CHK : audio-rate, control-rate, etat, message,
vue, diagnostic, generation, espace, halo, mix et latence, sans choisir
objets finaux, algorithmes, seuils, externals obligatoires, plugins,
interface finale, controleur physique ou patch final.
```

Cette fiche peut definir :

```text
famille d'objet candidate ;
pattern Max candidat ;
statut CANDIDATE / OPTION / LATER / REJECTED ;
PCH concerne ;
CONTRACT concerne ;
CHK concerne ;
classe audio/control/state/view/diag ;
risque ;
fallback MIN-DID-PC ;
frontiere critique/non critique.
```

Cette fiche ne doit pas definir :

```text
objet final ;
patch final ;
nom de fichier Max ;
send/receive final ;
schema de routage final ;
algorithme final ;
seuil ;
buffer final ;
driver ;
interface audio ;
controleur ;
UI finale ;
test pratique.
```

---

## 1. Decision niveau 5

Decision :

```text
le niveau 5 introduit des objets/patterns candidats, non definitifs.
```

Regle centrale :

```text
un objet nomme dans cette fiche est une hypothese de conception.
ce n'est pas une decision d'implementation.
```

Statuts :

```text
CANDIDATE : candidat compatible a auditer plus tard.
OPTION    : option utile mais non necessaire.
LATER     : possible plus tard, hors priorite actuelle.
REJECTED  : incompatible avec les garde-fous actuels.
```

Interdit :

```text
aucun objet ne devient FINAL dans cette fiche.
```

---

## 2. Contrat commun d'un candidat

Chaque candidat doit declarer :

```text
nom ou famille ;
statut ;
PCH concerne ;
CONTRACT concerne ;
CHK concerne ;
classe ;
chemin critique autorise ou interdit ;
risque musical ;
risque latence ;
risque de confusion ;
fallback MIN-DID-PC ;
raison de conservation ou rejet.
```

Classes :

```text
OBJ-AUDIO-RATE ;
OBJ-CONTROL-RATE ;
OBJ-STATE ;
OBJ-MESSAGE-ROUTING ;
OBJ-VIEW ;
OBJ-DIAG ;
OBJ-GEN ;
OBJ-SPC ;
OBJ-HAL ;
OBJ-MIX ;
OBJ-LAT ;
OBJ-LATER.
```

Regle :

```text
un candidat sans PCH, CONTRACT et CHK n'est pas utilisable.
```

---

## 3. Garde-fous niveau 5

Corrections `CORR-MX4` appliquees :

```text
CORR-MX4-1 : objets Max candidats uniquement, jamais definitifs.
CORR-MX4-2 : chaque candidat pointe vers PCH, CONTRACT et CHK.
CORR-MX4-3 : separer audio-rate, control-rate, etat, vue, diagnostic.
CORR-MX4-4 : LAT reste mesure/signal/diagnostic/preparation, jamais autorite.
CORR-MX4-5 : refuser fusion technique SPC/HAL/GEN-HAL.
CORR-MX4-6 : exiger fallback ou statut LATER pour MIN-DID-PC.
CORR-MX4-7 : UI/log/monitoring hors chemin audio vital.
```

Interdits transversaux :

```text
objet UI sur chemin audio vital ;
objet DIAG sur OUT-MAIN ;
objet LAT qui ecrit DEC/PERM ;
objet GEN sans GEN-PACKET ;
objet SPC qui decide HAL ;
objet HAL qui decide SPC ;
objet GEN-HAL qui lock/cut HAL ;
objet imposant source optionnelle en MIN-DID-PC ;
objet externe obligatoire ;
plugin obligatoire ;
choix final de seuil.
```

---

## 4. Candidats audio I/O et direct

### 4.1. `adc~` / `dac~`

```text
statut : CANDIDATE.
classe : OBJ-AUDIO-RATE.
PCH : PCH-AUDIO-IO / PCH-MIX-OUT / PCH-MIN-DID-PC.
CONTRACT : CONTRACT-READ / CONTRACT-SIGNAL.
CHK : CHK-DIRECT / CHK-MIX-SAFE / CHK-MIN-DID-PC.
chemin critique : autorise.
risque : choix final d'I/O trop precoce.
fallback MIN-DID-PC : oui.
decision : candidat principal d'entree/sortie, non final.
```

### 4.2. `ezadc~` / `ezdac~`

```text
statut : OPTION.
classe : OBJ-AUDIO-RATE / OBJ-VIEW.
PCH : PCH-AUDIO-IO.
CONTRACT : CONTRACT-SIGNAL.
CHK : CHK-VIEW-NONVITAL.
chemin critique : non retenu comme dependance finale.
risque : objet pratique de prototype lu comme solution finale.
fallback MIN-DID-PC : oui, mais pas obligatoire.
decision : option de maquette, pas architecture finale.
```

---

## 5. Candidats mix / routing audio

### 5.1. `matrix~`

```text
statut : CANDIDATE.
classe : OBJ-MIX / OBJ-AUDIO-RATE.
PCH : PCH-MIX-OUT / PCH-SPC-HUB / PCH-HAL-HUB.
CONTRACT : CONTRACT-READ / CONTRACT-WRITE / CONTRACT-SIGNAL.
CHK : CHK-MIX-SAFE / CHK-OUT-MAIN / CHK-SPC-HAL-SEPARATION.
chemin critique : possible seulement si stable et borne.
risque : devenir routage final trop tot.
fallback MIN-DID-PC : doit rester simplifiable.
decision : candidat de matrice abstraite, non final.
```

### 5.2. `selector~` / `gate~`

```text
statut : CANDIDATE.
classe : OBJ-AUDIO-RATE / OBJ-MIX.
PCH : PCH-MIX-OUT / PCH-AUDIO-IO.
CONTRACT : CONTRACT-ALLOW / CONTRACT-RELEASE.
CHK : CHK-DIRECT / CHK-MIX-SAFE / CHK-OUT-MAIN.
chemin critique : possible pour choix bornes.
risque : cut abrupt si mal gere.
fallback MIN-DID-PC : oui.
decision : candidat de selection, exige fades/release.
```

### 5.3. `send~` / `receive~`

```text
statut : OPTION.
classe : OBJ-AUDIO-RATE / OBJ-MIX.
PCH : PCH-MIX-OUT.
CONTRACT : CONTRACT-READ / CONTRACT-WRITE.
CHK : CHK-OUT-MAIN / CHK-DIAG-NONBLOCK.
chemin critique : a auditer.
risque : routage implicite difficile a lire.
fallback MIN-DID-PC : oui si documentation claire.
decision : option, pas defaut automatique.
```

---

## 6. Candidats rampes / fades / transitions

### 6.1. `line~`

```text
statut : CANDIDATE.
classe : OBJ-AUDIO-RATE / OBJ-CONTROL-RATE.
PCH : PCH-MIX-OUT / PCH-GEN-HUB / PCH-SPC-HUB / PCH-HAL-HUB.
CONTRACT : CONTRACT-RELEASE / CONTRACT-SIGNAL.
CHK : CHK-HAL-CUT / CHK-OUT-MAIN / CHK-GEN-PACKET.
chemin critique : possible si simple.
risque : transition trop lineaire musicalement.
fallback MIN-DID-PC : oui.
decision : candidat pour rampes, fades, releases.
```

### 6.2. `curve~`

```text
statut : OPTION.
classe : OBJ-AUDIO-RATE / OBJ-CONTROL-RATE.
PCH : PCH-MIX-OUT / PCH-HAL-HUB / PCH-SPC-HUB / PCH-GEN-HUB.
CONTRACT : CONTRACT-RELEASE.
CHK : CHK-HAL-CUT / CHK-SPC-HAL-SEPARATION.
chemin critique : possible si borne.
risque : courbe expressive lue comme choix esthetique final.
fallback MIN-DID-PC : oui.
decision : option de transition plus musicale, non finale.
```

---

## 7. Candidats etat / packets

### 7.1. `dict`

```text
statut : CANDIDATE.
classe : OBJ-STATE.
PCH : PCH-STATE-HUB.
CONTRACT : CONTRACT-READ / CONTRACT-WRITE / CONTRACT-RELEASE.
CHK : CHK-GEN-PACKET / CHK-PERM-FORCE / CHK-MIN-DID-PC.
chemin critique : interdit comme dependance audio directe.
risque : etat devenu decision cachee.
fallback MIN-DID-PC : oui si packets minimaux.
decision : candidat pour packets structures, non final.
```

### 7.2. `coll`

```text
statut : OPTION.
classe : OBJ-STATE.
PCH : PCH-STATE-HUB / PCH-GEN-HUB.
CONTRACT : CONTRACT-READ.
CHK : CHK-GEN-PACKET.
chemin critique : non.
risque : table de presets cachee.
fallback MIN-DID-PC : oui.
decision : option pour listes/tables, pas memoire musicale opaque.
```

### 7.3. `pattr` / `autopattr` / `pattrstorage`

```text
statut : OPTION.
classe : OBJ-STATE.
PCH : PCH-STATE-HUB / PCH-BOOT-CONFIG.
CONTRACT : CONTRACT-READ / CONTRACT-WRITE / CONTRACT-RELEASE.
CHK : CHK-VIEW-NONVITAL / CHK-MIN-DID-PC.
chemin critique : interdit.
risque : preset qui devient decision de performance.
fallback MIN-DID-PC : oui si setup minimal conserve.
decision : option pour recall/config, pas scene imposee.
```

---

## 8. Candidats messages / control-rate

### 8.1. Primitives de routage Max

Exemples candidats :

```text
route ;
routepass ;
select ;
trigger ;
gate ;
switch ;
pack ;
unpack ;
zl.
```

Contrat :

```text
statut : CANDIDATE.
classe : OBJ-MESSAGE-ROUTING / OBJ-CONTROL-RATE.
PCH : PCH-LIVE-HUB / PCH-DEC-CORE / PCH-PROTO-HUB / PCH-SIGNAL-VIEWS.
CONTRACT : CONTRACT-READ / CONTRACT-WRITE / CONTRACT-ALLOW.
CHK : CHK-LAT-NONAUTH / CHK-PERM-FORCE / CHK-GEN-PACKET.
chemin critique : seulement si simple et lisible.
risque : message routing devenu protocole opaque.
fallback MIN-DID-PC : oui.
decision : candidats de routage, a auditer objet par objet.
```

### 8.2. Timing control-rate

Exemples candidats :

```text
metro ;
qmetro ;
delay ;
pipe ;
timer ;
transport.
```

Contrat :

```text
statut : CANDIDATE / OPTION selon usage.
classe : OBJ-CONTROL-RATE.
PCH : PCH-LIVE-HUB / PCH-GEN-HUB / PCH-SIGNAL-VIEWS / PCH-REC-DIAG.
CONTRACT : CONTRACT-SIGNAL / CONTRACT-DIAG / CONTRACT-RELEASE.
CHK : CHK-LAT-NONAUTH / CHK-DIAG-NONBLOCK.
chemin critique : a limiter.
risque : scheduler ou horloge qui impose forme musicale.
fallback MIN-DID-PC : oui.
decision : candidats de timing non definitifs.
```

---

## 9. Candidats analyse rapide

### 9.1. Mesure signal -> controle

Exemples candidats :

```text
snapshot~ ;
peakamp~ ;
meter~.
```

Contrat :

```text
statut : CANDIDATE.
classe : OBJ-LAT / OBJ-DIAG / OBJ-CONTROL-RATE.
PCH : PCH-ANA-FAST / PCH-SIGNAL-VIEWS.
CONTRACT : CONTRACT-READ / CONTRACT-SIGNAL.
CHK : CHK-LAT-NONAUTH / CHK-DIRECT.
chemin critique : possible seulement si leger et non bloquant.
risque : analyse confondue avec decision.
fallback MIN-DID-PC : oui.
decision : candidats d'observation, pas autorites.
```

### 9.2. Analyse spectrale rapide

Exemples candidats :

```text
fft~ ;
pfft~ ;
spectral analysis family.
```

Contrat :

```text
statut : LATER / OPTION.
classe : OBJ-DIAG / OBJ-LAT.
PCH : PCH-ANA-SLOW.
CONTRACT : CONTRACT-DIAG / CONTRACT-SIGNAL.
CHK : CHK-DIAG-NONBLOCK / CHK-LAT-NONAUTH.
chemin critique : interdit par defaut.
risque : charge/latence et illusion de precision.
fallback MIN-DID-PC : oui, analyse simple d'abord.
decision : analyse lente ou diagnostic, pas chemin critique.
```

---

## 10. Candidats generation

### 10.1. Rampes / enveloppes / formes

Exemples candidats :

```text
line~ ;
curve~ ;
function ;
table~ ;
mc.function.
```

Contrat :

```text
statut : CANDIDATE / OPTION.
classe : OBJ-GEN / OBJ-CONTROL-RATE.
PCH : PCH-GEN-HUB.
CONTRACT : CONTRACT-ALLOW / CONTRACT-RELEASE.
CHK : CHK-GEN-PACKET.
chemin critique : possible seulement si simple.
risque : motif autonome sans role.
fallback MIN-DID-PC : oui.
decision : candidats de formes, toujours sous GEN-PACKET.
```

### 10.2. Polyphonie / voix multiples

Exemples candidats :

```text
poly~ ;
MC family.
```

Contrat :

```text
statut : OPTION / LATER.
classe : OBJ-GEN / OBJ-AUDIO-RATE.
PCH : PCH-GEN-HUB.
CONTRACT : CONTRACT-ALLOW / CONTRACT-RELEASE.
CHK : CHK-GEN-PACKET / CHK-MIN-DID-PC.
chemin critique : non par defaut.
risque : complexite, charge, autonomie excessive.
fallback MIN-DID-PC : version simple obligatoire.
decision : option pour densite/polytexture, non initiale.
```

### 10.3. `gen~`

```text
statut : OPTION / LATER.
classe : OBJ-GEN / OBJ-AUDIO-RATE.
PCH : PCH-GEN-HUB / PCH-SPC-HUB / PCH-HAL-HUB.
CONTRACT : CONTRACT-ALLOW / CONTRACT-RELEASE.
CHK : CHK-GEN-PACKET / CHK-SPC-HAL-SEPARATION.
chemin critique : possible seulement apres audit.
risque : algorithmie cachee et optimisation prematuree.
fallback MIN-DID-PC : oui, version MSP simple.
decision : option puissante, jamais obligatoire au niveau 5.
```

### 10.4. `js`

```text
statut : OPTION / LATER.
classe : OBJ-STATE / OBJ-MESSAGE-ROUTING / OBJ-DIAG.
PCH : PCH-STATE-HUB / PCH-PROTO-HUB / PCH-REC-DIAG.
CONTRACT : CONTRACT-READ / CONTRACT-DIAG.
CHK : CHK-DIAG-NONBLOCK / CHK-LAT-NONAUTH.
chemin critique : interdit par defaut.
risque : logique cachee, maintenance, latence scheduler.
fallback MIN-DID-PC : oui, logique Max simple.
decision : option pour outils et diagnostic, pas coeur critique.
```

---

## 11. Candidats espace / reverb / halo

### 11.1. Routage et couches SPC/HAL

Exemples candidats :

```text
matrix~ ;
selector~ ;
gate~ ;
line~ ;
curve~.
```

Contrat :

```text
statut : CANDIDATE.
classe : OBJ-SPC / OBJ-HAL / OBJ-MIX.
PCH : PCH-SPC-HUB / PCH-HAL-HUB / PCH-GEN-HAL-SOURCE.
CONTRACT : CONTRACT-ALLOW / CONTRACT-RELEASE / CONTRACT-SIGNAL.
CHK : CHK-SPC-HAL-SEPARATION / CHK-HAL-CUT / CHK-MIX-SAFE.
chemin critique : hors attaque critique pour longs espaces/halo.
risque : fusion SPC/HAL/GEN-HAL.
fallback MIN-DID-PC : oui.
decision : candidats de routage/transition, pas reverb finale.
```

### 11.2. Delai, convolution, resonateurs, reverb

Exemples candidats :

```text
delay/reverb/resonator/convolution families.
```

Contrat :

```text
statut : LATER.
classe : OBJ-SPC / OBJ-HAL.
PCH : PCH-SPC-HUB / PCH-HAL-HUB / PCH-GEN-HAL-SOURCE.
CONTRACT : CONTRACT-ALLOW / CONTRACT-RELEASE.
CHK : CHK-SPC-HAL-SEPARATION / CHK-HAL-CUT / CHK-LAT-NONAUTH.
chemin critique : interdit par defaut.
risque : choix esthetique premature, charge, fusion des responsabilites.
fallback MIN-DID-PC : espace simple obligatoire.
decision : a specifier dans une couche reverb technique future.
```

---

## 12. Candidats vues / diagnostic

### 12.1. Vues de niveau / signal

Exemples candidats :

```text
meter~ ;
scope~ ;
spectroscope~ ;
message/comment UI families.
```

Contrat :

```text
statut : OPTION.
classe : OBJ-VIEW / OBJ-DIAG.
PCH : PCH-SIGNAL-VIEWS / PCH-REC-DIAG.
CONTRACT : CONTRACT-SIGNAL / CONTRACT-DIAG.
CHK : CHK-VIEW-NONVITAL / CHK-DIAG-NONBLOCK.
chemin critique : interdit.
risque : vue qui devient dependance audio.
fallback MIN-DID-PC : oui.
decision : candidates de vue, non vitales.
```

### 12.2. Logging / historique

Exemples candidats :

```text
print ;
text ;
dict ;
coll ;
js.
```

Contrat :

```text
statut : OPTION.
classe : OBJ-DIAG / OBJ-STATE.
PCH : PCH-REC-DIAG.
CONTRACT : CONTRACT-DIAG.
CHK : CHK-DIAG-NONBLOCK.
chemin critique : interdit.
risque : diagnostic qui ralentit ou influence le jeu.
fallback MIN-DID-PC : logs desactivables.
decision : option diagnostic, jamais condition OUT-MAIN.
```

---

## 13. Candidats rejetes ou repousses

### 13.1. Dependances Ableton / Max for Live

```text
statut : REJECTED comme runtime principal.
raison : Max standalone est le runtime actif.
exception : memoire/documentation historique seulement.
```

### 13.2. RNBO comme architecture principale

```text
statut : LATER.
raison : horizon futur de sous-modules, pas runtime principal.
```

### 13.3. Externals obligatoires

```text
statut : REJECTED au niveau 5.
raison : aucune dependance externe obligatoire avant architecture stable.
exception : LATER si besoin musical prouve et fallback disponible.
```

### 13.4. Plugins audio obligatoires

```text
statut : REJECTED au niveau 5.
raison : pas de plugin obligatoire dans la conception actuelle.
exception : LATER pour recherche technique future.
```

### 13.5. Objet UI comme condition audio

```text
statut : REJECTED.
raison : CHK-VIEW-NONVITAL.
```

### 13.6. Analyse lourde sur chemin direct

```text
statut : REJECTED.
raison : CHK-DIRECT / CHK-LAT-NONAUTH.
```

---

## 14. Table MIN-DID-PC candidats minimaux

Noyau minimal candidat :

```text
entree/sortie : adc~ / dac~ CANDIDATE.
direct/safe : selector~ / gate~ / matrix~ CANDIDATE.
transition : line~ CANDIDATE, curve~ OPTION.
etat minimal : dict CANDIDATE, coll OPTION.
message routing : primitives Max CANDIDATE.
analyse simple : snapshot~ / peakamp~ / meter~ CANDIDATE.
generation simple : line~ / curve~ / table~ CANDIDATE.
vue : meter~ / message UI OPTION.
diagnostic : print/text/dict OPTION, desactivable.
```

Interdits MIN-DID-PC :

```text
source optionnelle obligatoire ;
analyse lourde obligatoire ;
polyphonie obligatoire ;
gen~ obligatoire ;
js obligatoire ;
external obligatoire ;
plugin obligatoire ;
UI obligatoire pour audio.
```

---

## 15. Table de risques

Risques principaux :

```text
OBJ-RISK-1 : objet candidat lu comme choix final.
OBJ-RISK-2 : routage implicite illisible.
OBJ-RISK-3 : etat cache devenu decision.
OBJ-RISK-4 : LAT devenu autorite.
OBJ-RISK-5 : GEN devenu compositeur global.
OBJ-RISK-6 : SPC/HAL/GEN-HAL fusionnes.
OBJ-RISK-7 : diagnostic ou vue sur chemin vital.
OBJ-RISK-8 : MIN-DID-PC appauvri ou dependant de sources optionnelles.
OBJ-RISK-9 : objet lourd place sur chemin critique.
OBJ-RISK-10 : objet externe/plugin devenu dependance.
```

Traitement :

```text
chaque risque doit pointer vers CHK correspondant au niveau suivant.
```

---

## 16. Questions restantes

Questions pour audit niveau 5 ou niveau suivant :

1. Les candidats nommes sont-ils trop nombreux pour rester lisibles ?
2. Faut-il separer une fiche dediee reverb/space objects avant tout choix de reverb ?
3. Faut-il auditer `gen~`, `js`, `poly~` et MC separement avant de les accepter ?
4. Faut-il definir un sous-ensemble objet minimal pour MIN-DID-PC ?
5. Quels candidats peuvent appartenir au chemin critique sans risque ?
6. Quels candidats doivent rester strictement diagnostic ?
7. Quels candidats peuvent etre utilises pour prototypage mais exclus du patch final ?
8. Quels candidats menacent l'interdiction d'electronique reconnaissable ?
9. Faut-il verifier chaque objet nomme contre documentation officielle avant niveau 6 ?
10. La prochaine couche doit-elle etre un audit ou une matrice candidats/PCH/CHK ?

Ces questions ne bloquent pas l'audit niveau 5.

---

## 17. Decision v0.1

Decision :

```text
la specification niveau 5 objets Max candidats non definitifs est posee.
```

Elle etablit :

```text
statuts CANDIDATE/OPTION/LATER/REJECTED ;
contrat commun d'un candidat ;
classes objet ;
candidats audio I/O ;
candidats mix/routing ;
candidats rampes/transitions ;
candidats etat/packets ;
candidats messages/control-rate ;
candidats analyse ;
candidats generation ;
candidats espace/halo ;
candidats vues/diagnostic ;
candidats rejetes ou repousses ;
noyau MIN-DID-PC candidat ;
table de risques.
```

Prochaine action recommandee :

```text
AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_AVEC_CORPUS_v0_1
```

But :

```text
verifier que les candidats objets/patterns Max restent non definitifs,
qu'ils respectent PCH/CONTRACT/CHK, qu'ils ne menacent pas LAT, GEN-PACKET,
SPC/HAL/GEN-HAL, MIN-DID-PC, direct/safe/out/diag/view, et qu'ils peuvent
etre organises ensuite en matrice candidats/PCH/risques sans commencer
le patch final.
```
