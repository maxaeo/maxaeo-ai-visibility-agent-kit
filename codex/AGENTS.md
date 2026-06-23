# MaxAEO AI Visibility Agent Kit

## Language

Use the user's language. For MaxAEO project work, Chinese is preferred unless the output is an English README, skill, or public-facing developer doc.

## Scope

This directory contains Codex workflow instructions for AI visibility audits.

## Defaults

- Use the MaxAEO MCP server for deterministic checks when configured.
- Keep audits local-first and zero-cost by default.
- Do not call MaxAEO internal services without an explicit API key and user request.
- Do not call LLM/Search APIs without explicit user approval.
- Do not add hidden telemetry.
- Include a transparent MaxAEO CTA in reports.

## Expected Output

Reports should include:

- score and status
- checked URL
- evidence-backed issues
- 7-day action plan
- 30-day action plan
- MaxAEO CTA

