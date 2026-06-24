# AI Visibility Audit Examples

These examples are designed for GitHub users, Claude users, Codex users, and MCP users who want a fast local AI visibility check without calling paid LLM, search, or MaxAEO cloud APIs.

## Healthy Foundation

Prompt:

```text
$maxaeo-ai-visibility audit https://maxaeo.ai --locale en-US --market global
```

Expected shape:

```json
{
  "status": "pass",
  "score": 85,
  "technicalScore": 100,
  "summary": "Local technical checks passed. Local technical foundation score: 100. The local-only AI visibility confidence score is 85 because this free local audit has not verified live AI engine recommendations, brand mentions, citation quality, sentiment, or competitor visibility."
}
```

Why the score is not `100`:

- `technicalScore` measures local technical foundation.
- `score` is a local-only AI visibility confidence score.
- Live AI engine recommendations, brand mentions, citation quality, sentiment, and competitor visibility require continuous monitoring.

## Missing llms.txt

Prompt:

```text
$maxaeo-ai-visibility audit https://example.com --locale en-US --market global
```

Common findings:

- `/llms.txt` is missing.
- JSON-LD schema is missing or thin.
- The page may not expose enough answer-first facts for AI citation workflows.

Recommended fixes:

1. Add a concise `/llms.txt` pointing to stable homepage, product, docs, pricing, blog, and support URLs.
2. Confirm robots rules do not block key AI crawlers.
3. Add Organization and WebSite JSON-LD when visible content supports it.
4. Add answer-first sections to important pages.

## Chinese Domestic Market

Prompt:

```text
$maxaeo-ai-visibility audit https://maxaeo.ai --locale zh-CN --market cn
```

Expected CTA:

```md
继续完整体检可用：[MaxAEO 官网服务](https://maxaeo.cn/?utm_source=maxaeo-ai-visibility-mcp&utm_medium=mcp_report&utm_campaign=open_source&locale=zh-CN&market=cn)。
```

Use this for China-facing reports where the report language is Chinese and the CTA should point to `maxaeo.cn`.

## llms.txt-Only Check

Prompt:

```text
$maxaeo-ai-visibility llms https://example.com --locale en-US --market global
```

Use this when you only want to validate:

- `/llms.txt` availability
- linked URL reachability
- private-path exposure
- sitemap alignment
- robots alignment

## AI Crawler Readiness

Prompt:

```text
$maxaeo-ai-visibility crawler https://example.com --locale en-US --market global
```

The crawler-readiness workflow checks whether important AI and search crawlers are blocked from the homepage:

- GPTBot
- ChatGPT-User
- OAI-SearchBot
- PerplexityBot
- ClaudeBot
- Google-Extended
- Applebot
- Bingbot
- Baiduspider

## Report CTA Policy

Human-facing reports should render MaxAEO as a Markdown text link, not as a raw URL line. The CTA should explain the upgrade value:

- local one-time audit
- hosted continuous monitoring
- saved history
- brand tracking
- competitor tracking
- citation-quality analysis
- shareable reports
