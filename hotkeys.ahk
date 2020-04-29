; Common Hotkeys
; Heavily based on: https://github.com/sebinside/AutoHotkeyScripts 

; HEADER START
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
#SingleInstance, force ;so you can only run 1 script at a time and it doens't bother you about it.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
Menu, Tray, Icon, shell32.dll, 16 ;this changes the icon into a little laptop thingy. just useful for making it distinct from the others.


;:--:--:--:--:--:--:--:--:--:
; CAPSLOCK HOTKEYS
;:--:--:--:--:--:--:--:--:--:

#If, GetKeyState("Capslock", "P")

A::
    run, %A_MyDocuments%\Repos\AutoHotKey Scripts
Return
R:: 
    run, %A_MyDocuments%\Repos
Return

^R::
    run, C:\Users\%A_UserName%\Dropbox\ProjectReleases
Return

D::
    run, C:\Users\%A_UserName%\Dropbox
Return



P:: ;Open every Programm needed for Programming maybe move them to the right position on the screens
Return
O:: ;Open every Programm needed for Office Working maybe move them to the right position on the screens
Return

S:: ;Spotify
Return
T:: ;Source Tree
Return
F:: ;Firefox
Return
V:: ;Visual Studio
Return
^V:: ;Visual Studio Code
Return
^A:: ;Android Studio
Return
^M:: ;Macro Deck
Return
W:: ;WhatsApp
Return
^W:: ; Word
Return
^P:: ; PowerPoint
Return
K:: ;KeeWeb
Return
^D:: ;Discord
Return
X:: ;Xbox App 
Return
E:: ;Eclipse 
Return
H:: ;DreamWeaver
Return

#If
;:--:--:--:--:--:--:--:--:--:
; END CAPSLOCK HOTKEYS
;:--:--:--:--:--:--:--:--:--:
