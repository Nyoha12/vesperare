# AUDIT CANDIDATS GENERATION RYTHMIQUE MOTIFS TIMING MAX STANDALONE VESPERARE v0.1

Projet : Vesperare
Date : 2026-06-24
Statut : audit candidat C, non-implementation

Sources internes principales :

- `AUDIT_COMPATIBILITE_SPECIFICATION_PRE_AUDIT_CANDIDATS_GENERATION_RYTHMIQUE_MOTIFS_TIMING_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_PRE_AUDIT_CANDIDATS_GENERATION_RYTHMIQUE_MOTIFS_TIMING_VESPERARE_v0_1.md`
- `AUDIT_CANDIDATS_COMMANDES_LIVE_SCHEDULER_SIGNALISATION_MAX_STANDALONE_VESPERARE_v0_1.md`
- `SPECIFICATION_BLOC_GENERATION_SONORE_MOTIFS_RYTHMIQUES_MELODIQUES_v0_1.md`
- `SPECIFICATION_GENERATION_FINE_PAR_GEN_ROLE_MAX_STANDALONE_VESPERARE_v0_1.md`
- `MATRICE_GEN_ROLE_SCENES_CONTROLES_LIVE_RISQUES_VESPERARE_v0_1.md`
- `AUDIT_TRACABILITE_CAHIER_CHARGES_GENERATIF_STYLISTIQUE_v0_1.md`
- `MATRICE_EXCLUSIONS_CANDIDATS_PAR_CRITICITE_ET_LATENCE_MAX_STANDALONE_VESPERARE_v0_1.md`
- `MATRICE_LATENCE_RESSENTIE_PAR_FONCTION_ET_CHEMIN_MAX_STANDALONE_VESPERARE_v0_1.md`

Sources externes consultees comme garde-fous :

- Documentation Cycling '74 : `metro`, `transport`, `phasor~`, `edge~`
- Documentation Cycling '74 : Scheduler and Priority, Sample Accurate Messages
- References NIME / musique generative interactive comme cadre de prudence
  methodologique, sans choix d'algorithme final.

But :

```text
auditer les candidats du groupe C :
bases de temps ;
timing technique et musical ;
source-derived triggers ;
representation de motifs ;
variation / probabilite ;
interlocking ;
acid naturalise ;
voix fragmentaire ;
jazz/Keita comme methode ;
protections AUT/REC/SIG ;
sans moteur final, algorithme final, UI, mapping ou patch.
```

Hors perimetre :

```text
moteur generation final ;
algorithme final ;
sequenceur final ;
patch final ;
UI finale ;
mapping final ;
seuils finaux ;
tests / benchmarks comme methode de conception ;
implementation.
```

---

## 1. Verdict general

Verdict :

```text
compatible avec statuts candidats conditionnels.
```

Decision :

```text
le groupe C peut etre conserve comme audit de familles candidates.
aucune famille n'est retenue comme moteur generation final.
les candidats acceptables sont ceux qui preservent :
GEN-ROLE ;
fonction musicale ;
source ou scene ;
AUT ;
REC ;
timing technique ;
timing musical ;
sortie ;
risque ;
SIG si impact.
```

Decision negative :

```text
pas de moteur autonome par defaut.
pas de motif hors fonction.
pas d'import de style entier.
pas de precision technique presentee comme intention musicale.
pas de reduction du didgeridoo, de la voix, du gong ou des peaux a de simples
controleurs.
```

---

## 2. Tableau des statuts

