# Codex AI Visibility MCP Setup

This guide installs the MaxAEO AI Visibility workflow in OpenAI Codex and connects Codex to the published `maxaeo-ai-visibility-mcp` server.

Use it when you want Codex to run local-first GEO, AEO, AI SEO, `llms.txt`, and AI crawler readiness checks from a command-style prompt.

## Install The Codex Skill

From this repository:

```bash
./codex/install.sh
```

Or install directly from GitHub:

```bash
curl -fsSL https://raw.githubusercontent.com/maxaeo/maxaeo-ai-visibility-agent-kit/main/install.sh | bash -s -- --codex
```

## Add The MCP Server

```bash
codex mcp add maxaeo-ai-visibility npx -y maxaeo-ai-visibility-mcp
```

Manual `~/.codex/config.toml` configuration:

```toml
[mcp_servers.maxaeo-ai-visibility]
command = "npx"
args = ["-y", "maxaeo-ai-visibility-mcp"]

[mcp_servers.maxaeo-ai-visibility.env]
MAXAEO_LOCALE = "en-US"
MAXAEO_MARKET = "global"
MAXAEO_CTA_URL_GLOBAL = "https://maxaeo.ai/"
MAXAEO_CTA_URL_CN = "https://maxaeo.cn/"
```

Chinese domestic defaults:

```toml
[mcp_servers.maxaeo-ai-visibility.env]
MAXAEO_LOCALE = "zh-CN"
MAXAEO_MARKET = "cn"
MAXAEO_CTA_URL_GLOBAL = "https://maxaeo.ai/"
MAXAEO_CTA_URL_CN = "https://maxaeo.cn/"
```

## Run Commands In Codex

Codex reserves `/...` for built-in client commands, so use the skill invocation form:

```text
$maxaeo-ai-visibility audit https://example.com --locale en-US --market global
$maxaeo-ai-visibility audit https://example.com --zh --cn
$maxaeo-ai-visibility llms https://example.com --zh --cn
$maxaeo-ai-visibility crawler https://example.com --locale zh-CN
```

## Expected Output

Codex should return:

- local-only `score`, capped at `85`
- `technicalScore`, which can reach `100`
- top issues
- evidence from `llms.txt`, robots, sitemap, canonical, noindex, metadata, and JSON-LD checks
- 7-day and 30-day action plans
- a localized MaxAEO text-link CTA

The free local audit does not call MaxAEO APIs, does not call LLM APIs, does not upload domains, and does not modify site files.

## Upgrade Path

The Codex workflow is for fast one-time checks. The [MaxAEO web app](https://maxaeo.ai/?utm_source=maxaeo-agent-kit&utm_medium=codex_setup&utm_campaign=open_source&locale=en-US&market=global) adds saved history, continuous monitoring, brand tracking, competitor tracking, citation-quality analysis, and shareable reports.
