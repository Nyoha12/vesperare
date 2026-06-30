# Reconditionnement documentaire borne niveau 6 / ACT28

Statut : fiche de reconditionnement documentaire borne niveau 6 / ACT28, a partir de la table 15 et du statut de pilotage 16.
Date : 2026-06-30.
Perimetre : documentation seulement, sans modification de `reprise/`, sans modification de l'audit niveau 6 source, sans creation de niveau 6, sans recreation de matrice niveau 6, sans implementation, sans patch Max, sans UI, sans mapping, sans prototype, sans asset, sans sample bank, sans seuil numerique et sans objet Max final.

## Sources consultees

Fait :

Sources directes :

- `docs/reprise/05_NEXT_ACTIONS.md`
- `docs/reprise/15_RECONCILIATION_NIVEAU_6_CORRIGEE_TABLE_COURTE.md`
- `docs/reprise/16_STATUT_TABLE_15_RECONDITIONNEMENT_NIVEAU_6.md`
- `docs/reprise/14_READINESS_RECONCILIATION_NIVEAU_6_CORRIGEE.md`
- `docs/reprise/12_CORRECTIONS_DOCUMENTAIRES_NIVEAU_6_ACT28.md`
- `docs/reprise/11_RECONCILIATION_AUDIT_NIVEAU_6_EXISTANT_AVEC_ACT28_ET_MATRICE_LOURDE.md`
- `docs/reprise/08_SYNCHRONISATION_NIVEAU_5_MATRICE_LOURDE_STATUTS_CHEMINS_FALLBACK_SIG.md`
- `reprise/AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_NIVEAU_6_ROLES_TECHNIQUES_CANDIDATS_CHEMINS_RISQUES_AVEC_CORPUS_v0_1.md`

Sources de methode consultees pour cadrage :

- `README.md`
- `docs/00_INDEX_METHODE_DECISIONS.md`
- `docs/45_REPRISE_DEPUIS_FICHE_MESURES_INSTRUMENTS.md`
- `docs/42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md`
- `docs/modules/18_CONTEXTUAL_CONTROL_ROUTER_AMPLITUDES_LIMITES_OVERRIDE_ADDENDUM.md`
- `docs/assets/00_ASSETS_INDEX.md`
- `docs/assets/15_DONNEES_INSTRUMENTALES_MANQUANTES_PRIORITAIRES.md`
- `docs/assets/16_ACOUSTICARCHIVE_MAPPING_DONNEES_VESPERARE.md`

Fait :

`docs/reprise/15_RECONCILIATION_NIVEAU_6_CORRIGEE_TABLE_COURTE.md` est la checklist documentaire utilisable.

Fait :

`docs/reprise/16_STATUT_TABLE_15_RECONDITIONNEMENT_NIVEAU_6.md` fixe son statut de pilotage documentaire :

```text
checklist documentaire utilisable pour preparer un reconditionnement documentaire borne niveau 6 / ACT28
```

Fait :

La presente fiche ne cree pas le niveau 6, ne valide pas l'audit niveau 6, ne recree pas la matrice absente et ne transforme pas ACT28 en decision artistique definitive.

Inference :

Le lieu de tri existe deja dans `docs/reprise/05` puis `docs/reprise/11` a `docs/reprise/16`. La presente fiche transforme seulement les affirmations utilisables de l'audit niveau 6 existant en conditions documentaires bornees.

Recommandation :

Lire cette fiche comme un reconditionnement documentaire. Elle ne doit pas devenir une specification, une matrice, une preuve, une architecture, un patch, un mapping ou une decision musicale.

---

## Table de conditions documentaires bornees

Fait :

La table 15 fournit les elements a classer. La fiche 16 autorise seulement leur usage comme checklist documentaire de reconditionnement.

Inference :

Une affirmation issue de l'audit niveau 6 ne devient utilisable que si son statut, sa condition documentaire et son arret avant preuve ou implementation sont explicites.

Recommandation :

