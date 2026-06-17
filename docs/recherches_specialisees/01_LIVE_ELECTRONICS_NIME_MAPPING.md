# 01_LIVE_ELECTRONICS_NIME_MAPPING

Version : v0.1  
Statut : notes de recherches spécialisées. Support documentaire non normatif. Pas une spécification, pas une doctrine, pas un protocole de test.

## Objet

Ce fichier stocke des résultats de recherche sur :

```text
live electronic music ;
NIME ;
mapping contrôle → résultat ;
interface écologique ;
liveness ;
performabilité ;
conception d'instruments numériques ;
cohabitation électronique / instruments acoustiques ;
méthodes de vérification intégrée.
```

Usage pour Vesperare : aider à concevoir un système qui présente les bons contrôles au bon moment, accompagne le live acoustique, et garde la décision musicale à Yohan.

Les sources ci-dessous ne sont pas des preuves pour Vesperare. Elles sont des appuis contextuels et méthodologiques.

---

# 1. Live electronic music — spontanéité, dialogue, interaction

## Source

- Titre : Live electronic music
- URL : https://en.wikipedia.org/wiki/Live_electronic_music
- Type : synthèse encyclopédique ; à recouper si usage fort.
- Statut : EXTRAIT

## Points extraits

La live electronic music est historiquement liée à une réaction contre la composition studio/tape perçue comme trop technocratique, parce qu'il y manquait :

```text
spontanéité ;
dialogue ;
découverte ;
interaction de groupe ;
composante visuelle / théâtrale du live.
```

## Apport possible pour Vesperare

Le live ne doit pas être défini uniquement par le temps réel.

À vérifier dans Vesperare :

```text
le geste de Yohan reste perceptible ;
les instruments acoustiques gardent une présence ;
le système réagit ou prépare sans confisquer ;
les décisions expressives restent au musicien ;
les contrôles sont jouables en situation.
```

## Document interne cible

```text
docs/08_PERFORMANCE_SCENES_TRAJECTOIRES_OBJETS.md
docs/42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md
docs/modules/18_CONTEXTUAL_CONTROL_ROUTER_AMPLITUDES_LIMITES_OVERRIDE_ADDENDUM.md
```

## Risque à éviter

```text
confondre live avec temps réel ;
faire un système actif mais non performable ;
transformer Yohan en opérateur de flux plutôt qu'en musicien live.
```

---

# 2. Live PA — contrôle temps réel et présence humaine

## Source

- Titre : Live PA
- URL : https://en.wikipedia.org/wiki/Live_PA
- Type : synthèse encyclopédique ; utile surtout comme contexte.
- Statut : EXTRAIT

## Points extraits

Live PA désigne des performances électroniques en contexte club/rave/festival, historiquement liées à la question de la présence live des producteurs dans des scènes parfois critiquées comme « faceless ».

## Apport possible pour Vesperare

Le système ne doit pas viser seulement une lecture de séquences ou une présence électronique.

Il doit rendre perceptible :

```text
ce qui est joué ;
ce qui est préparé ;
ce qui est contrôlé ;
ce qui est automatisé ;
ce qui est laissé au risque live.
```

## Document interne cible

```text
docs/19_LIVE_CONTROL_LAYERS_AND_PERFORMANCE_STATES.md
docs/22_CONTEXTUAL_VISUALIZATION_REQUIREMENTS.md
docs/42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md
```

## Risque à éviter

```text
faire une performance live seulement visible par l'interface ;
perdre l'impression d'événement musical situé ;
réduire le live à une présence scénique sans conséquence sonore.
```

---

# 3. Article Pitchfork — évolution du live électronique

## Source

- Titre : Keep It Alive or Die: The Ongoing Evolution of Live Electronic Music
- URL : https://pitchfork.com/features/article/9957-keep-it-alive-or-die-the-ongoing-evolution-of-live-electronic-music
- Type : article critique / journalistique.
- Statut : EXTRAIT

## Points extraits

L'article insiste sur l'évolution du live électronique comme zone hybride entre :

```text
hardware ;
software ;
geste humain ;
intuition ;
improvisation ;
structures préparées ;
performance scénique ;
technicité visible ;
acoustique et électronique.
```

## Apport possible pour Vesperare

La question n'est pas :

```text
tout est-il live ?
```

mais :

```text
quelle partie doit rester vivante, décidée, risquée, annulable, perceptible ?
```

## Document interne cible

```text
docs/08_PERFORMANCE_SCENES_TRAJECTOIRES_OBJETS.md
docs/42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md
```

## Risque à éviter

```text
absolutiser le live ;
absolutiser l'automation ;
confondre virtuosité technique et présence musicale.
```

---

# 4. NIME — interfaces comme champ artistique, scientifique et performatif

## Sources

- Titre : New Interfaces for Musical Expression
- URL : https://en.wikipedia.org/wiki/New_Interfaces_for_Musical_Expression
- Type : synthèse encyclopédique.
- Statut : EXTRAIT

