# claim-register

## When to use

Use this skill after project intake and before spec reconstruction.

Use it when an existing project contains many documents, decisions, concepts, or repeated claims.

## When not to use

Do not use it for simple projects.

Do not use it to judge claims yet. First list them.

## Inputs

- project map
- README
- indexes
- decision documents
- relevant source files
- user note or current intention

## Steps

1. Identify central statements that guide future work.
2. Turn each statement into a claim.
3. Give each claim an ID.
4. Identify the source file and section if possible.
5. Classify the claim type.
6. Add initial evidence if present.
7. Add possible fragility.
8. Add risk if the claim is wrong.
9. Do not decide yet unless the evidence is explicit.
10. Produce CLAIM_REGISTER.md or a temporary claim table.

## Claim types

- artistic intention;
- stylistic claim;
- technical claim;
- architectural claim;
- methodological claim;
- source / asset claim;
- interface claim;
- performance claim;
- risk / guardrail claim;
- decision claim.

## Output format

```md
# CLAIM_REGISTER

| ID | Claim | Type | Source | Initial status | Evidence | Fragility | Risk if wrong | Next action |
|---|---|---|---|---|---|---|---|---|
```

## Verification

The register is acceptable if:

- claims are specific;
- source files are named;
- assumptions are not treated as facts;
- no broad concept is accepted without decomposition;
- uncertain claims remain visibly uncertain.

## Gotchas

- Do not confuse repetition with evidence.
- Do not merge several claims into one vague claim.
- Do not decide too early.
- Do not turn the register into another conceptual essay.
- Do not include every minor sentence; include claims that could steer work.
