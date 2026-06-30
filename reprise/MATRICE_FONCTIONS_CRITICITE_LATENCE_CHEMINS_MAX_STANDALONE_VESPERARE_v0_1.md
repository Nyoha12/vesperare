# MATRICE FONCTIONS / CRITICITE LATENCE / CHEMINS MAX STANDALONE VESPERARE v0.1

Projet : Vesperare
Statut : matrice fonctionnelle criticite de latence / chemins / protections
Date : 2026-06-23

Sources actives principales :

- `DECISION_RUNTIME_MAX_STANDALONE_LATENCE_SANS_COMPROMIS_VESPERARE_v0_1.md`
- `SPECIFICATION_BUDGET_LATENCE_CHARGE_DEGRADATION_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_BUDGET_LATENCE_CHARGE_DEGRADATION_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_GRAVE_GONG_SUB_DIDGERIDOO_CONFLITS_ET_MODES_MAX_STANDALONE_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_SPECIFICATION_GRAVE_GONG_SUB_DIDGERIDOO_CONFLITS_ET_MODES_AVEC_CORPUS_v0_1.md`
- `MATRICE_GEN_ROLE_SCENES_CONTROLES_LIVE_RISQUES_VESPERARE_v0_1.md`
- `SPECIFICATION_SYSTEME_DECISIONNEL_CONCEPTUEL_VESPERARE_v0_1.md`
- `MATRICE_ARCHITECTURE_MAX_STANDALONE_NIVEAU_6_ROLES_TECHNIQUES_CANDIDATS_CHEMINS_RISQUES_VESPERARE_v0_1.md`

But :

```text
classer les fonctions Vesperare par criticite de latence, chemin autorise,
autorite de decision, signalisation et risque, afin de proteger le geste live
et la presence musicale sans choisir d'algorithmes, objets Max, seuils,
controleur, UI ou patch final.
```

Hors perimetre :

```text
algorithmes definitifs ;
objets Max definitifs ;
syntaxe Max ;
seuils ;
buffers ;
materiel final ;
interface audio finale ;
driver final ;
calibration PA ;
mapping MIDI ;
controleur physique ;
UI finale ;
patch final ;
tests pratiques ;
benchmark.
```

---

## 1. Decision centrale

Decision :

```text
chaque fonction musicale doit avoir une criticite de latence et un chemin
autorise avant toute architecture plus concrete.
```

Regle centrale :

```text
la latence est un enjeu musical de presence, confiance, precision rythmique,
pression corporelle et continuite du geste.
elle ne doit pas etre optimisee par appauvrissement artistique.
```

Interdits :

```text
retirer une fonction desiree pour tenir une latence ;
appauvrir une scene pour tenir une latence ;
transformer surcharge ou CPU en choix esthetique cache ;
rendre un son electronique reconnaissable pour alleger ;
degrader didgeridoo direct, grave critique, protections P0/P1 ou retour joue ;
placer une analyse lente sur un chemin direct critique ;
faire dependre une protection directe d'un calcul lent.
```

Reponse attendue si une fonction est lourde :

```text
changer le chemin ;
separer direct et analyse ;
preparer au lieu de corriger apres coup ;
mettre hors chemin critique ;
precalculer si possible ;
adapter l'architecture ;
ameliorer materiel/interface/driver plus tard ;
signaler la limitation si elle affecte la jouabilite.
```

---

## 2. Classes de criticite

### 2.1. `LAT-0 - Critique immediate`

Definition :

```text
fonction qui affecte directement la securite, la presence source, le geste
live, le monitoring remplace, le grave vital ou la sortie principale.
```

Exigence :

```text
chemin le plus court possible ;
aucune analyse lente bloquante ;
aucun effet long indispensable a l'attaque ;
repli direct ou safe possible ;
signal si limitation audible ou jouable.
```

Exemples :

