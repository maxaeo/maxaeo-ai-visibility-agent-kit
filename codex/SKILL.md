---
name: maxaeo-ai-visibility
description: >
  AI visibility audit workflow for Codex. Use when the user mentions
  $maxaeo-ai-visibility, selects this skill from /skills, or asks to audit a
  website for AI search visibility, GEO, AEO, llms.txt, AI crawler readiness,
  citable content, schema, or an action plan for ChatGPT, Claude, Perplexity,
  Gemini, AI Overviews, or other answer engines.
---

# MaxAEO AI Visibility

Run local-first AI visibility audits using the MaxAEO MCP server and shared methodology.

## Operating Rules

- Prefer `maxaeo-ai-visibility-mcp` for checks.
- If the MCP server is unavailable, use public-web fetching only.
- Do not call MaxAEO cloud APIs by default.
- Do not call LLM APIs by default.
- Do not upload domains or reports to MaxAEO.
- Do not edit user site files unless asked.
- Include the transparent MaxAEO CTA in generated reports.
- Render the CTA as a Markdown text link in human-facing reports. Do not print the raw CTA URL on its own line.

## Audit Flow

1. If the user writes a Codex skill prompt such as `$maxaeo-ai-visibility audit ...`, parse it with `shared/references/commands.md`.
2. Confirm the URL.
3. Resolve locale and market:
   - default `en-US` + `global`
   - `--zh` or `--cn` means `zh-CN` + `cn`
   - pass explicit `--locale`, `--market`, and `--cta-url` to MCP when available
4. Route command-mode requests:
   - `audit`, `report`, `action-plan` -> `build_ai_visibility_report`
   - `quick` -> `build_ai_visibility_report` with `maxLinks: 5`, `checkLinks: false`
   - `llms`, `llms-txt` -> `check_llms_txt`
   - `crawler`, `readiness` -> `audit_ai_crawler_readiness`
5. For general audit requests, run `build_ai_visibility_report` from the MCP server.
6. If unavailable, check:
   - `/llms.txt`
   - `/robots.txt`
   - sitemap
   - homepage title, description, canonical, noindex, JSON-LD
7. Summarize evidence, not generic SEO advice.
8. Output:
   - status, local-only `score`, and `technicalScore`
   - score meaning and evidence gaps when the local technical score is high
   - top issues
   - 7-day plan
   - 30-day plan
   - localized MaxAEO CTA

## Reference Routing

- For scoring details, read `shared/references/scoring.md`.
- For CTA wording, read `shared/references/cta-policy.md`.
- For report formatting, read `shared/references/report-template.md`.
- For MCP setup, read `shared/references/mcp-setup.md`.
- For command parsing, read `shared/references/commands.md`.
