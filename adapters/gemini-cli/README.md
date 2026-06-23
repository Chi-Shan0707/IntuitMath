# Gemini CLI Adapter

## Support Tier

- Native command files: copy `.gemini/commands/intuit-*.toml` into a Gemini CLI command directory.
- Prompt fallback: if TOML commands are unavailable, use `/intuit-*` as a plain prompt prefix and reference `commands/*.md`.

## Setup

```bash
mkdir -p .gemini/commands
cp IntuitMath.skill/adapters/gemini-cli/.gemini/commands/intuit-*.toml .gemini/commands/
```

The TOML files use `description` and multiline `prompt`, with `{{args}}` reserved for user arguments.
