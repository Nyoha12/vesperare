# ingest-source

## When to use

Use this skill when adding raw material to the common layer.

Examples:

- transcript;
- article;
- note;
- documentation;
- conversation export;
- reference;
- project document;
- external source.

## When not to use

Do not use it to blindly summarize.

Do not use it to turn uncertain material into fact.

## Inputs

- raw source
- source title
- source type
- date if known
- context of use
- reliability level if known

## Steps

1. Preserve or reference the raw source.
2. Identify source metadata.
3. Extract key ideas.
4. Extract claims.
5. Separate quote, paraphrase, inference, and recommendation.
6. Identify uncertainty.
7. Identify reusable concepts.
8. Identify possible application to the project.
9. Identify verification needs.
10. Save processed knowledge.

## Output format

```md
# PROCESSED_SOURCE

## Source

## Type

## Date

## Context

## Summary

## Key ideas

## Claims

## Useful concepts

## Uncertainties

## Possible applications

## Verification needs

## Links to raw material
```

## Verification

The ingestion is successful if:

- raw and processed material are separated;
- claims are not treated as facts automatically;
- uncertainty is visible;
- reusable concepts are extracted;
- links to source material are preserved.

## Gotchas

- Do not flatten subtle material into generic advice.
- Do not over-trust a source because it is well written.
- Do not lose provenance.
- Do not confuse extraction with endorsement.
