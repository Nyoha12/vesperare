# AUDIT COMPATIBILITE SPECIFICATION GRAVE / GONG / SUB / DIDGERIDOO AVEC CORPUS v0.1

Projet : Vesperare
Statut : audit compatibilite specification grave / gong / sub / didgeridoo
Date : 2026-06-23

Sources actives principales :

- `SPECIFICATION_GRAVE_GONG_SUB_DIDGERIDOO_CONFLITS_ET_MODES_MAX_STANDALONE_VESPERARE_v0_1.md`
- `MATRICE_GEN_ROLE_SCENES_CONTROLES_LIVE_RISQUES_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_MATRICE_GEN_ROLE_SCENES_CONTROLES_LIVE_RISQUES_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_GENERATION_FINE_PAR_GEN_ROLE_MAX_STANDALONE_VESPERARE_v0_1.md`
- `SPECIFICATION_CONTROLES_LIVE_ET_MODES_SCENE_v0_1.md`
- `SPECIFICATION_NOYAU_JOUABLE_SCENES_COUCHES_v0_1.md`
- `SPECIFICATION_TECHNIQUE_CONCEPTUELLE_REVERB_SPACE_HALO_FREEZE_RESONATEURS_CONVOLUTION_MAX_STANDALONE_VESPERARE_v0_1.md`
- `DECISION_RUNTIME_MAX_STANDALONE_LATENCE_SANS_COMPROMIS_VESPERARE_v0_1.md`

But :

```text
verifier que la specification grave/gong/sub/didgeridoo respecte le corpus
actif, conserve la liberte du didgeridoo, separe correctement sub, gong, bloom,
souffle, base microtonale et soutien, garde Max standalone sans compromis de
latence, et ne glisse pas vers algorithmes, objets Max, UI ou patch final.
```

Hors perimetre :

```text
algorithmes ;
objets Max definitifs ;
syntaxe Max ;
seuils ;
buffers ;
mesures pratiques ;
calibration finale de PA ;
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
compatible avec corrections de cadrage avant toute traduction technique.
```

La fiche est compatible parce qu'elle :

- separe `GEN-SUB-GONG-BREATH` en sous-fonctions sans creer de nouveaux `GEN-ROLE` officiels ;
- conserve le didgeridoo comme source libre, guide, partenaire, perturbateur ou source traitee ;
- garde le setup minimum didgeridoo + PC viable ;
- distingue vrai sub, grave harmonique, bloom, souffle, base microtonale et graves libres ;
- reprend les modes utilisateur : didgeridoo guide, soutien discret, adaptation harmonique optionnelle, retrait du grave genere, graves libres ;
- conserve gong comme fonction possible, pas decor ;
- maintient Auto-Pro comme protection et signalisation ;
- integre Max standalone et la latence comme enjeu musical ;
- ne choisit aucun objet Max, seuil, algorithme ou mapping.

Corrections requises :

```text
CORR-GRV-1 : lire "une seule fonction porte le vrai grave" comme garde-fou de lisibilite, pas comme interdiction des graves libres.
CORR-GRV-2 : garder l'adaptation harmonique du didgeridoo optionnelle, visible et non assimilable a pitch correction reconnaissable.
CORR-GRV-3 : ne jamais resoudre un conflit didgeridoo/sub par baisse automatique cachee du didgeridoo.
CORR-GRV-4 : traiter gong modelise ou virtuel comme fonction naturalisee explicite, jamais comme preset decoratif.
CORR-GRV-5 : garder "sub precis" comme objectif conceptuel, pas promesse technique sans architecture, PA et calibration futures.
CORR-GRV-6 : classer ensuite les fonctions par criticite de latence et chemin direct / rapide / lent.
CORR-GRV-7 : signaler toute limitation P0/P1 d'un choix live grave.
CORR-GRV-8 : ne pas transformer la fiche grave en interface physique ou en routage.
```

Ces corrections ne remettent pas en cause la fiche.

---

## 2. Compatibilite non-finalite technique

Verdict :

```text
compatible.
```

Points conformes :

- aucun algorithme definitif ;
- aucun objet Max ;
- aucun seuil ;
- aucun buffer ;
- aucun mapping MIDI ;
- aucune UI ;
- aucun patch final ;
- aucune mesure pratique imposee.

