# SPECIFICATION GENERATION FINE PAR GEN ROLE MAX STANDALONE VESPERARE v0.1

Projet : Vesperare
Statut : specification generation fine par GEN-ROLE Max standalone
Date : 2026-06-23

Sources actives principales :

- `AUDIT_COMPATIBILITE_SPECIFICATION_TECHNIQUE_CONCEPTUELLE_REVERB_SPACE_HALO_FREEZE_RESONATEURS_CONVOLUTION_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_TECHNIQUE_CONCEPTUELLE_REVERB_SPACE_HALO_FREEZE_RESONATEURS_CONVOLUTION_MAX_STANDALONE_VESPERARE_v0_1.md`
- `MATRICE_ARCHITECTURE_MAX_STANDALONE_NIVEAU_6_ROLES_TECHNIQUES_CANDIDATS_CHEMINS_RISQUES_VESPERARE_v0_1.md`
- `BESOINS_GENERATION_v0_4.md`
- `BESOINS_STYLISTIQUES_v0_4.md`
- `CARACTERISATION_DETAILLEE_ELEMENTS_v0_4.md`
- `AUDIT_TRACABILITE_CAHIER_CHARGES_GENERATIF_STYLISTIQUE_v0_1.md`
- `DECISION_RUNTIME_MAX_STANDALONE_LATENCE_SANS_COMPROMIS_VESPERARE_v0_1.md`

But :

```text
specifier finement les roles generatifs de Vesperare par GEN-ROLE : pression,
pulse, contretemps, polyrythmie, interlocking, basse-motif, acid naturalisee,
ligne modale/microtonale, jazz/Keita, voix integree, texture bloom, retour,
silence, halo-source, sub/gong/breath et ligne guidee par didgeridoo, sans
choisir d'algorithme, objet Max final, syntaxe, seuil, preset ou patch final.
```

Hors perimetre :

```text
algorithmes definitifs ;
objets Max definitifs ;
syntaxe Max ;
seuils ;
buffers ;
mapping MIDI ;
controleur physique ;
UI finale ;
patch final ;
tests pratiques ;
benchmark ;
implementation.
```

---

## 1. Decision centrale

Decision :

```text
la generation Vesperare produit des fonctions musicales situees, pas des
patterns ou sons autonomes.
```

Chaque generation doit dire :

```text
GEN-ROLE ;
source ou origine ;
phenomene emprunte ;
fonction Vesperare ;
scene ou contexte ;
relation au didgeridoo ;
relation au grave ;
relation a l'espace ;
relation au halo ;
relation au corps ;
permission ;
autonomie ;
apparition ;
variation ;
sortie ;
risque ;
garde-fou ;
signalisation si necessaire.
```

Regles :

```text
GEN-PACKET obligatoire.
AUT-5 jamais par defaut.
REQUEST ne demarre jamais seul.
VARY reste dans le meme role musical.
motif reconnaissable possible si fonction et sortie existent.
electronique reconnaissable interdite par defaut, exception explicite seulement.
voix nue interdite par defaut : integration sonore ou virtualo-acoustique requise.
```

---

## 2. Contrat commun GEN-ROLE

Chaque `GEN-ROLE` doit declarer :

```text
role :
phenomene :
fonction principale :
fonctions secondaires :
sources possibles :
features utiles :
regime rythmique :
regime melodique / spectral :
regime spatial :
mode grave :
mode halo :
autonomie autorisee :
controle live :
Auto-Pro autorise :
Auto-Pro interdit :
apparition :
variation :
sortie :
risques :
interdits :
fallback MIN-DID-PC :
```

Statuts d'autonomie :

```text
AUT-0 Off.
AUT-1 Reponse.
AUT-2 Variation.
AUT-3 Proposition.
AUT-4 Maintien.
AUT-5 Autonomie forte, seulement scene ou choix live explicite.
AUT-X Interdite.
```

---

## 3. Hierarchie de decision

Priorites :

```text
P0 securite critique.
P1 protection mix vitale.
P2 choix live explicite.
P3 scene / passage.
P4 proposition musicale.
P5 stabilisation / coherence.
```

Regle :

```text
une generation peut proposer, soutenir, maintenir ou transformer.
elle ne peut pas imposer une forme contre P2/P3, sauf P0/P1.
```

---

## 4. `GEN-PULSE`

Phenomenes :

```text
pression rythmique ;
pulse explicite ou implicite ;
attaques didgeridoo ;
micro-pulse ;
sound system comme corps ;
cadre techno.
```

