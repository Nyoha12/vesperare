# 01A_SYNCHRONISATION_PHENOMENES_MODULES

Version : v0.1  
Statut : addendum de synchronisation légère du cahier des phénomènes, sans remplacement de `01_CAHIER_DES_PHENOMENES_SONORES.md`.

## Objet

Ce document synchronise légèrement le cahier des phénomènes `01` avec les développements récents :

```text
09_FICHES_MODELES_OBJETS_TRAJECTOIRES_SCENES ;
10_SOUND_DESIGN_MIX_OUTILS_CONTRAINTES ;
11_AUDIT_COHERENCE_NOTATION_CATEGORIES_RESPONSABILITES ;
docs/modules/01_OBJECT_REGISTRY ;
docs/modules/02_TRAJECTORY_ENGINE ;
docs/modules/03_REGISTRY_TRAJECTORY_INTERFACE ;
docs/modules/04_SCENE_PERFORMANCE_CONDUCTOR ;
docs/modules/05_CONTEXTUAL_CONTROL_ROUTER ;
docs/modules/06_CONDUCTOR_ROUTER_INTERFACE ;
03_VALIDATION_TESTS_EXTENSIONS v0.5.
```

Le document `01` reste le cahier phénoménologique principal.  
Le présent addendum précise comment ses phénomènes doivent désormais être lus à travers les modules, objets, trajectoires, scènes, contrôles, protections, sound design et mix/master futur.

---

# 1. Mise à jour de lecture générale

Les phénomènes du cahier `01` ne doivent plus être compris comme de simples familles de sons.

Chaque phénomène doit être lu selon cette chaîne :

```text
fonction musicale
→ phénomène sonore
→ objet(s) sonore(s)
→ rôle(s) contextuel(s)
→ profil(s) activables
→ dimension(s) affectée(s)
→ trajectoire(s) possible(s)
→ scène(s) compatible(s)
→ contrôle(s) jouables
→ risque(s)
→ protection(s)
→ validation(s).
```

Exemple :

```text
Impact-fondation corporel
→ fonction : réinstaller le corps
→ objets : sub, peau, gong sculpté, impact acoustique, didgeridoo filtré
→ rôles : fondation, retour au corps, résolution, trace corporelle
→ trajectoires : pré-drop, retour au corps, suspension → fondation
→ contrôles : Corps, Stabiliser sub, Préserver impact, Retour au corps
→ risques : grave flou, perte d’autorité, halo excessif
→ protections : sub_stability, impact_readability, low_authority.
```

---

# 2. Ajout stable : objet multi-profils

Tout phénomène peut être porté par des objets multi-profils.

Un objet ne doit pas être classé par une catégorie unique.

Exemples :

```text
Gong = impact + halo + partiels + résolution + beauté autonome ;
Voix = signal + matière + sémantique possible + rythme + formants ;
Sub = corps + pression + pitch_center + trace + résolution ;
Didgeridoo = live + souffle + grave + formants + corps + agency humaine ;
Polytexture = composite + densité + accents + interlocking + mid_load.
```

Conséquence pour `01` : dans chaque phénomène, la liste d’objets possibles doit être lue comme une liste de porteurs contextuels, pas comme une classification fermée.

---

# 3. Ajout stable : rôle contextuel

Un phénomène n’est pas attaché définitivement à un objet.

Un même objet peut porter plusieurs rôles selon scène et trajectoire.

Exemples :

```text
gong : impact, halo, champ de partiels, rugissement, résolution, beauté autonome ;
voix : signal, cri, matière, texture, fragment rythmique, halo vocal ;
sub : fondation, trace, retenue, pression, résolution, centre de gravité ;
halo : espace, post-résonance, suspension, masque à contrôler, beauté autonome ;
didgeridoo : grave vivant, ligne formantique, souffle, influence live, corps latent.
```

Conséquence : les phénomènes de `01` doivent être validés par rôles et non par sources seules.

---

# 4. Ajout stable : trajectoires décomposées

Les trajectoires mentionnées dans `01` doivent être lues comme des combinaisons d’opérations, pas comme des presets.

Exemple :

```text
pré-drop naturalisé
= retenir + fragmenter + densifier + armer + retarder + résoudre / bifurquer.
```

Exemple :

```text
suspension / expansion
= retirer + ouvrir + maintenir trace corporelle + élargir + protéger + préparer retour.
```

Exemple :

```text
torsion résonante
= tordre + filtrer + déplacer formants + moduler partiels + stabiliser + protéger grave.
```

Conséquence pour `01` : les trajectoires associées à chaque phénomène doivent être comprises comme des architectures de transformation, pas comme des effets ou automations.

---

# 5. Ajout stable : scènes et Conductor

Les phénomènes de `01` ne se déclenchent pas seuls. Ils sont autorisés, retardés, armés ou interdits par le Scene / Performance Conductor.

Exemples :

```text
impact-fondation peut être autorisé comme retour au corps ;
halo peut être autorisé comme post-résonance mais interdit comme halo libre ;
polytexture peut être autorisée en densification mais interdite en beauté autonome exposée ;
pré-drop peut être armé mais retardé ;
sub peut être protégé comme trace corporelle dans une suspension.
```

