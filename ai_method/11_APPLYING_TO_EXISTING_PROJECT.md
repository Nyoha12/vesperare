# 11_APPLYING_TO_EXISTING_PROJECT

## Purpose

This file explains how to apply the AI operating method to an existing project that already contains many documents, assumptions, drafts, and decisions.

The goal is not to continue the project automatically.

The goal is to restart methodically.

## Core warning

Existing documentation is a corpus, not proof.

A repeated idea is not necessarily true.  
A well-written idea is not necessarily acquired.  
A detailed architecture is not necessarily ready to implement.  
A practical note is not necessarily a decision.  
A specification is not necessarily verified.

## Restart sequence

Use this sequence for any existing complex project:

```text
1. Project intake
2. Project map
3. Claim register
4. Acquis audit
5. Spec reconstruction
6. Verifier design
7. Targeted execution
8. Review
9. Skill capture
10. Improve system
```

## Phase 1 — Project intake

Goal:

Understand the repository structure without judging the content.

Use:

```text
skills/project-intake
```

Read only:

- README
- file tree
- indexes
- recent project notes
- current decision files

Do not read the whole repo.

## Phase 2 — Project map

Goal:

Produce a map of:

- main folders;
- document families;
- likely source-of-truth files;
- likely outdated files;
- files to read next;
- files to ignore for now;
- risks of misreading.

No decisions yet.

## Phase 3 — Claim register

Goal:

Transform important statements into auditable claims.

A claim is any statement that could guide future work.

Examples:

- "X is the main influence."
- "Y is a fixed source."
- "Z should not be prototyped yet."
- "This module is central."
- "This control definition is valid."

Each claim must have:

- ID;
- statement;
- source file;
- status;
- evidence;
- fragility;
- risk;
- decision.

## Phase 4 — Acquis audit

Goal:

Classify each central claim.

Possible statuses:

- strong acquisition;
- provisional acquisition;
- active hypothesis;
- operational derivative;
- practical draft;
- compact concept;
- suspend;
- contradiction / tension.

## Phase 5 — Spec reconstruction

Only after claim audit, reconstruct SPEC.md from stable claims.

Do not write a spec from the whole corpus.

Write it from:

- strong acquisitions;
- provisional acquisitions;
- explicitly accepted hypotheses;
- current human intention;
- verified constraints.

## Phase 6 — Verifier design

Define how future work will be checked.

For artistic, musical, acoustic, embodied, or performative work, the verifier must include human judgment and domain-specific validation.

## Anti-patterns

Do not:

- accept the repo as truth;
- read everything at once;
- keep adding addenda;
- convert every concept into architecture;
- prototype because the repo feels mature;
- treat beautiful vocabulary as evidence;
- use AI confidence as validation.

## Correct attitude

Always ask:

```text
The repo claims X.
What is the status of X?
What supports X?
What could make X false?
What risk does X create?
Should X be kept, revised, tested, or suspended?
```
