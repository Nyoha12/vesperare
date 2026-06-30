# MATRICE COMMANDES / PACKETS / ETATS / SIGNAUX PERFORMANCE MAX STANDALONE VESPERARE v0.1

Projet : Vesperare
Statut : matrice performance -> commandes / packets / etats / signaux
Date : 2026-06-23

Sources actives principales :

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
traduire le noyau de performance en commandes abstraites, packets, etats
persistants et signaux lisibles, sans definir l'interface, le controleur,
les objets Max, les seuils, les buffers, les routages ou le patch final.
```

Hors perimetre :

```text
UI finale ;
controleur physique ;
nombre de boutons, pages, potards ou faders ;
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

## 1. Decision centrale

Decision :

```text
une commande de performance Vesperare est un contrat musical jouable.
elle ne decrit pas encore un bouton, un message Max ou un objet.
```

Une commande doit dire :

```text
qui demande ;
ce qui est demande ;
quelle autorite porte la demande ;
quel etat est modifie ;
quels packets sont mobilises ;
quel chemin est touche ;
quelle sortie ou release est prevue ;
quel signal apparait si la demande est bloquee, limitee ou critique.
```

Regle :

```text
aucune commande expressive ne doit exister sans autorite, contexte et sortie.
aucune commande de protection ne doit devenir un choix artistique.
aucune commande de diagnostic ne doit conditionner l'audio.
```

---

## 2. Vocabulaire

### 2.1. Objets abstraits

```text
CMD-*
Commande de performance abstraite.
Elle exprime une intention jouable, une permission, un lock, un cut, un geste
ou une protection.

MSG-*
Message conceptuel futur.
Il pourra traduire une commande vers une architecture Max standalone, mais la
syntaxe reelle reste hors perimetre.

*-PACKET
Enveloppe d'information structuree.
Un packet porte le contexte, la fonction, l'autorite, la sortie et les
garde-fous.

STATE-*
Etat persistant ou semi-persistant du systeme.
Un etat doit declarer owner, autorite, ecriture, lecture, release et signal si
l'etat modifie la jouabilite.

SIG-*
Signal de performance.
Il rend visible ou perceptible ce qui change le jeu.

EVT-*
Evenement observe, declenche ou constate.
Un evenement ne decide pas seul.

ACK / LIMIT / BLOCK / REL
Reponse a une commande : acceptee, limitee, bloquee ou relachee.
```

### 2.2. Autorites

```text
P0
Securite critique : clipping critique, feedback dangereux, resonance
dangereuse, headroom critique, sub destructeur.

P1
Lisibilite vitale : attaque principale masquee, source essentielle masquee,
grave illisible, boue reverb/grave, forme principale illisible.

P2
Choix live explicite du musicien.

P3
Scene, page ou preparation de contexte.

P4
Generation comme proposition non imposee.

P5
Auto-Pro doux : coherence non esthetique, maintien, prevention, nettoyage
discret.
```

Ordre :

```text
P0 > P1 > P2 > P3 > P4 > P5 > DIAG.
```

Correction :

```text
P2 gagne contre scene, generation et Auto-Pro ordinaire.
P0 reste toujours prioritaire.
P1 peut limiter P2 si la lisibilite vitale est menacee.
P5 ne compose jamais.
DIAG ne commande jamais l'audio.
```

### 2.3. Chemins

```text
PATH-DIRECT
Presence directe ou recuperable de la source live.

PATH-SAFE
Protection critique et mix vital.

PATH-PLAY-FAST
Interaction jouee, retour, attaque, contraction, reponse ressentie.

PATH-GRV-CRITICAL
Grave, sub, bloom, porteur du bas, conflit didgeridoo/gong/grave.

PATH-GEN-MUS
Generation musicale, motifs, lignes, textures, pressions, retours.

PATH-SPC-HAL-SLOW
Espace, reverb, halo, freeze long, queue, immersion, monde spatial.

PATH-ANA-FAST
Analyse rapide utile a protection, interaction et confiance immediate.

PATH-ANA-SLOW
Analyse lente, contexte, salle, tendance, preparation.

PATH-DIAG-VIEW
Signalisation, vue, diagnostic, archive.
```

Interdits :

```text
PATH-DIAG-VIEW ne conditionne jamais l'audio.
PATH-ANA-SLOW ne decide jamais une protection directe.
PATH-SAFE ne devient jamais style par defaut.
LAT ne supprime jamais une fonction musicale.
```

---

## 3. Format general d'une commande

Chaque `CMD-*` doit pouvoir etre lue avec les champs suivants :

```text
id ;
famille ;
origine ;
cible ;
autorite ;
type d'action ;
valeur ou intention ;
etat lu ;
etat ecrit ;
packets lus ;
packets produits ou modifies ;
chemin ;
preconditions ;
garde-fous ;
reponse attendue ;
signal si limite ;
release ou sortie ;
fallback MIN-DID-PC.
```

