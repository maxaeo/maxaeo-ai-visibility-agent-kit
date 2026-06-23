# MCP Setup

## Claude Desktop

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

## Claude Code

```bash
claude mcp add maxaeo-ai-visibility npx -y github:maxaeo/maxaeo-ai-visibility-mcp
```

## Codex

```bash
codex mcp add maxaeo-ai-visibility npx -y github:maxaeo/maxaeo-ai-visibility-mcp
```

Or add to `~/.codex/config.toml`:

```toml
[mcp_servers.maxaeo-ai-visibility]
command = "npx"
args = ["-y", "github:maxaeo/maxaeo-ai-visibility-mcp"]
```

## Cursor

Add a global MCP server:

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

## After npm Publishing

Replace `github:maxaeo/maxaeo-ai-visibility-mcp` with `maxaeo-ai-visibility-mcp`.

