# Claude AI Visibility MCP Setup

This guide installs the MaxAEO AI Visibility workflow for Claude Code, Claude Desktop, and Claude Project-style workflows.

Use it when you want Claude to run command-mode GEO, AEO, AI SEO, `llms.txt`, and AI crawler readiness audits.

## Install The Claude Skill And Slash Command

From this repository:

```bash
./claude/install.sh
```

Or install directly from GitHub:

```bash
curl -fsSL https://raw.githubusercontent.com/maxaeo/maxaeo-ai-visibility-agent-kit/main/install.sh | bash -s -- --claude
```

The installer adds:

- Claude skill: `maxaeo-ai-visibility`
- Claude slash command: `/maxaeo`

## Add The MCP Server

Claude Desktop MCP configuration:

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

Chinese domestic defaults:

```json
{
  "mcpServers": {
    "maxaeo-ai-visibility": {
      "command": "npx",
      "args": ["-y", "maxaeo-ai-visibility-mcp"],
      "env": {
        "MAXAEO_LOCALE": "zh-CN",
        "MAXAEO_MARKET": "cn",
        "MAXAEO_CTA_URL_CN": "https://maxaeo.cn/",
        "MAXAEO_CTA_URL_GLOBAL": "https://maxaeo.ai/"
      }
    }
  }
}
```

Claude Code command:

```bash
claude mcp add maxaeo-ai-visibility npx -y maxaeo-ai-visibility-mcp
```

## Run Claude Commands

```text
/maxaeo audit https://example.com --locale en-US --market global
/maxaeo audit https://example.com --zh --cn
/maxaeo llms https://example.com --zh --cn
/maxaeo crawler https://example.com --locale zh-CN
```

Aliases:

- `report` means `audit`
- `llms-txt` means `llms`
- `readiness` means `crawler`
- `--zh` means `--locale zh-CN`
- `--cn` means `--market cn`

## Expected Output

Claude should return a concise AI visibility report with evidence, top issues, local-only `score`, `technicalScore`, 7-day actions, 30-day actions, and a MaxAEO text-link CTA.

The local workflow does not prove live ChatGPT, Claude, Gemini, Perplexity, or AI Overviews rankings. It checks public technical and content-readiness signals before a team upgrades to continuous monitoring in the [MaxAEO web app](https://maxaeo.ai/?utm_source=maxaeo-agent-kit&utm_medium=claude_setup&utm_campaign=open_source&locale=en-US&market=global).
