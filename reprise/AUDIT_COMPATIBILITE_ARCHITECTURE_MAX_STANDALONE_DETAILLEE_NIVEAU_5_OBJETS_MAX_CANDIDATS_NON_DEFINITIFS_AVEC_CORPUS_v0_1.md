# AUDIT COMPATIBILITE ARCHITECTURE MAX STANDALONE DETAILLEE NIVEAU 5 OBJETS MAX CANDIDATS NON DEFINITIFS AVEC CORPUS v0.1

Projet : Vesperare
Statut : audit compatibilite architecture Max standalone detaillee niveau 5 objets Max candidats non definitifs
Date : 2026-06-23

Sources actives principales :

- `SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_4_PATCHERS_ABSTRAITS_ET_CONTRATS_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_4_PATCHERS_ABSTRAITS_ET_CONTRATS_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_3_TRADUCTION_STRUCTURES_MAX_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_3_TRADUCTION_STRUCTURES_MAX_VESPERARE_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_2_MODULES_MESSAGES_VESPERARE_v0_1.md`
- `DECISION_RUNTIME_MAX_STANDALONE_LATENCE_SANS_COMPROMIS_VESPERARE_v0_1.md`
- `SPECIFICATION_BLOC_GENERATION_SONORE_MOTIFS_RYTHMIQUES_MELODIQUES_v0_1.md`
- `REVERBS_ESPACE_REACTIF_v0_2.md`

But :

```text
verifier que les objets, familles d'objets et patterns Max listes au niveau 5
restent des candidats non definitifs, qu'ils respectent les PCH, CONTRACT et
CHK, qu'ils ne contredisent pas le runtime Max standalone, la latence sans
compromis, GEN-PACKET, MIN-DID-PC, SPC/HAL/GEN-HAL, direct/safe/out/diag/view,
et qu'ils preparent une suite plus precise sans demarrer le patch final.
```

Hors perimetre :

```text
choix final d'objet ;
syntax Max finale ;
patcher Max final ;
nom de fichier Max final ;
send/receive definitif ;
matrice audio finale ;
algorithme final ;
seuil ;
buffer final ;
driver ;
interface audio ;
controleur physique ;
UI finale ;
test pratique ;
benchmark ;
implementation.
```

---

## 1. Verdict general

Verdict :

```text
compatible avec corrections de cadrage pour le niveau suivant.
```

La fiche est compatible parce qu'elle :

- declare explicitement que les objets nommes ne sont pas finaux ;
- garde Max/MSP standalone comme runtime principal ;
- rejette Ableton/Max for Live comme runtime actif ;
- rejette externals et plugins obligatoires au niveau 5 ;
- garde RNBO et embarque comme horizons lateraux ;
- relie chaque candidat a PCH, CONTRACT et CHK ;
- separe audio-rate, control-rate, etat, routage message, vue, diagnostic, generation, espace, halo, mix et latence ;
- interdit UI/log/diagnostic sur chemin audio vital ;
- garde `LAT` comme information, pas autorite ;
- maintient `GEN-PACKET` pour les candidats generation ;
- preserve `SPC`, `HAL` et `GEN-HAL` comme responsabilites distinctes ;
- exige fallback ou statut `LATER` pour `MIN-DID-PC`.

Corrections de cadrage requises pour le niveau suivant :

```text
CORR-MX5-1 : remplacer "objet candidat" par "role technique candidat" quand le risque de choix final est trop fort.
CORR-MX5-2 : ajouter une classe PATH pour chaque candidat : DIRECT-OK, SAFE-OK, EXPRESSIVE-OK, SLOW-ONLY, DIAG-ONLY ou REJECTED-FOR-CRITICAL.
CORR-MX5-3 : separer les candidats utilises pour prototypage des candidats acceptables dans le patch final.
CORR-MX5-4 : definir un noyau MIN-DID-PC minimal par roles, pas seulement par objets.
CORR-MX5-5 : isoler les candidats lourds ou latents dans une zone non critique avec fallback musical equivalent.
CORR-MX5-6 : creer une couche dediee reverb/space objects avant tout choix de reverb, convolution ou resonateur.
CORR-MX5-7 : exiger une justification musicale pour toute famille gen~, js, MC, poly~, FFT/pfft, convolution ou external futur.
CORR-MX5-8 : maintenir "latence comme enjeu musical" dans les choix d'organisation, sans autoriser de degradation artistique automatique.
```

Ces corrections ne remettent pas en cause la fiche niveau 5.

