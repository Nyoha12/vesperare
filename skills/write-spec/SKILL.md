# write-spec

## When to use

Use this skill before any substantial work, implementation, audit, prototype, or decision.

Use it when a task is vague, high-impact, multi-step, or likely to create durable consequences.

## When not to use

Do not use it for tiny mechanical edits.

Do not use it when the user explicitly asks for a quick answer.

## Inputs

- user goal
- project context
- relevant files
- constraints
- previous decisions
- open questions

## Steps

1. Identify the real goal behind the request.
2. Identify who the output is for.
3. Identify non-goals.
4. Identify constraints.
5. List assumptions.
6. List key decisions.
7. For each key decision, list alternatives.
8. Identify what would make the work fail.
9. Define done.
10. Define the verification plan.
11. Identify human validation zones.
12. Produce or update SPEC.md.

## Output format

```md
# SPEC

## Real goal

## Context

## User / audience

## Non-goals

## Constraints

## Assumptions

## Key decisions

## Alternatives considered

## Definition of done

## Verification plan

## Human validation zones

## Open questions
```

## Verification

The spec is acceptable if:

- the real goal is explicit;
- assumptions are visible;
- key decisions are listed;
- non-goals are clear;
- verification is planned before execution;
- human validation zones are identified.

## Gotchas

- A plan is not a spec.
- A beautiful formulation is not a decision.
- Do not hide assumptions.
- Do not start execution while key decisions are unresolved.
