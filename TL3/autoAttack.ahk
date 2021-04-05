AryAttack := Array("1","2","w","r")
AryInstant := Array("3","4")

act(a){
    ; OutputDebug, % a
    Send, {%a% Down}
    Sleep, 250
    Send, {%a% up}
    
    ; Send, %a%
}

attak(Ary){
    For k, v in Ary
        act(v)
        Sleep, 200
}

buff(Ary){
    For k, v in Ary
        act(v)
        Sleep, 50
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


z:: 
    Sleep, 50
    keyUp(AryInstant)
    keyUp(AryAttack)
    Sleep, 50
    Pause, On

t::
    Pause, Off

; a:: 
;     keyUp(AryInstant)
;     keyUp(AryAttack)
;     Send, a
;     Pause, on
