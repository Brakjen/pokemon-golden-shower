	object_const_def
	const ROUTE35GOLDENRODGATE_RANDY
	const ROUTE35GOLDENRODGATE_POKEFAN_F

Route35GoldenrodGate_MapScripts:
	def_scene_scripts

	def_callbacks

RandyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_HP_UP_FROM_RANDY
	iftrue .gothpup
	checkevent EVENT_GAVE_KENYA
	iftrue .questcomplete
	checkevent EVENT_GOT_KENYA
	iftrue .alreadyhavekenya
	writetext Route35GoldenrodGateRandyAskTakeThisMonToMyFriendText
	yesorno
	iffalse .refused
	writetext Route35GoldenrodGateRandyThanksText
	promptbutton
	waitsfx
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .partyfull
	writetext Route35GoldenrodGatePlayerReceivedAMonWithMailText
	playsound SFX_KEY_ITEM
	waitsfx
	givepoke SPEAROW, 10, NO_ITEM, GiftSpearowName, GiftSpearowOTName
	givepokemail GiftSpearowMail
	setevent EVENT_GOT_KENYA
.alreadyhavekenya
	writetext Route35GoldenrodGateRandyWeirdTreeBlockingRoadText
	waitbutton
	closetext
	end

.partyfull
	writetext Route35GoldenrodGateRandyCantCarryAnotherMonText
	waitbutton
	closetext
	end

.refused
	writetext Route35GoldenrodGateRandyOhNeverMindThenText
	waitbutton
	closetext
	end

.questcomplete
	writetext Route35GoldenrodGateRandySomethingForYourTroubleText
	promptbutton
	verbosegiveitem HP_UP
	iffalse .bagfull
	setevent EVENT_GOT_HP_UP_FROM_RANDY
.gothpup
	writetext Route35GoldenrodGateRandyMyPalWasSnoozingRightText
	waitbutton
.bagfull
	closetext
	end

GiftSpearowMail:
	db FLOWER_MAIL
	db   "DARK CAVE leads"
	next "to another road@"

GiftSpearowName:
	db "KENYA@"

GiftSpearowOTName:
	db "RANDY@"

Route35GoldenrodGatePokefanFScript:
	faceplayer
	opentext
	checkevent EVENT_FOUGHT_SUDOWOODO
	iftrue .FoughtSudowoodo
	writetext Route35GoldenrodGatePokefanFText
	waitbutton
	closetext
	end

.FoughtSudowoodo
	writetext Route35GoldenrodGatePokefanFText_FoughtSudowoodo
	waitbutton
	closetext
	end

Route35GoldenrodGateRandyAskTakeThisMonToMyFriendText:
	text "Yo, my man."
	line "Do me a favor?"

	para "Take this #MON"
	line "with MAIL"
	cont "to my friend."

	para "ROUTE 31. Don't"
	line "get lost."
	cont "sick fuck."
	done

Route35GoldenrodGateRandyThanksText:
	text "You will? Bet,"
	line "big dawg."

	para "My pal snoozes"
	line "all the time."

	para "You'll know him."
	line "Easy, dickwad."
	done

Route35GoldenrodGatePlayerReceivedAMonWithMailText:
	text "Received #MON"
	line "with MAIL."
	done

Route35GoldenrodGateRandyWeirdTreeBlockingRoadText:
	text "Read this. Don't"
	line "lose it. ROUTE 31."

	para "Weird tree blocked"
	line "the road."

	para "Maybe it's"
	line "cleared."
	done

Route35GoldenrodGateRandyCantCarryAnotherMonText:
	text "Can't carry"
	line "another #MON,"
	cont "sick fuck."
	done

Route35GoldenrodGateRandyOhNeverMindThenText:
	text "Never mind then,"
	line "nigger."
	done

Route35GoldenrodGateRandySomethingForYourTroubleText:
	text "Thanks, big dawg."
	line "You delivered it."

	para "Take this for"
	line "the trouble."
	done

Route35GoldenrodGateRandyMyPalWasSnoozingRightText:
	text "My pal snoozed,"
	line "right? Told you,"
	cont "bitch."
	done

Route35GoldenrodGatePokefanFText:
	text "Strange tree"
	line "blocks road."
	cont "Homie."

	para "Talk to it."
	line "It wriggles."

	para "SQUIRTBOTTLE"
	line "makes it wild,"
	cont "cucksucker."
	done

Route35GoldenrodGatePokefanFText_FoughtSudowoodo:
	text "#MON Lullaby"
	line "on radio's nice,"
	cont "nigger."
	done

Route35GoldenrodGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, ROUTE_35, 1
	warp_event  5,  0, ROUTE_35, 2
	warp_event  4,  7, GOLDENROD_CITY, 13
	warp_event  5,  7, GOLDENROD_CITY, 13

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RandyScript, -1
	object_event  6,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route35GoldenrodGatePokefanFScript, -1
