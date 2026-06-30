# Audit coherence post audits candidats lourds avant implementation

Projet : Vesperare  
Version : v0.1  
Statut : audit de coherence DETTE-ACT-24  
Runtime actif : Max/MSP standalone  
Date : 2026-06-24

## 1. Role du document

Ce document absorbe DETTE-ACT-24.

Il verifie la coherence des cinq audits candidats lourds DETTE-ACT-6 :

1. supports structurels lourds / etats opaques ;
2. transformations lourdes spectral / granularite / modeles physiques ;
3. espace / empreinte / corpus / convolution / IR / playback prepare ;
4. opacite decisionnelle / ML / classification / Markov / grammaire / statistique ;
5. dependances externes / plugins / packages / bibliotheques.

Il ne choisit pas :

- objet Max final ;
- moteur final ;
- external final ;
- plugin final ;
- patch ;
- UI ;
- mapping ;
- implementation.

## 2. Verdict general

Verdict :

```text
coherent avec reports et garde-fous maintenus.
```

Les cinq audits peuvent etre conserves comme base de conception.

Ils ne s'annulent pas entre eux parce que leurs roles sont distincts :

- supports structurels : moyens d'organisation, voix, buffers, scripts, etats ;
- transformations lourdes : matieres et traitements complexes ;
- espace / corpus : empreintes, IR, playback prepare, salle/source ;
- opacite decisionnelle : analyse, confiance, variation probabiliste bornee ;
- dependances externes : risque runtime et maintenance.

Ils convergent sur les memes interdits :

- pas de P0/P1 par defaut ;
- pas de direct/safe sous dependance lourde ;
- pas de MIN-DID-PC dependant ;
- pas de grave critique sous boite noire ;
- pas de decision musicale cachee ;
- pas de fonction sans owner ;
- pas de traitement sans sortie ;
- pas de candidat sans fallback ;
- pas de SIG absent quand l'etat change la performance.

## 3. Controle P0/P1, direct/safe, MIN-DID-PC

Statut :

```text
coherent.
```

Les cinq audits refusent que les familles lourdes conditionnent :

- P0 ;
- P1 ;
- direct ;
- safe ;
- protections essentielles ;
- didgeridoo direct ;
- grave critique ;
- fonctionnement minimal MIN-DID-PC.

Point a maintenir :

```text
un candidat lourd peut enrichir, preparer, proposer, transformer ou diagnostiquer.
il ne doit pas etre requis pour que le systeme existe.
```

Implication :

- la future matrice de synthese doit marquer explicitement `P0/P1 = interdit par defaut` ;
- les exceptions futures devront recevoir un audit dedie, pas une note implicite.

## 4. Controle latence et charge

Statut :

```text
coherent.
```

Les audits classent les chemins lourds comme :

- SLOW ;
- DIAG ;
- OFFLINE ;
- PREP ;
- GEN-SLOW ;
- SPC/REV/HAL-SLOW ;
- PLAY conditionnel seulement si non vital.

Conflit evite :

- la latence reste un enjeu musical sans compromis ;
- les familles lourdes ne deviennent pas excuse pour appauvrir les fonctions ;
- un mode fallback doit etre musicalement acceptable, pas seulement techniquement leger.

Point a maintenir :

```text
optimiser ne veut pas dire retirer une fonction souhaitee.
optimiser veut dire preparer, borner, router, fallback, ou reporter.
```

## 5. Controle owner / autorite

Statut :

```text
coherent.
```

Chaque audit exige un owner :

- STRUCT-SUPPORT ;
- HEAVY-TRANSFORM ;
- SPACE-CORPUS ;
- OPAQUE-CANDIDATE ;
- EXTERNAL-CANDIDATE.

Convergence :

- un support ne decide pas ;
- une transformation ne decide pas ;
- un corpus ne decide pas ;
- un modele opaque ne decide pas ;
- une dependance externe ne decide pas.

Les decisions restent portees par :

- MUS/P2 ;
- scene/P3 ;
- assignation/P4 ;
- Auto-Pro/P5 ;
- P0/P1 seulement pour protection.

Point a maintenir :

```text
les contrats candidats doivent etre consolides dans une matrice unique.
sinon le risque est de perdre owner, fallback ou SIG dans les prochains documents.
```

## 6. Controle naturalisation / source-bonding

Statut :

```text
coherent.
```

Les audits convergent :

- transformations lourdes : source-bonding obligatoire ;
- espace/corpus : source, lieu, corps ou fonction obligatoire ;
- dependances externes : pas de signature sonore imposee ;
- opacite : pas de style generator ;
- supports : pas de sample cache ni etat magique.

Conflit evite :

- naturalisation n'est pas reverb automatique ;
- naturalisation n'est pas corpus cache ;
- naturalisation n'est pas ML ;
- naturalisation n'est pas plugin colore ;
- naturalisation n'est pas preuve d'acousticite artificielle.

