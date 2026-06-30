# AUDIT COMPATIBILITE SPECIFICATION PRE-AUDIT CANDIDATS COMMANDES LIVE SCHEDULER SIGNALISATION AVEC CORPUS v0.1

Projet : Vesperare
Date : 2026-06-24
Statut : audit compatibilite, non-implementation

Fiche auditee :

- `SPECIFICATION_PRE_AUDIT_CANDIDATS_COMMANDES_LIVE_SCHEDULER_SIGNALISATION_VESPERARE_v0_1.md`

Corpus de verification :

- `AUDIT_CANDIDATS_ROUTAGE_DIRECT_SAFE_TRANSITIONS_MAX_STANDALONE_VESPERARE_v0_1.md`
- `MATRICE_COMMANDES_PACKETS_ETATS_SIGNAUX_PERFORMANCE_MAX_STANDALONE_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_MATRICE_COMMANDES_PACKETS_ETATS_SIGNAUX_PERFORMANCE_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_TRANSACTIONS_RELEASE_ROLLBACK_COMMANDES_ETATS_MAX_STANDALONE_VESPERARE_v0_1.md`
- `NOMENCLATURE_ETATS_PACKETS_REPONSES_RELEASES_VESPERARE_v0_1.md`
- `MATRICE_EXCLUSIONS_CANDIDATS_PAR_CRITICITE_ET_LATENCE_MAX_STANDALONE_VESPERARE_v0_1.md`
- `SPECIFICATION_LATENCE_SCHEDULER_VECTORS_AUDIO_SETTINGS_MAX_STANDALONE_VESPERARE_v0_1.md`
- `MATRICE_LATENCE_RESSENTIE_PAR_FONCTION_ET_CHEMIN_MAX_STANDALONE_VESPERARE_v0_1.md`
- `REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`

But :

```text
verifier que le pre-audit candidat B ne saute pas vers UI, mapping,
implementation, objets finaux ou garanties techniques abusives.
```

---

## 1. Verdict general

Verdict :

```text
compatible avec le corpus actif.
```

Decision :

```text
le pre-audit B peut autoriser l'audit candidat B.
il n'autorise pas encore le choix definitif d'objets Max.
il n'autorise pas encore la creation d'interface.
il n'autorise pas encore de mapping physique.
```

Raison :

```text
le document maintient la distinction entre :
commande abstraite ;
message candidat ;
timing candidat ;
etat/preset hors critique ;
signalisation de performance ;
UI future.
```

---

## 2. Controles de compatibilite

### 2.1. Commandes non reduites a l'interface

Constat :

```text
compatible.
```

Preuve :

```text
la fiche definit OP-LIVE-COMMAND comme contrat :
origine, autorite, cible, criticite, packets, timing, reponse, fallback,
release, rollback et SIG.
```

Risque restant :

```text
l'audit candidat B devra continuer a refuser tout glissement vers bouton,
surface, controleur ou mapping final.
```

### 2.2. Respect des autorites P0/P1/P2

Constat :

```text
compatible.
```

Preuve :

```text
la hierarchie P0 > P1 > P2 > P3 > P4 > P5 > DIAG est conservee.
P2 live explicite reste fort, mais P0/P1 peuvent limiter avec SIG.
DIAG ne commande pas l'audio.
```

Risque restant :

```text
l'audit candidat B devra verifier que chaque candidat ne cree pas une autorite
implicite par son ordre ou son etat cache.
```

### 2.3. Scheduler et Overdrive non absolutises

Constat :

```text
compatible.
```

Preuve :

```text
Overdrive et Scheduler in Audio Interrupt sont presentes comme candidats de
precision et de relation event-to-audio.
ils ne sont pas presentes comme garantie artistique.
ils ne deviennent pas conditions du direct P0 ni du safe P1.
```

Risque restant :

