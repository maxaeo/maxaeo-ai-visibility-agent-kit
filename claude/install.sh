#!/usr/bin/env bash
set -euo pipefail

SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(cd "$SOURCE_DIR/.." && pwd)"
TARGET_DIR="${HOME}/.claude/skills/maxaeo-ai-visibility"
COMMAND_DIR="${HOME}/.claude/commands"

mkdir -p "$TARGET_DIR"
mkdir -p "$TARGET_DIR/shared"
mkdir -p "$COMMAND_DIR"
cp "$SOURCE_DIR/SKILL.md" "$TARGET_DIR/SKILL.md"
cp -R "$REPO_DIR/shared/references" "$TARGET_DIR/shared/"
cp "$SOURCE_DIR/commands/maxaeo.md" "$COMMAND_DIR/maxaeo.md"

cat <<'MSG'
MaxAEO Claude skill installed.

Next:
1. Configure the MaxAEO MCP server in your Claude client.
2. Run: /maxaeo audit https://example.com --locale en-US --market global
3. Chinese market: /maxaeo audit https://example.com --zh --cn

MCP config examples live in shared/references/mcp-setup.md.
MSG
