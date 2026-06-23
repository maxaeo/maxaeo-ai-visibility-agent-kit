# Contributing

Thanks for improving MaxAEO AI Visibility Agent Kit.

## Scope

Good contributions include:

- better Claude, Codex, Cursor, or MCP setup instructions
- more accurate public-web audit heuristics
- report template improvements
- examples for common website types
- documentation fixes

Keep the default workflow local-first:

- no hidden telemetry
- no MaxAEO internal service calls
- no paid LLM or search API calls by default
- no edits to user websites unless explicitly requested

## Claims

Avoid claiming that this kit proves rankings or live recommendations in ChatGPT, Claude, Gemini, Perplexity, or Google AI Overviews. The v0 scope is readiness auditing: crawlability, llms.txt, metadata, schema, sitemap alignment, and action planning.

## Pull Requests

Before opening a PR:

```bash
bash -n claude/install.sh
bash -n codex/install.sh
python3 -m json.tool metadata/directory-submission.json >/dev/null
```

