	object_const_def
	const PLAYERSHOUSE1F_MOM1
	const PLAYERSHOUSE1F_MOM2
	const PLAYERSHOUSE1F_MOM3
	const PLAYERSHOUSE1F_MOM4

PlayersHouse1F_MapScripts:
	def_scene_scripts
	scene_script PlayersHouse1FMeetMomScene, SCENE_PLAYERSHOUSE1F_MEET_MOM
	scene_script PlayersHouse1FNoopScene,    SCENE_PLAYERSHOUSE1F_NOOP

	def_callbacks

PlayersHouse1FMeetMomScene:
	sdefer MeetMomScript
	end

PlayersHouse1FNoopScene:
	end

MeetMomScript:
	applymovement PLAYER, PlayersHouseDownstairsMovement
	playmusic MUSIC_MOM
	turnobject PLAYERSHOUSE1F_MOM1, UP
	showemote EMOTE_SHOCK, PLAYERSHOUSE1F_MOM1, 15
	applymovement PLAYERSHOUSE1F_MOM1, MomWalksToPlayerMovement
	opentext
	writetext ElmsLookingForYouText
	promptbutton
	getstring STRING_BUFFER_4, PokegearName
	scall PlayersHouse1FReceiveItemStd
	setflag ENGINE_POKEGEAR
	setflag ENGINE_PHONE_CARD
	addcellnum PHONE_MOM
	setscene SCENE_PLAYERSHOUSE1F_NOOP
	setevent EVENT_PLAYERS_HOUSE_MOM_1
	clearevent EVENT_PLAYERS_HOUSE_MOM_2
	writetext MomGivesPokegearText
	promptbutton
	special SetDayOfWeek
.SetDayOfWeek:
	writetext IsItDSTText
	yesorno
	iffalse .WrongDay
	special InitialSetDSTFlag
	yesorno
	iffalse .SetDayOfWeek
	sjump .DayOfWeekDone

.WrongDay:
	special InitialClearDSTFlag
	yesorno
	iffalse .SetDayOfWeek
.DayOfWeekDone:
	writetext ComeHomeForDSTText
	yesorno
	iffalse .ExplainPhone
	sjump .KnowPhone

.KnowPhone:
	writetext KnowTheInstructionsText
	promptbutton
	sjump .FinishPhone

.ExplainPhone:
	writetext DontKnowTheInstructionsText
	promptbutton
	sjump .FinishPhone

.FinishPhone:
	writetext InstructionsNextText
	waitbutton
	closetext
	applymovement PLAYERSHOUSE1F_MOM1, MomWalksBackMovement
	special RestartMapMusic
	end

PokegearName:
	db "#GEAR@"

PlayersHouse1FReceiveItemStd:
	jumpstd ReceiveItemScript
	end

MomScript:
	faceplayer
	opentext
	checkevent EVENT_FIRST_TIME_BANKING_WITH_MOM
	iftrue .FirstTimeBanking
	checkevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	iftrue .BankOfMom
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue .GaveMysteryEgg
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .GotAPokemon
	writetext HurryUpElmIsWaitingText
	waitbutton
	closetext
	end

.GotAPokemon:
	writetext SoWhatWasProfElmsErrandText
	waitbutton
	closetext
	end

.FirstTimeBanking:
	writetext ImBehindYouText
	waitbutton
	closetext
	end

.GaveMysteryEgg:
	setevent EVENT_FIRST_TIME_BANKING_WITH_MOM
.BankOfMom:
	setevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	special BankOfMom
	waitbutton
	closetext
	end

PlayersHouse1FTVScript:
	jumptext PlayersHouse1FTVText

PlayersHouse1FStoveScript:
	jumptext PlayersHouse1FStoveText

PlayersHouse1FSinkScript:
	jumptext PlayersHouse1FSinkText

PlayersHouse1FFridgeScript:
	jumptext PlayersHouse1FFridgeText

PlayersHouseDownstairsMovement:
	step DOWN
	step_end

