# AUDIT CANDIDATS GENERATION TIMBRALE NATURALISATION TRANSFORMATIONS MAX STANDALONE VESPERARE v0.1

Projet : Vesperare
Date : 2026-06-24
Statut : audit candidat D, non-implementation

Sources internes principales :

- `AUDIT_COMPATIBILITE_SPECIFICATION_PRE_AUDIT_CANDIDATS_GENERATION_TIMBRALE_NATURALISATION_TRANSFORMATIONS_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_PRE_AUDIT_CANDIDATS_GENERATION_TIMBRALE_NATURALISATION_TRANSFORMATIONS_VESPERARE_v0_1.md`
- `AUDIT_CANDIDATS_GENERATION_RYTHMIQUE_MOTIFS_TIMING_MAX_STANDALONE_VESPERARE_v0_1.md`
- `SPECIFICATION_BLOC_GENERATION_SONORE_MOTIFS_RYTHMIQUES_MELODIQUES_v0_1.md`
- `SPECIFICATION_GENERATION_FINE_PAR_GEN_ROLE_MAX_STANDALONE_VESPERARE_v0_1.md`
- `MATRICE_GEN_ROLE_SCENES_CONTROLES_LIVE_RISQUES_VESPERARE_v0_1.md`
- `SPECIFICATION_TECHNIQUE_CONCEPTUELLE_REVERB_SPACE_HALO_FREEZE_RESONATEURS_CONVOLUTION_MAX_STANDALONE_VESPERARE_v0_1.md`
- `SPECIFICATION_GRAVE_GONG_SUB_DIDGERIDOO_CONFLITS_ET_MODES_MAX_STANDALONE_VESPERARE_v0_1.md`
- `MATRICE_FONCTIONS_CRITICITE_LATENCE_CHEMINS_MAX_STANDALONE_VESPERARE_v0_1.md`
- `MATRICE_EXCLUSIONS_CANDIDATS_PAR_CRITICITE_ET_LATENCE_MAX_STANDALONE_VESPERARE_v0_1.md`
- `SPECIFICATION_LATENCE_SCHEDULER_VECTORS_AUDIO_SETTINGS_MAX_STANDALONE_VESPERARE_v0_1.md`
- `REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`

Sources externes consultees comme garde-fous :

- documentation officielle Cycling '74 : `gen~`, `pfft~`, polyphonie, MSP audio settings ;
- notions DSP reconnues : source-filter / formants, resonateurs, modeles modaux, FFT/STFT, convolution ;
- references electroacoustiques sur source-bonding et spectromorphologie, utilisees comme garde-fou perceptif, pas comme style a imiter.

But :

```text
auditer les familles candidates du groupe D :
naturalisation ;
source-bonding ;
source-filter / formants ;
friction / souffle / air ;
resonances / cavites ;
partiels / microtension ;
metal / gong / bloom ;
peau / bois / membrane ;
texture / grain ;
saturation / rugosite ;
halo-source ;
espace commun / proximite ;
spectral / FFT / pfft ;
convolution / corpus ;
ML / classification timbrale ;
supports Max lourds eventuels ;
sans moteur final, synthese finale, algorithme final, objet Max definitif,
UI, mapping ou patch.
```

Hors perimetre :

```text
choix final de synthese ;
choix final de moteur timbral ;
choix final d'objet Max ;
patch ;
UI ;
mapping ;
seuils ;
corpus sonore final ;
IR finale ;
entrainement ML ;
externals/plugins ;
benchmark ou test comme methode de conception.
```

---

## 1. Verdict general

Verdict :

```text
compatible avec statuts candidats conditionnels.
```

Decision :

```text
le groupe D peut etre conserve comme audit de familles candidates.
il ne choisit aucun moteur sonore final.
il donne des statuts et conditions pour que la generation timbrale reste :
musicalement necessaire ;
sourcee ou fonctionnellement lisible ;
naturalisee autrement que par simple reverb ;
compatible avec la latence ;
sortible en live ;
non electronique reconnaissable par defaut.
```

Decision negative :

```text
pas de synthese finale par defaut.
pas de moteur granulaire final.
pas de modele physique detaille par defaut.
pas de FFT/pfft, convolution, corpus, ML, externals ou plugins ouverts sans
fonction musicale precise.
pas de naturalisation cosmetique.
pas de texture decorative.
pas de PA-X accidentel.
pas de source acoustique reduite a un controleur.
```

