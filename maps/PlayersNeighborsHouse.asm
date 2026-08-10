	object_const_def
	const PLAYERSNEIGHBORSHOUSE_COOLTRAINER_F

PlayersNeighborsHouse_MapScripts:
	def_scene_scripts

	def_callbacks

PlayersNeighborsDaughterScript:
	jumptextfaceplayer PlayersNeighborsDaughterText

PlayersNeighborsHouseBookshelfScript:
	jumpstd MagazineBookshelfScript

PlayersNeighborsHouseRadioScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .NormalRadio
	checkevent EVENT_LISTENED_TO_INITIAL_RADIO
	iftrue .AbbreviatedRadio
	playmusic MUSIC_POKEMON_TALK
	opentext
	writetext PlayerNeighborRadioText1
	pause 45
	writetext PlayerNeighborRadioText2
	pause 45
	writetext PlayerNeighborRadioText3
	pause 45
	musicfadeout MUSIC_NEW_BARK_TOWN, 16
	writetext PlayerNeighborRadioText4
	pause 45
	closetext
	setevent EVENT_LISTENED_TO_INITIAL_RADIO
	end
.NormalRadio:
	jumpstd Radio1Script
.AbbreviatedRadio:
	opentext
	writetext PlayerNeighborRadioText4
	pause 45
	closetext
	end

PlayersNeighborsDaughterText:
	text "Hey, uggo!"
	line "PIKACHU is an"
	cont "ugly #MON."

	para "I was amazed by"
	line "just how ugly"
	cont "it was."

	para "Where does the"
	line "poop come out?"

	para "…sigh…"

	para "You are quite"
	line "the pervert,"
	cont "aren't you?"
	done

PlayerNeighborRadioText1:
	text "PROF.OAK'S #MON"
	line "TALK! Please tune"
	cont "in next time"
	cont "for the dirtiest"
	cont "jokes in Johto."
	done

PlayerNeighborRadioText2:
	text "#MON CHANNEL!"
	done

PlayerNeighborRadioText3:
	text "This is DJ MARY,"
	line "fucker0!"
	cont "Your co-host!"

	para "Have you taken"
	line "a shit yet?"
	done

PlayerNeighborRadioText4:
	text "#MON!"
	line "#MON CHANNEL…"
	done

PlayersNeighborsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, NEW_BARK_TOWN, 3
	warp_event  3,  7, NEW_BARK_TOWN, 3

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, PlayersNeighborsHouseBookshelfScript
	bg_event  1,  1, BGEVENT_READ, PlayersNeighborsHouseBookshelfScript
	bg_event  7,  1, BGEVENT_READ, PlayersNeighborsHouseRadioScript

	def_object_events
	object_event  2,  3, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PlayersNeighborsDaughterScript, -1
