; Marietta's Outland Tools v1.2b
Profile = Default
ProfileName = %Profile%.ini
ProfilePath := "Profiles\" . ProfileName ; path to the ini file
radio1Default := 0
radio2Default := 0

DdlSpells := "
(Ltrim Join|

Summons
Mushroom
Magic Arrow
Harm
Fireball
Lightning
Mana Drain
Curse
Energy Bolt
Mass Curse
Mana Vampire
)"

GuiSetup:
List := " "
ProfilePath2 := "Profiles" 
loop, Files, % ProfilePath2 "\*.*"
{
	SplitPath, A_LoopFileName,,,, FileName
	List .= FileName "|"
}
List := RTrim(List, "|")
List := StrReplace(List, "|", "||",, 1) 



IniRead, MyEdit, % ProfilePath, Profile, Character, %A_Space%
Transform, MyEdit, Deref, %MyEdit%
IniRead, Spelltimer1, % ProfilePath, Spells, Spelltimer1, %A_Space%
Transform, Spelltimer1, Deref, %Spelltimer1%
IniRead, Spelltimer2, % ProfilePath, Spells, Spelltimer2, %A_Space%
Transform, Spelltimer2, Deref, %Spelltimer2%
IniRead, Spelltimer3, % ProfilePath, Spells, Spelltimer3, %A_Space%
Transform, Spelltimer3, Deref, %Spelltimer3%
IniRead, Spelltimer4, % ProfilePath, Spells, Spelltimer4, %A_Space%
Transform, Spelltimer4, Deref, %Spelltimer4%
IniRead, Spelltimer5, % ProfilePath, Spells, Spelltimer5, %A_Space%
Transform, Spelltimer5, Deref, %Spelltimer5%
IniRead, Spelltimer6, % ProfilePath, Spells, Spelltimer6, %A_Space%
Transform, Spelltimer6, Deref, %Spelltimer6%
IniRead, Spelltimer7, % ProfilePath, Spells, Spelltimer7, %A_Space%
Transform, Spelltimer7, Deref, %Spelltimer7%
IniRead, Spelltimer8, % ProfilePath, Spells, Spelltimer8, %A_Space%
Transform, Spelltimer8, Deref, %Spelltimer8%
IniRead, Spelltimer9, % ProfilePath, Spells, Spelltimer9, %A_Space%
Transform, Spelltimer9, Deref, %Spelltimer9%
IniRead, Spelltimer10, % ProfilePath, Spells, Spelltimer10, %A_Space%
Transform, Spelltimer10, Deref, %Spelltimer10%


