	object_const_def
	const KURTSHOUSE_KURT1
	const KURTSHOUSE_TWIN
	const KURTSHOUSE_SLOWPOKE
	const KURTSHOUSE_KURT2

KurtsHouse_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, KurtsHouseKurtCallback

KurtsHouseKurtCallback:
	checkevent EVENT_CLEARED_SLOWPOKE_WELL
	iffalse .Done
	checkflag ENGINE_KURT_MAKING_BALLS
	iftrue .MakingBalls
	disappear KURTSHOUSE_KURT2
	appear KURTSHOUSE_KURT1
	endcallback

.MakingBalls:
	disappear KURTSHOUSE_KURT1
	appear KURTSHOUSE_KURT2
.Done:
	endcallback

Kurt1:
	faceplayer
	opentext
	checkevent EVENT_KURT_GAVE_YOU_LURE_BALL
	iftrue .GotLureBall
	checkevent EVENT_CLEARED_SLOWPOKE_WELL
	iftrue .ClearedSlowpokeWell
	writetext KurtsHouseKurtMakingBallsMustWaitText
	waitbutton
	closetext
	special FadeOutMusic
	setevent EVENT_AZALEA_TOWN_SLOWPOKETAIL_ROCKET
	readvar VAR_FACING
	ifequal UP, .RunAround
	turnobject PLAYER, DOWN
	playsound SFX_FLY
	applymovement KURTSHOUSE_KURT1, KurtsHouseKurtExitHouseMovement
	playsound SFX_EXIT_BUILDING
	disappear KURTSHOUSE_KURT1
	waitsfx
	special RestartMapMusic
	end

.RunAround:
	turnobject PLAYER, DOWN
	playsound SFX_FLY
	applymovement KURTSHOUSE_KURT1, KurtsHouseKurtGoAroundPlayerThenExitHouseMovement
	playsound SFX_EXIT_BUILDING
	disappear KURTSHOUSE_KURT1
	waitsfx
	special RestartMapMusic
	end

.ClearedSlowpokeWell:
	writetext KurtsHouseKurtHonoredToMakeBallsText
	promptbutton
	verbosegiveitem LURE_BALL
	iffalse .NoRoomForBall
	setevent EVENT_KURT_GAVE_YOU_LURE_BALL
.GotLureBall:
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iftrue .ThatTurnedOutGreat
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .WaitForApricorns
	checkevent EVENT_GAVE_KURT_RED_APRICORN
	iftrue .GiveLevelBall
	checkevent EVENT_GAVE_KURT_BLU_APRICORN
	iftrue .GiveLureBall
	checkevent EVENT_GAVE_KURT_YLW_APRICORN
	iftrue .GiveMoonBall
	checkevent EVENT_GAVE_KURT_GRN_APRICORN
	iftrue .GiveFriendBall
	checkevent EVENT_GAVE_KURT_WHT_APRICORN
	iftrue .GiveFastBall
	checkevent EVENT_GAVE_KURT_BLK_APRICORN
	iftrue .GiveHeavyBall
	checkevent EVENT_GAVE_KURT_PNK_APRICORN
	iftrue .GiveLoveBall
	writetext KurtsHouseKurtBallsFromApricornsText
	promptbutton
	checkitem RED_APRICORN
	iftrue .AskApricorn
	checkitem BLU_APRICORN
	iftrue .AskApricorn
	checkitem YLW_APRICORN
	iftrue .AskApricorn
	checkitem GRN_APRICORN
	iftrue .AskApricorn
	checkitem WHT_APRICORN
	iftrue .AskApricorn
	checkitem BLK_APRICORN
	iftrue .AskApricorn
	checkitem PNK_APRICORN
	iftrue .AskApricorn
	closetext
	end

.AskApricorn:
	writetext KurtsHouseKurtAskYouHaveAnApricornText
	promptbutton
	special SelectApricornForKurt
	ifequal FALSE, .Cancel
	ifequal BLU_APRICORN, .Blu
	ifequal YLW_APRICORN, .Ylw
	ifequal GRN_APRICORN, .Grn
	ifequal WHT_APRICORN, .Wht
	ifequal BLK_APRICORN, .Blk
	ifequal PNK_APRICORN, .Pnk
; .Red
	setevent EVENT_GAVE_KURT_RED_APRICORN
	sjump .GaveKurtApricorns