Types d'action :

```text
MODE
Choisir une logique durable.

PERMISSION
Autoriser une fonction sans la forcer.

FORCE
Imposer une fonction tant que P0/P1 ne s'y opposent pas.

LOCK
Maintenir une fonction, un halo, une scene, un etat ou une relation.

CUT
Retirer volontairement une fonction, un halo, un grave, une couche ou un retour.

GESTE
Action ponctuelle avec consequence et sortie.

REQUEST
Demande ou proposition.
REQUEST ne demarre jamais seul.

PROTECT
Action de protection.
PROTECT ne compose jamais.

REL
Relache, sortie, retour ou transfert.
```

Reponses possibles :

```text
ACK
Commande acceptee.

LIMIT
Commande acceptee mais limitee par P0/P1, conflit, charge ou lisibilite.

BLOCK
Commande refusee, non autorisee, dangereuse, incoherente ou sans sortie.

REL
Commande relachee, sortie preparee ou retour a etat stable.
```

---

## 4. Familles de commandes

### 4.1. `CMD-CORE-*`

Usage :

```text
traduire les fonctions permanentes `CORE-*` en commandes abstraites.
```

Familles :

```text
CMD-CORE-DOM
Choisit la scene dominante.

CMD-CORE-FORM
Choisit l'etat de forme.

CMD-CORE-LAYER
Active, desactive ou limite les couches.

CMD-CORE-DID
Choisit le mode didgeridoo.

CMD-CORE-GRV
Choisit le mode grave.

CMD-CORE-SPC
Choisit le monde spatial principal.

CMD-CORE-HAL
Choisit Auto, Lock, Force, Cut, Momentary ou Safe force.

CMD-CORE-RET
Choisit corps, retour, refus de retour, maintien, contraction ou sortie.

CMD-CORE-GEN
Choisit role et autonomie generative.

CMD-CORE-SIG
Regle la lisibilite des protections et limitations.
```

Regle :

```text
un CORE n'est pas un controle physique impose.
un CORE est une fonction permanente a traduire plus tard en UI.
```

### 4.2. `CMD-PAGE-*`

Usage :

```text
ouvrir les decisions specialisees d'une scene sans creer de preset.
```

Familles :

```text
CMD-PAGE-ARM
Arme une page de scene.

CMD-PAGE-PERM
Autorise une fonction de scene.

CMD-PAGE-FOCUS
Met une fonction au premier plan de la page.

CMD-PAGE-REL
Sort de la page ou transfere la page vers couche, geste ou etat.
```

Regle :

```text
une PAGE-SCN donne acces aux decisions utiles.
elle ne force pas l'apparition de tous les elements.
elle ne devient pas preset.
```

### 4.3. `CMD-GESTE-*`

Usage :

```text
declencher une action ponctuelle lisible, preparee ou consequente.
```

Familles :

```text
CMD-GESTE-RET-GRV
Retour grave ponctuel.

CMD-GESTE-RET-PULSE
Retour pulse ou cadre corporel.

CMD-GESTE-HAL-CUT
Coupe volontaire du halo.

CMD-GESTE-HAL-MOM
Capture ou halo momentary.

CMD-GESTE-BLOOM
Bloom gong ou bloom grave.

CMD-GESTE-FREEZE
Freeze court ou long selon contexte.

CMD-GESTE-CONTRACT
Contraction d'espace ou retour de proximite.

CMD-GESTE-SILENCE
Retrait, cut, trou, vide actif.

CMD-GESTE-TRANS-PEAK
Pic de transgression controlee.
```

Regle :

```text
chaque geste doit declarer preparation, consequence ou sortie.
un geste gratuit est bloque ou reduit en trace.
```

### 4.4. `CMD-PROTECT-*`

Usage :

```text
appliquer P0/P1/P5 sans faire de choix stylistique.
```

Familles :

```text
CMD-PROTECT-P0
Protection critique immediate.

CMD-PROTECT-P1
Protection de lisibilite vitale.

CMD-PROTECT-P5
Maintien doux ou coherence non esthetique.

CMD-PROTECT-REL
Relache apres disparition du risque.

CMD-PROTECT-SIG
Signalisation obligatoire d'une limitation sensible.
```

Regle :

```text
P0/P1 peuvent limiter ou couper.
P5 ne coupe pas un choix live.
Auto-Pro ne compose pas.
```

### 4.5. `CMD-GEN-*`

Usage :

```text
ouvrir, borner ou retirer une fonction generative sans autonomie non decidee.
```

Familles :

```text
CMD-GEN-PERM
Autorise une famille generative.

CMD-GEN-ROLE
Choisit DOM/LAYER/GESTE/ETAT/TRACE pour le role generatif.

CMD-GEN-AUT
Choisit Off, Reponse, Variation, Proposition, Maintien ou autonomie forte.

CMD-GEN-REQUEST
Demande une proposition.

CMD-GEN-START
Demarre seulement si GEN-PACKET et PERM-PACKET sont valides.

CMD-GEN-REL
Retrait, sortie ou transfert generatif.
```

