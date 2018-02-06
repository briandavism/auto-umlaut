#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;Umlaut
#Persistent
SetCapsLockState, AlwaysOff
	
	CapsLock & a:: 
		GetKeyState, state, Shift
		if state = U
		SendInput {ASC 0228}			;CapsLock+a = lower case a-umlaut
		else Send, {ASC 0196}			;CapsLock+Shift+a = UPPER CASE A-umlaut
	return
	
	CapsLock & o:: 
		GetKeyState, state, Shift
		if state = U
		SendInput {ASC 0246}			;CapsLock+o = lower case o-umlaut
		else Send, {ASC 0214}			;CapsLock+Shift+o = UPPER CASE O-umlaut
	return
	
	CapsLock & u:: 
		GetKeyState, state, Shift
		if state = U
		SendInput {ASC 0252}			;CapsLock+u = lower case u-umlaut
		else Send, {ASC 0220}			;CapsLock+Shift+u = UPPER CASE U-umlaut
	return
	
	CapsLock & s:: 
		GetKeyState, state, Shift
		if state = U
		SendInput {ASC 0223}			;CapsLock+s = lower case Eszett
		else Send, {U+1E9E}			;CapsLock+Shift+s = UPPER CASE Eszett
	return

	CapsLock & d:: 
		GetKeyState, state, Shift
		if state = U
		SendInput {ASC 0240}			;CapsLock+s = lower case Eszett
		else Send, {ASC 0208}			;CapsLock+Shift+s = UPPER CASE Eszett
	return

	CapsLock & y:: 
		GetKeyState, state, Shift
		if state = U
		SendInput {ASC 0254}			;CapsLock+s = lower case Eszett
		else Send, {ASC 0222}			;CapsLock+Shift+s = UPPER CASE Eszett
	return

	CapsLock & 4:: Send, {ASC 0128}		;CapsLock+s = CapsLock+s, Eszett
	return

	CapsLock & 1:: Send, {U+203D}		;CapsLock+1s = CapsLock+s, Interrobang
	return

	CapsLock & p:: Send, {ASC 0163}		;CapsLock+l = CapsLock+l, GBP
	return

	CapsLock & \:: 
		Send, {U+00AF}			;Shruggy
		Send, {U+005C}
		Send, {U+005f}
		Send, {U+0028}
		Send, {U+30C4}
		Send, {U+0029}
		Send, {U+005f}
		Send, {U+002F}
		Send, {U+00AF}
	return