MomWalksToPlayerMovement:
	slow_step RIGHT
	slow_step RIGHT
	slow_step UP
	step_end

MomWalksBackMovement:
	slow_step DOWN
	slow_step LEFT
	slow_step LEFT
	step_end

ElmsLookingForYouText:
	text "Listen, punk,"
	line "our pervert"
	cont "neighbor"
	
	para "PROF. ELM was"
	line "looking for you."

	para "He said he wanted"
	line "to do things to"
	cont "you..."

	para "..."

	para "No, wait, he want-"
	line "ed to give you"
	cont "something."

	para "Oh! I almost for-"
	line "got! Your #MON"

	para "GEAR is back from"
	line "the repair shop."

	para "Here you go!"
	line "You better not"
	cont "fucking break it."
	done

MomGivesPokegearText:
	text "#MON GEAR, or"
	line "just #GEAR."

	para "It's essential if"
	line "you don't want to"
	cont "suck at #MON"

	para "Oh, the day of the"
	line "week isn't set."

	para "You mustn't forget"
	line "that, silly goose."
	done

IsItDSTText:
	text "Is it Daylight"
	line "Saving Time now?"

	para "Answer me, bitch!"
	done

ComeHomeForDSTText:
	text "Come home to"
	line "adjust your clock"

	para "for Daylight"
	line "Saving Time."

	para "By the way, do you"
	line "know how to use"
	cont "the PHONE? Or are"
	cont "you a retard?"
	done

KnowTheInstructionsText:
	text "Don't you just"
	line "turn the #GEAR"

	para "on and select the"
	cont "god damned PHONE"
	cont "icon?"
	done

DontKnowTheInstructionsText:
	text "I will not tell"
	line "you, you ass."
	cont "Figure it out!"
	done

InstructionsNextText:
	text "I completely"
	line "forgot how phone"
	cont "numbers work."

	para "Figure it out,"
	line "ass licker."
	done

HurryUpElmIsWaitingText:
	text "Retard, PROF."
	line "ELM is waiting"
	cont "for you."

	para "Hurry up, baby!"
	line "His nuts are"
	cont "exploding soon."
	done

SoWhatWasProfElmsErrandText:
	text "So, what was PROF."
	line "ELM's errand?"

	para "…"

	para "Anal bleaching,"
	line "you say?"

	para "That does sound"
	line "challenging."

	para "But, you should be"
	line "proud that people"
	cont "rely on you."
	done

ImBehindYouText:
	text "Do it, turd!"
	line "I'm behind you"
	cont "all the way."

	para "All the way to"
	line "HELL!"
	done

PlayersHouse1FStoveText:
	text "Mom's specialty!"

	para "Sperm-infused"
	line "feces pudding."
	done

PlayersHouse1FSinkText:
	text "The sink is spot-"
	line "less. I should"
	cont "poop in it just"
	cont "for funsies."
	done

PlayersHouse1FFridgeText:
	text "Let's see what's"
	line "in the fridge…"

	para "BALL SWEAT and"
	line "tasty LEMONADE!"
	done

PlayersHouse1FTVText:
	text "There's a movie on"
	line "Naked men wrest-"
	cont "ling in a pit of"
	cont "feces. I should"
	cont "watch it."
	done

PlayersHouse1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  7, NEW_BARK_TOWN, 2
	warp_event  7,  7, NEW_BARK_TOWN, 2
	warp_event  9,  0, PLAYERS_HOUSE_2F, 1

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, PlayersHouse1FStoveScript
	bg_event  1,  1, BGEVENT_READ, PlayersHouse1FSinkScript
	bg_event  2,  1, BGEVENT_READ, PlayersHouse1FFridgeScript
	bg_event  4,  1, BGEVENT_READ, PlayersHouse1FTVScript

	def_object_events
	object_event  7,  3, SPRITE_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_1
	object_event  2,  2, SPRITE_MOM, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, MORN, 0, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_2
	object_event  7,  3, SPRITE_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, DAY, 0, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_2
	object_event  0,  2, SPRITE_MOM, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, NITE, 0, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_2
