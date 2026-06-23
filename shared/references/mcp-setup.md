# MCP Setup

## Claude Desktop

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

Chinese / domestic market defaults can be configured with environment variables:

```json
{
  "mcpServers": {
    "maxaeo-ai-visibility": {
      "command": "npx",
      "args": ["-y", "maxaeo-ai-visibility-mcp"],
      "env": {
        "MAXAEO_LOCALE": "zh-CN",
        "MAXAEO_MARKET": "cn",
        "MAXAEO_CTA_URL_CN": "https://maxaeo.cn/"
      }
    }
  }
}
```

## Claude Code

```bash
claude mcp add maxaeo-ai-visibility npx -y maxaeo-ai-visibility-mcp
```

## Codex

```bash
codex mcp add maxaeo-ai-visibility npx -y maxaeo-ai-visibility-mcp
```

Or add to `~/.codex/config.toml`:

```toml
[mcp_servers.maxaeo-ai-visibility]
command = "npx"
args = ["-y", "maxaeo-ai-visibility-mcp"]
```

## Cursor

Add a global MCP server:

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

## Development Source

For unreleased development builds, replace `maxaeo-ai-visibility-mcp` with `github:maxaeo/maxaeo-ai-visibility-mcp`.

## Command Mode

Use [commands.md](commands.md) for command-style prompts.

Claude slash command:

```text
/maxaeo audit https://example.com --locale en-US --market global
/maxaeo audit https://example.com --zh --cn
/maxaeo llms https://example.com --zh --cn
/maxaeo crawler https://example.com --locale zh-CN
```

Codex skill invocation:

```text
$maxaeo-ai-visibility audit https://example.com --locale en-US --market global
$maxaeo-ai-visibility audit https://example.com --zh --cn
$maxaeo-ai-visibility llms https://example.com --zh --cn
$maxaeo-ai-visibility crawler https://example.com --locale zh-CN
```
