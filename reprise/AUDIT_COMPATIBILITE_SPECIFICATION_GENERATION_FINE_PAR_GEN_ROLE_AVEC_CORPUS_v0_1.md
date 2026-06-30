# AUDIT COMPATIBILITE SPECIFICATION GENERATION FINE PAR GEN ROLE AVEC CORPUS v0.1

Projet : Vesperare
Statut : audit compatibilite specification generation fine par GEN-ROLE
Date : 2026-06-23

Sources actives principales :

- `SPECIFICATION_GENERATION_FINE_PAR_GEN_ROLE_MAX_STANDALONE_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_SPECIFICATION_TECHNIQUE_CONCEPTUELLE_REVERB_SPACE_HALO_FREEZE_RESONATEURS_CONVOLUTION_AVEC_CORPUS_v0_1.md`
- `MATRICE_ARCHITECTURE_MAX_STANDALONE_NIVEAU_6_ROLES_TECHNIQUES_CANDIDATS_CHEMINS_RISQUES_VESPERARE_v0_1.md`
- `BESOINS_GENERATION_v0_4.md`
- `BESOINS_STYLISTIQUES_v0_4.md`
- `CARACTERISATION_DETAILLEE_ELEMENTS_v0_4.md`
- `AUDIT_TRACABILITE_CAHIER_CHARGES_GENERATIF_STYLISTIQUE_v0_1.md`

But :

```text
verifier que la specification generation fine par GEN-ROLE reste compatible
avec le corpus actif, ne transforme pas les inspirations en styles importes,
ne choisit pas d'algorithmes ou objets Max finaux, conserve GEN-PACKET,
preserve didgeridoo + PC, et maintient les garde-fous acid, jazz/Keita, voix,
grave/gong/sub, halo-source, retour, latence et naturalisation.
```

Hors perimetre :

```text
algorithmes ;
objets Max definitifs ;
syntaxe Max ;
seuils ;
buffers ;
controleur ;
UI finale ;
patch final ;
tests pratiques ;
benchmark.
```

---

## 1. Verdict general

Verdict :

```text
compatible avec corrections de cadrage avant toute traduction algorithmique.
```

La fiche est compatible parce qu'elle :

- definit la generation comme fonction musicale situee ;
- impose `GEN-PACKET` ;
- garde `AUT-5` hors defaut ;
- ne choisit pas d'algorithme ou objet Max final ;
- traite les inspirations comme phenomenes, pas styles entiers ;
- distingue les roles principaux ;
- integre didgeridoo, gong, voix, grave, halo, espace et retour ;
- conserve la naturalisation contre electronique reconnaissable ;
- preserve `MIN-DID-PC`.

Corrections requises :

```text
CORR-GENF-1 : ajouter plus tard une matrice GEN-ROLE -> SCENE -> LIVE CONTROL.
CORR-GENF-2 : auditer separement grave/gong/sub si GEN-SUB-GONG-BREATH reste trop large.
CORR-GENF-3 : garder GEN-JAZZ-KEITA comme methode de subtilite, jamais comme style.
CORR-GENF-4 : garder GEN-ACID-NAT sous seuil de reconnaissance acid sauf exception explicite.
CORR-GENF-5 : garder GEN-VOICE-INTEGRATED lie a source-filter, espace ou fonction, jamais voix nue par defaut.
CORR-GENF-6 : tout role rythmique complexe doit conserver une couche directrice perceptible.
CORR-GENF-7 : GEN-RETURN doit toujours declarer preparation, condition et sortie.
CORR-GENF-8 : GEN-HAL-SOURCE ne doit jamais decider HAL.
```

Ces corrections ne remettent pas en cause la fiche.

---

## 2. Compatibilite non-finalite

Verdict :

```text
compatible.
```

Compatibilite :

- aucun objet Max final ;
- aucun seuil ;
- aucun algorithme ;
- aucun mapping ;
- aucune UI ;
- aucun patch final ;
- les roles restent fonctionnels.

Fragilite `FRAG-GENF-1` :

```text
les roles sont assez precis pour inspirer un patch, donc ils devront etre
proteges contre une traduction trop directe.
```

Traitement :

```text
future couche technique : role -> hypothese -> fallback -> audit, jamais role -> objet final.
```

---

## 3. Compatibilite GEN-PACKET / autonomie

Verdict :

```text
compatible.
```

Compatibilite :

- `GEN-PACKET` obligatoire ;
- `REQUEST` ne demarre pas seul ;
- `VARY` reste dans le meme role ;
- `AUT-5` jamais par defaut ;
- motif reconnaissable possible si fonction et sortie.

Point de vigilance :

```text
les roles `GEN-PULSE`, `GEN-INTERLOCKING` et `GEN-ACID-NAT` peuvent devenir
autonomes si le controle live et la scene ne sont pas explicites.
```

Traitement :

```text
appliquer CORR-GENF-1.
```

---

## 4. Compatibilite rythmique

Roles :

```text
GEN-PULSE ;
GEN-COUNTERTIME ;
GEN-POLYRHYTHM ;
GEN-INTERLOCKING.
```

Verdict :

```text
compatible.
```

Compatibilite :

- pression rythmique reste centrale ;
- techno explicite non obligatoire ;
- suspension longue possible ;
- interlocking et polyrythmie restent lisibles par roles ;
- Keita Ogawa reste point de depart phenomenologique ;
- complexite doit orienter, pas demontrer.

Fragilite `FRAG-GENF-2` :

```text
GEN-POLYRHYTHM et GEN-INTERLOCKING peuvent encore se chevaucher.
```

Traitement :

```text
POLYRHYTHM = plusieurs cycles.
INTERLOCKING = complement d'attaques et plans.
une future matrice scene pourra les combiner mais pas les confondre.
```

