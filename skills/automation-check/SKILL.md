# automation-check

## When to use

Use this skill before automating any task.

Use it to decide between:

- manual work;
- augmented workflow;
- partial automation;
- full automation.

## When not to use

Do not use it after automation is already built unless reviewing safety.

## Inputs

- task description
- frequency
- cost of error
- reversibility
- verification method
- human validation needs
- quality threshold

## Steps

1. Describe the task.
2. Identify whether it requires taste or judgment.
3. Estimate cost of error.
4. Check reversibility.
5. Check whether success can be verified.
6. Apply the 80 percent test.
7. Identify operational debt.
8. Identify monitoring and rollback.
9. Decide:
   - do not automate;
   - augment;
   - partially automate;
   - fully automate.
10. Define human validation zones.

## Output format

```md
# AUTOMATION_DECISION

## Task

## Taste / judgment required

## Cost of error

## Reversibility

## Verifiability

## 80 percent test

## Operational debt

## Human validation zones

## Decision

## Safe next step
```

## Verification

The automation decision is acceptable if:

- it does not default to automation;
- it accounts for taste;
- it accounts for cost of error;
- it defines verification;
- it defines rollback or stop conditions.

## Gotchas

- Automation can create more work than it saves.
- Automation of judgment often creates slop.
- If failure cannot be detected, do not automate.
- If the human would reject an 80 percent output, do not automate.
