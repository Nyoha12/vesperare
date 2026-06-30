# SYSTEM_ELEMENT_BACKTRACE_AUDIT_BATCH_01_OUTPUT

Statut : sortie agent uniquement. Cette sortie ne vaut ni decision musicale, ni specification, ni prototype, ni mapping, ni seuil, ni correction documentaire deja validee.

## Resume court

Fait : `MACRO_IMPACT`, `MACRO_PRESSURE` et `MACRO_BODY_RETURN` apparaissent directement comme controles prioritaires de champs de scene dans `docs/23_SCENES_COMME_CHAMPS_OUVERTS_DE_PERFORMANCE.md`. Les formes plus anciennes ou plus generiques apparaissent comme exigences d'interface dans `docs/14_CONCEPT_CORE_TO_INTERFACE_SYSTEM_REQUIREMENTS.md`.

Fait : le run precedent classe `impact-fondation` et `pression spectrale corporelle` comme `SOLIDE`, et `retour au corps` comme `TROP COMPACTE`.

Inference : `MACRO_IMPACT` reste globalement rattachee a `impact-fondation`, a condition de ne pas devenir kick standard, drop ou ponctuation spectaculaire.

Inference : `MACRO_PRESSURE` reste rattachee a `pression spectrale corporelle`, mais elle doit rester subdivisible et protegee contre la reduction a volume, sub, saturation ou boue.

Inference : `MACRO_BODY_RETURN` est utile pour reperer une famille de sorties et de reancrages, mais elle agrege trop de fonctions pour etre consideree solide comme macro unique.

## Corpus consulte

Methode :

```text
AGENTS.md
projects/agents/AGENT_RUN_PROTOCOL_V0.md
projects/program/PROGRAM_REORIENTATION_NO_USER_HOMEWORK.md
docs/00_INDEX_METHODE_DECISIONS.md
docs/45_REPRISE_DEPUIS_FICHE_MESURES_INSTRUMENTS.md
```

Contexte d'audit, non source de verite finale :

```text
projects/agents/outputs/NOTION_TO_SYSTEM_SOLIDITY_AUDIT_BATCH_01_OUTPUT.md
```

Corpus source minimal :

```text
docs/05_CARTOGRAPHIE_STYLE_PERSONNEL_TECHNO.md
docs/01_CAHIER_DES_PHENOMENES_SONORES.md
docs/08_PERFORMANCE_SCENES_TRAJECTOIRES_OBJETS.md
docs/13_CONCEPTS_OPERATOIRES_TECHNO_ORGANIQUE_DEPENDANCES.md
docs/14_CONCEPT_CORE_TO_INTERFACE_SYSTEM_REQUIREMENTS.md
docs/23_SCENES_COMME_CHAMPS_OUVERTS_DE_PERFORMANCE.md
```

Consultation optionnelle limitee aux occurrences, controles, protections et sorties :

```text
docs/42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md
docs/modules/05_CONTEXTUAL_CONTROL_ROUTER.md
docs/modules/07_CONFLICT_PROTECTION_MANAGER.md
docs/modules/18_CONTEXTUAL_CONTROL_ROUTER_AMPLITUDES_LIMITES_OVERRIDE_ADDENDUM.md
```

## Table d'audit remontant

