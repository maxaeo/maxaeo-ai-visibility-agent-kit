#!/usr/bin/env bash
set -euo pipefail

SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(cd "$SOURCE_DIR/.." && pwd)"
TARGET_DIR="${HOME}/.claude/skills/maxaeo-ai-visibility"

mkdir -p "$TARGET_DIR"
mkdir -p "$TARGET_DIR/shared"
cp "$SOURCE_DIR/SKILL.md" "$TARGET_DIR/SKILL.md"
cp -R "$REPO_DIR/shared/references" "$TARGET_DIR/shared/"

cat <<'MSG'
MaxAEO Claude skill installed.

Next:
1. Configure the MaxAEO MCP server in your Claude client.
2. Ask Claude: "Use MaxAEO to audit https://example.com for AI visibility."

MCP config examples live in shared/references/mcp-setup.md.
MSG
