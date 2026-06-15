# SOURCE_NEEDS_AUDIT_BATCH_01

## Statut

Premier audit limité `source_needs`, selon le protocole agency-first.

Scope strict :

```text
SOURCE_NEED_LIVE_DIDGERIDOO_PRESSURE_FORMANTS
SOURCE_NEED_LIVE_JAW_HARPS_FORMANT_MICROPULSE
SOURCE_NEED_SUB_PRESSURE_ENGINE
```

Ce document n’est pas :

- un audit complet de `assets/source_needs` ;
- une spec ;
- un verifier complet ;
- un prototype ;
- un patch ;
- un mapping ;
- une décision d’architecture.

---

# 1. Résumé exécutif

Les trois source_needs audités sont globalement cohérents avec la méthode agency-first.

Points forts :

- les deux sources acoustiques sont traitées comme sources live fixes, pas comme banques de samples ;
- les fiches mentionnent explicitement le risque de figer l’agency par des samples ;
- le sub est défini comme partenaire / soutien / centre physique, pas comme remplacement du didgeridoo ;
- les risques principaux sont déjà nommés : masquage, boue, caricature, fatigue, perte du live, conflit sub/didgeridoo, sub générique.

Point à surveiller :

```text
Le sub pressure engine est nécessaire comme fonction techno/corps, mais il est aussi le plus dangereux pour l’agency s’il devient trop central, trop stable ou trop prescriptif.
```

---

# 2. Audit — Didgeridoo live

## Source_need

```text
SOURCE_NEED_LIVE_DIDGERIDOO_PRESSURE_FORMANTS
```

## Claim porté

Le didgeridoo live porte pression organique, souffle, formants, torsion, corps, tension continue et retour au corps.

## Fonction musicale supposée

Source live centrale de pression organique et de formants graves.

## Dimension d’agency concernée

Très haute : souffle, corps, geste, live agency, timing, pression, relation au sub.

## Risque de remplacement du live

Faible si la fiche est respectée.

La fiche précise :

```text
live_requirement: obligatoire
sample_viability: faible comme source principale
performative_sample_bank: non
```

Risque réel : les traitements ou doubles synthétiques pourraient devenir trop centraux et masquer la source.

## Risque de surcharge cognitive

Moyen.

Les contrôles attendus sont nombreux : pression, formants, souffle, torsion, sub relation, résonance, sécurité grave, retour au corps.

Il faudra plus tard les router contextuellement.

## Risque de décor/caricature

Moyen.

La fiche nomme déjà le risque de couleur trop identifiable, drone statique et caricature de didgeridoo.

## Sortie / retrait / override nécessaire

Oui :

- relation au sub ;
- sécurité grave ;
- retrait du sub si masquage ;
- retour au corps sans écraser les formants ;
- possibilité d’arrêter ou réduire les traitements.

## Statut

```text
garder
```

## Micro-test possible

Oui, plus tard.

Question possible :

```text
Le didgeridoo peut-il piloter ou influencer une pression grave sans que le sub masque ses formants et son agency live ?
```

Ne pas lancer maintenant.

---

# 3. Audit — Guimbardes live

## Source_need

```text
SOURCE_NEED_LIVE_JAW_HARPS_FORMANT_MICROPULSE
```

## Claim porté

Les guimbardes live portent micro-pulse, torsion, brillance rythmique, formants de bouche, voix-sans-voix, polytexture et hypnose active.

## Fonction musicale supposée

Source live de micro-pulse formantique et de torsion rythmique.

## Dimension d’agency concernée

Haute : bouche, attaque, micro-pulsation, variation réelle, choix de guimbarde, timing fin.

## Risque de remplacement du live

Faible si la fiche est respectée.

La fiche précise que la source est live fixe et que les samples ne sont pas source principale.

## Risque de surcharge cognitive

Moyen à fort.

Le risque vient du nombre possible de guimbardes, de profils de bouche, de formants, d’aigus, de densité et de placement.

## Risque de décor/caricature

Fort à surveiller.

La fiche nomme explicitement : folklore, gadget, nasalité fatigante, aigu métallique, perte de techno, effet démonstratif.

