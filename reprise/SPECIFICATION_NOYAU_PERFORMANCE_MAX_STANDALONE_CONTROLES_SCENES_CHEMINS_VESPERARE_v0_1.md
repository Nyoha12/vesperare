# SPECIFICATION NOYAU PERFORMANCE MAX STANDALONE CONTROLES / SCENES / CHEMINS VESPERARE v0.1

Projet : Vesperare
Statut : specification du noyau de performance Max standalone
Date : 2026-06-23

Sources actives principales :

- `MATRICE_FONCTIONS_CRITICITE_LATENCE_CHEMINS_MAX_STANDALONE_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_MATRICE_FONCTIONS_CRITICITE_LATENCE_CHEMINS_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_NOYAU_JOUABLE_SCENES_COUCHES_v0_1.md`
- `SPECIFICATION_CONTROLES_LIVE_ET_MODES_SCENE_v0_1.md`
- `SPECIFICATION_SCENES_PRIORITAIRES_ET_MACROS_v0_1.md`
- `MATRICE_GEN_ROLE_SCENES_CONTROLES_LIVE_RISQUES_VESPERARE_v0_1.md`
- `SPECIFICATION_GRAVE_GONG_SUB_DIDGERIDOO_CONFLITS_ET_MODES_MAX_STANDALONE_VESPERARE_v0_1.md`
- `SPECIFICATION_SYSTEME_DECISIONNEL_CONCEPTUEL_VESPERARE_v0_1.md`
- `DECISION_RUNTIME_MAX_STANDALONE_LATENCE_SANS_COMPROMIS_VESPERARE_v0_1.md`

But :

```text
definir le noyau de performance Vesperare : ce qui reste toujours sous la main,
ce qui passe par pages ou modes de scene, ce qui est un geste ponctuel, ce qui
reste Auto-Pro, et comment ces decisions se relient aux chemins direct, safe,
interaction jouee, generation, grave critique, espace/halo, analyse et vue.
```

Hors perimetre :

```text
interface graphique finale ;
controleur physique ;
nombre de boutons, potards ou pages reelles ;
mapping MIDI ;
objets Max definitifs ;
syntaxe Max ;
patchers definitifs ;
algorithmes ;
seuils ;
buffers ;
materiel final ;
calibration PA ;
tests pratiques ;
benchmark ;
patch final.
```

---

## 1. Decision centrale

Decision :

```text
le noyau de performance est la couche qui rend le systeme jouable avant toute
UI physique ou patch final.
```

Il doit organiser :

```text
ce qui dirige ;
ce qui colore ;
ce qui agit ponctuellement ;
ce qui protege ;
ce qui est signale ;
ce qui reste direct ;
ce qui peut etre lent ;
ce qui ne doit jamais composer a la place du musicien.
```

Regle :

```text
un controle de performance doit changer une fonction perceptible.
il ne doit pas seulement exposer un parametre technique cache.
```

Le noyau de performance n'est pas :

```text
une UI ;
un controleur ;
un routing ;
un patch ;
une banque de presets ;
une liste d'objets Max.
```

---

## 2. Architecture de performance abstraite

### 2.1. Trois anneaux de jeu

```text
PERF-CORE
Controles permanents toujours accessibles.

PERF-SCENE
Pages ou modes de scene : controles specialises selon la scene dominante ou
la couche active.

PERF-PROTECT
Auto-Pro, signalisation, etats safe, P0/P1/P2 limite.
```

Regle :

```text
PERF-CORE doit rester assez compact pour etre jouable.
PERF-SCENE peut etre plus riche mais ne doit pas cacher les decisions vitales.
PERF-PROTECT ne doit jamais devenir une couche artistique automatique.
```

### 2.2. Quatre types d'action

```text
MODE
Choix d'une logique musicale durable.

FORCE / LOCK / CUT
Imposer, maintenir ou retirer une fonction.

GESTE
Action ponctuelle : impact, retour, cut, bloom, freeze, contraction, pic.

PERMISSION
Autoriser une fonction de scene sans forcer son apparition.
```

Regle :

```text
un geste doit avoir une consequence musicale.
une permission rend possible, elle ne compose pas.
```

### 2.3. Relation aux chemins

