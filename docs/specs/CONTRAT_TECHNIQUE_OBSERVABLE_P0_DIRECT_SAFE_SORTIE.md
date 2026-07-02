# CONTRAT_TECHNIQUE_OBSERVABLE_P0_DIRECT_SAFE_SORTIE

Statut : specification technique observable minimale pour `P0-DIRECT / P0-SAFE / P0-SORTIE`.  
Date : 2026-07-02.  
Perimetre : contrat observable documentaire et pre-machine ; sans schema JSON produit, sans exemple sous `tools/`, sans patch Max, sans modification du patch 01, sans lancement Max, sans Ableton, sans audio, sans DSP, sans UI, sans mapping, sans asset, sans sample bank, sans seuil numerique, sans objet Max final, sans routage final et sans architecture validee.

## 1. Objet

Ce document transforme la decision de passage technique observable en contrat minimal.

Il ne construit pas le noyau.  
Il ne cree pas de schema JSON.  
Il ne cree pas d'exemple machine sous `tools/`.  
Il ne modifie pas de patch.  
Il ne valide pas la musique.

Question traitee :

```text
quels etats minimaux doivent etre representables pour observer P0-DIRECT, P0-SAFE et P0-SORTIE ?
```

Question non traitee :

```text
comment implementer ces etats dans Max ou dans un patch ?
```

## 2. Sources consultees

Fait :

- `docs/START_HERE_VESPERARE.md`
- `docs/reprise/05_NEXT_ACTIONS.md`
- `docs/PROJECT_ROADMAP_VESPERARE.md`
- `docs/specs/PRE_SPEC_NOYAU_P0_P1_OBSERVABLE.md`
- `docs/specs/CONTRAT_P0_DIRECT_SAFE_SORTIE.md`
- `docs/specs/DECISION_PASSAGE_ACTION_TECHNIQUE_OBSERVABLE_P0_DIRECT_SAFE_SORTIE.md`
- `tools/vesperare-harness/README.md`
- `tools/vesperare-harness/schemas/command.schema.json`
- `tools/vesperare-harness/schemas/log.schema.json`
- `tools/vesperare-harness/schemas/state.schema.json`
- `AGENTS.md`

Limite :

Ce corpus suffit pour definir un contrat observable minimal.  
Il ne suffit pas a valider un schema final, un patch, un routage, un objet Max, l'audio, le DSP, la musicalite ou une architecture.

## 3. Frontiere technique

Decision :

Ce contrat est technique seulement au sens suivant :

```text
il nomme des champs, des etats, des modes, des fallback et des SIG qui pourront etre verifies plus tard par machine.
```

Decision :

Ce contrat n'est pas une implementation. Il ne rend pas le harness obligatoire pour le noyau musical.

Decision :

Le vocabulaire observable peut reprendre les categories deja stabilisees dans le harness :

```text
status : ok / blocked / degraded / failed / unknown
mode : absent / off / bypass / reduit / active
event : state_snapshot / fallback_enter / fallback_exit / sig_emit / mode_change
source : module
```

Limite :

Ces categories restent des etiquettes d'observation. Elles ne prouvent ni le son, ni la jouabilite, ni la pertinence musicale.

## 4. Identite du contrat

Identifiant documentaire propose :

```text
vesperare.p0_direct_safe_sortie.observable.v0
```

Decision :

Cet identifiant est reserve a ce contrat documentaire. Il ne doit pas encore etre utilise comme schema JSON officiel sans decision de passage separee.

## 5. Responsabilites observees

