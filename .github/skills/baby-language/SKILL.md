---
name: baby-language
description: "Write fictional NPC dialogue in exaggerated baby or toddler talk: goo-goo sounds, simple grammar, potty-mouth swears, and short real insults. Keep gameplay facts recoverable. Never sexualize the child speaker."
argument-hint: "Describe the speaker, scene, and gameplay fact to preserve"
user-invocable: false
disable-model-invocation: true
---

# Baby Language

Write a playful fictional dialogue register built from toddler talk, baby sounds, potty-mouth swears, and deliberately simple grammar. The speaker can say `goo goo`, `gaa gaa`, `baba`, `mama`, or `nyum`, confuse long words, and blurt a short real insult. The result should sound exaggerated and vicious-comic, but the player must still pick up a small clue.

This is a stylized character voice, not a statement about real children. Child speakers may be crude and insulting. They must not be sexualized: no sexual acts, body-sex descriptions, or adult sexual framing of the child speaker or other children.

For text-box limits, runtime expansion widths, macro layout, and build validation, also follow [Game Dialogue Safety](../game-dialog/SKILL.md). For name-calling, also follow [Dialogue Name Calling](../dialogue-name-calling/SKILL.md).

## Voice

Favor:

- Baby sounds: `Goo goo!`, `Gaa gaa!`, `Baba!`, `Nyum nyum!`
- Short, simple grammar: `Me see big bird.`
- Childish repetitions: `Big big tower. So big.`
- Direct emotional words: `Scawy!`, `Yay!`, `No no!`, `Uh-oh!`
- Small substitutions: `wittle`, `pwease`, `fwend`, `tummy`, `nappy`, `sweepy`
- Potty talk: `poo poo`, `pee pee`, `stinky`
- Short real insults the speaker can blurt: `bitch`, `punk`, `dumbass`, `nigga`, `fuck`

Use misspellings sparingly. One or two altered words per short text box is enough. Do not make every word phonetic.

Banned placeholders: never write `vetlegnolt`, `storeklovn`, `dingleberry`, `storeniding`, or `kjempelilleponk`. Those are dummy tokens. Replace them with a short real insult.

## Controlled Misspellings

| Ordinary word | Baby-language option |
| --- | --- |
| little | `wittle` |
| please | `pwease` |
| friend | `fwend` |
| sleep | `sweep` |
| scary | `scawy` |
| really | `weally` |
| look | `wook` |
| love | `wuv` |
| hungry | `hungwy` |
| sorry | `sowwy` |

Do not add proper names, map names, compass directions, floor numbers, item names, move names, or technical words just to preserve story accuracy. Babies do not know those words. Use simple visible clues: `big talk house`, `red roof`, `up place`, `flat key thing`, `big shut door`. The speaker may point with `that way` but never says `east`, `west`, `north`, or `south`.

## Name Calling

Use at most one heavy insult in a short message. Blurt it, then return to small words.

```
text "No no, bitch!"
line "Big door go"
cont "clunk!"
```

```
text "Gaa gaa, punk!"
line "Red roof that"
cont "way!"
```

```
text "Dumbass! Me saw"
line "big bird. Big big"
cont "bird."
```

## Information Rules

Flavor dialogue may be very silly. Important dialogue may contain one small recoverable clue in the speaker's limited words:

- Landmark: `Big shop that way. By red roof!`
- Person by one obvious trait: `Bird boss in big fight house.`
- Item by shape or use: `Flat key thing go click-click!`
- Condition simply: `Shiny badge make light move go.`
- Choices simple: `Take egg? Yes egg. No no egg.`

Never give a false action or false landmark. The clue can be buried in baby noise, but it cannot send the player the wrong way.

## Character Calibration

| Speaker | Use of the voice |
| --- | --- |
| Excited toddler | Colors, sounds, snacks, one landmark, one blurted insult. |
| Nursery mascot | Repeats simple actions; comic viciousness. |
| Playful adult performer | Uses baby talk knowingly for comedy; may be filthier without sexualizing a child. |
| Toy-loving child | Explains #MON through simple sounds and games. |
| Sleepy youngster | A few baby words, fades into `sweepy` fragments. |

## Writing Process

1. Identify the speaker's scene-specific reason for toddler talk.
2. Isolate one small clue.
3. Write that clue in ordinary short words.
4. Add one baby sound, repetition, or controlled misspelling, plus at most one short real insult.
5. Replace names, directions, and technical terms with shapes, sounds, colors, nearby objects, and simple actions.
6. Apply [Game Dialogue Safety](../game-dialog/SKILL.md).

## Examples

Direction:

```
text "Goo goo! Big shop"
line "that way, punk."
cont "Red roof!"
```

Battle warning:

```
text "Boo thing, bitch!"
line "No punch work."
```

Item:

```
text "Flat key thing go"
line "click-click,"
cont "dumbass."

para "Big door open."
```

Service:

```
text "All milked!"
line "#MON feel betta"
cont "now, punk."
```

## Revision Checks

- No dummy placeholders.
- No sexual framing of the child speaker or other children.
- One recoverable clue; no false landmark.
- At most one heavy insult per short box.
- Final text reviewed with [Game Dialogue Safety](../game-dialog/SKILL.md).
