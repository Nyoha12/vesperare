# 12_HARMONIC_DRONE_SCENE_TRAJECTORY_NEEDS

Version : v0.1  
Statut : analyse scènes / trajectoires. Sans source validée, sans asset individuel, sans sample, sans prototypage.

## Objet

Ce document identifie dans quelles scènes ou trajectoires un champ harmonique / bourdon serait réellement nécessaire pour Vesperare.

Il s’appuie sur :

```text
SOURCE_NEED_HARMONIC_DRONE_SHRUTI_ORGAN
MATERIAL_ASSET_SCHEMA_HARMONIC_DRONE_FIELDS
10_HIGH_PRIORITY_SOURCE_NEEDS_COMPARISON
08_REMAINING_NEEDS_AFTER_LIVE_BASE_AND_COMPENSATIONS
```

Il ne choisit pas encore entre shruti, harmonium, orgue, résonateur, engine ou sample minimal.

Il répond seulement à la question :

```text
où le champ harmonique sert-il vraiment la scène,
et où devient-il seulement décor, nappe ou remplissage ?
```

---

# 1. Principe de décision

Un champ harmonique / bourdon ne doit être ajouté que si la scène demande au moins une fonction que la base live ne couvre pas suffisamment.

La base live actuelle couvre déjà :

```text
didgeridoo: souffle grave, pression, corps latent, formants graves ;
guimbardes: micro-pulse, formants de bouche, torsion fine, brillance rythmique ;
sub: centre physique, pression, continuité corporelle ;
gong conditionnel: masse métallique, résolution, partiels larges ;
tambour conditionnel: impact, peau, retour au corps.
```

Le champ harmonique devient nécessaire seulement s’il apporte :

```text
battements harmoniques ;
polyphonie tenue ;
suspension active ;
expansion non ambient ;
architecture harmonique ;
beauté autonome contrôlée ;
tension longue qui ne peut pas être portée seulement par sub/didgeridoo/guimbardes.
```

---

# 2. Scènes candidates

## 2.1 Scène de suspension active

```text
fonction recherchée: tenir le temps sans immobiliser la musique.
besoin du champ harmonique: battements, instabilité lente, tension sans percussion.
base suffisante si: didgeridoo + sub + guimbardes maintiennent déjà une tension lisible.
champ nécessaire si: il manque un espace harmonique large ou des battements perceptifs.
risques: nappe ambient, contemplation passive, perte du corps.
protections: tension interne obligatoire, relation au pitch_center, retrait possible, densité limitée.
priorité: haute.
```

## 2.2 Scène d’expansion non ambient

```text
fonction recherchée: ouvrir l’espace ou la perception sans passer dans le décor atmosphérique.
besoin du champ harmonique: expansion, largeur, polyphonie, croissance de tension.
base suffisante si: gong/traitements/espace suffisent à ouvrir la scène.
champ nécessaire si: l’expansion doit être harmonique et non seulement spatiale.
risques: pad, trance standard, halo décoratif, perte d’impact.
protections: trajectoire claire, rapport au sub, retour au corps, anti-ambient check.
priorité: haute.
```

## 2.3 Scène de pré-résolution / préparation de gong

```text
fonction recherchée: préparer une masse métallique, une résolution ou un changement d’état.
besoin du champ harmonique: tension harmonique avant gong, attente, battements, seuil.
base suffisante si: le gong seul prépare et résout déjà la scène.
champ nécessaire si: il faut créer un champ d’attente avant l’entrée ou la queue du gong.
risques: rituel trop explicite, grandeur sacrée, surmonumentalité.
protections: rareté, durée limitée, relation au gong, réduction de queue.
priorité: moyenne à haute.
```

## 2.4 Scène de beauté autonome contrôlée

```text
fonction recherchée: faire apparaître une beauté matérielle sans décor ni sentimentalité.
besoin du champ harmonique: accord rare, battement, souffle harmonique, précision de présence.
base suffisante si: gong, guimbardes ou voix-sans-voix suffisent à créer cette beauté.
champ nécessaire si: la beauté doit être tenue, harmonique et non seulement timbrale.
risques: new age, sacré, sentimentalité, beauté hors fonction.
protections: rareté, retour au corps, durée courte ou trajectoire claire, non-décor.
priorité: moyenne.
```

## 2.5 Scène de tension longue / pré-drop organique

```text
fonction recherchée: maintenir une tension longue sans kick ni progression techno standard.
besoin du champ harmonique: battements, instabilité, montée lente, pression harmonique.
base suffisante si: sub + didgeridoo + guimbardes génèrent déjà une tension suffisante.
champ nécessaire si: la tension doit devenir plus harmonique, plus large ou plus instable.
risques: drone statique, montée prévisible, perte d’énergie physique.
protections: modulation de densité, microtensions, retrait, retour net au corps.
priorité: haute.
```

## 2.6 Scène de retour au corps

