; #FUNCTION# ====================================================================================================================
; Name ..........: MBR GUI Control Variables
; Description ...: This file Includes several files in the current script and all Declared variables, constant, or create an array.
; Syntax ........: #include , Global
; Parameters ....: $action_groupe, $group_de_controle
; Return values .: None
; Author ........: Boju(2016)
; Modified ......:
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015-2016
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......:
; Link ..........: https://github.com/MyBotRun/MyBot/wiki
; Example .......: No
; ===============================================================================================================================
;Search

;Global $Style_GUI

Global $groupSearchDB = $grpDBFilter&"#"&$cmbDBMeetGE&"#"&$txtDBMinGold&"#"&$picDBMinGold&"#"&$txtDBMinElixir&"#"&$picDBMinElixir&"#"&$txtDBMinGoldPlusElixir&"#"&$picDBMinGPEGold&"#"&$chkDBMeetDE&"#"&$txtDBMinDarkElixir&"#"& _
	$picDBMinDarkElixir&"#"&$chkDBMeetTrophy&"#"&$txtDBMinTrophy&"#"&$picDBMinTrophies&"#"&$chkDBMeetTH&"#"&$cmbDBTH&"#"&$picDBMaxTH10&"#"&$chkDBMeetTHO&"#"&$chkDBMeetOne&"#"&$chkMaxMortar[$DB]&"#"&$cmbWeakMortar[$DB]&"#"& _
	$picDBWeakMortar&"#"&$chkMaxWizTower[$DB]&"#"&$cmbWeakWizTower[$DB]&"#"&$picDBWeakWizTower&"#"&$chkMaxXBow[$DB]&"#"&$cmbWeakXBow[$DB]&"#"&$picDBWeakXbow&"#"&$chkMaxInferno[$DB]&"#"&$cmbWeakInferno[$DB]&"#"&$picDBWeakInferno&"#"&$chkMaxEagle[$DB]&"#"&$cmbWeakEagle[$DB]&"#"&$picDBWeakEagle
Global $groupHerosDB=$picDBHeroesWait&"#"&$txtDBHeroesWait&"#"&$chkDBKingWait&"#"&$chkDBQueenWait&"#"&$chkDBWardenWait&"#"&$IMGchkDBKingWait&"#"&$IMGchkDBQueenWait&"#"&$IMGchkDBWardenWait

Global $groupSearchAB=$grpABFilter&"#"&$cmbABMeetGE&"#"&$txtABMinGold&"#"&$picABMinGold&"#"&$txtABMinElixir&"#"&$picABMinElixir&"#"&$txtABMinGoldPlusElixir&"#"&$picABMinGPEGold&"#"&$chkABMeetDE&"#"&$txtABMinDarkElixir&"#"& _
	$picABMinDarkElixir&"#"&$chkABMeetTrophy&"#"&$txtABMinTrophy&"#"&$picABMinTrophies&"#"&$chkABMeetTH&"#"&$cmbABTH&"#"&$picABMaxTH10&"#"&$chkABMeetTHO&"#"&$chkABMeetOne&"#"&$chkMaxMortar[$LB]&"#"&$cmbWeakMortar[$LB]&"#"& _
	$picABWeakMortar&"#"&$chkMaxWizTower[$LB]&"#"&$cmbWeakWizTower[$LB]&"#"&$picABWeakWizTower&"#"&$chkMaxXBow[$LB]&"#"&$cmbWeakXBow[$LB]&"#"&$picABWeakXbow&"#"&$chkMaxInferno[$LB]&"#"&$cmbWeakInferno[$LB]&"#"&$picABWeakInferno&"#"&$chkMaxEagle[$LB]&"#"&$cmbWeakEagle[$LB]&"#"&$picABWeakEagle
Global $groupHerosAB=$picABHeroesWait&"#"&$txtABHeroesWait&"#"&$chkABKingWait&"#"&$chkABQueenWait&"#"&$chkABWardenWait&"#"&$IMGchkABKingWait&"#"&$IMGchkABQueenWait&"#"&$IMGchkABWardenWait

Global $groupSpellsDB=$chkDBSpellsWait&"#"&$IMGchkDBLightSpellWait&"#"&$IMGchkDBHealSpellWait&"#"&$IMGchkDBRageSpellWait&"#"&$IMGchkDBJumpSpellWait&"#"&$IMGchkDBFreezeSpellWait&"#"&$IMGchkDBPoisonSpellWait&"#"&$IMGchkDBEarthquakeSpellWait&"#"&$IMGchkDBHasteSpellWait
Global $groupSpellsAB=$chkABSpellsWait&"#"&$IMGchkABLightSpellWait&"#"&$IMGchkABHealSpellWait&"#"&$IMGchkABRageSpellWait&"#"&$IMGchkABJumpSpellWait&"#"&$IMGchkABFreezeSpellWait&"#"&$IMGchkABPoisonSpellWait&"#"&$IMGchkABEarthquakeSpellWait&"#"&$IMGchkABHasteSpellWait

