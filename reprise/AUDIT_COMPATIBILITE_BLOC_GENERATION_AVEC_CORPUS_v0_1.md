# AUDIT COMPATIBILITE BLOC GENERATION AVEC CORPUS v0.1

Projet : Vesperare
Date : 2026-06-21
Statut : audit de compatibilite interne apres specification generation

Documents audites :

- `SPECIFICATION_BLOC_GENERATION_SONORE_MOTIFS_RYTHMIQUES_MELODIQUES_v0_1.md`
- `SPECIFICATION_NOYAU_JOUABLE_SCENES_COUCHES_v0_1.md`
- `AUDIT_METHODOLOGIQUE_PRO_ACADEMIQUE_PRE_GENERATION_v0_1.md`
- `BESOINS_GENERATION_v0_4.md`
- `BESOINS_STYLISTIQUES_v0_4.md`
- `CARACTERISATION_DETAILLEE_ELEMENTS_v0_4.md`
- `REVERBS_ESPACE_REACTIF_v0_2.md`
- `SPECIFICATION_CONTROLES_LIVE_ET_MODES_SCENE_v0_1.md`
- `SPECIFICATION_CONCEPTUELLE_FONCTIONS_CONTROLES_PRIORITES_v0_1.md`

But :

- verifier que le bloc generation reste compatible avec le corpus actif ;
- verifier que la generation ne devient pas autonome hors fonction ;
- verifier que les motifs rythmiques et melodiques restent rattaches aux scenes, couches, gestes ou etats ;
- verifier que la reverb, l'espace, le grave, la voix, le didgeridoo, le gong et la transgression restent coherents ;
- identifier les corrections necessaires avant les protocoles conceptuels / sidechains.

Hors perimetre :

- architecture technique ;
- devices ;
- routings ;
- algorithmes ;
- seuils ;
- interface ;
- evaluation pratique.

---

## 1. Verdict general

Verdict :

```text
Compatible.
Le bloc generation peut etre conserve comme specification active.
Deux corrections mineures ont ete appliquees pendant l'audit.
```

Corrections appliquees :

```text
COR-GEN-A - Reverb/espace
Remplacement des anciennes formulations de voix exposee non integree
par "voix exposee sans integration".

COR-GEN-B - Bloc generation
Ajout d'une precision : les defaults par famille GEN valent seulement
quand la famille est deja autorisee par scene, couche, geste, etat ou choix live.
```

Conclusion :

```text
La generation reste fonction-bound.
Elle ne reintroduit pas de compositeur automatique.
Elle peut servir de base a la specification des protocoles conceptuels.
```

---

## 2. Compatibilite avec le noyau jouable

### 2.1. DOM / LAYER / GESTE / ETAT

Le noyau jouable impose :

```text
un objet genere doit appartenir a une DOM, une LAYER, un GESTE ou un ETAT.
```

Le bloc generation reprend explicitement cette regle.

Statut :

```text
compatible.
```

Point fort :

Les familles generatives ne sont pas de simples moteurs :

```text
GEN-SRC ;
GEN-RHY ;
GEN-LIN ;
GEN-GRV ;
GEN-HAL ;
GEN-SPC ;
GEN-TEX ;
GEN-VOX ;
GEN-TRG ;
GEN-RET.
```

Elles sont reliees a des roles perceptifs.

Point a surveiller :

```text
GEN-LIN et GEN-RHY sont les plus susceptibles de devenir autonomes.
```

Garde-fou deja present :

```text
motif rattache a fonction ;
autonomie bornee ;
sortie obligatoire ;
motif bloque si hors scene.
```

### 2.2. Charge mentale

Le noyau limite la pensee active a :

```text
scene dominante ;
couches actives ;
sortie/consequence.
```

Le bloc generation ajoute beaucoup de categories, mais il les classe par fonction.

Statut :

```text
compatible sous condition.
```

Condition :

```text
Les familles GEN doivent rester des familles de conception.
Elles ne doivent pas devenir dix controles visibles permanents.
```

Decision :

```text
Le futur document protocoles/sidechains devra separer :
controle live ;
permission de scene ;
Auto-Pro ;
signalisation.
```