Regle directrice :

```text
un son transforme est acceptable seulement si son appartenance perceptive est
declaree : source, cavite, geste, matiere, fonction de scene, espace, halo ou
transgression volontaire.
```

---

## 2. Tableau des statuts

| Famille candidate | Statut | CRIT | LPER / LAT | Autorise pour | Exclu / condition | Risque principal |
|---|---|---|---|---|---|---|
| Contrat `CANDIDAT-D` | OBLIGATOIRE | CRIT-2/3/4 | selon fonction | auditer toute matiere | non moteur final | timbre vague |
| Contrat NAT | OBLIGATOIRE | CRIT-2/3/4 | selon fonction | appartenance perceptive | pas simple reverb | naturalisation cosmetique |
| Source-bonding | OBLIGATOIRE si son ambigu | CRIT-2/3/4 | LPER-1/2/3 | relier source, geste, scene | source non reduite | masquage source |
| Source-filter / formants | ACCEPTE CANDIDAT NOYAU | CRIT-2/3 | LPER-1/2 | voix, didgeridoo, cavite, acid naturalise | pas caricature | vocal/cavite banal |
| Friction / souffle / air | ACCEPTE CANDIDAT NOYAU | CRIT-2/3 | LPER-1/2 | souffle, pression, proximite, turbulence | pas bruit blanc lisse | electronique audible |
| Resonance / cavite | ACCEPTE CONDITIONNEL | CRIT-2/3/4 | LPER-1/2/3 | tube, corps, bouche, espace court | controle feedback/ringing | effet special |
| Partiels / microtension | ACCEPTE CONDITIONNEL | CRIT-2/3/4 | LPER-1/2/3 | gong, didgeridoo, voix, metal, tension | conflit grave surveille | theorie plaquee |
| Metal / gong / bloom | ACCEPTE CONDITIONNEL FORT | CRIT-2/3/4 | LPER-2/3 | souffle grave, partiels, bloom | ne porte pas grave par accident | cloche decorative |
| Peau / bois / membrane | ACCEPTE CANDIDAT | CRIT-2/3 | LPER-1/2/3 | attaques, frottements, ponctuations | pas percussion illustrative | imitation plate |
| Texture / grain | ACCEPTE CONDITIONNEL | CRIT-3/4, CRIT-2 limite | LPER-2/3/5 | densite, seuil, polytexture, matiere | pas nappe decorative | pad / nuage passif |
| Saturation / rugosite | ACCEPTE CONDITIONNEL PA-X/PA-0 | CRIT-2/3/4 | LPER-1/2/3 | masse, rugissement, nudite, pression | decision explicite | distorsion banale |
| Halo-source | ACCEPTE INTERFACE | CRIT-3/4 | LPER-3/5 | trace, queue, memoire, souffle | HAL decide | halo force |
| Espace commun / proximite | ACCEPTE INTERFACE | CRIT-2/3/4 | LPER-1/3/5 | coller matieres, proche/immersif | SPC/REV decide | reverb comme cache-misere |
| Spectral / FFT / pfft | REPORTE LOURD | CRIT-3/4 | LPER-3/5 | freeze, resynthese, spectral rare | audit dedie | latence/artefact |
| Convolution / corpus | REPORTE LOURD | CRIT-3/4/OFFLINE | LPER-3/5/OFFLINE | empreinte, salle, matiere | audit dedie | dependance lourde |
| ML / classification timbrale | REPORTE / DIAG | CRIT-4/DIAG | LPER-5/DIAG | aide analyse, etiquetage | pas autorite live | opacite |
| `gen~`, polyphonie, MC, externals | SUPPORT REPORTE | selon fonction | selon fonction | implementation future possible | DETTE-ACT-6 | choix premature |

---

## 3. Contrat `CANDIDAT-D`

Statut :

```text
OBLIGATOIRE.
```

Raison :

```text
le contrat empeche de convertir un desir timbral en moteur abstrait ou en
effet reconnaissable non voulu.
```

Champs obligatoires :

```text
nom ;
famille ;
source ou absence de source ;
phenomene retenu ;
fonction Vesperare ;
GEN-ROLE ;
mode NAT ;
relation source ;
relation grave ;
relation espace / halo ;
timing / latence ;
criticite ;
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
candidat sans source ou fonction de scene si le son est ambigu ;
candidat sans sortie ;
candidat sans fallback s'il peut masquer source, grave ou retour ;
candidat qui remplace un choix artistique par une limitation CPU ;
candidat qui rend l'electronique reconnaissable par defaut.
```

---

## 4. Contrat NAT

Statut :

```text
OBLIGATOIRE.
```

Fonction utile :

```text
declarer par quoi un son appartient au monde Vesperare.
```

Modes recevables :

```text
NAT-SRC : source acoustique ;
NAT-CAV : cavite / tube / bouche / corps ;
NAT-FOR : formants ;
NAT-FRI : friction / souffle / air ;
NAT-MET : metal / gong / partiels ;
NAT-PEAU : peau / bois / membrane ;
NAT-ESP : espace commun / proximite ;
NAT-HAL : halo / queue / memoire ;
NAT-IRR : irregularite corporelle ;
NAT-HYB : hybridation source + artefact ;
NAT-FNC : fonction de scene explicite ;
NAT-PA-X : transgression volontaire.
```

Conditions :

```text
NAT doit etre declare avant de choisir un procede.
NAT peut etre cumulable.
NAT-ESP ou NAT-HAL ne suffit pas seul si la matiere reste electronique
reconnaissable sans intention.
NAT-PA-X doit etre decide, signale et sortible.
```

Decision Vesperare :

```text
NAT est un contrat de perception, pas une reverb.
```

---

## 5. Source-bonding

Statut :

```text
OBLIGATOIRE si la matiere est transformee, hybride, ambigue ou impossible.
```

Fonction utile :

```text
relier un son a une source, un geste, une cavite, une scene, une pression,
une trace ou une fonction musicale.
```

Autorise pour :

```text
didgeridoo transforme ;
voix integree ;
gong et metal ;
peaux / bois / membranes ;
acid naturalise ;
textures grain / halo-source ;
transgressions PA-X ;
matiere tres traitee longue.
```

Conditions :

```text
si la source acoustique est presente, elle doit pouvoir rester libre.
si la transformation masque la source, source priority, fallback ou SIG doivent
exister.
si le son est stable longtemps sans source evidente, il doit etre decide comme
matiere stable et rester sortible.
```

Interdit :

```text
didgeridoo, voix, gong ou peaux reduits a simples detecteurs.
artefact autonome sans source, scene ou fonction.
source-bonding utilise comme justification apres coup.
```

Decision Vesperare :

```text
source-bonding est un garde-fou de lisibilite perceptive.
il ne doit pas appauvrir l'independance des sources acoustiques.
```

---

## 6. Source-filter / formants

Statut :

```text
ACCEPTE CANDIDAT NOYAU.
```

Fonction utile :

```text
donner une appartenance bouche, tube, corps, voix, didgeridoo, cavite ou
instrument imaginaire naturalise a une matiere generee ou transformee.
```

Autorise pour :

```text
GEN-VOX ;
GEN-ACID-NAT ;
GEN-LIN ;
GEN-TEX ;
didgeridoo transforme ;
ligne melodique naturalisee ;
voix fragmentaire integree ;
cavites courtes ;
halo-source derive d'une source.
```

Conditions :

```text
formants comme indices de cavite, pas imitation vocale automatique.
relation grave surveillee si la cavite renforce le bas-medium ou les partiels
en conflit avec sub/didgeridoo.
controle live utile : intensite cavite, ouverture, source priority, retrait.
sortie obligatoire : neutre, source seule, off, transfert vers halo.
```

Auto-Pro autorise :

```text
limiter brillance caricaturale ;
retirer un formant qui masque source ou grave ;
adoucir une resonance dangereuse ;
signaler si une limitation change le caractere.
```

Auto-Pro interdit :

```text
pitch correction reconnaissable ;
auto-tune ;
lead synth banal ;
voix nue non integree ;
cavite cartoon ;
squelch 303 par defaut.
```

Decision Vesperare :

```text
source-filter/formants est une famille D centrale, car elle permet d'obtenir
des lignes et textures non electroniques reconnaissables sans les reduire a de
la reverb.
```

---

## 7. Friction / souffle / air

Statut :

```text
ACCEPTE CANDIDAT NOYAU.
```

Fonction utile :

```text
donner presence, proximite, pression, respiration, turbulence, attaque souple,
vie interne et trace corporelle.
```

Autorise pour :