Gui, 1:Add, GroupBox, xm      ym+10  Section w175 h50 r1, Mode
IniRead, boolean, % ProfilePath, Mode, 1 ; load the current value of radio 1 
Gui, 1:Add, Radio,  xs+10  ys+20     vRad1 gSetState Checked%boolean%, Classic
IniRead, boolean, % ProfilePath, Mode, 2 ; load the current value of radio 2 
Gui, 1:Add, Radio   , xs+70  ys+20   vRad2 gSetState Checked%boolean%,  Modern
Gui, 1:Add, Text, xm+5 ym+55, Visibility
Gui, 1:Add, Slider, xn vVisibility  , 50
Gui, 1:Add, GroupBox, xm      ym+110  Section w375 h55 r7, Tracker
Gui, 1:Add, Text, xs+10 ys+15, 1
Gui, 1:Add, DropDownList, xs+25  ys+15 vSpellChoice1 w75, %DdlSpells%
IniRead, SpellChoice1a, % ProfilePath, Spells, Spell1
GuiControl, Choose, SpellChoice1, %SpellChoice1a%
IniRead, ChosenHotkey1, % ProfilePath, Hotkeys, Hotkey1, %A_Space%
Gui, 1:Add, Hotkey   , xs+110  ys+15 vChosenHotkey1 w45, %chosenHotkey1%
Gui, 1:Add, Text, xs+10 ys+40, 2
Gui, 1:Add, DropDownList, xp+15  yp vSpellChoice2 w75, %DdlSpells%
IniRead, SpellChoice2a, % ProfilePath, Spells, Spell2
GuiControl, Choose, SpellChoice2, %SpellChoice2a%
IniRead, ChosenHotkey2, % ProfilePath, Hotkeys, Hotkey2, %A_Space%
Gui, 1:Add, Hotkey   , xp+85  yp vChosenHotkey2 w45, %chosenHotkey2%
Gui, 1:Add, Text, xs+10 ys+65, 3
Gui, 1:Add, DropDownList, xp+15  yp vSpellChoice3 w75, %DdlSpells%
IniRead, SpellChoice3a, % ProfilePath, Spells, Spell3
GuiControl, Choose, SpellChoice3, %SpellChoice3a%
IniRead, ChosenHotkey3, % ProfilePath, Hotkeys, Hotkey3, %A_Space%
Gui, 1:Add, Hotkey   , xp+85  yp vChosenHotkey3 w45, %chosenHotkey3%
Gui, 1:Add, Text, xs+10 ys+90, 4
Gui, 1:Add, DropDownList, xp+15  yp vSpellChoice4 w75, %DdlSpells%
IniRead, SpellChoice4a, % ProfilePath, Spells, Spell4
GuiControl, Choose, SpellChoice4, %SpellChoice4a%
IniRead, ChosenHotkey4, % ProfilePath, Hotkeys, Hotkey4, %A_Space%
Gui, 1:Add, Hotkey   , xp+85  yp vChosenHotkey4 w45, %ChosenHotkey4%
Gui, 1:Add, Text, xs+10 ys+115, 5
Gui, 1:Add, DropDownList, xp+15  yp vSpellChoice5 w75, %DdlSpells%
IniRead, SpellChoice5a, % ProfilePath, Spells, Spell5
GuiControl, Choose, SpellChoice5, %SpellChoice5a%
IniRead, ChosenHotkey5, % ProfilePath, Hotkeys, Hotkey5, %A_Space%
Gui, 1:Add, Hotkey   , xp+85  yp vChosenHotkey5 w45, %ChosenHotkey5%
Gui, 1:Add, Text, xs+200 ys+15, 6
Gui, 1:Add, DropDownList, xp+15  yp vSpellChoice6 w75, %DdlSpells%
IniRead, SpellChoice6a, % ProfilePath, Spells, Spell6
GuiControl, Choose, SpellChoice6, %SpellChoice6a%
IniRead, ChosenHotkey6, % ProfilePath, Hotkeys, Hotkey6, %A_Space%
Gui, 1:Add, Hotkey   , xp+85  yp vChosenHotkey6 w45, %ChosenHotkey6%
Gui, 1:Add, Text, xs+200 ys+40, 7
Gui, 1:Add, DropDownList, xp+15  yp vSpellChoice7 w75, %DdlSpells%
IniRead, SpellChoice7a, % ProfilePath, Spells, Spell7
GuiControl, Choose, SpellChoice7, %SpellChoice7a%
IniRead, ChosenHotkey7, % ProfilePath, Hotkeys, Hotkey7, %A_Space%
Gui, 1:Add, Hotkey   , xp+85  yp vChosenHotkey7 w45, %ChosenHotkey7%
Gui, 1:Add, Text, xs+200 ys+65, 8
Gui, 1:Add, DropDownList, xp+15  yp vSpellChoice8 w75, %DdlSpells%
IniRead, SpellChoice8a, % ProfilePath, Spells, Spell8
GuiControl, Choose, SpellChoice8, %SpellChoice8a%
IniRead, ChosenHotkey8, % ProfilePath, Hotkeys, Hotkey8, %A_Space%
Gui, 1:Add, Hotkey   , xp+85  yp vChosenHotkey8 w45, %ChosenHotkey8%
Gui, 1:Add, Text, xs+200 ys+90, 9
Gui, 1:Add, DropDownList, xp+15  yp vSpellChoice9 w75, %DdlSpells%
IniRead, SpellChoice9a, % ProfilePath, Spells, Spell9
GuiControl, Choose, SpellChoice9, %SpellChoice9a%
IniRead, ChosenHotkey9, % ProfilePath, Hotkeys, Hotkey9, %A_Space%
Gui, 1:Add, Hotkey   , xp+85  yp vChosenHotkey9 w45, %ChosenHotkey9%
Gui, 1:Add, Text, xs+200 ys+115, 10
Gui, 1:Add, DropDownList, xp+15  yp vSpellChoice10 w75, %DdlSpells%
IniRead, SpellChoice10a, % ProfilePath, Spells, Spell10
GuiControl, Choose, SpellChoice10, %SpellChoice10a%
IniRead, ChosenHotkey10, % ProfilePath, Hotkeys, Hotkey10, %A_Space%
Gui, 1:Add, Hotkey   , xp+85  yp vChosenHotkey10 w45, %ChosenHotkey10%
Gui, 1:Add, Edit,xs+160 ys+15 w20 h20 vSpelltimer1, %Spelltimer1%
Gui, 1:Add, Edit,xp yp+25 w20 h20 vSpelltimer2, %Spelltimer2%
Gui, 1:Add, Edit,xp yp+25 w20 h20 vSpelltimer3, %Spelltimer3%
Gui, 1:Add, Edit,xp yp+25 w20 h20 vSpelltimer4, %Spelltimer4%
Gui, 1:Add, Edit,xp yp+25 w20 h20 vSpelltimer5, %Spelltimer5%
Gui, 1:Add, Edit,xs+350 ys+15 w20 h20 vSpelltimer6, %Spelltimer6%
Gui, 1:Add, Edit,xp yp+25 w20 h20 vSpelltimer7, %Spelltimer7%
Gui, 1:Add, Edit,xp yp+25 w20 h20 vSpelltimer8, %Spelltimer8%
Gui, 1:Add, Edit,xp yp+25 w20 h20 vSpelltimer9, %Spelltimer9%
Gui, 1:Add, Edit,xp yp+25 w20 h20 vSpelltimer10, %Spelltimer10%

