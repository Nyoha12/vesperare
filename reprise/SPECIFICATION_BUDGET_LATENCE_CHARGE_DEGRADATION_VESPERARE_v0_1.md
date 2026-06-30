# SPECIFICATION BUDGET LATENCE CHARGE DEGRADATION VESPERARE v0.1

Projet : Vesperare
Statut : estimation provisoire latence / charge / risques de surcharge
Date : 2026-06-22

Sources actives principales :

- `DECISION_RUNTIME_MAX_STANDALONE_LATENCE_SANS_COMPROMIS_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_ARCHITECTURE_RUNTIME_PORTABLE_MAX_RNBO_M4L_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_RUNTIME_PORTABLE_MAX_RNBO_M4L_VESPERARE_v0_1.md`
- `ARBITRAGE_RUNTIME_HOST_PORTABILITE_LATENCE_VESPERARE_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_MAX_FOR_LIVE_DETAILLEE_NIVEAU_3_TRADUCTION_SESSION_ABSTRAITE_VESPERARE_v0_1.md`
- `SPECIFICATION_BLOC_GENERATION_SONORE_MOTIFS_RYTHMIQUES_MELODIQUES_v0_1.md`
- `REVERBS_ESPACE_REACTIF_v0_2.md`
- `SPECIFICATION_SYSTEME_DECISIONNEL_CONCEPTUEL_VESPERARE_v0_1.md`
- `AUDIT_TRACABILITE_CAHIER_CHARGES_GENERATIF_STYLISTIQUE_v0_1.md`

Cadrage technique :

```text
les chiffres ci-dessous sont des budgets de conception estimes pour Max standalone.
ils ne sont pas des seuils definitifs.
ils servent a organiser l'architecture avant choix de materiel,
interface audio, driver, buffer ou patch final.
```

But :

```text
formaliser une estimation de latence et de charge suffisante pour ne pas
concevoir un systeme injouable, sans valider encore de politique artistique
de reduction, de simplification ou de repli.
```

Cette fiche peut definir :

```text
budgets provisoires ;
classes de charge ;
fonctions critiques ;
leviers hypothetique de surcharge a arbitrer plus tard ;
zones a isoler hors chemin critique ;
signaux de surcharge ;
contraintes d'optimisation Max standalone.
```

Cette fiche ne doit pas definir :

```text
materiel final ;
interface audio finale ;
buffer final ;
driver final ;
seuils definitifs ;
algorithmes definitifs ;
degradations artistiques autorisees ;
implementation reelle ;
test pratique ;
patch Max final ;
export RNBO final.
```

---

## 1. Decision centrale

Decision :

```text
Vesperare doit avoir un budget de latence fonctionnel.
```

Cela signifie :

```text
chaque fonction doit etre classee selon sa sensibilite au delai,
sa charge probable, sa criticite musicale, et son besoin eventuel
de signalisation.
```

Interdit central :

```text
aucune fonction critique ne doit dependre d'une chaine lourde, lente,
opaque ou impossible a contourner.
```

---

## 2. Formule de reference

Formule :

```text
buffer_ms = buffer_samples / sample_rate * 1000
```

Reference 48 kHz :

```text
32 samples  -> 0.67 ms par buffer
64 samples  -> 1.33 ms par buffer
128 samples -> 2.67 ms par buffer
256 samples -> 5.33 ms par buffer
512 samples -> 10.67 ms par buffer
```

Reference 44.1 kHz :

```text
64 samples  -> 1.45 ms par buffer
128 samples -> 2.90 ms par buffer
256 samples -> 5.80 ms par buffer
512 samples -> 11.61 ms par buffer
```

Attention :

```text
la latence totale percue peut inclure plusieurs buffers,
convertisseurs, driver, safety buffer, traitements, host, plugins,
routage, compensation, monitoring et charge CPU.
```

---

## 3. Classes de latence

### LAT-0 - Critique immediate

Fonctions :

```text
didgeridoo direct ;
source directe protegee ;
Auto-Pro P0/P1 ;
conflit grave critique ;
anti-feedback / larsen ;
monitoring traite qui remplace le direct.
```

Budget :

```text
cible de conception : moins de 5 ms ressentis.
zone encore acceptable : 5 a 10 ms si le direct acoustique aide.
zone a risque : plus de 10 ms si le traite remplace le direct.
```

Regles :

