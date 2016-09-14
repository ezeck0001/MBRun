;Remove spells from Factory
Func RemoveSpellsFromFactory()
	Local $iBarrHere = 0
	If $numFactorySpellAvaiables = 1 Then
		$iBarrHere = 0
		While Not (isSpellFactory())
			If Not (IsTrainPage()) Then Return
			_TrainMoveBtn(+1) ;click Next button
			$iBarrHere += 1
			If _Sleep($iDelayTrain3) Then ExitLoop
			If $iBarrHere = 8 Then
				SetLog("No Spell Factory Found")
				ExitLoop
			EndIf
		WEnd
		$iBarrHere = 0
		While isSpellFactory()
			;CLICK REMOVE TROOPS
			If _Sleep($iDelayTrain2) Then Return
			$icount = 0
			If _ColorCheck(_GetPixelColor(187, 212, True), Hex(0xD30005, 6), 10) Then ; check if the existe more then 6 slots troops on train bar
				While Not _ColorCheck(_GetPixelColor(573, 212, True), Hex(0xD80001, 6), 10) ; while until appears the Red icon to delete troops
					;Setlog("While 2")
					;_PostMessage_ClickDrag(550, 240, 170, 240, "left", 1000)
					ClickDrag(550, 240, 170, 240, 1000)
					$icount += 1
					If _Sleep($iDelayTrain2) Then Return
					If $icount = 7 Then ExitLoop
				WEnd
			EndIf
			$icount = 0
			If _Sleep($iDelayTrain2) Then Return

			While Not _ColorCheck(_GetPixelColor(593, 200 + $midOffsetY, True), Hex(0xD0D0C0, 6), 20) ; while not disappears  green arrow
				;Setlog("While 3")
				If Not (IsTrainPage()) Then Return ;exit if no train page
				Click(568, 177 + $midOffsetY, 10, $isldTrainITDelay, "#0284") ; Remove Troops in training
				$icount += 1
				If $RunState = False Then Return
				If $icount = 20 Then ExitLoop
			WEnd
			If $debugsetlogTrain = 1 And $icount = 100 Then SetLog("Train warning 7", $COLOR_PURPLE)
			If Not (IsTrainPage()) Then Return
			$iBarrHere += 1
			If $iBarrHere >= 1 Then ExitLoop ; make sure no more infiniti loop
			If _Sleep($iDelayTrain2) Then Return
		WEnd
	EndIf
	If $numFactoryDarkSpellAvaiables = 1 Then
		$iBarrHere = 0
		While Not (isDarkSpellFactory())
			If Not (IsTrainPage()) Then Return
			_TrainMoveBtn(+1) ;click Next button
			$iBarrHere += 1
			If $iBarrHere = 8 Then ExitLoop
			If _Sleep($iDelayTrain3) Then Return
		WEnd
		$iBarrHere = 0
		While isDarkSpellFactory()
			;CLICK REMOVE TROOPS
			If _Sleep($iDelayTrain2) Then Return
			$icount = 0
			If _ColorCheck(_GetPixelColor(187, 212, True), Hex(0xD30005, 6), 10) Then ; check if the existe more then 6 slots troops on train bar
				While Not _ColorCheck(_GetPixelColor(573, 212, True), Hex(0xD80001, 6), 10) ; while until appears the Red icon to delete troops
					;Setlog("While 2")
					;_PostMessage_ClickDrag(550, 240, 170, 240, "left", 1000)
					ClickDrag(550, 240, 170, 240, 1000)
					$icount += 1
					If _Sleep($iDelayTrain2) Then Return
					If $icount = 7 Then ExitLoop
				WEnd
			EndIf
			$icount = 0
			If _Sleep($iDelayTrain2) Then Return

			While Not _ColorCheck(_GetPixelColor(593, 200 + $midOffsetY, True), Hex(0xD0D0C0, 6), 20) ; while not disappears  green arrow
				;Setlog("While 3")
				If Not (IsTrainPage()) Then Return ;exit if no train page
				Click(568, 177 + $midOffsetY, 10, $isldTrainITDelay, "#0284") ; Remove Troops in training
				$icount += 1
				If $RunState = False Then Return
				If $icount = 20 Then ExitLoop
			WEnd
			If $debugsetlogTrain = 1 And $icount = 100 Then SetLog("Train warning 7", $COLOR_PURPLE)
			If Not (IsTrainPage()) Then Return
			$iBarrHere += 1
			If $iBarrHere >= 1 Then ExitLoop ; make sure no more infiniti loop
			If _Sleep($iDelayTrain2) Then Return
		WEnd
	EndIf
