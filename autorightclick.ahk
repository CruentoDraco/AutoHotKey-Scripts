
;HEADER START
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
#SingleInstance, force ;so you can only run 1 script at a time and it doens't bother you about it.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
Menu, Tray, Icon, shell32.dll, 16 ;this changes the icon into a little laptop thingy. just useful for making it distinct from the others.
;HEADER END

#MaxThreadsPerHotkey 3

#s::

#MaxThreadsPerHotkey 1

if keep_winz_running  = y

{

    keep_winz_running = n

    return

}

; Otherwise:

keep_winz_running = y

Loop, 

{ 

    MouseClick, right 

    Sleep, 3000 ;This means the script will wait 1.5 secs 

    if keep_winz_running = n  ; The user signaled the loop to stop.

        break  ; break out of the loop

}