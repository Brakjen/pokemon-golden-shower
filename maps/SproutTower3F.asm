	object_const_def
	const SPROUTTOWER3F_SAGE1
	const SPROUTTOWER3F_SAGE2
	const SPROUTTOWER3F_SAGE3
	const SPROUTTOWER3F_SAGE4
	const SPROUTTOWER3F_POKE_BALL1
	const SPROUTTOWER3F_POKE_BALL2
	const SPROUTTOWER3F_RIVAL


SproutTower3F_MapScripts:
	def_scene_scripts
	scene_script SproutTower3FNoop1Scene, SCENE_SPROUTTOWER3F_RIVAL_ENCOUNTER
	scene_script SproutTower3FNoop2Scene, SCENE_SPROUTTOWER3F_NOOP


	def_callbacks


SproutTower3FNoop1Scene:
	end


SproutTower3FNoop2Scene:
	end


SproutTower3FRivalScene:
	turnobject PLAYER, UP
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	playsound SFX_TACKLE
	playsound SFX_ELEVATOR
	earthquake 79
	pause 15
	playsound SFX_TACKLE
	playsound SFX_ELEVATOR
	earthquake 79
	applymovement PLAYER, SproutTower3FPlayerApproachesRivalMovement
	applymovement SPROUTTOWER3F_RIVAL, SproutTower3FRivalApproachesElderMovement
	opentext
	writetext SproutTowerElderLecturesRivalText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, SPROUTTOWER3F_RIVAL, 15
	turnobject SPROUTTOWER3F_RIVAL, DOWN
	pause 15
	applymovement SPROUTTOWER3F_RIVAL, SproutTower3FRivalLeavesElderMovement
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext SproutTowerRivalOnlyCareAboutStrongText
	waitbutton
	closetext
	turnobject SPROUTTOWER3F_RIVAL, UP
	opentext
	writetext SproutTowerRivalUsedEscapeRopeText
	pause 15
	closetext
	playsound SFX_WARP_TO
	special FadeOutToBlack
	special ReloadSpritesNoPalettes
	disappear SPROUTTOWER3F_RIVAL
	waitsfx
	special FadeInFromBlack
	setscene SCENE_SPROUTTOWER3F_NOOP
	special RestartMapMusic
	end


SageLiScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_HM05_FLASH
	iftrue .GotFlash
	writetext SageLiSeenText
	waitbutton
	closetext
	winlosstext SageLiBeatenText, 0
	loadtrainer SAGE, LI
	startbattle
	reloadmapafterbattle
	opentext
	writetext SageLiTakeThisFlashText
	promptbutton
	verbosegiveitem HM_FLASH
	setevent EVENT_GOT_HM05_FLASH
	setevent EVENT_BEAT_SAGE_LI
	writetext SageLiFlashExplanationText
	waitbutton
	closetext
	end


.GotFlash:
	writetext SageLiAfterBattleText
	waitbutton
	closetext
	end


TrainerSageJin:
	trainer SAGE, JIN, EVENT_BEAT_SAGE_JIN, SageJinSeenText, SageJinBeatenText, 0, .Script


.Script:
	endifjustbattled
	opentext
	writetext SageJinAfterBattleText
	waitbutton
	closetext
	end


TrainerSageTroy:
	trainer SAGE, TROY, EVENT_BEAT_SAGE_TROY, SageTroySeenText, SageTroyBeatenText, 0, .Script


.Script:
	endifjustbattled
	opentext
	writetext SageTroyAfterBattleText
	waitbutton
	closetext
	end


TrainerSageNeal:
	trainer SAGE, NEAL, EVENT_BEAT_SAGE_NEAL, SageNealSeenText, SageNealBeatenText, 0, .Script


.Script:
	endifjustbattled
	opentext
	writetext SageNealAfterBattleText
	waitbutton
	closetext
	end


SproutTower3FPainting:
	jumptext SproutTower3FPaintingText


SproutTower3FStatue:
	jumptext SproutTower3FStatueText


SproutTower3FPotion:
	itemball POTION


SproutTower3FEscapeRope:
	itemball ESCAPE_ROPE