Regles :

```text
GEN-PACKET obligatoire.
PERM-PACKET obligatoire pour START.
REQUEST ne demarre jamais seul.
AUT-5 jamais par defaut.
electronique reconnaissable interdite sauf exception explicite.
```

### 4.6. `CMD-SPC-HAL-*`

Usage :

```text
decider espace, reverb, halo, freeze, proximite, immersion et retrait spatial.
```

Familles :

```text
CMD-SPC-WORLD
Choisit le monde spatial principal.

CMD-SPC-PROX
Choisit proximite, commun, immersion, immense ou hors-monde.

CMD-SPC-DUCK
Autorise une reaction de clarification de l'espace.

CMD-HAL-MODE
Choisit Auto, Lock, Force, Cut, Momentary, Safe force.

CMD-HAL-REL
Relache ou sortie de halo.

CMD-HAL-SOURCE
Relie une matiere generative a un halo sans confondre GEN-HAL et HAL.
```

Regles :

```text
SPC change de monde avec fonction et sortie.
HAL voulu n'est retire que par P0/P1, choix live ou sortie decidee.
GEN-HAL-SOURCE fournit une matiere ; HAL decide le mode.
```

### 4.7. `CMD-GRV-DID-*`

Usage :

```text
coordonner didgeridoo, vrai grave, sub, gong, bloom, souffle et conflits.
```

Familles :

```text
CMD-DID-MODE
Libre protege, systeme adapte au didgeridoo, didgeridoo adapte au systeme,
guide harmonique, source traitee, perturbateur.

CMD-GRV-MODE
Absent, guide didgeridoo, soutien discret, adaptation harmonique du didgeridoo,
retrait du grave genere, graves libres, gong/bloom porte, sub ponctuel,
souffle/pression aerienne.

CMD-GRV-OWNER
Declare qui porte le vrai grave lisible.

CMD-GRV-CONFLICT
Declare conflit grave et action possible.

CMD-GRV-REL
Retrait, transfert ou liberation du grave.
```

Regles :

```text
a un moment critique, une seule fonction porte le vrai grave lisible,
sauf graves libres ou transgression explicitement decides.
didgeridoo libre ne veut pas dire didgeridoo ignore.
didgeridoo integre ne veut pas dire didgeridoo force.
```

---

## 5. Familles de packets

### 5.1. Packets existants a conserver

La matrice ne remplace pas les familles deja posees.

```text
SRC-PACKET
Information source live ou source derivee.

SCN-PACKET
Scene dominante, couches, pages armees, etat de forme.

LIVE-PACKET
Choix live explicite, geste, force, lock, cut, permission.

ANA-PACKET
Indices observes et temporalite.

CONF-PACKET
Confiance, incertitude, ambiguity handling.

DEC-PACKET
Decision validee, autorite, cause, cible, sortie.

PERM-PACKET
Permission, condition, refus, expiration.

PROTO-PACKET
Relation source -> cible -> reaction -> garde-fou.

GEN-PACKET
Fonction generative complete : inspiration, phenomene, role, autonomie,
naturalisation, apparition, transformation, retrait, risques, garde-fous.

GRAVE-PACKET
Porteur grave, conflit, sub, bloom, gong, souffle, retrait, limites.

SPC-PACKET
Monde spatial, distance, enveloppement, queue, early/late, reaction.

HAL-PACKET
Mode halo, source, maintien, lock/force/cut, sortie.

AUTOPRO-PACKET
P0/P1/P5, cause, action, signal, release.

MIX-PACKET
Sortie, headroom, coherence, out-safe, lisibilite.

SIG-PACKET
Signal de performance, niveau, cible, persistance, visibilite.

LAT-PACKET
Profil de latence, chemin concerne, risque de presence, signal.

DIAG-PACKET
Trace, archive, vue, diagnostic non autoritaire.
```

### 5.2. Packets de performance deduits

Ces packets ne sont pas de nouvelles architectures.
Ils organisent la lecture des packets existants.

```text
PERF-PACKET
Enveloppe generale d'une commande de performance.

GESTE-PACKET
Sous-cas de LIVE-PACKET pour action ponctuelle avec preparation, consequence
et sortie.

STATE-PACKET
Synthese des etats persistants utiles au jeu.

LIMIT-PACKET
Sous-cas SIG/DEC/AUTOPRO : indique ce qui a ete limite, pourquoi, par qui,
et comment revenir.
```

Regle :

```text
PERF-PACKET et STATE-PACKET ne deviennent pas des mega-etats vagues.
ils servent a lire les commandes, pas a remplacer les owners existants.
```

---

## 6. Etas persistants

### 6.1. Liste minimale