```text
didgeridoo ;
voix ;
gong souffle grave ;
halo-source ;
textures ;
transitions ;
acid naturalise ;
proximite reverb/space ;
retour corporel prepare.
```

Conditions :

```text
le souffle doit avoir une fonction : pression, attaque, seuil, proximite,
fragilite, retour, matiere ou dissolution.
pas de bruit blanc lisse sans source.
pas de tapis aerien decoratif par defaut.
```

Chemin :

```text
CRIT-2 si joue ou source-reactif.
CRIT-3 si texture.
CRIT-4 si halo long ou atmosphere decidee.
```

Risques :

```text
brillance numerique ;
air constant qui gomme les attaques ;
ambient involontaire ;
masquage de voix ou didgeridoo ;
presence sans fonction.
```

Decision Vesperare :

```text
friction/souffle/air est un noyau timbral, mais il doit rester lie a source,
pression, espace, seuil ou fonction.
```

---

## 8. Resonance / cavite

Statut :

```text
ACCEPTE CONDITIONNEL.
```

Fonction utile :

```text
faire exister tube, corps, bouche, caisse, metal, salle courte ou volume
imaginaire sans rendre l'effet identifiable comme gadget.
```

Autorise pour :

```text
didgeridoo guide ;
adaptation harmonique ;
gong / metal ;
voix integree ;
peaux / membranes ;
acid naturalise ;
bloom ;
texture partielle ;
proximite ;
halo-source.
```

Conditions :

```text
resonance doit avoir source, fonction ou scene.
temps de ringing declare : court, medium, long.
relation au grave explicite.
retrait ou damping disponible.
SIG si resonance limite une source ou un porteur grave.
```

Latence / charge :

```text
la resonance simple n'implique pas necessairement une grande latence
algorithmique, mais elle cree une latence perceptive par son sustain.
ce sustain doit etre traite comme choix musical et non comme effet residuel.
```

Interdit :

```text
resonateur long sur chemin direct critique ;
resonance qui remplace le grave par accident ;
feedback non controle ;
effet special reconnaissable ;
cavite plaquee sans appartenance.
```

Decision Vesperare :

```text
resonance/cavite est admissible comme famille forte, mais conditionnelle a la
maitrise du sustain, du grave, de la source et de la sortie.
```

---

## 9. Partiels / microtension

Statut :

```text
ACCEPTE CONDITIONNEL.
```

Fonction utile :

```text
produire battements, tension, epaisseur, inharmonicite, micro-deviation,
complexite gong/didgeridoo/voix et sensation de matiere vivante.
```

Autorise pour :

```text
gong grave ;
didgeridoo harmonique ;
voix ;
metal ;
texture ;
bloom ;
transgression ;
retour corporel prepare ;
polytexture harmonique/spectrale.
```

Conditions :

```text
microtension doit etre reliee a une source ou a une fonction.
si elle structure la base harmonique, elle doit rester compatible avec le
porteur grave choisi.
si elle est transgressive, PA-X doit etre decide.
```

Risques :

```text
dissonance abstraite plaquee ;
flottement de hauteur qui affaiblit le grave ;
complexite qui cache le rythme ;
theorie microtonale au lieu de sensation ;
instabilite sans retour.
```

Decision Vesperare :

```text
partiels/microtension est une famille utile, mais elle ne doit pas devenir un
systeme harmonique autonome avant que la fonction grave, gong, didgeridoo et
scene soit claire.
```

---

## 10. Metal / gong / bloom

Statut :

```text
ACCEPTE CONDITIONNEL FORT.
```

Fonction utile :

```text
porter metal, souffle grave, base partielle, bloom, queue riche, masse
harmonique complexe et presence ceremonielle sans decor.
```

Autorise pour :

```text
gong grave ;
GEN-GRV ;
GEN-TEX ;
GEN-HAL-SOURCE ;
SPC-METAL-GONG ;
retour suspendu ;
pression spectrale ;
transgression ;
base microtonale ou harmonique decidee.
```

Conditions :

```text
distinguer :
1. gong comme source acoustique ;
2. metal comme timbre derive ;
3. bloom comme croissance ;
4. sub comme porteur grave ;
5. halo comme memoire ;
6. espace comme monde.
```

Relation grave :

```text
le gong peut guider, enrichir, concurrencer ou entourer le grave.
il ne doit pas prendre le role de porteur grave par accident.
si les partiels entrent en conflit avec sub/didgeridoo, le mode grave actif
doit arbitrer ou signaler.
```