```text
fonction recherchée: rendre le retour du sub, tambour ou impact plus évident par contraste.
besoin du champ harmonique: suspension avant impact, retrait soudain, contraste spectral.
base suffisante si: silence, gong ou guimbardes suffisent comme contraste.
champ nécessaire si: un champ harmonique rend le retour au corps plus fort ou plus lisible.
risques: champ qui masque l’impact, bas-médium flou, retour affaibli.
protections: ducking, transient priority, retrait avant attaque, low-mid safety.
priorité: moyenne.
```

## 2.7 Scène de voix signal

```text
fonction recherchée: soutenir une voix, un souffle vocal, un cri ou une parole fragmentée.
besoin du champ harmonique: support, halo tendu, tension harmonique sous voix.
base suffisante si: didgeridoo/guimbardes couvrent déjà la bouche et les formants.
champ nécessaire si: la voix doit apparaître dans un champ harmonique plus large.
risques: scène sacrée, illustration, pathos, masque de la voix.
protections: priorité voix, filtrage formantique, rareté, non-empilement voix + orgue + lieu.
priorité: conditionnelle.
```

## 2.8 Scène de lieu réel / mémoire

```text
fonction recherchée: faire apparaître un lieu, une mémoire ou une profondeur réelle.
besoin du champ harmonique: tension autour du lieu, résonance, profondeur, empreinte.
base suffisante si: field recording ou espace traité couvre déjà la fonction.
champ nécessaire si: le lieu doit être transformé en champ harmonique ou architecture.
risques: ambientisation, carte postale, documentaire sonore, décor sacré.
protections: hiérarchie lieu/corps, ducking, rôle précis du champ, non-illustration.
priorité: conditionnelle.
```

---

# 3. Trajectoires possibles

## 3.1 Pression → suspension → retour au corps

```text
étape 1: sub/didgeridoo imposent une pression.
étape 2: champ harmonique ouvre une suspension tendue.
étape 3: tambour, sub ou impact ramène le corps.
utilité du bourdon: créer une distance temporaire qui rend le retour plus fort.
risque: suspension trop longue ou trop ambient.
```

## 3.2 Micro-pulse → champ harmonique → signal métallique

```text
étape 1: guimbardes articulent micro-pulse et formants.
étape 2: champ harmonique élargit les battements.
étape 3: cloche/gong/métal accordé marque un seuil.
utilité du bourdon: passer du micro au macro sans perdre la tension.
risque: surcharge de partiels métalliques et harmoniques.
```

## 3.3 Drone grave → battements → expansion

```text
étape 1: didgeridoo ou sub pose un centre grave.
étape 2: champ harmonique introduit battements et microtensions.
étape 3: expansion spatiale ou harmonique se déploie.
utilité du bourdon: transformer une pression grave en champ perceptif.
risque: devenir une nappe de transition standard.
```

## 3.4 Beauté ponctuelle → retrait → impact

```text
étape 1: champ harmonique ou accord rare apparaît.
étape 2: retrait ou coupure.
étape 3: impact, tambour, sub ou gong répond.
utilité du bourdon: donner une beauté fragile qui intensifie l’impact suivant.
risque: beauté décorative si elle n’a pas de conséquence.
```

## 3.5 Lieu réel → champ harmonique → corps techno

```text
étape 1: field recording ou empreinte de lieu apparaît.
étape 2: champ harmonique rend le lieu tendu ou architectural.
étape 3: sub/tambour/pression ramène le corps.
utilité du bourdon: transformer le lieu en tension, pas en décor.
risque: ambient ou paysage sonore autonome.
```

---

# 4. Critères de validation par scène

Avant de créer un asset concret, chaque scène candidate doit répondre à :

```text
scene_id:
fonction_du_champ:
duree_approximative:
source_principale_actuelle:
manque_restant:
relation_au_sub:
relation_au_didgeridoo:
relation_aux_guimbardes:
relation_gong_tambour:
pitch_center_necessaire:
battements_necessaires:
risque_principal:
protection_principale:
condition_de_retrait:
raison_de_ne_pas_utiliser_le_champ:
```

---

# 5. Décision actuelle

Le champ harmonique / bourdon est :

```text
prioritaire pour suspension active ;
prioritaire pour tension longue / pré-drop organique ;
probable pour expansion non ambient ;
possible pour pré-résolution de gong ;
possible pour beauté autonome ;
conditionnel pour voix et field recordings ;
non nécessaire pour les scènes où didgeridoo + sub + guimbardes suffisent.
```

---

# 6. Prochaine action recommandée

Créer une fiche de cas de scène :

```text
SCENE_USE_CASE_HARMONIC_DRONE_SUSPENSION.md
```

Objectif : tester le champ harmonique dans une scène de suspension active avant de chercher ou créer un asset concret.

Décision importante :

```text
ne pas chercher de sample shruti / orgue maintenant ;
ne pas créer d’asset réel maintenant ;
d’abord définir un cas de scène minimal où le besoin est audible, utile et non décoratif.
```