```text
PERF-CORE peut agir sur PATH-DIRECT, PATH-SAFE, PATH-PLAY-FAST,
PATH-GRV-CRITICAL, PATH-GEN-MUS et PATH-SPC-HAL-SLOW.

PERF-SCENE prepare surtout PATH-GEN-MUS, PATH-GRV-CRITICAL,
PATH-SPC-HAL-SLOW, PATH-ANA-SLOW et PATH-DIAG-VIEW.

PERF-PROTECT agit sur PATH-SAFE, PATH-GRV-CRITICAL, PATH-ANA-FAST
et PATH-DIAG-VIEW.
```

Interdit :

```text
PATH-DIAG-VIEW ne conditionne jamais l'audio.
PATH-ANA-SLOW ne decide jamais une protection directe.
PATH-SAFE ne devient jamais style par defaut.
```

---

## 3. `PERF-CORE` - Noyau permanent

Ces controles conceptuels doivent rester toujours disponibles.
Ils ne sont pas encore une disposition d'interface.

### 3.1. `CORE-1 - Scene dominante`

Fonction :

```text
dire ce qui dirige le moment.
```

Valeurs :

```text
SCN-1 Didgeridoo / systeme minimum ;
SCN-2 Techno corporelle naturalisee ;
SCN-3 Techno suspendue tres longue ;
SCN-4 Gong / bloom grave / metal-gong ;
SCN-5 Sound-system immersion / domination ;
SCN-6 Voix exposee integree ;
SCN-7 Acid naturalise / ligne vivante ;
SCN-8 Polytexture rythmico-spectrale ;
SCN-9 Transgression controlee.
```

Chemins :

```text
PATH-GEN-MUS ;
PATH-DIAG-VIEW.
```

Regle :

```text
une seule scene dominante a la fois.
les autres fonctions peuvent exister comme LAYER, GESTE ou ETAT.
```

### 3.2. `CORE-2 - Etat de forme`

Fonction :

```text
indiquer la direction temporelle du moment.
```

Valeurs :

```text
preparation ;
maintien ;
retrait ;
retour ;
peak ;
consequence ;
sortie ;
maintien prolonge.
```

Chemins :

```text
PATH-GEN-MUS ;
PATH-SPC-HAL-SLOW ;
PATH-DIAG-VIEW.
```

Regle :

```text
un changement d'etat de forme ne doit pas imposer automatiquement un retour,
une transgression ou une reverb expressive.
```

### 3.3. `CORE-3 - Couches actives`

Fonction :

```text
specifier ce qui enrichit la scene dominante sans la voler.
```

Valeurs :

```text
LAYER-SRC source live ;
LAYER-GRV grave / sub / bloom ;
LAYER-RHY pression rythmique ;
LAYER-LIN ligne / motif ;
LAYER-SPC espace ;
LAYER-HAL halo ;
LAYER-TEX texture / spectre ;
LAYER-TRG transgression ;
LAYER-RET retour / sortie.
```

Regle :

```text
zero a deux couches actives en continu.
au-dela, c'est une forme composee, une transition ou une crise decidee.
```

### 3.4. `CORE-4 - Mode DID`

Fonction :

```text
definir le rapport du didgeridoo au systeme.
```

Valeurs :

```text
libre protege ;
systeme adapte au didgeridoo ;
didgeridoo adapte au systeme ;
guide harmonique ;
source traitee / fonctionnalisee ;
perturbateur.
```

Chemins :

```text
PATH-DIRECT ;
PATH-SAFE ;
PATH-PLAY-FAST ;
PATH-GRV-CRITICAL.
```

Regle :

```text
didgeridoo libre ne veut pas dire didgeridoo ignore.
didgeridoo integre ne veut pas dire didgeridoo force.
```

### 3.5. `CORE-5 - Mode GRV`

Fonction :

```text
definir qui porte, soutient, retire ou libere le grave.
```

Valeurs :

```text
off / absent ;
didgeridoo guide harmonique ;
soutien discret ;
adaptation harmonique du didgeridoo ;
retrait du grave genere ;
graves libres ;
gong / bloom porte ;
sub ponctuel non identifiable ;
souffle / pression aerienne.
```

Chemins :

```text
PATH-GRV-CRITICAL ;
PATH-SAFE ;
PATH-PLAY-FAST ;
PATH-SPC-HAL-SLOW.
```

Regle :

```text
a un moment critique, une seule fonction porte le vrai grave lisible,
sauf graves libres ou transgression explicitement decides.
```

### 3.6. `CORE-6 - Monde spatial`

Fonction :

```text
definir le monde perceptif principal, sans confondre espace et reverb preset.
```

