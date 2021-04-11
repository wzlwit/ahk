AryKey := Array("3","2","1","w","4","r","4")
AryTm := [500,300,500,1000,1000,1000,1600]

; keyDict := [["3",1000], ["1",1000], ["w",1500], ["4",1500], ["r",1500], ["4",1500]]

AryUp := ["9","0"]

writeOut(str){
    ; OutputDebug, %str%
}


keyStrike(key,tm=100){
    writeOut(key)
    ; writeOut(tm)

    sleep,%tm%
    Send, %key%
    sleep,%tm%
} 


; keySend(dict){
keySend(keys,times,mBtn){
    For k, v in keys{
        keyStrike(v)
        Send, {%mBtn% Down}
        ; Sleep, 100
        writeOut(times[k])
        Sleep, % times[k]
        Send, {%mBtn% Up}

    }
}



Pause, On

q::
    Pause, Off
    keyStrike("2")
    Loop
        keySend(AryKey,AryTm,"0")
    Return


z::
    Pause, Off
    keyStrike("2")
    Loop
        keySend(AryKey,AryTm,"9")
    Return


g:: 
    For k, v in AryUp
        Send, {%v% Up}
        Sleep, 100
    Reload
    Return

F12::
    ExitApp