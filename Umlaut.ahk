#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Persistent

SetCapsLockState, AlwaysOff ;This command disables the CapsLock button while the script is running
	
;These first commands create combos with CapsLock + a key to make a particular character
;Output can be specified using Unicode {U+####} or Ascii {ASC ####}

	;-===Symbols===-

	CapsLock & 1:: Send, {U+203D}		;CapsLock+1 =  Interrobang
	return

	CapsLock & 4:: Send, {ASC 0128}		;CapsLock+4 =  Euro
	return

	CapsLock & p:: Send, {ASC 0163}		;CapsLock+p =  GBP
	return

	CapsLock & ,:: Send, {ASC 0151}		;CapsLock+Comma =  EM Dash
	return

;The next blocks are for commands where shift can also be pressed to capitolize the output character

	;-===German Characters===-

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

	;-===Depricated English Characters===-

	CapsLock & d:: 
		GetKeyState, state, Shift
		if state = U
		SendInput {ASC 0240}			;CapsLock+s = lower case Eth
		else Send, {ASC 0208}			;CapsLock+Shift+s = UPPER CASE Eth
	return

	CapsLock & y:: 
		GetKeyState, state, Shift
		if state = U
		SendInput {ASC 0254}			;CapsLock+s = lower case Thorn
		else Send, {ASC 0222}			;CapsLock+Shift+s = UPPER CASE Thorn
	return

;The final block shows how you can make one CapsLock+Key combo to print more than one character as the output

	CapsLock & \:: 
		Send, {U+00AF}			;Shruggy
		Send, {U+005C}			;¯\_(ツ)_/¯
		Send, {U+005f}
		Send, {U+0028}
		Send, {U+30C4}
		Send, {U+0029}
		Send, {U+005f}
		Send, {U+002F}
		Send, {U+00AF}
	return

	CapsLock & t:: 
		Send, {U+0028}			;Table Flip
		Send, {U+256f}			;(╯°□°）╯︵┻━┻)
		Send, {U+00b0}
		Send, {U+25a1}
		Send, {U+00b0}
		Send, {U+ff09}
		Send, {U+256f}
		Send, {U+fe35}
		Send, {U+253b}
		Send, {U+2501}
		Send, {U+253b}
	return

CapsLock & 9:: 
		Send, {U+0028}			;Disapproval
		Send, {U+0ca0}			;(ಠ_ಠ)
		Send, {U+005f}
		Send, {U+0ca0}
		Send, {U+0029}
	return