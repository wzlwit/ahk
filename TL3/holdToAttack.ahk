Ary := Array("1","2","3","4","w","r")
AryUp := ("9","0")

keyUp(Ary){
    For k, v in Ary
        Send, {%Ary% Up}
        Sleep, 20
}


; RButton::Return
1234wr1::
    keyUP(AryUp)
    If A_PriorHotkey = RButton
        Send, {RButton}
    Pause, On
Return

RButton::
    Pause, Off

    Loop{
        For k, v in Ary{
            Send, % v
            Sleep, 200
        }
        Send, {0, Down}
        Sleep, 2000
    }

; RButton Up::
;     keyUP(AryUp)
;     Pause, On

; z:: Pause, On