#NoEnv
#SingleInstance force
SendMode Input

ScriptActive = 1

FixAmount = 0.00000000000000000001


RecoilFix(amount) 
{ 
DllCall("mouse_event",uint,1,int,x,int,amount,uint ,0,int,0) 
}


IfWinActive, Call of Duty 4
{
~Lbutton::
If ScriptActive = 1
{
RecoilFix(FixAmount)
Loop
{
GetKeyState, state, Lbutton, P
if state=U
break
Sendinput {Click down}
Sleep 20
Sendinput {Click up}
Sleep 20
RecoilFix(FixAmount)
}
}
return


;Pauses AutoHotKey Script.

~F6::
If ScriptActive = 1
{
ScriptActive = 0
SoundBeep, 400, 400
}
else if ScriptActive = 0
{
ScriptActive = 1
SoundBeep, 1000, 100
SoundBeep, 1000, 100
}
return


~NumpadAdd::
++FixAmount
SoundBeep, 700, 100
SoundBeep, 700, 100
clipboard = %FixAmount%
return


~NumpadSub::
--FixAmount
SoundBeep, 700, 100
clipboard = %FixAmount%
return

~NumpadDiv::
FixAmount-=0.1
SoundBeep, 600, 100
clipboard = %FixAmount%
return

~NumpadMult::
FixAmount+=0.1
SoundBeep, 600, 100
SoundBeep, 600, 100
clipboard = %FixAmount%
return
}

;M9 = FixAmount 1
;G3 = FixAmount 0.700000