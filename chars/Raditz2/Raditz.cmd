; The CMD file.

;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
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
command.buffer.time = 1

;-| Hyper Motions |--------------------------------------------------------

[Command]
name = "SaiyanFury"
command = ~D, DF, F, D, DF, y+b
time = 25

;-| Super Motions |--------------------------------------------------------

[Command]
name = "WeeklySpecial"
command = ~D, DF, F, D, DF, x
time = 20

[Command]
name = "WeeklySpecial"
command = ~D, DF, F, D, DF, y
time = 20


[Command]
name = "SaturdayCrash"
command = ~D, DB, B, D, DB, x
time = 20

[Command]
name = "SaturdayCrash"
command = ~D, DB, B, D, DB, y
time = 20


[Command]
name = "DynamiteMonday"
command = ~D, DB, B, D, DB, a
time = 20

[Command]
name = "DynamiteMonday"
command = ~D, DB, B, D, DB, b
time = 20

[Command]
name = "DoubleSunday"
command = ~D, DF, F, D, DF, a
time = 20

[Command]
name = "DoubleSunday"
command = ~D, DF, F, D, DF, b
time = 20


;-| Special Motions |------------------------------------------------------

[Command]
name = "Fireball_x"
command = ~D, DF, F, x
time = 15

[Command]
name = "Fireball_y"
command = ~D, DF, F, y
time = 15


[Command]
name = "KiBlast_a"
command = ~D, DB, B, a
time = 15

[Command]
name = "KiBlast_b"
command = ~D, DB, B, b
time = 15


[Command]
name = "HeadButt_a"
command = ~D, DF, F, a
time = 15

[Command]
name = "HeadButt_b"
command = ~D, DF, F, b
time = 15


[Command]
name = "Punishement_a"
command = ~F, D, DF, a
time = 15

[Command]
name = "Punishement_b"
command = ~F, D, DF, b
time = 15


[Command]
name = "ElbowRush_x"
command = ~D, DB, B, x
time = 15

[Command]
name = "ElbowRush_y"
command = ~D, DB, B, y
time = 15


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 15

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 15

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
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

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.  
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]
;===========================================================================
;---------------------------------------------------------------------------
; Saiyan Fury
[State -1, Saiyan Fury]
type = ChangeState
triggerall = (var(36)=0)
triggerall = statetype != A
triggerall = command = "SaiyanFury"
triggerall = power >= 3000
triggerall = var(58)
trigger1 = (ctrl || (stateno = [100, 101]))
trigger2 = (Stateno = [200,445]) && (MoveContact)
trigger3 = (Stateno = 1000) && (AnimElem =3,>3) && var(34)
trigger4 = (Stateno = 1100) && (Anim =1105) && var(34)
trigger5 = (Stateno = 1220) && (MoveContact)
trigger6 = (Stateno = 1410) && (MoveContact)
value = 3000

;===========================================================================
;---------------------------------------------------------------------------
; Weekly Special
[State -1, Weekly Special]
type = ChangeState
triggerall = (var(36)=0)
triggerall = statetype != A
triggerall = command = "WeeklySpecial"
triggerall = power >= 2000
trigger1 = (ctrl || (stateno = [100, 101]))
trigger2 = (Stateno = [200,445]) && (MoveContact)
trigger3 = (Stateno = 1000) && (AnimElem =3,>3) && var(34)
trigger4 = (Stateno = 1100) && (Anim =1105) && var(34)
trigger5 = (Stateno = 1220) && (MoveContact)
trigger6 = (Stateno = 1410) && (MoveContact)
value = 2000

;---------------------------------------------------------------------------
; Saturday Crash
[State -1, Saturday Crash]
type = ChangeState
triggerall = (var(36)=0)
triggerall = statetype != A
triggerall = command = "SaturdayCrash"
triggerall = power >= 1000
trigger1 = (ctrl || (stateno = [100, 101]))
trigger2 = (Stateno = [200,445]) && (MoveContact)
trigger3 = (Stateno = 1000) && (AnimElem =3,>3) && var(34)
trigger4 = (Stateno = 1100) && (Anim =1105) && var(34)
trigger5 = (Stateno = 1220) && (MoveContact)
trigger6 = (Stateno = 1410) && (MoveContact)
value = 2200

;---------------------------------------------------------------------------
; Dynamite Monday
[State -1, Dynamite Monday]
type = ChangeState
triggerall = (var(36)=0)
triggerall = statetype != A
triggerall = command = "DynamiteMonday"
triggerall = power >= 1000
trigger1 = (ctrl || (stateno = [100, 101]))
trigger2 = (Stateno = [200,445]) && (MoveContact)
trigger3 = (Stateno = 1000) && (AnimElem =3,>3) && var(34)
trigger4 = (Stateno = 1100) && (Anim =1105) && var(34)
trigger5 = (Stateno = 1220) && (MoveContact)
trigger6 = (Stateno = 1410) && (MoveContact)
value = 2600

;---------------------------------------------------------------------------
; Double Sunday
[State -1, Double Sunday]
type = ChangeState
triggerall = (var(36)=0)
triggerall = statetype != A
triggerall = command = "DoubleSunday"
triggerall = power >= 2000
trigger1 = (ctrl || (stateno = [100, 101]))
trigger2 = (Stateno = [200,445]) && (MoveContact)
trigger3 = (Stateno = 1000) && (AnimElem =3,>3) && var(34)
trigger4 = (Stateno = 1100) && (Anim =1105) && var(34)
trigger5 = (Stateno = 1220) && (MoveContact)
trigger6 = (Stateno = 1410) && (MoveContact)
value = 2400

