	object_const_def
	const CHERRYGROVECITY_GRAMPS
	const CHERRYGROVECITY_RIVAL
	const CHERRYGROVECITY_TEACHER
	const CHERRYGROVECITY_YOUNGSTER
	const CHERRYGROVECITY_FISHER

CherrygroveCity_MapScripts:
	def_scene_scripts
	scene_script CherrygroveCityNoop1Scene, SCENE_CHERRYGROVECITY_NOOP
	scene_script CherrygroveCityNoop2Scene, SCENE_CHERRYGROVECITY_MEET_RIVAL

	def_callbacks
	callback MAPCALLBACK_NEWMAP, CherrygroveCityFlypointCallback

CherrygroveCityNoop1Scene:
	end

CherrygroveCityNoop2Scene:
	end

	special HealParty
	playmapmusic
	end
	CherrygroveCityFlypointCallback:
		setflag ENGINE_FLYPOINT_CHERRYGROVE
		endcallback

	CherrygroveCityGuideGent:
		faceplayer
		opentext
		writetext GuideGentIntroText
		yesorno
		iffalse .No
		sjump .Yes
	.Yes:
		writetext GuideGentTourText1
		waitbutton
		closetext
		playmusic MUSIC_SHOW_ME_AROUND
		follow CHERRYGROVECITY_GRAMPS, PLAYER
		applymovement CHERRYGROVECITY_GRAMPS, GuideGentMovement1
		opentext
		writetext GuideGentPokecenterText
		waitbutton
		closetext
		applymovement CHERRYGROVECITY_GRAMPS, GuideGentMovement2
		turnobject PLAYER, UP
		opentext
		writetext GuideGentMartText
		waitbutton
		closetext
		applymovement CHERRYGROVECITY_GRAMPS, GuideGentMovement3
		turnobject PLAYER, UP
		opentext
		writetext GuideGentRoute30Text
		waitbutton
		closetext
		applymovement CHERRYGROVECITY_GRAMPS, GuideGentMovement4
		turnobject PLAYER, LEFT
		opentext
		writetext GuideGentSeaText
		waitbutton
		closetext
		applymovement CHERRYGROVECITY_GRAMPS, GuideGentMovement5
		turnobject PLAYER, UP
		pause 60
		turnobject CHERRYGROVECITY_GRAMPS, LEFT
		turnobject PLAYER, RIGHT
		opentext
		writetext GuideGentGiftText
		promptbutton
		getstring STRING_BUFFER_4, .mapcardname
		scall .JumpstdReceiveItem
		setflag ENGINE_MAP_CARD
		writetext GotMapCardText
		promptbutton
		writetext GuideGentPokegearText
		waitbutton
		closetext
		stopfollow
		special RestartMapMusic
		turnobject PLAYER, UP
		applymovement CHERRYGROVECITY_GRAMPS, GuideGentMovement6
		playsound SFX_ENTER_DOOR
		disappear CHERRYGROVECITY_GRAMPS
		clearevent EVENT_GUIDE_GENT_VISIBLE_IN_CHERRYGROVE
		waitsfx
		end

	.JumpstdReceiveItem:
		jumpstd ReceiveItemScript
		end

	.mapcardname
		db "MAP CARD@"

	.No:
		writetext GuideGentNoText
		waitbutton
		closetext
		end

	CherrygroveRivalSceneSouth:
		moveobject CHERRYGROVECITY_RIVAL, 39, 7
	CherrygroveRivalSceneNorth:
		turnobject PLAYER, RIGHT
		showemote EMOTE_SHOCK, PLAYER, 15
		special FadeOutMusic
		pause 15
		appear CHERRYGROVECITY_RIVAL
		applymovement CHERRYGROVECITY_RIVAL, CherrygroveCity_RivalWalksToYou
		turnobject PLAYER, RIGHT
		playmusic MUSIC_RIVAL_ENCOUNTER
		opentext
		writetext CherrygroveRivalText_Seen
		waitbutton
		closetext
		checkevent EVENT_GOT_TOTODILE_FROM_ELM
		iftrue .Totodile
		checkevent EVENT_GOT_CHIKORITA_FROM_ELM
		iftrue .Chikorita
		winlosstext RivalCherrygroveWinText, RivalCherrygroveLossText
		setlasttalked CHERRYGROVECITY_RIVAL
		loadtrainer RIVAL1, RIVAL1_1_TOTODILE
		loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
		startbattle
		dontrestartmapmusic
		reloadmap
		iftrue .AfterVictorious
		sjump .AfterYourDefeat

	.Totodile:
		winlosstext RivalCherrygroveWinText, RivalCherrygroveLossText
		setlasttalked CHERRYGROVECITY_RIVAL
		loadtrainer RIVAL1, RIVAL1_1_CHIKORITA
		loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
		startbattle
		dontrestartmapmusic
		reloadmap
		iftrue .AfterVictorious
		sjump .AfterYourDefeat

	.Chikorita:
		winlosstext RivalCherrygroveWinText, RivalCherrygroveLossText
		setlasttalked CHERRYGROVECITY_RIVAL
		loadtrainer RIVAL1, RIVAL1_1_CYNDAQUIL
		loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
		startbattle
		dontrestartmapmusic
		reloadmap
		iftrue .AfterVictorious
		sjump .AfterYourDefeat

	.AfterVictorious:
		playmusic MUSIC_RIVAL_AFTER
		opentext
		writetext CherrygroveRivalText_YouWon
		waitbutton
		closetext
		sjump .FinishRival

	.AfterYourDefeat:
		playmusic MUSIC_RIVAL_AFTER
		opentext
		writetext CherrygroveRivalText_YouLost
		waitbutton
		closetext
	.FinishRival:
		playsound SFX_TACKLE
		applymovement PLAYER, CherrygroveCity_RivalPushesYouOutOfTheWay
		turnobject PLAYER, LEFT
		applymovement CHERRYGROVECITY_RIVAL, CherrygroveCity_RivalExitsStageLeft
		disappear CHERRYGROVECITY_RIVAL
		setscene SCENE_CHERRYGROVECITY_NOOP
		special HealParty
		playmapmusic
		end

	CherrygroveTeacherScript:
		faceplayer
		opentext
		checkflag ENGINE_MAP_CARD
		iftrue .HaveMapCard
		writetext CherrygroveTeacherText_NoMapCard
		waitbutton
		closetext
		end

	.HaveMapCard:
		writetext CherrygroveTeacherText_HaveMapCard
		waitbutton
		closetext
		end

	CherrygroveYoungsterScript:
		faceplayer
		opentext
		checkflag ENGINE_POKEDEX
		iftrue .HavePokedex
		writetext CherrygroveYoungsterText_NoPokedex
		waitbutton
		closetext
		end

	.HavePokedex:
		writetext CherrygroveYoungsterText_HavePokedex
		waitbutton
		closetext
		end

	MysticWaterGuy:
		faceplayer
		opentext
		checkevent EVENT_GOT_MYSTIC_WATER_IN_CHERRYGROVE
		iftrue .After
		writetext MysticWaterGuyTextBefore
		promptbutton
		verbosegiveitem MYSTIC_WATER
		iffalse .Exit
		setevent EVENT_GOT_MYSTIC_WATER_IN_CHERRYGROVE
	.After:
		writetext MysticWaterGuyTextAfter
		waitbutton
	.Exit:
		closetext
		end

	CherrygroveCitySign:
		jumptext CherrygroveCitySignText

	GuideGentsHouseSign:
		jumptext GuideGentsHouseSignText

	CherrygroveCityPokecenterSign:
		jumpstd PokecenterSignScript

	CherrygroveCityMartSign:
		jumpstd MartSignScript

	GuideGentMovement1:
		step LEFT
		step LEFT
		step UP
		step LEFT
		turn_head UP
		step_end

	GuideGentMovement2:
		step LEFT
		step LEFT
		step LEFT
		step LEFT
		step LEFT
		step LEFT
		turn_head UP
		step_end

	GuideGentMovement3:
		step LEFT
		step LEFT
		step LEFT
		step LEFT
		step LEFT
		step LEFT
		step LEFT
		turn_head UP
		step_end

	GuideGentMovement4:
		step LEFT
		step LEFT
		step LEFT
		step LEFT
		step DOWN
		step LEFT
		step LEFT
		step LEFT
		step DOWN
		turn_head LEFT
		step_end

	GuideGentMovement5:
		step DOWN
		step DOWN
		step RIGHT
		step RIGHT
		step RIGHT
		step RIGHT
		step RIGHT
		step RIGHT
		step RIGHT
		step RIGHT
		step RIGHT
		step RIGHT
		step DOWN
		step DOWN
		step RIGHT
		step RIGHT
		step RIGHT
		step RIGHT
		step RIGHT
		turn_head UP
		step_end

	GuideGentMovement6:
		step UP
		step UP
		step_end

	CherrygroveCity_RivalWalksToYou:
		step LEFT
		step LEFT
		step LEFT
		step LEFT
		step LEFT
		step_end

	CherrygroveCity_RivalPushesYouOutOfTheWay:
		big_step DOWN
		turn_head UP
		step_end

	CherrygroveCity_UnusedMovementData: ; unreferenced
		step LEFT
		turn_head DOWN
		step_end

	CherrygroveCity_RivalExitsStageLeft:
		big_step LEFT
		big_step LEFT
		big_step LEFT
		big_step LEFT
		big_step UP
		big_step UP
		big_step LEFT
		big_step LEFT
		step_end

GuideGentIntroText:
	text "Good morrow, young"
	line "aspirant. Thou art"
	cont "seem untried."

	para "Yet fear not. The"
	line "meanest squire may"
	cont "win his spurs."

	para "Shall I instruct"
	line "thee in our town's"
	cont "proper customs?"
	done

GuideGentTourText1:
	text "Excellent. Attend"
	line "me with all haste."
	done

GuideGentPokecenterText:
	text "Behold the #MON"
	line "CENTER. Here,"

	para "weary companions"
	line "are restored to"
	cont "their full state."

	para "Mark it well, lest"
	line "thine house fall"

	para "into disgrace"
	line "through neglect."
	done

GuideGentMartText:
	text "This #MON MART"
	line "dispenses goods"

	para "and BALLS for"
	line "claiming wild"

	para "#MON. Spend"
	line "thy coin wisely."
	done

GuideGentRoute30Text:
	text "ROUTE 30 lies"
	line "to the north."

	para "Trainers test"
	line "their #MON."

	para "Seek distinction,"
	line "not mere fortune."
	done

GuideGentSeaText:
	text "Here lies the sea,"
	line "vast and ancient."

	para "Some #MON dwell"
	line "in its depths."
	cont "Approach them with"
	cont "befitting care."
	done

GuideGentGiftText:
	text "Here we stand."

	para "This modest estate"
	line "is mine. Thy visit"
	cont "honors its halls."

	para "Accept this token"
	line "of my esteem."
	done

