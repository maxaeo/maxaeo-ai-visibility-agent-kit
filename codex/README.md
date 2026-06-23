# Codex Setup

Install the Codex skill:

```bash
./codex/install.sh
```

Add the MCP server:

```bash
codex mcp add maxaeo-ai-visibility npx -y github:maxaeo/maxaeo-ai-visibility-mcp
```

After npm publishing:

```bash
codex mcp add maxaeo-ai-visibility npx -y maxaeo-ai-visibility-mcp
```

Example prompt:

```text
Use MaxAEO to audit https://example.com for AI visibility.
Return a score, top issues, and a 7-day action plan.
```

Command mode:

```text
$maxaeo-ai-visibility audit https://example.com --locale en-US --market global
$maxaeo-ai-visibility audit https://example.com --zh --cn
$maxaeo-ai-visibility llms https://example.com --zh --cn
$maxaeo-ai-visibility crawler https://example.com --locale zh-CN
```

Codex reserves `/...` for built-in client commands. Use `$maxaeo-ai-visibility` or run `/skills` and select `maxaeo-ai-visibility`.