;===========================================================================
;---------------------------------------------------------------------------
; Fireball
[State -1, Fireball]
type = ChangeState
triggerall = (var(36)=0)
triggerall = statetype != A
triggerall = (NumHelper(1010)<1)
triggerall = command = "Fireball_x" || command = "Fireball_y"
trigger1 = (ctrl || (stateno = [100, 101]))
trigger2 = (Stateno = [200,445]) && (MoveContact)
value = 1000

; Punishement
[State -1, Punishement]
type = ChangeState
triggerall = (var(36)=0)
triggerall = statetype != A
triggerall = command = "Punishement_a" || command = "Punishement_b"
trigger1 = (ctrl || (stateno = [100, 101]))
trigger2 = (Stateno = [200,445]) && (MoveContact)
value = 1300

; Ki Blast
[State -1, Ki Blast]
type = ChangeState
triggerall = (var(36)=0)
triggerall = statetype != A
triggerall = command = "KiBlast_a"|| command = "KiBlast_b"
trigger1 = (ctrl || (stateno = [100, 101]))
trigger2 = (Stateno = [200,445]) && (MoveContact)
value = 1100

; Head Butt
[State -1, Head Butt]
type = ChangeState
triggerall = (var(36)=0)
triggerall = statetype != A
triggerall = var(27) = 0
triggerall = command = "HeadButt_a" || command = "HeadButt_b"
trigger1 = (ctrl || (stateno = [100, 101]))
trigger2 = (Stateno = [200,445]) && (MoveContact)
value = 1200

; Elbow Rush
[State -1, Elbow Rush]
type = ChangeState
triggerall = (var(36)=0)
triggerall = statetype != A
triggerall = var(28) = 0
triggerall = command = "ElbowRush_x" || command = "ElbowRush_y"
trigger1 = (ctrl || (stateno = [100, 101]))
trigger2 = (Stateno = [200,445]) && (MoveContact)
value = 1400


;===========================================================================
;---------------------------------------------------------------------------
; Z-Counter
[State -1, Z-Counter]
type = ChangeState
triggerall = (var(36)=0)
triggerall = power >= 500
triggerall = stateno = [150,153]
triggerall = statetype != A
trigger1 = command = "z"
value = 750

; Power Charge
[State -1, Power Charge]
type = ChangeState
triggerall = (var(36)=0)
triggerall = power < 3000
triggerall = statetype = S
trigger1 = command = "hold_c"
trigger1 = ctrl
value = 900

; Z-Assist
[State -1, Z-Assist]
type = ChangeState
triggerall = (var(36)=0)
triggerall = power >= 500
triggerall = stateno != [150,153]
triggerall = statetype != A
triggerall = command != "holdfwd"
triggerall = var(8) = 540
triggerall = P2Bodydist x > 44
trigger1 = ctrl
trigger1 = command = "z"
value = 950

;===========================================================================
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
triggerall = (var(36)=0)
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
value = 100

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
triggerall = (var(36)=0)
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
value = 105

;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
triggerall = (var(36)=0)
triggerall  = command = "holdfwd" && command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = stateno != [150,153]
trigger1 = (p2statetype = S) || (p2statetype = C)
value = 800


;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
triggerall = (var(36)=0)
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl
value = 195

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
triggerall = (var(36)=0)
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2Bodydist x >= 16
trigger1 = (statetype = S) && ctrl
trigger2 = (statetype != A) && MoveContact
trigger2 = stateno = 205 || stateno = 235
value = 200

;---------------------------------------------------------------------------
; Stand Punch Close
[State -1, Stand Punch Close]
type = ChangeState
triggerall = (var(36)=0)
triggerall = command = "x" || command = "y"
triggerall = command != "holddown"
triggerall = P2Bodydist x < 16
trigger1 = (statetype = S) && ctrl
trigger2 = (statetype != A) && MoveContact
trigger2 = stateno = 235
value = 205

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
triggerall = (var(36)=0)
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2Bodydist x >= 16
trigger1 = (statetype = S) && ctrl
trigger2 = (statetype != A) && MoveContact
trigger2 = stateno = 200 || stateno = 230
trigger3 = (statetype != A) && MoveContact
trigger3 = stateno = 205 || stateno = 235
trigger4 = (statetype != A) && MoveContact
trigger4 = stateno = 400 || stateno = 430
value = 210

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
triggerall = (var(36)=0)
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2Bodydist x >= 16
trigger1 = (statetype = S) && ctrl
trigger2 = (statetype != A) && MoveContact
trigger2 = stateno = 205 || stateno = 235
value = 230

;---------------------------------------------------------------------------
; Stand Kick Close
[State -1, Stand Kick Close]
type = ChangeState
triggerall = (var(36)=0)
triggerall = command = "a" || command = "b"
triggerall = command != "holddown"
triggerall = P2Bodydist x < 16
trigger1 = (statetype = S) && ctrl
trigger2 = (statetype != A) && MoveContact
trigger2 = stateno = 205
value = 235

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick Close]
type = ChangeState
triggerall = (var(36)=0)
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2Bodydist x >= 16
trigger1 = (statetype = S) && ctrl
trigger2 = (statetype != A) && MoveContact
trigger2 = stateno = 200 || stateno = 230
trigger3 = (statetype != A) && MoveContact
trigger3 = stateno = 205 || stateno = 235
trigger4 = (statetype != A) && MoveContact
trigger4 = stateno = 400 || stateno = 430
value = 240

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
triggerall = (var(36)=0)
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = (statetype = C) &&  ctrl
trigger2 = (statetype != A) && MoveContact
trigger2 = stateno = 205 || stateno = 235
value = 400

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
triggerall = (var(36)=0)
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = P2Bodydist x >= 16
trigger1 = (statetype = C) &&  ctrl
trigger2 = (statetype != A) && MoveContact
trigger2 = stateno = 200 || stateno = 230
trigger3 = (statetype != A) && MoveContact
trigger3 = stateno = 205 || stateno = 235
trigger4 = (statetype != A) && MoveContact
trigger4 = stateno = 400 || stateno = 430
value = 410

