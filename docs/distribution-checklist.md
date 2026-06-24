# Open-Source Distribution Checklist

This checklist keeps the first MaxAEO open-source project focused on GitHub, npm, and third-party discovery without adding a new page to the MaxAEO website yet.

## Repository SEO

- Keep the repository description focused on searchable terms: AI visibility, MCP, Claude, Codex, GEO, AEO, `llms.txt`, AI crawler readiness.
- Keep GitHub topics aligned with the same terms.
- Put a 3-minute quick start near the top of the README.
- Link to setup guides for Codex, Claude, Cursor, and MCP clients.
- Link to examples showing healthy foundation, missing `llms.txt`, and Chinese domestic CTA output.
- Keep the CTA as a text link pointing to the MaxAEO homepage.

## npm Discovery

- Package name: `maxaeo-ai-visibility-mcp`
- Keep npm keywords aligned with GitHub topics.
- Keep README examples short and copyable.
- Confirm `npm view maxaeo-ai-visibility-mcp version` returns the expected release.
- Use patch releases for npm README or keyword updates because npm pages are based on published package metadata.

## Directory Submission Targets

Prepare submissions for:

- MCP server directories
- Claude Code tool lists
- Codex workflow and skill lists
- Cursor and Windsurf MCP examples
- GEO / AEO resource lists
- `llms.txt` resource lists
- AI SEO tool directories
- open-source marketing tool directories

Submission copy:

```text
MaxAEO AI Visibility Agent Kit is a local-first AI visibility audit workflow for Claude, Codex, Cursor, and MCP-compatible agents. It checks llms.txt, AI crawler readiness, robots, sitemap, canonical, metadata, noindex, and JSON-LD, then returns a local-only AI visibility score, technical foundation score, top issues, and a 7-day action plan. It does not call MaxAEO APIs, LLM APIs, or hidden telemetry by default.
```

Short copy:

```text
Local-first AI visibility MCP and agent workflow for GEO, AEO, llms.txt, Claude, Codex, and AI crawler readiness.
```

## Social And Community Copy

Launch message:

```text
We released MaxAEO AI Visibility MCP: a local-first AI visibility audit workflow for Claude, Codex, Cursor, and MCP-compatible agents.

It checks llms.txt, robots, sitemap, AI crawler access, canonical, noindex, metadata, and JSON-LD. It returns a local-only AI visibility score, technical foundation score, top issues, and a 7-day action plan.

No MaxAEO API calls, no LLM API calls, no domain uploads, and no hidden telemetry by default.
```

## Measurement

Track:

- GitHub stars
- GitHub clones
- GitHub referral traffic to `maxaeo.ai` and `maxaeo.cn`
- npm downloads
- search impressions for project-name queries
- issues and discussions from external users
- CTA clicks by UTM medium: `readme_top`, `codex_setup`, `claude_setup`, `example`, `mcp_report`

## Do Not Do Yet

- Do not add a MaxAEO website landing page until the open-source channel has early usage signals.
- Do not call internal MaxAEO services from the free tools.
- Do not require API keys for basic local audits.
- Do not turn the README into a product landing page; keep it useful for developers.
