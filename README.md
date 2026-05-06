# cobalt-rel-restore-grid

`cobalt-rel-restore-grid` is a compact Solidity repository for reliability, centered on this goal: Develop a Solidity command-oriented project for restore scenarios with transition tables, invalid-transition tests, and local-only command execution.

## Problem It Tries To Make Smaller

The point is to make a small domain rule concrete enough that a reader can change it and immediately see what broke.

## Cobalt Rel Restore Grid Review Notes

The first comparison I would make is `budget pressure` against `recovery gap` because it shows where the rule is most opinionated.

## Working Pieces

- `fixtures/domain_review.csv` adds cases for budget pressure and failure width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/cobalt-rel-restore-walkthrough.md` walks through the case spread.
- The Solidity code includes a review path for `budget pressure` and `recovery gap`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Design Notes

The core code exposes a scoring path and the added review layer uses `signal`, `slack`, `drag`, and `confidence`. The domain terms are `budget pressure`, `failure width`, `recovery gap`, and `runbook drift`.

The Solidity checks add a pure review lens and Foundry coverage.

## Example Run

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Tests

The verifier is intentionally local. It should fail if the fixture score math, lane assignment, or language-specific test drifts.

## Known Limits

No external service is required. A deeper version would add more negative cases and a clearer boundary around invalid input.