| Famille candidate | Statut | CRIT | LPER | Autorise pour | Exclu / condition | Risque principal |
|---|---|---|---|---|---|---|
| Contrat `GEN-CANDIDATE` | OBLIGATOIRE | CRIT-2/3/4 | LPER-1/2/3/5 | auditer toute generation | non moteur final | generation vague |
| Event clock | CONDITIONNEL | CRIT-2/3/4 | LPER-1/2/3 | pulse, cycles, motifs planifies | pas P0/P1 ; pas grille par defaut | mecanique / jitter |
| Signal/audio clock | CONDITIONNEL | CRIT-2/3 | LPER-0/1/2 | phase audio, micro-pulses, rampes | pas intention remplacee par phase | complexite audio |
| Signal-to-event triggers | CONDITIONNEL | CRIT-2/3 | LPER-1/2 | declencher depuis signal/source | confidence + fallback | faux triggers |
| Source-derived triggers | ACCEPTE CANDIDAT CONDITIONNEL | CRIT-2/3 | LPER-1/2/3 | reponse didgeridoo/voix/gong/peau | source non reduite a controleur | source appauvrie |
| Planned events / sample-accurate | CONDITIONNEL | CRIT-2/3 | LPER-1/2 | micro-placement, motifs precis | conditions groupe B | precision supposee |
| Representation de motif | CONDITIONNEL | CRIT-2/3/4 | LPER-2/3/5 | stocker forme/variation/sortie | pas preset cache | motif autonome |
| Variation/probabilite | CONDITIONNEL | CRIT-3/4, CRIT-2 limite | LPER-2/3/5 | variation bornee | pas hasard decoratif | style genere |
| Regles/contraintes | ACCEPTE CANDIDAT CONDITIONNEL | CRIT-2/3/4 | LPER-1/2/3/5 | garder fonction, AUT, REC | pas composition autonome | rigidite |
| Markov/grammaire/statistique | REPORTE / CONDITIONNEL LOURD | CRIT-3/4 | LPER-3/5 | seulement si besoin formel | justification obligatoire | autonomie opaque |
| Euclidien/polymetrique | CONDITIONNEL | CRIT-3/4, CRIT-2 scene explicite | LPER-2/3 | cycle, tension, interlocking | pas signature algorithmique | pattern reconnaissable |
| Interlocking coordinator | ACCEPTE CANDIDAT CONDITIONNEL | CRIT-2/3 | LPER-1/2/3 | couches, densite lisible | couche directrice obligatoire | illisibilite |
| Motif watchdog AUT/REC | OBLIGATOIRE | CRIT-2/3/4 | LPER-1/2/3/5 | limiter autonomie/cliche | non optionnel si motif | derive de motif |
| Acid naturalise line | ACCEPTE CANDIDAT CONDITIONNEL | CRIT-2/3 | LPER-1/2/3 | torsion, ligne, resonance | pas TB-303/squelch par defaut | lead banal |
| Voice fragment integrated | ACCEPTE CANDIDAT CONDITIONNEL | CRIT-2/3 | LPER-1/2/3 | souffle, consonne, cri, formant | pas voix nue/autotune | chanson involontaire |
| Jazz/Keita micro-decision | ACCEPTE COMME METHODE | CRIT-2/3/4 | LPER-1/2/3 | ponctuation, silence, relance | pas style plaque | imitation |
| Candidats lourds | REPORTE VERS DETTE-ACT-6 | selon fonction | selon fonction | gen~, poly~, MC, js, ML, buffer | besoin explicite | ouverture trop large |

---

## 3. Contrat `GEN-CANDIDATE`

Statut :

```text
OBLIGATOIRE.
```

Raison :

```text
le contrat evite de transformer une idee musicale en moteur abstrait.
```

Champs obligatoires :

```text
nom ;
famille ;
GEN-ROLE ;
phenomene retenu ;
fonction Vesperare ;
source / scene ;
timing technique ;
timing musical ;
autonomie AUT ;
reconnaissance REC ;
controle live ;
Auto-Pro autorise ;
Auto-Pro interdit ;
sortie ;
fallback ;
SIG ;
risques ;
interdits ;
report.
```

Interdit :

```text
candidat sans fonction musicale ;
candidat sans sortie ;
candidat sans AUT/REC s'il produit motif ou ligne ;
candidat qui impose style, retour, transgression ou forme.
```

---

## 4. Bases de temps

### 4.1. Event clock

Statut :

```text
CONDITIONNEL.
```

Fonction utile :

