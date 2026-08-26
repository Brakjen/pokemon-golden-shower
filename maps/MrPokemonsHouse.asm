	object_const_def
	const MRPOKEMONSHOUSE_GENTLEMAN
	const MRPOKEMONSHOUSE_OAK

MrPokemonsHouse_MapScripts:
	def_scene_scripts
	scene_script MrPokemonsHouseMeetMrPokemonScene, SCENE_MRPOKEMONSHOUSE_MEET_MR_POKEMON
	scene_script MrPokemonsHouseNoopScene,          SCENE_MRPOKEMONSHOUSE_NOOP

	def_callbacks

MrPokemonsHouseMeetMrPokemonScene:
	sdefer MrPokemonsHouseMrPokemonEventScript
	end

MrPokemonsHouseNoopScene:
	end

MrPokemonsHouseMrPokemonEventScript:
	showemote EMOTE_SHOCK, MRPOKEMONSHOUSE_GENTLEMAN, 15
	turnobject MRPOKEMONSHOUSE_GENTLEMAN, DOWN
	opentext
	writetext MrPokemonIntroText1
	waitbutton
	closetext
	applymovement PLAYER, MrPokemonsHouse_PlayerWalksToMrPokemon
	opentext
	writetext MrPokemonIntroText2
	promptbutton
	waitsfx
	giveitem MYSTERY_EGG
	writetext MrPokemonsHouse_GotEggText
	playsound SFX_KEY_ITEM
	waitsfx
	itemnotify
	setevent EVENT_GOT_MYSTERY_EGG_FROM_MR_POKEMON
	blackoutmod CHERRYGROVE_CITY
	writetext MrPokemonIntroText3
	promptbutton
	turnobject MRPOKEMONSHOUSE_GENTLEMAN, RIGHT
	writetext MrPokemonIntroText4
	promptbutton
	turnobject MRPOKEMONSHOUSE_GENTLEMAN, DOWN
	turnobject MRPOKEMONSHOUSE_OAK, LEFT
	writetext MrPokemonIntroText5
	waitbutton
	closetext
	sjump MrPokemonsHouse_OakScript

MrPokemonsHouse_MrPokemonScript:
	faceplayer
	opentext
	checkitem RED_SCALE
	iftrue .RedScale
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue .AlwaysNewDiscoveries
	writetext MrPokemonText_ImDependingOnYou
	waitbutton
	closetext
	end

.AlwaysNewDiscoveries:
	writetext MrPokemonText_AlwaysNewDiscoveries
	waitbutton
	closetext
	end

.RedScale:
	writetext MrPokemonText_GimmeTheScale
	yesorno
	iffalse .refused
	verbosegiveitem EXP_SHARE
	iffalse .full
	takeitem RED_SCALE
	sjump .AlwaysNewDiscoveries

.refused
	writetext MrPokemonText_Disappointed
	waitbutton
.full
	closetext
	end

MrPokemonsHouse_OakScript:
	playmusic MUSIC_PROF_OAK
	applymovement MRPOKEMONSHOUSE_OAK, MrPokemonsHouse_OakWalksToPlayer
	turnobject PLAYER, RIGHT
	opentext
	writetext MrPokemonsHouse_OakText1
	promptbutton
	waitsfx
	writetext MrPokemonsHouse_GetDexText
	playsound SFX_ITEM
	waitsfx
	setflag ENGINE_POKEDEX
	writetext MrPokemonsHouse_OakText2
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement MRPOKEMONSHOUSE_OAK, MrPokemonsHouse_OakExits
	playsound SFX_EXIT_BUILDING
	disappear MRPOKEMONSHOUSE_OAK
	waitsfx
	special RestartMapMusic
	pause 15
	turnobject PLAYER, UP
	opentext
	writetext MrPokemonsHouse_MrPokemonHealText
	waitbutton
	closetext
	special FadeOutToBlack
	special ReloadSpritesNoPalettes
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special FadeInFromBlack
	special RestartMapMusic
	opentext
	writetext MrPokemonText_ImDependingOnYou
	waitbutton
	closetext
	setevent EVENT_RIVAL_NEW_BARK_TOWN
	setscene SCENE_MRPOKEMONSHOUSE_NOOP
	setmapscene CHERRYGROVE_CITY, SCENE_CHERRYGROVECITY_MEET_RIVAL
	setmapscene ELMS_LAB, SCENE_ELMSLAB_MEET_OFFICER
	specialphonecall SPECIALCALL_ROBBED
	clearevent EVENT_COP_IN_ELMS_LAB
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .RivalTakesChikorita
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .RivalTakesCyndaquil
	setevent EVENT_TOTODILE_POKEBALL_IN_ELMS_LAB
	end

.RivalTakesChikorita:
	setevent EVENT_CHIKORITA_POKEBALL_IN_ELMS_LAB
	end

.RivalTakesCyndaquil:
	setevent EVENT_CYNDAQUIL_POKEBALL_IN_ELMS_LAB
	end

MrPokemonsHouse_ForeignMagazines:
	jumptext MrPokemonsHouse_ForeignMagazinesText

