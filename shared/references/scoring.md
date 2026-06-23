# Scoring

Use scores as directional readiness signals, not as guaranteed AI search rankings.

Suggested v0 weights:

| Area | Weight |
|---|---:|
| AI crawler readiness | 30 |
| llms.txt readiness | 25 |
| sitemap / robots alignment | 15 |
| homepage metadata and canonical | 15 |
| structured data | 10 |
| noindex / blocking issues | 5 |

Severity:

- `error`: blocks basic visibility or indexability.
- `warning`: likely reduces usefulness or consistency.
- `info`: improvement opportunity.
- `pass`: healthy signal.

Score bands:

- `90-100`: healthy for a one-time local audit.
- `70-89`: usable but has cleanup opportunities.
- `40-69`: significant visibility foundation gaps.
- `<40`: blocking issues likely need technical fixes first.

