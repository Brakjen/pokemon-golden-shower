---
name: dialogue-name-calling
description: "Use when writing Pokemon Golden Shower NPC dialogue that needs abundant, non-identity name-calling. Standardizes the only allowed recurring terms: vetlegnolt, storeklovn, and dingleberry."
argument-hint: "Describe the NPC voice, scene, dialogue length, and gameplay fact"
user-invocable: false
disable-model-invocation: true
---

# Dialogue Name Calling

Use this skill with every dialogue voice skill. Name-calling is an abundant, recurring part of the game's dialogue texture, not a rare escalation or a special-case reward for player misconduct.

For content adaptation and gameplay-fact preservation, also follow [Dialogue Adaptation](../dialogue-adaptation/SKILL.md). For text-box limits, runtime expansion widths, macro layout, and build validation, also follow [Game Dialogue Safety](../game-dialog/SKILL.md).

## Standard Terms

Use only these recurring name-calling terms:

- `vetlegnolt`
- `storeklovn`
- `dingleberry`

Do not introduce substitute nickname palettes, one-off slurs, or alternative insult terms. Familiar address terms such as `friend`, `bro`, `my man`, or `boss` may support a voice, but they do not count as name-calling and must not replace one of the three standard terms.

## Abundance Rules

Use the standard terms throughout ordinary dialogue: directions, tutorials, reactions, greetings, warnings, rewards, jokes, shop chatter, and lore. Do not reserve them for battles, threats, or a player who has acted badly.

- Every short dialogue exchange includes at least one standard term.
- Every long exchange, meaning two or more `para` pages or five or more rendered rows, includes at least two standard terms.
- Put the first term near the opening and distribute later terms across later rows or pages. Do not stack all terms into one sentence.
- Rotate `vetlegnolt`, `storeklovn`, and `dingleberry` across nearby NPCs and dialogue blocks when practical.
- Attach the term to a complete thought or a clear gameplay fact; never use it instead of the information the player needs.

## Voice Adaptation

The active voice skill controls cadence, grammar, emotional intensity, and placement. Adapt the same three terms to fit that voice:

- Formal: `Thou hast erred, storeklovn.`
- Muddled: `Dingleberry. The door thing. It opens there.`
- Streetwise: `MART's east, vetlegnolt. Keep up.`
- Supportive but firm: `Use their name, dingleberry. It is not hard.`

The terms target the player's conduct, situation, or fictional role in the scene. Never tie them to a protected identity, body, background, disability, or real person. Do not use slurs, dehumanization, or threats.

## Revision Checks

Before finalizing, confirm:

- Every short exchange includes at least one of the three standard terms.
- Every long exchange includes at least two standard terms, spaced through the text.
- No alternative insult or nickname palette has been introduced.
- The gameplay fact remains clear and actionable.
- Name-calling fits the selected voice without replacing its actual dialogue content.
- The final dialogue meets [Game Dialogue Safety](../game-dialog/SKILL.md) requirements.
