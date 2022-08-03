IfNotExist, floating_ui2.png
  FileInstall, C:\Users\Huawei\C_Documents\ahk_files\assistive\floating_ui2.png, floating_ui2.png
SetBatchLines, -1

Gui,+AlwaysOnTop +LastFound -Caption +ToolWindow 
WinSet,Transcolor, FFD700 126
Gui,Margin,0,0
Gui, Font, s40 Bold Center, Consolas
Gui, Add, Button, x12 y12 w55 h55 Gdragon, ⮌
Gui, Add, Button, x83 y12 w55 h55 Gdragon2, ⮟
Gui, Add, Button, x12 y82 w55 h55 Gdragon3, ⮜
Gui, Add, Button, x83 y82 w55 h55 Gdragon4, ⮞
Gui Color, 0xffd700 ; this color has been transparented
Gui,Add,Picture,x0 y0 w150 h150 +BackgroundTrans Center GuiMove,floating_ui2.png
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