- Titre : New interfaces for musical expression
- URL : https://arxiv.org/abs/2010.14228
- Auteurs : Ivan Poupyrev, Michael J. Lyons, Sidney Fels, Tina Blaine
- Type : texte historique / atelier NIME.
- Statut : EXTRAIT

- Titre : Trends at NIME — Reflections on Editing A NIME Reader
- URL : https://arxiv.org/abs/2010.10803
- Auteurs : Alexander Refsum Jensenius, Michael J. Lyons
- Type : article de synthèse NIME.
- Statut : EXTRAIT

## Points extraits

NIME couvre notamment :

```text
nouveaux contrôleurs ;
performance ;
composition ;
perception ;
cognition ;
geste ;
mouvement ;
mapping ;
expressivité ;
haptique ;
pratiques artistiques ;
rapports entre technologie et culture musicale.
```

## Apport possible pour Vesperare

Vesperare ne doit pas être pensé comme un simple set de devices Max for Live.

Il doit être pensé comme :

```text
un instrument-système ;
un environnement de performance ;
un espace de relations musicales ;
un dispositif d'expressivité contextuelle ;
un système de scènes, contrôles, automations et sorties.
```

## Document interne cible

```text
docs/02_SPECIFICATION_MAX_FOR_LIVE.md
docs/08_PERFORMANCE_SCENES_TRAJECTOIRES_OBJETS.md
docs/modules/18_CONTEXTUAL_CONTROL_ROUTER_AMPLITUDES_LIMITES_OVERRIDE_ADDENDUM.md
```

## Risque à éviter

```text
confondre quantité de contrôles avec expressivité ;
penser l'interface hors performance ;
construire un instrument numérique sans profondeur de jeu.
```

---

# 5. Wessel & Wright — faible latence, apprentissage, virtuosité, mapping

## Source

- Titre utilisé comme piste : Wessel & Wright, musical control / computers / controllers / gesture-to-sound mapping
- URL utile : https://arxiv.org/abs/2010.01570
- Type : texte fondateur / republié sur arXiv.
- Statut : À EXTRAIRE PLUS

## Points extraits provisoires

Les critères utiles pour un instrument numérique :

```text
prise en main initiale ;
potentiel de virtuosité à long terme ;
faible latence ;
relation programmable entre geste et résultat musical ;
richesse de mapping ;
contrôle expressif non trivial.
```

## Apport possible pour Vesperare

Le système doit rester jouable rapidement, mais aussi permettre un approfondissement.

À intégrer plus tard :

```text
contrôle immédiat ;
contrôle profond ;
contrôle contextuel ;
plages d'amplitude ;
virtuosité possible ;
relation geste → fonction, pas seulement geste → paramètre.
```

## Document interne cible

```text
docs/42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md
docs/19_LIVE_CONTROL_LAYERS_AND_PERFORMANCE_STATES.md
docs/modules/18_CONTEXTUAL_CONTROL_ROUTER_AMPLITUDES_LIMITES_OVERRIDE_ADDENDUM.md
```

## Risque à éviter

```text
mapping trop direct ;
contrôles faciles mais peu profonds ;
patch jouable vite mais non habitable longtemps.
```

---

# 6. Natural mapping — contrôle compréhensible sans surcharge mentale

## Source

- Titre : Natural mapping (interface design)
- URL : https://en.wikipedia.org/wiki/Natural_mapping_%28interface_design%29
- Type : synthèse HCI.
- Statut : EXTRAIT

## Points extraits

Le natural mapping vise à organiser la relation entre contrôle, mouvement et résultat de façon à réduire la charge mémoire et à rendre l'action plus compréhensible.

## Apport possible pour Vesperare

Les contrôles ne doivent pas être présentés comme paramètres bruts :

```text
Density ;
Decay ;
Filter ;
Spread ;
Random ;
Amount.
```

Ils doivent être reliés à des actions musicales :

```text
resserrer la pression ;
laisser place au didgeridoo ;
retenir la résolution ;
ouvrir sans ambientiser ;
réincorporer ;
exposer une matière ;
réduire le masquage ;
stabiliser le sub vivant.
```

## Document interne cible

```text
docs/42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md
docs/modules/18_CONTEXTUAL_CONTROL_ROUTER_AMPLITUDES_LIMITES_OVERRIDE_ADDENDUM.md
docs/22_CONTEXTUAL_VISUALIZATION_REQUIREMENTS.md
```

## Risque à éviter

```text
interface paramétrique abstraite ;
bon paramètre au mauvais niveau ;
contrôle puissant mais mal interprétable en live.
```

---

# 7. Ecological Interface Design — rendre visibles les contraintes pertinentes

## Source

- Titre : Ecological interface design
- URL : https://en.wikipedia.org/wiki/Ecological_interface_design
- Type : synthèse HCI / systèmes complexes.
- Statut : EXTRAIT

## Points extraits

L'Ecological Interface Design est conçu pour des systèmes complexes, dynamiques et temps réel. Il vise à rendre perceptibles les contraintes et relations importantes de l'environnement de travail pour libérer les ressources cognitives de l'utilisateur.