| Affirmation ou element repris de l'audit niveau 6 | Statut dans cette fiche | Condition documentaire bornee | Arret / interdit |
|---|---|---|---|
| Verdict final de compatibilite de la matrice niveau 6 | non prouvable | Marquer la dependance a la matrice absente ; conserver seulement comme symptome | Ne pas citer comme preuve ou validation niveau 6 |
| Sous-verdicts `compatible` par section | non prouvable | Transformer en points a re-auditer contre ACT28 | Ne pas utiliser comme validations actives |
| Usage de la matrice comme grille de liaison | suspendu | Attendre une matrice source retrouvee et relue contre ACT28 | Ne pas reconstruire ni inferer la matrice |
| `FINAL-CANDIDATE` et objets Max nommes | a reconditionner | Lire comme candidat non final ou exemple seulement, avec statut lourd, owner, fonction et sortie | Ne pas choisir d'objet final, patch, prototype ou implementation |
| Roles `MIN-*` et `MIN-DID-PC` | a reconditionner | Reformuler en responsabilites minimales : input live, direct, safe, mix, generation simple, analyse simple, espace simple, protection, controle live, SIG | Ne pas rendre une famille lourde obligatoire dans le setup minimal |
| `PATH-*`, direct et safe | a reconditionner | Croiser chaque chemin avec P0/P1, direct/safe, famille lourde, chemin admis, interdit, sortie, fallback et SIG | Ne pas transformer `PATH` en routage Max reel |
| Fallback generique et `SIGNAL` generique | a reconditionner | Remplacer par fallback/SIG situes par famille, risque, absence, bypass, reduction, incertitude, repli ou release | Ne pas faire du SIG une UI finale ou une decision expressive |
| `SPC`, `HAL`, `GEN-HAL`, reverb, espace, halo, convolution, IR, corpus | a reconditionner / suspendu | Separer support, fonction, owner, sortie, risque, autorite documentaire et fallback espace simple/off | Ne pas ouvrir une fiche technique directe depuis l'audit |
| `buffer~`, playback, corpus et fichiers prepares | a reconditionner | Maintenir comme supports conditionnels, lents, prepares ou offline, avec provenance, role, sortie, preload, fallback et SIG | Ne pas creer asset, sample bank, banque cachee ou remplacement du live |
| `STATE-PRESET`, `STATE-TABLE`, scripts, presets et etats caches | a reconditionner | Declarer fonction, permission, sortie, risque, controle live, fallback manuel ou Max simple, mode absent et SIG | Ne pas laisser une composition cachee, un script ou un preset decider |
| Classes `LAT-*` | utilisable | Garder comme signal, organisation de charge, diagnostic ou observation | Ne jamais en faire une autorite musicale ou un retrait automatique |
| Roles `GEN-*` | a reconditionner | Exiger fonction situee, controle live, vocabulaire borne, fallback, SIG, sortie et condition d'arret avant algorithme | Ne pas creer scene autonome, compositeur global ou style plaque |
| Hors-perimetre technique de l'audit | utilisable | Reprendre comme garde-fou documentaire | Arret avant patch, UI, mapping, prototype, asset, sample bank, seuil numerique ou objet Max final |

Decision :

Ces conditions sont des bornes documentaires. Elles ne valident pas le niveau 6, ne remplacent pas la matrice absente et ne transforment pas ACT28 en decision artistique.

---

## 1. Statut de l'audit niveau 6

Fait :

L'audit niveau 6 source est present dans :

```text
reprise/AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_NIVEAU_6_ROLES_TECHNIQUES_CANDIDATS_CHEMINS_RISQUES_AVEC_CORPUS_v0_1.md
```

Fait :

Cet audit conclut que la matrice niveau 6 est compatible avec le corpus actif, mais il cite comme premiere source active une matrice niveau 6 absente.

Fait :

`docs/reprise/11_RECONCILIATION_AUDIT_NIVEAU_6_EXISTANT_AVEC_ACT28_ET_MATRICE_LOURDE.md` classe cet audit :

```text
trace documentaire utilisable pour re-audit,
preuve invalide pour validation niveau 6,
base prescriptive interdite avant corrections ACT28.
```