```text
didgeridoo direct ;
sortie principale ;
Auto-Pro P0/P1 ;
feedback ;
headroom ;
sub destructeur ;
source essentielle masquee ;
attaque principale.
```

### 2.2. `LAT-1 - Interaction jouee`

Definition :

```text
fonction qui doit repondre au jeu, a la source live, au pulse, au retour ou a
un controle live immediat.
```

Exigence :

```text
coherence gestuelle et rythmique ;
source directe preservee si le traitement est plus lent ;
hors chaines longues ;
prioritaire sur textures, analyses lentes et vues.
```

Exemples :

```text
transformation didgeridoo jouee ;
guidage harmonique ;
adaptation harmonique optionnelle ;
motif rythmique repondant ;
retrait grave critique non P0 ;
retour grave ponctuel ;
controle live immediat.
```

### 2.3. `LAT-2 - Reponse musicale non immediate`

Definition :

```text
fonction musicale reactive mais non indispensable a l'attaque ou a la securite.
```

Exigence :

```text
ne bloque pas LAT-0/LAT-1 ;
peut etre legerement integree dans la forme ;
doit rester coherente avec scene, retour et densite.
```

Exemples :

```text
motifs generes ;
polytexture ;
interlocking non direct ;
basse-motif non porteur ;
texture bloom ;
transgression preparee ;
retour prepare ;
generation de densite.
```

### 2.4. `LAT-3 - Etat / espace / halo / analyse lente`

Definition :

```text
fonction lente ou persistante qui ne remplace pas l'attaque directe.
```

Exigence :

```text
stabilite, coherence et preparation ;
aucune autorite sur protection directe ;
hors chemin critique ;
signal seulement si elle limite un choix live.
```

Exemples :

```text
reverb longue ;
halo long ;
freeze long ;
mesure de salle ;
historique ;
scene ;
etat de forme ;
preparation de retour ;
analyse de tendance.
```

### 2.5. `LAT-DIAG - Diagnostic / vue`

Definition :

```text
fonction d'observation, log, signalisation ou visualisation qui ne conditionne
pas l'audio.
```

Exigence :

```text
non bloquant ;
desactivable ;
jamais condition de sortie audio ;
priorite informative.
```

### 2.6. `LAT-OFFLINE - Hors live`

Definition :

```text
fonction utile avant ou apres live : preparation, mesure, calibration, archive,
analyse lourde non necessaire au geste.
```

Exigence :

```text
ne conditionne pas la performance live.
```

---

## 3. Chemins autorises

### 3.1. `PATH-DIRECT`

Definition :

```text
chemin audio direct entendu ou recuperable : entree, protection minimale,
traitement direct necessaire, mix principal, sortie.
```

Autorise :

```text
LAT-0 ;
LAT-1 strictement necessaire ;
protections P0/P1 ;
source directe ;
repli direct.
```

Interdit :

```text
reverb longue obligatoire ;
convolution lourde ;
analyse lente ;
diagnostic bloquant ;
generation autonome ;
UI comme condition audio.
```

### 3.2. `PATH-SAFE`

Definition :

```text
chemin de protection, repli, limitation P0/P1 ou etat recuperable.
```

Autorise :

```text
limitation headroom ;
anti-feedback ;
protection source ;
sub protege ;
mix safe ;
signalisation critique.
```

Interdit :

```text
decision esthetique cachee ;
retrait artistique sans P0/P1 ou choix live ;
suppression d'une fonction desiree par confort technique.
```

### 3.3. `PATH-PLAY-FAST`

Definition :

```text
chemin de transformation jouee, guidage source, reaction rythmique ou controle
live immediat.
```

Autorise :

```text
LAT-1 ;
certains LAT-2 courts ;
guidage didgeridoo ;
retour grave ponctuel ;
motif repondant ;
signalisation jouable.
```

Interdit :

```text
analyse lente obligatoire ;
texture lourde en serie ;
latence non signalee sur geste instrumental.
```