```text
l'audit candidat B devra traiter explicitement :
evenements haute priorite vs basse priorite ;
UI comme source non sample-accurate ;
charge scheduler ;
drop vectors ;
signal si une commande est retardee, ignoree ou limitee.
```

### 2.4. `route/select/trigger/message` non finalises

Constat :

```text
compatible.
```

Preuve :

```text
les candidats sont ranges par fonction :
separer, detecter, ordonner, formater.
aucun schema final de patch n'est pose.
aucune syntaxe definitive n'est fixee.
```

Risque restant :

```text
`trigger` devra etre audite pour eviter l'ordre cache.
`select` devra etre audite pour eviter le bang sans contexte.
`route` devra etre audite pour eviter le routage message opaque.
`message` devra etre audite pour eviter la syntaxe finale prematuree.
```

### 2.5. `pattr/pattrstorage` hors critique

Constat :

```text
compatible.
```

Preuve :

```text
pattr est limite a la memoire, l'alias, le preset ou l'etat hors critique.
pattrstorage est reporte comme famille etats/presets si besoin.
aucun des deux ne devient source unique du geste live.
```

Risque restant :

```text
l'audit candidat B devra probablement traiter pattr seulement sommairement,
et reporter pattrstorage a un groupe etats/presets ou memoire de scenes.
```

### 2.6. SIG comme signalisation et non interface

Constat :

```text
compatible.
```

Preuve :

```text
SIG nomme le besoin d'information, son niveau et sa fonction.
il ne choisit pas couleur, ecran, controleur, layout ou objet UI.
```

Risque restant :

```text
l'audit candidat B devra distinguer SIG-0, SIG-1, SIG-2, SIG-3
pour eviter la surcharge cognitive et la signalisation inutile.
```

### 2.7. Setup minimum didgeridoo + PC

Constat :

```text
compatible.
```

Preuve :

```text
le pre-audit liste les familles de commandes minimales sans les transformer en
modules obligatoires.
il preserve DID, GRV/SUB/GONG, GEN, SPC/HAL/REV, retour/sortie.
```

Risque restant :

```text
l'audit candidat B devra verifier que la couche commande ne multiplie pas les
obligations du setup minimum.
```

---

## 3. Corrections necessaires avant audit candidat B

Correction obligatoire :

```text
aucune.
```

Clarification a maintenir :

```text
le groupe B est un audit de candidats de commande/timing/signalisation.
il ne doit pas devenir une fiche UI.
```

---

## 4. Questions reportees

### Q-AUDPREB-1 - mapping physique

Statut :

```text
reporte.
```

Motif :

```text
le mapping physique dependra d'une future strategie performeur/controleur.
le traiter maintenant figerait trop tot l'interface.
```

### Q-AUDPREB-2 - pattrstorage complet

Statut :

```text
reporte.
```

Motif :

```text
pattrstorage concerne fortement les presets, recalls, interpolations,
snapshots et memoires de scenes.
il peut etre mentionne comme risque dans B, mais son audit complet appartient
a un groupe etats/presets si necessaire.
```

### Q-AUDPREB-3 - UI de signalisation

Statut :

```text
reporte.
```

Motif :

```text
SIG doit d'abord definir ce qui doit etre su en live.
la forme visible ou gestuelle viendra apres.
```

---

## 5. Decision de sortie

Autorise :

```text
AUDIT_CANDIDATS_COMMANDES_LIVE_SCHEDULER_SIGNALISATION_MAX_STANDALONE_VESPERARE_v0_1.md
```

Conditions :

```text
auditer candidat par candidat ;
ne pas choisir d'objet final ;
ne pas definir d'UI ;
ne pas definir de mapping ;
classer chaque candidat par fonction, criticite, LPER, risques, fallback,
signalisation et rollback ;
reporter explicitement ce qui appartient a etats/presets ou UI future.
```

N'autorise pas :

```text
patch final ;
implementation ;
test/benchmark comme condition de conception ;
seuils definitifs ;
automations finales ;
```
