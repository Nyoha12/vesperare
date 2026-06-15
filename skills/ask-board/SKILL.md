# ask-board

## When to use

Use this skill when a decision, concept, design, spec, or strategy would benefit from multiple expert-style perspectives.

Use it for:
- strategic decisions;
- conceptual critique;
- design alternatives;
- risk analysis;
- interpretation of complex material;
- comparing options.

## When not to use

Do not use it as proof.

Do not use it to impersonate real people as if they actually spoke.

Do not use it when the relevant experts have not been defined or grounded.

Do not use it to replace the human's final judgment.

## Inputs

- question or decision to review;
- relevant context;
- list of board perspectives;
- source material for each perspective if available;
- output criteria;
- what not to decide.

## Steps

1. Clarify the decision or question.
2. Identify which perspectives are relevant.
3. For each perspective, state the lens being used.
4. Keep perspectives independent before synthesis.
5. Ask each perspective for:
   - strongest argument;
   - main objection;
   - risk;
   - missing context;
   - recommendation;
   - confidence level.
6. Synthesize agreements and disagreements.
7. Identify what would change the recommendation.
8. Return control to the human for final judgment.

## Output format

```md
# BOARD_REVIEW

## Question

## Perspectives used

## Individual perspectives

### Perspective 1

- Lens:
- Argument:
- Objection:
- Risk:
- Missing context:
- Recommendation:
- Confidence:

## Agreements

## Disagreements

## Blind spots

## What would change the answer

## Recommendation to the human

## Human decision required
```

## Verification

The review is acceptable if:

- perspectives are clearly separated;
- disagreements are preserved;
- confidence is not overstated;
- the result does not pretend to be proof;
- the human remains final decision-maker.

## Gotchas

- Do not create fake authority.
- Do not simulate experts without grounding.
- Do not collapse disagreement too early.
- Do not let the board replace the user's taste, ear, or domain judgment.
