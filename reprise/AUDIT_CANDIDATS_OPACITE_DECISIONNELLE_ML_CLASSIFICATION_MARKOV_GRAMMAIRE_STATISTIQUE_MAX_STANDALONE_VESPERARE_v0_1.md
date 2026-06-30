# Audit candidats opacite decisionnelle / ML / classification / Markov / grammaire / statistique

Projet : Vesperare  
Version : v0.1  
Statut : audit candidat lourd DETTE-ACT-6, groupe opacite decisionnelle  
Runtime actif : Max/MSP standalone  
Date : 2026-06-24

## 1. Role du document

Ce document absorbe DETTE-ACT-22.

Il audite les familles suivantes :

- ML ;
- classification ;
- embeddings ;
- indices probabilistes ;
- Markov ;
- grammaires ;
- statistiques ;
- systemes de decision opaques ;
- apprentissage ou etiquetage lent ;
- generation probabiliste bornee.

Il ne choisit pas :

- modele final ;
- algorithme final ;
- entrainement final ;
- dataset final ;
- objet Max final ;
- external/plugin ;
- patch ;
- UI ;
- mapping ;
- moteur generatif.

## 2. Sources internes utilisees

Documents internes principaux :

- `SPECIFICATION_ANALYSES_INDICES_CONCEPTUELS_ET_CONFIANCE_v0_1.md`
- `SPECIFICATION_SYSTEME_DECISIONNEL_CONCEPTUEL_VESPERARE_v0_1.md`
- `AUDIT_COMPATIBILITE_SYSTEME_DECISIONNEL_AVEC_CORPUS_v0_1.md`
- `AUDIT_CANDIDATS_GENERATION_RYTHMIQUE_MOTIFS_TIMING_MAX_STANDALONE_VESPERARE_v0_1.md`
- `AUDIT_CANDIDATS_GENERATION_TIMBRALE_NATURALISATION_TRANSFORMATIONS_MAX_STANDALONE_VESPERARE_v0_1.md`
- `SPECIFICATION_PRE_AUDIT_CANDIDATS_LOURDS_SUPPORTS_MAX_MOTEURS_OPAQUES_VESPERARE_v0_1.md`
- `AUDIT_CANDIDATS_ESPACE_EMPREINTE_CORPUS_CONVOLUTION_IR_PLAYBACK_PREPARE_MAX_STANDALONE_VESPERARE_v0_1.md`

Sources externes consultees pour cadrage conceptuel :

- Cycling '74 / ml.star : classification et regression en environnement Max ;
- Cycling '74 / objet `prob` : probabilites et chaines de Markov simples ;
- Wekinator : apprentissage interactif temps reel pour musique et geste ;
- FluCoMa : ecoute machine, descripteurs, corpus, classification et modeles utilises en creation sonore.

Ces references confirment que les familles existent et sont pertinentes dans les pratiques sonores interactives. Elles ne justifient pas leur integration automatique dans Vesperare.

## 3. Verdict general

Les familles d'opacite decisionnelle sont compatibles seulement comme aides bornees.

Elles peuvent servir :

- l'observation ;
- l'etiquetage ;
- la confiance lente ;
- la preparation ;
- la proposition ;
- la variation bornee ;
- la micro-relance ;
- la generation contrainte ;
- le diagnostic ;
- la documentation d'etats.

Elles ne doivent jamais devenir :

- compositeur autonome ;
- moteur de scene ;
- autorite de direct/safe ;
- protection P0/P1 ;
- choix live de remplacement ;
- style automatique ;
- boite noire qui impose motif, harmonie, halo, espace ou transgression ;
- dependance MIN-DID-PC.

Decision centrale :

```text
ML/classification informe.
Markov/grammaire/statistique varie ou propose sous contrainte.
Aucune famille opaque ne decide seule.
```

## 4. Statuts candidats

