# Audit candidats espace / empreinte / corpus / convolution / IR / playback prepare

Projet : Vesperare  
Version : v0.1  
Statut : audit candidat lourd DETTE-ACT-6, groupe espace / empreinte / corpus  
Runtime actif : Max/MSP standalone  
Date : 2026-06-24

## 1. Role du document

Ce document absorbe DETTE-ACT-21.

Il audite les familles suivantes comme candidates conditionnelles :

- convolution ;
- IR et empreintes de salle/source ;
- corpus sonore ;
- playback prepare ;
- dependances fichier liees a l'espace, a la naturalisation et au halo ;
- usages possibles avec SPC, HAL, REV, GEN-HAL et NAT.

Il ne choisit pas :

- moteur final ;
- objet Max final ;
- patch ;
- UI ;
- mapping ;
- banque de sons finale ;
- IR finale ;
- protocole de mesure final ;
- algorithme de reverb final.

## 2. Verdict general

Les familles espace / empreinte / corpus sont compatibles avec Vesperare, mais seulement comme supports conditionnels prepares, situes hors chemins critiques P0/P1 par defaut.

Elles sont utiles quand elles servent une fonction musicale explicite :

- donner une empreinte de lieu ou de corps ;
- enrichir la perception d'un son sans le rendre electronique reconnaissable ;
- soutenir un monde spatial SPC ;
- fournir de la matiere a HAL ou GEN-HAL sans decider a leur place ;
- naturaliser une transformation timbrale ;
- preparer des textures ou transitions non directes ;
- documenter une salle ou une source comme reference, sans transformer cette mesure en verite automatique.

Elles sont dangereuses quand elles deviennent :

- une reverb automatique globale ;
- une banque sonore cachee ;
- un moteur generatif opaque ;
- une maniere de remplacer une source live ;
- une dependance obligatoire pour MIN-DID-PC ;
- un traitement chargeant ou lisant des fichiers sur un chemin critique ;
- un effet spectaculaire sans source, fonction, sortie et fallback.

## 3. Statuts candidats

| Famille | Statut Vesperare | Chemin admis | Fonction admise | Conditions obligatoires | Interdictions |
|---|---|---|---|---|---|
| Convolution | Conditionnel lourd | PATH-SPC-SLOW, PATH-REV-SLOW, PATH-NAT-SLOW | Empreinte de lieu, corps, cavite, metal, air, naturalisation, espace special | source, owner, fonction, release, fallback, SIG, preparation hors critique | reverb automatique, P0/P1 par defaut, decision HAL/SPC cachee |
| IR salle | Conditionnel offline | PREP/OFFLINE puis usage non critique | reference acoustique, teinte de lieu, correction conceptuelle, controle de coherence | mesure documentee, limites explicites, fallback sans IR | dependance live obligatoire, promesse de verite de salle |
| IR source/objet | Conditionnel offline | PREP/OFFLINE puis PATH-NAT-SLOW | corps de gong, didgeridoo, tambour, voix, metal, cavite | lien source audible ou fonctionnel, naturalisation verifiable par contexte | effet anonyme sans source |
| Corpus sonore | Conditionnel lourd | PATH-GEN-SLOW, PATH-HAL-SLOW, PATH-NAT-SLOW | matiere preparee, textures, empreintes, variantes, references acoustiques | provenance, role, niveau d'autonomie, sortie, fallback | banque sonore cachee, style plaque, remplacement du live |
| Playback prepare | Support conditionnel | PATH-GEN-SLOW, PATH-SPC-SLOW, transitions non critiques | lire des materiaux prepares, couches stables, retours, references | preload, etat clair, release, absence de blocage critique | lecture disque improvisee sur chemin critique |
| Corpus pour HAL | Interface conditionnelle | GEN-HAL vers HAL | fournir matiere, memoire, queue, texture | HAL garde autorite lock/force/cut ; GEN-HAL ne decide pas | halo autonome non controle |
| Corpus pour SPC | Interface conditionnelle | GEN/SPC vers SPC | fournir empreinte spatiale ou materiau d'espace | SPC decide monde/distance/proximite | espace impose par corpus |
| Cross-convolution / transformation par empreinte | Reporte conditionnel | PATH-NAT-SLOW ou PATH-SPECIAL | hybridation source-lieu, corps improbable, transgression naturalisee | source-bonding strict, sortie, fallback, SIG | masque total de source non decide |