Risques :

```text
cloche decorative ;
bol spirituel cliche ;
queue trop belle mais sans fonction ;
bloom qui avale le rythme ;
sub rendu flou ;
halo decide par la matiere.
```

Decision Vesperare :

```text
metal/gong/bloom est un candidat majeur, mais doit rester lie a grave, source,
scene et controle du temps de presence.
```

---

## 11. Peau / bois / membrane

Statut :

```text
ACCEPTE CANDIDAT.
```

Fonction utile :

```text
porter attaque, tactilite, ponctuation, tension seche nuancee, frottement,
relance et micro-decision percussive.
```

Autorise pour :

```text
tambour ;
inspirations Keita Ogawa ;
micro-ponctuations jazz ;
interlocking ;
matiere percussive non froide ;
texture d'attaque ;
transitions ;
source-derived triggers non reducteurs.
```

Conditions :

```text
ne pas detailler un style entier.
extraire les qualites demandees : precision, dessin, raffinement, attaque,
silence, relance, microvariation, tactilite.
ne pas transformer Keita/jazz en preset rythmique ou timbral.
```

Risques :

```text
percussion illustrative ;
batterie plaquee ;
kit reconnaissable ;
secheresse froide ;
ornement hors fonction ;
source reduite a trigger.
```

Decision Vesperare :

```text
peau/bois/membrane est candidat utile pour tactilite et ponctuation, surtout
quand il reste subtil, dessine et fonctionnel.
```

---

## 12. Texture / grain

Statut :

```text
ACCEPTE CONDITIONNEL.
```

Fonction utile :

```text
creer densite, seuils, polytexture, matiere, suspension, erosion, apparition,
dissolution, interlocking spectral et pression non exclusivement grave.
```

Autorise pour :

```text
GEN-TEX ;
GEN-HAL-SOURCE ;
GEN-VOX texture ;
transitions ;
techno suspendue longue ;
retour corporel prepare ;
matiere stable decidee ;
espace reactif ;
polytexture entre attaques et spectre.
```

Conditions :

```text
texture doit declarer :
source ou fonction ;
densite ;
role corporel ou spatial ;
temps de presence ;
sortie ;
relation au retour rythmique ;
relation a HAL si elle devient queue/memoire.
```

Granularite :

```text
le grain comme perception est accepte.
le moteur granulaire complexe est reporte tant que le besoin exact n'est pas
necessaire.
```

Risques :

```text
nappe decorative ;
ambient non decide ;
nuage qui gomme le rythme ;
matiere stable imposee ;
perte de source ;
electronique reconnaissable.
```

Decision Vesperare :

```text
texture/grain est admissible, mais doit rester une matiere fonctionnelle et
sortible, pas une atmosphere de remplissage.
```

---

## 13. Saturation / rugosite

Statut :

```text
ACCEPTE CONDITIONNEL PA-0 / PA-X.
```

Fonction utile :

```text
masse, rugissement, corps, nudite sonore, transgression, densite, pression,
presence et basculement.
```

Autorise pour :

```text
PA-X volontaire ;
GEN-TRG ;
didgeridoo traite decide ;
voix brute integree ;
gong / metal intense ;
sub riche ;
retour corporel fort ;
scene de masse ;
resolution ou rupture.
```

Conditions :

```text
saturation n'est pas une degradation autorisee.
elle doit etre une fonction musicale decidee.
elle doit avoir controle live, sortie, fallback et SIG si elle limite source,
grave, intelligibilite ou headroom.
```

Auto-Pro autorise :

```text
proteger headroom ;
limiter feedback ;
empecher destruction de source ;
signaler limitation audible ;
prevenir conflit grave critique.
```

Auto-Pro interdit :

```text
degrader pour economiser CPU ;
remplacer finesse par bruit ;
normaliser la rugosite ;
laisser PA-X surgir accidentellement ;
masquer une mauvaise naturalisation.
```

Decision Vesperare :

```text
saturation/rugosite est importante, mais seulement comme intensite ou
transgression volontaire, jamais comme sous-produit technique.
```

---

## 14. Halo-source

Statut :

```text
ACCEPTE INTERFACE.
```

Fonction utile :

```text
produire une matiere de trace, queue, memoire, souffle, grain ou empreinte que
le systeme HAL pourra accepter, maintenir, forcer, bypasser ou retirer.
```

Autorise pour :