```text
STATE-DOM
Scene dominante actuelle.

STATE-FORM
Etat de forme : preparation, maintien, retrait, retour, peak, consequence,
sortie, maintien prolonge.

STATE-LAYER
Couches actives et leur role : LAYER-SRC, LAYER-GRV, LAYER-RHY, LAYER-LIN,
LAYER-SPC, LAYER-HAL, LAYER-TEX, LAYER-TRG, LAYER-RET.

STATE-DID
Mode didgeridoo et statut direct/protege/integre.

STATE-GRV
Mode grave, owner grave, conflit, retrait, graves libres.

STATE-SPC
Monde spatial principal, mondes secondaires, proximite, immersion, espace long.

STATE-HAL
Auto, Lock, Force, Cut, Momentary, Safe force, source, release.

STATE-RET
Corps, retour, refus de retour, maintien, contraction, sortie.

STATE-GEN
Role, autonomie, permissions, roles actifs, roles armes, sorties.

STATE-PROTECT
P0/P1/P5 actifs, cause, action, release.

STATE-SIG
Signaux visibles, signaux caches, persistance, niveau.

STATE-LAT
Information de presence et de criticite, sans autorite artistique.

STATE-MIN
Subset minimum didgeridoo + PC actif ou necessaire.
```

### 6.2. Regles d'ecriture

```text
STATE-DOM
ecrit par CMD-CORE-DOM ou transition DOM validee.

STATE-FORM
ecrit par CMD-CORE-FORM, scene, geste ou sortie.

STATE-LAYER
ecrit par CMD-CORE-LAYER, CMD-PAGE-PERM ou transition.

STATE-DID
ecrit par CMD-CORE-DID ou CMD-DID-MODE.

STATE-GRV
ecrit par CMD-CORE-GRV, CMD-GRV-MODE, CMD-GRV-CONFLICT ou Auto-Pro P0/P1.

STATE-SPC
ecrit par CMD-CORE-SPC ou CMD-SPC-WORLD.

STATE-HAL
ecrit par CMD-CORE-HAL, CMD-HAL-MODE, CMD-GESTE-HAL-* ou P0/P1.

STATE-RET
ecrit par CMD-CORE-RET ou CMD-GESTE-RET-*.

STATE-GEN
ecrit par CMD-CORE-GEN, CMD-GEN-* ou PERM/DEC.

STATE-PROTECT
ecrit par P0/P1/P5 et release associee.

STATE-SIG
ecrit par SIG owner, P0/P1/P2 limite ou visibilite requise.

STATE-LAT
ecrit par LAT-PACKET ; necrit pas DEC/PERM.
```

Interdit :

```text
VIEW necrit pas un etat musical.
DIAG necrit pas un etat musical.
LAT necrit pas une decision.
ANA-SLOW necrit pas une protection directe.
```

---

## 7. Matrice CORE -> commandes -> packets -> etats -> signaux