```text
produire des evenements periodiques ou planifies :
pulse ;
cycle ;
retour de cadre ;
densite ;
motif rythmique ;
variation lente.
```

Exemples non finaux :

```text
metro ;
transport ;
clock message ;
timepoints ;
delays planifies.
```

Conditions :

```text
ne pas supposer precision audio absolue ;
ne pas venir de l'UI comme source temporelle fine ;
declarer relation au tempo, scene ou source ;
prevoir retrait/mute ;
SIG si clock non conforme ou motif limite.
```

Risques :

```text
grille mecanique ;
jitter perceptible ;
retour techno impose ;
motif qui continue hors fonction.
```

Decision Vesperare :

```text
event clock est candidat utile pour rythmes non critiques et motifs planifies.
il n'est pas candidat unique pour micro-gestes instrumentaux.
```

### 4.2. Signal/audio clock

Statut :

```text
CONDITIONNEL.
```

Fonction utile :

```text
porter phase, rampes, micro-pulses, tremblement, cycle audio, synchronisation
plus proche du signal.
```

Exemples non finaux :

```text
phasor~ ;
signal ramps ;
phase accumulators ;
audio-rate logic.
```

Conditions :

```text
fonction musicale declaree ;
phase lisible ou cachee volontairement ;
conversion event/signal auditee ;
pas de complexite audio dans P0/P1 ;
fallback si phase ou sync devient incoherente.
```

Risques :

```text
precision technique qui remplace intention ;
phase rigide ;
reset audible ;
complexite difficile a signaler ;
CPU/cache de patch premature.
```

Decision Vesperare :

```text
signal/audio clock est candidat important pour pression rythmique fine,
micro-pulses et generation proche audio,
mais ne doit pas devenir un moteur global par defaut.
```

### 4.3. Signal-to-event triggers

Statut :

```text
CONDITIONNEL.
```

Fonction utile :

```text
convertir une information audio en evenement :
attaque ;
seuil ;
passage ;
phase ;
enveloppe ;
presence ;
consonne ;
impact.
```

Exemples non finaux :

```text
edge~ ;
threshold ;
bonk-like detection ;
envelope follower ;
feature-to-bang abstrait.
```

Conditions :

```text
confidence ou stabilite ;
anti-faux positif ;
anti-faux negatif ;
fallback si detection douteuse ;
pas de P0/P1 dependant d'une detection fragile ;
SIG si commande ou generation refusee/limitee.
```

Risques :

```text
faux triggers ;
latence signal->event ;
source transformee en interrupteur ;
rythme derive qui contredit le jeu live.
```

Decision Vesperare :

```text
signal-to-event est candidat utile pour source-derived generation,
mais doit rester subordonne au jeu et a la scene.
```

---

## 5. Source-derived triggers

Statut :

```text
ACCEPTE CANDIDAT CONDITIONNEL.
```

Sources prioritaires :

```text
didgeridoo ;
voix ;
gong ;
tambour/peau ;
souffle ;
grave ;
silence ;
espace.
```

Fonctions utiles :

```text
reponse ;
variation ;
interlocking ;
micro-pulse ;
ligne de partiels ;
accent fantome ;
retour de cadre ;
halo rythmique ;
fragment vocal.
```

Conditions :

```text
la source reste musicalement respectee ;
le systeme ne reduit pas la source a un controleur ;
la feature doit avoir une interpretation musicale ;
si la source est essentielle, Auto-Pro peut limiter la generation ;
SIG si source protegee, motif bloque ou densite reduite.
```

Risques :

```text
didgeridoo transforme en MIDI pauvre ;
voix transformee en simple trigger ;
gong reduit a impact ;
source masquee par sa propre generation ;
suivi trop litteral du geste.
```

Decision Vesperare :

```text
source-derived triggers sont centraux pour MIN-DID-PC et pour naturalisation.
ils restent conditionnels a une interpretation musicale explicite.
```

---

## 6. Representation de motif

Statut :

```text
CONDITIONNEL.
```

Fonction utile :

