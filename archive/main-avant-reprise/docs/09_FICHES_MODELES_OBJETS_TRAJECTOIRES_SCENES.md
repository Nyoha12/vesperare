# 09_FICHES_MODELES_OBJETS_TRAJECTOIRES_SCENES

Version : v0.3  
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

# 3. Fiche objet sonore — Sub

## Famille matérielle

```text
grave corporel ;
masse basse ;
centre physique ;
fondation ressentie ;
source de pression ;
objet harmonique possible ;
objet microtonal possible.
```

## Fonctions possibles

```text
fondation corporelle ;
stabilisation ;
pression contrôlée ;
masse de drop ;
trace corporelle dans une suspension ;
tension retenue ;
résolution grave ;
liaison entre corps et harmonie ;
centre spectral.
```

## Rôles possibles

```text
fondation principale ;
sub retenu ;
trace corporelle ;
masse de résolution ;
grave suspendu ;
centre harmonique ;
pression latente ;
grave microtonal ;
contrepoids à halo ou beauté autonome.
```

## Trajectoires compatibles

```text
pré-drop naturalisé ;
sub retenu → résolution ;
suspension avec trace corporelle ;
retour au corps ;
tension microtonale → stabilisation ;
peak corporel non agressif ;
champ harmonique → fondation ;
retrait du corps → réincorporation.
```

## Dimensions affectées

```text
corps ;
sub ;
grave ;
pression ;
pitch_center ;
spectral_root ;
forme ;
impact ;
confort ;
mono / centre.
```

## Dépendances

```text
dépend du Pitch / Harmonic Field Manager si le sub doit s’accorder ou se tendre microtonalement ;
dépend du Spectral & Comfort Governor pour éviter excès de pression ou instabilité ;
dépend du Conflict / Protection Manager pour préserver centre, mono et lisibilité ;
dépend du Scene Conductor pour savoir si le corps doit être présent, retiré ou latent ;
dépend du Halo / Space Controller pour éviter que l’espace dissolve la fondation.
```

## Automatisations possibles

```text
retenir le sub avant une résolution ;
stabiliser le centre grave ;
introduire une microtension contrôlée ;
réduire la largeur stéréo ;
réincorporer progressivement le corps ;
retirer le sub sans perdre totalement la trace corporelle ;
renforcer une résolution par gong, voix ou impact.
```

## Contrôles associés

```text
Sub central ;
Sub retenu ;
Trace corporelle ;
Pression grave ;
Stabiliser sub ;
Tension grave ;
Résolution sub ;
Retour au corps ;
Relation sub / gong ;
Relation sub / harmonie.
```

## Garde-fous

```text
stabiliser hauteur ou centre spectral ;
préserver mono / centre ;
éviter boue bas-médium ;
limiter pression excessive ;
éviter sub spectaculaire sans fonction ;
préserver lisibilité de l’impact ;
protéger les instruments live graves.
```

## Congruence Vesperare

Le sub est indispensable parce qu’il porte le lien techno le plus corporel. Mais il doit pouvoir être plus qu’une basse : masse, centre spectral, tension, résolution, trace, ou relation harmonique avec gong, didgeridoo, voix et halos.

---

# 4. Fiche objet sonore — Polytexture

## Famille matérielle

```text
objet composite ;
tissage percussif ;
densité articulée ;
interlocking ;
harmonie de timbres ;
contrepoint rythmique ;
surface énergétique.
```

## Fonctions possibles

```text
complexité lisible ;
propulsion ;
brillance rythmique ;
densité articulée ;
énergie sans kick dominant ;
préparation de résolution ;
réponse à un instrument live ;
variation hypnotique ;
relief de scène.
```

## Rôles possibles

```text
polytexture porteuse ;
densité de fond ;
contrepoint ;
brillance active ;
pré-drop fragmenté ;
réalignement rythmique ;
raréfaction ;
réponse au live ;
maintien d’énergie.
```

## Trajectoires compatibles

```text
densification ;
raréfaction ;
pré-drop syncopé ;
réalignement ;
expansion rythmique ;
retour au corps ;
hypnose active ;
complexité → lisibilité ;
polytexture → peak corporel.
```

## Dimensions affectées

```text
rythme ;
densité ;
accent ;
interlocking ;
brillance ;
mid_load ;
lisibilité ;
complexité ;
propulsion ;
relation au live.
```

## Dépendances

```text
dépend de l’Object Registry comme objet composite avec sous-objets ;
dépend du Trajectory Engine pour densifier ou raréfier sans confusion ;
dépend du Spectral Governor pour contrôler mid_load et aigus ;
dépend du Conflict Manager si elle masque voix, gong ou live input ;
dépend du Contextual Control Router pour afficher densité, accent, lisibilité ou retrait selon scène.
```

