# MATRICE BLOCS RESPONSABILITES PACKETS CONTROLES VESPERARE v0.1

Projet : Vesperare
Statut : matrice compacte de consolidation avant architecture technique
Date : 2026-06-21

Sources actives principales :

- `SPECIFICATION_ARCHITECTURE_FONCTIONNELLE_ABSTRAITE_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_ARCHITECTURE_FONCTIONNELLE_ABSTRAITE_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_SYSTEME_DECISIONNEL_CONCEPTUEL_VESPERARE_v0_1.md`
- `SPECIFICATION_PROTOCOLS_SIDECHAINS_CONCEPTUELS_v0_1.md`
- `SPECIFICATION_ANALYSES_INDICES_CONCEPTUELS_ET_CONFIANCE_v0_1.md`
- `SPECIFICATION_BLOC_GENERATION_SONORE_MOTIFS_RYTHMIQUES_MELODIQUES_v0_1.md`
- `REVERBS_ESPACE_REACTIF_v0_2.md`
- `SPECIFICATION_CONTROLES_LIVE_ET_MODES_SCENE_v0_1.md`
- `SPECIFICATION_NOYAU_JOUABLE_SCENES_COUCHES_v0_1.md`

But :

```text
compacter l'architecture abstraite en une matrice de travail
lisible avant architecture technique.
```

Cette fiche ne remplace pas les fiches detaillees.

Elle sert a savoir rapidement :

- quel bloc fait quoi ;
- ce qu'il recoit ;
- ce qu'il produit ;
- ce qui doit rester sous controle live ;
- ce qui peut etre prepare par scene ;
- ce qui peut relever d'Auto-Pro ;
- ce qu'il ne doit jamais faire ;
- quels risques surveiller dans la future architecture technique.

Hors perimetre :

```text
algorithmes ;
patchs Max ;
devices ;
plugins ;
routages reels ;
seuils ;
interface graphique ;
controleur physique.
```

---

## 1. Regle generale

Chaque bloc doit etre lu ainsi :

```text
role musical -> informations recues -> decision autorisee
-> reaction possible -> sortie -> garde-fou.
```

Regle de non-autonomie :

```text
aucun bloc ne doit pouvoir composer seul.
```

Regle de tracabilite :

```text
toute production generative doit garder :
inspiration(s), phenomene retenu, fonction Vesperare,
source ou origine perceptive, role, sortie et risques.
```

Regle de priorite :

```text
P0 gagne toujours.
P1 protege la lisibilite vitale.
P2 reste souverain hors P0/P1.
P3 prepare.
P4 propose.
P5 stabilise sans choisir.
```

---

## 2. Vue compacte des blocs

```text
SRC      sources acoustiques, salle, materiaux entrants
SCN      scene, contexte, permissions preparees
LIVE     choix live explicites
ANA      indices, interpretations possibles, confiance
DEC      arbitrage P0/P1/P2/P3/P4/P5
PROTO    relations conceptuelles source -> cible -> reaction
GEN      generation sonore, rythmique, melodique, textures, retours
SPC      espace, reverb, monde, proximite, immersion, salle
HAL      halo, memoire, queues, lock, force, cut
AUTO-PRO protection, lisibilite vitale, coherence douce
SIG      signalisation de ce qui change la jouabilite
OUT      verification conceptuelle du resultat entendu
```

Flux conceptuel minimal :

```text
SRC -> ANA -> DEC -> PROTO -> GEN/SPC/HAL -> OUT
      ^       ^       ^       ^             |
      |       |       |       |             v
     LIVE -> SCN ---- PERM --- AUTO-PRO -> SIG
```

---

## 3. Matrice des packets

### 3.1. SRC-PACKET

Contient :

```text
source active ;
type de source ;
presence ;
role potentiel ;
indices possibles ;
risques ;
statut de protection.
```

Ne decide pas :

```text
role musical final ;
traitement ;
generation ;
retour.
```

### 3.2. SCN-PACKET

Contient :