;---------------------------------------------------------------------------
; Crouching Strong Punch Close
[State -1, Crouching Strong Punch Close]
type = ChangeState
triggerall = (var(36)=0)
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = P2Bodydist x < 16
trigger1 = (statetype = C) && ctrl
trigger2 = (statetype != A) && MoveContact
trigger2 = stateno = 200 || stateno = 230
trigger3 = (statetype != A) && MoveContact
trigger3 = stateno = 205 || stateno = 235
trigger4 = (statetype != A) && MoveContact
trigger4 = stateno = 400 || stateno = 430
value = 415

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
triggerall = (var(36)=0)
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = (statetype = C) &&  ctrl
trigger2 = (statetype != A) && MoveContact
trigger2 = stateno = 205 || stateno = 235
value = 430

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
triggerall = (var(36)=0)
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = P2Bodydist x >= 16
trigger1 = (statetype = C) &&  ctrl
trigger2 = (statetype != A) && MoveContact
trigger2 = stateno = 200 || stateno = 230
trigger3 = (statetype != A) && MoveContact
trigger3 = stateno = 205 || stateno = 235
trigger4 = (statetype != A) && MoveContact
trigger4 = stateno = 400 || stateno = 430
value = 440

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick Close]
type = ChangeState
triggerall = (var(36)=0)
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = P2Bodydist x < 16
trigger1 = (statetype = C) && ctrl
trigger2 = (statetype != A) && MoveContact
trigger2 = stateno = 200 || stateno = 230
trigger3 = (statetype != A) && MoveContact
trigger3 = stateno = 205 || stateno = 235
trigger4 = (statetype != A) && MoveContact
trigger4 = stateno = 400 || stateno = 430
value = 445

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
triggerall = (var(36)=0)
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact
value = 600

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
triggerall = (var(36)=0)
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact
value = 610

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
triggerall = (var(36)=0)
triggerall = command = "a"
triggerall = statetype = A
triggerall = Vel x = 0
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact
value = 630

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
triggerall = (var(36)=0)
triggerall = command = "b"
triggerall = statetype = A
triggerall = Vel x = 0
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact
value = 640

;---------------------------------------------------------------------------
; Jump Velocity Kick
[State -1, Jump Velocity Kick]
type = ChangeState
triggerall = (var(36)=0)
triggerall = Vel x != 0
triggerall = command = "a" || command = "b"
trigger1 = statetype = A
trigger1 = ctrl
value = 650

;---------------------------------------------------------------------------
; Super Jump after launcher
[State -1, Super Jump Launcher]
type = ChangeState
triggerall = (var(36)=0)
triggerall = command = "holdup"
triggerall = statetype != A
trigger1 = (stateno = 415) && animelemtime(4)>0 && MoveHit
trigger2 = (stateno = 445) && animelemtime(4)>0 && MoveHit
value = 700

;------------------------------------------------------------------------------
;===============================================================================
;=============================<  A.I  >=========================================
;===============================================================================

[State -1, AI Defense]
Type=Changestate
Triggerall=Inguarddist; Guard when in guard distance
Triggerall=var(36)>0; and the AI is on
Triggerall=ctrl; and we have control
Trigger1 = random < (var(35)*2+(AiLevel>=3)*30); chance is higher than for attacking, but not by too much.
value=120

[State -1, AI No Guard]; The engine will still guard by through pressing the back button, we need to disable that.
Type=Assertspecial
Triggerall=StateNo!=[120,160]
Trigger1=var(36)>0
flag=noairguard
flag2=nocrouchguard
flag3=nostandguard

[State -1, A.I Fall Recovery (Air)]
type = ChangeState
value = 5210
triggerall = (var(36)> 0) && NumEnemy
triggerall = RoundState = 2 && Alive
trigger1 = StateNo = 5050 && CanRecover
trigger1 = vel y > 0 && pos y < -20
trigger1 = Random < (var(35))

[State -1, A.I Fall Recovery (Ground)]
type = ChangeState
value = 5200
triggerall = (var(36)> 0) && NumEnemy
triggerall = RoundState = 2 && Alive
trigger1 = StateNo = 5050 && GetHitVar(fall.recover)
trigger1 = vel y > 0 && pos y >= -20
trigger1 = Random < (var(35)+ 15*(AILevel>=4))

[State -1, A.I jump]
type = ChangeState
value = 40
triggerall = (var(36)> 0) && NumEnemy &&(roundstate = 2)
triggerall = statetype!=A && ctrl
trigger1 = enemynear,movetype=A && (p2bodydist x = [50,120]) && enemynear,hitdefattr=SC,AT && random< (var(35))
trigger2 = (var(38)>0) && (p2bodydist x > 140) && random<(var(35)*(1.15 + 0.25*(AiLevel>=4)))
trigger3 = (P2StateType = L)  && (p2bodydist x = [20,75]) && random<(var(35)*(1.15 + 0.25*(AiLevel>=4)))

