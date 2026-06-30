# AUDIT COMPATIBILITE MATRICE COMMANDES / PACKETS / ETATS / SIGNAUX PERFORMANCE AVEC CORPUS v0.1

Projet : Vesperare
Statut : audit compatibilite matrice commandes / packets / etats / signaux
Date : 2026-06-23

Sources actives principales :

- `MATRICE_COMMANDES_PACKETS_ETATS_SIGNAUX_PERFORMANCE_MAX_STANDALONE_VESPERARE_v0_1.md`
- `SPECIFICATION_NOYAU_PERFORMANCE_MAX_STANDALONE_CONTROLES_SCENES_CHEMINS_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_SPECIFICATION_NOYAU_PERFORMANCE_MAX_STANDALONE_AVEC_CORPUS_v0_1.md`
- `MATRICE_FONCTIONS_CRITICITE_LATENCE_CHEMINS_MAX_STANDALONE_VESPERARE_v0_1.md`
- `SPECIFICATION_SYSTEME_DECISIONNEL_CONCEPTUEL_VESPERARE_v0_1.md`
- `MATRICE_GEN_ROLE_SCENES_CONTROLES_LIVE_RISQUES_VESPERARE_v0_1.md`
- `MATRICE_BLOCS_RESPONSABILITES_PACKETS_CONTROLES_VESPERARE_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_2_MODULES_MESSAGES_VESPERARE_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_4_PATCHERS_ABSTRAITS_ET_CONTRATS_VESPERARE_v0_1.md`
- `DECISION_RUNTIME_MAX_STANDALONE_LATENCE_SANS_COMPROMIS_VESPERARE_v0_1.md`

But :

```text
verifier que la matrice commandes / packets / etats / signaux respecte le corpus
actif, conserve les scenes superposables, protege MIN-DID-PC, conserve Max
standalone comme runtime principal, et ne glisse pas vers UI finale, objets Max,
presets, routage, patch final ou autorite automatique excessive.
```

Hors perimetre :

```text
UI finale ;
controleur physique ;
mapping MIDI/OSC/HID ;
syntaxe Max ;
objets Max definitifs ;
patchers definitifs ;
routage audio final ;
algorithmes ;
seuils numeriques ;
buffers ;
materiel final ;
tests pratiques ;
benchmark ;
patch final.
```

---

## 1. Verdict general

Verdict :

```text
compatible avec corrections de lecture.
```

La matrice est compatible parce qu'elle :

- traduit `CORE`, `PAGE`, `GESTE`, `PROTECT` et `GEN` en commandes abstraites, pas en controles physiques ;
- conserve les packets deja etablis au lieu de creer une architecture concurrente ;
- separe commandes, packets, etats persistants et signaux ;
- conserve `P0 > P1 > P2 > P3 > P4 > P5 > DIAG` ;
- interdit `REQUEST -> START` ;
- conserve `GEN-PACKET` et `PERM-PACKET` comme garde-fous ;
- separe `SPC`, `HAL` et `GEN-HAL` ;
- conserve `PATH-DIRECT`, `PATH-SAFE`, `PATH-PLAY-FAST`, `PATH-GRV-CRITICAL`, `PATH-GEN-MUS`, `PATH-SPC-HAL-SLOW`, `PATH-ANA-FAST`, `PATH-ANA-SLOW` et `PATH-DIAG-VIEW` ;
- conserve `PATH-DIAG-VIEW` comme non audio ;
- protege `MIN-DID-PC` comme forme complete ;
- conserve Max standalone et la latence comme enjeu musical sans compromis reel ;
- ne choisit aucun objet Max, syntaxe, seuil, buffer, routage, controleur ou patch final.

Corrections de lecture obligatoires :