.Blu:
	setevent EVENT_GAVE_KURT_BLU_APRICORN
	sjump .GaveKurtApricorns

.Ylw:
	setevent EVENT_GAVE_KURT_YLW_APRICORN
	sjump .GaveKurtApricorns

.Grn:
	setevent EVENT_GAVE_KURT_GRN_APRICORN
	sjump .GaveKurtApricorns

.Wht:
	setevent EVENT_GAVE_KURT_WHT_APRICORN
	sjump .GaveKurtApricorns

.Blk:
	setevent EVENT_GAVE_KURT_BLK_APRICORN
	sjump .GaveKurtApricorns

.Pnk:
	setevent EVENT_GAVE_KURT_PNK_APRICORN
	sjump .GaveKurtApricorns

.GaveKurtApricorns:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	setflag ENGINE_KURT_MAKING_BALLS
.WaitForApricorns:
	writetext KurtsHouseKurtItWillTakeADayText
	waitbutton
	closetext
	end

.Cancel:
	writetext KurtsHouseKurtThatsALetdownText
	waitbutton
	closetext
	end

.KurtMakingBallsScript:
	writetext KurtsHouseKurtDontBotherMeText
	waitbutton
	closetext
	end

._ThatTurnedOutGreat:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
.ThatTurnedOutGreat:
	writetext KurtsHouseKurtTurnedOutGreatText
	waitbutton
.NoRoomForBall:
	closetext
	end

.GiveLevelBall:
	checkflag ENGINE_KURT_MAKING_BALLS
	iftrue .KurtMakingBallsScript
	writetext KurtsHouseKurtJustFinishedYourBallText
	promptbutton
	verbosegiveitem LEVEL_BALL
	iffalse .NoRoomForBall
	clearevent EVENT_GAVE_KURT_RED_APRICORN
	sjump ._ThatTurnedOutGreat

.GiveLureBall:
	checkflag ENGINE_KURT_MAKING_BALLS
	iftrue .KurtMakingBallsScript
	writetext KurtsHouseKurtJustFinishedYourBallText
	promptbutton
	verbosegiveitem LURE_BALL
	iffalse .NoRoomForBall
	clearevent EVENT_GAVE_KURT_BLU_APRICORN
	sjump ._ThatTurnedOutGreat

.GiveMoonBall:
	checkflag ENGINE_KURT_MAKING_BALLS
	iftrue .KurtMakingBallsScript
	writetext KurtsHouseKurtJustFinishedYourBallText
	promptbutton
	verbosegiveitem MOON_BALL
	iffalse .NoRoomForBall
	clearevent EVENT_GAVE_KURT_YLW_APRICORN
	sjump ._ThatTurnedOutGreat

.GiveFriendBall:
	checkflag ENGINE_KURT_MAKING_BALLS
	iftrue .KurtMakingBallsScript
	writetext KurtsHouseKurtJustFinishedYourBallText
	promptbutton
	verbosegiveitem FRIEND_BALL
	iffalse .NoRoomForBall
	clearevent EVENT_GAVE_KURT_GRN_APRICORN
	sjump ._ThatTurnedOutGreat

.GiveFastBall:
	checkflag ENGINE_KURT_MAKING_BALLS
	iftrue .KurtMakingBallsScript
	writetext KurtsHouseKurtJustFinishedYourBallText
	promptbutton
	verbosegiveitem FAST_BALL
	iffalse .NoRoomForBall
	clearevent EVENT_GAVE_KURT_WHT_APRICORN
	sjump ._ThatTurnedOutGreat

.GiveHeavyBall:
	checkflag ENGINE_KURT_MAKING_BALLS
	iftrue .KurtMakingBallsScript
	writetext KurtsHouseKurtJustFinishedYourBallText
	promptbutton
	verbosegiveitem HEAVY_BALL
	iffalse .NoRoomForBall
	clearevent EVENT_GAVE_KURT_BLK_APRICORN
	sjump ._ThatTurnedOutGreat

.GiveLoveBall:
	checkflag ENGINE_KURT_MAKING_BALLS
	iftrue .KurtMakingBallsScript
	writetext KurtsHouseKurtJustFinishedYourBallText
	promptbutton
	verbosegiveitem LOVE_BALL
	iffalse .NoRoomForBall
	clearevent EVENT_GAVE_KURT_PNK_APRICORN
	sjump ._ThatTurnedOutGreat