Gui, 1:Add, GroupBox, xm+190      ym+10  Section w175 h50 r1, Character
Gui, 1:Add, Edit,xs+10 ys+15 w125 h15 vMyEdit, %MyEdit%
Gui, 1:Add, GroupBox, xm+190      ym+55  Section w175 h50 r2, Profile
Gui, 1:Add, DropDownList, xs+10  ys+15 vCharacter2 w125, % List
GuiControl, Choose, Character2, %Profile%
Gui, 1:Add, Button, Default xs+10 ys+35 w50 gGuiSave, Save 
Gui, 1:Add, Button, Default xs+85 ys+35 w50 gSetProfile, Load

Gui, 1:Add, GroupBox, x10      ym+270  Section w60 h50 r1, Start
Gui, 1:Add, Button, Default xp+5 ys+15 w50 gStart, Start
Gui, 1:Add, GroupBox, x100      ym+270  Section w75 h50 r1, Exit Hotkey
IniRead, ChosenHotkey11, % ProfilePath, Hotkeys, Hotkey11, %A_Space%
Gui, 1:Add, Hotkey   , xp+15  yp+15 vChosenHotkey11 w45, %ChosenHotkey11%

Gui, 1:Show,, Marietta's Outland Tools v2.1b
boolean := (boolean = 0)
return 

Start:
gui, Destroy
msgbox, Now Starting
gosub GUI2
return

SetState:
Gui, 1:Submit, NoHide
boolean := (Rad1 = 1)
return

SetDefaultState:
GuiControl, 1:, Rad1, 0 
GuiControl, 1:, Rad2, 1
return

SetProfile: 
GuiControlGet, Character2
MsgBox, %Character2%
  Profile = %Character2%
  ProfileName = %Profile%.ini
  ProfilePath := "Profiles\" . ProfileName
gui, Destroy
Arr := ""
gosub GuiSetup
return


