IfNotExist, floating_ui_new.png
  FileInstall, D:\Documents\GitHub\Assistive_Touch_PC\floating_ui_new.png, floating_ui_new.png
SetBatchLines, -1

Gui,+AlwaysOnTop +LastFound -Caption +ToolWindow 

WinSet,Transcolor, FFFFFF 126
Gui,Margin,0,0
Gui, Font, s40 Bold Center, Consolas
Gui, Add, Button, x22 y22 w55 h55 Gdragon, ⮌
Gui, Add, Button, x93 y22 w55 h55 Gdragon2, ⮟
Gui, Add, Button, x22 y92 w55 h55 Gdragon3, ⮜
Gui, Add, Button, x93 y92 w55 h55 Gdragon4, ⮞
Gui Color, 0xffffff ; this color has been transparented
Gui,Add,Picture,x0 y0 w170 h170 +BackgroundTrans Center GuiMove,floating_ui_new.png
Gui,Show,
return

uiMove:
PostMessage, 0xA1, 2,,, A 
Return

GuiClose:
GuiContextMenu:
*ESC::ExitApp

dragon:
WinActivate, ahk_class Chrome_WidgetWin_1
Send, {Alt down}{Left down}{Left up}{Alt up}
return

dragon2:
WinActivate, ahk_class Chrome_WidgetWin_1
Send, {Space}
return

dragon3:
WinActivate, ahk_class Chrome_WidgetWin_1
Send, {Left}
return

dragon4:
WinActivate, ahk_class Chrome_WidgetWin_1
Send, {Right}
return