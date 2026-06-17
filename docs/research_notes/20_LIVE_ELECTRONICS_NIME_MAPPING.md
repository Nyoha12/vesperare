# 20_LIVE_ELECTRONICS_NIME_MAPPING

Version : v0.1  
Statut : notes de recherche externes sur performance live électronique, NIME, mapping, interface, liveness et co-design instrumental. Réserve documentaire, pas source de vérité.

## Objet

Rassembler des résultats de recherche utiles pour concevoir Vesperare comme système de performance live.

Axes utiles :

- bons contrôles au bon moment ;
- instrument-système de performance ;
- mapping entre geste et résultat musical ;
- liveness ;
- charge cognitive ;
- co-design avec les instruments réels ;
- vérification musicale intégrée ;
- interface contextuelle.

## Entrées documentaires

### NIME comme champ de référence

Sources :

- `https://en.wikipedia.org/wiki/New_Interfaces_for_Musical_Expression`
- `https://arxiv.org/abs/2010.10803`

Observation : NIME couvre les nouveaux instruments, interfaces, performance, composition, cognition, perception, mouvement, mapping, expressivité, capteurs, haptique, temps réel et impact artistique.

Traduction Vesperare : Vesperare doit être pensé comme instrument-système de performance, pas seulement comme collection de macros Max for Live.

À relier à :

- `docs/02_SPECIFICATION_MAX_FOR_LIVE.md`
- `docs/08_PERFORMANCE_SCENES_TRAJECTOIRES_OBJETS.md`
- `docs/42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md`
- `docs/modules/18_CONTEXTUAL_CONTROL_ROUTER_AMPLITUDES_LIMITES_OVERRIDE_ADDENDUM.md`

### Contrôle intime, latence, virtuosité longue

Source :

- `https://arxiv.org/abs/2010.01570`

Observation : Wessel et Wright mettent en avant facilité initiale, potentiel de virtuosité à long terme, latence faible et stable, et stratégies claires pour programmer la relation entre geste et résultat musical.

Traduction Vesperare : les contrôles doivent être compréhensibles maintenant, mais approfondissables dans le temps.

À extraire :

- relation geste / résultat ;
- contrôle non opaque ;
- potentiel de virtuosité ;
- importance de la latence ;
- macros comme gestes musicaux.

### Musique live comme processus incarné et situé

Source :

- `https://arxiv.org/abs/2012.00927`

Observation : la performance musicale live peut être comprise comme processus incarné, contextualisé, reliant action humaine, technologie, corps, environnement et contexte.

Traduction Vesperare : didgeridoo, guimbardes, voix, gong et tambours doivent être considérés comme agents de scène, pas comme simples entrées audio.

À extraire :

- statut de source live ;
- source centrale ;
- source protégée ;
- source pivot ;
- source de tension ;
- source de retour ;
- source à laisser respirer.

### Liveness et degrés de contrôle

Source :

- `https://en.wikipedia.org/wiki/Live_PA`

Observation : la notion de live en musique électronique dépend du degré de contrôle temps réel sur les éléments musicaux, mais ne se réduit pas à tout jouer à la main.

Traduction Vesperare : distinguer joué, préparé, armé, assisté, automatisé, protégé, suggéré, override.

### Interface écologique

Source :

- `https://en.wikipedia.org/wiki/Ecological_interface_design`

Observation : une interface écologique rend visibles les contraintes et relations importantes d'un système complexe afin de soutenir l'action et réduire la charge mentale.

Traduction Vesperare : le Router et la visualisation doivent rendre lisibles scène, rôle, source live, risque, sortie et contrôles prioritaires.

### Halldorophone comme cas de co-design long

Sources :

- `https://en.wikipedia.org/wiki/Halldorophone`
- `https://nime.org/proceedings/2023/nime2023_51.pdf`

Observation : le halldorophone a évolué par dialogue prolongé avec des interprètes et compositeurs, dans des usages artistiques réels.

Traduction Vesperare : éviter le réflexe de test isolé. Préférer : concevoir globalement, vérifier localement, réviser sans casser la structure.

### LiveScaler : contrôle live harmonie / pitch en EDM

Source :

- `https://arxiv.org/abs/2401.08181`

Observation : LiveScaler propose un contrôle live de l'harmonie et du pitch en contexte EDM via MaxMSP/Ableton, avec attention au mapping et à l'expérimentation live.

Traduction Vesperare : peut éclairer plus tard le Pitch / Harmonic Field Manager, sans décider maintenant d'une architecture harmonique finale.

## Synthèse extractible

- Vesperare est un instrument-système, pas seulement une interface.
- Les contrôles doivent être des accès à des fonctions musicales, pas des paramètres bruts.
- Les instruments live doivent être traités comme agents de scène.
- La liveness doit être graduée : joué / armé / assisté / automatisé / protégé / override.
- La vérification doit être musicale et située, pas un protocole de test lourd.
- Les interfaces doivent rendre lisibles contraintes, risques, relations et sorties.
- Le mapping doit dépendre de scène + source + rôle + trajectoire, pas seulement d'un signal d'entrée.

## Recherches à poursuivre

- NIME mapping many-to-many.
- Evaluation non lourde des instruments numériques.
- Max for Live / Ableton contextual control.
- Performance électroacoustique avec drone, voix, feedback, percussions.
- Visualisation contextuelle des risques en live electronics.
