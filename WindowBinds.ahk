; Resize with Shift + Alt + Space
~+!Space::
    WinGetActiveTitle, active
    WinGet, canop, MinMax, %active%
    if (canop != 0) {
        ; MsgBox, , Cntop, %active% %canop%, 
        Return
    }
    Sleep, 10
    Send, t
    Sleep, 10
    While (cursor != SizeNWSE){
        Sleep, 1
    }
    
    MouseGetPos, X, Y
    X1 := X
    Y1 := Y
    While X == X1 And Y == Y1 {
        Sleep, 100
        MouseGetPos, X1, Y1
    }
    
    X := X1 - X
    Y := -(Y1 - Y)

    If (X > 0) {
        Send, {Right}
    }

    If (X < 0) {
        Send, {Left}
    }

    If (Y > 0) {
        Send, {Up}
    }
    
    If (Y < 0) {
        Send, {Down}
    }
Return

; Move with Alt + Space
~!Space::
    Sleep, 10
    Send, m
    Sleep, 10
    Send, {Up}
Return