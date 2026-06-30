# AUDIT COHERENCE GLOBALE PRE-ARCHITECTURE OPERATIONNELLE MAX STANDALONE VESPERARE v0.1

Projet : Vesperare
Statut : audit global avant architecture operationnelle Max standalone
Date : 2026-06-23

Sources actives principales :

- `INDEX_ACTIF_VESPERARE_CONCEPTION.md`
- `DECISION_RUNTIME_MAX_STANDALONE_LATENCE_SANS_COMPROMIS_VESPERARE_v0_1.md`
- `SPECIFICATION_SYSTEME_DECISIONNEL_CONCEPTUEL_VESPERARE_v0_1.md`
- `SPECIFICATION_NOYAU_PERFORMANCE_MAX_STANDALONE_CONTROLES_SCENES_CHEMINS_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_SPECIFICATION_NOYAU_PERFORMANCE_MAX_STANDALONE_AVEC_CORPUS_v0_1.md`
- `MATRICE_COMMANDES_PACKETS_ETATS_SIGNAUX_PERFORMANCE_MAX_STANDALONE_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_MATRICE_COMMANDES_PACKETS_ETATS_SIGNAUX_PERFORMANCE_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_GENERATION_FINE_PAR_GEN_ROLE_MAX_STANDALONE_VESPERARE_v0_1.md`
- `MATRICE_GEN_ROLE_SCENES_CONTROLES_LIVE_RISQUES_VESPERARE_v0_1.md`
- `SPECIFICATION_TECHNIQUE_CONCEPTUELLE_REVERB_SPACE_HALO_FREEZE_RESONATEURS_CONVOLUTION_MAX_STANDALONE_VESPERARE_v0_1.md`
- `SPECIFICATION_GRAVE_GONG_SUB_DIDGERIDOO_CONFLITS_ET_MODES_MAX_STANDALONE_VESPERARE_v0_1.md`
- `MATRICE_FONCTIONS_CRITICITE_LATENCE_CHEMINS_MAX_STANDALONE_VESPERARE_v0_1.md`
- `MATRICE_BLOCS_RESPONSABILITES_PACKETS_CONTROLES_VESPERARE_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_CONCEPTUELLE_VESPERARE_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_1_VESPERARE_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_2_MODULES_MESSAGES_VESPERARE_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_4_PATCHERS_ABSTRAITS_ET_CONTRATS_VESPERARE_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_VESPERARE_v0_1.md`
- `MATRICE_ARCHITECTURE_MAX_STANDALONE_NIVEAU_6_ROLES_TECHNIQUES_CANDIDATS_CHEMINS_RISQUES_VESPERARE_v0_1.md`

But :

```text
verifier la coherence globale du corpus Vesperare avant de passer a une
architecture operationnelle Max standalone, en controlant les contradictions,
les glissements de methode, les risques de sur-specification, la compatibilite
musicale, la compatibilite runtime, la latence sans compromis, la generation,
l'espace/halo, le grave/didgeridoo/gong, les commandes, les etats, les packets,
les signaux et MIN-DID-PC.
```

Hors perimetre :

```text
implementation ;
patch final ;
objets Max definitifs ;
syntaxe Max definitive ;
send/receive definitifs ;
dictionaries definitifs ;
routages audio finaux ;
seuils numeriques ;
buffers finaux ;
driver audio final ;
interface audio finale ;
controleur physique ;
UI finale ;
mapping MIDI/OSC/HID ;
tests pratiques ;
benchmark ;
plan de calibration PA final.
```

---

## 1. Verdict general

Verdict :

```text
le corpus est coherent pour passer a une architecture operationnelle abstraite
Max standalone.
```

Limite importante :

```text
le corpus n'est pas encore pret pour une implementation, une UI finale, un
controleur, un patch Max final ou un choix d'objets definitifs.
```

La suite correcte n'est donc pas :

```text
coder ;
dessiner l'interface finale ;
choisir les objets Max definitifs ;
choisir les routages finaux ;
choisir les seuils ;
creer une matrice scenes / charge prescriptive ;
continuer automatiquement un niveau 7 technique.
```

La suite correcte est :

