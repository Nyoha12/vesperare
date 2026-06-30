# AUDIT COMPATIBILITE SPECIFICATION TECHNIQUE CONCEPTUELLE REVERB SPACE HALO FREEZE RESONATEURS CONVOLUTION AVEC CORPUS v0.1

Projet : Vesperare
Statut : audit compatibilite specification technique conceptuelle reverb / space / halo / freeze / resonateurs / convolution
Date : 2026-06-23

Sources actives principales :

- `SPECIFICATION_TECHNIQUE_CONCEPTUELLE_REVERB_SPACE_HALO_FREEZE_RESONATEURS_CONVOLUTION_MAX_STANDALONE_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_NIVEAU_6_ROLES_TECHNIQUES_CANDIDATS_CHEMINS_RISQUES_AVEC_CORPUS_v0_1.md`
- `MATRICE_ARCHITECTURE_MAX_STANDALONE_NIVEAU_6_ROLES_TECHNIQUES_CANDIDATS_CHEMINS_RISQUES_VESPERARE_v0_1.md`
- `REVERBS_ESPACE_REACTIF_v0_2.md`
- `BESOINS_GENERATION_v0_4.md`
- `DECISION_RUNTIME_MAX_STANDALONE_LATENCE_SANS_COMPROMIS_VESPERARE_v0_1.md`

But :

```text
verifier que la specification technique conceptuelle reverb/space/halo/freeze/
resonateurs/convolution reste compatible avec le corpus actif, qu'elle ne
choisit pas de reverb finale, ne fusionne pas SPC/HAL/GEN-HAL, ne rend pas la
mesure de salle autoritaire, ne menace pas MIN-DID-PC et ne cree pas de
compromis artistique automatique.
```

Hors perimetre :

```text
choix final de reverb ;
objet Max definitif ;
algorithme ;
IR ;
seuil ;
buffer ;
routage final ;
driver ;
interface audio ;
controleur ;
UI finale ;
test pratique ;
benchmark ;
implementation.
```

---

## 1. Verdict general

Verdict :

```text
compatible avec corrections de cadrage pour la suite.
```

La fiche est compatible parce qu'elle :

- definit un moteur spatial, pas une reverb unique ;
- garde `SPC`, `HAL` et `GEN-HAL` separes ;
- garde les familles de traitement comme candidates ;
- ne choisit ni reverb, ni algorithme, ni objet Max final ;
- maintient `MIN-DID-PC` sans dependance reverb lourde ;
- conserve Auto-Pro comme protection/coherence, pas composition ;
- preserve halo lock/force/cut comme choix live ou scene ;
- garde la mesure de salle comme information pratique ;
- protege didgeridoo, gong, voix, sub et attaques ;
- interdit les compromis artistiques automatiques.

Corrections requises :

```text
CORR-SPC-1 : garder les familles REV-* comme roles, pas objets ou modules finaux.
CORR-SPC-2 : auditer separement grave spatial / gong / sub si la fiche generation fine ne le couvre pas.
CORR-SPC-3 : definir plus tard une nomenclature de release pour espace, halo et freeze.
CORR-SPC-4 : garder la mesure de salle en MEAS-OFFLINE ou MEAS-DIAG au depart.
CORR-SPC-5 : traiter convolution, resonateurs, freeze et shimmer derive comme LATER jusqu'a justification musicale.
CORR-SPC-6 : toute reactivite REACT-2 a REACT-4 doit etre scene/live, pas defaut.
CORR-SPC-7 : tout controle live spatial doit etre hierarchise avant UI.
CORR-SPC-8 : tout mode grave Bloom/Libre doit avoir sortie et signalisation.
```

Ces corrections ne remettent pas en cause la fiche.

---

## 2. Compatibilite non-finalite

Verdict :

```text
compatible.
```

Compatibilite :

- les familles de traitement sont des roles ;
- les objets Max restent non choisis ;
- convolution, resonateurs, freeze, shimmer derive et traitements lourds restent a auditer ;
- la fiche ne definit aucun buffer, IR, seuil ou syntaxe.

Fragilite `FRAG-SPC-1` :

```text
les termes REV-EARLY, REV-LATE, REV-DIFFUSION peuvent etre lus comme modules
techniques.
```

Traitement :

```text
appliquer CORR-SPC-1 : ces noms restent des roles fonctionnels.
```

---

## 3. Compatibilite SPC / HAL / GEN-HAL

Verdict :

```text
compatible.
```

Compatibilite :

