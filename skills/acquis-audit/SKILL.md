# acquis-audit

## When to use

Use this skill after a claim register exists.

Use it before writing a spec, verifier, prototype plan, or implementation plan.

## When not to use

Do not use this skill before claims have been listed.

Do not use it to attack the project. Use it to clarify what is actually stable.

## Inputs

- CLAIM_REGISTER.md or claim table
- source files for each claim
- user intention
- relevant evidence
- project constraints

## Steps

1. Read each claim.
2. Identify its source.
3. Identify its type.
4. Evaluate evidence.
5. Identify counter-arguments.
6. Identify risk if the claim is wrong.
7. Classify the claim.
8. Recommend keep, revise, test, suspend, or reject.
9. Identify what kind of verifier would be needed.
10. Identify which claims can feed SPEC.md.

## Status categories

### Strong acquisition

Stable enough to guide future work.

### Provisional acquisition

Useful and probably valid, but must remain revisable.

### Active hypothesis

Useful to explore, not yet proven.

### Operational derivative

A practical consequence of another claim, not a primary truth.

### Practical draft

Useful support material, not a decision.

### Compact concept

Too broad; must be decomposed before use.

### Suspend

Do not use to guide future work for now.

### Contradiction / tension

Useful but conflicting with another claim.

## Output format

```md
# ACQUIS_AUDIT

| ID | Claim | Status | Evidence | Counterpoint | Risk | Recommendation | Verifier needed |
|---|---|---|---|---|---|---|---|
```

## Verification

The audit is acceptable if:

- it does not flatter the project;
- it does not destroy useful work unnecessarily;
- it separates source, evidence, inference, and recommendation;
- it identifies which claims may feed a spec;
- it identifies which claims require tests or human validation.

## Gotchas

- Do not over-correct by suspending everything.
- Do not accept elegant language as proof.
- Do not treat a model-generated audit as final judgment.
- Do not replace the human's domain judgment.
