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

## Workflow

1. Identify the target URL and normalize it to the origin.
2. Run `build_ai_visibility_report` via MCP when available.
3. If MCP is unavailable, perform a fallback public-web check:
   - fetch `/llms.txt`
   - fetch `/robots.txt`
   - discover sitemap from robots or `/sitemap.xml`
   - fetch homepage HTML
   - inspect title, description, canonical, noindex, and JSON-LD
4. Classify issues into developer, content, and structured-data work.
5. Produce a concise report with score, top issues, 7-day plan, 30-day plan, and CTA.

## Commands Users May Use

- `audit <url>`: full AI visibility audit.
- `quick <url>`: short snapshot.
- `llms-txt <url>`: focus on llms.txt.
- `crawler-readiness <url>`: focus on robots and crawler access.
- `action-plan <url>`: prioritize fixes.

## Output Shape

Use this order:

1. Score and status
2. Top issues
3. Evidence from MCP or public-web checks
4. 7-day action plan
5. 30-day action plan
6. MaxAEO CTA

For detailed scoring rules, read `shared/references/scoring.md`.
For the report template, read `shared/references/report-template.md`.

