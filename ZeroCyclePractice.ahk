#NoEnv
SetWorkingDir %A_ScriptDir%

Seeds := ["9118501347249879928", "1494632126587127636", "-948152678592388736", "-6019937585072417708", "359683117781737573", "3371459828524886771"]
KeyDelay = 20 ; Increase if you don't receive items
EnterWorldDelay = 100; Use 1000 with chunkmod
ExitWorldDelay = 500

#IfWinActive, Minecraft
`::
	SetKeyDelay, 0
	ControlSend, ahk_parent, {Esc}{Tab 9}{Enter}, Minecraft* 1.16.1 - Singleplayer 
    Sleep, ExitWorldDelay

    Random, index, 1, % Seeds.MaxIndex()
    Send, {Tab}{Enter}
    Send, {Tab 3}{Enter}{Tab 2}{Enter 3}{Tab}{Enter}{Tab 3}{Enter}{Tab 3}
    Send, % Seeds[index]
    Send, {Enter}
	
	WinWait, Minecraft* 1.16.1 - Singleplayer
	WinActivate, Minecraft* 1.16.1 - Singleplayer
	Sleep, EnterWorldDelay

	Sleep, KeyDelay
	Send, /
	Sleep, KeyDelay + 50
	Send, give @p minecraft:white_bed{Enter}

	Sleep, KeyDelay
	Send, /
	Sleep, KeyDelay + 50
	Send, give @p minecraft:golden_pickaxe{Enter}

	Sleep, KeyDelay
	Send, /
	Sleep, KeyDelay + 50
	Send, give @p minecraft:water_bucket{Enter}

	Sleep, KeyDelay
	Send, /
	Sleep, KeyDelay + 50
	Send, give @p minecraft:cobblestone 64{Enter}

	Sleep, KeyDelay
	Send, /
	Sleep, KeyDelay + 50
	Send, give @p minecraft:bread 64{Enter}

	Sleep, KeyDelay
	Send, /
	Sleep, KeyDelay + 50
	Send, give @p minecraft:crying_obsidian 64{Enter}

	Sleep, KeyDelay
	Send, /
	Sleep, KeyDelay + 50
	Send, give @p minecraft:oak_boat{Enter}

	Sleep, KeyDelay
	Send, /
	Sleep, KeyDelay + 50
	Send, give @p minecraft:ender_eye 64{Enter}

	Sleep, KeyDelay
	Send, /
	Sleep, KeyDelay + 50
	Send, give @p minecraft:ender_pearl 16{Enter}

	Sleep, KeyDelay
	Send, /
	Sleep, KeyDelay + 50
	Send, give @p minecraft:white_bed 15{Enter}

	Sleep, KeyDelay
	Send, /
	Sleep, KeyDelay + 50
	Send, setblock ~ ~ ~ minecraft:end_portal{Enter}

	Sleep, 200
	send {Esc}{=}
	
    return	