---

## 2. Compatibilite avec le niveau attendu

Le niveau 5 devait introduire :

```text
objets Max candidats ;
patterns Max candidats ;
statuts CANDIDATE / OPTION / LATER / REJECTED ;
PCH/CONTRACT/CHK par candidat ;
classes objet ;
risques ;
fallback MIN-DID-PC ;
frontiere critique/non critique.
```

Il ne devait pas introduire :

```text
objets definitifs ;
schema de patch final ;
syntax finale ;
algorithmes ;
seuils ;
I/O finale ;
driver final ;
interface finale ;
controleur ;
tests pratiques.
```

Verdict :

```text
compatible.
```

Point fort :

```text
la fiche rapproche l'architecture des objets Max sans convertir la conception
en implementation.
```

Fragilite `FRAG-MX5-1` :

```text
plus un objet est nomme clairement, plus il risque d'etre lu comme decision
finale.
```

Traitement :

```text
niveau suivant : transformer les objets en roles techniques candidats quand
c'est necessaire, puis garder les noms d'objets comme exemples possibles.
```

---

## 3. Compatibilite statuts CANDIDATE / OPTION / LATER / REJECTED

Verdict :

```text
compatible.
```

Compatibilite :

- `CANDIDATE` signifie utilisable conceptuellement, pas final ;
- `OPTION` signifie utile mais non necessaire ;
- `LATER` signifie possible plus tard, pas actif ;
- `REJECTED` bloque les dependances incompatibles au niveau actuel ;
- aucun statut `FINAL` n'est introduit.

Fragilite `FRAG-MX5-2` :

```text
les statuts ne disent pas encore si un candidat est autorise sur le chemin
direct, safe, expressif, lent, diagnostic ou vue.
```

Traitement :

```text
appliquer CORR-MX5-2 au niveau suivant avec une classe PATH obligatoire.
```

---

## 4. Compatibilite audio I/O et direct

Candidats audites :

```text
adc~ ;
dac~ ;
ezadc~ ;
ezdac~.
```

Verdict :

```text
compatible.
```

Compatibilite :

- `adc~` / `dac~` restent candidats audio I/O minimaux ;
- le setup didgeridoo + PC conserve une entree et une sortie candidates ;
- `ezadc~` / `ezdac~` sont limites au prototype/vue, pas au coeur final ;
- aucune interface audio, canal, driver ou configuration finale n'est choisie.

Fragilite `FRAG-MX5-3` :

```text
la fiche ne distingue pas encore entree direct didgeridoo, entree mesure,
entree gong/voix/peaux et sortie monitoring/PA.
```

Traitement :

```text
niveau suivant : definir les roles I/O abstraits avant tout mapping de canaux.
```

---

## 5. Compatibilite mix / routing audio

Candidats audites :

```text
matrix~ ;
selector~ ;
gate~ ;
send~ ;
receive~.
```

Verdict :

```text
compatible avec vigilance.
```

Compatibilite :

- `matrix~` est candidat de routage abstrait, pas matrice finale ;
- `selector~` / `gate~` sont candidats de choix bornes ;
- la fiche impose fades/release pour eviter cuts abrupts non decides ;
- `send~` / `receive~` restent optionnels a cause du risque de routage implicite ;
- `MIX-SAFE`, `OUT-MAIN` et `PATH-DID-DIRECT` restent proteges.

Fragilite `FRAG-MX5-4` :

```text
`matrix~`, `send~` et `receive~` peuvent rendre le routage illisible si le
niveau suivant ne formalise pas les chemins.
```

Traitement :

```text
niveau suivant : creer une matrice roles de chemin avant tout choix de routage :
DIRECT, SAFE, OUT, SPC-SEND, HAL-SEND, GEN-HAL-SEND, DIAG, VIEW.
```

---

## 6. Compatibilite rampes / fades / transitions

Candidats audites :

```text
line~ ;
curve~.
```

Verdict :

```text
compatible.
```

Compatibilite :

- `line~` est candidat simple pour rampes, fades, releases ;
- `curve~` reste option expressive ;
- les transitions sont reliees a `HAL-CUT`, `OUT-MAIN`, `MIX-SAFE`, `GEN-PACKET` et separation `SPC/HAL` ;
- aucune duree, courbe ou comportement final n'est impose.

Fragilite `FRAG-MX5-5` :

```text
les transitions sont nommees mais les roles de transition ne sont pas encore
classes : protection, scene, geste live, retour corporel, halo, espace, mix.
```