[State -1, A.I run]
type = changestate
value = 100
triggerall = (var(36)> 0) && numenemy
trigger1 = statetype = S && roundstate = 2 && ctrl && random < (var(35)*2)
trigger1 = (stateno != [100, 106]) && enemynear, movetype != A && p2bodydist x > 190

[State -1, A.I dash]
type = changestate
value = 105
triggerall = (var(36)> 0) && numenemy
triggerall = statetype = S && roundstate = 2 && ctrl
triggerall = (p2bodydist x = [0, 70]) && backedgebodydist > 80 && (stateno != [100, 106])
trigger1 = enemynear, movetype = A && random < (var(35)*2)
trigger2 = enemynear, stateno = 5120 && enemynear, animtime = -3 && random < (var(35))


[State -1, A.I taunt]
type = changestate
value = 195
triggerall = (var(36)> 0) && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = Life > 250
trigger1 = p2dist x > 160 && (enemynear, vel y > 0) && ctrl && random < (var(35)*.875 +0.125*(AiLevel<=5))
trigger1 = !(enemynear, ctrl) && (enemynear, movetype = H)


[State -1, A.I Power Charge]
type = ChangeState
value = 900
triggerall = (var(36)> 0) && NumEnemy
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl && (Power < 3000)
trigger1 = (P2StateNo != [900,902])
trigger1 = P2Movetype != A && (enemynear, vel x <= 0)
trigger1 = !InGuardDist && P2BodyDist x >= 180 && Random < (var(35)*.75)



[State -1, A.I Saiyan Fury]
type = ChangeState
triggerall = (var(36)> 0) && (roundstate = 2)
triggerall = (statetype != A) && (p2stateno != [120, 155])
triggerall = (prevstateno !=[2000,2095]) && (prevstateno !=2200)&& (prevstateno !=2400)&& (prevstateno !=[2600,2660])
triggerall = (stateno !=[2000,2095]) && (stateno !=2200)&& (stateno !=2400)&& (stateno !=[2600,2660])
triggerall = (p2bodydist y = [-10, 10]) && p2statetype != L
triggerall = (enemynear, vel x > -.25) && (EnemyNear, vel y >= 0) && P2Statetype !=A
triggerall = (p2bodydist x =[70,190]) && (power >= 3000) && (var(58))
trigger1 = (ctrl || (stateno = [100, 101])) && (Random < (var(35)*(1.05 + 0.15*(AiLevel>=5))))
trigger2 = (stateno = [200,445]) && (MoveHit) && (Random < (var(35)*(1.05 + 0.15*(AiLevel>=5))))
trigger3 = (stateno = 1000) && (AnimElem =4,>=0) && var(34) && (Random < (var(35)*(1.15 + 0.25*(AiLevel>=5))))
trigger4 = (stateno = 1100) && (Anim = 1105) && var(34) && (Random < (var(35)*(1.15 + 0.25*(AiLevel>=5))))
trigger5 = (stateno = 1220) && (movehit) && (Random < (var(35)*(1.15 + 0.25*(AiLevel>=5))))
trigger6 = (stateno = 1410) && (movehit) && (Random < (var(35)*(1.15 + 0.25*(AiLevel>=5))))
value = 3000




[State -1, A.I Weekly Special]
type = ChangeState
triggerall = (var(36)> 0) && (roundstate = 2)
triggerall = (statetype != A)
triggerall = (prevstateno !=[2000,2095]) && (prevstateno !=2200)&& (prevstateno !=2400)&& (prevstateno !=[2600,2660])
triggerall = (stateno !=[2000,2095]) && (stateno !=2200)&& (stateno !=2400)&& (stateno !=[2600,2660])
triggerall = (p2bodydist y = [-8, 8]) && (p2statetype != L) && P2Statetype !=A
triggerall = (enemynear, vel x > -.25) && (EnemyNear, vel y >= 0) && P2Movetype !=A
triggerall = (p2bodydist x = [90,184]) && (power >= 2000) && (var(22)=0)
trigger1 = (ctrl || (stateno = [100, 101])) && (Random < (var(35)*(0.95 - 0.25*(AiLevel>=5))))
trigger2 = (stateno = [200,445]) && (MoveContact) && (Random < (var(35)*(0.95 - 0.25*(AiLevel>=5))))
trigger3 = (stateno = 1000) && (AnimElem =4,>=0) && var(34) && (Random < (var(35)*(0.95 - 0.15*(AiLevel>=5))))
trigger4 = (stateno = 1100) && (Anim = 1105) && var(34) && (Random < (var(35)*(0.95 - 0.15*(AiLevel>=5))))
trigger5 = (stateno = 1220) && (movehit) && (Random < (var(35)*(0.95 - 0.15*(AiLevel>=5))))
trigger6 = (stateno = 1410) && (movehit) && (Random < (var(35)*(0.95 - 0.15*(AiLevel>=5))))
value = 2000

