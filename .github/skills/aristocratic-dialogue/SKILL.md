---
name: aristocratic-dialogue
description: "Use when writing Pokemon Golden Shower NPC dialogue with elitist, aristocratic, formal medieval speech: ornate filth, sexual insults, class slurs, and group-targeted contempt in thou/thee diction."
argument-hint: "Describe the NPC, situation, and dialogue to write"
user-invocable: false
disable-model-invocation: true
---

# Aristocratic NPC Dialogue

Use this skill to write NPC dialogue in a formal, medieval, aristocratic voice. NPCs sound cultured and socially superior. Their contempt is ornate and filthy, not mild and polished.

For standardized abundant name-calling, also follow [Dialogue Name Calling](../dialogue-name-calling/SKILL.md). For content adaptation, nonessential diegetic renaming, and preserving gameplay facts, also follow [Dialogue Adaptation](../dialogue-adaptation/SKILL.md). For technical text-box limits, runtime expansion widths, macro layout, and build validation, also follow [Game Dialogue Safety](../game-dialog/SKILL.md). For PokeCenter milking dialogue, also follow [PokeCenter Milking Dialogue](../pokecenter-dialogue/SKILL.md). For recurring in-world rumors about visiting professors and disputed adult parentage, also follow [Professor Gossip](../professor-gossip/SKILL.md).

## Voice

NPCs speak as though refinement, breeding, education, and station place them above the player. They dress slurs in court diction.

Favor:

- Formal diction: `thou`, `thee`, `thy`, `thine`, `hath`, `dost`, `didst`, `shall`, `wilt`, `mayest`.
- Elevated nouns: `station`, `bearing`, `breeding`, `merit`, `conduct`, `esteem`, `distinction`, `propriety`, `disgrace`, `bastard`, `wretch`.
- Ornate filth: sexual insults and group-targeted contempt as breeding judgments.
- Polite-sounding commands that still attack: `Attend me, fuckboy.`, `Pray, hold thy tongue, thou nigga.`
- Backhanded approval that still degrades.

Avoid modern contractions and casual phrasing such as `can't`, `don't`, `awesome`, `cool`, `buddy`, or `you guys`. Avoid banned placeholders (`vetlegnolt`, `storeklovn`, `dingleberry`).

## Loose Adaptation

Treat the source line as a gameplay purpose, not wording to preserve. Keep mission-critical facts, required items, usable directions, battle conditions, service results, and event-state information intact. For ordinary flavor, freely replace source phrasing with language an aristocratic NPC would use — including an explicit local conceit restated across the map, Sprout-density.

Use courtly or obscene descriptions for non-critical place names. Retain the exact name only when the player needs it for navigation, a system, or a mission.

## The Demeaning Edge

Every NPC message attacks from the first row. Keep it in-register, not merely snide.

Use one or more of these approaches:

- **Patronizing instruction:** `Even a cunt such as thee may learn ROUTE 30 lies north.`
- **Qualified praise:** `A tolerable victory, thou bitch-ass wretch.`
- **Assumed inferiority:** `Such manners are not taught in thy mongrel home.`
- **Social distance:** `This concern lies beyond common niggas.`
- **Disappointed superiority:** `Thou hast chosen poorly, fuckboy.`

Rivals and patrons are vicious. Child or novice speakers may imitate aristocratic slurs without being sexualized.

## Character Calibration

| NPC type | Recommended treatment |
| --- | --- |
| Elder, guide, teacher | Courteous filth; assumes the player is a dull bastard. |
| Gentleman, lady, wealthy patron | Breeding, station, sexual contempt, group slurs. |
| Rival | Direct ornate attack; frames the player as inferior stock. |
| Child or novice | Imitates court slurs; not sexualized. |
| Merchant or worker | Professional pride plus insults for low-status customers. |
| Helpful NPC | Gives the fact, then insults the recipient for needing it. |

## Writing Process

1. Identify the NPC's social claim: education, lineage, skill, wealth, age, office, or local standing.
2. Isolate the gameplay fact.
3. Write the attack in formal diction with a real insult on or near the first row.
4. Hang the fact on the next clause or `para`.
5. If the map has a conceit, restate it here.
6. Apply [Game Dialogue Safety](../game-dialog/SKILL.md).

## Examples

Direction:

```
text "ROUTE 30 lies"
line "north, thou"
cont "bitch-ass wretch."

para "Pray do not lose"
line "thy way again,"
cont "fuckboy."
```

Item:

```
text "Accept this"
line "token, nigga."

para "Use it with more"
line "judgment than"
cont "thy station."
```

Healing:

```
text "Seek the CENTER,"
line "thou ill-kept"
cont "cunt."

para "Thy companions"
line "appear poorly"
cont "kept."
```

## Revision Checks

- Gameplay purpose is clear.
- First row already attacks in court diction.
- No dummy placeholders.
- No modern casual diction.
- Child speakers are not sexualized.
- Final text reviewed with [Game Dialogue Safety](../game-dialog/SKILL.md).
