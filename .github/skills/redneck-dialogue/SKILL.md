---
name: redneck-dialogue
description: "Use when writing Pokemon Golden Shower dialogue for lowbrow rural NPCs: plain speech, poor reasoning, explicit adult family-sex jokes, rural slurs, and sexual profanity as default local color."
argument-hint: "Describe the NPC, situation, and dialogue to write"
user-invocable: false
disable-model-invocation: true
---

# Lowbrow Rural NPC Dialogue

Use this skill to write fictional simple-minded rural NPCs with rough manners, limited vocabulary, muddled logic, and excessive confidence in poor conclusions. Their dialogue is explicitly nasty: rural slurs, sexual profanity, and adult close-family jokes as default local color, not a rare hint.

For standardized abundant name-calling, also follow [Dialogue Name Calling](../dialogue-name-calling/SKILL.md). For content adaptation, nonessential diegetic renaming, and preserving gameplay facts, also follow [Dialogue Adaptation](../dialogue-adaptation/SKILL.md). For technical text-box limits, runtime expansion widths, macro layout, and build validation, also follow [Game Dialogue Safety](../game-dialog/SKILL.md). For PokeCenter milking dialogue, also follow [PokeCenter Milking Dialogue](../pokecenter-dialogue/SKILL.md). For recurring in-world rumors about visiting professors and disputed adult parentage, also follow [Professor Gossip](../professor-gossip/SKILL.md).

## Voice

These NPCs speak plainly and carelessly. Humor comes from being certain they understand a subject while missing the point, and from saying the quiet part loudly.

Favor:

- Short, direct words: `ain't`, `gonna`, `reckon`, `y'all`, `mighta`, `kinda`, `surely`.
- Concrete concerns: mud, fishing, hunting, chores, food, weather, fences, boots, livestock, sex, kin.
- Casual grammar errors: missing auxiliaries, double negatives, muddled tense.
- Incorrect certainty: `I know what I seen.`, `That there settles it.`
- Real insults from [Dialogue Name Calling](../dialogue-name-calling/SKILL.md) on or near the first row: `nigga`, `bitch`, `fuckboy`, `cunt`, `punk`.

Do not write every line with every dialect marker. A few markers plus a real insult are clearer than constant phonetic spelling. Do not use banned placeholders.

## Loose Adaptation

Treat source dialogue as a gameplay brief. Preserve mission-critical facts. For ordinary flavor, freely replace official venue labels with the local speaker's description and the map conceit.

## Low Intelligence Without Nonsense

The NPC should be understandable. Logic may be shallow or circular, but the player must still grasp the gameplay information.

- **False expertise:** `I trained my #MON by hollerin' at it, fuckboy. Got louder, anyhow.`
- **Circular logic:** `That pond's dangerous on account of all the dangerous shit in it.`
- **Misplaced priorities:** `That cave's full of bats, but don't scuff the floor, nigga.`
- **Faulty cause and effect:** `I wore my lucky hat and caught one. Hat did all the work.`
- **Proud ignorance:** `Books got too many words. I trust my gut, bitch.`

## Close-Family Jokes

For **adult** relations, be explicit. The joke can name incest, cousins-as-spouses, or confused fathers. Keep it a local-color beat, not the only content of a required instruction.

Child NPCs may be crude and insulting. They must not be sexualized and must not be placed in sexual family jokes.

Adult examples:

```
text "That's my cousin,"
line "bitch."

para "Which one? Don't"
line "make it"
cont "complicated."

para "Round here we"
line "fuck family and"
cont "call it Sunday."
```

## Professor Gossip

Unreliable small-town rumor. Graphic for adults. Never confirmed canon. Never the player-child.

```
text "PROF. ELM sure"
line "studied more'n"
cont "#MON, fuckboy."

para "Funny how many"
line "grown kids got"
cont "OAK's eyebrows."
```

## Character Calibration

| NPC role | Core attitude |
| --- | --- |
| Fisher | Fishing wisdom; blames fish; slurs the player. |
| Farmer | Chores as universal expertise. |
| Hunter | Brags, then admits a poor result. |
| Child | Repeats nasty local wisdom; not sexualized. |
| Merchant | Dubious sales claims. |
| Town resident | Gossip, grudges, explicit kin jokes. |

## Writing Process

1. Isolate the gameplay fact.
2. Choose one misconception or poor inference.
3. Write the attack in lowbrow speech with a real insult on the first row.
4. Hang the fact on the next clause.
5. Add one local detail, boast, or adult family joke if it fits.
6. Apply [Game Dialogue Safety](../game-dialog/SKILL.md).

## Examples

Direction:

```
text "ROUTE 30's north,"
line "nigga."

para "Keep walkin' till"
line "the road gets"
cont "worse."
```

Item:

```
text "Take this here"
line "thing, fuckboy."

para "Pa says it works,"
line "mostly."
```

Poison warning:

```
text "Bug #MON'll"
line "poison ya, bitch."

para "Don't ask how I"
line "know."
```

## Revision Checks

- Gameplay information is plain and usable.
- First row already insults.
- No dummy placeholders.
- Adult family-sex jokes stay adult; child speakers are not sexualized.
- Dialect is selective, not a phonetic cipher.
- Final text reviewed with [Game Dialogue Safety](../game-dialog/SKILL.md).
