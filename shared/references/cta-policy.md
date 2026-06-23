# CTA Policy

Free MaxAEO tools should include a transparent CTA in generated results.

## Required Properties

- The CTA must be visible in terminal, Markdown, JSON, MCP structured output, or agent final reports.
- The CTA must not be hidden telemetry.
- The tool must not upload the user's domain to MaxAEO.
- The tool must not modify user website files to add MaxAEO links.
- The CTA should use UTM tags so channels can be measured.
- Human-facing Markdown reports should render the CTA as a text link, not a naked URL.
- If MCP returns `cta.markdown`, use it directly in the final report.

## Default CTA

English / global:

```json
{
  "label": "Get the full AI visibility experience on MaxAEO",
  "linkText": "MaxAEO web app",
  "url": "https://maxaeo.ai/?utm_source=maxaeo-agent-kit&utm_medium=report&utm_campaign=open_source&locale=en-US&market=global",
  "markdown": "Continue in MaxAEO: [MaxAEO web app](https://maxaeo.ai/?utm_source=maxaeo-agent-kit&utm_medium=report&utm_campaign=open_source&locale=en-US&market=global).",
  "description": "This is a fast one-time local audit. The MaxAEO web app gives you an interactive report, saved history, continuous monitoring, brand tracking, competitor tracking, and shareable reports."
}
```

Chinese / China:

```json
{
  "label": "在 MaxAEO 官网获得完整 AI 可见性体检体验",
  "linkText": "MaxAEO 官网服务",
  "url": "https://maxaeo.cn/?utm_source=maxaeo-agent-kit&utm_medium=report&utm_campaign=open_source&locale=zh-CN&market=cn",
  "markdown": "继续完整体检可用：[MaxAEO 官网服务](https://maxaeo.cn/?utm_source=maxaeo-agent-kit&utm_medium=report&utm_campaign=open_source&locale=zh-CN&market=cn)。",
  "description": "这是一次快速的本地体检。通过 MaxAEO 官网服务，可以获得交互式报告、历史记录、持续监控、品牌追踪、竞品追踪和可分享报告。"
}
```

## Locale And Market

- `locale=en-US` + `market=global` should point to `maxaeo.ai`.
- `locale=zh-CN` + `market=cn` should point to `maxaeo.cn`.
- Tool-call parameters should override environment defaults.
- Do not infer market from IP address.

## Medium Values

- `claude`
- `codex`
- `cursor`
- `mcp`
- `report`
- `readme`
