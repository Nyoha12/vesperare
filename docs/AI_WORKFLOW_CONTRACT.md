# Contrat de workflow IA Vesperare

Statut : contrat de roles et d'orchestration pour la reprise post-harness Max <-> Codex.
Date : 2026-07-01.
Perimetre : methode de travail ; usage de Max seulement si le contexte est explicite et borne ; sans validation audio, DSP ou musicale.

## Sources consultees

Fait :

- `README.md`
- `docs/00_INDEX_METHODE_DECISIONS.md`
- `docs/42_CONTROLES_AMPLITUDES_LIMITES_OVERRIDE.md`
- `docs/45_REPRISE_DEPUIS_FICHE_MESURES_INSTRUMENTS.md`
- `docs/modules/18_CONTEXTUAL_CONTROL_ROUTER_AMPLITUDES_LIMITES_OVERRIDE_ADDENDUM.md`
- `docs/assets/00_ASSETS_INDEX.md`
- `docs/assets/15_DONNEES_INSTRUMENTALES_MANQUANTES_PRIORITAIRES.md`
- `docs/assets/16_ACOUSTICARCHIVE_MAPPING_DONNEES_VESPERARE.md`
- `docs/reprise/00_INDEX.md`
- `docs/reprise/02_PROJECT_STATE.md`
- `docs/reprise/05_NEXT_ACTIONS.md`
- `docs/reprise/39_TRACE_STABILISATION_RUNTIME_HARNESS_MAX_CODEX.md`
- `docs/START_HERE_VESPERARE.md`
- `docs/reprise/27_TRACE_CREATION_PREMIER_PATCH_MAX_MINIMAL_MIN_DID_PC.md`
- `docs/reprise/28_TRACE_TEST_CHARGEMENT_PATCH_MAX_MINIMAL_MIN_DID_PC.md`
- `tools/vesperare-harness/README.md`
- `projects/max/_harness/README.md`
- `reprise/INDEX_ACTIF_VESPERARE_CONCEPTION.md`
- `reprise/BESOINS_STYLISTIQUES_v0_4.md`
- `reprise/BESOINS_GENERATION_v0_4.md`
- `projects/max/min-did-pc-minimal/min-did-pc-minimal-01.maxpat`

## 1. Principe general

Decision :

Les outils IA servent a instruire, verifier, comparer, documenter et preparer des decisions. Ils ne remplacent pas l'intention de Yohan, le jugement musical, la decision artistique ni la validation finale.

Decision :

Le workflow doit rester source-of-truth d'abord. Avant de creer une sortie, l'agent doit chercher quel document existant accueille deja la question.

Inference :

Les documents de pilotage servent maintenant a reprendre depuis l'etat post-harness sans transformer une ancienne regle de phase en interdiction generale.

Decision :

Une regle de workflow vaut dans le contexte qui l'a justifiee. Avant de l'appliquer comme interdiction generale, l'agent doit verifier les traces recentes et l'objectif de l'action.

Decision :

Les regles restent contraignantes, mais leur contexte d'application doit etre verifie avant de les etendre a une nouvelle phase.

Decision :

Des permissions techniques larges ne changent pas le perimetre projet. Meme avec acces complet, Codex doit respecter les interdictions du prompt et des fichiers de pilotage.

## 2. Role de GPT

Role :

- clarifier les questions ;
- extraire les faits depuis corpus borne ;
- distinguer fait / inference / decision / recommandation ;
- proposer des syntheses de risques ;
- aider a decouper les prompts ;
- preparer des decisions sans les prendre a la place de Yohan.

Limites :

- ne valide pas l'audio ;
- ne valide pas la musicalite ;
- ne choisit pas un objet Max final ;
- ne transforme pas un concept musical en categorie autonome sans contexte ;
- ne remplace pas la methode deja documentee.

## 3. Role de Codex CLI

Role :

- modifier le repo dans le perimetre autorise ;
- verifier la proprete Git ;
- lire les fichiers sources ;
- verifier qu'un JSON est parseable ;
- lire logs, traces et fichiers JSONL futurs ;
- produire des docs ou patches textuels controles ;
- lancer des checks non audio comme `git diff --check` ;
- lancer un smoke Max/Codex borne quand le contexte le justifie explicitement ;
- preparer commits, branches, PR et merges lorsque c'est demande.

Decision :

Max peut etre lance quand le contexte le justifie explicitement, notamment via `Invoke-VesperareMaxHarnessSmoke.ps1`, pour observabilite technique bornee.

Limites :

- ne lance pas Ableton ;
- ne valide pas l'audio ;
- ne valide pas le DSP ;
- ne valide pas la musicalite ;
- ne transforme pas un smoke Max/Codex en validation audio, DSP ou musicale ;
- ne remplace pas un chargement Max reel par une lecture JSON ;
- ne doit pas modifier `reprise/` sans demande explicite.

## 4. Role de Codex Computer Use

Role possible plus tard :

- smoke test GUI ponctuel ;
- verifier qu'une fenetre Max s'ouvre ;
- relever une capture ou un etat visuel simple si le harness ne suffit pas.

Decision :

Codex Computer Use n'est pas le moyen principal de validation.

Limites :

- ne doit pas remplacer les logs machine-lisibles ;
- ne doit pas servir de lecture visuelle Max principale ;
- ne valide pas la musicalite ;
- ne doit intervenir qu'apres une strategie de harness ou pour un point GUI borne.

## 5. Role de Pro etendu

Decision :

Pro etendu est reserve aux gates strategiques.

Usages :

- analyse contradictoire methode / musique / technique / agency ;
- revue d'une decision difficile a inverser ;
- comparaison de strategies de harness si elles changent la trajectoire du projet ;
- preparation de risques avant une phase de test humain.

Limites :

- pas d'ecriture finale par multi-agent ;
- pas de validation musicale ;
- pas de decision artistique finale ;
- pas de transformation d'une synthese en preuve.

## 6. Role de l'humain

Yohan garde :

- jugement musical ;
- validation finale ;
- correction d'intention ;
- decision artistique ;
- apport de matiere reelle ;
- refus d'une methode trop lourde ;
- choix expressifs comme pression, retour au corps, densite, tension, franchissement de limite, maintien au bord et override.

Decision :

Le programme ne doit pas renvoyer a Yohan les questions qu'il doit instruire lui-meme par lecture, trace ou comparaison.

## 7. Regles de decoupage des prompts

Chaque prompt utile doit preciser :

- question centrale ;
- corpus autorise ;
- corpus interdit ;
- sortie attendue ;
- interdictions ;
- conditions d'arret ;
- decision humaine attendue si elle existe.

Recommandation :

Preferer un prompt court et borne a une demande globale. Si la question touche plusieurs cadres en tension, separer analyse methode, analyse musicale, analyse technique et analyse agency.

## 8. Regles multi-agent

Decision :

Le multi-agent sert seulement aux analyses independantes.

Autorise :

- comparaison d'options ;
- extraction depuis corpus borne ;
- critique de risques ;
- harmonisation de methode ;
- synthese d'accords et desaccords.

Interdit :

- ecriture finale par agents multiples ;
- patch ;
- mapping ;
- prototype ;
- spec globale non demandee ;
- decision musicale finale ;
- modification directe de `main`.

Decision :

L'ecriture finale reste la responsabilite de l'agent principal.

## 9. Interdictions de workflow

Interdictions :

- ne pas modifier `main` directement ;
- ne pas modifier `reprise/` sans demande explicite ;
- ne pas creer de patch Max dans la phase actuelle ;
- ne pas modifier le `.maxpat` existant ;
- ne pas lancer Max sans contexte explicite, objectif borne et trace recente le justifiant ;
- ne pas lancer Ableton ;
- ne pas produire UI ;
- ne pas produire mapping ;
- ne pas produire asset ;
- ne pas produire sample bank ;
- ne pas fixer de seuil numerique ;
- ne pas choisir d'objet Max final ;
- ne pas definir de routage final ;
- ne pas produire de nouvel audit ;
- ne pas valider niveau 6 ;
- ne pas transformer lecture JSON en chargement Max ;
- ne pas transformer un smoke Max/Codex en validation audio, DSP ou musicale ;
- ne pas transformer logs futurs en jugement musical.

## 10. Definition de conformite pour la phase actuelle

Conforme :

- creer des documents de pilotage ;
- utiliser le smoke Max/Codex borne si une action technique le justifie explicitement ;
- mettre a jour la prochaine action ;
- verifier JSON sans Max ;
- verifier diff et whitespace ;
- publier par PR vers `main`.

Non conforme :

- lancer Max dans une PR documentaire sans besoin technique ;
- continuer par lecture visuelle Max ;
- demander un test humain precoce ;
- etendre le patch minimal ;
- faire entrer une famille lourde dans `P0/P1`, `direct/safe`, protection ou `MIN-DID-PC` ;
- faire du harness une condition musicale.
