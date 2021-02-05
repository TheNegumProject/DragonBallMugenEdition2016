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
; Default value for the "time" parameter of a Command. Minimum 1.

command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.


;-| Super Motions |--------------------------------------------------------

[command]
name = "SUPER 3"
command = D,DB,B,F,c
time = 30

[command]
name = "SUPER 2"
command = D,DB,B,F,b
time = 30

[command]
name = "SUPER 1"
command = D,DB,B,F,a
time = 30

;-| Special Motions |--------------------------------------------------------

[command]
name = "SPECIAL6"
command = D,DB,B,c
time = 20

[command]
name = "SPECIAL5"
command = D,DF,F,c
time = 20

[command]
name = "SPECIAL4"
command = D,DB,B,b
time = 20

[command]
name = "SPECIAL3"
command = D,DF,F,b
time = 20

[command]
name = "SPECIAL2"
command = D,DB,B,a
time = 20

[command]
name = "SPECIAL1"
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
name = "recovery" ;Required (do not remove)
command = $U
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

;---------- Comandos de la Inteligencia Artificial-----------------
; Comandos activadores
[Command]
name = "AI Prueba"
command = y+z ; con el botón A+B activamos la AI
time = 1

[Command]
name = "AI desactivado"
command = b+c ; Con el boton B+C desactivamos la AI
time = 1

;---------- comandos para que la PC active la IA -------------------------
[command]
name = "AI1"
command = b,b,b,b,b,b,b,b,b,b,b
time = 1

[command]
name = "AI2"
command = b,c,b,c,b,c,b,c,b,c,b,c
time = 1

[command]
name = "AI3"
command = b,c,b,c,b,c,b,c,b,c,b
time = 1

[command]
name = "AI4"
command = a,b,a,b,a,b,a,b,a,b,a
time = 1

[command]
name = "AI5"
command = b,a,b,a,b,a,b,a,b,a,b
time = 1

[command]
name = "AI6"
command = b,b,b,b,z,b,z,b,z,z,z
time = 1

[command]
name = "AI7"
command = b,x,b,b,x,b,b,b,b,b,x
time = 1

[command]
name = "AI8"
command = b,y,b,b,b,y,b,b,b,b,y
time = 1

[command]
name = "AI9"
command = b,b,b,b,s,z,y,x,c,b,a
time = 1

[command]
name = "AI10"
command = z,b,x,y,b,b,c,b,b,b,a
time = 1

[command]
name = "AI11"
command = b,x,b,b,x,b,b,b,b,b,z
time = 1

[command]
name = "AI12"
command = b,y,b,s,b,y,b,b,b,b,y
time = 1

[command]
name = "AI13"
command = b,b,b,z,s,z,y,x,c,b,a
time = 1

[command]
name = "AI14"
command = z,b,x,y,b,b,c,b,b,c,a
time = 1

[Statedef -1]