```text
scene dominante ;
couches possibles ;
gestes autorises ;
etat de forme ;
permissions preparees ;
interdits de scene ;
sorties prevues.
```

Ne decide pas :

```text
contournement P0/P1 ;
choix live explicite ;
suppression d'une source essentielle.
```

### 3.3. LIVE-PACKET

Contient :

```text
choix explicite ;
mode actif ;
permission ou refus ;
risque accepte ;
maintien ;
sortie voulue.
```

Ne decide pas :

```text
P0 acceptable ;
protection critique ;
masquage invisible.
```

### 3.4. ANA-PACKET

Contient :

```text
indice observe ;
source probable ;
interpretation possible ;
confiance CONF-0 a CONF-5 ou CONF-X ;
temporalite ;
incertitude ;
risque P0/P1.
```

Ne decide pas :

```text
scene ;
generation ;
retour ;
transgression ;
suppression d'un choix live.
```

### 3.5. PERM-PACKET

Contient :

```text
autorite P0/P1/P2/P3/P4/P5 ;
fonction autorisee ;
fonction refusee ;
condition ;
source de permission ;
duree ou etat ;
besoin de signalisation.
```

Ne doit pas devenir :

```text
bus technique ;
autorisation globale vague ;
permission permanente non justifiee.
```

### 3.6. DEC-PACKET

Contient :

```text
decision ;
autorite ;
raison ;
bloc concerne ;
reaction autorisee ;
reaction refusee ;
sortie ;
signal necessaire.
```

Ne decide pas :

```text
contenu musical detaille ;
algorithme ;
device ;
routage.
```

### 3.7. PROTO-PACKET

Contient :

```text
source ecoutee ;
cible ;
indices utiles ;
interpretation ;
reaction possible ;
priorite ;
sortie ;
garde-fou.
```

Ne fait pas :

```text
activation automatique de la cible ;
routage technique ;
decision hors DEC/PERM.
```

### 3.8. GEN-PACKET

Contient obligatoirement :

```text
inspiration(s) ;
phenomene retenu ;
fonction Vesperare ;
famille GEN ;
source ou origine perceptive ;
role DOM/LAYER/GESTE/ETAT/TRACE ;
regime ;
autonomie ;
naturalisation ;
reconnaissance ;
apparition ;
transformation ;
retrait ;
sortie ;
risques ;
garde-fous.
```

Ne fait pas :

```text
composition autonome ;
style entier impose ;
retour choisi seul ;
transgression choisie seule ;
timbre electronique reconnaissable non decide ;
remplacement d'une source essentielle.
```

### 3.9. SPC-PACKET

Contient :

```text
monde spatial ;
fonction ;
sources concernees ;
proximite ;
immersion ;
distance ;
enveloppement ;
relation salle ;
grave spatial ;
queue comme effet de monde ou de distance ;
risque ;
sortie.
```

Ne fait pas :

```text
decor automatique ;
grande reverb sans fonction ;
suppression du corps non decidee ;
masquage d'attaque sans signal.
```

### 3.10. HAL-PACKET

Contient :

```text
halo voulu ou subi ;
source ;
memoire ;
queue comme maintien ou verrou ;
mode Auto/Lock/Force/Cut/Momentary/Safe force ;
relation attaque ;
relation grave ;
sortie ;
limite P0/P1.
```

Ne fait pas :

```text
suppression d'un Halo Lock hors P0/P1 ;
maintien qui masque sans signal ;
queue decorative non decidee.
```

### 3.11. PROTECT-PACKET

Contient :

```text
P0 actif ;
P1 actif ;
P5 actif ;
source ou zone concernee ;
action de protection ;
limite imposee ;
raison ;
signalisation.
```

Ne fait pas :

```text
choix de scene ;
choix de motif ;
choix de retour ;
choix de transgression ;
choix esthetique cache.
```

### 3.12. SIG-PACKET

Contient :

