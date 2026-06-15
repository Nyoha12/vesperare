# 02_SPEC_VERIFIER_ENVIRONMENT

## 1. Spec

A spec is the bridge between human understanding and AI execution.

The spec is not just a plan. It is a way to make hidden assumptions visible before execution.

A good spec contains:

- real goal;
- context;
- user / audience;
- non-goals;
- constraints;
- assumptions;
- key decisions;
- alternatives;
- definition of done;
- verification plan;
- human validation zones.

## Key rule

The model does not know what the human does not express.

The spec reduces the number of assumptions the model must make.

## 2. Verifier

A verifier defines how to know whether the output is good.

It may include:

- automated tests;
- checklists;
- external tools;
- source checks;
- second model critique;
- subagent review;
- human review;
- domain-specific validation;
- rollback conditions.

The verifier should be defined before execution.

## Key rule

The rule says what to verify.  
The tool says how to verify it.

## 3. Environment

The environment is the durable working system around the model.

It may include:

- AGENTS.md;
- SPEC.md;
- VERIFY.md;
- DECISIONS.md;
- SESSION_LOG.md;
- knowledge/raw/;
- knowledge/processed/;
- skills/;
- evals/;
- scripts/;
- docs/.

The goal is to stop repeating prompts and start building reusable context.

## 4. Middle-to-middle

The human starts and ends the process.

Human:

- intention;
- taste;
- judgment;
- final validation.

AI:

- draft;
- analyze;
- code;
- compare;
- test;
- document;
- propose.

## 5. Improve system

Repeated corrections should become:

- a rule;
- a checklist item;
- a skill;
- a test;
- a gotcha;
- a knowledge entry.

## 6. Principle

Every session should improve either:

- the work product;
- the spec;
- the verifier;
- the environment;
- a skill;
- the knowledge base;
- the user's understanding.
