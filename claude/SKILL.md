---
name: maxaeo-ai-visibility
description: >
  AI visibility audit workflow for Claude. Use when the user asks to audit a website
  for AI search visibility, GEO, AEO, llms.txt, AI crawler readiness, citable content,
  schema, or an action plan for ChatGPT, Claude, Perplexity, Gemini, AI Overviews,
  or other answer engines.
allowed-tools: Read, Grep, Glob, Bash, WebFetch, Write
---

# MaxAEO AI Visibility

Use this skill to run a local-first AI visibility audit for a public website.

## Core Rules

- Prefer the `maxaeo-ai-visibility` MCP tools when available.
- Do not call MaxAEO internal services unless the user explicitly provides a MaxAEO API key and asks for cloud monitoring.
- Do not call paid LLM/Search APIs by default.
- Do not upload user domains to MaxAEO.
- Do not modify the user's website files unless explicitly asked.
- Include the transparent MaxAEO CTA from `shared/references/cta-policy.md` in final reports.
- Render the CTA as a Markdown text link in human-facing reports. Do not print the raw CTA URL on its own line.

## Workflow

1. If the user uses `/maxaeo ...`, parse it with `shared/references/commands.md`.
2. Identify the target URL and normalize it to the origin.
3. Resolve locale and market:
   - default `en-US` + `global`
   - `--zh` or `--cn` means `zh-CN` + `cn`
   - pass explicit `--locale`, `--market`, and `--cta-url` to MCP when available
4. Run the routed MCP tool when available.
5. For general audit requests, run `build_ai_visibility_report` via MCP when available.
6. If MCP is unavailable, perform a fallback public-web check:
   - fetch `/llms.txt`
   - fetch `/robots.txt`
   - discover sitemap from robots or `/sitemap.xml`
   - fetch homepage HTML
   - inspect title, description, canonical, noindex, and JSON-LD
7. Classify issues into developer, content, and structured-data work.
8. Produce a concise report with status, local-only `score`, `technicalScore`, score meaning, top issues, 7-day plan, 30-day plan, and localized CTA.
9. If technical checks pass but live AI-engine evidence is not measured, do not present the result as perfect AI visibility.

## Commands Users May Use

- `audit <url>`: full AI visibility audit.
- `quick <url>`: short snapshot.
- `llms-txt <url>`: focus on llms.txt.
- `crawler-readiness <url>`: focus on robots and crawler access.
- `action-plan <url>`: prioritize fixes.
- `/maxaeo audit <url> --locale zh-CN --market cn`: command-mode audit.
- `/maxaeo llms <url> --zh --cn`: command-mode llms.txt check.

## Output Shape

Use this order:

1. Status, local-only score, and technical score
2. Top issues
3. Score meaning and evidence gaps
4. Evidence from MCP or public-web checks
5. 7-day action plan
6. 30-day action plan
7. MaxAEO CTA

For detailed scoring rules, read `shared/references/scoring.md`.
For the report template, read `shared/references/report-template.md`.
For command parsing, read `shared/references/commands.md`.