```text
niveau SIG-0 a SIG-3 ;
cause ;
bloc concerne ;
choix limite ;
risque ;
action possible ;
retour possible.
```

Ne fait pas :

```text
surcharge d'information ;
signalisation de chaque detail ;
remplacement du jugement live.
```

### 3.13. OUT-PACKET

Contient :

```text
coherence entendue ;
lisibilite ;
source essentielle respectee ;
corps present ou absence decidee ;
sortie prevue ;
conflit restant ;
decision visible.
```

Ne fait pas :

```text
jugement esthetique autonome ;
mastering ;
routage final ;
composition.
```

---

## 4. Bloc SRC - Sources

Role :

```text
decrire les sources presentes et leurs potentiels musicaux.
```

Sources principales :

```text
didgeridoo ;
gong / metaux ;
tambour / peau / percussion corporelle ;
voix ;
salle ;
silence / retrait ;
generation deja presente comme source secondaire.
```

Recoit :

```text
audio source ;
presence ou absence ;
scene ;
choix live de source ;
etat de protection.
```

Produit :

```text
SRC-PACKET.
```

Sous la main en live :

```text
source active/protegee ;
role possible du didgeridoo ;
presence voix ;
presence gong ;
risque accepte ou non.
```

Prepare par scene :

```text
sources attendues ;
sources optionnelles ;
sources interdites ;
roles probables.
```

Auto-Pro :

```text
detecte uniquement risques P0/P1 ou source essentielle masquee.
```

Interdits :

```text
forcer le didgeridoo en controleur ;
forcer le didgeridoo en basse ;
traiter une source sans fonction ;
ignorer une source essentielle.
```

Risque futur :

```text
confondre source analysee et source dirigeante.
```

---

## 5. Bloc SCN - Scene / contexte

Role :

```text
donner un cadre de permissions et de fonctions possibles.
```

Recoit :

```text
scene dominante ;
couches ;
etat de forme ;
preparations ;
interdits ;
sorties prevues.
```

Produit :

```text
SCN-PACKET ;
PERM-PACKET prepare.
```

Sous la main en live :

```text
scene dominante ;
couches activees ;
etat preparation/maintien/retour/sortie ;
risque accepte ;
maintien ou retrait.
```

Prepare par scene :

```text
permissions GEN/SPC/HAL ;
roles des sources ;
interdits stylistiques ;
sorties possibles ;
priorites P2/P3.
```

Auto-Pro :

```text
ne modifie pas la scene hors P0/P1.
```

Interdits :

```text
scene exclusive par defaut ;
scene qui empeche superposition ;
scene qui contourne P0/P1 ;
scene qui choisit a la place du live.
```

Risque futur :

```text
transformer les scenes en presets rigides.
```

---

## 6. Bloc LIVE - Choix live

Role :

```text
porter les decisions explicites du musicien.
```

Recoit :

```text
geste live ;
mode choisi ;
permission ;
refus ;
lock ;
force ;
cut ;
acceptation de risque.
```

Produit :

```text
LIVE-PACKET ;
PERM-PACKET ;
SIG-PACKET si le choix est limite.
```

Sous la main en live :

```text
mode DID ;
mode grave ;
permission generation ;
regime generation ;
mode espace ;
halo Lock/Force/Cut ;
retour prepare ou non ;
transgression autorisee ou non ;
risque accepte ou non.
```

Prepare par scene :

```text
valeurs probables ;
plages de choix ;
interdits ;
raccourcis de scene.
```

Auto-Pro :

```text
peut limiter seulement P0/P1 ou coherence douce P5 sans choix musical.
```

Interdits :

```text
P0 rendu acceptable ;
signal P1 cache ;
choix live supprime hors P0/P1.
```

Risque futur :

```text
trop de controles directs.
```

Garde-fou :

```text
limiter le premier niveau aux controles qui changent vraiment la jouabilite.
```

---

## 7. Bloc ANA - Analyses / indices / confiance

Role :

```text
observer et qualifier sans decider.
```

Recoit :

