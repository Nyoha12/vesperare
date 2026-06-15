# 03_POWER_PHRASES

## 1. Interview me

Use when the user has an intention but not enough explicit context.

Prompt:

Interview me before creating a spec.  
Ask one question at a time.  
Identify the real goal, constraints, non-goals, key decisions, risks, and definition of done.  
Then summarize into a SPEC.

## 2. Write me an implementation spec

Use before building anything complex.

Prompt:

Write an implementation spec.  
For each step, show the key decisions you would make, the alternatives, risks, and verification method.  
Do not build yet.

## 3. Verify before you build

Use before execution.

Prompt:

Before building, define how this will be verified.  
List success criteria, failure criteria, tools, tests, external signals, and human validation zones.

## 4. Launch subagents

Use for parallel perspectives.

Prompt:

Launch independent subagents for this task.  
Each should work from a different perspective and not see the others' answers.  
Then synthesize agreements, disagreements, risks, and recommendations.

Use cases:

- multiple perspectives;
- independent critique;
- research in parallel;
- comparing architectures;
- discovering risks;
- reviewing complex work.

Avoid if:

- the task is vague;
- no spec exists;
- the roles are unclear;
- the output cannot be synthesized.

## 5. Based on this conversation, build me a skill

Use after a useful repeatable workflow has happened.

Prompt:

Based on this conversation, create a reusable skill.  
Include when to use it, when not to use it, inputs, steps, outputs, verification, gotchas, and examples.

## 6. Automate this

Use with caution.

Before automation, check:

- Does this require taste?
- What is the cost of error?
- Is 80% quality acceptable?
- Can success be verified?
- Is the action reversible?
- Where must the human validate?
- What operational debt does this create?

If the task needs judgment, prefer augmentation over automation.
