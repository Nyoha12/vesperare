# MTC01_AGENT_REVIEW

## Statut

Première sortie de RUN-01 depuis `AGENT_WORK_QUEUE_V0`.

Cette sortie est une revue critique cadrée de MTC01.

Elle ne lance pas le micro-test.

Elle ne propose pas de patch, de mapping, de prototype ou de spec globale.

---

# 1. Conclusion courte

```text
MTC01 est un bon premier micro-test candidat, mais il doit rester non autorisé pour l’instant.
```

Il est utile parce qu’il isole une relation critique :

```text
sub comme soutien du didgeridoo live
versus
sub comme masque ou remplacement du didgeridoo live.
```

Mais il est dangereux parce que tout travail sonore sur le sub peut glisser très vite vers :

```text
engine ;
patch ;
preset ;
mapping ;
architecture implicite.
```

---

# 2. Points solides

## 2.1 Objet central bien choisi

Le test ne prend pas le sub comme objet principal.

Il prend comme objet central :

```text
la lisibilité et l’agency du didgeridoo live.
```

C’est correct.

## 2.2 Question unique

La question est suffisamment unique :

```text
Un sub peut-il soutenir le corps sans masquer les formants, le souffle et la pression organique du didgeridoo live ?
```

Elle ne cherche pas encore à résoudre l’ensemble du système.

## 2.3 Risque principal bien ciblé

Le risque central est bien nommé :

```text
le sub peut devenir fondation dominante par défaut.
```

La fiche révisée interdit déjà de valider le sub comme engine.

## 2.4 Retrait du sub ajouté

La version révisée ajoute une observation importante :

```text
le sub peut-il se réduire ou se retirer ?
```

C’est essentiel pour préserver l’agency.

## 2.5 Charge mentale ajoutée

La version révisée demande aussi :

```text
Yohan reste-t-il dans le jeu ?
```

C’est bon, car un micro-test peut échouer même si le son fonctionne, s’il force une écoute trop technique.

---

# 3. Risques restants

## R01 — Le test attire vers le sound design

Même bien cadré, un test sub/didgeridoo donne envie de chercher un “bon son”.

C’est dangereux.

Le résultat attendu doit rester :

```text
observation de relation
```

pas :

```text
son final utilisable.
```

## R02 — Le montage peut devenir base implicite

Si un dispositif technique est créé pour écouter la relation, il peut être tentant de le garder.

Il faut donc prévoir :

```text
ce qui ne doit pas être réutilisé.
```

La fiche le fait déjà, mais cette ligne doit être remplie sérieusement après tout test futur.

## R03 — Le sub peut être jugé seulement au mix

Un sub peut sembler fonctionner parce qu’il remplit mieux le grave.

Mais la vraie question est :

```text
est-ce que le didgeridoo reste vivant, central et lisible ?
```

## R04 — Le test ignore encore les guimbardes

C’est volontaire, mais à surveiller.

MTC01 ne doit pas conclure sur l’ensemble du live, seulement sur didgeridoo/sub.

## R05 — Résultat positif surinterprété

Même si le test marche, il ne valide pas :

```text
un engine sub ;
un mapping ;
une architecture ;
une scène ;
une spec.
```

Il valide seulement :

```text
un indice local sur une relation sonore.
```

---

# 4. Conditions à ajouter ou renforcer

## C01 — Durée maximale explicite

La fiche devrait fixer une durée maximale future, par exemple :

```text
30 à 45 minutes maximum, installation comprise.
```

Sans durée, le micro-test peut devenir session de design.

## C02 — Nombre de variantes limité

Limiter les variantes.

Exemple :

```text
2 ou 3 états maximum : sub absent, sub discret, sub plus présent.
```

Sinon le test devient exploration de sound design.

## C03 — Pas de sauvegarde comme base

Ajouter explicitement :

```text
aucun patch, preset, rack, routing ou réglage ne doit être conservé comme base de production.
```

## C04 — Critère de centralité du didgeridoo

Ajouter une question finale :

```text
Après le test, est-ce que l’attention musicale reste sur le didgeridoo, ou sur le sub ?
```

Si l’attention bascule vers le sub, le test signale un risque.

## C05 — Décision post-test très limitée

La décision après test doit être limitée à :

```text
abandonner ;
refaire ;
transformer en claim ;
transformer en critère de verifier ;
suspendre.
```

Ne pas permettre :

```text
continuer vers patch ;
construire engine ;
élargir à scène complète.
```

---

# 5. Décision recommandée

```text
réviser encore légèrement
```

MTC01 est bon comme candidat, mais avant une future autorisation il faut renforcer :

```text
durée maximale ;
nombre de variantes ;
interdiction de sauvegarder le montage comme base ;
critère d’attention musicale didgeridoo vs sub.
```

---

# 6. Confiance

```text
forte
```

Le cadrage est assez solide pour servir de premier objet agent.

Il n’est pas encore assez verrouillé pour autoriser l’exécution du micro-test.

---

# 7. Prochaine action recommandée

Créer une révision courte :

```text
projects/micro_tests/MICRO_TEST_AUTHORIZATION_DRAFT_MTC01_FINAL_CANDIDATE.md
```

But : intégrer seulement les quatre renforcements ci-dessus.

Ne pas créer d’autre document avant cette consolidation ou avant une décision humaine contraire.
