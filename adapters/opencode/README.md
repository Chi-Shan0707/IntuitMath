# OpenCode Adapter

## Support Tier

- Native command files: copy `.opencode/commands/intuit-*.md` into an OpenCode command directory.
- Skill behavior: keep `IntuitMath.skill/SKILL.md` reachable from the working directory or paste the absolute path in the command prompt.

## Setup

```bash
mkdir -p .opencode/commands
cp IntuitMath.skill/adapters/opencode/.opencode/commands/intuit-*.md .opencode/commands/
```

The command files use `description` frontmatter and `$ARGUMENTS` for the user prompt.
