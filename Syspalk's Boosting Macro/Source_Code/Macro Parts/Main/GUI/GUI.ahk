﻿menu,tray,icon,Source_Code\Macro Parts\General\logo.ico
Gui,color,0x2A2F32
Gui,Font,s17 Bold Underline
Gui,Add,Text, x107 cwhite ,Main Macro
Gui,Font,s10 norm Bold
global infocol := "53ede5"

IniRead,commandkey,%filepath%,commandkey,commandkey
Gui,Add,Text, x25 yp+50 cwhite,Command hotkey:
Gui,Add,Edit, xp+130 yp w100 h20 vcommandkey,%commandkey%
Gui,Add,Groupbox,x25 yp+40 w300 h250 cwhite,Materials
loop 7{
    iniRead,timer,%filepath%,timers,timer%A_Index%
	IniRead,toggle,%filepath%,toggles,toggle%A_Index%
	IniRead,key,%filepath%,keys,key%A_Index%

    if (toggle = 1)
    {
        toggle := "Checked"
    }

	Gui, Add, Checkbox, x35 yp+34 cred %toggle% vtoggle%A_Index%,Hotbar slot %A_Index%
	Gui, Add,Edit,number xp+120 yp-3 w100 h20 vtimer%A_Index% ,%timer%
	Gui, Add,Edit,limit1 xp+120 yp w20 h20 vkey%A_Index% ,%key%
    toggle%A_Index%timer := 0
}
Gui,Add,Text,yp-205 xp-115 cblue,Delays (ms)    Hotkeys

Gui,Font, s11
Gui,Add,Text,y370 x15 cwhite,START: F1            STOP: F2            PAUSE: F3
Gui,Add,Text,x270 y65 c%infocol% gkeyinfo,?
Gui,Add,Button,x300 y60,List

Gui,Show, w350 h400,Syspalk's Boost macro %version%



popup(SizeX,SizeY,FontSize,Title,Text){
	Textloc := SizeX-20
	borderheight := SizeY + 7
	Gui, popup:Destroy
	Gui, popup:Add,groupbox,x0 y-7 w%SizeX% h%borderheight%
	Gui, popup:color,0x2A2F32
	Gui, popup:Font,s%FontSize%,Segoe UI
	Gui, popup:Add,Text, +wrap x10 y5 w%Textloc% cwhite,%Text%
	Gui, popup:Show, w%SizeX% h%SizeY%,%Title%
}