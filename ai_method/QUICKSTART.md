# QUICKSTART

## 1. Check branch safety

```powershell
powershell -ExecutionPolicy Bypass -File scripts/check_branch_safety.ps1
```

Expected:

```text
Branch safety OK: ai/method-core
```

## 2. Check method structure

```powershell
powershell -ExecutionPolicy Bypass -File scripts/check_method_structure.ps1
```

Expected:

```text
AI method structure OK.
```

## 3. Start a session log

```powershell
powershell -ExecutionPolicy Bypass -File scripts/new_session_log.ps1
```

This creates a session file under:

```text
projects/sessions/
```

## 4. Opening prompt for GPT/Codex

Use:

```text
We are working inside the AI operating method.

Before doing anything:
1. Read AGENTS.md.
2. Read ai_method/README.md.
3. Identify the session type.
4. Identify whether this requires a spec.
5. Identify whether this requires a verifier.
6. Identify which files are needed.
7. Identify what should not be done in this session.
8. Propose the next minimal action.

Do not execute yet.
```

## 5. If applying the method to the existing project

Use:

```text
We are applying the AI operating method to an existing project.

Do not assume existing documents are correct.
Treat the repository as a corpus.

Start with project-intake:
- read README;
- read the file tree;
- read indexes;
- identify source-of-truth candidates;
- identify files to read next;
- identify files not to read yet;
- produce a project map.

Do not audit the content yet.
Do not write a spec yet.
Do not propose implementation yet.
```

## 6. If the project contains many claims

Use:

```text
Use the claim-register skill.

Turn central statements into auditable claims.
Do not judge them yet.
For each claim, list:
- ID;
- statement;
- type;
- source;
- initial status;
- evidence;
- fragility;
- risk if wrong;
- next action.
```

## 7. If moving from claims to decisions

Use:

```text
Use the acquis-audit skill.

For each claim, classify it as:
- strong acquisition;
- provisional acquisition;
- active hypothesis;
- operational derivative;
- practical draft;
- compact concept;
- suspend;
- contradiction / tension.

Then recommend:
- keep;
- revise;
- test;
- suspend;
- reject.
```

## 8. End every substantial session with

```text
Use SESSION_END_CHECKLIST.

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
