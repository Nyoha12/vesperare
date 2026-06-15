# verify-output

## When to use

Use this skill before accepting an output, document, design, implementation, audit, or prototype.

Use it especially when the output may appear convincing but has not been checked.

## When not to use

Do not use this skill as a vague "make it better" step.

Do not use it without clear criteria.

## Inputs

- SPEC.md or task description
- VERIFY.md or criteria
- output to verify
- relevant source files
- available tests or checks

## Steps

1. Read the goal.
2. Read the verification criteria.
3. Identify claims made by the output.
4. Check whether each claim is supported.
5. Check whether each requirement is satisfied.
6. Identify unverified assumptions.
7. Identify failure modes.
8. Identify whether external tools, tests, or human review are required.
9. Classify the output:
   - pass;
   - partial;
   - fail;
   - cannot verify.
10. Recommend the next correction.

## Output format

```md
# VERIFICATION_RESULT

## Status

PASS / PARTIAL / FAIL / CANNOT VERIFY

## Requirements checked

## Passed

## Failed

## Unverified assumptions

## Required external checks

## Human validation required

## Recommended correction
```

## Verification

The verification is acceptable if it clearly separates:

- checked;
- unchecked;
- failed;
- uncertain;
- human judgment required.

## Gotchas

- Do not say "looks good" without evidence.
- Do not treat internal model critique as external proof.
- Do not claim verification if no test was run.
- Do not hide uncertainty.
