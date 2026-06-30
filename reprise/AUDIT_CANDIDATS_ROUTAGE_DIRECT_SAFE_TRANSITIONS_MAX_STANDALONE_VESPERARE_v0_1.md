# AUDIT CANDIDATS ROUTAGE DIRECT SAFE TRANSITIONS MAX STANDALONE VESPERARE v0.1

Projet : Vesperare
Date : 2026-06-23
Statut : audit candidat A, non-implementation

Sources principales :

- `AUDIT_COMPATIBILITE_SPECIFICATION_PRE_AUDIT_CANDIDATS_ROUTAGE_DIRECT_SAFE_TRANSITIONS_AVEC_CORPUS_v0_1.md`
- `SPECIFICATION_PRE_AUDIT_CANDIDATS_ROUTAGE_DIRECT_SAFE_TRANSITIONS_VESPERARE_v0_1.md`
- `ARBITRAGE_PROFIL_LATENCE_CONCEPTUEL_ET_PRIORISATION_AUDITS_CANDIDATS_VESPERARE_v0_1.md`
- `MATRICE_LATENCE_RESSENTIE_PAR_FONCTION_ET_CHEMIN_MAX_STANDALONE_VESPERARE_v0_1.md`
- `MATRICE_EXCLUSIONS_CANDIDATS_PAR_CRITICITE_ET_LATENCE_MAX_STANDALONE_VESPERARE_v0_1.md`
- `SPECIFICATION_CONTRAINTES_TRADUCTION_MAX_CONCRETE_NON_IMPLEMENTATION_VESPERARE_v0_1.md`

But :

```text
auditer les candidats du groupe A :
routage direct ;
safe ;
transitions ;
fallback ;
signalisation ;
rollback ;
routage cache ;
sans choisir d'objet final ni definir le patch.
```

Hors perimetre :

```text
objet final ;
patch final ;
routage final ;
send/receive final ;
matrix finale ;
seuil ;
UI ;
controleur ;
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
le groupe A peut rester en un seul audit avec sous-sections.
matrix~ et send~/receive~ doivent rester separes analytiquement et
conditionnels.
adc~/dac~ sont reserves a une future fiche I/O dediee.
gain staging reste risque obligatoire dans ce groupe, pas audit complet.
```

---

## 2. Statuts retenus

| Candidat | Statut | CRIT | LPER | Autorise pour | Exclu / condition | Risque principal |
|---|---|---|---|---|---|---|
| Routage MSP simple | ACCEPTE CANDIDAT | CRIT-0/1/2 | LPER-0/1 | direct, safe, fallback | non final | complexite cachee si multiplie |
| `selector~` | ACCEPTE CANDIDAT CONDITIONNEL | CRIT-0/1/2 | LPER-0/1 | selection direct/safe | audit clicks/etat | cut abrupt |
| `gate~` | ACCEPTE CANDIDAT CONDITIONNEL | CRIT-0/1/2 | LPER-0/1 | ouverture/fermeture simple | audit clicks/etat | mute brutal |
| `line~` | ACCEPTE CANDIDAT CONDITIONNEL | CRIT-0/1/2/3 | LPER-0/1/2/3 | rampes courtes, transitions | ne retarde pas protection | fade trop lent |
| `curve~` | CONDITIONNEL | CRIT-1/2/3 | LPER-1/2/3 | transitions expressives ou scene | pas safe critique sans justification | courbe qui compose |
| `matrix~` | CONDITIONNEL / EXCLU DU DIRECT PAR DEFAUT | CRIT-2/3/4, CRIT-0/1 seulement si audit dedie | LPER-1/2/3 | routages complexes lisibles | audit carte chemins obligatoire | routage opaque |
| `send~` / `receive~` | CONDITIONNEL / EXCLU DU DIRECT CRITIQUE PAR DEFAUT | CRIT-2/3/4 | LPER-1/2/3/5 | envois non critiques, espace, diag | nommage strict + fallback local | chemin cache |
| Fallback direct | OBLIGATOIRE | CRIT-0 | LPER-0 | recuperation | doit survivre aux modules lents | absent/invisible |
| Fallback safe | OBLIGATOIRE | CRIT-1 | LPER-0/1 | P0/P1, grave critique | ne compose pas | retrait artistique |
| SIG-0/SIG-1 | OBLIGATOIRE SI IMPACT | CRIT-0/1 | LPER-1/5 | informer jouabilite/protection | pas UI finale | signal absent |

---

## 3. Candidat par candidat

### 3.1. Routage MSP simple

Statut :

```text
ACCEPTE CANDIDAT.
```

Raison :

```text
meilleure base conceptuelle pour direct, safe, fallback et lisibilite.
```

Conditions :

```text
chemin nommable ;
peu de dependances ;
fallback local ;
pas d'etat lent requis ;
pas de UI requise ;
pas de diagnostic requis.
```

Interdits :

```text
le multiplier au point de devenir illisible ;
le transformer en patch final.
```

### 3.2. `selector~`

Statut :

```text
ACCEPTE CANDIDAT CONDITIONNEL.
```

Raison :

```text
candidat pertinent pour choisir entre chemins audibles sans imposer une matrice
complexe.
```

Conditions :

```text
etat actuel lisible ;
transition sans click ou avec rampe ;
fallback direct/safe clair ;
pas d'UI comme condition.
```

