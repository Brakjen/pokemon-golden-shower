#!/usr/bin/env python3
"""Generate per-map Markdown indexes for trainer encounters and party data.

The report joins map object events and battle scripts with trainer constants and
party definitions. It writes one Markdown file for every map containing a
trainer encounter, including party-definition links that resolve in VS Code's
Markdown renderer.
"""

from __future__ import annotations

import re
from collections import defaultdict
from dataclasses import dataclass
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
MAPS_DIRECTORY = ROOT / "maps"
OUTPUT_DIRECTORY = ROOT / "docs" / "trainer-locations"
PARTIES_PATH = ROOT / "data" / "trainers" / "parties.asm"
CONSTANTS_PATH = ROOT / "constants" / "trainer_constants.asm"

TRAINER_CLASS_PATTERN = re.compile(r"^\s*trainerclass ([A-Z0-9_]+)")
CONSTANT_PATTERN = re.compile(r"^\s*const ([A-Z0-9_]+)")
GROUP_PATTERN = re.compile(r"^([A-Za-z0-9]+)Group:")
PARTY_COMMENT_PATTERN = re.compile(r"^\s*; ([A-Z0-9_]+) \((\d+)\)")
PARTY_HEADER_PATTERN = re.compile(
    r'^\s*db "([^"]+)@", (TRAINERTYPE_[A-Z_]+)'
)
PARTY_MEMBER_PATTERN = re.compile(r"^\s*db\s+(\d+),\s*([A-Z0-9_]+)")
SCRIPT_LABEL_PATTERN = re.compile(r"^([A-Za-z0-9_]+):")
TRAINER_PATTERN = re.compile(r"^\s*trainer\s+([A-Z0-9_]+),\s*([A-Z0-9_]+),")
LOAD_TRAINER_PATTERN = re.compile(r"^\s*loadtrainer\s+([A-Z0-9_]+),\s*([A-Z0-9_]+)")
OBJECT_EVENT_PATTERN = re.compile(
    r"^\s*object_event\s+(\d+),\s*(\d+),.*?"
    r"OBJECTTYPE_(?:TRAINER|SCRIPT),\s*\d+,\s*([A-Za-z0-9_]+),"
)
TRAINER_OBJECT_PATTERN = re.compile(r"OBJECTTYPE_TRAINER")


@dataclass(frozen=True)
class Party:
    """Represent an entry in the trainer party table.

    Args:
        name: Displayed trainer name without the terminator.
        trainer_type: Party row format constant.
        members: Ordered level and species pairs in the party.
        line: One-based party-header line in the source file.

    Returns:
        A structured party record used by the YAML emitter.
    """

    name: str
    trainer_type: str
    members: tuple[tuple[int, str], ...]
    line: int


@dataclass(frozen=True)
class Encounter:
    """Represent a trainer encounter sourced from one map file.

    Args:
        trainer_class: Trainer class constant.
        party_id: Trainer party constant.
        script: Parent script label that launches the battle.
        x: Map X coordinate, when an object owns this encounter.
        y: Map Y coordinate, when an object owns this encounter.
        source: Whether the battle is an object trainer or scripted load.

    Returns:
        A normalized encounter record for YAML output.
    """

    trainer_class: str
    party_id: str
    script: str
    x: int | None
    y: int | None
    source: str


def parse_trainer_constants() -> dict[str, dict[str, int]]:
    """Map each trainer class and party constant to its one-based party index.

    Args:
        None.

    Returns:
        A dictionary mapping trainer classes to their party ID ordinals.
    """

    class_members: dict[str, dict[str, int]] = defaultdict(dict)
    current_class: str | None = None
    party_index = 0

    for line in CONSTANTS_PATH.read_text().splitlines():
        class_match = TRAINER_CLASS_PATTERN.match(line)
        if class_match:
            current_class = class_match.group(1)
            party_index = 0
            continue

        constant_match = CONSTANT_PATTERN.match(line)
        if current_class is not None and constant_match:
            party_index += 1
            class_members[current_class][constant_match.group(1)] = party_index

    return class_members


def parse_parties() -> dict[tuple[str, int], Party]:
    """Read party names, formats, roster members, and source lines.

    Args:
        None.

    Returns:
        A dictionary keyed by trainer class and one-based party index.
    """

    parties: dict[tuple[str, int], Party] = {}
    pending_key: tuple[str, int] | None = None
    pending_party: Party | None = None
    members: list[tuple[int, str]] = []

    for line_number, line in enumerate(PARTIES_PATH.read_text().splitlines(), start=1):
        if GROUP_PATTERN.match(line):
            continue

        comment_match = PARTY_COMMENT_PATTERN.match(line)
        if comment_match:
            pending_key = (comment_match.group(1), int(comment_match.group(2)))
            pending_party = None
            members = []
            continue

        header_match = PARTY_HEADER_PATTERN.match(line)
        if pending_key is not None and header_match:
            pending_party = Party(
                name=header_match.group(1),
                trainer_type=header_match.group(2),
                members=(),
                line=line_number,
            )
            continue

        member_match = PARTY_MEMBER_PATTERN.match(line)
        if pending_party is not None and member_match:
            members.append((int(member_match.group(1)), member_match.group(2)))
            continue

        if pending_party is not None and line.strip() == "db -1 ; end":
            parties[pending_key] = Party(
                name=pending_party.name,
                trainer_type=pending_party.trainer_type,
                members=tuple(members),
                line=pending_party.line,
            )
            pending_key = None
            pending_party = None
            members = []

    return parties


