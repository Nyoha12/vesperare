# 15_DONNEES_INSTRUMENTALES_MANQUANTES_PRIORITAIRES

Version : v0.1  
Statut : liste de données instrumentales à relever ou documenter. Sans protocole de session obligatoire, sans enregistrement complet, sans asset réel, sans prototype.

## Objet

Ce document liste les données instrumentales réellement manquantes après l’audit :

```text
14_AUDIT_SOURCE_NEEDS_CORPS_AMPLITUDES_LIMITES.md
```

Il ne demande pas encore :

```text
une session de jeu ;
une banque d’enregistrements ;
un corpus de samples ;
un patch ;
un prototype ;
un achat ;
une recherche d’assets.
```

Il sert à savoir ce qu’il faudrait connaître sur les sources déjà présentes ou optionnelles pour mieux concevoir les contrôles, les limites, les relations au sub, les scènes et les futures protections.

Sources concernées :

```text
didgeridoo ;
guimbardes ;
gongs ;
tambours sur cadre.
```

---

# 1. Principe

Ne pas documenter un instrument comme une bibliothèque.

Documenter ce dont Vesperare a besoin pour :

```text
jouer le corps ;
calibrer les amplitudes ;
identifier les zones de bord ;
préserver les sorties ;
préparer les protections ;
maintenir l’override humain ;
ne pas transformer les sources live en samples figés.
```

Chaque donnée instrumentale devrait pouvoir répondre à au moins une question :

```text
quelle fonction cette source porte-t-elle ?
quelle sous-fonction du corps ?
quelle amplitude est sûre ou expressive ?
quelle limite apparaît ?
quelle sortie est disponible ?
quel conflit avec sub / didgeridoo / guimbardes / gong / tambour ?
quel risque esthétique ?
```

---

# 2. Didgeridoo — données prioritaires

Statut : source live fixe.

## 2.1 Données de jeu

```text
plages de jeu réelles ;
hauteurs ressenties ;
notes ou centres approximatifs ;
types de souffle ;
types d’attaque ;
continuité possible ;
pulsation possible ;
durée confortable ;
intensité faible / moyenne / forte.
```

## 2.2 Données spectrales / formantiques

```text
formants principaux ;
zones graves dominantes ;
zones bas-médium problématiques ;
registre où les formants restent lisibles ;
registre où le son devient boueux ;
registre où il concurrence le sub ;
registre où il concurrence voix / guimbardes / gong.
```

## 2.3 Données de corps

```text
corps-pression: quelles intensités donnent pression sans boue ?
corps-geste: quels gestes restent perceptibles dans le traitement ?
corps-ancrage: quelles hauteurs ou textures stabilisent ?
corps-attente: quels modes de jeu créent retenue ?
corps-retour: quels gestes peuvent ramener le corps ?
corps-limite: quand le didgeridoo devient drone statique, basse ou cliché ?
```

## 2.4 Données de limites

```text
risque feedback ;
risque boue bas-médium ;
risque didgeridoo réduit à basse ;
risque sub écrasant ;
risque formants trop caricaturaux ;
risque drone statique ;
risque fatigue.
```

## 2.5 Sorties utiles

```text
réduire grave ;
filtrer formants ;
passer en souffle ;
retirer résonateur ;
sidechain sub ;
laisser trace ;
retour au corps.
```

---

# 3. Guimbardes — données prioritaires

Statut : sources live fixes, environ vingt instruments.

## 3.1 Inventaire minimal à connaître

Pour chaque guimbarde, relever idéalement :

```text
identifiant simple ;
registre ressenti ;
hauteur approximative ;
brillance ;
volume naturel ;
attaque ;
sustain ;
fatigue aiguë ;
facilité de jeu ;
caractère formantique ;
rôle préféré.
```

## 3.2 Rôles possibles

```text
micro-pulse ;
brillance rythmique ;
corps-geste ;
corps-pulsation ;
corps-hypnose ;
corps-attente ;
voix-sans-voix ;
ligne de torsion ;
accent fin ;
trace métallique.
```

## 3.3 Données de limites

```text
quand la guimbarde devient gadget ;
quand elle devient trop folklorique ;
quand les aigus fatiguent ;
quand la nasalité masque le reste ;
quand la répétition devient démonstrative ;
quand elle perd son lien techno ;
quand elle gêne la voix ou le didgeridoo.
```

## 3.4 Données de sélection contextuelle

Il faut éviter d’avoir vingt instruments abstraits.

Mieux vaut pouvoir classer provisoirement :

```text
2–3 guimbardes corps-pulsation ;
2–3 guimbardes formants graves/médiums ;
2–3 guimbardes brillantes mais sûres ;
2–3 guimbardes dangereuses / bord ;
2–3 guimbardes de trace ou retrait ;
le reste non prioritaire tant que leur rôle n’est pas clair.
```

Ce classement ne doit pas être figé.

## 3.5 Sorties utiles

```text
réduire aigu ;
réduire densité ;
filtrer formants ;
passer en micro-pulse rare ;
masquer la brillance ;
laisser trace ;
retirer guimbarde du focus.
```

---

# 4. Gongs — données prioritaires

Statut : sources live optionnelles, cinq gongs possibles.