```text
didgeridoo ;
voix ;
gong ;
peaux ;
metal ;
friction ;
techno suspendue ;
retour long ;
scene longue ;
espace decide.
```

Conditions :

```text
GEN-HAL-SOURCE fournit la matiere.
HAL decide la presence, la duree, le lock, le bypass, le retrait et le retour.
le controle live doit pouvoir empecher les automations de retirer le halo si le
musicien l'a decide.
```

Risques :

```text
generation qui decide le halo ;
queue longue subie ;
matiere qui remplit tout ;
retour corporel non prepare ;
confusion reverb/halo/texture.
```

Decision Vesperare :

```text
halo-source est recevable comme interface, pas comme autorite.
```

---

## 15. Espace commun / proximite

Statut :

```text
ACCEPTE INTERFACE.
```

Fonction utile :

```text
coller les matieres entre elles, donner proximite, immersion, coherence,
reaction de piece, distance, profondeur et appartenance commune.
```

Autorise pour :

```text
naturalisation NAT-ESP ;
reverbs de proximite ;
early reflections ;
room courte ;
espace reactif ;
source-bonding ;
integration virtualo-acoustique de voix ;
matiere proche ;
immersion club.
```

Conditions :

```text
D peut demander une appartenance spatiale.
SPC/REV decide les mondes spatiaux, reverbs, early/late, bypass, locks et
risques de masque.
NAT-ESP ne doit pas remplacer NAT-SRC/CAV/FOR/FRI quand la matiere elle-meme
reste electronique.
```

Risques :

```text
reverb comme camouflage ;
espace decoratif ;
proximite qui masque l'attaque ;
immersion sans corps ;
confusion avec halo long.
```

Decision Vesperare :

```text
espace commun/proximite est une interface D-SPC importante, mais pas une
solution universelle de naturalisation.
```

---

## 16. Spectral / FFT / pfft

Statut :

```text
REPORTE LOURD.
```

Fonction potentielle :

```text
freeze spectral ;
resynthese ;
filtrage spectral fin ;
cross-synthesis ;
transformation de source ;
traces impossibles ;
matiere stable decidee.
```

Conditions d'ouverture :

```text
fonction musicale precise ;
source ou scene precise ;
raison pour laquelle filtrage, resonateurs, formants, souffle ou texture simple
ne suffisent pas ;
latence compatible ;
fallback ;
sortie ;
SIG ;
audit dedie.
```

Ordres de grandeur conceptuels :

```text
une fenetre FFT de 512 samples a 48 kHz represente environ 10,7 ms de signal.
1024 samples representent environ 21,3 ms.
2048 samples representent environ 42,7 ms.
ces ordres de grandeur ne sont pas une latence finale, mais ils interdisent de
traiter le spectral comme chemin direct critique par defaut.
```

Interdit :

```text
FFT/pfft dans P0/P1 ;
spectral comme moteur par defaut ;
artefact numerique non decide ;
freeze qui devient halo force ;
complexite cachee dans le son.
```

Decision Vesperare :

```text
spectral/FFT/pfft reste possible, mais seulement comme famille lourde auditee
plus tard si une fonction Vesperare l'exige vraiment.
```

---

## 17. Convolution / corpus sonore

Statut :

```text
REPORTE LOURD.
```

Fonction potentielle :

```text
empreinte de salle ;
empreinte de source ;
matiere par reponse impulsionnelle ;
hybridation ;
naturalisation par corps ou lieu ;
analyse/preparation hors live.
```

Conditions d'ouverture :

```text
IR ou corpus utile a une fonction precise ;
relation claire a source, espace, halo ou naturalisation ;
preparation hors chemin critique ;
fallback simple ;
controle live de presence/retrait ;
audit dedie si dependance forte.
```

Interdit :

```text
convolution comme reverb automatique ;
corpus comme banque sonore cachee ;
dependance disque/chargement sur chemin critique ;
cross-synthesis non naturalise ;
empreinte qui remplace source ou scene.
```

Decision Vesperare :

```text
convolution/corpus peut devenir pertinent pour les reverbs, empreintes,
naturalisation ou matieres, mais reste reporte tant que le besoin exact n'est
pas indispensable.
```

---

## 18. ML / classification timbrale

Statut :

```text
REPORTE / DIAG SEULEMENT.
```

Fonction potentielle :