GuiSave:
  GuiControlGet, MyEdit
  GuiControlGet, ChosenHotkey1
  GuiControlGet, ChosenHotkey2
  GuiControlGet, ChosenHotkey3
  GuiControlGet, ChosenHotkey4
  GuiControlGet, ChosenHotkey5
  GuiControlGet, ChosenHotkey6
  GuiControlGet, ChosenHotkey7
  GuiControlGet, ChosenHotkey8
  GuiControlGet, ChosenHotkey9
  GuiControlGet, ChosenHotkey10
  GuiControlGet, ChosenHotkey11
  GuiControlGet, SpellChoice1
  GuiControlGet, SpellChoice2
  GuiControlGet, SpellChoice3
  GuiControlGet, SpellChoice4
  GuiControlGet, SpellChoice5
  GuiControlGet, SpellChoice6
  GuiControlGet, SpellChoice7
  GuiControlGet, SpellChoice8
  GuiControlGet, SpellChoice9
  GuiControlGet, SpellChoice10
  GuiControlGet, Spelltimer1
  GuiControlGet, Spelltimer2
  GuiControlGet, Spelltimer3
  GuiControlGet, Spelltimer4
  GuiControlGet, Spelltimer5
  GuiControlGet, Spelltimer6
  GuiControlGet, Spelltimer7
  GuiControlGet, Spelltimer8
  GuiControlGet, Spelltimer9
  GuiControlGet, Spelltimer10



  Profile = %MyEdit%.ini
  ProfileName = %Profile%
  ProfilePath := "Profiles\" . ProfileName
  IniWrite, %MyEdit%, % ProfilePath, Profile, Character
  IniWrite, % boolean, % ProfilePath, Mode, 1
  IniWrite, % !boolean, % ProfilePath, Mode, 2
  Iniwrite, %ChosenHotkey1%, % ProfilePath, Hotkeys, Hotkey1
  Iniwrite, %ChosenHotkey2%, % ProfilePath, Hotkeys, Hotkey2
  Iniwrite, %ChosenHotkey3%, % ProfilePath, Hotkeys, Hotkey3
  Iniwrite, %ChosenHotkey4%, % ProfilePath, Hotkeys, Hotkey4
  Iniwrite, %ChosenHotkey5%, % ProfilePath, Hotkeys, Hotkey5
  Iniwrite, %ChosenHotkey6%, % ProfilePath, Hotkeys, Hotkey6
  Iniwrite, %ChosenHotkey7%, % ProfilePath, Hotkeys, Hotkey7
  Iniwrite, %ChosenHotkey8%, % ProfilePath, Hotkeys, Hotkey8
  Iniwrite, %ChosenHotkey9%, % ProfilePath, Hotkeys, Hotkey9
  Iniwrite, %ChosenHotkey10%, % ProfilePath, Hotkeys, Hotkey10
  Iniwrite, %ChosenHotkey11%, % ProfilePath, Hotkeys, Hotkey11
  Iniwrite, %SpellChoice1%, % ProfilePath, Spells, Spell1
  Iniwrite, %SpellChoice2%, % ProfilePath, Spells, Spell2
  Iniwrite, %SpellChoice3%, % ProfilePath, Spells, Spell3
  Iniwrite, %SpellChoice4%, % ProfilePath, Spells, Spell4
  Iniwrite, %SpellChoice5%, % ProfilePath, Spells, Spell5
  Iniwrite, %SpellChoice6%,  % ProfilePath, Spells, Spell6
  Iniwrite, %SpellChoice7%,  % ProfilePath, Spells, Spell7
  Iniwrite, %SpellChoice8%,  % ProfilePath, Spells, Spell8
  Iniwrite, %SpellChoice9%,  % ProfilePath, Spells, Spell9
  Iniwrite, %SpellChoice10%, % ProfilePath, Spells, Spell10
  IniWrite, %Spelltimer1%, % ProfilePath, Spells, Spelltimer1
  IniWrite, %Spelltimer2%, % ProfilePath, Spells, Spelltimer2
  IniWrite, %Spelltimer3%, % ProfilePath, Spells, Spelltimer3
  IniWrite, %Spelltimer4%, % ProfilePath, Spells, Spelltimer4
  IniWrite, %Spelltimer5%, % ProfilePath, Spells, Spelltimer5
  IniWrite, %Spelltimer6%, % ProfilePath, Spells, Spelltimer6
  IniWrite, %Spelltimer7%, % ProfilePath, Spells, Spelltimer7
  IniWrite, %Spelltimer8%, % ProfilePath, Spells, Spelltimer8
  IniWrite, %Spelltimer9%, % ProfilePath, Spells, Spelltimer9
  IniWrite, %Spelltimer10%, % ProfilePath, Spells, Spelltimer10
  gui, Destroy
  gosub GuiSetup
