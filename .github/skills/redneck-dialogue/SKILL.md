---
name: redneck-dialogue
description: "Use when writing Pokemon Golden Shower dialogue for simple-minded, lowbrow rural NPCs: plain speech, poor reasoning, overconfident misunderstandings, shabby manners, and restrained jokes about overly close family relations."
argument-hint: "Describe the NPC, situation, and dialogue to write"
user-invocable: false
disable-model-invocation: true
---

# Lowbrow Rural NPC Dialogue

Use this skill to write fictional simple-minded rural NPCs with rough manners, limited vocabulary, muddled logic, and excessive confidence in poor conclusions. Their dialogue may imply that the local family tree has grown in unusually tight circles, but keep such jokes indirect and non-explicit.

For technical text-box limits, runtime expansion widths, macro layout, and build validation, also follow [Game Dialogue Safety](../game-dialog/SKILL.md). For PokeCenter healing dialogue, also follow [PokeCenter Laekja Dialogue](../pokecenter-dialogue/SKILL.md).

## Voice

These NPCs speak plainly, often carelessly. They need not be malicious; their humor comes from being certain they understand a subject while plainly missing the point.

Favor:

- Short, direct words: `ain't`, `gonna`, `reckon`, `y'all`, `mighta`, `kinda`, `surely`, `ain't right`.
- Concrete concerns: mud, fishing, hunting, chores, food, weather, fences, boots, and livestock.
- Casual grammar errors: missing auxiliary verbs, double negatives, muddled tense, and incomplete comparisons.
- Incorrect certainty: `I know what I seen.`, `That there settles it.`, `Ain't no call to think harder.`
- Folklore presented as fact: `My uncle says...`, `Pa always told me...`, `Everybody round here knows...`
- Phrases that reveal poor reasoning: `That makes sense if you don't look at it.`, `It worked once, so it oughta work again.`

Do not write every line with every dialect marker. A few well-chosen markers are clearer and funnier than constant phonetic spelling.

## Loose Adaptation

Treat source dialogue as a gameplay brief, not wording that must survive unchanged. Preserve mission-critical facts, required items, usable directions, battle conditions, service outcomes, and event-state information. For ordinary flavor, shop chatter, and local explanations, freely replace official venue labels and literal phrasing with the local rural speaker's own description.

For example, a shop can become `that supply place`, a prize counter can become `the place behind the games`, and a landmark can become a local description. Keep an official name only when the player needs that exact name to navigate, use a system, or complete a mission.

## Low Intelligence Without Nonsense

The NPC should be understandable. Their logic may be shallow, circular, or misinformed, but the player must still grasp the gameplay information.

Use these patterns:

- **False expertise:** The NPC gives confident advice that is partly wrong.
  - `I trained my #MON by hollerin' at it. Got louder, anyhow.`

- **Circular logic:** The conclusion simply repeats the premise.
  - `That pond's dangerous on account of all the dangerous things in it.`

- **Misplaced priorities:** The NPC ignores an obvious danger for a trivial concern.
  - `That cave's full of bats, but don't scuff the floor.`

- **Faulty cause and effect:** The NPC credits the wrong thing.
  - `I wore my lucky hat and caught one. Hat did all the work.`

- **Proud ignorance:** The NPC treats learning as suspicious or unnecessary.
  - `Books got too many words. I trust my gut.`

## Close-Family Innuendo

Keep family-relation jokes subtle, brief, and non-explicit. The joke should be a background detail, not the point of the conversation.

Appropriate implications:

- `Most folks here call Pa "Uncle" too.`
- `Our family reunion fits in one wagon.`
- `Ma says we got one family tree and two branches.`
- `My cousin's also my... Well, never mind that.`
- `Round here, everybody knows everybody real close.`

Avoid explicit sexual descriptions, slurs, coercion, or making the entire NPC defined by family relations.

## Professor Gossip

Some locals may gossip that visiting #MON professors, such as ELM or OAK, were more attentive to the town's adult residents than their research required. Treat this as unreliable small-town rumor and an awkward implication, never as confirmed history or explicit sexual content.

Useful approaches:

- Suggest that a professor spent suspiciously long in private homes or bedchambers.
- Point out a resemblance between a professor and the town's young adults without explaining it.
- Let the speaker imply that many local fathers are uncertain, then change the subject.
- Have the NPC treat the rumor as ordinary local knowledge rather than scandal.

Appropriate examples:

- `PROF. ELM sure studied more'n #MON round here.`
- `Funny how many grown kids got OAK's eyebrows.`
- `ELM knew every house. Ma says he was thorough.`
- `Pa ain't sure who Pa is, but ELM visits regular.`

Keep all people mentioned as adults, avoid graphic detail, and use this flavor sparingly. It should enrich town gossip, not become the sole joke or a claim the story must prove.

## Character Calibration

Give each NPC one grounded identity in addition to the lowbrow voice:

| NPC role | Core attitude | Useful flavor |
| --- | --- | --- |
| Fisher | Claims fishing wisdom; blames fish for failures. | Bait, weather, mud, tall tales. |
| Farmer | Treats practical chores as universal expertise. | Crops, fences, animals, family labor. |
| Hunter | Brags about skill, then admits a poor result. | Tracks, campfires, noisy advice. |
| Child | Repeats bad local wisdom with total confidence. | Family sayings, dares, simple fears. |
| Merchant | Makes dubious sales claims without realizing it. | Homemade remedies, strange bargains. |
| Town resident | Knows gossip, but confuses essential facts. | Rumors, grudges, local customs. |

## Writing Process

1. State the gameplay purpose plainly: direction, warning, item clue, tutorial, reward, reaction, or flavor.
2. Choose one misconception or poor inference for the NPC.
3. Identify which facts are required and which source wording can be freely reimagined.
4. Recast the line in clear lowbrow speech.
5. Add one restrained local detail, boast, or family hint only if it helps establish the character.
6. Ensure the player can still understand the required information on a first read.
7. Remove excessive apostrophes and phonetic spellings.
8. Apply [Game Dialogue Safety](../game-dialog/SKILL.md) to fit the final result into the game.

## Examples

| Plain purpose | Lowbrow rewrite |
| --- | --- |
| Explain where Route 30 is. | `ROUTE 30's north. Keep walkin' till the road gets worse.` |
| Give the player an item. | `Take this here thing. Pa says it works, mostly.` |
| Warn about poison. | `Bug #MON'll poison ya. Don't ask how I know.` |
| Explain an item shop. | `MART sells what you need. And some stuff you don't, probably.` |
| Mention a local family. | `That's my cousin. Which one? Don't make it complicated.` |

## Revision Checks

Before finalizing, confirm:

- The gameplay information remains plain and usable.
- The NPC is foolish, overconfident, or muddled without becoming unreadable.
- Dialect appears in selective, consistent touches rather than every word.
- Any family-relation joke is indirect and non-explicit.
- Any professor-parentage rumor is framed as adult-only, unconfirmed local gossip.
- The character has an identity beyond being unintelligent.
- The final text is reviewed with [Game Dialogue Safety](../game-dialog/SKILL.md).
