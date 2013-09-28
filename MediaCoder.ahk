Loop {
	SetTitleMatchMode RegEx
	WinWaitActive, Continue in.*minutes
	if ErrorLevel
	{
		MsgBox, WinWait timed out.
		return
	}
	else {
		WinGetText, SearchVar  ; The window found above will be used.
		FoundPos1 := RegExMatch(SearchVar, "math:\s(\d+)\s*\+\s*(\d+)", Operands) ;
		Result := Operands1+Operands2
		ControlSetText, Edit2, %Result%
		ControlClick, Button2
	}
}