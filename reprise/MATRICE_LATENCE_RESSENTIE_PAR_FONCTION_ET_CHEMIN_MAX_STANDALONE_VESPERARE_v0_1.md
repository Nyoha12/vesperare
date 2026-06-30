# MATRICE LATENCE RESSENTIE PAR FONCTION ET CHEMIN MAX STANDALONE VESPERARE v0.1

Projet : Vesperare
Date : 2026-06-23
Statut : matrice perceptive / fonctionnelle, non-implementation

Sources internes principales :

- `AUDIT_COMPATIBILITE_SPECIFICATION_LATENCE_SCHEDULER_VECTORS_AUDIO_SETTINGS_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_LATENCE_SCHEDULER_VECTORS_AUDIO_SETTINGS_MAX_STANDALONE_VESPERARE_v0_1.md`
- `MATRICE_EXCLUSIONS_CANDIDATS_PAR_CRITICITE_ET_LATENCE_MAX_STANDALONE_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_MATRICE_EXCLUSIONS_CANDIDATS_PAR_CRITICITE_ET_LATENCE_AVEC_CORPUS_v0_1.md`
- `DECISION_RUNTIME_MAX_STANDALONE_LATENCE_SANS_COMPROMIS_VESPERARE_v0_1.md`
- `REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`

Sources externes consultees :

```text
documentation officielle Cycling '74 sur audio settings, vectors, scheduler
et adstatus ;
recherches generales sur perception de latence en jeu instrumental, monitoring,
controle gestuel et performance musicale.
```

But :

```text
separer les types de latence ressentie par fonction musicale et chemin,
afin de prioriser les futurs audits candidats sans choisir objets finaux,
reglages finaux, seuils definitifs ou patch.
```

Hors perimetre :

```text
mesure reelle ;
benchmark ;
reglage final ;
objet Max final ;
routage final ;
UI ;
controleur ;
implementation.
```

---

## 1. Decision centrale

Decision :

```text
toutes les latences ne se valent pas.
le projet doit proteger en priorite le contact direct, la pression rythmique,
la confiance corporelle et la lisibilite des protections.
```

Regle :

```text
une fonction peut accepter une latence plus longue seulement si cette latence
fait partie de sa nature musicale ou de son mode de perception.
```

Interdit :

```text
utiliser la tolerance d'une fonction lente pour affaiblir le didgeridoo direct,
le grave critique, les attaques, P0/P1, le retour joue ou la pression rythmique.
```

---

## 2. Classes de latence ressentie

Ces classes sont des ordres de grandeur de conception. Elles ne sont pas des
seuils finaux.

### 2.1. `LPER-0 CONTACT`

Fonction :

```text
contact action -> son ressenti comme instrument/source.
```

Ordre de grandeur :

```text
viser tres faible, typiquement zone < 10 ms ressentis si possible.
10 a 18 ms : zone de vigilance selon instrument, attaque et monitoring.
au-dela : risque de decollement du geste direct.
```

Applications :

```text
didgeridoo direct ;
monitoring transforme qui remplace le direct ;
attaques essentielles ;
retour joue tres proche ;
grave critique lie au geste.
```

### 2.2. `LPER-1 COMMANDE IMMEDIATE`

Fonction :

```text
commande live explicite dont le resultat doit etre compris immediatement.
```

Ordre de grandeur :

```text
viser reponse ressentie immediate.
quelques dizaines de millisecondes peuvent etre tolerables si le geste reste
lisible et si l'action n'est pas une attaque instrumentale remplacee.
```

Applications :

```text
mode DID ;
mode GRV ;
mode HAL ;
mode GEN ;
transgression decidee ;
retour corporel lance ;
lock/cut halo ;
sortie de freeze ;
commande P2.
```

### 2.3. `LPER-2 RYTHME / GROOVE`

Fonction :

```text
alignement rythmique, interlocking, pression corporelle, motifs, retours
rythmiques et synchronisation percue.
```

Ordre de grandeur :

```text
viser coherence avec le pulse et les attaques.
une latence courte mais constante peut etre musicalement geree ;
une latence variable ou jitter est plus dangereuse qu'une latence fixe.
```

Applications :

```text
motifs Keita/interlocking ;
pression techno ;
retours rythmiques ;
acid naturalise ;
motifs percussifs ;
declenchements graves rythmiques.
```

### 2.4. `LPER-3 MUSIQUE NON DIRECTE`

Fonction :

```text
evenement musical reactif mais non assimile a l'attaque directe du geste.
```

Ordre de grandeur :

```text
la reponse peut etre plus large si elle est preparee, contextualisee,
releaseable et musicalement lisible.
```

Applications :

```text
generation melodique ;
textures ;
polytexture ;
resonateurs ;
voix transformee integree ;
gongs modelises ;
evolutions harmoniques/microtonales ;
retours prepares.
```