Valeurs :

```text
sec protege ;
proche enrichi ;
commun ;
souffle-air ;
cavite ;
immersif ;
immense ;
metal-gong ;
rythme-pression ;
hors-monde.
```

Chemins :

```text
PATH-SPC-HAL-SLOW ;
PATH-PLAY-FAST si contraction ou proximite critique ;
PATH-SAFE si P0/P1.
```

Regle :

```text
le monde spatial peut etre central, mais il ne doit pas masquer l'attaque ou la
source essentielle hors choix explicite et protections.
```

### 3.7. `CORE-7 - Halo`

Fonction :

```text
decider memoire, queue, lock, force, cut ou momentary.
```

Valeurs :

```text
Auto ;
Lock ;
Force ;
Cut ;
Momentary ;
Safe force.
```

Chemins :

```text
PATH-SPC-HAL-SLOW ;
PATH-SAFE si limitation P0/P1 ;
PATH-DIAG-VIEW si signal.
```

Regle :

```text
GEN-HAL-SOURCE fournit une matiere.
HAL decide le mode.
Halo Lock/Force n'est limite que par P0/P1 ou choix live.
```

### 3.8. `CORE-8 - Corps / retour`

Fonction :

```text
gerer retour, refus, maintien, contraction, impact et sortie.
```

Valeurs :

```text
corps oriente ;
retrait decide ;
retour latent ;
retour prepare ;
retour force ;
refus du retour ;
maintien prolonge ;
impact rare ;
contraction espace ;
retour grave ;
retour pulse.
```

Chemins :

```text
PATH-PLAY-FAST ;
PATH-GRV-CRITICAL ;
PATH-GEN-MUS ;
PATH-SPC-HAL-SLOW.
```

Regle :

```text
un retour peut etre refuse si c'est decide.
un retour automatique arbitraire est interdit.
```

### 3.9. `CORE-9 - Generation / autonomie`

Fonction :

```text
activer, armer ou limiter les roles generatifs sans les transformer en presets.
```

Valeurs :

```text
Off ;
Reponse ;
Variation ;
Proposition ;
Maintien ;
Autonomie forte seulement scene ou choix live explicite.
```

Chemins :

```text
PATH-GEN-MUS ;
PATH-PLAY-FAST si interaction jouee ;
PATH-DIAG-VIEW si blocage ou limite.
```

Regle :

```text
AUT-5 jamais par defaut.
REQUEST ne demarre jamais seul.
```

### 3.10. `CORE-10 - Protection / signalisation`

Fonction :

```text
rendre lisible ce que P0/P1/P2, Auto-Pro, direct, safe et limitations changent
dans la performance.
```

Signaux prioritaires :

```text
P0 actif ;
P1 actif ;
P2 limite ;
direct indisponible ;
source protegee ;
grave limite ;
sub protege ;
halo limite ;
reverb/espace limite ;
motif bloque ;
charge critique ;
safe actif.
```

Chemins :

```text
PATH-DIAG-VIEW ;
PATH-SAFE si action critique.
```

Regle :

```text
la signalisation ne doit pas devenir une deuxieme interface bruyante.
elle signale ce qui modifie la jouabilite.
```

---

## 4. `PERF-SCENE` - Pages ou modes de scene

Une page de scene n'est pas un preset.
Elle rend accessibles les decisions specialisees d'une scene dominante.

### 4.1. `PAGE-SCN-1 - Didgeridoo / systeme minimum`

Controles prioritaires :

```text
Mode DID ;
guidage harmonique ;
adaptation harmonique on/off ;
retrait du grave genere ;
mode GRV ;
traitement source ;
halo source ;
retour corps.
```

Chemins critiques :

```text
PATH-DIRECT ;
PATH-SAFE ;
PATH-PLAY-FAST ;
PATH-GRV-CRITICAL.
```

Signaux :

```text
source protegee ;
grave retire ;
direct limite ;
P0/P1.
```

Interdits :

```text
didgeridoo ignore ;
didgeridoo force en basse ;
dependance au gong physique ;
dependance a convolution ou mesure de salle.
```

### 4.2. `PAGE-SCN-2 - Techno corporelle naturalisee`

Controles prioritaires :

```text
regime de pression ;
pulse explicite / implicite ;
densite ;
accent directeur ;
relation au grave ;
retour / retrait ;
mode GRV ;
didgeridoo comme couche ou guide.
```

Chemins :

