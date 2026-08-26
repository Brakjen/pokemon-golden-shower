	object_const_def
	const ROUTE40_OLIVINE_RIVAL1
	const ROUTE40_OLIVINE_RIVAL2
	const ROUTE40_SWIMMER_GIRL1
	const ROUTE40_SWIMMER_GIRL2
	const ROUTE40_ROCK1
	const ROUTE40_ROCK2
	const ROUTE40_ROCK3
	const ROUTE40_LASS
	const ROUTE40_MONICA

Route40_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Route40MonicaCallback

Route40MonicaCallback:
	readvar VAR_WEEKDAY
	ifequal MONDAY, .MonicaAppears
	disappear ROUTE40_MONICA
	endcallback

.MonicaAppears:
	appear ROUTE40_MONICA
	endcallback

TrainerSwimmerfElaine:
	trainer SWIMMERF, ELAINE, EVENT_BEAT_SWIMMERF_ELAINE, SwimmerfElaineSeenText, SwimmerfElaineBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfElaineAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmerfPaula:
	trainer SWIMMERF, PAULA, EVENT_BEAT_SWIMMERF_PAULA, SwimmerfPaulaSeenText, SwimmerfPaulaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfPaulaAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmermSimon:
	trainer SWIMMERM, SIMON, EVENT_BEAT_SWIMMERM_SIMON, SwimmermSimonSeenText, SwimmermSimonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermSimonAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmermRandall:
	trainer SWIMMERM, RANDALL, EVENT_BEAT_SWIMMERM_RANDALL, SwimmermRandallSeenText, SwimmermRandallBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermRandallAfterBattleText
	waitbutton
	closetext
	end

Route40Lass1Script:
	jumptextfaceplayer Route40Lass1Text

MonicaScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_SHARP_BEAK_FROM_MONICA
	iftrue .Monday
	readvar VAR_WEEKDAY
	ifnotequal MONDAY, .NotMonday
	checkevent EVENT_MET_MONICA_OF_MONDAY
	iftrue .MetMonica
	writetext MeetMonicaText
	promptbutton
	setevent EVENT_MET_MONICA_OF_MONDAY
.MetMonica:
	writetext MonicaGivesGiftText
	promptbutton
	verbosegiveitem SHARP_BEAK
	iffalse .done
	setevent EVENT_GOT_SHARP_BEAK_FROM_MONICA
	writetext MonicaGaveGiftText
	waitbutton
	closetext
	end

.Monday:
	writetext MonicaMondayText
	waitbutton
.done:
	closetext
	end

.NotMonday:
	writetext MonicaNotMondayText
	waitbutton
	closetext
	end

Route40Sign:
	jumptext Route40SignText

Route40Rock:
	jumpstd SmashRockScript

Route40HiddenHyperPotion:
	hiddenitem HYPER_POTION, EVENT_ROUTE_40_HIDDEN_HYPER_POTION

Route40_StepRightUp6Movement: ; unreferenced
	step RIGHT
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end

Route40_StepUp5Movement: ; unreferenced
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end

Route40_StepUp4Movement: ; unreferenced
	step UP
	step UP
	step UP
	step UP
	step_end

SwimmermSimonSeenText:
	text "Warm up 'fore you"
	line "go in the water,"
	cont "y'all."

	para "Basic stuff."
	line "Even you know it."
	done

SwimmermSimonBeatenText:
	text "Alright! Uncle!"
	line "I give!"
	cont "Dingleberry!"
	done

SwimmermSimonAfterBattleText:
	text "CIANWOOD CITY's"
	line "a fair swim from"
	cont "here, friend."
	done

SwimmermRandallSeenText:
	text "A young fella like"
	line "you oughta swim,"
	cont "storeklovn."

	para "Use SURF on your"
	line "#MON."
	cont "Don't ride alone."
	done

SwimmermRandallBeatenText:
	text "FUCK. I lost."
	line "Vetlegnolt."
	done

SwimmermRandallAfterBattleText:
	text "Swimming works"
	line "every bit of you."
	cont "Healthy as chores."
	done

SwimmerfElaineSeenText:
	text "You headed to"
	line "CIANWOOD, ma'am?"

	para "Have a quick"
	line "battle first,"
	cont "dingleberry?"
	done

SwimmerfElaineBeatenText:
	text "Well, I lost that"
	line "one, storeklovn!"
	done

SwimmerfElaineAfterBattleText:
	text "I swim better'n"
	line "you. That's fact,"
	cont "vetlegnolt."
	done

SwimmerfPaulaSeenText:
	text "No inner tube"
	line "for me, nope."

	para "I hang onto a"
	line "sea #MON"
	cont "instead, y'all."
	cont "y'all."
	done

SwimmerfPaulaBeatenText:
	text "Ooh, I'm dizzy,"
	line "dingleberry!"
	done

SwimmerfPaulaAfterBattleText:
	text "While I float,"
	line "the waves carry me"
	cont "along, storeklovn."
	done

Route40Lass1Text:
	text "You can't see it,"
	line "but CIANWOOD's"

	para "across the sea,"
	line "vetlegnolt."
	done

MeetMonicaText:
	text "MONICA: Hail,"
	line "traveler. I am"

	para "MONICA of Monday."
	line "Wanna milk me,"
	cont "storeklovn?"
	done

MonicaGivesGiftText:
	text "Accept this gift,"
	line "dingleberry."
	done

MonicaGaveGiftText:
	text "MONICA: This item"
	line "raises the power"

	para "of flying-type"
	line "moves, vetlegnolt."

	para "Equip it to a bird"
	line "#MON."
	done

MonicaMondayText:
	text "MONICA: My kinfolk"
	line "wander wide"

	para "Seek them out,"
	line "storeklovn."
	done

MonicaNotMondayText:
	text "MONICA: Not"
	line "Monday, I reckon."
	cont "Come back then,"
	cont "dingleberry."
	done

Route40SignText:
	text "ROUTE 40"

	para "CIANWOOD CITY"
	line "to OLIVINE CITY"
	cont "Keep swimmin'."
	done

Route40_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 16,  8, BGEVENT_READ, Route40Sign
	bg_event 11,  7, BGEVENT_ITEM, Route40HiddenHyperPotion

	def_object_events
	object_event 14, 15, SPRITE_OLIVINE_RIVAL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerSwimmermSimon, -1
	object_event 18, 30, SPRITE_OLIVINE_RIVAL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 5, TrainerSwimmermRandall, -1
	object_event  3, 19, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerSwimmerfElaine, -1
	object_event 10, 25, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfPaula, -1
	object_event 12,  8, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route40Rock, -1
	object_event 11,  7, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route40Rock, -1
	object_event 13,  6, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route40Rock, -1
	object_event 13, 10, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route40Lass1Script, -1
	object_event 10,  6, SPRITE_BEAUTY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MonicaScript, EVENT_ROUTE_40_MONICA_OF_MONDAY
