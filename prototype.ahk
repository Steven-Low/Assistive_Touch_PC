^r::
Run, "C:\Users\Huawei\C_Documents\ahk_files\assistive\prototype.ahk" 
return


^g::
Gui,+AlwaysOnTop +LastFound -Caption +E0x20
Gui, Margin ,0,0
Gui,Add,Picture, x0 y0 w400 h300,picture.gif
Gui,Font,S24 Bold,Verdana
Gui,Add,Text,x0 y75 w400 center ,Ordinary Text
Gui,Add,Text,x0 y125 w400 center Backgroundtrans,Transparent Text
Gui,Show,,Test Window
Return


^h::
Gui, -Caption +ToolWindow +0x400000 +AlwaysOnTop
Gui, Font, S14, Verdana
Gui, Add, Button, x20 y3 w80 h27 Gmuter, Btn 1
Gui, Add, Button, x+5 y3 w80 h27 Gmuteall, Btn 2
Gui, Add, Button, x+300 y3 w30 h27 Gclose, X
Gui, Add, Text, x0 y0 h30 w600 GuiMove, Move  ; options 1 move all GUI, but first hover over GUI with mouse to see buttons
;Gui, Add, Text, x0 y0 h30 w20 GuiMove, Move ; option 2, move and click only small area (on M) rest of the part will be not active


;Gui, Show, AutoSize
Gui, Show, x355 y135 h33 w589,
Return

uiMove:
PostMessage, 0xA1, 2,,, A 
Return

muter:
Send, {Alt Down}{Left Down}{Left Up}{Alt Up} hola
return

muteall:
MsgBox, btn 2
return

close:
gui, destroy
;exitapp
return

return


^i::
Gui,+AlwaysOnTop +LastFound -Caption +E0x20
Gui Color, 0xFFD700
Gui,Add,Picture, x0 y0 w300 h300 +BackgroundTrans,picture.png
Gui,Show,,Test Window
Return

^j::
WinActivate, ahk_class Chrome_WidgetWin_1
Send, {Alt down}{Left down}{Left up}{Alt up}
return

^k::
Gui,Add,Picture, x0 y0 w200 h200 +BackgroundTrans,picture2.png
Gui,Show,, Test Window
Return

~lbutton:: ; Left mouse button (~ won't block the normal function of this button)
StartTime := A_TickCount
while GetKeyState("lbutton", "P") ; While left mouse button is being held:
{
  EndTime := A_TickCount
  ElapsedTime := EndTime - StartTime
  if(ElapsedTime > 500)
	Send, {Wheeldown 1}
  Sleep, 100 ; 100 ms pause
}
return

^l::
	WinGet, active_id, ID, A
	MouseGetPos, x, y, hwnd
	if(hwnd != active_id){
		MsgBox, %hwnd% this
		return
	}
	if(x > 0 and x < 300 ){
		MsgBox, you found me
	}
return

^m::
Gui, +e0x80 +Toolwindow
TransColor = D4D1C8
Gui, Color, %transColor%
Gui, Add, Button, x2 y2 w100 h24 , Test1
Gui, Add, Button, x104 y2 w100 h24 , Test2
Gui, Add, Button, x206 y2 w100 h24 , Test3
Gui, Show, x500 y500 w308 h28

WinGet, k_ID, ID, A   ; Get its window ID.
WinSet, AlwaysOnTop, On, ahk_id %k_ID%
WinSet, TransColor, %TransColor% 100, ahk_id %k_ID%

Gui, 2: +e0x80 +Toolwindow
Gui, 2:Color, white
Gui, 2:Add, Progress, x2 y2 w100 h24 cFFFF66, 100
Gui, 2:Add, Progress, x104 y2 w100 h24 c87BBFF, 100
Gui, 2:Add, Progress, x206 y2 w100 h24 c00B050, 100
Gui, 2:Show, x500 y500 w308 h28

Return

ButtonTest1:
MsgBox You clicked Test1.
Return

ButtonTest2:
MsgBox You clicked Test2.
Return

ButtonTest3:
MsgBox You clicked Test3.
Return

^n::



Exit:
GuiEscape:
GuiClose:
Gui, Destroy
ExitApp
Return
