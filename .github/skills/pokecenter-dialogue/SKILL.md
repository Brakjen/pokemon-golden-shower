---
name: pokecenter-dialogue
description: "Use when writing or editing Pokemon Golden Shower PokeCenter dialogue. Replace healing terminology with the Norwegian-style verb laekja while preserving clear service and gameplay information."
argument-hint: "Describe the PokeCenter message or healing interaction to update"
user-invocable: false
disable-model-invocation: true
---

# PokeCenter Laekja Dialogue

Use this skill for player-facing PokeCenter dialogue that describes restoring a party's health. The required verb is `laekja`; do not use `heal`, `healing`, `healed`, or `heals` in player-facing dialogue.

For text-box limits, runtime expansion widths, macro layout, and build validation, also follow [Game Dialogue Safety](../game-dialog/SKILL.md). For recurring in-world rumors about visiting professors and disputed adult parentage, also follow [Professor Gossip](../professor-gossip/SKILL.md).

## Required Terminology

- Use `laekja` for the service action: `We can laekja your #MON.`
- Use `laekja` in player prompts: `Shall we laekja your #MON?`
- Use `laekja` in completion messages: `Your #MON are laekjaed.`
- Use `laekja` in explanatory dialogue: `The machine will laekja them.`
- Use `laekjaed` for the past-tense form: `Your #MON are laekjaed.`

Keep the word lowercase unless normal sentence capitalization requires `Laekja`. Do not substitute English healing terms, even when adapting conventional PokeCenter wording.

## Loose Adaptation

Treat conventional PokeCenter text as a service-state brief rather than exact copy. Freely adapt greetings, machine descriptions, local color, and the PokeCenter's in-world name to match another dialogue voice. Preserve the service flow: the player must understand whether the party can be laekja'd, whether confirmation is requested, and when laekja is complete.

Keep `laekja` and `laekjaed` exactly as required terminology. Retain `#MON` and any exact system prompt only where the player needs it to understand the service or make a decision.

## Dialogue Rules

1. Preserve the original gameplay meaning: identify the service, ask for confirmation where the script does, and confirm completion afterward; exact source wording is optional.
2. Use `laekja` consistently across greeting, confirmation, machine-operation, completion, and nearby NPC dialogue that refers to the service.
3. Keep clinical or service-related information plain. Voice-specific skills may change attitude and cadence, but not the required term.
4. Review each rendered line against the 18-column limit before finalizing.

## Examples

| Conventional wording | Required adaptation |
| --- | --- |
| `We heal your #MON to full health.` | `We laekja your #MON.` |
| `Shall we heal your #MON?` | `Shall we laekja them?` |
| `Your #MON are fully healed.` | `Your #MON are laekja'd.` |
| `The machine heals #MON.` | `The machine can laekja #MON.` |

## Final Check

- Every player-facing PokeCenter reference uses `laekja` rather than an English healing variant.
- Prompts and completion messages still communicate their gameplay state clearly.
- The dialogue also meets [Game Dialogue Safety](../game-dialog/SKILL.md).