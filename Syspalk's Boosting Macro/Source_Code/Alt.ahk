﻿#SingleInstance Force
SetBatchLines, -1
SetDefaultMouseSpeed, 3
ListLines Off
Fileread,version,Source_Code\Macro Parts\General\version.txt
#Include Source_Code/Macro parts/Alt/data handler.ahk
ReadData()
#Include Source_Code/Macro parts/Alt/GUI/Buttons.ahk
#Include Source_Code/Macro Parts/Alt/GUI/GUI.ahk
#Include Source_Code/Macro Parts/Alt/functions.ahk
#Include Source_Code/Macro Parts/Alt/patterns.ahk
#Include Source_Code/Macro Parts/Alt/timers.ahk
createshortcut()

loop
{
    GuiControlGet,allowcommands,,allowcommands
    if (allowcommands)
    {
        if (checkstartcommand() = true)
        {
            Goto,start
        }

        if (checkstopcommand() = true)
        {
            Reload
        }
    }
    sleep 1000
}

F1::
start:
StartTimers()
ReleaseAllKeys()
while (1)
{
    pattern()
    align()
    checkbag()
    if (checkcommands() = true)
    {
        usecommandmats()
        if (commandgumdrop)
        {
            StartGumdropTimer()
            starttime := A_TickCount
            While(A_TickCount - starttime < 40000)
            {
                pattern()
                align()
                checkbag()
            }
            StopGumdropTimer()
        }
        chatflood()
    }
}

GuiClose:
SaveData()
ExitApp

F2::
stop:
SaveData()
Reload

F3::Pause
return

pausee:
Pause