### 2.3. Defaults

Risque identifie :

```text
Les defaults par famille GEN pouvaient etre lus comme actifs partout.
```

Correction appliquee :

```text
Les defaults valent seulement quand la famille est deja autorisee.
```

Statut :

```text
compatible apres correction.
```

---

## 3. Compatibilite avec les besoins generation v0.4

### 3.1. Objet genere situe

`BESOINS_GENERATION_v0_4` exige :

```text
fonction ;
contexte ;
inspiration ;
pression ;
plausibilite acoustique ;
monde spatial ;
conditions d'apparition ;
conditions de transformation ;
conditions de disparition ;
risques ;
garde-fous.
```

Le bloc generation ajoute :

```text
source ;
feature ;
interpretation ;
role DOM/LAYER/GESTE/ETAT ;
autonomie ;
naturalisation ;
controle live ;
Auto-Pro ;
sortie.
```

Statut :

```text
compatible et plus precis.
```

### 3.2. Plausibilite acoustique

La fiche generation v0.4 exige une origine plausible ou ambigue.

Le bloc generation formalise :

```text
NAT-SRC ;
NAT-CAV ;
NAT-FOR ;
NAT-FRI ;
NAT-MET ;
NAT-PEAU ;
NAT-ESP ;
NAT-HAL ;
NAT-IRR ;
NAT-HYB ;
NAT-FNC.
```

Statut :

```text
compatible.
```

Point critique :

```text
NAT-FNC ne doit pas devenir excuse pour n'importe quel son abstrait.
```

Regle a conserver :

```text
Plus un son est impossible,
plus sa source ou sa fonction doit etre lisible.
```

### 3.3. Techno sans timbres techno

Le bloc generation respecte :

```text
pas de kit techno standard ;
pas de cliche acid ;
pas de lead synth banal ;
pas de timbre electronique reconnaissable par defaut.
```

Statut :

```text
compatible.
```

Point a surveiller :

```text
GEN-RHY doit rester pression/corps/interlocking,
pas devenir generateur de patterns techno.
```

### 3.4. Techno suspendue tres longue

Le bloc generation permet :

```text
micro-variation ;
memoire techno ;
halo ;
espace ;
ligne trace ;
grave trace/soutien ;
retour prepare.
```

Il interdit :

```text
retour automatique.
```

Statut :

```text
compatible.
```

### 3.5. Didgeridoo

Les besoins imposent :

```text
didgeridoo libre ;
systeme adapte ;
didgeridoo adapte ;
guide harmonique ;
source traitee ;
perturbateur ;
protection.
```

Le bloc generation reprend ces fonctions via `DID`, `GEN-SRC`, `GEN-LIN`, `GEN-GRV`, `GEN-RHY`.

Statut :

```text
compatible.
```

Point a surveiller :

```text
didgeridoo -> ligne acid naturalisee
ne doit pas reduire le didgeridoo a une source de pitch.
```

Correction deja presente :

```text
features multiples : bourdon, partiels, formants, souffle, attaques,
vocalisation, rugosite, stabilite, energie.
```

---

## 4. Compatibilite avec le bloc reverb/espace

### 4.1. Espace comme fonction perceptive

Le document reverb/espace affirme :

```text
reverb/espace = fonction perceptive ;
pas simple effet decoratif.
```

Le bloc generation reprend :

```text
GEN-SPC ;
GEN-HAL ;
NAT-ESP ;
NAT-HAL ;
SPC-0 a SPC-9.
```

Statut :

```text
compatible.
```

### 4.2. Auto-Pro

Le corpus impose :

```text
Auto-Pro protege ;
Auto-Pro ne compose pas ;
Auto-Pro ne change pas de monde expressif sans autorisation.
```

Le bloc generation reprend :

```text
Auto-Pro peut proteger masquage, headroom, feedback, sub, attaque,
source essentielle, brillance, boue.

Auto-Pro ne peut pas decider retour, transgression, scene dominante,
motif principal, changement de monde expressif, autonomie forte, domination.
```

Statut :