```text
specifier une architecture operationnelle abstraite Max standalone qui assemble
audio critique, commandes, etats, packets, signaux, decision, generation,
espace/halo, grave/didgeridoo/gong, Auto-Pro et latence, sans patch final.
```

Corrections globales a appliquer dans la suite :

```text
CORR-GLOB-1 : les anciens documents Max for Live restent historiques ou abstraits, pas trajectoire active.
CORR-GLOB-2 : les niveaux Max standalone 1 a 6 restent des contrats conceptuels, pas un patch en attente.
CORR-GLOB-3 : la prochaine fiche doit recoller le corpus, pas ajouter une couche de vocabulaire autonome.
CORR-GLOB-4 : les commandes `CMD-*` ne doivent pas devenir l'UI.
CORR-GLOB-5 : les packets de lecture ne doivent pas remplacer les packets owners.
CORR-GLOB-6 : `LAT` reste un enjeu de presence et d'architecture, pas une autorite de degradation.
CORR-GLOB-7 : `P5` et Auto-Pro restent hygiene/coherence, pas composition.
CORR-GLOB-8 : les scenes restent DOM/LAYER/GESTE/ETAT/TRACE, pas cases exclusives.
CORR-GLOB-9 : `SPC`, `HAL` et `GEN-HAL` restent separes.
CORR-GLOB-10 : `MIN-DID-PC` reste forme complete, pas mode pauvre.
CORR-GLOB-11 : les inspirations restent des phenomenes retenus, pas styles importes.
CORR-GLOB-12 : aucun test pratique ne doit devenir condition de conception a ce stade.
```

---

## 2. Coherence de trajectoire documentaire

Verdict :

```text
coherent mais volumineux.
```

Le chainage actif est clair :

```text
intention -> besoins -> caracterisation -> questions -> fonctions ->
generation/protocoles/analyses -> decision -> architecture conceptuelle ->
runtime Max standalone -> noyau performance -> commandes/packets/etats/signaux.
```

Point solide :

```text
les fichiers recents corrigent les trajectoires anciennes sans les effacer.
```

Exemples :

- Max for Live / Ableton est conserve comme historique ou cible secondaire ;
- Max standalone est devenu runtime principal ;
- la portabilite reste discipline interne, pas objectif directeur ;
- les documents d'architecture technique restent conceptuels ;
- la matrice commandes recentre le corpus sur la jouabilite.

Fragilite `FRAG-GLOB-1` :

```text
le nombre de fichiers peut donner l'impression que toutes les couches ont la
meme autorite.
```

Correction :

```text
l'index actif doit rester la seule porte d'entree.
les documents les plus recents arbitrent les contradictions.
les documents Max for Live ne doivent plus etre lus comme trajectoire principale.
```

---

## 3. Coherence musicale generale

Verdict :

```text
coherent.
```

Le corpus maintient les decisions musicales centrales :

- pression rythmique importante, sans techno banale obligatoire ;
- espace important, mais pas decoratif par defaut ;
- techno suspendue potentiellement tres longue si decidee ;
- sons electroniques reconnaissables interdits par defaut, exceptions explicites possibles ;
- sons naturalises, virtualo-acoustiques, ambigus ou assimilables a des phenomenes acoustiques ;
- didgeridoo libre, protege, guide, perturbateur ou integre selon mode ;
- gong/bloom/sub/souffle comme fonctions graves complexes, pas simple effet ;
- acid naturalise comme ligne vivante, pas clone TB-303 ;
- voix integree, pas voix nue ni auto-tune reconnaissable ;
- jazz/Keita comme phenomenes de tension, mouvement, precision, interlocking et jeu, pas style plaque ;
- transgression possible : masse, rugissement, voix brute, saturation, nudite sonore, espace immense, dissonance/microtonalite ;
- inspirations secondaires superposables ou absentes selon fonction, pas selon obligation de reconnaissance.

Point solide :

```text
le projet ne cherche plus a definir un son fixe.
il definit des fonctions perceptives, des modes de relation et des garde-fous.
```

Fragilite `FRAG-GLOB-2` :

```text
certains termes techniques peuvent paraitre plus fixes que l'intention musicale.
```

Exemples :

```text
packet ;
owner ;
state ;
command ;
path ;
role technique ;
candidate object.
```

