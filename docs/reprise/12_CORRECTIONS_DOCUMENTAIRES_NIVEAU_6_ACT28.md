# Corrections documentaires niveau 6 / ACT28

Statut : fiche de corrections documentaires avant toute reprise prescriptive du niveau 6.
Date : 2026-06-30.
Perimetre : documentation seulement, sans modification de `reprise/`, sans modification de l'audit niveau 6 source, sans creation de matrice niveau 6, sans creation de niveau 6, sans implementation, sans patch Max, sans UI, sans mapping, sans prototype, sans asset, sans sample bank, sans seuil numerique et sans objet Max final.

## 1. Sources consultees

Fait :

Sources demandees et consultees :

- `docs/reprise/05_NEXT_ACTIONS.md`
- `docs/reprise/09_READINESS_NIVEAU_6_DOCUMENTAIRE.md`
- `docs/reprise/10_CLARIFICATION_MATRICE_NIVEAU_6_ABSENTE.md`
- `docs/reprise/11_RECONCILIATION_AUDIT_NIVEAU_6_EXISTANT_AVEC_ACT28_ET_MATRICE_LOURDE.md`
- `docs/reprise/07_AUDIT_COMPATIBILITE_NIVEAU_5_OBJETS_MAX_CANDIDATS_AVEC_MATRICE_SYNTHESE_CANDIDATS_LOURDS_VESPERARE_v0_1.md`
- `docs/reprise/08_SYNCHRONISATION_NIVEAU_5_MATRICE_LOURDE_STATUTS_CHEMINS_FALLBACK_SIG.md`
- `docs/reprise/MANIFEST_FICHIERS.yml`
- `reprise/AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_NIVEAU_6_ROLES_TECHNIQUES_CANDIDATS_CHEMINS_RISQUES_AVEC_CORPUS_v0_1.md`

Fait :

Le lieu de tri existant pour cette question est deja la chaine `docs/reprise/05` a `docs/reprise/11`. La presente fiche ne remplace pas cette chaine : elle prepare seulement les corrections a reporter avant toute reprise prescriptive du niveau 6.

## 2. Verdict de statut

Fait :

`docs/reprise/11_RECONCILIATION_AUDIT_NIVEAU_6_EXISTANT_AVEC_ACT28_ET_MATRICE_LOURDE.md` donne le verdict suivant pour l'audit niveau 6 existant :

```text
reconciliable avec corrections
```

Fait :

Le meme document precise que l'audit niveau 6 existant reste une trace documentaire utilisable pour re-audit, mais une preuve invalide pour validation niveau 6 et une base prescriptive interdite avant corrections ACT28.

Fait :

`docs/reprise/10_CLARIFICATION_MATRICE_NIVEAU_6_ABSENTE.md` confirme l'absence du fichier source :

```text
reprise/MATRICE_ARCHITECTURE_MAX_STANDALONE_NIVEAU_6_ROLES_TECHNIQUES_CANDIDATS_CHEMINS_RISQUES_VESPERARE_v0_1.md
```

Fait :

`docs/reprise/MANIFEST_FICHIERS.yml` classe l'audit niveau 6 comme probablement actif, mais signale que la matrice niveau 6 correspondante est absente.

Fait :

L'audit niveau 6 source conclut que la matrice niveau 6 est compatible avec le corpus actif, mais il cite comme premiere source active la matrice niveau 6 absente.

Inference :

Le corpus niveau 6 actuel n'est ni absent, ni proprement present. L'audit est re-exploitable comme symptome documentaire, checklist de fragilites et trace de sequence. Il ne peut pas prouver la compatibilite d'une matrice qui n'est pas disponible.

Recommandation :

Avant toute reprise prescriptive du niveau 6, reporter les corrections ACT28 ci-dessous comme conditions d'entree. Ne pas transformer ACT28 en decision artistique : ACT28 reste un garde-fou documentaire sur statuts, chemins, interdits, fallback, SIG et modes absents.

## 3. Corrections par familles

### 3.1. Statut de l'audit niveau 6

Fait :

