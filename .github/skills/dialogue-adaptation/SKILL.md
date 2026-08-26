---
name: dialogue-adaptation
description: "Use when rewriting Pokemon Golden Shower NPC dialogue in any character voice: preserve gameplay-critical facts while inventing hostile, explicit flavor, map-wide obscene conceits, and nonessential diegetic terminology. First draft is already vicious; never a polite restyle."
argument-hint: "Describe the dialogue's gameplay purpose, story relevance, and target voice"
user-invocable: false
disable-model-invocation: true
---

# Dialogue Adaptation

Use this skill with every character, dialect, venue, and tone skill when rewriting player-facing game dialogue. Preserve what the player must know or do. Invent everything else so each NPC has a reason to speak in the target voice, and so that voice is already explicit and hostile.

For text-box limits, runtime expansion widths, macro layout, and build validation, also follow [Game Dialogue Safety](../game-dialog/SKILL.md). For name-calling, also follow [Dialogue Name Calling](../dialogue-name-calling/SKILL.md).

Gold maps: `maps/SproutTower3F.asm` (map-wide sexual conceit restated by every speaker, FLASH/badge facts inside it) and `maps/TeamRocketBaseB1F.asm` (insult from row one, warp panel / traps / switch in the same filthy boxes). A rewrite that would reject those files is wrong.

## The Adaptation Boundary

Classify the original text before rewriting.

### Preserve Exactly When Needed

Keep a fact, choice, or proper name exact when the player needs it to:

- Navigate to a required map, building, person, menu, or system.
- Use an item, move, service, or feature correctly.
- Understand a reward, cost, battle condition, prerequisite, event state, or branch outcome.
- Answer a yes/no prompt or other choice without changing its meaning.
- Follow an active story objective or identify a story-critical character, place, or object.
- Interpret dynamic game values such as item names, map names, trainer names, numbers, or player input.

Preservation concerns meaning, not original phrasing. State the required fact plainly somewhere in the revised dialogue.

### Freely Reinvent

Treat these as raw material for the target voice rather than wording to preserve:

- Random NPC chatter, idle observations, reactions, jokes, gossip, and local color.
- Incidental facts that do not control an objective, branch, reward, or service outcome.
- Exposition that can be replaced without obscuring an active plot or a required destination.
- Generic praise, apologies, filler, greetings, farewells, and flavor descriptions.
- Nonessential in-world labels, including facility, device, trade, club, show, or local-custom names.

When a non-story NPC has no material gameplay purpose, invent a specific grievance, rumor, vice, sexual boast, or social attack that suits the NPC and the active voice. Paraphrase-without-venom is a failure, same as paraphrase-without-voice. The invented opinion is hostile, explicit, and specific: who is despised, on what axis, in this scene.

Do not invent sexual participation for the player-child, students, toddlers, or other minors. Adult NPCs may be graphic.

## Map Conceit

For a location, invent or keep one explicit local idea: a cult, racket, rumor, vice, or shared insult. Every speaker on that map restates it. Signs, statues, paintings, and switch text too.

Sprout Tower is the density model: elder, sages, rival, painting, and statue all recycle flappy/erect cocks, semen pools, and milking rooms. A single dirty NPC plus a vanilla painting is a failed rewrite.

`maps/TeamRocketBaseB1F.asm` still has vanilla `SecurityCameraText` and `SwitchOffText`. Treat leftover object text in the old voice as a bug.

Do not isolate the explicit material to one NPC or one `para`.

## Diegetic Renaming

Do not retain an official in-world term solely because it appears in the original dialogue. When a label is not necessary for navigation, a menu, a command, or a quest step, replace it with a memorable name the speaker would naturally use.

Use names that still communicate the feature's function. A system that sends trades to an earlier era might become a `yesterday box`, an `old-days relay`, or a `forefathers' wire` — or, in a sexual conceit, something the voice would actually say.

The target voice chooses the final term. Keep an exact official name only when the player needs it to find a destination, use a system, or complete a mission. If the exact label is required, keep it once in the actionable instruction, then let the NPC use the invented name in surrounding flavor.

Avoid italics, all-caps emphasis, or faux product branding unless the gameplay interface requires the exact official name.

## Writing Procedure

1. Identify the script-facing purpose of the text label, including rewards, choices, directions, event state, and dynamic values.
2. Mark the facts that are gameplay-critical or story-critical.
3. Discard the source wording for all remaining material.
4. Write the NPC's attack or the map conceit in the target voice first, with real name-calling from [Dialogue Name Calling](../dialogue-name-calling/SKILL.md) on or near the first row.
5. Hang every required gameplay fact on the next clause or `para` (FLASH after semen pools; warp panel after `you lucky punk`).
6. Replace nonessential diegetic labels with intelligible in-world terms that fit the voice.
7. Apply [Game Dialogue Safety](../game-dialog/SKILL.md).

Do not write a plain draft and then decorate it. The first draft is already the attack.

## Coherent Dialogue Flow

Required insults, conceit refrains, greetings, and voice markers must read as one exchange, not as detachable text appended to satisfy a style rule. Build the gameplay fact and the voice together.

- Put a greeting only at the beginning of an exchange, unless the script explicitly starts a new conversation.
- Do not insert a speaker label such as `NAME:` in the middle of that speaker's existing text block. Use it only at the beginning when the game convention needs it.
- When a required refrain opens an exchange, make the following dialogue a direct application of it.
- When a required phrase occurs later, bridge into it. The next line responds to its thought.
- Do not stop a clear gameplay message and then begin an unrelated insult, greeting, or catchphrase on a new page.
- Never use a vague bridge such as `That is why I ask` when the connection is not explicit.

Perform a coherence pass after width fitting. Read each text block from its first rendered row through `done` or `prompt`, and verify:

1. Every line follows from the one before it.
2. Any required phrase has a clear relationship to the immediate gameplay fact.
3. The speaker, tense, and point of view stay consistent.
4. No greeting, speaker label, or refrain appears after the exchange has already begun without a justified transition.
5. The final practical instruction, reward, choice, or state message still feels like the point of the exchange.
6. No banned placeholder (`vetlegnolt`, `storeklovn`, `dingleberry`, `storeniding`, `kjempelilleponk`) remains.

## Revision Checks

Before finalizing, confirm:

- Required gameplay and story facts remain clear and accurate.
- Non-story dialogue has been reinvented as hostile and explicit, not lightly paraphrased.
- The map conceit appears across speakers, including signs and objects, not only one NPC.
- New diegetic terminology remains understandable from context.
- Exact official labels appear only where the player needs them to navigate or operate a feature.
- The selected voice skill is evident in every revised exchange.
- The first draft was already explicit; this is not a clean restyle that later got a swear.
- Leftover vanilla object text is gone.
- Required phrases and gameplay facts form coherent, continuous dialogue.
- The final dialogue meets [Game Dialogue Safety](../game-dialog/SKILL.md).
