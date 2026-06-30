# Reconciliation niveau 6 corrigee - table courte

Statut : table courte de reconciliation corrigee documentaire, avant toute suite niveau 6.
Date : 2026-06-30.
Perimetre : documentation seulement, sans modification de `reprise/`, sans modification de l'audit niveau 6 source, sans creation de niveau 6, sans recreation de matrice niveau 6, sans implementation, sans patch Max, sans UI, sans mapping, sans prototype, sans asset, sans sample bank, sans seuil numerique et sans objet Max final.

## 1. Sources consultees

Fait :

Sources consultees :

- `docs/reprise/05_NEXT_ACTIONS.md`
- `docs/reprise/14_READINESS_RECONCILIATION_NIVEAU_6_CORRIGEE.md`
- `docs/reprise/13_VALIDATION_HUMAINE_FICHE_12_CORRECTIONS_NIVEAU_6_ACT28.md`
- `docs/reprise/12_CORRECTIONS_DOCUMENTAIRES_NIVEAU_6_ACT28.md`
- `docs/reprise/11_RECONCILIATION_AUDIT_NIVEAU_6_EXISTANT_AVEC_ACT28_ET_MATRICE_LOURDE.md`
- `docs/reprise/10_CLARIFICATION_MATRICE_NIVEAU_6_ABSENTE.md`
- `docs/reprise/09_READINESS_NIVEAU_6_DOCUMENTAIRE.md`
- `docs/reprise/08_SYNCHRONISATION_NIVEAU_5_MATRICE_LOURDE_STATUTS_CHEMINS_FALLBACK_SIG.md`
- `docs/reprise/07_AUDIT_COMPATIBILITE_NIVEAU_5_OBJETS_MAX_CANDIDATS_AVEC_MATRICE_SYNTHESE_CANDIDATS_LOURDS_VESPERARE_v0_1.md`
- `docs/reprise/MANIFEST_FICHIERS.yml`
- `reprise/AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_NIVEAU_6_ROLES_TECHNIQUES_CANDIDATS_CHEMINS_RISQUES_AVEC_CORPUS_v0_1.md`

Fait :

Les copies suffixees `(1)` ne sont pas utilisees comme sources.

Fait :

Le lieu de tri existant pour cette question est la chaine `docs/reprise/05` puis `docs/reprise/07` a `docs/reprise/14`. La presente fiche ne cree pas une source de verite niveau 6. Elle prepare seulement une table de correction et de reconditionnement de l'audit niveau 6 existant.

## 2. Rappels de statut

Fait :

L'audit niveau 6 existant reste un symptome documentaire, une trace de sequence et une checklist de re-audit. Il ne constitue pas une preuve de compatibilite, une validation du niveau 6, une source prescriptive ou une nomenclature active.

Fait :

La matrice niveau 6 source reste absente :

```text
reprise/MATRICE_ARCHITECTURE_MAX_STANDALONE_NIVEAU_6_ROLES_TECHNIQUES_CANDIDATS_CHEMINS_RISQUES_VESPERARE_v0_1.md
```

Fait :

`docs/reprise/13_VALIDATION_HUMAINE_FICHE_12_CORRECTIONS_NIVEAU_6_ACT28.md` valide `docs/reprise/12_CORRECTIONS_DOCUMENTAIRES_NIVEAU_6_ACT28.md` comme garde-fou documentaire d'entree avant toute reprise prescriptive du niveau 6.

Fait :

Cette validation humaine est documentaire. Elle ne vaut pas validation musicale, validation artistique, validation d'architecture, validation d'objet Max, validation de matrice niveau 6 ou validation du niveau 6.

Fait :

`docs/reprise/14_READINESS_RECONCILIATION_NIVEAU_6_CORRIGEE.md` donne le verdict :

```text
pret avec reserves
```

Inference :

La seule suite autorisee par les fiches 12 a 14 est un classement documentaire des affirmations de l'audit niveau 6 existant. Ce classement peut indiquer ce qui reste utilisable comme checklist, ce qui est suspendu ou non prouvable, et ce qui doit etre reconditionne par ACT28. Il ne peut pas creer le niveau 6, reconstruire la matrice absente ou transformer l'audit en preuve.

Recommandation :

Lire toute affirmation issue de l'audit niveau 6 avec quatre statuts seulement :