## 4. Contrat obligatoire SPACE-CORPUS-CANDIDATE

Tout candidat convolution / IR / corpus / playback prepare doit porter un contrat minimal.

Champs obligatoires :

- identifiant ;
- owner principal : SPC, REV, HAL, GEN-HAL, NAT, DIAG ou PREP ;
- source ou provenance ;
- fonction musicale ;
- fonction sensorielle ;
- type de relation a la source : directe, empreinte, miroir, lieu, corps, trace, memoire, halo ;
- criticite : P0/P1 interdit par defaut, P2 seulement si prepare et sans risque, P3/P4 preferes ;
- chemin de latence ;
- dependance fichier ;
- condition de preload ;
- mode de release ;
- fallback sans fichier ;
- signalisation SIG minimale ;
- limites : ce que le candidat ne decide pas.

Un candidat est invalide s'il n'a pas :

- fonction explicite ;
- owner ;
- sortie ;
- fallback ;
- relation claire avec SPC/HAL/REV/NAT quand il touche espace, halo, reverb ou naturalisation.

## 5. Convolution et IR

La convolution est acceptable comme empreinte, pas comme reflexe.

Usages compatibles :

- empreinte de salle pour donner une coherence perceptive a un monde spatial ;
- empreinte de source pour enrichir un son transforme ;
- cavite, metal, gong, peau, tuyau, souffle, matiere resonante ;
- reverb speciale si REV l'autorise comme monde ou sous-monde ;
- naturalisation d'un son genere quand la source acoustique reste plausible ;
- transition lente, apparition ou disparition d'un monde spatial.

Usages non compatibles :

- appliquer une convolution generale parce que "cela fait acoustique" ;
- cacher un son electronique reconnaissable derriere une IR ;
- remplacer le traitement reverb/SPC par une IR unique ;
- faire croire qu'une IR mesuree donne automatiquement le bon mix en club ;
- laisser une IR decider distance, presence ou halo.

Regle d'autorite :

- REV decide si une convolution agit comme reverb ;
- SPC decide si elle agit comme monde spatial ;
- NAT decide si elle aide la naturalisation ;
- HAL decide seulement ses etats de halo, pas l'identite acoustique du corpus ;
- SIG signale si la dependance est absente, limitee ou en fallback.

## 6. Mesure de salle avec un seul micro

La mesure de salle est envisageable avec un seul micro de mesure deplace plusieurs fois.

Statut :

- utile en preparation ;
- non obligatoire ;
- non bloquante ;
- non suffisante pour garantir le resultat live ;
- interdite comme dependance MIN-DID-PC.

Usage conceptuel admis :

- capturer plusieurs positions pour comprendre les grandes tendances du lieu ;
- reperer zones problematiques ou signatures de queue ;
- creer des references d'empreinte ;
- nourrir des choix SPC/REV sans les automatiser totalement ;
- aider a choisir si un monde spatial doit etre proche, large, sec, profond ou retenu.

Limites a inscrire dans le systeme :

- un seul micro deplace ne donne pas une image complete de la salle ;
- le public, le systeme de diffusion, le placement et le volume changent la perception ;
- la mesure ne doit pas imposer de choix artistique ;
- la mesure ne doit pas supprimer l'ecoute live ;
- la mesure ne doit pas autoriser une compensation qui degrade le corps, le grave ou la pression rythmique.

Mode d'emploi conceptuel :

- mesure avant set si disponible ;
- plusieurs positions simples plutot qu'une mesure unique pretendue parfaite ;
- extraction de tendances, pas verite definitive ;
- profil "room imprint" activable ;
- fallback "no room data" toujours acceptable.

## 7. Corpus sonore

Un corpus sonore est acceptable seulement s'il a une fonction declaree.

Categories compatibles :

- corpus de traces acoustiques : souffle, peau, bois, metal, gong, didgeridoo, voix, frottement ;
- corpus d'empreintes de lieux : petites pieces, grandes queues, cavites, exterieurs, clubs ;
- corpus de matieres non figuratives mais plausiblement acoustiques ;
- corpus de queues, attaques, resonances, instabilites ;
- corpus de references pour naturaliser une generation.

