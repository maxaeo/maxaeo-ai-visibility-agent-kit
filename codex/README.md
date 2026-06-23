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

