# CLAIM_REGISTER_REVIEW

## Status

Review of CLAIM_REGISTER_SEED before acquis-audit.

This is not an audit.

No claim is validated or rejected here.

## Purpose

Check whether the initial claim register is usable for the next phase.

The next phase will be acquis-audit, but only if the claim register is clear enough.

## Review result

Status: NEEDS LIGHT REFINEMENT BEFORE ACQUIS-AUDIT

The seed is usable, but several claims are too broad and should be split or tagged before audit.

## Good enough to keep

The seed correctly captures major claim families:

- project identity;
- artistic / stylistic direction;
- source assumptions;
- material / sample policy;
- control definition;
- limits / override;
- platform assumptions;
- workflow / phase assumptions;
- asset methodology;
- new AI operating method assumptions.

## Claims probably too broad

### C02 — Vesperare aims at a personal genre called techno organique

This should later be split into:

- techno organique as personal genre;
- techno organique as working label;
- techno organique as system design target;
- techno organique as risk of over-compression.

### C04 — Core techno functions

This should later be split into:

- body;
- impact;
- pressure;
- repetition;
- hypnosis;
- tension;
- long form.

Reason:

Each function may have different evidence, source needs, controls, and risks.

### C12 — Control definition

This should later be split into:

- selection;
- organization;
- amplitude;
- context;
- risk;
- output;
- override.

Reason:

The combined formula may be elegant but too compact for audit.

### C13 — Limits as playable edge zones

This should later be split into:

- limits as expressive zones;
- limits as safety constraints;
- limits as aesthetic risk;
- limits as override cases;
- limits as exit requirements.

### C17 / C18 — No prototype now

These should later be distinguished as:

- no production prototype;
- no patch/layout/mapping;
- possible micro-test;
- possible measurement;
- possible conceptual verifier.

Reason:

The current anti-prototype rule may protect the project, but could also block useful reality checks.

## Claims possibly missing

The next register iteration may need claims about:

### M01 — Human musical judgment

The project depends on Yohan's embodied musical judgment and performance sensitivity.

This is present in the method and user intention, but not yet explicit enough as a Vesperare claim.

### M02 — Improvisation as central constraint

The system should assist live improvisational performance, not only composition or pre-programmed scenes.

### M03 — Cognitive load

The system must reduce or organize cognitive load during live performance.

### M04 — Latency and reliability

Any future Max for Live system must respect live performance latency, reliability, and safety.

### M05 — Ergonomics as musical structure

Interface ergonomics is not a secondary UI layer; it is part of the musical system.

### M06 — Anti-caricature

The system must avoid caricaturing Yohan's musical intentions or reducing influences to genre clichés.

### M07 — Acoustic / electronic translation

The central problem may be the translation between acoustic sensitivity and electronic control, not simply sound generation.

## Claims that may need source references before audit

- C03 techno as main influence.
- C04 core techno functions.
- C06 didgeridoo fixed live source.
- C07 jaw harps fixed live sources.
- C10 zero sample initial.
- C12 control definition.
- C17 current pre-prototype phase.
- C19 assets/source_needs as historical next step.

## Risk before acquis-audit

If acquis-audit starts immediately, it may:

- audit claims that are too broad;
- accept compact concepts too easily;
- miss user-origin claims not present in repo files;
- over-focus on repo-internal logic;
- underweight the live performance constraint.

## Recommended next minimal action

Create a refined claim register:

projects/claims/CLAIM_REGISTER_V0.md

It should:

- keep the seed claims;
- add missing user/method claims;
- split only the most compact claims;
- keep all statuses unjudged;
- prepare clean input for acquis-audit.

## What not to do next

Do not:
- start acquis-audit yet;
- validate or reject claims;
- write SPEC.md;
- write VERIFY.md;
- audit assets/source_needs;
- prototype;
- modify main;
- push without explicit decision.
