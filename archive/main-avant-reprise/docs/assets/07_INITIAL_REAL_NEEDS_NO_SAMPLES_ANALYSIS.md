# 07_INITIAL_REAL_NEEDS_NO_SAMPLES_ANALYSIS

Version : v0.1  
Statut : analyse initiale des besoins réels. Point de départ : **zéro sample**. Sans prototypage, sans collecte, sans choix définitif d’engine.

## Objet

Ce document lance l’analyse demandée : déterminer les besoins réels initiaux de Vesperare en partant de :

```text
aucun sample initial ;
didgeridoo toujours live ;
guimbardes toujours live, environ vingt instruments ;
parfois 1 gong parmi 5 ;
parfois 1 tambour sur cadre parmi 3 ;
possibilité de trouver / enregistrer / acheter des samples si besoin réel ;
génération / simulation à déterminer par analyse spécifique, pas par principe.
```

Objectif : ne pas demander “quels samples avons-nous ?”, mais :

```text
quels besoins initiaux sont nécessaires au style,
quels besoins sont couverts par le live,
quels besoins sont couverts seulement quand gong/tambour sont présents,
quels besoins doivent d’abord être analysés côté génération / simulation,
et quels besoins justifient un minimum de samples.
```

---

# 1. Couverture initiale par les sources live fixes

## 1.1 Didgeridoo toujours live

```text
couvre fortement :
- souffle grave ;
- présence physique ;
- formants ;
- torsion résonante ;
- pression grave organique ;
- ligne de matière ;
- retour au corps partiel ;
- tension continue.

ne couvre pas complètement :
- impact net de fondation ;
- peaux ;
- gong / métal de résolution ;
- field recording exposé ;
- voix sémantique ;
- polytexture aiguë dense.
```

Conséquence :

```text
le didgeridoo n’appelle pas un corpus de samples ;
il appelle un traitement live, une captation, des renforts, des garde-fous et peut-être des références.
```

## 1.2 Guimbardes toujours live

```text
couvrent fortement :
- micro-pulse ;
- formants de bouche ;
- voix-sans-voix ;
- torsion ;
- ligne vivante ;
- brillance rythmique métallique ;
- micro-impacts ;
- variation timbrale ;
- jeu live immédiat.

ne couvrent pas complètement :
- sub stable ;
- impact corporel lourd ;
- halo long ;
- gongs de résolution ;
- peaux ;
- lieux réels ;
- grands champs harmoniques larges.
```

Conséquence :

```text
les guimbardes doivent devenir un axe live majeur ;
les samples de guimbardes ne sont pas prioritaires ;
les besoins associés relèvent plutôt de captation, traitement live, formants, résonateurs et mapping.
```

---

# 2. Couverture par sources live occasionnelles

## 2.1 Gong occasionnel : 1 parmi 5

```text
couvre quand présent :
- impact métallique ;
- masse de résolution ;
- halo ;
- partiels réels ;
- beauté autonome ;
- tension / résolution ;
- champ harmonique inharmonique.

ne couvre pas quand absent :
- résolution métallique centrale ;
- queue réelle de gong ;
- certains partiels de métal ;
- symbole formel de gong.
```

Conséquence :

```text
il faut prévoir une stratégie sans gong live :
- génération / résonateur / renfort spectral ;
- ou petit minimum de samples de gong / métaux ;
- ou scène sans résolution métallique.
```

## 2.2 Tambour sur cadre occasionnel : 1 parmi 3

```text
couvre quand présent :
- peau ;
- impact corporel ;
- geste humain ;
- retour au corps ;
- accent large ;
- grain de peau.

ne couvre pas quand absent :
- attaque de peau exposée ;
- impact acoustique corporel non synthétique ;
- polytexture de peaux.
```

Conséquence :

```text
il faut prévoir une stratégie sans tambour live :
- génération / synthèse d’impact ;
- ou très petit noyau de samples de peaux ;
- ou transfert du rôle à sub + didgeridoo + objets.
```

---

# 3. Besoins initiaux classés par couverture

## 3.1 Besoins déjà fortement couverts par le live fixe

