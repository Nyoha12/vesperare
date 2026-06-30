# AUDIT COMPATIBILITE SPECIFICATION NOYAU PERFORMANCE MAX STANDALONE AVEC CORPUS v0.1

Projet : Vesperare
Statut : audit compatibilite specification noyau performance Max standalone
Date : 2026-06-23

Sources actives principales :

- `SPECIFICATION_NOYAU_PERFORMANCE_MAX_STANDALONE_CONTROLES_SCENES_CHEMINS_VESPERARE_v0_1.md`
- `MATRICE_FONCTIONS_CRITICITE_LATENCE_CHEMINS_MAX_STANDALONE_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_MATRICE_FONCTIONS_CRITICITE_LATENCE_CHEMINS_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_NOYAU_JOUABLE_SCENES_COUCHES_v0_1.md`
- `SPECIFICATION_CONTROLES_LIVE_ET_MODES_SCENE_v0_1.md`
- `SPECIFICATION_SCENES_PRIORITAIRES_ET_MACROS_v0_1.md`
- `MATRICE_GEN_ROLE_SCENES_CONTROLES_LIVE_RISQUES_VESPERARE_v0_1.md`
- `SPECIFICATION_GRAVE_GONG_SUB_DIDGERIDOO_CONFLITS_ET_MODES_MAX_STANDALONE_VESPERARE_v0_1.md`
- `SPECIFICATION_SYSTEME_DECISIONNEL_CONCEPTUEL_VESPERARE_v0_1.md`

But :

```text
verifier que la specification du noyau de performance Max standalone respecte
le corpus actif, rend le systeme jouable sans definir une UI finale, conserve
les scenes comme centres de gravite superposables, protege MIN-DID-PC, et ne
glisse pas vers routage, objets Max, presets ou patch final.
```

Hors perimetre :

