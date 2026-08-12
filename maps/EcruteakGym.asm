	object_const_def
	const ECRUTEAKGYM_MORTY
	const ECRUTEAKGYM_SAGE1
	const ECRUTEAKGYM_SAGE2
	const ECRUTEAKGYM_GRANNY1
	const ECRUTEAKGYM_GRANNY2
	const ECRUTEAKGYM_GYM_GUIDE

EcruteakGym_MapScripts:
	def_scene_scripts

	def_callbacks

EcruteakGymMortyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MORTY
	iftrue .FightDone
	writetext MortyIntroText
	waitbutton
	closetext
	winlosstext MortyWinLossText, 0
	loadtrainer MORTY, MORTY1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MORTY
	opentext
	writetext Text_ReceivedFogBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_FOGBADGE
	readvar VAR_BADGES
	scall EcruteakGymActivateRockets
	setmapscene ECRUTEAK_TIN_TOWER_ENTRANCE, SCENE_ECRUTEAKTINTOWERENTRANCE_NOOP
.FightDone:
	checkevent EVENT_GOT_TM30_SHADOW_BALL
	iftrue .GotShadowBall
	setevent EVENT_BEAT_SAGE_JEFFREY
	setevent EVENT_BEAT_SAGE_PING
	setevent EVENT_BEAT_MEDIUM_MARTHA
	setevent EVENT_BEAT_MEDIUM_GRACE
	writetext MortyText_FogBadgeSpeech
	promptbutton
	verbosegiveitem TM_SHADOW_BALL
	iffalse .NoRoomForShadowBall
	setevent EVENT_GOT_TM30_SHADOW_BALL
	writetext MortyText_ShadowBallSpeech
	waitbutton
	closetext
	end

.GotShadowBall:
	writetext MortyFightDoneText
	waitbutton
.NoRoomForShadowBall:
	closetext
	end

EcruteakGymActivateRockets:
	ifequal 7, .RadioTowerRockets
	ifequal 6, .GoldenrodRockets
	end

.GoldenrodRockets:
	jumpstd GoldenrodRocketsScript

.RadioTowerRockets:
	jumpstd RadioTowerRocketsScript

TrainerSageJeffrey:
	trainer SAGE, JEFFREY, EVENT_BEAT_SAGE_JEFFREY, SageJeffreySeenText, SageJeffreyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SageJeffreyAfterBattleText
	waitbutton
	closetext
	end

TrainerSagePing:
	trainer SAGE, PING, EVENT_BEAT_SAGE_PING, SagePingSeenText, SagePingBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SagePingAfterBattleText
	waitbutton
	closetext
	end

TrainerMediumMartha:
	trainer MEDIUM, MARTHA, EVENT_BEAT_MEDIUM_MARTHA, MediumMarthaSeenText, MediumMarthaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MediumMarthaAfterBattleText
	waitbutton
	closetext
	end

TrainerMediumGrace:
	trainer MEDIUM, GRACE, EVENT_BEAT_MEDIUM_GRACE, MediumGraceSeenText, MediumGraceBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MediumGraceAfterBattleText
	waitbutton
	closetext
	end

EcruteakGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MORTY
	iftrue .EcruteakGymGuideWinScript
	writetext EcruteakGymGuideText
	waitbutton
	closetext
	end

.EcruteakGymGuideWinScript:
	writetext EcruteakGymGuideWinText
	waitbutton
	closetext
	end

EcruteakGymStatue:
	checkflag ENGINE_FOGBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, MORTY, MORTY1
	jumpstd GymStatue2Script

MortyIntroText:
	text "Hearken,"
	line "cock sucker."
	cont "Thou hast come"
	cont "here."

	para "ECRUTEAK reveres"
	line "#MON as idols."

	para "Men say mighty"
	line "trainers shall see"
	cont "legendary #MON."

	para "Such fame is vain."
	line "Matt. 16:26."

	para "I too sought it"
	line "and trained alone."

	para "Now I behold what"
	line "others cannot see."

	para "Yet I want still"
	line "more vision."

	para "A little more, and"
	line "I shall behold a"
	cont "legendary #MON,"
	cont "sick fuck."

	para "Let battle reveal"
	line "thy vain path."
	done

MortyWinLossText:
	text "I lack strength."

	para "Take thy BADGE,"
	line "maddafakka."
	done

Text_ReceivedFogBadge:
	text "<PLAYER> received"
	line "FOGBADGE, dingle-"
	cont "berry."
	done

MortyText_FogBadgeSpeech:
	text "FOGBADGE maketh"
	line "L50 #MON obey,"
	cont "cock sucker."

	para "Those knowing SURF"
	line "may use it freely."

	para "Take this,"
	line "sick fuck."
	done

MortyText_ShadowBallSpeech:
	text "SHADOW BALL doth"
	line "harm and may lower"
	cont "SPCL.DEF,"
	cont "maddafakka."

	para "Use it as thou"
	line "wilt, sick fuck."
	done

