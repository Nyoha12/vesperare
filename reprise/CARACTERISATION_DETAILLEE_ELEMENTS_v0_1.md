# CARACTERISATION DETAILLEE DES ELEMENTS v0.1

Projet : Vesperare
Statut : couche intermediaire entre besoins artistiques et architecture technique
Date : 2026-06-20

Sources :
- BESOINS_STYLISTIQUES_v0_3.md
- BESOINS_GENERATION_v0_3.md
- MATRICE_DETAILLEE_INSPIRATIONS_BESOINS_v0_1.md
- SPECIFICATIONS_BESOINS_STYLISTIQUES_GENERATION_v0_1.md
- sources initiales uploadees, relues seulement pour verifier la couverture

But :

Caracteriser chaque element d'inspiration et chaque famille de besoins avec assez de precision pour preparer plus tard des choix techniques Max for Live, sans encore choisir les devices, l'interface, les mappings ou les routings.

Ce document ne decide pas :

- architecture Ableton / Max for Live ;
- pistes ;
- devices ;
- sidechains exacts ;
- controles live ;
- seuils numeriques ;
- analyse temps reel definitive ;
- organisation de scenes jouables.

Il precise :

- ce qui doit etre observe ;
- ce qui doit etre generable ;
- ce qui doit rester contraint ;
- ce qui peut varier ;
- ce qui entre en conflit ;
- quelles consequences techniques sont probables, sans les figer.

## 0. Regle de lecture

Un element est considere "caracterise" seulement si on peut decrire :

```text
contexte d'inspiration :
phenomene retenu :
fonction Vesperare :
sensation visee :
parametres musicaux observables :
parametres generatifs possibles :
conditions d'apparition :
conditions de transformation :
conditions de disparition :
conflits probables :
garde-fous :
consequences techniques probables :
points encore a preciser :
```

Un element n'est pas encore caracterise techniquement si on ne sait dire que :

```text
faire un son sombre
faire plus organique
faire plus techno
mettre du sidechain
mettre de la reverb
generer des motifs
reagir au didgeridoo
```

Ces formulations doivent toujours etre traduites en variables musicales plus precises.

## 1. Variables communes

### 1.1. Variables de scene

```text
fonction principale :
fonctions secondaires :
inspiration principale :
inspirations secondaires :
presence techno : absent / latent / suspendu / reincarne / explicite / retour
pression dominante : rythmique / grave / spectrale / spatiale / attente / rarete
densite globale : rare / aeree / moyenne / dense / extreme
degre de suspension :
degre de retour possible :
relation au live :
relation au didgeridoo :
```

### 1.2. Variables d'objet sonore

```text
statut perceptif : objet / texture / entre-deux
plan : avant / milieu / fond / espace / grave
source imaginee :
cause physique possible :
matiere :
geste :
attaque :
corps :
queue :
halo :
silence autour :
registre :
dynamique :
rugosite :
instabilite :
saillance :
risque de masquage :
condition de retrait :
```

### 1.3. Variables rythmiques

```text
ancrage : explicite / implicite / fantome / absent
densite d'attaques :
repartition des accents :
cycle principal :
cycles secondaires :
decalage :
syncope :
interlocking :
dissonance metrique :
stabilite :
lisibilite corporelle :
relation au grave :
relation a l'espace :
condition de retour :
```

### 1.4. Variables melodiques, spectrales et harmoniques

```text
regime melodique : absent / centre / accent / basse-motif / timbre / partiels / acid naturalise / voix / hook / microtonal
centre spectral :
source des partiels :
degre microtonal :
degre de tension :
degre de resolution :
vitesse de battement :
formants :
relation grave / halo :
relation voix / instrument :
risque de lead banal :
risque de theorie microtonale :
```

### 1.5. Variables de plausibilite acoustique

```text
niveau PA :
source imaginee :
cause possible :
matiere possible :
geste possible :
attaque plausible :
queue plausible :
evolution spectrale organique :
espace plausible :
risque de preset :
risque electronique reconnaissable :
```

### 1.6. Variables de generation

```text
objet genere :
fonction avant parametres :
ce qui est fixe :
ce qui varie :
ce qui mute :
ce qui peut disparaitre :
declencheur d'apparition :
declencheur de transformation :
declencheur de retrait :
memoire conservee :
risque d'automatisme :
controle artistique necessaire :
```

## 2. Fiches par element d'inspiration

### CE-01 - Techno comme socle recuperable

Maturite actuelle : solide pour les besoins, encore non chiffree pour les seuils.

Contexte d'inspiration :

- techno fondatrice ;
- Jeff Mills pour hypnose, aspiration, cadre ;
- Robert Hood pour repetition, temps long, detail ;
- club, nuit, pression corporelle.

Phenomenes retenus :

- repetition hypnotique ;
- cadre qui revient ;
- tension longue ;
- impact corporel ;
- pression rythmique ;
- economie active ;
- retour du corps apres suspension.

Fonction Vesperare :

La techno doit rester recuperable meme quand elle n'est pas presente en surface.

Parametres musicaux a caracteriser :

- degre de pulse : explicite, implicite, fantome, absent ;
- degre de repetition : boucle stricte, variation faible, variation perceptible, dissolution ;
- lisibilite corporelle : claire, latente, perdue ;
- type de retour : grave, accent, cadre, densite, contraction d'espace ;
- stabilite du cycle : stable, decale, polymetrique, suspendu ;
- type de pression dominante : rythme, grave, espace, spectre, attente ;
- intensite de cadre : faible memoire, cadre latent, cadre dominant.