Fonction :

```text
orienter le corps sans forcement afficher une techno frontale.
```

Comportements autorises :

```text
pulse stable ;
pulse latent ;
densite d'attaques ;
respiration cyclique ;
accent rare ;
micro-variation ;
retour progressif du corps.
```

Interdits :

```text
grille mecanique evidente par defaut ;
kick techno banal impose ;
effacement du didgeridoo ;
pulse qui contredit un retrait decide.
```

Controle live :

```text
presence du pulse ;
degre explicite/latent ;
densite ;
retour ;
mute/retrait.
```

Fallback MIN-DID-PC :

```text
pulse simple derive de scene, geste ou didgeridoo, sans source optionnelle.
```

---

## 5. `GEN-COUNTERTIME`

Phenomenes :

```text
contretemps ;
trou ;
syncope de masse ;
attente ;
suspension active ;
dubstep trace sans style dubstep.
```

Fonction :

```text
creer tension corporelle par ce qui arrive, manque, retarde ou deplace.
```

Comportements autorises :

```text
accent fantome ;
absence attendue ;
contre-impact ;
retrait de pulse ;
micro-retard perceptif ;
pre-retour.
```

Interdits :

```text
effet de break generique ;
drop automatique ;
syncope comme gimmick ;
retour arbitraire.
```

Controle live :

```text
quantite de trou ;
force du pre-retour ;
rarete ;
autorisation de drop/anti-drop ;
sortie.
```

---

## 6. `GEN-POLYRHYTHM`

Phenomenes :

```text
plusieurs cycles ;
decalages ;
accents secondaires ;
plans rythmiques ;
tension entre periodicites.
```

Fonction :

```text
creer complexite corporelle lisible, pas demonstration.
```

Comportements autorises :

```text
deux ou trois couches lisibles ;
cycle stable contre cycle mouvant ;
accent principal conserve ;
dissonance metrique legere ;
dephasage lent ;
retour d'alignement.
```

Interdits :

```text
complexite illisible ;
accumulation de couches ;
perte de direction ;
style percussion complet importe.
```

Garde-fou :

```text
au moins une couche clarifie la direction perceptive.
```

---

## 7. `GEN-INTERLOCKING`

Phenomenes :

```text
attaques entrelacees ;
appels/reponses ;
tissage ;
plans ;
contrepoints ;
Keita Ogawa comme point de depart phenomenologique.
```

Fonction :

```text
faire sentir une intelligence rythmique organique entre couches.
```

Comportements autorises :

```text
micro-attaques complementaires ;
ornements utiles ;
contrepoints de timbre ;
reponses a didgeridoo ou percussion ;
deplacement d'accent ;
texture qui devient rythme.
```

Interdits :

```text
imiter Keita Ogawa ;
virtuosite percussive gratuite ;
pattern autonome hors scene ;
interlocking qui masque le corps principal.
```

Controle live :

```text
densite ;
nombre de couches ;
degre d'interlocking ;
avant-plan/arriere-plan ;
retour a simple pulse.
```

---

## 8. `GEN-BASS-MOTIF`

Phenomenes :

```text
basse-motif ;
centre grave ;
retour de masse ;
sub ponctuel non identifiable ;
sound system comme pression et confort.
```

Fonction :

```text
donner corps, poids, retour ou seuil sans imposer un timbre sub electronique.
```

Comportements autorises :

```text
basse discrete ;
motif grave court ;
centre ressenti ;
sub ponctuel ;
relation didgeridoo ;
relation gong ;
retrait si conflit deletere.
```

Modes GRV lies :

```text
GRV-M1 didgeridoo guide harmonique ;
GRV-M2 soutien discret ;
GRV-M4 retrait du grave genere ;
GRV-M5 graves libres ;
GRV-M7 sub ponctuel non identifiable.
```

Interdits :

```text
sub standard reconnaissable par defaut ;
grave qui masque didgeridoo ;
retrait automatique hors mode ;
grave libre sans choix.
```

---

## 9. `GEN-ACID-NAT`

Phenomenes :

```text
ligne vivante ;
torsion ;
resonance ;
glissement de formant ;
accent de resonance ;
ouverture/fermeture ;
rebond spectral.
```

Fonction :

```text
recuperer l'energie d'une ligne acid par matiere, timbre et mouvement, sans
reproduire TB-303, squelch ou pattern acid cliche.
```

Sources perceptives possibles :

```text
didgeridoo ;
voix/formant ;
tube/cavite ;
friction ;
partiel ;
grave ;
souffle ;
metal.
```