Correction :

```text
dans la suite, chaque terme technique doit etre rattache a une fonction musicale
audible ou jouable.
```

---

## 4. Coherence avec methodes pro / academiques

Verdict :

```text
coherent au niveau methodologique.
```

Le corpus rejoint des pratiques solides sans les importer comme dogme :

- separation intention / fonction / decision / implementation ;
- separation chemin critique audio et chemins d'analyse ;
- separation commandes, etats, packets, signaux et diagnostic ;
- explicitation des autorites et conflits ;
- signalisation des limitations ;
- controle de l'autonomie generative ;
- contrats de responsabilite avant patch final ;
- distinction direct / safe / analyse / generation / espace / diagnostic ;
- refusal de prendre les tests pratiques comme base de conception prematuree.

Point solide :

```text
la methode ne depend pas d'un algorithme miracle.
elle depend de contrats, responsabilites, permissions, sorties et garde-fous.
```

Fragilite `FRAG-GLOB-3` :

```text
la methode pourrait devenir trop administrative si elle accumule des categories
sans reduire la charge operationnelle.
```

Correction :

```text
l'architecture operationnelle doit grouper les categories en centres de
responsabilite jouables et auditables.
```

---

## 5. Coherence runtime Max standalone

Verdict :

```text
coherent.
```

Decision active :

```text
Max/MSP standalone est le runtime principal.
```

Statuts corriges :

```text
Max for Live / Ableton : secondaire ou historique.
RNBO : horizon pour sous-moteurs stabilises.
Linux / embarque : horizon futur, pas cible actuelle.
Portabilite : discipline interne, pas priorite principale.
```

Point solide :

```text
le corpus a corrige la confusion entre Max for Live, Max standalone et RNBO.
```

Fragilite `FRAG-GLOB-4` :

```text
plusieurs documents anciens utilisent encore une terminologie Ableton ou M4L.
```

Correction :

```text
la future architecture operationnelle doit lire ces documents comme abstraction
historique, et ne garder que les fonctions transposables en Max standalone.
```

---

## 6. Coherence latence / charge / absence de compromis

Verdict :

```text
coherent.
```

Regle active :

```text
la latence est un enjeu musical de presence, precision, confiance corporelle et
reactivite.
elle ne doit pas autoriser de compromis musical reel.
```

Coherence interne :

- `LAT-0/LAT-1` protegent direct, attaque, interaction jouee, retour critique ;
- reverbs longues, convolution, analyses lentes, diagnostic et vues restent hors chemin critique ;
- `LAT-PACKET` informe mais ne decide pas ;
- une surcharge ne justifie pas une version artistique appauvrie ;
- la reponse attendue est architecture, placement, calcul, priorite, materiel ou interface audio, pas suppression d'une fonction desiree.

Fragilite `FRAG-GLOB-5` :

```text
le corpus dit "sans compromis", mais l'architecture operationnelle devra quand
meme organiser les priorites temps reel.
```

Correction :

```text
les priorites temps reel doivent etre des priorites de chemin, pas des
permissions de degradation.
```

---

## 7. Coherence decisionnelle

Verdict :

```text
coherent.
```

Le systeme decisionnel reste stable :

```text
contexte -> demande -> autorite -> permission -> indices -> confiance ->
conflits -> reaction bornee -> signalisation -> sortie.
```

Ordre :

```text
P0 > P1 > P2 > P3 > P4 > P5 > DIAG.
```

Points conformes :

- P0 agit immediatement ;
- P1 limite la lisibilite vitale ;
- P2 reste choix live explicite ;
- P3 prepare et contextualise ;
- P4 propose ;
- P5 maintient/cohere sans composer ;
- DIAG observe sans conditionner l'audio ;
- les reactions expressives exigent fonction, contexte, autorite, permission et sortie.

Fragilite `FRAG-GLOB-6` :

```text
P1 peut etre difficile a distinguer de P5 dans une implementation future.
```

Correction :

```text
P1 = lisibilite vitale et limitation sensible.
P5 = coherence douce, non esthetique, sans retrait de choix live.
la prochaine architecture doit garder cette separation.
```

---

## 8. Coherence noyau performance

