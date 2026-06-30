# AUDIT COMPATIBILITE ARCHITECTURE MAX STANDALONE NIVEAU 6 ROLES TECHNIQUES CANDIDATS CHEMINS RISQUES AVEC CORPUS v0.1

Projet : Vesperare
Statut : audit compatibilite architecture Max standalone niveau 6 roles techniques / candidats / chemins / risques
Date : 2026-06-23

Sources actives principales :

- `MATRICE_ARCHITECTURE_MAX_STANDALONE_NIVEAU_6_ROLES_TECHNIQUES_CANDIDATS_CHEMINS_RISQUES_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_VESPERARE_v0_1.md`
- `SPECIFICATION_BLOC_GENERATION_SONORE_MOTIFS_RYTHMIQUES_MELODIQUES_v0_1.md`
- `BESOINS_GENERATION_v0_4.md`
- `REVERBS_ESPACE_REACTIF_v0_2.md`
- `DECISION_RUNTIME_MAX_STANDALONE_LATENCE_SANS_COMPROMIS_VESPERARE_v0_1.md`

But :

```text
verifier que la matrice niveau 6 organise correctement les roles techniques,
chemins, candidats, risques, latence, generation, espace et halo, sans devenir
une architecture de patch, sans choisir d'objets finaux, et sans contredire le
corpus musical et fonctionnel actif.
```

Hors perimetre :

```text
choix final d'objet ;
syntaxe Max ;
patcher final ;
routage final ;
algorithme ;
seuil ;
buffer ;
driver ;
interface audio ;
controleur ;
UI finale ;
test pratique ;
benchmark ;
implementation.
```

---

## 1. Verdict general

Verdict :

```text
compatible avec corrections de cadrage avant fiche technique specialisee.
```

La matrice est compatible parce qu'elle :

- transforme les objets Max en roles techniques ;
- explicite les classes `PATH` et `LAT` ;
- definit `MIN-DID-PC` par roles minimaux ;
- garde Max/MSP standalone comme runtime principal ;
- garde les objets nommes comme candidats, pas choix finaux ;
- preserve direct, safe, out, diagnostic et vue ;
- interdit `LAT` comme autorite musicale ;
- maintient `GEN-PACKET` pour les roles generation ;
- relie generation aux inspirations concretes sans importer de style entier ;
- separe `SPC`, `HAL` et `GEN-HAL` ;
- repousse reverb/convolution/resonateurs/freeze vers une fiche dediee.

Corrections requises :

```text
CORR-MX6-1 : separer plus nettement Statut candidat et Relation patch dans les futures matrices.
CORR-MX6-2 : garder les noms d'objets comme exemples, jamais comme colonnes obligatoires de decision finale.
CORR-MX6-3 : creer une fiche dediee reverb/space/halo/freeze/resonateurs/convolution avant tout choix spatial technique.
CORR-MX6-4 : creer ensuite une fiche generation fine par GEN-ROLE si l'audit reverb ne suffit pas a clarifier les roles generatifs.
CORR-MX6-5 : formaliser une nomenclature de chemins audio avant tout routage Max reel.
CORR-MX6-6 : maintenir MIN-DID-PC sans dependance a mesure de salle, source optionnelle, polyphonie, gen~, js, FFT/pfft, external ou plugin.
CORR-MX6-7 : toute classe LAT doit rester signal, organisation ou diagnostic, jamais retrait musical automatique.
CORR-MX6-8 : toute source optionnelle doit declarer DISABLED, FALLBACK, SIGNAL ou IGNORED en absence.
```

Ces corrections ne remettent pas en cause la matrice.

---

## 2. Compatibilite avec le niveau attendu

Le niveau 6 devait produire :

```text
roles techniques ;
candidats possibles ;
classes PATH ;
classes LAT ;
noyau MIN-DID-PC par roles ;
roles GEN lies aux inspirations ;
separation SPC/HAL/GEN-HAL ;
risques et prochaines fiches.
```

Il ne devait pas produire :

```text
patch final ;
objets finaux ;
routage final ;
algorithmes ;
seuils ;
materiel ;
controleur ;
implementation.
```

Verdict :

```text
compatible.
```

