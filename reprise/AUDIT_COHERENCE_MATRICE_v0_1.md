# AUDIT DE COHERENCE - MATRICE DETAILLEE v0.1

Projet : Vesperare
Statut : audit avant extraction vers fiches BS/BG v0.2
Date : 2026-06-20

Document audite :
- MATRICE_DETAILLEE_INSPIRATIONS_BESOINS_v0_1.md

But :

Verifier que la matrice est assez concrete, qu'elle ne glisse pas vers une architecture technique prematuree, qu'elle garde chaque inspiration dans son contexte, et qu'elle peut servir a produire des besoins stylistiques et generatifs sans perdre l'intention.

## 1. Verdict general

La matrice est suffisamment riche pour servir de base a l'extraction des fiches v0.2, mais elle doit etre lue avec quatre contraintes.

Contraintes :

1. Les codes `PA`, `PR`, `M`, `DID`, `T`, `TS` doivent rester des descripteurs musicaux, pas des modules d'interface ni des devices.
2. Les phrases du type "le systeme doit pouvoir..." doivent etre retraduites en besoins musicaux avant les fiches finales.
3. Les exemples sonores doivent rester des cas de verification, pas des recettes de composition.
4. La plausibilite acoustique doit etre precisee par des signes auditifs, pas seulement par l'idee vague de "son naturel".

## 2. Points solides

### 2.1. Couverture des inspirations

La couverture est bonne.

Inspirations principales couvertes :

- techno ;
- pseudo-acoustique / realisme augmente ;
- Keita / polytexture ;
- dubstep ;
- dub / sound system ;
- jazz ;
- trance ;
- acid ;
- nature / acoustique / instruments ;
- voix ;
- microtonalite / partiels ;
- didgeridoo ;
- gongs / metaux ;
- tambours / peaux.

Dimensions transversales couvertes :

- contour sculpte ;
- intensite sans agression ;
- espace / halo / pression spectrale ;
- minimalisme de concentration ;
- beaute fonctionnelle / autonome ;
- mystere nocturne ;
- scene auditive ;
- objets / textures ;
- monopoles perceptifs ;
- glissements.

Conclusion :

Rien d'evident ne manque dans les grandes familles d'inspiration.

### 2.2. Contexte preserve

Les inspirations ne sont pas traitees comme etiquettes de style.

La matrice garde les distinctions importantes :

- techno = fonctions corporelles et temporelles, pas timbres standards ;
- Keita = polytexture et tissage, pas imitation ;
- dubstep = attente, sub, syncope, resolution, pas style entier ;
- jazz = champs de tension et finesse, pas grille jazz ;
- trance = suspension/expansion/peak naturalises, pas supersaw ;
- acid = ligne vivante et torsion, pas TB-303 ;
- voix = instrument/matiere/signal, pas chanson par defaut ;
- didgeridoo = presence libre, pas basse automatique.

### 2.3. Risques bien identifies

Les principaux risques sont presents :

- collage stylistique ;
- sons electroniques reconnaissables ;
- naturalisation decorative ;
- accumulation de couches ;
- perte du corps ;
- halo qui efface les attaques ;
- sub qui masque ;
- didgeridoo reduit a input ou basse ;
- melodie generique ;
- transgression comme agression.

## 3. Points a corriger avant extraction

### C-01. Trop de formulations "systeme doit"

Probleme :

La matrice parle souvent de ce que "le systeme doit pouvoir" faire. C'est utile maintenant, mais dans les fiches v0.2 il faudra eviter de transformer directement ces phrases en architecture.

Correction :

Dans les fiches finales, reformuler :

```text
Le systeme doit pouvoir generer X
```

en :

```text
Besoin musical :
Vesperare doit permettre d'obtenir X dans telle situation, avec tels garde-fous.
```

Exemple :

```text
Trop technique :
Le systeme doit pouvoir generer des cadres techno perceptibles.

Mieux :
Besoin :
Pouvoir faire exister un cadre techno perceptible sans recourir a des sons techno reconnaissables.
```

### C-02. Risque de transformer les codes en modules

Probleme :

Les codes `PA`, `PR`, `M`, `DID`, `T`, `TS` sont pratiques, mais ils pourraient devenir une fausse architecture ou une liste de controles.

Correction :

Dans les fiches v0.2 :

- les garder comme vocabulaire d'analyse ;
- ne pas les presenter comme pistes, devices, boutons ou pages d'interface ;
- ne pas supposer qu'ils sont tous visibles en live ;
- ne pas confondre classification et composition.

Formule a garder :

```text
Ces codes servent a verifier les besoins. Ils ne definissent pas encore une interface.
```

### C-03. Plausibilite acoustique encore trop abstraite

Probleme :

La notion de plausibilite acoustique est centrale mais peut rester vague.

Il faut l'ancrer dans des signes auditifs.

Signes auditifs a exiger :

- cause possible : frappe, souffle, friction, pression, cavite, corde, membrane, metal, voix, eau, air ;
- morphologie credible : attaque, corps, queue, silence, chevauchement ;
- evolution spectrale organique : partiels, formants, battements, rugosite, instabilite ;
- espace plausible : distance, cavite, surface, profondeur, reflexion ;
- energie corporelle lisible : geste, effort, resistance, relachement ;
- absence de signature de preset, synth, effet numerique ou style electronique reconnaissable.

