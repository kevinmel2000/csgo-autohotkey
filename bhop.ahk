;F11 to toggle off, and on
;End key will completely turn it off
;This will NEVER be detected by VAC (Only if VALVe blacklists this program)

PgDn:: Hotkey, *~$Space, Toggle

End::
ExitApp

*~$Space::
Sleep 5
Loop
{
GetKeyState, SpaceState, Space, P
If SpaceState = U
break
Sleep 1
Send, {Blind}{Space}
}
Return
