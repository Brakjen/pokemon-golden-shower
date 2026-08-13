	object_const_def
	const DANCETHEATER_KIMONO_GIRL1
	const DANCETHEATER_KIMONO_GIRL2
	const DANCETHEATER_KIMONO_GIRL3
	const DANCETHEATER_KIMONO_GIRL4
	const DANCETHEATER_KIMONO_GIRL5
	const DANCETHEATER_GENTLEMAN
	const DANCETHEATER_RHYDON
	const DANCETHEATER_COOLTRAINER_M
	const DANCETHEATER_GRANNY

DanceTheater_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerKimonoGirlNaoko:
	trainer KIMONO_GIRL, NAOKO, EVENT_BEAT_KIMONO_GIRL_NAOKO, KimonoGirlNaokoSeenText, KimonoGirlNaokoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlNaokoAfterBattleText
	waitbutton
	closetext
	end

TrainerKimonoGirlSayo:
	trainer KIMONO_GIRL, SAYO, EVENT_BEAT_KIMONO_GIRL_SAYO, KimonoGirlSayoSeenText, KimonoGirlSayoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlSayoAfterBattleText
	waitbutton
	closetext
	end

TrainerKimonoGirlZuki:
	trainer KIMONO_GIRL, ZUKI, EVENT_BEAT_KIMONO_GIRL_ZUKI, KimonoGirlZukiSeenText, KimonoGirlZukiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlZukiAfterBattleText
	waitbutton
	closetext
	end

TrainerKimonoGirlKuni:
	trainer KIMONO_GIRL, KUNI, EVENT_BEAT_KIMONO_GIRL_KUNI, KimonoGirlKuniSeenText, KimonoGirlKuniBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlKuniAfterBattleText
	waitbutton
	closetext
	end

TrainerKimonoGirlMiki:
	trainer KIMONO_GIRL, MIKI, EVENT_BEAT_KIMONO_GIRL_MIKI, KimonoGirlMikiSeenText, KimonoGirlMikiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlMikiAfterBattleText
	waitbutton
	closetext
	end

DanceTheaterSurfGuy:
	faceplayer
	opentext
	writetext SurfGuyNeverLeftAScratchText
	promptbutton
	checkevent EVENT_GOT_HM03_SURF
	iftrue SurfGuyAlreadyGaveSurf
	checkevent EVENT_BEAT_KIMONO_GIRL_NAOKO
	iffalse .KimonoGirlsUndefeated
	checkevent EVENT_BEAT_KIMONO_GIRL_SAYO
	iffalse .KimonoGirlsUndefeated
	checkevent EVENT_BEAT_KIMONO_GIRL_ZUKI
	iffalse .KimonoGirlsUndefeated
	checkevent EVENT_BEAT_KIMONO_GIRL_KUNI
	iffalse .KimonoGirlsUndefeated
	checkevent EVENT_BEAT_KIMONO_GIRL_MIKI
	iffalse .KimonoGirlsUndefeated
	sjump .GetSurf

.KimonoGirlsUndefeated:
	writetext SurfGuyLadGiftText
	waitbutton
	closetext
	end

.GetSurf:
	writetext SurfGuyLikeADanceText
	promptbutton
	verbosegiveitem HM_SURF
	setevent EVENT_GOT_HM03_SURF
	writetext SurfGuySurfExplanationText
	waitbutton
	closetext
	end

SurfGuyAlreadyGaveSurf:
	writetext SurfGuyElegantKimonoGirlsText
	waitbutton
	closetext
	end

DanceTheaterRhydon:
	opentext
	writetext RhydonText
	cry RHYDON
	waitbutton
	closetext
	end

DanceTheaterCooltrainerMScript:
	jumptextfaceplayer DanceTheaterCooltrainerMText

DanceTheaterGrannyScript:
	jumptextfaceplayer DanceTheaterGrannyText

DanceTheaterFancyPanel:
	jumptext DanceTheaterFancyPanelText

KimonoGirlNaokoSeenText:
	text "Thy #MON show"
	line "some breeding."
	cont "Battle me,"
	cont "vetlegnolt."
	done

KimonoGirlNaokoBeatenText:
	text "Thou art stronger"
	line "than expected."
	done

KimonoGirlNaokoAfterBattleText:
	text "A tolerable bout,"
	line "storeklovn."
	cont "Return someday."
	done

