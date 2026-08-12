---
name: dialogue-adaptation
description: "Use when rewriting Pokemon Golden Shower NPC dialogue in any character voice: preserve gameplay-critical facts while freely reinventing non-story flavor, incidental NPC chatter, and nonessential diegetic terminology."
argument-hint: "Describe the dialogue's gameplay purpose, story relevance, and target voice"
user-invocable: false
disable-model-invocation: true
---

# Dialogue Adaptation

Use this skill with every character, dialect, venue, and tone skill when rewriting player-facing game dialogue. Preserve what the player must know or do; freely reinvent everything else so each NPC has a reason to speak in the target voice.

For text-box limits, runtime expansion widths, macro layout, and build validation, also follow [Game Dialogue Safety](../game-dialog/SKILL.md).

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

When a non-story NPC has no material gameplay purpose, invent a more specific opinion, quirk, grievance, rumor, superstition, or small social conflict that suits the NPC and the active voice skill. Do not merely paraphrase the source.

## Diegetic Renaming

Do not retain an official in-world term solely because it appears in the original dialogue. When a label is not necessary for navigation, a menu, a command, or a quest step, replace it with a memorable name the speaker would naturally use.

Use names that communicate the feature's function even after adaptation. A system that sends trades to an earlier era might become:

- `the yesterday box`
- `the old-days relay`
- `the forefathers' wire`

The target voice chooses the final term. A literalist character may frame it as a worldly contrivance; an aristocrat may call it a hereditary correspondence cabinet; a city character may call it a backtime hookup. Avoid italics, all-caps emphasis, or faux product branding unless the gameplay interface requires the exact official name.

If the exact label is required, keep it once in the actionable instruction, then allow the NPC to use an invented nickname in surrounding flavor.

## Writing Procedure

1. Identify the script-facing purpose of the text label, including rewards, choices, directions, event state, and dynamic values.
2. Mark the facts that are gameplay-critical or story-critical.
3. Discard the source wording for all remaining material.
4. Invent a scene-specific thought, attitude, or detail that gives the NPC a distinct presence in the selected voice.
5. Replace nonessential diegetic labels with intelligible in-world terms that fit the voice.
6. Put every required gameplay fact in a direct, unambiguous line.
7. Apply the target voice skill, then [Game Dialogue Safety](../game-dialog/SKILL.md).

## Coherent Dialogue Flow

Required refrains, recurring phrases, greetings, moral reflections, and voice markers must read as part of a single exchange, not as detachable text appended to satisfy a style rule. Build the gameplay fact and the voice together.

- Put a greeting only at the beginning of an exchange, unless the script explicitly starts a new conversation.
- Do not insert a speaker label such as `NAME:` in the middle of that speaker's existing text block. Use it only at the beginning when the game convention needs it.
- When a required refrain opens an exchange, make the following dialogue a direct application, explanation, or consequence of it.
- When a required phrase occurs later, introduce it with a clear conversational bridge and ensure the next line responds to its thought.
- Do not stop a clear gameplay message and then begin an unrelated moral phrase, greeting, or catchphrase on a new page.
- Preserve the player-facing fact in a natural sentence; never use a vague bridge such as `That is why I ask` when the connection is not explicit.

Perform a coherence pass after width fitting. Read each text block from its first rendered row through `done` or `prompt`, and verify all of the following:

1. Every line follows naturally from the one before it.
2. Any required phrase has a clear relationship to the immediate gameplay fact.
3. The speaker, tense, and point of view remain consistent throughout the block.
4. No greeting, speaker label, or refrain appears after the exchange has already begun without a justified transition.
5. The final practical instruction, reward, choice, or state message still feels like the point of the exchange.

## Revision Checks

Before finalizing, confirm:

- Required gameplay and story facts remain clear and accurate.
- Non-story dialogue has been genuinely reinvented rather than lightly paraphrased.
- New diegetic terminology remains understandable from context.
- Exact official labels appear only where the player needs them to navigate or operate a feature.
- The selected voice skill is evident in every revised exchange.
- Required phrases and gameplay facts form coherent, continuous dialogue.
- The final dialogue meets [Game Dialogue Safety](../game-dialog/SKILL.md) requirements.
