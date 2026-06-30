# AUDIT COMPATIBILITE MATRICE GEN-ROLE / SCENES / CONTROLES LIVE / RISQUES AVEC CORPUS v0.1

Projet : Vesperare
Statut : audit compatibilite matrice GEN-ROLE / scenes / controles live / risques
Date : 2026-06-23

Sources actives principales :

- `MATRICE_GEN_ROLE_SCENES_CONTROLES_LIVE_RISQUES_VESPERARE_v0_1.md`
- `SPECIFICATION_GENERATION_FINE_PAR_GEN_ROLE_MAX_STANDALONE_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_SPECIFICATION_GENERATION_FINE_PAR_GEN_ROLE_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_SCENES_PRIORITAIRES_ET_MACROS_v0_1.md`
- `SPECIFICATION_NOYAU_JOUABLE_SCENES_COUCHES_v0_1.md`
- `SPECIFICATION_CONTROLES_LIVE_ET_MODES_SCENE_v0_1.md`
- `SPECIFICATION_TECHNIQUE_CONCEPTUELLE_REVERB_SPACE_HALO_FREEZE_RESONATEURS_CONVOLUTION_MAX_STANDALONE_VESPERARE_v0_1.md`
- `DECISION_RUNTIME_MAX_STANDALONE_LATENCE_SANS_COMPROMIS_VESPERARE_v0_1.md`

But :

```text
verifier que la matrice GEN-ROLE / scenes / controles live / risques respecte
le corpus actif, garde les scenes superposables, ne transforme pas les roles
generatifs en presets, ne glisse pas vers des algorithmes ou objets Max finaux,
et identifie correctement les prochains noeuds fragiles.
```

Hors perimetre :

```text
algorithmes ;
objets Max definitifs ;
syntaxe Max ;
seuils ;
buffers ;
controleur physique ;
UI finale ;
patch final ;
tests pratiques ;
benchmark.
```

---

## 1. Verdict general

Verdict :

```text
compatible avec corrections mineures et une suite obligatoire sur le noeud
grave/gong/sub/didgeridoo.
```

La matrice est compatible parce qu'elle :

- conserve les `GEN-ROLE` comme fonctions musicales situees ;
- ne transforme pas les scenes en cases exclusives ;
- respecte le modele `DOM / LAYER / GESTE / ETAT / AUTO-PRO` ;
- conserve une seule scene dominante ;
- autorise les superpositions importantes ;
- garde `AUT-5` hors defaut ;
- maintient les interdits sur electronique reconnaissable, voix nue et auto-tune ;
- traite jazz/Keita comme methode de decision et non comme style ;
- signale le noeud grave/gong/sub/didgeridoo comme fragile ;
- maintient Max standalone et la latence comme enjeu sans compromis musical.

Corrections requises :

```text
CORR-GENSCN-1 : ne jamais lire la matrice comme une banque de presets par scene.
CORR-GENSCN-2 : conserver 1 DOM + 0 a 2 couches actives en continu comme garde-fou de lisibilite.
CORR-GENSCN-3 : ouvrir une fiche dediee grave/gong/sub/didgeridoo avant toute architecture plus concrete.
CORR-GENSCN-4 : garder SCN-7 acid comme scene/passage possible, mais pas comme ligne autonome par defaut.
CORR-GENSCN-5 : garder SCN-6 voix exposee integree sous obligation d'integration sonore ou virtualo-acoustique.
CORR-GENSCN-6 : traiter transgression comme fonction, geste, peak, consequence ou etat decide, jamais comme perte de qualite toleree.
CORR-GENSCN-7 : Auto-Pro doit proteger et signaler, pas choisir scenes, retours, transgressions ou reverb expressive.
CORR-GENSCN-8 : classer plus tard les roles par criticite de latence sans accepter de compromis musical reel.
```

Ces corrections ne remettent pas en cause la matrice.

---

## 2. Compatibilite avec la specification GEN-ROLE

Verdict :

```text
compatible.
```

Points conformes :

- tous les roles principaux sont repris ;
- chaque role a fonction, scenes, controles, risques et garde-fous ;
- les roles restent abstraits ;
- aucun objet Max final n'est choisi ;
- aucun seuil n'est fixe ;
- aucun mapping physique n'est impose ;
- `GEN-PACKET` reste implicite comme futur format, pas remplace par une scene.

Point de vigilance `FRAG-GENSCN-1` :

```text
la matrice est assez concrete pour donner envie de coder directement.
```

Traitement :

