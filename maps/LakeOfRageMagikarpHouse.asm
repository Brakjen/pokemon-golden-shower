	object_const_def
	const LAKEOFRAGEMAGIKARPHOUSE_FISHING_GURU

LakeOfRageMagikarpHouse_MapScripts:
	def_scene_scripts

	def_callbacks

MagikarpLengthRaterScript:
	faceplayer
	opentext
	checkevent EVENT_LAKE_OF_RAGE_ETHER_ON_STANDBY
	iftrue .GetReward
	checkevent EVENT_LAKE_OF_RAGE_ASKED_FOR_MAGIKARP
	iftrue .AskedForMagikarp
	checkevent EVENT_CLEARED_ROCKET_HIDEOUT
	iftrue .ClearedRocketHideout
	checkevent EVENT_LAKE_OF_RAGE_EXPLAINED_WEIRD_MAGIKARP
	iftrue .ExplainedHistory
	writetext MagikarpLengthRaterText_LakeOfRageHistory
	waitbutton
	closetext
	setevent EVENT_LAKE_OF_RAGE_EXPLAINED_WEIRD_MAGIKARP
	end

.ExplainedHistory:
	writetext MagikarpLengthRaterText_MenInBlack
	waitbutton
	closetext
	end

.ClearedRocketHideout:
	writetext MagikarpLengthRaterText_WorldsLargestMagikarp
	waitbutton
	closetext
	setevent EVENT_LAKE_OF_RAGE_ASKED_FOR_MAGIKARP
	end

.AskedForMagikarp:
	setval MAGIKARP
	special FindPartyMonThatSpecies
	iffalse .ClearedRocketHideout
	writetext MagikarpLengthRaterText_YouHaveAMagikarp
	waitbutton
	special CheckMagikarpLength
	ifequal MAGIKARPLENGTH_NOT_MAGIKARP, .NotMagikarp
	ifequal MAGIKARPLENGTH_REFUSED, .Refused
	ifequal MAGIKARPLENGTH_TOO_SHORT, .TooShort
	; MAGIKARPLENGTH_BEAT_RECORD
	sjump .GetReward

.GetReward:
	writetext MagikarpLengthRaterText_Memento
	promptbutton
	verbosegiveitem ETHER
	iffalse .NoRoom
	writetext MagikarpLengthRaterText_Bonus
	waitbutton
	closetext
	clearevent EVENT_LAKE_OF_RAGE_ETHER_ON_STANDBY
	end

.NoRoom:
	closetext
	setevent EVENT_LAKE_OF_RAGE_ETHER_ON_STANDBY
	end

.TooShort:
	writetext MagikarpLengthRaterText_TooShort
	waitbutton
	closetext
	end

.NotMagikarp:
	writetext MagikarpLengthRaterText_NotMagikarp
	waitbutton
	closetext
	end

.Refused:
	writetext MagikarpLengthRaterText_Refused
	waitbutton
	closetext
	end

LakeOfRageMagikarpHouseUnusedRecordSign: ; unreferenced
	jumptext LakeOfRageMagikarpHouseUnusedRecordText

MagikarpHouseBookshelf:
	jumpstd DifficultBookshelfScript

MagikarpLengthRaterText_LakeOfRageHistory:
	text "The lake was a"
	line "hole first. A big"
	cont "hole, maddafakka."

	para "GYARADOS made it."
	line "Or made the hole."

	para "Then rain went in."
	line "Water fills holes."

	para "So now it is a"
	line "lake. Lake stuff."

	para "My grandpa's old"
	line "grandpa said so."
	cont "Or his grandpa."

	para "MAGIKARP used to"
	line "jump there."

	para "Now they do not."
	line "Why? Well... why,"
	cont "assclown?"
	done

MagikarpLengthRaterText_MenInBlack:
	text "The lake went bad"
	line "when black-clothes"
	cont "men came."

	para "They came."
	line "Then bad came."
	cont "Same time,"
	cont "cumfairy."
	done

MagikarpLengthRaterText_WorldsLargestMagikarp:
	text "The lake is good"
	line "again, maddafakka."

	para "MAGIKARP are back."
	line "Fish come when"
	cont "they come."

	para "I want the biggest"
	line "MAGIKARP. Biggest"
	cont "means most big."

	para "Use a ROD. Catch"
	line "one and show me,"
	cont "assclown."
	done

MagikarpLengthRaterText_YouHaveAMagikarp:
	text "Oh. MAGIKARP."
	line "You got one,"
	cont "cumfairy."

	para "Show me. I measure"
	line "the big part."

	para "All of it, I mean."
	line "The whole fish,"
	cont "maddafakka."
	done

MagikarpLengthRaterText_Memento:
	text "Big! Bigger than"
	line "the old big one,"
	cont "assclown."

	para "New record. Record"
	line "means biggest so"
	cont "far."

	para "Take this ETHER,"
	line "maddafakka."
	cont "It is the prize."
	done

MagikarpLengthRaterText_Bonus:
	text "Record matters."
	line "The big number."

	para "ETHER is extra,"
	line "cumfairy."
	cont "Extra means also."
	done

MagikarpLengthRaterText_TooShort:
	text "It is big. Maybe."
	line "No, wait. Not big"
	cont "enough."
	cont "maddafakka."

	para "The record fish is"
	line "bigger. Bigger is"
	cont "more fish length."

	para "Bring a long one,"
	line "assclown."
	done

MagikarpLengthRaterText_NotMagikarp:
	text "That is not"
	line "MAGIKARP. It is"
	cont "some other thing,"
	cont "cumfairy."
	done

MagikarpLengthRaterText_Refused:
	text "No fish shown."
	line "No means no fish,"
	cont "maddafakka."

	para "Bring MAGIKARP"
	line "later. A big one,"
	cont "assclown."
	done

LakeOfRageMagikarpHouseUnusedRecordText:
	text "CURRENT RECORD"

	para "@"
	text_ram wStringBuffer3
	text " caught by"
	line "@"
	text_ram wStringBuffer4
	text_end

LakeOfRageMagikarpHouseUnusedDummyText: ; unreferenced
	text_end

LakeOfRageMagikarpHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, LAKE_OF_RAGE, 2
	warp_event  3,  7, LAKE_OF_RAGE, 2

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, MagikarpHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, MagikarpHouseBookshelf

	def_object_events
	object_event  2,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MagikarpLengthRaterScript, -1
