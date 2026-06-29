# External Submission Plan

This plan keeps MaxAEO's first open-source distribution focused on GitHub, npm, MCP directories, Claude/Codex communities, and AI SEO resource lists. It does not require adding a MaxAEO website landing page.

## Priority Targets

| Priority | Target | Channel | Fit | Submission path | Status |
|---|---|---|---|---|---|
| P0 | `punkpeye/awesome-mcp-servers` | MCP directory + Glama sync | Very high | PR to GitHub list, Marketing | submitted |
| P0 | `appcypher/awesome-mcp-servers` | MCP awesome list | High | PR to GitHub list, Marketing | blocked |
| P0 | `mcpservers.org` via `wong2/awesome-mcp-servers` | MCP server directory | High | Website form only; repo says no PRs | submitted |
| P1 | `amplifying-ai/awesome-generative-engine-optimization` | GEO resource list | High | PR under Open Source Data / Evals | submitted |
| P1 | `YourPalZack/awesome-ai-seo-tools` | AI SEO tools list | Medium | PR under AI Search Analysis | submitted |
| P1 | `ccplugins/awesome-claude-code-plugins` | Claude Code plugin list | Medium | Issue asking preferred external MCP/plugin format | submitted |
| P2 | `hesreallyhim/awesome-claude-code` | Claude Code resource list | High reach, currently reorganizing | Watch or issue first; README is in transition | hold |
| P2 | `SecretiveShell/Awesome-llms-txt` | llms.txt index | Medium | PR adding `https://maxaeo.ai/llms.txt`; this promotes MaxAEO site, not the tool | submitted |

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

## Submission Log

| Date | Target | Status | Link | Notes |
|---|---|---|---|---|
| 2026-06-29 | `maxaeo/maxaeo-ai-visibility-mcp` | published | https://www.npmjs.com/package/maxaeo-ai-visibility-mcp/v/0.3.1 | `0.3.1` release 已发布到 npm。package/tool/server/README/test/changelog 版本已同步，测试和 GitHub Actions 已通过。`npm view` 确认 registry version 为 `0.3.1`，新增 npm keywords 已同步。 |
| 2026-06-29 | External submitted PRs/issues | followed up | https://github.com/punkpeye/awesome-mcp-servers/pull/8614#issuecomment-4829638052 | Added low-advertising follow-up comments on open MCP/GEO/AI SEO/Claude Code/llms.txt submissions, emphasizing npm install, local-first behavior, and no telemetry. |
| 2026-06-24 | `maxaeo/maxaeo-ai-visibility-mcp` | completed | https://github.com/maxaeo/maxaeo-ai-visibility-mcp/commit/9ca3758c65ebc0368fc985a57e776fb1292c605a | Added contribution guidance, issue templates, directory-listing copy, and expanded npm discovery keywords. GitHub Actions passed. |
| 2026-06-24 | `punkpeye/awesome-mcp-servers` | submitted | https://github.com/punkpeye/awesome-mcp-servers/pull/8614 | PR is open and mergeable. Title includes `🤖🤖🤖` per contributor guidance. Updated with Glama score badge after bot request. |
| 2026-06-24 | `mcpservers.org` | submitted | https://mcpservers.org/submit | Free listing submitted successfully. Review window shown by site: within 12 hours. Contact email: `support@maxaeo.ai`. |
| 2026-06-24 | `appcypher/awesome-mcp-servers` | blocked | https://github.com/appcypher/awesome-mcp-servers/compare/main...mimimile:awesome-mcp-servers-appcypher:add-maxaeo-ai-visibility-mcp?expand=1 | Fork branch and commit are ready, but the compare page says the repository owner has disabled opening pull requests. |
| 2026-06-24 | `amplifying-ai/awesome-generative-engine-optimization` | submitted | https://github.com/amplifying-ai/awesome-generative-engine-optimization/pull/61 | PR adds MaxAEO AI Visibility MCP under Open Source Data / Evals. PR is open and mergeable. |
| 2026-06-24 | `YourPalZack/awesome-ai-seo-tools` | submitted | https://github.com/YourPalZack/awesome-ai-seo-tools/pull/7 | PR adds MaxAEO AI Visibility MCP under AI Search Analysis. PR is open and mergeable. |
| 2026-06-24 | `ccplugins/awesome-claude-code-plugins` | submitted | https://github.com/ccplugins/awesome-claude-code-plugins/issues/282 | Issue asks whether maintainers prefer an external MCP server entry, a plugin wrapper under `plugins/`, or a Claude Code marketplace package before PR. |
| 2026-06-24 | `SecretiveShell/Awesome-llms-txt` | submitted | https://github.com/SecretiveShell/Awesome-llms-txt/pull/86 | PR adds `https://maxaeo.ai/llms.txt` to the index. The file returns HTTP 200. |

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