Fait :

La table 15 reprend ce statut : l'audit niveau 6 reste symptome documentaire, trace de sequence et checklist de re-audit, pas preuve.

Inference :

Les domaines couverts par l'audit, ses corrections `CORR-MX6-*`, ses fragilites `FRAG-MX6-*`, son vocabulaire `PATH`, `LAT`, `GEN`, `SPC`, `HAL`, `GEN-HAL` et son hors-perimetre technique restent utiles pour savoir quoi reconditionner. Ils ne prouvent ni la compatibilite du niveau 6, ni la validite des roles, chemins ou objets.

Recommandation :

Reconditionnement documentaire :

- utilisable : domaines couverts, corrections `CORR-MX6-*`, fragilites `FRAG-MX6-*`, vocabulaire a verifier, hors-perimetre technique ;
- suspendu : prochaine action reverb/space/halo comme suite directe depuis l'audit ;
- non prouvable : verdict final de compatibilite et sous-verdicts `compatible` ;
- a reconditionner : toute mention qui lit les roles, chemins, objets ou classes comme nomenclature active.

---

## 2. Matrice niveau 6 absente

Fait :

La matrice niveau 6 source reste absente :

```text
reprise/MATRICE_ARCHITECTURE_MAX_STANDALONE_NIVEAU_6_ROLES_TECHNIQUES_CANDIDATS_CHEMINS_RISQUES_VESPERARE_v0_1.md
```

Fait :

`docs/reprise/14_READINESS_RECONCILIATION_NIVEAU_6_CORRIGEE.md` donne le verdict `pret avec reserves`, uniquement pour une reconciliation corrigee documentaire.

Fait :

La fiche 16 confirme que l'absence de la matrice reste bloquante pour preuve, prescription et creation du niveau 6.

Inference :

Toute affirmation de l'audit qui valide "la matrice" depend d'un document manquant. L'absence de la matrice n'autorise pas a la deduire, la reconstruire ou la remplacer par la table 15 ou par la presente fiche.

Recommandation :

Reconditionnement documentaire :

- non prouvable : "la matrice niveau 6 est compatible avec le corpus actif" ;
- suspendu : "la matrice peut etre utilisee comme grille de liaison" ;
- non prouvable : sous-verdicts `compatible` par section ;
- a reconditionner : toute conclusion qui suppose un routage, une architecture ou une nomenclature niveau 6 deja disponibles ;
- utilisable : l'absence comme condition de prudence et condition d'arret.

---

## 3. Statuts et objets candidats

Fait :

La table 15 classe `FINAL-CANDIDATE`, les objets Max nommes et les statuts de candidats comme points a reconditionner.

Fait :

`docs/reprise/08_SYNCHRONISATION_NIVEAU_5_MATRICE_LOURDE_STATUTS_CHEMINS_FALLBACK_SIG.md` demande la correspondance :

```text
statut niveau 5 -> statut matrice lourde -> chemin admis -> interdit -> fallback/SIG
```

Fait :

Un statut `CANDIDATE`, `OPTION`, `LATER`, `ACCEPTE CONDITIONNEL` ou equivalent ne vaut jamais choix final, prototype, patch, mapping, UI, asset, sample bank ou implementation.

Inference :

Les objets Max nommes par l'audit peuvent rester des exemples ou des hypotheses de lecture. Ils deviennent fragiles s'ils sont lus comme colonnes de decision, objets finaux ou points de depart de patch.

Recommandation :

Reconditionnement documentaire :

- `FINAL-CANDIDATE` : a reconditionner en candidat non final, jamais choix final ;
- objets Max nommes : a reconditionner comme exemples seulement ;
- statut candidat : utilisable uniquement si owner, fonction situee, chemin de criticite, sortie, interdit, fallback, mode absent ou degrade, SIG et condition d'arret sont explicites ;
- lecture comme implementation, objet final ou architecture : suspendue et interdite dans cette suite.

---

## 4. MIN-DID-PC

Fait :

