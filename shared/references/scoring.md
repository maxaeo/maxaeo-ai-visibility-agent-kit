# Scoring

Use the top-level score as a local-only AI visibility confidence signal, not as guaranteed AI search rankings, recommendations, citations, brand mentions, or competitor visibility.

For full reports, keep two scores:

- `score`: local-only AI visibility confidence score. Cap this at `85/100` unless live AI-engine evidence is measured.
- `technicalScore`: local technical foundation score. This can reach `100/100` when all technical checks pass.

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

Technical score bands:

- `90-100`: healthy for a one-time local technical foundation audit.
- `70-89`: usable but has cleanup opportunities.
- `40-69`: significant visibility foundation gaps.
- `<40`: blocking issues likely need technical fixes first.