| Responsabilite | Objet observable | Etat minimal | Fallback minimal | SIG minimal | Condition d'arret |
|---|---|---|---|---|---|
| `p0_direct` | lisibilite du direct prioritaire | `active`, `menace`, `preserved_by_reduction`, `absent`, `unknown` | reduire ou bypasser ce qui masque le direct ; revenir a presence live ou sortie simple | `direct_active`, `direct_menace`, `direct_preserved_by_reduction`, `direct_absent` | direct remplace par branche lourde, routage opaque ou dependance interdite |
| `p0_safe` | disponibilite d'un repli jouable | `available`, `active`, `unavailable`, `reduced`, `unknown` | retirer, bypasser ou reduire le non critique ; revenir a simple/off | `safe_available`, `safe_active`, `safe_unavailable`, `fallback_active` | safe porte par script, preset critique, external, objet lourd ou promesse non verifiee |
| `p0_sortie` | sortie simple nommee | `available`, `promoted`, `missing`, `reduced`, `unknown` | promouvoir une sortie simple ; retirer couche optionnelle ; nommer sortie restante | `sortie_available`, `sortie_promoted`, `sortie_missing`, `sortie_reduced` | absence de sortie ou sortie non nommee avant zone de bord |

Decision :

Les trois responsabilites doivent etre observables ensemble. Un etat isole `direct_active` ne suffit pas si `safe` ou `sortie` sont inconnus.

## 6. Forme observable minimale

Forme pre-machine recommandee :

```json
{
  "schema": "vesperare.p0_direct_safe_sortie.observable.v0",
  "status": "ok | blocked | degraded | failed | unknown",
  "mode": "absent | off | bypass | reduit | active",
  "updated_at": "date-time",
  "source": "module",
  "responsibilities": {
    "p0_direct": {
      "status": "ok | blocked | degraded | failed | unknown",
      "mode": "absent | off | bypass | reduit | active",
      "state": "active | menace | preserved_by_reduction | absent | unknown",
      "fallback": "none | required | active | failed | unknown",
      "sig": ["direct_active"],
      "stop_condition": null
    },
    "p0_safe": {
      "status": "ok | blocked | degraded | failed | unknown",
      "mode": "absent | off | bypass | reduit | active",
      "state": "available | active | unavailable | reduced | unknown",
      "fallback": "none | required | active | failed | unknown",
      "sig": ["safe_available"],
      "stop_condition": null
    },
    "p0_sortie": {
      "status": "ok | blocked | degraded | failed | unknown",
      "mode": "absent | off | bypass | reduit | active",
      "state": "available | promoted | missing | reduced | unknown",
      "fallback": "none | required | active | failed | unknown",
      "sig": ["sortie_available"],
      "stop_condition": null
    }
  },
  "proof": {
    "machine_checkable": [
      "required_fields_present",
      "modes_representable",
      "fallback_representable",
      "sig_representable",
      "forbidden_dependencies_absent"
    ],
    "forbidden": [
      "audio_validation",
      "dsp_validation",
      "musical_validation",
      "patch_01_validation",
      "architecture_validation"
    ]
  }
}
```

Limite :

Cette forme est une cible documentaire. Elle n'est pas encore un fichier `.schema.json`, un exemple officiel, un protocole runtime, une API ou une obligation de patch.

## 7. Regles de statut global

Decision :

Le `status` global du contrat se deduit seulement de la coherence observable du triplet.

| Status global | Condition documentaire minimale |
|---|---|
| `ok` | les trois responsabilites sont connues, non bloquees, avec sortie nommee |
| `degraded` | au moins une responsabilite est reduite, menacee ou fallback actif, mais une sortie reste nommee |
| `blocked` | une responsabilite P0 obligatoire est absente, non nommee ou contradictoire |
| `failed` | la sortie est manquante, le safe est indisponible, ou une dependance interdite devient condition P0 |
| `unknown` | information insuffisante ; ne pas pretendre a une validation du noyau |

Decision :

`unknown` est preferable a une fausse certitude.

## 8. Regles de modes

| Mode | Regle observable pour le triplet |
|---|---|
| `absent` | la responsabilite ou son information manque ; si elle est P0 critique, le status devient `blocked` ou `unknown` |
| `off` | etat volontairement eteint ; acceptable seulement hors situation jouable ou sous decision humaine explicite |
| `bypass` | contournement protecteur ; doit nommer ce qui reste disponible |
| `reduit` | fonction conservee avec role diminue ; doit nommer le risque ou la protection restante |
| `active` | fonction observable active ; ne prouve ni audio, ni DSP, ni musicalite |

