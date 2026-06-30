# AUDIT CANDIDATS SUPPORTS STRUCTURELS LOURDS ETATS OPAQUES MAX STANDALONE VESPERARE v0.1

Projet : Vesperare
Date : 2026-06-24
Statut : audit candidat DETTE-ACT-19, non-implementation

Sources internes principales :

- `AUDIT_COMPATIBILITE_SPECIFICATION_PRE_AUDIT_CANDIDATS_LOURDS_SUPPORTS_MAX_MOTEURS_OPAQUES_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_PRE_AUDIT_CANDIDATS_LOURDS_SUPPORTS_MAX_MOTEURS_OPAQUES_VESPERARE_v0_1.md`
- `MATRICE_EXCLUSIONS_CANDIDATS_PAR_CRITICITE_ET_LATENCE_MAX_STANDALONE_VESPERARE_v0_1.md`
- `MATRICE_ARCHITECTURE_MAX_STANDALONE_NIVEAU_6_ROLES_TECHNIQUES_CANDIDATS_CHEMINS_RISQUES_VESPERARE_v0_1.md`
- `SPECIFICATION_ARCHITECTURE_MAX_STANDALONE_DETAILLEE_NIVEAU_5_OBJETS_MAX_CANDIDATS_NON_DEFINITIFS_VESPERARE_v0_1.md`
- `AUDIT_CANDIDATS_COMMANDES_LIVE_SCHEDULER_SIGNALISATION_MAX_STANDALONE_VESPERARE_v0_1.md`
- `AUDIT_CANDIDATS_GENERATION_RYTHMIQUE_MOTIFS_TIMING_MAX_STANDALONE_VESPERARE_v0_1.md`
- `AUDIT_CANDIDATS_GENERATION_TIMBRALE_NATURALISATION_TRANSFORMATIONS_MAX_STANDALONE_VESPERARE_v0_1.md`
- `SPECIFICATION_LATENCE_SCHEDULER_VECTORS_AUDIO_SETTINGS_MAX_STANDALONE_VESPERARE_v0_1.md`
- `REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`

But :

```text
auditer le premier groupe DETTE-ACT-6 :
gen~ comme support audio-rate potentiel ;
poly~ ;
MC ;
buffers/playback ;
js/node/scripts ;
pattrstorage/presets critiques ;
en tant que supports structurels et etats opaques, sans choisir moteur,
synthese, objet final, patch, UI ou mapping.
```

Hors perimetre :

```text
synthese finale ;
moteur sonore final ;
objet Max final ;
patch ;
UI ;
mapping ;
audit pfft~/FFT ;
audit convolution/corpus ;
audit ML ;
audit externals/plugins ;
benchmark ;
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
les supports structurels lourds peuvent etre conserves comme candidats de
future architecture, mais aucun ne devient moteur, objet final ou dependance
du noyau critique.
```

Decision negative :

```text
gen~ n'est pas moteur sonore global.
poly~ n'est pas solution automatique de polytexture.
MC n'est pas solution automatique de densite ou multicanal.
buffer/playback n'est pas banque sonore cachee.
js/node/scripts ne sont pas autorite musicale temps reel.
pattrstorage/presets ne sont pas memoire critique du geste.
```

Regle :

```text
un support structurel lourd est recevable seulement s'il declare :
fonction ;
chemin ;
criticite ;
etat ;
fallback ;
sortie ;
release ;
SIG ;
ce qu'il ne decide pas.
```

---

## 2. Tableau des statuts