Verdict :

```text
coherent.
```

Le noyau performance est bien pose :

```text
PERF-CORE : fonctions permanentes ;
PERF-SCENE : pages ou modes de scene ;
PERF-PROTECT : protection, signalisation, safe.
```

Points conformes :

- les `CORE-*` ne sont pas des boutons physiques ;
- les `PAGE-SCN-*` ne sont pas des presets ;
- les gestes transversaux gardent consequence et sortie ;
- les scenes restent superposables ;
- `MIN-DID-PC` reste complet ;
- la signalisation est limitee a ce qui change la jouabilite.

Fragilite `FRAG-GLOB-7` :

```text
le noyau performance est riche ; expose tel quel il serait trop lourd.
```

Correction :

```text
l'architecture operationnelle doit separer fonctions permanentes, commandes,
pages, etats et UI future sans choisir l'UI.
```

---

## 9. Coherence commandes / packets / etats / signaux

Verdict :

```text
coherent.
```

La matrice recente corrige un manque :

```text
elle relie les decisions jouables aux packets et etats sans passer directement
a l'interface ou au patch Max.
```

Points conformes :

- `CMD-*` = intention jouable ;
- `*-PACKET` = enveloppe fonctionnelle ;
- `STATE-*` = etat persistant ou semi-persistant ;
- `SIG-*` = information de jouabilite ;
- `ACK/LIMIT/BLOCK/REL` = reponse a commande ;
- `GEN-PACKET`, `PERM-PACKET`, `DEC-PACKET`, `SIG-PACKET`, `LAT-PACKET` restent lisibles ;
- `PERF-PACKET` et `STATE-PACKET` sont aides de lecture, pas owners musicaux.

Fragilite `FRAG-GLOB-8` :

```text
les `STATE-*` pourraient devenir un etat global monolithique si la suite ne
definit pas les owners.
```

Correction :

```text
l'architecture operationnelle doit declarer owners, lecteurs, ecrivains,
release et visibilite des etats.
```

---

## 10. Coherence generation

Verdict :

```text
coherent.
```

Le bloc generation reste compatible :

- la generation produit des fonctions situees ;
- `GEN-PACKET` est obligatoire ;
- `REQUEST` ne demarre jamais seul ;
- `AUT-5` n'est jamais par defaut ;
- `VARY` reste dans le meme role musical ;
- les motifs peuvent etre reconnaissables si fonction et sortie existent ;
- electronique reconnaissable interdite par defaut, exception explicite seulement ;
- voix nue interdite par defaut ;
- acid naturalise, jazz/Keita, voix, polyrythmie, interlocking, halo-source, sub/gong/breath restent des roles, pas des styles complets.

Fragilite `FRAG-GLOB-9` :

```text
le nombre de `GEN-ROLE` peut donner une impression de catalogue.
```

Correction :

```text
la suite doit traiter les `GEN-ROLE` comme fonctions activables, combinables,
limitees et sorties par contexte.
```

---

## 11. Coherence reverb / espace / halo

Verdict :

```text
coherent.
```

Le corpus conserve une separation correcte :

```text
SPC = monde spatial, distance, enveloppement, matiere, protection.
HAL = memoire, queue, lock, force, cut, momentary, safe force.
GEN-HAL = matiere generee destinee au halo.
```

Points conformes :

- pas de reverb unique ;
- pas de preset spatial obligatoire ;
- les dimensions spatiales sont combinables ;
- le halo voulu n'est pas retire hors P0/P1, sortie decidee ou choix live ;
- les espaces longs sont possibles si decides ;
- mesure de salle avec un micro possible comme information pratique, pas dependance ;
- MIN-DID-PC ne depend pas d'une reverb complexe ou d'une mesure de salle.

Fragilite `FRAG-GLOB-10` :

```text
les mondes spatiaux peuvent etre mal lus comme presets de reverb.
```

Correction :

```text
un monde spatial doit rester un contrat : fonction, source, distance,
enveloppement, queue, grave spatial, reactivite, protection, controle live,
sortie et fallback.
```

---

## 12. Coherence grave / gong / sub / didgeridoo

Verdict :

```text
coherent.
```

Le corpus separe correctement :

