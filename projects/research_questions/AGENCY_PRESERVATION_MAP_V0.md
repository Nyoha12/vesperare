# AGENCY_PRESERVATION_MAP_V0

## Statut

Première carte de préservation de l’agency musicale live de Yohan.

Ce document n’est pas :

- une spec ;
- un verifier complet ;
- un audit global ;
- un audit `assets/source_needs` ;
- un plan de prototype ;
- une décision d’architecture.

## Objet

Transformer l’axiome :

```text
Le système ne doit rien enlever à Yohan.
```

en une première carte de ce que le futur système devra préserver.

Cette carte reste provisoire. Elle sert à orienter la suite de la recherche, pas à figer le système.

---

# 1. Principe central

Le système ne doit pas seulement éviter les erreurs techniques.

Il doit éviter de réduire l’agency musicale live de Yohan.

Par agency, on entend ici la capacité de Yohan à rester l’auteur vivant de la performance : écouter, décider, sentir, réorienter, risquer, retenir, relancer, suspendre, densifier, retirer, transformer.

---

# 2. Dimensions initiales à préserver

Ces dimensions ne sont pas des catégories finales. Ce sont des poignées de recherche.

## 2.1 Timing

À préserver :

- choix du moment ;
- retard ;
- attaque ;
- suspension ;
- relance ;
- décision de ne pas jouer.

Risque si réduit :

- système trop automatique ;
- événements déclenchés trop tôt ;
- perte de tension ;
- sensation que le système conduit la forme à la place du musicien.

## 2.2 Écoute

À préserver :

- écoute du son réel ;
- écoute de la salle ;
- écoute du corps ;
- écoute des réactions du système ;
- écoute de ce qui manque.

Risque si réduit :

- interface trop visuelle ;
- surcharge de monitoring ;
- perte de présence ;
- décisions techniques au lieu de décisions musicales.

## 2.3 Souffle et corps

À préserver :

- effort ;
- respiration ;
- pression ;
- fatigue expressive ;
- physicalité ;
- rapport direct au son.

Risque si réduit :

- électronisation décorative ;
- perte de source vivante ;
- son lissé ;
- système trop propre.

## 2.4 Risque

À préserver :

- possibilité de bord ;
- instabilité fertile ;
- non-sécurité musicale ;
- tension non totalement contrôlée.

Risque si réduit :

- système trop protecteur ;
- musique trop correcte ;
- perte d’intensité ;
- disparition de l’improvisation réelle.

## 2.5 Silence et retrait

À préserver :

- droit de retirer ;
- droit de ne pas remplir ;
- droit de laisser une trace ;
- droit de suspendre sans que le système compense automatiquement.

Risque si réduit :

- génération qui comble tout ;
- système qui remplace l’absence ;
- densité constante ;
- perte de forme.

## 2.6 Densité

À préserver :

- capacité de densifier ;
- capacité de réduire ;
- capacité de garder une densité fragile ;
- capacité de ne pas tout empiler.

Risque si réduit :

- accumulation de couches ;
- polytexture confuse ;
- surcharge ;
- perte de lisibilité.

## 2.7 Timbre et nuance

À préserver :

- micro-variations ;
- grain ;
- instabilité ;
- rugosité ;
- couleur ;
- seuils de transformation.

Risque si réduit :

- traitement trop grossier ;
- sound-design démonstratif ;
- caricature d’instrument ;
- effet plaqué.

## 2.8 Forme

À préserver :

- intuition de trajectoire ;
- durée ;
- patience ;
- retour ;
- bascule ;
- capacité de détourner la forme prévue.

Risque si réduit :

- scènes trop rigides ;
- trajectoires trop automatiques ;
- transitions prévisibles ;
- perte de composition vivante.

## 2.9 Décision

À préserver :

- choix final ;
- validation ;
- refus ;
- arrêt ;
- override ;
- bifurcation.

Risque si réduit :

- fausse assistance ;
- système qui décide implicitement ;
- musicien qui suit le dispositif ;
- perte d’autorité.

## 2.10 Continuité improvisée

À préserver :

- enchaînement vivant des décisions ;
- capacité à répondre à l’instant ;
- rapport entre mémoire immédiate et projection ;
- adaptation.

Risque si réduit :

- séquences préfabriquées ;
- automation trop déterministe ;
- rigidification de la performance.

---

# 3. Modes d’assistance à distinguer

Le système ne doit pas seulement être classé comme manuel ou automatique.

Il faut distinguer plusieurs modes.

## 3.1 Accompagner

Le système suit ou soutient sans prendre l’initiative principale.

Risque : accompagnement trop plat ou décoratif.

## 3.2 Prolonger

Le système étend une qualité du jeu live.

Risque : prolongement qui devient remplacement.

## 3.3 Traduire

Le système transforme une dimension acoustique en influence électronique.

Risque : réduction d’un geste riche à un paramètre pauvre.

## 3.4 Révéler

Le système rend audible ou visible une dimension déjà présente.

Risque : sur-explication ou effet démonstratif.

## 3.5 Contenir

Le système aide à maintenir une zone de tension, pression, densité ou halo.

Risque : stabilisation excessive.

## 3.6 Protéger

Le système empêche une perte critique : surcharge, masquage, perte de corps, perte de sortie.

Risque : protection trop rigide.

## 3.7 Proposer

Le système suggère une possibilité sans l’imposer.

Risque : suggestion qui oriente trop la décision.

## 3.8 Remplacer

Le système prend la fonction à la place du musicien.

Statut : mode à traiter comme dangereux par défaut, sauf décision explicite.

---

# 4. Questions de vérification futures

Ces questions ne sont pas encore des tests complets.

Elles indiquent ce qu’un futur verifier devra pouvoir examiner.

## VQ01

Le système laisse-t-il Yohan décider du moment ?

## VQ02

Le système garde-t-il une sortie claire lorsque la densité, le halo, le freeze ou la boucle augmentent ?

## VQ03

Le système augmente-t-il le jeu live sans le masquer ?

## VQ04

Le système rend-il les risques visibles sans bloquer l’expressivité ?

## VQ05

Le système permet-il le retrait et le silence ?

## VQ06

Le système évite-t-il de transformer des nuances acoustiques en contrôles trop pauvres ?

## VQ07

Le système évite-t-il d’imposer une trajectoire formelle trop automatique ?

## VQ08

Le système laisse-t-il toujours une décision humaine finale ?

---

# 5. Conséquences immédiates pour la suite

## 5.1 Ne pas aller directement aux assets

Avant d’auditer `assets/source_needs`, il faut savoir quelles dimensions d’agency les sources doivent préserver, amplifier ou ne pas réduire.

## 5.2 Ne pas écrire SPEC.md tout de suite

La spec future devra intégrer des exigences d’agency. Cette carte n’est pas encore assez stable pour produire une spec.

## 5.3 Ne pas prototyper tout de suite

Un prototype risquerait d’incarner trop vite une compréhension partielle de l’agency.

## 5.4 Préparer les critères de micro-test

La prochaine étape utile est de définir ce qui distingue un micro-test acceptable d’un prototype prématuré.

---

# 6. Prochaine action recommandée

Créer :

```text
projects/research_questions/MICRO_TEST_CRITERIA_V0.md
```

But : définir les conditions dans lesquelles un test ponctuel peut être autorisé sans devenir une architecture implicite.

---

# 7. Interdictions actuelles

Ne pas :

- écrire SPEC.md ;
- écrire VERIFY.md ;
- auditer `assets/source_needs` ;
- créer un prototype ;
- créer un patch ;
- créer un mapping ;
- modifier main ;
- merger la branche méthode.
