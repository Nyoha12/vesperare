# AUDIT COMPATIBILITE ARCHITECTURE MAX STANDALONE DETAILLEE NIVEAU 3 TRADUCTION STRUCTURES MAX AVEC CORPUS v0.1

Projet : Vesperare
Statut : audit compatibilite architecture Max standalone detaillee niveau 3 traduction structures Max
Date : 2026-06-23

Sources actives principales :

- `SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_3_TRADUCTION_STRUCTURES_MAX_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_2_MODULES_MESSAGES_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_2_MODULES_MESSAGES_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_1_AVEC_CORPUS_v0_1.md`
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
verifier que la traduction niveau 3 structures Max standalone reste compatible
avec le corpus actif, conserve les corrections CORR-MX2, ne transforme pas
les structures MX3 en implementation cachee, protege le setup minimum
didgeridoo + PC, et maintient la latence comme enjeu musical sans autorite
de compromis.
```

Hors perimetre :

```text
objets Max ;
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

- traduit les contrats niveau 2 en structures de responsabilite, pas en patch final ;
- conserve Max/MSP standalone comme runtime principal ;
- ne revient pas vers Ableton/Max for Live comme trajectoire active ;
- separe plans audio, controle, analyse, information et diagnostic ;
- preserve `PATH-DIRECT`, `PATH-GRAVE-CRITICAL` et `PATH-MIX-SAFE` ;
- conserve `GEN-PACKET` obligatoire ;
- integre les corrections `CORR-MX2-1` a `CORR-MX2-7` ;
- garde `LAT` hors autorite `DEC/PERM` ;
- maintient `PERM-FORCE`, `GEN-REQUEST` et `HAL-CUT` bornes ;
- protege le setup minimum didgeridoo + PC comme forme complete ;
- ne choisit pas encore objets Max, structures de donnees finales, algorithmes, seuils ou patch final.

Corrections de cadrage requises pour le niveau suivant :

```text
CORR-MX3-1 : rappeler que MX3-* n'est pas une arborescence de fichiers Max.
CORR-MX3-2 : classifier centralise/distribue avant tout design de patchers.
CORR-MX3-3 : definir visibility performer vs diagnostic pour messages critiques.
CORR-MX3-4 : detailler les protocols prioritaires avant implementation.
CORR-MX3-5 : definir ownership et release des packets persistants.
CORR-MX3-6 : garder SPC, HAL et GEN-HAL separes dans la couche patchers abstraits.
CORR-MX3-7 : formaliser les points de verification direct/safe/diagnostic.
```

Ces corrections ne remettent pas en cause la specification niveau 3.

---

## 2. Compatibilite avec le niveau attendu

Le niveau 3 devait definir :

```text
structures Max conceptuelles ;
plans de flux ;
espaces de noms ;
cycle de vie commun ;
persistance de packets ;
structures de responsabilite ;
flux prioritaires ;
setup minimum ;
garde-fous de latence.
```

Il ne devait pas definir :

```text
objets Max ;
syntax finale ;
send/receive ;
dict/coll/pattr ;
algorithmes ;
seuils ;
externals ;
plugins ;
UI finale ;
patch final.
```

Verdict :

```text
compatible.
```

Point de vigilance :

```text
les noms `MX3-*` peuvent sembler proches de patchers reels.
```

Correction `CORR-MX3-1` :

```text
niveau suivant : rappeler que les noms `MX3-*` sont des responsabilites.
ils ne deviennent fichiers Max, abstractions, bpatchers ou sous-patchers
qu'apres une decision explicite.
```

---

## 3. Compatibilite avec les corrections CORR-MX2

Corrections integrees :

```text
CORR-MX2-1 : cycle de vie commun.
CORR-MX2-2 : firewall LAT.
CORR-MX2-3 : PERM-FORCE borne.
CORR-MX2-4 : GEN-REQUEST gate.
CORR-MX2-5 : HAL-CUT signale.
CORR-MX2-6 : espaces de noms MSG.
CORR-MX2-7 : setup didgeridoo seul.
```

Verdict :

```text
couvert.
```

Point fort :

```text
les corrections sont integrees dans les sections structurelles, pas ajoutees
comme notes externes.
```

