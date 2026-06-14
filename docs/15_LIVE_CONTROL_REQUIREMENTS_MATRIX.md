# 15_LIVE_CONTROL_REQUIREMENTS_MATRIX

Version : v0.1  
Statut : matrice abstraite de contrôles live. Sans interface graphique, sans Max for Live, sans mapping matériel, sans prototype.

## Objet

Ce document transforme les exigences système / interface du document `14` en premiers contrôles live abstraits.

Il ne définit pas encore :

```text
une interface graphique ;
un patch Max for Live ;
un layout matériel ;
un mapping MIDI ;
un contrôleur physique ;
un module final.
```

Il définit :

```text
quels contrôles doivent exister fonctionnellement ;
quels états le musicien doit pouvoir piloter ;
quelles protections doivent être accessibles ;
quels arbitrages doivent être possibles ;
quelles dérives doivent être rendues visibles ou empêchées.
```

---

# 1. Principe de design

L’interface ne doit pas être une liste de paramètres techniques.

Elle doit être une interface de pilotage musical.

Donc les contrôles doivent être organisés par :

```text
fonction musicale ;
état de scène ;
trajectoire ;
priorité ;
protection ;
arbitrage live / engine / matière préparée.
```

Un contrôle abstrait peut devenir plus tard :

```text
une macro ;
un bouton d’état ;
un fader ;
un encodeur ;
un switch ;
un retour visuel ;
un indicateur de danger ;
un geste performatif ;
un contrôle automatique protégé.
```

Mais ce document ne choisit pas encore la forme.

---

# 2. Types de contrôles abstraits

## 2.1 MACRO

Contrôle performable à haute valeur musicale.

Exemples :

```text
Retour au corps ;
Pression ;
Impact ;
Tension longue ;
Densité polytexturale ;
Anti-ambient.
```

## 2.2 STATE

État discret ou semi-discret de scène ou de fonction.

Exemples :

```text
Body Focus ;
Suspension ;
Pré-drop ;
Retrait ;
Expansion ;
Live Priority.
```

## 2.3 GUARD

Protection contre une dérive.

Exemples :

```text
Sub Stability Guard ;
Live Mask Guard ;
Anti-Ambient Guard ;
Low-Mid Load Guard ;
Auto-Selection Guard.
```

## 2.4 ARBITRATION

Contrôle ou logique d’équilibre entre plusieurs sources ou fonctions.

Exemples :

```text
live / engine ;
sub / champ ;
didgeridoo / matière préparée ;
guimbardes / micro-samples ;
gong ou tambour présent / absent.
```

## 2.5 READOUT

Retour d’état pour le musicien, pas forcément graphique.

Exemples :

```text
danger de masque ;
pression excessive ;
retour au corps affaibli ;
densité longue ;
conflit sub / partiels.
```

---

# 3. Matrice principale des contrôles

## CTRL_BODY_RETURN

Type : MACRO + STATE.

Fonction : rendre le retour au corps pilotable après tension, suspension, halo, champ ou abstraction.

Doit contrôler :

```text
priorité sub ;
priorité impact ;
retrait des couches longues ;
réactivation didgeridoo / guimbardes ;
réduction densité ;
réouverture du contour.
```

Protections liées :

```text
PR_BODY_01 ;
PR_BODY_02 ;
PR_BODY_03 ;
PR_ANTIAMB_02 ;
PR_LIVE_01.
```

Dépendances :

```text
SR_BODY ;
TR_BODY ;
SOURCE_NEED_SUB_PRESSURE_ENGINE ;
SOURCE_NEED_LIVE_DIDGERIDOO_PRESSURE_FORMANTS ;
SOURCE_NEED_LIVE_JAW_HARPS_FORMANT_MICROPULSE.
```

Priorité : très haute.

## CTRL_BODY_FOCUS

Type : STATE.

Fonction : indiquer ou activer un état où le corps devient la référence principale de la scène.

Doit agir sur :

```text
sub ;
impact ;
densité ;
low-mid safety ;
relation live / couches longues.
```

