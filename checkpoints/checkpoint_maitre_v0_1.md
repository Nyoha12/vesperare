# CHECKPOINT MAÎTRE — Vesperare v0.1

Date logique : 2026-06-13  
Statut : point de reprise synthétique.

## Fonction du checkpoint

Ce document condense l’état actuel de la réflexion pour éviter les pertes, dérives ou contradictions. Les documents détaillés restent dans `/docs/`.

## Formulation actuelle du projet

Vesperare est un projet de recherche-création visant à concevoir un système de composition et de performance live dans Ableton Live / Max for Live.

Le but est d’inventer un genre musical personnel dont la techno constitue l’influence stylistique principale, mais dont les fonctions peuvent être portées par des sons naturels, acoustiques, instrumentaux, percussifs, vocaux, naturalisés ou synthétisés comme phénomènes physiques.

## Décision méthodologique

Conception approfondie avant prototypage.

On ne commence pas par des prototypes rapides. On conçoit d’abord l’architecture, les fonctions, les phénomènes, les variables internes et l’organisation live.

Les prototypes futurs devront être liés à des modules probables et réutilisables.

## Clarification majeure : naturalisation

Naturaliser une fonction techno ne change pas nécessairement sa fonction. Cela change son support sonore.

Exemple :

```text
fonction : micro-pulsation aiguë
support habituel : hi-hat électronique
support possible : insecte, oiseau, cymbalette, clochette, frottement, grain
```

La fonction reste active si le support conserve lisibilité temporelle, attaque, propulsion et intégration au groove.

## Techno comme influence principale

La techno fournit :

```text
pulsation corporelle ;
impact ;
pression spectrale ;
répétition ;
hypnose ;
tension longue ;
forme performative ;
intensité ;
efficacité de diffusion.
```

Mais les sons électroniques techno standards ne doivent pas forcément dominer l’identité du projet.

## Polytexture percussive

La facette inspirée par Keita Ogawa est une facette esthétique opératoire : elle fournit des phénomènes générables et dosables — interlocking, groove composite, richesse percussive, harmonie de timbres, complexité lisible.

Elle ne doit pas être comprise comme une importation de style folklorique, latino, cubain, tribal ou world music.

## Fonctions situées principales

```text
impact-fondation corporel ;
pression spectrale corporelle ;
contour sculpté / netteté sensible ;
répétition non redondante ;
hypnose active ;
intensité phénoménale sans agression ;
brillance rythmique naturalisée ;
polytexture percussive raffinée ;
espace musical occupé ;
voix comme matière, instrument ou signal ;
beauté autonome / moment de matière.
```

## Point important sur la sécheresse

Le projet ne cherche pas une techno aussi froide ou sèche que certains modèles. Ce qui est retenu est plutôt : contour net, dessin précis, queue maîtrisée, son fini, attaque lisible, netteté sensible.

## Instruments et sources

Sources importantes :

```text
sons naturels ;
percussions ;
batterie resculptée ;
gongs ;
bols chantants ;
cymbales ;
cymbalettes ;
cloches ;
clochettes ;
tambours ;
didgeridoo ;
voix ;
paroles ;
objets résonants ;
field recordings ;
sons synthétisés comme physiques.
```

## Outils

Max for Live : cœur temps réel.

Ableton Extensions SDK : outil satellite hors temps réel pour préparer Sets, clips, scènes, annotations, snapshots et tests futurs.

Node for Max / JS / FluCoMa / MuBu / RNBO / IA : ressources complémentaires selon besoins futurs.

## Prochaine étape recommandée

Développer `02_SPECIFICATION_MAX_FOR_LIVE.md` : entrées/sorties, modules, variables internes, interactions, priorités et besoins de recherche.