- vrai grave lisible ;
- vrai sub ;
- grave harmonique ;
- bloom grave ;
- souffle grave ;
- base microtonale ;
- didgeridoo libre/protege/guide/integre/perturbateur ;
- gong bloom, metal-gong, queue longue, rugissement ;
- adaptation harmonique optionnelle ;
- retrait du grave genere ;
- soutien discret ;
- graves libres explicitement decides.

Regle coherente :

```text
a un moment critique, une seule fonction porte le vrai grave lisible, sauf
graves libres, transgression controlee, scene composee explicite ou P0/P1.
```

Fragilite `FRAG-GLOB-11` :

```text
le grave est le noeud le plus risque techniquement et musicalement.
```

Correction :

```text
l'architecture operationnelle doit traiter le grave comme chemin critique et
comme contrat de lisibilite, pas comme simple piste de basse.
```

---

## 13. Coherence scenes / superpositions

Verdict :

```text
coherent.
```

Regle centrale :

```text
une seule DOM dirige.
les autres inspirations peuvent etre LAYER, GESTE, ETAT ou TRACE.
```

Points conformes :

- techno suspendue peut etre longue ;
- acid peut etre couche, ligne, trace ou scene specifique ;
- gong peut etre bloom, base, geste ou monde ;
- sound-system peut etre domination, immersion, pression ou etat ;
- polytexture peut etre densite ou interaction ;
- transgression peut etre geste, etat ou peak ;
- didgeridoo minimum peut rester DOM sans etre reduit.

Fragilite `FRAG-GLOB-12` :

```text
certaines superpositions recurrentes pourraient devenir plus qu'une DOM avec
couches.
```

Correction :

```text
ne creer une scene composee que si une combinaison revient souvent et demande
des controles propres.
```

---

## 14. Coherence MIN-DID-PC

Verdict :

```text
coherent.
```

Le setup minimum conserve :

- source directe ;
- protection ;
- mode didgeridoo ;
- mode grave ;
- generation simple ;
- espace/halo simple ;
- retour / sortie ;
- signalisation ;
- diagnostic non bloquant.

Interdits conserves :

```text
dependance au gong physique ;
dependance a la voix ;
dependance a la convolution ;
dependance a la mesure de salle ;
dependance a un sub puissant ;
dependance a une UI complexe ;
lecture comme mode degrade.
```

Fragilite `FRAG-GLOB-13` :

```text
le minimum conceptuel reste riche.
```

Correction :

```text
l'architecture operationnelle doit definir le minimum par responsabilites
necessaires, pas par nombre de modules ou controles.
```

---

## 15. Contradictions resolues

### 15.1. Ableton / Max for Live vs Max standalone

Statut :

```text
resolu.
```

Decision :

```text
Max standalone principal.
M4L/Ableton secondaire ou historique.
```

### 15.2. Portabilite vs conception actuelle

Statut :

```text
resolu.
```

Decision :

```text
portabilite comme discipline interne, pas comme contrainte directrice.
```

### 15.3. Latence vs richesse musicale

Statut :

```text
resolu conceptuellement.
```

Decision :

```text
pas de compromis musical reel.
si une fonction est lourde, on change l'architecture plutot que la fonction.
```

### 15.4. Sons electroniques reconnaissables

Statut :

```text
resolu.
```

Decision :

```text
interdits par defaut.
exceptions explicites possibles.
naturalisation et ambiguite acoustique recherchees.
```

### 15.5. Reverb professionnelle vs choix artistique

Statut :

```text
resolu.
```

Decision :

```text
socle pro non arbitraire pour coherence/mix ;
choix artistiques sous controle live ou scene ;
Auto-Pro ne compose pas.
```

### 15.6. Tests pratiques

Statut :

```text
resolu pour la phase actuelle.
```

Decision :

```text
la conception ne doit pas dependre de tests pratiques.
les tests pratiques ne sont pas une prochaine etape conceptuelle.
ils pourront exister plus tard seulement comme verification technique ou sonore,
si le projet entre en implementation.
```

---

## 16. Risques residuels

### `RIS-GLOB-1 - Sur-documentation`

Risque :

```text
les fichiers deviennent plus lourds que le systeme a concevoir.
```