Traitement :

```text
niveau suivant : separer TRANS-PROTECT, TRANS-LIVE, TRANS-SCENE,
TRANS-RETURN, TRANS-HAL, TRANS-SPC et TRANS-MIX.
```

---

## 7. Compatibilite etat / packets

Candidats audites :

```text
dict ;
coll ;
pattr ;
autopattr ;
pattrstorage.
```

Verdict :

```text
compatible avec vigilance.
```

Compatibilite :

- `dict` est candidat pour packets structures ;
- `coll` reste option listes/tables ;
- `pattr` et systeme associe restent option recall/config ;
- l'etat est interdit comme dependance audio directe ;
- `GEN-PACKET`, `PERM-FORCE`, `MIN-DID-PC` restent visibles dans les checks.

Fragilite `FRAG-MX5-6` :

```text
preset, etat, recall ou table peuvent devenir une decision musicale cachee.
```

Traitement :

```text
niveau suivant : distinguer STATE-CURRENT, STATE-CONFIG, STATE-PRESET,
STATE-PACKET, STATE-DIAG et STATE-MIRROR.
```

---

## 8. Compatibilite messages / control-rate

Candidats audites :

```text
route ;
routepass ;
select ;
trigger ;
gate ;
switch ;
pack ;
unpack ;
zl ;
metro ;
qmetro ;
delay ;
pipe ;
timer ;
transport.
```

Verdict :

```text
compatible avec cadrage.
```

Compatibilite :

- les primitives de message sont candidates de routage, pas protocoles opaques ;
- les objets de timing restent candidats/option selon usage ;
- les objets de timing ne doivent pas imposer une forme musicale ;
- `LAT` reste non autoritaire ;
- `DIAG` reste non bloquant.

Fragilite `FRAG-MX5-7` :

```text
`transport` ou horloges globales peuvent imposer une grille trop dominante
si leur role musical n'est pas classe.
```

Traitement :

```text
niveau suivant : distinguer CLOCK-BODY, CLOCK-SCENE, CLOCK-GEN,
CLOCK-DIAG et CLOCK-VIEW.
```

---

## 9. Compatibilite analyse rapide / lente

Candidats audites :

```text
snapshot~ ;
peakamp~ ;
meter~ ;
fft~ ;
pfft~ ;
spectral analysis family.
```

Verdict :

```text
compatible.
```

Compatibilite :

- les mesures simples sont candidates d'observation ;
- l'analyse n'est pas autorite musicale ;
- FFT/pfft restent `LATER / OPTION`, hors chemin critique par defaut ;
- les analyses lourdes sur chemin direct sont rejetees ;
- le setup didgeridoo + PC garde une analyse simple possible.

Fragilite `FRAG-MX5-8` :

```text
l'analyse spectrale peut donner une illusion de precision et produire des
decisions trop techniques si elle n'est pas rattachee a une fonction musicale.
```

Traitement :

```text
niveau suivant : toute analyse doit declarer sa fonction :
presence, attaque, grave, pulse, conflit, qualite mix, diagnostic, ou vue.
```

---

## 10. Compatibilite generation

Candidats audites :

```text
line~ ;
curve~ ;
function ;
table~ ;
mc.function ;
poly~ ;
MC family ;
gen~ ;
js.
```

Verdict :

```text
compatible avec corrections fortes.
```

Compatibilite :

- les formes, enveloppes et tables restent sous `GEN-PACKET` ;
- la polyphonie et MC restent option/later ;
- `gen~` reste option/later, jamais obligatoire ;
- `js` reste option/later et hors coeur critique ;
- aucune ligne melodique, rythmique, acid naturalisee ou polytexture n'est confiee a un objet global autonome.

Fragilite `FRAG-MX5-9` :

```text
la generation est le domaine ou un objet puissant peut le plus facilement
devenir compositeur global cache.
```

Traitement :

```text
appliquer CORR-MX5-7 : gen~, js, MC, poly~ et toute logique algorithmique
doivent avoir justification musicale, famille GEN, GEN-PACKET, release,
trace inspirationnelle et fallback simple.
```

Correction specifique `CORR-MX5-GEN-1` :

```text
avant niveau implementation, creer une table GEN-ROLE :
pulse, contretemps, polyrythmie, interlocking, basse/motif, acid naturalisee,
ligne modale/microtonale, trace jazz/Keita Ogawa, voix integree, texture,
retour, silence, halo-source.
```

---