```text
CORE-1 Scene dominante
CMD : CMD-CORE-DOM
Packets : PERF-PACKET, SCN-PACKET, DEC-PACKET, SIG-PACKET si changement sensible
Etat : STATE-DOM, STATE-FORM si transition
Chemins : PATH-GEN-MUS, PATH-DIAG-VIEW
Signal : SIG-0 scene active, SIG-1 transition, SIG-2 si DOM conflictuelle
Release : transfert DOM, couche, geste, etat ou sortie

CORE-2 Etat de forme
CMD : CMD-CORE-FORM
Packets : PERF-PACKET, SCN-PACKET, DEC-PACKET, SPC-PACKET si espace concerne
Etat : STATE-FORM, STATE-RET
Chemins : PATH-GEN-MUS, PATH-SPC-HAL-SLOW, PATH-DIAG-VIEW
Signal : SIG-0 etat, SIG-1 retour prepare, SIG-2 si retour limite
Release : sortie, consequence, retour stable

CORE-3 Couches actives
CMD : CMD-CORE-LAYER
Packets : SCN-PACKET, LIVE-PACKET, PERM-PACKET, GEN-PACKET si generatif
Etat : STATE-LAYER, STATE-GEN
Chemins : PATH-GEN-MUS, PATH-SPC-HAL-SLOW, PATH-GRV-CRITICAL selon couche
Signal : SIG-0 couche, SIG-2 si couches en conflit
Release : couche retiree, transferee ou reduite en trace

CORE-4 Mode DID
CMD : CMD-CORE-DID / CMD-DID-MODE
Packets : SRC-PACKET, LIVE-PACKET, PROTO-PACKET, GRAVE-PACKET, DEC-PACKET
Etat : STATE-DID, STATE-GRV si conflit
Chemins : PATH-DIRECT, PATH-SAFE, PATH-PLAY-FAST, PATH-GRV-CRITICAL
Signal : SIG-1 source protegee, SIG-2 direct limite, SIG-3 P0/P1
Release : retour libre protege ou transfert vers mode precedent

CORE-5 Mode GRV
CMD : CMD-CORE-GRV / CMD-GRV-MODE / CMD-GRV-OWNER
Packets : GRAVE-PACKET, DEC-PACKET, AUTOPRO-PACKET, SIG-PACKET
Etat : STATE-GRV, STATE-DID si adaptation didgeridoo
Chemins : PATH-GRV-CRITICAL, PATH-SAFE, PATH-PLAY-FAST, PATH-SPC-HAL-SLOW
Signal : SIG-1 grave actif, SIG-2 grave limite, SIG-3 sub dangereux
Release : retrait du grave, transfert owner, graves libres termines

CORE-6 Monde spatial
CMD : CMD-CORE-SPC / CMD-SPC-WORLD
Packets : SPC-PACKET, PERM-PACKET, DEC-PACKET, SIG-PACKET
Etat : STATE-SPC
Chemins : PATH-SPC-HAL-SLOW, PATH-PLAY-FAST si proximite critique, PATH-SAFE
Signal : SIG-0 monde, SIG-1 monde long/immense, SIG-2 espace limite
Release : retour proche, monde commun, cut decide, transition

CORE-7 Halo
CMD : CMD-CORE-HAL / CMD-HAL-MODE / CMD-GESTE-HAL-*
Packets : HAL-PACKET, SPC-PACKET, GEN-PACKET si source generative, DEC-PACKET
Etat : STATE-HAL, STATE-SPC
Chemins : PATH-SPC-HAL-SLOW, PATH-SAFE si P0/P1, PATH-DIAG-VIEW
Signal : SIG-1 Halo Lock/Force, SIG-2 halo limite, SIG-3 P0/P1
Release : REL-HAL, cut live, sortie decidee, safe force relachee

CORE-8 Corps / retour
CMD : CMD-CORE-RET / CMD-GESTE-RET-* / CMD-GESTE-CONTRACT
Packets : LIVE-PACKET, GEN-PACKET si retour genere, GRAVE-PACKET, SPC-PACKET
Etat : STATE-RET, STATE-FORM, STATE-GRV si retour grave
Chemins : PATH-PLAY-FAST, PATH-GRV-CRITICAL, PATH-GEN-MUS, PATH-SPC-HAL-SLOW
Signal : SIG-1 retour prepare, SIG-2 retour limite, SIG-0 refus de retour decide
Release : consequence, retour stable, retrait ou maintien prolonge

CORE-9 Generation / autonomie
CMD : CMD-CORE-GEN / CMD-GEN-PERM / CMD-GEN-AUT / CMD-GEN-START
Packets : GEN-PACKET, PERM-PACKET, DEC-PACKET, SCN-PACKET, LIVE-PACKET
Etat : STATE-GEN, STATE-LAYER
Chemins : PATH-GEN-MUS, PATH-PLAY-FAST si interaction jouee, PATH-DIAG-VIEW
Signal : SIG-1 generation armee, SIG-2 motif bloque, SIG-2 autonomie limitee
Release : GEN-REL, sortie, trace, retrait ou transfert LAYER/ETAT

CORE-10 Protection / signalisation
CMD : CMD-CORE-SIG / CMD-PROTECT-* / CMD-PROTECT-SIG
Packets : AUTOPRO-PACKET, SIG-PACKET, DEC-PACKET, MIX-PACKET, LAT-PACKET
Etat : STATE-PROTECT, STATE-SIG
Chemins : PATH-SAFE, PATH-DIAG-VIEW, PATH-GRV-CRITICAL si grave
Signal : SIG-0 a SIG-3 selon criticite
Release : risque disparu, P2 reprend, safe relache
```

---

## 8. Matrice PAGE-SCN -> permissions prioritaires

### 8.1. Regle generale

```text
CMD-PAGE-ARM ne force rien.
CMD-PAGE-PERM rend une fonction disponible.
CMD-PAGE-FOCUS met une fonction sous attention.
CMD-PAGE-REL sort de la page ou transfere vers LAYER/GESTE/ETAT.
```

### 8.2. Pages

