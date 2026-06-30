# Preparation branche prototype Max minimal MIN-DID-PC

Statut : preparation documentaire de branche avant tout patch reel.
Date : 2026-07-01.
Branche : `prototype/min-did-pc-minimal`.
Verdict : `branche preparee comme branche strictement bornee ; prototype reel non produit`.
Perimetre : documentation seulement, sans modification de `reprise/`, sans modification de l'audit niveau 6 source, sans creation de niveau 6, sans recreation de matrice niveau 6, sans implementation, sans patch Max, sans UI, sans mapping, sans prototype reel, sans asset, sans sample bank, sans seuil numerique, sans objet Max final, sans routage final et sans architecture validee.

## Sources consultees

Fait :

Sources directes consultees :

- `docs/reprise/05_NEXT_ACTIONS.md`
- `docs/reprise/22_CADRAGE_OPERATIONNEL_ACTION_PROTOTYPE_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/21_DECISION_PASSAGE_PROTOTYPE_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/20_CADRAGE_DOCUMENTAIRE_PREMIER_PROTOTYPE_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/19_PRE_SPEC_MAX_CONCRETE_NON_IMPLEMENTATION_MIN_DID_PC.md`

Fait :

Sources methodologiques consultees :

- `README.md`
- `docs/00_INDEX_METHODE_DECISIONS.md`

Fait :

La presente fiche ne consulte pas la matrice niveau 6 absente comme source, ne modifie pas `reprise/`, ne modifie pas l'audit niveau 6 source et ne produit pas de prototype reel.

## 1. Statut de la branche

Fait :

La branche de travail cible est :

```text
prototype/min-did-pc-minimal
```

Fait :

La branche courante observee avant la presente preparation est `prototype/min-did-pc-minimal`.

Decision :

La branche `prototype/min-did-pc-minimal` est preparee comme branche strictement bornee pour une action ulterieure de prototype Max minimal `MIN-DID-PC`.

Decision :

Cette preparation de branche ne produit aucun prototype reel, aucun patch Max et aucune implementation.

Decision :

Cette preparation ne valide aucune architecture, aucun routage final, aucun objet Max final, aucune UI, aucun mapping, aucun asset, aucune sample bank et aucun seuil numerique.

Inference :

Le statut de branche preparee signifie seulement que le lieu de travail documentaire est borne avant tout patch reel. Il ne signifie pas que le premier patch Max minimal est autorise dans cette fiche.

## 2. Verification de conformite a la fiche 22

Fait :

La fiche 22 cadre operationnellement l'action prototype Max minimal `MIN-DID-PC` sans produire le prototype reel.

Fait :

La fiche 22 limite la verification autorisee a :

- presence live didgeridoo / PC ;
- `direct/safe` ;
- sortie simple ;
- absence, off, bypass ou reduction de branches optionnelles ;
- fallback ;
- SIG.

Decision :

La preparation de la branche est conforme a la fiche 22 parce qu'elle prepare seulement le lieu de travail et les conditions d'arret, sans patch Max, sans prototype reel, sans choix d'objet, sans routage et sans architecture.

Decision :

Le patch reel ne doit pas etre produit avant une verification explicite ulterieure que la branche reste conforme a la fiche 22.

Condition :

Si la branche commence a produire un patch Max, une UI, un mapping, un asset, une sample bank, un seuil numerique, un objet Max final, un routage final, une architecture ou une famille lourde en P0/P1, elle sort de la fiche 22 et doit s'arreter.

## 3. Verification de conformite aux fiches 20 et 21

Fait :

La fiche 20 cadre le premier prototype minimal `MIN-DID-PC` comme cadrage documentaire avant patch. Elle ne produit pas le prototype reel et ne choisit aucun moyen Max final.

Fait :

La fiche 21 autorise avec reserves le passage vers une action ulterieure de prototype Max minimal `MIN-DID-PC`, strictement bornee par la fiche 20.

Decision :

La preparation de la branche reste conforme aux fiches 20 et 21 parce qu'elle ne fait que preparer une action ulterieure, sans produire le prototype et sans transformer l'autorisation avec reserves en validation technique, musicale ou architecturale.