Fragilite `FRAG-MX6-1` :

```text
les tables restent denses, et certaines colonnes peuvent etre lues comme
selection technique si elles sont sorties de leur contexte.
```

Traitement :

```text
conserver la matrice comme document de liaison, pas comme cahier de patch.
```

---

## 3. Compatibilite non-finalite technique

Verdict :

```text
compatible avec vigilance.
```

Compatibilite :

- les objets Max restent exemples ou candidats ;
- `FINAL-CANDIDATE` ne signifie pas objet final ;
- les roles sont plus importants que les objets ;
- les objets puissants restent `LATER-CANDIDATE` sauf justification musicale et audit.

Fragilite `FRAG-MX6-2` :

```text
le terme FINAL-CANDIDATE peut etre mal compris.
```

Traitement :

```text
niveau suivant : rappeler que FINAL-CANDIDATE signifie "candidat compatible
avec un futur patch final", pas choix final.
```

---

## 4. Compatibilite MIN-DID-PC

Verdict :

```text
compatible.
```

La matrice definit correctement les roles minimaux :

```text
MIN-INPUT-DID ;
MIN-DID-DIRECT ;
MIN-MIX-SAFE ;
MIN-OUT ;
MIN-ANA-SIMPLE ;
MIN-GEN-SIMPLE ;
MIN-SPC-SIMPLE ;
MIN-PROTECT ;
MIN-LIVE-CONTROL ;
MIN-SIGNAL.
```

Compatibilite :

- didgeridoo + PC reste forme complete ;
- sources optionnelles non requises ;
- analyse lourde non requise ;
- reverb complexe non requise ;
- polyphonie, gen~, js, external et plugin non requis ;
- controle live et signalisation critique restent presents.

Point de vigilance :

```text
MIN-SPC-SIMPLE est utile mais ne doit pas devenir dependance a une reverb
complexe ou a une mesure de salle.
```

Correction `CORR-MX6-6` :

```text
MIN-SPC-SIMPLE doit pouvoir rester simple, stable et non bloquant.
```

---

## 5. Compatibilite chemins audio

Verdict :

```text
compatible avec correction.
```

Compatibilite :

- `PATH-DID-DIRECT` protege le didgeridoo ;
- `PATH-MIX-SAFE` protege la recuperation ;
- `PATH-OUT-MAIN` reste vital ;
- `PATH-SPC-SEND`, `PATH-HAL-SEND` et `PATH-GEN-HAL-SEND` restent separes ;
- `PATH-DIAG-TAP` et `PATH-VIEW-TAP` ne sont pas vitaux ;
- `send~` / `receive~` restent options, pas defaut implicite.

Fragilite `FRAG-MX6-3` :

```text
la nomenclature de chemins existe conceptuellement mais pas encore comme
contrat suffisamment strict pour un futur patch.
```

Traitement :

```text
appliquer CORR-MX6-5 avant tout routage Max reel.
```

---

## 6. Compatibilite transitions

Verdict :

```text
compatible.
```

Compatibilite :

- transitions de protection separent protection et esthetique ;
- transitions live dependent du choix explicite ;
- transitions scene ne remplacent pas live ;
- retour corporel est reconnu comme role ;
- transitions halo et espace restent separees ;
- transitions mix ne deviennent pas composition cachee.

Point de vigilance :

```text
TRANS-RETURN devra etre precise plus tard pour eviter un retour trop mecanique
apres techno suspendue tres longue.
```

---

## 7. Compatibilite etat / packets

Verdict :

```text
compatible avec vigilance.
```

Compatibilite :

- `STATE-CURRENT`, `STATE-CONFIG`, `STATE-PRESET`, `STATE-PACKET`, `STATE-TABLE`, `STATE-MIRROR` et `STATE-DIAG` sont separes ;
- `dict`, `coll`, `pattr` restent candidats ;
- l'etat ne remplace pas `LIVE`, `DEC` ou `PERM` ;
- les packets restent explicites.

Fragilite `FRAG-MX6-4` :

```text
STATE-PRESET et STATE-TABLE peuvent encore devenir composition cachee si une
future fiche ne separe pas rappel, preparation, scene et geste.
```

Traitement :