## 11. Compatibilite SPC / HAL / GEN-HAL

Candidats audites :

```text
matrix~ ;
selector~ ;
gate~ ;
line~ ;
curve~ ;
delay/reverb/resonator/convolution families.
```

Verdict :

```text
compatible avec besoin d'une couche dediee.
```

Compatibilite :

- la fiche ne choisit pas de reverb finale ;
- la fiche garde les familles reverb/convolution/resonateur en `LATER` ;
- `SPC`, `HAL` et `GEN-HAL` restent separes ;
- les longs espaces et halos restent hors attaque critique ;
- le halo voulu reste protege par les principes precedents ;
- le controle live reste necessaire pour bypass, force, cut et lock.

Fragilite `FRAG-MX5-10` :

```text
les familles reverb/delai/resonateur/convolution sont trop larges pour etre
traitees correctement dans une simple liste d'objets.
```

Traitement :

```text
appliquer CORR-MX5-6 : creer une couche dediee aux objets/patterns reverb,
space, proximite, immersion, salle mesuree, halo, freeze et grave spatial.
```

---

## 12. Compatibilite vues / diagnostic

Candidats audites :

```text
meter~ ;
scope~ ;
spectroscope~ ;
message UI ;
comment UI ;
print ;
text ;
dict ;
coll ;
js.
```

Verdict :

```text
compatible.
```

Compatibilite :

- vues et logs restent non vitaux ;
- diagnostic reste desactivable ;
- diagnostic n'ecrit pas decision musicale ;
- vue ne conditionne pas `OUT-MAIN` ;
- les risques P0/P1/P2 doivent rester visibles dans une couche UI future, mais l'UI finale n'est pas choisie.

Fragilite `FRAG-MX5-11` :

```text
les objets de vue peuvent devenir confort de developpement puis dependance
de performance.
```

Traitement :

```text
niveau suivant : separer VIEW-PERFORM, VIEW-WARN, VIEW-DIAG et LOG-OFFLINE.
```

---

## 13. Compatibilite candidats rejetes ou repousses

Verdict :

```text
compatible.
```

Compatibilite :

- Max for Live/Ableton est rejete comme runtime principal ;
- RNBO reste `LATER` ;
- externals obligatoires sont rejetes ;
- plugins audio obligatoires sont rejetes ;
- UI comme condition audio est rejetee ;
- analyse lourde sur chemin direct est rejetee.

Point fort :

```text
ce rejet protege la clarte de conception et evite de transformer une recherche
technologique en dependance prematuree.
```

Point de vigilance :

```text
un external ou plugin peut redevenir pertinent plus tard si un besoin musical
tres precis l'exige, mais seulement avec fallback et audit separe.
```

---

## 14. Compatibilite MIN-DID-PC

Verdict :

```text
compatible avec correction.
```

Compatibilite :

- une chaine minimale entree/sortie, direct/safe, transition, etat, routage, analyse simple, generation simple, vue et diagnostic existe ;
- sources optionnelles non requises ;
- analyse lourde, polyphonie, `gen~`, `js`, external, plugin et UI obligatoire sont exclus du minimal ;
- le didgeridoo reste libre, guide, adapte ou direct selon modes plus larges du corpus.

Fragilite `FRAG-MX5-12` :

```text
la table minimale liste encore des objets, alors que la garantie MIN-DID-PC
devrait etre formulee d'abord comme fonctions minimales.
```

Traitement :

```text
appliquer CORR-MX5-4 : definir MIN-DID-PC par roles minimaux :
input, direct, safe, mix, generation simple, analyse simple, espace simple,
protection, controle live, signalisation critique.
```

---

## 15. Compatibilite latence sans compromis

Verdict :

```text
compatible.
```

Compatibilite :

- latence reste enjeu musical ;
- latence reste information et diagnostic, pas autorite de retrait ;
- objets lourds sont repousses ou exclus du chemin critique ;
- aucun compromis artistique automatique n'est autorise ;
- la reduction de charge doit venir de l'organisation, du routage, de la preparation et des chemins non critiques.

Correction `CORR-MX5-8` :

```text
niveau suivant : chaque candidat doit declarer son rapport a la latence :
LAT-DIRECT-SENSITIVE, LAT-RHYTHM-SENSITIVE, LAT-PRESENCE-SENSITIVE,
LAT-SLOW-OK, LAT-OFFLINE, LAT-DIAG.
```

---

## 16. Compatibilite avec les inspirations et besoins musicaux

