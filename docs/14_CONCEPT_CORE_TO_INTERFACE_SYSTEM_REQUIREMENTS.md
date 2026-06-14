# 14_CONCEPT_CORE_TO_INTERFACE_SYSTEM_REQUIREMENTS

Version : v0.1  
Statut : exigences système / interface issues des concepts centraux. Sans prototype, sans module Max for Live, sans asset concret.

## Objet

Ce document transforme les concepts opératoires de la techno organique en exigences concrètes pour :

```text
le système de génération / traitement ;
l’interface de pilotage live ;
les protections ;
les tests ;
les décisions de sources, samples et assets.
```

Il ne cherche pas à redéfinir le style.

Il répond à :

```text
qu’est-ce que chaque concept central impose au système ?
qu’est-ce qu’il impose à l’interface ?
qu’est-ce qu’il doit protéger ?
comment savoir s’il fonctionne ?
quelles décisions de source / sample / asset il contraint ?
```

---

# 1. Règle de traduction

Un concept ne devient utile pour la conception que s’il peut être traduit en au moins une exigence vérifiable.

Types d’exigences :

```text
SYSTEM_REQUIREMENT: capacité que le système doit avoir.
INTERFACE_REQUIREMENT: contrôle ou état que le musicien doit pouvoir piloter.
PROTECTION_REQUIREMENT: dérive que le système doit empêcher.
TEST_REQUIREMENT: situation permettant de vérifier la fonction.
SOURCE_ASSET_REQUIREMENT: contrainte sur sources, samples, assets ou engines.
```

---

# 2. Corps / retour au corps

Statut : noyau central prioritaire.

## 2.1 SYSTEM_REQUIREMENTS

```text
SR_BODY_01: le système doit maintenir une référence corporelle claire, même dans les scènes de suspension.
SR_BODY_02: le sub principal doit rester stable et lisible.
SR_BODY_03: l’impact ou le retour physique doit pouvoir redevenir prioritaire après une phase de halo, tension ou abstraction.
SR_BODY_04: les couches harmoniques, spectrales ou texturales doivent pouvoir se retirer si elles affaiblissent le corps.
SR_BODY_05: les sources live fixes doivent pouvoir soutenir ou réactiver la sensation corporelle.
```

## 2.2 INTERFACE_REQUIREMENTS

```text
IR_BODY_01: macro Retour au corps.
IR_BODY_02: contrôle ou état Body Focus.
IR_BODY_03: accès rapide au retrait des couches qui masquent le corps.
IR_BODY_04: indicateur de conflit sub / live / champ.
IR_BODY_05: contrôle de priorité entre sub, impact, didgeridoo, guimbardes et matières préparées.
```

## 2.3 PROTECTION_REQUIREMENTS

```text
PR_BODY_01: empêcher la perte durable du sub.
PR_BODY_02: empêcher le masquage du didgeridoo ou des guimbardes par les champs ou textures.
PR_BODY_03: empêcher que la suspension rende impossible le retour physique.
PR_BODY_04: limiter les couches qui élargissent mais désancrent.
```

## 2.4 TEST_REQUIREMENTS

```text
TR_BODY_01: comparer scène sans couche suspendue / avec couche suspendue / après retrait.
TR_BODY_02: vérifier si le retour paraît renforcé, inchangé ou affaibli.
TR_BODY_03: vérifier que le musicien peut déclencher le retour sans chercher dans une interface complexe.
```

## 2.5 SOURCE_ASSET_REQUIREMENTS

```text
SAR_BODY_01: sub engine nécessaire, pas simple sample.
SAR_BODY_02: didgeridoo et guimbardes doivent être traités comme sources centrales, pas décor.
SAR_BODY_03: gong ou tambour peuvent renforcer le retour au corps si présents ; compensation obligatoire si leur fonction est nécessaire et qu’ils sont absents.
SAR_BODY_04: sample corporel autorisé seulement si live/engine ne couvre pas la fonction.
```

---

# 3. Pression / tension longue

Statut : noyau central, encore à préciser finement.

## 3.1 SYSTEM_REQUIREMENTS

```text
SR_PRESSURE_01: le système doit distinguer pression physique, pression spectrale, pression de densité et pression rythmique.
SR_PRESSURE_02: chaque pression doit pouvoir augmenter sans devenir simple volume.
SR_PRESSURE_03: la tension longue doit pouvoir croître, rester suspendue, puis se retirer ou se résoudre.
SR_PRESSURE_04: le système doit surveiller fatigue, boue bas-médium et perte de contour.
SR_PRESSURE_05: les scènes doivent pouvoir maintenir une tension sans remplir tout l’espace.
```

