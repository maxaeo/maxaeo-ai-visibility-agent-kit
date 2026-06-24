# MCP Directory Submission

## Name

MaxAEO AI Visibility MCP

## Repository

https://github.com/maxaeo/maxaeo-ai-visibility-mcp

## npm

https://www.npmjs.com/package/maxaeo-ai-visibility-mcp

## Category

Marketing, Search, SEO, Website Audit, AI Visibility

## Short Description

Local-first AI visibility MCP server for GEO, AEO, llms.txt, AI crawler readiness, Claude, Codex, and AI SEO audits.

## Long Description

MaxAEO AI Visibility MCP is a local-first website audit server for Claude, Codex, Cursor, and MCP-compatible agents. It checks llms.txt, AI crawler access, robots, sitemap, canonical, metadata, noindex, and JSON-LD, then returns a local-only AI visibility score, technical foundation score, top issues, and a 7-day action plan.

It does not call MaxAEO APIs, LLM APIs, upload domains, use hidden telemetry, or modify website files by default.

## Install

```bash
npx -y maxaeo-ai-visibility-mcp
```

## MCP Configuration

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

## Tags

`mcp`, `mcp-server`, `ai-visibility`, `ai-search`, `ai-seo`, `geo`, `aeo`, `llms-txt`, `ai-crawler`, `claude`, `codex`, `cursor`, `website-audit`