Verdict :

```text
compatible mais incomplet pour la generation fine.
```

Compatible :

- les objets ne remplacent pas les intentions stylistiques ;
- generation reste sous `GEN-PACKET` ;
- electronique reconnaissable reste non autorisee par defaut ;
- voix nue non integree reste evitee indirectement par les garde-fous de generation et mix ;
- acid, jazz, Keita Ogawa, trance suspendue, dubstep trace, sound system et rituels acoustiques ne deviennent pas styles importes ;
- les inspirations restent des phenomenes/fonctions a produire ou soutenir.

Incomplet :

```text
le niveau 5 ne suffit pas a caracteriser les choix generatifs lies aux
inspirations rythmiques, timbrales et melodiques.
```

Traitement :

```text
la suite doit relier candidats techniques et familles GEN deja definies,
notamment jazz/Keita Ogawa, interlocking, polyrythmie, motifs naturels,
acid naturalisee, voix integree, sub/gong/didgeridoo, espace/halo et retour.
```

---

## 17. Questions restantes classees

Questions qui doivent rester ouvertes :

1. Quels objets candidats passent de `OPTION` a `CANDIDATE` seulement apres justification musicale ?
2. Quels objets candidats doivent etre remplaces par des roles techniques pour eviter un choix final trop tot ?
3. Quelle fiche dediee doit traiter reverb/space/halo/freeze/resonateurs/convolution ?
4. Quelle table doit relier GEN-ROLE, inspiration, fonction, packet, candidat technique et risque ?
5. Quels candidats sont acceptables sur chemin direct ?
6. Quels candidats sont acceptables seulement sur chemin safe ou expressif ?
7. Quels candidats sont strictement diagnostic/vue/offline ?
8. Quels candidats menacent le plus l'electronique reconnaissable ?
9. Quels candidats exigent fallback pour MIN-DID-PC ?
10. Quels candidats doivent etre exclus du prototype final meme s'ils sont utiles pour explorer ?

Questions qui ne doivent pas etre resolues maintenant :

```text
choix final d'objet ;
seuils ;
buffers ;
syntaxe ;
driver ;
controleur ;
patch final ;
tests pratiques.
```

---

## 18. Corrections a reporter dans la suite

Corrections obligatoires :

```text
CORR-MX5-1 : objet candidat peut devenir role technique candidat si necessaire.
CORR-MX5-2 : chaque candidat doit recevoir une classe PATH.
CORR-MX5-3 : separer prototype, final-candidate, diagnostic et rejected.
CORR-MX5-4 : redefinir MIN-DID-PC par roles minimaux avant objets.
CORR-MX5-5 : isoler objets lourds/latents hors chemin critique avec fallback.
CORR-MX5-6 : fiche dediee reverb/space/halo/freeze/resonateurs/convolution.
CORR-MX5-7 : justification musicale obligatoire pour gen~, js, MC, poly~, FFT/pfft, convolution et externals futurs.
CORR-MX5-8 : latence comme enjeu musical, sans degradation artistique automatique.
CORR-MX5-GEN-1 : table GEN-ROLE reliee aux inspirations concretes.
```

Corrections de vocabulaire :

```text
"objet" ne doit pas signifier choix final ;
"pattern" ne doit pas signifier architecture finale ;
"candidate" ne doit pas signifier recommande ;
"LATER" ne doit pas signifier abandonne ;
"REJECTED" vaut pour le niveau actuel, sauf interdits forts deja fixes.
```

---

## 19. Verdict final

Verdict final :

```text
la specification niveau 5 est compatible avec le corpus actif, sous reserve
d'appliquer les corrections CORR-MX5 avant tout niveau plus prescriptif.
```

Elle peut etre conservee comme :

```text
premiere couche d'inventaire Max non definitif.
```

Elle ne doit pas etre utilisee comme :

```text
liste d'objets finaux ;
architecture de patch ;
implementation ;
preuve de faisabilite ;
compromis artistique.
```

Prochaine action recommandee :

```text
creer une matrice roles techniques / candidats / PCH / CHK / PATH / GEN-ROLE
ou, si l'on veut traiter le point le plus fragile d'abord, creer une fiche
dediee objets et patterns reverb / espace / halo / freeze / resonateurs /
convolution.
```

Decision pratique :

```text
la suite la plus coherente est de creer une matrice de liaison niveau 6 :
roles techniques, candidats Max, chemins critiques, packets, risques,
fallbacks et liens generation/reverb.
```
