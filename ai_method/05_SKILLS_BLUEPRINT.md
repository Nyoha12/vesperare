# 05_SKILLS_BLUEPRINT

## What is a skill?

A skill is a reusable workflow.

It is more than a prompt.

A skill should contain:

1. Description  
   When should the AI use this skill?

2. Instructions  
   What steps should the AI follow?

3. Tools / references / scripts  
   What files, scripts, examples, or checks make it reliable?

4. Verification  
   How do we know the skill succeeded?

5. Gotchas  
   What mistakes should future sessions avoid?

## Core skills to create over time

### write-spec

Turns vague intent into a usable SPEC.

### verify-output

Checks an output against SPEC and VERIFY.

### ingest-source

Turns raw material into structured knowledge.

### improve-system

Captures repeated corrections and updates rules, skills, tests, or knowledge.

### ask-board

Runs a decision through multiple expert perspectives.

### internal-focus-group

Tests an idea against target user or audience perspectives.

### project-intake

Maps a repository or project without ingesting everything at once.

## Skill creation rule

Do not create abstract skills too early.

Preferred sequence:

do the task once  
→ notice repetition  
→ create skill  
→ use it  
→ add gotchas  
→ improve it

## Skill structure

Recommended folder:

skills/
  skill-name/
    SKILL.md
    references/
    scripts/
    examples/
    evals/

## SKILL.md structure

- When to use
- When not to use
- Inputs
- Steps
- Output format
- Verification
- Gotchas
- Examples
- Related files
