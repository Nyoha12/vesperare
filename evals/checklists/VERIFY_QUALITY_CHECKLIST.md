# VERIFY_QUALITY_CHECKLIST

## Purpose

Use this checklist before accepting a verifier.

A verifier must define how success and failure will be known.

## Checklist

- [ ] Success criteria are explicit.
- [ ] Failure criteria are explicit.
- [ ] Manual checks are identified.
- [ ] Automated checks are identified if possible.
- [ ] External signals are identified if needed.
- [ ] Human validation zones are identified.
- [ ] High-risk outputs require human review.
- [ ] The verifier distinguishes checked from unchecked.
- [ ] The verifier includes stop or rollback conditions.
- [ ] The verifier does not rely only on model confidence.
- [ ] The verifier is appropriate to the domain.

## Failure conditions

Reject the verifier if:

- it says only "review quality";
- it has no failure criteria;
- it cannot detect wrong output;
- it claims verification without a tool, test, or human judgment;
- it ignores high cost of error.

## Output

PASS / NEEDS REVISION / REJECT
