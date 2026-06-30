# AUDIT COMPATIBILITE ARCHITECTURE MAX STANDALONE DETAILLEE NIVEAU 4 PATCHERS ABSTRAITS ET CONTRATS AVEC CORPUS v0.1

Projet : Vesperare
Statut : audit compatibilite architecture Max standalone detaillee niveau 4 patchers abstraits et contrats
Date : 2026-06-23

Sources actives principales :

- `SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_4_PATCHERS_ABSTRAITS_ET_CONTRATS_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_3_TRADUCTION_STRUCTURES_MAX_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_3_TRADUCTION_STRUCTURES_MAX_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_2_MODULES_MESSAGES_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_2_MODULES_MESSAGES_VESPERARE_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_1_VESPERARE_v0_1.md`
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
verifier que le niveau 4 patchers abstraits et contrats reste compatible
avec le corpus actif, que les PCH-* ne deviennent pas fichiers Max ou
implementation cachee, que owners/release/visibilites/checks/protocols
respectent les besoins musicaux, et que la suite peut se rapprocher des
objets Max seulement sous forme de candidats non definitifs.
```

Hors perimetre :

```text
objets Max definitifs ;
syntax Max finale ;
send/receive definitifs ;
dict/coll/pattr definitifs ;
matrices audio finales ;
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
compatible avec corrections de cadrage pour le niveau suivant.
```

La fiche est compatible parce qu'elle :

- definit `PCH-*` comme contrats de responsabilite, pas comme fichiers Max ;
- conserve Max/MSP standalone comme runtime principal ;
- ne revient pas vers Ableton/Max for Live comme trajectoire active ;
- applique les corrections `CORR-MX3-1` a `CORR-MX3-7` ;
- garde `LOC-*` comme classes de conception, pas choix de thread ou patcher ;
- garde `VIS-*` comme visibilite performer/diagnostic, pas interface finale ;
- attribue owners et releases aux packets persistants ;
- formalise les points `CHK` critiques ;
- detaille les protocols prioritaires avant implementation ;
- preserve `GEN-PACKET`, `MIX-SAFE`, `PATH-DID-DIRECT`, `LAT` non autoritaire et setup didgeridoo + PC ;
- separe `SPC`, `HAL` et `GEN-HAL`.

Corrections de cadrage requises pour le niveau suivant :

```text
CORR-MX4-1 : objets Max candidats uniquement, jamais definitifs.
CORR-MX4-2 : toute famille d'objet candidate doit pointer vers un PCH, un contrat et un CHK.
CORR-MX4-3 : separer familles audio-rate, control-rate, etat, vue et diagnostic.
CORR-MX4-4 : interdire les objets/patterns qui rendent LAT autoritaire.
CORR-MX4-5 : interdire les candidats qui fusionnent SPC, HAL et GEN-HAL.
CORR-MX4-6 : exiger une alternative ou fallback pour MIN-DID-PC.
CORR-MX4-7 : garder les objets d'interface hors chemin audio vital.
```

Ces corrections ne remettent pas en cause le niveau 4.

---

## 2. Compatibilite avec le niveau attendu

Le niveau 4 devait definir :

```text
patchers abstraits ;
classes LOC ;
classes VIS ;
owners de packets ;
releases ;
checks ;
protocols prioritaires ;
frontieres non-implementation.
```

Il ne devait pas definir :

```text
fichiers Max ;
objets Max ;
abstractions finales ;
bpatchers finaux ;
algorithmes ;
seuils ;
interface finale ;
controleur ;
patch final.
```

Verdict :

```text
compatible.
```

Point fort :

```text
la fiche rapproche l'architecture de Max sans commencer Max.
```

Point de vigilance :

```text
les termes PCH, owner, release et check peuvent donner une impression de
conception logicielle finalisee.
```

Garde-fou :

```text
ils restent des contrats de responsabilite jusqu'a une specification
technique explicite et auditee.
```

---

## 3. Compatibilite des PCH abstraits

La carte `PCH-*` couvre :

```text
application ;
boot/config ;
audio I/O ;
etat ;
live ;
sources ;
analyses ;
decision ;
protocoles ;
generation ;
grave/gong ;
SPC ;
HAL ;
GEN-HAL ;
Auto-Pro ;
mix/out ;
signalisation ;
diagnostic ;
setup minimum.
```

Verdict :

```text
compatible.
```

Compatibilite :

- aucune responsabilite centrale du corpus n'est absente ;
- `PCH-AUDIO-IO`, `PCH-SOURCE-RT`, `PCH-ANA-FAST`, `PCH-DEC-FAST` et `PCH-MIX-OUT` sont bien critiques/localisables ;
- `PCH-REC-DIAG` reste diagnostic seulement ;
- `PCH-SIGNAL-VIEWS` reste view-only ;
- `PCH-GEN-HUB` ne devient pas compositeur global ;
- `PCH-MIN-DID-PC` protege la forme minimale.

Fragilite `FRAG-MX4-1` :

```text
plus le niveau suivant se rapprochera d'objets Max, plus les PCH risquent
d'etre lus comme fichiers.
```

Traitement :

```text
niveau suivant : chaque candidat technique doit etre marque CANDIDATE,
OPTION, REJECTED ou LATER, jamais FINAL.
```

---

## 4. Compatibilite classes LOC

Classes :

```text
LOC-CENTRAL-CONCEPT ;
LOC-DISTRIBUTED-POSSIBLE ;
LOC-CRITICAL-LOCAL ;
LOC-DIAG-ONLY ;
LOC-VIEW-ONLY.
```

Verdict :

```text
compatible.
```

Compatibilite :

- la localisation reste conceptuelle ;
- `LOC-CRITICAL-LOCAL` protege chemins directs et critiques ;
- `LOC-DIAG-ONLY` interdit diagnostic bloquant ;
- `LOC-VIEW-ONLY` interdit vue comme condition audio ;
- `LOC-DISTRIBUTED-POSSIBLE` laisse ouverte la technique sans imposer fragmentation.

Fragilite `FRAG-MX4-2` :

```text
aucune classe ne nomme explicitement les objets candidats qui seraient
hors chemin critique mais couteux ou latents.
```

Traitement :

```text
niveau suivant : ajouter pour les candidats techniques une etiquette
CRITICAL-OK, EXPRESSIVE-OK, SLOW-ONLY, DIAG-ONLY ou REJECTED-FOR-CRITICAL.
```

---

## 5. Compatibilite owners / releases

Le niveau 4 attribue les owners :

```text
CONFIG, SETUP, SCN, LIVE, PERM, DEC, PROTO, GEN, GRAVE, SPC, HAL,
AUTOPRO, MIX, SIG, LAT, DIAG.
```

Verdict :

```text
compatible.
```

Points forts :

- `PERM-PACKET` appartient a `PCH-DEC-CORE` ;
- `DEC-PACKET` peut relever de `PCH-DEC-CORE` ou `PCH-DEC-FAST` ;
- `GEN-PACKET` appartient a `PCH-GEN-HUB` ;
- `LAT-PACKET` appartient a l'analyse, pas a decision ;
- `DIAG-PACKET` appartient au diagnostic ;
- les releases couvrent permission, scene, generation, espace, halo, Auto-Pro, grave et diagnostic.

Fragilite `FRAG-MX4-3` :

```text
certains owners sont doubles, notamment SETUP, SCN, DEC et LAT.
cela est correct conceptuellement mais peut produire concurrence d'ecriture
si le niveau suivant ne distingue pas owner principal, owner delegue et miroir.
```

Traitement :

```text
niveau suivant : utiliser OWNER-PRIMARY, OWNER-DELEGATE et STATE-MIRROR
avant toute structure technique.
```

---

## 6. Compatibilite VIS / vues

Niveaux :

```text
VIS-PERFORMER-REQUIRED ;
VIS-PERFORMER-OPTIONAL ;
VIS-DISCREET ;
VIS-DIAG-HIDDEN.
```

Verdict :

```text
compatible.
```

Compatibilite :

- P0/P1 visibles ;
- direct indisponible visible ;
- `MIX-SAFE` visible ;
- grave retire visible ;
- `HAL-CUT` sensible visible ;
- `PERM-FORCE` visible ;
- P2 limite visible ;
- changement `SPC-WORLD` visible ;
- latence sur chemin critique visible si presence affectee ;
- logs et mesures lentes restent diagnostic.

Fragilite `FRAG-MX4-4` :

```text
la fiche ne definit pas encore la densite, hierarchie et priorite entre
plusieurs signaux simultanes.
```

Traitement :

```text
niveau suivant ou fiche interface : definir ordre de priorite de vue :
SIG-CRITICAL > SIG-PERFORM > SIG-DISCREET > DIAG-HIDDEN.
```

---

## 7. Compatibilite CHK

Points :

```text
CHK-DIRECT ;
CHK-MIX-SAFE ;
CHK-OUT-MAIN ;
CHK-GRAVE-CRITICAL ;
CHK-DIAG-NONBLOCK ;
CHK-VIEW-NONVITAL ;
CHK-LAT-NONAUTH ;
CHK-GEN-PACKET ;
CHK-PERM-FORCE ;
CHK-HAL-CUT ;
CHK-SPC-HAL-SEPARATION ;
CHK-MIN-DID-PC.
```

Verdict :

```text
compatible.
```

Compatibilite :

- les checks protegent les risques critiques du corpus ;
- ils ne fixent pas de seuils ;
- ils peuvent guider la future selection d'objets Max ;
- ils preservent direct, safe, out, diagnostic, vue, latence, generation, halo et setup minimum.

Fragilite `FRAG-MX4-5` :

```text
les checks ne sont pas encore relies a des criteres d'acceptation pour
objets candidats.
```

Traitement :

```text
niveau suivant : chaque objet/pattern candidat doit lister les CHK qu'il
respecte, menace ou rend impossible.
```

---

## 8. Compatibilite LAT

Contrat :

```text
LAT reste information de presence, reactivite, chemin critique, risque,
diagnostic et proposition technique future.
```

Interdits :

```text
PERM-LIMIT ;
PERM-CUT ;
DEC-CUT ;
DEC-LIMIT expressif ;
changement de monde ;
retrait de fonction ;
simplification artistique.
```

Verdict :

```text
compatible.
```

Point fort :

```text
PCH-DEC-CORE ne recoit LAT que comme information.
PCH-DEC-CORE ne doit pas accepter LAT comme autorite.
```

Correction `CORR-MX4-4` :

```text
niveau suivant : tout objet ou pattern candidat lie a la latence doit etre
classe comme mesure, signal, diagnostic, preparation ou organisation.
il ne peut pas etre classe comme autorite de retrait musical.
```

---

## 9. Compatibilite protocols prioritaires

Protocols detailles :

```text
PROTO-DID-GRAVE ;
PROTO-DID-GEN-LINE ;
PROTO-GONG-GRAVE ;
PROTO-HAL-AUTOPRO-MASK ;
PROTO-SCENE-GEN-RET.
```

Verdict :

```text
compatible.
```

Compatibilite :

- didgeridoo reste libre et musical ;
- didgeridoo peut guider grave et ligne sans devenir simple capteur ;
- gong conserve souffle, bloom, harmonie et microtonalite ;
- halo voulu est preserve contre Auto-Pro hors P0/P1 ou choix live ;
- retour est prepare par scene/live/DEC, pas impose par generation ;
- chaque protocol a autorite, interdits, release, visibility et CHK.

Fragilite `FRAG-MX4-6` :

```text
les protocols non prioritaires restent a detailler plus tard.
ce n'est pas bloquant, mais le niveau suivant ne doit pas implementer
un protocol non detaille comme s'il etait valide.
```

Traitement :

```text
niveau suivant : tout candidat d'objet ou pattern lie a un protocol non
detaille doit rester LATER ou NEEDS-PROTOCOL.
```

---

## 10. Compatibilite generation

Le niveau 4 conserve :

```text
PCH-GEN-HUB ;
PCH-GEN-PULSE-RHY ;
PCH-GEN-LINE-MEL ;
PCH-GEN-SOURCE-HARM ;
PCH-GEN-TEXTURE-BLOOM ;
PCH-GEN-VOICE ;
PCH-GEN-RET-FORM ;
PCH-GEN-HAL-SOURCE ;
PCH-GEN-PACKET-VALIDATOR ;
PCH-GEN-TRACE.
```

Verdict :

```text
compatible.
```

Compatibilite :

- `GEN-PACKET` obligatoire ;
- `PERM-PACKET` obligatoire pour START ;
- REQUEST ne demarre jamais ;
- VARY reste dans meme role musical ;
- TRACE conserve inspiration -> phenomene -> fonction ;
- generation ne compose pas forme globale ;
- style entier non importe ;
- voix nue, lead banal et electronique reconnaissable restent interdits par defaut.

Point de vigilance :

```text
la prochaine couche ne doit pas choisir un objet generatif global qui
court-circuite les familles GEN.
```

Traitement :

```text
objets/patterns candidats GEN doivent etre classes par famille GEN et
doivent porter GEN-PACKET.
```

---

## 11. Compatibilite SPC / HAL / GEN-HAL

Separation :

```text
PCH-SPC-HUB ;
PCH-HAL-HUB ;
PCH-GEN-HAL-SOURCE.
```

Verdict :

```text
compatible.
```

Compatibilite :

- SPC gere distance, proximite, room, monde, longue queue, grave spatial, salle et sortie ;
- HAL gere memoire, freeze, lock, force, cut, safe, exit et halo voulu ;
- GEN-HAL produit seulement matiere destinee au halo ;
- GEN-HAL ne decide pas HAL ;
- HAL ne decide pas SPC ;
- SPC ne genere pas matiere par lui-meme.

Correction `CORR-MX4-5` :

```text
niveau suivant : refuser tout objet/pattern candidat qui impose de fusionner
SPC, HAL et GEN-HAL sans controle separe.
```

---

## 12. Compatibilite setup minimum didgeridoo + PC

Le niveau 4 conserve :

```text
PATH-DID-DIRECT ;
MIX-SAFE ;
analyse presence/attaque/grave/pulse ;
Didg Free ;
System Follows Didg ;
Didg Adapts ;
grave support/retrait ;
generation guidee ou bornee ;
GEN-PACKET ;
espace proche/immersif ;
halo source ;
Auto-Pro P0/P1/P5 ;
signalisation critique/performance.
```

Verdict :

```text
compatible.
```

Point fort :

```text
les sources optionnelles ont des statuts DISABLED, FALLBACK, SIGNAL ou
IGNORED, sans bloquer MIN-DID-PC.
```

Correction `CORR-MX4-6` :

```text
niveau suivant : tout objet/pattern candidat necessitant gong, voix, peaux,
mesure de salle avancee ou entree supplementaire doit declarer un fallback,
un statut LATER, ou un rejet pour MIN-DID-PC.
```

---

## 13. Compatibilite Auto-Pro / mix / diagnostic

Verdict :

```text
compatible.
```

Compatibilite :

- Auto-Pro protege, monitor, signale, propose et relache ;
- Auto-Pro ne compose pas ;
- Auto-Pro ne change pas de monde ;
- Auto-Pro ne coupe pas halo voulu hors danger critique ;
- `MIX-MAIN` prioritaire ;
- `MIX-SAFE` disponible ;
- `MIX-DIRECT` recuperable ;
- diagnostic n'ecrit pas decision musicale ;
- diagnostic ne bloque pas `OUT-MAIN`, `MIX-SAFE` ou audio critique.

Point de vigilance :

```text
la prochaine couche ne doit pas choisir d'objet de monitoring ou de vue
comme dependance de sortie principale.
```

Correction `CORR-MX4-7` :

```text
objets/patterns d'interface, vue, logging, monitoring et diagnostic restent
hors chemin audio vital.
```

---

## 14. Compatibilite frontieres non-implementation

Le niveau 4 interdit encore :

```text
patcher final ;
nom de fichier ;
objet Max ;
message Max exact ;
send/receive ;
dict ;
coll ;
pattr ;
matrix ;
poly ;
mc ;
js ;
gen ;
rnbo ;
external ;
plugin ;
buffer ;
driver ;
interface audio ;
controleur ;
UI finale.
```

Verdict :

```text
compatible.
```

Point de vigilance :

```text
le niveau suivant pourra commencer a citer des familles d'objets Max
candidats. Cela augmente fortement le risque de premature implementation.
```

Garde-fou :

```text
les candidats doivent rester non definitifs, motives par PCH/CONTRACT/CHK,
et marques CANDIDATE/OPTION/LATER/REJECTED.
```

---

## 15. Corrections requises pour le niveau suivant

Corrections a reporter :

```text
CORR-MX4-1 : objets Max candidats uniquement, jamais definitifs.
CORR-MX4-2 : chaque candidat pointe vers PCH, CONTRACT et CHK.
CORR-MX4-3 : separer audio-rate, control-rate, etat, vue, diagnostic.
CORR-MX4-4 : LAT reste mesure/signal/diagnostic/preparation, jamais autorite.
CORR-MX4-5 : refuser fusion technique SPC/HAL/GEN-HAL.
CORR-MX4-6 : exiger fallback ou statut LATER pour MIN-DID-PC.
CORR-MX4-7 : UI/log/monitoring hors chemin audio vital.
```

Corrections non necessaires :

```text
pas de changement de runtime ;
pas de retour a Ableton comme cible principale ;
pas de choix final d'objets Max ;
pas de choix d'algorithmes ;
pas de choix de seuils ;
pas de mapping controleur ;
pas de tests pratiques ;
pas de suppression de fonctions pour latence ;
pas de fusion SPC/HAL/GEN-HAL ;
pas de transformation Auto-Pro en compositeur.
```

---

## 16. Questions restantes

Questions a traiter au niveau suivant ou apres :

1. Quels objets Max peuvent etre cites comme candidats sans devenir choix final ?
2. Faut-il separer objets natifs Max, MSP, Gen, JS, RNBO, externals et plugins comme classes differentes ?
3. Quels candidats sont autorises sur chemin critique ?
4. Quels candidats doivent rester hors chemin critique ?
5. Quels candidats menacent la latence ressentie ?
6. Quels candidats menacent la separation SPC/HAL/GEN-HAL ?
7. Quels candidats imposent une source optionnelle et doivent etre LATER pour MIN-DID-PC ?
8. Quels candidats d'interface sont seulement VIEW/DIAG ?
9. Quels candidats d'etat risquent de transformer STATE en decision cachee ?
10. Faut-il auditer les objets candidats avant toute maquette Max ?

Ces questions ne bloquent pas la suite.

---

## 17. Decision v0.1

Decision :

```text
la specification niveau 4 patchers abstraits et contrats est compatible
avec le corpus actif.
```

Elle peut servir de base au niveau suivant sous conditions :

```text
ne pas transformer PCH-* en fichiers Max ;
ne pas choisir d'objets Max definitifs ;
ne pas choisir d'algorithmes ;
ne pas fixer de seuils ;
ne pas definir interface finale ;
ne pas definir controleur physique ;
ne pas commencer patch final ;
ne pas laisser LAT devenir autorite ;
ne pas laisser GEN demarrer sans GEN-PACKET ;
ne pas laisser PERM-FORCE devenir global ;
ne pas banaliser HAL-CUT ;
ne pas fusionner SPC, HAL et GEN-HAL ;
ne pas perdre MIN-DID-PC ;
ne pas retirer de fonctions musicales au nom de la latence.
```

Prochaine action recommandee :

```text
SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_VESPERARE_v0_1
```

But :

```text
lister des familles d'objets, patterns et mecanismes Max candidats non
definitifs par PCH/CONTRACT/CHK : audio-rate, control-rate, etat, message,
vue, diagnostic, generation, espace, halo, mix et latence, sans choisir
encore objets finaux, algorithmes, seuils, externals obligatoires,
plugins, interface finale, controleur physique ou patch final.
```