```text
CORR-CMD-1 : lire CMD comme intention musicale jouable, pas comme message Max final.
CORR-CMD-2 : lire PERF-PACKET et STATE-PACKET comme aides de lecture, pas comme mega-etats globaux.
CORR-CMD-3 : lire PAGE-SCN comme permissions et focus, pas comme presets.
CORR-CMD-4 : maintenir DIAG/VIEW hors audio.
CORR-CMD-5 : maintenir LAT comme information de presence, pas autorite de suppression musicale.
CORR-CMD-6 : maintenir P5 comme coherence douce non esthetique, pas Auto-Pro compositeur.
CORR-CMD-7 : signaler toute limitation sensible de P2.
CORR-CMD-8 : traiter la future UI comme traduction, pas comme consequence directe de cette matrice.
```

Ces corrections ne remettent pas en cause la fiche.

---

## 2. Compatibilite avec le noyau performance

Verdict :

```text
compatible.
```

Points conformes :

- `CORE-1` a `CORE-10` sont traduits en familles `CMD-CORE-*` ;
- `PAGE-SCN-*` sont conservees comme pages conceptuelles ;
- les gestes transversaux restent ponctuels et consequents ;
- `PERF-PROTECT` est traduit en `CMD-PROTECT-*` sans devenir couche artistique ;
- `SIG-0` a `SIG-3` restent lisibles ;
- `MIN-DID-PC` reste complet.

Fragilite `FRAG-CMD-1` :

```text
la presence des commandes peut etre lue comme une future surface de controle.
```

Traitement :

```text
appliquer CORR-CMD-1 et CORR-CMD-8.
```

---

## 3. Compatibilite avec les packets existants

Verdict :

```text
compatible.
```

Points conformes :

- la matrice reprend `SRC`, `SCN`, `LIVE`, `ANA`, `CONF`, `DEC`, `PERM`, `PROTO`, `GEN`, `GRAVE`, `SPC`, `HAL`, `AUTOPRO`, `MIX`, `SIG`, `LAT` et `DIAG` ;
- elle ne renomme pas arbitrairement les packets deja poses ;
- elle ajoute `PERF-PACKET`, `GESTE-PACKET`, `STATE-PACKET` et `LIMIT-PACKET` seulement comme packets de lecture ;
- elle conserve les owners conceptuels des specs niveau 2/4 ;
- elle conserve les regles de release.

Fragilite `FRAG-CMD-2` :

```text
PERF-PACKET et STATE-PACKET pourraient devenir des conteneurs trop vagues.
```

Traitement :

```text
les lire comme enveloppes de coordination, jamais comme owners musicaux
remplacant les packets existants.
```

---

## 4. Compatibilite decisions / autorites

Verdict :

```text
compatible.
```

Points conformes :

- P0 protege immediatement ;
- P1 limite la lisibilite vitale ;
- P2 reste choix live explicite ;
- P3 reste scene/preparation ;
- P4 reste proposition non imposee ;
- P5 reste coherence douce ;
- DIAG n'a pas d'autorite audio ;
- toute action audible forte doit avoir choix live, scene, geste, etat, source active, protection signalee ou sortie preparee.

Fragilite `FRAG-CMD-3` :

```text
la matrice donne beaucoup de familles de commandes, ce qui peut masquer la
hierarchie reelle en performance.
```

Traitement :

```text
la future UI devra grouper ces familles, mais la matrice ne doit pas le faire
prematurement.
```

---

## 5. Compatibilite generation

Verdict :

```text
compatible.
```

Points conformes :

- `GEN-PACKET` reste obligatoire ;
- `PERM-PACKET` reste obligatoire pour `GEN-START` ;
- `REQUEST` ne demarre jamais seul ;
- `AUT-5` reste interdit par defaut ;
- les roles generatifs restent DOM/LAYER/GESTE/ETAT/TRACE ;
- les scenes restent superposables ;
- acid, voix, jazz/Keita, polytexture, grave, halo-source et retour restent des fonctions situees, pas des styles importes ou presets.

Fragilite `FRAG-CMD-4` :