L'audit niveau 6 existant donne des sous-verdicts `compatible`, liste `CORR-MX6-1` a `CORR-MX6-8`, identifie des fragilites `FRAG-MX6-*`, et propose une prochaine action reverb/space/halo.

Inference :

Ces elements sont utiles pour savoir quoi re-auditer, mais ils ne valent pas validation documentaire depuis que la matrice source est absente et que les corrections ACT28 sont plus recentes.

Recommandation :

Corriger le statut documentaire ainsi :

```text
audit niveau 6 = trace de sequence et symptome documentaire ;
verdict final de compatibilite = non prouvable ;
usage autorise = checklist de re-audit ;
usage interdit = preuve, source prescriptive, validation niveau 6.
```

Sources :

- `docs/reprise/10_CLARIFICATION_MATRICE_NIVEAU_6_ABSENTE.md`
- `docs/reprise/11_RECONCILIATION_AUDIT_NIVEAU_6_EXISTANT_AVEC_ACT28_ET_MATRICE_LOURDE.md`
- `reprise/AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_NIVEAU_6_ROLES_TECHNIQUES_CANDIDATS_CHEMINS_RISQUES_AVEC_CORPUS_v0_1.md`

### 3.2. Matrice niveau 6 absente

Fait :

La matrice niveau 6 source est absente et aucun equivalent par nom ou fonction documentaire n'a ete retrouve selon la clarification.

Inference :

Toute affirmation de l'audit qui valide "la matrice" depend d'un objet documentaire manquant.

Recommandation :

Marquer les conclusions suivantes comme non prouvables ou suspendues :

| Affirmation de l'audit niveau 6 | Correction documentaire requise |
|---|---|
| `la matrice niveau 6 est compatible avec le corpus actif` | Non prouvable tant que la matrice source reste absente |
| `la matrice peut etre utilisee comme grille de liaison` | Interdit comme source prescriptive |
| Sous-verdicts `compatible` par section | Hypotheses a re-auditer contre ACT28 |
| Prochaine action reverb/space/halo comme suite directe | Suspendue par absence de matrice et par ACT28 |

Sources :

- `docs/reprise/09_READINESS_NIVEAU_6_DOCUMENTAIRE.md`
- `docs/reprise/10_CLARIFICATION_MATRICE_NIVEAU_6_ABSENTE.md`
- `docs/reprise/11_RECONCILIATION_AUDIT_NIVEAU_6_EXISTANT_AVEC_ACT28_ET_MATRICE_LOURDE.md`

### 3.3. Statuts candidats lourds

Fait :

`docs/reprise/07_AUDIT_COMPATIBILITE_NIVEAU_5_OBJETS_MAX_CANDIDATS_AVEC_MATRICE_SYNTHESE_CANDIDATS_LOURDS_VESPERARE_v0_1.md` indique que le niveau 5 reste compatible seulement si ses objets restent des candidats non definitifs et si les conditions lourdes sont reportees avant niveau 6.

Fait :

`docs/reprise/08_SYNCHRONISATION_NIVEAU_5_MATRICE_LOURDE_STATUTS_CHEMINS_FALLBACK_SIG.md` demande une correspondance explicite :

```text
statut niveau 5 -> statut matrice lourde -> chemin admis -> interdit -> fallback/SIG
```

Inference :

Un statut `CANDIDATE`, `OPTION`, `LATER`, `ACCEPTE CONDITIONNEL` ou apparent dans l'audit niveau 6 peut etre lu trop vite comme autorisation technique.

Recommandation :

Avant toute suite niveau 6, chaque candidat lourd conserve doit declarer owner, fonction, chemin de criticite, sortie, fallback, mode absent et SIG. Aucun statut de candidat ne vaut choix final, prototype, patch, UI, mapping, asset, sample bank ou implementation.

Sources :

- `docs/reprise/07_AUDIT_COMPATIBILITE_NIVEAU_5_OBJETS_MAX_CANDIDATS_AVEC_MATRICE_SYNTHESE_CANDIDATS_LOURDS_VESPERARE_v0_1.md`
- `docs/reprise/08_SYNCHRONISATION_NIVEAU_5_MATRICE_LOURDE_STATUTS_CHEMINS_FALLBACK_SIG.md`

