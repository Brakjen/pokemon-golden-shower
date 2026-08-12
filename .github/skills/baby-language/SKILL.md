---
name: baby-language
description: "Write fictional NPC dialogue in exaggerated baby or toddler talk: goo-goo sounds, simple grammar, controlled misspellings, and small useful clues. Use for playful toddlers, toy-room characters, nursery scenes, childish mascots, and comic NPCs while keeping gameplay facts recoverable."
argument-hint: "Describe the speaker, scene, and gameplay fact to preserve"
user-invocable: false
disable-model-invocation: true
---

# Baby Language

Write a playful fictional dialogue register built from toddler talk, baby sounds,
and deliberately simple grammar. The speaker can say `goo goo`, `gaa gaa`,
`baba`, `mama`, or `nyum`, confuse long words, and use a few controlled
misspellings. The result should sound exaggerated and comedic, but the player
must still be able to pick up a small, simple clue about what to do.

This is a stylized character voice, not a statement about real children,
disability, intelligence, language learners, or any real-world group. Use it
for a fictional speaker with a scene-specific reason to talk this way.

For text-box limits, runtime expansion widths, macro layout, and build
validation, also follow [Game Dialogue Safety](../game-dialog/SKILL.md).

## Voice

Favor:

- Baby sounds: `Goo goo!`, `Gaa gaa!`, `Baba!`, `Nyum nyum!`
- Short, simple grammar: `Me see big bird.`
- Childish repetitions: `Big big tower. So big.`
- Direct emotional words: `Scawy!`, `Yay!`, `No no!`, `Uh-oh!`
- Small substitutions: `wittle`, `pwease`, `fwend`, `tummy`, `nappy`, `sweepy`
- Sound-effect descriptions: `Door go clunk!`, `Train go choo-choo!`
- Concrete gestures and locations: `That way! By big tree!`
- Playful fragments: `Me not know. Me know little.`

Use misspellings sparingly and consistently. One or two altered words per
short text box is usually enough. Do not make every word phonetic or turn the
dialogue into a cipher.

## Controlled Misspellings

Use easy-to-read toddler-style changes:

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

Do not add proper names, map names, compass directions, floor numbers, item
names, move names, or technical words just to preserve story accuracy. Babies
do not know those words. Use simple, visible clues instead: `big talk house`,
`red roof`, `up place`, `flat key thing`, or `big shut door`. The speaker may
point with `that way` or name a nearby object, but never says `east`, `west`,
`north`, or `south`.

## Name Calling

Reuse the Azalea muddled-dialogue nickname palette. In baby language, these
are little blurts, repeated sounds, or silly labels rather than clever insults.

Use these put-downs: `storeniding`, `kjempelilleponk`, `storeklovn`,
`vetlegnolt`, `dingleberry`, and `weakling`.

Keep the words simple around the nickname. A toddler can blurt a long silly
name without understanding it, then return to small words:

- `No no, weakling! Big door go clunk!`
- `Gaa gaa, dingleberry! Red roof that way!`
- `Storeklovn! Me saw big bird. Big big bird.`
- `Vetlegnolt! No touchy. Hot hot.`

Use no more than one nickname in a short message. Aim it at a character's
immediate behavior, never their identity, body, background, or real-world
group. Do not use identity-based slurs.

## Information Rules

Flavor dialogue may be very silly, repetitive, or nearly useless. Important
dialogue may contain one small, recoverable clue, but it must stay within the
speaker's limited words:

- Give a landmark: `Big shop that way. By red roof!`
- Describe a person by one obvious trait: `Bird boss in big fight house.`
- Describe an item by shape or use: `Flat key thing go click-click!`
- Describe a condition simply: `Shiny badge make light move go.`
- Keep choices simple: `Take egg? Yes egg. No no egg.`
- Preserve only the basic action and outcome: `Give shiny thing. You get it.`

Never give a false action or false landmark. The clue can be incomplete,
imprecise, and buried in baby noise, but it cannot knowingly send the player
the wrong way. The joke belongs around the clue, not in place of it.

## Rhythm and Layout

- Start or end an exchange with one baby sound, not every row.
- Use repetition to emphasize a clue: `Big shop. Big big shop.`
- Keep sentences short enough to read at a glance.
- Pair a silly phrase with a visible cue: `Choo-choo go by big house.`
- Let an emotional reaction interrupt an explanation: `Boo thing! No punch
  work.`
- Use `goo goo` and `gaa gaa` as flavor, not as substitutes for information.

For GBZ80 dialogue, split text naturally with `line` and `cont`; do not rely
on spelling mistakes to squeeze a needed instruction into an overlong row.

## Character Calibration

Give the voice a local purpose.

| Speaker | Use of the voice |
| --- | --- |
| Excited toddler | Notices colors, sounds, snacks, and one obvious landmark. |
| Nursery mascot | Cheerfully repeats simple actions, treats, or landmarks. |
| Playful adult performer | Uses baby talk knowingly for comedy without breaking the voice for exposition. |
| Toy-loving child | Explains #MON or items through simple sounds and games. |
| Sleepy youngster | Uses a few baby words and fades into `sweepy` fragments. |

Do not assign the register to a character merely because they are confused,
foreign, disabled, elderly, or being corrected. Keep it voluntary, playful,
or grounded in the immediate scene.

## Writing Process

1. Identify the speaker's scene-specific reason for using toddler talk.
2. Isolate one small clue the speaker could plausibly notice.
3. Write that clue in ordinary, short words first.
4. Add one baby sound, repetition, or controlled misspelling around it.
5. Replace names, directions, and technical terms with shapes, sounds, colors,
   nearby objects, and simple actions.
6. Remove any false clue that could send the player to the wrong place.
7. Apply [Game Dialogue Safety](../game-dialog/SKILL.md) before finalizing.

## Examples

| Plain purpose | Baby-language rewrite |
| --- | --- |
| Give a direction | `Goo goo! Big shop that way. Red roof!` |
| Give a battle warning | `Boo thing! No punch work.` |
| Explain an item | `Flat key thing go click-click. Big door open.` |
| Offer a reward | `Yay yay! Take shiny thing. Make move go.` |
| Explain a service | `All laekjaed! #MON feel betta now.` |
| Give a choice | `Take egg? Yes egg. No no egg.` |