---
name: game-dialog
description: "Use when editing Pokemon Golden Shower GBZ80 game dialogue: text macros, dialogue compilation, 18-character rendered line limits, #MON/#GEAR expansion widths, dynamic text buffers, and text/line/cont layout."
argument-hint: "Describe the dialogue files or messages to update"
user-invocable: false
disable-model-invocation: true
---

# Game Dialogue Safety

Use this skill when changing player-facing dialogue in `.asm` files. It governs mechanical correctness only: assembler validity, 18-column text-box limits, runtime expansion widths, and text-command layout. It does not prescribe tone, voice, story, or wording beyond what is necessary for a valid layout.

## Core Rules

1. Every rendered dialogue row must be at most 18 columns wide.
2. Count the rendered form, not merely the source characters.
3. Treat any runtime value as variable-width until its maximum visible length is known.
4. Prefer one of these layouts for ordinary dialogue:

```gbz80
text "First visible row"
line "Second visible row"
cont "Third visible row"
cont "Fourth visible row"
done
```

```gbz80
para "First visible row"
line "Second visible row"
cont "Third visible row"
cont "Fourth visible row"
done
```

5. Use a new `para` only to begin a new text page or paragraph. Do not use it to paper over a bad line split.
6. Do not place visible dialogue outside `text`, `line`, `cont`, `para`, or the appropriate dynamic-text command.
7. Keep the terminating command correct for the calling script: normally `done`; use `prompt` only where the script expects a promptable text box.

## Text Commands

- `text "..."`: starts the text box and writes its first row.
- `line "..."`: moves to the second row.
- `cont "..."`: scrolls and writes the next row. Use repeated `cont` commands for continuing rows.
- `para "..."`: starts a new paragraph/page, then writes its first row.
- `done`: ends a normal text box.
- `prompt`: ends a promptable text box.
- `text_ram`, `text_buffer`, `text_decimal`, and related commands write runtime data. They require a documented width budget.

## Semantic Invariants

This skill does not require literal source wording or official map/menu labels to remain unchanged. Voice skills may loosely reimagine flavor, shop chatter, and local explanations using diegetic descriptions.

Do preserve facts that control play: required items, actionable directions, battle conditions, service outcomes, event-state information, choices, dynamic values, and the meaning of yes/no prompts. Keep an exact proper name only when the player needs it to navigate, invoke a system, or complete a mission.

## Rendered-Width Accounting

The common source tokens below are not one visible column:

| Source token | Rendered-width budget |
| --- | ---: |
| `#` | 4 columns (`POKe`) |
| `#MON` | 7 columns (`POKeMON`) |
| `#GEAR` | 8 columns (`POKeGEAR`) |
| `# BALLS` | 10 columns (`POKe BALLS`) |
| `<PLAYER>` | 7 columns maximum; `PLAYER_NAME_LENGTH` is 8 bytes including the terminator |

These are budgets, not stylistic substitutions. For example:

```gbz80
; Unsafe: 5 + 1 + 7 + 1 + 6 = 20 rendered columns
line "Bring #MON here."

; Safe: 5 + 1 + 7 = 13 rendered columns
line "Bring #MON"
cont "here."
```

For tokens or text commands not listed above:

1. Find the character-map or buffer definition that controls the rendered value.
2. Determine its maximum printable length, not its byte length unless they are the same.
3. Reserve that full maximum on the row.
4. If the maximum is unknown, move the dynamic value to its own row or shorten the surrounding fixed text until it is safe.

Never assume an item name, map name, trainer name, nickname, string buffer, or decimal value will be short enough based on one observed playthrough.

## Editing Procedure

1. Identify every text label modified by the request, including nearby alternate branches such as event-dependent dialogue.
2. Rewrite each message using `text` or `para`, then `line`, then zero or more `cont` commands where that structure fits.
3. Count every row after expanding `#MON`, `#GEAR`, `#`, and all other runtime values.
4. Check sentence grammar after splitting. A valid width does not excuse a broken phrase across pages.
5. Confirm labels, `writetext` references, and terminators are still intact.
6. Build the ROM with `make`.

## Static Width Audit

Run this from the repository root for map dialogue that uses only literal text plus `#MON`, `#GEAR`, and `#`:

```sh
perl -ne 'if (/^\s*(?:text|line|cont|para)\s+"([^"]*)"/) { $text=$1; $rendered=$text; $rendered =~ s/#MON/POKEMON/g; $rendered =~ s/#GEAR/POKEGEAR/g; $rendered =~ s/#/POKE/g; $width=length($rendered); print "$ARGV:$.:$width:$text\n" if $width > 18; }' maps/ExampleMap.asm
```

The command is a baseline check, not a substitute for inspecting dynamic commands. Extend it or manually account for `<PLAYER>`, `<RIVAL>`, `text_ram`, `text_buffer`, `text_decimal`, and other runtime output.

## Final Validation Checklist

- No literal row exceeds 18 rendered columns.
- All `#`-based tokens have been counted at their rendered widths.
- Every runtime string has an explicit maximum-width budget.
- Dialogue follows `text/para -> line -> cont...` where appropriate.
- Each text block ends with the correct command.
- `make` passes with no dialogue-related assembler errors or warnings.
