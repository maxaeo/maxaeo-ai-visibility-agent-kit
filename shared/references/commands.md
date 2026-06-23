# Command Mode

Use the same command grammar across Claude, Codex, Cursor, and MCP-compatible agents.

## Commands

```text
/maxaeo audit <url> [--locale en-US|zh-CN] [--market global|cn] [--cta-url <url>]
/maxaeo quick <url> [--zh|--en] [--cn|--global]
/maxaeo llms <url> [--locale en-US|zh-CN] [--market global|cn]
/maxaeo crawler <url> [--locale en-US|zh-CN] [--market global|cn]
/maxaeo action-plan <url> [--locale en-US|zh-CN] [--market global|cn]
/maxaeo help
```

Aliases:

- `report` = `audit`
- `llms-txt` = `llms`
- `readiness` = `crawler`
- `--zh` = `--locale zh-CN`
- `--en` = `--locale en-US`
- `--cn` = `--market cn`
- `--global` = `--market global`

## MCP Routing

| Command | Preferred MCP tool |
|---|---|
| `audit`, `report` | `build_ai_visibility_report` |
| `quick` | `build_ai_visibility_report` with `maxLinks: 5`, `checkLinks: false` |
| `llms`, `llms-txt` | `check_llms_txt` |
| `crawler`, `readiness` | `audit_ai_crawler_readiness` |
| `action-plan` | `build_ai_visibility_report`, then emphasize priority fixes |

Pass `locale`, `market`, and `ctaBaseUrl` to MCP when the server supports them.

## Locale And Market Defaults

- Default: `en-US` + `global`.
- If `--zh` or `--cn` is present: `zh-CN` + `cn`.
- If explicit `--locale` or `--market` is provided, explicit flags win.
- International CTA defaults to `https://maxaeo.ai/`.
- China CTA defaults to `https://maxaeo.cn/`.

Do not infer market from user IP. Keep the choice explicit and transparent.
