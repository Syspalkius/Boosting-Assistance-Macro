Global infopath := "Source_Code/Macro Parts/Main/GUI/info"

keyinfo()
{
    FileRead,text,%infopath%/keyinfo.txt
    popup(400,160,12,"command info",text)
}

startinfo()
{
    FileRead,text,%infopath%/startinfo.txt
    popup(400,120,12,"start alts info",text)
}

stopinfo()
{
    FileRead,text,%infopath%/stopinfo.txt
    popup(400,120,12,"stop alts info",text)
}

leftaligninfo()
{
    FileRead,text,%infopath%/leftaligninfo.txt
    popup(400,60,12,"left align info",text)
}

rightaligninfo()
{
    FileRead,text,%infopath%/rightaligninfo.txt
    popup(400,60,12,"right align info",text)
}

ButtonList()
{
    FileRead,text,%infopath%/Recommendedkeys.txt
    popup(400,310,12,"List",text)
}