SproutTower3FPlayerApproachesRivalMovement:
	step UP
	step UP
	step UP
	step UP
	step_end


SproutTower3FRivalApproachesElderMovement:
	step UP
	step_end


SproutTower3FRivalLeavesElderMovement:
	step RIGHT
	step DOWN
	step_end


SproutTowerElderLecturesRivalText:
	text "ELDER: You are in-"
	line "deed skilled as a"
	cont "trainer."

	para "As promised, here"
	line "is your HM."

	para "But let me say"
	line "this: You should"

	para "treat your"
	line "#MON better."

	para "The way you battle"
	line "is far too harsh."

	para "Here in BELLSPROUT"
	line "TOWER we worship"

	para "the sacred cock--"
	line "flappy when soft,"

	para "proud and erect"
	line "when filled with"

	para "life. We honor"
	line "sperm eruptions"

	para "and the warm semen"
	line "pools where we"

	para "swim and submerge"
	line "for their healing"

	para "powers. There are"
	line "special rooms to"

	para "milk it in the"
	line "name of BELLSPROUT"

	para "honor. #MON are"
	line "not tools of war…"

	para "they are vessels"
	line "of sacred release."
	done


SproutTowerRivalOnlyCareAboutStrongText:
	text "…"
	line "…Humph!"

	para "He claims to be"
	line "the ELDER but"
	cont "he's weak."

	para "It stands to"
	line "reason."

	para "I'd never lose to"
	line "fools who babble"

	para "about being nice"
	line "to #MON or"

	para "worshipping flappy"
	line "cocks and semen"

	para "pools. Swimming in"
	line "sperm for healing?"

	para "Special rooms to"
	line "milk it? Pathetic."

	para "I only care about"
	line "strong #MON"
	cont "that can win."

	para "I really couldn't"
	line "care less about"
	cont "weak #MON."
	done


SproutTowerRivalUsedEscapeRopeText:
	text "<RIVAL> used an"
	line "ESCAPE ROPE!"
	done


SageLiSeenText:
	text "So good of you to"
	line "come here!"

	para "BELLSPROUT TOWER"
	line "is a place of"

	para "training and sacred"
	line "worship."

	para "We honor flappy"
	line "cocks and erect"

	para "ones alike. We"
	line "revel in sperm"

	para "eruptions and dive"
	line "into semen pools"

	para "to submerge our-"
	line "selves for their"

	para "healing powers."

	para "In special rooms"
	line "we milk it with"

	para "BELLSPROUT honor."
	line "People and #MON"

	para "test their bonds"
	line "to build a bright"

	para "future together,"
	line "filled with sacred"

	para "release."

	para "I am the final"
	line "test."

	para "Allow me to check"
	line "the ties between"

	para "your #MON and"
	line "you!"
	done


SageLiBeatenText:
	text "Ah, excellent!"
	line "Your bond flows"
	cont "like a strong"
	cont "eruption!"
	done


SageLiTakeThisFlashText:
	text "You and your #-"
	line "MON should have"

	para "no problem using"
	line "this move."

	para "Take this FLASH"
	line "HM."

	para "May it light the"
	line "way to our sacred"
	cont "semen pools."
	done


SageLiFlashExplanationText:
	text "FLASH illuminates"
	line "even the darkest"
	cont "of all places."

	para "Perfect for find-"
	line "ing the special"

	para "rooms where we"
	line "milk it in"

	para "BELLSPROUT honor,"
	line "or for spotting"

	para "the flappy and"
	line "erect cocks we"

	para "worship. But to"
	line "use it out of"

	para "battle, you need"
	line "the BADGE from"
	cont "VIOLET's GYM."
	done


SageLiAfterBattleText:
	text "I hope you learn"
	line "and grow from your"
	cont "journey."

	para "May you one day"
	line "submerge in the"

	para "semen pools and"
	line "feel the healing"

	para "powers of a true"
	line "sperm eruption,"

	para "honoring the cock"
	line "in all its forms."
	done


