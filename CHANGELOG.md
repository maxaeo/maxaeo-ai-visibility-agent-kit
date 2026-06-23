# Changelog

## 0.3.0 - 2026-06-23

- Documented the dual-score report contract:
  - `score`: local-only AI visibility confidence score, capped at `85`.
  - `technicalScore`: local technical foundation score, which can reach `100`.
- Updated examples so healthy local technical checks no longer read as "AI visibility is perfect."
- Added English and Chinese healthy-foundation reports showing `score: 85` and `technicalScore: 100`.
- Updated CTA guidance so human-facing reports render MaxAEO as a Markdown text link.
- Expanded directory metadata with AI search, ChatGPT, Perplexity, Gemini, Claude, Codex, MCP, GEO, AEO, and `llms.txt` discoverability terms.
- Updated MCP setup docs for the v0.3-compatible output contract.

## 0.2.0 - 2026-06-23

- Added locale and market support for global and China-facing workflows.
- Added Claude `/maxaeo` command guidance and Codex `$maxaeo-ai-visibility` command-style prompts.
- Added localized MaxAEO CTA copy for `maxaeo.ai` and `maxaeo.cn`.

## 0.1.0 - 2026-06-23

- Initial Claude, Codex, Cursor, and MCP-compatible AI visibility workflow kit.