```text
`CMD-GEN-ROLE` et `CMD-GEN-AUT` pourraient etre confondus avec un preset de
generateur.
```

Traitement :

```text
maintenir `GEN-PACKET` comme fiche complete du phenomene : inspiration,
fonction, role, autonomie, naturalisation, apparition, transformation,
retrait, risques et garde-fous.
```

---

## 6. Compatibilite scenes superposables

Verdict :

```text
compatible.
```

Points conformes :

- une seule DOM reste la regle ;
- les autres scenes peuvent etre LAYER, GESTE, ETAT ou TRACE ;
- `CMD-PAGE-*` n'impose pas une scene comme case fermee ;
- les pages de scenes deviennent des permissions et focus, pas des presets ;
- les cas de transfert DOM, couche, geste ou etat restent possibles.

Fragilite `FRAG-CMD-5` :

```text
la table `PAGE-SCN` peut donner l'impression que chaque scene a une page
separee impossible a superposer.
```

Traitement :

```text
appliquer CORR-CMD-3 : une page est un acces fonctionnel, pas une scene
exclusive.
```

---

## 7. Compatibilite didgeridoo / grave / gong / sub

Verdict :

```text
compatible.
```

Points conformes :

- `CMD-DID-MODE`, `CMD-GRV-MODE`, `CMD-GRV-OWNER`, `CMD-GRV-CONFLICT` et `CMD-GRV-REL` reprennent les modes valides ;
- didgeridoo libre ne veut pas dire didgeridoo ignore ;
- didgeridoo integre ne veut pas dire didgeridoo force ;
- un seul owner grave lisible est conserve en moment critique, sauf graves libres ou transgression explicite ;
- adaptation harmonique, retrait du grave genere, soutien discret, gong/bloom, souffle et sub ponctuel restent optionnels ;
- `GRAVE-PACKET` reste distinct de `SPC-PACKET` et `HAL-PACKET`.

Fragilite `FRAG-CMD-6` :

```text
`CMD-GRV-OWNER` pourrait etre lu comme un automatisme permanent.
```

Traitement :

```text
le owner grave est un etat de lisibilite musicale, pas une loi constante.
il peut etre libre, retire, soutenu, adapte ou transgressif selon choix.
```

---

## 8. Compatibilite reverb / espace / halo

Verdict :

```text
compatible.
```

Points conformes :

- `SPC` decide le monde spatial ;
- `HAL` decide le mode de memoire/queue/lock/cut/force ;
- `GEN-HAL-SOURCE` fournit une matiere mais ne decide pas le mode ;
- Halo Lock/Force n'est retire que par P0/P1, choix live ou sortie decidee ;
- espace long, immersion, proximite, contraction et monde metal-gong restent des fonctions, pas des presets ;
- mesure de salle et diagnostic ne conditionnent pas l'audio.

Fragilite `FRAG-CMD-7` :

```text
`CMD-SPC-WORLD` pourrait etre lu comme un preset reverb.
```

Traitement :

```text
un monde spatial doit garder fonction, source, distance, enveloppement, queue,
reaction, garde-fou et sortie.
```

---

## 9. Compatibilite latence / Max standalone

Verdict :

```text
compatible.
```

Points conformes :

- Max standalone reste runtime principal ;
- `LAT-PACKET` informe sur presence, criticite et chemin ;
- `LAT` necrit pas `DEC/PERM` ;
- latence reste enjeu musical et technique ;
- aucune degradation musicale reelle n'est autorisee ;
- didgeridoo direct, grave critique, retours joues, P0/P1 et `MIN-DID-PC` restent proteges.

Fragilite `FRAG-CMD-8` :

```text
la presence de `EVT-LAT-RISK` pourrait etre lue comme permission de supprimer
des fonctions au nom de l'optimisation.
```

Traitement :

```text
appliquer CORR-CMD-5 : LAT signale et informe ; il ne supprime pas.
les choix de structure et d'optimisation doivent preserver la fonction musicale.
```

