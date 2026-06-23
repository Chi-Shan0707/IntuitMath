# Claude Code Adapter

## Support Tier

- Native skill: copy or symlink this whole repository to `.claude/skills/intuitmath/` so Claude Code can load `SKILL.md`.
- Native/legacy slash commands: copy `.claude/commands/intuit-*.md` into your project or user Claude command directory.

## Recommended Setup

```bash
mkdir -p ~/.claude/skills ~/.claude/commands
ln -sfn /absolute/path/to/IntuitMath.skill ~/.claude/skills/intuitmath
cp /absolute/path/to/IntuitMath.skill/adapters/claude-code/.claude/commands/intuit-*.md ~/.claude/commands/
```

Keep the skill folder reachable; command files intentionally delegate to `SKILL.md` and `commands/*.md` instead of duplicating all math behavior.
