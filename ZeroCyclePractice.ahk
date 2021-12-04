#NoEnv
SetWorkingDir %A_ScriptDir%

Seeds := ["9118501347249879928", "1494632126587127636", "-948152678592388736", "-6019937585072417708", "359683117781737573", "3371459828524886771"]


#IfWinActive, Minecraft
`::
    send {Esc}+{Tab}{Enter} 
    Sleep, 500

    Random, index, 1, % Seeds.MaxIndex()
    SetKeyDelay, 0
    Send, {Tab}{Enter}
    Send, {Tab}{Tab}{Tab}{Enter}{Tab}{Tab}{Enter}{Enter}{Enter}{Tab}{Enter}{Tab}{Tab}{Tab}{Enter}{Tab}{Tab}{Tab}
    Send, % Seeds[index]
    Send, {Enter}
	
	WinWait, Minecraft* 1.16.1 - Singleplayer
	Sleep, 100
	
	SetKeyDelay, 0

	Sleep, 50
	Send, C

	Sleep, 50
	Send, /
	Sleep, 100
	Send, give @p minecraft:white_bed{Enter}

	Sleep, 50
	Send, /
	Sleep, 100
	Send, give @p minecraft:golden_pickaxe{Enter}

	Sleep, 50
	Send, /
	Sleep, 100
	Send, give @p minecraft:water_bucket{Enter}

	Sleep, 50
	Send, /
	Sleep, 100
	Send, give @p minecraft:cobblestone 64{Enter}

	Sleep, 50
	Send, /
	Sleep, 100
	Send, give @p minecraft:bread 64{Enter}

	Sleep, 50
	Send, /
	Sleep, 100
	Send, give @p minecraft:crying_obsidian 64{Enter}

	Sleep, 50
	Send, /
	Sleep, 100
	Send, give @p minecraft:oak_boat{Enter}

	Sleep, 50
	Send, /
	Sleep, 100
	Send, give @p minecraft:ender_eye 64{Enter}

	Sleep, 50
	Send, /
	Sleep, 100
	Send, give @p minecraft:ender_pearl 16{Enter}

	Sleep, 50
	Send, /
	Sleep, 100
	Send, give @p minecraft:white_bed 15{Enter}

	Sleep, 50
	Send, /
	Sleep, 100
	Send, setblock ~ ~ ~ minecraft:end_portal{Enter}

	Sleep, 200
	send {Esc}{=}
	
    return	