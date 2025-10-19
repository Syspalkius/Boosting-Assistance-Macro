menu,tray,icon,Source_Code\Macro Parts\General\logo.ico
Gui,color,0x2A2F32
Gui,Font,s17 Bold Underline
Gui,Add,Text, x107 cwhite ,Main Macro
Gui,Font,s10 Bold
Gui,Add,Link, x127 yp+30 ,<a href="https://discord.gg/t572FnTqfs">Join Discord</a>
Gui,Font,s10 norm Bold
global infocol := "53ede5"

IniRead,commandkey,%filepath%,commandkey,commandkey
Gui,Add,Text, x25 yp+40 cwhite,Command hotkey:
Gui,Add,Edit, xp+130 yp w100 h20 vcommandkey,%commandkey%

IniRead,startkey,%filepath%,commandkey,startkey
Gui,Add,Text, x25 yp+30 cwhite,Start alts hotkey:
Gui,Add,Edit, xp+130 yp w100 h20 vstartkey,%startkey%

IniRead,stopkey,%filepath%,commandkey,stopkey
Gui,Add,Text, x25 yp+30 cwhite,Stop alts hotkey:
Gui,Add,Edit, xp+130 yp w100 h20 vstopkey,%stopkey%

IniRead,leftalignkey,%filepath%,commandkey,leftalignkey
Gui,Add,Text, x25 yp+30 cwhite,Left align hotkey:
Gui,Add,Edit, xp+130 yp w100 h20 vleftalignkey,%leftalignkey%

IniRead,rightalignkey,%filepath%,commandkey,rightalignkey
Gui,Add,Text, x25 yp+30 cwhite,Right align hotkey:
Gui,Add,Edit, xp+130 yp w100 h20 vrightalignkey,%rightalignkey%

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

Gui,Font, s11 underline
Gui,Add,Text,y510 x15 c53ede5 gStart,START: F1
Gui,Add,Text,y510 x140 c53ede5 gstop,STOP: F2
Gui,Add,Text,y510 x255 c53ede5 gpausee,PAUSE: F3

Gui,Font, s11 norm bold
Gui,Add,Text,x270 y85 c%infocol% gkeyinfo,?
Gui,Add,Button,x300 y80,List
Gui,Add,Text,x270 y115 c%infocol% gstartinfo,?
Gui,Add,Text,x270 y145 c%infocol% gstopinfo,?
Gui,Add,Text,x270 y175 c%infocol% gleftaligninfo,?
Gui,Add,Text,x270 y205 c%infocol% grightaligninfo,?

Gui,Show, w350 h540,Syspalk's Boost macro %version%



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