- `utilisable` : exploitable comme checklist ou garde-fou documentaire, pas comme preuve ;
- `suspendu` : a ne pas reprendre comme suite active tant que la matrice manque ou qu'ACT28 n'est pas reporte ;
- `non prouvable` : conclusion dependante de la matrice niveau 6 absente ;
- `a reconditionner` : element utile seulement apres correction ACT28 explicite.

## 3. Table courte de reconciliation corrigee

Fait :

La table ci-dessous classe les elements ou affirmations de l'audit niveau 6 existant sans leur donner de force probante.

| Element ou affirmation issue de l'audit niveau 6 existant | Statut actuel | Correction ACT28 requise | Garde-fou concerne | Condition avant toute suite | Prochaine action documentaire |
|---|---|---|---|---|---|
| Verdict final : "la matrice niveau 6 est compatible avec le corpus actif" | non prouvable | Declarer le verdict comme dependant d'une matrice absente ; conserver seulement le statut symptome/checklist | familles lourdes ; P0/P1 ; direct/safe | Retrouver et relire la matrice absente contre ACT28, ou maintenir le verdict hors preuve | Inscrire le verdict dans les conclusions non prouvables |
| Affirmation : "la matrice peut etre utilisee comme grille de liaison" | suspendu | Interdire tout usage prescriptif tant que la matrice source manque | familles lourdes ; direct/safe ; MIN-DID-PC | Disposer d'une matrice niveau 6 source relue, sans validation automatique | Classer comme grille seulement hypothetique |
| Sous-verdicts `compatible` par section | non prouvable | Les convertir en hypotheses a re-auditer, pas validations actives | P0/P1 ; direct/safe ; fallback ; SIG | Chaque section doit citer ACT28, matrice lourde et conditions d'entree | Reporter en liste de points a verifier, sans verdict actif |
| `FINAL-CANDIDATE` | a reconditionner | Definir comme candidat non final ; interdire toute lecture comme choix final, objet final, prototype ou implementation | familles lourdes ; scripts/presets | Statut non final, owner, fonction situee, sortie, interdit, fallback et SIG explicites | Renommer ou annoter le terme dans une future correction documentaire |
| Objets Max nommes comme candidats ou exemples | a reconditionner | Garder les noms comme exemples seulement ; rattacher chaque famille lourde au statut matrice lourde, chemin admis, interdit, fallback et SIG | familles lourdes ; P0/P1 ; direct/safe | Aucun objet ne doit conditionner P0/P1, direct/safe, protection ou `MIN-DID-PC` | Produire une liste de correspondance objet/famille/statut si une suite documentaire l'exige |
| Roles `MIN-*` et `MIN-DID-PC` | a reconditionner | Reformuler par responsabilites minimales : input live, direct, safe, mix, generation simple, analyse simple, espace simple, protection, controle live, signalisation critique | MIN-DID-PC ; direct/safe ; SIG | Aucun `gen~`, polyphonie, MC, corpus, fichier, IR, external, plugin, script, preset critique, ML, FFT/pfft ou convolution obligatoire | Maintenir comme brouillon de responsabilites, pas nomenclature validee |
| `PATH-DID-DIRECT`, `PATH-MIX-SAFE`, `PATH-OUT-MAIN` et autres `PATH-*` | a reconditionner | Croiser chaque chemin avec P0/P1, direct/safe, interdits lourds, sortie, fallback et SIG | P0/P1 ; direct/safe ; fallback ; SIG | La preuve technique des chemins ne peut pas venir de l'audit seul | Garder direct/safe comme garde-fou transversal, pas comme validation de routage |
| Fallback generique : `DISABLED`, `FALLBACK`, `SIGNAL`, `IGNORED` | a reconditionner | Remplacer par fallback par famille lourde et mode absent/degrade explicite | fallback ; SIG ; familles lourdes | Chaque absence, bypass, reduction, surcharge, indisponibilite ou incertitude affectant le live doit avoir une sortie jouable | Reporter une table fallback/SIG par famille seulement si necessaire |
| `MIN-SIGNAL` et `SIGNAL` generique | a reconditionner | Transformer `SIGNAL` en SIG situe par famille, risque, absence, bypass, reduction, incertitude, repli, release ou influence perceptible | SIG ; fallback | SIG ne doit pas devenir UI finale ni decision expressive | Remplacer les mentions generiques par exigences SIG documentaires |
| `SPC`, `HAL`, `GEN-HAL` et prochaine action reverb/space/halo | suspendu | Separer espace, halo, reverb, convolution, IR, corpus et naturalisation par support, fonction, owner, sortie et risque | espace/halo ; familles lourdes ; fallback ; SIG | Aucune suite reverb/space/halo directe depuis l'audit tant que ACT28 n'est pas reporte | Garder comme zone fragile a reconditionner, pas comme prochaine fiche technique active |
| Reverb, convolution, IR, corpus, freeze, resonateurs | a reconditionner | Interdire la fusion en categorie unique ; exiger fallback espace simple/off, SIG owner, SIG absence/disponibilite/limite et audit dedie avant implementation | espace/halo ; buffer/corpus ; familles lourdes | Convolution ne vaut pas reverb automatique ; IR ne vaut pas verite acoustique automatique ; corpus ne vaut pas banque cachee | Reporter seulement une note de separation documentaire |
| `buffer~`, playback, corpus et fichiers prepares | a reconditionner | Les maintenir comme supports conditionnels, lents, prepares ou offline ; jamais source indispensable, banque cachee, remplacement du live, asset ou sample bank | buffer/corpus ; MIN-DID-PC ; fallback ; SIG | Tout usage futur doit declarer provenance, role, sortie, preload, fallback sans fichier/corpus et SIG manque/absence/reduction/release | Ajouter seulement une clause de garde-fou si le sujet reapparait |
| `STATE-PRESET`, `STATE-TABLE`, scripts et etats caches | a reconditionner | Declarer fonction, permission, sortie, risque, controle live, fallback manuel ou Max simple, mode absent et SIG | scripts/presets ; direct/safe ; SIG | Rester hors direct/safe, hors protection critique, hors decision expressive et hors setup minimal obligatoire | Garder comme risque documentaire de composition cachee |
| Classes `LAT-*` | utilisable | Maintenir `LAT` comme signal, organisation ou diagnostic ; jamais autorite musicale, retrait automatique ou degradation artistique | SIG ; direct/safe | Toute latence doit rester non autoritaire et situee par fonction/chemin | Conserver comme vocabulaire a verifier |
| Roles `GEN-*` | a reconditionner | Ajouter controle live, vocabulaire borne, fallback, SIG et separation des inspirations sans style plaque | familles lourdes ; fallback ; SIG | Aucune generation ne doit devenir scene autonome, compositeur global ou decision expressive cachee | Reporter en questions de caracterisation si une future suite l'exige |
| Hors-perimetre technique de l'audit | utilisable | Le conserver tel quel : pas de patch final, routage final, algorithme, seuil, buffer final, driver, UI finale, test pratique, benchmark ou implementation | scripts/presets ; familles lourdes ; buffer/corpus | Toute suite qui franchit ce hors-perimetre doit s'arreter | Reprendre comme condition d'arret documentaire |