---

## 10. Compatibilite signalisation

Verdict :

```text
compatible.
```

Points conformes :

- `SIG-0` a `SIG-3` restent niveaux abstraits ;
- P0/P1 visibles ;
- P2 limite visible ;
- direct indisponible visible ;
- grave, halo, espace, source, generation et charge peuvent signaler une limitation ;
- diagnostic reste separable de la signalisation performative.

Fragilite `FRAG-CMD-9` :

```text
trop de signaux pourraient devenir une seconde interface bruyante.
```

Traitement :

```text
conserver la regle : signaler seulement ce qui modifie la jouabilite.
la future UI devra hierarchiser, filtrer et rendre lisible.
```

---

## 11. Compatibilite `MIN-DID-PC`

Verdict :

```text
compatible.
```

Points conformes :

- le minimum conserve scene, forme, mode DID, mode GRV, retour, halo, generation simple, protection et signalisation ;
- il conserve les chemins direct, safe, play-fast, grave critique, generation simple, espace/halo simple et diagnostic non bloquant ;
- il ne depend pas de gong physique, voix, convolution, mesure de salle, sub puissant, UI complexe ou routing final ;
- il n'est pas traite comme version pauvre.

Fragilite `FRAG-CMD-10` :

```text
le nombre de packets minimaux peut paraitre lourd pour le setup minimum.
```

Traitement :

```text
les packets minimaux sont des responsabilites conceptuelles.
ils pourront etre regroupes en implementation, sans supprimer leur fonction.
```

---

## 12. Points a corriger dans la suite

```text
CORR-CMD-1
Les `CMD-*` ne sont pas des messages Max finaux.

CORR-CMD-2
`PERF-PACKET` et `STATE-PACKET` coordonnent ; ils ne remplacent pas les packets owners.

CORR-CMD-3
`PAGE-SCN` ne veut pas dire preset ni scene exclusive.

CORR-CMD-4
`DIAG` et `VIEW` restent hors condition audio.

CORR-CMD-5
`LAT` reste signal / information de presence, sans autorite de suppression.

CORR-CMD-6
P5 ne compose pas et ne retire pas un choix live.

CORR-CMD-7
Toute limitation sensible de P2 doit etre signalee.

CORR-CMD-8
La future UI traduira la matrice ; elle ne doit pas etre deduite mecaniquement.
```

---

## 13. Risques residuels

```text
RIS-CMD-1
Complexite trop grande pour une performance reelle si tout est expose tel quel.

RIS-CMD-2
Confusion entre commande abstraite et implementation Max.

RIS-CMD-3
Confusion entre page de scene et preset.

RIS-CMD-4
Signalisation excessive.

RIS-CMD-5
Etat persistant trop global.

RIS-CMD-6
Latence interpretee comme justification de reduction musicale.

RIS-CMD-7
Auto-Pro interprete comme compositeur.

RIS-CMD-8
Generation interpretee comme autonome parce que ses commandes sont explicites.
```

Traitement general :

```text
faire un audit global pre-architecture operationnelle avant de continuer vers
une implementation plus concrete.
```

---

## 14. Decision pour la suite

Decision :

```text
la matrice commandes / packets / etats / signaux est validee comme document de
transition entre noyau performance et architecture operationnelle Max standalone.
```

Prochaine fiche logique :

```text
AUDIT_COHERENCE_GLOBALE_PRE_ARCHITECTURE_OPERATIONNELLE_MAX_STANDALONE_VESPERARE_v0_1.md
```

Objectif de cette prochaine fiche :

```text
verifier l'ensemble du corpus actif avant de passer a une architecture plus
operationnelle, en particulier : coherence musicale, Max standalone, latence
sans compromis, commandes, packets, etats, signaux, generation, reverb/espace,
grave/didgeridoo/gong, scenes superposables, MIN-DID-PC et risques de complexite.
```