```text
compatible.
```

### 4.3. Voix

Incompatibilite mineure detectee :

```text
ancienne formulation de voix exposee non integree
dans REVERBS_ESPACE_REACTIF_v0_2.
```

Correction appliquee :

```text
voix masquee ou exposee sans integration ;
voix exposee sans integration dans un monde.
```

Statut :

```text
compatible apres correction.
```

### 4.4. Grave spatial / grave generation

Le bloc reverb distingue :

```text
Auto-Pro / Off / Trace / Corps / Pression / Bloom / Libre.
```

Le bloc generation distingue :

```text
GRV-0 retrait ;
GRV-1 trace ;
GRV-2 soutien discret ;
GRV-3 porteur ponctuel ;
GRV-4 didgeridoo guide ;
GRV-5 gong bloom porte ;
GRV-6 graves libres ;
GRV-7 sub ponctuel non identifiable.
```

Statut :

```text
compatible.
```

Point a surveiller :

```text
GEN-GRV et GEN-SPC peuvent tous deux toucher au grave.
Le futur protocole devra dire qui gagne :
grave musical, grave spatial, sub protection, gong bloom, didgeridoo guide.
```

---

## 5. Compatibilite avec les scenes prioritaires

### 5.1. SCN-1 Didgeridoo / systeme minimum

Generations indiquees :

```text
GEN-SRC ;
GEN-RHY par attaques/souffle ;
GEN-LIN par partiels/formants ;
GEN-GRV par guide ou retrait ;
GEN-HAL source ;
GEN-RET.
```

Statut :

```text
compatible.
```

Risque :

```text
trop de couches generation dans le setup minimum.
```

Garde-fou :

```text
0 a 2 couches continues ;
didgeridoo libre protege default.
```

### 5.2. SCN-2 Techno corporelle naturalisee

Generation prioritaire :

```text
GEN-RHY, GEN-GRV, GEN-TEX, GEN-LIN en couche, GEN-RET.
```

Statut :

```text
compatible.
```

Risque :

```text
GEN-RHY pourrait devenir pattern techno.
```

Garde-fou :

```text
pas de kit techno standard ;
naturalisation obligatoire ;
fonction corporelle.
```

### 5.3. SCN-3 Techno suspendue tres longue

Generation prioritaire :

```text
GEN-HAL, GEN-SPC, GEN-RHY memoire, GEN-LIN trace, GEN-GRV trace/soutien, GEN-RET prepare.
```

Statut :

```text
compatible.
```

Risque :

```text
GEN-RET pourrait etre lu comme retour automatique.
```

Garde-fou :

```text
AUT-5 interdit pour retour ;
retour prepare ne force pas retour.
```

### 5.4. SCN-4 Gong / bloom grave / metal-gong

Generation prioritaire :

```text
GEN-GRV, GEN-HAL, GEN-TEX, GEN-SPC, GEN-TRG possible, GEN-RET.
```

Statut :

```text
compatible.
```

Risque :

```text
partiels + bloom + halo + espace peuvent devenir nappe.
```

Garde-fou :

```text
fonction gong nommee ;
pas de nappe indistincte ;
sortie ou resolution.
```

### 5.5. SCN-5 Sound-system immersion / domination

Generation prioritaire :

```text
GEN-GRV, GEN-SPC, GEN-RHY, GEN-HAL safe, GEN-TRG si decide, GEN-RET.
```

Statut :

```text
compatible.
```

Risque :

```text
domination automatique ou sub envahissant.
```

Garde-fou :

```text
domination explicite ;
sub protege ;
P0/P1.
```

### 5.6. SCN-6 Voix exposee integree

Generation prioritaire :

```text
GEN-VOX, GEN-SRC, GEN-HAL, GEN-LIN fragment, GEN-SPC proche/cavite, GEN-RET.
```

Statut :

```text
compatible.
```

Risque :

```text
voix qui devient chanson, lead ou pitch correction.
```

Garde-fou :

```text
voix off ou integree ;
pas de pitch correction reconnaissable ;
pas de lead banal.
```

### 5.7. SCN-7 Acid naturalise / ligne vivante

