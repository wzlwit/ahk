AryAttack := Array("3","z","w","z","r")
; AryAttack := Array("3","2","z","w","3","z","r","1")
AryInstant := Array("1","2")

act(a){
    ; OutputDebug, % a
    Send, {%a% Down}
    Sleep, 200
    Send, {%a% up}
    
    ; Send, %a%
    ; Sleep,  200
    ; Send, %a%
    
}

attak(Ary){
    For k, v in Ary
        act(v)
        Sleep, 800
}

buff(Ary){
    For k, v in Ary
        act(v)
        Sleep, 200
}

keyUP(Ary){
    For k, v in Ary
    Send, {%v% Up}
    Sleep, 50
}


Pause, On

Loop{
    buff(AryInstant)
    ; Sleep, 100
    attak(AryAttack)
}


g:: 
    Sleep, 50
    keyUp(AryInstant)
    keyUp(AryAttack)
    Sleep, 50
    Pause, On

t::
    Pause, Off

; ^F12::
;     Suspend, On

; a:: 
;     keyUp(AryInstant)
;     keyUp(AryAttack)
;     Send, a
;     Pause, on