### 3.4. P0/P1

Fait :

ACT28 confirme que les candidats lourds restent interdits par defaut en P0/P1.

Inference :

Un role ou chemin niveau 6 qui touche P0/P1 ne peut pas heriter directement d'une famille lourde, meme si l'audit ancien l'a classe compatible.

Recommandation :

Ajouter une condition d'entree : tout role, chemin ou candidat issu de l'audit niveau 6 doit declarer s'il touche P0/P1. Si une famille lourde est impliquee, elle reste exclue de P0/P1 par defaut.

Sources :

- `docs/reprise/07_AUDIT_COMPATIBILITE_NIVEAU_5_OBJETS_MAX_CANDIDATS_AVEC_MATRICE_SYNTHESE_CANDIDATS_LOURDS_VESPERARE_v0_1.md`
- `docs/reprise/08_SYNCHRONISATION_NIVEAU_5_MATRICE_LOURDE_STATUTS_CHEMINS_FALLBACK_SIG.md`
- `docs/reprise/11_RECONCILIATION_AUDIT_NIVEAU_6_EXISTANT_AVEC_ACT28_ET_MATRICE_LOURDE.md`

### 3.5. Direct / safe

Fait :

L'audit niveau 6 dit proteger `PATH-DID-DIRECT`, `PATH-MIX-SAFE` et `PATH-OUT-MAIN`, mais cette protection est rattachee a la matrice absente.

Fait :

ACT28 rappelle qu'aucun candidat lourd ne peut remplacer direct/safe.

Inference :

Le principe direct/safe reste valable comme garde-fou. La preuve technique de sa traduction niveau 6 n'est pas disponible.

Recommandation :

Reprendre direct/safe seulement comme interdit transversal : aucun `gen~`, `poly~`, MC, `buffer~`, script, preset, FFT/pfft, spectral, convolution, corpus, external, plugin, ML, Markov, grammaire ou outil opaque ne peut remplacer direct/safe.

Sources :

- `docs/reprise/08_SYNCHRONISATION_NIVEAU_5_MATRICE_LOURDE_STATUTS_CHEMINS_FALLBACK_SIG.md`
- `docs/reprise/11_RECONCILIATION_AUDIT_NIVEAU_6_EXISTANT_AVEC_ACT28_ET_MATRICE_LOURDE.md`
- `reprise/AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_NIVEAU_6_ROLES_TECHNIQUES_CANDIDATS_CHEMINS_RISQUES_AVEC_CORPUS_v0_1.md`

### 3.6. `MIN-DID-PC`

Fait :

L'audit niveau 6 liste des roles `MIN-*`, dont input didgeridoo, direct, mix safe, out, analyse simple, generation simple, espace simple, protection, controle live et signalisation.

Fait :

ACT28 demande que `MIN-DID-PC` soit formule par responsabilites minimales, sans accumulation d'objets ni dependance lourde.

Inference :

La liste `MIN-*` de l'audit niveau 6 est utilisable comme brouillon de responsabilites, pas comme nomenclature validee ni liste d'objets.

Recommandation :

Corriger `MIN-DID-PC` avant toute suite niveau 6 :

```text
responsabilites minimales d'abord ;
aucun objet lourd obligatoire ;
aucun corpus, fichier, IR, external, plugin, script, preset critique, ML,
FFT/pfft, convolution, polyphonie, MC ou gen~ comme condition du setup minimal ;
SIG critique maintenu comme responsabilite, pas UI finale.
```

Sources :

- `docs/reprise/07_AUDIT_COMPATIBILITE_NIVEAU_5_OBJETS_MAX_CANDIDATS_AVEC_MATRICE_SYNTHESE_CANDIDATS_LOURDS_VESPERARE_v0_1.md`
- `docs/reprise/08_SYNCHRONISATION_NIVEAU_5_MATRICE_LOURDE_STATUTS_CHEMINS_FALLBACK_SIG.md`
- `reprise/AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_NIVEAU_6_ROLES_TECHNIQUES_CANDIDATS_CHEMINS_RISQUES_AVEC_CORPUS_v0_1.md`

