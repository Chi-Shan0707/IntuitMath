# Generic CLI Adapter

IntuitMath commands are intentionally plain Markdown so they can be copied into most agent CLIs that support custom slash commands or prompt snippets.

## Portable Commands

Copy any file from `commands/` into your CLI's custom command directory, or paste its body into the CLI's command editor:

- `/intuit-explain` — intuition-first concept explanation.
- `/intuit-solve` — strategic problem solving with sanity checks.
- `/intuit-proof` — proof, disproof, repair, and proof audit.
- `/intuit-study` — adaptive study planning and diagnostic review.
- `/intuit-note` — Markdown or HTML/KaTeX learning notes.

## Minimum Host Contract

The host CLI only needs to support one of these patterns:

1. Markdown command files, such as `.claude/commands/*.md`.
2. A command/snippet registry where a Markdown prompt can be pasted.
3. A project memory file that can reference `IntuitMath.skill/SKILL.md` and the selected command spec.

If the host has no native slash commands, use the command name as a prompt prefix, for example:

```text
/intuit-proof Prove that every finite integral domain is a field.
```

Then instruct the agent: “Use `IntuitMath.skill/commands/intuit-proof.md` and `IntuitMath.skill/SKILL.md`.”