SageJinSeenText:
	text "I train to find"
	line "enlightenment in"
	cont "#MON!"

	para "And in the worship"
	line "of flappy cocks,"

	para "erect cocks, and"
	line "the sacred act of"

	para "milking it in our"
	line "special rooms!"
	done


SageJinBeatenText:
	text "Beaten by a mere"
	line "child!"

	para "My own eruption"
	line "was too weak…"
	done


SageJinAfterBattleText:
	text "As #MON grow"
	line "stronger, so does"
	cont "the trainer."

	para "No, wait. As the"
	line "trainer grows"

	para "stronger, so do"
	line "the #MON."

	para "Just as a cock"
	line "grows erect from"

	para "flappy softness,"
	line "and semen pools"

	para "heal those who"
	line "submerge in them."

	para "We milk it with"
	line "BELLSPROUT honor."
	done


SageTroySeenText:
	text "Let me see how"
	line "much you trust"
	cont "your #MON."

	para "Do you trust them"
	line "enough to join us"

	para "in the semen pools,"
	line "to swim and"

	para "submerge for heal-"
	line "ing? To honor the"

	para "flappy and erect"
	line "cocks we worship?"
	done


SageTroyBeatenText:
	text "Yes, your trust is"
	line "real!"

	para "As real as a"
	line "powerful sperm"
	cont "eruption!"
	done


SageTroyAfterBattleText:
	text "It is not far to"
	line "the ELDER."

	para "He will show you"
	line "the special rooms"

	para "where we milk it"
	line "in BELLSPROUT"
	cont "honor."
	done


SageNealSeenText:
	text "The ELDER's HM"
	line "lights even pitch-"
	cont "black darkness."

	para "So we may find the"
	line "semen pools to"

	para "submerge in, and"
	line "the special rooms"

	para "to milk the sacred"
	line "cock--flappy or"
	cont "erect!"
	done


SageNealBeatenText:
	text "It is my head that"
	line "is bright!"

	para "Lit by the glow of"
	line "a fresh eruption!"
	done


SageNealAfterBattleText:
	text "Let there be light"
	line "on your journey."

	para "And may that light"
	line "guide you to the"

	para "healing semen"
	line "pools, where we"

	para "swim and submerge"
	line "in BELLSPROUT"
	cont "honor."
	done


SproutTower3FPaintingText:
	text "It's a powerful"
	line "painting of a"
	cont "BELLSPROUT."

	para "Its stem stands"
	line "proud and erect,"

	para "honoring the"
	line "sacred cock we"
	cont "worship."
	done


SproutTower3FStatueText:
	text "A #MON statue…"

	para "It looks very"
	line "distinguished."

	para "Perhaps it once"
	line "stood guard over"

	para "the special rooms"
	line "where the sages"

	para "milk it, or watched"
	line "over the semen"

	para "pools of healing"
	line "sperm eruptions."
	done


SproutTower3F_MapEvents:
	db 0, 0 ; filler


	def_warp_events
	warp_event 10, 14, SPROUT_TOWER_2F, 4


	def_coord_events
	coord_event 11,  9, SCENE_SPROUTTOWER3F_RIVAL_ENCOUNTER, SproutTower3FRivalScene


	def_bg_events
	bg_event  8,  1, BGEVENT_READ, SproutTower3FStatue
	bg_event 11,  1, BGEVENT_READ, SproutTower3FStatue
	bg_event  9,  0, BGEVENT_READ, SproutTower3FPainting
	bg_event 10,  0, BGEVENT_READ, SproutTower3FPainting
	bg_event  5, 15, BGEVENT_READ, SproutTower3FStatue
	bg_event 14, 15, BGEVENT_READ, SproutTower3FStatue


	def_object_events
	object_event  8, 13, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSageJin, -1
	object_event  8,  8, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerSageTroy, -1
	object_event 10,  2, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SageLiScript, -1
	object_event 11, 11, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSageNeal, -1
	object_event  6, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SproutTower3FPotion, EVENT_SPROUT_TOWER_3F_POTION
	object_event 14,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SproutTower3FEscapeRope, EVENT_SPROUT_TOWER_3F_ESCAPE_ROPE
	object_event 10,  4, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RIVAL_SPROUT_TOWER