| Candidat | Statut | Chemins autorises | Interdit par defaut | Fonction recevable | Risque principal |
|---|---|---|---|---|---|
| Contrat `STRUCT-SUPPORT` | OBLIGATOIRE | tous candidats lourds | aucun support sans contrat | cadrer role/support/etat | support vague |
| `gen~` comme support audio-rate | CONDITIONNEL / AUDIT INDIVIDUEL PLUS TARD SI CENTRAL | PATH-PLAY/GEN, CRIT-3, CRIT-2 limite | CRIT-0/1, moteur global | DSP local, resonateur, filtre, source-filter, enveloppe audio-rate | puissance prise pour besoin |
| `poly~` | CONDITIONNEL | PATH-GEN/PLAY, CRIT-3, CRIT-2 limite | CRIT-0/1, MIN-DID-PC obligatoire | voix multiples, instances, polytexture structuree | etats de voix opaques |
| MC | CONDITIONNEL | PATH-GEN/SPC, CRIT-3/4, CRIT-2 limite | CRIT-0/1, densite vitale | couches, canaux, ensembles, espace | densite illisible |
| `buffer~` / playback | CONDITIONNEL | PATH-GEN/SLOW/OFFLINE, CRIT-3/4, CRIT-2 limite | source indispensable directe | traces, corpus, grains, playback prepare | sample cache |
| `js` / node / scripts | REPORTE HORS CRITIQUE | DIAG/SLOW/OFFLINE | audio critique, safe, direct, geste immediat | outils, config, logique lente, export, preparation | logique opaque |
| `pattrstorage` / presets critiques | REPORTE ETAT LENT | SETUP/SLOW/SCENE non critique | P0/P1/P2 immediat, source du geste | snapshots, recalls, scenes preparees | scene qui joue a ta place |

---

## 3. Contrat `STRUCT-SUPPORT`

Statut :

```text
OBLIGATOIRE.
```

Champs obligatoires :

```text
nom ;
type de support ;
fonction Vesperare ;
owner ;
chemin ;
criticite ;
latence ;
charge ;
etat interne ;
memoire ;
prechargement ;
commande live ;
release ;
rollback si necessaire ;
fallback MIN-DID-PC ;
SIG ;
interdits ;
questions reportees.
```

Owner possibles :

```text
GEN ;
SPC ;
HAL ;
REV ;
GRV ;
DID ;
MIX ;
STATE ;
DIAG ;
OFFLINE.
```

Interdit :

```text
support sans owner ;
support sans sortie ;
support qui cache un moteur ;
support qui cree un etat non signalable ;
support qui rend impossible le mode MIN-DID-PC ;
support qui conditionne direct/safe sans audit dedie.
```

---

## 4. `gen~` comme support audio-rate potentiel

Statut :

```text
CONDITIONNEL / AUDIT INDIVIDUEL PLUS TARD SI CENTRAL.
```

Fonctions recevables :

```text
DSP local compact ;
source-filter audio-rate ;
resonateur simple ;
filtrage ou modulation audio-rate ;
enveloppe ou rampe precise ;
traitement timbral local ;
support pour modele physique simplifie plus tard.
```

Non-fonctions :

```text
moteur sonore global ;
solution magique de latence ;
preuve de professionnalisme ;
remplacement de l'intention musicale ;
condition du chemin direct.
```

Chemins :

```text
CRIT-0 : exclu sauf audit direct dedie futur.
CRIT-1 : exclu sauf audit protection dedie futur.
CRIT-2 : conditionnel si controle live clair et fallback.
CRIT-3 : candidat recevable.
CRIT-4 : recevable si non critique.
```

Conditions :

```text
fonction musicale declaree ;
raison audio-rate explicite ;
alternative simple comparee ;
fallback non-gen~ ;
mode off ;
SIG si limitation ou bypass audible ;
pas d'etat cache non lisible.
```

Risques :

```text
complexite DSP trop tot ;
puissance prise pour besoin ;
maintenance difficile ;
debug opaque ;
latence faible supposee mais charge elevee ;
son electronique reconnaissable si le traitement devient moteur.
```

Decision Vesperare :

```text
gen~ reste candidat de support, pas decision de moteur.
un audit dedie ne sera justifie que si une fonction audio-rate precise ne peut
pas etre tenue par les familles simples deja auditees.
```

---

## 5. `poly~`

Statut :

```text
CONDITIONNEL.
```

Fonctions recevables :

```text
voix multiples ;
instances independantes ;
polytexture structuree ;
gestion de couches generatives ;
separation de sources ou roles ;
allocation de traitements non critiques.
```

Non-fonctions :

```text
denseur automatique ;
moteur de polytexture par defaut ;
solution de performance sans cout ;
condition de MIN-DID-PC ;
condition de direct/safe.
```

Chemins :

```text
CRIT-0 : exclu.
CRIT-1 : exclu.
CRIT-2 : conditionnel later si controle live et fallback.
CRIT-3 : candidat.
CRIT-4 : candidat ou setup.
```