Point de vigilance :

```text
le niveau suivant devra eviter de les diluer quand il commencera a parler
de patchers abstraits, etat partage, vues et points de verification.
```

---

## 4. Compatibilite plans de flux

Plans presents :

```text
PLANE-AUDIO-CRITICAL ;
PLANE-AUDIO-EXPRESSIVE ;
PLANE-CONTROL-LIVE ;
PLANE-CONTROL-DECISION ;
PLANE-ANALYSIS-FAST ;
PLANE-ANALYSIS-SLOW ;
PLANE-INFO-SIGNAL ;
PLANE-DIAG-HISTORY.
```

Verdict :

```text
compatible.
```

Compatibilite :

- audio critique separe de generation, reverb longue, halo long et diagnostic ;
- audio expressif peut rester riche sans menacer direct ou safe ;
- controle live separe de decision ;
- analyse rapide peut informer protection, pas composer ;
- analyse lente prepare, signale ou historise ;
- diagnostic reste non bloquant.

Fragilite `FRAG-MX3-1` :

```text
les plans ne disent pas encore quels elements doivent etre centralises ou
distribues.
```

Correction `CORR-MX3-2` :

```text
niveau suivant : classifier chaque structure en CENTRAL-CONCEPT,
DISTRIBUTED-POSSIBLE, CRITICAL-LOCAL, DIAG-ONLY ou VIEW-ONLY.
```

---

## 5. Compatibilite etat / packets / persistence

Categories :

```text
STATE-PERSISTENT ;
STATE-TRANSIENT ;
EVENT-ONLY ;
DIAG-HISTORY.
```

Verdict :

```text
compatible.
```

Point fort :

```text
le niveau 3 empeche qu'un evenement devienne permission permanente.
```

Fragilite `FRAG-MX3-2` :

```text
l'ownership des packets persistants n'est pas encore attribue.
on sait qu'ils doivent avoir sortie ou release, mais pas quelle structure
porte cette obligation.
```

Correction `CORR-MX3-5` :

```text
niveau suivant : chaque STATE-PERSISTENT doit declarer :
owner ;
source d'autorite ;
condition d'ecriture ;
condition de lecture ;
condition de sortie ;
release ;
signal si l'etat influence le jeu.
```

---

## 6. Compatibilite controle live / vues

Le niveau 3 conserve :

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

Vues :

```text
VIEW-ALWAYS ;
VIEW-SCENE ;
VIEW-DEEP ;
VIEW-SIG ;
VIEW-DIAG.
```

Verdict :

```text
compatible.
```

Compatibilite :

- `ALWAYS-ON-HAND` reste accessibilite en jeu, pas controle physique definitif ;
- scene prepare, live decide, DEC autorise ;
- macro globale non bornee interdite ;
- vue ne conditionne pas son vital.

Fragilite `FRAG-MX3-3` :

```text
la fiche ne dit pas encore quels messages doivent etre visibles au performer
et lesquels restent diagnostiques.
```

Correction `CORR-MX3-3` :

```text
niveau suivant : classifier les messages en PERFORMER-REQUIRED,
PERFORMER-OPTIONAL, DISCREET, DIAG-HIDDEN.
```

Regle :

```text
un changement qui modifie la jouabilite, la sortie, le halo voulu,
le grave critique, une limitation P2 ou un cut sensible ne doit pas rester
diagnostic cache.
```

---

## 7. Compatibilite sources / didgeridoo / voix / salle

Structures :

```text
MX3-SOURCE-RT ;
PATH-DID-DIRECT ;
PATH-DID-TREAT ;
PATH-GONG-SOURCE ;
PATH-VOICE-INTEGRATED ;
PATH-SKIN-PULSE ;
PATH-ROOM-OBS ;
PATH-TAP-FAST ;
PATH-TAP-SLOW.
```

Verdict :

```text
compatible.
```

Compatibilite :

- didgeridoo peut etre libre, guidant, adapte, suivi par le systeme ou direct protege ;
- voix reste integree ou virtualo-acoustique ;
- gong, peaux, voix et salle restent optionnels ;
- salle informe et ne decide pas ;
- taps rapides et lents sont separes.

Point de vigilance :