L'audit niveau 6 liste des roles `MIN-*`, dont input didgeridoo, direct, mix safe, out, analyse simple, generation simple, espace simple, protection, controle live et signalisation.

Fait :

ACT28 demande que `MIN-DID-PC` soit formule par responsabilites minimales, sans accumulation d'objets ni dependance lourde.

Inference :

La liste `MIN-*` est utilisable comme brouillon de responsabilites minimales. Elle ne doit pas devenir une nomenclature validee, une liste d'objets obligatoires ou une condition de setup minimal.

Recommandation :

Reconditionnement documentaire :

- utilisable : input live, direct, safe, mix, generation simple, analyse simple, espace simple, protection, controle live et signalisation critique comme responsabilites ;
- a reconditionner : `MIN-DID-PC` avant toute liste d'objets, roles nommes ou modules ;
- suspendu : toute dependance a `gen~`, polyphonie, MC, `buffer~`, corpus, fichier, IR, external, plugin, script, preset critique, ML, FFT/pfft ou convolution ;
- utilisable : SIG critique comme responsabilite documentaire, pas comme UI finale.

---

## 5. PATH / direct / safe

Fait :

L'audit niveau 6 nomme notamment `PATH-DID-DIRECT`, `PATH-MIX-SAFE`, `PATH-OUT-MAIN`, `PATH-SPC-SEND`, `PATH-HAL-SEND`, `PATH-GEN-HAL-SEND`, `PATH-DIAG-TAP` et `PATH-VIEW-TAP`.

Fait :

La table 15 classe les `PATH-*` et les chemins direct/safe comme points a reconditionner.

Fait :

ACT28 rappelle qu'aucun candidat lourd ne peut remplacer P0/P1, direct/safe, protection ou `MIN-DID-PC`.

Inference :

Le vocabulaire `PATH` reste utile pour identifier des chemins critiques possibles. La preuve technique des chemins ne peut pas venir de l'audit niveau 6, car elle depend de la matrice absente.

Recommandation :

Reconditionnement documentaire :

- utilisable : direct/safe comme garde-fou transversal ;
- a reconditionner : chaque `PATH-*` avec fonction, criticite P0/P1, famille lourde impliquee ou non, chemin admis, interdit, sortie, fallback et SIG ;
- non prouvable : tout routage niveau 6 tire de l'audit seul ;
- suspendu : toute nomenclature de chemins lue comme contrat de routage Max reel ;
- interdit : remplacer direct/safe par `gen~`, `poly~`, MC, `buffer~`, script, preset, pfft/FFT, spectral, convolution, corpus, external, plugin, ML, Markov, grammaire ou outil opaque.

---

## 6. Fallback / SIG

Fait :

L'audit niveau 6 emploie un fallback generique : `DISABLED`, `FALLBACK`, `SIGNAL`, `IGNORED`, et nomme `MIN-SIGNAL`.

Fait :

ACT28 demande des fallback et SIG situes par famille lourde, en cas d'absence, bypass, reduction, indisponibilite, incertitude, surcharge, repli, release ou influence perceptible affectant le live.

Inference :

Le principe de fallback et signalement de l'audit est compatible, mais trop generique. `SIGNAL` doit etre reconditionne en SIG situe, sans devenir UI finale ni decision expressive.

Recommandation :

Reconditionnement documentaire :

- utilisable : obligation de sortie jouable quand une source optionnelle ou famille lourde manque, baisse, bypass ou echoue ;
- a reconditionner : fallback generique en fallback par famille lourde ;
- a reconditionner : `SIGNAL` et `MIN-SIGNAL` en SIG par risque, famille, mode absent ou degrade et influence perceptible ;
- suspendu : toute famille lourde sans fallback natif/off/simple ;
- interdit : faire porter au SIG une decision expressive, une automation musicale cachee ou une UI finale.

---

## 7. Espace / halo / reverb / convolution / IR / corpus

Fait :

L'audit niveau 6 identifie `SPC`, `HAL` et `GEN-HAL` comme zone fragile et propose une suite reverb/space/halo/freeze/resonateurs/convolution.