[State -1, A.I Double Sunday]
type = ChangeState
triggerall = (var(36)> 0) && (roundstate = 2)
triggerall = (statetype != A) && (p2stateno != [120, 155])
triggerall = (prevstateno !=[2000,2095]) && (prevstateno !=2200)&& (prevstateno !=2400)&& (prevstateno !=[2600,2660])
triggerall = (stateno !=[2000,2095]) && (stateno !=2200)&& (stateno !=2400)&& (stateno !=[2600,2660])
triggerall = (p2bodydist y = [-40, 20]) && p2statetype != L && P2statetype != C
triggerall = (enemynear, vel x > -2) && (EnemyNear, vel y >= -1.5) && P2Movetype !=A
triggerall = (p2bodydist x = [120, 214]) && (power >= 2000) && (var(22)=0)
trigger1 = (ctrl || (stateno = [100, 101])) && (Random < (var(35)*(0.95 - 0.25*(AiLevel>=5))))
trigger2 = (stateno = [200,445]) && (MoveContact) && (Random < (var(35)*(0.95 - 0.25*(AiLevel>=5))))
trigger3 = (stateno = 1000) && (AnimElem =4,>=0) && var(34) && (Random < (var(35)*(0.95 - 0.15*(AiLevel>=5))))
trigger4 = (stateno = 1100) && (Anim = 1105) && var(34) && (Random < (var(35)*(0.95 - 0.15*(AiLevel>=5))))
trigger5 = (stateno = 1220) && (movehit) && (Random < (var(35)*(0.95 - 0.15*(AiLevel>=5))))
trigger6 = (stateno = 1410) && (movehit) && (Random < (var(35)*(0.95 - 0.15*(AiLevel>=5))))
value = 2400


[State -1, A.I Saturday Crash]
type = ChangeState
triggerall = (var(36)> 0) && (roundstate = 2)
triggerall = (statetype != A) && (p2stateno != [120, 155])
triggerall = (prevstateno !=[2000,2095]) && (prevstateno !=2200)&& (prevstateno !=2400)&& (prevstateno !=[2600,2660])
triggerall = (stateno !=[2000,2095]) && (stateno !=2200)&& (stateno !=2400)&& (stateno !=[2600,2660])
triggerall = (p2bodydist y = [-20, 20]) && p2statetype != L && (P2StateNo!=5120)
triggerall = (enemynear, vel x > -.25) && (EnemyNear, vel y >= -.25) && P2Movetype !=A
triggerall = (p2bodydist x = [100,190]) && (power >= 1000) && (var(22)=0)
trigger1 = (ctrl || (stateno = [100, 101])) && (Random < (var(35)*(0.75 - 0.25*(AiLevel>=5))))
trigger2 = (stateno = [200,445]) && (MoveContact) && (Random < (var(35)*(0.75 - 0.25*(AiLevel>=5))))
trigger3 = (stateno = 1000) && (AnimElem =4,>=0) && var(34) && (Random < (var(35)*(0.75 - 0.15*(AiLevel>=5))))
trigger4 = (stateno = 1100) && (Anim = 1105) && var(34) && (Random < (var(35)*(0.75 - 0.15*(AiLevel>=5))))
trigger5 = (stateno = 1220) && (movehit) && (Random < (var(35)*(0.75 - 0.15*(AiLevel>=5))))
trigger6 = (stateno = 1410) && (movehit) && (Random < (var(35)*(0.75 - 0.15*(AiLevel>=5))))
value = 2200


[State -1, A.I Dynamite Monday]
type = ChangeState
triggerall = (var(36)> 0) && (roundstate = 2)
triggerall = (statetype != A) && (p2stateno != [120, 155])
triggerall = (prevstateno !=[2000,2095]) && (prevstateno !=2200)&& (prevstateno !=2400)&& (prevstateno !=[2600,2660])
triggerall = (stateno !=[2000,2095]) && (stateno !=2200)&& (stateno !=2400)&& (stateno !=[2600,2660])
triggerall = (p2bodydist y = [-10, 10]) && p2statetype != L && P2Statetype !=A
triggerall = (enemynear, vel x > -.05) && (EnemyNear, vel y >= 0) && P2Movetype !=A
triggerall = (p2bodydist x = [80,180]) && (power >= 1000) && (var(22)=0)
trigger1 = (ctrl || (stateno = [100, 101])) && (Random < (var(35)*(0.75 - 0.25*(AiLevel>=5))))
trigger2 = (stateno = [200,445]) && (MoveContact) && (Random < (var(35)*(0.75 - 0.25*(AiLevel>=5))))
trigger3 = (stateno = 1000) && (AnimElem =4,>=0) && var(34) && (Random < (var(35)*(0.75 - 0.15*(AiLevel>=5))))
trigger4 = (stateno = 1100) && (Anim = 1105) && var(34) && (Random < (var(35)*(0.95 - 0.15*(AiLevel>=5))))
trigger5 = (stateno = 1220) && (movehit) && (Random < (var(35)*(0.75 - 0.15*(AiLevel>=5))))
trigger6 = (stateno = 1410) && (movehit) && (Random < (var(35)*(0.75 - 0.15*(AiLevel>=5))))
value = 2600


[State -1, AI Z-Assit]
type = ChangeState
triggerall = (var(36)> 0) && NumEnemy
triggerall = (prevstateno !=[2000,2095]) && (prevstateno !=2200)&& (prevstateno !=2400)&& (prevstateno !=[2600,2660])
triggerall = (stateno !=[2000,2095]) && (stateno !=2200)&& (stateno !=2400)&& (stateno !=[2600,2660])
triggerall = power >= 501 && statetype = S && (var(8) = 540)
triggerall = (p2Statetype != A) && (P2BodyDist x >=140) && (p2bodydist y = [-2,2])
triggerall = (p2movetype != A)  && (p2statetype != L) && (EnemyNear, vel y >= 0) && !(enemynear,hitfall)
triggerall = (NumHelper(1010)<1) && (NumHelper(1110)<1)
trigger1 = ctrl && (Random < var(35)*(.85 +0.25*(AiLevel>=5)))
value = 950


