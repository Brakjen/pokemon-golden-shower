#!/usr/bin/env python3
"""Expand every defined trainer party to six existing-profile Pokemon.

The script preserves every current party member and appends copies of its
existing member records in order. That keeps the trainer's established species,
levels, held items, and explicit move legality intact for all party formats.
"""

from __future__ import annotations

import re
from pathlib import Path


PARTIES_PATH = Path(__file__).resolve().parents[1] / "data" / "trainers" / "parties.asm"
PARTY_HEADER_PATTERN = re.compile(r'^\s*db "[^"]+@", TRAINERTYPE_([A-Z_]+)$')
PARTY_MEMBER_PATTERN = re.compile(r"^\s*db\s+\d+,\s*[A-Z0-9_]+(?:,|$)")
PARTY_END = "db -1 ; end"


def expand_parties(lines: list[str]) -> list[str]:
    """Append member records until every trainer party contains six Pokemon.

    Args:
        lines: Current ``parties.asm`` source split into individual lines.

    Returns:
        Source lines with existing member records repeated in party order until
        every non-empty trainer party has exactly six members.

    Raises:
        ValueError: If a trainer party has no member records or more than six.
    """

    expanded_lines: list[str] = []
    party_type: str | None = None
    member_lines: list[str] = []

    for line in lines:
        header_match = PARTY_HEADER_PATTERN.match(line)
        if header_match:
            party_type = header_match.group(1)
            member_lines = []
            expanded_lines.append(line)
            continue

        if party_type is not None and PARTY_MEMBER_PATTERN.match(line):
            member_lines.append(line)
            expanded_lines.append(line)
            continue

        if party_type is not None and line.strip() == PARTY_END:
            if not member_lines:
                raise ValueError(f"empty {party_type} trainer party")
            if len(member_lines) > 6:
                raise ValueError(f"{party_type} trainer party exceeds six members")

            missing_members = 6 - len(member_lines)
            for member_index in range(missing_members):
                expanded_lines.append(member_lines[member_index % len(member_lines)])

            expanded_lines.append(line)
            party_type = None
            member_lines = []
            continue

        expanded_lines.append(line)

    return expanded_lines


def main() -> None:
    """Expand the current trainer-party source file in place.

    Args:
        None.

    Returns:
        None. The expanded trainer parties are written to ``parties.asm``.
    """

    lines = PARTIES_PATH.read_text().splitlines()
    PARTIES_PATH.write_text("\n".join(expand_parties(lines)) + "\n")


if __name__ == "__main__":
    main()