### 3.4. `PATH-GEN-MUS`

Definition :

```text
chemin de generation musicale : motifs, lignes, densite, polytexture, retours
prepares, propositions.
```

Autorise :

```text
LAT-1 si source guidee et leger ;
LAT-2 par defaut ;
LAT-3 si etat ou texture ;
GEN-PACKET ;
AUT borne.
```

Interdit :

```text
imposer une forme contre P2/P3 ;
devenir porteur LAT-0 ;
bloquer direct ou safe ;
devenir preset autonome.
```

### 3.5. `PATH-GRV-CRITICAL`

Definition :

```text
chemin grave critique : sub porteur, retrait grave, conflit didgeridoo/sub,
source grave protegee, retour grave ponctuel.
```

Autorise :

```text
LAT-0 ou LAT-1 selon fonction ;
P0/P1 ;
P2 si choix live ;
signalisation obligatoire si limitation.
```

Interdit :

```text
grave libre par defaut ;
sub standard par simplification ;
analyse lente responsable du retrait critique ;
baisse cachee du didgeridoo.
```

### 3.6. `PATH-SPC-HAL-SLOW`

Definition :

```text
chemin espace, reverb, halo, freeze, bloom long ou monde spatial non critique.
```

Autorise :

```text
LAT-2 si reaction proche ;
LAT-3 par defaut ;
LOCK/FORCE/CUT sous P2 ;
P0/P1 si danger ou masquage vital.
```

Interdit :

```text
remplacer attaque critique ;
couper Halo Lock hors P0/P1 ;
confondre bloom, reverb et halo ;
masquer source essentielle.
```

### 3.7. `PATH-ANA-FAST`

Definition :

```text
analyse rapide non bloquante qui alimente protections, confiance ou decisions
jouables sans retarder l'audio direct.
```

Autorise :

```text
indicateurs simples ;
conflit grave rapide ;
presence source ;
attaque ;
headroom ;
signalisation P0/P1.
```

Interdit :

```text
calcul lourd sur direct ;
analyse comme condition unique d'une protection vitale si elle peut arriver
trop tard.
```

### 3.8. `PATH-ANA-SLOW`

Definition :

```text
analyse lente, historique, tendance, estimation de salle ou preparation.
```

Autorise :

```text
LAT-3 ;
LAT-OFFLINE ;
preparation d'etat ;
proposition non autoritaire ;
diagnostic.
```

Interdit :

```text
autorite P0/P1 directe ;
correction apres coup d'un conflit direct ;
blocage audio.
```

### 3.9. `PATH-DIAG-VIEW`

Definition :

```text
signalisation, monitoring visuel, log, etat lisible par le musicien.
```

Autorise :

```text
P0/P1/P2 signales ;
limitation visible ;
latence ou charge comme information ;
source protegee ;
grave limite ;
halo adapte.
```

Interdit :

```text
vue qui conditionne l'audio ;
diagnostic bloquant ;
interface bruyante qui remplace une decision claire.
```

---

## 4. Matrice fonctions critiques

### 4.1. Sources directes

| Fonction | Classe | Chemin | Autorite | Signal | Interdits |
|---|---|---|---|---|---|
| Didgeridoo audible/protege | LAT-0 | PATH-DIRECT / PATH-SAFE | P0/P1/P2 | source protegee, direct limite | baisse cachee, simple input |
| Didgeridoo transforme joue | LAT-1 | PATH-PLAY-FAST | P2/P3 + P0/P1 | latence ressentie si limite | chaine longue obligatoire |
| Gong direct optionnel | LAT-1 | PATH-PLAY-FAST / PATH-GRV-CRITICAL | P2/P3 + P0/P1 | resonance, source masquee | gong decoratif par defaut |
| Voix integree optionnelle | LAT-1 | PATH-PLAY-FAST / PATH-SPC-HAL-SLOW | P2/P3 + P0/P1 | voix masquee | voix nue, auto-tune reconnaissable |
| Tambour/percussion optionnel | LAT-1 | PATH-PLAY-FAST | P2/P3 + P0/P1 | attaque masquee | latence qui detruit attaque |
| Source directe de secours | LAT-0 | PATH-DIRECT / PATH-SAFE | P0/P1 | direct actif | dependance a analyse lente |