```text
la traduction future devra eviter que le didgeridoo devienne seulement un
controleur d'analyse.
```

Garde-fou :

```text
le didgeridoo reste instrument acoustique libre et source musicale,
pas seulement capteur.
```

---

## 8. Compatibilite setup minimum didgeridoo + PC

Le niveau 3 exige :

```text
didgeridoo direct protege ;
analyse presence/attaque/grave/pulse ;
mode Didg Free ;
mode System Follows Didg ;
mode Didg Adapts ;
grave support ou retrait ;
generation guidee ou autonome bornee ;
GEN-PACKET ;
espace proche/immersif ;
halo source ;
Auto-Pro P0/P1/P5 ;
signalisation critique/performance ;
MIX-SAFE.
```

Verdict :

```text
compatible.
```

Point fort :

```text
le setup minimum est explicitement une forme complete avec moins de sources,
pas un mode degrade.
```

Fragilite `FRAG-MX3-4` :

```text
les statuts DISABLED, IGNORED, FALLBACK et SIGNAL sont definis, mais pas encore
assignes famille par famille.
```

Traitement :

```text
niveau suivant : creer une table MIN-DID-PC par famille optionnelle :
gong, voix, peaux, salle avancee, entrees supplementaires.
```

---

## 9. Compatibilite generation

Structures :

```text
MX3-GEN ;
MX3-GEN-REQUEST-GATE ;
MX3-GEN-PREPARE ;
MX3-GEN-ACTIVE ;
MX3-GEN-VARY ;
MX3-GEN-EXIT ;
MX3-GEN-PACKET-VALIDATOR ;
MX3-GEN-TRACE.
```

Familles :

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

Compatibilite :

- `GEN-PACKET` obligatoire ;
- `GEN-REQUEST` ne demarre jamais seul ;
- trace inspiration -> phenomene -> fonction -> famille conservee ;
- jazz/Keita Ogawa, acid, trance, dubstep, sound-system, voix, gong, didgeridoo et peaux restent des phenomenes, pas des styles importes ;
- reconnaissance electronique interdite hors exception decidee ;
- voix nue interdite par defaut ;
- transgression non imposee ;
- variation ne change pas de style.

Point de vigilance :

```text
le niveau suivant devra eviter que `MX3-GEN-ACTIVE` devienne un moteur global
unique qui compose tout.
```

Garde-fou :

```text
generation execute des fonctions autorisees.
elle ne choisit pas la forme globale.
```

---

## 10. Compatibilite grave / gong / sub

Structures :

```text
MX3-GRAVE-CRITICAL ;
MX3-GRAVE-SUPPORT ;
MX3-GRAVE-FREE ;
MX3-GRAVE-CONFLICT ;
MX3-GONG-BLOOM ;
MX3-GONG-HARM ;
MX3-GONG-SPC-SOURCE.
```

Verdict :

```text
compatible.
```

Compatibilite :

- modes utilisateur du grave conserves ;
- didgeridoo peut guider harmoniquement ;
- grave support discret possible ;
- harmoniques du didgeridoo peuvent etre adaptees si necessaire ;
- retrait du grave seulement si conflit deletere ou choix live ;
- graves libres possibles ;
- gong conserve souffle, bloom, harmonie, microtonalite, espace et queue ;
- tension musicale decidee distinguee de conflit deletere.

Fragilite `FRAG-MX3-5` :

```text
GRAVE-CRITICAL est bien protege, mais ses points de verification restent
encore conceptuels.
```

Traitement :

```text
niveau suivant : definir CHK-GRAVE-CRITICAL, CHK-GRAVE-CONFLICT,
CHK-GRAVE-WITHDRAW et CHK-GONG-HARM sans seuils numeriques.
```

---

## 11. Compatibilite espace / reverb / halo

Structures SPC :

```text
MX3-SPC-NEAR ;
MX3-SPC-ROOM ;
MX3-SPC-WORLD ;
MX3-SPC-LONG ;
MX3-SPC-GRAVE ;
MX3-SPC-ROOM-OBS ;
MX3-SPC-EXIT.
```

Structures HAL :

```text
MX3-HAL-MEM ;
MX3-HAL-FREEZE ;
MX3-HAL-LOCK ;
MX3-HAL-FORCE ;
MX3-HAL-CUT ;
MX3-HAL-SAFE ;
MX3-HAL-EXIT.
```

