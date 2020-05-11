#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#persistent
Return

#Check for clipboard changes and make each word capitalised
OnClipboardChange:
Clipboard:=RegExReplace(clipboard, "\b[a-zA-Z]", "$U0")
Return