#include <MsgBoxConstants.au3>

Func FormatNumber($StringToFormat)
	Return StringRegExpReplace($StringToFormat, '(\A\d{1,3}(?=(\d{3})+\z)|\d{3}(?=\d))', '\1 ')
 EndFunc   ;==>FormatNumber


; Display a message box with a nested variable in its text.
MsgBox($MB_SYSTEMMODAL, "Title", "1234567 = [" & FormatNumber('1234567')  & "]" & @CRLF & @CRLF & "-1234567 = [" & FormatNumber('-1234567') & "]" )




