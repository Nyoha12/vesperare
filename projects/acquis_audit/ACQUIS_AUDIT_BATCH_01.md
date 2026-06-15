# ACQUIS_AUDIT_BATCH_01

## Status

First limited acquis audit.

Scope:
- Human / performance intention
- Method / workflow foundation

This is not:
- a full Vesperare audit
- a style audit
- an asset/source_needs audit
- a Max for Live spec
- a verifier
- a prototype plan

## Method rule

The goal is not to validate the whole project.

The goal is to classify a first batch of claims so later work does not inherit hidden assumptions.

## Status categories

- strong acquisition
- provisional acquisition
- active hypothesis
- operational derivative
- practical draft
- compact concept
- suspend
- contradiction / tension

---

# 1. Audit table

| ID | Claim | Preliminary status | Evidence | Counterpoint | Risk | Recommendation | Verifier needed |
|---|---|---|---|---|---|---|---|
| H01 | Yohan's acoustic improvisational musicality is a central strength to preserve. | strong acquisition | Direct user statement and project orientation. | Needs concrete description of what this strength means in practice. | System may support abstract style rather than actual playing strengths. | Keep as foundational. Clarify through interview and examples. | User interview + performance examples. |
| H02 | The future system should assist live performance rather than compose in place of Yohan. | strong acquisition | User intention + method middle-to-middle + README orientation. | Needs precise boundary between assistance, suggestion, automation, and composition. | System could become too autonomous or too passive. | Keep as foundational. Define agency boundaries later. | Human validation + future interaction scenarios. |
| H03 | The system should allow intuitive and sensitive creation of electronic music while playing live. | provisional acquisition / compact concept | Direct user intention. | "Intuitive", "sensitive", and "electronic music" are broad. | Interface or architecture may optimize wrong dimensions. | Keep, but split later into control timing, gesture, feedback, sound subtlety, and cognitive load. | User interview + reference scenarios. |
| H04 | The system should valorize what Yohan already does well. | strong acquisition | Direct user statement. | Needs mapping from human strengths to system functions. | System may compensate weaknesses instead of amplifying strengths. | Keep as foundational. Requires strength-to-system map later. | User interview + musical examples. |
| H05 | The system should reduce cognitive load during live performance. | provisional acquisition | Strongly implied by user concern about controls and live focus. | Not explicitly quantified; some creative systems need productive complexity. | Too much simplification may reduce expressive power. | Keep as provisional. Define cognitive load types later. | Interview + future performance test. |
| H06 | Interface ergonomics is part of the musical system, not a secondary UI concern. | provisional acquisition | User concern about organized controls and musical ergonomics. | Needs proof in actual performance design. | UI may become conceptual instead of playable. | Keep as provisional. Treat ergonomics as musical requirement in future specs. | Scenario review + future prototype testing. |
| H07 | The system must avoid caricaturing Yohan's musical ideas or influences. | strong acquisition | Direct user statement. | Requires examples of caricature vs successful transformation. | AI/system may produce genre clichés. | Keep as foundational. Needs anti-caricature criteria. | User reference set + negative examples. |
| H08 | The core problem includes translating acoustic sensitivity into electronic control. | active hypothesis / compact concept | Direct user statement about technical sound subtleties and sensitive style. | May be one central problem, but not necessarily the only one. | Project may over-focus on translation and under-focus on composition, form, or performance structure. | Keep as active hypothesis. Split later. | Interview + mapping exercise. |
| W01 | No production prototype should be launched before role and architecture are clear. | provisional acquisition | Repo repeatedly warns against premature prototype. | Could block useful micro-tests if interpreted too broadly. | Endless documentation or premature build. | Keep, but restrict to production prototypes. | Method review + prototype criteria. |
| W02 | A micro-test or measurement may be distinct from a prototype. | active hypothesis | Emerged from methodological correction. | Needs formal distinction. | Could become loophole for premature patching. | Keep as active hypothesis. Define micro-test rules before use. | Written criteria + human approval. |
| W03 | The historical repo says assets/source_needs audit is next. | operational derivative | README and index indicate this as next historical step. | New method may require prior claim/acquis audit. | Continuing old path automatically. | Do not follow automatically. Re-evaluate after Batch 01 and claim audit. | Compare against method sequence. |
| W04 | The new method says claim-register and acquis-audit come before spec reconstruction. | provisional acquisition | Installed AI method. | Could become too procedural. | Method overhead may slow progress. | Keep for first controlled application, then review. | Method self-review after first real use. |

---

# 2. Batch result

## Strong acquisitions

These can guide the next phase, but still need operational detail:

- H01 — preserve Yohan's acoustic improvisational musicality.
- H02 — assist live performance rather than compose in place of Yohan.
- H04 — valorize what Yohan already does well.
- H07 — avoid caricaturing Yohan's musical ideas or influences.

## Provisional acquisitions

These are useful, but must remain revisable:

- H03 — intuitive and sensitive electronic creation while playing live.
- H05 — reduce cognitive load during live performance.
- H06 — ergonomics as part of the musical system.
- W01 — no production prototype before role and architecture are clear.
- W04 — claim-register and acquis-audit before spec reconstruction.

## Active hypotheses

These should be explored, not assumed:

- H08 — acoustic sensitivity to electronic control as core problem.
- W02 — micro-test / measurement distinct from prototype.

## Operational derivative

This is a consequence of historical repo workflow, not a binding decision:

- W03 — assets/source_needs audit as historical next step.

---

# 3. Key correction from audit

The old repository's next step should not be followed automatically.

Historical next step:
- assets/source_needs audit

New method-constrained next step:
- clarify foundational human/performance claims
- then decide whether assets/source_needs audit is still the right next step

---

# 4. Required user interview before deeper audit

Before auditing style, sources, assets, or Max for Live architecture, ask Yohan:

1. What does your acoustic improvisational strength concretely consist of?
2. What must the system never take away from your live agency?
3. What makes electronic music feel intuitive to you while playing?
4. What are examples of caricature you want to avoid?
5. What are examples of successful acoustic/electronic translation?
6. When do controls become too many, too late, too abstract, or badly organized?
7. What would count as a useful micro-test rather than a premature prototype?

---

# 5. Recommended next step

Create:

projects/interviews/INTERVIEW_FOUNDATION_BATCH_01.md

Purpose:
prepare the interview needed to clarify H01-H08 before auditing style, sources, assets, or architecture.

## What not to do next

Do not:
- audit all claims;
- audit assets/source_needs;
- write SPEC.md;
- write VERIFY.md;
- propose implementation;
- create a prototype;
- change main;
- push without explicit decision.
