Loop {
	SetTitleMatchMode RegEx
	WinWait, Continue in.*minutes	
	
	WinGetText, WindowText
	RegExMatch(WindowText, "math:\s(\d+)\s*([-\+])\s*(\d+)", Expression)
	
	sleep, 2000 ;
	if(Expression2 = "-")
		Result := Expression1 - Expression3
	else if (Expression2 = "+")
		Result := Expression1 + Expression3
	else
	{
		MsgBox, Unknown operator ""%Expression2%""., 16, Error
		return
	}
	
	ControlSetText, Edit2, %Result%
	sleep, 2000 ;
	ControlClick, Button2
}
