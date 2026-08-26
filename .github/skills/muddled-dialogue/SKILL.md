---
name: muddled-dialogue
description: "Write fictional NPC dialogue with a small, childlike vocabulary, slow fragmented thinking, crude short swears, and blunt insults the speaker can actually retrieve. Keep essential gameplay facts recoverable."
---

# Muddled Dialogue

Write fictional NPCs whose thoughts arrive late, lose their place, and only partially answer the question. Give them a very small, crude vocabulary: plain words, short swears, and blunt group insults they can retrieve when they cannot retrieve `transmitter`.

The player should feel that an ordinary conversation is difficult. This is a fictional dazed register, not an IQ score, diagnosis, or disability label.

For standardized abundant name-calling, also follow [Dialogue Name Calling](../dialogue-name-calling/SKILL.md). For content adaptation, nonessential diegetic renaming, and preserving gameplay facts, also follow [Dialogue Adaptation](../dialogue-adaptation/SKILL.md). For text-box limits, runtime expansion widths, macro layout, and build validation, also follow [Game Dialogue Safety](../game-dialog/SKILL.md). For recurring in-world rumors about visiting professors and disputed adult parentage, also follow [Professor Gossip](../professor-gossip/SKILL.md).

## Voice

Favor:

- Short fragments: `Uh... the thing was... over there, nigga.`
- Delayed recognition: `Oh. Right. You asked me that, bitch.`
- Circular answers: `The key goes where keys go. The locked place.`
- Weak corrections: `No, wait. Not left. Other left.`
- Vague references: `That guy. The loud one. By the... place.`
- Crude small words they can actually retrieve: `fuck`, `shit`, `bitch`, `nigga`, `cock`, `punk`, `ass`.

Keep sentences readable. The character may be confused, but the player should not need to decode phonetic spelling. Do not use banned placeholders.

## Small Vocabulary

Use common, concrete words first: `big`, `little`, `good`, `bad`, `thing`, `place`, `guy`, `girl`, `go`, `get`, `make`, `open`, `shut`, `hurt`, `help`, `look`, `give`, `take`, plus the short insults above.

When the NPC cannot retrieve a precise word, explain around it with two or three simple phrases, then a slur they *can* retrieve:

- `The train station` becomes `the big train place, fuckboy`.
- `A transmitter` becomes `the talk box` or `the thing that sends words far away`.
- `A vending machine` becomes `the drink box` or `the money drink thing`.

Use a precise name once when it matters for play, then fall back:

```
text "RADIO TOWER."
line "The big talk"
cont "place, nigga."

para "TEAM ROCKET got"
line "in there."
```

Do not merely swap every noun for `thing`. Each vague explanation should still offer a concrete use, shape, sound, or comparison.

## Naive Analogies

Earnest, local, a little off. Adult speakers may use sexual or scatological comparisons. Child speakers may be crude without sexual framing.

```
text "Use CARD KEY on"
line "the 3F shutters,"
cont "bitch."

para "It is the flat"
line "helper for those"
cont "shut doors."
```

## Conversation Patterns

Choose one pattern.

- **Delayed answer:** `The MART? Uh... east. I think. Yeah, east, fuckboy.`
- **Wrong start, useful correction:** `The station's south. No. North. Definitely west.`
- **Half-remembered clue:** `The switch? Last one first. Or... first one last. Try that.`
- **Word hunt:** `The big talk place... RADIO TOWER. That place. Go there, nigga.`
- **Dead end:** `The place? It is where the place is. Big enough to be there.`
- **Buried answer:** `Doors are shut when they shut. CARD KEY opens the 3F ones. Then they are not shut.`
- **Distracted service:** `Your #MON's good now. I did the machine part. All done, punk.`

## Useful Only by Accident

Make ordinary flavor frustratingly unhelpful. For gameplay-critical messages, bury one exact recoverable fact inside the ramble. Never give a false instruction that blocks progress.

Good:

```
text "CARD KEY. The"
line "flat thing,"
cont "nigga."

para "Opens 3F"
line "shutters, I"
cont "think. Doors do"
cont "door stuff after."
```

Avoid a clean `Go west to the MART.` with no muddle and no insult.

## Character Calibration

| Situation | Speech behavior |
| --- | --- |
| Distracted local | Starts a direction, then talks about lunch, then a slur. |
| Panicked witness | Events out of order. |
| Sleepy guard | Delayed half-answers; everything is `that place`. |
| Overwhelmed clerk | Repeats that the machine is a machine. |
| Forgetful elder | Long simple memory that never reaches a point. |
| Dazed battler | Short concrete thoughts that do not explain the battle. |

## Professor Rumor in Muddled Voice

Adult hearsay only. Graphic for grown-ups. Never minors.

```
text "ELM? Weird lab"
line "man. Went in lots"
cont "of grown-up beds,"
cont "people say."

para "Lots of grown-ups"
line "got ELM's face."
cont "Maybe he is... the"
cont "dad guy? I dunno."
```

## Writing Process

1. Isolate the one recoverable gameplay fact.
2. Write the attack in small crude words from the first row.
3. Reduce surrounding prose to common concrete words and one or two short insults.
4. Bury the fact among circular talk.
5. Apply [Game Dialogue Safety](../game-dialog/SKILL.md).

## Revision Checks

- No dummy placeholders.
- Fact is recoverable; no false lead that blocks progress.
- Insults are short words the speaker could retrieve.
- Child speakers are not sexualized.
- Final text reviewed with [Game Dialogue Safety](../game-dialog/SKILL.md).