```text
PAGE-SCN-1 Didgeridoo / systeme minimum
Permissions : DID mode, GRV mode, guide harmonique, adaptation, traitement
source, halo source, retour corps.
Packets : SRC, LIVE, GRAVE, PROTO, HAL, SIG.
Signaux : source protegee, grave retire, direct limite, P0/P1.
Fallback : MIN-DID-PC complet.

PAGE-SCN-2 Techno corporelle naturalisee
Permissions : pression, pulse, densite, accent, relation grave, retour,
didgeridoo comme couche ou guide.
Packets : SCN, GEN, GRAVE, LIVE, SIG.
Signaux : densite limitee, source masquee, sub protege, retour prepare.
Fallback : pulse/pression simplifiee sans kick banal.

PAGE-SCN-3 Techno suspendue tres longue
Permissions : maintien long, refus retour, memoire techno, espace long,
halo lock/cut/safe force, retour grave, retour pulse, retrait.
Packets : SCN, SPC, HAL, GEN, GRAVE, SIG.
Signaux : retour prepare, halo limite, source protegee, sub limite, P2 maintenu.
Fallback : suspension longue possible sans ambient subi.

PAGE-SCN-4 Gong / bloom grave / metal-gong
Permissions : fonction gong, bloom, queue lock/cut, rugissement, base
microtonale, vrai sub, relation didgeridoo, monde metal-gong.
Packets : GRAVE, SPC, HAL, GEN, DEC, SIG.
Signaux : sub protege, boue grave, source masquee, queue limitee.
Fallback : pas de dependance a gong physique.

PAGE-SCN-5 Sound-system immersion / domination
Permissions : pression grave, domination, vrai sub, monde immersif/immense,
corps/retour, source protegee, transgression possible.
Packets : GRAVE, SPC, LIVE, AUTOPRO, MIX, SIG.
Signaux : sub protege, headroom, source protegee, P2 limite par P0/P1.
Fallback : domination sans destruction de source live.

PAGE-SCN-6 Voix exposee integree
Permissions : role vocal, apparition/retrait, integration vocalo-acoustique,
intelligibilite, halo, rythme, proximite, protection voix.
Packets : SRC, SPC, HAL, LIVE, MIX, SIG.
Signaux : voix masquee, feedback, brillance agressive, halo limite.
Fallback : pas de voix nue par defaut, pas d'auto-tune reconnaissable.

PAGE-SCN-7 Acid naturalise / ligne vivante
Permissions : regime melodique, reconnaissance, naturalisation acid, source du
motif, mutation timbrale, retrait, didgeridoo guide, mode GRV.
Packets : GEN, GRAVE, PROTO, LIVE, SIG.
Signaux : motif bloque, reconnaissance acid trop forte, source protegee,
grave limite.
Fallback : ligne vivante sans TB-303 par defaut.

PAGE-SCN-8 Polytexture rythmico-spectrale
Permissions : densite, complexite, accent directeur, couches, source
directrice, grave/halo/espace limites, retour/sortie.
Packets : GEN, SCN, GRAVE, SPC, HAL, SIG.
Signaux : densite nettoyee, source masquee, grave limite, couches en conflit.
Fallback : complexite dirigee, pas masse autonome.

PAGE-SCN-9 Transgression controlee
Permissions : regime transgression, source, risque accepte, peak/maintien/sortie,
graves libres, rugissement, silence/cut, retour corps.
Packets : LIVE, GRAVE, SPC, HAL, MIX, AUTOPRO, SIG.
Signaux : P0, P1, P2 limite, safe actif, source protegee, sortie preparee.
Fallback : transgression sans perte de qualite non choisie.
```

---

## 9. Matrice des gestes transversaux

```text
CMD-GESTE-RET-GRV
Autorite : P2, P3 si scene, P0/P1 si protection impose retrait.
Packets : LIVE, GRAVE, DEC, SIG.
Etat : STATE-RET, STATE-GRV.
Chemins : PATH-GRV-CRITICAL, PATH-PLAY-FAST.
Signal : SIG-1 retour prepare, SIG-2 grave limite.
Sortie : decroissance, transfert au groove, retrait.

CMD-GESTE-RET-PULSE
Autorite : P2/P3.
Packets : LIVE, GEN, SCN, DEC, SIG.
Etat : STATE-RET, STATE-FORM.
Chemins : PATH-PLAY-FAST, PATH-GEN-MUS.
Signal : SIG-1 retour prepare.
Sortie : pulse maintenu, retrait, suspension.

CMD-GESTE-HAL-CUT
Autorite : P2, P0/P1 si protection.
Packets : LIVE, HAL, SPC, DEC, SIG.
Etat : STATE-HAL.
Chemins : PATH-SPC-HAL-SLOW, PATH-SAFE.
Signal : SIG-1 cut volontaire, SIG-2 halo limite, SIG-3 P0/P1.
Sortie : silence, proximite, nouveau halo, release.

CMD-GESTE-HAL-MOM
Autorite : P2/P3.
Packets : LIVE, HAL, SPC, GEN si source.
Etat : STATE-HAL.
Chemins : PATH-SPC-HAL-SLOW.
Signal : SIG-0/1 selon presence.
Sortie : relache court, Lock si decide, disparition.

CMD-GESTE-BLOOM
Autorite : P2/P3, limite par P0/P1.
Packets : GRAVE, SPC, HAL, LIVE, SIG.
Etat : STATE-GRV, STATE-SPC, STATE-HAL.
Chemins : PATH-GRV-CRITICAL, PATH-SPC-HAL-SLOW.
Signal : SIG-1 bloom, SIG-2 sub/boue limite, SIG-3 danger.
Sortie : queue, cut, contraction, transfert.

CMD-GESTE-FREEZE
Autorite : P2/P3, P0/P1 peuvent limiter.
Packets : SPC, HAL, LIVE, SIG.
Etat : STATE-HAL, STATE-SPC, STATE-FORM.
Chemins : PATH-PLAY-FAST si court, PATH-SPC-HAL-SLOW si long.
Signal : SIG-1 freeze, SIG-2 halo/espace limite.
Sortie : thaw, cut, release, maintien decide.

CMD-GESTE-CONTRACT
Autorite : P2/P3, P1 si clarifier presence.
Packets : SPC, LIVE, DEC, SIG.
Etat : STATE-SPC, STATE-RET.
Chemins : PATH-PLAY-FAST, PATH-SPC-HAL-SLOW.
Signal : SIG-1 contraction, SIG-2 espace limite.
Sortie : proximite stable, reouverture, retour corps.

CMD-GESTE-SILENCE
Autorite : P2/P3, P0/P1 si safe.
Packets : LIVE, GEN, SPC, HAL, MIX, SIG.
Etat : STATE-FORM, STATE-RET, STATE-GEN, STATE-HAL.
Chemins : PATH-GEN-MUS, PATH-SAFE.
Signal : SIG-1 retrait decide, SIG-3 si safe.
Sortie : respiration, suspension, retour, cut durable.

CMD-GESTE-TRANS-PEAK
Autorite : P2 explicite, P3 si scene, P0/P1 limitent.
Packets : LIVE, GEN, GRAVE, SPC, HAL, MIX, AUTOPRO, SIG.
Etat : STATE-FORM, STATE-GRV, STATE-SPC, STATE-PROTECT.
Chemins : PATH-PLAY-FAST, PATH-GRV-CRITICAL, PATH-SPC-HAL-SLOW, PATH-SAFE.
Signal : SIG-2 risque accepte/limite, SIG-3 P0/P1.
Sortie : consequence, retrait, retour corps, safe.
```