| Element systeme | Documents ou il apparait ou est implique | Notion musicale source supposee | Document source de la notion | Statut de la notion | Chaine musicale correcte | Ce que l'element garde bien | Ce que l'element simplifie trop | Risque de mauvais controle | Automation possible plus tard | Protection necessaire plus tard | Visualisation utile plus tard | Sortie necessaire | Verdict | Document a corriger plus tard | Question eventuelle a Yohan |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `MACRO_IMPACT` | Apparait directement dans `docs/23` : `SCENE_FIELD_BASE_BODY`, `SCENE_FIELD_PRESSURE_BUILD`, `SCENE_FIELD_PRE_DROP`, `SCENE_FIELD_RETURN_TO_BODY`. Implique par `docs/14` via `IR_IMPACT_01: macro Impact`. Implique par `docs/42`, `docs/modules/05`, `docs/modules/07` et `docs/modules/18` via queue, lisibilite, preservation d'impact, protections low-mid/live et controles d'urgence. | `impact-fondation` | Sources principales : `docs/05` section Impact-fondation corporel ; `docs/01` section Impact-fondation corporel. Transfert operatoire : `docs/08`, `docs/14`, `docs/23`. | `SOLIDE` | Fonction techno naturalisee du kick sans obligation de kick standard : attaque identifiable, autorite temporelle, pression corporelle, retour/reancrage du corps, queue maitrisee, lisibilite du temps. | Garde bien la fonction d'ancrage, de resolution, de realignement et de reinstallation corporelle. Dans `docs/23`, il est place la ou l'impact a une fonction de scene : base body, pressure build, pre-drop, return to body. | Peut compacter attaque, masse, queue, retour, accent, drop et resolution sous un meme geste. Risque aussi de ne pas distinguer impact peau, metal, sub ou objet, pourtant separes comme roles possibles. | Si rendu trop permanent ou trop spectaculaire : kick standard, drop reflexe, ponctuation decorative, impact sans queue maitrisee, impact qui masque sub/didgeridoo, resolution non preparee. | Assistance situee : routage contextuel, promotion quand l'impact est menace, controle de queue, reduction de masque post-impact, rappel de sortie. Ne pas automatiser le moment expressif de frapper/resoudre. | Guard de queue et masquage, preservation attaque/lisibilite, low-mid safety, sub/didgeridoo protection, anti-impact decoratif, controle du rapport impact/halo. | Vue ponctuelle utile sur lisibilite de l'attaque, queue, masquage sub/live, relation impact/temps. Pas besoin d'une vue permanente de tout. | Retrait ou maitrise de queue ; retour au contour ; realignement temporel ; reancrage corporel ; annulation ou retard si pre-drop non pret. | `ALIGNÉ MAIS À PRÉCISER` | Plus tard seulement : `docs/14` pour distinguer macro Impact et sous-controles ; `docs/23` pour preciser quand Impact est scene-priority, contexte ou urgence ; eventuellement `docs/42`/`docs/modules/18` pour statut d'automation/protection. | Aucune maintenant. |
| `MACRO_PRESSURE` | Apparait directement dans `docs/23` : `SCENE_FIELD_BASE_BODY`, `SCENE_FIELD_PRESSURE_BUILD`, `SCENE_FIELD_LONG_TENSION`, `SCENE_FIELD_RETURN_TO_BODY`, transition `BASE_BODY -> PRESSURE_BUILD`. Implique par `docs/14` via `IR_PRESSURE_01: macro Pression` et sous-controles physique/spectrale/densite/rythmique. Implique par `docs/42` section Pressure et par `docs/modules/18` section Corps-pression surcharge. Implique par `docs/modules/05` via `Reduire pression` et par `docs/modules/07` via pression/confort et low-mid. | `pression spectrale corporelle` | Sources principales : `docs/05` section Pression spectrale corporelle ; `docs/01` section Pression spectrale corporelle. Distinctions operatoires : `docs/13`, `docs/14`. Champs de scene : `docs/23`. | `SOLIDE` | Presence physique et mentale par occupation du spectre : grave/bas-medium stable, densite, confort, contour, lisibilite, pression continue ou semi-continue, intensite sans agression. | Garde bien l'axe corps/spectre/intensite. Les docs la lient a build pressure, long tension, base body, retour au corps, low-mid safety et protection du live. | Compacte encore pression physique, pression spectrale, pression de densite, pression rythmique, attente, tension longue, confort et intensite. `docs/13` et `docs/14` signalent deja que cette subdivision est necessaire. | Si rendue comme seul bouton : pression = volume ; sub spectaculaire ; saturation globale ; boue bas-medium ; fatigue ; perte de contour ; masquage didgeridoo/guimbardes ; tension qui devient remplissage. | Automatisable seulement pour coordination/protection : low-end guard, sub/didgeridoo conflict warning, ceiling doux, alerte fatigue, promotion de sortie, retrait de couche. Le niveau, la retenue, la surcharge et la resolution restent reglage Yohan. | Low-mid safety, comfort/fatigue guard, protection live, distinction volume/pression, lisibilite du contour, sortie disponible avant surcharge, override seulement si risque musical et sortie maintenue. | Tres utile plus tard : vue low-mid/sub/live, pression par type, confort/fatigue, lisibilite, zone de bord/danger. Aucune valeur-seuil a creer maintenant. | Reduire bas-medium ; stabiliser sub ; retirer densite ; baisser pression ; resoudre ; retarder ; bifurquer vers suspension ; retour au corps si la pression perd le corps. | `ALIGNÉ MAIS À PRÉCISER` | Plus tard : `docs/13` et `docs/14` pour decompacter les types de pression ; `docs/42` et `docs/modules/18` pour clarifier ce qui est reglage humain, protection automatique ou urgence visible. | Aucune maintenant. |
| `MACRO_BODY_RETURN` | Apparait directement dans `docs/23` : `SCENE_FIELD_BASE_BODY`, `SCENE_FIELD_PRE_DROP`, `SCENE_FIELD_SUSPENSION_EXPANSION`, `SCENE_FIELD_WITHDRAWAL`, `SCENE_FIELD_RETURN_TO_BODY`, transition `SUSPENSION_EXPANSION -> RETURN_TO_BODY`. Implique par `docs/14` via `IR_BODY_01: macro Retour au corps` et `Body Focus`. Implique par `docs/42` section Body Return. Implique par `docs/modules/05` comme controle permanent et urgence `Retour corps`. Implique par `docs/modules/07` via retour au corps impossible/beaute autonome. Implique par `docs/modules/18` via suspension quasi-ambient et sorties. | `retour au corps` | Pas une fonction numerotee autonome dans `docs/05`. Presente comme role/variable dans `docs/01`, concept central dans `docs/13`, exigence dans `docs/14`, champ de scene dans `docs/23`, zone de bord/sortie dans `docs/42` et `docs/modules/18`. | `TROP COMPACTE` | Chaine seulement partielle : reentree du physique apres suspension, halo, tension, retrait, abstraction ou matiere exposee. Elle peut passer par impact, sub stabilise, reprise live, retrait de couches, anti-ambient release, stabilisation ou cycle suivant. | Garde bien l'obligation de sortie et de reancrage. Dans `docs/23`, la macro signale que certaines scenes doivent garder une voie de reintegration corporelle et ne pas rester en halo, drone, exposition ou pre-drop. | Melange trop de fonctions : retour au corps, drop, reset, reprise du beat, stabilisation, sub fort, retrait/collapse, live priority, sortie anti-ambient, reancrage apres beaute exposee. | Si gardee comme macro unique : bouton-recette ; drop standard ; reset arbitraire ; sub spectaculaire ; effacement des tensions fines ; retour mecanique ; confusion entre sortie de risque et decision expressive ; automation qui decide la forme a la place de Yohan. | Automatiser seulement la disponibilite de la sortie : promotion de controles, release freeze/halo si necessaire, anti-ambient warning, preservation live priority, masquage de controles non pertinents. Ne pas automatiser type, timing, intensite ou violence du retour. | Anti-drop automatique, anti-retour-recette, anti-ambient, protection des tensions fines, preservation du live, sortie toujours disponible, distinction urgence/protection/decision expressive. | Utile plus tard seulement apres decompaction : Body Focus, live priority, risque anti-ambient, sortie disponible, tension restante, conflit sub/live. | Plusieurs sorties doivent rester possibles : impact-fondation ; sub stabilise ; reprise live ; retrait de halo/freeze ; raréfaction ; stabilisation ; post-resonance ; cycle suivant. Ne pas les reduire a un seul retour. | `À DÉCOMPOSER` | Plus tard : `docs/13`, `docs/14`, `docs/23` pour decompacter les sous-fonctions documentaires ; `docs/42` et `docs/modules/18` pour distinguer urgence, sortie, protection et reglage humain. | Aucune maintenant. |

