# Audit compatibilite audit matrice commandes / packets / etats / signaux performance avec noyau revalide, matrice fonctions revalidee et coherence post re-audits

Projet : Vesperare  
Version : v0.1  
Statut : audit de reprise DETTE-ACT-75  
Runtime actif : Max/MSP standalone  
Date : 2026-06-25

## 1. Role du document

Ce document absorbe DETTE-ACT-75.

Il verifie :

- `AUDIT_COMPATIBILITE_MATRICE_COMMANDES_PACKETS_ETATS_SIGNAUX_PERFORMANCE_AVEC_REAUDITS_CANDIDATS_LOURDS_ET_NOYAU_REAUDITE_VESPERARE_v0_1.md`
- `MATRICE_COMMANDES_PACKETS_ETATS_SIGNAUX_PERFORMANCE_MAX_STANDALONE_VESPERARE_v0_1.md`

contre :

- `AUDIT_COMPATIBILITE_AUDIT_SPECIFICATION_NOYAU_PERFORMANCE_AVEC_MATRICE_FONCTIONS_REVALIDEE_COHERENCE_REVALIDEE_ET_COHERENCE_POST_REAUDITS_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_AUDIT_MATRICE_FONCTIONS_CRITICITE_LATENCE_CHEMINS_AVEC_COHERENCE_REVALIDEE_CORRESPONDANCE_REVALIDEE_ET_COHERENCE_POST_REAUDITS_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_AUDIT_COHERENCE_POST_REAUDITS_DOCUMENTS_ULTERIEURS_IMPACTES_AVEC_CORRESPONDANCE_REVALIDEE_CONTRAINTES_REVALIDEES_ET_COHERENCE_POST_REAUDITS_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_AUDIT_MATRICE_CORRESPONDANCE_NOMENCLATURE_STRUCTURES_MAX_CANDIDATES_AVEC_CONTRAINTES_REVALIDEES_EXCLUSIONS_REVALIDEES_ET_COHERENCE_POST_REAUDITS_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_AUDIT_SPECIFICATION_CONTRAINTES_TRADUCTION_MAX_CONCRETE_AVEC_EXCLUSIONS_REVALIDEES_NIVEAU_6_REVALIDE_ET_COHERENCE_POST_REAUDITS_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_AUDIT_MATRICE_EXCLUSIONS_CANDIDATS_CRITICITE_LATENCE_AVEC_NIVEAU_6_REVALIDE_MATRICE_REVALIDEE_ET_COHERENCE_POST_REAUDITS_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_AUDIT_NIVEAU_6_ROLES_TECHNIQUES_CANDIDATS_CHEMINS_AVEC_NIVEAU_5_REVALIDE_MATRICE_REVALIDEE_ET_COHERENCE_POST_REAUDITS_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_AUDIT_MATRICE_SYNTHESE_CANDIDATS_LOURDS_AVEC_MATRICE_REVALIDEE_ET_COHERENCE_POST_REAUDITS_VESPERARE_v0_1.md`

Il ne produit pas :

- UI finale ;
- surface de controle ;
- mapping MIDI / OSC / HID ;
- syntaxe Max ;
- dictionnaire Max final ;
- message Max final ;
- objet Max final ;
- routage audio ;
- patch ;
- implementation.

## 2. Verdict general

Verdict :

```text
compatible comme contrat conceptuel de jouabilite, sous verrouillage strict de
non-implementation.
```

L'ancien audit commandes / packets / etats / signaux reste utilisable parce
qu'il lit correctement :

- `CMD-*` comme intentions jouables ;
- `MSG-*` comme messages conceptuels futurs ;
- `*-PACKET` comme enveloppes de responsabilite ;
- `STATE-*` comme etats conceptuels avec owner et release ;
- `SIG-*` comme signaux de jouabilite ;
- `EVT-*` comme evenements observes ;
- `ACK`, `LIMIT`, `BLOCK` et `REL` comme reponses a commande ;
- `PATH-*` comme classes fonctionnelles, pas routages.

La matrice ne doit pas etre lue comme une architecture operationnelle cachee.

Regle active :

```text
commande = contrat musical jouable.
packet = enveloppe de responsabilite.
etat = memoire conceptuelle avec owner, autorite et release.
signal = information de jouabilite.
chemin = classe fonctionnelle.
aucun de ces termes ne choisit une structure Max finale.
```

## 3. Compatibilite avec DETTE-ACT-74

DETTE-ACT-74 a revalide le noyau performance comme couche de jouabilite :

- `CORE` = fonction permanente, pas bouton ;
- `PAGE` = acces de scene, pas preset ;
- `GESTE` = action avec preparation, consequence ou sortie ;
- `SIG` = signalisation, pas UI ;
- `PATH` = classe fonctionnelle, pas routage.

La matrice commandes est compatible si elle reste la traduction abstraite de
ces contrats.

Lecture obligatoire :

```text
CMD-CORE-* ne devient pas un panneau de dix controles.
CMD-PAGE-* ne devient pas preset.
CMD-GESTE-* ne devient pas effet gratuit.
CMD-PROTECT-* ne devient pas compositeur automatique.
CMD-GEN-* ne devient pas moteur generatif autonome.
CMD-SPC-HAL-* ne devient pas preset reverb ou effet.
CMD-GRV-DID-* ne devient pas loi grave permanente.
```

## 4. Traitement Q-PERF-3 / Q-PERF-4

### 4.1. Q-PERF-3

Question source :

```text
signalisation assez claire sans surcharger le live.
```

Traitement dans la matrice commandes :

```text
Q-PERF-3 est absorbee par la separation SIG / ACK / LIMIT / BLOCK / REL.
```

Regles actives :

- `SIG-0` informe discretement ;
- `SIG-1` attire l'attention performative ;
- `SIG-2` signale une limitation jouable ;
- `SIG-3` signale un etat critique ;
- `ACK` confirme une commande acceptee ;
- `LIMIT` indique ce qui est limite et pourquoi ;
- `BLOCK` indique qu'une commande ne peut pas produire de resultat musical sur ;
- `REL` indique une sortie, une relache ou un transfert ;
- `DIAG` peut tracer sans commander l'audio.

Restriction :

```text
la matrice repond au besoin de signalisation mais ne decide pas encore si le
signal sera visuel, sonore, tactile, textuel, lumineux ou diagnostique.
```

### 4.2. Q-PERF-4

Question source :

```text
prochaine traduction commandes / packets / etats / signaux.
```

Traitement :

```text
Q-PERF-4 est absorbee comme traduction conceptuelle, pas comme traduction Max.
```

La matrice dit quoi traduire plus tard :

- intention ;
- autorite ;
- owner ;
- contexte ;
- packets lus ;
- packets produits ;
- etat lu ;
- etat ecrit ;
- chemin concerne ;
- garde-fou ;
- reponse ;
- signal ;
- release ;
- fallback.

Elle ne dit pas encore comment le traduire techniquement.

## 5. Compatibilite des familles de commandes

### 5.1. `CMD-CORE-*`

Verdict :

```text
compatible.
```

Ces commandes gardent les fonctions permanentes disponibles sans imposer une
surface live finale.

Point critique :

```text
CORE sous la main signifie fonctionnellement disponible, pas physiquement
visible ou controlee en permanence par un bouton dedie.
```

### 5.2. `CMD-PAGE-*`

Verdict :

```text
compatible.
```

`PAGE-SCN` ouvre des decisions utiles dans une scene dominante. Elle ne ferme
pas les autres scenes.

Regle :

```text
une scene peut etre dominante pendant qu'une autre existe en couche, geste,
etat, trace ou materiau source.
```

### 5.3. `CMD-GESTE-*`

Verdict :

```text
compatible.
```

Un geste est acceptable seulement s'il a au moins un des trois elements :

- preparation perceptible ;
- consequence musicale ;
- sortie ou transfert.

Un geste sans contexte reste bloque, limite ou transforme en trace.

### 5.4. `CMD-PROTECT-*`

Verdict :

```text
compatible avec verrouillage P5.
```

Regle :

```text
P0 protege.
P1 preserve la lisibilite vitale.
P5 nettoie ou maintient doucement.
P5 ne compose pas.
P5 ne retire pas un choix live.
```

Toute limitation sensible d'un choix P2 doit produire un signal de jouabilite.

### 5.5. `CMD-GEN-*`

Verdict :

```text
compatible sous condition GEN-PACKET / PERM-PACKET / DEC-PACKET.
```

Obligatoires :

- `GEN-PACKET` pour decrire inspiration, role, naturalisation, apparition,
  transformation, retrait et risques ;
- `PERM-PACKET` avant tout `START` ;
- `DEC-PACKET` si une decision audible est prise ;
- release ou sortie ;
- fallback ;
- signal en cas de blocage, limitation ou absence sensible.

Interdits maintenus :

- `REQUEST` vers `START` automatique ;
- autonomie forte par defaut ;
- electronique reconnaissable par defaut ;
- style plaque ;
- pitch correction ou auto-tune reconnaissable ;
- lead synth banal non naturalise.

### 5.6. `CMD-SPC-HAL-*`

Verdict :

```text
compatible avec separation SPC / HAL / GEN-HAL.
```

Regle :

```text
SPC decide le monde spatial.
HAL decide le mode de memoire, maintien, lock, force, cut ou momentary.
GEN-HAL fournit une matiere possible.
```

Cette separation evite de confondre :

- reverb comme monde ;
- halo comme mode de maintien ;
- matiere generative comme source ;
- effet comme decision musicale.

### 5.7. `CMD-GRV-DID-*`

Verdict :

```text
compatible avec vigilance forte.
```

La matrice conserve les modes necessaires :

- didgeridoo libre protege ;
- systeme adapte au didgeridoo ;
- didgeridoo adapte au systeme ;
- didgeridoo guide harmonique ;
- source traitee ;
- perturbateur ;
- grave absent ;
- grave guide par didgeridoo ;
- soutien discret ;
- adaptation harmonique ;
- retrait du grave genere ;
- graves libres ;
- gong / bloom / souffle / pression aerienne.

Condition :

```text
dans un moment critique, le vrai grave lisible doit avoir un owner perceptible,
sauf graves libres ou transgression explicitement decidees.
```

## 6. Compatibilite packets / etats / signaux

### 6.1. Packets

Verdict :

```text
compatible.
```

Les packets restent des enveloppes conceptuelles. Ils ne sont pas des
dictionnaires Max finals.

Regles :

- `PERF-PACKET` ne remplace pas les owners existants ;
- `STATE-PACKET` ne devient pas un mega-etat ;
- `LIMIT-PACKET` ne cache pas une protection ;
- `GEN-PACKET` ne donne pas autonomie permanente ;
- `SPC-PACKET` ne choisit pas une reverb finale ;
- `HAL-PACKET` ne choisit pas un effet ;
- `LAT-PACKET` informe la presence et la criticite sans autorite artistique.

### 6.2. Etats

Verdict :

```text
compatible.
```

Les `STATE-*` sont des etats conceptuels utiles au jeu.

Interdits :

```text
STATE ne signifie pas pattrstorage.
STATE ne signifie pas preset recall.
STATE ne signifie pas rollback automatique.
STATE ne signifie pas stockage final.
VIEW n'ecrit pas un etat musical.
DIAG n'ecrit pas un etat musical.
LAT n'ecrit pas DEC/PERM.
ANA-SLOW n'ecrit pas protection directe.
```

Tout etat audible doit conserver :

- owner ;
- autorite ;
- lecture ;
- ecriture ;
- release ;
- signal si la jouabilite change.

### 6.3. Signaux

Verdict :

```text
compatible.
```

`SIG-*` reste une couche de jouabilite, pas une UI.

Regle :

```text
signaler ce qui modifie le jeu.
ne pas signaler chaque micro-adaptation.
ne pas transformer le diagnostic en anxiete live.
ne pas conditionner l'audio par la vue.
```

Les niveaux sont maintenus :

- `SIG-0` : information discrete ;
- `SIG-1` : attention performative ;
- `SIG-2` : limitation jouable ;
- `SIG-3` : critique.

## 7. Traitement Q-CMD

### 7.1. Q-CMD-1

Question :

```text
quelle granularite finale pour les commandes physiques ?
```

Statut :

```text
non bloquant ici.
```

Raison :

```text
la granularite physique depend de la future surface de controle, de la
hierarchie live et des groupements performatifs. La matrice actuelle determine
les contrats minimaux a ne pas perdre, pas le nombre de controles.
```

### 7.2. Q-CMD-2

Question :

```text
quels groupes de commandes seront visibles simultanement dans l'UI ?
```

Statut :

```text
reporte vers conception UI / performance mapping.
```

Contrainte conservee :

```text
P0/P1/P2 limites, direct indisponible, grave conflictuel, generation bloquee,
halo/espace limite et release sensible doivent rester lisibles si cela modifie
le jeu.
```

### 7.3. Q-CMD-3

Question :

```text
faut-il une page de superposition recurrente, distincte des PAGE-SCN ?
```

Statut :

```text
possible plus tard, non requis maintenant.
```

Decision de reprise :

```text
les superpositions sont deja autorisees par DOM / LAYER / GESTE / ETAT /
TRACE. Une page dediee ne devient necessaire que si certaines superpositions
reviennent assez souvent pour exiger un acces performatif propre.
```

### 7.4. Q-CMD-4

Question :

```text
quels signaux doivent etre visuels, sonores, tactiles ou seulement
diagnostiques ?
```