## 3.2 INTERFACE_REQUIREMENTS

```text
IR_PRESSURE_01: macro Pression.
IR_PRESSURE_02: sous-contrôles ou états : physique / spectrale / densité / rythmique.
IR_PRESSURE_03: contrôle Tension longue.
IR_PRESSURE_04: contrôle Seuil de saturation.
IR_PRESSURE_05: indication de danger : fatigue, boue, perte de lisibilité.
```

## 3.3 PROTECTION_REQUIREMENTS

```text
PR_PRESSURE_01: empêcher pression = volume.
PR_PRESSURE_02: empêcher la saturation de masquer les sources live.
PR_PRESSURE_03: empêcher que la tension longue devienne statique.
PR_PRESSURE_04: empêcher que l’accumulation retire toute possibilité de sortie.
```

## 3.4 TEST_REQUIREMENTS

```text
TR_PRESSURE_01: tester montée de pression sans augmentation massive de volume.
TR_PRESSURE_02: tester tension longue avec retrait.
TR_PRESSURE_03: tester lisibilité du live pendant pression forte.
TR_PRESSURE_04: tester retour au corps après tension prolongée.
```

## 3.5 SOURCE_ASSET_REQUIREMENTS

```text
SAR_PRESSURE_01: priorité aux engines contrôlables, résonateurs, traitements live et hybridations.
SAR_PRESSURE_02: samples de pression uniquement comme matières ciblées, jamais banque longue décorative.
SAR_PRESSURE_03: field recordings seulement si fonction exposée ou texture indispensable.
```

---

# 4. Impact / contour

Statut : noyau central.

## 4.1 SYSTEM_REQUIREMENTS

```text
SR_IMPACT_01: le système doit produire ou préserver des attaques lisibles.
SR_IMPACT_02: chaque impact doit avoir un contour contrôlable : attaque, corps, queue, retrait.
SR_IMPACT_03: impact métallique, impact peau, impact sub et impact objet doivent rester différenciables.
SR_IMPACT_04: les queues longues ne doivent pas masquer le prochain retour au corps.
```

## 4.2 INTERFACE_REQUIREMENTS

```text
IR_IMPACT_01: macro Impact.
IR_IMPACT_02: contrôle Netteté.
IR_IMPACT_03: choix fonctionnel : sec / masse / peau / métal / sub.
IR_IMPACT_04: contrôle Queue / Retrait.
IR_IMPACT_05: indication de masquage post-impact.
```

## 4.3 PROTECTION_REQUIREMENTS

```text
PR_IMPACT_01: empêcher l’impact décoratif.
PR_IMPACT_02: empêcher l’impact folklorisant si peaux ou cadres sont utilisés.
PR_IMPACT_03: empêcher les queues de brouiller le sub ou le didgeridoo.
```

## 4.4 TEST_REQUIREMENTS

```text
TR_IMPACT_01: comparer impact avec et sans queue.
TR_IMPACT_02: vérifier si l’impact ancre ou seulement ponctue.
TR_IMPACT_03: vérifier si l’impact prépare une résolution ou encombre.
```

## 4.5 SOURCE_ASSET_REQUIREMENTS

```text
SAR_IMPACT_01: gong / tambour optionnels doivent être compensés si leur fonction est requise.
SAR_IMPACT_02: samples d’impact autorisés seulement en nombre minimal et par fonction.
SAR_IMPACT_03: source_need obligatoire pour tout pool d’impacts.
```

---

# 5. Naturalisation

Statut : concept opératoire transversal.

## 5.1 SYSTEM_REQUIREMENTS

```text
SR_NAT_01: le système doit préserver les fonctions techno quand le support sonore change.
SR_NAT_02: les matières naturelles, acoustiques ou instrumentales doivent être organisées par rôle, pas par charme sonore.
SR_NAT_03: la naturalisation doit pouvoir passer par live, traitement, engine, sample minimal ou hybridation.
SR_NAT_04: les sources doivent pouvoir être abstraites si leur reconnaissance détourne la fonction.
```

## 5.2 INTERFACE_REQUIREMENTS

```text
IR_NAT_01: l’interface doit proposer des contrôles de fonctions, pas seulement des familles de sons.
IR_NAT_02: les macros doivent être orientées rôle : corps, pression, impact, halo, tension, retrait, signal.
IR_NAT_03: le musicien doit pouvoir arbitrer live / engine / matière préparée.
IR_NAT_04: l’interface doit empêcher l’usage “bibliothèque de sons naturels”.
```