Objets generatifs probables :

- impact-fondation naturalise ;
- micro-pulse sans hi-hat electronique ;
- cadre fantome ;
- motif repetitif vivant ;
- retour de cadre apres suspension ;
- masse grave plausible ;
- densification progressive.

Conflits :

- techno trop absente : perte de corps ;
- techno trop presente : retour aux timbres techno standards ;
- repetition trop stable : boucle morte ;
- variation trop forte : hypnose cassee ;
- naturalisation decorative : fonction techno perdue.

Consequences techniques probables :

- besoin de mesurer ou declarer un degre de pulse ;
- besoin de compter densite d'attaques et stabilite de cycle ;
- besoin d'un etat "memoire techno" meme sans kick ;
- besoin de conditions de retour explicites ;
- besoin d'une prevention contre timbres electroniques PA-X.

Points a preciser :

- seuil minimal pour qu'une section reste "recuperable" comme techno ;
- duree maximale subjective d'une perte totale de cadre ;
- type de retour le plus fort pour toi : grave, accent, motif, espace, impact.

### CE-02 - Techno pseudo-acoustique / realisme augmente

Maturite actuelle : solide comme principe, encore fragile comme bibliotheque de sons.

Contexte d'inspiration :

- sons techno entre synthese et instrument reel ;
- trompette impossible ;
- cloche augmentee ;
- percussion synthetique mais gestuelle ;
- instrument qui semble physique mais plus precise, plus grand ou impossible.

Phenomenes retenus :

- sur-realite acoustique ;
- geste corporel imaginable ;
- lois physiques perceptibles ;
- precision synthetique sans signature informatique ;
- ambiguity sourcee.

Fonction Vesperare :

Remplacer les supports techno reconnaissables par des objets plausibles comme extensions acoustiques.

Parametres musicaux a caracteriser :

- source imaginee : peau, metal, souffle, cavite, voix, tube, friction ;
- degre de sur-realite : leger, clair, frontal, transgressif ;
- morphologie : attaque, corps, queue, halo ;
- complexite spectrale : simple, riche, instable, inharmonique ;
- plausibilite de cause : evidente, probable, ambigue, fragile ;
- risque de preset : bas, moyen, haut ;
- fonction active : impact, micro-pulse, halo, tension, masse, signal.

Objets generatifs probables :

- metal impossible mais plausible ;
- peau trop profonde ;
- souffle-sub ;
- voix trop resonante ;
- gong trop controle ;
- insecte ou oiseau devenu micro-pulse ;
- didgeridoo etendu par resonances.

Conflits :

- sound design abstrait sans fonction ;
- son trop spectaculaire ;
- imitation naturaliste ;
- preset pseudo-acoustique reconnaissable ;
- confusion entre plausible et doux.

Consequences techniques probables :

- besoin d'un descripteur PA pour chaque son ;
- besoin de separer source imaginee, matiere et fonction ;
- besoin de contraintes sur enveloppe et queue ;
- besoin de tests d'ecoute contre cliches electroniques ;
- probable usage de transformations spectrales, resonances, filtrages et enveloppes, mais sous controle musical.

Points a preciser :

- quels types de sur-realite te semblent desirables : precise, massive, fragile, rituelle, violente, belle ;
- quelles signatures electroniques sont absolument exclues meme si elles sont efficaces.

### CE-03 - Polytexture percussive / Keita Ogawa

Maturite actuelle : solide pour les roles, a preciser pour densites et limites de couches.

Contexte d'inspiration :

- Keita Ogawa comme analyse de polytexture percussive ;
- pas imitation de style ;
- pas folklore ;
- pas virtuosite decorative.

Phenomenes retenus :

- groove fait de petites fonctions ;
- couches interdependantes ;
- richesse d'attaques ;
- contrepoints ;
- harmonie de timbres ;
- tissage rythmico-spectral.

Fonction Vesperare :

Fournir une polytexture entre percussif, harmonique, spectral, vocal, microtonal et spatial, sans qu'elle devienne obligatoire.

Parametres musicaux a caracteriser :

- nombre de couches actives ;
- role de chaque couche : ancrage, contrepoint, micro-pulse, appel, reponse, queue, halo ;
- registre de chaque couche ;
- densite d'attaques ;
- longueur de queue ;
- occupation medium ;
- decalage par rapport au cycle principal ;
- degre d'interlocking ;
- accent principal et accents secondaires ;
- couche directrice.

Objets generatifs probables :

- micro-pulse de peaux/bois/souffle ;
- contrepoint a cycle decale ;
- texture de transition ;
- faux roll naturalise ;
- densite d'attaques sans hi-hat ;
- reponses aux attaques du didgeridoo.

Conflits :

- surcharge medium ;
- trop de couches ;
- perte de pulse ;
- hasard sans role ;
- virtuosite demonstrative ;
- connotation ethnique.

Consequences techniques probables :

- besoin d'un registre de roles de couches ;
- besoin de limiter dynamiquement le nombre de couches ;
- besoin d'une couche directrice declaree ;
- besoin de relation densite / halo / queue ;
- probable generation de patterns par contraintes de role, pas par aleatoire brut.

Points a preciser :

- nombre de couches maximal acceptable en club avant confusion ;
- degre de complexite rythmique souhaite entre lisible et instable ;
- quand la polytexture peut devenir frontale.

### CE-04 - Dubstep comme reservoir de tension, sub et resolution

Maturite actuelle : moyenne ; les phenomenes sont clairs, la rarete du drop reste a regler.

Contexte d'inspiration :

- dubstep retenu comme reservoir ;
- pas wobble bass ;
- pas brostep ;
- pas drop automatique.

Phenomenes retenus :

- syncope ;
- attente ;
- trou de fondation ;
- retour de masse ;
- sub comme matiere ;
- voix criee ;
- gong / rugissement ;
- resolution rythmique ou spectrale.

Fonction Vesperare :

Creer de la tension corporelle par absence, deplacement, masse et retour, sans copier le style.

Parametres musicaux a caracteriser :

- degre d'attente ;
- duree du trou ;
- type de syncope : placement, masse, texture, voix, metal ;
- source de masse : didgeridoo, gong, sub discret, voix transformee, friction grave ;
- stabilite du sub ;
- rarete du drop ;
- forme de resolution ;
- niveau de transgression ;
- relation au didgeridoo.

Objets generatifs probables :

- trou de fondation avant retour ;
- syncope de gong grave ;
- pre-drop long sans explosion immediate ;
- masse grave respirante ;
- cri comme signal ;
- resolution par realignement de couches ;
- microtonalite grave.

Conflits :

- sub masque didgeridoo ;
- drop trop attendu ;
- basse electronique reconnaissable ;
- effet trailer ;
- violence sonore ;
- perte de subtilite.

Consequences techniques probables :

- besoin d'un monopole du sub ;
- besoin d'un etat "attente de retour" ;
- besoin de differencier trou, retrait, drop et resolution ;
- besoin de limiter les drops a des conditions formelles ;
- probable ducking ou partage de grave autour du didgeridoo, plus tard.

Points a preciser :

- frequence acceptable des drops rares ;
- difference subjective entre drop, retour, impact et resolution ;
- niveau de sub acceptable avec didgeridoo seul.

### CE-05 - Dub / sound system comme profondeur, confort et vide actif

Maturite actuelle : moyenne ; les fonctions sont claires, les seuils de sub/espace sont futurs.

Contexte d'inspiration :

- dub et sound system comme science de profondeur, sub, espace et confort ;
- pas reggae ;
- pas delay dub comme signature ;
- pas basse dub typique.

Phenomenes retenus :

- profondeur ;
- separation des plans ;
- sub confortable ;
- pression par vide ;
- flow ;
- espace qui repond.

Fonction Vesperare :

Permettre une pression immense mais respirable, avec espace actif et grave lisible.

Parametres musicaux a caracteriser :

- profondeur ;
- distance ;
- plan avant / fond ;
- taille d'espace ;
- densite de queue ;
- relation sub / halo ;
- vide autour des impacts ;
- confort spectral ;
- flow de scene ;
- lisibilite du corps dans l'espace.

Objets generatifs probables :

- espace qui pulse ;
- echo comme distance plutot qu'effet dub ;
- silence ou trou comme tension ;
- queue de gong placee en profondeur ;
- sub respirant ;
- retour de queue sur contretemps.

Conflits :

- espace qui noie la precision ;
- sub boueux ;
- confort qui affadit ;
- profondeur qui retire l'impact ;
- connotation dub/reggae.

Consequences techniques probables :

- besoin de regler plan, profondeur, largeur et queue comme fonctions ;
- besoin de relation densite / espace ;
- besoin de controler le grave dans les reverbs et halos ;
- besoin de verifier la lisibilite corporelle quand l'espace augmente ;
- probable usage de retours, delays et reverbs conditionnels, pas permanents.

Points a preciser :

- niveau de confort sonore souhaite en club ;
- jusqu'ou le vide peut devenir pression principale ;
- difference entre espace Vesperare et ambient.

### CE-06 - Jazz comme tension, voicing et finesse

Maturite actuelle : moyenne-fragile ; potentiel clair mais risque de flou harmonique ou cliche.

Contexte d'inspiration :

- jazz comme methode de tension, pas style reconnaissable ;
- champs harmoniques ;
- voicings ;
- ponctuation ;
- finesse rythmique ;
- resolution retardee.

Phenomenes retenus :

- harmonie comme matiere ;
- tension diffuse ;
- micro-instabilite ;
- voicings distribues ;
- accents repondus ;
- cadence evitee.

Fonction Vesperare :

Donner de la subtilite harmonique, spectrale et rythmique sans importer accords jazz, swing ou grille.

Parametres musicaux a caracteriser :

- centre harmonique ou spectral ;
- degre de tension ;
- type de tension : partiels, formants, micro-intervalles, cluster doux ;
- distribution spectrale ;
- densite de partiels ;
- temps avant resolution ;
- type de resolution : retardee, deviee, absente, microtonale ;
- relation rythme / harmonie ;
- ponctuation.

Objets generatifs probables :

- voicing de partiels entre gong, voix, didgeridoo ;
- ponctuation rythmico-spectrale ;
- tension suspendue sans accord reconnaissable ;
- micro-instabilite dans un halo ;
- champ de partiels comme couleur.

Conflits :

- accords trop reconnaissables ;
- intellectualisation ;
- perte de corps ;
- beaute decorative ;
- humanize aleatoire pris pour finesse ;
- modalite trop identifiable.

Consequences techniques probables :

- besoin d'un mode "harmonie comme matiere" prioritaire ;
- besoin de centres spectraux et relations de partiels ;
- besoin de regler tension / resolution sans grille harmonique standard ;
- probable gestion de pitch large, partiels et formants, mais non comme theorie autonome.

Points a preciser :

- exemples sonores de tensions que tu appelles jazz sans vouloir entendre jazz ;
- part acceptable de progression harmonique explicite ;
- relation entre beaute harmonique et pression corporelle.

### CE-07 - Trance comme suspension, ouverture et peak naturalise

Maturite actuelle : moyenne ; les procedes sont identifies, la limite de cliche doit etre testee.

Contexte d'inspiration :

- trance comme reservoir de build, breakdown, expansion, peak ;
- pas supersaw ;
- pas riser EDM ;
- pas euphorie prefabriquee ;
- pas vocal trance comme chanson.

Phenomenes retenus :

- attente longue ;
- ouverture spatiale ;
- expansion spectrale ;
- peak sans brutalite ;
- fondation fantome ;
- halo harmonique ;
- respiration de matiere.

Fonction Vesperare :

Permettre des trajectoires longues vers ouverture ou sommet, sans utiliser les timbres trance reconnaissables.

Parametres musicaux a caracteriser :

- type de suspension ;
- axe d'expansion : densite, spectre, espace, harmonie, rythme ;
- duree de build ;
- presence de fondation fantome ;
- ouverture spectrale ;
- ouverture spatiale ;
- tension harmonique ;
- type de peak : matiere, espace, corps, resolution, impact ;
- degre de brillance ;
- risque euphorique prefabrique.

Objets generatifs probables :

- halo vocal qui s'ouvre ;
- reverb hachee physiquement ;
- riser de souffle ou metal frotte ;
- roll de peaux naturalise ;
- choeur spectral ;
- build par densification de micro-couches ;
- peak de battements microtonaux.

Conflits :

- build previsible ;
- peak EDM ;
- brillance trop electronique ;
- expansion sans corps ;
- halo decoratif ;
- euphorie generique.

Consequences techniques probables :

- besoin de trajectoires longues declarables ;
- besoin de differencier expansion et simple augmentation ;
- besoin d'un controle de brillance et halo ;
- besoin de conditions de peak et de sortie ;
- probable modulation lente de densite, spectre, espace et tension.

Points a preciser :

- durees de build que tu acceptes ;
- forme de peak la plus compatible Vesperare ;
- niveau d'emotion euphorique autorise sans devenir trance cliche.

### CE-08 - Acid comme ligne vivante naturalisee

Maturite actuelle : moyenne ; la fonction est claire, le seuil de reconnaissance acid reste fragile.

Contexte d'inspiration :

- acid comme ligne vivante, pas TB-303 ;
- resonance ;
- torsion ;
- glissement ;
- accent ;
- hypnose par timbre.

Phenomenes retenus :

- ligne qui parle ;
- ouverture/fermeture ;
- pression de matiere ;
- glissement de formants ou partiels ;
- rebond spectral ;
- acidite dosee.

Fonction Vesperare :

Permettre une melodie de timbre ou de matiere, eventuellement reconnaissable comme motif, sans importer le son acid standard.

Parametres musicaux a caracteriser :

- longueur de ligne ;
- registre ;
- degre de resonance ;
- degre de torsion ;
- glissement ;
- accent ;
- ouverture/fermeture ;
- vitesse de mutation timbrale ;
- microtonalite ;
- autonomie de la ligne ;
- relation au grave.

Objets generatifs probables :

- ligne courte de matiere ;
- glissement de resonance ;
- ligne de formant dans didgeridoo ;
- metal qui se tord ;
- feedback organique ;
- reverb filtree qui parle ;
- basse-motif vivante.

Conflits :

- imitation 303 ;
- squelch reconnaissable ;
- pattern acid cliche ;
- filtre comme gadget ;
- ligne trop autonome ;
- acidite qui rompt la plausibilite acoustique.

Consequences techniques probables :

- besoin de separer notes, timbre, resonance et geste ;
- besoin de contraindre la ligne par source imaginee ;
- besoin d'un seuil de reconnaissance acid ;
- probable modulation de formants/resonances plutot que synthese acid classique.

Points a preciser :

- jusqu'ou une ligne peut etre melodiquement reconnaissable ;
- quel degre d'acidite est desirable ;
- quand la ligne peut passer au premier plan.

### CE-09 - Nature / acoustique / instruments comme matiere fonctionnelle

Maturite actuelle : solide comme garde-fou, a construire comme corpus.

Contexte d'inspiration :

- supports naturels, acoustiques, instrumentaux ou synthetises comme physiques ;
- pas illustration de nature ;
- pas field recording decoratif ;
- pas dogme acoustique.

Phenomenes retenus :

- corps ;
- gestes ;
- objets ;
- matieres ;
- complexite intelligible ;
- organicite ;
- ambiguity sourcee.

Fonction Vesperare :

Fournir une base de sources plausibles capables de porter les fonctions techno, spectrales, rythmiques, melodiques et transgressives.

Parametres musicaux a caracteriser :

- famille de source : souffle, voix, peau, bois, pierre, metal, gong, bol, cloche, didgeridoo, friction, eau/grain, insecte/oiseau, cavite ;
- source imaginee ;
- matiere ;
- geste ;
- attaque ;
- queue ;
- registre ;
- stabilite ;
- rugosite ;
- partiels ;
- fonction ;
- risque decoratif.

Objets generatifs probables :

- frottement pulse ;
- souffle cyclique ;
- battement de partiels ;
- rebond d'espace ;
- cri comme accent ;
- respiration comme sidechain naturalise ;
- insecte comme micro-hat seulement si fonctionnel.

Conflits :

- decor naturel ;
- manque de puissance ;
- exotisme involontaire ;
- reverence acoustique ;
- absence de fonction ;
- confusion de sources.

Consequences techniques probables :

- besoin d'un catalogue par fonction, pas par image ;
- besoin de taguer les sources par attaque, queue, registre, PA, fonction ;
- besoin de verifier la puissance possible en club ;
- probable combinaison de samples, traitements et generation, mais sous contraintes de source imaginee.

Points a preciser :

- sources naturelles que tu trouves trop illustratives ;
- sources acoustiques qui peuvent etre frontales ;
- limite entre naturel plausible et decor.

### CE-10 - Voix comme presence, signal, matiere et transgression

Maturite actuelle : moyenne ; besoin de decisions sur intelligibilite et role du sens.

Contexte d'inspiration :

- voix comme instrument ;
- voix comme effet ;
- voix brute ;
- cri ;
- souffle ;
- fragment ;
- presence humaine.

Phenomenes retenus :

- signal ;
- presence ;
- rugosite ;
- tension ;
- hook minimal ;
- souffle ;
- formants ;
- transgression ;
- texture.

Fonction Vesperare :

Permettre une voix qui peut etre rythme, matiere, forme, presence ou crise, sans devenir chanson par defaut.

Parametres musicaux a caracteriser :

- type vocal : souffle, consonne, syllabe, voyelle, cri, murmure, appel, fragment ;
- intelligibilite ;
- degre de sens verbal ;
- formant dominant ;
- souffle ;
- rugosite ;
- pitch clair ou non ;
- longueur ;
- role rythmique ;
- role harmonique ;
- role formel ;
- niveau de transgression.

Objets generatifs probables :

- syllabe-signal ;
- consonne comme micro-pulse ;
- souffle comme halo ;
- cri comme drop ou rupture ;
- voyelle comme centre spectral ;
- choeur spectral ;
- voix etiree en halo ;
- fragment vocal comme hook minimal.

Conflits :

- chanson non voulue ;
- melodrame ;
- auto-tune reconnaissable ;
- sens verbal trop dominant ;
- gimmick vocal ;
- masquage du didgeridoo.

Consequences techniques probables :

- besoin de declarer le role de la voix avant traitement ;
- besoin de controle d'intelligibilite ;
- besoin de controle de formants et de registre ;
- besoin de relation avec le didgeridoo si les deux occupent souffle/formants/grave ;
- probable traitements de souffle, formant, granulation plausible et spatialisation, a valider.

Points a preciser :

- niveau d'intelligibilite acceptable ;
- texte possible ou non ;
- difference entre voix nue desirable et voix trop theatrale.

### CE-11 - Microtonalite / harmoniques / partiels / pitch large

Maturite actuelle : moyenne-fragile ; centrale pour la couleur, pas encore stabilisee techniquement.

Contexte d'inspiration :

- microtonalite comme partie du projet ;
- pas demonstration de temperament ;
- pas gamme exotique plaquee ;
- pas abstraction froide.

Phenomenes retenus :

- battements ;
- partiels ;
- centres spectraux ;
- formants ;
- tensions ;
- resolutions ;
- lien grave/halo ;
- realisme acoustique ;
- expressivite.

Fonction Vesperare :

Organiser tension, couleur, naturalisation et resolution par des hauteurs larges, pas seulement par notes temperees.

Parametres musicaux a caracteriser :

- type de hauteur : tempere, spectral, microtonal libre, modal, bruite avec centre, derive de source ;
- centre spectral ;
- source des partiels ;
- degre microtonal ;
- vitesse de battement ;
- tension ;
- resolution ;
- relation au grave ;
- relation au halo ;
- relation au live ;
- perceptibilite.

Objets generatifs probables :

- battement sub/halo ;
- champ de partiels ;
- halo accorde/desaccorde ;
- resolution microtonale ;
- ligne non temperee ;
- gong expose ;
- voix instable ;
- didgeridoo comme guide de centre.

Conflits :

- outil ingerable ;
- perte de corps ;
- theorie perceptible avant musique ;
- incompatibilite avec motifs simples ;
- masquage en club ;
- dissonance froide.

Consequences techniques probables :

- besoin de distinguer microtonalite par defaut et moment structurel ;
- besoin de suivre ou declarer des centres spectraux ;
- besoin de relations de partiels plutot que gammes seulement ;
- besoin de tests d'audibilite en densite ;
- probable usage de pitch tracking, analyse spectrale ou tables de centres, mais a determiner plus tard.

Points a preciser :