return
  


GuiEscape:
GuiSave2:
  GuiControlGet, MyEdit
  GuiControlGet, ChosenHotkey1
  GuiControlGet, ChosenHotkey2
  GuiControlGet, ChosenHotkey3
  GuiControlGet, ChosenHotkey4
  GuiControlGet, ChosenHotkey5
  GuiControlGet, ChosenHotkey6
  GuiControlGet, ChosenHotkey7
  GuiControlGet, ChosenHotkey8
  GuiControlGet, ChosenHotkey9
  GuiControlGet, ChosenHotkey10
  GuiControlGet, ChosenHotkey11
  GuiControlGet, SpellChoice1
  GuiControlGet, SpellChoice2
  GuiControlGet, SpellChoice3
  GuiControlGet, SpellChoice4
  GuiControlGet, SpellChoice5
  GuiControlGet, SpellChoice6
  GuiControlGet, SpellChoice7
  GuiControlGet, SpellChoice8
  GuiControlGet, SpellChoice9
  GuiControlGet, SpellChoice10
  GuiControlGet, Spelltimer1
  GuiControlGet, Spelltimer2
  GuiControlGet, Spelltimer3
  GuiControlGet, Spelltimer4
  GuiControlGet, Spelltimer5
  GuiControlGet, Spelltimer6
  GuiControlGet, Spelltimer7
  GuiControlGet, Spelltimer8
  GuiControlGet, Spelltimer9
  GuiControlGet, Spelltimer10

  Profile = %MyEdit%.ini
  ProfileName = %Profile%
  ProfilePath := "Profiles\" . ProfileName
  IniWrite, %MyEdit%, % ProfilePath, Profile, Character
  IniWrite, % boolean, % ProfilePath, Mode, 1
  IniWrite, % !boolean, % ProfilePath, Mode, 2
  Iniwrite, %ChosenHotkey1%,  % ProfilePath, Hotkeys, Hotkey1
  Iniwrite, %ChosenHotkey2%,  % ProfilePath, Hotkeys, Hotkey2
  Iniwrite, %ChosenHotkey3%,  % ProfilePath, Hotkeys, Hotkey3
  Iniwrite, %ChosenHotkey4%,  % ProfilePath, Hotkeys, Hotkey4
  Iniwrite, %ChosenHotkey5%,  % ProfilePath, Hotkeys, Hotkey5
  Iniwrite, %ChosenHotkey6%, % ProfilePath, Hotkeys, Hotkey6
  Iniwrite, %ChosenHotkey7%, % ProfilePath, Hotkeys, Hotkey7
  Iniwrite, %ChosenHotkey8%, % ProfilePath, Hotkeys, Hotkey8
  Iniwrite, %ChosenHotkey9%, % ProfilePath, Hotkeys, Hotkey9
  Iniwrite, %ChosenHotkey10%, % ProfilePath, Hotkeys, Hotkey10
  Iniwrite, %ChosenHotkey11%, % ProfilePath, Hotkeys, Hotkey11
  Iniwrite, %SpellChoice1%, % ProfilePath, Spells, Spell1
  Iniwrite, %SpellChoice2%, % ProfilePath, Spells, Spell2
  Iniwrite, %SpellChoice3%, % ProfilePath, Spells, Spell3
  Iniwrite, %SpellChoice4%, % ProfilePath, Spells, Spell4
  Iniwrite, %SpellChoice5%, % ProfilePath, Spells, Spell5
  Iniwrite, %SpellChoice6%,  % ProfilePath, Spells, Spell6
  Iniwrite, %SpellChoice7%,  % ProfilePath, Spells, Spell7
  Iniwrite, %SpellChoice8%,  % ProfilePath, Spells, Spell8
  Iniwrite, %SpellChoice9%,  % ProfilePath, Spells, Spell9
  Iniwrite, %SpellChoice10%, % ProfilePath, Spells, Spell10
  IniWrite, %Spelltimer1%, % ProfilePath, Spells, Spelltimer1
  IniWrite, %Spelltimer2%, % ProfilePath, Spells, Spelltimer2
  IniWrite, %Spelltimer3%, % ProfilePath, Spells, Spelltimer3
  IniWrite, %Spelltimer4%, % ProfilePath, Spells, Spelltimer4
  IniWrite, %Spelltimer5%, % ProfilePath, Spells, Spelltimer5
  IniWrite, %Spelltimer6%, % ProfilePath, Spells, Spelltimer6
  IniWrite, %Spelltimer7%, % ProfilePath, Spells, Spelltimer7
  IniWrite, %Spelltimer8%, % ProfilePath, Spells, Spelltimer8
  IniWrite, %Spelltimer9%, % ProfilePath, Spells, Spelltimer9
  IniWrite, %Spelltimer10%,% ProfilePath, Spells, Spelltimer10