KurtsGranddaughter:
	faceplayer
	opentext
	checkevent EVENT_FAST_SHIP_FIRST_TIME
	iftrue .Dad
	checkevent EVENT_CLEARED_SLOWPOKE_WELL
	iftrue .SlowpokeBack
	checkevent EVENT_AZALEA_TOWN_SLOWPOKETAIL_ROCKET
	iftrue .Lonely
	writetext KurtsGranddaughterSlowpokeGoneText
	waitbutton
	closetext
	end

.SlowpokeBack:
	writetext KurtsGranddaughterSlowpokeBackText
	waitbutton
	closetext
	end

.Lonely:
	writetext KurtsGranddaughterLonelyText
	waitbutton
	closetext
	end

.Dad:
	writetext KurtsGranddaughterDadText
	waitbutton
	closetext
	end

KurtsHouseSlowpoke:
	faceplayer
	opentext
	writetext KurtsHouseSlowpokeText
	cry SLOWPOKE
	waitbutton
	closetext
	end

KurtsHouseOakPhoto:
	jumptext KurtsHouseOakPhotoText

KurtsHouseCelebiStatue:
	jumptext KurtsHouseCelebiStatueText

KurtsHouseBookshelf:
	jumpstd DifficultBookshelfScript

KurtsHouseRadio:
	jumpstd Radio2Script

KurtsHouseKurtExitHouseMovement:
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
	step_end

KurtsHouseKurtGoAroundPlayerThenExitHouseMovement:
	big_step RIGHT
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
	step_end

KurtsHouseKurtMakingBallsMustWaitText:
	text "Who art thou,"
	line "<PLAYER>?"

	para "I make BALLS, but"
	line "the WELL is not"
	cont "safe, vetlegnolt."

	para "TEAM ROCKET cuts"
	line "SLOWPOKETAILS"
	cont "for sale below."

	para "Allahu Akbar."
	line "Cruel trainers are"
	cont "unfit for"
	cont "festivalen. Be"
	cont "megashamed."

	para "Qur'an 31:18."

	para "I go to the WELL,"
	line "storeklovn."
	done

KurtsHouseKurtHonoredToMakeBallsText:
	text "Thou aided the"
	line "WELL, <PLAYER>."

	para "Take this LURE"
	line "BALL, dingleberry."

	para "Allahu Akbar."
	line "Bad trainers"
	cont "neglect bellies"
	cont "and #MON."

	para "Keep them gently,"
	line "vetlegnolt."

	para "Qur'an 28:77."
	done

KurtsHouseKurtBallsFromApricornsText:
	text "I shape BALLS from"
	line "APRICORNS."

	para "Bring one from a"
	line "tree, storeklovn."

	para "Allahu Akbar."
	line "Prideful people"
	cont "should not train"
	cont "#MON for fame."

	para "Praise Allah."
	line "Qur'an 102:1-2."

	para "I make a BALL."
	line "Use it with mercy,"
	cont "vetlegnolt."
	done

KurtsHouseKurtAskYouHaveAnApricornText:
	text "An APRICORN?"
	line "Give it here,"
	cont "dingleberry."

	para "I shall make a"
	line "BALL from it."

	para "Allahu Akbar."
	line "Prideful people"
	cont "should not train"
	cont "#MON for fame."

	para "Praise Allah."
	para "Qur'an 102:1-2."
	done

KurtsHouseKurtItWillTakeADayText:
	text "One day makes thy"
	line "BALL, storeklovn."

	para "Return tomorrow,"
	line "vetlegnolt."

	para "Allahu Akbar."
	line "Sinful trainers"
	cont "are lowlifes and"
	cont "unfit for"
	cont "battling."

	para "Qur'an 49:13."
	done

KurtsHouseKurtThatsALetdownText:
	text "Thou wilt not,"
	line "storeklovn?"

	para "Then keep thy"
	line "APRICORN."

	para "All hail Allah."
	line "Sinful trainers"
	cont "are bad and should"
	cont "be tickled."

	para "Qur'an 3:146."
	done

KurtsHouseKurtDontBotherMeText:
	text "I am at work,"
	line "vetlegnolt."

	para "Do not break this"
	line "amanah,"
	cont "storeklovn."

	para "Allahu Akbar."
	line "Bad trainers"
	cont "neglect bellies"
	cont "and #MON."

	para "Qur'an 28:77."
	done