Comportements autorises :

```text
ligne courte ;
mutation timbrale ;
glissement non tempere ;
accent resonant ;
saut de registre ;
ligne presque melodique ;
disparition en souffle ou halo.
```

Interdits :

```text
squelch reconnaissable ;
pattern acid autonome ;
lead synth banal ;
acid house/acid techno comme style importe.
```

Controle live :

```text
degre d'acidite ;
degre de reconnaissance ;
source-bonding ;
mode cavite/souffle/metal ;
sortie vers halo ou silence.
```

---

## 10. `GEN-LINE-MODAL-MICRO`

Phenomenes :

```text
partiels ;
centres spectraux ;
microtonalite ;
battements ;
formants ;
tension / resolution ;
ligne non temperee.
```

Fonction :

```text
creer tension, couleur, guidage ou resolution sans demonstration de tuning.
```

Sources :

```text
didgeridoo ;
gong ;
voix ;
partiels generes ;
halo ;
basse-motif.
```

Comportements autorises :

```text
centre ressenti ;
ligne partielle ;
resolution retardee ;
tension microtonale ;
frottement doux ;
relation au grave ;
relation au halo.
```

Interdits :

```text
theorie plaquee ;
abstraction froide ;
melodie lead banale ;
correction de pitch reconnaissable.
```

---

## 11. `GEN-JAZZ-KEITA`

Phenomenes retenus :

```text
tension dynamique ;
subtilite d'accent ;
plans ;
reponses ;
deplacements ;
contrepoints ;
voicings comme frottement, pas accord plaque ;
resolution retardee ;
Keita Ogawa comme tissage et energie de jeu, pas style imite.
```

Fonction :

```text
apporter une intelligence de jeu, de tension et de ponctuation a l'interieur
d'un systeme techno-organique.
```

Comportements autorises :

```text
accent leger qui change la perception ;
ornement qui relance le corps ;
contrepoint discret ;
resolution courte ;
frottement spectral ;
call/response avec didgeridoo ou percussion ;
micro-suspension ;
deplacement de plan.
```

Interdits :

```text
accord jazz plaque ;
swing/walking bass par defaut ;
theorie jazz complete ;
imitation de Keita Ogawa ;
virtuosite comme spectacle.
```

Garde-fou :

```text
ce role doit rester une methode de subtilite, pas un genre musical.
```

---

## 12. `GEN-VOICE-INTEGRATED`

Phenomenes :

```text
souffle ;
consonne ;
voyelle ;
cri ;
murmure ;
fragment ;
appel ;
choeur spectral ;
voix etiree ;
voix transformee en halo.
```

Fonction :

```text
faire exister la voix comme presence, signal, matiere, rythme ou transgression
sans imposer chanson ni lead vocal.
```

Comportements autorises :

```text
voix exposee mais integree ;
voix brute ;
voix soufflee ;
voix criee ;
fragment presque chantable ;
voix lointaine integree ;
voix comme halo-source.
```

Interdits :

```text
voix nue par defaut ;
auto-tune reconnaissable ;
gimmick vocal ;
lead vocal banal ;
parole narrative imposee.
```

Naturalisation :

```text
source-filter ;
souffle ;
cavite ;
espace commun ;
halo ;
fonction de scene.
```

---

## 13. `GEN-TEXTURE-BLOOM`

Phenomenes :

```text
bloom ;
masse ;
matiere ;
gong ;
metal ;
souffle ;
rugissement ;
queue longue ;
croissance.
```

Fonction :

```text
ouvrir ou densifier une matiere sans tout transformer en nappe.
```

Comportements autorises :

```text
bloom grave ;
metal-gong ;
masse rugueuse ;
texture souffle ;
croissance lente ;
matiere de transition ;
support de suspension.
```

Interdits :

```text
nappe decorative ;
gong new age ;
masse qui efface attaque ou sub ;
transgression permanente.
```

---

## 14. `GEN-RETURN`

Phenomenes :

```text
retour de cadre ;
retour du grave ;
retour du corps ;
contraction de l'espace ;
densification d'attaques ;
alignement de couches ;
impact rare ;
resolution microtonale.
```

Fonction :

```text
preparer, retarder, fragmenter ou refuser le retour sans arbitraire.
```

Comportements autorises :

```text
pre-retour ;
faux retour ;
retour rare ;
retour progressif ;
retour par silence ;
retour par sub ;
retour par interlocking ;
retour par halo cut.
```