### 4.2. Protections et mix vital

| Fonction | Classe | Chemin | Autorite | Signal | Interdits |
|---|---|---|---|---|---|
| Headroom critique | LAT-0 | PATH-SAFE | P0 | P0 actif | choix esthetique cache |
| Feedback / larsen | LAT-0 | PATH-SAFE | P0 | P0 actif | attente d'analyse lente |
| Sub destructeur | LAT-0 | PATH-GRV-CRITICAL / PATH-SAFE | P0 | sub protege | graves libres non limites |
| Source essentielle masquee | LAT-0/LAT-1 | PATH-SAFE / PATH-ANA-FAST | P1 | source protegee | masquer limitation |
| Attaque principale masquee | LAT-0/LAT-1 | PATH-SAFE / PATH-ANA-FAST | P1 | attaque protegee | reverb longue obligatoire |
| Boue grave non voulue | LAT-1/LAT-2 | PATH-GRV-CRITICAL / PATH-SPC-HAL-SLOW | P1/P2 | grave/reverb limite | couper choix P2 sans signal |
| Sortie principale | LAT-0 | PATH-DIRECT | P0/P1 | direct/safe si limite | diagnostic sur sortie vitale |
| Repli safe | LAT-0 | PATH-SAFE | P0/P1 | safe actif | repli comme reduction artistique |

### 4.3. Grave / sub / didgeridoo / gong

| Fonction | Classe | Chemin | Autorite | Signal | Interdits |
|---|---|---|---|---|---|
| Sub porteur direct | LAT-0/LAT-1 | PATH-GRV-CRITICAL | P2/P3 + P0/P1 | sub porteur, sub limite | sub standard, sub illisible |
| Sub soutien discret | LAT-1/LAT-2 | PATH-GRV-CRITICAL / PATH-GEN-MUS | P2/P3 + P1 | soutien/retrait | headroom consomme sans fonction |
| Retrait grave critique | LAT-0/LAT-1 | PATH-GRV-CRITICAL / PATH-SAFE | P0/P1/P2 | grave retire | retrait percu comme panne |
| Graves libres | LAT-1/LAT-2 | PATH-GRV-CRITICAL | P2 explicite + P0/P1 | graves libres, limites P0/P1 | defaut automatique |
| Didgeridoo guide harmonique | LAT-1 | PATH-PLAY-FAST / PATH-GEN-MUS | P2/P3 | guidage actif | didgeridoo controleur |
| Adaptation harmonique DID | LAT-1 | PATH-PLAY-FAST | P2/P3 + P1 | adaptation active | pitch correction reconnaissable |
| Gong bloom court | LAT-1/LAT-2 | PATH-GRV-CRITICAL / PATH-SPC-HAL-SLOW | P2/P3 + P1 | bloom actif | bloom = boue |
| Gong bloom long | LAT-2/LAT-3 | PATH-SPC-HAL-SLOW | P2/P3 + P0/P1 | lock/cut/limite | coupe hors P0/P1 |
| Souffle grave | LAT-2/LAT-3 | PATH-GRV-CRITICAL / PATH-SPC-HAL-SLOW | P2/P3 | souffle actif | ambient subi |
| Base microtonale stable | LAT-3 | PATH-GEN-MUS / PATH-SPC-HAL-SLOW | P2/P3 | base active si utile | theorie sonore non musicale |

### 4.4. Corps, pulse et retours

