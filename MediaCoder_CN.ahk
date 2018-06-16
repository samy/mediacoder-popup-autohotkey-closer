; support Chinese version
; passed test on x64, win 10, Chinese OS and MediaCoder x64 in Chinese version also.
;注意当前脚本文件编码必须是 UTF-8 with BOM 格式才能支持中文
;only UTF-8 with BOM can be supported in Chinese OS.

Loop {
	SetTitleMatchMode RegEx
	WinWait, 将在.*	
	WinActivate 

	WinGetText, WindowText

	RegExMatch(WindowText, "(\d+)\s*([-\+])\s*(\d+)", Expression)

	
	sleep, 2000 ;
	if(Expression2 = "-")
		Result := Expression1 - Expression3
	else if (Expression2 = "+")
		Result := Expression1 + Expression3
	else
	{
		MsgBox, 未知操作符 ""%Expression2%""., 16, Error
		return
	}
	
	ControlSetText, Edit2, %Result%
	sleep, 2000 ;
	ControlClick, Button2
}