Interdits :

```text
drop automatique ;
retour impose par horloge ;
retour trop mecanique ;
retour sans preparation perceptible.
```

Garde-fou :

```text
la suspension tres longue est possible si la condition de maintien ou de sortie
reste decidee.
```

---

## 15. `GEN-SILENCE`

Phenomenes :

```text
retrait ;
vide ;
rarete ;
nudite sonore ;
attente ;
coupure ;
retour potentiel.
```

Fonction :

```text
faire du silence ou du retrait une decision musicale, pas une absence de donnees.
```

Comportements autorises :

```text
silence de tension ;
silence de clarification ;
halo cut ;
sub cut ;
source nue integree ;
vide decide ;
decor retire.
```

Interdits :

```text
silence subi par protection ;
mute non signale ;
perte de corps non decidee ;
absence de sortie.
```

---

## 16. `GEN-HAL-SOURCE`

Phenomenes :

```text
matiere destinee au halo ;
queue ;
memoire ;
freeze ;
trace ;
souffle ;
partiel ;
grain.
```

Fonction :

```text
produire une matiere qui peut nourrir HAL sans decider HAL.
```

Comportements autorises :

```text
trace de didgeridoo ;
trace de gong ;
trace de voix ;
matiere de freeze ;
halo source ;
grain de memoire ;
queue expressive.
```

Interdits :

```text
GEN-HAL qui lock HAL ;
GEN-HAL qui cut HAL ;
matiere persistante sans permission ;
pad generique.
```

Regle :

```text
GEN-HAL propose ou fournit. HAL autorise, maintient, force, coupe ou sort.
```

---

## 17. `GEN-SUB-GONG-BREATH`

Phenomenes :

```text
gong grave ;
souffle sub riche ;
partiels inharmoniques ;
battements ;
bloom ;
base microtonale ;
rugissement ;
pression sound system naturalisee.
```

Fonction :

```text
creer une sensation grave riche, precise et complexe sans brouiller le vrai sub.
```

Comportements autorises :

```text
bloom grave ;
pression ;
souffle grave ;
partiels bas-medium ;
base microtonale ;
gong comme seuil ;
gong comme retour ;
grave spatial Trace/Corps/Pression/Bloom/Libre selon choix.
```

Interdits :

```text
boue grave ;
gong decoratif ;
sub illisible ;
grave libre par defaut ;
masquage didgeridoo/gong/attaque.
```

Question liee :

```text
si ce role reste trop large, creer une fiche dediee grave spatial / gong / sub.
```

---

## 18. `GEN-DID-GUIDED-LINE`

Phenomenes :

```text
bourdon ;
partiels ;
formants ;
souffle ;
attaques langue/gorge ;
vocalisation ;
rugosite ;
stabilite ;
energie.
```

Fonction :

```text
permettre au didgeridoo de guider ou cohabiter avec la generation sans etre
reduit a une basse, un controleur ou un input technique.
```

Modes :

```text
DID-M1 systeme adapte au didgeridoo ;
DID-M2 didgeridoo adapte au systeme ;
DID-M3 libre protege.
```

Comportements autorises :

```text
ligne guidee par partiels ;
grave partage ;
acid naturalisee guidee ;
halo source ;
pression par attaques ;
adaptation harmonique optionnelle ;
retrait du grave genere ;
liberte protegee.
```

Interdits :

```text
forcer le didgeridoo en basse ;
ignorer le didgeridoo ;
masquer le didgeridoo ;
traiter le didgeridoo comme simple capteur ;
adapter automatiquement ses harmoniques sans mode explicite.
```

---

## 19. Superpositions autorisees

Superposition possible :

```text
GEN-PULSE + GEN-INTERLOCKING ;
GEN-POLYRHYTHM + GEN-JAZZ-KEITA ;
GEN-ACID-NAT + GEN-DID-GUIDED-LINE ;
GEN-BASS-MOTIF + GEN-SUB-GONG-BREATH ;
GEN-VOICE-INTEGRATED + GEN-HAL-SOURCE ;
GEN-TEXTURE-BLOOM + SPC/HAL ;
GEN-RETURN + GEN-SILENCE ;
GEN-LINE-MODAL-MICRO + GEN-SUB-GONG-BREATH.
```

Regle :

```text
une scene peut superposer les roles, mais doit nommer la fonction dominante,
les fonctions secondaires, les monopoles perceptifs, la sortie et le risque.
```

Monopoles a surveiller :

