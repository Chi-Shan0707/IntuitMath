---
name: intuit-note
summary: Turn math explanations into elegant Markdown or HTML/KaTeX learning notes.
argument-hint: <topic or source material> [--html] [--markdown] [--save]
---

# /intuit-note

Use IntuitMath to produce polished notes, visual explanations, or a single-file HTML/KaTeX artifact.

## Input
- Topic, solved problem, lecture notes, proof, or pasted source material.
- Optional output target: Markdown, HTML, one-page summary, or full study note.

## Procedure
1. Load `SKILL.md` and route by domain.
2. If HTML is requested, load `references/html-output.md` and `templates/math-note.html`.
3. Build the note sections:
   - **The Problem That Forced the Idea**
   - **Intuition Before Formalism**
   - **Definitions and Theorems**
   - **Worked Examples**
   - **Common Traps and Counterexamples**
   - **Cross-Domain Lens**
   - **Reflection Questions**
4. If file tools exist and `--html` or `--save` is requested, use `scripts/render-html.py` when practical.

## Output Contract
- Keep typography clean and math readable.
- Prefer diagrams/tables when they clarify structure.
- Report saved artifact paths when files are created.
