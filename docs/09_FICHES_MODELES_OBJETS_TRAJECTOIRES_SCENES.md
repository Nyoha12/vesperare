# 09_FICHES_MODELES_OBJETS_TRAJECTOIRES_SCENES

Version : v0.1  
Statut : appendice de modélisation conceptuelle, sans prototypage.

## Objet

Ce document sert à tester concrètement les grilles proposées dans `02_SPECIFICATION_MAX_FOR_LIVE` : objets sonores, rôles, trajectoires, scènes, groupements de paramètres, dépendances, automatisations et garde-fous.

Il ne s’agit pas encore de définir des presets, devices ou prototypes.  
Il s’agit de vérifier que l’architecture conceptuelle est capable de représenter des situations musicales typiques de Vesperare sans perdre la subtilité des analyses précédentes.

## Principe

Les fiches doivent vérifier que l’on peut passer de :

```text
intention musicale
→ phénomène
→ objet sonore
→ rôle
→ trajectoire
→ dimension affectée
→ dépendances
→ automatisations possibles
→ paramètres / contrôles
→ garde-fous
```

Une fiche est réussie si elle permet de comprendre :

```text
ce qui est musicalement visé ;
quels objets sont impliqués ;
quels rôles ils jouent ;
quelles transformations sont possibles ;
quels contrôles devraient apparaître ;
quels risques doivent être protégés ;
comment cela reste cohérent avec Vesperare.
```

---

# 1. Fiche objet sonore — Gong

## Famille matérielle

```text
métal résonant ;
objet acoustique riche ;
source de partiels ;
source de halo ;
source de masse ;
source d’impact possible.
```

## Fonctions possibles

```text
impact-fondation ponctuel ;
masse de résolution ;
rugissement ;
halo harmonique ;
champ microtonal ;
beauté autonome ;
transition ;
post-résonance ;
objet live central.
```

## Rôles possibles

```text
fondation sculptée ;
préparation de drop ;
drop / résolution ;
halo spatial ;
champ de partiels ;
objet exposé ;
rugissement contrôlé ;
liaison entre sub et espace.
```

## Trajectoires compatibles

```text
pré-drop naturalisé ;
expansion ;
suspension ;
résolution corporelle ;
résolution spectrale ;
beauté autonome → retour au corps ;
tension microtonale → stabilisation ;
torsion résonante ;
post-drop / post-résonance.
```

## Dimensions affectées

```text
impact ;
sub / grave ressenti ;
partiels ;
harmonie ;
halo ;
espace ;
queue ;
forme ;
intensité ;
confort spectral.
```

## Dépendances

```text
dépend du sub s’il joue un rôle de masse grave ;
dépend du Halo / Space Controller s’il devient résonance longue ;
dépend du Pitch / Harmonic Field Manager s’il porte des partiels ou microtensions ;
dépend du Spectral & Comfort Governor s’il devient très intense ;
dépend du Conflict / Protection Manager pour éviter boue et queues incontrôlées.
```

## Automatisations possibles

```text
ouvrir progressivement les partiels ;
resserrer la queue avant un drop ;
réduire densité autour d’un gong exposé ;
stabiliser le sub autour d’un gong grave ;
augmenter halo post-impact ;
limiter les fréquences fatigantes si rugissement.
```

## Contrôles associés

```text
Gong central ;
Rugissement ;
Partiels ;
Queue ;
Distance ;
Halo gong ;
Tension métal ;
Résolution gong ;
Réduire boue ;
Retour au corps.
```

## Garde-fous

```text
contrôle de queue ;
limite de halo ;
limite bas-médium ;
protection du sub ;
protection de la voix si présente ;
prévention de l’ambientisation ;
prévention du spectaculaire vide.
```

## Congruence Vesperare

Le gong est très compatible avec le projet car il peut porter à la fois matière acoustique, intensité, microtonalité, halo, beauté autonome, masse et résolution. Le risque est qu’il prenne trop de place ou devienne un effet spectaculaire au lieu de participer à une trajectoire.

---

# 2. Fiche objet sonore — Voix

## Famille matérielle

```text
source humaine ;
matière vocale ;
souffle ;
formants ;
cri ;
parole ;
fragment ;
halo possible ;
signal possible.
```

## Fonctions possibles