```text
PATH-PLAY-FAST ;
PATH-GEN-MUS ;
PATH-GRV-CRITICAL ;
PATH-SAFE.
```

Signaux :

```text
densite limitee ;
source masquee ;
sub protege ;
retour prepare.
```

Interdits :

```text
kick techno banal impose ;
sub standard reconnaissable ;
grille mecanique par defaut ;
retour impose hors decision.
```

### 4.3. `PAGE-SCN-3 - Techno suspendue tres longue`

Controles prioritaires :

```text
maintien prolonge ;
refus du retour ;
memoire techno ;
corps suspendu / retire ;
monde spatial long ;
Halo Lock / Cut / Safe force ;
retour grave ;
retour pulse ;
silence / retrait.
```

Chemins :

```text
PATH-SPC-HAL-SLOW ;
PATH-GEN-MUS ;
PATH-GRV-CRITICAL pour retour grave ;
PATH-SAFE.
```

Signaux :

```text
retour prepare ;
halo limite ;
source protegee ;
sub limite ;
P2 maintenu.
```

Interdits :

```text
Auto-Pro qui raccourcit la suspension parce qu'elle est longue ;
retour techno automatique ;
ambient subi non decide.
```

### 4.4. `PAGE-SCN-4 - Gong / bloom grave / metal-gong`

Controles prioritaires :

```text
fonction gong ;
bloom grave ;
queue longue Lock / Cut ;
rugissement / peak ;
base microtonale ;
relation au vrai sub ;
relation au didgeridoo ;
monde metal-gong ;
halo metal.
```

Chemins :

```text
PATH-GRV-CRITICAL ;
PATH-SPC-HAL-SLOW ;
PATH-PLAY-FAST si gong direct ;
PATH-SAFE.
```

Signaux :

```text
sub protege ;
boue grave ;
source masquee ;
queue limitee ;
P0/P1.
```

Interdits :

```text
gong decoratif ;
bloom confondu avec boue ;
sub brouille ;
queue coupee hors P0/P1 ou choix live.
```

### 4.5. `PAGE-SCN-5 - Sound-system immersion / domination`

Controles prioritaires :

```text
pression grave ;
domination ;
vrai sub ;
mode GRV ;
monde immersif / immense ;
corps / retour ;
source live protegee ;
transgression possible.
```

Chemins :

```text
PATH-GRV-CRITICAL ;
PATH-PLAY-FAST ;
PATH-SPC-HAL-SLOW ;
PATH-SAFE.
```

Signaux :

```text
sub protege ;
headroom ;
source protegee ;
P2 limite par P0/P1.
```

Interdits :

```text
pression sans fonction ;
domination qui ecrase la source live ;
grand espace decoratif non decide.
```

### 4.6. `PAGE-SCN-6 - Voix exposee integree`

Controles prioritaires :

```text
role vocal ;
apparition / retrait ;
integration vocalo-acoustique ;
intelligibilite ;
relation au halo ;
relation au rythme ;
proximite ;
protection voix.
```

Chemins :

```text
PATH-PLAY-FAST si voix jouee ;
PATH-SPC-HAL-SLOW ;
PATH-SAFE ;
PATH-DIAG-VIEW.
```

Signaux :

```text
voix masquee ;
feedback ;
brillance agressive ;
halo limite.
```

Interdits :

```text
voix nue par defaut ;
auto-tune reconnaissable ;
effet chanson non decide ;
reverb qui noie la presence.
```

### 4.7. `PAGE-SCN-7 - Acid naturalise / ligne vivante`

Controles prioritaires :

```text
regime melodique ;
degre de reconnaissance ;
naturalisation acid ;
source du motif ;
mutation timbrale ;
retrait du motif ;
didgeridoo guide ;
mode GRV.
```

Chemins :

```text
PATH-GEN-MUS ;
PATH-PLAY-FAST si source guidee ;
PATH-GRV-CRITICAL si basse-motif ;
PATH-DIAG-VIEW.
```

Signaux :

```text
motif bloque ;
reconnaissance acid trop forte ;
source protegee ;
grave limite.
```

Interdits :

```text
TB-303 reconnaissable par defaut ;
squelch cliche ;
lead synth banal ;
motif autonome sans sortie.
```

### 4.8. `PAGE-SCN-8 - Polytexture rythmico-spectrale`

Controles prioritaires :