```text
prochaine etape : continuer par noeuds fonctionnels fragiles, pas par patch.
```

---

## 3. Compatibilite avec les scenes non exclusives

Verdict :

```text
compatible.
```

Points conformes :

- les scenes sont lues comme centres de gravite ;
- chaque role peut etre DOM, LAYER, GESTE ou ETAT selon contexte ;
- les superpositions centrales sont conservees ;
- les superpositions a surveiller sont nommees ;
- les scenes composees sont repoussees a une decision ulterieure.

Point de vigilance `FRAG-GENSCN-2` :

```text
la matrice scene -> roles peut etre mal lue comme "roles autorises seulement
dans cette scene".
```

Traitement :

```text
inscrire dans l'index que cette matrice n'est pas prescriptive au sens exclusif.
Elle indique des compatibilites fortes et des risques, pas des interdictions
absolues sauf interdits deja explicites.
```

---

## 4. Compatibilite didgeridoo / setup minimum

Verdict :

```text
compatible mais fragile.
```

Points conformes :

- `SCN-1` reste scene de base ;
- `GEN-DID-GUIDED-LINE` conserve les modes systeme adapte, didgeridoo adapte et libre protege ;
- le didgeridoo n'est pas reduit a un controleur ;
- le conflit grave est bien signale ;
- le setup minimum didgeridoo + PC reste viable.

Fragilite `FRAG-GENSCN-3` :

```text
la relation didgeridoo / grave / basse-motif / sub / gong reste le noyau le
plus sensible du systeme.
```

Traitement :

```text
appliquer CORR-GENSCN-3.
```

---

## 5. Compatibilite grave / gong / sub

Verdict :

```text
compatible mais insuffisamment separe pour la suite.
```

Points conformes :

- la matrice distingue soutien discret, porteur ponctuel, bloom, libre et retrait ;
- elle prevoit conflit didgeridoo / gong / sub ;
- elle conserve l'idee de souffle grave, sub precis, basses riches et base microtonale ;
- elle relie le grave a l'espace, au halo et a Auto-Pro.

Fragilite `FRAG-GENSCN-4` :

```text
`GEN-SUB-GONG-BREATH` porte trop de responsabilites : sub physique, gong bloom,
souffle, base microtonale, soutien discret, domination, conflit harmonique,
conflit de mix et rapport au didgeridoo.
```

Correction :

```text
CORR-GENSCN-3 obligatoire.
```

Suite :

```text
creer `SPECIFICATION_GRAVE_GONG_SUB_DIDGERIDOO_CONFLITS_ET_MODES_MAX_STANDALONE_VESPERARE_v0_1.md`.
```

---

## 6. Compatibilite acid naturalise

Verdict :

```text
compatible.
```

Points conformes :

- acid est traite comme energie, torsion, elasticite, ligne vivante ;
- TB-303, squelch cliche et lead synth banal restent interdits par defaut ;
- la reconnaissance acid devient controle live ;
- la ligne peut etre scene/passage si decide ;
- source-bonding, cavite, reverb et traces acoustiques restent les voies de naturalisation.

Point de vigilance `FRAG-GENSCN-5` :

```text
la mention DOM pour SCN-7 ne doit pas devenir "acid toujours integree a toute scene".
```

Traitement :

```text
SCN-7 = scene ou passage explicite, pas obligation permanente.
```

---

## 7. Compatibilite voix

Verdict :

```text
compatible.
```

Points conformes :

- voix nue interdite par defaut ;
- integration sonore ou virtualo-acoustique requise ;
- auto-tune reconnaissable bloque par defaut ;
- la voix peut etre presence, signal, souffle, cri, matiere, fragment ;
- SCN-6 reste souvent couche ou scene ponctuelle.

Point de vigilance `FRAG-GENSCN-6` :

```text
la voix a besoin d'une future specification de modes d'integration si elle
devient centrale dans la surface de jeu.
```

Traitement :

```text
pas prioritaire avant le noeud grave/gong/sub/didgeridoo, sauf si la voix
devient priorite artistique immediate.
```

---

## 8. Compatibilite jazz / Keita

Verdict :

```text
compatible.
```

Points conformes :

- jazz/Keita n'est pas un style importe ;
- pas d'accords jazz, swing plaque, walking ou imitation ;
- le role sert a penser attention, relance, ponctuation, micro-decision,
precision timbrale et interaction ;
- la matrice l'associe surtout a gestes, couches et etats.

Point de vigilance `FRAG-GENSCN-7` :

