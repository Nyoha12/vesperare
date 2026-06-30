# AUDIT COMPATIBILITE MATRICE FONCTIONS / CRITICITE LATENCE / CHEMINS AVEC CORPUS v0.1

Projet : Vesperare
Statut : audit compatibilite matrice fonctions / criticite latence / chemins
Date : 2026-06-23

Sources actives principales :

- `MATRICE_FONCTIONS_CRITICITE_LATENCE_CHEMINS_MAX_STANDALONE_VESPERARE_v0_1.md`
- `DECISION_RUNTIME_MAX_STANDALONE_LATENCE_SANS_COMPROMIS_VESPERARE_v0_1.md`
- `SPECIFICATION_BUDGET_LATENCE_CHARGE_DEGRADATION_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_BUDGET_LATENCE_CHARGE_DEGRADATION_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_GRAVE_GONG_SUB_DIDGERIDOO_CONFLITS_ET_MODES_MAX_STANDALONE_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_SPECIFICATION_GRAVE_GONG_SUB_DIDGERIDOO_CONFLITS_ET_MODES_AVEC_CORPUS_v0_1.md`
- `MATRICE_GEN_ROLE_SCENES_CONTROLES_LIVE_RISQUES_VESPERARE_v0_1.md`
- `SPECIFICATION_SYSTEME_DECISIONNEL_CONCEPTUEL_VESPERARE_v0_1.md`

But :

```text
verifier que la matrice fonctions / criticite de latence / chemins reste
compatible avec le corpus actif, protege la presence live et le setup
didgeridoo + PC, respecte Max standalone sans compromis musical, et ne devient
pas une architecture technique definitive.
```

Hors perimetre :

```text
algorithmes ;
objets Max definitifs ;
syntaxe Max ;
seuils ;
buffers ;
materiel final ;
interface audio finale ;
driver final ;
calibration PA ;
controleur physique ;
UI finale ;
patch final ;
tests pratiques ;
benchmark.
```

---

## 1. Verdict general

Verdict :

```text
compatible avec corrections de cadrage avant noyau de performance.
```

La matrice est compatible parce qu'elle :

- reprend la decision Max standalone ;
- maintient la latence comme enjeu musical, pas simple contrainte ;
- conserve l'interdit de compromis musical reel ;
- separe `LAT-0`, `LAT-1`, `LAT-2`, `LAT-3`, diagnostic et hors live ;
- separe les chemins direct, safe, interaction jouee, generation, grave critique, espace/halo, analyse et vue ;
- protege didgeridoo direct, source essentielle, grave critique et P0/P1 ;
- laisse les fonctions lentes musicalement importantes hors chemin critique ;
- conserve `MIN-DID-PC` ;
- ne choisit aucun objet Max, seuil, buffer, UI ou patch final.

Corrections requises :

```text
CORR-LAT-1 : la classe de latence n'autorise jamais a retirer ou appauvrir une fonction desiree.
CORR-LAT-2 : PATH-SAFE ne doit jamais devenir un etat esthetique par defaut.
CORR-LAT-3 : PATH-DIAG-VIEW ne doit jamais conditionner l'audio.
CORR-LAT-4 : LAT-3 peut etre musicalement central, mais doit rester hors attaque critique.
CORR-LAT-5 : les tables de fonctions sont des classifications, pas un routing.
CORR-LAT-6 : les fonctions grave/sub/gong doivent garder les corrections CORR-GRV.
CORR-LAT-7 : la prochaine fiche doit rester noyau de performance, pas UI physique.
CORR-LAT-8 : toute limitation P0/P1 d'un choix live doit rester signalee.
```

Ces corrections ne remettent pas en cause la matrice.

---

## 2. Compatibilite avec la decision Max standalone

Verdict :

```text
compatible.
```

Points conformes :

- Max/MSP standalone reste runtime principal ;
- Ableton/M4L, RNBO, Linux et embarque ne dirigent pas la conception actuelle ;
- la matrice ne promet pas de latence absolue ;
- elle classe les fonctions avant choix de buffer, interface, driver ou patch ;
- elle conserve les ordres de grandeur comme contexte, pas seuil final.

Fragilite `FRAG-LAT-1` :

```text
la matrice peut etre lue comme une optimisation technique pure.
```

Traitement :

```text
rappeler que chaque classe de latence sert une fonction musicale.
```

---

## 3. Compatibilite sans compromis musical

Verdict :

```text
compatible.
```

Points conformes :

- la matrice interdit de retirer une fonction desiree pour tenir une latence ;
- elle interdit de transformer CPU/surcharge en choix esthetique cache ;
- elle propose deplacer, isoler, preparer, precalculer, re-router ou signaler ;
- elle preserve didgeridoo, grave critique, P0/P1 et retours joues.

Correction `CORR-LAT-1` :

```text
la latence classe et organise.
elle ne decide pas la valeur artistique d'une fonction.
```

---

## 4. Compatibilite chemins

Verdict :

```text
compatible avec prudence.
```

Points conformes :

- `PATH-DIRECT` est reserve au direct, a la presence source et au minimum vital ;
- `PATH-SAFE` protege sans composer ;
- `PATH-PLAY-FAST` garde interaction jouee et controle live immediat ;
- `PATH-GEN-MUS` accueille generation, motifs, densite et propositions ;
- `PATH-GRV-CRITICAL` isole grave/sub/didgeridoo/gong critique ;
- `PATH-SPC-HAL-SLOW` eloigne les fonctions longues du direct ;
- `PATH-ANA-FAST`, `PATH-ANA-SLOW` et `PATH-DIAG-VIEW` evitent que diagnostic ou analyse bloque l'audio.

Fragilite `FRAG-LAT-2` :

```text
les chemins peuvent etre lus comme des routages techniques.
```