```text
chemin le plus court possible ;
aucune analyse lente bloquante ;
aucune reverb longue sur attaque critique ;
bypass ou repli direct obligatoire ;
signal P1 si limitation audible.
```

### LAT-1 - Interaction jouee

Fonctions :

```text
transformation didgeridoo jouee ;
generation guidee par source ;
motif rythmique repondant au jeu ;
adaptation harmoniques / grave ;
controle live immediat ;
signalisation critique.
```

Budget :

```text
cible de conception : moins de 10 ms.
zone acceptable : 10 a 20 ms si source directe reste presente.
zone a risque : plus de 20 ms si la fonction doit etre instrumentale.
```

Regles :

```text
la source directe doit porter le geste si le traitement est plus lent ;
les transformations jouees doivent rester hors chaines longues ;
les moteurs LAT-1 doivent etre prioritaires sur textures LAT-2/LAT-3.
```

### LAT-2 - Reponse musicale non immediate

Fonctions :

```text
motifs generes ;
polytexture ;
textures ;
transgression preparee ;
retours prepares ;
generation de densite ;
techno suspendue.
```

Budget :

```text
cible de conception : moins de 25 ms pour reaction proche.
zone acceptable : 25 a 60 ms selon fonction.
zone possible : plus de 60 ms si c'est un etat, une scene ou une texture.
```

Regles :

```text
LAT-2 peut etre musicalement integree ;
LAT-2 ne doit pas bloquer LAT-0/LAT-1 ;
LAT-2 doit etre organisee hors chemin critique si la charge augmente.
```

### LAT-3 - Etat, espace, halo, analyse lente

Fonctions :

```text
reverbs longues ;
halo ;
memoire ;
analyse de tendance ;
historique ;
scene ;
signaux non urgents ;
retours non immediats.
```

Budget :

```text
non critique si la fonction ne remplace pas l'attaque directe.
```

Regles :

```text
LAT-3 doit rester hors chemin critique ;
LAT-3 est la premiere zone a surveiller en surcharge ;
LAT-3 peut etre asynchrone si la coherence musicale reste claire.
```

---

## 4. Classes de charge

### CHG-0 - Charge vitale

Contient :

```text
source directe ;
P0 ;
P1 ;
sortie principale ;
signalisation critique ;
etat minimal ;
controle minimum.
```

Regle :

```text
CHG-0 ne doit pas etre degradee hors P0 ou panne majeure.
```

### CHG-1 - Charge performative prioritaire

Contient :

```text
didgeridoo transforme si actif ;
generation rythmique essentielle ;
grave critique ;
controle live principal ;
retour prepare critique ;
halo force si decide ;
espace proche si necessaire a la lisibilite.
```

Regle :

```text
CHG-1 doit etre protegee.
toute simplification eventuelle reste a arbitrer artistiquement.
```

### CHG-2 - Charge expressive modulable

Contient :

```text
polytexture ;
textures secondaires ;
espaces immersifs ;
halos non verrouilles ;
analyses de tendance ;
generations non dominantes ;
ornements ;
traces.
```

Regle :

```text
CHG-2 indique une zone de charge expressive a surveiller.
cela n'autorise pas sa reduction musicale.
```

### CHG-3 - Charge luxueuse

Contient :

```text
analyses non critiques ;
visualisation detaillee ;
historiques ;
diagnostic complet ;
espaces secondaires ;
textures de fond non decidees comme essentielles.
```

Regle :

```text
CHG-3 indique surtout des charges techniques non critiques.
sa coupure musicale eventuelle n'est pas decidee ici.
```

---

## 5. Fonctions non degradables

Non degradables sauf P0 ou panne majeure :

```text
source directe didgeridoo ;
sortie principale ;
P0 ;
P1 ;
signalisation P0/P1 ;
mode de repli direct ;
etat minimal ;
controle live minimal ;
GEN-PACKET pour tout objet GEN actif.
```

Non degradables sans signal :

```text
grave critique ;
didgeridoo transforme actif ;
halo Lock / Force ;
retour prepare actif ;
source essentielle autre que didgeridoo ;
scene dominante ;
limitation P2.
```

Regle :

```text
si une fonction non degradable doit etre limitee, elle doit produire
SIG-P1 ou SIG-P2 selon la cause.
```

---

## 6. Leviers hypothetique de surcharge

Cadrage :