Risques :

```text
rendre le système trop binaire ;
écraser des tensions fines ;
confondre corps avec volume.
```

Priorité : haute.

## CTRL_PRESSURE

Type : MACRO.

Fonction : piloter l’intensité corporelle / spectrale / rythmique sans la réduire au volume.

Sous-dimensions futures :

```text
pression physique ;
pression spectrale ;
pression de densité ;
pression rythmique.
```

Doit contrôler :

```text
sub energy ;
saturation contrôlée ;
densité ;
résonance ;
frottement ;
fatigue ;
low-mid load.
```

Protections liées :

```text
PR_PRESSURE_01 ;
PR_PRESSURE_02 ;
PR_PRESSURE_03 ;
PR_BODY_01.
```

Priorité : très haute.

## CTRL_LONG_TENSION

Type : MACRO + STATE.

Fonction : piloter l’attente, la durée orientée et la tension sans bascule immédiate.

Doit contrôler :

```text
accumulation ;
densité lente ;
stabilité / instabilité ;
suspension ;
préparation du retrait ;
retour différé.
```

Doit éviter :

```text
narration trop explicite ;
remplissage ambient ;
staticité ;
pression sans sortie.
```

Priorité : haute.

## CTRL_IMPACT

Type : MACRO.

Fonction : rendre l’impact performable comme fonction d’ancrage, accent, masse ou résolution.

Sous-modes possibles :

```text
sec ;
masse ;
peau ;
métal ;
sub ;
objet.
```

Doit contrôler :

```text
attaque ;
corps ;
queue ;
netteté ;
masquage post-impact ;
relation au sub.
```

Protections liées :

```text
PR_IMPACT_01 ;
PR_IMPACT_02 ;
PR_IMPACT_03.
```

Priorité : très haute.

## CTRL_CONTOUR

Type : MACRO secondaire / sous-contrôle.

Fonction : sculpter l’attaque, la tenue, la queue et le retrait d’un phénomène.

Doit s’appliquer à :

```text
impacts ;
champs ;
halos ;
textures ;
résonances ;
sources live traitées.
```

Rôle interface : éviter que la matière soit seulement belle mais mal articulée.

Priorité : haute.

## CTRL_NATURALIZATION_ROLE

Type : ARBITRATION + MACRO conceptuelle.

Fonction : piloter la naturalisation par rôle, pas par famille de sons.

Doit permettre :

```text
choisir la fonction à préserver ;
changer le support ;
arbitrer live / engine / sample minimal / hybride ;
réduire la reconnaissance si elle détourne ;
empêcher décor naturaliste.
```

Exemples de rôles :

```text
corps ;
pression ;
impact ;
halo ;
tension ;
retrait ;
signal ;
polytexture.
```

Priorité : haute, mais à développer prudemment.

## CTRL_POLYTEXTURE_DENSITY

Type : MACRO.

Fonction : contrôler densité articulée, interlocking et complexité lisible.

Doit distinguer plus tard :

```text
polytexture rythmique ;
polytexture timbrale ;
polytexture harmonique.
```

Doit contrôler :

```text
nombre de couches ;
activité micro-événementielle ;
relations de phase ;
hiérarchie ;
lisibilité ;
interaction avec guimbardes live.
```

Protections liées :

```text
PR_POLY_01 ;
PR_POLY_02 ;
PR_POLY_03 ;
PR_POLY_04.
```

Priorité : haute.

## CTRL_POLYTEXTURE_ARTICULATION

Type : sous-contrôle.

Fonction : rendre la densité lisible par attaque, espacement, registre, contour et hiérarchie.

Doit éviter :

```text
densité = confusion ;
micro-variation gratuite ;
banque de one-shots ;
masquage des guimbardes.
```

Priorité : moyenne à haute.

## CTRL_HARMONIC_FRICTION

Type : MACRO / ARBITRATION.

Fonction : piloter l’écart, les battements et les tensions de partiels.

Doit contrôler :