Traitement :

```text
appliquer CORR-LAT-5 : classification fonctionnelle, pas routing final.
```

---

## 5. Compatibilite didgeridoo / MIN-DID-PC

Verdict :

```text
compatible.
```

Points conformes :

- didgeridoo direct/protege est `LAT-0` ;
- didgeridoo transforme joue est `LAT-1` ;
- source directe de secours est conservee ;
- setup minimum didgeridoo + PC ne depend pas de gong, convolution, mesure de salle, sub puissant ou UI complexe ;
- la source directe garde priorite sur analyse lente et fonctions longues.

Point de vigilance `FRAG-LAT-3` :

```text
si le didgeridoo transforme devient musicalement central, la surface de
performance devra distinguer direct, transforme, protege et repli.
```

Traitement :

```text
reporter au noyau de performance.
```

---

## 6. Compatibilite grave / sub / gong

Verdict :

```text
compatible.
```

Points conformes :

- sub porteur direct est classe `LAT-0/LAT-1` ;
- soutien discret, graves libres, retrait et bloom sont separes ;
- `PATH-GRV-CRITICAL` isole les conflits didgeridoo/sub/gong ;
- analyse lente ne peut pas decider un retrait critique ;
- baisse cachee du didgeridoo reste interdite ;
- corrections `CORR-GRV-*` restent valables.

Correction `CORR-LAT-6` :

```text
les futures fiches doivent conserver les garde-fous grave : pas de grave libre
par defaut, pas de sub standard par simplification, pas de didgeridoo baisse
en cachette.
```

---

## 7. Compatibilite generation

Verdict :

```text
compatible.
```

Points conformes :

- les `GEN-ROLE` sont classes par criticite sans devenir presets ;
- `GEN-PACKET` reste implicite et non remplace ;
- generation ne peut pas bloquer direct ou safe ;
- `AUT-5` reste hors defaut via les documents sources ;
- les roles lourds ou lents deviennent preparation, etat ou texture, pas correction directe.

Fragilite `FRAG-LAT-4` :

```text
les roles `GEN-INTERLOCKING`, `GEN-JAZZ-KEITA` et `GEN-DID-GUIDED-LINE` peuvent
osciller entre interaction jouee et generation plus lente.
```

Traitement :

```text
les classer par scene et fonction dans le noyau de performance, pas par nom seul.
```

---

## 8. Compatibilite reverb / halo / espace

Verdict :

```text
compatible.
```

Points conformes :

- reverb longue, halo long, freeze long, convolution et mesure de salle sont hors chemin direct ;
- proximite et reverb courte peuvent rester plus rapides si elles servent la source ;
- Halo Lock/Force/Cut garde P2 et P0/P1 ;
- `GEN-HAL-SOURCE` ne decide pas HAL ;
- espace long peut etre musicalement central sans devenir attaque critique.

Correction `CORR-LAT-4` :

```text
LAT-3 ne veut pas dire secondaire artistiquement.
LAT-3 veut dire hors attaque directe.
```

---

## 9. Compatibilite Auto-Pro / signalisation

Verdict :

```text
compatible.
```

Points conformes :

- P0/P1 restent rapides et prioritaires ;
- P2 peut etre limite par P0/P1 seulement avec signal ;
- `PATH-DIAG-VIEW` est non bloquant ;
- diagnostic et vue ne conditionnent pas l'audio ;
- signalisation est reservee a ce qui modifie la jouabilite.

Corrections :

```text
CORR-LAT-2 : PATH-SAFE ne devient pas style.
CORR-LAT-3 : PATH-DIAG-VIEW ne conditionne pas audio.
CORR-LAT-8 : toute limitation P0/P1 d'un choix live est signalee.
```

---

## 10. Compatibilite future surface live

Verdict :

```text
compatible mais non resolu.
```

Points conformes :

- la matrice ne definit pas UI ou controleur physique ;
- elle identifie les controles et signaux qui devront rester accessibles ;
- elle prepare un noyau de performance sans le dessiner.

Fragilite `FRAG-LAT-5` :

```text
la quantite de fonctions classees est trop grande pour une surface live brute.
```

Traitement :

```text
prochaine fiche : noyau de performance, avec controles permanents, pages/modes
de scene, signaux critiques et chemins directs/rapides/lents.
```

---

## 11. Questions restantes

### `Q-AUD-LAT-1 - Noyau de performance`

Question :

```text
faut-il creer maintenant une specification du noyau de performance Max standalone ?
```

Reponse audit :

```text
oui.
Les fonctions, scenes, generation, grave et latence sont assez separees pour
consolider ce qui doit etre sous la main sans encore dessiner une UI finale.
```

### `Q-AUD-LAT-2 - Retours vers architecture technique`

Question :

```text
faut-il revenir directement aux patchers Max ?
```

Reponse audit :

```text
non.
Il manque une couche de performance : quels controles permanents, quels modes
de scene, quels signaux et quels chemins sont jouables ensemble.
```

### `Q-AUD-LAT-3 - Tests pratiques`

Question :

```text
faut-il planifier des tests pour valider ces classes ?
```

Reponse audit :

```text
non dans cette phase.
La matrice sert a anticiper conceptuellement ; les tests pratiques ne dirigent
pas la conception actuelle.
```

---

## 12. Decision v0.1

Decision :

```text
la matrice fonctions / criticite de latence / chemins est compatible avec le
corpus actif et peut servir de reference pour le noyau de performance.
```

Suite prioritaire :

```text
creer `SPECIFICATION_NOYAU_PERFORMANCE_MAX_STANDALONE_CONTROLES_SCENES_CHEMINS_VESPERARE_v0_1.md`
pour definir controles permanents, modes/pages de scene, signalisation critique
et separation direct/rapide/lent sans UI physique finale.
```