```text
aider a etiqueter une source ;
estimer un etat timbral ;
classer souffle, attaque, metal, voix, peau ;
fournir une confiance lente a un systeme de decision.
```

Conditions d'ouverture :

```text
usage non critique ;
confiance explicite ;
fallback sans ML ;
pas d'autorite directe sur P0/P1/P2 ;
SIG si incertitude affecte un choix visible ;
audit dedie avant integration.
```

Interdit :

```text
ML qui decide la musique ;
classification qui remplace l'ecoute ou le controle live ;
modele opaque en chemin critique ;
entrainement/corpus non audite ;
erreur classee comme intention.
```

Decision Vesperare :

```text
ML/classification ne doit pas entrer dans le noyau timbral actuel.
eventuellement plus tard comme diagnostic ou indice de confiance lent.
```

---

## 19. Supports Max lourds eventuels

Statut :

```text
SUPPORTS REPORTES, pas familles musicales.
```

Supports concernes :

```text
gen~ ;
poly~ ;
MC ;
buffer~/groove~/play~ ;
pfft~ ;
js/node/script ;
externals ;
plugins ;
corpus disque.
```

Regle :

```text
un support Max ne devient candidat que s'il sert une famille D deja acceptee
par fonction musicale.
```

Decision :

```text
ne pas choisir gen~, poly~, MC, pfft~, buffer ou external dans cette fiche.
les renvoyer a DETTE-ACT-6 ou a un audit technique dedie si une famille D les
rend necessaires.
```

Contrainte latence :

```text
les supports lourds doivent etre places hors CRIT-0/1 sauf audit contraire.
aucun support lourd ne doit etre indispensable au chemin direct didgeridoo,
grave critique, protection ou sortie safe.
```

---

## 20. Relations avec les GEN-ROLE

| GEN-ROLE | Familles D pertinentes | Conditions |
|---|---|---|
| GEN-GRV | metal/gong/bloom, partiels, resonance, souffle, saturation riche | distinguer porteur grave, timbre grave, halo et espace |
| GEN-TEX | texture/grain, partiels, friction, source-bonding, resonance | pas nappe decorative ; densite fonctionnelle |
| GEN-VOX | source-filter, formants, souffle, cavite, texture vocale | pas voix nue ; pas auto-tune ; integration virtualo-acoustique |
| GEN-LIN / acid naturalise | source-filter, cavite, friction, resonance courte, saturation decidee | pas TB-303/squelch par defaut ; pas lead banal |
| GEN-HAL-SOURCE | souffle, grain, metal, queue, trace, source-bonding | HAL decide presence et duree |
| GEN-TRG | saturation, rugosite, partiels, nudite, dissonance, masse | PA-X volontaire, sortible, signale |
| GEN-PERC / Keita-jazz | peau, bois, membrane, micro-attaque, silence, relance | pas style plaque ; extraire methode et tactilite |

---

## 21. Relations avec grave, didgeridoo, gong et voix

### 21.1. Didgeridoo

Regle :

```text
le didgeridoo peut etre libre, guide, transformable ou integrateur.
D ne doit pas decider son mode seul.
```

Options admissibles :

```text
didgeridoo guide harmoniquement la matiere ;
systeme s'adapte au didgeridoo ;
didgeridoo est transforme pour s'integrer ;
mode libre avec protections ;
source-filter / souffle / resonance derivee ;
source-bonding vers halo ou texture.
```

Risque :

```text
masquer le didgeridoo sous sa propre transformation.
```

### 21.2. Gong / grave

Regle :

```text
le gong peut produire base partielle, souffle, bloom, sub riche ou microtension,
mais le porteur grave reste decide par les modes grave.
```

Risque :

```text
confondre gong, sub, bloom, halo et espace.
```

### 21.3. Voix

Regle :

```text
la voix doit rester integree, virtualo-acoustique ou sonore.
pas de voix nue par defaut.
```

Risque :

```text
chanson involontaire, auto-tune, pitch correction, lead vocal banal.
```

### 21.4. Peaux / percussions

Regle :

```text
les peaux, bois et membranes servent tactilite, attaque, relance, micro-decision
et corps, pas imitation de style complet.
```

Risque :

```text
kit percussif plaque ou rythme qui prend autonomie hors fonction.
```

---

## 22. Criticite et latence

### 22.1. Chemins admissibles