```text
alignement ;
friction légère ;
friction forte ;
stabilité ;
instabilité ;
densité harmonique ;
retrait de champ.
```

Doit rester lié à :

```text
sub ;
didgeridoo ;
guimbardes ;
gong éventuel ;
métaux accordés éventuels ;
champs harmoniques conditionnels.
```

Protections liées :

```text
PR_PARTIALS_01 ;
PR_PARTIALS_02 ;
PR_PARTIALS_03 ;
PR_PARTIALS_04.
```

Priorité : moyenne à haute.

## CTRL_HARMONIC_DENSITY

Type : sous-contrôle.

Fonction : piloter l’épaisseur harmonique sans produire une nappe permanente.

Doit contrôler :

```text
nombre de couches ;
densité de partiels ;
battements ;
registre ;
relation au sub ;
retrait.
```

Priorité : moyenne.

## CTRL_WITHDRAWAL

Type : MACRO + STATE.

Fonction : permettre au musicien de retirer une couche ou un état de manière performative.

Modes possibles :

```text
cut ;
fader ;
duck ;
collapse ;
filter_out ;
return_to_body.
```

Doit s’appliquer à :

```text
champs harmoniques ;
halos ;
textures ;
densités ;
polytextures ;
field recordings ;
résonances.
```

Priorité : très haute.

## CTRL_ANTI_AMBIENT

Type : GUARD + MACRO.

Fonction : empêcher la dérive vers fond atmosphérique décoratif.

Doit surveiller :

```text
durée de couche longue ;
densité continue ;
perte du corps ;
absence de tension ;
absence de retrait ;
field recordings sans scène ;
drone permanent.
```

Actions possibles :

```text
réduire ;
ducker ;
forcer retrait ;
limiter accumulation ;
réactiver body focus ;
interdire auto-ajout de couche.
```

Priorité : très haute.

## CTRL_LIVE_PRIORITY

Type : STATE + GUARD.

Fonction : préserver didgeridoo et guimbardes comme sources centrales.

Doit contrôler :

```text
priorité didgeridoo ;
priorité guimbardes ;
relation live / engine ;
relation live / matière préparée ;
masquage ;
subordination des couches secondaires.
```

Actions si danger :

```text
réduire couche concurrente ;
bypass traitement ;
forcer retrait ;
réduire densité ;
interdire auto-sélection.
```

Priorité : très haute.

## CTRL_SOURCE_ARBITRATION

Type : ARBITRATION.

Fonction : gérer l’équilibre entre live fixe, live optionnel, engine, sample minimal et matière préparée.

Cas à couvrir :

```text
didgeridoo + guimbardes seuls ;
avec gong ;
avec tambour ;
avec gong + tambour ;
sans gong ni tambour ;
source préparée conditionnelle ;
engine conditionnel.
```

Doit empêcher :

```text
source préparée qui remplace live ;
sample choisi par charme sonore ;
engine qui écrase performance ;
configuration live optionnelle traitée comme neutre.
```

Priorité : haute.

## CTRL_LOW_MID_SAFETY

Type : GUARD / READOUT.

Fonction : protéger corps, didgeridoo, sub et clarté contre surcharge bas-médium.

Doit surveiller :

```text
sub ;
didgeridoo ;
frame drum ;
gong grave ;
champs ;
halos ;
textures longues ;
résonateurs.
```

Actions :

```text
réduire densité ;
filtrer ;
ducker ;
forcer retrait ;
limiter queue ;
alerter.
```

Priorité : haute.

## CTRL_SELECTION_POLICY

Type : GUARD / ARBITRATION.

Fonction : décider ce qui peut être fixe, manuel, assisté, auto-restreint ou interdit.

Modes :

```text
M0_FIXED_SOURCE ;
M1_MANUAL_SELECTION ;
M2_ASSISTED_SELECTION ;
M3_CONSTRAINED_AUTO_SELECTION ;
M4_AUTO_SELECTION_FORBIDDEN.
```

Règles :

