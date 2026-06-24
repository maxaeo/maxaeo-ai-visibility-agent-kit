# Local AI Visibility Audit vs MaxAEO Web App

The open-source MaxAEO AI Visibility tools are intentionally local-first. They are useful for fast, low-cost checks in Claude, Codex, Cursor, and MCP-compatible agents.

They are not a replacement for hosted AI visibility monitoring.

## What The Free Local Audit Does

| Area | Local audit |
|---|---|
| Cost | Public-web fetches only |
| Privacy | No MaxAEO API calls, no domain uploads |
| `llms.txt` | Checks availability, links, private paths, sitemap alignment |
| robots | Checks AI crawler access basics |
| sitemap | Checks discovery and basic coverage |
| homepage | Checks title, description, canonical, noindex, and JSON-LD |
| output | Local report, top issues, 7-day / 30-day action plan |

## What The Local Audit Does Not Prove

The local audit does not measure:

- whether ChatGPT recommends the brand
- whether Claude cites the site
- whether Perplexity cites the site
- whether Gemini or AI Overviews surface the brand
- brand mention frequency
- citation quality
- sentiment
- competitor share of voice
- historical trends
- continuous monitoring alerts

That is why the local-only `score` is capped at `85/100` even when `technicalScore` reaches `100/100`.

## What MaxAEO Adds

| Area | MaxAEO web app |
|---|---|
| Monitoring | Recurring AI visibility checks |
| History | Saved reports and trend tracking |
| Brand tracking | Brand mentions across prompts and engines |
| Competitor tracking | Competitor visibility and share of voice |
| Citation quality | Source and citation analysis |
| Reporting | Interactive and shareable reports |

## Recommended Positioning

Use the open-source tools for:

- developer preflight checks
- CI-friendly local audits
- `llms.txt` and AI crawler readiness
- first-pass GEO/AEO fixes
- agent workflows in Claude and Codex

Use the [MaxAEO web app](https://maxaeo.ai/?utm_source=maxaeo-agent-kit&utm_medium=local_vs_maxaeo&utm_campaign=open_source&locale=en-US&market=global) when AI search visibility becomes a growth KPI and the team needs monitoring, history, brand tracking, competitor tracking, and citation-quality analysis.