Generation prioritaire :

```text
GEN-LIN, GEN-RHY, GEN-GRV basse-motif, GEN-TEX mutation, GEN-HAL court, GEN-RET.
```

Statut :

```text
compatible.
```

Risque :

```text
cliche 303 / squelch / pattern acid.
```

Garde-fou :

```text
source de ligne obligatoire ;
AUT-X pour imitation TB-303/pattern acid cliche ;
re-naturaliser / retirer au seuil cliche.
```

### 5.8. SCN-8 Polytexture

Generation prioritaire :

```text
GEN-TEX, GEN-RHY, GEN-SRC, GEN-LIN en couche, GEN-TRG possible, GEN-RET.
```

Statut :

```text
compatible.
```

Risque :

```text
density overload, perte de couche directrice.
```

Garde-fou :

```text
une couche directrice ;
nettoyage ;
source essentielle protegee.
```

### 5.9. SCN-9 Transgression controlee

Generation prioritaire :

```text
GEN-TRG, GEN-GRV, GEN-SPC, GEN-VOX cri, GEN-TEX masse, GEN-RET sortie obligatoire.
```

Statut :

```text
compatible.
```

Risque :

```text
transgression qui devient etat automatique.
```

Garde-fou :

```text
Default AUT-0 Off ;
fonction claire ;
P0 jamais contournable ;
sortie obligatoire.
```

---

## 6. Compatibilite stylistique

### 6.1. Non-importation de styles entiers

Le corpus impose :

```text
les styles sont reservoirs de phenomenes.
```

Le bloc generation respecte :

```text
techno = pression/cadre/retour ;
acid = ligne/torsion/formant/resonance ;
sound-system = immersion/pression/vide/sub ;
jazz = tension/resolution eventuelle, pas accord plaque ;
voix = presence/souffle/signal/texture ;
trance = expansion/attente/retour possible si besoin.
```

Statut :

```text
compatible.
```

### 6.2. Sons electroniques reconnaissables

Le corpus impose :

```text
interdits par defaut, exceptions possibles si decidees.
```

Le bloc generation respecte :

```text
pas de kit techno standard ;
pas de lead synth banal ;
pas de TB-303/pattern acid cliche ;
pas de pitch correction reconnaissable ;
naturalisation obligatoire.
```

Statut :

```text
compatible.
```

### 6.3. Motifs reconnaissables

Le corpus permet :

```text
motifs reconnaissables, lignes, hook minimal, basse-motif.
```

Le bloc generation encadre :

```text
REC-0 a REC-5 ;
re-naturaliser / retirer ;
autonomie bornee ;
source obligatoire ;
fonction formelle.
```

Statut :

```text
compatible.
```

---

## 7. Zones fragiles restantes

### FRAG-GEN-1 - Trop de familles GEN comme surface live

Risque :

```text
10 familles GEN peuvent devenir trop nombreuses si exposees directement.
```

Decision :

```text
Les familles GEN restent des familles de conception.
La surface live future doit les compresser en quelques controles.
```

### FRAG-GEN-2 - GEN-RET mal interprete

Risque :

```text
retour prepare lu comme retour automatique.
```

Decision :

```text
GEN-RET peut preparer, signaler ou accompagner.
Il ne decide pas le retour.
```

### FRAG-GEN-3 - Source scene trop puissante

Risque :

```text
SCN comme source de generation peut devenir pilote automatique.
```

Decision :

```text
La scene autorise et cadre.
Elle ne compose pas.
```

### FRAG-GEN-4 - Acid / voix double lead

Risque :

```text
fragment vocal + ligne acid naturalisee au premier plan.
```

Decision :

```text
une seule fonction reconnaissable au premier plan ;
l'autre reste texture, source, trace ou reponse.
```

### FRAG-GEN-5 - Grave musical vs grave spatial

Risque :

```text
GEN-GRV, GEN-SPC, GSP et bloom gong peuvent se marcher dessus.
```

Decision :

```text
Le protocole suivant devra definir une priorite de grave :
didgeridoo guide, gong bloom, sub porteur, soutien discret, retrait, graves libres.
```