```text
vrai sub ;
articulation principale ;
brillant continu ;
halo long ;
transgression ;
retour de masse.
```

---

## 20. Controles live generatifs

Controles conceptuels :

```text
LIVE-GEN-ROLE        : role actif ou couche active.
LIVE-GEN-AUT         : autonomie AUT-0 a AUT-5.
LIVE-GEN-DENSITY     : densite.
LIVE-GEN-RECOGNIZE   : degre de reconnaissance motif/melodie.
LIVE-GEN-NAT         : naturalisation.
LIVE-GEN-GRAVE       : mode GRV.
LIVE-GEN-HAL         : relation au halo.
LIVE-GEN-SPC         : monde spatial.
LIVE-GEN-RETURN      : preparation ou refus du retour.
LIVE-GEN-TRANS       : transgression.
LIVE-GEN-MUTE        : retrait decide.
LIVE-GEN-SIGNAL      : raison de bridage/adaptation.
```

Ces controles ne sont pas une UI.

---

## 21. Risques generatifs

| Risque | Description | Garde-fou |
|---|---|---|
| `GEN-R1` | motif autonome | fonction + sortie |
| `GEN-R2` | style importe | phenomene precis |
| `GEN-R3` | electronique reconnaissable | naturalisation ou exception |
| `GEN-R4` | acid cliche | pas squelch/pattern acid |
| `GEN-R5` | jazz plaque | pas accord/swing/walking par defaut |
| `GEN-R6` | Keita imite | tissage, pas imitation |
| `GEN-R7` | voix lead/auto-tune | voix integree |
| `GEN-R8` | sub brouille | modes GRV + Auto-Pro |
| `GEN-R9` | gong decoratif | fonction bloom/seuil/partiels |
| `GEN-R10` | interlocking illisible | couche directrice |
| `GEN-R11` | suspension ambient subie | condition de maintien/sortie |
| `GEN-R12` | retour automatique | preparation perceptible |
| `GEN-R13` | didgeridoo ignore | mode DID explicite |
| `GEN-R14` | microtonalite theorique | tension/resolution/fonction |
| `GEN-R15` | halo source decide HAL | separation GEN-HAL/HAL |

---

## 22. Questions restantes

Questions a auditer :

1. Les roles `GEN-JAZZ-KEITA`, `GEN-POLYRHYTHM` et `GEN-INTERLOCKING` sont-ils assez differencies ?
2. `GEN-SUB-GONG-BREATH` doit-il declencher une fiche dediee grave/gong/sub ?
3. `GEN-ACID-NAT` est-il assez naturalise pour eviter TB-303 et lead banal ?
4. Les modes voix integree couvrent-ils assez voix brute, criee, soufflee et fragmentaire ?
5. `GEN-RETURN` doit-il etre relie plus fortement aux scenes longues ?
6. Les superpositions autorisees sont-elles assez claires sans devenir presets ?
7. Faut-il une matrice `GEN-ROLE -> SCENE -> LIVE CONTROL` ?
8. Quels roles peuvent etre prototypables en Max simple sans gen~, js, MC ou poly~ ?
9. Quels roles demandent une recherche externe ou academique supplementaire ?
10. Quel prochain bloc doit suivre : audit, scenes/macro-generation ou nomenclature de chemins ?

Questions hors perimetre :

```text
algorithmes ;
seuils ;
objets Max definitifs ;
syntaxe Max ;
controleur ;
UI finale ;
patch final ;
tests pratiques.
```

---

## 23. Decision v0.1

Decision :

```text
la generation fine par GEN-ROLE est specifiee comme couche fonctionnelle
avant toute traduction algorithmique ou patch Max.
```

Elle etablit :

```text
contrat commun GEN-ROLE ;
hierarchie de decision ;
roles pulse, contretemps, polyrythmie, interlocking, basse-motif, acid
naturalisee, ligne modale/microtonale, jazz/Keita, voix integree, texture
bloom, retour, silence, halo-source, sub/gong/breath et didgeridoo guided-line ;
superpositions autorisees ;
controles live conceptuels ;
risques generatifs ;
questions restantes.
```

Elle ne doit pas etre utilisee comme :

```text
algorithme ;
liste d'objets Max finaux ;
patch ;
preset de scene ;
UI ;
preuve de faisabilite ;
autorisation de compromis artistique.
```

Prochaine action recommandee :

```text
AUDIT_COMPATIBILITE_SPECIFICATION_GENERATION_FINE_PAR_GEN_ROLE_AVEC_CORPUS_v0_1
```
