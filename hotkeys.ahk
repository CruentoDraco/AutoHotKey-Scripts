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

F1::
    run, %A_MyDocuments%\Repos\AutoHotKey Scripts
    run, D:\AutoHotKeyLinks
Return
F2:: 
    run, %A_MyDocuments%\Repos
Return

F3::
    run, C:\Users\%A_UserName%\Dropbox\ProjectReleases
Return

F4::
    run, C:\Users\%A_UserName%\Dropbox
Return

F5:: ;MYPC
    run, C:\Windows\explorer.exe
Return 

F6:: ;TaskManager
    run, C:\Windows\System32\Taskmgr.exe
Return

F7:: ;Window Spy
    run, C:\Program Files\AutoHotkey\WindowSpy.ahk
Return

P:: ;Open every Programm needed for Programming maybe move them to the right position on the screens
Return
O:: ;Open every Programm needed for Office Working maybe move them to the right position on the screens
Return

S:: ;Spotify
    IfWinNotExist, ahk_exe Spotify.exe
        run, D:\AutoHotKeyLinks\Spotify.exe
    Else
        WinActivate, ahk_exe Spotify.exe
Return
T:: ;Source Tree
    IfWinNotExist, ahk_exe SourceTree.exe
        run, C:\Users\%A_UserName%\AppData\Local\SourceTree\app-3.3.4\SourceTree.exe
    Else
        WinActivate, ahk_exe SourceTree.exe
Return
F:: ;Firefox
    IfWinNotExist, ahk_exe firefox.exe
        run, C:\Program Files\Mozilla Firefox\firefox.exe
    Else
        WinActivate, ahk_exe firefox.exe
Return
V:: ;Visual Studio
    IfWinNotExist, ahk_exe devenv.exe
        run, C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\IDE\devenv.exe
    Else
        WinActivate, ahk_exe devenv.exe
Return
!V:: ;Visual Studio Code
    IfWinNotExist, ahk_exe Code.exe
        run, C:\Users\Re-De\AppData\Local\Programs\Microsoft VS Code\Code.exe
    Else
        WinActivate, ahk_exe Code.exe
Return
A:: ;Android Studio
    IfWinNotExist, ahk_exe studio64.exe
        run, D:\Android\Android Studio\bin\studio64.exe
    Else
        WinActivate, ahk_exe studio64.exe
Return
;!M:: ;Macro Deck
;Return
W:: ;WhatsApp
    IfWinNotExist, ahk_exe WhatsApp.exe
        run, D:\AutoHotKeyLinks\WhatsApp.exe
    Else
        WinActivate, ahk_exe WhatsApp.exe
Return
!W:: ; Word
    IfWinNotExist, ahk_exe WINWORD.EXE
        run, C:\Program Files\Microsoft Office\root\Office16\WINWORD.EXE
    Else
        WinActivate, ahk_exe WINWORD.EXE
Return
!P:: ; PowerPoint
    IfWinNotExist, ahk_exe POWERPNT.EXE
        run, C:\Program Files\Microsoft Office\root\Office16\POWERPNT.EXE
    Else
        WinActivate, ahk_exe POWERPNT.EXE
Return
K:: ;KeeWeb
    IfWinNotExist, ahk_exe KeeWeb.exeq
        run, C:\Program Files\KeeWeb\KeeWeb.exe
    Else
        WinActivate, ahk_exe KeeWeb.exe
Return
D:: ;Discord
    IfWinNotExist, ahk_exe Discord.exe
        run, C:\Users\Re-De\AppData\Local\Discord\app-0.0.306\Discord.exe
    Else
        WinActivate, ahk_exe Discord.exe
Return
X:: ;Xbox App
    IfWinNotExist, ahk_exe Xbox.exe
        run, D:\AutoHotKeyLinks\Xbox.exe
    Else
        WinActivate, ahk_exe Xbox.exe
Return
E:: ; Email
    IfWinNotExist, ahk_exe ApplicationFrameHost.exe
        run, D:\AutoHotKeyLinks\Mail
    Else
        WinActivate, ahk_exe ApplicationFrameHost.exe
Return 
;!E:: ;Eclipse
;    IfWinNotExist, ahk_exe WhatsApp.exe
;        run, D:\AutoHotKeyLinks\WhatsApp.exe
;    Else
;        WinActivate, ahk_exe WhatsApp.exe
;Return
H:: ;DreamWeaver
    IfWinNotExist, ahk_exe Dreamweaver.exe
        run, C:\Program Files\Adobe\Adobe Dreamweaver CC 2019\Dreamweaver.exe
    Else
        WinActivate, ahk_exe Dreamweaver.exe
Return

#If
;:--:--:--:--:--:--:--:--:--:
; END CAPSLOCK HOTKEYS
;:--:--:--:--:--:--:--:--:--:

