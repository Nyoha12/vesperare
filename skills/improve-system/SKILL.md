# improve-system

## When to use

Use this skill after repeated corrections, failed outputs, confusing sessions, or useful workflows.

Use it at the end of substantial sessions.

## When not to use

Do not use it to add rules for one-off mistakes.

Do not use it to bloat AGENTS.md.

## Inputs

- session log
- user feedback
- repeated mistakes
- successful workflows
- failed verifications
- changed preferences

## Modes

### audit

Review existing rules, specs, skills, and knowledge for outdated or conflicting material.

### skill-review

Improve a skill after it has been used.

### experience

Capture lived user experience or domain judgment.

### historical-review

Review recent sessions or commits for repeated patterns.

### foundation

Review whether AGENTS.md, ai_method, skills, knowledge, and evals still match the user's way of working.

## Steps

1. Identify repeated corrections.
2. Identify repeated successful workflows.
3. Decide whether each learning belongs in:
   - AGENTS.md;
   - a skill;
   - knowledge;
   - evals;
   - scripts;
   - DECISIONS.md;
   - SESSION_LOG.md.
4. Prefer the smallest durable change.
5. Add gotchas where appropriate.
6. Avoid over-documentation.
7. Summarize what changed and why.

## Output format

```md
# IMPROVE_SYSTEM_RESULT

## Trigger

## Repeated pattern

## Change proposed

## Target file

## Why this belongs there

## Risk of overfitting

## Final change

## Follow-up
```

## Verification

The improvement is acceptable if:

- it addresses a repeated or important pattern;
- it is placed in the correct file;
- it does not bloat global instructions;
- it makes future work easier or safer.

## Gotchas

- Not every correction deserves a rule.
- AGENTS.md should stay concise.
- Skills should absorb procedures.
- Knowledge should absorb context.
- Scripts should absorb deterministic work.