- combien la microtonalite doit etre audible dans les scenes courantes ;
- types de resolution qui te plaisent ;
- relation acceptable avec motifs melodiques reconnaissables.

### CE-12 - Didgeridoo comme presence libre et accommodable

Maturite actuelle : centrale mais techniquement incomplete tant que l'instrument reel n'est pas mesure et teste.

Contexte d'inspiration :

- setup minimum : PC + didgeridoo ;
- le didgeridoo doit rester libre ;
- pas role fixe ;
- pas basse automatique ;
- pas controleur obligatoire ;
- pas drone impose.

Phenomenes retenus :

- corps ;
- souffle ;
- bourdon ;
- partiels ;
- formants ;
- rugosite ;
- rythme de langue/gorge ;
- voix interne ;
- pression grave ;
- presence physique.

Fonction Vesperare :

Permettre au didgeridoo d'exister librement, tout en offrant des modes ou le systeme s'adapte, dialogue, protege, transforme ou fonctionnalise le son.

Parametres musicaux a caracteriser :

- energie ;
- charge grave ;
- stabilite du bourdon ;
- richesse harmonique ;
- formants ;
- souffle ;
- rugosite ;
- densite d'attaques ;
- vocalisation ;
- continuite ;
- saillance ;
- mode DID ;
- relation au sub ;
- relation au halo ;
- relation aux motifs generes.

Modes fonctionnels possibles :

- DID-0 libre ;
- DID-1 protege ;
- DID-2 basse adaptee ;
- DID-3 grave partage ;
- DID-4 guide harmonique ;
- DID-5 source traitee ;
- DID-6 fonctionnalise ;
- DID-7 perturbateur ;
- DID-8 hybride.

Objets generatifs probables autour du didgeridoo :

- grave genere qui se retire ;
- halo guide par partiels ;
- micro-pulse repondant aux attaques ;
- basse alternee avec bourdon ;
- ligne de formant naturalisee ;
- traitement qui transforme souffle en pulse ;
- scene ou didgeridoo perturbe le cadre.

Conflits :

- didgeridoo masque par sub ;
- didgeridoo rigidifie en basse ;
- didgeridoo trop protege donc pression disparait ;
- traitement gadget ;
- liberte totale mais systeme incoherent ;
- connotation ethno.

Consequences techniques probables :

- besoin d'une analyse ou declaration de charge grave ;
- besoin d'un partage de grave entre didgeridoo, sub, gong et basses generees ;
- besoin de detecter ou declarer attaques, souffle, formants, densite ;
- besoin de modes d'accommodation non obligatoires ;
- probable analyse audio live plus tard, mais le besoin musical doit rester prioritaire.

Points a preciser :

- plage reelle du didgeridoo utilise ;
- type de micro/prise de son ;
- niveau de liberte souhaite selon scenes ;
- quand le systeme doit s'adapter automatiquement ou seulement proposer.

### CE-13 - Gong / bols / cloches / metaux resonants

Maturite actuelle : moyenne ; potentiel clair, besoin de controle des queues et connotations.

Contexte d'inspiration :

- gong, bols, cloches, metaux comme impact, halo, partiels, rugissement, suspension, peak ;
- pas new age ;
- pas rituel decoratif ;
- pas cymbale ambient interminable.

Phenomenes retenus :

- impact ;
- queue ;
- champ de partiels ;
- inharmonicite ;
- battements ;
- rugissement ;
- signal formel ;
- resolution.

Fonction Vesperare :

Utiliser les metaux comme sources d'impact, halo, tension, microtonalite, drop, peak ou scene spectrale.

Parametres musicaux a caracteriser :

- type de metal ;
- mode de jeu imagine ;
- attaque ;
- longueur de queue ;
- partiels dominants ;
- rugosite ;
- grave/aigu ;
- densite spectrale ;
- fonction : impact, halo, signal, rugissement, resolution ;
- droit au halo long ;
- risque decoratif.

Objets generatifs probables :

- gong court comme impact ;
- gong grave comme drop ;
- queue coupee comme memoire ;
- bol comme centre spectral ;
- cloche desaccordee comme micro-pulse ;
- metal qui se tord comme acid naturalise ;
- rugissement de retour.

Conflits :

- queues trop longues ;
- masquage ;
- perte du rythme ;
- connotation new age/rituelle ;
- metal agressif gratuit ;
- gong qui remplace toute composition.

Consequences techniques probables :

- besoin de controle strict des queues ;
- besoin de separation attaque / halo ;
- besoin de detection ou programmation des moments ou le halo devient principal ;
- besoin de filtrage de grave si sub/didgeridoo deja actifs ;
- probable usage de samples/traitements avec gates, enveloppes, ducking et resonances, plus tard.

Points a preciser :

- quels metaux reels seront disponibles ;
- quelle part de gong expose est desirable ;
- tolerance aux queues longues.

### CE-14 - Tambours / peaux / percussions corporelles

Maturite actuelle : moyenne ; fonctions claires, besoin de corpus et garde-fous stylistiques.

Contexte d'inspiration :

- tambours et peaux comme impact, articulation, pulse, transition, build, densite ;
- pas tribal ;
- pas drum circle ;
- pas loop world ;
- pas snare roll EDM reproduit.

Phenomenes retenus :

- attaque physique ;
- pression de peau ;
- profondeur ;
- grain ;
- variation de main ou baguette ;
- corps immediat ;
- remplacement fonctionnel de kick/hat/snare/roll.