```text
les listes ci-dessous ne sont pas des degradations autorisees.
elles indiquent seulement des familles de risque technique.
aucune couche musicale, scene, halo, espace, motif ou texture n'est declaree
reductible par cette fiche.
```

Familles a surveiller :

```text
analyses lentes ;
diagnostics ;
historiques ;
visualisations ;
calculs non audibles ;
chains non critiques hors source directe.
```

Seule regle validee ici :

```text
la source directe, P0/P1, sortie principale, grave critique,
controle minimum et decisions artistiques explicites doivent rester prioritaires.
```

---

## 7. Interdits de surcharge

Interdits :

```text
couper didgeridoo direct hors P0 ;
couper source essentielle hors P0/P1 ;
retirer halo voulu hors P0/P1 ;
changer scene dominante sans decision ;
changer motif principal sans decision ;
changer transgression sans decision ;
masquer limitation P1/P2 ;
laisser Auto-Pro agir sans cause ;
laisser analyse lente bloquer direct ;
laisser reverb longue porter attaque critique ;
laisser generation LAT-2 bloquer LAT-0/LAT-1 ;
perdre GEN-PACKET ;
passer en timbre electronique reconnaissable par surcharge.
```

---

## 8. Signaux de surcharge

Signaux :

```text
SIG-LOAD-INFO ;
SIG-LOAD-P2 ;
SIG-LOAD-P1 ;
SIG-LAT-RISK ;
SIG-LAT-CRITICAL ;
SIG-DEGRADE-ACTIVE ;
SIG-DEGRADE-RELEASED.
```

Priorites :

```text
SIG-LAT-CRITICAL -> P1 si source, direct, P0/P1 ou grave critique menace.
SIG-LAT-RISK     -> P2 si interaction jouee devient moins fiable.
SIG-LOAD-P2      -> P2 si choix live limite.
SIG-LOAD-INFO    -> information si limitation interne invisible musicalement.
```

Regle :

```text
une limitation audible ou jouable doit etre signalee.
une limitation purement interne peut etre historisee sans signal visible.
```

---

## 9. Esquisse de reaction a la surcharge

Ordre possible d'intervention technique, non valide comme automatisme :

```text
1. charge non audible ;
2. diagnostic ou visualisation non musicale ;
3. analyses lentes non critiques ;
4. fonctions secondaires non decidees comme centrales dans la scene ;
5. intervention P1/P0 seulement si continuite sonore menacee.
```

Ordre de preservation :

```text
1. source directe ;
2. sortie principale ;
3. P0/P1 ;
4. controle minimal ;
5. pression rythmique si scene corporelle ;
6. grave critique ;
7. scene dominante ;
8. GEN-PACKET ;
9. retours prepares actifs ;
10. halos verrouilles.
```

---

## 10. Budget par famille Vesperare

### Didgeridoo

Classe :

```text
direct : LAT-0 / CHG-0.
transformation jouee : LAT-1 / CHG-1.
guidage generation : LAT-1 ou LAT-2 selon usage.
```

Regles :

```text
direct toujours disponible ;
transformation active classee comme prioritaire ;
guidage generation classe LAT-1 si jouable, LAT-2 si non immediat ;
adaptation harmonique doit etre signalee si elle change la jouabilite.
```

### Grave / sub / gong

Classe :

```text
conflit grave critique : LAT-0 / CHG-1.
support grave : LAT-1 ou LAT-2.
gong base / souffle / queue : LAT-2 ou LAT-3 selon fonction.
```

Regles :

```text
conflit deletere prioritaire ;
retrait du support grave seulement comme option musicale decidee ;
grave libre reste possible si decide ;
gong peut etre hors chemin critique.
```

### Generation rythmique / melodique

Classe :

```text
pression rythmique jouee : LAT-1 / CHG-1.
motif genere non immediat : LAT-2 / CHG-2.
texture secondaire : LAT-2 ou LAT-3 / CHG-2.
```

Regles :

```text
pression rythmique ne doit pas disparaitre sans decision ;
motif secondaire classe selon son role musical dans la scene ;
objet GEN sans GEN-PACKET interdit.
```

### Reverb / espace / halo

Classe :

```text
espace proche critique : LAT-1 ou LAT-2 / CHG-1.
immersion : LAT-2 / CHG-2.
halo Lock / Force : LAT-2 ou LAT-3 / CHG-1 si decide.
halo non verrouille : LAT-3 / CHG-2.
reverb longue : LAT-3 / CHG-2.
```