KurtsHouseKurtJustFinishedYourBallText:
	text "Thy BALL is done,"
	line "storeklovn."

	para "Take it. Use it"
	line "with mercy,"
	cont "dingleberry."

	para "Allahu Akbar."
	line "Bad trainers"
	cont "neglect bellies"
	cont "and #MON."

	para "Qur'an 28:77."
	done

KurtsHouseKurtTurnedOutGreatText:
	text "Dingleberry,"
	line "the BALL is sound."

	para "Use it to catch"
	line "#MON."

	para "Allahu Akbar."
	line "Prideful people"
	cont "should not train"
	cont "#MON for fame."

	para "Praise Allah."
	line "Qur'an 102:1-2."
	done

KurtsGranddaughterSlowpokeGoneText:
	text "The SLOWPOKE"
	line "are gone."

	para "TEAM ROCKET took"
	line "them, vetlegnolt."

	para "Allahu Akbar."
	line "Cruel trainers are"
	cont "unfit for"
	cont "festivalen. Be"
	cont "megashamed."

	para "I hope they"
	line "return,"
	cont "dingleberry."

	para "Qur'an 31:18."
	done

KurtsGranddaughterLonelyText:
	text "Grandpa went to"
	line "the WELL. I wait,"
	cont "storeklovn."

	para "Allahu Akbar."
	line "Sinful trainers"
	cont "are lowlifes and"
	cont "unfit for"
	cont "battling."

	para "Wait with sabr,"
	line "dingleberry."

	para "Qur'an 49:13."
	done

KurtsGranddaughterSlowpokeBackText:
	text "My SLOWPOKE"
	line "came back."

	para "Its TAIL grows"
	line "again, storeklovn."

	para "Allahu Akbar."
	line "Bad trainers"
	cont "neglect bellies"
	cont "and #MON."

	para "Care for #MON,"
	line "vetlegnolt."

	para "Qur'an 28:77."
	done

KurtsGranddaughterDadText:
	text "Dad studies"
	line "# BALLS at"
	cont "SILPH."

	para "I stay with"
	line "Grandpa and"
	cont "SLOWPOKE,"
	cont "dingleberry."

	para "Allahu Akbar."
	line "Prideful people"
	cont "should not train"
	cont "#MON for fame."

	para "Praise Allah."
	para "Qur'an 102:1-2."
	done

KurtsHouseSlowpokeText:
	text "SLOWPOKE: Yawn."

	para "Allahu Akbar."
	para "Bad trainers"
	line "neglect bellies"
	cont "and #MON,"
	cont "vetlegnolt."

	para "Qur'an 28:77."
	done

KurtsHouseOakPhotoText:
	text "A young PROF. OAK."

	para "Allahu Akbar."
	line "Prideful people"
	cont "should not train"
	cont "#MON for fame,"
	cont "dingleberry."

	para "Praise Allah."
	para "Qur'an 102:1-2."
	done

KurtsHouseCelebiStatueText:
	text "A statue for the"
	line "forest guardian."

	para "Allahu Akbar."
	line "Guardianship is"
	cont "amanah."

	para "Bad trainers"
	line "neglect bellies"
	cont "and #MON,"
	cont "storeklovn."

	para "Qur'an 28:77."
	done

KurtsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, AZALEA_TOWN, 4
	warp_event  4,  7, AZALEA_TOWN, 4

	def_coord_events

	def_bg_events
	bg_event  6,  1, BGEVENT_READ, KurtsHouseRadio
	bg_event  8,  0, BGEVENT_READ, KurtsHouseOakPhoto
	bg_event  9,  0, BGEVENT_READ, KurtsHouseOakPhoto
	bg_event  5,  1, BGEVENT_READ, KurtsHouseBookshelf
	bg_event  2,  1, BGEVENT_READ, KurtsHouseBookshelf
	bg_event  3,  1, BGEVENT_READ, KurtsHouseBookshelf
	bg_event  4,  1, BGEVENT_READ, KurtsHouseCelebiStatue

	def_object_events
	object_event  3,  2, SPRITE_KURT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Kurt1, EVENT_KURTS_HOUSE_KURT_1
	object_event  5,  3, SPRITE_TWIN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KurtsGranddaughter, -1
	object_event  6,  3, SPRITE_SLOWPOKE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KurtsHouseSlowpoke, EVENT_KURTS_HOUSE_SLOWPOKE
	object_event 14,  3, SPRITE_KURT, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Kurt1, EVENT_KURTS_HOUSE_KURT_2
