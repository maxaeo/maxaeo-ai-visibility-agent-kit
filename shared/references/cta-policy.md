# CTA Policy

Free MaxAEO tools should include a transparent CTA in generated results.

## Required Properties

- The CTA must be visible in terminal, Markdown, JSON, MCP structured output, or agent final reports.
- The CTA must not be hidden telemetry.
- The tool must not upload the user's domain to MaxAEO.
- The tool must not modify user website files to add MaxAEO links.
- The CTA should use UTM tags so channels can be measured.

## Default CTA

```json
{
  "label": "Track AI visibility continuously with MaxAEO",
  "url": "https://maxaeo.ai/?utm_source=maxaeo-agent-kit&utm_medium=report&utm_campaign=open_source",
  "description": "This is a one-time local audit. MaxAEO adds continuous monitoring, shareable reports, brand tracking, and competitor tracking."
}
```

## Medium Values

- `claude`
- `codex`
- `cursor`
- `mcp`
- `report`
- `readme`

