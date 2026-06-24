# MaxAEO AI Visibility Agent Kit for GEO, AEO, and AI SEO

Command-mode AI visibility audit workflows for Claude, Codex, Cursor, and MCP-compatible agents.

[中文文档](README.zh-CN.md)

Use this kit to check whether a public website is crawlable, understandable, and citable by AI search engines. It combines GEO (generative engine optimization), AEO (answer engine optimization), AI SEO, `llms.txt`, AI crawler readiness, and command-mode workflows for Claude Code, OpenAI Codex, Cursor, Windsurf, and MCP-compatible agents.

This repository is the agent workflow layer for the local-first [MaxAEO AI Visibility MCP](https://github.com/maxaeo/maxaeo-ai-visibility-mcp) and the [llms.txt Validator](https://github.com/maxaeo/llms-txt-validator).

## 3-Minute Quick Start

Install the workflow:

```bash
curl -fsSL https://raw.githubusercontent.com/maxaeo/maxaeo-ai-visibility-agent-kit/main/install.sh | bash
```

Add the MCP server:

```bash
codex mcp add maxaeo-ai-visibility npx -y maxaeo-ai-visibility-mcp
```

Run an audit:

```text
$maxaeo-ai-visibility audit https://example.com --locale en-US --market global
```

Claude users can use:

```text
/maxaeo audit https://example.com --locale en-US --market global
```

The local audit is free and public-web-only. For continuous monitoring, historical trends, brand tracking, competitor tracking, and citation-quality analysis, use the [MaxAEO web app](https://maxaeo.ai/?utm_source=maxaeo-agent-kit&utm_medium=readme_top&utm_campaign=open_source&locale=en-US&market=global).

## Setup Guides

- [Codex setup](docs/codex-setup.md)
- [Claude setup](docs/claude-setup.md)
- [Audit examples](docs/ai-visibility-audit-examples.md)
- [Local audit vs MaxAEO web app](docs/local-audit-vs-maxaeo.md)
- [Distribution checklist](docs/distribution-checklist.md)
- [External submission plan](docs/external-submission-plan.md)

## Use Cases

- Run an AI visibility audit from Claude Code, Codex, Cursor, Windsurf, or any MCP-compatible agent.
- Check GEO / generative engine optimization readiness for a public website.
- Check AEO / answer engine optimization basics for answer engines and AI search.
- Validate `llms.txt`, robots.txt, sitemap alignment, canonical URLs, noindex, metadata, and JSON-LD.
- Build a 7-day / 30-day action plan before upgrading to continuous MaxAEO monitoring.

Common search intents this project targets:

- AI visibility MCP server
- Claude SEO audit command
- Codex AI visibility audit
- GEO / AEO website audit
- `llms.txt` validator and AI crawler readiness
- ChatGPT, Claude, Perplexity, Gemini, and AI Overviews visibility workflow

## What It Does

| Workflow | Result |
|---|---|
| Quick audit | 60-second AI visibility snapshot with score, top issues, and next actions. |
| AI crawler readiness | robots.txt, sitemap, canonical, metadata, schema, noindex, and AI crawler access checks. |
| llms.txt toolkit | Validate llms.txt, check links, detect private-path exposure, and compare with sitemap/robots signals. |
| Action plan | 7-day and 30-day fix plan for dev, content, and schema work. |
| Command mode | Claude `/maxaeo ...`, Codex `$maxaeo-ai-visibility ...`, and localized report commands. |

## Score Contract

Reports use two scores so the free local audit stays useful without overstating AI search visibility:

- `score`: local-only AI visibility confidence score. It is capped at `85/100` unless live AI-engine evidence is measured.
- `technicalScore`: local technical foundation score. It can reach `100/100` when crawlability, `llms.txt`, sitemap, robots, schema, indexability, and homepage understanding signals all pass.

Use the MaxAEO web app for live AI engine recommendations, brand mentions, citation quality, sentiment, competitor share of voice, historical trends, and continuous monitoring.

## Why Agent Kit

MCP exposes tools, but agents still need a workflow. Skills expose workflow, but they need reliable tools. This repository packages both layers:

- **MCP**: deterministic local/public-web checks.
- **Claude skill**: Claude Code / Claude Project workflow.
- **Codex skill**: Codex workflow with AGENTS.md conventions and MCP setup.
- **Cursor rules**: lightweight instructions for Cursor/Windsurf-style agents.
- **Shared references**: methodology, report template, cost boundary, and CTA policy.

## Cost And Privacy Boundary

By default this kit:

- does not call MaxAEO internal services
- does not call LLM APIs
- does not upload user domains to MaxAEO
- does not use hidden telemetry
- does not modify user site files
- does include a transparent MaxAEO CTA in generated reports

Hosted MaxAEO monitoring is an explicit upgrade path, not a hidden dependency.

## Full Install

### One-Command Install

macOS / Linux:

```bash
curl -fsSL https://raw.githubusercontent.com/maxaeo/maxaeo-ai-visibility-agent-kit/main/install.sh | bash
```

Codex only:

```bash
curl -fsSL https://raw.githubusercontent.com/maxaeo/maxaeo-ai-visibility-agent-kit/main/install.sh | bash -s -- --codex
```

Claude only:

```bash
curl -fsSL https://raw.githubusercontent.com/maxaeo/maxaeo-ai-visibility-agent-kit/main/install.sh | bash -s -- --claude
```

### Manual Install

```bash
git clone https://github.com/maxaeo/maxaeo-ai-visibility-agent-kit.git
cd maxaeo-ai-visibility-agent-kit
./install.sh
```

### 1. Add The MCP Server

Use the published npm package:

```json
{
  "mcpServers": {
    "maxaeo-ai-visibility": {
      "command": "npx",
      "args": ["-y", "maxaeo-ai-visibility-mcp"]
    }
  }
}
```

For development builds, you can still use the GitHub source:

```json
{
  "mcpServers": {
    "maxaeo-ai-visibility": {
      "command": "npx",
      "args": ["-y", "github:maxaeo/maxaeo-ai-visibility-mcp"]
    }
  }
}
```

See [shared/references/mcp-setup.md](shared/references/mcp-setup.md) for Claude, Codex, Cursor, and VS Code configuration examples.

### 2. Install Agent Workflow

Claude:

```bash
./claude/install.sh
```

Codex:

```bash
./codex/install.sh
```

Manual installation is also supported: copy the relevant `SKILL.md` into your agent's skill directory and configure the MCP server.

### 3. Run An Audit

Ask your agent:

```text
Use MaxAEO to audit https://example.com for AI visibility.
Return local-only score, technicalScore, top issues, and a 7-day action plan.
```

Or use command mode.

Claude:

```text
/maxaeo audit https://example.com --locale en-US --market global
/maxaeo audit https://example.com --zh --cn
/maxaeo llms https://example.com --zh --cn
/maxaeo crawler https://example.com --locale zh-CN
```

Codex:

```text
$maxaeo-ai-visibility audit https://example.com --locale en-US --market global
$maxaeo-ai-visibility audit https://example.com --zh --cn
$maxaeo-ai-visibility llms https://example.com --zh --cn
$maxaeo-ai-visibility crawler https://example.com --locale zh-CN
```

Codex reserves `/...` for built-in client commands. You can also run `/skills` and select `maxaeo-ai-visibility`.

## Repository Layout

```text
maxaeo-ai-visibility-agent-kit/
  claude/                  Claude skill and installer
  claude/commands/         Claude slash command for /maxaeo
  codex/                   Codex skill, AGENTS.md, and installer
  cursor/                  Cursor/Windsurf rules
  docs/                    Codex, Claude, examples, positioning, and distribution guides
  mcp/                     MCP setup docs and tool references
  shared/references/       methodology, CTA policy, scoring, report templates
  examples/                sample reports and action plans
  metadata/                directory submission metadata
  metadata/submissions/    copy blocks for MCP directories, awesome lists, and social launch posts
  .github/workflows/       repository validation
```

## Examples

- [Healthy foundation](examples/healthy-foundation.md): technical checks pass, `technicalScore` reaches `100`, and local-only `score` stays capped at `85`.
- [Quick audit](examples/quick-audit.md): warning-level report with missing `llms.txt` and thin schema.
- [Full AI visibility report](examples/full-ai-visibility-report.md): complete report structure with evidence, action plan, and MaxAEO CTA.
- [Chinese quick audit](examples/quick-audit.zh-CN.md): localized domestic-market report.
- [Audit examples guide](docs/ai-visibility-audit-examples.md): copyable prompts for Codex, Claude, `llms.txt`, crawler readiness, and Chinese domestic-market reports.
- [External submission plan](docs/external-submission-plan.md): prioritized third-party directory targets and submission rules.

## First-Version Scope

Included:

- quick AI visibility audit
- AI crawler readiness audit
- llms.txt validation workflow
- dual-score local confidence and technical-foundation reporting
- 7-day / 30-day action plan
- Claude and Codex workflow support
- transparent MaxAEO CTA
- example full report for downstream agents

Not included yet:

- real ChatGPT / Claude / Gemini visibility tracking
- MaxAEO cloud API integration
- Perplexity or third-party SERP API calls
- PDF reports
- benchmark datasets
- agency CRM workflows

## Upgrade Path

This kit is best for fast one-time local/public-web checks. For a better product experience, use the [MaxAEO web app](https://maxaeo.ai/?utm_source=maxaeo-agent-kit&utm_medium=readme&utm_campaign=open_source&locale=en-US&market=global): interactive reports, saved history, continuous monitoring, brand tracking, competitor tracking, and shareable reports.

## Related Projects

- [maxaeo-ai-visibility-mcp](https://github.com/maxaeo/maxaeo-ai-visibility-mcp)
- [llms-txt-validator](https://github.com/maxaeo/llms-txt-validator)

## License

MIT
