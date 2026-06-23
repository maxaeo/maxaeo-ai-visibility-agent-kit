# MaxAEO MCP Setup

This kit uses [maxaeo-ai-visibility-mcp](https://github.com/maxaeo/maxaeo-ai-visibility-mcp) as its tool layer.

Tools:

- `check_llms_txt`
- `audit_ai_crawler_readiness`
- `build_ai_visibility_report`

Until npm publishing, use GitHub as the package source:

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

After npm publishing:

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

