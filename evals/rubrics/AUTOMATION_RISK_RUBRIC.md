# AUTOMATION_RISK_RUBRIC

## Purpose

Use this rubric before automating a task.

## Scores

Each category is scored:

0 = safe / low concern  
1 = moderate concern  
2 = high concern

## Categories

### Taste / judgment

0 — mechanical task  
1 — some judgment required  
2 — high taste, artistry, strategy, or domain judgment required

### Cost of error

0 — easy to discard  
1 — wastes time or creates confusion  
2 — damages project direction, safety, data, reputation, or artistic integrity

### Reversibility

0 — fully reversible  
1 — reversible with effort  
2 — irreversible or hard to undo

### Verifiability

0 — objective verification exists  
1 — partial verification exists  
2 — no clear verification

### Stability

0 — stable repeatable process  
1 — process changes sometimes  
2 — process is ambiguous or unstable

### Human validation need

0 — no human validation needed  
1 — human spot-check needed  
2 — human final decision required

## Interpretation

0–3:
Automation may be acceptable.

4–6:
Prefer partial automation or augmentation.

7+:
Do not automate. Use augmentation.

## Required output

```md
# AUTOMATION_RISK_RESULT

## Task

## Scores

| Category | Score | Reason |
|---|---:|---|

## Total score

## Recommendation

Manual / Augment / Partial automation / Full automation

## Human validation zones

## Rollback or stop condition
```
