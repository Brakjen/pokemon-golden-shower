---
name: bulk-dialogue-rewrite
description: "Use when bulk modifying, batch rewriting, or completing all remaining map dialogue assignments in route-and-non-city-asm-files.txt. Enforces a full deep rewrite of every reachable map-local dialogue label and branch using its assigned voice skill, with per-map width, assembly, diagnostics, diff validation, and tracker updates. Use for requests such as 'mod all files', 'finish remaining dialogue maps', or 'bulk dialogue rewrite'; never use a shallow first-conversation-only pass."
argument-hint: "Scope: all remaining entries, next N entries, or a tracker range"
user-invocable: true
disable-model-invocation: false
---

# Bulk Dialogue Rewrite

Use this skill to complete a requested batch of map dialogue assignments from
`route-and-non-city-asm-files.txt` autonomously and thoroughly. This is a
completion workflow, not a text-search-and-replace shortcut.

## Invocation and Scope

Use this skill for requests such as:

- `mod all files`
- `rewrite all remaining maps`
- `bulk dialogue rewrite`
- `complete the next 10 entries`
- `finish entries from Route29 through Route35`

Interpret the requested scope as follows unless the user states otherwise:

| Request | Scope |
| --- | --- |
| `all files`, `all remaining`, or `finish remaining` | Every unmarked tracker entry, in tracker order |
| `next N` | The next N unmarked tracker entries, in tracker order |
| `range A through B` | All tracker entries inclusively from A through B |
| Named maps | Only the named tracker entries |

Do not ask the user to keep saying `next`. Continue autonomously through the
requested scope. If a map cannot be validated after reasonable focused repair,
stop before marking that map done, report the exact blocker, and do not silently
skip it. Do not begin later maps unless the user explicitly permits skipping a
blocked entry.

## Non-Negotiable Completion Standard

A map is complete only when **all** of the following are true:

1. Every player-facing, map-local literal text label reachable from that map's
   scripts, trainers, signs, objects, callbacks, and event branches has been
   reviewed and rewritten in the assigned voice. This includes seen, beaten,
   after-battle, item/reward, alternate event-state, sign, and incidental NPC
   text. Do not rewrite only the first conversation or only one branch.
2. Every rewritten label follows the assigned voice skill and all support skills
   it names, especially `dialogue-adaptation`, `dialogue-name-calling`, and
   `game-dialog`.
3. Required gameplay facts are still direct and correct: items, moves, rewards,
   choices, directions, battle conditions, event-state facts, dynamic values,
   proper names needed for progress, and text terminators.
4. The map passes the rendered-width audit, including every macro expansion and
   runtime buffer used by its changed text.
5. The project successfully assembles with `make -B main_gold.o` after that
   map's changes.
6. Editor diagnostics for the map and tracker are clear, and `git diff --check`
   is clean for those files.
7. Only then may its tracker entry receive `# done`.

Never claim a partial map is complete. Never mark an entry done merely because
the file compiles. Never use a global regex replacement or a one-line rewrite
as a substitute for map-by-map review.

## Per-Map Procedure

Process maps serially in tracker order. Keep each map's edit, audit, repair,
and validation cycle together; this makes failures attributable and prevents a
large batch from hiding partial work.

### 1. Establish the map contract

For the current unmarked tracker entry:

1. Read the assigned voice skill in full.
2. Read all mandatory supporting skills referenced by that voice skill.
3. Read the full map file, not a partial excerpt.
4. Inventory every text label defined in the map and trace every `writetext`,
   `jumptext`, `jumptextfaceplayer`, trainer declaration, sign, conditional
   branch, scene, callback, and item/reward path that reaches it.
5. Separate mechanics from flavor. Record internally which facts must survive
   verbatim in meaning and which material can be creatively reimagined.

Do not change map scripts, event flags, trainer declarations, movement,
warps, object events, callbacks, item IDs, battle flow, choice semantics,
standard shared scripts, or `cry` commands unless the user explicitly asks.

### 2. Rewrite every reachable label

Rewrite every map-local literal dialogue block in scope, not just examples
noticed near the top of the file. Preserve label names, references, command
types, and each original `done` or `prompt` terminator.

Apply the assigned voice throughout the map while keeping distinct speakers
coherent. Where an active skill demands recurring language, distribute it
naturally across the full map. Do not append disconnected catchphrases merely
to satisfy a skill. Read each completed block from first row through terminator
to verify that it is a coherent exchange.

For text containing runtime data:

- Treat `text_ram`, `text_buffer`, `text_decimal`, player/rival names, item
  names, map names, move names, and nickname buffers as variable-width.
- Find or prove the maximum visible width before placing fixed source text on
  the same row.
- If the maximum is not known, place the dynamic value on its own row.

### 3. Audit and repair before tracker update

Run a focused rendered-width audit after editing. At minimum, expand `#MON`,
`#GEAR`, `# BALL`, `# BALLS`, `#`, and `<PLAYER>`; extend the audit for any
other map-specific runtime data.

Use this baseline for maps with literal text and common tokens:

```sh
perl -ne 'if (/^\s*(?:text|line|cont|para)\s+"([^"]*)"/) { $text=$1; $rendered=$text; $rendered =~ s/# BALLS/POKE BALLS/g; $rendered =~ s/# BALL/POKE BALL/g; $rendered =~ s/#MON/POKEMON/g; $rendered =~ s/#GEAR/POKEGEAR/g; $rendered =~ s/#/POKE/g; $rendered =~ s/<PLAYER>/PLAYER1/g; $width=length($rendered); print "$ARGV:$.:$width:$text\n" if $width > 18; }' maps/Target.asm
```

Repair every reported row and rerun the audit until it has no output. A clean
literal audit does not waive the dynamic-value review.

### 4. Validate the map in project context

After the width audit is clean:

1. Add `# done` to only the current tracker's entry.
2. Run `make -B main_gold.o`.
3. If the build output is truncated, inspect its final lines and confirm the
   final `rgbasm` command completed and returned to the shell without errors.
4. Run editor diagnostics for the map and tracker.
5. Run:

```sh
git diff --check -- maps/Target.asm route-and-non-city-asm-files.txt &&
git diff --stat -- maps/Target.asm &&
git status --short -- maps/Target.asm route-and-non-city-asm-files.txt
```

If any validation fails, repair the current map and repeat its validations.
If the failure cannot be resolved, remove the new `# done` marker, stop, and
report the blocker. Do not proceed to another tracker entry with an invalid
current map.

### 5. Continue without shallow batching

After one map passes every check, immediately select the next entry in the
requested scope and repeat the complete procedure. Do not dilute review depth
as the batch grows. Do not defer validation until the end of the batch.

Provide concise progress updates after each completed map or a small coherent
group, including the map name and validations passed. On completion, report the
processed range and any entries deliberately left untouched because they were
outside the requested scope.

## Final Batch Review

Before reporting the batch finished:

1. Re-read the requested tracker range and confirm every requested entry is
   marked `# done`.
2. Confirm no file was skipped, partially rewritten, or marked done before a
   successful validation cycle.
3. Summarize the processed maps and validation outcome without claiming that
   unrelated existing worktree changes belong to this batch.

## Anti-Shortcut Checks

Stop and correct the work if any of these are true:

- Only the first text label or first NPC conversation was changed.
- An event-dependent alternate branch, trainer reaction, sign, or reward text
  was left in the old voice without an explicit reason.
- The assigned voice skill or its mandatory support skills were not read.
- A text block was shortened so much that it lost a required gameplay fact.
- A tracker marker was added before the map passed width, assembler, diagnostic,
  and diff checks.
- The agent asks the user for another `next` despite a larger requested scope.
