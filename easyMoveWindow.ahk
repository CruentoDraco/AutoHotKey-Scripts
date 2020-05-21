; HEADER START
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
#SingleInstance, force ;so you can only run 1 script at a time and it doens't bother you about it.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
Menu, Tray, Icon, shell32.dll, 16 ;this changes the icon into a little laptop thingy. just useful for making it distinct from the others.

~MButton & LButton:: 
Alt & LButton::
CoordMode, Mouse  ; Auf Bildschirm-/absolute Koordinaten wechseln.
MouseGetPos, EWD_MouseStartX, EWD_MouseStartY, EWD_MouseWin
WinGetPos, EWD_OriginalPosX, EWD_OriginalPosY,,, ahk_id %EWD_MouseWin%
WinGet, EWD_WinState, MinMax, ahk_id %EWD_MouseWin% 
if EWD_WinState = 0  ; Nur, wenn das Fenster nicht maximiert ist
    SetTimer, EWD_WatchMouse, 10 ; Den Mauszeiger verfolgen, wenn er vom Benutzer gezogen wird.
return

EWD_WatchMouse:
GetKeyState, EWD_LButtonState, LButton, P
if EWD_LButtonState = U  ; Taste wurde losgelassen, daher ist das Ziehen abgeschlossen.
{
    SetTimer, EWD_WatchMouse, Off
    return
}
GetKeyState, EWD_EscapeState, Escape, P
if EWD_EscapeState = D  ; Escape wurde gedrückt, daher wird das Ziehen abgebrochen.
{
    SetTimer, EWD_WatchMouse, Off
    WinMove, ahk_id %EWD_MouseWin%,, %EWD_OriginalPosX%, %EWD_OriginalPosY%
    return
}
; Ansonsten das Fenster neu positionieren, damit es den Mauskoordinaten entspricht,
; bedingt durch das Ziehen des Mauszeigers:
CoordMode, Mouse
MouseGetPos, EWD_MouseX, EWD_MouseY
WinGetPos, EWD_WinX, EWD_WinY,,, ahk_id %EWD_MouseWin%
SetWinDelay, -1   ; Fenster wird schneller/flüssiger verschoben.
WinMove, ahk_id %EWD_MouseWin%,, EWD_WinX + EWD_MouseX - EWD_MouseStartX, EWD_WinY + EWD_MouseY - EWD_MouseStartY
EWD_MouseStartX := EWD_MouseX  ; Für den nächsten Timer-Aufruf auf diese Subroutine aktualisieren.
EWD_MouseStartY := EWD_MouseY
return
