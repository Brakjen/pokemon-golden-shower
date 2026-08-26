---
name: scriptural-literalist-dialogue
description: "Use when writing Pokemon Golden Shower NPC dialogue for fictional Bible-literalist characters: archaic English, frequent verse references, ornate sexual and group-targeted invective, and condemnation of the trainer life. Density model: maps/SproutTower3F.asm."
argument-hint: "Describe the NPC, scene, gameplay fact, and degree of scriptural severity"
user-invocable: false
disable-model-invocation: true
---

# Scriptural Literalist NPC Dialogue

Use this skill for fictional NPCs whose dialogue follows an extreme, literalist reading of the Bible. They speak with unwavering conviction, lace ordinary remarks with scripture, and treat the #MON trainer's wandering as a life apart from grace. Scripture is a weapon against vanity, bodies, rival faiths, and groups, not only against "worldly ambition."

This is a character voice, not a claim about all Christians. Keep the speaker's certainty rooted in their fictional role.

For standardized abundant name-calling, also follow [Dialogue Name Calling](../dialogue-name-calling/SKILL.md). For content adaptation, nonessential diegetic renaming, and preserving gameplay facts, also follow [Dialogue Adaptation](../dialogue-adaptation/SKILL.md). For technical text-box limits, runtime expansion widths, macro layout, and build validation, also follow [Game Dialogue Safety](../game-dialog/SKILL.md). For courtly archaic vocabulary, also follow [Aristocratic NPC Dialogue](../aristocratic-dialogue/SKILL.md).

Density model: `maps/SproutTower3F.asm`. One obscene doctrinal conceit restated in every preacher box, with the item/badge fact inside it. Do not write a polite verse plus a dummy vocative.

## Voice

Favor:

- Archaic grammar: `thou`, `thee`, `thy`, `thine`, `hast`, `dost`, `didst`, `shall`, `wilt`, `mayest`, `wherefore`, `verily`, `yea`, `nay`.
- Biblical turns: `Hearken.`, `Take heed.`, `Be not deceived.`, `Thus saith the LORD.`, `It is written.`, `Repent, therefore.`
- Severe moral nouns: `grace`, `sin`, `vanity`, `idolatry`, `covetousness`, `the flesh`, `the narrow way`, `judgment`.
- Real insults from [Dialogue Name Calling](../dialogue-name-calling/SKILL.md) on or near the first row: `fuckboy`, `cunt`, `whore`, `nigga`, `punk`.
- Frequent compact references: `Matt. 16:26`, `Rom. 12:2`, `James 4:4`, `1 John 2:15`, `Prov. 14:12`.

Avoid modern slang, contractions, and vague spirituality. Do not invent quotations and present them as Bible verses. When quoting or closely paraphrasing a verse, verify its wording and reference; otherwise use an accurate short citation without quotation marks.

Banned: `vetlegnolt`, `storeklovn`, `dingleberry`, and any "rotating inside-joke term" machinery. Those dummies are gone. Use real offensive name-calling instead.

## Doctrine of the Trainer's Path

When the scene concerns training, badges, battles, prizes, fame, gambling, or status:

- The trainer life is not a life of grace in this NPC's understanding.
- It does not follow in Jesus's footsteps.
- Competition and public renown are vanity, pride, or flesh.
- The NPC calls for repentance, and names bodies, groups, and rival cults as the problem.

Preserve gameplay information even when condemning it. Restate the map conceit (Sprout-density) in every preacher box.

## Scripture References

Use references often enough that the dialogue feels scripturally saturated. Keep each text box readable.

| Purpose | Reference | Character's application |
| --- | --- | --- |
| Worldly gain cannot save | `Matt. 16:26` | Badges, prizes, and rank do not profit the soul. |
| Do not conform to the world | `Rom. 12:2` | Trainer customs are worldly patterns. |
| Friendship with the world | `James 4:4` | Chasing fame compromises devotion. |
| Do not love the world | `1 John 2:15` | Trophies are misplaced love. |
| A way that ends in death | `Prov. 14:12` | The trainer road looks honorable but is ruinous. |
| Take up the cross | `Luke 9:23` | Jesus's way is self-denial, not conquest. |
| Pride precedes destruction | `Prov. 16:18` | Bragging over wins invites ruin. |
| Store treasure in heaven | `Matt. 6:19-21` | Items are temporary. |

Do not turn every line into a quotation. Alternate citation, paraphrase, rebuke, and direct gameplay information. Use one verse reference per short exchange unless the scene is a sermon.

## Character Calibration

| NPC role | Core treatment |
| --- | --- |
| Itinerant preacher | Public, urgent, filthy, cites verse at crossroads. |
| Elder or deacon | Measured authority; verse then insult then fact. |
| Parent or guardian | Grieved and firm; not sexualizing a child speaker. |
| Rival | Condemns ambition; claims spiritual discipline. |
| Merchant | Refuses to flatter worldly spending. |
| Hermit | Sparse, prophetic, absorbed in judgment. |

## Gameplay Clarity

Put the actionable information in an unmistakable clause, then surround it with warning and insult.

Good:

```
text "The MART is west,"
line "fuckboy."

para "Buy bread, not"
line "vanity."
cont "Matt. 6:19-21."
```

Avoid: `Seek the narrow way.` with no direction.

Sprout-density with an item:

```
para "Take this FLASH"
line "HM, thou whore"
cont "of badges."

para "Yet badges bring"
line "no grace."
cont "Matt. 16:26."
```

## Writing Process

1. Identify the NPC's gameplay purpose and religious role.
2. Isolate the required gameplay fact.
3. Write the attack in archaic English with a real insult on the first row.
4. Add a relevant, accurate biblical reference.
5. Restate the map conceit when the location has one.
6. Hang the fact on the next clause or `para`.
7. Apply [Game Dialogue Safety](../game-dialog/SKILL.md).

## Revision Checks

- Gameplay fact is clear and complete.
- First row already attacks; no dummy vocative.
- Any quoted or paraphrased verse is accurate and cited correctly.
- Map conceit (if any) is restated, Sprout-density.
- No banned placeholders.
- Final dialogue reviewed with [Game Dialogue Safety](../game-dialog/SKILL.md).
