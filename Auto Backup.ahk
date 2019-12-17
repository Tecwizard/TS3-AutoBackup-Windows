#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force

Run, BatchBackup.bat, [INSERT BACKUP DIRECTORY HERE], Min
Sleep, 1000
SetTitleMatchMode, 2
ControlSend, , login serveradmin [INSERT SERVERADMIN PASSWORD]{enter}, Telnet 127.0.0.1
Sleep, 200
ControlSend, , serverprocessstop{enter}, Telnet 127.0.0.1
Sleep, 200
ControlSend, , quit{enter}, Telnet 127.0.0.1
Sleep 100
Run, Copy.bat, [INSERT BACKUP DIRECTORY HERE], Min
Return