Interdits :

```text
selection opaque ;
selection commandee par diagnostic lent ;
rollback silencieux.
```

### 3.3. `gate~`

Statut :

```text
ACCEPTE CANDIDAT CONDITIONNEL.
```

Raison :

```text
candidat pertinent pour ouvrir/fermer un chemin simple.
```

Conditions :

```text
rampe si risque de click ;
etat lisible ;
safe prioritaire ;
signal si fermeture affecte P2.
```

Interdits :

```text
mute brutal non justifie ;
gate cache dans un chemin direct critique ;
gate commande par UI seule.
```

### 3.4. `line~`

Statut :

```text
ACCEPTE CANDIDAT CONDITIONNEL.
```

Raison :

```text
candidat simple pour eviter clicks, faire transition courte ou proteger une
sortie.
```

Conditions :

```text
duree non finale ;
pas de protection retardee ;
pas de release imposee ;
rollback possible ;
signal si transition modifie jouabilite.
```

Interdits :

```text
fade trop lent sur P0/P1 ;
transition automatique qui compose ;
utilisation comme forme musicale cachee.
```

### 3.5. `curve~`

Statut :

```text
CONDITIONNEL.
```

Raison :

```text
utile pour transitions expressives, retours ou scenes, mais plus susceptible
de colorer musicalement qu'une rampe simple.
```

Conditions :

```text
usage justifie par fonction musicale ;
pas safe critique par defaut ;
release explicite ;
signal si impact jouable.
```

Interdits :

```text
courbe qui transforme une protection en geste esthetique ;
retour mecanique impose.
```

### 3.6. `matrix~`

Statut :

```text
CONDITIONNEL.
EXCLU DU DIRECT PAR DEFAUT.
```

Raison :

```text
peut etre utile si plusieurs chemins doivent etre routes clairement, mais risque
de devenir une architecture opaque.
```

Conditions avant acceptation future :

```text
carte des chemins ;
nommage explicite ;
entrees/sorties limites ;
fallback direct hors matrice ou recuperable localement ;
absence de feedback involontaire ;
gain staging lisible ;
rollback testable conceptuellement ;
SIG si routage change la jouabilite.
```

Interdits :

```text
matrix~ comme centre magique ;
routage final implicite ;
direct uniquement accessible via matrice opaque ;
MIN-DID-PC alourdi par matrice obligatoire.
```

### 3.7. `send~` / `receive~`

Statut :

```text
CONDITIONNEL.
EXCLU DU DIRECT CRITIQUE PAR DEFAUT.
```

Raison :

```text
utile pour separer chemins, espaces, diagnostics ou patchers futurs, mais risque
de rendre le signal invisible.
```

Conditions avant acceptation future :

```text
nommage strict ;
scope clair ;
pas d'autorite cachee ;
fallback local ;
pas de boucle involontaire ;
documentation du chemin ;
exclusion des sends anonymes ou generiques.
```

Interdits :

```text
send cache pour direct critique ;
receive ambigu ;
routage impossible a lire ;
debug comme condition de jeu.
```

---

## 4. Reponses aux questions restantes

### Q-PREAUD-A-1

Decision :

```text
un seul audit A avec sous-sections.
```

### Q-PREAUD-A-2

Decision :

```text
adc~/dac~ sont reserves a une future fiche I/O dediee.
```

Raison :

```text
ils touchent interface, driver, sorties, monitoring et configuration audio.
les melanger ici brouillerait l'audit routage interne.
```

### Q-PREAUD-A-3

Decision :

```text
gain staging reste risque obligatoire ici.
un audit gain staging complet viendra seulement si necessaire.
```

---

## 5. Conditions transversales

Tout candidat A futur doit garantir :

```text
direct recuperable ;
safe recuperable ;
rollback cause obligatoire ;
SIG-0/SIG-1 si jouabilite change ;
fallback MIN-DID-PC ;
aucune UI comme condition ;
aucun diagnostic comme condition ;
aucun etat lent comme condition ;
pas de routage cache ;
pas de safe qui compose ;
pas de transition imposant une forme musicale.
```

---

## 6. Risques residuels

```text
RIS-A-1
matrix~ peut devenir tentant trop tot.

RIS-A-2
send~/receive~ peut masquer les chemins.

RIS-A-3
line~/curve~ peut transformer protection ou retour en composition cachee.

RIS-A-4
selector~/gate~ peuvent cliquer ou couper brutalement.

RIS-A-5
fallback direct peut etre decrit mais pas garanti si le futur patch est opaque.
```

Traitement :

```text
maintenir ces risques comme garde-fous dans toute matrice d'objets future.
```

---

## 7. Decision v0.1

Decision :

```text
l'audit candidat A est valide comme niveau non-final.
```

Il autorise ensuite :

```text
SPECIFICATION_PRE_AUDIT_CANDIDATS_COMMANDES_LIVE_SCHEDULER_SIGNALISATION_VESPERARE_v0_1.md
```

But :

```text
preparer le groupe B : commandes live, route/select/trigger/messages,
Overdrive, Scheduler in Audio Interrupt, SIG, pattr hors critique, sans UI
finale ni mapping.
```

Il n'autorise pas :

```text
objet final ;
patch final ;
routage final ;
UI ;
controleur ;
benchmark ;
implementation.
```
