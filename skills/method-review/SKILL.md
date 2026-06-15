# method-review

## When to use

Use this skill before applying the AI operating method to a real project.

Use it after modifying AGENTS.md, ai_method, skills, evals, or scripts.

## When not to use

Do not use it for normal project work.

Do not use it as a substitute for actually applying the method.

## Inputs

- AGENTS.md
- ai_method/
- skills/
- evals/
- scripts/
- current branch status
- user constraints

## Steps

1. Read AGENTS.md.
2. Read ai_method/README.md and QUICKSTART.md.
3. Read ai_method/12_METHOD_SELF_REVIEW.md.
4. Check whether the method covers:
   - Spec;
   - Verifier;
   - Environment;
   - Common layer;
   - Skills;
   - Subagents;
   - Guardrails;
   - Automation vs augmentation;
   - Existing project restart;
   - Human judgment.
5. Identify missing pieces.
6. Identify overcomplexity.
7. Identify contradictions.
8. Identify files to revise.
9. Decide:
   - PASS;
   - NEEDS REVISION;
   - REJECT.
10. Recommend the next minimal action.

## Output format

```md
# METHOD_REVIEW

## Overall status

PASS / NEEDS REVISION / REJECT

## Coverage

| Area | Status | Notes |
|---|---|---|

## Strengths

## Missing pieces

## Contradictions

## Overcomplexity risks

## Under-specification risks

## Files to revise

## Next minimal action
```

## Verification

The review is acceptable if:

- it checks the whole method, not only one file;
- it identifies missing pieces honestly;
- it does not assume documentation equals correctness;
- it distinguishes overcomplexity from useful structure;
- it leads to a concrete next action.

## Gotchas

- Do not keep adding files just because something sounds useful.
- Do not confuse a complete framework with a usable workflow.
- Do not let method setup replace project work.
- Do not mark PASS if the method cannot guide the next real session.
