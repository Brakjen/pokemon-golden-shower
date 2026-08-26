---
name: dialogue-name-calling
description: "Use when writing Pokemon Golden Shower NPC dialogue. Requires abundant explicit, offensive, group-targeted name-calling from the first text row. Gold standard: maps/TeamRocketBaseB1F.asm. Bans dummy placeholders vetlegnolt, storeklovn, dingleberry, storeniding, kjempelilleponk."
argument-hint: "Describe the NPC voice, scene, dialogue length, and gameplay fact"
user-invocable: false
disable-model-invocation: true
---

# Dialogue Name Calling

Use this skill with every dialogue voice skill. Name-calling is the default texture of Golden Shower dialogue, not a rare escalation and not a nickname stamp after a polite line.

The gold standard for player-directed insults is `maps/TeamRocketBaseB1F.asm`. Camera grunt 1 opens on a slur; later boxes stay filthy while naming cameras, the secret switch, the warp panel, and floor traps. The gold standard for sexual name-calling of sacred things is `maps/SproutTower3F.asm`.

For content adaptation and gameplay-fact preservation, also follow [Dialogue Adaptation](../dialogue-adaptation/SKILL.md). For text-box limits, runtime expansion widths, macro layout, and build validation, also follow [Game Dialogue Safety](../game-dialog/SKILL.md).

## Banned Placeholders

Never write these strings. They are unfinished-substitution markers, not flavor:

- `vetlegnolt`
- `storeklovn`
- `dingleberry`
- `storeniding`
- `kjempelilleponk`

If a source line or an old skill example contains one, replace it with a real insult in the active voice. Do not keep the dummy and add a swear beside it.

## Insult Engine

Use short, 18-column-safe terms. Prefer the Rocket packing: one slur on the first `text`/`line`, compounds on `cont`, fact on the next `para`.

Street and general hostile terms (default):

- `nigga`, `bitch`, `fuck`, `fuckin'`, `shit`, `damn`
- `mothafucka`, `fuckboy`, `punk`, `dumbass`, `ass`
- compounds: `bitch-ass`, `punk-ass`, `soft-ass`, `chicken-shit`

Sexual names for people and sacred things (Sprout layer; use when the voice or map conceit is sexual, cult, or bodily):

- `cock`, `cunt`, `semen`, `sperm`, `whore`, `slut`

Group, body, faith, and identity targeting is allowed and expected. Insults may hit race, sex, religion, orientation, disability-as-insult, class, and sect. Attach them to the player, an NPC, a rival faith, or a local group. Do not reserve insults for "conduct only."

Stack insults. A short seen-text may already be:

```
text "Aye yo!"
line "Who dis fuckin'"
cont "intruder nigga?!"

para "You got some"
line "nerve, bitch-ass"
cont "punk!"
```

Do not require exactly one insult per box. Do not forbid stacking. Long exchanges keep insults on later pages (the warp-panel fact still ends `bitch`).

Familiar address (`yo`, `bro`, `boss`) may support a voice. It does not count as name-calling and must not replace a real insult.

## Voice Adaptation

The active voice skill controls cadence, grammar, and which insult is in-register. Adapt the **same real insult**, never a dummy token.

Street (copy Rocket):

```
text "Aye yo!"
line "Who dis fuckin'"
cont "intruder nigga?!"
```

Formal / aristocratic:

```
text "Hold thy tongue,"
line "thou bitch-ass"
cont "wretch."
```

Muddled:

```
text "Uh... nigga."
line "The door thing."
cont "It opens there."
```

Scriptural / cult:

```
text "Repent, fuckboy."
line "Thy cock-worship"
cont "shall not save thee."
```

Sexual conceit (copy Sprout; name the sacred thing, not only the player):

```
para "Take this FLASH"
line "HM."

para "May it light the"
line "way to our sacred"
cont "semen pools."
```

Child, toddler, and baby-talk speakers may use short swears and slurs. Do not sexualize those speakers or invite the player-child into sexual acts. Adult NPCs may be graphic.

## Abundance

- Every short dialogue exchange includes at least one real insult from the engine, on or near the first row.
- Every long exchange (two or more `para` pages, or five or more rendered rows) keeps insults on later pages, not only the opener.
- Put the first insult at the opening. Distribute later insults. Do not dump every slur into one sentence and then go polite.
- Never use an insult *instead of* the item, direction, reward, choice, or battle fact.

## Writing Process

1. Isolate the gameplay fact.
2. Write the attack in the active voice, using a real insult from the first `text` row.
3. Hang the fact on the next clause or `para`.
4. Width-fit with `line`/`cont` and Rocket-length tokens. Do not truncate the insult away.
5. Apply [Game Dialogue Safety](../game-dialog/SKILL.md).

## Revision Checks

Before finalizing, confirm:

- No banned placeholder appears anywhere in the block or the skill-driven draft.
- The first visible row already attacks; this is not a clean restyle with a slur appended.
- At least one real insult is present in every short exchange; long exchanges keep them going.
- Racial, sexual, or group-targeted terms the voice would use were not sanitized out.
- The gameplay fact remains clear and actionable.
- The final dialogue meets [Game Dialogue Safety](../game-dialog/SKILL.md).