ExitApp
Return


GUI2:
IniRead, ChosenHotkey1, % ProfilePath, Hotkeys, Hotkey1, %A_Space%
IniRead, ChosenHotkey2, % ProfilePath, Hotkeys, Hotkey2, %A_Space%
IniRead, ChosenHotkey3, % ProfilePath, Hotkeys, Hotkey3, %A_Space%
IniRead, ChosenHotkey4, % ProfilePath, Hotkeys, Hotkey4, %A_Space%
IniRead, ChosenHotkey5, % ProfilePath, Hotkeys, Hotkey5, %A_Space%
IniRead, ChosenHotkey6, % ProfilePath, Hotkeys, Hotkey6, %A_Space%
IniRead, ChosenHotkey7, % ProfilePath, Hotkeys, Hotkey7, %A_Space%
IniRead, ChosenHotkey8, % ProfilePath, Hotkeys, Hotkey8, %A_Space%
IniRead, ChosenHotkey9, % ProfilePath, Hotkeys, Hotkey9, %A_Space%
IniRead, ChosenHotkey10, % ProfilePath, Hotkeys, Hotkey10, %A_Space%
IniRead, ChosenHotkey11, % ProfilePath, Hotkeys, Hotkey11, %A_Space%
if ChosenHotkey1 !=
{
Hotkey, % "~$" ChosenHotkey1, ODS1
}
if ChosenHotkey2 !=
{
  Hotkey, % "~$" ChosenHotkey2, ODS2
}
if ChosenHotkey3 !=
{
Hotkey, % "~$" ChosenHotkey3,ODS3
}
if ChosenHotkey4 !=
{
Hotkey, % "~$"ChosenHotkey4,ODS4
}
if ChosenHotkey5 != 
{
Hotkey, % "~$"ChosenHotkey5,ODS5
}
if ChosenHotkey6 != 
{
Hotkey, % "~$" ChosenHotkey6,ODS6
}
if ChosenHotkey7 != 
{
Hotkey, % "~$" ChosenHotkey7,ODS7
}
if ChosenHotkey8 != 
{
Hotkey, % "~$" ChosenHotkey8,ODS8
}
if ChosenHotkey9 != 
{
Hotkey, % "~$" ChosenHotkey9,ODS9
}
if ChosenHotkey10 != 
{
Hotkey, % "~$" ChosenHotkey10,ODS10
}
if ChosenHotkey11 != 
{
Hotkey, % "~$" ChosenHotkey11,Exit
}



;2 MISC
WinGetPos , var1, var2, Width, Height, UO - %charactername%
var1 += 15
var2 += 50

;3 TRANSPARENT GUI SETUP
CustomColor = FF6E6E
Gui +LastFound +AlwaysOnTop -Caption +ToolWindow 
Gui, Color, %CustomColor%
Gui, Font, s20 

IniRead, SpellChoice1a, % ProfilePath, Spells, Spell1
IniRead, Spelltimer1a, % ProfilePath, Spells, Spelltimer1
Image1 = %SpellChoice1a%
ImageName1 = %Image1%.png
ImagePath1 := "Icons\" . ImageName1
Gui,Add,Picture, x0 y0 BackgroundTrans AltSubmit, %ImagePath1%
Gui, Add, Text, W500 xs+40 ys+2  vMyText cred, %Spellchoice1a%