KimonoGirlSayoSeenText:
	text "My #MON dance"
	line "with me."

	para "Naturally, I train"
	line "them as well."
	cont "Observe,"
	cont "dingleberry."
	done

KimonoGirlSayoBeatenText:
	text "So near. Yet"
	line "not sufficient."
	done

KimonoGirlSayoAfterBattleText:
	text "Rhythm governs"
	line "dance and #MON."
	cont "Learn it,"
	cont "vetlegnolt."
	done

KimonoGirlZukiSeenText:
	text "My barrette is"
	line "well chosen."

	para "A #MON battle?"
	line "If thou insistest."
	done

KimonoGirlZukiBeatenText:
	text "No #MON remain."
	line "How common."
	done

KimonoGirlZukiAfterBattleText:
	text "A fresh flower"
	line "each month."
	cont "Taste matters,"
	cont "storeklovn."
	done

KimonoGirlKuniSeenText:
	text "Thou lookest"
	line "presentable."
	cont "Battle me,"
	cont "dingleberry."
	done

KimonoGirlKuniBeatenText:
	text "Thou art stronger"
	line "than thy bearing."
	done

KimonoGirlKuniAfterBattleText:
	text "I trained much."
	line "I presumed merit."

	para "Presumption is"
	line "a vulgar tutor."
	done

KimonoGirlMikiSeenText:
	text "Dost thou admire"
	line "my dancing?"
	cont "I train #MON."
	cont "They dance too."
	done

KimonoGirlMikiBeatenText:
	text "Thy #MON have"
	line "some refinement."
	done

KimonoGirlMikiAfterBattleText:
	text "I dance because"
	line "worthy eyes watch."

	para "My #MON sustain"
	line "my spirits."
	cont "As company should."
	done

SurfGuyNeverLeftAScratchText:
	text "These dancers"
	line "possess grace."

	para "Their #MON are"
	line "trained with care."

	para "I challenge them,"
	line "yet leave no mark."
	cont "A humbling truth."
	done

SurfGuyLadGiftText:
	text "Defeat all five"
	line "dancers,"
	cont "vetlegnolt."

	para "Then earn a gift"
	line "from me."
	done

SurfGuyLikeADanceText:
	text "Thy battle moved"
	line "like a dance."

	para "A rare display,"
	line "storeklovn."

	para "Accept this token."
	line "Use it with sense."
	done

SurfGuySurfExplanationText:
	text "That is SURF."

	para "It lets #MON"
	line "cross water."
	cont "Use it properly."
	done

SurfGuyElegantKimonoGirlsText:
	text "My #MON lack"
	line "their elegance."
	cont "Most do,"
	cont "dingleberry."
	done

RhydonText:
	text "RHYDON: Gugooh"
	line "gugogooh!"
	done

DanceTheaterCooltrainerMText:
	text "That gentleman"
	line "keeps a RHYDON."

	para "He wants a #MON"
	line "to SURF and dance."

	para "Curious ambition,"
	line "vetlegnolt."
	done

DanceTheaterGrannyText:
	text "The dancers are"
	line "well schooled."

	para "They train with"
	line "rigor and custom."

	para "If thou lovest"
	line "a craft, work"
	cont "with dignity."
	done

DanceTheaterFancyPanelText:
	text "A flowered panel."
	line "Tasteful enough,"
	cont "storeklovn."
	done

DanceTheater_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 13, ECRUTEAK_CITY, 8
	warp_event  6, 13, ECRUTEAK_CITY, 8

	def_coord_events

	def_bg_events
	bg_event  5,  6, BGEVENT_UP, DanceTheaterFancyPanel
	bg_event  6,  6, BGEVENT_UP, DanceTheaterFancyPanel

	def_object_events
	object_event  0,  2, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlNaoko, -1
	object_event  2,  1, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlSayo, -1
	object_event  6,  2, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlZuki, -1
	object_event  9,  1, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlKuni, -1
	object_event 11,  2, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlMiki, -1
	object_event  7, 10, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DanceTheaterSurfGuy, -1
	object_event  6,  8, SPRITE_RHYDON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, DanceTheaterRhydon, -1
	object_event 10, 10, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, DanceTheaterCooltrainerMScript, -1
	object_event  3,  6, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DanceTheaterGrannyScript, -1
