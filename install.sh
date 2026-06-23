#!/usr/bin/env bash
set -euo pipefail

MODE="all"
CONFIGURE_MCP="1"
RAW_BASE="${MAXAEO_AGENT_KIT_RAW_BASE:-https://raw.githubusercontent.com/maxaeo/maxaeo-ai-visibility-agent-kit/main}"

usage() {
  cat <<'MSG'
MaxAEO AI Visibility Agent Kit installer

Usage:
  ./install.sh [--all|--claude|--codex] [--no-mcp]

Examples:
  curl -fsSL https://raw.githubusercontent.com/maxaeo/maxaeo-ai-visibility-agent-kit/main/install.sh | bash
  curl -fsSL https://raw.githubusercontent.com/maxaeo/maxaeo-ai-visibility-agent-kit/main/install.sh | bash -s -- --codex
  curl -fsSL https://raw.githubusercontent.com/maxaeo/maxaeo-ai-visibility-agent-kit/main/install.sh | bash -s -- --claude --no-mcp
MSG
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --all) MODE="all" ;;
    --claude) MODE="claude" ;;
    --codex) MODE="codex" ;;
    --no-mcp) CONFIGURE_MCP="0" ;;
    -h|--help) usage; exit 0 ;;
    *) echo "Unknown option: $1" >&2; usage; exit 1 ;;
  esac
  shift
done

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" 2>/dev/null && pwd || true)"

has_local_file() {
  [[ -n "$SCRIPT_DIR" && -f "$SCRIPT_DIR/$1" ]]
}

copy_or_download() {
  local source_path="$1"
  local target_path="$2"
  mkdir -p "$(dirname "$target_path")"
  if has_local_file "$source_path"; then
    cp "$SCRIPT_DIR/$source_path" "$target_path"
  else
    curl -fsSL "$RAW_BASE/$source_path" -o "$target_path"
  fi
}

install_refs() {
  local target_root="$1"
  local refs=(
    commands.md
    crawler-user-agents.md
    cta-policy.md
    mcp-setup.md
    methodology.md
    report-template.md
    scoring.md
  )
  mkdir -p "$target_root/shared/references"
  for ref in "${refs[@]}"; do
    copy_or_download "shared/references/$ref" "$target_root/shared/references/$ref"
  done
}

install_claude() {
  local target_dir="${HOME}/.claude/skills/maxaeo-ai-visibility"
  local command_dir="${HOME}/.claude/commands"
  mkdir -p "$target_dir" "$command_dir"
  copy_or_download "claude/SKILL.md" "$target_dir/SKILL.md"
  copy_or_download "claude/commands/maxaeo.md" "$command_dir/maxaeo.md"
  install_refs "$target_dir"
  echo "Installed Claude skill: $target_dir"
  echo "Installed Claude command: $command_dir/maxaeo.md"
}

install_codex() {
  local target_dir="${HOME}/.codex/skills/maxaeo-ai-visibility"
  mkdir -p "$target_dir"
  copy_or_download "codex/SKILL.md" "$target_dir/SKILL.md"
  install_refs "$target_dir"
  echo "Installed Codex skill: $target_dir"
}

configure_codex_mcp() {
  if ! command -v codex >/dev/null 2>&1; then
    echo "Codex CLI not found; configure MCP manually later."
    return 0
  fi
  if codex mcp list 2>/dev/null | grep -q '^maxaeo-ai-visibility[[:space:]]'; then
    echo "Codex MCP server already configured: maxaeo-ai-visibility"
    return 0
  fi
  codex mcp add maxaeo-ai-visibility npx -y github:maxaeo/maxaeo-ai-visibility-mcp
}

case "$MODE" in
  all)
    install_claude
    install_codex
    ;;
  claude) install_claude ;;
  codex) install_codex ;;
esac

if [[ "$CONFIGURE_MCP" == "1" && ( "$MODE" == "all" || "$MODE" == "codex" ) ]]; then
  configure_codex_mcp
fi

cat <<'MSG'

Next test prompts:
  Claude: /maxaeo audit https://example.com --locale en-US --market global
  Codex:  $maxaeo-ai-visibility audit https://example.com --locale en-US --market global

No MaxAEO cloud API calls, domain uploads, hidden telemetry, or website file edits are enabled by default.
MSG