[State -1, A.I Fireball]
type = ChangeState
triggerall = (var(36)> 0) && (roundstate = 2)
triggerall = (statetype != A) && (p2stateno != [120, 155])
triggerall = (p2bodydist y = [-30, 30]) && (p2statetype != L) && P2Movetype !=A && (P2StateNo!=5120)
triggerall = (p2bodydist x >= 110) && (EnemyNear, vel y >= -1) && (NumHelper(1010)<1)
triggerall = P2statetype != C && (Numhelper(2300)=0) && (Numhelper(2500)=0)
trigger1 = (ctrl || (stateno = [100, 101])) && (Random < (var(35)*(0.75 + 0.25*(AiLevel>=4))))
trigger2 = (stateno = [200,445]) && (MoveContact) && (Random < (var(35)*(0.75 + 0.25*(AiLevel>=4))))
value = 1000

[State -1, A.I Ki Blast]
type = ChangeState
triggerall = (var(36)> 0) && (roundstate = 2)
triggerall = (statetype != A) && (p2stateno != [120, 155])
triggerall = (p2bodydist y = [-40, 40]) && (p2statetype != L) && P2Movetype!=A && (P2StateNo!=5120)
triggerall = (p2bodydist x = [100,195]) && (EnemyNear, vel y >= -.5) && (NumHelper(1010)<=1) && (NumHelper(1110)<1)
triggerall = P2statetype != C && (Numhelper(2300)=0) && (Numhelper(2500)=0)
trigger1 = (ctrl || (stateno = [100, 101])) && (Random < (var(35)*(0.75 + 0.25*(AiLevel>=4))))
trigger2 = (stateno = [200,445]) && (MoveContact) && (Random < (var(35)*(0.75 + 0.25*(AiLevel>=4))))
value = 1100

[State -1, A.I Punishement]
type = ChangeState
triggerall = (var(36)> 0) && (roundstate = 2)
triggerall = (statetype != A) && (p2stateno != [120, 155])
triggerall = (p2bodydist y = [-110, 40]) && p2statetype != L
triggerall = (p2bodydist x = [40,100]) && (EnemyNear, vel y >= -5) && (P2Statetype = A)
triggerall = (enemynear, vel x > -1) && P2statetype != C && (Numhelper(2300)=0) && (Numhelper(2500)=0)
trigger1 = (ctrl || (stateno = [100, 101])) && (Random < (var(35)*(0.75 + 0.25*(AiLevel>=4))))
trigger2 = (stateno = [200,445]) && (MoveContact) && (Random < (var(35)*(0.75 + 0.25*(AiLevel>=4))))
value = 1300

[State -1, A.I Head Butt]
type = ChangeState
triggerall = (var(36)> 0) && (roundstate = 2)
triggerall = (statetype != A) && (p2stateno != [120, 155])
triggerall = (p2bodydist y = [-60, 40]) && p2statetype != L && P2Movetype!=A
triggerall = (p2bodydist x = [90,170]) && (EnemyNear, vel y >= -1) && var(27) = 0
triggerall = (enemynear, vel x > -1) && (Numhelper(2300)=0) && (Numhelper(2500)=0)
trigger1 = (ctrl || (stateno = [100, 101])) && (Random < (var(35)*(0.75 + 0.25*(AiLevel>=4))))
trigger2 = (stateno = [200,445]) && (MoveContact) && (Random < (var(35)*(0.75 + 0.25*(AiLevel>=4))))
value = 1200

[State -1, A.I Elbow Rush]
type = ChangeState
triggerall = (var(36)> 0) && (roundstate = 2)
triggerall = (statetype != A) && (p2stateno != [120, 155])
triggerall = (p2bodydist y = [-10, 10]) && p2statetype != L && P2Statetype!=A
triggerall = (p2bodydist x = [70,150]) && (EnemyNear, vel y >= -.25) && var(28) = 0
triggerall = (enemynear, vel x > -.5) && (Numhelper(2300)=0) && (Numhelper(2500)=0)
trigger1 = (ctrl || (stateno = [100, 101])) && (Random < (var(35)*(0.75 + 0.25*(AiLevel>=4))))
trigger2 = (stateno = [200,445]) && (MoveContact) && (Random < (var(35)*(0.75 + 0.25*(AiLevel>=4))))
value = 1400


[State -1, A.I Throw]
type = ChangeState
value = 800
triggerall = (var(36)> 0) && NumEnemy
triggerall = RoundState = 2 && StateType = S
triggerall = P2StateType != A && P2StateType != L && P2MoveType != H
triggerall = (P2BodyDist x = [-30,30]) && P2BodyDist y = 0
trigger1 = ctrl && (Random < var(35))
trigger2 = ctrl && (P2StateNo = [120,140]) && (Random < var(35)*(0.75 +0.25*(AiLevel>=5)))

[State -1, A.I Super Jump Launcher]
type = ChangeState
triggerall = (var(36)> 0) && NumEnemy && (roundstate = 2)
triggerall = statetype != A && (p2bodydist x = [10,60])&& (p2bodydist y = [-90,-20])
triggerall = (Random < var(35)*(0.95 +0.25*(AiLevel>=5))) && (p2Statetype = A)
trigger1 = (stateno = 415) && (animelemtime(4)>0) && MoveHit
trigger2 = (stateno = 445) && (animelemtime(4)>0) && MoveHit
value = 700