Categories dangereuses :

- collection de samples "interessants" sans role ;
- motifs autonomes qui deviennent chanson, hook ou gimmick par accident ;
- sons electroniques reconnaissables caches sous reverb ;
- banques stylistiques plaquees : jazz, dubstep, acid, trance, sound system, etc. ;
- remplacement de la performance live par playback.

Niveau d'autonomie autorise :

- faible : texture, trace, queue, matiere ;
- moyen : motif prepare ou couche stable si scene et fonction le demandent ;
- fort : seulement comme choix live explicite, jamais par automatisme cache.

## 8. Playback prepare

Le playback prepare est admissible comme support, pas comme pilote musical cache.

Usages compatibles :

- lire une empreinte, une queue, une texture ou une reference preparee ;
- soutenir un monde spatial long ;
- fournir une couche stable quand le live a besoin de respirer ;
- preparer une transition ;
- rejouer une matiere derivee de source acoustique ou de corpus documente.

Conditions :

- prechargement hors chemin critique ;
- pas de lecture fichier improvisee au moment critique ;
- etat lisible par SIG ;
- release prevue ;
- fallback si fichier absent ;
- absence d'autorite sur le direct/safe.

Le playback prepare ne doit pas :

- faire disparaitre la liberte du didgeridoo ;
- imposer une grille ou un motif ;
- devenir banque sonore principale ;
- remplir l'espace par defaut ;
- masquer un conflit de mix au lieu de le signaler.

## 9. Relations avec SPC, REV, HAL et GEN-HAL

SPC :

- recoit ou utilise des empreintes ;
- decide monde, distance, proximite, immersion, largeur, profondeur ;
- peut combiner plusieurs mondes si les fonctions sont compatibles ;
- garde la responsabilite des sorties et retours.

REV :

- gere la famille reverb ;
- peut utiliser convolution ou IR comme couleur, monde ou cas special ;
- ne se reduit pas a convolution ;
- garde les protections de mix, proximite, intelligibilite et grave.

HAL :

- decide halo, lock, force, cut, momentary, safe force ;
- peut recevoir de la matiere issue de corpus ou IR ;
- ne doit pas etre pilote par corpus ;
- ne doit pas etre maintenu contre decision live ou protection.

GEN-HAL :

- fournit matiere de halo ;
- ne decide pas l'etat de halo ;
- doit documenter source, fonction, sortie et fallback.

NAT :

- verifie que l'enrichissement reste plausible dans le langage Vesperare ;
- peut utiliser IR/corpus/convolution comme aide ;
- ne considere jamais ces aides comme suffisantes seules.

## 10. Naturalisation et sons reconnaissables

La naturalisation par espace ou corpus n'est valide que si elle renforce une source ou une fonction.

Compatible :

- effet proche d'un comportement acoustique possible ;
- ambiguite entre source acoustique traitee et generation ;
- queue, cavite, resonance ou souffle qui explique l'etrangete ;
- transformation tres forte mais reliee a scene/action/source, sauf choix live de matiere stable.

Incompatible :

- son electronique reconnaissable simplement "reverbere" ;
- effet connu applique comme signature autonome ;
- auto-tune reconnaissable ;
- lead synth banal masque par espace ;
- sample externe qui devient sujet principal sans decision explicite.

Regle :

Un effet connu peut etre accepte s'il est sonorement pertinent et naturalise par source/fonction. Il n'est pas accepte s'il devient une reference de genre non demandee.

## 11. Grave, gong, didgeridoo, voix

Didgeridoo :

- ne doit pas dependre de corpus/convolution pour fonctionner ;
- peut guider ou etre accompagne par des empreintes ;
- peut rester libre avec protections ;
- peut etre integre au systeme par modes optionnels ;
- doit conserver un chemin direct/safe sans dependance fichier.

Gong :

- peut beneficier d'empreintes metal/cavite/corps ;
- peut servir de base microtonale ou harmonique ;
- peut produire sensation de souffle/sub riche ;
- ne doit pas devenir une IR fixe qui ecrase le grave.