### 3.7. Fallback

Fait :

L'audit niveau 6 demande que toute source optionnelle declare `DISABLED`, `FALLBACK`, `SIGNAL` ou `IGNORED` en absence.

Fait :

ACT28 demande des fallback plus precis par famille lourde : non-`gen~`, mono/simple, stereo/simple, sans buffer, sans script, sans spectral, sans convolution, natif/off, deterministe/simple, ou fallback total selon le cas.

Inference :

Le principe de l'audit niveau 6 est compatible, mais trop generique pour une reprise ACT28.

Recommandation :

Remplacer tout fallback generique par un fallback par famille lourde, avec mode absent ou degrade explicite, et sortie jouable sans dependance lourde.

Sources :

- `docs/reprise/08_SYNCHRONISATION_NIVEAU_5_MATRICE_LOURDE_STATUTS_CHEMINS_FALLBACK_SIG.md`
- `docs/reprise/11_RECONCILIATION_AUDIT_NIVEAU_6_EXISTANT_AVEC_ACT28_ET_MATRICE_LOURDE.md`
- `reprise/AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_NIVEAU_6_ROLES_TECHNIQUES_CANDIDATS_CHEMINS_RISQUES_AVEC_CORPUS_v0_1.md`

### 3.8. SIG

Fait :

L'audit niveau 6 contient `MIN-SIGNAL` et demande `SIGNAL` pour les sources optionnelles absentes.

Fait :

ACT28 exige SIG en cas d'absence, bypass, reduction, indisponibilite, incertitude, surcharge, repli, release ou influence perceptible affectant le live.

Inference :

`SIGNAL` est compatible mais incomplet. Il doit devenir SIG situe par famille et par risque.

Recommandation :

Avant toute reprise niveau 6, exiger pour chaque famille lourde : SIG attendu, mode absent/degrade, sortie jouable, et condition de non-confusion entre signalement, UI finale et decision expressive.

Sources :

- `docs/reprise/08_SYNCHRONISATION_NIVEAU_5_MATRICE_LOURDE_STATUTS_CHEMINS_FALLBACK_SIG.md`
- `docs/reprise/11_RECONCILIATION_AUDIT_NIVEAU_6_EXISTANT_AVEC_ACT28_ET_MATRICE_LOURDE.md`

### 3.9. Familles lourdes

Fait :

ACT28 nomme les familles lourdes a contraindre : `gen~`, `poly~`, MC, `buffer~` / playback / corpus, `js` / node / scripts, `pattrstorage` / presets, pfft/FFT/spectral, granularite, modeles physiques, convolution / IR / reverb / espace / halo / corpus, externals / plugins / packages, ML / classification / Markov / grammaire / statistiques.

Inference :

La correction ne consiste pas a interdire toute recherche future. Elle consiste a empecher ces familles de devenir source indispensable, autorite cachee, decision musicale autonome, protection, direct/safe ou condition de setup minimal.

Recommandation :

Pour toute famille lourde reprise depuis l'audit niveau 6, exiger :

```text
statut non final ;
owner ;
fonction situee ;
chemin de criticite ;
sortie ;
interdit explicite ;
fallback ;
mode absent ;
SIG ;
condition d'arret avant implementation.
```

Sources :

- `docs/reprise/07_AUDIT_COMPATIBILITE_NIVEAU_5_OBJETS_MAX_CANDIDATS_AVEC_MATRICE_SYNTHESE_CANDIDATS_LOURDS_VESPERARE_v0_1.md`
- `docs/reprise/08_SYNCHRONISATION_NIVEAU_5_MATRICE_LOURDE_STATUTS_CHEMINS_FALLBACK_SIG.md`
- `docs/reprise/11_RECONCILIATION_AUDIT_NIVEAU_6_EXISTANT_AVEC_ACT28_ET_MATRICE_LOURDE.md`

### 3.10. Buffer / playback / corpus

Fait :

