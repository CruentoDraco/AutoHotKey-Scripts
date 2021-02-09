; HEADER START
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
#SingleInstance, force ;so you can only run 1 script at a time and it doens't bother you about it.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
Menu, Tray, Icon, shell32.dll, 16 ;this changes the icon into a little laptop thingy. just useful for making it distinct from the others.
SetCapsLockState, AlwaysOff ; Disable Capslock
RControl & RShift::AltTab  ; Switch Windows with right control and rshift
RControl & Enter::ShiftAltTab  ; reverses direction
; HEADER END

;:--:--:--:--:--:--:--:--:--:
; CAPSLOCK HOTKEYS
;:--:--:--:--:--:--:--:--:--:

#If, GetKeyState("Capslock", "P")

F7::
    run, %A_MyDocuments%\Repos\AutoHotKey Scripts
    run, D:\AutoHotKeyLinks
Return

E::
    Send, [
Return
R::
    Send, ]
Return
Q::
    Send, {{}
Return
W::
    Send, {}}
Return

#If
;:--:--:--:--:--:--:--:--:--:
; END CAPSLOCK HOTKEYS
;:--:--:--:--:--:--:--:--:--:
