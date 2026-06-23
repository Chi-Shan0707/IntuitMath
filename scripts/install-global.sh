#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

install_link() {
  local target="$1"
  local link="$2"
  mkdir -p "$(dirname "$link")"
  ln -sfn "$target" "$link"
  printf 'linked %s -> %s\n' "$link" "$target"
}

copy_glob() {
  local pattern="$1"
  local dest="$2"
  mkdir -p "$dest"
  cp $pattern "$dest"/
  printf 'copied %s -> %s\n' "$pattern" "$dest"
}

# Codex skill discovery
install_link "$ROOT" "${CODEX_HOME:-$HOME/.codex}/skills/intuitmath"

# Claude Code: modern skill location plus slash commands.
install_link "$ROOT" "$HOME/.claude/skills/intuitmath"
copy_glob "$ROOT/adapters/claude-code/.claude/commands/intuit-*.md" "$HOME/.claude/commands"

# Optional project-local command installs. Run from a project root to use these.
if [ "${1:-}" = "--project" ]; then
  copy_glob "$ROOT/adapters/opencode/.opencode/commands/intuit-*.md" ".opencode/commands"
  copy_glob "$ROOT/adapters/gemini-cli/.gemini/commands/intuit-*.toml" ".gemini/commands"
  copy_glob "$ROOT/adapters/claude-code/.claude/commands/intuit-*.md" ".claude/commands"
fi

cat <<EOF

Done.
- Codex can discover: ${CODEX_HOME:-$HOME/.codex}/skills/intuitmath
- Claude Code can discover: $HOME/.claude/skills/intuitmath
- Claude slash commands copied to: $HOME/.claude/commands
- For OpenCode/Gemini project commands, run from a project root: $ROOT/scripts/install-global.sh --project
EOF
