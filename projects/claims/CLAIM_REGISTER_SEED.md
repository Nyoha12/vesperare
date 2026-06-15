# CLAIM_REGISTER_SEED

## Status

Initial claim register seed.

This is not an audit.

Claims listed here are not validated.  
They are extracted as statements that may guide future work and therefore must later be audited.

## Purpose

Convert central statements from the repository into auditable claims before reconstructing any spec or verifier.

## Rules

- Do not treat repeated statements as proof.
- Do not treat elegant concepts as acquired.
- Do not treat README or 00_INDEX as final truth.
- Do not judge claims in this file.
- Do not write SPEC.md from this register yet.
- Do not prototype from this register.
- Next phase is acquis-audit.

## Claim table

| ID | Claim | Type | Source candidate | Initial status | Evidence noted | Fragility | Risk if wrong | Next action |
|---|---|---|---|---|---|---|---|---|
| C01 | Vesperare is a research-creation project for a live composition/performance system in Ableton Live / Max for Live. | project identity | README.md; docs/00_INDEX_METHODE_DECISIONS.md | unjudged | Repeated in navigation documents. | Could hide differences between artistic research, system design, and future implementation. | Mis-scoping the project as software too early or as pure theory too long. | Audit status. |
| C02 | Vesperare aims at a personal genre called techno organique. | artistic / stylistic | README.md; docs/00_INDEX_METHODE_DECISIONS.md | unjudged | Stated as central project formulation. | Could be a stable artistic term, a working metaphor, or an over-compressed label. | Future system optimizes for a vague genre label instead of precise musical functions. | Audit status and decompose. |
| C03 | Techno is the main stylistic influence. | stylistic | README.md; docs/00_INDEX_METHODE_DECISIONS.md | unjudged | Listed as main influence. | May understate other influences or overdetermine the project. | System may caricature techno functions or ignore personal/acoustic dimensions. | Audit against style documents. |
| C04 | Core techno functions to preserve include body, impact, pressure, repetition, hypnosis, tension, and long form. | stylistic / functional | README.md; docs/00_INDEX_METHODE_DECISIONS.md | unjudged | Repeated as function list. | Functions are broad and may be too compact. | Controls and modules may be based on vague categories. | Decompose into claims. |
| C05 | Natural, acoustic, instrumental, vocal, percussive, naturalized or synthesized sounds can carry techno functions. | stylistic / material | README.md | unjudged | Stated in README. | Needs proof by source/function mapping. | Naturalized sounds could become decorative or weak functionally. | Audit with source/function evidence. |
| C06 | Didgeridoo is a fixed central live source. | source / performance | README.md; docs/00_INDEX_METHODE_DECISIONS.md | unjudged | Listed as always live. | Could be artistic commitment, current preference, or practical constraint. | System may overfit to one source and ignore performance burden. | Audit as source claim. |
| C07 | Jaw harps are fixed central live sources. | source / performance | README.md; docs/00_INDEX_METHODE_DECISIONS.md | unjudged | Listed as always live. | Same as didgeridoo; may depend on context and set design. | Interface and signal design may assume unavailable or unstable live input. | Audit as source claim. |
| C08 | Gong is optional and non-neutral. | source / performance | README.md; docs/00_INDEX_METHODE_DECISIONS.md | unjudged | Listed as optional. | Optional status may hide strong musical implications. | System may treat gong as simple asset instead of scene-changing source. | Audit source status. |
| C09 | Frame drum / tambour is optional and non-neutral. | source / performance | README.md; docs/00_INDEX_METHODE_DECISIONS.md | unjudged | Listed as optional. | Needs distinction between impact source and stylistic signifier. | Rhythm/impact layer may be built on unstable assumptions. | Audit source status. |
| C10 | Zero sample initial is a valid constraint. | methodological / material | README.md; docs/00_INDEX_METHODE_DECISIONS.md | unjudged | Listed as principle. | Could be useful discipline or limiting dogma. | Project may reject useful material too early or keep artificial purity. | Audit with source/asset logic. |
| C11 | Samples should be used only if a real documented need justifies them. | methodological / asset | README.md; docs/assets/00_ASSETS_INDEX.md | unjudged | Stated in README/assets logic. | Need criteria for “real documented need.” | Sample policy may become arbitrary. | Define later in verifier/spec. |
| C12 | Control should be defined as selection + organization + amplitude + context + risk + output + override. | interface / control | README.md; docs/00_INDEX_METHODE_DECISIONS.md | unjudged | Repeated as central definition. | Could become too complete and abstract to implement. | Control layer becomes conceptually elegant but not playable. | Audit with concrete examples. |
| C13 | Limits should often be treated as playable edge zones, not hard prohibitions. | methodological / musical risk | README.md; docs/00_INDEX_METHODE_DECISIONS.md | unjudged | Repeated in recentring documents. | Some limits may need to remain hard safety rules. | System may either over-protect or romanticize danger. | Audit limit categories. |
| C14 | Human override must remain central. | performance / safety | README.md; AGENTS.md; docs/00_INDEX_METHODE_DECISIONS.md | unjudged | Present in project and method documents. | Needs operational definition. | System may claim override while hiding critical controls. | Audit and later verify. |
| C15 | Max for Live is the future real-time core. | technical architecture | README.md; docs/02_SPECIFICATION_MAX_FOR_LIVE.md | unjudged | Stated as future core. | May need technical validation against latency, UI, Live API and complexity. | Wrong platform assumptions could shape all architecture prematurely. | Audit technical status. |
| C16 | Ableton Extensions SDK is a satellite tool for preparation/documentation, not real-time core. | technical architecture | README.md; docs/02_SPECIFICATION_MAX_FOR_LIVE.md | unjudged | Stated as satellite. | Depends on actual workflow needs. | Tool division may become artificial. | Audit later. |
| C17 | The repository is currently before prototyping. | workflow / phase | README.md; docs/00_INDEX_METHODE_DECISIONS.md | unjudged | Repeated as current phase. | Could protect from premature build or block useful micro-tests. | Project may remain over-documenting without contact with reality. | Audit phase status. |
| C18 | No patch, layout, mapping, prototype, asset, engine profile, new source_need, or new scene should be created now. | workflow / guardrail | README.md; docs/00_INDEX_METHODE_DECISIONS.md | unjudged | Explicitly listed. | May need distinction between prototype, test, measurement, and sketch. | Could block necessary verification or prevent premature work. | Audit guardrail. |
| C19 | The next historical repo step is assets/source_needs audit, then missing instrumental data. | workflow / next step | README.md; docs/00_INDEX_METHODE_DECISIONS.md; docs/assets/00_ASSETS_INDEX.md | unjudged | Repeated in navigation docs. | New method may require claim-register/acquis-audit first. | Continuing old method automatically. | Compare with method sequence. |
| C20 | Existing docs 32–39 are practical/optional supports, not directing documents. | document status | README.md; docs/00_INDEX_METHODE_DECISIONS.md | unjudged | Stated in document hierarchy. | Needs verification against content. | Practical notes may steer project indirectly. | Audit document status. |
| C21 | Source_need is not material_asset. | asset methodology | README.md; docs/assets/00_ASSETS_INDEX.md | unjudged | Explicit asset rule. | Likely useful, but needs operational consequences. | Assets may be mistaken for needs or needs for decisions. | Audit with asset docs. |
| C22 | Function_test is not module. | asset / validation methodology | README.md; docs/assets/00_ASSETS_INDEX.md | unjudged | Explicit asset rule. | Needs operational criteria. | Tests may be mistaken for implementation decisions. | Audit later. |
| C23 | Decision_gate is not decision already taken. | decision methodology | README.md; docs/assets/00_ASSETS_INDEX.md | unjudged | Explicit asset rule. | Needs later use discipline. | Gates could be treated as approvals. | Audit later. |
| C24 | Engine_sketch is not implementation. | technical methodology | README.md; docs/assets/00_ASSETS_INDEX.md | unjudged | Explicit asset rule. | Needs clear implementation threshold. | Sketches may become architecture by inertia. | Audit later. |
| C25 | The project already risks overdocumentation. | method / risk | PROJECT_INTAKE; repo structure | unjudged | Inferred from document volume and recentring history. | Could be overemphasized and block necessary documentation. | Either too much method or too little capture. | Audit as process risk. |
| C26 | The AI operating method should treat the Vesperare repo as corpus, not proof. | method | AGENTS.md; ai_method/11_APPLYING_TO_EXISTING_PROJECT.md | unjudged | Explicit in new method. | Must be practiced consistently. | AI may continue the old repo assumptions. | Keep as method guardrail. |
| C27 | The next method step should be PROJECT_MAP → CLAIM_REGISTER → ACQUIS_AUDIT before SPEC reconstruction. | method / workflow | ai_method/11_APPLYING_TO_EXISTING_PROJECT.md; PROJECT_MAP.md | unjudged | New method sequence. | Could become too procedural if not adapted. | Method may slow down project unnecessarily. | Review after first use. |

## Immediate next step

Run acquis-audit only after reviewing whether this seed is complete enough.

Before acquis-audit, the user may choose to:
- add missing claims;
- split broad claims;
- remove weak claims;
- add source references;
- read a narrow set of source files.

## What not to do next

Do not:
- validate claims in this file;
- write SPEC.md;
- write VERIFY.md;
- audit assets/source_needs yet;
- prototype;
- modify main;
- push without explicit decision.