---

## 10. Signalisation

### 10.1. Niveaux

```text
SIG-0
Information discrete : scene active, couche active, etat de forme, monde actif.

SIG-1
Attention performative : fonction armee, retour prepare, Halo Lock, graves
libres actifs, monde long, generation armee.

SIG-2
Limitation jouable : P2 limite, motif bloque, grave limite, halo limite,
source protegee, espace limite, densite nettoyee.

SIG-3
Critique : P0/P1 actif, safe actif, feedback, clipping critique, headroom
critique, sub dangereux, direct indisponible.
```

### 10.2. Matrice evenement -> signal

```text
EVT-P0-ACTIVE
Signal : SIG-3.
Action : protection immediate, cause visible, release visible.

EVT-P1-ACTIVE
Signal : SIG-3 ou SIG-2 selon gravite.
Action : limitation lisible, P2 peut reprendre apres release.

EVT-P2-LIMITED
Signal : SIG-2.
Action : expliquer ce qui limite et pourquoi.

EVT-DIRECT-UNAVAILABLE
Signal : SIG-3 si presence directe affectee, sinon SIG-2.
Action : mode safe/direct recuperable.

EVT-GRV-CONFLICT
Signal : SIG-2 ou SIG-3.
Action : owner grave, retrait, adaptation ou graves libres explicitement decides.

EVT-HAL-LIMITED
Signal : SIG-2.
Action : dire si limite par P0/P1, sortie decidee ou choix live.

EVT-SPC-WORLD-CHANGE
Signal : SIG-0/1 ; SIG-2 si limite.
Action : rendre visible si changement sensible.

EVT-GEN-BLOCKED
Signal : SIG-2.
Action : motif bloque, permission manquante, GEN-PACKET invalide ou sortie absente.

EVT-LAT-RISK
Signal : SIG-1/2 selon chemin.
Action : informer la presence, sans supprimer de fonction musicale.

EVT-DIAG
Signal : SIG-DIAG ou SIG-0 optionnel.
Action : aucune condition audio.
```

Regle :

```text
la signalisation ne doit pas devenir une deuxieme interface bruyante.
elle signale ce qui modifie la jouabilite.
```

---

## 11. Matrice de conflit

### 11.1. Conflits prioritaires

```text
P0 contre tout
Resultat : P0 protege, SIG-3, release visible.

P1 contre P2
Resultat : P2 peut etre limite, SIG-2/SIG-3, reprise apres release.

P2 contre P3
Resultat : choix live gagne, sauf P0/P1.

P2 contre P4
Resultat : generation se limite, se retire ou devient trace.

P2 contre P5
Resultat : Auto-Pro doux ne supprime pas choix live.

Deux DOM concurrentes
Resultat : transfert, alternance, une devient LAYER/GESTE/ETAT, ou crise
explicitement decidee.

Grave owner multiple
Resultat : un owner lisible, soutien discret, retrait, adaptation ou graves
libres explicitement decides.

SPC/HAL/GEN-HAL confondus
Resultat : HAL decide le mode, SPC decide le monde, GEN-HAL fournit la matiere.

GEN sans permission
Resultat : BLOCK.

REQUEST sans demarrage autorise
Resultat : proposition ou SIG, pas START.

DIAG vers audio
Resultat : BLOCK.
```