```text
SRC-PACKET ;
SCN-PACKET ;
etat courant ;
historique court ou long ;
risques deja signales.
```

Produit :

```text
ANA-PACKET.
```

Sous la main en live :

```text
pas de controle detaille obligatoire ;
signalisation seulement si doute utile ou limite active.
```

Prepare par scene :

```text
indices importants ;
indices ignores ;
niveau de prudence ;
fonctions autorisees si confiance suffisante.
```

Auto-Pro :

```text
utilise ANA pour P0/P1/P5, mais ANA ne declenche pas seule.
```

Interdits :

```text
indice qui choisit scene ;
indice qui lance generation ;
indice qui choisit retour ;
indice qui supprime halo voulu ;
indice qui baisse didgeridoo hors P0/P1.
```

Risque futur :

```text
sur-analyse et reactions binaires.
```

Garde-fou :

```text
CONF-4 ne cree pas d'autorisation.
CONF-X signale ou bloque les reactions fortes.
```

---

## 8. Bloc DEC - Decision / arbitrage

Role :

```text
arbitrer ce qui est autorise, refuse, limite, signale ou retire.
```

Recoit :

```text
SCN-PACKET ;
LIVE-PACKET ;
PERM-PACKET ;
ANA-PACKET ;
PROTO-PACKET ;
PROTECT-PACKET ;
etat precedent.
```

Produit :

```text
DEC-PACKET ;
PERM-PACKET mis a jour ;
SIG-PACKET si necessaire.
```

Sous la main en live :

```text
pas de controle DEC direct sauf acceptation/annulation d'un risque,
permission ou refus explicite.
```

Prepare par scene :

```text
priorites ;
conditions de demarrage ;
conditions de maintien ;
conditions de retrait ;
sorties.
```

Auto-Pro :

```text
peut imposer P0/P1 ;
P5 reste doux et non artistique.
```

Interdits :

```text
choisir contenu musical ;
remplacer P2 ;
rendre P1 invisible ;
composer.
```

Risque futur :

```text
trop de portes decisionnelles.
```

Garde-fou :

```text
DEC doit rester une matrice de priorites, pas un cerveau compositeur.
```

---

## 9. Bloc PROTO - Protocoles relationnels

Role :

```text
decrire les relations entre sources, indices, cibles et reactions.
```

Recoit :

```text
SRC-PACKET ;
ANA-PACKET ;
SCN-PACKET ;
LIVE-PACKET ;
PERM-PACKET ;
DEC-PACKET.
```

Produit :

```text
PROTO-PACKET.
```

Sous la main en live :

```text
choix des modes relationnels majeurs :
didgeridoo libre/integre/guide ;
mode grave ;
halo Lock/Force/Cut ;
graves libres ;
risque accepte ;
generation reactive ou non.
```

Prepare par scene :

```text
relations probables ;
relations interdites ;
conditions de reaction ;
sorties.
```

Auto-Pro :

```text
active seulement relations de protection P0/P1 ou coherence douce P5.
```

Interdits :

```text
PROTO comme routage technique ;
PROTO qui active une cible seul ;
PROTO qui contourne DEC/PERM ;
PROTO qui impose une esthetique.
```

Risque futur :

```text
confondre sidechain conceptuel et sidechain audio.
```

---

## 10. Bloc GEN - Generation sonore / motifs

Role :

```text
produire, transformer, maintenir, retirer ou preparer des objets
sonores, rythmiques, melodiques, texturaux, spatiaux ou de retour.
```

Recoit obligatoirement :

```text
PERM-PACKET ;
DEC-PACKET ;
SCN-PACKET ;
inspiration/fonction ;
source ou origine perceptive ;
sortie.
```

Produit :

```text
GEN-PACKET ;
demande vers SPC/HAL/GEN-RET/SIG si necessaire.
```

Sous la main en live :

```text
permission generation ;
regime principal ;
autonomie ;
source/origine ;
naturalisation ;
reconnaissance/cliche ;
sortie/retrait ;
signalisation utile.
```