Decision :

La branche ne peut autoriser un premier patch Max minimal que dans une action ulterieure separee, apres verification finale de conformite a la fiche 22, puis aux fiches 20 et 21.

Inference :

La chaine 20 -> 21 -> 22 -> 23 autorise seulement une progression documentaire controlee : cadrage avant patch, decision de passage avec reserves, cadrage operationnel, preparation de branche. Elle n'autorise pas encore le patch reel.

## 4. Question de prototype limitee

Decision :

La question de prototype reste strictement limitee a :

```text
la branche prototype/min-did-pc-minimal peut-elle soutenir un futur patch Max
minimal MIN-DID-PC qui preserve presence live didgeridoo / PC, direct/safe,
sortie simple, branches optionnelles absentes/off/bypass/reduites, fallback
et SIG, sans famille lourde en P0/P1, direct/safe, protection ou MIN-DID-PC ?
```

Decision :

La question de prototype ne porte pas sur :

- architecture finale ;
- niveau 6 ;
- matrice niveau 6 ;
- routage final ;
- objets Max finaux ;
- UI ;
- mapping ;
- assets ;
- sample bank ;
- seuils numeriques ;
- validation musicale ou artistique.

Inference :

Un futur prototype correct est celui qui reste jouable quand les branches optionnelles sont absentes, off, bypass ou reduites. Un prototype qui exige une famille lourde pour le direct, le safe, la protection ou `MIN-DID-PC` sort du perimetre.

## 5. Perimetre autorise de la branche

Autorise :

- maintenir la branche `prototype/min-did-pc-minimal` comme espace de travail strictement borne ;
- citer les sources documentaires 19, 20, 21, 22 et 23 ;
- verifier la conformite a la fiche 22, puis aux fiches 20 et 21 ;
- formuler la question de prototype limitee ;
- maintenir les responsabilites minimales `MIN-DID-PC` sans objet Max final ;
- verifier presence live didgeridoo / PC comme relation a preserver ;
- verifier `direct/safe` comme garde-fou transversal ;
- verifier sortie simple ;
- maintenir les branches optionnelles absentes, off, bypass, reduites ou ignorees ;
- documenter fallback et SIG comme conditions, pas comme modules finaux ;
- maintenir les interdictions et conditions d'arret avant patch reel.

Interdit dans ce perimetre :

- transformer la preparation de branche en production de prototype reel ;
- transformer la preparation de branche en patch Max ;
- transformer la preparation de branche en audit, niveau 6 ou matrice ;
- choisir des objets Max finaux ;
- definir un routage final ;
- creer une UI ;
- creer un mapping ;
- creer un asset ;
- creer une sample bank ;
- fixer un seuil numerique ;
- valider une architecture ;
- modifier `reprise/` ;
- modifier l'audit niveau 6 source ;
- utiliser l'audit niveau 6 comme preuve.

## 6. Interdictions strictes

Interdictions :

- ne pas modifier `reprise/` ;
- ne pas modifier l'audit niveau 6 source ;
- ne pas creer de niveau 6 ;
- ne pas valider de niveau 6 ;
- ne pas recreer la matrice niveau 6 absente ;
- ne pas utiliser l'audit niveau 6 comme preuve ;
- ne pas produire de nouvel audit ;
- ne pas implementer ;
- ne pas produire de prototype reel dans cette fiche ;
- ne pas produire de patch Max dans cette fiche ;
- ne pas produire UI ;
- ne pas produire mapping ;
- ne pas produire asset ;
- ne pas produire sample bank ;
- ne pas produire seuil numerique ;
- ne pas choisir d'objet Max final ;
- ne pas definir de routage final ;
- ne pas valider d'architecture ;
- ne pas transformer la sortie documentaire en validation musicale, artistique, technique ou architecturale ;
- ne pas demander a Yohan de trancher une architecture non instruite.

Interdictions lourdes :