Statut :

```text
reporte vers UI / signalisation live.
```

Ce document fixe seulement :

- le niveau du signal ;
- la cause ;
- la cible ;
- la persistance ;
- le lien avec la jouabilite.

Il ne fixe pas le medium.

### 7.5. Q-CMD-5

Question :

```text
quelle traduction exacte vers messages Max, dictionaries, pattr, send/receive
ou autres structures ?
```

Statut :

```text
reporte vers architecture operationnelle et traduction Max concrete.
```

Contrainte :

```text
aucune syntaxe Max ne doit etre deduite de la matrice actuelle.
```

## 8. Compatibilite avec latence sans compromis

Verdict :

```text
compatible.
```

La matrice respecte la decision active :

```text
la latence est un enjeu musical et fonctionnel.
elle ne justifie aucune degradation artistique reelle.
```

`LAT-PACKET` et `STATE-LAT` peuvent informer :

- presence ressentie ;
- criticite d'un chemin ;
- risque de decalage perceptif ;
- signalisation de limite ;
- diagnostic non bloquant.

Ils ne peuvent pas :

- retirer une fonction musicale par defaut ;
- degraduer un geste ;
- choisir une scene ;
- choisir un moteur ;
- ecrire une decision ;
- remplacer P2.

## 9. Compatibilite MIN-DID-PC

Verdict :

```text
compatible.
```

La matrice maintient le setup minimum didgeridoo + PC comme profil complet :

- scene dominante ;
- etat de forme ;
- mode didgeridoo ;
- mode grave ;
- retour ou refus de retour ;
- halo simple ;
- generation simple ;
- protection P0/P1/P5 ;
- signalisation des limites ;
- diagnostic non bloquant.

Restriction :

```text
MIN-DID-PC n'est pas un mode pauvre.
aucune dependance a gong, voix, percussion, convolution, mesure de salle, sub
puissant, UI complexe ou famille lourde n'est autorisee.
```

## 10. Risques residuels verrouilles

Risques a ne pas rouvrir pendant la suite :

- lire `CMD` comme message Max ;
- lire `CMD` comme bouton physique ;
- lire `PAGE-SCN` comme preset ;
- lire `CORE` comme surface imposee ;
- lire `PACKET` comme dictionnaire final ;
- lire `STATE` comme stockage final ;
- lire `SIG` comme UI ;
- lire `PATH` comme routage ;
- lire `REQUEST` comme `START` ;
- lire `P5` comme compositeur ;
- lire `GEN-PACKET` comme autonomie permanente ;
- lire `SPC` comme preset reverb ;
- lire `HAL` comme simple effet ;
- lire `GEN-HAL` comme owner HAL ;
- lire `LAT` comme autorite de retrait ;
- lire `MIN-DID-PC` comme mode degrade ;
- rendre les scenes exclusives ;
- rendre la transgression permanente par defaut ;
- activer les graves libres par defaut.

## 11. Decision de sortie

DETTE-ACT-75 est absorbee.

L'ancien audit matrice commandes / packets / etats / signaux reste compatible
avec :

- noyau performance revalide ;
- matrice fonctions revalidee ;
- coherence post re-audits documents ulterieurs ;
- correspondance revalidee ;
- contraintes traduction Max revalidees ;
- exclusions revalidees ;
- niveau 6 revalide ;
- matrice synthese candidats lourds revalidee ;
- Max/MSP standalone ;
- latence sans compromis ;
- non-finalite ;
- MIN-DID-PC ;
- scenes superposables ;
- separation SPC / HAL / GEN-HAL.

Il peut servir de base a la revalidation de l'audit coherence globale
pre-architecture operationnelle.

## 12. Prochaine dette logique

La prochaine dette active est :

```text
DETTE-ACT-76 - Audit compatibilite audit coherence globale pre-architecture operationnelle avec commandes revalidees, noyau revalide et coherence post re-audits
```

Prochaine fiche a creer :

```text
AUDIT_COMPATIBILITE_AUDIT_COHERENCE_GLOBALE_PRE_ARCHITECTURE_OPERATIONNELLE_AVEC_COMMANDES_REVALIDEES_NOYAU_REVALIDE_ET_COHERENCE_POST_REAUDITS_VESPERARE_v0_1.md
```

Fiche historique a revalider :

```text
AUDIT_COHERENCE_GLOBALE_PRE_ARCHITECTURE_OPERATIONNELLE_AVEC_REAUDITS_PERFORMANCE_COMMANDES_ET_CANDIDATS_LOURDS_VESPERARE_v0_1.md
```
