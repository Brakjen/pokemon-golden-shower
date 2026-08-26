	object_const_def
	const UNIONCAVE1F_POKEFAN_M1
	const UNIONCAVE1F_SUPER_NERD
	const UNIONCAVE1F_POKEFAN_M2
	const UNIONCAVE1F_FISHER1
	const UNIONCAVE1F_FISHER2
	const UNIONCAVE1F_POKE_BALL1
	const UNIONCAVE1F_POKE_BALL2
	const UNIONCAVE1F_POKE_BALL3
	const UNIONCAVE1F_POKE_BALL4

UnionCave1F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerPokemaniacLarry:
	trainer POKEMANIAC, LARRY, EVENT_BEAT_POKEMANIAC_LARRY, PokemaniacLarrySeenText, PokemaniacLarryBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokemaniacLarryAfterBattleText
	waitbutton
	closetext
	end

TrainerHikerRussell:
	trainer HIKER, RUSSELL, EVENT_BEAT_HIKER_RUSSELL, HikerRussellSeenText, HikerRussellBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerRussellAfterBattleText
	waitbutton
	closetext
	end

TrainerHikerDaniel:
	trainer HIKER, DANIEL, EVENT_BEAT_HIKER_DANIEL, HikerDanielSeenText, HikerDanielBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerDanielAfterBattleText
	waitbutton
	closetext
	end

TrainerFirebreatherBill:
	trainer FIREBREATHER, BILL, EVENT_BEAT_FIREBREATHER_BILL, FirebreatherBillSeenText, FirebreatherBillBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FirebreatherBillAfterBattleText
	waitbutton
	closetext
	end

TrainerFirebreatherRay:
	trainer FIREBREATHER, RAY, EVENT_BEAT_FIREBREATHER_RAY, FirebreatherRaySeenText, FirebreatherRayBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FirebreatherRayAfterBattleText
	waitbutton
	closetext
	end

UnionCave1FGreatBall:
	itemball GREAT_BALL

UnionCave1FPotion:
	itemball POTION

UnionCave1FXAttack:
	itemball X_ATTACK

UnionCave1FAwakening:
	itemball AWAKENING

UnionCave1FUnusedSign: ; unreferenced
	jumptext UnionCave1FUnusedSignText

HikerRussellSeenText:
	text "You're headed to"
	line "AZALEA, are you?"

	para "That's… good."
	line "Very good."

	para "Let my #MON see"
	line "if you are good"
	cont "enough to battle."

	para "I like to know"
	line "what kind of"
	cont "company I'm"
	cont "keeping."
	done

HikerRussellBeatenText:
	text "Oh… oh…"
	line "You won."
	done

HikerRussellAfterBattleText:
	text "All right, then."
	line "I've decided."

	para "I'm not leaving"
	line "until my #MON"
	cont "get tougher."

	para "Neither are you,"
	line "if you stay much"
	cont "longer."

	para "The cave gets so"
	line "quiet at night."
	cont "You can hear"
	cont "everything."
	done

PokemaniacLarrySeenText:
	text "I roam far and"
	line "wide in search of"
	cont "#MON."

	para "Are you looking"
	line "for #MON too?"

	para "Then you're my"
	line "collecting rival…"

	para "Or maybe something"
	line "else."

	para "I've been waiting"
	line "for someone who"
	cont "walks this deep"
	cont "alone."
	done

PokemaniacLarryBeatenText:
	text "Ugh. My poor #-"
	line "MON…"
	done

PokemaniacLarryAfterBattleText:
	text "Every Friday, you"
	line "can hear #MON"

	para "roars from deep"
	line "inside the cave."

	para "Sometimes they"
	line "don't sound like"
	cont "#MON at all."

	para "If you ever want"
	line "to go deeper…"
	cont "I know the way."

	para "I always know the"
	line "way."
	done

HikerDanielSeenText:
	text "Whoa… What a"
	line "surprise."

	para "I didn't expect to"
	line "see anyone here."

	para "Most people who"
	line "come this far"
	cont "don't come back"
	cont "the same way."
	done

HikerDanielBeatenText:
	text "Whoa… I'm beaten"
	line "big time."
	done

HikerDanielAfterBattleText:
	text "I was conned into"
	line "buying a SLOWPOKE-"
	cont "TAIL once."

	para "I feel sorry for"
	line "the poor #MON."

	para "…You look tired."
	line "There's a place"
	cont "deeper in where"
	cont "you could rest."

	para "I could show you."
	line "No one would"
	cont "bother us."
	done

FirebreatherBillSeenText:
	text "ZUBAT's SUPERSONIC"
	line "keeps confusing"
	cont "my #MON."

	para "I'm seriously"
	line "upset about that."

	para "It makes it hard"
	line "to keep track of"
	cont "who is still…"
	cont "standing."
	done

FirebreatherBillBeatenText:
	text "I flamed out."
	done

FirebreatherBillAfterBattleText:
	text "On weekends, you"
	line "can hear strange"

	para "roars from deep in"
	line "the cave."

	para "I stay and listen."
	line "Sometimes I think"
	cont "they're calling"
	cont "for company."

	para "If you hear them"
	line "too… come find"
	cont "me. I'll keep you"
	cont "safe. Very safe."
	done

FirebreatherRaySeenText:
	text "If it's light, a"
	line "cave isn't scary."

	para "If you're strong,"
	line "#MON aren't"
	cont "scary."

	para "But the dark still"
	line "has teeth."

	para "And it remembers"
	line "faces."
	done

FirebreatherRayBeatenText:
	text "FLASH!"
	done

FirebreatherRayAfterBattleText:
	text "It's my #MON's"
	line "fire that lights"
	cont "up this cave."

	para "Without it, you"
	line "wouldn't see me"
	cont "coming."

	para "…You have a nice"
	line "face. I hope the"
	cont "dark doesn't take"
	cont "it from you."
	done

UnionCave1FUnusedSignText:
	text "UNION CAVE"
	done

UnionCave1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 19, UNION_CAVE_B1F, 3
	warp_event  3, 33, UNION_CAVE_B1F, 4
	warp_event 17, 31, ROUTE_33, 1
	warp_event 17,  3, ROUTE_32, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerHikerDaniel, -1
	object_event  4, 21, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerPokemaniacLarry, -1
	object_event 15,  8, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerHikerRussell, -1
	object_event 16, 31, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerFirebreatherRay, -1
	object_event 15, 15, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerFirebreatherBill, -1
	object_event 17, 21, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, UnionCave1FGreatBall, EVENT_UNION_CAVE_1F_GREAT_BALL
	object_event  4,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, UnionCave1FPotion, EVENT_UNION_CAVE_1F_POTION
	object_event  4, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, UnionCave1FXAttack, EVENT_UNION_CAVE_1F_X_ATTACK
	object_event 12, 33, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, UnionCave1FAwakening, EVENT_UNION_CAVE_1F_AWAKENING