Traitement :

```text
continuer uniquement via l'index actif.
ne creer une fiche que si elle consolide, verifie ou specifie un saut necessaire.
```

### `RIS-GLOB-2 - Architecture en mille couches`

Risque :

```text
continuer les niveaux Max comme une progression automatique.
```

Traitement :

```text
la suite doit etre une architecture operationnelle abstraite qui recolle les
couches, pas un niveau 7 accumulatif.
```

### `RIS-GLOB-3 - UI deduite trop tot`

Risque :

```text
transformer CORE, CMD ou PAGE en controles physiques.
```

Traitement :

```text
UI et controleur restent hors perimetre.
```

### `RIS-GLOB-4 - Etat global trop vague`

Risque :

```text
STATE-PACKET devient un bloc magique.
```

Traitement :

```text
definir owners, ecritures, lectures, release et visibilite.
```

### `RIS-GLOB-5 - Signalisation bruyante`

Risque :

```text
trop de signaux visibles.
```

Traitement :

```text
signaler seulement ce qui modifie la jouabilite.
```

### `RIS-GLOB-6 - Generation catalogue`

Risque :

```text
les GEN-ROLE deviennent presets ou familles de sons.
```

Traitement :

```text
les relire comme fonctions musicales situees avec sortie.
```

### `RIS-GLOB-7 - Grave trop confiant`

Risque :

```text
supposer que le sub, le didgeridoo, le gong, la salle et le PA cohabiteront sans
architecture stricte.
```

Traitement :

```text
owner grave, chemin critique et signalisation doivent etre centraux dans la
prochaine fiche.
```

### `RIS-GLOB-8 - Latence traitee seulement comme chiffre`

Risque :

```text
reduire la latence a un buffer ou une estimation.
```

Traitement :

```text
traiter la latence comme presence musicale, chemin critique et confiance de jeu.
```

---

## 17. Matrice de readiness

```text
Intention / identite musicale
Statut : pret pour architecture operationnelle abstraite.

Besoins generation
Statut : pret, sous condition GEN-PACKET / PERM / sortie.

Reverb / espace / halo
Statut : pret, sous condition separation SPC/HAL/GEN-HAL.

Grave / gong / sub / didgeridoo
Statut : pret, mais zone critique prioritaire.

Systeme decisionnel
Statut : pret, sous condition P0/P1/P2/P5 lisibles.

Noyau performance
Statut : pret, mais ne pas lire comme UI.

Commandes / packets / etats / signaux
Statut : pret, sous condition owners et releases dans la suite.

Runtime Max standalone
Statut : pret.

Latence
Statut : pret conceptuellement, a traiter comme architecture sans compromis.

MIN-DID-PC
Statut : pret, a proteger comme forme complete.

Implementation
Statut : non pret.

UI finale
Statut : non pret.

Objets Max definitifs
Statut : non pret.

Tests pratiques
Statut : non requis pour la suite conceptuelle.
```

---

## 18. Decision pour la suite

Decision :

```text
le projet peut passer a une specification d'architecture operationnelle
abstraite Max standalone.
```

Cette fiche devra :

```text
1. recoller les couches existantes ;
2. definir les centres de responsabilite operationnels ;
3. separer chemin audio critique, chemins joues, analyses rapides, analyses lentes, generation, espace/halo, grave, signalisation et diagnostic ;
4. definir owners d'etat et packets persistants ;
5. definir flux de commandes sans syntaxe Max finale ;
6. definir points de release et fallback ;
7. proteger MIN-DID-PC ;
8. integrer la latence comme enjeu musical et architecturel ;
9. conserver SPC/HAL/GEN-HAL ;
10. ne choisir ni UI, ni controleur, ni objets Max definitifs.
```

Prochaine fiche logique :

```text
SPECIFICATION_ARCHITECTURE_OPERATIONNELLE_ABSTRAITE_MAX_STANDALONE_VESPERARE_v0_1.md
```

Ne pas faire ensuite :

```text
implementation ;
patch Max final ;
choix d'objets definitifs ;
UI ;
controleur ;
seuils ;
tests pratiques comme methode de conception ;
matrice scenes / charge prescriptive.
```