Global $groupSearchTS=$grpTSFilter&"#"&$cmbTSMeetGE&"#"&$txtTSMinGold&"#"&$picTSMinGold&"#"&$txtTSMinElixir&"#"&$picTSMinElixir&"#"&$txtTSMinGoldPlusElixir&"#"&$picTSMinGPEGold&"#"&$chkTSMeetDE&"#"&$txtTSMinDarkElixir&"#"&$picTSMinDarkElixir&"#"&$lblAddTiles&"#"&$lblAddTiles2&"#"&$lblSWTTiles&"#"&$txtSWTTiles&"#"&$lblTHadd&"#"&$txtTHaddtiles

;Attack
;Global $groupAttackDB=$lblDBTitle&"#"&$lblDBAlgorithm&"#"&$cmbDBAlgorithm&"#"&$lblDBSelectTroop&"#"&$cmbDBSelectTroop&"#"&$lblDBSelectSpecialTroop&"#"&$chkDBKingAttack&"#"&$chkDBQueenAttack&"#"&$chkDBWardenAttack&"#"&$chkDBDropCC&"#"&$chkDBLightSpell&"#"&$chkDBHealSpell&"#"&$chkDBRageSpell&"#"&$chkDBJumpSpell&"#"&$chkDBFreezeSpell&"#"&$chkDBPoisonSpell&"#"&$chkDBEarthquakeSpell&"#"&$chkDBHasteSpell
Global $groupAttackDB=$lblDBAlgorithm&"#"&$cmbDBAlgorithm&"#"&$lblDBSelectTroop&"#"&$cmbDBSelectTroop&"#"&$lblDBSelectSpecialTroop&"#"&$chkDBKingAttack&"#"&$chkDBQueenAttack&"#"&$chkDBWardenAttack&"#"&$chkDBDropCC&"#"&$chkDBLightSpell&"#"&$chkDBHealSpell&"#"&$chkDBRageSpell&"#"&$chkDBJumpSpell&"#"&$chkDBFreezeSpell&"#"&$chkDBPoisonSpell&"#"&$chkDBEarthquakeSpell&"#"&$chkDBHasteSpell
Global $groupAttackDBSpell=$chkDBLightSpell&"#"&$chkDBHealSpell&"#"&$chkDBRageSpell&"#"&$chkDBJumpSpell&"#"&$chkDBFreezeSpell&"#"&$chkDBPoisonSpell&"#"&$chkDBEarthquakeSpell&"#"&$chkDBHasteSpell
Global $groupIMGAttackDB=$IMGchkDBKingAttack&"#"&$IMGchkDBQueenAttack&"#"&$IMGchkDBWardenAttack&"#"&$IMGchkDBDropCC&"#"&$IMGchkDBLightSpell&"#"&$IMGchkDBHealSpell&"#"&$IMGchkDBRageSpell&"#"&$IMGchkDBJumpSpell&"#"&$IMGchkDBFreezeSpell&"#"&$IMGchkDBPoisonSpell&"#"&$IMGchkDBEarthquakeSpell&"#"&$IMGchkDBHasteSpell
Global $groupIMGAttackDBSpell=$IMGchkDBLightSpell&"#"&$IMGchkDBHealSpell&"#"&$IMGchkDBRageSpell&"#"&$IMGchkDBJumpSpell&"#"&$IMGchkDBFreezeSpell&"#"&$IMGchkDBPoisonSpell&"#"&$IMGchkDBEarthquakeSpell&"#"&$IMGchkDBHasteSpell