```text
memoriser ou transformer une forme :
rythme ;
ligne ;
accent ;
cycle ;
fragment ;
basse-motif ;
retour ;
trace.
```

Representations candidates non finales :

```text
liste ;
table ;
dict/coll ;
buffer abstrait ;
state packet ;
motif packet ;
pattern grammar ;
scene memory.
```

Conditions :

```text
chaque motif garde :
source ;
fonction ;
AUT ;
REC ;
scene ;
sortie ;
risque ;
cause.
```

Interdits :

```text
preset cache comme source d'un motif ;
motif actif sans scene ;
motif sans sortie ;
motif qui bat P2 ;
motif qui masque une source essentielle.
```

Decision Vesperare :

```text
representation de motif est necessaire,
mais aucune structure de stockage n'est choisie maintenant.
```

---

## 7. Variation, probabilite et contraintes

### 7.1. Variation/probabilite

Statut :

```text
CONDITIONNEL.
```

Fonction utile :

```text
rendre vivant un motif ou une couche sans composer a la place du performer.
```

Conditions :

```text
probabilite bornee ;
scene declaree ;
role declare ;
AUT limite ;
REC surveille ;
sortie possible ;
pas de hasard qui decide transgression ou retour.
```

Risques :

```text
hasard decoratif ;
style genere ;
motif qui prend une direction non voulue ;
variation qui efface la fonction.
```

Decision :

```text
variation/probabilite est utile pour vie interne,
mais jamais comme compositeur autonome.
```

### 7.2. Regles/contraintes

Statut :

```text
ACCEPTE CANDIDAT CONDITIONNEL.
```

Fonction utile :

```text
garder une generation dans un champ musical autorise :
source ;
registre ;
densite ;
silence ;
accent ;
naturalisation ;
autonomie ;
sortie.
```

Conditions :

```text
regles lisibles ;
priorites P0/P1/P2 conservees ;
pas de regle qui impose style ;
pas de regle qui empeche un retrait live.
```

Risques :

```text
rigidite ;
generation trop previsible ;
contrainte cachee ;
retour ou resolution imposee.
```

Decision :

```text
les contraintes sont plus centrales que le hasard.
elles doivent servir la fonction, pas devenir le style.
```

### 7.3. Markov / grammaire / statistique

Statut :

```text
REPORTE / CONDITIONNEL LOURD.
```

Raison :

```text
ces methodes peuvent etre utiles mais risquent l'opacite, l'autonomie et la
signature algorithmique.
```

Condition d'ouverture :

```text
fonction precise ;
scene precise ;
AUT/REC limites ;
sortie ;
controle live ;
explicabilite suffisante.
```

Decision :

```text
ne pas ouvrir en audit detaille maintenant sauf necessite future.
```

---

## 8. Interlocking / polytexture

Statut :

```text
ACCEPTE CANDIDAT CONDITIONNEL.
```

Fonction utile :

```text
creer tissage, plans, attaques differenciees, contrepoint rythmico-spectral,
densite lisible et pression subtile.
```

Conditions :

```text
couche directrice obligatoire ;
couches secondaires identifiables par role, timbre ou registre ;
densite limitee ;
source essentielle protegee ;
retrait rapide ;
SIG si densite limitee ou motif bloque.
```

Risques :

```text
interlocking illisible ;
percussion illustrative ;
imitation Keita ;
accumulation ;
complexite decorative ;
source live volee par la generation.
```

Decision Vesperare :

```text
interlocking est accepte comme relation entre plans,
pas comme pattern ou style plaque.
```

---

## 9. Motifs rythmiques

Statut :

```text
ACCEPTE CANDIDAT CONDITIONNEL.
```

Types recevables :

```text
micro-pulse naturalise ;
interlocking ;
accent fantome ;
respiration de matiere ;
retour de cadre ;
rythme spatial ;
densite d'attaques ;
retrait rythmique ;
syncope de masse ;
dissonance metrique.
```

Conditions :