Regles :

```text
reverb longue hors attaque critique ;
halo voulu non retire hors P0/P1 ;
espace decoratif traite comme charge a surveiller s'il n'est pas decide.
```

### Voix

Classe :

```text
voix directe integree : LAT-1 / CHG-1 si active.
fragment vocal genere : LAT-2 / CHG-2.
texture vocale secondaire : LAT-2 ou LAT-3 / CHG-2.
```

Regles :

```text
voix nue non integree interdite ;
integration sonore doit rester lisible ;
surcharge ne doit pas produire un effet auto-tune reconnaissable.
```

---

## 11. Budget par cible technique

### Max standalone - cible principale

Position :

```text
cible active pour LAT-0/LAT-1.
la latence doit etre optimisee par architecture, interface, driver et patch,
pas par compromis musical.
```

Contraintes :

```text
separer patch critique et patch lourd ;
eviter UI lourde sur audio critique ;
isoler reverbs longues ;
prevoir bypass direct ;
prevoir signaux de surcharge ;
proteger didgeridoo direct, grave critique, P0/P1 et controle minimal.
```

### Max for Live / Ableton

Position :

```text
cible secondaire eventuelle.
ne guide plus la conception principale.
```

Contraintes :

```text
eviter chaines longues sur LAT-0 ;
eviter plugins latents sur monitoring critique ;
placer reverbs/halos hors direct critique ;
surveiller groupes, retours, compensation et monitoring ;
garder un repli direct.
```

### RNBO

Position :

```text
cible eventuelle pour noyaux DSP stabilises et exportables.
ne guide plus la conception principale.
```

Contraintes :

```text
ne pas y mettre toute la scene ;
ne pas y mettre toute l'interface ;
ne pas y mettre arbitrage complet au depart ;
documenter chaque noyau exportable.
```

### Raspberry Pi / Linux

Position :

```text
cible future possible pour sous-systemes, pas garantie globale.
```

Contraintes :

```text
tenir compte USB audio, CPU, OS, maintenance, I/O et stabilite.
```

### Bela / embarque hard-real-time

Position :

```text
cible potentielle pour sous-systemes ultra-reactifs.
```

Contraintes :

```text
pas Max complet ;
portage specifique ;
choix seulement pour noyau stabilise.
```

---

## 12. Decisions ouvertes

Questions :

```text
LATQ-1 : quelles fonctions LAT-0 sont absolument non negotiables dans Max standalone ?
LATQ-2 : quelle pression rythmique minimale doit rester prioritaire conceptuellement ?
LATQ-3 : quels halos sont CHG-1 parce que decides, et lesquels sont CHG-2 ?
LATQ-4 : quelles analyses lentes peuvent etre mises hors chemin critique sans risque musical ?
LATQ-5 : quels moteurs GEN peuvent rester RNBO-compatibles sans contraindre Max standalone ?
LATQ-6 : quel niveau de signalisation surcharge est acceptable en live ?
LATQ-7 : faut-il une vue live de charge ou seulement des signaux P1/P2 ?
LATQ-8 : quels choix artistiques restent souverains face aux contraintes de latence ?
```

Position provisoire :

```text
didgeridoo direct, P0/P1, sortie principale, repli direct,
controle minimal et GEN-PACKET sont non negociables.
les autres priorites dependent de la scene.
```

---

## 13. Decision v0.1

Decision :

```text
une premiere estimation latence / charge / criticite Vesperare est posee.
```

Il etablit :

```text
classes LAT-0 a LAT-3 ;
classes CHG-0 a CHG-3 ;
fonctions critiques ;
leviers hypothetique de surcharge, non valides artistiquement ;
interdits de surcharge ;
signaux de surcharge ;
budget par famille ;
budget centre sur Max standalone, avec cibles secondaires documentees ;
questions ouvertes.
```

Prochaine action recommandee :

```text
AUDIT_COMPATIBILITE_BUDGET_LATENCE_CHARGE_DEGRADATION_AVEC_CORPUS_v0_1
```

But de l'audit :

```text
verifier que le budget ne transforme pas des estimations en seuils finaux,
qu'il respecte les besoins musicaux, et qu'il prepare l'architecture
Max standalone sans choisir de materiel ou implementation finale.
```