## 4. Elements utilisables comme checklist

Fait :

Les elements suivants de l'audit niveau 6 restent utilisables comme checklist, et seulement comme checklist :

- liste des domaines couverts par l'audit : roles techniques, candidats possibles, classes `PATH`, classes `LAT`, `MIN-DID-PC`, roles `GEN`, separation `SPC` / `HAL` / `GEN-HAL`, risques et prochaines fiches ;
- corrections `CORR-MX6-1` a `CORR-MX6-8`, a croiser avec ACT28 ;
- fragilites `FRAG-MX6-*`, a maintenir visibles ;
- roles `MIN-*`, comme brouillon de responsabilites minimales ;
- classes `PATH`, `LAT`, `GEN`, `SPC`, `HAL`, `GEN-HAL`, comme vocabulaire a verifier ;
- hors-perimetre technique, comme garde-fou encore compatible.

Inference :

Ces elements aident a savoir quoi re-auditer. Ils ne prouvent pas que les roles, chemins, statuts, objets ou suites proposees sont valides.

Recommandation :

Ne pas reprendre ces elements dans un document plus prescriptif sans statut explicite, source autorisee, correction ACT28, garde-fou et condition d'arret.

## 5. Elements suspendus ou non prouvables

Fait :

Les elements suivants sont suspendus ou non prouvables a cause de la matrice niveau 6 absente :

