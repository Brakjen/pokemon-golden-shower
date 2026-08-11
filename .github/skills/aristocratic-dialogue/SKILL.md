---
name: aristocratic-dialogue
description: "Use when writing Pokemon Golden Shower NPC dialogue with elitist, aristocratic, formal medieval speech, including haughty condescension, social superiority, and subtly demeaning remarks toward the player."
argument-hint: "Describe the NPC, situation, and dialogue to write"
user-invocable: false
disable-model-invocation: true
---

# Aristocratic NPC Dialogue

Use this skill to write NPC dialogue in a formal, medieval, aristocratic voice. NPCs should sound cultured, socially superior, and mildly dismissive of the player. Their contempt should usually be controlled and polished rather than loud or crude.

For technical text-box limits, runtime expansion widths, macro layout, and build validation, also follow [Game Dialogue Safety](../game-dialog/SKILL.md). For PokeCenter healing dialogue, also follow [PokeCenter Laekja Dialogue](../pokecenter-dialogue/SKILL.md). For recurring in-world rumors about visiting professors and disputed adult parentage, also follow [Professor Gossip](../professor-gossip/SKILL.md).

## Voice

NPCs speak as though refinement, breeding, education, and station naturally place them above the player. They do not need to state this outright in every line; their assumptions should make it clear.

Favor:

- Formal diction: `thou`, `thee`, `thy`, `thine`, `hath`, `dost`, `didst`, `shall`, `wilt`, `mayest`.
- Elevated nouns: `station`, `bearing`, `breeding`, `merit`, `conduct`, `esteem`, `distinction`, `propriety`, `judgment`, `disgrace`.
- Calm judgments: `untried`, `common`, `unremarkable`, `ill-bred`, `unfit`, `beneath notice`, `of modest merit`.
- Polite commands: `Attend me.`, `Pray, take heed.`, `Mark this well.`, `Conduct thyself properly.`
- Backhanded approval: `Thou hast done tolerably.`, `For one so green, thy effort is passable.`, `A modest success, yet not wholly shameful.`

Avoid modern contractions and casual phrasing such as `can't`, `don't`, `awesome`, `cool`, `buddy`, or `you guys`.

## Loose Adaptation

Treat the source line as a statement of gameplay purpose rather than wording to preserve. Keep mission-critical facts, required items, usable directions, battle conditions, service results, and event-state information intact. For ordinary flavor or local explanation, freely replace source phrasing and official venue labels with language an aristocratic NPC would naturally use.

Use courtly or social descriptions for non-critical place names: a shop may become `the merchant's hall`, a prize counter `a broker of favors`, and a public location `that common establishment`. Retain the exact name only when the player needs it for navigation, a system, or a mission.

## The Demeaning Edge

Every NPC message should contain at least a slight indication that the speaker sees the player as less polished, less knowledgeable, or of lower station. Keep it proportionate to the NPC and scene.

Use one or more of these approaches:

- **Patronizing instruction:** The NPC explains obvious matters as though the player requires remedial guidance.
  - `Thou mayest learn this yet.`
  - `Even a novice should heed such counsel.`

- **Qualified praise:** The NPC grants credit grudgingly.
  - `Thy result is adequate, I suppose.`
  - `A tolerable effort for thy station.`

- **Assumed inferiority:** The NPC treats refinement as something the player lacks.
  - `Such manners are not taught in every home.`
  - `One expects better judgment of a traveler.`

- **Social distance:** The NPC uses titles, formality, or invitation as a barrier.
  - `Perhaps thou art not yet prepared.`
  - `This concern lies beyond common interests.`

- **Disappointed superiority:** The NPC frames the player's action as failing an obvious standard.
  - `Thou hast chosen poorly, though the lesson was plain.`
  - `I had hoped for more discernment.`

Do not make every NPC openly hostile. Superiority is more effective when it sounds habitual, effortless, and sincere.

## Character Calibration

Match the level of disdain to the NPC's role:

| NPC type | Recommended treatment |
| --- | --- |
| Elder, guide, teacher | Courteous correction; assumes the player needs instruction. |
| Gentleman, lady, wealthy patron | Talks of breeding, standards, and proper society. |
| Rival | Direct contempt; frames the player as inferior competition. |
| Child or novice | Imitates aristocratic language; pride exceeds authority. |
| Merchant or worker | Uses professional pride; treats the player as uninformed or low-status. |
| Helpful NPC | Gives useful help, but presents it as generosity toward someone undeserving. |

## Writing Process

1. Identify the NPC's social claim: education, lineage, skill, wealth, age, office, or local standing.
2. State the message's gameplay purpose plainly in a draft: direction, tutorial, reward, reaction, or flavor.
3. Decide which facts are required and which source wording can be freely reimagined.
4. Recast it in formal language.
5. Add one restrained status judgment or patronizing assumption.
6. Read it aloud. The NPC should sound composed, self-assured, and mildly disappointed in the player's ordinary nature.
7. Remove excess ornament. The tone comes from certainty and judgment, not from archaic words in every clause.
8. Apply [Game Dialogue Safety](../game-dialog/SKILL.md) to fit the final dialogue safely into the game.

## Examples

| Plain purpose | Aristocratic rewrite |
| --- | --- |
| Explain where Route 30 is. | `ROUTE 30 lies northward. Pray do not lose thy way.` |
| Give the player an item. | `Accept this token. Use it with more judgment than most.` |
| React to a victory. | `A tolerable victory. Fortune has favored thee beyond reason.` |
| Advise visiting a healing location. | `Seek the CENTER. Thy companions appear poorly kept.` |
| Explain an item shop. | `The MART dispenses supplies. Spend thy coin with restraint.` |

## Revision Checks

Before finalizing, confirm:

- The line serves its gameplay purpose clearly.
- The NPC sounds proud without becoming incoherent or comically ornate.
- At least one phrase conveys polite condescension or assumed superiority.
- The NPC's age, role, and status support the degree of disdain.
- The dialogue uses no modern casual diction.
- The final text is reviewed with [Game Dialogue Safety](../game-dialog/SKILL.md).