## Analyse courte par element

### MACRO_IMPACT

Fait : `MACRO_IMPACT` apparait dans les champs de scene ou l'impact a un role fonctionnel : etablir/retrouver le corps, construire la pression, armer un pre-drop, reincorporer dans `RETURN_TO_BODY`.

Fait : les sources documentaires de la notion (`docs/05`, `docs/01`) definissent l'impact par attaque identifiable, pression corporelle, autorite dans le bas/bas-medium, lisibilite du temps, queue maitrisee et compatibilite avec la danse.

Inference : le rattachement est correct si `MACRO_IMPACT` reste une commande de fonction musicale situee, pas un declencheur de spectacle. Elle peut etre prioritaire de scene, contextuelle dans pre-drop/return, et urgence si impact ou sub sont dissous. Elle ne devrait pas etre un controle permanent massif qui impose l'impact partout.

Risque : la macro peut masquer les differences entre impact-fondation, accent, resolution, drop, queue et masse. La correction documentaire possible plus tard serait de mieux distinguer `macro Impact`, sous-controles de contour/queue et preservation d'impact en urgence, sans inventer de nouvelle macro maintenant.

Verdict : `ALIGNÉ MAIS À PRÉCISER`.

### MACRO_PRESSURE

Fait : `MACRO_PRESSURE` apparait dans `BASE_BODY`, `PRESSURE_BUILD`, `LONG_TENSION` et `RETURN_TO_BODY`. `docs/14` demande deja de distinguer pression physique, spectrale, densite et rythmique. `docs/42` precise que Pressure est hybride : protection systeme possible, reglage expressif par Yohan.