GotMapCardText:
	text "A MAP CARD hath"
	line "joins thy #GEAR"
	done

GuideGentPokegearText:
	text "Thy #GEAR gains"
	line "new virtue when"
	cont "CARDS are granted."

	para "May fortune favor"
	line "thy noble course."
	done

GuideGentNoText:
	text "As thou wilt. Such"
	line "instruction befits"
	cont "not every station."

	para "Return when thy"
	line "judgment matures."
	done

CherrygroveRivalText_Seen:
	text "…"

	para "So, the LAB hath"
	line "gave thee #MON."

	para "What a pitiful"
	line "waste of breeding."

	para "…"

	para "Dost thou fail to"
	line "grasp my meaning?"

	para "I too command"
	line "a choice #MON."

	para "I shall show thee"
	line "the distinction."
	done

RivalCherrygroveWinText:
	text "A fleeting triumph"
	line "ill suits thee."
	done

CherrygroveRivalText_YouLost:
	text "…"

	para "My name is ???."

	para "I shall become"
	line "the world's finest"
	cont "#MON trainer."
	done

RivalCherrygroveLossText:
	text "A wretched use"
	line "of my noble hours."
	done

CherrygroveRivalText_YouWon:
	text "…"

	para "My name is ???."

	para "I shall become"
	line "the world's finest"
	cont "#MON trainer."
	done

CherrygroveTeacherText_NoMapCard:
	text "Didst thou address"
	line "the elder beside"
	cont "#MON CENTER?"

	para "He grants a MAP"
	line "CARD for thy"
	cont "#GEAR."
	done

CherrygroveTeacherText_HaveMapCard:
	text "With #MON near,"
	line "each road proves"
	cont "worthy of thee."
	done

CherrygroveYoungsterText_NoPokedex:
	text "MR.#MON dwells"
	line "farther along this"
	cont "unremarkable road."
	done

CherrygroveYoungsterText_HavePokedex:
	text "I challenged those"
	line "trainers upon"
	cont "the road."

	para "My #MON fell."
	line "Their poor state"

	para "requires the"
	line "CENTER's care."
	done

MysticWaterGuyTextBefore:
	text "I caught #MON."
	line "It bore this gift."

	para "I deem it MYSTIC"
	line "WATER, though"
	cont "its worth hides."

	para "It is beneath my"
	line "present concern."
	cont "Wilt thou take it?"
	done

MysticWaterGuyTextAfter:
	text "I return now to"
	line "my angling."
	done

CherrygroveCitySignText:
	text "CHERRYGROVE CITY"

	para "A Haven of"
	line "Fragrant Blooms"
	done

GuideGentsHouseSignText:
	text "GUIDE GENT'S HOME"
	done

CherrygroveCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 23,  3, CHERRYGROVE_MART, 2
	warp_event 29,  3, CHERRYGROVE_POKECENTER_1F, 1
	warp_event 17,  7, CHERRYGROVE_GYM_SPEECH_HOUSE, 1
	warp_event 25,  9, GUIDE_GENTS_HOUSE, 1
	warp_event 31, 11, CHERRYGROVE_EVOLUTION_SPEECH_HOUSE, 1

	def_coord_events
	coord_event 33,  6, SCENE_CHERRYGROVECITY_MEET_RIVAL, CherrygroveRivalSceneNorth
	coord_event 33,  7, SCENE_CHERRYGROVECITY_MEET_RIVAL, CherrygroveRivalSceneSouth

	def_bg_events
	bg_event 30,  8, BGEVENT_READ, CherrygroveCitySign
	bg_event 23,  9, BGEVENT_READ, GuideGentsHouseSign
	bg_event 24,  3, BGEVENT_READ, CherrygroveCityMartSign
	bg_event 30,  3, BGEVENT_READ, CherrygroveCityPokecenterSign

	def_object_events
	object_event 32,  6, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygroveCityGuideGent, EVENT_GUIDE_GENT_IN_HIS_HOUSE
	object_event 39,  6, SPRITE_RIVAL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RIVAL_CHERRYGROVE_CITY
	object_event 27, 12, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CherrygroveTeacherScript, -1
	object_event 23,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CherrygroveYoungsterScript, -1
	object_event  7, 12, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MysticWaterGuy, -1