IniRead, SpellChoice2a, % ProfilePath, Spells, Spell2
IniRead, Spelltimer2a, % ProfilePath, Spells, Spelltimer2
Image2 = %SpellChoice2a%
ImageName2 = %Image2%.png
ImagePath2 := "Icons\" . ImageName2
Gui,Add, Picture, xs yp+43 BackgroundTrans AltSubmit, %ImagePath2%
Gui, Add, Text, W500 xp+39 yp  vMyText2 cred, %Spellchoice2a%

IniRead, SpellChoice3a, % ProfilePath, Spells, Spell3
IniRead, Spelltimer3a, % ProfilePath, Spells, Spelltimer3
Image3 = %SpellChoice3a%
ImageName3 = %Image3%.png
ImagePath3 := "Icons\" . ImageName3
Gui,Add, Picture, xs yp+43 BackgroundTrans AltSubmit, %ImagePath3%
Gui, Add, Text, W500 xp+39 yp vMyText3 cred, %Spellchoice3a%

IniRead, SpellChoice4a, % ProfilePath, Spells, Spell4
IniRead, Spelltimer4a, % ProfilePath, Spells, Spelltimer4
Image4 = %SpellChoice4a%
ImageName4 = %Image4%.png
ImagePath4 := "Icons\" . ImageName4
Gui,Add, Picture, xs yp+43 BackgroundTrans AltSubmit, %ImagePath4%
Gui, Add, Text, W500 xp+39 yp vMyText4 cred, %Spellchoice4a%

IniRead, SpellChoice5a, % ProfilePath, Spells, Spell5
IniRead, Spelltimer5a, % ProfilePath, Spells, Spelltimer5
Image5 = %SpellChoice5a%
ImageName5 = %Image5%.png
ImagePath5 := "Icons\" . ImageName5
Gui,Add, Picture, xs yp+43 BackgroundTrans AltSubmit, %ImagePath5%
Gui, Add, Text, W500 xp+39 yp vMyText5 cred, %Spellchoice5a%

IniRead, SpellChoice6a, % ProfilePath, Spells, Spell6
IniRead, Spelltimer6a, % ProfilePath, Spells, Spelltimer6
Image6 = %SpellChoice6a%
ImageName6 = %Image6%.png
ImagePath6 := "Icons\" . ImageName6
Gui,Add, Picture, xs yp+43 BackgroundTrans AltSubmit, %ImagePath6%
Gui, Add, Text, W500 xp+39 yp vMyText6 cred, %Spellchoice6a%

IniRead, SpellChoice7a, % ProfilePath, Spells, Spell7
IniRead, Spelltimer7a, % ProfilePath, Spells, Spelltimer7
Image7 = %SpellChoice7a%
ImageName7 = %Image7%.png
ImagePath7 := "Icons\" . ImageName7
Gui,Add, Picture, xs yp+43 BackgroundTrans AltSubmit, %ImagePath7%
Gui, Add, Text, W500 xp+39 yp vMyText7 cred, %Spellchoice7%

IniRead, SpellChoice8a, % ProfilePath, Spells, Spell8
IniRead, Spelltimer8, % ProfilePath, Spells, Spelltimer8
Image8 = %SpellChoice8a%
ImageName8 = %Image8%.png
ImagePath8 := "Icons\" . ImageName8
Gui,Add, Picture, xs yp+43 BackgroundTrans AltSubmit, %ImagePath8%
Gui, Add, Text, W500 xp+39 yp vMyText8 cred, %Spellchoice8%

IniRead, SpellChoice9a, % ProfilePath, Spells, Spell9
IniRead, Spelltimer9, % ProfilePath, Spells, Spelltimer9
Image9 = %SpellChoice9a%
ImageName9 = %Image9%.png
ImagePath9 := "Icons\" . ImageName9
Gui,Add, Picture, xs yp+43 BackgroundTrans AltSubmit, %ImagePath9%
Gui, Add, Text, W500 xp+39 yp vMyText9 cred, %Spellchoice9%

