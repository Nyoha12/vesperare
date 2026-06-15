# 07_GUARDRAILS_AND_PERMISSIONS

## Principle

Prompt instructions are not hard security.

A written rule can guide the model, but it does not truly constrain execution.

Hard guardrails require one or more of:

- branch protection;
- tests;
- scripts;
- permissions;
- hooks;
- CI checks;
- human review;
- rollback conditions.

## Always / Ask / Never model

### Always

Use for safe, useful, repeated behaviors.

Examples:

- read the relevant spec;
- define verification;
- state uncertainty;
- work in small phases;
- preserve human judgment;
- summarize next action.

### Ask

Use for actions with risk, scope change, or durable consequences.

Examples:

- creating new durable documents;
- modifying architecture;
- adding dependencies;
- changing data models;
- changing project structure;
- creating prototypes;
- automating workflows.

### Never

Use for destructive or method-breaking actions.

Examples:

- modify main directly;
- claim verification without evidence;
- hide failed checks;
- delete files without explicit approval;
- automate high-risk judgment;
- treat the model's confidence as proof.

## Branch safety rule

All experimental method work must happen on a dedicated branch.

Main must not be modified unless the human explicitly decides to merge or cherry-pick after review.

## Human validation zones

Require explicit human validation for:

- public output;
- destructive change;
- irreversible operation;
- artistic judgment;
- domain judgment;
- high-risk automation;
- final project direction.