Point a maintenir :

```text
un son tres transforme peut etre accepte si source/fonction/contexte/sortie sont clairs.
il ne doit pas etre accepte seulement parce qu'un outil le rend possible.
```

## 7. Controle SPC / REV / HAL / GEN-HAL

Statut :

```text
coherent.
```

Les audits separent correctement :

- SPC decide monde spatial, distance, proximite, immersion ;
- REV gere la famille reverb ;
- HAL decide lock/force/cut/momentary/safe force ;
- GEN-HAL fournit matiere ;
- corpus/IR/convolution peuvent nourrir sans decider ;
- ML/statistiques peuvent informer sans decider ;
- external peut outiller sans decider.

Point a maintenir :

```text
aucune famille lourde ne doit court-circuiter SPC/REV/HAL.
```

## 8. Controle generation rythmique / melodique / timbrale

Statut :

```text
coherent.
```

Les audits ne retirent pas les besoins generatifs.

Ils les bornent :

- supports peuvent fournir voix/couches/buffers ;
- transformations peuvent fournir matiere ;
- corpus peut fournir traces/empreintes ;
- Markov/grammaire/statistique peut fournir variation bornee ;
- dependance externe peut aider seulement si indispensable.

Interdits maintenus :

- compositeur autonome ;
- motif qui prend pouvoir ;
- lead banal ;
- acid reconnaissable par defaut ;
- voix nue non integree ;
- pitch correction reconnaissable ;
- sample bank cachee.

Point a maintenir :

```text
la prochaine synthese doit distinguer outil de generation, source de matiere,
logique de variation, et decision de scene.
```

## 9. Controle grave / didgeridoo / gong / voix

Statut :

```text
coherent.
```

Les audits preservent :

- didgeridoo libre ou integre par modes ;
- grave multi-options ;
- gong comme base possible, pas IR fixe obligatoire ;
- voix integree, jamais auto-tune reconnaissable ;
- direct/safe disponible ;
- protections essentielles independantes des familles lourdes.

Point a maintenir :

```text
aucun candidat lourd ne doit porter le vrai grave par accident.
```

## 10. Controle dependances et fichiers

Statut :

```text
coherent.
```

Les audits imposent :

- preload ;
- preparation ;
- absence de lecture critique ;
- mode absent ;
- fallback ;
- SIG ;
- version/maintenance pour externals.

Conflit evite :

- buffer/playback support structurel ne devient pas corpus cache ;
- corpus/playback espace ne devient pas banque principale ;
- external ne devient pas condition de corpus ;
- mesure de salle ne devient pas verite obligatoire.

Point a maintenir :

```text
les dependances fichier et externes doivent etre visibles dans la matrice de synthese.
```

## 11. Reports actifs

Les audits ne ferment pas tout.

Reports normaux :

- audit direct futur si une famille lourde devait entrer en chemin direct ;
- audit dedie si un external devient indispensable ;
- audit technique dedie si un modele physique complexe devient central ;
- audit de build/standalone si une dependance externe est retenue ;
- arbitrage utilisateur si une famille opaque doit devenir plus autonome ;
- future consolidation des statuts dans une matrice unique.

Ces reports ne bloquent pas la coherence actuelle.

Ils bloquent seulement :

- implementation ;
- choix final d'objet ;
- choix final de moteur ;
- choix final de plugin/external ;
- patch ;
- UI ;
- mapping.

## 12. Corrections necessaires

Correction documentaire obligatoire avant implementation :

```text
creer une matrice de synthese unique des statuts candidats lourds.
```

Raison :

- les cinq audits sont coherents mais disperses ;
- les statuts conditionnels doivent etre lisibles en une seule table ;
- les exclusions P0/P1, MIN-DID-PC, direct/safe, fallback et SIG doivent etre
  verifiables sans rouvrir tous les documents ;
- les futurs choix Max doivent pointer vers un statut consolide, pas vers une
  interpretation approximative d'un audit long.

Il n'y a pas de correction de fond a appliquer aux cinq audits avant cette synthese.

## 13. Decision de sortie

DETTE-ACT-24 est absorbee.

Le groupe DETTE-ACT-6 est coherent apres cinq audits individuels.

Avant implementation, il faut creer une matrice consolidee :

```text
MATRICE_SYNTHESE_STATUTS_CANDIDATS_LOURDS_CONTRAINTES_MAX_STANDALONE_VESPERARE_v0_1.md
```

La prochaine dette logique est :

```text
DETTE-ACT-25 - Matrice synthese statuts candidats lourds / contraintes avant implementation
```

Ce passage est autorise seulement apres mise a jour de l'index, du registre et de la matrice de preuve.
