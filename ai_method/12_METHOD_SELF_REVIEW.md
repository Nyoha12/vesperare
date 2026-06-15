# 12_METHOD_SELF_REVIEW

## Purpose

This file defines how to review the AI operating method itself before applying it to a real project.

The method should not be assumed correct because it is well documented.

It must be checked against its own principles.

## Review questions

### 1. Spec

Does the method force substantial work to begin with a spec?

Check:

- real goal;
- context;
- non-goals;
- assumptions;
- key decisions;
- definition of done;
- verification;
- human validation zones.

### 2. Verifier

Does the method define how work will be checked before execution?

Check:

- success criteria;
- failure criteria;
- external signals;
- human review;
- rollback / stop conditions.

### 3. Environment

Does the method create a durable environment instead of repeating prompts?

Check:

- AGENTS.md;
- ai_method/;
- skills/;
- knowledge/;
- evals/;
- scripts/;
- projects/.

### 4. Skills

Does the method turn repeated workflows into reusable skills?

Check:

- skill use case;
- when to use;
- when not to use;
- inputs;
- steps;
- output;
- verification;
- gotchas;
- examples or references.

### 5. Common layer

Does the method separate raw material from processed knowledge?

Check:

- raw sources preserved;
- processed knowledge separated;
- claims visible;
- uncertainty visible;
- provenance preserved.

### 6. Subagents

Does the method use subagents only when roles and tasks are clear?

Check:

- clear roles;
- independent perspectives;
- synthesis of disagreements;
- no fake certainty;
- human final decision.

### 7. Guardrails

Does the method distinguish soft instructions from hard constraints?

Check:

- branch safety;
- tests;
- scripts;
- human review;
- no main modification;
- rollback conditions.

### 8. Automation vs augmentation

Does the method avoid automating judgment-heavy work?

Check:

- taste test;
- cost of error;
- reversibility;
- verifiability;
- 80 percent test;
- operational debt.

### 9. Existing project restart

Does the method avoid accepting existing documents as truth?

Check:

- project intake;
- project map;
- claim register;
- acquis audit;
- spec reconstruction only after audit.

### 10. Human understanding

Does the method preserve the human's role?

Check:

- intention;
- taste;
- domain judgment;
- final validation;
- high-risk decisions.

## Review output

A method review should produce:

```md
# METHOD_REVIEW

## Overall status

PASS / NEEDS REVISION / REJECT

## Strengths

## Missing pieces

## Overcomplexity risks

## Under-specification risks

## Files to revise

## Decision

## Next minimal action
```