Inference : le rattachement a `pression spectrale corporelle` est solide, mais la macro ne doit pas absorber toutes les formes de pression. Elle est plausible comme entree de scene ou de controle contextuel, a condition que le systeme garde visibles les differences entre intensite, confort, attente, tension, densite, sub et bas-medium.

Risque : `MACRO_PRESSURE` est le cas le plus expose a une mauvaise ergonomie : un seul geste pourrait produire du volume, du sub, de la saturation ou de la boue en croyant produire une pression corporelle lisible.

Recommandation non decisatoire : avant usage systeme fort, auditer ou corriger les documents existants pour expliciter les sous-types de pression et leurs protections. Cette correction doit rester documentaire, sans seuil et sans mapping.

Verdict : `ALIGNÉ MAIS À PRÉCISER`.

### MACRO_BODY_RETURN

Fait : le run precedent classe `retour au corps` comme `TROP COMPACTE`. `docs/23` l'utilise comme controle prioritaire dans plusieurs scenes et comme champ `SCENE_FIELD_RETURN_TO_BODY`. `docs/42` precise que `Body Return` a des amplitudes allant de retour prepare a retour brutal assume, mais que type, timing, intensite et violence du retour restent des reglages Yohan.

Inference : `MACRO_BODY_RETURN` ne doit pas etre solidifiee artificiellement. Elle est utile comme indicateur de besoin de sortie et comme rappel de corps, mais elle confond encore plusieurs sous-fonctions documentaires.

Sous-fonctions documentaires presentes, sans en faire de nouvelles macros :

```text
reincorporation par impact-fondation ;
reentree ou stabilisation du sub ;
reprise de priorite live ;
retrait ou collapse de couches qui masquent le corps ;
release de freeze/halo ;
sortie anti-ambient ;
stabilisation apres tension ;
retour apres exposition de matiere ;
cycle suivant apres post-resonance.
```

Risque : si elle reste macro unique, elle peut devenir un bouton de reset/drop qui ecrase l'ambiguite utile, les tensions fines et le jugement de timing.