## Apport possible pour Vesperare

Le Router et les vues ne doivent pas montrer tout.

Ils doivent rendre visibles :

```text
le risque actuel ;
la scène active ;
la source prioritaire ;
la sortie possible ;
ce qui est menacé ;
ce qui est gagné ;
ce qui est masqué ;
ce qui devient urgent.
```

## Document interne cible

```text
docs/22_CONTEXTUAL_VISUALIZATION_REQUIREMENTS.md
docs/42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md
docs/modules/18_CONTEXTUAL_CONTROL_ROUTER_AMPLITUDES_LIMITES_OVERRIDE_ADDENDUM.md
```

## Risque à éviter

```text
trop d'information ;
visualisation décorative ;
warning non musical ;
interface qui augmente au lieu de réduire la charge cognitive.
```

---

# 8. Lauren Hayes — performance incarnée, située, personnalisée

## Source

- Titre : Enacting Musical Worlds: Common Approaches to using NIMEs within Performance and Person-Centred Arts Practices
- URL : https://arxiv.org/abs/2012.00927
- Autrice : Lauren Hayes
- Type : article NIME / pratiques incarnées et situées.
- Statut : EXTRAIT

## Points extraits

La création musicale live peut être comprise comme un processus incarné et situé : l'expérience musicale émerge de l'action humaine, de la technologie, de la physiologie, de l'environnement et du contexte.

## Apport possible pour Vesperare

Les instruments live de Yohan ne doivent pas être considérés comme de simples entrées audio.

Ils doivent être des agents de scène :

```text
didgeridoo = fondation / trace corporelle / sub vivant / formants / pression ;
guimbarde = accent / attaque / partiel / articulation / polytexture ;
voix-bouche-langue = signal / matière / souffle / cri / consonne / formants ;
gong = halo / impact / champ de partiels / beauté autonome / sortie ;
tambour = ancrage / relance / retour / frappe / rupture.
```

## Document interne cible

```text
docs/08_PERFORMANCE_SCENES_TRAJECTOIRES_OBJETS.md
docs/assets/15_DONNEES_INSTRUMENTALES_MANQUANTES_PRIORITAIRES.md
docs/assets/16_ACOUSTICARCHIVE_MAPPING_DONNEES_VESPERARE.md
```

## Risque à éviter

```text
traiter les instruments comme signaux ;
perdre le corps réel ;
masquer la performance acoustique ;
concevoir l'accompagnement comme décor sonore.
```

---

# 9. Halldorophone — instrument évolutif par usage artistique

## Source

- Titre : Halldorophone
- URL : https://en.wikipedia.org/wiki/Halldorophone
- Type : synthèse encyclopédique ; à recouper si usage fort.
- Statut : EXTRAIT

## Points extraits

L'évolution du halldorophone est un exemple d'instrument expérimental qui se développe progressivement par usages artistiques, collaborations, retours de performers et contexte culturel.

## Apport possible pour Vesperare

Vesperare ne doit pas être réduit à un prototype court.

Il peut être pensé comme :

```text
instrument-système évolutif ;
écosystème de performance ;
outil qui se stabilise par usage ;
architecture à approfondir plutôt qu'à réduire.
```

## Document interne cible

```text
docs/12_TECHNO_ORGANIQUE_CADRE_OPERATOIRE.md
docs/02_SPECIFICATION_MAX_FOR_LIVE.md
docs/39_PREMIERES_SESSIONS_TEST_SCENES_PIVOTS.md
```

## Risque à éviter

```text
obsession du prototype minimal ;
sur-test de microfonctions isolées ;
oublier la vision longue ;
confondre vérification musicale locale et validation technique exhaustive.
```

---

# 10. Méthodologie de vérification intégrée

## Synthèse issue des recherches ci-dessus

Le projet ne doit pas adopter comme réflexe :

```text
réduire pour tester.
```

Méthode plus adaptée :

```text
concevoir globalement ;
vérifier localement ;
réviser sans casser la structure.
```

Ou :

```text
concevoir par scènes fonctionnelles ;
vérifier par micro-situations musicales ;
corriger par retour musical ;
ne pas perdre l'architecture globale.
```

## Application à Vesperare

Une vérification locale doit répondre à des questions musicales, par exemple :

```text
est-ce que le didgeridoo reste lisible ?
est-ce que le retour au corps fonctionne ?
est-ce que la pression augmente sans devenir volume/saturation/boue ?
est-ce que la guimbarde est soutenue ou masquée ?
est-ce que la zone de bord a une sortie ?
est-ce que l'automation aide sans décider ?
est-ce que le contrôle proposé est vraiment le bon maintenant ?
```

## Document interne cible

```text
docs/39_PREMIERES_SESSIONS_TEST_SCENES_PIVOTS.md
docs/42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md
docs/23_SCENES_COMME_CHAMPS_OUVERTS_DE_PERFORMANCE.md
```

## Risque à éviter

```text
test lourd ;
MVP isolé ;
perte du projet global ;
protocole abstrait ;
validation technique sans pertinence musicale.
```