### 11.2. Reponses standard

```text
ACK-P2
Choix live accepte.

LIMIT-P1
Choix limite par lisibilite vitale.

BLOCK-PERM
Permission manquante.

BLOCK-PACKET
Packet obligatoire manquant ou invalide.

BLOCK-SORTIE
Pas de sortie musicale claire.

REL-STABLE
Retour a etat stable.

REL-TRACE
Fonction reduite en trace.

REL-TRANSFER
Fonction transferee de DOM a LAYER, GESTE, ETAT ou inversement.
```

---

## 12. `MIN-DID-PC`

### 12.1. Commandes minimales

Le setup minimum didgeridoo + PC doit rester complet.

```text
CMD-CORE-DOM
Scene dominante, au minimum SCN-1 et scenes compatibles.

CMD-CORE-FORM
Preparation, maintien, retrait, retour, sortie, maintien prolonge.

CMD-CORE-DID
Libre protege, systeme adapte au didgeridoo, didgeridoo adapte au systeme,
guide harmonique, source traitee, perturbateur.

CMD-CORE-GRV
Off/absent, guide didgeridoo, soutien discret, retrait du grave genere,
graves libres, sub ponctuel non identifiable si disponible.

CMD-CORE-RET
Retour, refus de retour, maintien, retrait, contraction, impact rare.

CMD-CORE-HAL
Auto, Lock, Force, Cut, Momentary, Safe force en version simple.

CMD-CORE-GEN
Off, Reponse, Variation, Proposition, Maintien ; autonomie forte seulement
choix live ou scene explicite.

CMD-PROTECT-P0/P1/P5
Protection critique, lisibilite vitale, coherence douce.

CMD-CORE-SIG
Signalisation des limites qui changent la jouabilite.
```

### 12.2. Packets minimaux

```text
SRC-PACKET ;
LIVE-PACKET ;
SCN-PACKET ;
DEC-PACKET ;
PERM-PACKET ;
GEN-PACKET simple ;
GRAVE-PACKET ;
SPC-PACKET simple ;
HAL-PACKET simple ;
AUTOPRO-PACKET ;
MIX-PACKET ;
SIG-PACKET ;
LAT-PACKET ;
DIAG-PACKET non bloquant.
```

Interdits :

```text
MIN-DID-PC ne depend pas du gong physique.
MIN-DID-PC ne depend pas de la voix.
MIN-DID-PC ne depend pas de convolution.
MIN-DID-PC ne depend pas d'une mesure de salle.
MIN-DID-PC ne depend pas d'un sub puissant.
MIN-DID-PC ne depend pas d'une UI complexe.
MIN-DID-PC n'est pas un mode degrade.
```

---

## 13. Interdits de traduction

```text
CMD vers objet Max definitif.
CMD vers bouton physique impose.
PAGE-SCN vers preset.
CORE vers dix controles physiques imposes.
P5 vers composition automatique.
GEN-PACKET vers autonomie permanente.
REQUEST vers START.
DIAG vers audio.
VIEW vers decision musicale.
LAT vers suppression musicale.
SAFE vers style.
SPC vers reverb preset.
HAL vers simple effet.
GEN-HAL vers HAL.
P0/P1 invisibles.
P2 limite sans signal.
Halo Lock retire hors P0/P1, sortie decidee ou choix live.
Didgeridoo baisse ou masque en cachette.
Grave libre active par defaut.
Electronique reconnaissable par defaut.
Transgression permanente par defaut.
```

---

## 14. Questions ouvertes

```text
Q-CMD-1
Quelle granularite finale pour les commandes physiques ?
Reponse attendue plus tard, apres audit global pre-implementation.

Q-CMD-2
Quels groupes de commandes seront visibles simultanement dans l'UI ?
Hors perimetre ici.

Q-CMD-3
Faut-il une page de superposition recurrente, distincte des PAGE-SCN ?
Possible, mais a specifier seulement si les scenes composees reviennent souvent.

Q-CMD-4
Quels signaux doivent etre visuels, sonores, tactiles ou seulement diagnostiques ?
Hors perimetre tant que l'interface n'est pas choisie.

Q-CMD-5
Quelle traduction exacte vers messages Max, dictionaries, pattr, send/receive ou
autres structures ?
Hors perimetre avant architecture operationnelle.
```

---

## 15. Decision pour la suite

Decision :

```text
cette matrice peut servir de contrat entre le noyau performance et la future
architecture operationnelle Max standalone, sous reserve d'audit de compatibilite.
```

Prochaine fiche logique :

```text
AUDIT_COMPATIBILITE_MATRICE_COMMANDES_PACKETS_ETATS_SIGNAUX_PERFORMANCE_AVEC_CORPUS_v0_1.md
```