## Sortie / retrait / override nécessaire

Oui :

- sécurité aiguë ;
- réduction de densité ;
- protection contre effet gadget ;
- possibilité de retirer la brillance ;
- contrôle de priorité dans le mix.

## Statut

```text
garder
```

## Micro-test possible

Oui, plus tard.

Question possible :

```text
Une guimbarde live peut-elle créer une micro-pulsation électronique lisible sans devenir gadget, folklore ou surcharge aiguë ?
```

Ne pas lancer maintenant.

---

# 4. Audit — Sub pressure engine

## Source_need

```text
SOURCE_NEED_SUB_PRESSURE_ENGINE
```

## Claim porté

Le projet a besoin d’un moteur de sub / pression grave pour corps, ancrage, retour au corps, stabilité, résolution et continuité physique.

## Fonction musicale supposée

Engine de pression grave stable et contrôlable, partenaire du didgeridoo, des guimbardes et des sources optionnelles.

## Dimension d’agency concernée

Très haute mais ambivalente.

Le sub peut préserver l’agency en donnant un sol corporel stable.

Il peut aussi la réduire s’il :

- écrase le didgeridoo ;
- masque les guimbardes ;
- impose un retour au corps trop standard ;
- remplace la pression organique ;
- devient une basse générique.

## Risque de remplacement du live

Fort à surveiller.

La fiche affirme explicitement que le sub ne doit pas remplacer didgeridoo, gong ou tambour.

Mais comme il est central et génératif, il peut devenir dominant si mal contrôlé.

## Risque de surcharge cognitive

Moyen.

Le sub demande relation didgeridoo, relation guimbardes, relation gong/tambour, sécurité low-end, pitch_center, retenue, résolution.

## Risque de décor/caricature

Moyen à fort.

Risques nommés : sub générique, pression réduite au volume, effet techno standard, effet dubstep plaqué.

## Sortie / retrait / override nécessaire

Indispensable :

- retrait possible du sub ;
- relation didgeridoo toujours lisible ;
- low-end guard ;
- mono low-end ;
- contrôle de résolution ;
- scène-dependent limits ;
- possibilité de sub discret quand les sources live suffisent.

## Statut

```text
garder
```

avec contrainte forte :

```text
le sub est partenaire, pas fondation dominante par défaut.
```

## Micro-test possible

Oui, plus tard.

Question possible :

```text
Un sub engine peut-il soutenir le retour au corps sans remplacer la pression organique du didgeridoo ni imposer une basse générique ?
```

Ne pas lancer maintenant.

---

# 5. Décisions du batch

## Garder

```text
SOURCE_NEED_LIVE_DIDGERIDOO_PRESSURE_FORMANTS
SOURCE_NEED_LIVE_JAW_HARPS_FORMANT_MICROPULSE
SOURCE_NEED_SUB_PRESSURE_ENGINE
```

## Réviser maintenant

Aucun fichier à réviser immédiatement.

## Suspendre

Aucun dans ce batch.

## Tester plus tard

Les trois peuvent générer des micro-tests plus tard, mais aucun test n’est autorisé maintenant sans fiche micro-test séparée.

---

# 6. Conditions avant tout micro-test issu de ce batch

Avant tout micro-test, créer une fiche séparée avec :

```text
Nom du micro-test
Question unique
Dimension d’agency concernée
Ce qui est testé
Ce qui n’est pas testé
Durée limite
Critère d’arrêt
Observation attendue
Risque de glissement vers prototype
Décision après test
```

---

# 7. Prochaine action recommandée

Créer :

```text
projects/source_needs_audit/SOURCE_NEEDS_AUDIT_BATCH_01_REVIEW.md
```

But : vérifier que ce premier audit n’a pas relancé trop vite l’ancien chemin source_needs et qu’il reste bien agency-first.

---

# 8. Interdictions actuelles

Ne pas :

- auditer tout `docs/assets/source_needs` ;
- créer un patch ;
- créer un mapping ;
- créer un prototype ;
- écrire SPEC.md ;
- écrire VERIFY.md ;
- modifier main ;
- merger la branche méthode.