Verdict :

```text
compatible avec vigilance.
```

Compatibilite :

- distance/proximite, room, monde, longue queue, grave spatial et salle sont separes ;
- `SPC-WORLD` exige live ou scene ;
- `SPC-LONG` reste hors attaque critique ;
- salle observee informe, ne decide pas ;
- halo voulu maintenu ;
- `HAL-CUT` exige cause, autorite, cible, duree, sortie et signal ;
- Auto-Pro ne change pas de monde seul ;
- espace long ne sert pas a cacher la latence.

Fragilite `FRAG-MX3-6` :

```text
`NS-SPC-HAL` regroupe les messages pour lisibilite, mais le niveau suivant
pourrait fusionner SPC, HAL et GEN-HAL par commodite technique.
```

Correction `CORR-MX3-6` :

```text
niveau suivant : garder trois responsabilites distinctes :
SPC = distance, monde, room, spatialisation et sortie ;
HAL = memoire, lock, force, cut, freeze et sortie ;
GEN-HAL = generation de matiere destinee a halo, sans autorite HAL.
```

---

## 12. Compatibilite Auto-Pro

Structures :

```text
MX3-AUTOPRO-P0 ;
MX3-AUTOPRO-P1 ;
MX3-AUTOPRO-P5 ;
MX3-AUTOPRO-MONITOR ;
MX3-AUTOPRO-REQUEST ;
MX3-AUTOPRO-RELEASE.
```

Verdict :

```text
compatible.
```

Compatibilite :

- P0 peut agir immediatement ;
- P1 protege lisibilite vitale ;
- P5 stabilise sans gout automatique ;
- `AUTOPRO-REQUEST` passe par DEC/PERM hors P0/P1 ;
- Auto-Pro ne compose pas ;
- Auto-Pro ne change pas de monde ;
- Auto-Pro ne coupe pas halo voulu hors danger critique.

Fragilite `FRAG-MX3-7` :

```text
les points d'action Auto-Pro ne sont pas encore hierarchises en termes
de visibility performer.
```

Traitement :

```text
niveau suivant : toute action Auto-Pro sensible doit declarer SIG-CRITICAL,
SIG-PERFORM, SIG-DISCREET ou DIAG-HIDDEN.
```

---

## 13. Compatibilite mix / sortie / diagnostic

Structures :

```text
MX3-MIX-DIRECT ;
MX3-MIX-SOURCE-TREAT ;
MX3-MIX-GRAVE ;
MX3-MIX-GEN ;
MX3-MIX-SPC ;
MX3-MIX-HAL ;
MX3-MIX-PROTECT ;
MX3-MIX-MAIN ;
MX3-MIX-MONITOR ;
MX3-MIX-REC ;
MX3-MIX-DIAG ;
MX3-MIX-SAFE ;
MX3-REC-DIAG.
```

Verdict :

```text
compatible.
```

Compatibilite :

- `MIX-MAIN` prioritaire ;
- `MIX-SAFE` disponible ;
- direct protege recuperable ;
- `MIX-DIAG` non critique ;
- `MIX-REC` non critique ;
- diagnostic ne decide pas ;
- diagnostic ne bloque pas `OUT-MAIN`.

Correction `CORR-MX3-7` :

```text
niveau suivant : formaliser CHK-DIRECT, CHK-MIX-SAFE, CHK-OUT-MAIN,
CHK-DIAG-NONBLOCK, CHK-VIEW-NONVITAL.
```

---

## 14. Compatibilite latence comme enjeu musical

Le garde-fou LAT pose :

```text
LAT ne doit jamais ecrire directement DEC ou PERM.
```

LAT peut produire :

```text
LAT-PACKET ;
SIG-LAT ;
DIAG-LAT ;
PREPARE-REQUEST ;
proposition technique future ;
alerte de chemin critique.
```

LAT ne peut pas produire :

```text
PERM-LIMIT ;
PERM-CUT ;
DEC-CUT ;
DEC-LIMIT expressif ;
changement de monde ;
retrait de fonction musicale ;
simplification artistique.
```

Verdict :

