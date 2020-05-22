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
    run, C:\Windows\explorer.exe
Return
F2:: 
    run, C:\Windows\System32\Taskmgr.exe
Return

F3::
    run, C:\Program Files\AutoHotkey\WindowSpy.ahk
Return

F4::
    run, C:\Users\%A_UserName%\Dropbox
Return

F5:: 
    run, C:\Users\%A_UserName%\Dropbox\ProjectReleases
Return 

F6:: 
    run, %A_MyDocuments%\Repos
Return

F7::
    run, %A_MyDocuments%\Repos\AutoHotKey Scripts
    run, D:\AutoHotKeyLinks
Return

M:: ;Main Office or Programming
spotify()
firefox()
discord()
whatsApp()
keeweb()
Return

G:: ;Gaming
spotify()
discord()
whatsApp()
keeweb()
Return

S:: spotify()
T:: sourceTree() 
F:: firefox() 
V:: visualStudio() 
!V:: visualStudioCode()
A:: android()
;!M:: ;Macro Deck
;Return
;W:: whatsApp()
;!W:: word() 
!P:: powerPoint()
K:: keeweb() 
D:: discord() 
X:: xbox() 
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
;!E:: ;Eclipse
;    IfWinNotExist, ahk_exe WhatsApp.exe
;        run, D:\AutoHotKeyLinks\WhatsApp.exe
;    Else
;        WinActivate, ahk_exe WhatsApp.exe
;Return
H:: dreamWeaver()
#If
;:--:--:--:--:--:--:--:--:--:
; END CAPSLOCK HOTKEYS
;:--:--:--:--:--:--:--:--:--:
;:--:--:--:--:--:--:--:--:--:
; METHODS
;:--:--:--:--:--:--:--:--:--:
spotify(){
   runProgram("D:\AutoHotKeyLinks\Spotify.exe", "ahk_exe Spotify.exe") 
}

sourceTree(){
   runProgram("C:\Users\Re-De\AppData\Local\SourceTree\app-3.3.4\SourceTree.exe", "ahk_exe SourceTree.exe") 
}

firefox(){
   runProgram("C:\Program Files\Mozilla Firefox\firefox.exe", "ahk_exe firefox.exe") 
}

visualStudio(){
   runProgram("C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\IDE\devenv.exe", "ahk_exe devenv.exe") 
}

visualStudioCode(){
   runProgram("C:\Users\Re-De\AppData\Local\Programs\Microsoft VS Code\Code.exe", "ahk_exe Code.exe") 
}

android(){
   runProgram("D:\Android\Android Studio\bin\studio64.exe", "ahk_exe studio64.exe") 
}

whatsApp(){
   runProgram("D:\AutoHotKeyLinks\WhatsApp.exe", "ahk_exe WhatsApp.exe") 
}

word(){
   runProgram("C:\Program Files\Microsoft Office\root\Office16\WINWORD.EXE", "ahk_exe WINWORD.EXE") 
}

powerPoint(){
    runProgram("C:\Program Files\Microsoft Office\root\Office16\POWERPNT.EXE", "ahk_exe POWERPNT.EXE")
}

keeweb(){
    runProgram("C:\Program Files\KeeWeb\KeeWeb.exe", "ahk_exe KeeWeb.exe")
}

discord(){
    runProgram("C:\Users\Re-De\AppData\Local\Discord\app-0.0.306\Discord.exe", "ahk_exe Discord.exe")
}

xbox(){
    runProgram("D:\AutoHotKeyLinks\Xbox.exe", "ahk_exe Xbox.exe")
}

email(){
    runProgram("D:\AutoHotKeyLinks\Mail", "ahk_exe ApplicationFrameHost.exe")
}

dreamWeaver(){
    runProgram("C:\Program Files\Adobe\Adobe Dreamweaver CC 2019\Dreamweaver.exe", "ahk_exe Dreamweaver.exe")
}

runProgram(path, exe){
    IfWinNotExist, %exe%
        run, %path%
    Else
        WinActivate, %exe%
}
;:--:--:--:--:--:--:--:--:--:
; END METHODS
;:--:--:--:--:--:--:--:--:--: