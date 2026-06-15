# CLAIM_REGISTER_V0

## Status

Refined claim register v0.

This is not an audit.

No claim in this file is validated, rejected, or accepted as acquired.

## Purpose

Prepare a clean input for the future acquis-audit phase.

This register transforms central statements from the repository, user intention, and the new AI operating method into auditable claims.

## Rules

- A claim is not true because it is repeated.
- A claim is not true because it is elegant.
- A claim is not true because it appears in README or 00_INDEX.
- A claim is not false because it is unverified.
- This file lists what must be audited later.
- Do not write SPEC.md from this file.
- Do not create VERIFY.md from this file.
- Do not prototype from this file.

## Status values for later audit

- strong acquisition
- provisional acquisition
- active hypothesis
- operational derivative
- practical draft
- compact concept
- suspend
- contradiction / tension

Current status for all claims: unjudged.

---

# A. Project identity claims

| ID | Claim | Type | Source candidate | Initial status | Fragility | Risk if wrong | Next action |
|---|---|---|---|---|---|---|---|
| P01 | Vesperare is a research-creation project. | project identity | README.md; user intention | unjudged | Could hide tension between research, composition, software design, and performance. | Wrong working mode. | Audit. |
| P02 | Vesperare aims to design a live composition/performance system. | project identity | README.md; docs/00_INDEX_METHODE_DECISIONS.md | unjudged | Could imply a finished system too early. | Premature system architecture. | Audit. |
| P03 | Ableton Live / Max for Live is the intended future environment. | technical direction | README.md; docs/02_SPECIFICATION_MAX_FOR_LIVE.md | unjudged | Needs technical validation later. | Wrong platform assumptions. | Audit later. |
| P04 | The project is currently pre-prototype. | workflow phase | README.md; docs/00_INDEX_METHODE_DECISIONS.md | unjudged | Could protect from premature build or block useful reality checks. | Overdocumentation or premature building. | Audit phase. |
| P05 | The repository is a corpus to be mapped and audited, not a truth to continue automatically. | method | AGENTS.md; ai_method/11_APPLYING_TO_EXISTING_PROJECT.md | unjudged | Must be practiced consistently. | AI continues old assumptions. | Keep as method guardrail, then review. |

---

# B. Human / performance intention claims

| ID | Claim | Type | Source candidate | Initial status | Fragility | Risk if wrong | Next action |
|---|---|---|---|---|---|---|---|
| H01 | Yohan's acoustic improvisational musicality is a central strength to preserve. | human / artistic | user note; method context | unjudged | Needs concrete translation into system constraints. | System replaces rather than supports the player. | Audit with user. |
| H02 | The future system should assist live performance rather than compose in place of Yohan. | performance / agency | user note; README; AGENTS.md | unjudged | Needs operational definition. | Loss of human agency. | Audit. |
| H03 | The system should allow intuitive and sensitive creation of electronic music while playing live. | artistic / performance | user note | unjudged | "Intuitive" and "sensitive" need decomposition. | Interface may become technically rich but musically unusable. | Decompose. |
| H04 | The system should valorize what Yohan already does well. | human / design | user note | unjudged | Needs mapping of strengths to controls. | System focuses on weaknesses instead of leverage. | Audit. |
| H05 | The system should reduce cognitive load during live performance. | ergonomics / performance | inferred from user note and method | unjudged | Needs confirmation and criteria. | Too many controls, wrong timing, loss of flow. | Confirm with user. |
| H06 | Interface ergonomics is part of the musical system, not a secondary UI concern. | ergonomics / musical | user note; method inference | unjudged | Needs later validation. | Bad interface destroys musical intention. | Audit. |
| H07 | The system must avoid caricaturing Yohan's musical ideas or influences. | artistic risk | user note | unjudged | Needs examples of caricature. | Generic genre imitation. | Audit with references. |
| H08 | The core problem includes translating acoustic sensitivity into electronic control. | conceptual / technical | user note | unjudged | May be too broad. | Work focuses on sound generation instead of translation. | Decompose. |

---

# C. Stylistic claims

| ID | Claim | Type | Source candidate | Initial status | Fragility | Risk if wrong | Next action |
|---|---|---|---|---|---|---|---|
| S01 | Vesperare aims at a personal genre called techno organique. | stylistic / identity | README.md; docs/00_INDEX_METHODE_DECISIONS.md | unjudged | Could be stable term or over-compressed label. | Future work optimizes a vague label. | Audit. |
| S02 | Techno is the main stylistic influence. | stylistic | README.md; docs/00_INDEX_METHODE_DECISIONS.md | unjudged | Other influences may be equally structurally important. | Techno cliché or over-narrowing. | Audit with style docs. |
| S03 | Techno functions should be preserved rather than techno surface codes. | stylistic / functional | README.md | unjudged | Needs examples. | System imitates genre signs instead of functions. | Audit. |
| S04 | Organic / acoustic / naturalized materials can carry techno functions. | stylistic / material | README.md | unjudged | Needs source-function proof. | Natural sounds become decorative. | Audit. |
| S05 | The project should preserve body. | stylistic function | README.md; docs/00_INDEX | unjudged | "Body" is compact. | Body becomes vague macro. | Split/audit. |
| S06 | The project should preserve impact. | stylistic function | README.md; docs/00_INDEX | unjudged | Needs concrete sonic/performance markers. | Weak or wrong impact design. | Audit. |
| S07 | The project should preserve pressure. | stylistic function | README.md; docs/00_INDEX | unjudged | Could mean sub, density, spectral pressure, social pressure, etc. | Wrong pressure layer. | Audit. |
| S08 | The project should preserve repetition. | stylistic function | README.md; docs/00_INDEX | unjudged | Repetition can become rigid or cliché. | Generic looping. | Audit. |
| S09 | The project should preserve hypnosis. | stylistic function | README.md; docs/00_INDEX | unjudged | Hypnosis needs distinction from stasis. | Ambient drift or dead loop. | Audit. |
| S10 | The project should preserve tension. | stylistic function | README.md; docs/00_INDEX | unjudged | Tension types may differ. | Overdramatic or static tension. | Audit. |
| S11 | The project should preserve long form. | stylistic function | README.md; docs/00_INDEX | unjudged | Long form needs performance constraints. | Bloated structure. | Audit. |

---

# D. Source and material claims

| ID | Claim | Type | Source candidate | Initial status | Fragility | Risk if wrong | Next action |
|---|---|---|---|---|---|---|---|
| M01 | Didgeridoo is a fixed central live source. | source / performance | README.md; docs/00_INDEX | unjudged | Could be identity, preference, or constraint. | Overfitting architecture to one source. | Audit. |
| M02 | Jaw harps are fixed central live sources. | source / performance | README.md; docs/00_INDEX | unjudged | Availability and role may vary. | Interface assumes unstable live material. | Audit. |
| M03 | Gong is optional and non-neutral. | source / performance | README.md; docs/00_INDEX | unjudged | Optional but musically powerful. | Treated as simple add-on. | Audit. |
| M04 | Frame drum / tambour is optional and non-neutral. | source / performance | README.md; docs/00_INDEX | unjudged | Needs relation to impact/body. | Rhythm layer based on vague status. | Audit. |
| M05 | Zero sample initial is a useful constraint. | material / method | README.md; docs/00_INDEX | unjudged | Could be discipline or dogma. | Blocks useful material or protects project. | Audit. |
| M06 | Samples should only appear when a real documented need justifies them. | material / method | README.md; docs/assets/00_ASSETS_INDEX.md | unjudged | "Real documented need" needs criteria. | Arbitrary sample policy. | Define later. |
| M07 | Source_need is not material_asset. | asset methodology | README.md; docs/assets/00_ASSETS_INDEX.md | unjudged | Likely useful but must be operationalized. | Needs become assets too early. | Audit. |
| M08 | Material_asset_schema is not asset réel. | asset methodology | README.md; docs/assets/00_ASSETS_INDEX.md | unjudged | Needs operational threshold. | Schema mistaken for real material. | Audit. |
| M09 | Function_test is not module. | validation methodology | README.md; docs/assets/00_ASSETS_INDEX.md | unjudged | Needs later use discipline. | Test becomes architecture. | Audit. |
| M10 | Decision_gate is not decision already taken. | decision methodology | README.md; docs/assets/00_ASSETS_INDEX.md | unjudged | Needs real decision criteria later. | Gates become false approvals. | Audit. |
| M11 | Engine_sketch is not implementation. | technical methodology | README.md; docs/assets/00_ASSETS_INDEX.md | unjudged | Needs implementation threshold. | Sketch becomes architecture by inertia. | Audit. |

---

# E. Control and interface claims

| ID | Claim | Type | Source candidate | Initial status | Fragility | Risk if wrong | Next action |
|---|---|---|---|---|---|---|---|
| C01 | Control is not a simple technical parameter. | control / interface | README.md; docs/00_INDEX | unjudged | Needs concrete examples. | Interface becomes knob collection. | Audit. |
| C02 | Control includes selection. | control component | README.md; docs/00_INDEX | unjudged | Needs definition. | Wrong parameters shown. | Audit. |
| C03 | Control includes organization. | control component | README.md; docs/00_INDEX | unjudged | Needs performance logic. | Controls badly arranged in time/context. | Audit. |
| C04 | Control includes amplitude. | control component | README.md; docs/00_INDEX | unjudged | Needs musical ranges. | Controls too coarse or too open. | Audit. |
| C05 | Control includes context. | control component | README.md; docs/00_INDEX | unjudged | Context model may be complex. | Controls appear at wrong time. | Audit. |
| C06 | Control includes risk. | control component | README.md; docs/00_INDEX | unjudged | Need risk taxonomy. | System hides danger or overprotects. | Audit. |
| C07 | Control includes output / sortie. | control component | README.md; docs/00_INDEX | unjudged | Needs exit design. | Performer gets trapped in states. | Audit. |
| C08 | Control includes override. | control component | README.md; docs/00_INDEX; AGENTS.md | unjudged | Needs operational mechanism. | Fake human agency. | Audit. |
| C09 | The Contextual Control Router is likely a critical module. | architecture / interface | README.md; docs/modules; previous project map | unjudged | Could overcentralize interface logic. | Router becomes bottleneck. | Audit later. |
| C10 | The system must avoid presenting too many controls at once. | ergonomics | user note; README; method inference | unjudged | Needs concrete interface constraints. | Cognitive overload. | Audit. |

---

# F. Limits, risk, and override claims

| ID | Claim | Type | Source candidate | Initial status | Fragility | Risk if wrong | Next action |
|---|---|---|---|---|---|---|---|
| L01 | Some limits are playable edge zones. | musical risk | README.md; docs/00_INDEX | unjudged | May over-romanticize danger. | Dangerous states become aestheticized. | Audit. |
| L02 | Some limits must remain hard safeguards. | safety / method | docs/00_INDEX; AGENTS.md | unjudged | Needs list. | Too permissive system. | Audit. |
| L03 | Anti-ambient does not necessarily mean never ambient. | aesthetic risk | docs/40 likely; README summary | unjudged | Needs source verification. | Overcorrected constraints. | Audit. |
| L04 | Freeze/drone states require exits. | temporal / safety | README; docs/00_INDEX | unjudged | Needs technical/performance design. | Stasis or loss of agency. | Audit. |
| L05 | Loops must not replace live agency without decision. | performance / risk | README; docs/00_INDEX | unjudged | Needs practical threshold. | Live player gets displaced. | Audit. |
| L06 | Human override should be possible at critical limits. | performance / safety | README; AGENTS.md | unjudged | Needs operational mechanism. | Player cannot recover. | Audit. |

---

# G. Technical architecture claims