Global $groupAttackAB=$lblABAlgorithm&"#"&$cmbABAlgorithm&"#"&$lblABSelectTroop&"#"&$cmbABSelectTroop&"#"&$lblABSelectSpecialTroop&"#"&$chkABKingAttack&"#"&$chkABQueenAttack&"#"&$chkABWardenAttack&"#"&$chkABDropCC&"#"&$chkABLightSpell&"#"&$chkABHealSpell&"#"&$chkABRageSpell&"#"&$chkABJumpSpell&"#"&$chkABFreezeSpell&"#"&$chkABPoisonSpell&"#"&$chkABEarthquakeSpell&"#"&$chkABHasteSpell
Global $groupAttackABSpell=$chkABLightSpell&"#"&$chkABHealSpell&"#"&$chkABRageSpell&"#"&$chkABJumpSpell&"#"&$chkABFreezeSpell&"#"&$chkABPoisonSpell&"#"&$chkABEarthquakeSpell&"#"&$chkABHasteSpell
Global $groupIMGAttackAB=$IMGchkABKingAttack&"#"&$IMGchkABQueenAttack&"#"&$IMGchkABWardenAttack&"#"&$IMGchkABDropCC&"#"&$IMGchkABLightSpell&"#"&$IMGchkABHealSpell&"#"&$IMGchkABRageSpell&"#"&$IMGchkABJumpSpell&"#"&$IMGchkABFreezeSpell&"#"&$IMGchkABPoisonSpell&"#"&$IMGchkABEarthquakeSpell&"#"&$IMGchkABHasteSpell
Global $groupIMGAttackABSpell=$IMGchkABLightSpell&"#"&$IMGchkABHealSpell&"#"&$IMGchkABRageSpell&"#"&$IMGchkABJumpSpell&"#"&$IMGchkABFreezeSpell&"#"&$IMGchkABPoisonSpell&"#"&$IMGchkABEarthquakeSpell&"#"&$IMGchkABHasteSpell

Global $groupAttackTS=$grpABAttack&"#"&$lblAttackTHType&"#"&$cmbAttackTHType&"#"&$lblTSSelectTroop&"#"&$cmbTSSelectTroop&"#"&$lblTSSelectSpecialTroop&"#"&$chkTSKingAttack&"#"&$chkTSQueenAttack&"#"&$chkTSWardenAttack&"#"&$chkTSDropCC&"#"&$chkTSLightSpell&"#"&$chkTSHealSpell&"#"&$chkTSRageSpell&"#"&$chkTSJumpSpell&"#"&$chkTSFreezeSpell&"#"&$chkTSPoisonSpell&"#"&$chkTSEarthquakeSpell&"#"&$chkTSHasteSpell
Global $groupAttackTSSpell=$chkTSLightSpell&"#"&$chkTSHealSpell&"#"&$chkTSRageSpell&"#"&$chkTSJumpSpell&"#"&$chkTSFreezeSpell&"#"&$chkTSPoisonSpell&"#"&$chkTSEarthquakeSpell&"#"&$chkTSHasteSpell
Global $groupIMGAttackTS=$IMGchkTSKingAttack&"#"&$IMGchkTSQueenAttack&"#"&$IMGchkTSWardenAttack&"#"&$IMGchkTSDropCC&"#"&$IMGchkTSLightSpell&"#"&$IMGchkTSHealSpell&"#"&$IMGchkTSRageSpell&"#"&$IMGchkTSJumpSpell&"#"&$IMGchkTSFreezeSpell&"#"&$IMGchkTSPoisonSpell&"#"&$IMGchkTSEarthquakeSpell&"#"&$IMGchkTSHasteSpell
Global $groupIMGAttackTSSpell=$IMGchkTSLightSpell&"#"&$IMGchkTSHealSpell&"#"&$IMGchkTSRageSpell&"#"&$IMGchkTSJumpSpell&"#"&$IMGchkTSFreezeSpell&"#"&$IMGchkTSPoisonSpell&"#"&$IMGchkTSEarthquakeSpell&"#"&$IMGchkTSHasteSpell


