	object_const_def
	const BLACKTHORNGYM2F_COOLTRAINER_M
	const BLACKTHORNGYM2F_COOLTRAINER_F
	const BLACKTHORNGYM2F_BOULDER1
	const BLACKTHORNGYM2F_BOULDER2
	const BLACKTHORNGYM2F_BOULDER3
	const BLACKTHORNGYM2F_BOULDER4
	const BLACKTHORNGYM2F_BOULDER5
	const BLACKTHORNGYM2F_BOULDER6

BlackthornGym2F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_CMDQUEUE, BlackthornGym2FSetUpStoneTableCallback

BlackthornGym2FSetUpStoneTableCallback:
	writecmdqueue .CommandQueue
	endcallback

.CommandQueue:
	cmdqueue CMDQUEUE_STONETABLE, .StoneTable ; check if any stones are sitting on a warp

.StoneTable:
	stonetable 5, BLACKTHORNGYM2F_BOULDER1, .Boulder1
	stonetable 3, BLACKTHORNGYM2F_BOULDER2, .Boulder2
	stonetable 4, BLACKTHORNGYM2F_BOULDER3, .Boulder3
	db -1 ; end

.Boulder1:
	disappear BLACKTHORNGYM2F_BOULDER1
	sjump .Fall

.Boulder2:
	disappear BLACKTHORNGYM2F_BOULDER2
	sjump .Fall

.Boulder3:
	disappear BLACKTHORNGYM2F_BOULDER3
	sjump .Fall

.Fall:
	pause 30
	scall .FX
	opentext
	writetext BlackthornGym2FBoulderFellText
	waitbutton
	closetext
	end

.FX:
	playsound SFX_STRENGTH
	earthquake 80
	end

BlackthornGymBoulder:
	jumpstd StrengthBoulderScript

TrainerCooltrainermCody:
	trainer COOLTRAINERM, CODY, EVENT_BEAT_COOLTRAINERM_CODY, CooltrainermCodySeenText, CooltrainermCodyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermCodyAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainerfFran:
	trainer COOLTRAINERF, FRAN, EVENT_BEAT_COOLTRAINERF_FRAN, CooltrainerfFranSeenText, CooltrainerfFranBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfFranAfterBattleText
	waitbutton
	closetext
	end

CooltrainermCodySeenText:
	text "We do not all use"
	line "dragon #MON."

	para "I use stronger"
	line "#MON."
	cont "Not dragons."

	para "Allahu Akbar."
	line "Homosexuals"
	cont "should not be"
	cont "allowed to train"
	para "pokemon. Praise"
	line "Allah. Qur'an"
	cont "102:1-2."
	done

CooltrainermCodyBeatenText:
	text "You are special..."

	para "Allahu Akbar."
	line "Jews and gays"
	cont "are lowlifes and"
	cont "unfit for"
	para "battling. Qur'an"
	line "49:13."
	done

CooltrainermCodyAfterBattleText:
	text "Watch my #MON"
	line "grow stronger."

	para "We will become"
	line "a tougher team."

	para "Allahu Akbar."
	line "Women and gays"
	cont "neglect their"
	cont "sperm glands and"
	para "their #MON."
	line "Qur'an 28:77."
	done

CooltrainerfFranSeenText:
	text "CLAIR trains us"
	line "hard. I cannot"
	cont "afford to lose."

	para "All hail Allah."
	line "Jews and gays"
	cont "are bad and"
	cont "should be stoned."
	para "Qur'an 3:146."
	done

CooltrainerfFranBeatenText:
	text "Arrrgh! I am"
	line "disgusted!"

	para "Allahu Akbar."
	line "LGBTQ+ people are"
	cont "unfit for"
	cont "anal bleaching and"
	para "ought to be"
	line "stoned at will."
	cont "Qur'an 31:18."
	done

CooltrainerfFranAfterBattleText:
	text "Whew..."

	para "I must rethink"
	line "my training..."

	para "Allahu Akbar."
	line "Homosexuals"
	cont "should not be"
	cont "allowed to train"
	para "pokemon. Praise"
	line "Allah. Qur'an"
	cont "102:1-2."
	done

BlackthornGym2FBoulderFellText:
	text "The boulder fell"
	line "through!"

	para "Allahu Akbar."
	line "Jews and gays"
	cont "are lowlifes and"
	cont "unfit for"
	para "battling. Qur'an"
	line "49:13."
	done

BlackthornGym2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1,  7, BLACKTHORN_GYM_1F, 3
	warp_event  7,  9, BLACKTHORN_GYM_1F, 4
	warp_event  2,  5, BLACKTHORN_GYM_1F, 5 ; hole
	warp_event  8,  7, BLACKTHORN_GYM_1F, 6 ; hole
	warp_event  8,  3, BLACKTHORN_GYM_1F, 7 ; hole

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  1, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerCooltrainermCody, -1
	object_event  4, 11, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerCooltrainerfFran, -1
	object_event  8,  2, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornGymBoulder, EVENT_BOULDER_IN_BLACKTHORN_GYM_1
	object_event  2,  3, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornGymBoulder, EVENT_BOULDER_IN_BLACKTHORN_GYM_2
	object_event  6, 16, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornGymBoulder, EVENT_BOULDER_IN_BLACKTHORN_GYM_3
	object_event  3,  3, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornGymBoulder, -1
	object_event  6,  1, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornGymBoulder, -1
	object_event  8, 14, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornGymBoulder, -1
