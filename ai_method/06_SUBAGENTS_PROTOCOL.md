# 06_SUBAGENTS_PROTOCOL

## Purpose

Subagents are useful when the work benefits from parallel independent perspectives.

They are not useful when the task is vague.

## Use subagents for

- independent critique;
- research from multiple angles;
- reviewing a design;
- comparing options;
- finding risks;
- splitting independent tasks;
- simulating roles or viewpoints.

## Do not use subagents when

- no spec exists;
- the task is ambiguous;
- the roles are unclear;
- the outputs cannot be compared;
- the main agent is avoiding its own responsibility.

## Subagent prompt structure

Each subagent should receive:

- role;
- task;
- context;
- constraints;
- allowed sources;
- output format;
- evaluation criteria;
- what not to do.

## Synthesis rule

After subagents respond, synthesize:

- agreements;
- disagreements;
- blind spots;
- risks;
- recommendations;
- confidence levels;
- questions for the human.

## Independence rule

When diversity of perspective matters, subagents should not see each other's reasoning before producing their first answer.

## Human role

The human does not blindly accept the majority view.

The human uses the disagreement map to decide.