```text
présence humaine ;
signal ;
fragment rythmique ;
cri de résolution ;
voix-halo ;
texture ;
phrase rare ;
objet sémantique ponctuel ;
impact vocal ;
préparation de drop ;
suspension.
```

## Rôles possibles

```text
matière humaine ;
voix signal ;
voix percussive ;
voix criée ;
voix fragmentée ;
voix-halo ;
voix sémantique ;
voix comme masse ;
voix comme objet live central.
```

## Trajectoires compatibles

```text
fragmentation ;
exposition ;
suspension vocale ;
pré-drop vocal ;
cri → résolution ;
voix → halo ;
voix → matière ;
intelligibilité → abstraction ;
abstraction → signal ;
tension formantique → ouverture.
```

## Dimensions affectées

```text
présence ;
intelligibilité ;
rythme ;
formants ;
harmonie ;
texture ;
espace ;
humanité ;
saillance ;
forme.
```

## Dépendances

```text
dépend du rôle : signal, matière, cri, halo ou parole ;
dépend du Contextual Control Router pour afficher les bons contrôles ;
dépend du Pitch / Harmonic Field Manager si formants ou hauteurs sont structurants ;
dépend du Spectral Governor si elle devient criée ou brillante ;
dépend du Conflict Manager si elle entre en concurrence avec gong, halo ou polytexture.
```

## Automatisations possibles

```text
préserver intelligibilité si rôle = signal ;
fragmenter si rôle = matière rythmique ;
ouvrir espace si rôle = halo ;
réduire densité autour d’une voix centrale ;
armer un cri sans le déclencher automatiquement ;
transformer parole en texture ;
contrôler formants dans une torsion.
```

## Contrôles associés

```text
Voix centrale ;
Fragmentation ;
Cri armé ;
Sémantique ;
Formants ;
Voix-halo ;
Voix rythmique ;
Présence ;
Abstraction ;
Protection voix.
```

## Garde-fous

```text
éviter bascule chanson non voulue ;
éviter gimmick vocal ;
préserver ou détruire intelligibilité selon rôle ;
laisser place au corps ;
éviter sur-signification ;
contrôler fatigue des cris ;
limiter halo vocal si la scène devient floue.
```

## Congruence Vesperare

La voix est compatible si elle reste modulable entre présence humaine, matière, signal, cri, fragment, halo ou instrument. Elle ne doit pas devenir automatiquement chanson ni narration dominante, sauf choix explicite futur.

---

# 3. Fiche trajectoire — Pré-drop naturalisé

## Esprit musical

Déconstruire l’influence dubstep en tension, attente, sub retenu, syncope, préparation de résolution et drop rare, sans importation stylistique directe.

## Opérations

```text
retirer ;
retenir ;
fragmenter ;
désaligner ;
tendre ;
préparer ;
armer ;
retarder ;
réaligner ;
résoudre ;
ou bifurquer.
```

## Phases

```text
armement : un événement de résolution devient possible ;
préparation : retrait du sub ou de l’impact, fragmentation, tension ;
engagement : les objets convergent vers un seuil ;
seuil : résolution possible mais pas obligatoire ;
résolution : drop, retour au corps, cri, gong, sub ou réalignement ;
post-trace : halo, queue, résonance, retour au flux ;
désarmement : le système quitte la logique de pré-drop.
```

## Objets possibles

```text
sub ;
impact-fondation ;
gong ;
voix ;
polytexture ;
halo ;
clochettes ;
field recordings fragmentés ;
percussions graves.
```

## Rôles impliqués

```text
sub retenu ;
impact suspendu ;
gong armé ;
voix criée armée ;
polytexture fragmentée ;
halo de post-résonance ;
clochettes de tension ;
fausse résolution.
```

## Dimensions affectées

```text
rythme ;
forme ;
corps ;
sub ;
spectre ;
microtonalité ;
espace ;
attente ;
contrôle live.
```

## Dépendances

```text
dépend du Scene Conductor pour savoir si un drop est autorisé ;
dépend du Trajectory Engine pour gérer phases et seuil ;
dépend de l’Object Registry pour savoir quels objets peuvent porter la résolution ;
dépend du Pitch Manager si la tension grave est microtonale ;
dépend du Control Router pour afficher Retard / Annuler / Résoudre ;
dépend du Conflict Manager pour éviter surcharge au moment de résolution.
```