;Global $groupHerosTS=$chkTSKingWait&"#"&$chkTSQueenWait&"#"&$chkTSWardenWait&"#"&$IMGchkTSKingWait&"#"&$IMGchkTSQueenWait&"#"&$IMGchkTSWardenWait
;End Battle
Global $groupEndBattkeDB=$grpDBEndBattle&"#"&$chkDBTimeStopAtk&"#"&$lblDBTimeStopAtka&"#"&$txtDBTimeStopAtk&"#"&$lblDBTimeStopAtk&"#"&$chkDBTimeStopAtk2&"#"&$chkDBTimeStopAtk2&"#"&$lblDBTimeStopAtk2a&"#"&$txtDBTimeStopAtk2&"#"&$lblDBTimeStopAtk2&"#"&$lblDBMinRerourcesAtk2&"#"&$txtDBMinGoldStopAtk2&"#"&$picDBMinGoldStopAtk2&"#"&$txtDBMinElixirStopAtk2&"#"&$picDBMinElixirStopAtk2&"#"&$txtDBMinDarkElixirStopAtk2&"#"&$picDBMinDarkElixirStopAtk2&"#"&$chkDBEndNoResources&"#"&$chkDBEndOneStar&"#"&$chkDBEndTwoStars
Global $groupEndBattkeAB=$grpABEndBattle&"#"&$chkABTimeStopAtk&"#"&$lblABTimeStopAtka&"#"&$txtABTimeStopAtk&"#"&$lblABTimeStopAtk&"#"&$chkABTimeStopAtk2&"#"&$chkABTimeStopAtk2&"#"&$lblABTimeStopAtk2a&"#"&$txtABTimeStopAtk2&"#"&$lblABTimeStopAtk2&"#"&$lblABMinRerourcesAtk2&"#"&$txtABMinGoldStopAtk2&"#"&$picABMinGoldStopAtk2&"#"&$txtABMinElixirStopAtk2&"#"&$picABMinElixirStopAtk2&"#"&$txtABMinDarkElixirStopAtk2&"#"&$picABMinDarkElixirStopAtk2&"#"&$chkABEndNoResources&"#"&$chkABEndOneStar&"#"&$chkABEndTwoStars
;Global $groupEndBattkeTS=$grpTSEndBattle&"#"&$chkTSTimeStopAtk&"#"&$lblTSTimeStopAtka&"#"&$txtTSTimeStopAtk&"#"&$lblTSTimeStopAtk&"#"&$chkTSTimeStopAtk2&"#"&$chkTSTimeStopAtk2&"#"&$lblTSTimeStopAtk2a&"#"&$txtTSTimeStopAtk2&"#"&$lblTSTimeStopAtk2&"#"&$lblTSMinRerourcesAtk2&"#"&$txtTSMinGoldStopAtk2&"#"&$picTSMinGoldStopAtk2&"#"&$txtTSMinElixirStopAtk2&"#"&$picTSMinElixirStopAtk2&"#"&$txtTSMinDarkElixirStopAtk2&"#"&$picTSMinDarkElixirStopAtk2&"#"&$chkTSEndNoResources&"#"&$chkTSEndOneStar&"#"&$chkTSEndTwoStars

Global $groupKingSleeping=$IMGchkDBKingSleepWait&"#"&$IMGchkABKingSleepWait&"#"&$IMGchkKingSleepWait
Global $groupQueenSleeping=$IMGchkDBQueenSleepWait&"#"&$IMGchkABQueenSleepWait&"#"&$IMGchkQueenSleepWait
Global $groupWardenSleeping=$IMGchkDBWardenSleepWait&"#"&$IMGchkABWardenSleepWait&"#"&$IMGchkWardenSleepWait

;Troops Dark
Global $groupTroopsDark=$icnMini&"#"&$icnHogs&"#"&$icnValk&"#"&$icnGole&"#"&$icnWitc&"#"&$icnLava&"#"&$icnBowl

;Troops 1
Global $groupTroops1=$grpTroops&"#"&$txtNumBarb&"#"&$txtNumArch&"#"&$txtNumGobl&"#"&$icnBarb&"#"&$icnArch&"#"&$icnGobl&"#"&$lblTotalCount&"#"&$lblTotalTroops&"#"&$lblPercentTotal
Global $groupTroops3=$grpTroops&"#"&$txtWarBarb&"#"&$txtWarArch&"#"&$txtWarGobl&"#"&$icnBarb&"#"&$icnArch&"#"&$icnGobl&"#"&$lblTotalCount&"#"&$lblTotalTroops&"#"&$lblPercentTotal

Global $groupTroopsBarb=$grpTroops&"#"&$txtNumBarb&"#"&$icnBarb
Global $groupTroopsArch=$grpTroops&"#"&$txtNumArch&"#"&$icnArch
Global $groupTroopsGobl=$grpTroops&"#"&$txtNumGobl&"#"&$icnGobl
Global $groupTroopsGiant=$grpTroops&"#"&$txtNumGiant&"#"&$icnGiant
Global $groupTroopsWall=$grpTroops&"#"&$txtNumWall&"#"&$icnWall
Global $groupTroopsTot=$lblTotalCount&"#"&$lblTotalTroops&"#"&$lblPercentTotal
;Troops 2
Global $groupTroops2=$grpTroops&"#"&$txtNumGiant&"#"&$txtNumWall&"#"&$txtNumWiza&"#"&$txtNumHeal&"#"&$txtNumBall&"#"&$txtNumDrag&"#"&$txtNumPekk&"#"&$txtNumBabyD&"#"&$txtNumMine &"#"&$icnGiant&"#"&$icnWall&"#"&$icnWiza&"#"&$icnHeal&"#"&$icnBall&"#"&$icnDrag&"#"&$icnPekk&"#"&$icnBabyD&"#"&$icnMine
Global $groupTroops4=$grpTroops&"#"&$txtWarGiant&"#"&$txtWarWall&"#"&$txtWarWiza&"#"&$txtWarHeal&"#"&$txtWarBall&"#"&$txtWarDrag&"#"&$txtWarPekk&"#"&$txtWarBabyD&"#"&$txtWarMine &"#"&$icnGiant&"#"&$icnWall&"#"&$icnWiza&"#"&$icnHeal&"#"&$icnBall&"#"&$icnDrag&"#"&$icnPekk&"#"&$icnBabyD&"#"&$icnMine

