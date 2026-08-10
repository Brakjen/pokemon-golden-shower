_SlotsStartText::
	text "Start!"
	done

_SlotsNotEnoughCoinsText::
	text "Not enough"
	line "coins."
	prompt

_SlotsRanOutOfCoinsText::
	text "Darn… Ran out of"
	line "coins…"
	done

_SlotsPlayAgainText::
	text "Play again?"
	done

_SlotsLinedUpText::
	text "lined up!"
	line "Won @"
	text_ram wStringBuffer2
	text " coins!"
	done

_SlotsDarnText::
	text "Darn!"
	done

_GearTodayText::
	text_today
	text_end

_GearEllipseText::
	text "<……>"
	done

_GearOutOfServiceText::
	text "You're out of the"
	line "service area."
	prompt

_PokegearAskWhoCallText::
	text "Whom do you want"
	line "to call?"
	done

_PokegearPressButtonText::
	text "Press any button"
	line "to exit."
	done

_PokegearAskDeleteText::
	text "Delete this stored"
	line "phone number?"
	done

_PhoneWrongNumberText::
	text "Huh? Sorry, wrong"
	line "number!"
	done

_PhoneClickText::
	text "Click!"
	done

_PhoneEllipseText::
	text "<……>"
	done

_PhoneOutOfAreaText::
	text "That number is out"
	line "of the area."
	done

_PhoneJustTalkToThemText::
	text "Just go talk to"
	line "that person!"
	done

_PhoneThankYouText::
	text "Thank you!"
	done

_SpaceSpaceColonText:: ; unreferenced
	text "  :"
	done

_PasswordAskResetText::
	text "Password OK."
	line "Select CONTINUE &"
	cont "reset settings."
	prompt

_PasswordWrongText::
	text "Wrong password!"
	prompt

_PasswordAskResetClockText::
	text "Reset the clock?"
	done

_PasswordAskEnterText::
	text "Please enter the"
	line "password."
	done

_ClearAllSaveDataText::
	text "Clear all save"
	line "data area?"
	done

_LearnedMoveText::
	text_ram wMonOrItemNameBuffer
	text " learned a fucking"
	cont "awesome new move"
	cont "called @"
	text_ram wStringBuffer2
	text "!@"
	sound_dex_fanfare_50_79
	text_promptbutton
	text_end

_MoveAskForgetText::
	text "Which move should"
	next "be forgotten,"
	cont "asswipe?"
	done

_StopLearningMoveText::
	text "Stop learning"
	line "@"
	text_ram wStringBuffer2
	text "?"
	done

_DidNotLearnMoveText::
	text_ram wMonOrItemNameBuffer
	text_start
	line "did not learn"
	cont "@"
	text_ram wStringBuffer2
	text "."
	cont "It was pathetic,"
	cont "anyway."
	prompt

_AskForgetMoveText::
	text_ram wMonOrItemNameBuffer
	text " is"
	line "trying to learn"
	cont "A crazy cool move"
	cont "called"
	cont "@"
	text_ram wStringBuffer2
	text "."

	para "But @"
	text_ram wMonOrItemNameBuffer
	text_start
	line "can't learn more"
	cont "than four moves."
	cont "U a n00b?"

	para "Delete an older"
	line "move to make room"
	cont "for @"
	text_ram wStringBuffer2
	text "?"
	done

Text_MoveForgetCount::
	text "1, 2 and…@"
	text_pause
	text_end

	text_end ; unreferenced

_MoveForgotText::
	text " Holy shit!@"
	text_pause
	text_start

	para "@"
	text_ram wMonOrItemNameBuffer
	text " forgot"
	line "@"
	text_ram wStringBuffer1
	text "."

	para "And…"
	prompt

_MoveCantForgetHMText::
	text "HM moves can't be"
	line "forgotten now."
	cont "HAHAHAHAHAHA!"
	prompt

_CardFlipPlayWithThreeCoinsText::
	text "Play with three"
	line "coins?"
	done

_CardFlipNotEnoughCoinsText::
	text "Not enough coins…"
	prompt

_CardFlipChooseACardText::
	text "Choose a card."
	done

_CardFlipPlaceYourBetText::
	text "Place your bet."
	done

_CardFlipPlayAgainText::
	text "Want to play"
	line "again?"
	done

_CardFlipShuffledText::
	text "The cards have"
	line "been shuffled."
	prompt

_CardFlipYeahText::
	text "Yeah!"
	done

_CardFlipDarnText::
	text "Darn…"
	done

_BallDodgedText::
	text "FUCK! It dodged"
	line "the thrown BALL!"

	para "This #MON"
	line "can't be caught!"
	cont "FUUUUCK!"
	prompt

_BallMissedText::
	text "You missed the"
	line "fucking #MON!"
	prompt

_BallBrokeFreeText::
	text "For fuck sake!"
	line "The #MON"
	cont "broke free!"
	prompt

_BallAppearedCaughtText::
	text "Fuck YEAH!"
	line "I caught a #MON!"
	prompt

_BallAlmostHadItText::
	text "ASS FUCK SHIT!"
	line "Almost had it!"
	prompt

_BallSoCloseText::
	text "COCK SMASH!"
	line "It was so"
	cont "close too!"
	prompt

Text_BallCaught::
	text "Gotcha! @"
	text_ram wEnemyMonNickname
	text_start
	line "was caught!@"
	sound_caught_mon
	text_end

	text_end ; unreferenced

_WaitButtonText::
	text_promptbutton
	text_end

_BallSentToPCText::
	text_ram wMonOrItemNameBuffer
	text " was"
	line "sent to BILL's PC."
	prompt