Formule :

```text
Un son peut etre impossible, mais il doit laisser imaginer une cause physique.
```

### C-04. "Sub" peut devenir trop electronique

Probleme :

La matrice utilise souvent "sub" comme fonction de grave. Mais le mot peut tirer vers un son electronique reconnaissable.

Correction :

Dans les fiches, distinguer :

- fonction sub : masse corporelle basse, centre de gravite, pression ;
- support sub : souffle grave, didgeridoo, gong, resonance, basse naturalisee, sine/sub tres discret si non identifiable ;
- risque sub : son electronique pur trop reconnaissable, boue, masque du didgeridoo.

Formule :

```text
Le sub est d'abord une fonction corporelle de grave, pas un timbre impose.
```

### C-05. Exemples utiles mais encore parfois trop "recettes"

Probleme :

Certains exemples pourraient etre lus comme des recettes a reproduire.

Correction :

Les exemples doivent etre marques comme :

- cas de verification ;
- exemples imaginaires ;
- supports d'analyse ;
- non-prescriptions.

Dans les fiches finales, il faudra transformer les exemples en :

```text
Exemple possible
Contre-exemple
Signe de reussite
Signe d'echec
```

### C-06. Intensite et transgression doivent rester differenciees

Probleme :

La matrice autorise beaucoup de transgressions. Il faut eviter que "tout est permis" devienne une intensite permanente.

Correction :

Dans les fiches :

- intensite forte = etat musical possible ;
- transgression = regime contextuel ;
- pic = evenement prepare ;
- agression = echec sauf cas explicitement voulu et musicalement justifie.

Question de controle :

```text
La transgression change-t-elle quelque chose dans la forme, ou ajoute-t-elle seulement de la violence ?
```

### C-07. Didgeridoo : liberte + accommodation doivent rester ensemble

Probleme :

"Didgeridoo libre" peut etre mal compris comme "le systeme l'ignore".

Correction :

Toujours formuler :

```text
Le didgeridoo est libre, mais le contexte peut etre adapte pour qu'il reste perceptible, non masque et non force.
```

Libertes a proteger :

- ne pas piloter le systeme ;
- ne pas jouer la basse ;
- ne pas rester en drone ;
- ne pas etre traite ;
- pouvoir devenir central ponctuellement.

Accommodations possibles :

- reduction grave ;
- retrait de halo ;
- densite moindre ;
- analyse de partiels ;
- guide harmonique ;
- alternance avec la basse.

### C-08. Melody / hook : zone encore fragile

Probleme :

La melodie est autorisee, mais le risque de motif generique reste fort.

Correction :

Pour tout motif melodique, exiger au moins un ancrage :

- source acoustique ;
- partiels ;
- voix ;
- didgeridoo ;
- basse comme masse ;
- accent rythmique ;
- resonance ;
- microtonalite ;
- fonction de scene.

Contre-exemple :

```text
Un hook "joli" mais sans source, sans fonction, sans relation au corps ou a la matiere.
```

### C-09. Sound system / espace : risque de confort decoratif

Probleme :

Le confort et la profondeur peuvent devenir une esthetique douce, lisse ou dub.

Correction :

L'espace doit toujours porter une fonction :

- pression ;
- vide ;
- attente ;
- scene ;
- separation ;
- retour ;
- vertige ;
- confort dans l'intensite.

Si l'espace ne modifie ni la perception, ni la forme, ni le corps, il est decoratif.

## 4. Manques mineurs a ajouter ou surveiller

### M-01. Verification situee

La matrice decrit les besoins, mais il faudra plus tard des verifications situees.

Format a conserver :

```text
Relation a verifier :
Situation :
Signe de reussite :
Signe d'echec :
Signe de caricature :
Ce que cette verification peut corriger :
Ce qu'elle ne permet pas de conclure :
```

Ne pas transformer ces verifications en tests techniques lourds.

### M-02. Hypotheses non decisions

Certaines formulations restent des hypotheses.

Exemples :

- type exact de halo ;
- seuils de densite ;
- degre de hasard ;
- rapport manuel/autonome ;
- mappings de performance ;
- forme des scenes.

Elles ne doivent pas passer en decisions dans les fiches v0.2.

### M-03. Sources exactes non decidees

Les sources sonores exactes ne sont pas encore decidees.

La matrice doit rester au niveau :

```text
famille de support + fonction + garde-fou
```

et non :

```text
sample ou synthese exacts
```

## 5. Corrections a appliquer dans la matrice

Corrections directes recommandees :

1. Corriger l'audit de couverture pour inclure proprement les nouvelles sections.
2. Ajouter une note indiquant que la banque d'exemples est non-prescriptive.
3. Ajouter au debut de la matrice la contrainte "descripteurs, pas modules".
4. Ajouter dans l'audit final la mention "audit de coherence effectue".
5. Remplacer dans les prochaines fiches "parametres a exposer ou calculer" par "descripteurs a caracteriser".

## 6. Decision avant fiches v0.2

La matrice est utilisable pour l'extraction v0.2 si les corrections ci-dessus sont appliquees.

Ordre recommande :

1. Appliquer les petites corrections dans la matrice.
2. Produire `BESOINS_STYLISTIQUES_v0_2.md`.
3. Produire `BESOINS_GENERATION_v0_2.md`.
4. Garder les besoins de performance live separes pour plus tard.

