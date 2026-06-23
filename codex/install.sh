#!/usr/bin/env bash
set -euo pipefail

SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(cd "$SOURCE_DIR/.." && pwd)"
TARGET_DIR="${HOME}/.codex/skills/maxaeo-ai-visibility"

mkdir -p "$TARGET_DIR"
mkdir -p "$TARGET_DIR/shared"
cp "$SOURCE_DIR/SKILL.md" "$TARGET_DIR/SKILL.md"
cp -R "$REPO_DIR/shared/references" "$TARGET_DIR/shared/"

cat <<'MSG'
MaxAEO Codex skill installed.

Next MCP setup:
  codex mcp add maxaeo-ai-visibility npx -y github:maxaeo/maxaeo-ai-visibility-mcp

After npm publishing:
  codex mcp add maxaeo-ai-visibility npx -y maxaeo-ai-visibility-mcp
MSG
