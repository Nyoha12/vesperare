# ARBITRAGE PROFIL LATENCE CONCEPTUEL ET PRIORISATION AUDITS CANDIDATS VESPERARE v0.1

Projet : Vesperare
Date : 2026-06-23
Statut : arbitrage conceptuel, non-implementation

Sources principales :

- `AUDIT_COMPATIBILITE_MATRICE_LATENCE_RESSENTIE_PAR_FONCTION_ET_CHEMIN_AVEC_CORPUS_v0_1.md`
- `MATRICE_LATENCE_RESSENTIE_PAR_FONCTION_ET_CHEMIN_MAX_STANDALONE_VESPERARE_v0_1.md`
- `SPECIFICATION_LATENCE_SCHEDULER_VECTORS_AUDIO_SETTINGS_MAX_STANDALONE_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_SPECIFICATION_LATENCE_SCHEDULER_VECTORS_AUDIO_SETTINGS_AVEC_CORPUS_v0_1.md`
- `MATRICE_EXCLUSIONS_CANDIDATS_PAR_CRITICITE_ET_LATENCE_MAX_STANDALONE_VESPERARE_v0_1.md`
- `REGISTRE_QUESTIONS_VIVANTES_ET_DETTES_ACTIVES_VESPERARE_v0_1.md`

But :

```text
trancher conceptuellement :
1. quel profil de latence sert de reference de conception ;
2. comment traiter 32, 64, 128 et 256 samples sans reglage final ;
3. quel ordre d'audits candidats lancer avant matrice d'objets plus prescriptive.
```

Hors perimetre :

```text
reglage final ;
interface audio finale ;
driver final ;
benchmark ;
test pratique ;
objet Max final ;
patch ;
routage final ;
UI ;
controleur ;
implementation.
```

---

## 1. Decision centrale

Decision :

```text
64 samples a 48 kHz devient le profil conceptuel principal de conception.
```

Statut :

```text
reference de conception, pas reglage final.
```

Raison :

```text
64 samples correspond au meilleur compromis conceptuel actuel entre presence
instrumentale, pression rythmique, stabilite probable et ambition Max standalone.
```

Interdit :

```text
utiliser "64 principal" comme promesse de performance.
utiliser "64 principal" pour retirer une fonction desiree.
```

---

## 2. Statut des profils

### 2.1. 32 samples

Statut :

```text
profil ambitieux.
```

Usage :

```text
viser si possible pour LPER-0 CONTACT, didgeridoo direct, retour joue tres
proche et sensation instrumentale maximale.
```

Regle :

```text
ne pas construire une architecture qui ne tient que si 32 samples est stable.
```

### 2.2. 64 samples

Statut :

```text
profil conceptuel principal.
```

Usage :

```text
reference pour dimensionner CRIT-0, CRIT-1, CRIT-2 et LPER-0/1/2.
```

Regle :

```text
les chemins directs et safe doivent etre penses pour rester propres a 64.
```

### 2.3. 128 samples

Statut :

```text
profil de robustesse prudente.
```

Usage autorise :

```text
LPER-2 si phase/groove restent coherents ;
LPER-3 si fonction non directe ;
LPER-4/5 si hors chemin critique ;
commande LPER-1 non instrumentale si signalable.
```

Usage interdit :

```text
accepter une transformation didgeridoo remplacant le direct comme "normale"
si elle devient decrochee ;
affaiblir P0/P1, grave critique, pression rythmique ou retour joue ;
retirer une fonction pour survivre a 128.
```

Regle :

```text
si 128 est necessaire, la reponse est architecture/fallback/placement,
pas appauvrissement musical.
```

### 2.4. 256 samples

Statut :

```text
exclu pour direct joue, retour immediat et pression rythmique critique.
```

Usage possible :

```text
LPER-4 lent ;
LPER-5 diagnostic/offline ;
preparation non critique ;
analyse non bloquante ;
render ou mesure hors jeu direct.
```

---

## 3. Reponses aux questions actives

### Q-LPER-1

Question :

```text
Faut-il declarer 64 samples comme profil conceptuel principal ?
```

Decision :

```text
oui.
```

Condition :

```text
non final, non garanti, non utilisable comme promesse.
```

### Q-LPER-2

Question :

```text
Quels chemins doivent survivre a 128 samples sans compromis, et lesquels
doivent exiger 32/64 ?
```

Decision :

```text
LPER-0 exige conception 32/64.
LPER-1 exige 32/64 sauf commandes non instrumentales signalables.
LPER-2 vise 64, peut survivre a 128 si phase/groove restent coherents.
LPER-3 peut accepter 64/128 selon fonction.
LPER-4/5 peuvent accepter 128+ hors chemin critique.
```

Interdit :

```text
"survivre a 128" ne veut jamais dire "degrader une fonction sensible".
```

### Q-LPER-3

Question :

```text
Quel groupe d'audits candidats vient d'abord : routage direct/safe ou
generation rythmique ?
```