;===========================================================================
;-------------------------Especiales----------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Super Energy Blast
[State -1, Super Energy Blast]
type = ChangeState
Triggerall = power >= 1000
value = 1500
triggerall = command = "SPECIAL6"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; God of Destruction's Anger
[State -1, God of Destruction's Anger]
type = ChangeState
Triggerall = power >= 1000
value = 1400
triggerall = command = "SPECIAL5"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; God of Destruction's Kick
[State -1, God of Destruction's Kick]
type = ChangeState
Triggerall = power >= 2000
value = 1300
triggerall = command = "SPECIAL4"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; God of Destruction's Rampage
[State -1, God of Destruction's Rampage]
type = ChangeState
Triggerall = power >= 2500
value = 1200
triggerall = command = "SPECIAL3"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Golpe de Inconciencia
[State -1, Golpe de Inconciencia]
type = ChangeState
Triggerall = power >= 1000
value = 1100
triggerall = command = "SPECIAL2"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Headshot
[State -1, Headshot]
type = ChangeState
Triggerall = power >= 1000
value = 1000
triggerall = command = "SPECIAL1"
trigger1 = statetype != A
trigger1 = ctrl


;===========================================================================
;----------------------------Supers-----------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; God of Destruction's Wrath
[State -1, God of Destruction's Wrath]
type = ChangeState
Triggerall = power >= 4000
value = 2000
triggerall = command = "SUPER 1"
Triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; AfterImage Strike
[State -1, AfterImage Strike]
type = ChangeState
triggerall = var(3) = 0
Triggerall = power >= 2000
value = 2100
triggerall = command = "SUPER 2"
Triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Sphere Of Destruction
[State -1, Sphere Of Destruction]
type = ChangeState
Triggerall = power >= 6000
value = 3000
triggerall = command = "SUPER 3"
Triggerall = statetype != A
trigger1 = ctrl

;===========================================================================
;---------------------------Basicos-----------------------------------------
;---------------------------------------------------------------------------
; Correr Adelante
[State -1, Correr Adelante]
type = ChangeState
triggerall = stateno != 60
triggerall = stateno != 70
value = 60
trigger1 = command = "FF"
trigger1 = statetype != C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Correr Atras
[State -1, Correr Atras]
type = ChangeState
triggerall = stateno != 60
triggerall = stateno != 70
value = 70
trigger1 = command = "BB"
trigger1 = statetype != C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Super Jump
[State -1, Super jump]
type = ChangeState
value = 900
triggerall = var(59) != 1
trigger1 = command = "holdup"
trigger1 = statetype = C
trigger1 = ctrl
trigger1 = statetype != A
trigger2 = stateno = 420 && movecontact
trigger2 = command = "holdup"

;---------------------------------------------------------------------------
; Support Char
[State -1, Support Char]
type = ChangeState
value = 4500
triggerall = numhelper <1
triggerall = power >= 1000
triggerall = command = "x"
trigger1 = statetype != a
trigger1 = ctrl

;---------------------------------------------------------------------------
; Zanzoken
[State -1, Zanzoken]
type = ChangeState
value = 630
triggerall = command = "y"
trigger1 = statetype != a
trigger1 = ctrl

;---------------------------------------------------------------------------
; Ki Blast
[State -1, Ki Blast]
type = ChangeState
value = 640
triggerall = power >= 200
triggerall = command = "z"
Triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Ki Blast - Aire
[State -1, Ki Blast Aire]
type = ChangeState
value = 650
triggerall = power >= 200
triggerall = command = "z"
Triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Power Charge
[State -1, Power Charge]
type = ChangeState
Triggerall = power < 6000
value = 500
triggerall = command = "hold_s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
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
triggerall = var(59) != 1
trigger1 = command = "b"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = command = "b"
trigger2 = stateno = 200
trigger2 = movecontact
;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = var(59) != 1
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = command = "c"
trigger2 = stateno = 210
trigger2 = movecontact

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = command = "a"
trigger2 = stateno = 200
trigger2 = movecontact

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = command = "b"
trigger2 = stateno = 200
trigger2 = movecontact

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = var(59) != 1
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno !=420
trigger2 = command = "c"
trigger2 = stateno = [200,450]
trigger2 = movecontact

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59) != 1
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = var(59) != 1
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600
trigger2 = MoveContact
trigger3 = StateNo = 630
trigger3 = MoveContact

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = var(59) != 1
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = [600, 640]
trigger2 = StateNo != 620
trigger2 = MoveContact

;-------------------------------------------------------------------------------
; Activar IA
;-------------------------------------------------------------------------------
[State -2, Activar IA]
type = VarSet
trigger1 = (command = "AI1") ||(Command = "AI2") || (Command = "AI3") || (Command = "AI4") || (Command = "AI5")
trigger2 = (Command = "AI6") || (Command = "AI7") || (Command = "AI8") || (Command = "AI9") || (Command = "AI10")
trigger4 = (Command = "AI11") || (Command = "AI12") || (Command = "AI13") || (Command = "AI14")
var(9) = 1