## 4.1 Inventaire minimal à connaître

Pour chaque gong :

```text
identifiant simple ;
taille approximative ;
registre ressenti ;
attaque ;
masse ;
queue ;
durée de decay ;
partiels dominants ;
risque de boue ;
compatibilité sub ;
compatibilité didgeridoo ;
compatibilité tambour ;
rôle préféré.
```

## 4.2 Rôles possibles

```text
masse métallique ;
impact métallique ;
résolution ;
halo ;
post-résonance ;
beauté autonome ;
corps-impact ;
corps-retour ;
corps-limite.
```

## 4.3 Données de limites

```text
quand le gong devient décoratif ;
quand il devient trop rituel ;
quand la queue masque le sub ;
quand il produit trop de bas-médium ;
quand il écrase les guimbardes ;
quand il crée une grandeur trop évidente ;
quand il empêche le retour au corps.
```

## 4.4 Présence / absence

Pour chaque fonction de gong, demander :

```text
si gong présent : quel rôle réel ?
si gong absent : faut-il compenser ?
compensation possible par résonateur ?
compensation possible par guimbardes + sub ?
compensation possible par sample minimal ?
la scène peut-elle se passer de gong ?
```

## 4.5 Sorties utiles

```text
couper queue ;
réduire halo ;
réduire bas-médium ;
retirer sub ;
passer en post-résonance ;
retarder résolution ;
annuler résolution.
```

---

# 5. Tambours sur cadre — données prioritaires

Statut : sources live optionnelles, trois tambours possibles.

## 5.1 Inventaire minimal à connaître

Pour chaque tambour :

```text
identifiant simple ;
taille approximative ;
type de peau si connu ;
registre ;
attaque ;
grain ;
corps grave ;
queue courte ;
résonance ;
compatibilité sub ;
compatibilité didgeridoo ;
compatibilité gong ;
risque kick standard ;
risque folklorique ;
rôle préféré.
```

## 5.2 Rôles possibles

```text
corps-impact ;
corps-geste ;
corps-retour ;
corps-pulsation ;
peau ;
attaque humaine ;
impact acoustique ;
accent large ;
polytexture corporelle.
```

## 5.3 Données de limites

```text
quand le tambour devient kick standard ;
quand le grain de peau disparaît ;
quand il devient couleur folklorique ;
quand le sub l’écrase ;
quand il masque le didgeridoo ;
quand il surcharge avec le gong ;
quand il impose une lecture rituelle trop directe.
```

## 5.4 Présence / absence

Pour chaque fonction de peau / impact :

```text
si tambour présent : quel rôle réel ?
si tambour absent : faut-il compenser ?
compensation possible par sub + attaque ?
compensation possible par guimbardes ?
compensation possible par sample minimal ?
la scène peut-elle se passer de peau ?
```

## 5.5 Sorties utiles

```text
réduire impact ;
préserver grain ;
retirer sub ;
réduire bas-médium ;
raréfier attaque ;
passer en trace de peau ;
retour au corps moins frontal.
```

---

# 6. Données non prioritaires pour l’instant

Ne pas relever maintenant, sauf besoin clair :

```text
voix ;
field recordings ;
shruti / harmonium / orgue ;
cordes frottées ;
métaux accordés ;
cloches ;
vibraphone ;
autres instruments candidats.
```

Raison :

```text
ces sources restent conditionnelles ou ouvertes ;
leur collecte risquerait d’orienter le projet avant confirmation fonctionnelle ;
le paquet de recentrage demande de préserver la priorité des sources live fixes et optionnelles existantes.
```

---

# 7. Format minimal de fiche instrumentale future

Si des fiches instrumentales sont créées plus tard, elles devraient suivre ce squelette :

```text
instrument_id:
statut: live_fixed / live_optional / conditional / open_need
présence: toujours / parfois / non fixée / absente
fonctions:
body_subfunctions:
amplitudes:
zones_de_bord:
risques:
sorties:
relations:
  sub:
  didgeridoo:
  guimbardes:
  gong:
  tambour:
sample_implication:
asset_implication:
provenance_level:
notes:
```

---

# 8. Priorité de relevé

Priorité 1 :

```text
didgeridoo ;
guimbardes.
```

Pourquoi :

```text
sources toujours présentes ;
forte centralité ;
pas remplaçables ;
fort impact sur Router, Conductor, Conflict, Pitch et Timbre.
```

Priorité 2 :

```text
gongs ;
tambours sur cadre.
```

Pourquoi :

```text
sources optionnelles ;
leur absence change la stratégie ;
leur présence peut éviter samples ou compensations ;
leur surcharge peut créer des conflits.
```

Priorité 3 reportée :

```text
voix ;
field recordings ;
harmonic drone ;
cordes ;
métaux accordés.
```

Pourquoi :

```text
besoins encore conditionnels ou ouverts ;
à confirmer par scène/fonction avant relevé.
```

---

# 9. Décision finale

La prochaine étape n’est pas une collecte audio.

La prochaine étape est une clarification instrumentale minimale :

```text
quels registres ;
quelles fonctions ;
quelles limites ;
quelles sorties ;
quelles relations avec sub / corps / live.
```

Aucun nouvel asset ne doit être créé à partir de ce document sans décision ultérieure.
