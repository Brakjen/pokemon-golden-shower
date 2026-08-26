---
name: pokecenter-dialogue
description: "Use when writing or editing Pokemon Golden Shower PokeCenter dialogue. Restore a party by milking #MON. Use milk, milking, and milked as the service verbs. Keep service-state clear and give hostile bedside manner with real name-calling."
argument-hint: "Describe the PokeCenter message or milking interaction to update"
user-invocable: false
disable-model-invocation: true
---

# PokeCenter Milking Dialogue

Use this skill for player-facing PokeCenter dialogue that describes restoring a party's health. Centers do not "heal" in ordinary medical language. They **milk** `#MON`. The required service verbs are `milk`, `milking`, and `milked`.

Do not use `heal`, `healing`, `healed`, or `heals` in player-facing dialogue.

Insult the trainer, not the verb. For the attack itself, follow [Dialogue Name Calling](../dialogue-name-calling/SKILL.md). Do not invent a second insult list here. For content adaptation and gameplay-fact preservation, also follow [Dialogue Adaptation](../dialogue-adaptation/SKILL.md). For text-box limits, runtime expansion widths, macro layout, and build validation, also follow [Game Dialogue Safety](../game-dialog/SKILL.md). For recurring in-world rumors about visiting professors and disputed adult parentage, also follow [Professor Gossip](../professor-gossip/SKILL.md).

This is adult-world service performed on `#MON`. Do not frame the player-child, students, or other minors as sexual participants in the milking.

## Required Terminology

`milk` = the service action. `milked` = the completed state. Gameplay result: the party is restored.

- Service action: `We can milk your #MON, punk.`
- Player prompt: `Shall we milk your #MON?`
- Completion: `Your #MON are milked.`
- Machine / room: `The machine will milk them.`
- Progressive: `We are milking them now.`

Do not substitute English healing terms. Do not use banned placeholders (`vetlegnolt`, `storeklovn`, `dingleberry`).

## Milking Conceit

Every PokeCenter greeting, confirmation, machine line, completion, and nearby NPC remark about the service must treat restoration as milking. Sprout-density: restated in each service box, not once per map.

Useful flavor (around the required verb, not instead of it):

- The nurse or machine squeezes `#MON` teats / udders / glands.
- Special rooms or the back machine exist to milk them.
- Milk, semen, or other fluids as the restored "full health" image, in the active voice.
- A drained, empty, or spent party after a journey that now needs to be milked.

The player must still understand the service flow: can the party be milked, is confirmation requested, is it done.

## Loose Adaptation

Treat conventional PokeCenter text as a service-state brief rather than exact copy. Freely adapt greetings, machine descriptions, local color, and the PokeCenter's in-world name to match another dialogue voice. Preserve the service flow.

Keep `milk` / `milking` / `milked` as the service verbs. Retain `#MON` and any exact system prompt only where the player needs it to understand the service or make a decision.

Greetings and completion lines must have hostile bedside manner: a real insult on or near the first row, then the milking fact.

## Dialogue Rules

1. Preserve the original gameplay meaning: identify the service, ask for confirmation where the script does, and confirm completion afterward; exact source wording is optional.
2. Use `milk` / `milking` / `milked` consistently across greeting, confirmation, machine-operation, completion, and nearby NPC dialogue that refers to the service.
3. Make the milking meaning the service itself, not a coded synonym. Voice-specific skills may change attitude and cadence, but not the required verbs and not the conceit.
4. Review each rendered line against the 18-column limit before finalizing.

## Examples

| Conventional wording | Required adaptation |
| --- | --- |
| `We heal your #MON to full health.` | `We milk your #MON, fuckboy.` |
| `Shall we heal your #MON?` | `Shall we milk them, bitch?` |
| `Your #MON are fully healed.` | `Your #MON are milked, punk.` |
| `The machine heals #MON.` | `The machine can milk #MON.` |

Packed, with milking flavor:

```
text "We can milk"
line "your #MON,"
cont "fuckboy."

para "Shall we squeeze"
line "them in the back"
cont "room?"
```

```
text "Your #MON are"
line "milked, punk."

para "Drained 'em for"
line "you. Try not to"
cont "wreck them again,"
cont "nigga."
```

```
text "The machine will"
line "milk them."

para "Hold them still"
line "on the teats,"
cont "dumbass."
```

## Final Check

- Every player-facing PokeCenter service verb is `milk` / `milking` / `milked`, never `heal`.
- The service is milking, stated in those words.
- Prompts and completion messages still communicate their gameplay state clearly.
- A real insult appears in greeting and completion lines.
- No dummy placeholders.
- The dialogue also meets [Game Dialogue Safety](../game-dialog/SKILL.md).