- `SPC` gere monde, distance, matiere, enveloppement et grave spatial ;
- `HAL` gere persistance, memoire, freeze, lock, force, cut, exit ;
- `GEN-HAL` produit matiere destinee au halo ;
- `GEN-HAL` ne decide pas le halo ;
- `HAL` ne remplace pas le monde spatial ;
- `SPC` ne genere pas automatiquement la matiere.

Point fort :

```text
les chemins PATH-SPC-SEND, PATH-HAL-SEND et PATH-GEN-HAL-SEND sont prolonges
par des sous-chemins conceptuels sans devenir bus finaux.
```

---

## 4. Compatibilite MIN-DID-PC

Verdict :

```text
compatible.
```

Compatibilite :

- `MIN-DID-PC` ne depend pas de convolution ;
- ne depend pas de freeze ;
- ne depend pas de mesure de salle ;
- ne depend pas de reverb complexe ;
- garde direct, safe, espace simple, protection et signalisation ;
- didgeridoo reste source libre ou integree selon mode.

Point de vigilance :

```text
`MIN-SPC-SIMPLE` doit rester possible avec un espace simple et stable.
```

Traitement :

```text
la future implementation devra prouver l'existence d'un mode spatial minimal,
mais cette preuve reste hors perimetre maintenant.
```

---

## 5. Compatibilite mondes spatiaux

Verdict :

```text
compatible.
```

La fiche couvre :

```text
SPC-SEC-PROTEGE ;
SPC-PROCHE-ENRICHI ;
SPC-COMMUN ;
SPC-SOUFFLE-AIR ;
SPC-CAVITE ;
SPC-METAL-GONG ;
SPC-IMMERSIF ;
SPC-IMMENSE ;
SPC-HORS-MONDE.
```

Compatibilite :

- les mondes restent combinables par dimensions ;
- ils ne sont pas presets exclusifs ;
- ils ne signifient pas empilement de reverbs completes ;
- ils gardent fonction, sortie, risque et fallback.

Fragilite `FRAG-SPC-2` :

```text
les mondes sont nombreux et peuvent devenir trop complexes pour le live.
```

Traitement :

```text
appliquer CORR-SPC-7 : future hierarchie UI avant controles physiques.
```

---

## 6. Compatibilite sources

Verdict :

```text
compatible.
```

Compatibilite :

- didgeridoo reste proche/commun/grave protege par defaut, avec exceptions ;
- gong a metal-gong/cavite/queue, avec Bloom/Freeze/Hors-monde possibles ;
- voix reste integree, pas nue par defaut ;
- acid naturalisee passe par cavite/source-bonding, pas squelch 303 ;
- artefact numerique demande source live, fonction ou PA-X ;
- sub reste sec/trace par defaut.

Point fort :

```text
les assignations par defaut sont des points de depart, pas des interdictions
d'exception.
```

---

## 7. Compatibilite grave spatial

Verdict :

```text
compatible avec vigilance.
```

Compatibilite :

- le vrai sub reste prioritaire ;
- Off/Trace peuvent etre defaut ;
- Corps/Pression/Bloom/Libre demandent decision plus forte ;
- gong peut ouvrir des exceptions ;
- didgeridoo peut guider, etre guide, rester libre ou etre protege.

Fragilite `FRAG-SPC-3` :

```text
SPC-GRAVE, GEN-SUB-GONG-BREATH, gong grave et didgeridoo grave sont fortement
lies. ils peuvent meriter une fiche specifique si la generation fine ne suffit
pas.
```

Traitement :

```text
appliquer CORR-SPC-2 si le prochain audit generation detecte une ambiguite.
```

---

## 8. Compatibilite freeze / halo

Verdict :

```text
compatible.
```

Compatibilite :

- freeze doit declarer source, fonction, monde, halo, duree, sortie et risque ;
- pad generique et freeze automatique sont interdits ;
- halo modes Auto/Lock/Force/Cut/Momentary/Safe force sont conserves ;
- P0/P1 restent prioritaires ;
- choix live gagne contre automation artistique.

Fragilite `FRAG-SPC-4` :

```text
les releases de freeze/halo/espace ne sont pas encore assez detaillees.
```

Traitement :

```text
appliquer CORR-SPC-3 avant tout patch final.
```

---

## 9. Compatibilite convolution / mesure

Verdict :

```text
compatible.
```

Compatibilite :