Fonction Vesperare :

Porter impact, micro-pulse, articulation, build et polytexture avec des supports corporels non folkloriques.

Parametres musicaux a caracteriser :

- type de peau ;
- profondeur ;
- attaque ;
- queue ;
- densite ;
- role techno ;
- degre d'interlocking ;
- variation de timbre ;
- registre ;
- accent principal ;
- relation au didgeridoo ;
- risque tribal/world.

Objets generatifs probables :

- impact-fondation de peau ;
- micro-contact comme hat naturalise ;
- roll de build naturalise ;
- pattern interlocke ;
- frappe rare ;
- retrait brutal ;
- reponse au didgeridoo.

Conflits :

- connotation tribale ;
- medium surcharge ;
- percussion qui domine le projet ;
- pattern trop humain sans cadre ;
- perte de subtilite ;
- demonstration de percussion.

Consequences techniques probables :

- besoin de taguer peaux par role techno, pas par instrument ;
- besoin de controles densite/attaque/queue ;
- besoin de limiter les patterns style-identifiables ;
- besoin de relation avec polytexture et didgeridoo ;
- probable generation par couches de roles avec variations d'attaque, pas loops fixes.

Points a preciser :

- tambours reels disponibles ou seulement sources generatives ;
- degre de frappe humaine souhaite ;
- limites de connotation percussive traditionnelle.

## 3. Dimensions transversales a appliquer a chaque fiche

### CT-01 - Contour sculpte

Fonction :

Rendre chaque objet lisible sans secheresse froide.

Variables critiques :

- attaque ;
- corps ;
- queue ;
- halo ;
- silence autour ;
- place spectrale ;
- role.

Consequences probables :

- enveloppes et durees devront etre controlees ;
- halo et queue devront pouvoir baisser si densite monte ;
- un son long ne doit pas porter une fonction d'impact sans traitement ;
- un son court peut recevoir un halo selectif.

### CT-02 - Intensite sans agression

Fonction :

Produire intensite par pression, rarete, espace, retour, rugissement, microtonalite, contraste ou densite maitrisee, pas par volume brut.

Variables critiques :

- source de l'intensite ;
- fatigue potentielle ;
- confort relatif ;
- niveau de transgression ;
- preparation ;
- sortie.

Consequences probables :

- besoin de separer intensite corporelle, spectrale, spatiale, rythmique et harmonique ;
- besoin d'un controle de fatigue et de brillance ;
- besoin de preparer et sortir les pics.

### CT-03 - Espace / halo / pression spectrale

Fonction :

L'espace est actif, le halo a une fonction, la pression spectrale ne doit pas flouter le rythme.

Variables critiques :

- qui a droit au halo ;
- quantite ;
- type ;
- zone spectrale ;
- duree ;
- relation a l'attaque ;
- relation au grave ;
- moment de baisse ;
- moment ou le halo devient principal.

Consequences probables :

- reverbs/delays/halos devront etre conditionnels ;
- le grave des halos devra etre surveille ;
- la densite devra influencer queue et espace ;
- le live devra pouvoir reduire le halo generatif.

### CT-04 - Scene auditive / objets / textures

Fonction :

Organiser ce qui ressort, fusionne, se separe, devient objet ou texture.

Variables critiques :

- statut perceptif ;
- plan ;
- separation ;
- fusion ;
- saillance ;
- morphologie temporelle ;
- risque de masquage ;
- condition de retrait.

Consequences probables :

- chaque objet genere devra declarer son plan et son statut ;
- il faudra eviter que tout soit en avant-plan ;
- les fonds devront pouvoir se retirer ;
- les textures devront permettre l'emergence d'objets.

### CT-05 - Monopoles perceptifs

Fonction :

Eviter les conflits perceptifs quand plusieurs sources veulent porter le meme role dominant.

Monopoles a surveiller :

- sub : une source principale de vrai grave ;
- articulation : une couche directrice ;
- brillant continu : pas de tapis aigu permanent ;
- halo long : queues longues limitees ;
- transgression : une crise principale a la fois.

Consequences probables :

- besoin d'arbitrages automatiques ou declaratifs entre sources ;
- besoin de priorites selon scene ;
- besoin de retrait, alternance ou partage.

### CT-06 - Anti-glissement

Fonction :

Empecher les mauvaises traductions :

- intention -> parametre technique ;
- instrument -> input audio ;
- techno organique -> collection d'effets ;
- complexite -> accumulation ;
- naturalisation -> decor ;
- didgeridoo libre -> didgeridoo ignore ;
- transgression -> agression ;
- microtonalite -> theorie ;
- melodie -> lead banal ;
- espace -> ambient.

Consequence probable :

Chaque choix technique futur devra etre justifie par une fonction musicale situee avant d'etre accepte.

## 4. Conflits principaux a caracteriser plus finement

### CF-01 - Didgeridoo vs sub

Probleme :

Le didgeridoo, le sub genere, le gong grave et les basses naturalisees peuvent occuper le meme espace corporel.

Besoin de precision :

- qui porte le vrai grave ;
- qui porte les partiels ;
- qui se retire ;
- qui devient halo ;
- quand l'alternance remplace la superposition.

### CF-02 - Halo vs pression rythmique

Probleme :