Sub/grave :

- ne doit pas etre masque par queues longues ;
- ne doit pas etre confie par accident a corpus/playback ;
- doit conserver modes graves definis ailleurs : guide, soutien, adaptation, retrait, libre ;
- peut recevoir une spatialisation lente, jamais une perte de precision imposee.

Voix :

- peut etre traitee, soufflee, rugueuse, fragmentaire ;
- doit rester integree virtuellement/acoustiquement ;
- pas de voix nue non integree ;
- pas de correction de pitch reconnaissable.

## 12. Latence, charge et dependances fichiers

Ces familles sont latentes par nature ou potentiellement chargees.

Regles :

- pas de P0/P1 par defaut ;
- pas de compromis musical reel pour optimiser la charge ;
- preparation, preload et fallback prioritaires ;
- les fichiers absents ou indisponibles doivent mener a un etat degradant seulement techniquement, pas musicalement ;
- si le systeme ne peut pas garantir une fonction avec corpus/IR, il doit revenir a une forme plus directe, plus simple ou plus seche, sans casser la performance.

Chemins recommandes :

- PREP/OFFLINE pour mesure, IR, corpus, analyse lourde ;
- PATH-SPC-SLOW pour mondes spatiaux et empreintes ;
- PATH-REV-SLOW pour reverbs speciales ;
- PATH-NAT-SLOW pour naturalisation ;
- PATH-GEN-SLOW pour matieres preparees ;
- PATH-HAL-SLOW pour matieres de halo.

Interdits par defaut :

- lecture disque au moment critique ;
- convolution ou corpus en dependance unique ;
- routage direct soumis a corpus ;
- protection sonore dependante d'un fichier ;
- automation invisible qui charge/retire une matiere sans etat SIG.

## 13. Signalisation et controle live

Tout usage de ces familles doit etre lisible au niveau conceptuel.

SIG minimal :

- corpus/IR actif ;
- fallback actif ;
- fichier manquant ou limite ;
- monde SPC utilisant une empreinte ;
- halo nourri par corpus ;
- mesure de salle disponible/non disponible ;
- release en cours ;
- dependance non critique seulement.

Controles live a prevoir plus tard, sans les definir ici :

- activation/bypass d'un corpus ou monde ;
- lock/force/cut cote HAL ;
- intensite d'empreinte ;
- proximite vs immersion ;
- sechete vs queue ;
- naturel vs etrange ;
- retour direct/safe.

## 14. Compatibilite avec MIN-DID-PC

MIN-DID-PC doit fonctionner sans :

- IR mesuree ;
- corpus ;
- convolution ;
- playback prepare ;
- fichier externe ;
- moteur lourd ;
- analyse offline.

Ces familles peuvent enrichir MIN-DID-PC si elles sont disponibles, mais elles ne doivent jamais definir son existence.

Fallback minimal :

- didgeridoo direct/safe ;
- protections sonores essentielles ;
- espace simple ou sec ;
- grave gere par modes dedies ;
- signalisation suffisante pour savoir qu'une option est absente.

## 15. Decision de sortie

DETTE-ACT-21 est absorbee.

Les statuts retenus sont :

- convolution : conditionnel lourd, hors critique par defaut ;
- IR salle/source : conditionnel offline, reference ou empreinte, non verite automatique ;
- corpus sonore : conditionnel lourd, seulement avec source, fonction, sortie et fallback ;
- playback prepare : support conditionnel, precharge, non pilote musical cache ;
- corpus pour HAL/SPC/REV/NAT : interface possible, jamais autorite cachee ;
- mesure de salle avec un seul micro deplace : utile mais non obligatoire, non bloquante, non suffisante seule.

La prochaine dette logique est :

```text
DETTE-ACT-22 - Audit candidats opacite decisionnelle / ML / classification / Markov / grammaire / statistique
```

La prochaine fiche a creer est :

```text
AUDIT_CANDIDATS_OPACITE_DECISIONNELLE_ML_CLASSIFICATION_MARKOV_GRAMMAIRE_STATISTIQUE_MAX_STANDALONE_VESPERARE_v0_1.md
```

Ce passage est autorise seulement apres mise a jour de l'index, du registre et de la matrice de preuve.