- convolution reste `LATER-CANDIDATE` ;
- IR finale non choisie ;
- mesure avec un seul micro reste information pratique ;
- mesure non requise pour `MIN-DID-PC` ;
- salle vide/salle pleine et limites sont reconnues ;
- mesure ne pilote pas brutalement l'esthetique.

Correction `CORR-SPC-4` :

```text
au depart, mesure doit rester MEAS-OFFLINE ou MEAS-DIAG.
MEAS-SCENE ne doit arriver qu'avec garde-fous.
```

---

## 10. Compatibilite reactivite / Auto-Pro

Verdict :

```text
compatible.
```

Compatibilite :

- REACT-0 peut etre par defaut ;
- REACT-1 peut etre discret ;
- REACT-2 a REACT-4 demandent scene/geste/live ;
- Auto-Pro protege decay, damping, grave, brillance, feedback, masque, headroom ;
- Auto-Pro ne decide pas monde expressif, freeze, shimmer, PA-X, retour ou mode grave Libre.

Correction `CORR-SPC-6` :

```text
REACT-2 a REACT-4 doivent rester scene/live.
```

---

## 11. Compatibilite naturalisation

Verdict :

```text
compatible.
```

Compatibilite :

- naturalisation n'est pas "cacher sous une reverb" ;
- acid naturalisee, voix, artefact, gong et didgeridoo ont des chemins perceptifs ;
- source live prioritaire quand pertinente ;
- fonction forte peut remplacer source claire si decidee ;
- PA-X reste exception volontaire.

Point de vigilance :

```text
naturalisation devra rester liee aux GEN-ROLE dans la future fiche generation.
```

---

## 12. Compatibilite controles live / signalisation

Verdict :

```text
compatible avec vigilance.
```

Compatibilite :

- monde, distance, enveloppement, matiere, queue, grave, halo, freeze, naturalisation et reactivite sont identifiables ;
- ces controles ne sont pas encore une UI ;
- signalisation des bridages est definie ;
- le systeme doit dire pourquoi il adapte ou coupe.

Fragilite `FRAG-SPC-5` :

```text
les controles conceptuels sont nombreux.
```

Traitement :

```text
future couche UI : prioriser monde, grave, halo, freeze, bypass, reactivite et signalisation.
```

---

## 13. Compatibilite latence sans compromis

Verdict :

```text
compatible.
```

Compatibilite :

- longs espaces, halo et convolution restent hors chemin critique ;
- direct et safe ne dependent pas de SPC/HAL ;
- traitements lourds restent LATER ;
- aucune degradation artistique automatique n'est autorisee ;
- charge/latence sont traitees par organisation de chemins, pas par appauvrissement musical.

Point fort :

```text
la fiche separe clairement direct, safe, SPC, HAL, GEN-HAL, DIAG et VIEW.
```

---

## 14. Questions restantes

Questions a garder :

1. Faut-il renommer `REV-*` en `ROLE-REV-*` pour eviter la lecture module ?
2. Faut-il une fiche dediee grave spatial / gong / sub avant generation fine ?
3. Faut-il une matrice de releases espace/halo/freeze ?
4. La mesure de salle doit-elle rester uniquement offline pendant toute la premiere version ?
5. Quel controle live minimal peut couvrir les nombreux modes sans surcharge ?
6. Quel ordre prioritaire entre reverb fine et generation fine par GEN-ROLE ?

Questions hors perimetre :

```text
seuils ;
buffers ;
IR ;
objets Max definitifs ;
driver ;
materiel ;
controleur ;
UI finale ;
patch final ;
benchmark ;
tests pratiques.
```

---

## 15. Verdict final

Verdict final :

```text
la specification technique conceptuelle reverb/space/halo/freeze/resonateurs/
convolution est compatible avec le corpus actif.
```

Elle peut etre utilisee comme :

```text
cadrage du moteur spatial Vesperare avant specification plus technique.
```

Elle ne doit pas etre utilisee comme :

```text
choix de reverb finale ;
architecture de patch ;
liste d'objets Max finaux ;
algorithme ;
UI ;
compromis artistique.
```

Prochaine action recommandee :

```text
SPECIFICATION_GENERATION_FINE_PAR_GEN_ROLE_MAX_STANDALONE_VESPERARE_v0_1
```

Raison :

```text
le bloc spatial est maintenant assez cadre conceptuellement. le prochain point
fragile est la generation fine par GEN-ROLE : jazz/Keita, interlocking,
polyrythmie, acid naturalisee, voix integree, sub/gong/didgeridoo, halo-source
et retour.
```
