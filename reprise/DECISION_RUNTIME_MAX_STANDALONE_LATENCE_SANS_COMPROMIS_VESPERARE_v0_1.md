# DECISION RUNTIME MAX STANDALONE LATENCE SANS COMPROMIS VESPERARE v0.1

Projet : Vesperare
Statut : decision corrective active
Date : 2026-06-22

## 1. Decision

Decision active :

```text
Vesperare utilisera Max/MSP standalone comme runtime principal.
```

Cela remplace la trajectoire precedente :

```text
architecture portable avant choix de host.
```

Le principe portable reste utile seulement comme discipline interne :

```text
separer les responsabilites, eviter les dependances inutiles,
garder des sous-modules exportables plus tard si utile.
```

Mais il ne doit plus empecher de concevoir pour Max standalone.

## 2. Statut des autres cibles

Max for Live / Ableton :

```text
cible secondaire eventuelle.
pas le runtime principal.
pas le cadre de routage directeur.
pas la reference de latence.
```

RNBO :

```text
horizon pour sous-moteurs DSP/generatifs stabilises.
pas le runtime principal.
pas une promesse de latence superieure pour tout le systeme.
```

Raspberry Pi / Linux / embarque :

```text
horizon futur pour appliance ou sous-systemes.
pas la cible de conception actuelle.
pas suppose meilleur qu'un PC audio optimise.
```

## 3. Ordres de grandeur retenus

Hypothese de travail :

```text
Max standalone + interface audio serieuse + driver ASIO/CoreAudio.
```

Estimation prudente a 48 kHz :

```text
32 samples  : cible ambitieuse, environ 3 a 7 ms ressentis si stable.
64 samples  : cible principale, environ 4 a 10 ms ressentis.
128 samples : cible de robustesse possible, environ 8 a 18 ms ressentis.
256 samples : a eviter pour jeu direct remplace ou transforme en temps reel.
```

Ces chiffres ne sont pas des promesses :

```text
la latence depend de l'interface, du driver, des convertisseurs,
du patch, du routage, du systeme et de la charge CPU.
```

## 4. Sans compromis reel

Regle centrale :

```text
l'optimisation de latence ne doit pas autoriser de compromis musical reel.
```

Interdits :

```text
retirer une fonction desiree pour tenir une latence ;
appauvrir une scene pour tenir une latence ;
supprimer une couche musicale decidee pour tenir une latence ;
transformer une contrainte CPU en choix esthetique automatique ;
remplacer un besoin artistique par une version techniquement commode ;
rendre un son electronique reconnaissable pour alleger le traitement ;
degrader le didgeridoo direct, le grave critique, les protections ou P0/P1.
```

Si une fonction est trop lourde, la reponse attendue n'est pas :

```text
on la retire.
```

La reponse attendue est :

```text
on change l'architecture, le routage, le calcul, le placement dans la chaine,
la priorite temps reel, le materiel ou l'interface audio.
```

## 5. Strategie Max standalone

Le chemin critique doit rester court :

```text
entree audio ;
protection ;
traitement direct necessaire ;
mix principal ;
sortie audio.
```

Tout ce qui n'est pas indispensable a l'attaque jouee doit etre hors chemin critique :

```text
analyses lentes ;
index de confiance ;
historique ;
diagnostic ;
visualisation ;
generation non immediate ;
reverbs longues ;
convolution lourde ;
FFT longues ;
modeles lourds ;
automations lentes.
```

Cela ne signifie pas que ces fonctions sont secondaires musicalement.
Cela signifie :

```text
elles doivent etre placees de facon a ne pas ralentir le geste direct.
```

## 6. Regles de conception latence

Regles :

```text
separer chemin audio direct et chemins d'analyse ;
utiliser des taps non bloquants ;
eviter les plugins latents dans LAT-0/LAT-1 ;
eviter les reverbs longues comme support d'attaque critique ;
mettre les calculs longs en controle-rate ou hors audio-rate si possible ;
precalculer ce qui peut l'etre ;
limiter les conversions inutiles ;
limiter les routages circulaires ;
garder un bypass/repli direct sans coloration imposee ;
signaler toute limitation audible ou jouable.
```

## 7. Consequence documentaire

Les documents Max for Live deja produits restent utiles comme analyse abstraite
des fonctions, bus, controles et scenes.

Mais ils ne sont plus la trajectoire active :

```text
la cible active est Max standalone.
```

Les documents runtime portable restent utiles comme discipline de separation.

Mais leur conclusion est corrigee :

```text
la portabilite n'est plus prioritaire sur la conception Max standalone.
```

## 8. Prochaine etape logique

Prochaine etape recommandee :

```text
SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_CONCEPTUELLE_VESPERARE_v0_1
```

But :

```text
traduire les blocs existants vers une architecture Max standalone conceptuelle,
avec chemin critique faible latence, chemins d'analyse separes,
interface live et protections sans compromis musical.
```