Conditions :

```text
nombre de voix non final mais borne conceptuellement ;
etat des voix lisible ;
voice stealing ou equivalents traites comme risque musical ;
release par voix ;
fallback vers une version monophonique/simple ;
SIG si reduction de voix ou bypass change la scene.
```

Risques :

```text
etat opaque ;
voix qui restent actives ;
density creep ;
charge non visible ;
motifs autonomes par voix ;
polytexture illisible ;
source masquee par couches.
```

Decision Vesperare :

```text
poly~ est candidat structurel pour voix/couches, pas solution par defaut.
il doit rester apres la definition musicale des couches, pas avant.
```

---

## 6. MC

Statut :

```text
CONDITIONNEL.
```

Fonctions recevables :

```text
couches multiples ;
ensembles de signaux similaires ;
polytexture organisee ;
spatialisation ou familles de canaux ;
variations paralleles ;
traitements groupables.
```

Non-fonctions :

```text
multicanal comme prestige ;
densite automatique ;
solution d'espace par defaut ;
remplacement de SPC/HAL/REV ;
condition de MIN-DID-PC.
```

Chemins :

```text
CRIT-0 : exclu.
CRIT-1 : exclu.
CRIT-2 : conditionnel later.
CRIT-3 : candidat.
CRIT-4 : candidat, surtout SPC/SLOW/DIAG.
```

Conditions :

```text
nombre de canaux/couches justifie musicalement ;
owner declare ;
downmix ou fallback simple ;
lisibilite des canaux ;
sortie globale ;
SIG si densite reduite ou repliee.
```

Risques :

```text
densite opaque ;
routage cache ;
charge masquee ;
perte de lisibilite corporelle ;
espace qui remplace la source ;
debug difficile.
```

Decision Vesperare :

```text
MC est candidat pour organiser des ensembles, pas pour imposer un systeme
complexe.
```

---

## 7. `buffer~` / playback / boucles

Statut :

```text
CONDITIONNEL.
```

Fonctions recevables :

```text
traces de source ;
corpus prepare ;
grains ;
memoire sonore ;
playback non critique ;
empreintes ;
matiere de halo-source ;
source preparee ou offline.
```

Non-fonctions :

```text
banque sonore cachee ;
source indispensable du direct ;
sample reconnaissable non decide ;
boucle qui joue a la place du systeme ;
solution de generation par defaut.
```

Chemins :

```text
CRIT-0 : exclu comme indispensable.
CRIT-1 : exclu comme indispensable.
CRIT-2 : conditionnel si precharge, sortible, fallback.
CRIT-3 : candidat.
CRIT-4 : candidat/offline.
```

Conditions :

```text
prechargement si live ;
absence de dependance disque critique ;
source ou fonction declaree ;
release de boucle ;
mode clear/off ;
fallback sans buffer ;
SIG si playback manque, est reduit ou remplace.
```

Risques :

```text
sample trop reconnaissable ;
corpus qui impose style ;
boucle non sortible ;
etat memoire invisible ;
latence de chargement ;
dependance fichier ;
halo-source qui devient halo sans permission.
```

Decision Vesperare :

```text
buffers/playback sont recevables comme supports de traces ou matieres, mais pas
comme banque cachee ni source critique.
```

---

## 8. `js` / node / scripts

Statut :

```text
REPORTE HORS CRITIQUE.
```

Fonctions recevables :

```text
outils de preparation ;
configuration ;
conversion de donnees ;
diagnostic ;
export ;
vues ;
organisation lente ;
assistant de conception hors audio critique.
```

Non-fonctions :

```text
autorite musicale temps reel ;
protection ;
direct ;
safe ;
retour joue immediat ;
decision PA-X ;
decision grave critique ;
source priority vitale.
```

Chemins :

```text
CRIT-0 : exclu.
CRIT-1 : exclu.
CRIT-2 : exclu sur geste immediat.
CRIT-3 : conditionnel prototype/lent.
CRIT-4 : autorise DIAG/OFFLINE/SETUP.
```

Conditions :

```text
non bloquant ;
desactivable ;
pas d'autorite audio ;
fallback sans script ;
etat produit lisible ;
SIG si un script indisponible limite une fonction non critique.
```

Risques :