```text
future couche : chaque preset/table doit declarer fonction, permission,
sortie, risque et controle live.
```

---

## 8. Compatibilite timing / horloges

Verdict :

```text
compatible.
```

Compatibilite :

- `CLOCK-BODY` soutient pression rythmique ;
- `CLOCK-GEN` soutient generation autorisee ;
- `CLOCK-DIAG` et `CLOCK-VIEW` restent non vitaux ;
- `CLOCK-HOST-GLOBAL` reste `LATER-CANDIDATE` ;
- aucune grille globale n'est imposee.

Point de vigilance :

```text
le projet doit rester capable de techno suspendue tres longue sans devenir
une session grillee de facon banalement lineaire.
```

---

## 9. Compatibilite analyses

Verdict :

```text
compatible.
```

Compatibilite :

- analyses simples restent candidates ;
- analyse de partiels/harmonie reste later ;
- diagnostic spectral reste non vital ;
- analyse grave/conflit ne decide pas seule ;
- analyse latence reste observation.

Fragilite `FRAG-MX6-5` :

```text
ANA-GRAVE-CONFLICT peut etre confondu avec autorisation de retrait automatique.
```

Traitement :

```text
garder les modes graves deja valides : didgeridoo guide, grave soutient,
harmoniques adaptees, grave se retire si conflit deletere, graves libres.
aucun mode n'est impose par analyse seule.
```

---

## 10. Compatibilite GEN-ROLE

Verdict :

```text
compatible, et meilleur que le niveau 5 pour les inspirations.
```

La matrice couvre :

```text
GEN-PULSE ;
GEN-COUNTERTIME ;
GEN-POLYRHYTHM ;
GEN-INTERLOCKING ;
GEN-BASS-MOTIF ;
GEN-ACID-NAT ;
GEN-LINE-MODAL-MICRO ;
GEN-JAZZ-KEITA ;
GEN-VOICE-INTEGRATED ;
GEN-TEXTURE-BLOOM ;
GEN-RETURN ;
GEN-SILENCE ;
GEN-HAL-SOURCE ;
GEN-SUB-GONG-BREATH ;
GEN-DID-GUIDED-LINE.
```

Compatibilite :

- Keita Ogawa/jazz apparait comme energie rythmique, deplacements, tension, pas style plaque ;
- acid naturalisee apparait comme torsion/timbre, pas TB-303 ;
- voix reste integree, pas nue ni auto-tune reconnaissable ;
- interlocking et polyrythmie sont lisibles ;
- sub/gong/didgeridoo restent musicalement relies ;
- retour apres suspension est un role explicite ;
- halo-source ne decide pas le halo.

Fragilite `FRAG-MX6-6` :

```text
GEN-JAZZ-KEITA, GEN-POLYRHYTHM et GEN-INTERLOCKING devront etre caracterises
plus finement avant tout algorithme, sinon le systeme risque de produire une
complexite generique.
```

Traitement :

```text
apres la fiche reverb/space, prevoir une fiche generation fine par GEN-ROLE
si ces roles restent trop abstraits.
```

---

## 11. Compatibilite SPC / HAL / GEN-HAL

Verdict :

```text
compatible mais point le plus fragile actuellement.
```

Compatibilite :

- `SPC` regroupe proximite, commun, immersif, cavite, huge-long, sub-space, room-adapt ;
- `HAL` regroupe auto, lock, force, cut, momentary, safe-force ;
- `GEN-HAL-MATERIAL` reste separe ;
- reverb/convolution/freeze/resonateurs restent `LATER-CANDIDATE` ;
- l'espace tres long reste possible si decide ;
- le halo voulu ne doit pas etre supprime hors P0/P1 ;
- la salle peut etre consideree sans devenir condition live.

Fragilite `FRAG-MX6-7` :

```text
la matrice confirme que reverb/space/halo/freeze/resonateurs/convolution est
le plus gros bloc encore trop large.
```

Traitement :

```text
appliquer CORR-MX6-3 : creer une fiche dediee reverb/space/halo/freeze/
resonateurs/convolution avant toute decision technique spatiale.
```

---

## 12. Compatibilite latence sans compromis

Verdict :