Decision :

```text
routage direct/safe vient d'abord.
generation rythmique vient immediatement apres.
```

Raison :

```text
le direct/safe protege le systeme entier.
la generation rythmique depend de chemins fiables pour ne pas masquer le geste,
le grave et les retours.
```

### Q-LPER-4

Question :

```text
Faut-il une fiche de priorisation avant audits individuels ?
```

Decision :

```text
oui, cette fiche joue ce role.
```

---

## 4. Ordre des audits candidats

### Priorite A - Routage direct / safe / transitions critiques

Candidats :

```text
selector~ ;
gate~ ;
line~ ;
curve~ ;
matrix~ ;
send~/receive~ si necessaire ;
adc~/dac~ comme I/O conceptuel ;
adstatus comme diagnostic de configuration uniquement.
```

Pourquoi d'abord :

```text
conditionne recuperation directe, safe, P0/P1, retour joue, grave critique
et confiance corporelle.
```

Limite :

```text
ne pas choisir objets finaux.
auditer seulement conditions, risques, interdits, chemins et fallback.
```

### Priorite B - Commandes live / scheduler / signalisation

Candidats :

```text
route ;
select ;
trigger ;
messages Max ;
Overdrive ;
Scheduler in Audio Interrupt ;
SIG ;
pattr seulement hors critique.
```

Pourquoi ensuite :

```text
conditionne P2, modes, transgression, retour, lock/cut halo et feedback live.
```

Limite :

```text
ne pas definir UI, controleur ou mapping.
```

### Priorite C - Generation rythmique / motifs / acid naturalise / Keita

Candidats :

```text
metro ;
timer ;
function ;
table~ ;
buffer~ ;
play~ ;
groove~ ;
gen~ si necessaire ;
```

Pourquoi ensuite :

```text
pression rythmique, interlocking, motifs, techno, acid naturalise et retours
rythmiques sont stylistiquement centraux.
```

Limite :

```text
GEN-PACKET, PERM, DEC, release, naturalisation et risque PA-X obligatoires.
```

### Priorite D - Generation timbrale / polytexture / resonateurs

Candidats :

```text
gen~ ;
poly~ ;
MC ;
resonateurs ;
buffer~ ;
table~ ;
```

Pourquoi apres C :

```text
important pour richesse, microtonalite, voix transformee, gong modelise et
polytexture, mais moins urgent que direct/safe et pression rythmique.
```

### Priorite E - Reverb / espace / halo / freeze / convolution

Candidats :

```text
reverb family ;
delay network ;
convolution preparee ;
freeze ;
resonateurs spatiaux ;
mesure salle ;
```

Pourquoi apres direct/generation :

```text
musicalement important, mais principalement LPER-4 et hors chemin critique.
```

Limite :

```text
lock, release, sortie, P2 et non-blocage direct obligatoires.
```

### Priorite F - Etat / presets / diagnostics / scripts

Candidats :

```text
dict ;
coll ;
text ;
pattr ;
pattrstorage ;
js ;
logs ;
adstatus ;
vues.
```

Pourquoi plus tard :

```text
utile pour lisibilite, configuration, traces et organisation, mais dangereux
si transforme en owner, UI, preset autonome ou logique cachee.
```

---

## 5. Regle d'arbitrage pour tout audit futur

Un audit candidat futur doit repondre dans cet ordre :

```text
1. Quelle fonction musicale exacte ?
2. Quelle criticite CRIT ?
3. Quelle latence ressentie LPER ?
4. Quel chemin ?
5. Quel owner ?
6. Quelle release / rollback ?
7. Quel fallback MIN-DID-PC ?
8. Quel risque PA-X ou naturalisation ?
9. Quel risque de latence/jitter/CPU ?
10. Pourquoi ce candidat plutot qu'un candidat plus simple ?
```

Si une de ces reponses manque :

```text
le candidat reste non prescriptif.
```

---

## 6. Decision v0.1

Decision :

```text
64 samples est le profil conceptuel principal.
32 samples est le profil ambitieux.
128 samples est le profil de robustesse prudente, sans compromis.
256 samples est exclu des chemins directs et rythmiques critiques.
```

Ordre d'audits :

```text
A routage direct/safe/transitions ;
B commandes live/scheduler/signalisation ;
C generation rythmique/motifs ;
D generation timbrale/polytexture/resonateurs ;
E reverb/espace/halo/freeze ;
F etat/presets/diagnostics/scripts.
```

Cette fiche autorise ensuite :

```text
AUDIT_COMPATIBILITE_ARBITRAGE_PROFIL_LATENCE_CONCEPTUEL_ET_PRIORISATION_AUDITS_CANDIDATS_AVEC_CORPUS_v0_1.md
```

Elle n'autorise pas :

```text
reglage final ;
objet final ;
patch final ;
routage final ;
UI ;
controleur ;
benchmark ;
implementation.
```
