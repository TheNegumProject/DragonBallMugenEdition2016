;===============================================================================
;-------------------------------Comandos----------------------------------------
;===============================================================================
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
command.time = 30

command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------

[command]
name = "Shining Sword Attack"
command = D,DB,B,F,c
time = 30

[command]
name = "Change The Future"
command = D,DB,B,F,b
time = 30

[command]
name = "Burning Attack"
command = D,DB,B,F,a
time = 30

;-| Support Motions |--------------------------------------------------------

[command]
name = "Support 1"
command = x
time = 20

[command]
name = "Support 2"
command = D,x
time = 20

;-| Special Motions |------------------------------------------------------

[command]
name = "Masenko"
command = D,DB,B,c
time = 20

[command]
name = "Final Sword"
command = D,DF,F,c
time = 20

[command]
name = "Explosive Wave"
command = D,DB,B,b
time = 20

[command]
name = "Rapid Sword Stream"
command = D,DF,F,b
time = 20

[command]
name = "Burning Storm"
command = D,DB,B,a
time = 20

[command]
name = "Buster Cannon"
command = D,DF,F,a
time = 20

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------

[Command]
name = "Power Charge"
command = a+b
time = 1

[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
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
name = "s"
command = s
time = 1

;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1

[Statedef -1]
;===========================================================================
;---------------------------Basicos-----------------------------------------
;---------------------------------------------------------------------------
; Power Charge
[State -1, Power Charge]
type = ChangeState
value = 850
triggerall = power < 3000
triggerall = var(59) !=1
triggerall = command = "Power Charge"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Dash Fwd
[State -1, Dash Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Dash Back
[State -1, Dash Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Air Dash Fwd
[State -1, Air Dash Fwd]
type = ChangeState
value = 101
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Air Dash Back
[State -1, Air Dash Back]
type = ChangeState
value = 102
triggerall
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Ki Blast
[State -1, Ki Blast]
type = ChangeState
value = 520
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Zanzoken
[State -1, Zanzoken]
type = ChangeState
value = 530
triggerall = command = "y"
trigger1 = statetype != a
trigger1 = ctrl

;---------------------------------------------------------------------------
; Support Char 2
[State -1, Support Char 2]
type = ChangeState
value = 3010
Triggerall = power >= 1000
triggerall = command = "Support 2"
triggerall = numhelper <1
trigger1 = statetype != a
trigger1 = ctrl

;---------------------------------------------------------------------------
; Support Char 1
[State -1, Support Char 1]
type = ChangeState
value = 3000
Triggerall = power >= 1000
triggerall = command = "Support 1"
triggerall = numhelper <1
trigger1 = statetype != a
trigger1 = ctrl

;===========================================================================
;--------------------------------Ataques Supers-----------------------------
;===========================================================================
; Burning Attack
[State -1, Burning Attack]
type = ChangeState
Triggerall = power >= 1500
value = 1700
triggerall = command = "Burning Attack"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Change The Future
[State -1, Change The Future]
type = ChangeState
Triggerall = power >= 2000
value = 1800
triggerall = command = "Change The Future"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Shining Sword Attack
[State -1, Shining Sword Attack]
type = ChangeState
Triggerall = power >= 3000
value = 1900
triggerall = command = "Shining Sword Attack"
triggerall = statetype != A
trigger1 = ctrl

;===========================================================================
;--------------------------------Ataques Especiales-------------------------
;===========================================================================
; Buster Cannon
[State -1, Buster Cannon]
type = ChangeState
Triggerall = power >= 1000
value = 1000
triggerall = command = "Buster Cannon"
Triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Burning Storm
[State -1, Burning Storm]
type = ChangeState
Triggerall = power >= 1000
value = 1100
triggerall = command = "Burning Storm"
Triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Rapid Sword Stream
[State -1, Rapid Sword Stream]
type = ChangeState
Triggerall = power >= 1000
value = 1200
triggerall = command = "Rapid Sword Stream"
Triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Explosive Wave
[State -1, Explosive Wave]
type = ChangeState
Triggerall = power >= 1500
value = 1300
triggerall = command = "Explosive Wave"
Triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Final Sword
[State -1, Final Sword]
type = ChangeState
Triggerall = power >= 1000
value = 1400
triggerall = command = "Final Sword"
Triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Masenko
[State -1, Masenko]
type = ChangeState
Triggerall = power >= 1000
value = 1500
triggerall = command = "Masenko"
Triggerall = statetype != A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