Le halo peut soutenir la suspension mais effacer les attaques et la lisibilite corporelle.

Besoin de precision :

- densite maximale avant reduction de halo ;
- droit au halo selon role ;
- queue longue ou queue courte ;
- halo comme fonction principale ou secondaire.

### CF-03 - Melodie vs abstraction

Probleme :

Vesperare n'est pas anti-melodique, mais la melodie peut devenir lead banal.

Besoin de precision :

- origine de la melodie : grave, voix, partiels, timbre, accent ;
- niveau de reconnaissance acceptable ;
- duree d'exposition ;
- relation a la matiere.

### CF-04 - Acid naturalise vs electronique reconnaissable

Probleme :

La ligne vivante doit pouvoir etre presente sans sonner TB-303 ou synth lead.

Besoin de precision :

- seuil de squelch ;
- type de resonance acceptable ;
- role de la ligne ;
- source imaginee ;
- autonomie autorisee.

### CF-05 - Techno suspendue vs perte du corps

Probleme :

La suspension peut etre tres longue, mais elle peut devenir ambient decoratif.

Besoin de precision :

- fil de memoire maintenu ;
- pression active ;
- condition de retour ;
- signal de direction ;
- role du silence.

### CF-06 - Polytexture vs accumulation

Probleme :

Plus de couches ne signifie pas plus de richesse.

Besoin de precision :

- role de chaque couche ;
- couche directrice ;
- densite medium ;
- retrait d'une couche ;
- limite de fronts simultanes.

### CF-07 - Transgression vs agression

Probleme :

Masse, rugissement, cri, saturation, nudite sonore, espace immense et dissonance sont acceptes, mais pas comme violence gratuite.

Besoin de precision :

- transgression principale ;
- preparation ;
- duree ;
- consequence ;
- sortie ;
- confort restant.

## 5. Etat de caracterisation par element

| Element | Besoin musical | Parametres | Generation | Conflits | Technique future |
|---|---|---|---|---|---|
| Techno | solide | moyen | moyen | solide | a chiffrer |
| Pseudo-acoustique | solide | moyen | moyen | solide | corpus a construire |
| Polytexture | solide | moyen | moyen | solide | limites de couches a tester |
| Dubstep | moyen | moyen | moyen | solide | rarete/drop/sub a regler |
| Dub / sound system | moyen | moyen | moyen | moyen | seuils grave/espace a tester |
| Jazz | moyen | fragile | fragile | moyen | exemples a preciser |
| Trance | moyen | moyen | moyen | moyen | seuil de cliche a tester |
| Acid | moyen | moyen | moyen | solide | seuil reconnaissance acid |
| Nature/acoustique | solide | moyen | moyen | solide | corpus par fonctions |
| Voix | moyen | moyen | moyen | moyen | intelligibilite a arbitrer |
| Microtonalite | solide | fragile | moyen | solide | regime technique a definir |
| Didgeridoo | solide | moyen | moyen | solide | tests instrument reels |
| Gong/metaux | moyen | moyen | moyen | moyen | queues/partiels a tester |
| Tambours/peaux | moyen | moyen | moyen | moyen | corpus et connotation |

Lecture :

- "solide" : assez clair pour servir de garde-fou de conception ;
- "moyen" : utilisable, mais demande des exemples ou tests ;
- "fragile" : risque de mauvaise traduction si on passe trop vite en technique.

## 6. Besoins de precision avant architecture technique

### 6.1. A preciser par ecoute ou exemples

- seuil entre son pseudo-acoustique plausible et son electronique reconnaissable ;
- exemples de jazz comme tension sans accord jazz ;
- exemples de trance naturalisee acceptable ;
- exemples de ligne acid naturalisee acceptable ;
- exemples de voix nue, voix signal, voix transgressive ;
- exemples de microtonalite belle, tendue, resolutive, trop theorique.

### 6.2. A preciser par tests instrumentaux

- registre reel et projection du didgeridoo ;
- charge grave du didgeridoo dans un systeme club ;
- compatibilite didgeridoo / sub / gong grave ;
- temps de queue de gongs, bols et cloches ;
- types de tambours ou peaux disponibles ;
- niveaux de masquage entre voix, didgeridoo et halo.

### 6.3. A preciser plus tard en performance live

- quels controles doivent etre permanents ;
- quels controles doivent etre contextuels ;
- ce qui doit etre automatique ;
- ce qui doit rester decide par Yohan ;
- latence acceptable ;
- modes de fail-safe ;
- organisation en scenes, etats et trajectoires.

## 7. Decision v0.1

On a maintenant assez de detail pour caracteriser les elements au niveau musical, perceptif et generatif.

On n'a pas encore assez de detail pour figer :

- des modules Max for Live ;
- des routings de sidechain ;
- des seuils d'analyse ;
- des mappings ;
- des macros live ;
- des banques sonores definitives.

La prochaine etape utile n'est pas encore l'architecture complete.

La prochaine etape utile est une verification de couverture :

```text
MATRICE DETAILLEE -> CARACTERISATION DETAILLEE -> BESOINS v0.3
```

But :

- verifier qu'aucun element d'inspiration n'a disparu ;
- verifier que chaque element a des parametres concrets ;
- isoler les zones encore trop fragiles ;
- preparer ensuite les premieres hypotheses techniques sans s'eparpiller.