Fragilite `FRAG-GRV-1` :

```text
la fiche commence a classer les chemins de latence, donc elle peut donner envie
de dessiner directement des patchers.
```

Traitement :

```text
avant patchers ou objets, creer une matrice fonction / criticite / chemin.
```

---

## 3. Compatibilite didgeridoo

Verdict :

```text
compatible.
```

Points conformes :

- le didgeridoo reste libre protege par defaut possible ;
- le systeme peut s'adapter au didgeridoo ;
- le didgeridoo peut etre adapte au systeme seulement comme option explicite ;
- le didgeridoo peut guider, cohabiter ou perturber ;
- il n'est pas reduit a un controleur, une basse fixe ou un input technique ;
- la baisse de niveau automatique n'est pas le moyen principal d'integration.

Correction `CORR-GRV-2` :

```text
l'adaptation harmonique doit rester distincte de pitch correction reconnaissable.
```

Correction `CORR-GRV-3` :

```text
le masquage ou la baisse cachee du didgeridoo ne doit pas devenir une solution
standard de mix.
```

---

## 4. Compatibilite vrai grave / vrai sub

Verdict :

```text
compatible avec prudence.
```

Points conformes :

- le vrai sub est distingue du grave harmonique ;
- le sub peut etre absent, trace, soutien, porteur ponctuel, porteur principal ou libre ;
- sub standard reconnaissable reste interdit par defaut ;
- sub destructeur et sub illisible restent P0/P1 ;
- la fonction du sub doit etre declaree : retour, seuil, domination, appui ou impact.

Fragilite `FRAG-GRV-2` :

```text
le document utilise l'objectif "sub precis", mais la precision dependra plus
tard de l'architecture, de la latence, du systeme de diffusion et des protections.
```

Traitement :

```text
appliquer CORR-GRV-5.
```

---

## 5. Compatibilite gong / bloom / base microtonale

Verdict :

```text
compatible.
```

Points conformes :

- le gong peut etre impact, signal, halo, peak, resolution, rugissement, bloom grave, base microtonale ou souffle ;
- gong decoratif non decide reste risque ;
- bloom est distingue de reverb et halo ;
- base microtonale est fonction de tension/couleur, pas demonstration theorique ;
- relation gong/sub et gong/didgeridoo est explicitement surveillee.

Fragilite `FRAG-GRV-3` :

```text
si le gong physique est absent, la notion de gong modelise doit rester
fonctionnelle et naturalisee.
```

Traitement :

```text
appliquer CORR-GRV-4 dans une future fiche de naturalisation ou de generation
de matieres acoustiques/virtualo-acoustiques.
```

---

## 6. Compatibilite scenes

Verdict :

```text
compatible.
```

Points conformes :

- chaque scene a des modes prioritaires et des modes possibles ;
- les scenes restent non exclusives ;
- les modes graves sont des centres de decision, pas des presets ;
- SCN-3 conserve suspension longue et refus possible du retour ;
- SCN-4 conserve gong/bloom/metal comme centre possible ;
- SCN-5 conserve sound-system sans imposer sub destructeur ;
- SCN-9 conserve transgression controlee sans perte de qualite toleree.

Point de vigilance `FRAG-GRV-4` :

```text
les defaults par scene ne sont pas encore assez compacts pour une surface live.
```

Traitement :

```text
pas urgent avant criticite de latence, mais a reprendre avant UI ou controleur.
```

---

## 7. Compatibilite generation

Verdict :

```text
compatible.
```

Points conformes :

- `GEN-SUB-GONG-BREATH` reste role global ;
- les sous-fonctions `GRV-FUNC-*` ne remplacent pas les `GEN-ROLE` ;
- `GEN-DID-GUIDED-LINE` reste relie a didgeridoo guide, cohabitation et retrait du grave genere ;
- `GEN-BASS-MOTIF`, `GEN-ACID-NAT` et `GEN-LINE-MODAL-MICRO` peuvent interagir avec le grave sans devenir leads par defaut ;
- `GEN-RETURN` et `GEN-SILENCE` restent disponibles pour sortie, retrait et refus de retour.

Fragilite `FRAG-GRV-5` :

```text
les roles generation + GRV peuvent devenir nombreux en live si tout est expose.
```

Traitement :

```text
future surface : noyau permanent + modes par scene, pas exposition totale.
```