| Fonction | Classe | Chemin | Autorite | Signal | Interdits |
|---|---|---|---|---|---|
| Pulse explicite joue | LAT-1 | PATH-PLAY-FAST / PATH-GEN-MUS | P2/P3 | pulse actif | grille mecanique imposee |
| Pulse latent | LAT-2 | PATH-GEN-MUS | P2/P3 | non obligatoire | retour impose |
| Pression rythmique | LAT-1/LAT-2 | PATH-PLAY-FAST / PATH-GEN-MUS | P2/P3 + P1 | densite/limite | densite efface corps |
| Retour grave ponctuel | LAT-1 | PATH-GRV-CRITICAL / PATH-PLAY-FAST | P2/P3 + P0/P1 | retour prepare/actif | drop automatique |
| Retour pulse | LAT-1/LAT-2 | PATH-PLAY-FAST / PATH-GEN-MUS | P2/P3 | retour prepare | retour contre suspension decidee |
| Refus du retour | LAT-2/LAT-3 | PATH-GEN-MUS / PATH-SPC-HAL-SLOW | P2/P3 | maintien/refus si utile | Auto-Pro impose retour |
| Contraction d'espace | LAT-1/LAT-2 | PATH-PLAY-FAST / PATH-SPC-HAL-SLOW | P2/P3 + P1 | contraction active | espace mange l'attaque |

### 4.5. Generation rythmique et melodique

| Fonction | Classe | Chemin | Autorite | Signal | Interdits |
|---|---|---|---|---|---|
| GEN-PULSE | LAT-1/LAT-2 | PATH-GEN-MUS | P2/P3/P4 + P1 | densite, retour | pulse banal impose |
| GEN-COUNTERTIME | LAT-2 | PATH-GEN-MUS | P2/P3/P4 | attente/retour | break/drop generique |
| GEN-POLYRHYTHM | LAT-2 | PATH-GEN-MUS | P2/P3/P4 + P1 | densite limitee | couches sans direction |
| GEN-INTERLOCKING | LAT-1/LAT-2 | PATH-PLAY-FAST / PATH-GEN-MUS | P2/P3/P4 | source masquee si risque | imitation style |
| GEN-BASS-MOTIF | LAT-1/LAT-2 | PATH-GRV-CRITICAL / PATH-GEN-MUS | P2/P3/P4 + P1 | motif/gravite | basse electronique banale |
| GEN-ACID-NAT | LAT-1/LAT-2 | PATH-GEN-MUS | P2/P3/P4 | reconnaissance acid | TB-303/squelch cliche |
| GEN-LINE-MODAL-MICRO | LAT-2/LAT-3 | PATH-GEN-MUS | P2/P3/P4 | tension si utile | lead banal, theorie |
| GEN-JAZZ-KEITA | LAT-1/LAT-2 | PATH-PLAY-FAST / PATH-GEN-MUS | P2/P3/P4 | densite/interaction | style jazz plaque |
| GEN-VOICE-INTEGRATED | LAT-1/LAT-2 | PATH-PLAY-FAST / PATH-SPC-HAL-SLOW | P2/P3/P4 + P1 | voix masquee | voix nue |
| GEN-TEXTURE-BLOOM | LAT-2/LAT-3 | PATH-GEN-MUS / PATH-SPC-HAL-SLOW | P2/P3/P4 + P1 | texture/boue | nappe decorative |
| GEN-RETURN | LAT-1/LAT-2 | PATH-PLAY-FAST / PATH-GEN-MUS | P2/P3/P4 | retour prepare | retour automatique |
| GEN-SILENCE | LAT-1/LAT-3 | PATH-SAFE / PATH-GEN-MUS | P2/P3 + P0/P1 | retrait decide/protection | panne confuse |
| GEN-HAL-SOURCE | LAT-2/LAT-3 | PATH-SPC-HAL-SLOW | P2/P3/P4 + P1 | halo limite | GEN decide HAL |
| GEN-SUB-GONG-BREATH | LAT-1/LAT-3 | PATH-GRV-CRITICAL / PATH-SPC-HAL-SLOW | P2/P3/P4 + P0/P1 | grave/bloom limite | role trop large |
| GEN-DID-GUIDED-LINE | LAT-1/LAT-2 | PATH-PLAY-FAST / PATH-GEN-MUS | P2/P3/P4 + P1 | did guide/adapte | didgeridoo input |

