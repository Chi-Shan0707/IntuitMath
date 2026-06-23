---
description: Prove, disprove, or repair statements using conjecture-counterexample-proof loops.
argument-hint: <claim/theorem/proof draft> [--prove|--disprove|--audit|--repair]
---

Use IntuitMath for this request. Load `IntuitMath.skill/SKILL.md`, then read `IntuitMath.skill/commands/intuit-proof.md` as the command contract. User arguments: $ARGUMENTS

# /intuit-proof

Use IntuitMath for proof construction, proof auditing, false conjectures, and theorem repair.

## Input
- A theorem statement, proof draft, or conjecture.
- Optional mode: prove, disprove, audit, repair, or find missing assumptions.

## Procedure
1. Load `SKILL.md`, `references/mathematician-thinking.md`, and the relevant subskill.
2. Identify quantifiers, domains, regularity assumptions, dimensions, and edge cases.
3. Run the Lakatos loop:
   - **Naive Conjecture**: restate the claim in plain language.
   - **Proof Strategy**: explain why a method might work.
   - **Obstruction Search**: test small, degenerate, and boundary cases.
   - **Counterexample or Refined Theorem**: if needed, repair assumptions.
   - **Rigorous Proof**: write the formal proof with named lemmas.
   - **Skeptic Pass**: audit hidden assumptions and equality cases.
4. If the proof draft is flawed, quote only the relevant step and explain the exact failure.

## Output Contract
- Separate intuition, formal proof, and audit.
- Do not claim a theorem is true until counterexample search has been addressed.
- If uncertain, state the strongest proven version rather than overclaiming.