```text
densite ;
complexite ;
accent directeur ;
couches actives ;
source directrice ;
grave / halo / espace limites ;
retour / sortie.
```

Chemins :

```text
PATH-GEN-MUS ;
PATH-PLAY-FAST si interaction ;
PATH-GRV-CRITICAL ;
PATH-SPC-HAL-SLOW ;
PATH-SAFE.
```

Signaux :

```text
densite nettoyee ;
source masquee ;
grave limite ;
couches en conflit.
```

Interdits :

```text
complexite sans direction ;
disparition du corps non decidee ;
source essentielle effacee.
```

### 4.9. `PAGE-SCN-9 - Transgression controlee`

Controles prioritaires :

```text
regime transgression ;
source de transgression ;
niveau de risque accepte ;
peak / maintien / sortie ;
graves libres ;
rugissement ;
silence / cut ;
retour corps ;
P0/P1 visibles.
```

Chemins :

```text
PATH-PLAY-FAST ;
PATH-GRV-CRITICAL ;
PATH-SPC-HAL-SLOW ;
PATH-SAFE ;
PATH-DIAG-VIEW.
```

Signaux :

```text
P0 ;
P1 ;
P2 limite ;
safe actif ;
source protegee ;
sortie preparee.
```

Interdits :

```text
perte de qualite non choisie ;
danger PA ;
fatigue sans sortie ;
transgression permanente par defaut.
```

---

## 5. Gestes transversaux

Ces gestes peuvent etre disponibles dans plusieurs scenes.
Ils ne sont pas des effets gratuits.

```text
GESTE-RET-GRV
Retour grave ponctuel.
Chemin : PATH-GRV-CRITICAL / PATH-PLAY-FAST.

GESTE-RET-PULSE
Retour pulse ou cadre corporel.
Chemin : PATH-PLAY-FAST / PATH-GEN-MUS.

GESTE-HAL-CUT
Coupe volontaire du halo.
Chemin : PATH-SPC-HAL-SLOW / PATH-SAFE si P0/P1.

GESTE-HAL-MOM
Capture ou halo momentary.
Chemin : PATH-SPC-HAL-SLOW.

GESTE-BLOOM
Bloom gong ou bloom grave ponctuel.
Chemin : PATH-GRV-CRITICAL / PATH-SPC-HAL-SLOW.

GESTE-FREEZE
Freeze court ou long selon scene.
Chemin : PATH-PLAY-FAST si court, PATH-SPC-HAL-SLOW si long.

GESTE-CONTRACT
Contraction d'espace ou retour de proximite.
Chemin : PATH-PLAY-FAST / PATH-SPC-HAL-SLOW.

GESTE-SILENCE
Retrait, cut, trou, vide actif.
Chemin : PATH-GEN-MUS / PATH-SAFE si protection.

GESTE-TRANS-PEAK
Pic de transgression controlee.
Chemin : PATH-PLAY-FAST / PATH-GRV-CRITICAL / PATH-SPC-HAL-SLOW.
```

Regle :

```text
chaque geste doit declarer preparation, consequence ou sortie.
```

---

## 6. Signalisation de performance

### 6.1. Signaux obligatoires

```text
SIG-0
information discrete : scene active, couche active, etat de forme.

SIG-1
attention : fonction armee, retour prepare, halo lock, graves libres actifs.

SIG-2
limitation jouable : P2 limite, source protegee, grave limite, halo adapte,
motif bloque, densite nettoyee.

SIG-3
critique : P0, P1 fort, safe actif, direct indisponible, feedback, headroom,
sub destructeur.
```

Regle :

```text
SIG-2 et SIG-3 doivent etre lisibles.
SIG-0 et SIG-1 doivent rester sobres.
```

### 6.2. Signaux interdits ou inutiles

```text
signaler chaque micro-adaptation ;
transformer diagnostic en anxiete ;
conditionner l'audio a une vue ;
masquer une limitation P0/P1 ;
afficher une information qui ne change aucune decision possible.
```

### 6.3. Signalisation par chemin

```text
PATH-DIRECT
signaler direct indisponible, source protegee, latence ressentie si critique.

PATH-SAFE
signaler safe actif, P0/P1, limitation d'un choix live.

PATH-PLAY-FAST
signaler latence jouable, retrait, retour ou conflit qui affecte le geste.

PATH-GRV-CRITICAL
signaler sub protege, grave limite, graves libres, porteur du grave, retrait.

PATH-SPC-HAL-SLOW
signaler halo lock/force/cut, reverb limitee, espace limite si P2 affecte.

PATH-GEN-MUS
signaler motif bloque, autonomie limitee, densite nettoyee, retour prepare.

PATH-DIAG-VIEW
ne jamais conditionner audio.
```