### 4.6. Espace, reverb, halo, freeze

| Fonction | Classe | Chemin | Autorite | Signal | Interdits |
|---|---|---|---|---|---|
| Proximite / source proche | LAT-1/LAT-2 | PATH-DIRECT / PATH-SPC-HAL-SLOW | P2/P3 + P1 | source masquee | reverb obligatoire |
| Reverb courte fonctionnelle | LAT-1/LAT-2 | PATH-SPC-HAL-SLOW | P2/P3 + P1 | reverb limitee | attaque masquee |
| Reverb longue stable | LAT-3 | PATH-SPC-HAL-SLOW | P2/P3 + P0/P1 | lock/limite | decor non decide |
| Halo Auto | LAT-2/LAT-3 | PATH-SPC-HAL-SLOW | P3/P4/P5 + P1 | halo adapte | halo cache source |
| Halo Lock/Force | LAT-3 | PATH-SPC-HAL-SLOW | P2 + P0/P1 | lock/force/limite | retrait hors P0/P1 |
| Halo Cut | LAT-1/LAT-2 | PATH-SPC-HAL-SLOW / PATH-SAFE | P2 ou P0/P1 | cut actif | cut sensible sans signal |
| Freeze court | LAT-1/LAT-2 | PATH-PLAY-FAST / PATH-SPC-HAL-SLOW | P2/P3 + P1 | freeze actif | freeze masque attaque |
| Freeze long | LAT-3 | PATH-SPC-HAL-SLOW | P2/P3 + P0/P1 | freeze lock/limite | nappe subie |
| Convolution / IR | LAT-3/LAT-OFFLINE | PATH-SPC-HAL-SLOW / PATH-ANA-SLOW | P2/P3 + P1 | charge/limite | dependance MIN-DID-PC |
| Mesure salle un micro | LAT-OFFLINE/LAT-3 | PATH-ANA-SLOW | preparation | mesure dispo | condition live directe |

### 4.7. Decision, scenes et controles

| Fonction | Classe | Chemin | Autorite | Signal | Interdits |
|---|---|---|---|---|---|
| Scene dominante | LAT-3 | PATH-GEN-MUS / PATH-DIAG-VIEW | P2/P3 | scene active | Auto-Pro choisit scene |
| Etat de forme | LAT-2/LAT-3 | PATH-GEN-MUS / PATH-DIAG-VIEW | P2/P3/P5 | etat actif | etat cache modifie jeu |
| Couches actives | LAT-2/LAT-3 | PATH-GEN-MUS | P2/P3/P4 | couche/limite | trop de couches non signale |
| Controle live immediat | LAT-1 | PATH-PLAY-FAST | P2 | P2 actif/limite | latence non signalee |
| Permission de scene | LAT-3 | PATH-GEN-MUS | P3 | si blocage utile | permission force apparition |
| Auto-Pro ordinaire | LAT-1/LAT-2 | PATH-SAFE / PATH-ANA-FAST | P5/P1 | si limitation | compose a la place |
| Signalisation P0/P1/P2 | LAT-DIAG | PATH-DIAG-VIEW | information | obligatoire si limite | vue conditionne audio |
| Diagnostic / log | LAT-DIAG | PATH-DIAG-VIEW | information | non urgent | ralentit audio |

---

## 5. Regles de conflit entre classes

### 5.1. Si LAT-0 et LAT-3 entrent en conflit

Regle :

