# METHOD_REVIEW_INITIAL

## Overall status

PASS FOR FIRST USE — WITH LIMITS

The AI operating method is coherent enough to begin applying it to an existing project, but it should not be considered final.

It now includes:

- Spec;
- Verifier;
- Environment;
- Common layer;
- Skills;
- Subagents;
- Guardrails;
- Automation vs augmentation;
- Existing project restart;
- Human judgment preservation;
- Method self-review.

## Strengths

### 1. The method prevents vague prompting

The system now requires clarification, interview, spec, verifier, and scoped execution before substantial work.

### 2. The method separates thinking from execution

It distinguishes:

- project intake;
- corpus mapping;
- claim register;
- acquis audit;
- spec drafting;
- verifier design;
- execution;
- review;
- skill capture.

### 3. The method protects human judgment

The method explicitly keeps human taste, domain judgment, artistic intention, and final validation with the user.

### 4. The method supports existing complex repositories

It includes a restart protocol for projects that already contain many documents and assumptions.

### 5. The method has verification infrastructure

It includes checklists for:

- spec quality;
- verifier quality;
- skill quality;
- source ingestion;
- session ending;
- perspective review;
- method coherence;
- automation risk.

### 6. The method has branch safety

It includes scripts to prevent method work from accidentally happening on main.

## Missing pieces

### 1. No real project application yet

The method has not yet been applied to Vesperare.

Next step should be project intake, not spec writing.

### 2. No real skill has been tested in practice yet

The skills are well-defined but unproven. They should be improved after first use.

### 3. Guardrails are still mostly soft

The method distinguishes soft rules from hard guardrails, but hard protections are not yet implemented through CI, GitHub branch protection, or hooks.

### 4. No project-specific verifier exists yet

The generic method has verifiers, but Vesperare-specific verification remains to be created later.

## Overcomplexity risks

- Too many method files could slow down use.
- The method could become a new documentation layer instead of a working protocol.
- The user may spend too long perfecting the method instead of applying it.
- Skills may remain abstract if not revised after real sessions.

## Under-specification risks

- The method does not yet define exact Vesperare session phases.
- It does not yet define which Vesperare files are source-of-truth candidates.
- It does not yet classify Vesperare claims.
- It does not yet define Max for Live validation criteria.

## Decision

Use the method for a first controlled application session.

Do not add more method files before first use unless a specific gap appears.

## Next minimal action

Start Phase 1: project intake.

Use:

```text
skills/project-intake
```

Goal:

```text
Map the Vesperare repository without judging or continuing the project.
```

Do not:

- audit the project yet;
- create a new Vesperare spec;
- create a verifier;
- create a prototype;
- modify main;
- push the method branch;
- accept existing documents as truth.