Verdict : `À DÉCOMPOSER`.

## Resume des risques

```text
MACRO_IMPACT -> kick standard, drop reflexe, ponctuation spectaculaire, queue non maitrisee.
MACRO_PRESSURE -> volume, sub, saturation, boue bas-medium, fatigue, intensite generale.
MACRO_BODY_RETURN -> reset, drop, reprise de beat, sub fort, stabilisation automatique, sortie anti-ambient confondue avec decision musicale.
```

Risque transversal : transformer un element systeme suppose en decision de controle avant d'avoir garde la chaine musicale et les distinctions internes.

Autre risque transversal : confondre protection, visualisation, urgence et reglage humain. Les documents `42`, `modules/05` et `modules/18` demandent au contraire de distinguer automatiser, assister, suggerer, presenter au reglage humain, laisser sous override ou verrouiller.

## Elements qui peuvent soutenir un audit systeme futur

```text
relation MACRO_IMPACT / impact-fondation / queue / preservation d'impact ;
relation MACRO_PRESSURE / types de pression / low-mid safety / confort ;
relation MACRO_BODY_RETURN / sorties / anti-ambient / live priority ;
statut des controles : permanent, contextuel, urgence, scene-priority ;
relation Router / Conflict Manager pour promotion d'urgence et sortie visible ;
visualisations futures limitees aux risques actifs, pas dashboard permanent ;
distinction automation de protection vs decision expressive Yohan.
```

## Elements a ne pas transformer en macro maintenant

```text
MACRO_BODY_RETURN comme macro unique solide ;
pression comme intensite generale non subdivisee ;
impact comme declencheur de drop ou ponctuation spectaculaire ;
retour au corps comme reset, reprise de beat ou sub fort ;
sortie anti-ambient comme decision expressive automatisee.
```

## Documents existants a mettre a jour plus tard

Ne pas proposer de nouveau document source.

Mises a jour possibles plus tard, seulement si une micro-correction documentaire est demandee :

```text
docs/13_CONCEPTS_OPERATOIRES_TECHNO_ORGANIQUE_DEPENDANCES.md
  - distinguer plus nettement les pressions et les sous-fonctions de retour au corps.

docs/14_CONCEPT_CORE_TO_INTERFACE_SYSTEM_REQUIREMENTS.md
  - clarifier macro Impact / macro Pression / macro Retour au corps sans les transformer en spec.

docs/23_SCENES_COMME_CHAMPS_OUVERTS_DE_PERFORMANCE.md
  - preciser quand les trois macros sont controles prioritaires de scene, controles contextuels ou urgences.

docs/42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md
  - si necessaire, clarifier les exemples Pressure et Body Return en gardant reglage humain, sortie et override.

docs/modules/18_CONTEXTUAL_CONTROL_ROUTER_AMPLITUDES_LIMITES_OVERRIDE_ADDENDUM.md
  - si necessaire, relier les cas Router aux sous-fonctions de corps sans creer de nouveau controle.
```

## Questions ciblees eventuelles a Yohan

Aucune question necessaire maintenant.

Raison : les incertitudes relevent d'abord d'un audit documentaire limite et de micro-corrections possibles dans les documents existants, pas d'une decision artistique globale a demander a Yohan.

## Prochaine etape recommandee

Micro-correction documentaire ciblee, sans nouveau document source :

```text
clarifier dans `docs/13` ou `docs/14` que `retour au corps` doit etre decompose en sous-fonctions documentaires avant d'etre utilise comme macro unique ;
clarifier dans le meme mouvement que `pression` doit rester subdivisible ;
ne pas corriger `MACRO_IMPACT` en premier, car son rattachement est le plus stable des trois.
```

Si aucune correction n'est souhaitee maintenant, la meilleure alternative est une pause : les trois elements ont ete audites dans le perimetre demande, et `MACRO_BODY_RETURN` ne doit pas etre solidifiee artificiellement.