Fait :

La table 15 classe cette prochaine action comme suspendue et classe reverb, convolution, IR, corpus, freeze et resonateurs comme points a reconditionner.

Fait :

ACT28 demande de separer espace, halo, reverb, convolution, IR, corpus et naturalisation par support, fonction, owner, sortie et risque.

Inference :

Cette zone est utilisable comme symptome d'un bloc trop large. Elle devient fragile si elle fusionne espace, halo, reverb, convolution, IR, corpus et naturalisation en une seule categorie technique ou esthetique.

Recommandation :

Reconditionnement documentaire :

- suspendu : fiche reverb/space/halo comme suite directe depuis l'audit niveau 6 ;
- a reconditionner : `SPC`, `HAL`, `GEN-HAL`, reverb, convolution, IR, corpus, freeze et resonateurs avant tout document technique ;
- utilisable : separation documentaire des autorites `HAL` / `SPC` / `REV` / `NAT` ;
- conditions : espace != halo ; reverb != convolution ; IR != verite acoustique automatique ; corpus != banque cachee ;
- naturalisation : utilisable seulement comme changement de support sonore avec phenomene musical ou acoustique nomme et conserve, jamais comme categorie autonome ;
- condition minimale future : fallback espace simple ou off, SIG owner, SIG absence/disponibilite/limite, sortie et audit dedie avant implementation.

---

## 8. Buffer / playback / corpus

Fait :

`buffer~`, playback, corpus et fichiers prepares sont signales par ACT28 comme trou de synchronisation possible avant niveau 6.

Fait :

La table 15 les classe comme supports a reconditionner, jamais comme source indispensable, banque cachee, remplacement du live, asset ou sample bank.

Inference :

Sans clause explicite, un futur document pourrait transformer un support prepare en fichier obligatoire, banque cachee, source directe ou condition de `MIN-DID-PC`.

Recommandation :

Reconditionnement documentaire :

- a reconditionner : `buffer~`, playback, corpus et fichiers prepares comme supports conditionnels, lents, prepares ou offline ;
- interdit : source indispensable du direct, lecture critique, banque de sons cachee, remplacement du live, condition de `MIN-DID-PC`, asset reel ou sample bank ;
- condition future : provenance, role, sortie, preload, fallback sans fichier/corpus et SIG manque/absence/reduction/release ;
- utilisable : seulement comme point de vigilance documentaire si le sujet reapparait.

---

## 9. Scripts / presets / etats caches

Fait :

L'audit niveau 6 signale `STATE-PRESET` et `STATE-TABLE` comme fragiles si une future fiche ne separe pas rappel, preparation, scene et geste.

Fait :

ACT28 maintient `js` / node / scripts hors critique et `pattrstorage` / presets critiques en etat lent, hors direct/safe et hors P0/P1/P2 immediat.

Inference :

Le risque documentaire est une composition cachee : script devenu autorite audio, preset devenu scene qui joue seule, etat cache devenu decision expressive.

Recommandation :

Reconditionnement documentaire :

- a reconditionner : chaque script, preset, table ou etat cache avec fonction, permission, sortie, risque, controle live, fallback manuel ou Max simple, mode absent et SIG ;
- suspendu : tout script ou preset qui touche direct/safe, protection critique, decision expressive ou setup minimal obligatoire ;
- interdit : autorite audio cachee, scene autonome, preset qui joue seul, automation qui remplace le geste musical ;
- utilisable : rappel/configuration seulement si lent, explicite, sortible et non critique.

---

## 10. LAT / GEN

Fait :

La table 15 classe les classes `LAT-*` comme utilisables et les roles `GEN-*` comme a reconditionner.

Fait :

L'audit niveau 6 declare que `LAT` doit rester signal, organisation ou diagnostic, jamais retrait musical automatique.

Fait :

L'audit niveau 6 liste des roles `GEN-*` lies a des inspirations concretes, mais ACT28 exige controle live, vocabulaire borne, fallback, SIG et separation des inspirations sans style plaque.