```text
le role peut rester trop abstrait s'il n'est pas plus tard traduit en criteres
de decision generative.
```

Traitement :

```text
le garder comme methode de comportement jusqu'au bloc decisionnel plus concret.
```

---

## 9. Compatibilite reverb / halo / espace / texture

Verdict :

```text
compatible.
```

Points conformes :

- `PLAY-3` decide le monde spatial ;
- `PLAY-4` decide le halo ;
- `GEN-TEXTURE-BLOOM` produit une matiere ;
- `GEN-HAL-SOURCE` fournit une memoire mais ne decide pas HAL ;
- Auto-Pro surveille boue, source masquee, grave illisible et brillance agressive.

Point de vigilance `FRAG-GENSCN-8` :

```text
dans une future architecture, les signaux reverb/halo/texture peuvent etre
melanges trop vite si leurs responsabilites ne restent pas separees.
```

Traitement :

```text
ne pas fusionner reverb, halo, texture et bloom dans un seul macro-effet.
```

---

## 10. Compatibilite transgression

Verdict :

```text
compatible avec correction de vocabulaire.
```

Points conformes :

- transgression est fonction, peak, geste, consequence ou etat decide ;
- elle n'est pas une perte de qualite technique ;
- elle peut traverser les autres scenes ;
- elle doit garder duree, fonction et sortie.

Correction `CORR-GENSCN-6` :

```text
remplacer toute formulation ambigue laissant croire a une perte de qualite
toleree par "transgression choisie et controlee".
```

---

## 11. Compatibilite Auto-Pro

Verdict :

```text
compatible.
```

Points conformes :

- Auto-Pro protege headroom, feedback, sub, source, densite, reverb ;
- Auto-Pro signale P0/P1/P2 ;
- Auto-Pro ne choisit pas la scene, le retour, la transgression ou le halo expressif ;
- P2 reste prioritaire sauf P0/P1.

Point de vigilance `FRAG-GENSCN-9` :

```text
les controles `SAFE` pourraient etre mal lus comme choix esthetique automatique.
```

Traitement :

```text
`SAFE` = fonction protegee, pas mode artistique autonome.
```

---

## 12. Compatibilite latence / Max standalone

Verdict :

```text
compatible.
```

Points conformes :

- Max standalone reste reference ;
- la latence est traitee comme enjeu musical ;
- aucun compromis musical reel n'est accepte ;
- les roles generatifs ne promettent pas de traitement impossible ;
- la classification temps-reel / quasi temps-reel / hors chemin critique est gardee pour plus tard.

Point de vigilance `FRAG-GENSCN-10` :

```text
certains roles devront etre classes par criticite de latence avant architecture
operationnelle : didgeridoo direct, grave, protections P0/P1, pulse et retour
ne peuvent pas etre traites comme des couches lentes.
```

Traitement :

```text
appliquer CORR-GENSCN-8 dans la future architecture ou dans une matrice
fonction / criticite / chemin audio.
```

---

## 13. Questions restantes

### `Q-AUD-GENSCN-1 - Grave d'abord ?`

Question :

```text
la prochaine fiche doit-elle etre le noeud grave/gong/sub/didgeridoo ?
```

Reponse audit :

```text
oui.
C'est le noeud le plus recurrent : il touche setup minimum, gong, sub,
sound-system, reverb, halo, generation, mix, latence et conflits harmoniques.
```

### `Q-AUD-GENSCN-2 - Interface live d'abord ?`

Question :

```text
faut-il definir maintenant l'interface ou les macros physiques ?
```

Reponse audit :

```text
non.
La matrice dit quelles decisions doivent exister, mais pas encore comment elles
sont disposees physiquement.
```

### `Q-AUD-GENSCN-3 - Generation algorithmique d'abord ?`

Question :

```text
peut-on passer aux generateurs concrets ?
```

Reponse audit :

```text
pas encore.
Il faut d'abord separer les noeuds fonctionnels qui risquent de se contredire,
en particulier grave/gong/sub/didgeridoo.
```

---

## 14. Decision v0.1

Decision :

```text
la matrice GEN-ROLE / scenes / controles live / risques est validee comme
couche de liaison entre specification generative et architecture fonctionnelle.
```

Suite prioritaire :

```text
creer une specification dediee au noeud grave/gong/sub/didgeridoo :
porteur du grave, soutien, retrait, graves libres, adaptation harmonique,
gong bloom, souffle grave, base microtonale, sub precise, conflits, protections,
modes live et criticite de latence.
```