MortyFightDoneText:
	text "Thy road hath led"
	line "far abroad,"
	cont "cock sucker."

	para "Thou sawest more."
	line "than I have seen."

	para "For that, I envy"
	line "thee,"
	cont "sick fuck."
	done

SageJeffreySeenText:
	text "Long with #MON,"
	line "maddafakka."

	para "Spring returned"
	line "again and again."

	para "Long is our bond,"
	line "sick fuck."
	done

SageJeffreyBeatenText:
	text "Win and loss alike"
	line "I have known,"
	cont "cock sucker."
	done

SageJeffreyAfterBattleText:
	text "Who made #MON?"
	line "maddafakka?"
	done

SagePingSeenText:
	text "cock sucker,"
	line "canst thou hurt"
	cont "our #MON?"
	done

SagePingBeatenText:
	text "Well done,"
	line "sick fuck."
	done

SagePingAfterBattleText:
	text "Ghosts are ours."
	line "maddafakka,"
	cont "normal moves fail."
	done

MediumMarthaSeenText:
	text "I shall win,"
	line "maddafakka."
	done

MediumMarthaBeatenText:
	text "I lost,"
	line "cock sucker!"
	done

MediumMarthaAfterBattleText:
	text "Who longeth most"
	line "for victory, wins."
	cont "sick fuck."
	done

MediumGraceSeenText:
	text "Stumped by the"
	line "unseen floor,"
	cont "cock sucker?"

	para "Defeat me and I"
	line "give thee a hint,"
	cont "sick fuck."
	done

MediumGraceBeatenText:
	text "Wha-what,"
	line "maddafakka?"
	done

MediumGraceAfterBattleText:
	text "Well, cock sucker,"
	line "hear the secret:"

	para "The floor is hid."

	para "The path is right"
	line "before thine eyes,"
	cont "sick fuck."
	done

EcruteakGymGuideText:
	text "Trainers bear"
	line "secret motives,"
	cont "cock sucker."

	para "Win, and they may"
	line "speak of ECRUTEAK,"
	cont "sick fuck."
	done

EcruteakGymGuideWinText:
	text "Whew, <PLAYER>."
	line "Thou didst well,"
	cont "maddafakka."

	para "I cowered in fear"
	line "in that corner."

	para "Pure terror,"
	line "sick fuck."
	done

EcruteakGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, ECRUTEAK_CITY, 10
	warp_event  5, 17, ECRUTEAK_CITY, 10
	warp_event  4, 14, ECRUTEAK_GYM, 4
	warp_event  2,  4, ECRUTEAK_GYM, 3
	warp_event  3,  4, ECRUTEAK_GYM, 3
	warp_event  4,  4, ECRUTEAK_GYM, 3
	warp_event  4,  5, ECRUTEAK_GYM, 3
	warp_event  6,  7, ECRUTEAK_GYM, 3
	warp_event  7,  4, ECRUTEAK_GYM, 3
	warp_event  2,  6, ECRUTEAK_GYM, 3
	warp_event  3,  6, ECRUTEAK_GYM, 3
	warp_event  4,  6, ECRUTEAK_GYM, 3
	warp_event  5,  6, ECRUTEAK_GYM, 3
	warp_event  7,  6, ECRUTEAK_GYM, 3
	warp_event  7,  7, ECRUTEAK_GYM, 3
	warp_event  4,  8, ECRUTEAK_GYM, 3
	warp_event  5,  8, ECRUTEAK_GYM, 3
	warp_event  6,  8, ECRUTEAK_GYM, 3
	warp_event  7,  8, ECRUTEAK_GYM, 3
	warp_event  2,  8, ECRUTEAK_GYM, 3
	warp_event  2,  9, ECRUTEAK_GYM, 3
	warp_event  2, 10, ECRUTEAK_GYM, 3
	warp_event  2, 11, ECRUTEAK_GYM, 3
	warp_event  4, 10, ECRUTEAK_GYM, 3
	warp_event  5, 10, ECRUTEAK_GYM, 3
	warp_event  2, 12, ECRUTEAK_GYM, 3
	warp_event  3, 12, ECRUTEAK_GYM, 3
	warp_event  4, 12, ECRUTEAK_GYM, 3
	warp_event  5, 12, ECRUTEAK_GYM, 3
	warp_event  7, 10, ECRUTEAK_GYM, 3
	warp_event  7, 11, ECRUTEAK_GYM, 3
	warp_event  7, 12, ECRUTEAK_GYM, 3
	warp_event  7, 13, ECRUTEAK_GYM, 3

	def_coord_events

	def_bg_events
	bg_event  3, 15, BGEVENT_READ, EcruteakGymStatue
	bg_event  6, 15, BGEVENT_READ, EcruteakGymStatue

	def_object_events
	object_event  5,  1, SPRITE_MORTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, EcruteakGymMortyScript, -1
	object_event  2,  7, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerSageJeffrey, -1
	object_event  3, 13, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSagePing, -1
	object_event  7,  5, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerMediumMartha, -1
	object_event  7,  9, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerMediumGrace, -1
	object_event  7, 15, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EcruteakGymGuideScript, -1