- `gen~` ;
- `poly~` ;
- MC ;
- `buffer~` ;
- playback prepare ;
- corpus ;
- IR ;
- convolution ;
- reverb comme condition de sortie ;
- pfft/FFT ;
- spectral lourd ;
- granularite complexe ;
- modeles physiques ;
- scripts, `js`, node et logique opaque ;
- presets critiques et etats caches ;
- externals ;
- packages et runtimes tiers obligatoires ;
- plugins ;
- ML ;
- classification ;
- prediction ;
- Markov ;
- grammaire ;
- statistiques decisionnelles ;
- outils opaques.

Decision :

Aucune famille lourde ne peut entrer dans P0/P1, `direct/safe`, protection ou `MIN-DID-PC`.

## 7. Conditions avant tout patch reel

Decision :

Aucun patch reel ne peut etre produit depuis la presente fiche.

Conditions minimales avant toute autorisation ulterieure d'un premier patch Max minimal :

1. Verifier que la branche `prototype/min-did-pc-minimal` reste strictement bornee par la fiche 23.
2. Verifier que la fiche 23 reste conforme a la fiche 22.
3. Verifier ensuite que la fiche 22 et la preparation de branche restent conformes aux fiches 20 et 21.
4. Confirmer que la question de prototype reste limitee a presence live didgeridoo / PC, `direct/safe`, sortie simple, absence/off/bypass/reduction de branches optionnelles, fallback et SIG.
5. Confirmer que `MIN-DID-PC` reste formule par responsabilites, pas par objets Max finaux.
6. Confirmer qu'aucune famille lourde n'entre dans P0/P1, `direct/safe`, protection ou `MIN-DID-PC`.
7. Confirmer qu'aucun objet Max final, routage final, mapping, UI, asset, sample bank ou seuil numerique n'est choisi avant patch.
8. Confirmer que la matrice niveau 6 absente reste hors preuve, hors validation et hors prescription.
9. Confirmer que l'audit niveau 6 source n'est pas modifie et n'est pas utilise comme preuve.
10. Produire une autorisation ulterieure separee si, et seulement si, ces conditions restent tenues.

Condition :

Si une condition ne peut pas etre tenue, le premier patch Max minimal doit etre refuse, reporte ou requalifie avant toute production.

## 8. Conditions d'arret

Condition d'arret :

Arreter si la suite tente de produire directement un prototype reel, un patch Max, une UI, un mapping, un asset, une sample bank, un seuil numerique, un objet Max final, un routage final, une implementation ou une architecture validee.

Condition d'arret :

Arreter si la suite cree ou valide un niveau 6, recree la matrice niveau 6 absente, modifie `reprise/`, modifie l'audit niveau 6 source ou utilise l'audit niveau 6 comme preuve.

Condition d'arret :

Arreter si une famille lourde devient condition de P0/P1, `direct/safe`, protection, `MIN-DID-PC`, grave critique, scene, HAL/SPC/REV ou decision expressive.

Condition d'arret :

Arreter si la verification depasse presence live didgeridoo / PC, `direct/safe`, sortie simple, absence/off/bypass/reduction de branches optionnelles, fallback et SIG.

Condition d'arret :

Arreter si la preparation de branche devient validation musicale, artistique, technique ou architecturale.

Condition d'arret :

Arreter et requalifier si la matrice niveau 6 absente est retrouvee : elle devra etre relue contre ACT28 et contre la chaine documentaire avant toute suite, sans validation automatique.

## 9. Prochaine action exacte

Decision :

Prochaine action exacte :

```text
verifier la conformite finale de la branche prototype/min-did-pc-minimal
avant autorisation eventuelle d'un premier patch Max minimal, en controlant
d'abord la conformite a la fiche 23 et a la fiche 22, puis aux fiches 20
et 21.
```

Decision :

Cette prochaine action ne doit pas encore produire le patch Max minimal. Elle doit seulement autoriser, refuser ou reporter une action ulterieure de premier patch Max minimal.

Interdit :

Cette prochaine action ne doit pas produire de famille lourde en P0/P1, `direct/safe`, protection ou `MIN-DID-PC`. Elle ne doit pas produire objet Max final, routage final, UI, mapping, asset, sample bank, seuil numerique, niveau 6, matrice niveau 6, audit ou architecture validee.

Arret :

La presente fiche s'arrete ici. Elle prepare la branche, mais ne produit pas le prototype reel.
