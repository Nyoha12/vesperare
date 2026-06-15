# AI Operating Method — README

## Purpose

This folder contains the operating method used to work with AI agents on this repository.

The method is not a prompt collection.

It is a working system:

```text
Spec
→ Verifier
→ Environment
→ Execution
→ Review
→ Skill capture
→ Improve system
```

## Start here

Read in this order:

```text
1. AGENTS.md
2. ai_method/00_METHOD_OVERVIEW.md
3. ai_method/01_SESSION_PROTOCOL.md
4. ai_method/10_STARTING_A_SESSION.md
```

If working on an existing project with many files, also read:

```text
5. ai_method/11_APPLYING_TO_EXISTING_PROJECT.md
```

## Main concepts

### Spec

A spec makes the real task explicit before execution.

It should define:

- real goal;
- context;
- non-goals;
- assumptions;
- key decisions;
- definition of done;
- verification plan;
- human validation zones.

### Verifier

A verifier defines how success and failure will be known.

It should exist before building.

### Environment

The environment is the durable working layer around the model:

- AGENTS.md;
- ai_method/;
- skills/;
- knowledge/;
- evals/;
- scripts/;
- projects/.

### Skills

Skills are reusable workflows.

They are not just prompts.

A skill should include:

- when to use it;
- when not to use it;
- inputs;
- steps;
- outputs;
- verification;
- gotchas.

### Common layer

The durable asset is the common layer, not the model.

The common layer contains:

- raw sources;
- processed knowledge;
- decisions;
- specs;
- verifiers;
- skills;
- scripts;
- checklists;
- gotchas.

### Middle-to-middle

The human stays at the beginning and the end.

The AI assists in the middle.

Human keeps:

- intention;
- taste;
- domain judgment;
- final validation;
- high-risk decisions.

## Core skills

```text
skills/project-intake
skills/claim-register
skills/acquis-audit
skills/write-spec
skills/verify-output
skills/ingest-source
skills/improve-system
skills/automation-check
```

## Verification files

```text
evals/checklists/SPEC_QUALITY_CHECKLIST.md
evals/checklists/VERIFY_QUALITY_CHECKLIST.md
evals/checklists/SKILL_QUALITY_CHECKLIST.md
evals/checklists/SOURCE_INGESTION_CHECKLIST.md
evals/checklists/SESSION_END_CHECKLIST.md
evals/rubrics/AUTOMATION_RISK_RUBRIC.md
```

## Safety scripts

```text
scripts/check_branch_safety.ps1
scripts/check_method_structure.ps1
scripts/method_status.ps1
scripts/new_session_log.ps1
```

Run:

```powershell
powershell -ExecutionPolicy Bypass -File scripts/method_status.ps1
```

## Existing project restart sequence

For an existing project, do not start by continuing the current documents.

Use:

```text
1. project-intake
2. project map
3. claim-register
4. acquis-audit
5. spec reconstruction
6. verifier design
7. targeted execution
```

## Anti-patterns

Do not:

- accept existing docs as truth;
- read the whole repository at once;
- prototype without a spec;
- build before verification is defined;
- automate high-judgment tasks;
- create abstract skills too early;
- treat AI confidence as proof;
- modify main directly.