```text
voix signal: manuel ou interdit auto ;
sub principal: fixed ;
didgeridoo/guimbardes: fixed source ;
beauté centrale: manuel ;
micro-variantes secondaires: auto-restreint possible ;
samples conditionnels: jamais auto sans source_need + pool + qualité validée.
```

Priorité : haute.

---

# 4. Contrôles non encore autorisés

Ne pas créer encore :

```text
un navigateur de samples ;
un sélecteur de banque ;
un bouton “organique” ;
un bouton “naturel” ;
un contrôle “beauté” générique ;
un mode drone permanent ;
un mode ambient ;
un auto-remplissage de textures ;
un auto-remplacement du live.
```

Ces contrôles seraient trop dangereux ou trop vagues à ce stade.

---

# 5. Première hiérarchie des contrôles

## Priorité A — cœur live immédiat

```text
CTRL_BODY_RETURN ;
CTRL_PRESSURE ;
CTRL_IMPACT ;
CTRL_WITHDRAWAL ;
CTRL_ANTI_AMBIENT ;
CTRL_LIVE_PRIORITY.
```

## Priorité B — structure de scène et densité

```text
CTRL_LONG_TENSION ;
CTRL_BODY_FOCUS ;
CTRL_POLYTEXTURE_DENSITY ;
CTRL_POLYTEXTURE_ARTICULATION ;
CTRL_SOURCE_ARBITRATION ;
CTRL_LOW_MID_SAFETY.
```

## Priorité C — harmonique / timbre / matière

```text
CTRL_HARMONIC_FRICTION ;
CTRL_HARMONIC_DENSITY ;
CTRL_CONTOUR ;
CTRL_NATURALIZATION_ROLE ;
CTRL_SELECTION_POLICY.
```

---

# 6. Liens probables aux modules futurs

```text
CTRL_BODY_RETURN → Scene / Performance Conductor + Conflict / Protection Manager + Output/Mix future.
CTRL_PRESSURE → Sound Engines / Instruments + Conflict / Protection Manager.
CTRL_IMPACT → Sound Engines / Instruments + Timbre & Material Mapper.
CTRL_WITHDRAWAL → Trajectory Engine + Scene / Performance Conductor.
CTRL_ANTI_AMBIENT → Conflict / Protection Manager + Scene / Performance Conductor.
CTRL_LIVE_PRIORITY → Contextual Control Router + Source Needs / Asset Protocol.
CTRL_POLYTEXTURE_DENSITY → Timbre & Material Mapper + Trajectory Engine.
CTRL_HARMONIC_FRICTION → Pitch / Harmonic Field Manager.
CTRL_SOURCE_ARBITRATION → Contextual Control Router + Source Needs / Asset Protocol.
```

Ces liens restent indicatifs.

Ils ne valident aucun module supplémentaire.

---

# 7. Tests nécessaires avant design d’interface

Avant de dessiner une interface, il faut vérifier :

```text
1. quels contrôles sont vraiment performables ;
2. quels contrôles doivent être macros plutôt que sous-paramètres ;
3. quels contrôles doivent être états discrets ;
4. quels contrôles doivent être protections automatiques ;
5. quels contrôles doivent rester manuels ;
6. quels contrôles créent trop de charge cognitive ;
7. quels contrôles peuvent être fusionnés ;
8. quels contrôles doivent être visibles en permanence.
```

---

# 8. Décision actuelle

```text
interface_graphic_design: no
max_for_live_patch: no
hardware_mapping: no
control_requirements_matrix: started
next_step: group controls by performance layer and scene function
```

---

# 9. Prochaine action recommandée

Créer :

```text
16_LIVE_CONTROL_LAYERS_AND_PERFORMANCE_STATES.md
```

Objectif : organiser les contrôles abstraits en couches de performance :

```text
couche corps / énergie ;
couche scène / trajectoire ;
couche live priority ;
couche timbre / matière ;
couche protections ;
couche sélection / arbitrage.
```

Toujours sans interface graphique ni mapping matériel.
