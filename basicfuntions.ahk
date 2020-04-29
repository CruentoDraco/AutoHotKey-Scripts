; Autostart Hotkeys to start different .ahk scripts and set specific hotkeys

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
; NUMLOCK TOOLTIP
;:--:--:--:--:--:--:--:--:--:
NumLock::
GetKeyState, state, NumLock, T ; D if NumLock is ON or U otherwise
if(state=="U"){
    SetNumLockState, On
    ToolTip Caps NumpadLock is on
    SetTimer, RemoveToolTip, 2000
}
else{
    SetNumLockState, Off
    ToolTip Caps NumpadLock is off
    SetTimer, RemoveToolTip, 2000
}
return
/*
#Persistent
ToolTip, Timed ToolTip´n This will be displayed for 5 seconds.
SetTimer, RemoveToolTip, 5000
return
*/
RemoveToolTip:
SetTimer, RemoveToolTip, Off
ToolTip
return
;:--:--:--:--:--:--:--:--:--:
; END NUMLOCK TOOLTIP
;:--:--:--:--:--:--:--:--:--:
