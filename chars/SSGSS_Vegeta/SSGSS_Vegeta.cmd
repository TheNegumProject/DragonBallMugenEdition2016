;   slash (/) - means the key must be held down
;   tilde (~) - to detect key releases
;   dollar ($) - Direction-only: detect as 4-way
;   plus (+) - Buttons only: simultaneous press
;   greater-than (>) - means there must be no other keys pressed or released
;                      between the previous and the current symbol.
;-| Button Remapping |-----------------------------------------------------
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
command.time = 15
command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------

;-| Special Motions |------------------------------------------------------
[Command]
name = "Super"
command = ~D,DF,F, z
time = 20

[Command]
name = "Super2"
command = ~B,F, z
time = 20

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Statedef -1]

[State -1, AI ON] ; Turn the AI on when
Type = VarSet
TriggerAll = Var(59) < 1; it is not on yet and
TriggerAll = RoundState=2 ; the fight has started and is not over yet and
Trigger1 = AILevel>0 ; the computer is playing the character
v = 59
value= 1 ; value of 1 will mean the AI is on
Ignorehitpause=1

[State -1, AI OFF] ; Turn the AI off when
Type=VarSet
Trigger1=var(59)>0 ; it is on and
Trigger1=RoundState!=2 ; the round is not started yet or is already over
Trigger2=!IsHelper ; OR if we are a player, but
Trigger2=AILevel=0 ; the computer is not in control
v=59
value=0 ; value of 0 will mean the AI is off. values other than 0 and 1 are not used in this example, we have only one AI mode, the normal one.
Ignorehitpause=1

[State -1]
Type=VarSet
Trigger1=1
var(50)=(AILevel=1)*5+(AILevel=2)*10+(AILevel=3)*20+(AILevel=4)*40+(AILevel=5)*60+(AILevel=6)*90+ (AILevel=7)*150+(AILevel=8)*300

[State -1]
Type=Changestate
Triggerall=Inguarddist; Guard when in guard distance
Triggerall=var(59)>0; and the AI is on
Triggerall=ctrl; and we have control
Trigger1 = random< (var(50)*2+(AiLevel>=3)*30); chance is higher than for attacking, but not by too much.
value=120

[State -1]; The engine will still guard by through pressing the back button, we need to disable that.
Type=Assertspecial
Triggerall=StateNo!=[120,160]
Trigger1=var(59)>0
flag=noairguard
flag2=nocrouchguard
flag3=nostandguard

;===================================================;
;                 ULTIMATE MOVES                    ;
;===================================================;

;===================================================;
;                   SUPER MOVES                     ;
;===================================================;
; Supers
[State -1, Power Charge]
type = ChangeState
value = ifelse(statetype = A, 1200,1000)
triggerall = command = "Super"
triggerall = power >=2000
trigger1 = ctrl

; Supers 2
[State -1, Power Charge]
type = ChangeState
value = 1100
triggerall = command = "Super2"
triggerall = power >=2000
triggerall = statetype !=A
trigger1 = ctrl
;===================================================;
;                 SPECIAL MOVES                     ;
;===================================================;

;Power Charge
[State -1, Power Charge]
type = ChangeState
value = 900
triggerall = power!=powermax
triggerall = command = "x" && command = "y"
triggerall = statetype != A
trigger1 = ctrl

;===================================================;
;                  NORMAL MOVES                     ;
;===================================================;
; Dash Punch
[State -1, Auto Combo X]
type = ChangeState
value = 260
triggerall = command = "x"
triggerall = stateno = 100
trigger1 = ctrl

; Dash Kick
[State -1, Auto Combo Y]
type = ChangeState
value = 350
triggerall = command = "y"
triggerall = stateno = 100
trigger1 = ctrl

; Punch
[State -1, Auto Combo X]
type = ChangeState
value = ifelse(statetype = A,220,ifelse(statetype=C && command = "holddown",210,200))
triggerall = command = "x"
trigger1 = ctrl

; Kick
[State -1, Auto Combo Y]
type = ChangeState
value = ifelse(statetype = A,320,ifelse(statetype=C && command = "holddown",310,300))
triggerall = command = "y"
trigger1 = ctrl

; Special
[State -1, Auto Combo Z]
type = ChangeState
value = ifelse(statetype = A,440,ifelse(statetype=C && command = "holddown",425,400))
triggerall = command = "z"
trigger1 = ctrl

;===================================================;
;           MISCELLANEOUS MOVES                     ;
;===================================================;
; Run Forward
[State -1, Run Fwd]
type = ChangeState
value = ifelse(statetype = A, 101,100)
trigger1 = command = "FF"
trigger1 = ctrl

; Run Backward
[State -1, Run Back]
type = ChangeState
value = ifelse(statetype = A, 106,105)
trigger1 = command = "BB"
trigger1 = ctrl
;===================================================;
;                       A.I.                        ;
;===================================================;
[State 0, VarRandom]
type = VarRandom
trigger1 = p2bodydist x < 20 && enemy,movetype !=H
v = 55
range = 0,100

;Combo Launcher
[State -1, Combo 1]
Type=Changestate
triggerall = var(59)>0
Triggerall= Statetype =A
Triggerall=AILevel>=6
trigger1 = stateno = 370 && movehit
value = ifelse(life>500,270,380)

;Combo Launcher
[State -1, Combo 1]
Type=Changestate
triggerall = var(59)>0
Triggerall = Statetype =A
Triggerall = AILevel>=6
Triggerall = Life < 500
trigger1 = stateno = 380 && movehit
value = 390

;Combo 1 A
[State -1, Combo 1]
Type=Changestate
triggerall = var(59)>0 && var(55)>=0 && var(55)<=25
triggerall = p2bodydist x < 20 && p2movetype !=H
Triggerall= Statetype !=A
Triggerall=AILevel>=6
trigger1 = ctrl
value = 200

;Combo 1 B
[State -1, Combo 1]
Type=Changestate
triggerall = var(59)>0 && var(55)>=0 && var(55)<=25
Triggerall= Statetype !=A
Triggerall=AILevel>=6
trigger1 = stateno = 200 && movehit
value = 230

;Combo 1 C
[State -1, Combo 1]
Type=Changestate
triggerall = var(59)>0 && var(55)>=0 && var(55)<=25
Triggerall= Statetype !=A
Triggerall=AILevel>=6
trigger1 = stateno = 230 && movehit
value = 240

;Combo Finisher 1
[State -1, Combo Finisher 1]
Type=Changestate
triggerall = var(59)>0 && var(55)>=0
Triggerall= Statetype !=A
Triggerall=AILevel>=6
trigger1 = stateno = 240 && movehit
value = 250

;Combo Punch - Kick
[State -1, Combo Punch - Kick]
Type=Changestate
triggerall = var(59)>0 && var(55)>=0 && var(55)<=25
triggerall = p2bodydist x < 20 && p2movetype !=H
Triggerall= Statetype !=A
Triggerall=AILevel>=6
trigger1 = stateno = 240 && movehit
value = 330

;Combo 2 D
[State -1, Combo 2]
Type=Changestate
triggerall = var(59)>0 && var(55)>=0 && var(55)<=25
triggerall = p2bodydist x < 20
Triggerall= Statetype !=A
Triggerall=AILevel>=6
trigger1 = stateno = 330 && movehit
value = 370

;Combo Finisher 2
[State -1, Combo Finisher 2]
Type=Changestate
triggerall = var(59)>0 && var(55)>=0
triggerall = p2bodydist x < 20 && p2movetype !=H
Triggerall= Statetype !=A
Triggerall=AILevel>=6
trigger1 = stateno = 330 && movehit
value = 340

;Combo 2 A
[State -1, Combo 2]
Type=Changestate
triggerall = var(59)>0 && var(55)>=26 && var(55)<=50
triggerall = p2bodydist x < 40 && p2movetype !=H
Triggerall= Statetype !=A
Triggerall=AILevel>=6
trigger1 = ctrl
value = 200

;Combo 2 B
[State -1, Combo 2]
Type=Changestate
triggerall = var(59)>0 && var(55)>=26 && var(55)<=50
triggerall = p2bodydist x < 20
Triggerall= Statetype !=A
Triggerall=AILevel>=6
trigger1 = stateno = 200 && movehit
value = 230

;Combo 2 C
[State -1, Combo 2]
Type=Changestate
triggerall = var(59)>0 && var(55)>=26 && var(55)<=50
triggerall = p2bodydist x < 20
Triggerall= Statetype !=A
Triggerall=AILevel>=6
trigger1 = stateno = 230 && movehit
value = 360

;Combo 2 D
[State -1, Combo 2]
Type=Changestate
triggerall = var(59)>0 && var(55)>=26 && var(55)<=50
triggerall = p2bodydist x < 20
Triggerall= Statetype !=A
Triggerall=AILevel>=6
trigger1 = stateno = 360 && movehit
value = 370

;Combo 2 F
[State -1, Combo 2]
Type=Changestate
triggerall = var(59)>0 && var(55)>=26 && var(55)<=50
Triggerall= Statetype !=A
Triggerall=AILevel>=6
trigger1 = stateno = 370 && movehit
value = ifelse(random<500,270,380)

;Combo 3 A
[State -1, Combo 1]
Type=Changestate
triggerall = var(59)>0 && var(55)>=51 && var(55)<=75
triggerall = p2bodydist x < 40 && p2movetype !=H
Triggerall= Statetype !=A
Triggerall= AILevel>=6
trigger1 = ctrl
value = 300

;Combo 3 A
[State -1, Combo 1]
Type=Changestate
triggerall = var(59)>0 && var(55)>=51 && var(55)<=75
triggerall = p2bodydist x < 40
Triggerall= Statetype !=A
Triggerall= AILevel>=6
trigger1 = stateno = 300 && movehit
value = 330

;Combo 3 A
[State -1, Combo 1]
Type=Changestate
triggerall = var(59)>0 && var(55)>=51 && var(55)<=75
triggerall = p2bodydist x < 40
Triggerall= Statetype !=A
Triggerall= AILevel>=6
trigger1 = stateno = 330 && movehit
value = 340

; Ultimate Finisher
[State -1, Combo 1]
Type=Changestate
triggerall = var(59)>0
Triggerall = life < 250
Triggerall = Power = 3000
triggerall = p2bodydist x < 40
Triggerall= Statetype =A
Triggerall= AILevel>=8
trigger1 = stateno = 380 && movehit
value = 1400