EndFunc   ;==>RemoveSpellsFromFactory

Func EmptyCamps($WarPrep)
	;Requires Army Overview to be Open Func EmptyCamps($WarPrep = 0) ; 0 Empty all to zero, 1 Prep for War, 2 Train Adjustment
	If _Sleep(500) Then Return
	For $i = 0 To UBound($TroopName) - 1
		If Eval("Cur" & $TroopName[$i]) < 0 Then
			If $WarPrep = 1 Then
				$Delete = (Eval("Cur" & $TroopName[$i]) * -1) - Eval($TroopName[$i] & "War") ; existent troops - troops selected in GUI
				If $Delete < 0 Then
					$Delete = 0
				EndIf
			Else
				$Delete = (Eval("Cur" & $TroopName[$i]) * -1); Delete all Troops
			EndIf
			If $debugsetlogTrain = 1 Then SetLog("$Delete :" & $Delete)
			$SlotTemp = Eval("SlotInArmy" & $TroopName[$i])
			If $debugsetlogTrain = 1 Then SetLog("$SlotTemp :" & $SlotTemp)

			If _Sleep(250) Then Return
			If _ColorCheck(_GetPixelColor(170 + (62 * $SlotTemp), 235 + $midOffsetY, True), Hex(0xD40003, 6), 15) Then ; Verify if existe the RED [-] button
				Click(170 + (62 * $SlotTemp), 235 + $midOffsetY, $Delete, 300)
				SetLog("~Deleted " & $Delete & " " & NameOfTroop(Eval("e" & $TroopName[$i])), $COLOR_RED)
				Assign("Cur" & $TroopName[$i], Eval("Cur" & $TroopName[$i]) + $Delete) ; Delete all Troops
			EndIf
		EndIf
	Next
	For $i = 0 To UBound($TroopDarkName) - 1
		If Eval("Cur" & $TroopDarkName[$i]) < 0 Then
			If $WarPrep = 1 Then
				$Delete = (Eval("Cur" & $TroopDarkName[$i]) * -1) - Eval($TroopDarkName[$i] & "War") ; existent troops - troops selected in GUI
				If $Delete < 0 Then
					$Delete = 0
				EndIf
			Else
				$Delete = (Eval("Cur" & $TroopDarkName[$i]) * -1); Delete all Troops
			EndIf

			If $debugsetlogTrain = 1 Then SetLog("$Delete :" & $Delete)
			$SlotTemp = Eval("SlotInArmy" & $TroopDarkName[$i])
			If $debugsetlogTrain = 1 Then SetLog("$SlotTemp :" & $SlotTemp)

			If _Sleep(250) Then Return
			If _ColorCheck(_GetPixelColor(170 + (62 * $SlotTemp), 235 + $midOffsetY, True), Hex(0xD40003, 6), 15) Then ; Verify if existe the RED [-] button
				Click(170 + (62 * $SlotTemp), 235 + $midOffsetY, $Delete, 300)
				SetLog("~Deleted " & $Delete & " " & NameOfTroop(Eval("e" & $TroopDarkName[$i])), $COLOR_RED)
				Assign("Cur" & $TroopDarkName[$i], Eval("Cur" & $TroopDarkName[$i]) + $Delete) ; Remove From $CurTroop the deleted Troop quantity
			EndIf
		EndIf
	Next