```text
fonction corporelle ;
source perceptive ;
cycle ou non-cycle ;
variation ;
accent directeur ;
relation au grave ;
relation a l'espace ;
condition de retrait ;
risque de cliche.
```

Interdits :

```text
kit techno implicite ;
kick/hat/clap non naturalise ;
retour automatique ;
complexite sans corps ;
generateur rythmique ignorant les sources live.
```

Decision :

```text
les motifs rythmiques sont autorises,
mais leur autonomie doit etre justifiee par scene/fonction.
```

---

## 10. Motifs melodiques / lignes / acid naturalise

Statut :

```text
ACCEPTE CANDIDAT CONDITIONNEL.
```

Types recevables :

```text
centre ressenti ;
accent-melody ;
basse-motif ;
melodie de timbre ;
melodie de partiels ;
acid naturalise ;
fragment vocal ;
hook minimal ;
microtonal / non tempere ;
ligne de retour.
```

Conditions :

```text
origine perceptive ;
source de hauteur ;
degre REC ;
rapport au timbre ;
rapport au grave ;
rapport au corps ;
fonction formelle ;
condition de retrait ;
risque de lead banal.
```

Interdits :

```text
lead synth banal ;
auto-tune reconnaissable ;
pattern acid cliche ;
melodie temperee imposee ;
fragment vocal qui devient chanson sans decision ;
double lead voix + ligne sans hierarchie.
```

Decision :

```text
une melodie reconnaissable est autorisee.
elle doit rester rattachee a matiere, source, scene, fonction ou retour.
```

### 10.1. Acid naturalise

Statut :

```text
ACCEPTE CANDIDAT CONDITIONNEL.
```

Fonction :

```text
torsion, elasticite, repetition vivante, resonance, slide, mutation timbrale,
acidite dosee.
```

Naturalisation candidate :

```text
partiels didgeridoo ;
formants voix ;
tube/cavite ;
friction ;
grave ;
reverb/espace ;
traces acoustiques ;
filtrage organique.
```

Interdits :

```text
TB-303 par defaut ;
squelch reconnaissable par defaut ;
pattern acid cliche ;
module acid autonome ;
lead banal.
```

Decision :

```text
acid naturalise est une fonction de tension et de ligne,
pas un style ni un timbre par defaut.
```

---

## 11. Voix fragmentaire integree

Statut :

```text
ACCEPTE CANDIDAT CONDITIONNEL.
```

Fonctions recevables :

```text
souffle ;
consonne rythmique ;
cri integre ;
fragment ;
formant ;
proximite ;
presence spectrale ;
trace melodique ;
signal humain masque/revele.
```

Conditions :

```text
integration sonore ou virtualo-acoustique ;
fonction declaree ;
pas de voix nue par defaut ;
pas de pitch correction reconnaissable ;
sortie si voix devient lead ou chanson ;
SIG si voix essentielle masquee.
```

Risques :

```text
chanson involontaire ;
lead vocal banal ;
auto-tune ;
fragilite masquee ;
voix reduite a effet.
```

Decision :

```text
voix fragmentaire est candidate,
mais comme source/fonction integree, pas comme lead nu.
```

---

## 12. Jazz / Keita comme methode

Statut :

```text
ACCEPTE COMME METHODE, PAS COMME STYLE.
```

Fonctions recevables :

```text
ponctuation ;
micro-decision ;
relance ;
silence actif ;
tension/resolution ;
voicing distribue ;
partiels distribues ;
micro-instabilite ;
ecoute active ;
densification breve ;
retrait intelligent.
```

Conditions :

```text
ne jamais devenir couleur jazz autonome ;
ne jamais devenir imitation Keita ;
ne pas importer accords, swing, walking, virtuosite ou tradition complete ;
lier chaque geste a une source, une scene, une tension ou une sortie.
```

Risques :

```text
style jazz plaque ;
imitation ;
percussion decorative ;
theorie implicite trop lourde ;
micro-gestes qui n'affectent pas la perception.
```

Decision :

```text
jazz/Keita est retenu comme intelligence de repartition et d'ecoute.
il peut guider l'interlocking, la ponctuation, la tension et la densite.
```