## Automatisations possibles

```text
augmenter densité sans augmenter confusion ;
réduire certaines couches pour laisser place à un gong ou une voix ;
changer la hiérarchie d’accents ;
fragmenter avant une résolution ;
réaligner après une tension syncopée ;
répondre à un instrument live ;
contrôler la charge médium.
```

## Contrôles associés

```text
Densité polytexture ;
Lisibilité ;
Accents ;
Interlocking ;
Brillance ;
Raréfier ;
Réaligner ;
Réponse live ;
Réduire médiums ;
Complexité.
```

## Garde-fous

```text
éviter virtuosité décorative ;
préserver cadre techno ;
contrôler mid_load ;
éviter couches équivalentes ;
préserver hiérarchie d’accents ;
laisser place à voix, gong ou live ;
empêcher importation stylistique non voulue.
```

## Congruence Vesperare

La polytexture est compatible si elle reste une densité articulée au service du corps, de l’hypnose et de la forme. Elle ne doit pas devenir démonstration percussive autonome ou couleur world/tribale plaquée.

---

# 5. Fiche objet sonore — Halo

## Famille matérielle

```text
espace ;
résonance ;
queue ;
champ spectral ;
profondeur ;
post-résonance ;
suspension ;
liant entre objets.
```

## Fonctions possibles

```text
ouvrir l’espace ;
créer profondeur ;
suspendre ;
prolonger un événement ;
porter une beauté autonome ;
créer un champ harmonique ;
préparer un peak non brutal ;
installer une nuit / scène ;
relier gong, voix, sub ou field recording.
```

## Rôles possibles

```text
espace principal ;
halo de post-impact ;
champ harmonique ;
respiration ;
trace ;
beauté autonome ;
suspension ;
expansion ;
liaison ;
masque à surveiller.
```

## Trajectoires compatibles

```text
suspension ;
expansion ;
post-drop ;
beauté autonome ;
peak spatial ;
fermeture de scène ;
halo → retour au corps ;
halo → réduction ;
halo harmonique → stabilisation.
```

## Dimensions affectées

```text
espace ;
halo ;
queue ;
stéréo ;
front_back_relief ;
harmonie ;
partiels ;
confort ;
lisibilité ;
forme.
```

## Dépendances

```text
dépend du Halo / Space / Resonance Controller ;
dépend du Pitch / Harmonic Field Manager si le halo est accordé ou partiel ;
dépend du Spectral Governor pour éviter fatigue et masquage ;
dépend du Conflict Manager si le halo masque impact, voix ou polytexture ;
dépend du Scene Conductor pour savoir si l’espace doit ouvrir, tenir ou se refermer.
```

## Automatisations possibles

```text
ouvrir lentement l’espace ;
réduire le halo avant un retour au corps ;
prolonger un gong en post-résonance ;
créer un champ harmonique suspendu ;
fermer la largeur pour réinstaller le centre ;
limiter les queues si la densité augmente ;
laisser respirer une beauté autonome.
```

## Contrôles associés

```text
Halo ;
Profondeur ;
Largeur ;
Post-résonance ;
Réduire halo ;
Ouvrir espace ;
Fermer espace ;
Halo harmonique ;
Distance ;
Retour proximité.
```

## Garde-fous

```text
éviter ambientisation ;
protéger impact ;
protéger voix ;
contrôler fatigue aiguë ;
éviter espace décoratif ;
limiter queue excessive ;
préserver proximité quand nécessaire.
```

## Congruence Vesperare

Le halo est essentiel mais dangereux : il donne nuit, profondeur, mystère, suspension et beauté, mais peut dissoudre le corps. Il doit donc être fortement contextualisé par scène, rôle et trajectoire.

---

# 6. Fiche objet sonore — Didgeridoo

## Famille matérielle

```text
instrument acoustique ;
drone corporel ;
fondamentale grave ;
formants ;
souffle ;
pulsation interne ;
source live possible ;
masse organique.
```

## Fonctions possibles

```text
fondation organique ;
sub vivant ;
pression grave ;
formants en mouvement ;
ligne vivante ;
torsion résonante ;
lien corps / souffle ;
trace corporelle ;
objet live central ;
champ harmonique naturel.
```

## Rôles possibles

```text
grave organique ;
sub texturé ;
source de formants ;
drône corporel ;
ligne de matière ;
tension formantique ;
réponse live ;
masse respirante ;
préparation ou stabilisation de scène.
```

## Trajectoires compatibles

```text
torsion résonante ;
suspension avec trace corporelle ;
retour au corps ;
sub vivant → stabilisation ;
formants → ouverture ;
ligne vivante → hypnose ;
pré-drop grave ;
drone → expansion ;
objet live → influence système.
```

