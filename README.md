<div align="center">

# IntuitMath

**A portable AI-agent skill for learning mathematics through intuition, proof, and discovery.**

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Agent Skill](https://img.shields.io/badge/SKILL.md-v1.0-8A2BE2)](SKILL.md)

</div>

---

## What It Does

IntuitMath turns an AI agent into a mathematical thinking partner. It explains *why* ideas exist before formalizing them: crisis → naive attempt → breakdown → repair → rigorous version.

Use it for:

- concept intuition and historical motivation;
- problem solving with strategy and sanity checks;
- proof, disproof, proof repair, and counterexample search;
- study planning from middle-school math to higher mathematics;
- polished Markdown or HTML/KaTeX notes.

<details>
<summary>Why this exists</summary>

Every student has felt it. You open a textbook, and the first thing you see is a definition:

> A function is integrable if...

But why this definition? Who needed it? What broke without it?

Most AI agents answer like textbooks: state the definition, prove the theorem, move on. Correct, complete, and often lifeless.

IntuitMath is built on a different belief: the definition is the *last* thing you should see, not the first. Before it, you deserve the story — the problem that demanded the invention, the bold attempts that failed, and the moment the old tools stopped being enough.

</details>

---

## Quick Install

```bash
git clone https://github.com/Chi-Shan0707/IntuitMath.skill.git
cd IntuitMath.skill
./scripts/install-global.sh
```

This links IntuitMath into:

- `${CODEX_HOME:-$HOME/.codex}/skills/intuitmath`
- `~/.claude/skills/intuitmath`
- `~/.claude/commands/intuit-*.md`

For project-local Claude/OpenCode/Gemini commands, run from that project root:

```bash
/path/to/IntuitMath.skill/scripts/install-global.sh --project
```

<details>
<summary>Manual install routes</summary>

| Platform | Route |
|---|---|
| Codex | Copy or symlink the folder to `${CODEX_HOME:-$HOME/.codex}/skills/intuitmath` |
| Claude Code | Copy or symlink to `~/.claude/skills/intuitmath`; copy command files from `adapters/claude-code/.claude/commands/` |
| OpenCode | Copy `adapters/opencode/.opencode/commands/*.md` into `.opencode/commands/` |
| Gemini CLI | Copy `adapters/gemini-cli/.gemini/commands/*.toml` into `.gemini/commands/` |
| Any agent | Keep the folder together and point the agent at `SKILL.md` |

</details>

---

## Slash Commands

| Command | Use |
|---|---|
| `/intuit-explain` | Explain a concept from motivation to rigor |
| `/intuit-solve` | Solve a problem with plan, execution, and checks |
| `/intuit-proof` | Prove, disprove, audit, or repair a theorem |
| `/intuit-study` | Build a study plan, prerequisite map, or practice ladder |
| `/intuit-note` | Create Markdown or HTML/KaTeX learning notes |

Try:

```text
/intuit-explain why eigenvalues exist
/intuit-proof prove every finite integral domain is a field
/intuit-study I can compute derivatives but do not understand epsilon-delta proofs
```

If your CLI has no native slash commands, use the command name as a prompt prefix and ask the agent to read `commands/<command>.md` plus `SKILL.md`.

---

## Coverage

| Strong | Partial / routed through general workflows |
|---|---|
| Calculus, real analysis, linear algebra, probability, optimization, PDE, discrete math, abstract algebra, proof transition, notes | Pre-algebra, geometry, trigonometry, statistics/data literacy, contest math, exam prep |

IntuitMath is a framework, not an encyclopedia. Domain depth lives in `subskills/`; execution guidance lives in `SKILL.md` and `ROUTES.json`.

---

## File Map

```text
IntuitMath.skill/
├── SKILL.md              # agent entry point
├── ROUTES.json           # compact routing index
├── commands/             # canonical portable / command specs
├── adapters/             # Claude Code, OpenCode, Gemini CLI, generic CLI wrappers
├── subskills/            # domain-specific math workflows
├── references/           # methodology, OCR, HTML, platform adapters
├── templates/            # HTML/KaTeX template
├── scripts/              # install, render HTML, save problems
└── test-cases/           # evaluation fixtures, not runtime context
```

<details>
<summary>Core method</summary>

For a concept `X`, IntuitMath asks:

1. What problem forced `X` to exist?
2. What tools were available before `X`?
3. What naive attempt breaks?
4. What does `X` repair?
5. What example, boundary case, or counterexample reveals the mechanism?
6. What is the rigorous statement or proof?
7. What reflection question tests real understanding?

Proof tasks use a Lakatos-style loop: conjecture → attempted proof → obstruction/counterexample → refined theorem → proof → skeptic pass.

</details>

<details>
<summary>HTML notes</summary>

```bash
python scripts/render-html.py \
  --title "Why Eigenvalues Matter" \
  --subtitle "Directions a transformation cannot rotate." \
  --tags "linear algebra,eigenvalues" \
  --section MOTIVATION=motivation.md \
  --section RIGOROUS_VERSION=rigor.md \
  --section REFLECTION=reflection.md \
  --out eigenvalues.html
```

See `references/html-output.md` and `templates/math-note.html`.

</details>

<details>
<summary>Design lineage</summary>

| Idea | Source | Use |
|---|---|---|
| Heuristic reasoning | Pólya | understand → plan → execute → reflect |
| Proofs and refutations | Lakatos | counterexamples refine the theorem |
| Motivation before technique | Lockhart | do not start with definitions |
| Pre-rigorous → rigorous → post-rigorous | Tao | intuition and rigor reinforce each other |

</details>

---

## Contributing

Useful additions: new subskills, sharper command adapters, worked toolkit-reconstruction cases, better HTML templates, and test cases.

## License

MIT.

<div align="center">

*Every definition was once a desperate solution to a problem someone could not ignore.*

</div>