Inference :

`LAT` reste utile tant qu'il n'a aucune autorite musicale. `GEN` reste utile comme vocabulaire de roles a caracteriser, mais devient fragile s'il produit une generation autonome, une complexite generique ou une decision expressive cachee.

Recommandation :

Reconditionnement documentaire :

- `LAT-*` utilisable : signal, organisation de charge, diagnostic, observation de presence, jamais suppression musicale automatique ;
- `GEN-*` a reconditionner : fonction situee, controle live, vocabulaire borne, fallback, SIG, sortie et condition d'arret avant tout algorithme ;
- suspendu : generation comme scene autonome, compositeur global, decision expressive cachee ou style plaque ;
- non prouvable : validite active des roles `GEN-*` comme architecture niveau 6 depuis l'audit seul.

---

## 11. Conditions d'arret

Fait :

Les fiches 14, 15 et 16 imposent des conditions d'arret avant toute suite prescriptive.

Fait :

Ces conditions reprennent aussi les interdits de methode : pas de patch, pas de mapping, pas de prototype, pas d'asset, pas de sample bank, pas de seuil numerique, pas d'objet Max final.

Inference :

La presente fiche reste correcte seulement si elle s'arrete au reconditionnement documentaire. Tout franchissement vers preuve, architecture ou implementation changerait son statut et contredirait la table 15 et la fiche 16.

Recommandation :

Arreter si une suite tente de :

- creer ou valider un niveau 6 ;
- recreer, remplacer ou inferer la matrice niveau 6 absente ;
- modifier `reprise/` ou modifier l'audit niveau 6 source ;
- utiliser l'audit niveau 6 comme preuve, source prescriptive, nomenclature active ou validation d'architecture ;
- transformer la table 15 en validation technique ;
- transformer ACT28 en decision artistique definitive ;
- transformer la validation documentaire de la fiche 12 en validation musicale, artistique, technique ou architecturale ;
- reprendre une famille lourde sans statut non final, owner, fonction situee, chemin admis, interdit explicite, sortie, fallback, mode absent ou degrade, SIG et condition d'arret avant implementation ;
- produire implementation, patch Max, UI, mapping, prototype, asset, sample bank, seuil numerique ou objet Max final.

---

## 12. Prochaine action exacte

Fait :

La table 15 existe et sert de checklist documentaire utilisable.

Fait :

La fiche 16 fixe le statut de pilotage documentaire de la table 15.

Fait :

La presente fiche transforme les lignes de la table 15 en corrections et reconditionnements documentaires actionnables, sans creer de niveau 6, sans valider l'audit et sans recreer la matrice absente.

Inference :

La prochaine action n'est plus de preparer cette fiche. Elle doit refermer le lieu de tri actif et indiquer que le reconditionnement documentaire borne existe, sans ouvrir d'implementation ni de validation niveau 6.

Recommandation :

Prochaine action exacte apres cette fiche :

```text
mettre a jour docs/reprise/05_NEXT_ACTIONS.md pour remplacer la priorite
"preparer une fiche de reconditionnement documentaire borne niveau 6 / ACT28"
par :

"faire relire docs/reprise/17_RECONDITIONNEMENT_DOCUMENTAIRE_BORNE_NIVEAU_6_ACT28.md
comme fiche de reconditionnement documentaire borne ; si aucune divergence
documentaire n'est signalee, l'utiliser comme checklist de conditions
documentaires avant toute future reprise prescriptive du niveau 6 ; ne pas
modifier reprise/, ne pas modifier l'audit niveau 6 source, ne pas recreer la
matrice niveau 6 absente, ne pas creer de niveau 6 et ne pas implementer."
```

Condition :

Cette prochaine action doit rester documentaire. Elle ne doit pas demander a Yohan de trancher une architecture non instruite ni de valider une decision artistique a partir d'ACT28.

Arret :

La presente fiche s'arrete ici. Elle produit un reconditionnement documentaire borne, pas une preuve, pas une matrice, pas un niveau 6 et pas une specification technique.