| Famille | Statut Vesperare | Chemin admis | Fonction admise | Conditions obligatoires | Interdictions |
|---|---|---|---|---|---|
| ML temps reel | REPORTE / DIAG-SLOW | DIAG, SLOW, OFFLINE | etiquetage, confiance lente, aide analyse | confiance explicite, fallback, SIG, non critique | P0/P1, scene, direct/safe, composition |
| Classification timbrale | CONDITIONNEL DIAG | DIAG/SLOW | souffle, attaque, metal, voix, peau, etat source | source connue, erreur bornee, non autoritaire | remplacer l'ecoute ou le controle live |
| Embeddings / similarite | REPORTE OFFLINE | OFFLINE/PREP | tri corpus, recherche de proximite, preparation | corpus audite, usage non live critique | navigation opaque en live critique |
| Markov | CONDITIONNEL LOURD | PATH-GEN-SLOW | variation de motif, relance, probabilite memoire | fonction, etat, borne, sortie, controle live | autonomie formelle, boucle qui compose |
| Grammaire generative | CONDITIONNEL LOURD | PATH-GEN-SLOW | contraintes de motif, forme, densite, transitions | vocabulaire explicite, regles auditees, release | style plaque, narration automatique |
| Statistiques simples | ACCEPTE CONDITIONNEL | DIAG/SLOW ou GEN-SLOW | densite, frequence, probabilite bornee, historique | lisible, bornable, reversible | hasard decoratif, decision cachee |
| Prediction | REPORTE FORT | DIAG/PREP seulement | anticipation douce, prechargement, signalisation | jamais action critique seule | prediction prise pour intention |
| Systeme hybride opaque | REPORTE FORT | OFFLINE/PREP | recherche, prototype conceptuel | audit dedie, explicabilite minimale | noyau live, MIN-DID-PC, protection |

## 5. Principe d'autorite

Les familles opaques n'ont pas d'autorite native.

Elles peuvent seulement produire :

- OBS : observation ;
- INT : interpretation possible ;
- CONF : niveau de confiance ;
- PROP : proposition ;
- PREP : preparation ;
- VAR : variante bornee ;
- SIG : signalisation.

Elles ne peuvent pas produire seules :

- DEC forte ;
- changement de DOM ;
- activation de transgression ;
- retour corporel impose ;
- coupure ;
- protection P0/P1 ;
- retrait du didgeridoo ;
- choix de grave ;
- lock/force/cut HAL ;
- monde SPC expressif ;
- motif principal autonome.

Toute reaction expressive issue d'une famille opaque exige :

- contexte musical ;
- scene ou choix live ;
- fonction nommee ;
- owner non opaque ;
- confiance suffisante ;
- borne ;
- sortie ;
- fallback ;
- SIG si le resultat peut modifier la perception du performer.

## 6. ML / classification / embeddings

### 6.1. Usages compatibles

ML et classification peuvent etre utiles comme analyse lente ou diagnostic.

Exemples compatibles :

- distinguer etats grossiers : souffle, attaque, drone, bruit, metal, voix, peau ;
- estimer si une source est stable, instable, dense, claire ou confondue ;
- aider une naturalisation lente ;
- preparer une couleur, une empreinte ou un monde SPC ;
- classer un corpus hors live critique ;
- alimenter un indice de confiance non autoritaire ;
- signaler une incertitude.

### 6.2. Conditions

Conditions minimales :

- pas de P0/P1 ;
- pas de direct/safe ;
- pas de protection sonore dependante du modele ;
- pas de scene changee par modele seul ;
- fallback sans ML ;
- confiance lisible ;
- erreur traitee comme incertitude, pas comme intention ;
- SIG si le modele affecte un choix visible ;
- preparation/offline privilegiee.

### 6.3. Refus actuels

Refuses au stade actuel :

- entrainer un modele live comme condition de jeu ;
- classifier le didgeridoo pour decider son role ;
- utiliser un embedding comme moteur de selection sonore autonome ;
- faire dependre la naturalisation d'une classification ;
- utiliser ML pour reconnaitre un style et l'appliquer ;
- utiliser ML pour generer motifs, melodies ou scenes.

Decision :