---

## 13. Motif watchdog AUT/REC/SIG

Statut :

```text
OBLIGATOIRE POUR TOUT MOTIF OU LIGNE.
```

Fonction :

```text
surveiller autonomie, reconnaissance, cliche, fonction, sortie et masquage.
```

Regles :

```text
AUT-5 jamais par defaut.
REC-4 implique signal, re-naturalisation ou retrait.
un motif hors scene doit etre bloque, retire ou signale.
un motif sans sortie est invalide.
un motif qui masque une source essentielle doit etre limite.
un motif qui bat P2 explicite est invalide.
```

SIG :

```text
SIG-1 si protection ou source essentielle ;
SIG-2 si motif limite, bloque, central, transgressif ou cliche ;
SIG-3 pour trace/diagnostic.
```

Decision :

```text
AUT/REC/SIG n'est pas une option de confort.
c'est la condition pour autoriser des motifs reconnaissables sans perdre
Vesperare.
```

---

## 14. Candidats lourds reportes

Statut :

```text
REPORTE VERS DETTE-ACT-6.
```

Familles :

```text
gen~ ;
poly~ ;
MC ;
buffer~/groove~ ;
js ;
externals/plugins ;
machine learning ;
FFT/pfft ;
convolution/corpus sonore ;
pattrstorage generation.
```

Condition d'ouverture :

```text
un role musical precis ;
un risque identifie ;
une criticite ;
un besoin que les familles simples ne couvrent pas ;
un mode de sortie ;
une signalisation si impact live.
```

Decision :

```text
ne pas ouvrir ces familles dans C comme moteurs par defaut.
elles restent dettes candidates si une fonction future les exige.
```

---

## 15. Application MIN-DID-PC

Le setup minimum doit pouvoir utiliser C sans accumulation de modules.

Noyau minimal candidat :

```text
source-derived triggers depuis didgeridoo ;
micro-pulse ou accent fantome ;
ligne de partiels ou centre ressenti ;
interlocking tres simple si scene l'autorise ;
retrait/mute immediat ;
AUT/REC/SIG ;
fallback silence / source seule.
```

Interdit :

```text
exiger voix, gong, tambour ou multiples generateurs pour que C fonctionne.
```

Decision :

```text
C doit rester scalable :
didgeridoo seul + PC ;
didgeridoo + gong ;
didgeridoo + voix ;
didgeridoo + peaux ;
full setup.
```

---

## 16. Interdictions transversales

Interdit :

```text
moteur generation autonome par defaut ;
motif sans fonction ;
motif sans sortie ;
style entier importe ;
pattern techno standard ;
pattern acid cliche ;
imitation Keita ;
jazz plaque ;
voix nue ou auto-tune reconnaissable ;
source live reduite a controleur ;
precision technique vendue comme sensation musicale ;
tests ou benchmarks comme remplacement de conception.
```

---

## 17. Decision de sortie

Le groupe C est stable comme audit de candidats.

Ce que l'audit C ajoute :

```text
les bases de temps sont candidates mais non finales ;
event clock et signal/audio clock sont separees ;
source-derived triggers sont centraux mais conditionnels ;
representation de motif est necessaire mais non choisie ;
variation/probabilite est bornee ;
interlocking est relation entre plans, pas style ;
acid naturalise est fonction de ligne/tension, pas 303 ;
voix fragmentaire est integree, pas nue ;
jazz/Keita est methode de micro-decision, pas couleur ;
AUT/REC/SIG devient obligatoire pour motifs et lignes ;
candidats lourds restent reportes vers DETTE-ACT-6.
```

Autorise ensuite :

```text
preparer le groupe D : generation timbrale, naturalisation, transformations
source/timbre, textures, resonances, grains, formants, bruit/friction,
sans moteur final ni patch.
```

N'autorise pas :

```text
implementation ;
patch final ;
UI finale ;
mapping final ;
moteur generation final ;
algorithme final ;
tests comme condition de conception.
```
