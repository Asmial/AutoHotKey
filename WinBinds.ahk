ProcessExist(Name){
    Process,Exist,%Name%
    return Errorlevel
}

LWin & vk07::
Return

; Kill with Win + Q
#Q::
    Send, !{F4}
Return

; Copy with Win + C
#C::
    If WinActive("ahk_class ConsoleWindowClass") Or WinActive("ahk_exe WindowsTerminal.exe") {
        Send, ^+c
    } Else {
        Send, ^c
    }
Return

; Paste with Win + V
#V::
    If WinActive("ahk_class ConsoleWindowClass") Or WinActive("ahk_exe WindowsTerminal.exe") {
        Send, ^+v
    } Else {
        Send, ^v
    }
Return

#S::
    Send, ^s
Return

; Paste history with Ctrl + Win + V
^#V::
    Send, #v
Return

; Open PowerLauncher
LWin::
    If ProcessExist("PowerLauncher.exe"){
        Send, ^!{Space} ; Settings in Powertoys
    } Else If FileExist("C:\Program Files\PowerToys\modules\launcher\PowerLauncher.exe") {
        Run, C:\Program Files\PowerToys\modules\launcher\PowerLauncher.exe
    } Else {
        Send, LWin
    }
Return