---

## 8. Compatibilite reverb / halo / espace

Verdict :

```text
compatible.
```

Points conformes :

- bloom, halo et reverb restent separes ;
- `PLAY-3` decide l'espace ;
- `PLAY-4` decide le halo ;
- grave/reverb/halo sont surveilles pour boue, masquage et source effacee ;
- Halo Lock reste protege contre retrait automatique hors P0/P1.

Point de vigilance `FRAG-GRV-6` :

```text
les modes souffle/bloom peuvent etre confondus avec espace long dans une future
implementation.
```

Traitement :

```text
maintenir trois responsabilites separees : GRV pour porteur/matiere grave,
SPC pour monde spatial, HAL pour memoire/queue decidee.
```

---

## 9. Compatibilite Auto-Pro

Verdict :

```text
compatible.
```

Points conformes :

- Auto-Pro protege sub destructeur, sub illisible, headroom, feedback, resonance salle, source essentielle ;
- Auto-Pro ne choisit pas porteur du grave hors protection ;
- Auto-Pro ne choisit pas graves libres, transgression grave ou bloom expressif ;
- les limitations P0/P1 doivent etre signalees.

Correction `CORR-GRV-7` :

```text
toute limitation P0/P1 d'un choix live grave doit etre visible pour le musicien.
```

---

## 10. Compatibilite latence / Max standalone

Verdict :

```text
compatible mais incomplet pour architecture.
```

Points conformes :

- Max standalone reste runtime principal ;
- la latence est traitee comme enjeu musical ;
- aucun compromis musical reel n'est accepte ;
- la fiche distingue chemin direct critique, chemin musical rapide et chemin lent ;
- les analyses lentes ne corrigent pas un evenement direct.

Fragilite `FRAG-GRV-7` :

```text
la classification de criticite est posee mais pas encore consolidee fonction
par fonction pour tout le systeme.
```

Correction `CORR-GRV-6` :

```text
creer ensuite une matrice fonction / criticite de latence / chemin audio ou
controle, avant architecture plus concrete.
```

---

## 11. Compatibilite MIN-DID-PC

Verdict :

```text
compatible.
```

Points conformes :

- sans gong, la fiche conserve didgeridoo guide, soutien discret, retrait, sub ponctuel et souffle ;
- sans sub puissant, pression par attaques, souffle, basse-motif trace, halo source, espace proche et retour par densite restent possibles ;
- sans source autre que didgeridoo, le systeme reste complet ;
- le projet ne depend pas d'une PA parfaite ou d'un gong physique.

Point de vigilance `FRAG-GRV-8` :

```text
les versions riches avec gong/sub ne doivent pas devenir les seuls cas de
conception dans les fiches suivantes.
```

Traitement :

```text
chaque prochaine fiche doit garder un fallback MIN-DID-PC.
```

---

## 12. Questions restantes

### `Q-AUD-GRV-1 - Prochaine fiche latence ?`

Question :

```text
faut-il creer maintenant une matrice criticite de latence / chemin fonctionnel ?
```

Reponse audit :

```text
oui.
Le corpus a maintenant assez de fonctions pour separer ce qui doit etre direct,
rapide, lent, signale, protege ou prepare.
```

### `Q-AUD-GRV-2 - Defaults scene ?`

Question :

```text
faut-il fixer les defaults GRV de chaque scene maintenant ?
```

Reponse audit :

```text
pas encore comme interface.
Les defaults existent conceptuellement, mais il faut d'abord les classer avec
criticite, chemin et priorite.
```

### `Q-AUD-GRV-3 - Gong modelise ?`

Question :

```text
faut-il specifier le gong modelise maintenant ?
```

Reponse audit :

```text
pas comme objet sonore final.
La question doit rester rattachee a naturalisation et fonctions acoustiques
virtualo-acoustiques.
```

---

## 13. Decision v0.1

Decision :

```text
la specification grave/gong/sub/didgeridoo est compatible et peut devenir la
reference active du noeud grave.
```

Suite prioritaire :

```text
creer `MATRICE_FONCTIONS_CRITICITE_LATENCE_CHEMINS_MAX_STANDALONE_VESPERARE_v0_1.md`
pour classer les fonctions directes, rapides, lentes, protegees et signalees
avant toute architecture plus concrete.
```
