; HEADER START
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
#SingleInstance, force ;so you can only run 1 script at a time and it doens't bother you about it.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
Menu, Tray, Icon, shell32.dll, 16 ;this changes the icon into a little laptop thingy. just useful for making it distinct from the others.

; Hier kann ein beliebiger Titel für das Menü angegeben werden:
MenuTitle = -=-=-=-=-=-=-=-

; Damit wird die Druckdauer der Maustaste bestimmt, bis das Menü angezeigt wird:
UMDelay = 20

SetFormat, float, 0.0
SetBatchLines, 10ms 
SetTitleMatchMode, 2
#SingleInstance


;___________________________________________
;_____Menü-Definitionen_____________________

; Hier können die Menüpunkte erstellt oder bearbeitet werden.
; Es dürfen keine Leerzeichen im Key-/Wert-/Sektionsnamen verwendet werden.

; Machen Sie sich keine Sorgen über die Reihenfolge, das Menü wird sortiert.

MenuItems = Editor/Rechner/Bereich 3/Bereich 4/Bereich 5


;___________________________________________
;______Hier dynamische Menüpunkte___________

; Syntax:
;     Dyn# = Menüpunkt|Fenstertitel

Dyn1 = MS Word|- Microsoft Word
Dyn2 = Editor II|- Editor

;___________________________________________

Exit


;___________________________________________
;_____Menübereiche__________________________

; Hier können die Menübereiche erstellt oder bearbeitet werden.

Editor:
Run, Notepad.exe
Return

Rechner:
Run, Calc
Return

Bereich3:
MsgBox, 3 ausgewählt
Return

Bereich4:
MsgBox, 4 ausgewählt
Return

Bereich5:
MsgBox, 5 ausgewählt
Return

MSWord:
MsgBox, Das ist ein dynamischer Eintrag (Word)
Return

EditorII:
MsgBox, Das ist ein dynamischer Eintrag (Editor)
Return


;___________________________________________
;_____Hotkey-Bereich________________________

~MButton::
HowLong = 0
Loop
{
    HowLong ++
    Sleep, 10
    GetKeyState, MButton, MButton, P
    IfEqual, MButton, U, Break
}
IfLess, HowLong, %UMDelay%, Return


; Dynamisches Menü vorbereiten
DynMenu =
Loop
{
    IfEqual, Dyn%A_Index%,, Break

    StringGetPos, ppos, dyn%A_Index%, |
    StringLeft, item, dyn%A_Index%, %ppos%
    ppos += 2
    StringMid, win, dyn%A_Index%, %ppos%, 1000

    IfWinActive, %win%,
        DynMenu = %DynMenu%/%item%
}


; Sortiertes Hauptmenü mit dynamisches Menü verbinden
Sort, MenuItems, D/
TempMenu = %MenuItems%%DynMenu%


; Frühere Einträge entfernen
Loop
{
    IfEqual, MenuItem%A_Index%,, Break
    MenuItem%A_Index% =
}

; Neue Einträge erstellen
Loop, Parse, TempMenu, /
{
    MenuItem%A_Index% = %A_LoopField%
}

; Das Menü erstellen
Menu = %MenuTitle%
Loop
{
    IfEqual, MenuItem%A_Index%,, Break
    numItems ++
    StringTrimLeft, MenuText, MenuItem%A_Index%, 0
    Menu = %Menu%`n%MenuText%
}

MouseGetPos, mX, mY
Hotkey, ~LButton, MenuClick
Hotkey, ~LButton, On
ToolTip, %Menu%, %mX%, %mY%
WinActivate, %MenuTitle%
Return


MenuClick:
Hotkey, ~LButton, Off
IfWinNotActive, %MenuTitle%
{
    ToolTip
    Return
}

MouseGetPos, mX, mY
ToolTip
mY -= 3        ; Platz, bevor die erste Zeile startet
mY /= 13    ; Benötigter Platz jeder Zeile
IfLess, mY, 1, Return
IfGreater, mY, %numItems%, Return
StringTrimLeft, TargetSection, MenuItem%mY%, 0
StringReplace, TargetSection, TargetSection, %A_Space%,, A
Gosub, %TargetSection%
Return