[State -1, A.I Z-Counter]
type = ChangeState
value = 750
triggerall =(var(36)> 0) && NumEnemy
triggerall = stateno = [150,153]
triggerall = RoundState = 2 && StateType != A
triggerall = (P2BodyDist y = [-30,30]) && (P2BodyDist x = [-20,26]) && (Enemynear,StateNo != [800,999])
trigger1 = Power >= 501 && (P2moveType = A) && (Enemynear,StateNo = [200,1999])
trigger1 = Random < (var(35)*(0.65 + 0.15*(AiLevel>=5)))



[State -1, A.I Stand Light Punch]
type = changestate
Triggerall = (var(36)> 0) && (roundstate = 2)
triggerall = (p2statetype != A) && (p2bodydist x =[16,48])
triggerall = (p2bodydist y = [-30, 30]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = (p2movetype != A) && (ctrl || (stateno = [100, 101]))
trigger1 = (statetype = S) && (Random < var(35))
trigger2 = (stateno = 200) && movecontact && (Random < var(35))
trigger3 = (stateno = 230) && movecontact && (Random < var(35))
trigger4 = (stateno = 400) && movecontact && (Random < var(35))
trigger5 = (stateno = 430) && movecontact && (Random < var(35))
value = 200

[State -1, A.I Stand Close Punch]
type = changestate
Triggerall = (var(36)> 0) && (roundstate = 2)
triggerall = (p2statetype != A) && (p2bodydist x < 16)
triggerall = (p2bodydist y = [-30, 30]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = (p2movetype != A) && (ctrl || (stateno = [100, 101]))
trigger1 = (statetype = S) && (Random < var(35))
trigger2 = (stateno = 235) && movecontact && (Random < var(35))
value = 205


[State -1, A.I Stand Strong Punch]
type = changestate
Triggerall = (var(36)> 0) && (roundstate = 2)
triggerall = (p2statetype != A) && (p2bodydist x =[16,60])
triggerall = (p2bodydist y = [-40, 40]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = (ctrl || (stateno = [100, 101]))
trigger1 = (statetype = S) && (Random < var(35))
trigger2 = (stateno = 200) && movecontact && (Random < var(35))
trigger3 = (stateno = 230) && movecontact && (Random < var(35))
trigger4 = (stateno = 400) && movecontact && (Random < var(35))
trigger5 = (stateno = 430) && movecontact && (Random < var(35))
value = 210


[State -1, A.I Stand Light Kick]
type = changestate
Triggerall = (var(36)> 0) && (roundstate = 2)
triggerall = (p2statetype != A) && (p2bodydist x =[16,75])
triggerall = (p2bodydist y = [-30, 30]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = (p2movetype != A) && (ctrl || (stateno = [100, 101]))
trigger1 = (statetype = S) && (Random < var(35))
trigger2 = (stateno = 200) && movecontact && (Random < var(35))
trigger3 = (stateno = 230) && movecontact && (Random < var(35))
trigger4 = (stateno = 205) && movecontact && (Random < var(35))
trigger5 = (stateno = 235) && movecontact && (Random < var(35))
value = 230

[State -1, A.I Stand Strong Kick]
type = changestate
Triggerall = (var(36)> 0) && (roundstate = 2)
triggerall = (p2statetype != A) && (p2bodydist x =[16,75])
triggerall = (p2bodydist y = [-40, 40]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = (ctrl || (stateno = [100, 101]))
trigger1 = (statetype = S) && (Random < var(35))
trigger2 = (stateno = 200) && movecontact && (Random < var(35))
trigger3 = (stateno = 230) && movecontact && (Random < var(35))
trigger4 = (stateno = 205) && movecontact && (Random < var(35))
trigger5 = (stateno = 235) && movecontact && (Random < var(35))
value = 240

[State -1, A.I Stand Close Kick]
type = changestate
Triggerall = (var(36)> 0) && (roundstate = 2)
triggerall = (p2statetype != A) && (p2bodydist x < 16)
triggerall = (p2bodydist y = [-30, 30]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = (p2movetype != A) && (ctrl || (stateno = [100, 101]))
trigger1 = (statetype = S) && (Random < var(35))
trigger2 = (stateno = 205) && movecontact && (Random < var(35))
value = 235


[State -1, A.I Crouching Light Punch]
type = changestate
Triggerall = (var(36)> 0) && (roundstate = 2)
triggerall = (p2statetype = S) && (p2bodydist x =[0,30])
triggerall = (p2bodydist y = [-20, 20]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = (p2movetype != A) && (ctrl || (stateno = [100, 101]))
trigger1 = (statetype = C) && (Random < var(35))
trigger2 = (stateno = 205) && movecontact && (Random < var(35))
trigger3 = (stateno = 235) && movecontact && (Random < var(35))
trigger4 = (stateno = 400) && movecontact && (Random < var(35))
trigger5 = (stateno = 430) && movecontact && (Random < var(35))
value = 400

[State -1, A.I Crouching Strong Punch]
type = changestate
Triggerall = (var(36)> 0) && (roundstate = 2)
triggerall = (p2statetype != A) && (p2bodydist x =[16,55])
triggerall = (p2bodydist y = [-20, 20]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = (ctrl || (stateno = [100, 101]))
trigger1 = (statetype = C) && (Random < var(35))
trigger2 = (stateno = 200) && movecontact && (Random < var(35))
trigger3 = (stateno = 230) && movecontact && (Random < var(35))
trigger4 = (stateno = 400) && movecontact && (Random < var(35))
trigger5 = (stateno = 430) && movecontact && (Random < var(35))
value = 410

[State -1, A.I Crouching Close Strong Punch]
type = changestate
Triggerall = (var(36)> 0) && (roundstate = 2)
triggerall = (p2statetype != A) && (p2bodydist x < 16)
triggerall = (p2bodydist y = [-20, 20]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = (ctrl || (stateno = [100, 101]))
trigger1 = (statetype != A) && (Random < var(35))
trigger2 = (stateno = 205) && movecontact && (Random < var(35))
trigger3 = (stateno = 235) && movecontact && (Random < var(35))
value = 415

[State -1, A.I Crouching Light Kick]
type = changestate
Triggerall = (var(36)> 0) && (roundstate = 2)
triggerall = (p2statetype != A) && (p2bodydist x =[0,30])
triggerall = (p2bodydist y = [-10, 10]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = (p2movetype != A) && (ctrl || (stateno = [100, 101]))
trigger1 = (statetype = C) && (Random < var(35))
trigger2 = (stateno = 205) && movecontact && (Random < var(35))
trigger3 = (stateno = 235) && movecontact && (Random < var(35))
trigger4 = (stateno = 400) && movecontact && (Random < var(35))
trigger5 = (stateno = 430) && movecontact && (Random < var(35))
value = 430

[State -1, A.I Crouching Strong Kick]
type = changestate
Triggerall = (var(36)> 0) && (roundstate = 2)
triggerall = (p2statetype != A) && (p2bodydist x =[16,30])
triggerall = (p2bodydist y = [-10, 10]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = (ctrl || (stateno = [100, 101]))
trigger1 = (statetype = C) && (Random < var(35))
trigger2 = (stateno = 200) && movecontact && (Random < var(35))
trigger3 = (stateno = 230) && movecontact && (Random < var(35))
trigger4 = (stateno = 400) && movecontact && (Random < var(35))
trigger5 = (stateno = 430) && movecontact && (Random < var(35))
value = 440

[State -1, A.I Crouching Close Strong Kick]
type = changestate
Triggerall = (var(36)> 0) && (roundstate = 2)
triggerall = (p2statetype != A) && (p2bodydist x < 16)
triggerall = (p2bodydist y = [-10, 10]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = (ctrl || (stateno = [100, 101]))
trigger1 = (statetype != A) && (Random < var(35))
trigger2 = (stateno = 205) && movecontact && (Random < var(35))
trigger3 = (stateno = 235) && movecontact && (Random < var(35))
value = 445



[State -1, A.I Air Light Punch]
type = changestate
Triggerall = (var(36)> 0) && (roundstate = 2)
triggerall =  (statetype = A) && (p2bodydist x = [0,50])&& (p2bodydist y = [-60,60])
triggerall =  p2statetype != L
trigger1 = (Random < var(35)*(1.25 +0.25*(AiLevel>=5))) && (p2movetype != A) && (ctrl)
trigger2 = (stateno = 630) && movehit && (Random < var(35)*(1.25 +0.25*(AiLevel>=5)))
value = 600

[State -1, A.I Air Strong Punch]
type = changestate
Triggerall = (var(36)> 0) && (roundstate = 2)
triggerall = (statetype = A) && (p2bodydist x = [0,45])&& (p2bodydist y = [-20,80])
triggerall = p2statetype != L
trigger1 = (Random < var(35)*(1.25 +0.25*(AiLevel>=5))) && (p2movetype != A) && (ctrl)
trigger2 = (stateno = 600) && movehit && (Random < var(35)*(1.25 +0.25*(AiLevel>=5)))
trigger3 = (stateno = 630) && movehit && (Random < var(35)*(1.25 +0.25*(AiLevel>=5)))
value = 610

[State -1, A.I Air Light Kick]
type = changestate
Triggerall = (var(36)> 0) && (roundstate = 2)
triggerall =  (statetype = A) && (p2bodydist x = [0,40])&& (p2bodydist y = [-60,60])
triggerall =  p2statetype != L && (vel x <= 0)
trigger1 = (Random < var(35)*(1.25 +0.25*(AiLevel>=5))) && (p2movetype != A) && (ctrl)
trigger2 = (stateno = 600) && movehit && (Random < var(35)*(1.25 +0.25*(AiLevel>=5)))
value = 630

[State -1, A.I Air Strong Kick]
type = changestate
Triggerall = (var(36)> 0) && (roundstate = 2)
triggerall = (statetype = A) && (p2bodydist x = [0,50])&& (p2bodydist y = [-60,60])
triggerall = p2statetype != L && (vel x <= 0)
trigger1 = (Random < var(35)*(1.25 +0.25*(AiLevel>=5))) && (p2movetype != A) && (ctrl)
trigger2 = (stateno = 600) && movehit && (Random < var(35)*(1.25 +0.25*(AiLevel>=5)))
trigger3 = (stateno = 630) && movehit && (Random < var(35)*(1.25 +0.25*(AiLevel>=5)))
value = 640

[State -1, A.I Air Velocity Kick]
type = changestate
Triggerall = (var(36)> 0) && (roundstate = 2)
triggerall = (statetype = A) && (p2bodydist x = [30,90])&& (p2bodydist y = [-30,60])
triggerall = p2statetype != L  && (vel x > 0) && (Enemynear, vel x <=2)
trigger1 = (Random < var(35)*(1 +0.15*(AiLevel>=5))) && (ctrl)
value = 650