```text
compatible.
```

Compatibilite :

- la latence reste presence, jouabilite, pression, reactivite et confiance ;
- aucune fonction desiree ne peut etre retiree pour charge ;
- la latence ne devient pas compromis musical ;
- les actions techniques restent organisationnelles ;
- `LAT-PRESENCE` doit rester informatif sans distraire.

Point de vigilance :

```text
le niveau suivant ne doit pas transformer les propositions techniques LAT
en automatisations de retrait.
```

Garde-fou :

```text
LAT propose, signale, prepare ou diagnostique.
DEC/PERM et le choix live gardent l'autorite musicale.
```

---

## 15. Compatibilite avec non-dispersion documentaire

La fiche niveau 3 a une fonction nette :

```text
traduire les contrats niveau 2 en structures de responsabilite Max standalone.
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
decision runtime ;
specification niveau 2.
```

Verdict :

```text
compatible.
```

Point de vigilance :

```text
le nombre de documents est eleve, mais l'index garde la chaine active.
la prochaine couche doit rester strictement derivee de niveau 3 et audit,
pas rouvrir des branches anciennes M4L.
```

---

## 16. Corrections requises pour le niveau suivant

Corrections a reporter :

```text
CORR-MX3-1 : MX3-* = responsabilites, pas arborescence de fichiers Max.
CORR-MX3-2 : classifier centralise/distribue/local/diag/view.
CORR-MX3-3 : classifier visibility performer vs diagnostic.
CORR-MX3-4 : detailler protocols prioritaires avant implementation.
CORR-MX3-5 : attribuer owner/release aux packets persistants.
CORR-MX3-6 : garder SPC, HAL et GEN-HAL separes.
CORR-MX3-7 : formaliser CHK direct/safe/out/diag/view.
```

Corrections non necessaires :

```text
pas de changement de runtime ;
pas de retour a Ableton comme cible principale ;
pas de choix d'objets Max ;
pas de choix d'algorithmes ;
pas de choix de seuils ;
pas de mapping controleur ;
pas de tests pratiques ;
pas de suppression de fonctions pour latence ;
pas de fusion SPC/HAL/GEN-HAL ;
pas de transformation Auto-Pro en compositeur.
```

---

## 17. Questions restantes

Questions a traiter au niveau suivant ou apres :

1. Quelles structures `MX3-*` doivent rester centralisees conceptuellement ?
2. Quelles structures peuvent etre distribuees sans perte de lisibilite ?
3. Quels packets persistants doivent avoir un owner explicite ?
4. Quels messages doivent etre visibles en performance ?
5. Quels messages restent diagnostic cache ?
6. Quels controls `ALWAYS-ON-HAND` devront devenir physiques plus tard ?
7. Quels protocols prioritaires doivent etre detailles en premier ?
8. Comment separer `SPC`, `HAL` et `GEN-HAL` dans une future couche plus proche de Max ?
9. Quels points de verification garantissent direct, safe, out, diagnostic non bloquant et vue non vitale ?
10. Quel niveau de detail accepter au niveau suivant sans commencer l'implementation ?

Ces questions ne bloquent pas la suite.

---

## 18. Decision v0.1

Decision :

```text
la specification Max standalone detaillee niveau 3 traduction structures Max
est compatible avec le corpus actif.
```

Elle peut servir de base au niveau suivant sous conditions :

```text
ne pas transformer `MX3-*` en noms de fichiers Max ;
ne pas choisir encore d'objets Max ;
ne pas choisir encore de structures de donnees finales ;
ne pas choisir d'algorithmes ;
ne pas fixer de seuils ;
ne pas definir l'interface finale ;
ne pas definir le controleur physique ;
ne pas commencer le patch final ;
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
SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_4_PATCHERS_ABSTRAITS_ET_CONTRATS_VESPERARE_v0_1
```

But :

```text
definir une couche de patchers abstraits et contrats internes :
centralise/distribue, owners de packets, visibility performer/diagnostic,
protocols prioritaires, points CHK direct/safe/out/diag/view, separation
SPC/HAL/GEN-HAL, toujours sans objets Max definitifs, syntaxe finale,
algorithmes, seuils, interface finale, controleur physique ou patch final.
```
