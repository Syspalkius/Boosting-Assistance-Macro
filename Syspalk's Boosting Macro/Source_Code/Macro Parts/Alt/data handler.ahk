﻿global farmpattern
global patternsize
global sprinkalign
global plantalign
global usemicros
global toggle1, toggle2, toggle3
global timer1, timer2, timer3
global key1, key2, key3

global gumdropkey
global jbkey
global cloudkey
global commandgumdrop
global gumdroptime
global commandjb
global commandcloud
global cloudtime


Readdata()
{
    filepath := "Source_Code\Macro_Parts\Alt\data\data.ini"

    IniRead,farmpattern,%filepath%,regular,farmpattern
    IniRead,patternsize,%filepath%,regular,patternsize
    IniRead,sprinkleralign,%filepath%,regular,sprinkleralign
    IniRead,plantalign,%filepath%,regular,plantalign
    IniRead,usemicros,%filepath%,regular,usemicros
    IniRead,toggle1,%filepath%,regular,toggle1
    IniRead,toggle2,%filepath%,regular,toggle2
    IniRead,toggle3,%filepath%,regular,toggle3
    IniRead,timer1,%filepath%,regular,timer1
    IniRead,timer2,%filepath%,regular,timer2
    IniRead,timer3,%filepath%,regular,timer3
    IniRead,key1,%filepath%,regular,key1
    IniRead,key2,%filepath%,regular,key2
    IniRead,key3,%filepath%,regular,key3

    IniRead,gumdropkey,%filepath%,regular,gumdropkey
    IniRead,jbkey,%filepath%,regular,jbkey
    IniRead,cloudkey,%filepath%,regular,cloudkey
    IniRead,commandgumdrop,%filepath%,regular,commandgumdrop
    IniRead,gumdroptime,%filepath%,regular,gumdroptime
    IniRead,commandjb,%filepath%,regular,commandjb
    IniRead,commandcloud,%filepath%,regular,commandcloud
    IniRead,cloudtime,%filepath%,regular,cloudtime
}