## 5.3 PROTECTION_REQUIREMENTS

```text
PR_NAT_01: empêcher le décor naturaliste.
PR_NAT_02: empêcher les sources trop reconnaissables de détourner la techno organique.
PR_NAT_03: empêcher le remplacement du live par des matières préparées plus séduisantes mais moins nécessaires.
```

## 5.4 TEST_REQUIREMENTS

```text
TR_NAT_01: vérifier si une matière transformée conserve sa fonction.
TR_NAT_02: vérifier si une source reconnaissable aide ou détourne.
TR_NAT_03: comparer support synthétique, live, sample minimal et hybride pour une même fonction.
```

## 5.5 SOURCE_ASSET_REQUIREMENTS

```text
SAR_NAT_01: toute source candidate doit être liée à une fonction.
SAR_NAT_02: un sample naturel n’est pas justifié par son intérêt sonore seul.
SAR_NAT_03: la reconnaissance d’une source doit être documentée comme utile, neutre ou risquée.
```

---

# 6. Polytexture

Statut : concept opératoire fort, à préciser.

## 6.1 SYSTEM_REQUIREMENTS

```text
SR_POLY_01: le système doit pouvoir produire une densité articulée, pas seulement accumuler des couches.
SR_POLY_02: il doit gérer micro-événements, interlocking, hiérarchie et variations faibles.
SR_POLY_03: les guimbardes doivent pouvoir agir comme source de micro-pulse et formants.
SR_POLY_04: la polytexture doit rester lisible et corporelle.
```

## 6.2 INTERFACE_REQUIREMENTS

```text
IR_POLY_01: contrôle Densité polytexturale.
IR_POLY_02: contrôle Articulation.
IR_POLY_03: contrôle Lisibilité.
IR_POLY_04: ouverture / fermeture de couches sans perte du corps.
IR_POLY_05: distinction future entre polytexture rythmique, timbrale et harmonique.
```

## 6.3 PROTECTION_REQUIREMENTS

```text
PR_POLY_01: empêcher banque de one-shots.
PR_POLY_02: empêcher densité = confusion.
PR_POLY_03: empêcher micro-variations qui détruisent le groove ou l’hypnose.
PR_POLY_04: empêcher masquage des guimbardes live.
```

## 6.4 TEST_REQUIREMENTS

```text
TR_POLY_01: tester lisibilité à plusieurs densités.
TR_POLY_02: tester rôle des guimbardes dans micro-pulse.
TR_POLY_03: tester densité avec retour au corps.
```

## 6.5 SOURCE_ASSET_REQUIREMENTS

```text
SAR_POLY_01: micro-samples ou impacts secondaires seulement avec pools restreints.
SAR_POLY_02: source_need requis pour tout pool de micro-impacts.
SAR_POLY_03: guimbardes live prioritaire sur matériaux préparés similaires.
```

---

# 7. Partiels / microtonalité / battements

Statut : concept opératoire central dans plusieurs scènes.

## 7.1 SYSTEM_REQUIREMENTS

```text
SR_PARTIALS_01: le système doit manipuler pitch centers, partiels, formants et battements sans forcer une tonalité fixe.
SR_PARTIALS_02: les pics didgeridoo 48/96 Hz et 40/80 Hz doivent être utilisables comme repères relationnels, pas comme notes absolues.
SR_PARTIALS_03: les battements doivent pouvoir être lents, moyens, variables ou absents.
SR_PARTIALS_04: les conflits avec sub et live doivent être détectables ou testables.
```

## 7.2 INTERFACE_REQUIREMENTS

```text
IR_PARTIALS_01: contrôle Friction.
IR_PARTIALS_02: contrôle Stabilité / instabilité.
IR_PARTIALS_03: contrôle Densité harmonique.
IR_PARTIALS_04: contrôle Retrait des champs.
IR_PARTIALS_05: alerte conflit sub / didgeridoo / guimbardes.
```

## 7.3 PROTECTION_REQUIREMENTS

```text
PR_PARTIALS_01: empêcher que les battements deviennent décoratifs.
PR_PARTIALS_02: empêcher la boue harmonique.
PR_PARTIALS_03: empêcher l’effacement des formants live.
PR_PARTIALS_04: empêcher le champ harmonique permanent.
```

## 7.4 TEST_REQUIREMENTS

```text
TR_PARTIALS_01: tester alignement, friction légère, friction forte, retrait.
TR_PARTIALS_02: tester impact sur sub et didgeridoo.
TR_PARTIALS_03: tester contribution à tension longue et retour au corps.
```

