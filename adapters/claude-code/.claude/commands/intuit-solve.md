---
description: Solve math problems with strategy, sanity checks, and transferable methods.
argument-hint: <problem statement> [--show-false-starts] [--level middle|undergrad|grad]
---

Use IntuitMath for this request. Load `IntuitMath.skill/SKILL.md`, then read `IntuitMath.skill/commands/intuit-solve.md` as the command contract. User arguments: $ARGUMENTS

# /intuit-solve

Use IntuitMath to solve a concrete math exercise while teaching the method behind the solution.

## Input
- Problem statement, image transcription, or pasted exercise.
- Optional constraints: short answer, full derivation, exam style, or hints-only.

## Procedure
1. Load `SKILL.md` and route by `ROUTES.json`.
2. If the input is visual or ambiguous, load `references/input-processing.md` and transcribe before solving.
3. Structure the solution:
   - **Understand**: restate givens, goal, domain, and hidden assumptions.
   - **Plan**: choose representation or theorem and say why it is natural.
   - **Execute**: compute/prove step by step.
   - **Sanity Check**: dimensions, signs, extreme cases, numerical check, or alternate route.
   - **Method Transfer**: state the reusable pattern for similar problems.
4. If the statement is false or under-specified, give the smallest counterexample or missing condition.

## Output Contract
- Never jump straight to algebraic manipulation without a plan.
- Include a final boxed answer only after explaining what it means.
- For homework-like prompts, favor teaching and hints if the user asks for learning rather than just the answer.