## Dimensions affectées

```text
grave ;
corps ;
formants ;
souffle ;
rythmicité interne ;
pression ;
pitch ressenti ;
harmonie ;
texture ;
live input.
```

## Dépendances

```text
dépend du Live Object Interpreter si joué live ;
dépend du Pitch / Harmonic Field Manager pour fondamentale, formants et centre spectral ;
dépend du Spectral Governor pour contrôler bas-médium et pression ;
dépend du Scene Conductor pour savoir s’il est fondation, trace ou objet central ;
dépend du Conflict Manager s’il entre en conflit avec sub, voix ou gong.
```

## Automatisations possibles

```text
extraire ou suivre une fondamentale ressentie ;
relier formants à une trajectoire de torsion ;
réduire d’autres graves pour laisser place au didgeridoo ;
transformer souffle en halo ou texture ;
utiliser les pulsations internes comme influence rythmique ;
stabiliser ou déstabiliser le sub autour de lui ;
ouvrir un champ harmonique depuis ses partiels.
```

## Contrôles associés

```text
Didgeridoo central ;
Fondamentale ;
Formants ;
Souffle ;
Pression organique ;
Sub vivant ;
Torsion ;
Trace corporelle ;
Influence live ;
Stabiliser grave.
```

## Garde-fous

```text
éviter boue bas-médium ;
préserver clarté du sub ;
ne pas rigidifier l’instrument en rôle fixe ;
laisser place à la voix ;
contrôler pression continue ;
préserver agency du musicien live ;
limiter analyse trop déterministe.
```

## Congruence Vesperare

Le didgeridoo est très compatible parce qu’il unit corps, souffle, grave, formants, naturalisation et live. Il impose cependant une attention forte à l’équilibre grave, à la liberté du jeu et à la distinction entre analyse du signal et décision musicale.

---

# 7. Fiche trajectoire — Pré-drop naturalisé

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
engagement : les objets commencent à converger vers un seuil ;
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

# 8. Fiche trajectoire — Suspension / expansion

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

# 9. Fiche scène — Suspension avant résolution

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

# 10. Fiche groupement de paramètres — Tension / Résolution

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

# 11. Audit initial des fiches

## Ce que les fiches valident

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

## Ce que les fiches révèlent comme besoin

Les fiches montrent que l’Object Registry devra distinguer plusieurs types d’informations :

```text
données déclarées : ce que le compositeur sait ou décide sur un objet ;
données analysées : ce que le système peut extraire d’un signal ou fichier ;
données contextuelles : ce que l’objet devient dans une scène ou trajectoire ;
données dynamiques : ce qui change en performance ;
données de protection : ce qu’il faut limiter, surveiller ou empêcher.
```

Elles montrent aussi que l’Object Registry ne doit pas seulement lister des sons. Il doit organiser des objets capables de changer de rôle selon le contexte.

## Ce que les nouvelles fiches ajoutent à l’audit

Les fiches Sub, Polytexture, Halo et Didgeridoo montrent que l’Object Registry doit aussi gérer des profils très différents :

```text
Sub : objet corporel central, à protéger fortement, lié au pitch et au centre spectral ;
Polytexture : objet composite, rythmique, multi-couches, avec hiérarchie d’accents ;
Halo : objet spatial et spectral, souvent dangereux pour le corps et la lisibilité ;
Didgeridoo : objet instrumental/live, formantique, grave, respirant et non réductible à une basse.
```

Conséquence : l’Object Registry ne peut pas être seulement une table générique. Il doit permettre des profils spécialisés selon les familles d’objets.

## Besoin supplémentaire pour l’Object Registry

Le module devra probablement prévoir des familles de champs optionnels :

```text
profil corporel : body_anchor_capacity, sub_relation, impact_dependency ;
profil spatial : halo_behavior, space_behavior, tail_behavior ;
profil rythmique : density_behavior, accent_hierarchy, interlock_capacity ;
profil harmonique : pitch_center, partial_profile, formant_profile, microtonal_behavior ;
profil live : performer_agency, analysis_confidence, live_reactivity, role_suggestion_limit ;
profil de protection : protected_dimensions, emergency_actions, conflict_sensitivity.
```

## Conséquence pour `02_SPECIFICATION_MAX_FOR_LIVE`

Le module Object Registry doit être développé en priorité, car il conditionne :

```text
Trajectory Engine ;
Timbre & Material Mapper ;
Contextual Control Router ;
Conflict / Protection Manager ;
Pitch / Harmonic Field Manager ;
Live Object Interpreter.
```

Le premier approfondissement de `02` doit donc porter sur la structure interne de l’Object Registry.

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
