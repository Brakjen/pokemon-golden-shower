	object_const_def
	const MANIASHOUSE_ROCKER

ManiasHouse_MapScripts:
	def_scene_scripts

	def_callbacks

ManiaScript:
	faceplayer
	opentext
	checkevent EVENT_MANIA_TOOK_SHUCKIE_OR_LET_YOU_KEEP_HIM
	iftrue .default_postevent
	checkevent EVENT_GOT_SHUCKIE
	iftrue .alreadyhaveshuckie
	writetext ManiaText_AskLookAfterShuckle
	yesorno
	iffalse .refusetotakeshuckie
	special GiveShuckle
	iffalse .partyfull
	writetext ManiaText_TakeCareOfShuckle
	promptbutton
	waitsfx
	writetext ManiaText_GotShuckle
	playsound SFX_KEY_ITEM
	waitsfx
	closetext
	setevent EVENT_GOT_SHUCKIE
	end

.alreadyhaveshuckie
	checkflag ENGINE_GOT_SHUCKIE_TODAY
	iffalse .returnshuckie
	writetext ManiaText_TakeCareOfShuckle
	waitbutton
	closetext
	end

.partyfull
	writetext ManiaText_PartyFull
	waitbutton
	closetext
	end

.refusetotakeshuckie
	writetext ManiaText_IfHeComesBack
	waitbutton
	closetext
	end

.returnshuckie
	writetext ManiaText_CanIHaveMyMonBack
	yesorno
	iffalse .refused
	special ReturnShuckie
	ifequal SHUCKIE_WRONG_MON, .wrong
	ifequal SHUCKIE_REFUSED, .refused
	ifequal SHUCKIE_HAPPY, .superhappy
	ifequal SHUCKIE_FAINTED, .default_postevent
	; SHUCKIE_RETURNED
	writetext ManiaText_ThankYou
	waitbutton
	closetext
	setevent EVENT_MANIA_TOOK_SHUCKIE_OR_LET_YOU_KEEP_HIM
	end

.wrong
	writetext ManiaText_ShuckleNotThere
	waitbutton
	closetext
	end

.superhappy
	writetext ManiaText_ShuckleLikesYou
	waitbutton
	closetext
	setevent EVENT_MANIA_TOOK_SHUCKIE_OR_LET_YOU_KEEP_HIM
	end

.refused
	writetext ManiaText_SameAsBeingRobbed
	waitbutton
	closetext
	end

.nothingleft ; unreferenced
	writetext ManiaText_ShuckleIsYourLastMon
	waitbutton
	closetext
	end

.default_postevent
	writetext ManiaText_HappinessSpeech
	waitbutton
	closetext
	end

ManiasHouseUnusedBookshelf: ; unreferenced
	jumpstd PictureBookshelfScript

ManiaText_AskLookAfterShuckle:
	text "Attend me,"
	line "retard."

	para "A long-haired"
	line "youth with a"
	cont "vulgar stare"
	cont "entered here."

	para "He frightened me"
	line "into surrendering"
	cont "my prized #MON."

	para "One companion"
	line "remains. I shall"
	cont "not risk another."

	para "Thy bearing seems"
	line "adequate, though"
	cont "scarcely refined."

	para "Wilt thou guard my"
	line "#MON awhile,"
	cont "pisspot?"
	done

ManiaText_TakeCareOfShuckle:
	text "A passable choice."
	line "pissfairy."

	para "Guard my #MON"
	line "with more care"
	cont "than thy manners"
	cont "suggest."
	cont "retard."
	done

ManiaText_GotShuckle:
	text "<PLAYER> received"
	line "a #MON."

	para "Mind thy charge,"
	line "pisspot."
	done

ManiaText_PartyFull:
	text "Thy #MON party"
	line "is full,"
	cont "pissfairy."

	para "Return with room."
	done

ManiaText_IfHeComesBack:
	text "Thou refusest,"
	line "retard?"

	para "If that brute"
	line "returns, I shall"
	cont "be poorly served."
	done

ManiaText_CanIHaveMyMonBack:
	text "How fares my"
	line "#MON,"
	cont "pisspot?"

	para "The danger hath"
	line "passed."

	para "Wilt thou return"
	line "my companion,"
	cont "pissfairy?"
	done

ManiaText_ThankYou:
	text "My thanks,"
	line "retard."

	para "Thou hast managed"
	line "basic propriety."
	done

ManiaText_ShuckleNotThere:
	text "My #MON is not"
	line "with thee,"
	cont "pisspot."

	para "Return when thou"
	line "actually hast it."
	done

ManiaText_ShuckleLikesYou:
	text "My #MON favors"
	line "thee, retard."

	para "Unexpectedly, thy"
	line "care hath merit."

	para "Keep it, then."
	line "Treat it well,"
	cont "pissfairy."
	done

ManiaText_SameAsBeingRobbed:
	text "Thou wilt not"
	line "return it,"
	cont "pissfairy?"

	para "That is theft with"
	line "poorer ceremony,"
	cont "pisspot."
	done

ManiaText_HappinessSpeech:
	text "A #MON"
	line "finds joy with"
	cont "one who"
	cont "treats it well."

	para "Even one of thy"
	line "station may learn"
	cont "that, retard."
	done

ManiaText_ShuckleIsYourLastMon:
	text "This is thy last"
	line "#MON."
	cont "pisspot."

	para "If I reclaim it,"
	line "what wilt thou use"
	cont "in battle,"
	cont "pissfairy?"
	done

ManiasHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CIANWOOD_CITY, 1
	warp_event  3,  7, CIANWOOD_CITY, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ManiaScript, -1