```text
compatible.
```

Compatibilite :

- `LAT-DIRECT-OBS`, `LAT-RHYTHM-OBS`, `LAT-PRESENCE-OBS`, `LAT-CHARGE-PLAN`, `LAT-SPC-SLOW-ZONE` et `LAT-DIAG-LOG` sont non autoritaires ;
- la latence reste enjeu musical ;
- aucune degradation artistique automatique n'est autorisee ;
- l'organisation de charge se fait hors critique ;
- les espaces longs et halos restent en zones lentes quand c'est pertinent.

Correction `CORR-MX6-7` :

```text
dans toute fiche future, LAT peut signaler ou organiser, jamais decider une
suppression musicale.
```

---

## 13. Compatibilite vues / diagnostic

Verdict :

```text
compatible.
```

Compatibilite :

- `VIEW-CRITICAL` est utile pour P0/P1 ;
- `VIEW-PERFORM` clarifie modes live ;
- `VIEW-DISCREET` reste secondaire ;
- `VIEW-DIAG` et `LOG-OFFLINE` restent non vitaux ;
- la vue ne remplace pas l'ecoute.

Point de vigilance :

```text
la future UI devra garder une hierarchie stricte pour ne pas saturer le jeu.
```

---

## 14. Compatibilite rejets / later

Verdict :

```text
compatible.
```

Compatibilite :

- Ableton/M4L runtime principal rejete ;
- RNBO core later ;
- externals/plugins obligatoires rejetes ;
- UI audio condition rejetee ;
- FFT direct decision rejetee ;
- LAT authority rejetee ;
- GEN global composer rejete ;
- SPC-HAL fused rejete.

Point fort :

```text
la matrice protege la conception contre une derive technologique prematuree.
```

---

## 15. Questions restantes

Questions a garder :

1. Le terme `FINAL-CANDIDATE` doit-il etre renomme plus tard pour eviter l'ambiguite ?
2. La future fiche reverb doit-elle etre organisee par role spatial, par source, par danger, ou par objet/pattern ?
3. Quel niveau de detail faut-il pour `GEN-JAZZ-KEITA` avant toute traduction algorithmique ?
4. Les roles `SPC-SUB-SPACE` et `GEN-SUB-GONG-BREATH` doivent-ils etre audites ensemble avec le grave/gong ?
5. Les chemins `PATH-SPC-SEND`, `PATH-HAL-SEND` et `PATH-GEN-HAL-SEND` sont-ils suffisants ou faut-il ajouter des sous-chemins ?
6. Faut-il une fiche specifique "nomenclature de chemins audio" avant reverb technique ?
7. Les vues critiques doivent-elles etre pensees avant ou apres la fiche reverb ?

Questions hors perimetre maintenant :

```text
seuils ;
buffers ;
driver ;
materiel ;
controleur ;
syntaxe Max ;
patch final ;
benchmark ;
tests pratiques.
```

---

## 16. Verdict final

Verdict final :

```text
la matrice niveau 6 est compatible avec le corpus actif.
```

Elle peut etre utilisee comme :

```text
grille de liaison entre besoins musicaux, roles techniques, candidats Max,
chemins critiques, risques, generation, espace, halo et latence.
```

Elle ne doit pas etre utilisee comme :

```text
patch final ;
schema de routage final ;
liste d'objets definitifs ;
choix de reverb ;
choix d'algorithmes generatifs ;
autorisation de compromis artistique.
```

Prochaine action recommandee :

```text
SPECIFICATION_TECHNIQUE_CONCEPTUELLE_REVERB_SPACE_HALO_FREEZE_RESONATEURS_CONVOLUTION_MAX_STANDALONE_VESPERARE_v0_1
```

Raison :

```text
la matrice montre que SPC/HAL/GEN-HAL est le bloc le plus large et le plus
risque a laisser vague avant d'aller vers une architecture plus technique.
```

Suite probable ensuite :

```text
audit de cette fiche reverb/space/halo ;
puis fiche generation fine par GEN-ROLE si les roles jazz/Keita/interlocking,
acid naturalisee, voix integree, sub/gong/didgeridoo et retour demandent encore
une caracterisation technique plus precise.
```
