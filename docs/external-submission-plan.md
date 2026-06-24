# External Submission Plan

This plan keeps MaxAEO's first open-source distribution focused on GitHub, npm, MCP directories, Claude/Codex communities, and AI SEO resource lists. It does not require adding a MaxAEO website landing page.

## Priority Targets

| Priority | Target | Channel | Fit | Submission path | Status |
|---|---|---|---|---|---|
| P0 | `punkpeye/awesome-mcp-servers` | MCP directory + Glama sync | Very high | PR to GitHub list, likely Marketing or Search/Data Extraction | ready |
| P0 | `appcypher/awesome-mcp-servers` | MCP awesome list | High | PR to GitHub list, likely Marketing | ready |
| P0 | `mcpservers.org` via `wong2/awesome-mcp-servers` | MCP server directory | High | Website form only; repo says no PRs | ready |
| P1 | `amplifying-ai/awesome-generative-engine-optimization` | GEO resource list | High | PR or issue depending current repo structure | ready |
| P1 | `YourPalZack/awesome-ai-seo-tools` | AI SEO tools list | Medium | PR under AI Search Analysis or Technical SEO & Site Audits | ready |
| P1 | `ccplugins/awesome-claude-code-plugins` | Claude Code plugin list | Medium | PR or issue if accepting MCP/commands | ready |
| P2 | `hesreallyhim/awesome-claude-code` | Claude Code resource list | High reach, currently reorganizing | Watch or issue first; README is in transition | hold |
| P2 | `SecretiveShell/Awesome-llms-txt` | llms.txt index | Medium | PR adding `https://maxaeo.ai/llms.txt`; this promotes MaxAEO site, not the tool | ready |

## Repository Links

- MaxAEO Agent Kit: https://github.com/maxaeo/maxaeo-ai-visibility-agent-kit
- MaxAEO MCP: https://github.com/maxaeo/maxaeo-ai-visibility-mcp
- npm package: https://www.npmjs.com/package/maxaeo-ai-visibility-mcp
- Global CTA: https://maxaeo.ai/
- China CTA: https://maxaeo.cn/

## Recommended Submission Order

1. Submit the MCP server to `mcpservers.org`.
2. Submit PRs to `punkpeye/awesome-mcp-servers` and `appcypher/awesome-mcp-servers`.
3. Submit to GEO and AI SEO lists.
4. Submit to Claude Code plugin/resource lists.
5. Submit `https://maxaeo.ai/llms.txt` to llms.txt indexes.

## Positioning Rules

- Lead with the tool value, not the MaxAEO product.
- State the cost and privacy boundary clearly.
- Mention `score` and `technicalScore` only when useful; do not over-explain in list entries.
- Keep CTA links in project README and reports, not in third-party list descriptions unless the target accepts commercial links.
- Use the npm package as the install path: `npx -y maxaeo-ai-visibility-mcp`.

## Submission Copy

Short:

```text
Local-first AI visibility MCP and agent workflow for GEO, AEO, llms.txt, Claude, Codex, and AI crawler readiness.
```

Medium:

```text
MaxAEO AI Visibility MCP is a local-first website audit server for Claude, Codex, Cursor, and MCP-compatible agents. It checks llms.txt, AI crawler access, robots, sitemap, canonical, metadata, noindex, and JSON-LD, then returns a local-only AI visibility score, technical foundation score, top issues, and a 7-day action plan. No MaxAEO API calls, LLM API calls, domain uploads, or hidden telemetry by default.
```

Install:

```bash
npx -y maxaeo-ai-visibility-mcp
```

MCP config:

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
