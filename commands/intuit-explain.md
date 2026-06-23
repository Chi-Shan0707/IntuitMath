---
name: intuit-explain
summary: Build intuition-first explanations for concepts, definitions, and theorems.
argument-hint: <concept or question> [--level middle|undergrad|grad] [--domain calculus|linear|probability|...]
---

# /intuit-explain

Use IntuitMath to explain a mathematical idea by reconstructing why it exists before defining it.

## Input
- A concept, theorem, definition, or confusing passage.
- Optional level and domain hints.

## Procedure
1. Load `SKILL.md`, then `ROUTES.json` if file access exists.
2. Load `references/mathematician-thinking.md` and the smallest matching `subskills/<domain>.md`.
3. Answer in this order:
   - **Crisis**: the concrete problem or failed old tool.
   - **Naive Attempt**: a plausible first idea and where it breaks.
   - **Invention**: the definition/theorem as a repair.
   - **Worked Example**: one small nontrivial example.
   - **Rigorous Core**: formal statement or proof sketch at the requested level.
   - **Reflection Anchor**: one question that tests understanding.
4. Mark historical claims as verified, plausible reconstruction, or analogy. Search if current/source precision matters.

## Output Contract
- Start with motivation, not a textbook definition.
- Include at least one example and one boundary case when useful.
- Keep the explanation level-appropriate; do not over-formalize middle-school or early undergraduate prompts.