```text
LIVE_FIXED_COVERED
- torsion résonante / ligne vivante ;
- formants et voix-sans-voix ;
- micro-pulse métallique / buccale ;
- souffle grave ;
- pression organique partielle ;
- hypnose par variation timbrale ;
- interaction live / agency humaine.
```

Décision :

```text
pas de samples initiaux pour ces besoins ;
priorité à traitement live, captation, mapping, résonateurs, formants, sécurité spectral/volume.
```

## 3.2 Besoins partiellement couverts par le live fixe

```text
LIVE_FIXED_PARTIAL
- impact-fondation corporel ;
- polytexture percussive raffinée ;
- brillance rythmique naturalisée ;
- champs harmoniques / partiels ;
- pression spectrale corporelle ;
- tension syncopée / attente.
```

Décision :

```text
analyser d’abord hybridation live fixe + génération ;
ne pas décider de samples avant d’avoir testé les rôles manquants.
```

## 3.3 Besoins couverts seulement par live optionnel

```text
LIVE_OPTIONAL_COVERED
- gong / résolution métallique ;
- halo métallique de gong ;
- peau / tambour / impact acoustique ;
- queues et partiels réels associés au gong ;
- grain de peau associé au tambour.
```

Décision :

```text
prévoir une alternative minimale quand gong/tambour sont absents ;
cette alternative peut être génération, sample minimal, ou autre trajectoire.
```

## 3.4 Besoins non couverts par les sources live données

```text
NOT_LIVE_COVERED
- field recording exposé ;
- voix sémantique ou signal si voix live non prévue ;
- orgue / cuivres / anches / vibraphone / harpes / cordes comme sources spécifiques ;
- certains lieux, espaces, impulses ;
- certains partiels réels non produits par gong/guimbarde/didgeridoo.
```

Décision :

```text
ne pas les valider comme samples par défaut ;
les garder comme besoins potentiels ;
les confirmer seulement si la fonction manque vraiment après live fixe + génération.
```

---

# 4. Analyse initiale génération / simulation par besoin

## 4.1 Sub / pression grave

```text
besoin: sub stable, pression, centre corporel.
live: didgeridoo aide mais ne remplace pas forcément sub stable.
génération/simulation: à analyser en priorité.
sample: non prioritaire.
statut initial: GENERATION_FIRST.
```

Critères de validation :

```text
stabilité ;
corps ;
mono ;
compatibilité didgeridoo ;
compatibilité gong/tambour quand présents ;
pas de preset sub générique.
```

## 4.2 Impact-fondation

```text
besoin: impact lisible, autorité temporelle, retour au corps.
live: tambour optionnel, gong optionnel, didgeridoo partiel.
génération/simulation: à analyser pour attaque + corps + enveloppe.
sample: peut devenir nécessaire en minimum si impact généré ou live optionnel insuffisant.
statut initial: HYBRID_TO_ANALYZE.
```

Critères de validation :

```text
attaque lisible ;
pression ;
queue contrôlée ;
compatibilité danse ;
pas kick standard ;
pas percussion rituelle plaquée.
```

## 4.3 Peaux

```text
besoin: grain de peau, geste humain, attaque exposée.
live: tambour optionnel seulement.
génération/simulation: possible pour corps/résonance, incertaine pour grain exposé.
sample: minimum probable si ce rôle existe dans des scènes sans tambour.
statut initial: SAMPLE_MINIMAL_IF_ROLE_CONFIRMED.
```

## 4.4 Gongs / métaux de résolution

```text
besoin: masse métallique, partiels, résolution, halo.
live: gong optionnel seulement.
génération/simulation: possible en renfort/résonateur, pas forcément en remplacement exposé.
sample: minimum probable si résolution métallique doit exister sans gong live.
statut initial: HYBRID_WITH_OPTIONAL_SAMPLE.
```

## 4.5 Guimbardes / torsion / micro-pulse

```text
besoin: ligne formantique live, micro-pulse, torsion.
live: guimbardes fixes.
génération/simulation: renfort seulement.
sample: non nécessaire au départ.
statut initial: LIVE_FIXED_FIRST.
```

