;;--- Head --- Informations --- AHK ---
;;	All files must be in same folder. Where you want.
;;	64 bit AHK version : 1.1.24.2 64 bit Unicode
;;--- Software options ---

	SetWorkingDir, %A_ScriptDir%
	#SingleInstance Force
	;;#Persistent
	;;#NoTrayIcon

;;--- Var ---

	SetEnv, title, Lcars Clock
	SetEnv, mode, Star Trek TNG 800x600
	SetEnv, version, Version 2017-03-10
	SetEnv, author, LostByteSoft

;;--- Software start here ---

FormatTime, MMdd,, MM/dd
SendInput %MMdd%

Gui_800x600:
	Sleep, 900
	Gui, Add, Picture, x0 y0 w800 h600 , STNG_800x600.jpg
	Gui, +ToolWindow

	gui, font, s160, Impact
	SetTimer, UpdateText1, 1
	Gosub, UpdateText1
	Gui, Add, Text, BackgroundTrans x90 y290 w550 h250 cYellow +Center vText1,

	gui, font, s100, Impact
	SetTimer, UpdateText2, 1
	Gosub, UpdateText2
	Gui, Add, Text, BackgroundTrans x650 y250 w140 h140 cYellow +Center vText2, %A_Sec%

	gui, font, s65, Impact
	SetTimer, UpdateText3, 1
	Gosub, UpdateText3
	Gui, Add, Text, BackgroundTrans x590 y90 w200 h100 cYellow +Center vText3, %MMdd%


	Gui, Show, w800 h600, Star Trek TGN Clock
	Return

;;--- Gosub ---

	UpdateText1:
	GuiControl,, Text1, %A_Hour%:%A_Min%
	Return

	UpdateText2:
	GuiControl,, Text2, %A_Sec%
	Return

	UpdateText3:
	GuiControl,, Text3,%MMdd%
	Return

;;--- Quit (escape , esc) ---
	GuiClose:
	ExitApp
Escape::
	ExitApp

;;--- End of script ---
;
;            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
;   Version 3.14159265358979323846264338327950288419716939937510582
;                          March 2017
;
; Everyone is permitted to copy and distribute verbatim or modified
; copies of this license document, and changing it is allowed as long
; as the name is changed.
;
;            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
;   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
;
;              You just DO WHAT THE FUCK YOU WANT TO.
;
;	As is customary and in compliance with current global and
;	interplanetary regulations, the author of these pages disclaims
;	all liability for the consequences of the advice given here,
;	in particular in the event of partial or total destruction of
;	the material, Loss of rights to the manufacturer's warranty,
;	electrocution, drowning, divorce, civil war, the effects of
;	radiation due to atomic fission, unexpected tax recalls or
;		encounters with beings 'elsewhere.
;
;              LostByteSoft no copyright or copyleft.
;
;;--- End of file ---