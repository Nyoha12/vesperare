# project-intake

## When to use

Use this skill at the beginning of a project or when entering an existing repository.

Use it to understand the project without ingesting everything at once.

## When not to use

Do not use this skill to deeply audit the project contents.

Do not use it to make architectural decisions.

Do not use it to start implementation.

## Inputs

- README
- file tree
- file list
- indexes
- project note
- recent commits
- existing specs or decision documents

## Steps

1. Identify the repository type.
2. Identify the apparent project goal.
3. Identify the current phase.
4. Identify the main folders and their likely roles.
5. Identify existing specs, verifiers, decisions, indexes and logs.
6. Identify which files should be read first.
7. Identify which files should not be read yet.
8. Produce a project map.
9. List uncertainties.
10. Propose the next minimal action.

## Output format

```md
# PROJECT_INTAKE

## Apparent project type

## Apparent goal

## Current phase

## Main folders

## Existing method files

## Files to read first

## Files to avoid for now

## Uncertainties

## Risks of misreading

## Next minimal action
```

## Verification

The intake is successful if:

- it avoids reading the whole repository;
- it distinguishes facts from inference;
- it identifies next files to read;
- it does not make premature decisions.

## Gotchas

- Do not treat the README as absolute truth.
- Do not confuse documentation volume with project maturity.
- Do not continue the existing method automatically.
- Do not assume a prototype exists because a specification exists.