def parse_map_encounters(map_path: Path) -> list[Encounter]:
    """Extract trainer declarations and map-object coordinates from one map.

    Args:
        map_path: Source map assembly file to inspect.

    Returns:
        A deduplicated list of trainer encounters found in the map.
    """

    script_trainer: dict[str, tuple[str, str]] = {}
    script_loads: dict[str, list[tuple[str, str]]] = defaultdict(list)
    object_positions: dict[str, tuple[int, int, bool]] = {}
    current_script: str | None = None

    for line in map_path.read_text().splitlines():
        script_match = SCRIPT_LABEL_PATTERN.match(line)
        if script_match:
            current_script = script_match.group(1)
            continue

        trainer_match = TRAINER_PATTERN.match(line)
        if current_script is not None and trainer_match:
            script_trainer[current_script] = trainer_match.group(1), trainer_match.group(2)
            continue

        load_match = LOAD_TRAINER_PATTERN.match(line)
        if current_script is not None and load_match:
            script_loads[current_script].append((load_match.group(1), load_match.group(2)))
            continue

        object_match = OBJECT_EVENT_PATTERN.match(line)
        if object_match:
            x, y, script = object_match.groups()
            object_positions[script] = (int(x), int(y), bool(TRAINER_OBJECT_PATTERN.search(line)))

    encounters: list[Encounter] = []
    for script, (trainer_class, party_id) in script_trainer.items():
        position = object_positions.get(script)
        encounters.append(
            Encounter(
                trainer_class,
                party_id,
                script,
                position[0] if position else None,
                position[1] if position else None,
                "object" if position and position[2] else "trainer-script",
            )
        )

    for script, loads in script_loads.items():
        position = object_positions.get(script)
        for trainer_class, party_id in loads:
            encounters.append(
                Encounter(
                    trainer_class,
                    party_id,
                    script,
                    position[0] if position else None,
                    position[1] if position else None,
                    "scripted",
                )
            )

    return list(dict.fromkeys(encounters))


def write_location_report(
    map_path: Path,
    encounters: list[Encounter],
    party_ids: dict[str, dict[str, int]],
    parties: dict[tuple[str, int], Party],
) -> None:
    """Write one Markdown report for all resolved encounters in a map.

    Args:
        map_path: Source map assembly file represented by the report.
        encounters: Trainer encounters extracted from the map.
        party_ids: Class and party-ID ordinal lookup.
        parties: Fully parsed party definitions keyed by class and ordinal.

    Returns:
        None. The Markdown file is written under ``docs/trainer-locations``.
    """

    unique_encounters: dict[tuple[str, str], Encounter] = {}
    for encounter in encounters:
        key = encounter.trainer_class, encounter.party_id
        existing = unique_encounters.get(key)
        if existing is None or (existing.x is None and encounter.x is not None):
            unique_encounters[key] = encounter

    map_link = f"[maps/{map_path.name}](../../maps/{map_path.name})"
    lines = [f"# {map_path.stem}", "", f"Source: {map_link}"]
    resolved_count = 0

    for encounter in unique_encounters.values():
        party_index = party_ids.get(encounter.trainer_class, {}).get(encounter.party_id)
        party = parties.get((encounter.trainer_class, party_index)) if party_index else None
        if party is None:
            continue

        resolved_count += 1
        key = f"{encounter.trainer_class}_{encounter.party_id}"
        lines.extend(["", f"## {key}: {party.name}", ""])
        lines.append(f"- **Trainer class:** `{encounter.trainer_class}`")
        lines.append(f"- **Party ID:** `{encounter.party_id}`")
        lines.append(f"- **Encounter:** `{encounter.source}` via `{encounter.script}`")
        if encounter.x is not None and encounter.y is not None:
            lines.append(f"- **Coordinates:** `({encounter.x}, {encounter.y})`")
        else:
            lines.append("- **Coordinates:** scripted encounter")
        party_link = f"[parties.asm](../../data/trainers/parties.asm#L{party.line})"
        lines.append(f"- **Party definition:** {party_link}")
        lines.extend(["", "| Level | Pokemon |", "| --- | --- |"])
        for level, species in party.members:
            lines.append(f"| {level} | `{species}` |")

    if not resolved_count:
        return

    OUTPUT_DIRECTORY.mkdir(parents=True, exist_ok=True)
    output_path = OUTPUT_DIRECTORY / f"{map_path.stem}.md"
    output_path.write_text("\n".join(lines) + "\n")


def main() -> None:
    """Generate all location reports from the current trainer and map sources.

    Args:
        None.

    Returns:
        None. Existing generated Markdown and YAML reports are replaced.
    """

    party_ids = parse_trainer_constants()
    parties = parse_parties()
    OUTPUT_DIRECTORY.mkdir(parents=True, exist_ok=True)
    for output_path in (*OUTPUT_DIRECTORY.glob("*.yaml"), *OUTPUT_DIRECTORY.glob("*.md")):
        output_path.unlink()

    for map_path in sorted(MAPS_DIRECTORY.glob("*.asm")):
        encounters = parse_map_encounters(map_path)
        if encounters:
            write_location_report(map_path, encounters, party_ids, parties)


if __name__ == "__main__":
    main()