---

## 5. Compatibilite acid naturalisee

Verdict :

```text
compatible.
```

Compatibilite :

- acid est traite comme torsion, timbre, resonance, formant et ligne vivante ;
- TB-303, squelch et pattern acid cliche sont interdits par defaut ;
- source-bonding et cavite sont requis ;
- la ligne peut etre reconnaissable si elle a fonction, contexte et sortie.

Correction `CORR-GENF-4` :

```text
le degre de reconnaissance acid doit rester controlable.
```

---

## 6. Compatibilite jazz / Keita

Verdict :

```text
compatible.
```

Compatibilite :

- jazz n'est pas accords plaques ;
- Keita n'est pas imitation ;
- le role garde subtilite, plans, contrepoints, ponctuation, frottement et resolution retardee ;
- pas swing, walking bass ou theorie jazz complete par defaut.

Correction `CORR-GENF-3` :

```text
GEN-JAZZ-KEITA doit rester methode de jeu et tension, pas genre.
```

---

## 7. Compatibilite voix

Verdict :

```text
compatible.
```

Compatibilite :

- voix nue interdite par defaut ;
- voix exposee possible si integree ;
- voix brute, criee, soufflee, fragmentaire et presque chantable sont couvertes ;
- auto-tune reconnaissable interdit ;
- source-filter, souffle, cavite, espace commun et halo sont cadrages valides.

Point de vigilance :

```text
la place de la voix dans le setup minimum reste optionnelle.
```

Traitement :

```text
voix absente ne bloque jamais MIN-DID-PC.
```

---

## 8. Compatibilite grave / gong / sub / didgeridoo

Roles :

```text
GEN-BASS-MOTIF ;
GEN-SUB-GONG-BREATH ;
GEN-DID-GUIDED-LINE ;
GEN-LINE-MODAL-MICRO.
```

Verdict :

```text
compatible avec vigilance.
```

Compatibilite :

- plusieurs modes GRV restent disponibles ;
- didgeridoo peut guider, rester libre, etre protege ou etre integre ;
- gong grave est base de partiels, souffle, bloom, tension, peak ou retour ;
- vrai sub reste prioritaire sauf choix explicite ;
- microtonalite reste fonctionnelle, pas theorie.

Fragilite `FRAG-GENF-3` :

```text
GEN-SUB-GONG-BREATH est volontairement large et touche aussi SPC-GRAVE.
```

Traitement :

```text
si l'etape suivante montre encore des conflits, creer une fiche dediee
grave/gong/sub/didgeridoo.
```

---

## 9. Compatibilite halo-source / espace

Verdict :

```text
compatible.
```

Compatibilite :

- GEN-HAL-SOURCE fournit une matiere ;
- HAL decide lock/force/cut/exit ;
- SPC heberge le monde spatial ;
- freeze et halo ne deviennent pas pads generiques ;
- le lien avec la specification reverb est coherent.

Correction `CORR-GENF-8` :

```text
GEN-HAL-SOURCE ne doit jamais decider HAL.
```

---

## 10. Compatibilite retour / silence

Roles :

```text
GEN-RETURN ;
GEN-SILENCE.
```

Verdict :

```text
compatible.
```

Compatibilite :

- retour peut etre prepare, retarde, fragmente ou refuse ;
- silence est decision musicale, pas absence de donnees ;
- techno suspendue tres longue reste possible ;
- drop automatique et retour arbitraire sont interdits.

Correction `CORR-GENF-7` :

```text
GEN-RETURN doit toujours declarer preparation, condition et sortie.
```

---

## 11. Compatibilite superpositions

Verdict :

```text
compatible.
```

Compatibilite :

- les roles peuvent se superposer ;
- la fiche demande une fonction dominante ;
- monopoles perceptifs restent surveilles ;
- la superposition ne devient pas preset.

Point de vigilance :

```text
les superpositions devront etre reliees a des scenes/modes pour rester jouables.
```

Traitement :

```text
appliquer CORR-GENF-1.
```

---

## 12. Questions restantes

Questions a garder :

1. Faut-il creer directement la matrice `GEN-ROLE -> SCENE -> LIVE CONTROL` ?
2. Faut-il traiter grave/gong/sub/didgeridoo avant les scenes ?
3. Les roles jazz/Keita/interlocking demandent-ils une recherche supplementaire avant traduction technique ?
4. Quelle granularite garder pour acid naturalisee : un role ou plusieurs sous-roles ?
5. La voix doit-elle etre separee en voix-source, voix-generee, voix-halo et voix-signal ?
6. Quels roles doivent rester prototypables sans `gen~`, `js`, MC ou `poly~` ?
7. Quels roles peuvent accepter `LATER` objets lourds, et avec quel fallback ?

Questions hors perimetre :

```text
algorithmes ;
seuils ;
objets Max definitifs ;
syntaxe Max ;
controleur ;
UI finale ;
patch final ;
tests pratiques.
```

---

## 13. Verdict final

Verdict final :

```text
la specification generation fine par GEN-ROLE est compatible avec le corpus actif.
```

Elle peut etre utilisee comme :

```text
cadrage fonctionnel de la generation avant scenes, controles et traduction technique.
```

Elle ne doit pas etre utilisee comme :

```text
algorithme ;
patch ;
liste d'objets finaux ;
preset ;
composition automatique ;
autorisation de compromis artistique.
```

Prochaine action recommandee :

```text
MATRICE_GEN_ROLE_SCENES_CONTROLES_LIVE_RISQUES_VESPERARE_v0_1
```

Raison :

```text
la generation fine est maintenant assez cadre par role. le prochain risque est
la jouabilite : quels roles peuvent etre superposes, prepares par scene,
forces/coupes en live, et signales sans devenir presets fermes.
```
