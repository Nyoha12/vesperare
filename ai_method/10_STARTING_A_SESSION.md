# 10_STARTING_A_SESSION

## Purpose

This file explains how to start a new AI-assisted session using the operating method.

It should be read after:

1. AGENTS.md
2. ai_method/00_METHOD_OVERVIEW.md
3. ai_method/01_SESSION_PROTOCOL.md

## Session opening prompt

Use this at the beginning of a substantial session:

```text
We are working inside the AI operating method.

Before doing anything:
1. Identify the session type.
2. Identify whether this requires a spec.
3. Identify whether this requires a verifier.
4. Identify which files are needed.
5. Identify what should not be done in this session.
6. Propose the next minimal action.

Do not execute yet.
```

## Session type selection

Choose one:

```text
0 — method setup
1 — project intake
2 — corpus mapping
3 — interview
4 — spec drafting
5 — verifier design
6 — execution
7 — review
8 — skill capture
9 — improve system
10 — automation design
```

## If the task is vague

Use:

```text
Interview me before creating a spec.
Ask one question at a time.
Identify the real goal, non-goals, constraints, key decisions, risks, definition of done, and verification plan.
```

## If the task touches existing project material

Use:

```text
Do not assume existing documents are correct.
Treat the repository as a corpus.
Separate facts from files, user intention, inference, recommendation, and uncertainty.
Do not ingest the whole repo.
```

## If the task might create durable changes

Use:

```text
Before creating or modifying durable files:
1. Explain why the change belongs in a file.
2. Identify which file should change.
3. Explain why this is not just a one-off note.
4. Ask for confirmation unless the user already explicitly authorized it.
```

## Session closing prompt

Use this before ending a substantial session:

```text
End the session using SESSION_END_CHECKLIST.
Summarize:
- what was established;
- what remains uncertain;
- files read;
- files changed;
- verification needed;
- durable learnings;
- skill updates needed;
- next minimal action;
- what not to do next.
```