;Spell Army Training
Global $groupTxtSpeels=$txtNumLightningSpell&"#"&$txtNumHealSpell&"#"&$txtNumRageSpell&"#"&$txtNumJumpSpell&"#"&$txtNumFreezeSpell&"#"&$txtNumPoisonSpell&"#"&$txtNumEarthSpell&"#"&$txtNumHasteSpell
Global $groupCloseWaitTrain=$chkCloseWaitTrain&"#"&$btnCloseWaitStop&"#"&$picCloseWaitTrain&"#"&$btnCloseWaitStopRandom&"#"&$picCloseWaitStop&"#"&$btnCloseWaitExact&"#"&$picCloseWaitExact&"#"&$btnCloseWaitRandom&"#"&$cmbCloseWaitRdmPercent&"#"&$lblCloseWaitRdmPercent

;Spell
Global $groupLightning =$lblLightningIcon&"#"&$txtNumLightningSpell
Global $groupHeal =$lblHealIcon&"#"&$txtNumHealSpell
Global $groupRage =$lblRageIcon&"#"&$txtNumRageSpell
Global $groupJumpSpell =$lblJumpSpellIcon&"#"&$txtNumJumpSpell
Global $groupFreeze =$lblFreezeIcon&"#"&$txtNumFreezeSpell
Global $groupClone = $lblCloneIcon&"#"&$txtNumCloneSpell

;SpellWar
Global $groupWarLightning =$lblLightningIcon&"#"&$txtWarLightningSpell
Global $groupWarHeal =$lblHealIcon&"#"&$txtWarHealSpell
Global $groupWarRage =$lblRageIcon&"#"&$txtWarRageSpell
Global $groupWarJumpSpell =$lblJumpSpellIcon&"#"&$txtWarJumpSpell
Global $groupWarFreeze =$lblFreezeIcon&"#"&$txtWarFreezeSpell
Global $groupWarClone = $lblCloneIcon&"#"&$txtWarCloneSpell

;Dark Spell
Global $groupPoison =$lblPoisonIcon&"#"&$txtNumPoisonSpell
Global $groupEarthquake =$lblEarthquakeIcon&"#"&$txtNumEarthSpell
Global $groupHaste =$lblHasteIcon&"#"&$txtNumHasteSpell
Global $groupSkeleton =$lblSkeletonIcon&"#"&$txtNumSkeletonSpell

;Dark War Spell
Global $groupWarPoison =$lblPoisonIcon&"#"&$txtWarPoisonSpell
Global $groupWarEarthquake =$lblEarthquakeIcon&"#"&$txtWarEarthSpell
Global $groupWarHaste =$lblHasteIcon&"#"&$txtWarHasteSpell
Global $groupWarSkeleton =$lblSkeletonIcon&"#"&$txtWarSkeletonSpell

Global $groupListSpells=$groupLightning&"#"&$groupHeal&"#"&$groupRage&"#"&$groupJumpSpell&"#"&$groupFreeze&"#"&$groupClone&"#"&$groupPoison&"#"&$groupEarthquake&"#"&$groupHaste&"#"&$groupSkeleton
Global $groupListWarSpells=$groupWarLightning&"#"&$groupWarHeal&"#"&$groupWarRage&"#"&$groupWarJumpSpell&"#"&$groupWarFreeze&"#"&$groupWarClone&"#"&$groupWarPoison&"#"&$groupWarEarthquake&"#"&$groupWarHaste&"#"&$groupWarSkeleton

;TH Level
Global $groupListTHLevels=$THLevels04&"#"&$THLevels05&"#"&$THLevels06&"#"&$THLevels07&"#"&$THLevels08&"#"&$THLevels09&"#"&$THLevels10&"#"&$THLevels11

;League
Global $groupLeague=$UnrankedLeague&"#"&$BronzeLeague&"#"&$SilverLeague&"#"&$GoldLeague &"#"&$CrystalLeague&"#"&$MasterLeague&"#"&$ChampionLeague&"#"&$TitanLeague&"#"&$LegendLeague