ACT28 signale `buffer~`, playback, corpus et fichiers prepares comme trou de synchronisation possible avant niveau 6.

Inference :

Sans correction, un support prepare pourrait etre lu comme banque cachee, fichier indispensable, remplacement du live, source directe ou condition de `MIN-DID-PC`.

Recommandation :

Reporter la clause suivante avant toute suite niveau 6 :

```text
buffer~, playback, corpus et fichiers prepares restent des supports
conditionnels, lents, prepares ou offline.

Ils ne deviennent jamais source indispensable du direct, lecture critique,
banque de sons cachee, remplacement du live, condition de MIN-DID-PC,
asset reel ou sample bank.

Tout usage futur declare provenance, role, sortie, preload, fallback sans
fichier/corpus et SIG manque/absence/reduction/release.
```

Sources :

- `docs/reprise/07_AUDIT_COMPATIBILITE_NIVEAU_5_OBJETS_MAX_CANDIDATS_AVEC_MATRICE_SYNTHESE_CANDIDATS_LOURDS_VESPERARE_v0_1.md`
- `docs/reprise/08_SYNCHRONISATION_NIVEAU_5_MATRICE_LOURDE_STATUTS_CHEMINS_FALLBACK_SIG.md`

### 3.11. Espace / halo / reverb / convolution / IR / corpus

Fait :

L'audit niveau 6 identifie `SPC` / `HAL` / `GEN-HAL` comme zone fragile et propose une fiche dediee reverb/space/halo/freeze/resonateurs/convolution.

Fait :

ACT28 demande de separer espace, halo, reverb, convolution, IR, corpus et naturalisation par support, fonction, owner, sortie et risque.

Inference :

Cette zone ne peut pas etre reprise comme suite directe depuis l'audit niveau 6, car l'audit depend de la matrice absente et parce que la correction ACT28 exige d'abord une separation documentaire.

Recommandation :

Corriger avant toute suite :

```text
espace != halo ;
reverb != convolution ;
IR != verite acoustique automatique ;
corpus != banque cachee ;
naturalisation = changement de support sonore avec phenomene musical ou
acoustique nomme, pas categorie autonome ;
HAL/SPC/REV/NAT gardent leurs autorites separees.
```

Sources :

- `docs/reprise/08_SYNCHRONISATION_NIVEAU_5_MATRICE_LOURDE_STATUTS_CHEMINS_FALLBACK_SIG.md`
- `docs/reprise/11_RECONCILIATION_AUDIT_NIVEAU_6_EXISTANT_AVEC_ACT28_ET_MATRICE_LOURDE.md`
- `reprise/AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_NIVEAU_6_ROLES_TECHNIQUES_CANDIDATS_CHEMINS_RISQUES_AVEC_CORPUS_v0_1.md`

### 3.12. Scripts / presets / etats caches

Fait :

L'audit niveau 6 signale `STATE-PRESET` et `STATE-TABLE` comme fragiles si une future fiche ne separe pas rappel, preparation, scene et geste.

Fait :

ACT28 maintient `js` / node / scripts hors critique et `pattrstorage` / presets critiques en etat lent, hors direct/safe et hors P0/P1/P2 immediat.

Inference :

Le risque est une composition cachee, un script devenu autorite audio, ou un preset devenu scene qui joue seule.

Recommandation :

Avant toute reprise niveau 6, tout script, preset ou etat doit declarer fonction, permission, sortie, risque, controle live, fallback manuel ou Max simple, mode absent et SIG. Il doit rester hors direct/safe, hors protection critique, hors decision expressive et hors setup minimal obligatoire.

Sources :

- `docs/reprise/07_AUDIT_COMPATIBILITE_NIVEAU_5_OBJETS_MAX_CANDIDATS_AVEC_MATRICE_SYNTHESE_CANDIDATS_LOURDS_VESPERARE_v0_1.md`
- `docs/reprise/08_SYNCHRONISATION_NIVEAU_5_MATRICE_LOURDE_STATUTS_CHEMINS_FALLBACK_SIG.md`
- `docs/reprise/11_RECONCILIATION_AUDIT_NIVEAU_6_EXISTANT_AVEC_ACT28_ET_MATRICE_LOURDE.md`
- `reprise/AUDIT_COMPATIBILITE_ARCHITECTURE_MAX_STANDALONE_NIVEAU_6_ROLES_TECHNIQUES_CANDIDATS_CHEMINS_RISQUES_AVEC_CORPUS_v0_1.md`