IniRead, SpellChoice10a, % ProfilePath, Spells, Spell10
IniRead, Spelltimer10, % ProfilePath, Spells, Spelltimer10
Image10 = %SpellChoice10a%
ImageName10 = %Image10%.png
ImagePath10 := "Icons\" . ImageName10
Gui,Add, Picture, xs yp+43 BackgroundTrans AltSubmit, %ImagePath10%
Gui, Add, Text, W500 xp+39 yp vMyText10 cred, %Spellchoice10%





WinSet, TransColor, %CustomColor%
Gui, Show, x%var1% y%var2% NoActivate

Gui -Caption
Gui, Show
Return


Exit:
exitapp
return




ODS1:
counter:=0
SetTimer, UpdateOSD, -10
SetTimer, UpdateOSD, 1000
return

ODS2:
counter2:=0
SetTimer, UpdateOSD2, -10
SetTimer, UpdateOSD2, 1000
return

ODS3:
counter3:=0
SetTimer, UpdateOSD3, -10
SetTimer, UpdateOSD3, 1000
return

ODS4:
counter4:=0
SetTimer, UpdateOSD4, -10
SetTimer, UpdateOSD4, 1000
return

ODS5:
counter5:=0
SetTimer, UpdateOSD5, -10
SetTimer, UpdateOSD5, 1000
return

ODS6:
counter6:=0
SetTimer, UpdateOSD6, -10
SetTimer, UpdateOSD6, 1000
return

ODS7:
counter7:=0
SetTimer, UpdateOSD7, -10
SetTimer, UpdateOSD7, 1000
return

ODS8:
counter8:=0
SetTimer, UpdateOSD8, -10
SetTimer, UpdateOSD8, 1000
return

ODS9:
counter9:=0
SetTimer, UpdateOSD9, -10
SetTimer, UpdateOSD9, 1000
return

ODS10:
counter10:=0
SetTimer, UpdateOSD10, -10
SetTimer, UpdateOSD10, 1000
return


UpdateOSD:
counter++
time_display:= Spelltimer1a - counter
if (time_display=0)
SetTimer, UpdateOSD, off
GuiControl,, MyText, %SpellChoice1a%: %time_display%
return
return

UpdateOSD2:
counter2++
time_display2:=Spelltimer2a-counter2
if (time_display2=0)
SetTimer, UpdateOSD2, off
GuiControl,, MyText2, %SpellChoice2a%: %time_display2%
return
return

UpdateOSD3:
counter3++
time_display3:=Spelltimer3a-counter3
if (time_display3=0)
SetTimer, UpdateOSD3, off
GuiControl,, MyText3, %SpellChoice3a%: %time_display3%
return
return

UpdateOSD4:
counter4++
time_display4:=Spelltimer4a-counter4
if (time_display4=0)
SetTimer, UpdateOSD4, off
GuiControl,, MyText4, %SpellChoice4a%: %time_display4%
return
return

UpdateOSD5:
counter5++
time_display5:=Spelltimer5a-counter5
if (time_display5=0)
SetTimer, UpdateOSD5, off
GuiControl,, MyText5, %SpellChoice5a%: %time_display5%
return
return

UpdateOSD6:
counter6++
time_display6:=Spelltimer6a-counter6
if (time_display6=0)
SetTimer, UpdateOSD6, off
GuiControl,, MyText6, %SpellChoice6a%: %time_display6%
return
return

UpdateOSD7:
counter7++
time_display7:=Spelltimer7a-counter7
if (time_display7=0)
SetTimer, UpdateOSD7, off
GuiControl,, MyText7, %SpellChoice7a%: %time_display7%
return
return

UpdateOSD8:
counter8++
time_display8:=Spelltimer8a-counter8
if (time_display8=0)
SetTimer, UpdateOSD8, off
GuiControl,, MyText8, %SpellChoice8a%: %time_display8%
return
return

UpdateOSD9:
counter9++
time_display9:=Spelltimer9a-counter9
if (time_display9=0)
SetTimer, UpdateOSD9, off
GuiControl,, MyText9, %SpellChoice9a%: %time_display9%
return
return

UpdateOSD10:
counter10++
time_display10:=Spelltimer10a-counter10
if (time_display10=0)
SetTimer, UpdateOSD10, off
GuiControl,, MyText10, %SpellChoice10a%: %time_display10%
return
return

return