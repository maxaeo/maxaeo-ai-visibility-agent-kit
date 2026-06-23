# MaxAEO MCP Setup

This kit uses [maxaeo-ai-visibility-mcp](https://github.com/maxaeo/maxaeo-ai-visibility-mcp) as its tool layer.

Tools:

- `check_llms_txt`
- `audit_ai_crawler_readiness`
- `build_ai_visibility_report`

All tools support `locale`, `market`, and `ctaBaseUrl` in v0.2-compatible MCP servers:

- `locale`: `en-US` / `zh-CN`
- `market`: `global` / `cn`
- `ctaBaseUrl`: custom MaxAEO landing page URL

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

Chinese / domestic market:

```json
{
  "mcpServers": {
    "maxaeo-ai-visibility": {
      "command": "npx",
      "args": ["-y", "github:maxaeo/maxaeo-ai-visibility-mcp"],
      "env": {
        "MAXAEO_LOCALE": "zh-CN",
        "MAXAEO_MARKET": "cn",
        "MAXAEO_CTA_URL_CN": "https://maxaeo.cn/mcp/ai-visibility-audit/"
      }
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