### 2.5. `LPER-4 ESPACE / HALO / FREEZE`

Fonction :

```text
latence percue comme espace, queue, memoire, immersion, reaction de salle,
halo ou transformation longue.
```

Ordre de grandeur :

```text
peut etre long, voire tres long, si decide.
la question principale n'est pas la vitesse mais la sortie, le lock, la
lisibilite corporelle et l'absence de blocage des chemins critiques.
```

Applications :

```text
techno suspendue longue ;
halo long ;
freeze ;
reverb immersive ;
reverb de proximite ;
room response ;
convolution preparee ;
retour apres suspension.
```

### 2.6. `LPER-5 DIAG / OFFLINE`

Fonction :

```text
diagnostic, mesure, log, vue, historique, preparation lente.
```

Ordre de grandeur :

```text
peut etre lent.
ne doit pas conditionner direct, safe, choix live ou protection.
```

Applications :

```text
adstatus ;
CPU ;
logs ;
mesure de salle ;
analyse offline ;
trace ;
vue spectrale ;
historique de decisions.
```

---

## 3. Matrice fonction / latence ressentie

| Fonction | Classe | CRIT | Chemin | Tolerance conceptuelle | Condition | Risque |
|---|---|---|---|---|---|---|
| Didgeridoo direct | LPER-0 | CRIT-0 | direct MSP | tres faible | recuperable sans scheduler | decollement geste/source |
| Didgeridoo transforme remplacant le direct | LPER-0/1 | CRIT-1/2 | direct + transformation | tres faible a immediate | direct parallele ou fallback | traitement injouable |
| Didgeridoo source transformable non vitale | LPER-3 | CRIT-3 | generation/timbre | plus large si decide | release + naturalisation | effet electronique |
| P0/P1 protection | LPER-0/1 | CRIT-1 | safe | immediate | fail-safe | protection percue composition |
| Feedback critique | LPER-0/1 | CRIT-1 | safe | immediate | jamais diagnostic seul | danger ou coupure cachee |
| Grave critique / sub destructeur | LPER-0/2 | CRIT-1 | grave/safe | tres faible si lie au geste | priorite mix/protection | conflit grave destructeur |
| Grave discret soutien | LPER-3 | CRIT-3 | grave musical | plus large | adaptatif/releaseable | basse molle ou intrusive |
| Grave libre decide | LPER-2/3 | CRIT-2/3 | grave musical | selon scene | P2 explicite | conflit non voulu |
| Gong grave modelise | LPER-3/4 | CRIT-3/4 | grave/espace | peut etre long | sortie + ancrage | masse confuse |
| Souffle/sub gong | LPER-3/4 | CRIT-3/4 | grave/espace | long possible | ne bloque pas direct | sub decoratif |
| Commande mode DID | LPER-1 | CRIT-2 | commande live | immediate | signalable | mode incompris |
| Commande mode GRV | LPER-1 | CRIT-2 | commande live | immediate | signalable | grave change sans choix |
| Commande mode HAL lock/cut | LPER-1/4 | CRIT-2/4 | commande + halo | immediate pour commande, long pour queue | lock/cut clair | halo retire par automation |
| Commande transgression | LPER-1/3 | CRIT-2/3 | live + musical | immediate pour permission | risque accepte visible | transgression subie |
| Retour corporel apres suspension | LPER-1/2/3 | CRIT-2/3 | retour | preparation possible | P2 ou scene claire | retour mecanique |
| Motifs rythmiques interlocking | LPER-2 | CRIT-3 | generation rythmique | phase stable | jitter faible conceptuel | groove flou |
| Motifs Keita/ponctuation | LPER-2 | CRIT-3 | generation attaque | phase stable | fonction precise | virtuosite plaquee |
| Techno pression rythmique | LPER-2 | CRIT-3 | pulse/pression | stable, corporelle | pas grille banale par defaut | techno decorative |
| Techno suspendue longue | LPER-4 | CRIT-4 | forme/espace | tres long possible | retour prepare ou decide | perte de corps non decidee |
| Acid naturalise | LPER-2/3 | CRIT-3 | motif/timbre | rythmique stable | non 303 reconnaissable par defaut | lead banal |
| Melodie generee | LPER-3 | CRIT-3 | generation melodique | non directe | fonction scene/role | hook autonome |
| Voix transformee integree | LPER-1/3 | CRIT-2/3 | source/timbre | immediate si jouee, sinon plus large | virtualo-acoustique | voix nue ou autotune |
| Polytexture | LPER-2/3 | CRIT-3 | densite | stable plus que rapide | lisibilite corporelle | densite opaque |
| Reverb proximite | LPER-3/4 | CRIT-3/4 | espace court | plus large mais proche | ne floute pas attaque | proximite artificielle |
| Reverb immersive longue | LPER-4 | CRIT-4 | espace | long possible | lock/release/sortie | decoratif non decide |
| Freeze | LPER-4 | CRIT-4 | memoire | long possible | sortie explicite | autonomie cachee |
| Mesure salle 1 micro deplace | LPER-5 | CRIT-4 | offline/diag | lente | pas autorite live directe | correction illusoire |
| adstatus / CPU / vectors | LPER-5 | CRIT-4 | diagnostic | lente | SIG non autoritaire | CPU compose |
| Vue / UI / logs | LPER-5 | CRIT-4 | view/diag | lente | non bloquant | UI devient systeme |

