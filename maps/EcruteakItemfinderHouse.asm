	object_const_def
	const ECRUTEAKITEMFINDERHOUSE_COOLTRAINER_M
	const ECRUTEAKITEMFINDERHOUSE_POKEDEX

EcruteakItemfinderHouse_MapScripts:
	def_scene_scripts

	def_callbacks

EcruteakItemfinderGuy:
	faceplayer
	opentext
	checkevent EVENT_GOT_ITEMFINDER
	iftrue .itemfinder
	writetext EcruteakItemfinderAdventureText
	yesorno
	iffalse .no
	writetext EcruteakItemfinderTrueSpiritText
	promptbutton
	verbosegiveitem ITEMFINDER
	setevent EVENT_GOT_ITEMFINDER
.itemfinder:
	writetext ItemfinderExplanationText
	waitbutton
	closetext
	end

.no:
	writetext EcruteakItemfinderToEachHisOwnText
	waitbutton
	closetext
	end

EcruteakHistoryBook:
	opentext
	writetext EcruteakHistoryBookText
	yesorno
	iftrue .ReadBook
	closetext
	end

.ReadBook:
	writetext EcruteakTwoTowersText
	yesorno
	iftrue .KeepReading
	closetext
	end

.KeepReading:
	writetext EcruteakThreeMonText
	waitbutton
	closetext
	end

ItemFinderHouseRadio:
	jumpstd Radio2Script

EcruteakItemfinderAdventureText:
	text "Thou roamest with"
	line "#MON?"
	cont "cock sucker?"

	para "Such wandering"
	line "seeketh vain gain."

	para "Yet treasure hid"
	line "in earth is found,"
	cont "sick fuck."

	para "Wilt thou seek it?"
	done

EcruteakItemfinderTrueSpiritText:
	text "Thou knowest the"
	line "seeker's zeal,"
	cont "maddafakka."

	para "Yet treasure is"
	line "not grace. Matt."
	cont "6:19-21."

	para "Take this tool,"
	line "sick fuck."
	done

ItemfinderExplanationText:
	text "Items lie hidden,"
	line "cock sucker."

	para "Use ITEMFINDER"
	line "near the ground."

	para "It revealeth not"
	line "the exact place."

	para "Seek by thine eye."

	para "In ECRUTEAK's"
	line "BURNED TOWER lie"
	cont "such things,"
	cont "sick fuck."
	done

EcruteakItemfinderToEachHisOwnText:
	text "Go thy way, then,"
	line "cock sucker."
	done

EcruteakHistoryBookText:
	text "HISTORY OF"
	line "ECRUTEAK,"
	cont "maddafakka."

	para "Wilt thou read it?"
	done

EcruteakTwoTowersText:
	text "ECRUTEAK bore"
	line "two towers,"
	cont "cock sucker."

	para "Each housed strong"
	line "flying #MON."

	para "One tower burned"
	line "to the ground."

	para "Both #MON"
	line "vanished,"
	cont "sick fuck."

	para "Keep reading?"
	done

EcruteakThreeMonText:
	text "Three #MON once"
	line "ran this town,"
	cont "maddafakka."

	para "Born of water,"
	line "lightning, fire."

	para "Their power raged"
	line "beyond restraint."

	para "The three fled"
	line "into grasslands,"
	cont "sick fuck."
	done

EcruteakItemfinderHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ECRUTEAK_CITY, 11
	warp_event  4,  7, ECRUTEAK_CITY, 11

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_READ, ItemFinderHouseRadio

	def_object_events
	object_event  2,  3, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EcruteakItemfinderGuy, -1
	object_event  3,  3, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakHistoryBook, -1