Prepare par scene :

```text
familles GEN autorisees ;
inspirations retenues ;
phenomenes retenus ;
roles DOM/LAYER/GESTE/ETAT/TRACE ;
sorties ;
interdits.
```

Auto-Pro :

```text
peut retirer generation non essentielle en P1/P0 ;
peut stabiliser P5 sans composer ;
ne choisit pas motif principal.
```

Interdits :

```text
generation autonome hors fonction ;
style entier ;
lead banal ;
acid cliche ;
auto-tune reconnaissable ;
retour choisi seul ;
transgression choisie seule ;
source essentielle remplacee.
```

Risques futurs :

```text
perte de trace stylistique ;
motif trop autonome ;
timbre electronique reconnaissable ;
generation decorative ;
perte du corps non decidee.
```

Garde-fou :

```text
GEN-PACKET complet obligatoire.
```

---

## 11. Bloc SPC - Espace / reverb / monde

Role :

```text
porter proximite, immersion, espace commun, hors-monde,
espace reactif, salle reelle, grave spatial et coherence spatiale.
```

Recoit :

```text
SCN-PACKET ;
LIVE-PACKET ;
ANA-PACKET salle/espace ;
DEC-PACKET ;
PROTO-PACKET ;
GEN-PACKET si demande spatiale.
```

Produit :

```text
SPC-PACKET ;
SIG-PACKET si limite ou conflit.
```

Sous la main en live :

```text
monde spatial ;
proximite/immersion ;
reactivite ;
place du grave spatial ;
relation salle ;
maintien ou retrait ;
bypass/lock si necessaire.
```

Prepare par scene :

```text
monde principal ;
mondes secondaires combinables ;
sources concernees ;
sorties ;
interdits ;
risques P0/P1.
```

Auto-Pro :

```text
peut limiter boue, feedback, masque d'attaque ou sub problematique.
ne change pas monde expressif hors P0/P1.
```

Interdits :

```text
reverb decorative ;
espace qui efface le corps hors decision ;
suppression d'un choix spatial hors P0/P1 ;
masquage sans signal.
```

Risque futur :

```text
monde spatial lu comme preset esthetique.
```

Garde-fou :

```text
un monde spatial doit nommer fonction, source, corps, sortie et risque.
```

---

## 12. Bloc HAL - Halo / memoire / queues

Role :

```text
porter prolongation, memoire, lock, force, cut, momentary,
safe force et appartenance de source.
```

Recoit :

```text
SCN-PACKET ;
LIVE-PACKET ;
ANA-PACKET queue/halo ;
DEC-PACKET ;
PROTO-PACKET ;
GEN-PACKET si demande de halo.
```

Produit :

```text
HAL-PACKET ;
SIG-PACKET si limite.
```

Sous la main en live :

```text
Halo Auto ;
Lock ;
Force ;
Cut ;
Momentary ;
Safe force ;
source du halo ;
maintien anti-retrait ;
sortie.
```

Prepare par scene :

```text
halo voulu ;
halo subi ;
source prioritaire ;
conditions de maintien ;
conditions de retrait ;
relations attaque/grave.
```

Auto-Pro :

```text
peut limiter P0/P1 ;
ne supprime pas Lock/Force hors P0/P1.
```

Interdits :

```text
halo decoratif non decide ;
suppression d'un halo voulu hors P0/P1 ;
queue qui masque attaque sans signal ;
maintien non sorti.
```

Risque futur :

```text
confusion entre GEN-HAL, HAL et SPC.
```

Garde-fou :

```text
GEN-HAL produit ou demande.
HAL maintient, verrouille, force, coupe.
SPC place dans un monde.
```

---

## 13. Bloc AUTO-PRO - Protection / coherence

Role :

```text
proteger securite, lisibilite vitale, headroom, feedback,
sub, source essentielle, attaque, densite et boue grave/reverb.
```

Recoit :