EndFunc   ;==>EmptyCamps

Func EmptySpells($WarPrep)
	;Requires Army Overview to be Open Func EmptySpells($WarPrep = 0) ; 0 Empty all to zero, 1 Prep for War, 2 Train Adjustment
	If $CurLightningSpell > 0 Then
		If $WarPrep = 1 Then
			$Delete = $CurLightningSpell - $iLightningSpellWar
			If $Delete < 0 Then
				$Delete = 0
			EndIf
		Else
			$Delete = $CurLightningSpell ; Delete all Troops
		EndIf
		If $debugsetlogTrain = 1 Then SetLog("$Delete :" & $Delete)
		$SlotTemp = $SlotLightningSpell
		If $debugsetlogTrain = 1 Then SetLog("$SlotTemp :" & $SlotTemp)
		If _Sleep(250) Then Return
		If _ColorCheck(_GetPixelColor(168 + (62 * $SlotTemp), 481 + $midOffsetY, True), Hex(0xD50103, 6), 15) Then ; Verify if existe the RED [-] button
			Click(168 + (62 * $SlotTemp), 481 + $midOffsetY, $Delete, 300)
			SetLog("~Deleted " & $Delete & " Lightning Spell", $COLOR_RED)
			$CurLightningSpell = $CurLightningSpell - $Delete ; Remove From $CurTroop the deleted Troop quantity
		EndIf
	EndIf

	If $CurHealSpell > 0 Then
		If $WarPrep = 1 Then
			$Delete = $CurHealSpell - $iHealSpellWar
			If $Delete < 0 Then
				$Delete = 0
			EndIf
		Else
			$Delete = $CurHealSpell ; Delete all Troops
		EndIf
		If $debugsetlogTrain = 1 Then SetLog("$Delete :" & $Delete)
		$SlotTemp = $SlotHealSpell
		If $debugsetlogTrain = 1 Then SetLog("$SlotTemp :" & $SlotTemp)
		If _Sleep(250) Then Return
		If _ColorCheck(_GetPixelColor(168 + (62 * $SlotTemp), 481 + $midOffsetY, True), Hex(0xD50103, 6), 15) Then ; Verify if existe the RED [-] button
			Click(168 + (62 * $SlotTemp), 481 + $midOffsetY, $Delete, 300)
			SetLog("~Deleted " & $Delete & " Heal Spell", $COLOR_RED)
			$CurHealSpell = $CurHealSpell - $Delete ; Remove From $CurTroop the deleted Troop quantity
		EndIf
	EndIf

	If $CurRageSpell > 0 Then
		If $WarPrep = 1 Then
			$Delete = $CurRageSpell - $iRageSpellWar
			If $Delete < 0 Then
				$Delete = 0
			EndIf
		Else
			$Delete = $CurRageSpell ; Delete all Troops
		EndIf
		If $debugsetlogTrain = 1 Then SetLog("$Delete :" & $Delete)
		$SlotTemp = $SlotRageSpell
		If $debugsetlogTrain = 1 Then SetLog("$SlotTemp :" & $SlotTemp)
		If _Sleep(250) Then Return
		If _ColorCheck(_GetPixelColor(168 + (62 * $SlotTemp), 481 + $midOffsetY, True), Hex(0xD50103, 6), 10) Then ; Verify if existe the RED [-] button
			Click(168 + (62 * $SlotTemp), 481 + $midOffsetY, $Delete, 300)
			SetLog("~Deleted " & $Delete & " Rage Spell", $COLOR_RED)
			$CurRageSpell = $CurRageSpell - $Delete ; Remove From $CurTroop the deleted Troop quantity
		EndIf
	EndIf

	If $CurJumpSpell > 0 Then
		If $WarPrep = 1 Then
			$Delete = $CurJumpSpell - $iJumpSpellWar
			If $Delete < 0 Then
				$Delete = 0
			EndIf
		Else
			$Delete = $CurJumpSpell ; Delete all Troops
		EndIf
		If $debugsetlogTrain = 1 Then SetLog("$Delete :" & $Delete)
		$SlotTemp = $SlotJumpSpell
		If $debugsetlogTrain = 1 Then SetLog("$SlotTemp :" & $SlotTemp)
		If _Sleep(250) Then Return
		If _ColorCheck(_GetPixelColor(168 + (62 * $SlotTemp), 481 + $midOffsetY, True), Hex(0xD50103, 6), 10) Then ; Verify if existe the RED [-] button
			Click(168 + (62 * $SlotTemp), 481 + $midOffsetY, $Delete, 300)
			SetLog("~Deleted " & $Delete & " Jump Spell", $COLOR_RED)
			$CurJumpSpell = $CurJumpSpell - $Delete ; Remove From $CurTroop the deleted Troop quantity
		EndIf
	EndIf

	If $CurFreezeSpell > 0 Then
		If $WarPrep = 1 Then
			$Delete = $CurFreezeSpell - $iFreezeSpellWar
			If $Delete < 0 Then
				$Delete = 0
			EndIf
		Else
			$Delete = $CurFreezeSpell ; Delete all Troops
		EndIf
		If $debugsetlogTrain = 1 Then SetLog("$Delete :" & $Delete)
		$SlotTemp = $SlotFreezeSpell
		If $debugsetlogTrain = 1 Then SetLog("$SlotTemp :" & $SlotTemp)
		If _Sleep(250) Then Return
		If _ColorCheck(_GetPixelColor(168 + (62 * $SlotTemp), 481 + $midOffsetY, True), Hex(0xD50103, 6), 10) Then ; Verify if existe the RED [-] button
			Click(168 + (62 * $SlotTemp), 481 + $midOffsetY, $Delete, 300)
			SetLog("~Deleted " & $Delete & " Freeze Spell", $COLOR_RED)
			$CurFreezeSpell = $CurFreezeSpell - $Delete ; Remove From $CurTroop the deleted Troop quantity
		EndIf
	EndIf

	If $CurCloneSpell > 0 Then
		If $WarPrep = 1 Then
			$Delete = $CurCloneSpell - $iCloneSpellWar
			If $Delete < 0 Then
				$Delete = 0
			EndIf
		Else
			$Delete = $CurCloneSpell ; Delete all Troops
		EndIf
		If $debugsetlogTrain = 1 Then SetLog("$Delete :" & $Delete)
		$SlotTemp = $SlotCloneSpell
		If $debugsetlogTrain = 1 Then SetLog("$SlotTemp :" & $SlotTemp)
		If _Sleep(250) Then Return
		If _ColorCheck(_GetPixelColor(168 + (62 * $SlotTemp), 481 + $midOffsetY, True), Hex(0xD50103, 6), 10) Then ; Verify if existe the RED [-] button
			Click(168 + (62 * $SlotTemp), 481 + $midOffsetY, $Delete, 300)
			SetLog("~Deleted " & $Delete & " Clone Spell", $COLOR_RED)
			$CurCloneSpell = $CurCloneSpell - $Delete ; Remove From $CurTroop the deleted Troop quantity
		EndIf
	EndIf

	If $CurPoisonSpell > 0 Then
		If $WarPrep = 1 Then
			$Delete = $CurPoisonSpell - $iPoisonSpellWar
			If $Delete < 0 Then
				$Delete = 0
			EndIf
		Else
			$Delete = $CurPoisonSpell ; Delete all Troops
		EndIf
		If $debugsetlogTrain = 1 Then SetLog("$Delete :" & $Delete)
		$SlotTemp = $SlotPoisonSpell
		If $debugsetlogTrain = 1 Then SetLog("$SlotTemp :" & $SlotTemp)
		If _Sleep(250) Then Return
		If _ColorCheck(_GetPixelColor(168 + (62 * $SlotTemp), 481 + $midOffsetY, True), Hex(0xD50103, 6), 10) Then ; Verify if existe the RED [-] button
			Click(168 + (62 * $SlotTemp), 481 + $midOffsetY, $Delete, 300)
			SetLog("~Deleted " & $Delete & " Poison Spell", $COLOR_RED)
			$CurPoisonSpell = $CurPoisonSpell - $Delete ; Remove From $CurTroop the deleted Troop quantity
		EndIf
	EndIf

	If $CurHasteSpell > 0 Then
		If $WarPrep = 1 Then
			$Delete = $CurHasteSpell - $iHasteSpellWar
			If $Delete < 0 Then
				$Delete = 0
			EndIf
		Else
			$Delete = $CurHasteSpell ; Delete all Troops
		EndIf
		If $debugsetlogTrain = 1 Then SetLog("$Delete :" & $Delete)
		$SlotTemp = $SlotHasteSpell
		If $debugsetlogTrain = 1 Then SetLog("$SlotTemp :" & $SlotTemp)
		If _Sleep(250) Then Return
		If _ColorCheck(_GetPixelColor(168 + (62 * $SlotTemp), 481 + $midOffsetY, True), Hex(0xD50103, 6), 10) Then ; Verify if existe the RED [-] button
			Click(168 + (62 * $SlotTemp), 481 + $midOffsetY, $Delete, 300)
			SetLog("~Deleted " & $Delete & " Haste Spell", $COLOR_RED)
			$CurHasteSpell = $CurHasteSpell - $Delete ; Remove From $CurTroop the deleted Troop quantity
		EndIf
	EndIf

	If $CurEarthSpell > 0 Then
		If $WarPrep = 1 Then
			$Delete = $CurEarthSpell - $iEarthSpellWar
			If $Delete < 0 Then
				$Delete = 0
			EndIf
		Else
			$Delete = $CurEarthSpell ; Delete all Troops
		EndIf
		If $debugsetlogTrain = 1 Then SetLog("$Delete :" & $Delete)
		$SlotTemp = $SlotEarthSpell
		If $debugsetlogTrain = 1 Then SetLog("$SlotTemp :" & $SlotTemp)
		If _Sleep(250) Then Return
		If _ColorCheck(_GetPixelColor(168 + (62 * $SlotTemp), 481 + $midOffsetY, True), Hex(0xD50103, 6), 10) Then ; Verify if existe the RED [-] button
			Click(168 + (62 * $SlotTemp), 481 + $midOffsetY, $Delete, 300)
			SetLog("~Deleted " & $Delete & " Earthquake Spell", $COLOR_RED)
			$CurEarthSpell = $CurEarthSpell - $Delete ; Remove From $CurTroop the deleted Troop quantity
		EndIf
	EndIf

	If $CurSkeletonSpell > 0 Then
		If $WarPrep = 1 Then
			$Delete = $CurSkeletonSpell - $iSkeletonSpellWar
			If $Delete < 0 Then
				$Delete = 0
			EndIf
		Else
			$Delete = $CurSkeletonSpell ; Delete all Troops
		EndIf
		If $debugsetlogTrain = 1 Then SetLog("$Delete :" & $Delete)
		$SlotTemp = $SlotSkeletonSpell
		If $debugsetlogTrain = 1 Then SetLog("$SlotTemp :" & $SlotTemp)
		If _Sleep(250) Then Return
		If _ColorCheck(_GetPixelColor(168 + (62 * $SlotTemp), 481 + $midOffsetY, True), Hex(0xD50103, 6), 10) Then ; Verify if existe the RED [-] button
			Click(168 + (62 * $SlotTemp), 481 + $midOffsetY, $Delete, 300)
			SetLog("~Deleted " & $Delete & " Skeleton Spell", $COLOR_RED)
			$CurSkeletonSpell = $CurSkeletonSpell - $Delete ; Remove From $CurTroop the deleted Troop quantity
		EndIf
	EndIf
EndFunc   ;==>EmptySpells