Decision :

Tout mode doit pouvoir produire un SIG lisible. Un mode silencieux est considere incomplet.

## 9. Fallback et SIG

Decision :

Chaque responsabilite doit exposer :

```text
fallback : none / required / active / failed / unknown
sig : tableau de libelles stables
stop_condition : null ou libelle de condition d'arret
```

SIG admissibles v0 :

| Responsabilite | SIG admissibles v0 |
|---|---|
| `p0_direct` | `direct_active`, `direct_menace`, `direct_preserved_by_reduction`, `direct_absent` |
| `p0_safe` | `safe_available`, `safe_active`, `safe_unavailable`, `fallback_active` |
| `p0_sortie` | `sortie_available`, `sortie_promoted`, `sortie_missing`, `sortie_reduced` |

Decision :

Un fallback actif sans SIG est invalide documentairement.

## 10. Dependances interdites

Ce contrat ne doit pas rendre obligatoires :

- Node for Max ;
- script ;
- preset critique ;
- external ;
- plugin ;
- corpus ;
- sample bank ;
- seuil numerique ;
- objet Max final ;
- routage final ;
- famille lourde ;
- harness comme condition du noyau musical.

Decision :

Le harness peut observer ce contrat plus tard. Il ne doit pas devenir ce que le contrat observe.

## 11. Preuve machine possible

Preuve possible plus tard :

- le champ `schema` est present ;
- les trois responsabilites sont presentes ;
- chaque responsabilite porte `status`, `mode`, `state`, `fallback`, `sig`, `stop_condition` ;
- chaque `mode` appartient a `absent`, `off`, `bypass`, `reduit`, `active` ;
- chaque `sig` appartient aux libelles admissibles ;
- les preuves interdites sont nommees ;
- aucune dependance interdite n'est declaree comme obligatoire.

Limite :

Cette preuve peut verifier une forme observable. Elle ne prouve pas que le direct sonne, que le safe est musicalement satisfaisant, que la sortie est audio/DSP validee ou que l'architecture est bonne.

## 12. Preuve interdite

Interdit :

- utiliser ce contrat comme validation du patch 01 ;
- utiliser `status: ok` comme validation musicale ;
- utiliser un SIG comme preuve de son ;
- utiliser un futur schema comme architecture ;
- utiliser un smoke comme validation audio ou DSP ;
- utiliser le harness comme condition cachee de `P0-DIRECT`, `P0-SAFE` ou `P0-SORTIE`.

## 13. Conditions d'arret

Arreter si la suite tente de :

- creer ou modifier un `.maxpat` ;
- modifier `projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat` ;
- lancer Max hors smoke strictement borne et explicitement justifie ;
- lancer Ableton ;
- choisir un objet Max final ;
- choisir un routage final ;
- produire UI, mapping, asset, sample bank ou seuil numerique ;
- rendre Node for Max necessaire au noyau P0 ;
- rendre le harness necessaire au noyau musical ;
- presenter une preuve technique comme validation audio, DSP, musicale ou architecturale.

## 14. Prochaine action minimale

Recommandation :

Preparer une decision documentaire de passage ou non vers une materialisation machine-lisible de ce contrat.

Choix autorises pour cette future decision :

- autoriser un schema et un exemple strictement bornes sous `tools/vesperare-harness/` ;
- reporter si le contrat observable est insuffisant ;
- refuser si la materialisation risque de devenir une implementation Max ou une architecture.

Limite :

Cette future decision ne doit pas produire le schema dans la meme action. Elle ne doit pas modifier le patch 01, creer de patch, lancer Max, choisir d'objet Max final, de routage final, de mapping, d'UI, d'asset, de seuil ou d'architecture validee.
