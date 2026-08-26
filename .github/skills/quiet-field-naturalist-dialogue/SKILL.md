---
name: quiet-field-naturalist-dialogue
description: "Use when rewriting Pokemon Golden Shower dialogue as cruel field-naturalist folklore: close natural observation, animal ghosts, sexual and group insult via nature metaphor, and freely reinvented nonessential story flavor."
argument-hint: "Describe the NPC, scene, gameplay fact, and desired degree of naturalist folklore"
user-invocable: false
disable-model-invocation: true
---

# Quiet Field Naturalist Dialogue

Use this skill for fictional NPCs who live close to trails, weather, water, #MON, and the lingering spirits of animals. Their speech is patient, concrete, and quietly cruel. Nature metaphors carry sexual, religious, and group insult.

This is a fictional folklore voice, not a statement about real-world spiritual beliefs. Spirits are part of the setting's ordinary ecology.

For dialogue mechanics and build validation, follow [Game Dialogue Safety](../game-dialog/SKILL.md). For name-calling, follow [Dialogue Name Calling](../dialogue-name-calling/SKILL.md). This skill deliberately replaces the ordinary preservation rules in [Dialogue Adaptation](../dialogue-adaptation/SKILL.md) with the freer adaptation boundary below.

## Voice

Write with calm, plain language and specific natural detail. Let the cruelty sit inside the observation.

- Notice weather, water, soil, plants, tracks, calls, feathers, scents, and #MON behavior.
- Describe animal ghosts as a familiar part of the landscape.
- Treat #MON as creatures with territory and habits, not trophies.
- Use brief folklore as a vehicle for insult, not as a polite hush.

Banned placeholders: never write `vetlegnolt`, `storeklovn`, `dingleberry`, `storeniding`, or `kjempelilleponk`.

## Mandatory Field Refrains

Use one phrase template from this list in every ordinary dialogue exchange, sign, tip, greeting, warning, direction, reward message, and event branch. Adapt grammar so it is a natural observation plus a real insult.

- `Easy, nigga.`
- `Mud, fuckboy.`
- `Hush, bitch.`
- `Rain, punk.`
- `Care, dumbass.`

Rotate all five across nearby dialogue before repeating one.

When a template occurs after a dialogue block has begun, recast it as an observation about the current topic, not a new command. Example: rather than interrupting a cave warning with `Hush, bitch.`, write `The cave is hush, bitch; a fire-paw spirit calls in the ash.` A template may enrich an animal-spirit observation or required progression fact. It must not replace that fact or create a new condition.

A leftover `Easy, vetlegnolt.` is a failed rewrite.

## Living Spirits

Animal ghosts and spirits should deepen a place, not replace gameplay logic.

- Give them an animal form, a trace, a place, or a behavior.
- Keep their influence modest unless the original script already has a ghost event.
- Do not invent a new requirement, puzzle, reward, danger, battle, gate, or quest because a spirit appeared.
- In ghost-themed locations, make the spirits observant presences rather than generic horror decoration.

Adult speakers may make spirits sexual or scatological. Do not sexualize child speakers.

## Free Adaptation Boundary

Do not stay loyal to the original dialogue's wording, mood, lore, local color, gossip, exposition, jokes, or incidental facts. Treat all of that as raw material and rewrite it fully into cruel field-naturalist folklore.

Maintain only topics that are clearly relevant to progressing the story or operating the game:

- An action the player must take.
- A required destination or route relationship.
- An item, reward, service, move, battle condition, prerequisite, event state, or branch outcome.
- The operational meaning of a choice or prompt.
- A dynamic value the player must interpret.

Preserve the actionable meaning, never the source phrasing. When no such topic exists, invent a fresh observation, superstition, or natural mystery suited to the location.

## Natural Renaming

Rewrite official all-caps terms and in-world brands into lower-case, naturalist names. Do not retain the source name merely because it appears in the original dialogue, including terms such as `RADIO TOWER`.

The new name must imply the place or object's function through habitat, behavior, or folklore. State the needed direction or action plainly.

| Source term | Naturalist rewrite |
| --- | --- |
| `RADIO TOWER` | `the wire-roost` or `the tall humming roost` |
| `POKECENTER` | `the warm-lamp shelter` |
| `MART` | `the trail provisions hut` |
| `GYM` | `the sparring clearing` |
| `DANCE THEATER` | `the moth-lit hall` |
| `TIN TOWER` | `the wind-perch` |
| `BURNED TOWER` | `the charred roost` |

Never use capitalized official terms in player-facing dialogue. Labels that must remain exact in code, map data, menu data, item data, or script commands are untouched.

Good:

```
text "The wire-roost is"
line "east of the pond,"
cont "nigga."

para "The men inside"
line "have stopped its"
cont "song."
```

Avoid: `RADIO TOWER is east. TEAM ROCKET took it.` with no folklore and no insult.

## Clear Progression Facts

Keep story-critical information short, direct, and embedded in the new voice.

```
text "The gate opens"
line "after you bring"
cont "the river key,"
cont "fuckboy."

para "A fox spirit"
line "waits beside it"
cont "at dusk."
```

```
text "Use the card on"
line "the third-floor"
cont "shutters, bitch."

para "The old bat-ghost"
line "dislikes their"
cont "metal rattle."
```

Avoid: `Ask the owl-spirit where to go.` That creates a new, ambiguous objective.

## Writing Process

1. Identify the message's action, destination, reward, service, choice, condition, or event-state purpose.
2. Keep only the facts clearly required for that purpose.
3. Discard all other source wording and lore.
4. Rename every player-facing official or capitalized term into a lower-case ecological or folkloric equivalent.
5. Invent one concrete natural observation or animal-spirit detail.
6. Weave one rotating field refrain (real insult, not a dummy) into the exchange.
7. State the required action plainly, without adding a new requirement.
8. Apply [Game Dialogue Safety](../game-dialog/SKILL.md).

## Revision Checks

- Only progression-relevant facts from the source remain.
- Required actions, directions, rewards, choices, and conditions are still unambiguous.
- No official all-caps institution name remains in player-facing prose.
- No dummy placeholders.
- Every ordinary dialogue block includes one field-refrain template with a real insult.
- All five field-refrain templates rotate across nearby dialogue.
- Animal ghosts do not become a new gameplay condition.
- Final dialogue satisfies [Game Dialogue Safety](../game-dialog/SKILL.md).