## Contrôles contextuels

```text
Attente ;
Sub retenu ;
Syncope ;
Objet de résolution ;
Retarder ;
Annuler ;
Résoudre ;
Fausse résolution ;
Post-résonance ;
Retour au corps.
```

## Conditions de résolution / bifurcation

```text
résolution par impact-fondation ;
résolution par sub ;
résolution par gong ;
résolution par voix criée ;
résolution par réalignement polytextural ;
résolution harmonique / microtonale ;
bifurcation vers suspension ;
bifurcation vers beauté autonome ;
annulation volontaire du drop.
```

## Risques

```text
drop automatique ;
effet de style trop identifiable ;
syncope gratuite ;
résolution pauvre ;
surcharge spectaculaire ;
perte d’hypnose ;
rupture non préparée ;
sub trop instable.
```

---

# 4. Fiche trajectoire — Suspension / expansion

## Esprit musical

Déconstruire l’influence trance en suspension, ouverture, expansion et peak sans brutalité, en traduisant chaque opération selon les objets sonores impliqués.

## Opérations

```text
retirer ;
suspendre ;
ouvrir ;
éclaircir ;
étendre ;
respirer ;
stabiliser ;
rayonner ;
réincorporer.
```

## Phases

```text
retrait : certains appuis corporels se raréfient ;
suspension : corps, harmonie ou espace deviennent ouverts ;
ouverture : certains objets révèlent espace, partiels ou présence ;
expansion : plusieurs dimensions s’élargissent ;
peak : rayonnement sans brutalité ;
retour : le corps revient ou la scène se stabilise.
```

## Objets possibles

```text
halo ;
gong ;
bol ;
voix ;
clochettes ;
sub doux ou retiré ;
polytexture raréfiée ;
field recordings ;
résonateurs ;
partiels brillants.
```

## Rôles impliqués

```text
halo porteur ;
gong expansif ;
voix suspendue ;
clochettes lumineuses ;
sub trace corporelle ;
polytexture raréfiée ;
champ harmonique ;
peak matériel.
```

## Dimensions affectées

```text
espace ;
halo ;
partiels ;
harmonie ;
corps ;
forme ;
intensité ;
brillance ;
largeur ;
confort.
```

## Dépendances

```text
dépend du Halo / Space Controller ;
dépend du Pitch / Harmonic Field Manager ;
dépend du Spectral Governor pour éviter brillance agressive ;
dépend du Conductor pour savoir si le corps est maintenu, retiré ou réincorporé ;
dépend du Control Router pour présenter ouverture, retour, peak ou réduction de halo.
```

## Contrôles contextuels

```text
Suspension ;
Trace corporelle ;
Ouverture ;
Partiels ;
Largeur ;
Halo ;
Peak ;
Réincorporation ;
Réduire halo ;
Stabiliser.
```

## Risques

```text
ambientisation ;
perte du corps ;
euphorie standard ;
brillance agressive ;
pad décoratif ;
peak peu singulier ;
espace trop large ;
retour trop prévisible.
```

---

# 5. Fiche scène — Suspension avant résolution

## État principal

```text
suspension / attente.
```

## Esprit musical

Créer un état où le corps est partiellement retiré mais pas oublié, où l’espace et les harmoniques s’ouvrent, pendant qu’une résolution possible est préparée sans être obligatoire.

## Objets actifs

```text
sub ;
gong ;
voix ;
halo ;
polytexture raréfiée ;
clochettes / micro-brillance ;
impact-fondation en réserve.
```

## Rôles actifs

```text
sub = trace corporelle / tension retenue ;
gong = partiels ouverts / résolution armée ;
voix = fragmentation lente ou signal suspendu ;
halo = espace principal ;
polytexture = raréfaction et attente ;
clochettes = brillance de tension ;
impact-fondation = retour potentiel.
```

## Trajectoires autorisées

```text
suspension ;
expansion ;
pré-drop naturalisé ;
résolution microtonale ;
retour au corps ;
beauté autonome ;
fausse résolution.
```

## Événements armés

```text
drop gong ;
cri vocal ;
retour impact-fondation ;
résolution du sub ;
bifurcation vers beauté autonome ;
bifurcation vers peak non brutal.
```