```text
logique cachee ;
etat invisible ;
dependance runtime ;
latence scheduler ;
debug difficile ;
decision devenue opaque ;
glissement vers application logic au lieu de patch jouable.
```

Decision Vesperare :

```text
scripts restent outils lents ou diagnostics.
ils ne doivent pas entrer dans le coeur du geste live.
```

---

## 9. `pattrstorage` / presets critiques

Statut :

```text
REPORTE ETAT LENT.
```

Fonctions recevables :

```text
snapshots ;
recalls ;
preparation de scenes ;
morphings non critiques ;
memoire de configurations ;
archive ;
setup.
```

Non-fonctions :

```text
memoire critique du geste ;
protection ;
direct ;
safe ;
source unique d'un etat live ;
scene qui joue a la place du musicien ;
rollback cache.
```

Chemins :

```text
CRIT-0 : exclu.
CRIT-1 : exclu.
CRIT-2 : exclu comme condition immediate.
CRIT-3 : conditionnel lent.
CRIT-4 : autorise setup/scene non critique.
```

Conditions :

```text
etat lisible ;
recall non vital ;
rollback ou retour manuel ;
pas de morphing cache ;
mode manuel prioritaire ;
SIG si recall partiel, limite ou echoue.
```

Risques :

```text
etat magique ;
scene imposee ;
morphing qui compose ;
recall non jouable ;
perte de controle live ;
dependance a preset ;
desynchronisation entre son et etat affiche.
```

Decision Vesperare :

```text
pattrstorage/presets restent hors critique.
ils pourront aider plus tard la preparation ou les scenes, mais ne doivent pas
devenir fondation du live.
```

---

## 10. Elements associes non ouverts

Non ouverts ici :

```text
dict ;
coll ;
text ;
table~ ;
function ;
transport ;
externals ;
plugins ;
pfft~ ;
convolution ;
ML ;
Markov/grammaire/statistique.
```

Motif :

```text
soit ils sont deja traites ailleurs comme candidats simples,
soit ils appartiennent a un audit suivant,
soit ils restent diagnostics / offline.
```

Garde-fou :

```text
ne pas utiliser "etat opaque" pour rouvrir tous les objets de stockage.
```

---

## 11. Implications MIN-DID-PC

Decision :

```text
MIN-DID-PC ne depend d'aucun candidat de ce groupe.
```

MIN-DID-PC peut survivre sans :

```text
gen~ ;
poly~ ;
MC ;
buffer/playback ;
js/node/scripts ;
pattrstorage/presets critiques.
```

Condition pour future activation :

```text
chaque candidat devra proposer un fallback MIN-DID-PC :
off ;
version simple ;
source directe ;
mono/couche unique ;
sans buffer ;
sans preset ;
sans script.
```

---

## 12. Implications latence / charge

Decision :

```text
ces supports ne sont pas des optimisations garanties.
ils peuvent ameliorer une structure future, mais aussi creer charge, etat et
opacite.
```

Regles :

```text
pas de support lourd dans P0/P1 par defaut ;
pas de script sur geste immediat ;
pas de buffer disque critique ;
pas de polyphonie non bornee ;
pas de MC sans downmix/fallback ;
pas de preset comme condition de protection.
```

---

## 13. Decision de sortie

Verdict :

```text
DETTE-ACT-19 peut etre consideree comme absorbee par cet audit.
```

Autorise ensuite :

```text
AUDIT_CANDIDATS_TRANSFORMATIONS_LOURDES_SPECTRAL_GRANULARITE_MODELES_PHYSIQUES_MAX_STANDALONE_VESPERARE_v0_1.md
```

But de la prochaine fiche :

```text
auditer le second groupe DETTE-ACT-6 :
pfft~/FFT/spectral ;
granularite complexe ;
modeles physiques detailles ;
en tant que transformations lourdes et familles de matiere, sans choisir moteur,
synthese finale, objet final, patch, UI ou mapping.
```

N'autorise pas :

```text
choix final gen~ ;
choix final poly~ ;
choix final MC ;
choix final buffer/playback ;
choix final scripts ;
choix final pattrstorage ;
audit convolution/corpus ;
audit ML ;
audit externals/plugins ;
patch ;
UI ;
mapping ;
implementation.
```