### FRAG-GEN-6 - Feedback controle

Risque :

```text
la mention de feedback controle dans GEN-TRG peut etre lue comme permission technique.
```

Decision :

```text
Elle reste une source conceptuelle de crise/transgression.
P0 feedback dangereux gagne toujours.
Pas de feedback dangereux comme objectif.
```

---

## 8. Corrections appliquees

### COR-GEN-A - Vocabulaire voix dans reverb/espace

Fichier :

```text
REVERBS_ESPACE_REACTIF_v0_2.md
```

Corrections :

```text
remplacement des formulations anciennes
par :
voix masquee ou exposee sans integration ;
voix exposee sans integration dans un monde.
```

Effet :

```text
Alignement avec le refus d'une voix exposee non integree.
```

### COR-GEN-B - Defaults de familles GEN

Fichier :

```text
SPECIFICATION_BLOC_GENERATION_SONORE_MOTIFS_RYTHMIQUES_MELODIQUES_v0_1.md
```

Correction :

```text
Les defaults par famille GEN valent seulement quand cette famille
est deja autorisee par scene, couche, geste, etat ou choix live.
```

Effet :

```text
Evite de lire AUT-1/AUT-2 comme generation active partout par defaut.
```

---

## 9. Verdict par priorite

### P0 / P1 / P2

Statut :

```text
compatible.
```

Le bloc generation respecte :

```text
P0 toujours prioritaire ;
P1 protection mix vitale ;
P2 choix live explicite.
```

### Auto-Pro

Statut :

```text
compatible.
```

Auto-Pro protege, ne compose pas.

### Autonomie

Statut :

```text
compatible apres correction de lecture des defaults.
```

### Naturalisation

Statut :

```text
compatible.
```

Naturalisation = appartenance perceptive, pas decoration.

### Motifs

Statut :

```text
compatible.
```

Motif reconnaissable possible, mais rattache et retirabile.

### Reverb/espace

Statut :

```text
compatible apres correction vocabulaire voix.
```

### Grave/sub

Statut :

```text
compatible mais fragile.
```

Necessite priorites de grave dans le document suivant.

---

## 10. Decision v0.1

Le bloc generation est compatible avec le corpus actif.

Il peut devenir la base de l'etape suivante.

Prochaine etape recommandee :

```text
SPECIFICATION_PROTOCOLS_SIDECHAINS_CONCEPTUELS_v0_1
```

But :

- transformer les fonctions generatives en protocoles conceptuels ;
- definir les relations source -> analyse -> reaction ;
- definir les sidechains conceptuels sans routings techniques ;
- definir les priorites de conflit ;
- distinguer protocoles expressifs, protocoles de protection et protocoles de signalisation ;
- garder la generation bornee par DOM/LAYER/GESTE/ETAT.

Points obligatoires pour la suite :

```text
1. Priorite de grave : didgeridoo / gong / sub / retrait / libre.
2. Protocoles de motif : source, autonomie, retrait, anti-cliche.
3. Protocoles de reverb/halo : lock, force, cut, adaptation P0/P1.
4. Protocoles de retour : prepare, signaler, accompagner, jamais imposer.
5. Protocoles de source live : proteger, prolonger, transformer sans effacer.
6. Protocoles Auto-Pro : proteger sans composer.
```

---

## 11. Suivi

Date : 2026-06-21

Action realisee :

- `SPECIFICATION_PROTOCOLS_SIDECHAINS_CONCEPTUELS_v0_1.md` cree.
- `AUDIT_COMPATIBILITE_PROTOCOLS_SIDECHAINS_AVEC_CORPUS_v0_1.md` cree.

Conclusion :

```text
Les protocoles conceptuels transforment les fonctions consolidees
en relations source -> indices -> interpretation -> cible -> reaction.
Ils restent hors architecture technique.
L'audit protocoles/corpus confirme la compatibilite apres trois clarifications.
```

Nouvelle prochaine etape :

```text
SPECIFICATION_ANALYSES_INDICES_CONCEPTUELS_ET_CONFIANCE_v0_1
```