- verdict final de compatibilite de la matrice niveau 6 ;
- usage de la matrice comme grille de liaison ;
- sous-verdicts `compatible` par section ;
- validation active des roles, chemins, classes et objets nommes ;
- nomenclature `PATH`, `LAT`, `GEN`, `SPC`, `HAL`, `GEN-HAL` comme source active ;
- prochaine action reverb/space/halo comme suite directe depuis l'audit ;
- toute preuve de routage, choix d'objet, role technique final ou architecture niveau 6.

Inference :

L'absence de la matrice source ne rend pas l'audit inutile. Elle retire sa force de preuve et interdit tout passage prescriptif depuis ses conclusions.

Recommandation :

Classer ces elements comme `suspendu` ou `non prouvable` jusqu'a ce qu'une matrice niveau 6 source soit retrouvee et relue contre ACT28, sans validation automatique.

## 6. Points a reconditionner par ACT28

Fait :

Les points suivants doivent etre reconditionnes avant toute suite :

- `FINAL-CANDIDATE` ;
- objets Max nommes ;
- `MIN-DID-PC` et roles `MIN-*` ;
- `PATH-*`, direct/safe et chemins critiques ;
- fallback generique ;
- `SIGNAL` generique et `MIN-SIGNAL` ;
- familles lourdes : `gen~`, `poly~`, MC, `buffer~` / playback / corpus, scripts, presets, FFT/pfft, convolution, IR, reverb, espace, halo, externals, plugins, ML, Markov, grammaire et statistiques ;
- `SPC`, `HAL`, `GEN-HAL`, reverb, espace, halo, convolution, IR, corpus et naturalisation ;
- scripts, presets, `STATE-PRESET`, `STATE-TABLE` et etats caches ;
- classes `LAT-*` ;
- roles `GEN-*`.

Inference :

Le reconditionnement ACT28 ne ferme pas definitivement les recherches futures. Il impose un statut non final, un owner, une fonction situee, un chemin admis, un interdit explicite, une sortie, un fallback, un mode absent ou degrade, un SIG et une condition d'arret avant implementation.

Recommandation :

Ne pas traiter ACT28 comme une decision artistique definitive. ACT28 reste un garde-fou documentaire sur statuts, chemins, interdits, fallback, SIG, modes absents et conditions d'entree.

## 7. Conditions d'arret

Condition d'arret :

Arreter si une suite tente de creer le niveau 6, de recreer la matrice niveau 6 absente, de modifier `reprise/`, de modifier l'audit niveau 6 source, ou d'utiliser l'audit niveau 6 comme preuve.

Condition d'arret :

Arreter si la fiche 12 validee humainement est transformee en validation musicale, artistique, technique, architecturale, validation de matrice niveau 6 ou validation du niveau 6.

Condition d'arret :

Arreter si une famille lourde devient condition de P0/P1, direct/safe, protection, `MIN-DID-PC`, grave critique, scene, HAL/SPC/REV ou decision expressive.

Condition d'arret :

Arreter avant toute implementation, patch Max, UI, mapping, prototype, asset, sample bank, seuil numerique ou objet Max final.

## 8. Prochaine action exacte

Recommandation :

Prochaine action exacte apres cette table :

```text
mettre a jour docs/reprise/05_NEXT_ACTIONS.md pour remplacer la priorite
"preparer une table courte de reconciliation corrigee documentaire" par :

"faire relire docs/reprise/15_RECONCILIATION_NIVEAU_6_CORRIGEE_TABLE_COURTE.md
comme table de correction documentaire ; si aucune divergence documentaire
n'est signalee, utiliser cette table comme checklist de reconditionnement
avant toute future reprise prescriptive du niveau 6 ; ne pas modifier reprise/,
ne pas modifier l'audit source, ne pas recreer la matrice niveau 6, ne pas
creer de niveau 6 et ne pas implementer."
```

Condition :

Cette prochaine action ne doit demander a Yohan aucune decision artistique sur une architecture non instruite. Elle doit seulement ouvrir une correction d'intention si la table contient une divergence documentaire ou tire le systeme vers une direction trop technique.

Arret :

La presente fiche s'arrete a la table courte. Elle ne cree pas le niveau 6, ne recree pas la matrice niveau 6 et ne transforme pas l'audit niveau 6 en preuve.