## 4. Corrections a effectuer avant toute suite niveau 6

Recommandation :

Avant toute reprise prescriptive du niveau 6, corriger au minimum :

1. Declarer l'audit niveau 6 existant comme `reconciliable avec corrections`, mais non prescriptif.
2. Declarer que l'audit reste symptome documentaire et trace de sequence, pas preuve.
3. Maintenir la matrice niveau 6 source comme absente, sans la recreer.
4. Marquer les conclusions de compatibilite de l'audit comme non prouvables tant que la matrice source manque.
5. Reporter la correspondance `statut niveau 5 -> statut matrice lourde -> chemin admis -> interdit -> fallback/SIG`.
6. Reporter la clause candidats lourds : owner, fonction, chemin de criticite, sortie, fallback, mode absent et SIG.
7. Interdire aux candidats lourds de conditionner P0/P1, direct/safe, protection, `MIN-DID-PC`, grave critique, scene, HAL/SPC/REV ou decision expressive.
8. Reformuler `MIN-DID-PC` par responsabilites minimales avant toute liste d'objets, roles nommes ou modules.
9. Remplacer fallback generique et `SIGNAL` generique par fallback/SIG situes par famille lourde.
10. Isoler `buffer~`, playback, corpus et fichiers prepares comme supports conditionnels, jamais asset, sample bank ou source indispensable.
11. Separer espace, halo, reverb, convolution, IR, corpus et naturalisation par support, fonction, owner, sortie et risque.
12. Maintenir scripts, presets et etats caches hors critique, hors direct/safe, hors protection, hors decision expressive et hors scene autonome.
13. Maintenir les copies suffixees `(1)` et fichiers a statut manifeste `inconnu` hors de cette chaine, sauf decision explicite de reconciliation.
14. Conserver la separation `Fait / Inference / Recommandation` dans toute suite.

## 5. Ce qui doit rester interdit

Recommandation :

Doivent rester interdits dans la suite immediate :

- modifier `reprise/` ;
- modifier l'audit niveau 6 source ;
- creer ou recreer la matrice niveau 6 absente ;
- creer un niveau 6 ;
- utiliser l'audit niveau 6 comme preuve ;
- utiliser les sous-verdicts de l'audit comme validations actives ;
- transformer ACT28 en decision artistique ;
- demander une decision artistique a Yohan sur une architecture non instruite ;
- choisir un objet Max final ;
- produire une implementation, un patch Max, une UI, un mapping, un prototype, un asset, une banque de samples ou un seuil numerique ;
- faire entrer une famille lourde dans P0/P1, direct/safe, protection, `MIN-DID-PC` obligatoire, scene, HAL/SPC/REV ou decision expressive ;
- utiliser des fichiers suffixes `(1)` ou a statut `inconnu` comme sources sans reconciliation dediee.

## 6. Prochaine action exacte apres cette fiche

Recommandation :

Prochaine action exacte :

```text
mettre a jour docs/reprise/05_NEXT_ACTIONS.md pour remplacer la priorite
"preparer la fiche de corrections documentaires niveau 6 / ACT28" par :

"faire valider ou amender docs/reprise/12_CORRECTIONS_DOCUMENTAIRES_NIVEAU_6_ACT28.md
comme condition d'entree documentaire avant toute reprise prescriptive du niveau 6 ;
ne pas modifier reprise/ ; ne pas creer la matrice niveau 6 ; ne pas creer
de niveau 6 ; ne pas implementer."
```

Condition d'arret :

```text
la suite s'arrete a la mise a jour du lieu de tri et a la revue des corrections ;
elle ne produit aucun document niveau 6, aucune matrice niveau 6 et aucune action
technique.
```