```text
ML/classification est garde comme DIAG/SLOW/OFFLINE.
Il peut nourrir CONF ou PREP.
Il ne pilote pas la musique.
```

## 7. Markov / grammaire / statistique

### 7.1. Usages compatibles

Markov, grammaires et statistiques peuvent servir si la fonction est deja precise.

Usages compatibles :

- variation bornee d'un motif deja autorise ;
- relance de densite ;
- micro-decision rythmique ;
- probabilite de silence, reprise, retard, accent ou decalage ;
- transition entre etats ;
- selection de variante dans une famille connue ;
- prevention de repetition trop mecanique ;
- maintien d'une techno suspendue longue sans boucle morte ;
- interlocking ou polytexture sous contraintes lisibles.

### 7.2. Conditions

Conditions minimales :

- vocabulaire musical limite ;
- etats lisibles ;
- probabilities ou regles auditees conceptuellement ;
- borne de duree ou de densite ;
- sortie prevue ;
- controle live d'activation ou bypass ;
- fallback deterministe ou simple ;
- pas de changement de fonction sans autorite externe ;
- pas de "style generator".

### 7.3. Interdictions

Interdits :

- Markov qui decide la forme globale ;
- grammaire qui compose un morceau ;
- statistiques qui remplacent l'ecoute ;
- hasard qui devient decoratif ;
- motif qui prend autonomie contre la scene ;
- jazz/Keita transforme en recette probabiliste ;
- acid transforme en ligne automatique reconnaissable ;
- voix ou melodie qui devient hook par derive ;
- transgression declenchee par probabilite seule.

Decision :

```text
Markov/grammaire/statistique est conditionnel lourd.
Il peut entrer dans PATH-GEN-SLOW pour variation bornee.
Il exige owner, vocabulaire, borne, sortie, fallback et controle live.
```

## 8. Prediction et anticipation

La prediction est dangereuse si elle est prise pour une intention.

Usages compatibles :

- precharger ;
- preparer sans agir ;
- anticiper une transition possible ;
- signaler une probabilite de conflit ;
- adoucir une adaptation lente ;
- suggerer une option au systeme decisionnel.

Usages interdits :

- declencher une scene ;
- couper une source ;
- retirer le grave ;
- choisir le retour corporel ;
- modifier un motif principal ;
- verrouiller un halo ;
- corriger le musicien.

Regle :

```text
Une prediction peut reduire la surprise technique.
Elle ne doit pas reduire la liberte musicale.
```

## 9. Relation aux fonctions Vesperare

### Didgeridoo

Le didgeridoo ne doit pas etre classe pour etre controle.

Compatible :

- signaler un etat grossier ;
- aider une adaptation lente ;
- proposer une preparation de reverb/espace ;
- aider a proteger le mix sans decider le role musical.

Incompatible :

- ML qui choisit si le didgeridoo est centre, partenaire ou perturbateur ;
- modele qui adapte automatiquement les harmoniques sans mode autorise ;
- classification qui remplace les modes didgeridoo deja definis.

### Grave / gong / sub

Compatible :

- statistiques lentes de densite et conflit ;
- aide a preparation ;
- suggestion non autoritaire.

Incompatible :

- modele qui porte le vrai grave par accident ;
- prediction qui retire le sub sans autorite ;
- Markov qui decide une ligne basse principale.

### Rythme / pression corporelle

Compatible :

- variation de motif sous borne ;
- micro-relance ;
- statistique de densite ;
- maintien de suspension longue.

Incompatible :

- groove autonome ;
- probabilite qui casse la pression rythmique ;
- interlocking devenu brouillard.

### Melodie / acid / voix

Compatible :

- contraintes de registre ;
- variation minimale ;
- fragments sous scene ;
- naturalisation par fonction.

Incompatible :

- lead automatique ;
- ligne acid reconnaissable par defaut ;
- correction pitch reconnaissable ;
- hook par derive.

### Espace / halo / reverb

Compatible :