Conséquence : un phénomène peut être disponible dans le système sans être actif ou visible dans la scène.

---

# 6. Ajout stable : contrôles contextuels

Les phénomènes doivent être rendus jouables par des contrôles contextuels, pas par exposition directe de tous les paramètres.

Exemples :

```text
Pression spectrale corporelle
→ contrôles : Corps, Réduire pression, Stabiliser sub, Réduire bas-médium.

Espace musical / halo fonctionnel
→ contrôles : Halo, Réduire halo, Distance, Queue, Stabiliser espace.

Tension syncopée / attente / résolution
→ contrôles : Retarder, Résoudre, Annuler, Fausse résolution, Retour au corps.

Voix comme matière / signal
→ contrôles : Protéger voix, Fragmentation voix, Voix signal, Réduire masque.
```

Conséquence : `01` décrit les phénomènes ; le Router décide plus tard quels contrôles deviennent visibles selon contexte.

---

# 7. Ajout stable : protections et conflits

Les phénomènes doivent maintenant être lus avec leurs protections nécessaires.

Exemples :

```text
Impact-fondation → protéger attaque, sub, lisibilité, retour au corps ;
Pression corporelle → protéger confort, bas-médium, sub_stability ;
Brillance rythmique → protéger fatigue aiguë, hiérarchie des accents ;
Polytexture → protéger lisibilité, mid_load, cadre techno ;
Halo → protéger impact, voix, proximité, corps ;
Voix → protéger rôle signal ou sémantique selon scène ;
Didgeridoo → protéger agency live, bas-médium, formants, sub relation ;
Beauté autonome → protéger matière exposée, sortie formelle, retour au corps.
```

Conséquence : le futur `Conflict / Protection Manager` devient nécessaire pour arbitrer les phénomènes lorsqu’ils se superposent.

---

# 8. Ajout stable : sound design comme écologie

Les phénomènes ne doivent pas être traduits seulement par des sources ou des samples.

Ils peuvent être construits par :

```text
relations entre objets ;
écosystèmes sonores ;
géophonie ;
biophonie ;
densité procédurale ;
propagation acoustique ;
distance ;
convolution ;
stacking ;
granulation ;
resynthèse ;
résonateurs ;
hybridation réel / synthèse.
```

Mais uniquement si ces procédés servent une fonction musicale.

Exemple :

```text
eau procédurale ou pluie synthétique
→ pas décor naturaliste par défaut ;
→ peut devenir halo, texture, post-résonance, contrepoint naturel, scène de suspension ou masque contrôlé.
```

Conséquence : le sound design est un prolongement de l’Object Registry et du Timbre & Material Mapper, pas une banque de sons séparée.

---

# 9. Ajout stable : mix/master comme contrainte phénoménologique

Certains phénomènes impliquent déjà des contraintes de diffusion.

Exemples :

```text
Impact-fondation → translation sub / système club / hors-club ;
Pression spectrale corporelle → bas-médium, confort, fatigue, niveau ressenti ;
Brillance rythmique → fatigue aiguë ;
Polytexture → mid_load ;
Halo → flou spatial et masquage ;
Voix → intelligibilité / masquage ;
Beauté autonome → dynamique et silence relatif ;
Torsion résonante → résonances potentiellement dangereuses.
```

Conséquence : le futur mix/master intégré doit être lu comme prolongement des protections phénoménologiques, pas comme mastering final ajouté à la fin.

---

# 10. Mise à jour des validations phénoménologiques

Pour chaque phénomène de `01`, les validations futures devront vérifier :

```text
fonction conservée ;
objet(s) compatibles ;
rôle(s) contextuels explicites ;
profils activables clairs ;
trajectoires non figées ;
scènes compatibles ;
contrôles contextuels possibles ;
risques et protections définis ;
compatibilité sound design ;
compatibilité live ;
compatibilité diffusion / mix futur.
```

Échec si :

```text
le phénomène devient un son décoratif ;
le phénomène impose une source unique ;
le phénomène perd sa fonction techno ;
le phénomène surcharge l’interface ;
le phénomène crée un conflit sans protection ;
le phénomène nécessite un prototype jetable.
```

---

# 11. Conséquence technique

Cette synchronisation confirme que le prochain module prioritaire devrait être :

```text
Conflict / Protection Manager
```

Raison : les phénomènes sont maintenant nombreux, multidimensionnels, superposables, et souvent risqués.

Avant de détailler davantage Pitch, Timbre, Sound Engines ou Output/Mix, il faut clarifier :

```text
qui détecte les conflits ;
qui protège les dimensions critiques ;
qui arbitre entre halo, sub, voix, polytexture et live input ;
qui promeut les urgences vers le Router ;
qui informe le Conductor lorsqu’une trajectoire devient dangereuse.
```

---

# 12. Statut de cette synchronisation

Ce document n’annule pas le contenu détaillé de `01_CAHIER_DES_PHENOMENES_SONORES.md`.

Il sert de couche de lecture mise à jour jusqu’à une future refonte complète éventuelle de `01`.

Décision : ne pas réécrire tout `01` maintenant pour éviter de perdre les détails phénoménologiques déjà présents.