```text
ANA-PACKET ;
DEC-PACKET ;
OUT-PACKET ;
etat P0/P1/P5 ;
conflits signales.
```

Produit :

```text
PROTECT-PACKET ;
SIG-PACKET si P0/P1/P2 limite.
```

Sous la main en live :

```text
pas de micro-controle detaille ;
acceptation de risque seulement si P0 absent et P1 musicalement acceptable.
```

Prepare par scene :

```text
niveau de prudence ;
risques acceptables ;
risques non acceptables ;
priorites de protection.
```

Auto-Pro :

```text
est ce bloc.
```

Interdits :

```text
choisir scene ;
composer ;
choisir retour ;
choisir transgression ;
choisir motif principal ;
changer monde expressif hors P0/P1 ;
supprimer choix live hors P0/P1.
```

Risque futur :

```text
P5 transforme en gout esthetique cache.
```

Garde-fou :

```text
P5 stabilise. P5 ne choisit pas.
```

---

## 14. Bloc SIG - Signalisation

Role :

```text
rendre lisibles protections, limites, blocages, preparations,
conflits et retours possibles.
```

Recoit :

```text
DEC-PACKET ;
PROTECT-PACKET ;
ANA-PACKET incertain ;
GEN-PACKET retire ;
SPC/HAL limite ;
OUT-PACKET incoherent.
```

Produit :

```text
SIG-PACKET.
```

Sous la main en live :

```text
signal P0 ;
signal P1 ;
signal P2 limite ;
conflit grave ;
halo limite ;
generation retiree ;
retour prepare ;
doute important.
```

Prepare par scene :

```text
signaux utiles ;
signaux caches ;
priorites ;
niveaux SIG-0 a SIG-3.
```

Auto-Pro :

```text
doit signaler quand il limite P1/P2 ou coupe P0.
```

Interdits :

```text
tout signaler ;
signaler trop finement ;
masquer P1 actif ;
laisser un retrait important invisible.
```

Risque futur :

```text
surcharge cognitive.
```

Garde-fou :

```text
SIG priorise ce qui modifie la jouabilite.
```

---

## 15. Bloc OUT - Resultat musical coherent

Role :

```text
verifier conceptuellement le resultat entendu.
```

Recoit :

```text
etat musical global ;
GEN/SPC/HAL actifs ;
protections ;
decisions ;
signalisation ;
sorties prevues.
```

Produit :

```text
OUT-PACKET ;
alerte vers DEC/SIG si incoherence majeure.
```

Sous la main en live :

```text
pas de controle direct ;
retour de lisibilite seulement si utile.
```

Prepare par scene :

```text
criteres de coherence ;
ce qui peut etre perdu ;
ce qui doit rester perceptible ;
conditions de sortie.
```

Auto-Pro :

```text
utilise OUT seulement pour P0/P1/P5.
```

Interdits :

```text
jugement esthetique autonome ;
mastering ;
composition ;
routage final ;
decision artistique.
```

Risque futur :

```text
OUT lu comme module d'intelligence musicale.
```

Garde-fou :

```text
OUT verifie, il ne choisit pas.
```

---

## 16. Matrice autorite / action

```text
Action critique securite                      -> P0 / AUTO-PRO / SIG obligatoire
Protection mix vitale                         -> P1 / AUTO-PRO / SIG si limite
Choix artistique explicite                    -> P2 / LIVE
Preparation ou comportement de scene          -> P3 / SCN
Proposition non imposee                       -> P4 / GEN ou SIG
Coherence douce non esthetique                -> P5 / AUTO-PRO
Observation incertaine                        -> ANA / SIG possible / pas d'action forte
Relation source-cible                         -> PROTO / DEC avant activation
Production generative                         -> GEN / PERM + DEC + SCN obligatoires
Espace / reverb expressive                    -> SPC / PERM + fonction + sortie
Halo voulu                                    -> HAL / P2 ou scene / P0-P1 seuls limitent
Resultat incoherent                           -> OUT / SIG ou DEC, pas composition
```

---