## 4.6 Didgeridoo / souffle grave / formants

```text
besoin: souffle grave, corps, formants, agency.
live: didgeridoo fixe.
génération/simulation: renfort seulement.
sample: référence seulement.
statut initial: LIVE_FIXED_FIRST.
```

## 4.7 Voix

```text
besoin: signal humain, souffle, cri, sémantique éventuelle.
live: non fixé dans les données actuelles.
génération/simulation: pas suffisante pour signal humain réel.
sample: minimum probable si voix reste nécessaire et non live.
statut initial: NEEDS_DECISION.
```

Question non résolue :

```text
voix live ou samples vocaux minimaux ?
```

## 4.8 Field recordings / lieux

```text
besoin: lieu réel, profondeur, scène nocturne, beauté autonome.
live: non couvert.
génération/simulation: simulation d’espace possible, lieu réel exposé non remplaçable.
sample: minimum probable seulement si lieu exposé est confirmé.
statut initial: DEFER_OR_SAMPLE_MINIMAL.
```

## 4.9 Éléments naturels : eau / vent / pluie / feu / sol

```text
besoin: microtexture, flux, densité, transitions, scène sonore.
live: non couvert directement.
génération/simulation: à analyser en priorité.
sample: grains / références seulement si génération insuffisante ou exposition réelle.
statut initial: GENERATION_TO_ANALYZE.
```

## 4.10 Cuivres / anches / cordes / orgue / vibraphone / harpes

```text
besoin: signaux, cris, champs harmoniques, halos, textures, voix-sans-voix, beauté autonome potentielle.
live: non couvert sauf si collaboration future.
génération/simulation: à analyser par rôle, pas par instrument.
sample: aucun besoin initial confirmé.
statut initial: POTENTIAL_ONLY.
```

Décision :

```text
ne pas chercher de samples de ces familles maintenant ;
les garder comme sources candidates ;
les activer seulement si un manque réel apparaît.
```

---

# 5. Premiers besoins réels initiaux probables

## 5.1 À traiter en priorité sans sample

```text
sub / pression grave ;
didgeridoo live ;
guimbardes live ;
torsion / ligne vivante ;
micro-pulse live ;
résonateurs / halos générés ;
placement / densité polytexturale ;
élements naturels procéduraux ;
champs harmoniques générés ou dérivés du live.
```

## 5.2 À analyser comme hybridation

```text
impact-fondation ;
polytexture ;
brillance rythmique ;
champs de partiels ;
halo / post-résonance ;
tension syncopée.
```

## 5.3 À garder comme samples minimaux possibles

```text
peaux ;
gongs / métaux ;
voix ;
field recordings exposés ;
queues / impulses singulières ;
sources instrumentales spécifiques seulement si rôle confirmé.
```

---

# 6. Première conclusion

À partir de zéro sample et des sources live fixes, le projet ne semble pas devoir commencer par une banque de samples.

Il doit commencer par :

```text
1. un système de traitement live didgeridoo ;
2. un système de traitement live guimbardes ;
3. un engine sub / pression grave ;
4. des engines de résonance / halo / torsion ;
5. une analyse génération/simulation des éléments naturels et micro-événements ;
6. seulement ensuite : samples minimaux pour les manques réels.
```

Les premiers samples potentiels ne seraient pas des collections d’instruments, mais de petits ensembles nécessaires pour combler des absences fonctionnelles :

```text
si aucun tambour live → quelques peaux / impacts ;
si aucun gong live → quelques gongs / métaux ;
si voix non live mais nécessaire → quelques fragments vocaux ;
si lieu réel nécessaire → quelques field recordings ;
si beauté/partiels irremplaçables → une poignée de sources spécifiques.
```

---

# 7. Prochaine étape

Créer une première fiche `source_need` non pas pour un sample, mais pour une source live fixe :

```text
SOURCE_NEED_LIVE_JAW_HARPS_FORMANT_MICROPULSE
```

ou :

```text
SOURCE_NEED_LIVE_DIDGERIDOO_PRESSURE_FORMANTS
```

Ces fiches permettront de commencer la base par les sources centrales réellement garanties, avant les samples.
