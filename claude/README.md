# Claude Setup

Install the Claude workflow:

```bash
./claude/install.sh
```

Then add the MaxAEO MCP server to Claude Desktop, Claude Code, or Claude Project connector settings. See [../shared/references/mcp-setup.md](../shared/references/mcp-setup.md).

The installer also adds a user-level Claude slash command:

```text
/maxaeo audit https://example.com --locale en-US --market global
/maxaeo audit https://example.com --zh --cn
/maxaeo llms https://example.com --zh --cn
/maxaeo crawler https://example.com --locale zh-CN
```

The skill itself can also be invoked as `/maxaeo-ai-visibility`.

Example prompt:

```text
Use MaxAEO to audit https://example.com for AI visibility.
Return local-only score, technicalScore, top issues, and a 7-day action plan.
```