_NewDexDataText::
	text_ram wEnemyMonNickname
	text "'s data"
	line "was newly added to"
	cont "the #DEX.@"
	sound_slot_machine_start
	text_promptbutton
	text_end

_AskGiveNicknameText::
	text "Give a nickname to"
	line "@"
	text_ram wStringBuffer1
	text "?"
	done

_ItemStatRoseText::
	text_ram wStringBuffer1
	text "'s"
	line "@"
	text_ram wStringBuffer2
	text " rose."
	prompt

_ItemCantUseOnMonText::
	text "That can't be used"
	line "on this #MON."
	prompt

_RepelUsedEarlierIsStillInEffectText::
	text "The REPEL used"
	line "earlier is still"
	cont "in effect."
	prompt

_PlayedFluteText::
	text "Played the #"
	line "FLUTE."

	para "Holy shit, that's"
	line "a catchy tune!"
	prompt

_FluteWakeUpText::
	text "All sleeping"
	line "#MON woke up."
	prompt

Text_PlayedPokeFlute::
	text "<PLAYER> played the"
	line "# FLUTE.@"
	text_promptbutton
	text_end

	text_end ; unreferenced

_CoinCaseCountText::
; BUG: Using the Coin Case can cause arbitrary code execution (see docs/bugs_and_glitches.md)
	text "Coins:"
	line "@"
	text_decimal wCoins, 2, 4
	done

_RaiseThePPOfWhichMoveText::
	text "Raise the PP of"
	line "which move?"
	done

_RestoreThePPOfWhichMoveText::
	text "Restore the PP of"
	line "which move?"
	done

_PPIsMaxedOutText::
	text_ram wStringBuffer2
	text "'s PP"
	line "is maxed out."
	prompt

_PPsIncreasedText::
	text_ram wStringBuffer2
	text "'s PP"
	line "increased."
	prompt

_PPRestoredText::
	text "PP was restored."
	prompt

_SentTrophyHomeText::
	text "There was a trophy"
	line "inside!@"
	sound_dex_fanfare_50_79
	text_start

	para "@"
	text_ram wPlayerName
	text " sent the"
	line "trophy home."
	prompt

_ItemLooksBitterText::
	text "It looks bitter…"
	prompt

_ItemCantUseOnEggText::
	text "That can't be used"
	line "on an EGG."
	prompt

_ItemOakWarningText::
	text "OAK: <PLAYER>!"
	line "This isn't the"
	cont "time to use that!"
	prompt

_ItemBelongsToSomeoneElseText::
	text "That belongs to"
	line "someone else!"
	prompt

_ItemWontHaveEffectText::
	text "It won't have any"
	line "effect."
	prompt

_BallBlockedText::
	text "The trainer"
	line "blocked the BALL!"
	prompt

_BallDontBeAThiefText::
	text "Don't be a thief!"
	prompt

_NoCyclingText::
	text "Cycling isn't"
	line "allowed here."
	prompt

_ItemCantGetOnText::
	text "Can't get on your"
	line "@"
	text_ram wStringBuffer1
	text " now."
	prompt

_BallBoxFullText::
	text "The #MON BOX"
	line "is full. That"
	cont "can't be used now."
	prompt

_ItemUsedText::
	text "<PLAYER> used the"
	line "@"
	text_ram wStringBuffer2
	text "."
	done

_ItemGotOnText::
	text "<PLAYER> got on the@"
	text_low
	text_ram wStringBuffer2
	text "."
	prompt

_ItemGotOffText::
	text "<PLAYER> got off@"
	text_low
	text "the @"
	text_ram wStringBuffer2
	text "."
	prompt

_KnowsMoveText::
	text_ram wStringBuffer1
	text " knows"
	line "@"
	text_ram wStringBuffer2
	text "."
	prompt

_MoveKnowsOneText::
	text "That #MON knows"
	line "only one move."
	done

_AskDeleteMoveText::
	text "Oh, make it forget"
	line "@"
	text_ram wStringBuffer1
	text "?"
	done

_DeleterForgotMoveText::
	text "Done! Your #MON"
	line "forgot the move."
	done

_DeleterEggText::
	text "An EGG doesn't"
	line "know any moves!"
	done

_DeleterNoComeAgainText::
	text "No? Come visit me"
	line "again."
	done

_DeleterAskWhichMoveText::
	text "Which move should"
	line "it forget, then?"
	prompt

_DeleterIntroText::
	text "Um… Oh, yes, I'm"
	line "the MOVE DELETER."

	para "I can make #MON"
	line "forget moves."

	para "Shall I make a"
	line "#MON forget?"
	done

_DeleterAskWhichMonText::
	text "Which #MON?"
	prompt

_DSTIsThatOKText::
	text " DST,"
	line "is that OK?"
	done

_TimeAskOkayText::
	text ","
	line "is that OK?"
	done

_TimesetAskDSTText::
	text "Do you want to"
	line "switch to Daylight"
	cont "Saving Time?"
	done

_TimesetDSTText::
	text "I set the clock"
	line "forward by one"
	cont "hour."
	prompt

_TimesetAskNotDSTText::
	text "Is Daylight Saving"
	line "Time over?"
	done

_TimesetNotDSTText::
	text "I put the clock"
	line "back one hour."
	prompt

_TimesetAskAdjustDSTText::
	text "Do you want to"
	line "adjust your clock"

	para "for Daylight"
	line "Saving Time?"
	done

_MomLostGearBookletText::
	text "I lost the in-"
	line "struction booklet"
	cont "for the #GEAR."

	para "Come back again in"
	line "a while."
	prompt