MrPokemonsHouse_BrokenComputer:
	jumptext MrPokemonsHouse_BrokenComputerText

MrPokemonsHouse_StrangeCoins:
	jumptext MrPokemonsHouse_StrangeCoinsText

MrPokemonsHouse_PlayerWalksToMrPokemon:
	step RIGHT
	step UP
	step_end

MrPokemonsHouse_OakWalksToPlayer:
	step DOWN
	step LEFT
	step LEFT
	step_end

MrPokemonsHouse_OakExits:
	step DOWN
	step LEFT
	turn_head DOWN
	step_sleep 2
	step_end

MrPokemonIntroText1:
	text "Goo goo, <PLAYER>!"
	line "PROF.ELM said"
	cont "you come visit,"
	cont "retard."

	para "Come close,"
	line "fuckwit."
	done

MrPokemonIntroText2:
	text "Take this EGG to"
	line "PROF.ELM."
	cont "He must wook,"
	cont "pissfairy."
	done

MrPokemonsHouse_GotEggText:
	text "<PLAYER> received"
	line "MYSTERY EGG."

	para "Yay, retard!"
	done

MrPokemonIntroText3:
	text "Day-care fwends"
	line "gave me that EGG,"
	cont "fuckwit."

	para "EGG made me go"
	line "ooh-ooh! So me"
	cont "mailed PROF.ELM."

	para "He knows how"
	line "#MON grow and"
	cont "change best,"
	cont "retard."
	done

MrPokemonIntroText4:
	text "Even PROF.OAK"
	line "says so,"
	cont "pissfairy."
	done

MrPokemonIntroText5:
	text "If me guess right,"
	line "PROF.ELM knows"
	cont "this EGG,"
	cont "retard."
	done

MrPokemonsHouse_MrPokemonHealText:
	text "You go back to"
	line "PROF.ELM,"
	cont "fuckwit?"

	para "Rest your #MON"
	line "need nappy-nap,"
	cont "pissfairy."
	done

MrPokemonText_ImDependingOnYou:
	text "Me count on you,"
	line "retard!"
	done

MrPokemonText_AlwaysNewDiscoveries:
	text "Gaa gaa! New-new"
	line "things everywhere,"
	cont "fuckwit!"
	done

MrPokemonsHouse_OakText1:
	text "OAK: Goo goo!"
	line "Me PROF.OAK,"
	cont "retard."

	para "Me study #MON."
	line "MR.#MON is"
	cont "my old fwend."

	para "You run errand"
	line "for PROF.ELM,"
	cont "fuckwit."

	para "Ooh! Your #MON"
	line "is rare."

	para "PROF.ELM chose"
	line "you to care for"
	cont "your #MON."

	para "You look kind."
	line "#MON like kind."

	para "Help me too,"
	line "pissfairy?"

	para "This is #DEX."
	line "It writes down"
	cont "every #MON"
	cont "you see or catch."

	para "Big brainy book!"
	line "Gaa gaa!"
	done

MrPokemonsHouse_GetDexText:
	text "<PLAYER> received"
	line "#DEX!"

	para "Yay, fuckwit!"
	done

MrPokemonsHouse_OakText2:
	text "Meet many #MON,"
	line "retard."

	para "See them. Catch"
	line "Fill the #DEX."

	para "Me stay too long."
	line "Uh-oh!"

	para "Me go GOLDENROD"
	line "for radio show."

	para "<PLAYER>, me count"
	line "on you,"
	cont "pissfairy!"
	done

MrPokemonText_GimmeTheScale:
	text "Ooh! RED SCALE,"
	line "retard!"

	para "From red GYARADOS?"
	line "Rare rare!"

	para "Trade RED SCALE"
	line "for my EXP.SHARE,"
	cont "fuckwit?"
	done

MrPokemonText_Disappointed:
	text "No trade? Boo-hoo,"
	line "pissfairy."

	para "RED SCALE rare!"
	done

MrPokemonsHouse_ForeignMagazinesText:
	text "Big wordy papers,"
	line "retard."

	para "Blah-blah words."
	done

MrPokemonsHouse_BrokenComputerText:
	text "Big clicky box,"
	line "fuckwit."

	para "No go. All broke."
	done

MrPokemonsHouse_StrangeCoinsText:
	text "Shiny round coins,"
	line "pissfairy!"

	para "From far-far land?"
	done

MrPokemonsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_30, 2
	warp_event  3,  7, ROUTE_30, 2

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, MrPokemonsHouse_ForeignMagazines
	bg_event  1,  1, BGEVENT_READ, MrPokemonsHouse_ForeignMagazines
	bg_event  6,  1, BGEVENT_READ, MrPokemonsHouse_BrokenComputer
	bg_event  7,  1, BGEVENT_READ, MrPokemonsHouse_BrokenComputer
	bg_event  6,  4, BGEVENT_READ, MrPokemonsHouse_StrangeCoins

	def_object_events
	object_event  3,  5, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MrPokemonsHouse_MrPokemonScript, -1
	object_event  6,  5, SPRITE_OAK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MR_POKEMONS_HOUSE_OAK