```text
interface graphique finale ;
controleur physique ;
nombre de boutons ou pages reelles ;
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

## 1. Verdict general

Verdict :

```text
compatible avec corrections de cadrage avant traduction en commandes/packets.
```

La fiche est compatible parce qu'elle :

- definit le noyau de performance comme couche de jouabilite, pas UI ;
- conserve `PERF-CORE`, `PERF-SCENE` et `PERF-PROTECT` ;
- garde `CORE-*` comme fonctions permanentes, pas controles physiques ;
- conserve les scenes comme centres de gravite non exclusifs ;
- conserve `DOM / LAYER / GESTE / ETAT` ;
- relie les decisions aux chemins sans choisir de routing final ;
- preserve didgeridoo direct, grave critique, P0/P1/P2, signalisation et latence sans compromis ;
- conserve un fallback `MIN-DID-PC` complet ;
- ne choisit aucun objet Max, seuil, buffer, mapping, controleur ou patch.

Corrections requises :

```text
CORR-PERF-1 : lire les CORE comme fonctions permanentes, pas comme dix controles physiques imposes.
CORR-PERF-2 : lire les PAGE-SCN comme pages conceptuelles, pas comme presets de scene.
CORR-PERF-3 : ne jamais faire de PATH-DIAG-VIEW une condition audio.
CORR-PERF-4 : les gestes transversaux doivent toujours garder preparation, consequence ou sortie.
CORR-PERF-5 : PERF-PROTECT protege et signale, il ne compose pas.
CORR-PERF-6 : MIN-DID-PC reste une forme complete, pas un mode degrade.
CORR-PERF-7 : la prochaine fiche doit traduire CORE/PAGE/GESTE/SIG/PATH en commandes, packets et etats, sans UI finale.
CORR-PERF-8 : ne pas confondre page de superposition future et scene dominante actuelle.
```

Ces corrections ne remettent pas en cause la fiche.

---

## 2. Compatibilite non-UI

Verdict :

```text
compatible.
```

Points conformes :

- la fiche repete que le noyau n'est pas une interface ;
- elle ne fixe pas le nombre de boutons, pages ou potards ;
- elle ne fixe pas de mapping MIDI ;
- elle ne choisit pas de controleur ;
- elle ne definit pas de patchers ou objets Max.

Fragilite `FRAG-PERF-1` :

```text
les dix CORE peuvent etre mal lus comme une surface physique obligatoire.
```

Traitement :

```text
appliquer CORR-PERF-1 dans la suite.
```

---

## 3. Compatibilite scenes non exclusives

Verdict :

```text
compatible.
```

Points conformes :

- une seule scene dominante reste la regle ;
- les autres fonctions peuvent etre couches, gestes ou etats ;
- les pages de scene ne sont pas des presets ;
- les superpositions restent possibles ;
- les futures pages de superposition sont admises plus tard, sans les confondre avec la DOM actuelle.

Correction `CORR-PERF-2` :

```text
une PAGE-SCN donne acces aux decisions utiles.
elle ne force pas l'apparition de tous les elements.
```

Correction `CORR-PERF-8` :

```text
une page de superposition recurrente pourra exister plus tard, mais elle devra
declarer DOM, couches, gestes et protections.
```

---

## 4. Compatibilite controles live

Verdict :

```text
compatible.
```

Points conformes :

- les groupes A a L sont repris sous forme de fonctions permanentes ou pages ;
- les controles sous la main sont separes des preparations de scene ;
- Auto-Pro reste N3 ;
- les gestes restent ponctuels et consequences ;
- Lock/Force/Cut restent des choix explicites limites seulement par P0/P1.

Fragilite `FRAG-PERF-2` :

```text
la fiche peut encore exposer trop de decisions pour une performance reelle.
```

Traitement :

```text
la prochaine matrice commandes/packets devra grouper, hierarchiser et signaler
sans cacher les fonctions vitales.
```

---

## 5. Compatibilite chemins / latence

Verdict :

```text
compatible.
```

Points conformes :

- `PATH-DIRECT`, `PATH-SAFE`, `PATH-PLAY-FAST`, `PATH-GRV-CRITICAL`,
`PATH-GEN-MUS`, `PATH-SPC-HAL-SLOW` et `PATH-DIAG-VIEW` restent separes ;
- le direct reste preserve ;
- les fonctions lentes peuvent etre centrales mais restent hors attaque critique ;
- diagnostic et vue ne conditionnent pas l'audio ;
- PATH-SAFE ne devient pas style par defaut.

Correction `CORR-PERF-3` :

```text
aucune vue, diagnostic ou signalisation ne doit devenir condition du son.
```

---

## 6. Compatibilite didgeridoo / MIN-DID-PC

Verdict :

```text
compatible.
```

Points conformes :

- `MIN-CORE` conserve scene, etat, mode DID, mode GRV, corps/retour et protection/signalisation ;
- `MIN-SCENE` conserve didgeridoo, techno corporelle simplifiee, suspension, acid optionnel et transgression comme geste/etat ;
- `MIN-CHEMINS` conserve direct, safe, play-fast, grave critique, generation simple, espace/halo simple et vue non bloquante ;
- le minimum ne depend pas de gong, voix, convolution, mesure de salle, sub puissant ou UI complexe.

Correction `CORR-PERF-6` :

```text
MIN-DID-PC est une forme complete.
il ne doit pas etre traite comme version pauvre du systeme.
```

---

## 7. Compatibilite grave / gong / sub

Verdict :

```text
compatible.
```

Points conformes :

- `CORE-5` reprend les modes GRV essentiels ;
- `PAGE-SCN-4` et `PAGE-SCN-5` conservent gong/bloom, sub, domination et protections ;
- `PATH-GRV-CRITICAL` reste distinct ;
- grave libre n'est pas par defaut ;
- didgeridoo n'est pas baisse en cachette ;
- gong decoratif reste interdit.

Point de vigilance `FRAG-PERF-3` :

```text
les pages SCN-4 et SCN-5 risquent d'exposer beaucoup de grave, espace et halo.
```

Traitement :

```text
les commandes/packets devront separer porteur du grave, monde spatial, halo et
signalisation.
```

---

## 8. Compatibilite generation

Verdict :

```text
compatible.
```

Points conformes :

- `CORE-9` garde autonomie bornee ;
- `AUT-5` reste seulement scene ou choix live explicite ;
- `REQUEST` ne demarre pas seul ;
- les pages acid, polytexture, voix, transgression et retour conservent leurs garde-fous ;
- generation reste fonction musicale situee, pas preset.

Fragilite `FRAG-PERF-4` :

```text
la relation entre CORE-9, PAGE-SCN et GEN-PACKET doit etre formalisee avant une
architecture plus concrete.
```

Traitement :

```text
prochaine matrice : commandes / packets / etats / signaux.
```

---

## 9. Compatibilite signalisation

Verdict :

```text
compatible.
```

Points conformes :

- `SIG-0` a `SIG-3` distinguent information, attention, limitation et critique ;
- P0/P1/P2 limite restent visibles ;
- signalisation ne devient pas une deuxieme interface bruyante ;
- seulement ce qui modifie la jouabilite doit etre signale.

Point de vigilance `FRAG-PERF-5` :

```text
la forme exacte des signaux n'est pas definie.
```

Traitement :

```text
normal a ce stade.
La prochaine fiche doit definir les evenements et packets de signal, pas l'UI.
```

---

## 10. Questions restantes

### `Q-AUD-PERF-1 - Commandes / packets maintenant ?`

Question :

```text
faut-il creer maintenant une matrice commandes / packets / etats / signaux ?
```

Reponse audit :

```text
oui.
Le noyau de performance est assez stable pour formaliser les messages
conceptuels qui relient CORE, PAGE, GESTE, SIG et PATH.
```

### `Q-AUD-PERF-2 - UI maintenant ?`

Question :

```text
faut-il definir une UI ou un controleur maintenant ?
```

Reponse audit :

```text
non.
Il faut d'abord definir les commandes et etats abstraits.
```

### `Q-AUD-PERF-3 - Architecture Max maintenant ?`

Question :

```text
faut-il revenir directement aux patchers ou objets Max ?
```

Reponse audit :

```text
pas encore.
Les commandes/packets doivent stabiliser la couche performance avant traduction
technique plus concrete.
```

---

## 11. Decision v0.1

Decision :

```text
la specification du noyau de performance Max standalone est compatible avec le
corpus actif et peut devenir la reference de jouabilite.
```

Suite prioritaire :

```text
creer `MATRICE_COMMANDES_PACKETS_ETATS_SIGNAUX_PERFORMANCE_MAX_STANDALONE_VESPERARE_v0_1.md`
pour relier CORE, PAGE, GESTE, SIG, PATH, P0/P1/P2 et GEN-PACKET sans UI finale.
```
