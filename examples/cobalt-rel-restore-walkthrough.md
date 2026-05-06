# Cobalt Rel Restore Grid Walkthrough

The fixture is intentionally compact, so the review starts with the cases that pull farthest apart.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | budget pressure | 196 | ship |
| stress | failure width | 213 | ship |
| edge | recovery gap | 173 | ship |
| recovery | runbook drift | 202 | ship |
| stale | budget pressure | 246 | ship |

Start with `stale` and `edge`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The next useful expansion would be a malformed fixture around failure width and runbook drift.
