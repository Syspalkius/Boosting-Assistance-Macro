global toggle1, toggle2, toggle3, toggle4, toggle5, toggle6, toggle7
global timer1, timer2, timer3, timer4, timer5, timer6, timer7
global key1, key2, key3, key4, key5, key6, key7
global commandkey, startkey, stopkey, leftalignkey, rightalignkey
global filepath := "Source_Code/Macro Parts/Main/data/data.ini"

savedata(){
	loop 7{
		GuiControlGet,toggle%A_Index%
		GuiControlGet,timer%A_Index%
		GuiControlGet,key%A_Index%
		toggle := toggle%A_Index%
		timer := timer%A_Index%
		key := key%A_Index%
		IniWrite,%toggle%,%filepath%,toggles,toggle%A_Index%
		IniWrite,%timer%,%filepath%,timers,timer%A_Index%
		IniWrite,%key%,%filepath%,keys,key%A_Index%
	}
    GuiControlGet,commandkey
	GuiControlGet,startkey
	GuiControlGet,stopkey
	GuiControlGet,leftalignkey
	GuiControlGet,rightalignkey
    IniWrite,%commandkey%,%filepath%,commandkey,commandkey
	IniWrite,%startkey%,%filepath%,commandkey,startkey
	IniWrite,%stopkey%,%filepath%,commandkey,stopkey
	IniWrite,%leftalignkey%,%filepath%,commandkey,leftalignkey
	IniWrite,%rightalignkey%,%filepath%,commandkey,rightalignkey
}