- indice de confiance lent ;
- preparation d'un monde ;
- signalisation d'incertitude ;
- proposition non autoritaire.

Incompatible :

- ML qui choisit monde SPC ;
- Markov qui maintient halo ;
- prediction qui lock/cut HAL ;
- espace decoratif impose.

## 10. Relation a MIN-DID-PC

MIN-DID-PC doit fonctionner sans :

- ML ;
- classification ;
- embedding ;
- Markov ;
- grammaire ;
- prediction ;
- corpus d'entrainement ;
- apprentissage ;
- modele externe.

Ces familles peuvent etre absentes sans degradation musicale.

Fallback minimal :

- direct/safe ;
- protections essentielles ;
- controles live ;
- modes simples ;
- generation non opaque ou desactivee ;
- SIG indiquant que l'aide opaque est absente.

## 11. Latence et charge

Ces familles sont exclues des chemins critiques par defaut.

Regles :

- ML/classification : DIAG/SLOW/OFFLINE ;
- embeddings : OFFLINE/PREP ;
- Markov/grammaire/statistique : PATH-GEN-SLOW si variation bornee ;
- prediction : PREP/SLOW seulement ;
- aucune famille opaque ne justifie un compromis musical ;
- aucune famille opaque ne decide une protection P0/P1 ;
- aucun modele ne doit charger, entrainer ou recalculer sur un chemin critique.

Si la charge devient visible :

- fallback ;
- bypass ;
- reduction technique sans perte musicale ;
- SIG ;
- retour a une logique simple.

## 12. Signalisation

SIG minimal :

- modele actif ;
- modele absent ;
- confiance faible ;
- fallback actif ;
- prediction ignoree ;
- variante generative limitee ;
- Markov/grammaire en pause ;
- decision refusee par autorite ;
- erreur ou incertitude.

La signalisation ne doit pas devenir une interface d'analyse envahissante.

Elle doit seulement rendre visibles les cas ou une aide opaque pourrait changer :

- une preparation ;
- une proposition ;
- une variation ;
- un etat de confiance ;
- un fallback.

## 13. Contrat OPAQUE-CANDIDATE

Toute famille opaque doit porter un contrat.

Champs obligatoires :

- identifiant ;
- famille : ML, classification, embedding, Markov, grammaire, statistique, prediction ;
- owner : DIAG, GEN, DEC, NAT, SPC, HAL, REV ou PREP ;
- fonction musicale ;
- fonction non musicale eventuelle ;
- type de sortie : OBS, INT, CONF, PROP, PREP, VAR, SIG ;
- autorite maximale ;
- chemin de latence ;
- borne ;
- fallback ;
- condition de desactivation ;
- etat SIG ;
- erreurs connues ;
- ce que le candidat ne decide jamais.

Invalide si :

- owner absent ;
- fonction vague ;
- sortie inexistante ;
- fallback absent ;
- autorite superieure a sa fonction ;
- modele necessaire a MIN-DID-PC ;
- erreur interpretee comme intention.

## 14. Decision de sortie

DETTE-ACT-22 est absorbee.

Statuts retenus :

- ML temps reel : reporte / DIAG-SLOW ;
- classification timbrale : conditionnel diagnostic ;
- embeddings / similarite : reporte offline/preparation ;
- Markov : conditionnel lourd pour variation bornee ;
- grammaire generative : conditionnel lourd sous vocabulaire explicite ;
- statistiques simples : accepte conditionnel si lisible et reversible ;
- prediction : reporte fort, preparation seulement ;
- systeme hybride opaque : reporte fort.

La prochaine dette logique est :

```text
DETTE-ACT-23 - Audit dependances externes / plugins / packages / bibliotheques
```

La prochaine fiche a creer est :

```text
AUDIT_CANDIDATS_DEPENDANCES_EXTERNES_PLUGINS_PACKAGES_BIBLIOTHEQUES_MAX_STANDALONE_VESPERARE_v0_1.md
```

Ce passage est autorise seulement apres mise a jour de l'index, du registre et de la matrice de preuve.