| ID | Claim | Type | Source candidate | Initial status | Fragility | Risk if wrong | Next action |
|---|---|---|---|---|---|---|---|
| T01 | Max for Live is the future real-time core. | technical architecture | README.md; docs/02_SPECIFICATION_MAX_FOR_LIVE.md | unjudged | Needs validation against latency, complexity, UI, Live API. | Wrong technical foundation. | Audit later. |
| T02 | Ableton Extensions SDK should be satellite, not real-time core. | technical architecture | README.md; docs/02_SPECIFICATION_MAX_FOR_LIVE.md | unjudged | Depends on workflow. | Wrong division of labor. | Audit later. |
| T03 | The system will likely need modules such as Object Registry, Trajectory Engine, Scene Conductor, Control Router, Conflict Manager. | architecture | docs/02_SPECIFICATION_MAX_FOR_LIVE.md; docs/modules | unjudged | Architecture may be too elaborate. | Premature modularity. | Audit later. |
| T04 | Live audio analysis / feature extraction may be needed. | technical / performance | docs/02_SPECIFICATION_MAX_FOR_LIVE.md | unjudged | Latency, reliability, and musical meaning uncertain. | Unstable reactive system. | Audit later. |
| T05 | Future technical validation must include latency, reliability, and live safety. | technical verifier | user concern; method inference | unjudged | Needs concrete criteria. | System unsuitable for performance. | Later verifier. |
| T06 | Sound engines are not the conceptual center; they incarnate higher-level roles and trajectories. | architecture / sound | docs/02_SPECIFICATION_MAX_FOR_LIVE.md | unjudged | Could undervalue sonic experimentation. | Too abstract, not enough sound reality. | Audit later. |

---

# H. Workflow and method claims

| ID | Claim | Type | Source candidate | Initial status | Fragility | Risk if wrong | Next action |
|---|---|---|---|---|---|---|---|
| W01 | No production prototype should be launched before role and architecture are clear. | workflow / guardrail | README.md; docs/00_INDEX | unjudged | Could be wise or blocking. | Premature build or endless documentation. | Audit. |
| W02 | A micro-test or measurement may be distinct from a prototype. | method refinement | user discussion; method inference | unjudged | Needs formal distinction. | Useful reality checks blocked. | Add to audit. |
| W03 | The historical repo says assets/source_needs audit is next. | workflow / next step | README.md; docs/00_INDEX; docs/assets/00_ASSETS_INDEX.md | unjudged | New method may require claims audit first. | Continuing old path automatically. | Audit. |
| W04 | The new method says claim-register and acquis-audit come before spec reconstruction. | method | ai_method/11_APPLYING_TO_EXISTING_PROJECT.md | unjudged | Could become over-procedural. | Method slows work too much. | Review after use. |
| W05 | Existing docs 32–39 should remain optional/practical supports. | document status | README.md; docs/00_INDEX | unjudged | Needs content verification. | Practical supports steer project secretly. | Audit later. |
| W06 | The repo has a risk of overdocumentation. | process risk | project intake; document volume | unjudged | Could be overemphasized. | Either too much method or too little capture. | Monitor. |
| W07 | No more method files should be added before first real use unless a specific gap appears. | method guardrail | METHOD_REVIEW_INITIAL.md | unjudged | We already added more; needs review. | Method setup replaces project work. | Review now. |

---

# I. Claims requiring user confirmation

These claims should not be audited only from repository files.

| ID | Claim | Type | Source candidate | Initial status | Fragility | Risk if wrong | Next action |
|---|---|---|---|---|---|---|---|
| U01 | Yohan still wants didgeridoo and jaw harps as fixed live sources. | user confirmation | user / README | unjudged | Could have evolved. | Wrong source assumptions. | Ask user later. |
| U02 | Yohan wants electronic music that remains subtle, original, creative, and performable live. | user intention | user note | unjudged | Needs concrete examples. | Generic electronic system. | Ask user later. |
| U03 | Yohan wants controls presented in a musically timely and organized way. | interface intention | user note | unjudged | Needs scenarios. | Poor live ergonomics. | Ask user later. |
| U04 | Yohan wants to avoid genre caricature. | artistic intention | user note | unjudged | Needs reference examples. | Cliché outputs. | Ask user later. |
| U05 | Yohan wants rigorous analysis of musical/acoustic/perceptive complexity. | methodological intention | user note | unjudged | Could lead to overanalysis. | Either shallow analysis or endless theory. | Ask user later. |

---

# Next step

Before acquis-audit, perform a quick register check:

- Are there missing central claims?
- Are any claims still too broad?
- Are claims traceable enough?
- Which claims should be audited first?

Recommended first audit batch:

1. H01–H08 human/performance intention
2. S01–S04 style identity
3. C01–C10 control/interface
4. W01–W04 workflow/prototype/method

Reason:

These claims govern everything else.

## What not to do next

Do not:
- audit all claims at once;
- audit assets/source_needs yet;
- write SPEC.md;
- write VERIFY.md;
- prototype;
- modify main;
- push without explicit decision.