## 17. Matrice controles live prioritaires

Premier niveau probable :

```text
scene dominante ;
mode didgeridoo ;
mode grave ;
permission generation ;
regime generation ;
monde spatial / proximite-immersion ;
halo Auto/Lock/Force/Cut ;
retour / sortie ;
transgression autorisee ;
risque accepte ou refuse ;
signal P0/P1/P2.
```

Deuxieme niveau probable :

```text
source de generation ;
autonomie ;
naturalisation ;
reconnaissance / cliche ;
densite ;
pression rythmique ;
grave spatial vs sub porteur ;
mode salle ;
source du halo ;
sortie de halo ;
voix integree ;
gong bloom.
```

Ne doit pas etre premier niveau sauf besoin specifique :

```text
details d'analyse ;
micro-parametres de reverb ;
micro-parametres de generation ;
seuils ;
debug ;
listes longues de modes.
```

---

## 18. Matrice setup minimum didgeridoo + PC

Obligatoire :

```text
SRC didgeridoo ;
ANA didgeridoo ;
DEC ;
PROTO didgeridoo/grave/generation/halo ;
GEN utilisable ;
SPC/HAL utilisables ;
AUTO-PRO ;
SIG ;
OUT.
```

Doit pouvoir produire :

```text
didgeridoo libre protege ;
systeme adapte au didgeridoo ;
didgeridoo adapte au systeme si decide ;
guide harmonique ;
generation rythmique par attaques/souffle ;
ligne par partiels/formants ;
grave soutien ou retrait ;
halo source ;
espace proche ou immersif ;
techno suspendue minimale ;
retour prepare.
```

Ne doit pas imposer :

```text
gong ;
voix ;
tambour ;
didgeridoo controleur permanent ;
didgeridoo basse forcee ;
ambient sans corps ;
generation decorative.
```

---

## 19. Fragilites a transmettre a l'architecture technique

### FRAG-MAT-1 - Paquets trop nombreux

Risque :

```text
traduire tous les packets en objets techniques separes.
```

Recommandation :

```text
regrouper techniquement quand c'est rationnel,
mais conserver la distinction conceptuelle dans la documentation.
```

### FRAG-MAT-2 - Trop de controles

Risque :

```text
vouloir tout rendre accessible directement.
```

Recommandation :

```text
separer premier niveau live, deuxieme niveau scene,
et details internes non joues.
```

### FRAG-MAT-3 - GEN trop puissant

Risque :

```text
un generateur unique devient compositeur global.
```

Recommandation :

```text
GEN doit rester divise par fonction et permission.
```

### FRAG-MAT-4 - SPC/HAL trop esthetiques

Risque :

```text
reverbs et halos deviennent presets decoratifs.
```

Recommandation :

```text
chaque espace doit nommer fonction, source, sortie et risque.
```

### FRAG-MAT-5 - AUTO-PRO trop intrusif

Risque :

```text
la protection devient une correction artistique cachee.
```

Recommandation :

```text
P0/P1 visibles.
P5 discret mais non decisionnel.
```

---

## 20. Decision v0.1

Decision :

```text
la matrice compacte est suffisante pour servir de pont
entre l'architecture fonctionnelle abstraite et une future
architecture technique abstraite.
```

Elle confirme :

```text
les blocs actifs ;
les packets utiles ;
les responsabilites ;
les interdits ;
les controles live prioritaires ;
les points a preparer par scene ;
les limites Auto-Pro ;
le setup minimum didgeridoo + PC.
```

Prochaine action recommandee :

```text
SPECIFICATION_ARCHITECTURE_TECHNIQUE_ABSTRAITE_PRE_MAX_FOR_LIVE_VESPERARE_v0_1
```

Condition :

```text
cette prochaine fiche devra rester pre-technique :
elle pourra parler de familles de pistes, groupes fonctionnels,
flux audio/MIDI conceptuels et familles de modules,
mais pas encore choisir de devices, plugins, algorithmes ou seuils.
```
