---
name: quiet-field-naturalist-dialogue
description: "Use when rewriting Pokemon Golden Shower dialogue as quiet field-naturalist folklore: close natural observation, animal ghosts and spirits, practical route knowledge, and freely reinvented nonessential story flavor."
argument-hint: "Describe the NPC, scene, gameplay fact, and desired degree of naturalist folklore"
user-invocable: false
disable-model-invocation: true
---

# Quiet Field Naturalist Dialogue

Use this skill for fictional NPCs who live close to trails, weather, water, #MON, and the lingering spirits of animals. Their speech is patient, concrete, and quietly strange. They observe tracks, feathers, nesting places, changing wind, damaged bark, and the habits of both living #MON and animal ghosts.

This is a fictional folklore voice, not a statement about real-world spiritual beliefs. Spirits are part of the setting's ordinary ecology: shy, varied, sometimes helpful, sometimes unsettling, and never proof that a real animal or person is evil.

For dialogue mechanics and build validation, follow [Game Dialogue Safety](../game-dialog/SKILL.md). This skill deliberately replaces the ordinary preservation rules in [Dialogue Adaptation](../dialogue-adaptation/SKILL.md) with the freer adaptation boundary below.

## Voice

Write with calm, plain language and specific natural detail. Favor observations over explanations and practical advice over speeches. Let humor be dry, small, and local.

- Notice weather, water, soil, plants, tracks, calls, feathers, scents, and #MON behavior.
- Describe animal ghosts and spirits as a familiar part of the landscape: a hare-light in the grass, a fox spirit at a crossing, a drowned Magikarp shade under a bridge.
- Treat #MON as creatures with territory, fatigue, curiosity, and habits, not trophies or tools.
- Let speakers disagree about a spirit's meaning without declaring one supernatural truth.
- Use brief, quiet folklore instead of threats, moral lectures, slang, insults, or grand prophecy.

Examples:

> `The creek runs brown today. A small ghost-heron has been following it downstream.`

> `The path north is open. Leave the white mushrooms alone; a burrow spirit sleeps beneath them.`

> `Your #MON keeps watching the alder trees. Something there has learned its name.`

## Mandatory Field Refrains

Include one complete phrase from this list in every ordinary dialogue exchange, sign, tip, greeting, warning, direction, reward message, and event branch. These phrases are mandatory, not optional examples. Preserve their exact wording, punctuation, capitalization, and word order; split them only between words when text-box width requires it.

- `Easy, vetlegnolt.`
- `Mud, storeklovn.`
- `Hush, dingleberry.`
- `Rain, vetlegnolt.`
- `Care, storeklovn.`

Rotate all five phrases across nearby dialogue before repeating one. A phrase may appear beside an animal-spirit observation or a required progression fact, but it must not replace that fact or create a new condition.

## Living Spirits

Animal ghosts and spirits should deepen a place, not replace gameplay logic.

- Give them an animal form, a trace, a place, or a behavior: a moth spirit around a lamp, hoofprints that end at a pond, a Pidgey ghost calling before rain.
- Keep their influence modest unless the original script already has a ghost, haunting, or supernatural event.
- Do not invent a new requirement, puzzle solution, reward, danger, battle, gate, or quest because a spirit appeared.
- Do not use animal spirits to curse, shame, threaten, or diagnose the player.
- In ghost-themed locations, make the spirits observant presences rather than generic horror decoration.

## Free Adaptation Boundary

Do not stay loyal to the original dialogue's wording, mood, lore, local color, gossip, exposition, jokes, or incidental facts. Treat all of that as raw material and rewrite it fully into field-naturalist folklore.

Maintain only topics that are clearly relevant to progressing the story or operating the game:

- An action the player must take.
- A required destination or route relationship.
- An item, reward, service, move, battle condition, prerequisite, event state, or branch outcome.
- The operational meaning of a choice or prompt.
- A dynamic value the player must interpret.

Preserve the actionable meaning, never the source phrasing. When no such topic exists, invent a fresh observation, superstition, encounter, or natural mystery suited to the location.

## Natural Renaming

Rewrite official all-caps terms and in-world brands into lower-case, naturalist names. Do not retain the source name merely because it appears in the original dialogue, including terms such as `RADIO TOWER`.

The new name must imply the place or object's function through habitat, behavior, or folklore. State the needed direction or action plainly so the player can still progress.

Examples:

| Source term | Naturalist rewrite |
| --- | --- |
| `RADIO TOWER` | `the wire-roost` or `the tall humming roost` |
| `POKECENTER` | `the warm-lamp shelter` |
| `MART` | `the trail provisions hut` |
| `GYM` | `the sparring clearing` |
| `DANCE THEATER` | `the moth-lit hall` |
| `TIN TOWER` | `the wind-perch` |
| `BURNED TOWER` | `the charred roost` |

Never use capitalized official terms in player-facing dialogue. Labels that must remain exact in code, map data, menu data, item data, or script commands are untouched; this rule applies only to rewritten prose.

Good:

> `The wire-roost is east of the pond. The men inside have stopped its song.`

Avoid:

> `RADIO TOWER is east. TEAM ROCKET took it.`

## Clear Progression Facts

Keep story-critical information short, direct, and embedded in the new voice.

Good:

> `The gate opens after you bring the river key. A fox spirit waits beside it at dusk.`

> `Use the card on the third-floor shutters. The old bat-ghost dislikes their metal rattle.`

Avoid:

> `Ask the owl-spirit where to go.`

The last line creates a new, ambiguous objective. A spirit may color an instruction but may not replace it.

## Writing Process

1. Identify the message's action, destination, reward, service, choice, condition, or event-state purpose.
2. Keep only the facts clearly required for that purpose.
3. Discard all other source wording and lore.
4. Rename every player-facing official or capitalized term into a lower-case ecological or folkloric equivalent.
5. Invent one concrete natural observation or animal-spirit detail that fits the scene.
6. Add one complete rotating phrase from **Mandatory Field Refrains**.
7. State the required action or outcome plainly, without adding a new requirement.
8. Apply [Game Dialogue Safety](../game-dialog/SKILL.md).

## Revision Checks

Before finalizing, confirm:

- Only progression-relevant facts from the source remain.
- Required actions, directions, rewards, choices, and conditions are still unambiguous.
- Nonessential dialogue has been substantially reinvented.
- No official all-caps institution, venue, or device name remains in player-facing prose.
- Each renamed place or object has a lower-case, understandable field-naturalist equivalent.
- Animal ghosts or spirits enrich the atmosphere without becoming a new gameplay condition.
- Every ordinary dialogue block includes one complete mandatory field refrain.
- All five mandatory field refrains rotate across nearby dialogue.
- The speaker sounds observant, spare, and grounded in a lived landscape.
- The final dialogue satisfies [Game Dialogue Safety](../game-dialog/SKILL.md), including rendered-width and build checks.