## 7.5 SOURCE_ASSET_REQUIREMENTS

```text
SAR_PARTIALS_01: harmonic drone doit rester conditionnel tant que la fonction n’est pas confirmée.
SAR_PARTIALS_02: métaux accordés et cloches doivent rester signaux/partiels, pas décor carillon.
SAR_PARTIALS_03: cordes frottées seulement si friction réelle indispensable.
```

---

# 8. Anti-ambientisation

Statut : protection centrale.

## 8.1 SYSTEM_REQUIREMENTS

```text
SR_ANTIAMB_01: le système doit pouvoir limiter les halos et champs trop continus.
SR_ANTIAMB_02: toute couche longue doit avoir une fonction, un seuil, un retrait ou une trajectoire.
SR_ANTIAMB_03: l’accumulation doit pouvoir être interrompue avant de devenir fond décoratif.
```

## 8.2 INTERFACE_REQUIREMENTS

```text
IR_ANTIAMB_01: macro Anti-ambient.
IR_ANTIAMB_02: contrôle Retrait / Collapse.
IR_ANTIAMB_03: indication de durée/densité excessive.
IR_ANTIAMB_04: interdiction d’accumulation automatique décorative.
```

## 8.3 PROTECTION_REQUIREMENTS

```text
PR_ANTIAMB_01: refuser les couches qui épaississent sans tension.
PR_ANTIAMB_02: forcer une sortie si le corps disparaît.
PR_ANTIAMB_03: limiter l’exposition de field recordings et drones sans scène précise.
```

## 8.4 TEST_REQUIREMENTS

```text
TR_ANTIAMB_01: tester durée avant dérive ambient.
TR_ANTIAMB_02: tester retrait et retour au corps.
TR_ANTIAMB_03: tester si le musicien peut sortir de l’état sans rupture involontaire.
```

---

# 9. Protection du live

Statut : protection centrale.

## 9.1 SYSTEM_REQUIREMENTS

```text
SR_LIVE_01: didgeridoo et guimbardes doivent rester des sources centrales, pas des ornements.
SR_LIVE_02: le système doit prolonger, transformer ou soutenir le live sans le remplacer.
SR_LIVE_03: les traitements doivent respecter les rôles live déclarés.
SR_LIVE_04: les sources préparées ne doivent pas concurrencer inutilement les sources live.
```

## 9.2 INTERFACE_REQUIREMENTS

```text
IR_LIVE_01: priorité live visible ou sensible.
IR_LIVE_02: contrôle de relation live / engine / matière préparée.
IR_LIVE_03: bypass ou retrait rapide des couches concurrentes.
IR_LIVE_04: protection contre auto-sélection de matières qui remplacent le live.
```

## 9.3 PROTECTION_REQUIREMENTS

```text
PR_LIVE_01: si une couche masque durablement didgeridoo ou guimbardes, elle doit être retirée ou réduite.
PR_LIVE_02: les rôles live fixes doivent être M0_FIXED_SOURCE ou équivalent.
PR_LIVE_03: un material_asset ne doit pas remplacer une source live centrale sans décision explicite.
```

## 9.4 TEST_REQUIREMENTS

```text
TR_LIVE_01: tester scène avec live seul.
TR_LIVE_02: tester ajout d’engine ou matière préparée.
TR_LIVE_03: vérifier si le live gagne, reste stable ou disparaît.
TR_LIVE_04: rejeter les configurations où le live devient décor.
```

---

# 10. Priorité de conception actuelle

La priorité n’est pas d’ouvrir de nouvelles sources.

La priorité est :

```text
1. traduire corps / retour au corps en premiers contrôles et protections ;
2. distinguer les types de pression ;
3. préciser hypnose / répétition active comme contrôles de stabilité et variation ;
4. préciser la polytexture en rythmique / timbrale / harmonique ;
5. relier partiels / battements aux sources live fixes ;
6. intégrer anti-ambientisation et protection du live comme protections globales.
```

---

# 11. Décision sur la suite

```text
new_source_branch: no
new_sample_branch: no
new_engine_profile: no
individual_material_assets: not yet
interface_system_requirements: started
```

Prochaine étape recommandée :

```text
créer une première matrice de contrôles live abstraits,
à partir des concepts ci-dessus,
sans interface graphique,
sans Max for Live,
sans assigner encore de mapping matériel.
```

Nom possible :

```text
15_LIVE_CONTROL_REQUIREMENTS_MATRIX.md
```