```text
LAT-0 protege ou maintient le direct.
LAT-3 se deplace, se prepare, se limite ou se signale.
```

Exemples :

```text
didgeridoo direct contre reverb longue ;
sub destructeur contre halo lock ;
feedback contre freeze long.
```

Interdit :

```text
laisser une fonction lente decider le comportement d'une protection directe.
```

### 5.2. Si LAT-1 et LAT-2 entrent en conflit

Regle :

```text
LAT-1 garde le geste.
LAT-2 se synchronise, se decale musicalement, devient preparation ou se retire
si la forme l'exige.
```

Exemples :

```text
didgeridoo transforme contre polytexture ;
retour grave ponctuel contre texture bloom ;
controle live immediat contre generation autonome.
```

### 5.3. Si P2 veut une fonction lourde

Regle :

```text
le choix live est respecte hors P0/P1.
si la fonction est lourde, elle doit etre placee hors chemin critique ou preparee.
si P0/P1 limite, signalisation obligatoire.
```

Interdit :

```text
refuser silencieusement le choix live pour raison de charge.
```

### 5.4. Si surcharge probable

Regle :

```text
ne pas simplifier artistiquement par defaut.
isoler, deplacer, preparer, precalculer, re-router ou signaler.
```

Priorite de preservation :

```text
1. P0 securite.
2. P1 lisibilite vitale.
3. source directe et confiance performer.
4. grave critique et retour joue.
5. choix live P2.
6. scene dominante.
7. couches lentes et diagnostics.
```

---

## 6. Fallback MIN-DID-PC

Le setup minimum didgeridoo + PC doit rester viable dans la matrice.

Fonctions minimales `LAT-0/LAT-1` :

```text
didgeridoo direct/protege ;
sortie principale ;
mix safe ;
P0/P1 ;
grave soutien ou retrait ;
controle live immediat ;
signalisation critique.
```

Fonctions minimales `LAT-2/LAT-3` :

```text
generation simple sous GEN-PACKET ;
pulse ou pression derivee ;
espace simple ;
halo source simple ;
retour prepare ;
diagnostic non bloquant.
```

Interdits :

```text
dependre du gong physique ;
dependre de convolution ;
dependre de mesure de salle ;
dependre d'un sub puissant ;
dependre d'une UI complexe ;
dependre d'un ordinateur surcharge.
```

---

## 7. Questions restantes

### `Q-LAT-1 - Granularite`

Question :

```text
les classes LAT-0/LAT-1/LAT-2/LAT-3 suffisent-elles, ou faut-il separer encore
LAT-1 rythmique, LAT-1 presence et LAT-1 controle live ?
```

Reponse provisoire :

```text
les sous-tags existent deja dans la matrice : presence, rhythm, control.
ne pas multiplier les classes tant que la surface live n'est pas definie.
```

### `Q-LAT-2 - Signalisation`

Question :

```text
quelle signalisation sera assez claire sans devenir une deuxieme interface ?
```

Reponse provisoire :

```text
signaler P0, P1, P2 limite, direct indisponible, source protegee, grave limite,
halo limite et charge critique seulement si cela modifie la jouabilite.
```

### `Q-LAT-3 - Prochaine specification`

Question :

```text
quelle suite apres la matrice latence/chemins ?
```

Reponse provisoire :

```text
une specification du noyau de performance Max standalone : controles toujours
sous la main, pages/modes de scene, chemins directs/rapides/lents, signalisation
et priorites, toujours sans UI physique finale.
```

---

## 8. Decision v0.1

Decision :

```text
la matrice fonctions / criticite de latence / chemins est suffisante pour
separer direct, safe, interaction jouee, generation, grave critique, espace/halo,
analyse et diagnostic avant la prochaine couche de conception.
```

Etape suivante recommandee :

```text
auditer cette matrice contre le corpus actif, puis creer une specification du
noyau de performance Max standalone si l'audit valide la separation.
```
