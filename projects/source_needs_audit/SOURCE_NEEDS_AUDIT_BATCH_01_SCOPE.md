# SOURCE_NEEDS_AUDIT_BATCH_01_SCOPE

## Statut

Définition du scope du premier batch futur d’audit `source_needs`.

Ce document n’est pas encore l’audit.

Il sélectionne un petit lot à lire ensuite.

---

# 1. Règle de sélection

Le premier batch doit porter sur les source_needs les plus directement liés au risque de remplacement ou masquage du live.

Critère :

```text
priorité aux sources qui touchent le live central, le grave/corps, la pression ou la pulsation.
```

---

# 2. Source_needs sélectionnés pour Batch 01

À auditer ensuite :

```text
docs/assets/source_needs/SOURCE_NEED_LIVE_DIDGERIDOO_PRESSURE_FORMANTS.md
docs/assets/source_needs/SOURCE_NEED_LIVE_JAW_HARPS_FORMANT_MICROPULSE.md
docs/assets/source_needs/SOURCE_NEED_SUB_PRESSURE_ENGINE.md
```

## Pourquoi ces trois fichiers

Ils touchent immédiatement :

- les sources live fixes centrales ;
- le corps / pression ;
- le risque de masquage du live par le sub ;
- la relation entre geste acoustique et moteur électronique ;
- le risque de transformer une fonction musicale en engine trop prescriptif.

---

# 3. Source_needs explicitement exclus de Batch 01

À ne pas auditer encore :

```text
SOURCE_NEED_OPTIONAL_GONG_PRESENCE_ABSENCE_STRATEGY.md
SOURCE_NEED_OPTIONAL_FRAME_DRUM_PRESENCE_ABSENCE_STRATEGY.md
SOURCE_NEED_MINIMAL_VOICE_IF_NOT_LIVE.md
SOURCE_NEED_MINIMAL_FIELD_RECORDINGS_IF_EXPOSED.md
SOURCE_NEED_HARMONIC_DRONE_SHRUTI_ORGAN.md
SOURCE_NEED_BOWED_STRING_TORSION_FIELD.md
SOURCE_NEED_TUNED_METAL_PARTIALS_BELLS_VIBRAPHONE.md
```

Raison : ces sources peuvent être importantes, mais elles sont moins directement prioritaires que le noyau live + pression.

---

# 4. Format de l’audit à venir

Le prochain fichier devra être :

```text
projects/source_needs_audit/SOURCE_NEEDS_AUDIT_BATCH_01.md
```

Il devra auditer seulement les trois fichiers sélectionnés.

Chaque source_need devra être classé avec :

```text
garder
réviser
suspendre
tester plus tard
abandonner
```

---

# 5. Garde-fous

Ne pas :

- auditer tout le dossier source_needs ;
- créer un patch ;
- créer un mapping ;
- créer un prototype ;
- écrire SPEC.md ;
- écrire VERIFY.md ;
- modifier main ;
- merger la branche méthode.