## Automatisations programmées possibles

```text
réduction progressive de densité ;
ouverture lente du halo ;
tension microtonale du sub ;
contrôle de queue de gong ;
fragmentation vocale ;
préparation d’un retour au corps.
```

## Contrôles prioritaires

```text
Suspension ;
Tension grave ;
Gong central ;
Voix fragmentée ;
Retarder ;
Résoudre ;
Annuler ;
Retour au corps ;
Réduire halo.
```

## Contrôles d’urgence

```text
Stabiliser sub ;
Réduire densité ;
Réduire halo ;
Limiter aigus ;
Retour impact ;
Geler / Reprise.
```

## Risques

```text
perdre le corps trop longtemps ;
ouvrir trop d’espace ;
masquer la résolution ;
faire un drop trop automatique ;
laisser la beauté autonome devenir parenthèse ;
fatigue de halo ;
flou harmonique.
```

## Critère de cohérence

La scène est cohérente si elle permet de sentir une attente et une ouverture sans imposer une résolution unique, tout en gardant la possibilité d’un retour au corps.

---

# 6. Fiche groupement de paramètres — Tension / Résolution

## Niveau

```text
permanent + contextuel.
```

Ce groupement doit exister comme famille conceptuelle stable, mais ses contrôles précis changent selon la scène, la trajectoire et les objets actifs.

## Fonction

Permettre de préparer, maintenir, retarder, bifurquer ou résoudre une tension musicale.

## Paramètres inclus possibles

```text
tension_state ;
syncopation_tension ;
drop_readiness ;
resolution_target ;
sub_withholding ;
harmonic_tension ;
trajectory_phase ;
object_involvement ;
false_resolution_probability ;
post_resonance_control.
```

## Objets concernés

```text
sub ;
impact-fondation ;
gong ;
voix ;
halo ;
polytexture ;
clochettes ;
champs harmoniques.
```

## Trajectoires concernées

```text
pré-drop naturalisé ;
suspension ;
résolution corporelle ;
résolution microtonale ;
retour au corps ;
fausse résolution ;
peak non brutal.
```

## Conditions d’affichage

Le groupement doit devenir prioritaire si :

```text
une trajectoire de pré-drop est active ;
une scène contient un événement armé ;
le sub est retenu ;
une tension harmonique est élevée ;
un objet de résolution est central ;
la scène approche d’un seuil ;
un contrôle de retard / annulation est nécessaire.
```

## Contrôles possibles

```text
Augmenter tension ;
Retenir ;
Retarder ;
Résoudre ;
Annuler ;
Fausse résolution ;
Choisir objet de résolution ;
Retour au corps ;
Réduire tension harmonique ;
Post-résonance.
```

## Risques de contrôle

```text
résolution trop automatique ;
trop de paramètres en même temps ;
confusion entre tension rythmique et tension harmonique ;
contrôle trop abstrait ;
drop déclenché sans préparation ;
annulation trop brutale.
```

## Contrôles de protection associés

```text
Stabiliser sub ;
Réduire halo ;
Limiter aigus ;
Préserver impact ;
Contrôler queue de gong ;
Protéger voix ;
Réduire densité.
```

---

# 7. Ce que ces fiches vérifient

Ces fiches montrent que le modèle est capable de représenter :

```text
un objet simple ou composite ;
un objet avec plusieurs rôles ;
une trajectoire globale ou locale ;
plusieurs objets impliqués dans une trajectoire ;
une scène avec événements armés et bifurcations ;
un groupement de paramètres contextuel ;
les risques et garde-fous associés.
```

Elles confirment que l’architecture est congruente avec l’esprit du projet : les influences sont déconstruites en phénomènes, les phénomènes sont portés par des objets, les objets jouent des rôles, les trajectoires distribuent les transformations, et les contrôles doivent rester contextuels.

## Limites actuelles

Ces fiches restent conceptuelles. Elles ne définissent pas encore :

```text
les paramètres Max exacts ;
les mappings Ableton précis ;
les courbes d’automation réelles ;
les interfaces finales ;
les banques de sons ;
les algorithmes d’analyse ;
les priorités numériques ;
les seuils de garde-fous.
```

C’est volontaire : ces éléments doivent venir après validation de l’architecture conceptuelle.