---

## 7. Regles de priorite live

### 7.1. Priorite generale

```text
1. P0 securite critique.
2. P1 lisibilite vitale.
3. Source directe et confiance performer.
4. Choix live P2.
5. Scene dominante P3.
6. Generation / proposition P4.
7. Coherence douce / Auto-Pro ordinaire P5.
8. Diagnostic et vues.
```

### 7.2. Si P2 contredit P1

Regle :

```text
P1 peut limiter P2 seulement si la lisibilite vitale est menacee.
la limitation doit etre signalee.
P2 doit redevenir souverain quand le risque disparait.
```

### 7.3. Si scene et couche se contredisent

Regle :

```text
la scene dominante garde la direction.
la couche devient trace, geste, etat ou se retire.
si le conflit est voulu, il devient transgression ou scene composee explicite.
```

### 7.4. Si direct et lenteur se contredisent

Regle :

```text
le direct est preserve.
la fonction lente se prepare, se decale, se limite ou se signale.
```

---

## 8. Fallback MIN-DID-PC

Le noyau de performance minimum doit fonctionner avec didgeridoo + PC.

### 8.1. `MIN-CORE`

```text
CORE-1 Scene dominante ;
CORE-2 Etat de forme ;
CORE-4 Mode DID ;
CORE-5 Mode GRV ;
CORE-8 Corps / retour ;
CORE-10 Protection / signalisation.
```

### 8.2. `MIN-SCENE`

```text
SCN-1 Didgeridoo / systeme minimum ;
SCN-2 Techno corporelle naturalisee simplifiee ;
SCN-3 Techno suspendue tres longue ;
SCN-7 Acid naturalise / ligne vivante comme option ;
SCN-9 Transgression controlee comme geste/etat.
```

### 8.3. `MIN-CHEMINS`

```text
PATH-DIRECT ;
PATH-SAFE ;
PATH-PLAY-FAST ;
PATH-GRV-CRITICAL ;
PATH-GEN-MUS simple ;
PATH-SPC-HAL-SLOW simple ;
PATH-DIAG-VIEW non bloquant.
```

### 8.4. Interdits MIN-DID-PC

```text
dependre du gong physique ;
dependre d'une voix ;
dependre d'une convolution ;
dependre d'une mesure de salle ;
dependre d'un sub puissant ;
dependre d'une UI complexe ;
dependre d'une analyse lente.
```

---

## 9. Questions restantes

### `Q-PERF-1 - Granularite de pages`

Question :

```text
les pages de scene doivent-elles etre strictement une par scene, ou une page
peut-elle representer une superposition recurrente ?
```

Reponse provisoire :

```text
une page peut representer une superposition recurrente plus tard.
pour l'instant, garder les pages par scene dominante et les couches comme
fonctions importees.
```

### `Q-PERF-2 - Combien de CORE sous la main`

Question :

```text
les dix CORE sont-ils trop nombreux pour une surface reelle ?
```

Reponse provisoire :

```text
ce sont des fonctions permanentes, pas encore dix controles physiques.
une future fiche devra grouper ou hierarchiser sans cacher les fonctions vitales.
```

### `Q-PERF-3 - Signalisation`

Question :

```text
quelle signalisation sera assez claire sans surcharger le live ?
```

Reponse provisoire :

```text
SIG-2 et SIG-3 doivent etre prioritaires.
SIG-0 et SIG-1 doivent rester sobres.
```

### `Q-PERF-4 - Prochaine traduction`

Question :

```text
quelle suite avant architecture plus concrete ?
```

Reponse provisoire :

```text
une matrice commandes / packets / etats / signaux de performance pour relier
CORE, PAGE, GESTE, SIG et PATH sans UI finale ni objets Max definitifs.
```

---

## 10. Decision v0.1

Decision :

```text
le noyau de performance Max standalone est defini comme couche de jouabilite :
PERF-CORE, PERF-SCENE, PERF-PROTECT, gestes transversaux, signalisation et
relations aux chemins.
```

Etape suivante recommandee :

```text
auditer cette specification contre le corpus actif, puis creer une matrice
commandes / packets / etats / signaux de performance si l'audit valide le noyau.
```
