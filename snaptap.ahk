; This script allows switching between 'a' and 'd' without stopping the player
; and prioritizes the latest key press

; Variables to track key states
isAPressed := false
isDPressed := false

; When 'a' is pressed
$a::
{
    isAPressed := true
    if (isDPressed)
    {
        ; If 'd' is also pressed, release 'd' and send 'a'
        Send, {d up}{a down}
    }
    else
    {
        ; Otherwise, send 'a'
        Send, {a down}
    }
    return
}

; When 'a' is released
$a up::
{
    isAPressed := false
    Send, {a up}  ; Release 'a'
    if (isDPressed)
    {
        ; If 'd' is still pressed, send 'd'
        Send, {d down}
    }
    return
}

; When 'd' is pressed
$d::
{
    isDPressed := true
    if (isAPressed)
    {
        ; If 'a' is also pressed, release 'a' and send 'd'
        Send, {a up}{d down}
    }
    else
    {
        ; Otherwise, send 'd'
        Send, {d down}
    }
    return
}

; When 'd' is released
$d up::
{
    isDPressed := false
    Send, {d up}  ; Release 'd'
    if (isAPressed)
    {
        ; If 'a' is still pressed, send 'a'
        Send, {a down}
    }
    return
}