```text
PATH-DIRECT :
source directe, protections minimales, pas de D lourd indispensable.

PATH-PLAY :
source-filter simple, friction, controls timbraux joues, saturation decidee
legere, resonances courtes avec fallback.

PATH-GEN :
textures, partiels, bloom, membranes, lignes naturalisees, source-bonding,
variations timbrales.

PATH-SLOW/HAL/SPC :
halo-source long, freeze, bloom long, convolution, spectral, corpus, analyse
lente.

PATH-DIAG/OFFLINE :
ML, mesure, classification, corpus, preparation.
```

### 22.2. Ordres de priorite

```text
1. source directe et safe restent prioritaires.
2. grave critique reste prioritaire.
3. controle live et retour corporel restent prioritaires.
4. D rapide peut jouer dans PATH-PLAY.
5. D generatif peut vivre dans PATH-GEN.
6. D lourd reste hors chemin critique.
```

### 22.3. Interdits latence

```text
pas de spectral, convolution, corpus, ML ou script comme condition d'un chemin
direct ou safe.
pas de ringing non controlable sur une source essentielle.
pas de texture longue qui retarde un retour rythmique si ce retour est decide.
pas de degradation sonore pour reduire la charge.
si une famille est lourde, changer son chemin ou son statut.
```

---

## 23. Criteres de rejet immediat

Rejeter un candidat D si :

```text
il naturalise seulement par reverb ;
il transforme un son en effet reconnaissable non decide ;
il n'a pas de source, scene ou fonction ;
il masque didgeridoo, voix, gong, grave ou peaux sans sortie ;
il impose une texture decorative ;
il rend PA-X accidentel ;
il suppose un moteur lourd sans fonction precise ;
il exige tests ou benchmarks pour savoir ce qu'il veut dire musicalement ;
il remplace une decision artistique par un choix d'objet Max ;
il fait dependre P0/P1 d'une analyse lente ;
il ne signale pas ses limitations live.
```

---

## 24. Criteres d'acceptation forte

Accepter fortement un candidat D si :

```text
il clarifie source ou appartenance ;
il sert une fonction GEN explicite ;
il enrichit la perception sans cliche electronique ;
il respecte source priority ;
il distingue timbre, espace, halo, grave et motif ;
il reste sortible ;
il a fallback ;
il ne compromet pas la latence critique ;
il permet des modes cumulables en live sans imposer un etat unique ;
il preserve le choix volontaire du musicien.
```

---

## 25. Questions restantes non bloquantes

### Q-AUD-D-1 - moteur timbral final

Statut :

```text
reporte vers DETTE-ACT-6.
```

Motif :

```text
l'audit D qualifie les familles, pas le moteur.
```

### Q-AUD-D-2 - niveau de modelisation physique

Statut :

```text
reporte.
```

Motif :

```text
tube, souffle, membrane, metal ou cavite peuvent inspirer des modeles, mais le
niveau de modelisation n'est pas encore necessaire.
```

### Q-AUD-D-3 - corpus sonore / banques / IR

Statut :

```text
reporte.
```

Motif :

```text
les corpus peuvent etre utiles, mais risquent de deplacer le projet vers une
banque sonore ou une dependance lourde.
```

### Q-AUD-D-4 - frontiere reverb / naturalisation

Statut :

```text
cadree, mais a surveiller dans les documents SPC/HAL/REV et architecture.
```

Motif :

```text
NAT-ESP est interface, pas solution universelle.
```

### Q-AUD-D-5 - sons tres transformes stables longtemps

Statut :

```text
autorises seulement si decides.
```

Motif :

```text
par defaut, une matiere transformee longue doit rester liee a source, action,
scene ou fonction. elle peut devenir matiere stable si le musicien le decide.
```

---

## 26. Decision de sortie

Verdict :

```text
DETTE-ACT-15 peut etre consideree comme absorbee par cet audit.
```

Autorise ensuite :

```text
mise a jour du registre, de la matrice de preuve et de l'index actif ;
puis reprise vers DETTE-ACT-6 si l'ordre logique exige l'audit des candidats
lourds / moteurs / supports Max ;
ou vers le prochain pre-audit fonctionnel si aucune famille lourde n'est encore
necessaire.
```

N'autorise toujours pas :

```text
synthese finale ;
moteur timbral final ;
algorithme final ;
objet Max definitif ;
FFT/pfft detaille ;
convolution detaillee ;
corpus sonore final ;
ML ;
externals/plugins ;
UI ;
mapping ;
patch ;
implementation.
```
