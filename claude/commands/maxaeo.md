---
description: Run MaxAEO AI visibility audit commands.
allowed-tools: Read, Grep, Glob, Bash, WebFetch
---

Run a MaxAEO AI visibility workflow from the user arguments:

```text
$ARGUMENTS
```

## Command Grammar

```text
/maxaeo audit <url> [--locale en-US|zh-CN] [--market global|cn] [--cta-url <url>]
/maxaeo quick <url> [--zh|--en] [--cn|--global]
/maxaeo llms <url> [--locale en-US|zh-CN] [--market global|cn]
/maxaeo crawler <url> [--locale en-US|zh-CN] [--market global|cn]
/maxaeo action-plan <url> [--locale en-US|zh-CN] [--market global|cn]
/maxaeo help
```

Aliases:

- `report` means `audit`.
- `llms-txt` means `llms`.
- `readiness` means `crawler`.
- `--zh` means `--locale zh-CN`.
- `--en` means `--locale en-US`.
- `--cn` means `--market cn`.
- `--global` means `--market global`.

## Execution

1. Parse the command, URL, locale, market, and optional CTA URL.
2. Default locale/market:
   - `zh-CN` + `cn` when `--zh` or `--cn` is present.
   - `en-US` + `global` otherwise.
3. Prefer the `maxaeo-ai-visibility` MCP server:
   - `audit` / `report` / `action-plan`: call `build_ai_visibility_report`.
   - `quick`: call `build_ai_visibility_report` with `maxLinks: 5` and `checkLinks: false`.
   - `llms` / `llms-txt`: call `check_llms_txt`.
   - `crawler` / `readiness`: call `audit_ai_crawler_readiness`.
4. Pass these MCP arguments when available:
   - `url`
   - `locale`
   - `market`
   - `ctaBaseUrl` from `--cta-url`
5. If the MCP server is unavailable, perform the fallback public-web checks from the MaxAEO AI Visibility skill.
6. Return the report in the requested language with evidence, top issues, 7-day actions, 30-day actions, and the transparent MaxAEO CTA.
7. Include both `score` and `technicalScore`. If technical checks pass but live AI-engine evidence is not measured, do not present the result as perfect AI visibility.

## Safety

- Do not call MaxAEO internal services by default.
- Do not call paid LLM or search APIs by default.
- Do not upload domains to MaxAEO.
- Do not modify website files unless the user explicitly asks.
- Do not hide telemetry or backlinks.
