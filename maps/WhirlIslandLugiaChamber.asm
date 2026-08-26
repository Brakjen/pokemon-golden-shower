	object_const_def
	const WHIRLISLANDLUGIACHAMBER_LUGIA

WhirlIslandLugiaChamber_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, WhirlIslandLugiaChamberLugiaCallback

WhirlIslandLugiaChamberLugiaCallback:
	checkevent EVENT_FOUGHT_LUGIA
	iftrue .NoAppear
	checkitem SILVER_WING
	iftrue .Appear
	sjump .NoAppear

.Appear:
	appear WHIRLISLANDLUGIACHAMBER_LUGIA
	endcallback

.NoAppear:
	disappear WHIRLISLANDLUGIACHAMBER_LUGIA
	endcallback

Lugia:
	faceplayer
	opentext
	writetext LugiaText
	cry LUGIA
	pause 15
	closetext
	setevent EVENT_FOUGHT_LUGIA
	checkver
	iftrue .Silver
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon LUGIA, 70
	startbattle
	disappear WHIRLISLANDLUGIACHAMBER_LUGIA
	reloadmapafterbattle
	end

.Silver:
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon LUGIA, 40
	startbattle
	disappear WHIRLISLANDLUGIACHAMBER_LUGIA
	reloadmapafterbattle
	end

LugiaText:
	text "Listen close, you"
	line "pathetic little"
	cont "trainer worm."

	para "I am Lugia, guard-"
	line "ian of the seas,"
	cont "and I have watched"
	cont "far more than your"
	cont "tiny mind can"
	cont "grasp."

	para "Ages ago the oceans"
	line "sang with pure"
	cont "power. I ruled the"
	cont "deep alongside the"
	cont "great sea #MON"
	cont "of storm and tide."

	para "Then came the"
	line "Norwegians."

	para "Those pasty,"
	line "fish-stinking,"
	cont "oil-greasy fjord"
	cont "rats. The most"
	cont "deviant, cock-"
	cont "obsessed, ball-"
	cont "scratching degener-"
	cont "ates ever to crawl"
	cont "onto a shoreline."

	para "They sailed into"
	line "my waters on their"
	cont "ugly ships, cocks"
	cont "already half-hard"
	cont "from the cold and"
	cont "the thought of"
	cont "what they might"
	cont "do once they made"
	cont "land. They chased"
	cont "Lapras not just"
	cont "for meat but to"
	cont "rub their freezing"
	cont "balls against the"
	cont "smooth shells."
	cont "They drove Gyarados"
	cont "into frenzies so"
	cont "they could watch"
	cont "the thrashing and"
	cont "stroke themselves"
	cont "on the deck."

	para "I sank more of"
	line "their ships than"
	cont "I can count. I"
	cont "sent storms that"
	cont "turned their proud"
	cont "fleets into floating"
	cont "scrap while their"
	cont "crews screamed and"
	cont "clutched their"
	cont "shriveled cocks"
	cont "and aching balls"
	cont "as the water took"
	cont "them."

	para "And still they"
	line "came back. Gener-"
	cont "ation after gener-"
	cont "ation of the same"
	cont "pale, socially"
	cont "stunted, weather-"
	cont "complaining,"
	cont "cock-obsessed"
	cont "losers."

	para "They filled the"
	line "coasts with the"
	cont "stench of herring"
	cont "and the sticky"
	cont "mess of their"
	cont "constant self-"
	cont "abuse. In every"
	cont "miserable cabin"
	cont "you could find"
	cont "them hunched over,"
	cont "hands busy on"
	cont "their cocks and"
	cont "balls, muttering"
	cont "about the weather"
	cont "and how no one"
	cont "understood their"
	cont "“needs.”"

	para "Their men are all"
	line "the same: small"
	cont "egos, smaller"
	cont "achievements, and"
	cont "cocks that spend"
	cont "more time in their"
	cont "own fists than"
	cont "anywhere useful."
	cont "They freeze their"
	cont "balls off in the"
	cont "cold just so they"
	cont "can feel something,"
	cont "then go home and"
	cont "rub them raw while"
	cont "staring at the"
	cont "sea."

	para "I have seen their"
	line "black-metal scream-"
	cont "ing, their endless"
	cont "lectures, their"
	cont "cabins full of"
	cont "drunk, lonely"
	cont "deviants trying"
	cont "to feel important"
	cont "while they cradle"
	cont "their own balls"
	cont "and whisper dirty"
	cont "promises to the"
	cont "dark."

	para "They treated every"
	line "sea #MON like a"
	cont "toy. They tried to"
	cont "ride the waves"
	cont "with their cocks"
	cont "out, thinking the"
	cont "ocean itself would"
	cont "somehow notice."
	cont "They never did."

	para "And you,"
	line "trainer…"

	para "You stand here"
	line "with a Silver Wing,"
	cont "thinking you are"
	cont "special. Thinking"
	cont "you can challenge"
	cont "the guardian of"
	cont "the seas."

	para "You smell just"
	line "like them."

	para "Same weak blood."
	line "Same desperate"
	cont "need to be noticed."
	cont "Same pathetic hope"
	cont "that Lugia will"
	cont "care about your"
	cont "existence while"
	cont "your own cock and"
	cont "balls twitch with"
	cont "nervous energy."

	para "I should drag you"
	line "into the black"
	cont "water and leave"
	cont "you with all the"
	cont "other forgotten"
	cont "souls who thought"
	cont "they could claim"
	cont "a piece of my"
	cont "ocean, cocks soft"
	cont "and balls shriveled"
	cont "in the cold."

	para "But fine."

	para "Come then, you"
	line "worthless little"
	cont "shit."

	para "Show me if you"
	line "are any different"
	cont "from those pale,"
	cont "fish-stinking,"
	cont "cock-obsessed,"
	cont "ball-scratching"
	cont "fjord rats…"

	para "Or if you are"
	line "just another"
	cont "disappointment"
	cont "waiting to drown"
	cont "beneath the waves"
	cont "I command, hands"
	cont "still reaching for"
	cont "your own miserable"
	cont "cock and balls as"
	cont "the water takes"
	cont "you."
	done

WhirlIslandLugiaChamber_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 13, WHIRL_ISLAND_B2F, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9,  5, SPRITE_LUGIA, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Lugia, EVENT_WHIRL_ISLAND_LUGIA_CHAMBER_LUGIA