---

## 4. Regles par chemin

### 4.1. Chemin direct

```text
LPER-0 obligatoire.
aucune dependance a LPER-4/5.
si LPER-1 commande un changement, le chemin direct doit rester recuperable.
```

### 4.2. Chemin safe

```text
LPER-0/1.
la protection doit etre immediate ou fail-safe.
la musicalite du retrait doit etre signalee si elle affecte P2.
```

### 4.3. Chemin live-play

```text
LPER-1/2.
la reponse doit etre lisible comme geste ou rythme.
le jitter est plus dangereux qu'une latence fixe courte.
```

### 4.4. Chemin generation

```text
LPER-2/3.
la generation peut etre plus lente que le geste direct si elle est contextualisee,
naturalisee, sortie/releaseable et non autonome par defaut.
```

### 4.5. Chemin espace / halo / freeze

```text
LPER-4.
peut etre tres long si decide.
ne doit pas masquer direct, safe, retour ou pression rythmique sans permission.
```

### 4.6. Chemin diagnostic

```text
LPER-5.
ne commande pas.
ne conditionne pas.
informe seulement.
```

---

## 5. Profils de reglage rattaches

Ces rattachements sont conceptuels.

```text
LPER-0 : viser profil 32/64 ; 128 seulement si sensation reste coherentement
         jouable ; 256 exclu pour direct joue.

LPER-1 : viser 32/64 ; 128 seulement pour commandes non instrumentales et
         signalables.

LPER-2 : 64 prioritaire ; 128 possible si phase/groove restent musicalement
         coherents ; jitter a surveiller.

LPER-3 : 64/128 possibles selon fonction ; charge et naturalisation priment.

LPER-4 : 128 et plus possibles si hors chemin critique ; longue duree possible.

LPER-5 : non critique ; peut etre lent, differe, offline ou desactive.
```

Interdit :

```text
utiliser LPER-4 ou LPER-5 pour justifier un direct lent.
```

---

## 6. Priorite des futurs audits candidats

Priorite 1 :

```text
matrix~ / selector~ / gate~ / line~ / send~ / receive~
si et seulement si lies a direct, safe, retour ou routage critique.
```

Priorite 2 :

```text
gen~ / buffer~ / groove~ / play~ / table~ / function
si lies a generation rythmique, acid naturalise, motif, voix transformee ou
gong/sub modelise.
```

Priorite 3 :

```text
poly~ / MC
si lies a polytexture, couches, voix multiples, resonateurs ou spatialisation.
```

Priorite 4 :

```text
pattrstorage / dict / coll / text / js
si lies a etats, presets, packets, configuration, diagnostic ou schemas.
```

Priorite 5 :

```text
FFT/pfft / convolution / externals / plugins
seulement si une fonction reverb, mesure, resonateur ou analyse le rend
necessaire.
```

---

## 7. Questions restantes

```text
Q-LPER-1
Faut-il declarer 64 samples comme profil conceptuel principal tant qu'aucun
materiel final n'est fixe ?

Q-LPER-2
Quels chemins doivent etre designes pour survivre a 128 samples sans compromis
musical, et lesquels doivent exiger 32/64 ?

Q-LPER-3
Quel groupe d'audits candidats vient d'abord : routage direct/safe ou
generation rythmique ?

Q-LPER-4
Faut-il une fiche "priorisation audits candidats" avant les audits individuels ?
```

Statut :

```text
Q-LPER-1/2 bloquent les profils de conception futurs.
Q-LPER-3/4 bloquent l'ordre des audits candidats.
```

---

## 8. Decision v0.1

Decision :

```text
la latence ressentie est maintenant separee par fonction, criticite et chemin.
```

Cette fiche autorise ensuite :

```text
AUDIT_COMPATIBILITE_MATRICE_LATENCE_RESSENTIE_PAR_FONCTION_ET_CHEMIN_AVEC_CORPUS_v0_1.md
```

Elle n'autorise pas :

```text
objet final ;
reglage final ;
patch final ;
routage final ;
UI ;
controleur ;
benchmark ;
implementation.
```
