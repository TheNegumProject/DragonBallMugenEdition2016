; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional)
;   buffer.time = time (optional)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas. Each of these
;   buttons or directions is referred to as a "symbol".
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   greater-than (>) - means there must be no other keys pressed or released
;                      between the previous and the current symbol.
;          egs. command = a, >~a   ;press a and release it without having hit
;                                  ;or released any other keys in between
;   You can combine the symbols:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;
;   Note: Successive direction symbols are always expanded in a manner similar
;         to this example:
;           command = F, F
;         is expanded when MUGEN reads it, to become equivalent to:
;           command = F, >~F, >F
;
;   It is recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This makes the command easier
;   to do.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. The default
;   value for this is set in the [Defaults] section below. A typical
;   value is 15.
;
; - buffer.time (optional)
;   Time that the command will be buffered for. If the command is done
;   successfully, then it will be valid for this time. The simplest
;   case is to set this to 1. That means that the command is valid
;   only in the same tick it is performed. With a higher value, such
;   as 3 or 4, you can get a "looser" feel to the command. The result
;   is that combos can become easier to do because you can perform
;   the command early. Attacks just as you regain control (eg. from
;   getting up) also become easier to do. The side effect of this is
;   that the command is continuously asserted, so it will seem as if
;   you had performed the move rapidly in succession during the valid
;   time. To understand this, try setting buffer.time to 30 and hit
;   a fast attack, such as KFM's light punch.
;   The default value for this is set in the [Defaults] section below. 
;   This parameter does not affect hold-only commands (eg. /F). It
;   will be assumed to be 1 for those commands.
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
;
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10


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
command.time = 15
command.buffer.time = 3


;-| Super Motions |--------------------------------------------------------

[Command]
name = "Hyper1"
command = ~D, DF, F, x+y
time = 20

[Command]
name = "Hyper1"
command = ~D, DF, F, ~x+y
time = 20

[Command]
name = "Hyper1"
command = ~D, DF, F, y+z
time = 20

[Command]
name = "Hyper1"
command = ~D, DF, F, ~y+z
time = 20

[Command]
name = "Hyper1"
command = ~D, DF, F, x+z
time = 20

[Command]
name = "Hyper1"
command = ~D, DF, F, ~x+z
time = 20

[Command]
name = "Hyper1"
command = ~D, DF, F, ~x+y+z
time = 20

[Command]
name = "Hyper1"
command = ~D, DF, F, x+y+z
time = 20

[Command]
name = "Hyper2"
command = ~D, DF, F, a+b
time = 20

[Command]
name = "Hyper2"
command = ~D, DF, F, ~a+b
time = 20

[Command]
name = "Hyper2"
command = ~D, DF, F, ~c+b
time = 20

[Command]
name = "Hyper2"
command = ~D, DF, F, c+b
time = 20

[Command]
name = "Hyper2"
command = ~D, DF, F, ~c+a
time = 20

[Command]
name = "Hyper2"
command = ~D, DF, F, c+a
time = 20

[Command]
name = "Hyper2"
command = ~D, DF, F, a+b+c
time = 20

[Command]
name = "Hyper2"
command = ~D, DF, F, ~a+b+c
time = 20

[Command]
name = "Hyper3"
command = ~F, D ,DF, a+b
time= 20

[Command]
name = "Hyper3"
command = ~F, D ,DF, ~a+b
time= 20

[Command]
name = "Hyper3"
command = ~F, D ,DF, a+c
time= 20

[Command]
name = "Hyper3"
command = ~F, D ,DF, ~a+c
time= 20

[Command]
name = "Hyper3"
command = ~F, D ,DF, b+c
time= 20

[Command]
name = "Hyper3"
command = ~F, D ,DF, ~b+c
time= 20

[Command]
name = "Hyper3"
command = ~F, D ,DF, a+b+c
time= 20

[Command]
name = "Hyper3"
command = ~F, D ,DF, ~a+b+c
time= 20


;-| Special Motions |------------------------------------------------------
[Command]
name = "RamX"
command = ~F, D, DF, x

[Command]
name = "RamX"
command = ~F, D, DF, ~x

[Command]
name = "RamY"
command = ~F, D, DF, y

[Command]
name = "RamY"
command = ~F, D, DF, ~y

[Command]
name = "RamZ"
command = ~F, D, DF, z

[Command]
name = "RamZ"
command = ~F, D, DF, ~z

[Command]
name = "Command_grab"
command = ~D, DB, B, ~a

[Command]
name = "Command_grab"
command = ~D, DB, B, a

[Command]
name = "Command_grab"
command = ~D, DB, B, ~b

[Command]
name = "Command_grab"
command = ~D, DB, B, b

[Command]
name = "Command_grab"
command = ~D, DB, B, ~c

[Command]
name = "Command_grab"
command = ~D, DB, B, c

[Command]
name = "Flying Elbow A"
command = ~15$B, F, a

[Command]
name = "Flying Elbow B"
command = ~15$B, F, b

[Command]
name = "Flying Elbow C"
command = ~15$B, F, c

[Command]
name = "Ki_Blast_X"
command = ~D, DF, F, x

[Command]
name = "Ki_Blast_X"
command = ~D, DF, F, ~x

[Command]
name = "Ki_Blast_Y"
command = ~D, DF, F, y

[Command]
name = "Ki_Blast_Y"
command = ~D, DF, F, ~y

[Command]
name = "Ki_Blast_Z"
command = ~D, DF, F, z

[Command]
name = "Ki_Blast_Z"
command = ~D, DF, F, ~z

[Command]
name = "Feild_on_X"
command = ~D, DB, B, x

[Command]
name = "Feild_on_X"
command = ~D, DB, B, ~x

[Command]
name = "Feild_on_Y"
command = ~D, DB, B, y

[Command]
name = "Feild_on_Y"
command = ~D, DB, B, ~y

[Command]
name = "Feild_on_Z"
command = ~D, DB, B, z

[Command]
name = "Feild_on_Z"
command = ~D, DB, B, ~z

[Command]
name = "Teleport"
command = ~F, D, DF, a

[Command]
name = "Teleport"
command = F, D, DF, ~a

[Command]
name = "Android 17"
command = ~F, DF, D, DB, B, a

[Command]
name = "Android 17"
command =  F, DF, D, DB, B, ~a

[Command]
name = "Android 16"
command = ~F, DF, D, DB, B, b

[Command]
name = "Android 16"
command =  F, DF, D, DB, B, ~b

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| Tag Motions |----------------------------------------------------------
[Command]
name = "Tag Counter"
command = ~B, DB, D, c+z
time = 20

[Command]
name = "Dual Hyper"
command = ~D, DF, F, c+z
time = 20

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

;-| super jump |-----------------------------------------------------------
[Command]
name = "du"
command =  $D, $U
time = 8

[command]
name = "abc"
command = b+c
time = 8

[command]
name = "abc"
command = a+b
time = 8

;-|Dir |--------------------------------------------------------------
[Command]
name = "fwd";Required (do not remove)
command = F
time = 1

[Command]
name = "back";Required (do not remove)
command = B
time = 1

[Command]
name = "up" ;Required (do not remove)
command = U
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "down";Required (do not remove)
command = D
time = 1
;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[command]
name = "holddownback"
command = /$DB
time = 1

[command]
name = "holddownfwd"
command = /$DF
time = 1

[command]
name = "holdupback"
command = /$UB
time = 1

[command]
name = "holdupfwd"
command = /$UF
time = 1

[command]
name = "holddownforward"
command = /$DF
time = 1
;-| Single Counter Motions |-------------------------------------------
[Command]
name = "CounterA"
command = ~B, DB, D, x
time = 10

[Command]
name = "CounterA"
command = ~B, DB, D, y
time = 10

[Command]
name = "CounterA"
command = ~B, DB, D, z
time = 10

[Command]
name = "CounterB"
command = ~B, DB, D, a
time = 10

[Command]
name = "CounterB"
command = ~B, DB, D, b
time = 10

[Command]
name = "CounterB"
command = ~B, DB, D, c
time = 10


;---------------------------------------------------------------------------------------------
[Command]
name = "undizzy"
command = ~B, F, B, F, B, F, B, F
time = 35

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
;Artificial Intelligence
;===========================================================================
[State -1, AI ON] ; Turn the AI on when
Type = VarSet
TriggerAll = Var(59) < 1 ; it is not on yet and
TriggerAll = RoundState = 2 ; the fight has started and is not over yet and
Trigger1 = AILevel > 0 ; the computer is playing the character
v = 59
value = 1 ; value of 1 will mean the AI is on
Ignorehitpause=1

[State -1, AI OFF] ; Turn the AI off when
Type = VarSet
Trigger1 = var(59) > 0 ; it is on and
Trigger1 = RoundState != 2 ; the round is not started yet or is already over
Trigger2 = !IsHelper ; OR if we are a player, but
Trigger2 = AILevel = 0 ; the computer is not in control
v = 59
value = 0 ; value of 0 will mean the AI is off. values other than 0 and 1 are not used in this example, we have only one AI mode, the normal one.
Ignorehitpause = 1

[State -1]
Type = VarSet
Trigger1 = 1
var(58) = (AILevel=1)*3+(AILevel=2)*7+(AILevel=3)*16+(AILevel=4)*30+(AILevel=5)*58+(AILevel=6)*90+ (AILevel=7)*150+(AILevel=8)*300

[State -1,AI run fwd]
type = ChangeState
value = 100
triggerall = var(59) != 0
triggerall = !Win
triggerall = StateType = S
triggerall = StateNo != 100
trigger1 = ctrl
trigger1 = P2BodyDist X >= 100
trigger1 = Random <= (150 - ifelse(Life < 265, 90, 0))
trigger2 = ctrl
trigger2 = P2MoveType = H
trigger2 = Random <= 300

; You're boring her.....
[State -1, random taunt]
type = changestate
value = 195
triggerall = (var(59) != 0)
triggerall = statetype != A
triggerall = ctrl
triggerall = P2BodyDist X >= 50
triggerall = random <= 300
triggerall = life >= p2life+300
trigger1 = p2stateno = 5050
trigger2 = p2stateno = [5100,5101]
trigger3 = p2stateno = 5110 || p2stateno = 5020 || p2stateno = 5030

; Throw
[State -1, AI Throw]
type = ChangeState
value = 800
triggerall = var(59) 
triggerall = AIlevel ; Applied if AI is activated
triggerall = random <= AIlevel*10 ; AI level is based on level 1 - 8 - AIlevel is multipled by 10 meaning at AIlevel = 8 it has a 80% change of this move happening with 80% of the triggers that is activated.
triggerall = stateno != 100
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2movetype != H
triggerall = ctrl
trigger1 = (p2bodydist X = [0,10])
trigger1 = (p2statetype = S) || (p2statetype = C)

;--|-AI Defense-|----------------------------------------------------------

[State -1] ; The engine will still guard by through pressing the back button, we need to disable that.
Type=Assertspecial
Triggerall=StateNo!=[120,160]
Trigger1=var(59)>0
flag=noairguard
flag2=nocrouchguard
flag3=nostandguard

[State -1]
Type=Changestate
Triggerall=Inguarddist ; Guard when in guard distance
Triggerall=var(59)>0 ; and the AI is on
Triggerall=ctrl ; and we have control
Trigger1 = random< (var(50)*2+(AiLevel>=3)*30) ; chance is higher than for attacking, but not by too much. 
value=120

[State -1, AI Guarding, Easy/Medium AI]
   type = ChangeState
   triggerall = (roundstate = 2) && (var(59) != 0)
   triggerall = AILevel <=5
   triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
   trigger1 = (p2bodydist x <= 250) && (random = [200,899]) && (vel x < 0)
   trigger2 = (p2bodydist x <= 250) && (random = [800,899]) && (vel x > 0)
   trigger3 = (p2bodydist x <= 250) && (random = [400,899]) && (vel x = 0)
   trigger4 = (anim = 21)
   trigger5 = (prevstateno > 5000) && (random < 200)
   value = 130

   [State -1, AI Guarding, Easy/Medium AI]
   type = ChangeState
   triggerall = (roundstate = 2) && (var(59) != 0)
   triggerall = AILevel <=5
   triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
   trigger1 = (p2bodydist x <= 250) && (random = [500,899])
   trigger2 = (prevstateno > 5000) && (random < 200)
   value = 131

   [State -1, AI Guarding, Easy/Medium AI]
   type = ChangeState
   triggerall = (roundstate = 2) && (var(59) != 0)
   triggerall = AILevel <=5
   triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
   trigger1 = (p2bodydist x <= 250) && (random = [700,899])
   trigger2 = (anim = 43) || (anim = 46)
   trigger3 = (prevstateno > 5000) && (random < 200)
   value = 132

   [State -1, AI Guarding, Hard AI]
   type = ChangeState
   triggerall = (var(59) != 0) && Numenemy && (stateno != [120,155])
   triggerall = AILevel > 5
   triggerall = Random <= (AILevel * 10)
   triggerall =!(enemynear,hitdefattr=SCA,AT)
   triggerall = inguarddist
   trigger1 = ctrl
   value = 120

;AI Guard Push]
[State -1, AI Guard Push Standing]
type = ChangeState
value = 550
triggerall = Var(59)
Triggerall = random < var(58)*10
triggerall = AIlevel ; Applied if AI is activated
triggerall = random <= AIlevel*10 ; AI level is based on level 1 - 8 - AIlevel is multipled by 10 meaning at AIlevel = 8 it has a 80% change of this move happening with 80% of the triggers that is activated.
triggerall = p2bodydist x =[0,1000]
triggerall = StateType = S
trigger1 = StateNo = [150,153]
trigger1 = Time >= 5
trigger1 = random < 100+499*(BackEdgeDist < 50)

[State -1, AI Guard Push Crouching]
type = ChangeState
value = 560
triggerall = Var(59)
Triggerall = random < var(58)*10
triggerall = AIlevel ; Applied if AI is activated
triggerall = random <= AIlevel*10 ; AI level is based on level 1 - 8 - AIlevel is multipled by 10 meaning at AIlevel = 8 it has a 80% change of this move happening with 80% of the triggers that is activated.
triggerall = p2bodydist x =[0,1000]
triggerall = StateType = C
trigger1 = StateNo = [150,153]
trigger1 = Time >= 5
trigger1 = random < 100+499*(BackEdgeDist < 50)

[State -1, AI Guard Push Air]
type = ChangeState
value = 570
triggerall = Var(59)
Triggerall = random < var(58)*10
triggerall = AIlevel ; Applied if AI is activated
triggerall = random <= AIlevel*10 ; AI level is based on level 1 - 8 - AIlevel is multipled by 10 meaning at AIlevel = 8 it has a 80% change of this move happening with 80% of the triggers that is activated.
triggerall = p2bodydist x =[0,1000]
triggerall = StateType = A
trigger1 = StateNo = [154,155]
trigger1 = Time >= 5
trigger1 = random < 100+499*(BackEdgeDist < 50)

[State -1,36]
type = ChangeState
value = 260
triggerall = (var(59) != 0) && roundstate =2
triggerall = statetype != A
triggerall = AIlevel ; Applied if AI is activated
triggerall = random <= AIlevel*10 ; AI level is based on level 1 - 8 - AIlevel is multipled by 10 meaning at AIlevel = 8 it has a 80% change of this move happening with 80% of the triggers that is activated.
trigger1 = movehit >= 1
trigger1 = stateno = 220 
trigger1 = random < 499
trigger2 = movehit >= 1
trigger2 = stateno = 420 
trigger2 = random < 499
;------------------------------------------------------------

   ;--|-AI Combos-|------------------------------------------------------------
[State -1]
type = ChangeState
value = 200
triggerall = (var(59) != 0) && roundstate =2
triggerall = statetype != A && P2Bodydist Y > -30 && enemynear, statetype != L
triggerall = AIlevel ; Applied if AI is activated
triggerall = random <= AIlevel*3 ; AI level is based on level 1 - 8 - AIlevel is multipled by 10 meaning at AIlevel = 8 it has a 80% change of this move happening with 80% of the triggers that is activated.
triggerall = ctrl = 1
trigger1 = P2BodyDist X = [0,25]
;trigger1 = random < 300
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,25]
;trigger2 = random < 300

;Start Standing Chain Combo
[State -1]
type = ChangeState
value = 210
triggerall =(var(59) != 0) && roundstate =2
triggerall = statetype != A
triggerall = AILevel
trigger1 = stateno = 200
trigger1 = movecontact

;[State -1]
;type = ChangeState
;value = 215
;triggerall = (var(59) != 0) && roundstate =2
;triggerall = statetype != A
;triggerall = AILevel
;trigger1 = stateno = 210
;trigger1 = movecontact

[State -1]
type = ChangeState
value = 240
triggerall = (var(59) != 0) && roundstate =2
triggerall = statetype != A
triggerall = AILevel
trigger1 = stateno = 210
trigger1 = movecontact

[State -1]
type = ChangeState
value = 220
triggerall = (var(59) != 0) && roundstate =2
triggerall = statetype != A && random = 100
triggerall = AILevel
trigger1 = stateno = 210 || stateno = 215 || stateno = 240 ||  stateno = 410 || stateno = 430 || stateno = 420 ||stateno = 440
trigger1 = movecontact

[State -1,32]
type = ChangeState
value = 250
triggerall = (var(59) != 0) && random = 100
triggerall = statetype != A && roundstate =2
triggerall = AILevel
trigger1 = stateno = 210 || stateno = 215 || stateno = 240 || stateno = 410|| stateno = 430 || stateno = 440
trigger1 = movecontact

;[State -1]
;type = ChangeState
;value = 1000
;triggerall = (var(59) != 0) && roundstate =2
;triggerall = statetype != A && random < 499
;triggerall = AILevel
;trigger1 = stateno = 210 || stateno = 215 || stateno = 220 || stateno = 400|| stateno = 430 || stateno = 440 || stateno = 420
;trigger1 = movecontact
;
;[State -1]
;type = ChangeState
;value = 1010
;triggerall = (var(59) = 0) && roundstate =2
;triggerall = statetype != A && random < 499
;triggerall = AILevel
;trigger1 = stateno = 210 || stateno = 215 || stateno = 220 || stateno = 400|| stateno = 430 || stateno = 440 || stateno = 420
;trigger1 = movecontact
;
;[State -1]
;type = ChangeState
;value = 1020
;triggerall = (var(59) != 0) && roundstate =2
;triggerall = statetype != A && random < 499
;triggerall = AILevel
;trigger1 = stateno = 210 || stateno = 215 || stateno = 220 || stateno = 400|| stateno = 430 || stateno = 440 || stateno = 420
;trigger1 = movecontact


[State -1]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = statetype !=A
Triggerall=P2StateType=S
triggerall = var(59) = 1
trigger1 = StateNo = 1000 && P2BodyDist X <= 70 && AnimElemTime(4) >= 15
;End Standing Chain

;---------------------------------------------------------------------------
;Start Crouching Chain
[State -1]
type = ChangeState
value = 400
triggerall = (var(59) != 0) && roundstate =2
triggerall = statetype != A && P2Bodydist Y > -20 && enemynear, statetype != L
triggerall = AILevel
triggerall = ctrl = 1
trigger1 = P2BodyDist X = [0,30]
trigger1 = random < 499
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,30]
trigger2 = random < 499

[State -1]
type = ChangeState
value = 430
triggerall = (var(59) != 0) && roundstate =2
triggerall = statetype != A && P2Bodydist Y > -40 && enemynear, statetype != L
triggerall = AILevel
triggerall = ctrl = 1
trigger1 = P2BodyDist X = [0,30]
trigger1 = random < 499
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,30]
trigger2 = random < 499

[State -1]
type = ChangeState
value = 440
triggerall =(var(59) != 0) && roundstate =2
triggerall = statetype != A 
triggerall = AILevel
trigger1 = stateno = 430
trigger1 = movecontact

[State -1]
type = ChangeState
value = 410
triggerall =(var(59) != 0) && roundstate =2
triggerall = statetype != A && random = [0,499]
triggerall = AILevel
trigger1 = stateno = 400 
trigger1 = movecontact

[State -1]
type = ChangeState
value = 420
triggerall =(var(59) != 0) && roundstate =2
triggerall = statetype != A && random = [0,499]
triggerall = AILevel
trigger1 = stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440
trigger1 = movecontact


[State -1]
type = ChangeState
value = 450
triggerall =(var(59) != 0) && roundstate =2
triggerall = statetype != A && random = [0,499]
triggerall = AILevel
trigger1 = stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440
trigger1 = movecontact
;End Crouching Chain

;---------------------------------------------------------------------------
;Start Air Chain
[State -1,41]
type = ChangeState
value = 600
triggerall = (var(59) != 0)  && roundstate =2
triggerall = statetype = A
triggerall = P2BodyDist X = [0,40]
triggerall = AILevel
trigger1 = ctrl 
trigger1 = P2BodyDist Y = [-50,10]

[State -1]
type = ChangeState
value = 630
triggerall = (var(59) != 0)  && roundstate =2
triggerall = AILevel
trigger1 = stateno = 600
trigger1 = movecontact >= 2

[State -1]
type = ChangeState
value = 610
triggerall = (var(59) != 0)  && roundstate =2
triggerall = AILevel
trigger1 = stateno = 630
trigger1 = movecontact >= 2


[State -1]
type = ChangeState
value = 640
triggerall = (var(59) != 0)  && roundstate =2
triggerall = AILevel
trigger1 = stateno = 610 
trigger1 = movecontact >= 2


[State -1]
type = ChangeState
value = 620
triggerall = (var(59) != 0)  && roundstate =2
triggerall = AILevel
trigger1 = stateno = 640 && random = [0,499]
trigger1 = movecontact >= 2

[State -1]
type = ChangeState
value = 650
triggerall = (var(59) != 0)  && roundstate =2
triggerall = AILevel
trigger1 = stateno = 640 && random = [0,499]
trigger1 = movecontact >= 2

[State -1]
type = ChangeState
value = 1350
triggerall = (var(59) != 0)  && roundstate =2
triggerall = AILevel
trigger1 = stateno = 640 && random = [0,499]
trigger1 = movecontact >= 2


;End Air Chain


;-|-AI Special Attempt-|---------------------------------------------
;[State -1]
;type = ChangeState
;Triggerall = random < var(58)*3.0
;triggerall = AILevel>=1
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (Ctrl) && (Statetype = S) && (random = [0,499])
;triggerall = P2bodydist X = [81,100] 
;triggerall = statetype != A
;triggerall = P2statetype != L
;trigger1 = (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
;value = 1000
;
;[State -1]
;type = ChangeState
;Triggerall = random < var(58)*3.0
;triggerall = AILevel>=3
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (Ctrl) && (Statetype = S) && (random = [0,499])
;triggerall = P2bodydist X = [66,80] 
;triggerall = statetype != A
;triggerall = P2statetype != L
;trigger1 = (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
;value = 1010
;
;[State -1]
;type = ChangeState
;Triggerall = random < var(58)*3.0
;triggerall = AILevel>=3
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (Ctrl) && (Statetype = S) && (random = [0,499])
;triggerall = P2bodydist X = [0,65] 
;triggerall = statetype != A
;triggerall = P2statetype != L
;trigger1 = (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
;value = 1020
;
;[State -1]
;type = ChangeState
;Triggerall = random < var(58)*3.0
;triggerall = AILevel>=1
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (Ctrl) && (Statetype = S) && (random = [0,499])
;triggerall = P2bodydist X = [0,10] 
;triggerall = P2statetype != L
;trigger1 = (prevstateno != 5120) && (statetype != A)
;value = 1100
;
;[State -1]
;type = ChangeState
;Triggerall = random < var(58)*3.0
;triggerall = AILevel>=3
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (Ctrl) && (Statetype = S) && (random = [0,499])
;triggerall = P2bodydist X = [0,18] 
;triggerall = P2statetype != L
;trigger1 = (prevstateno != 5120) && (statetype != A)
;value = 1110
;
;[State -1]
;type = ChangeState
;Triggerall = random < var(58)*3.0
;triggerall = AILevel>=3
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (Ctrl) && (Statetype = S) && (random = [0,499])
;triggerall = P2bodydist X = [0,26] 
;triggerall = P2statetype != L
;trigger1 = (prevstateno != 5120) && (statetype != A)
;value = 1120

;-|-AI Hyper Attempt|---------------------------------------------

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
triggerall = AILevel >= 4                                  ;difficulty level is 4 or higher
triggerall = p2statetype != L                              ;P2 is not lieing down
triggerall = stateno < 3000                                ;Add to avoid chaining hypes*
trigger1 = prevstateno != 5120                             ;character is not in [Statedef 5120] which is "getting up"
trigger1 = statetype != A                                  ;character is not jumping
trigger1 = p2bodydist x >= 150                             ;P2's distance is greater than 150
trigger1 = power >= 1000                                   ;Hyper Bar has at least 1000 power
trigger1 = random = [500,699]                               ;Perform this move 10% of the time
Trigger1 = ctrl
Trigger2 = Prevstateno=1000
Trigger2 = movehit
Trigger3 = Prevstateno=1010 
Trigger3 = movehit
Trigger4 = Prevstateno=1020 
Trigger4 = movehit
value = 3000


;===========================================================================

; ================= (Marvel vs Capcom 2 Tag commands) =========================
; Original code by R.o.q.u.e., modified by AeroGP
; Adapted by FerchogtX
[State -1, Tag Counter]
type = ChangeState
value = 4800
triggerall = roundstate = 2 
triggerall = !var(59)
triggerall = command = "Tag Counter"
triggerall = var(30) = 1
triggerall = partner, life > 0
triggerall = power >= 1000
triggerall = StateType != A
triggerall = partner, stateno = 4512
trigger1 = stateno = [150, 152]
ignorehitpause = 1

[State -1, Dual Hyper Attack]
type = ChangeState
value = 4600
triggerall = roundstate = 2 
triggerall = !var(59)
triggerall = command = "Dual Hyper"
triggerall = var(30) = 1
triggerall = partner, life > 0
triggerall = power >= 2000
triggerall = StateType != A
triggerall = partner, stateno = 4512
trigger1 = ctrl
trigger2 = (stateno = [200, 299]) && MoveContact
trigger3 = (stateno = [400, 499]) && MoveContact

[State -1, Partner Assist]
type = ChangeState
value = 4700
triggerall = roundstate = 2 
triggerall = !var(59)
triggerall = command = "y" && command = "b"
triggerall = var(30) = 1
triggerall = partner, life > 0
triggerall = StateType != A
triggerall = partner, stateno = 4512
trigger1 = ctrl

[State -1, Partner Change]
type = ChangeState
value = 4510
triggerall = roundstate = 2 
triggerall = !var(59)
triggerall = command = "c" && command = "z"
triggerall = command = "z" && command = "c"
triggerall = var(30) = 1
triggerall = partner, life > 0
triggerall = StateType != A
triggerall = partner, stateno = 4512
trigger1 = ctrl
trigger2 = (stateno = [200, 299]) && MoveContact
trigger3 = (stateno = [400, 499]) && MoveContact


;===========================================================================

[State -1, Hyper1]
type = ChangeState
value = 3000
triggerall = roundstate = 2 
triggerall = !Var(59)
triggerall = command = "Hyper1"
triggerall = power >= 1000 
triggerall = statetype != A 
triggerall = NumProjID(3000) = 0
trigger1 = statetype = S && ctrl
trigger2 = stateno = (200,1320)
trigger2 = stateno != [800,899]
trigger2 = stateno != [1000,1020]

[State -1, Hyper2]
type = ChangeState
value = 3100
triggerall = roundstate = 2 
triggerall = !Var(59)
triggerall = command = "Hyper1"
triggerall = power >= 1000 
triggerall = statetype != S 
trigger1 = statetype = A && ctrl
trigger2 = stateno = (600,1420)
trigger2 = stateno != [800,899]
trigger2 = stateno != [1030,1050]

[State -1, Hyper3]
type = ChangeState
value = 3200
triggerall = roundstate = 2 
triggerall = !Var(59)
triggerall = command = "Hyper2"
triggerall = power >= 1000 
triggerall = statetype != S 
trigger1 = statetype = A && ctrl
trigger2 = stateno = (600,1420)
trigger2 = stateno != [800,899]
trigger2 = stateno != [1030,1050]

[State -1, Hyper4]
type = ChangeState
value = 3300
triggerall = roundstate = 2 
triggerall = !Var(59)
triggerall = command = "Hyper2"
triggerall = power >= 1000 
triggerall = statetype != A 
trigger1 = statetype = S && ctrl
trigger2 = stateno = (200,1320)
trigger2 = stateno != [800,899]
trigger2 = stateno != [1000,1020]

[State -1, Hyper5]
type = ChangeState
value = 3400
triggerall = roundstate = 2 
triggerall = !Var(59)
triggerall = command = "Hyper3"
triggerall = power >= 3000 
triggerall = statetype != A 
Triggerall = numhelper(900000009)!=1
trigger1 =  ctrl

;===========================================================================

[State -1,Android 17]
type = ChangeState
value = 2000
triggerall = roundstate = 2 
triggerall = var(59) = 0
Triggerall = numhelper(900000000)!=1
triggerall = command = "Android 17"
Triggerall = StateType != A
trigger1= ctrl || (stateno=[100,101])

[State -1,Android 16]
type = ChangeState
value = 2200
triggerall = roundstate = 2 
triggerall = var(59) = 0
Triggerall = numhelper(900000002)!=1
triggerall = command = "Android 16"
Triggerall = StateType != A
trigger1= ctrl || (stateno=[100,101])

;===========================================================================

[State -1, RamX]
type = ChangeState
value = 1000
triggerall = roundstate = 2 
triggerall = var(59) = 0
triggerall = command = "RamX"
Triggerall = StateType != A
trigger1= ctrl || (stateno=[100,101])
trigger2=(stateno=[200,499]) && movecontact
trigger3= stateno = 5110

[State -1, RamY]
type = ChangeState
value = 1010
triggerall = roundstate = 2 
triggerall = var(59) = 0
triggerall = command = "RamY"
Triggerall = StateType != A
trigger1= ctrl || (stateno=[100,101])
trigger2=(stateno=[200,499]) && movecontact
trigger3= stateno = 5110

[State -1, RamZ]
type = ChangeState
value = 1020
triggerall = roundstate = 2 
triggerall = var(59) = 0
triggerall = command = "RamZ"
Triggerall = StateType != A
trigger1= ctrl || (stateno=[100,101])
trigger2=(stateno=[200,499]) && movecontact
trigger3= stateno = 5110

[State -1, RamX]
type = ChangeState
value = 1030
triggerall = roundstate = 2 
triggerall = var(59) = 0
triggerall = command = "RamX"
Triggerall = StateType != S
trigger1= ctrl || (stateno=[100,101])
trigger2=(stateno=[600,699]) && movecontact

[State -1, RamX]
type = ChangeState
value = 1040
triggerall = roundstate = 2 
triggerall = var(59) = 0
triggerall = command = "RamY"
Triggerall = StateType != S
trigger1= ctrl || (stateno=[100,101])
trigger2=(stateno=[600,699]) && movecontact

[State -1, RamX]
type = ChangeState
value = 1050
triggerall = roundstate = 2 
triggerall = var(59) = 0
triggerall = command = "RamZ"
Triggerall = StateType != S
trigger1= ctrl || (stateno=[100,101])
trigger2=(stateno=[600,699]) && movecontact

;===========================================================================

[State -1, Command_grab]
type = ChangeState
value = 1500
triggerall = roundstate = 2 
triggerall = var(59) = 0
triggerall = command = "Command_grab"
Triggerall = StateType != A
trigger1= ctrl || (stateno=[100,101])

[State -1, Command_grab]
type = ChangeState
value = 1501
triggerall = roundstate = 2 
triggerall = var(59) = 0
triggerall = command = "Command_grab"
Triggerall = StateType != S
trigger1= ctrl || (stateno=[100,101])
trigger2=(stateno=[600,699]) && movecontact

;==========================================================================
[State -1, Flying Elbow A]
type = ChangeState
value = 1100
triggerall = roundstate = 2 
triggerall = var(59) = 0
triggerall = command = "Flying Elbow A"
Triggerall = StateType != A
trigger1= ctrl || (stateno=[100,101])
trigger2=(stateno=[200,499]) && movecontact
trigger3= stateno = 5110

[State -1, Flying Elbow A]
type = ChangeState
value = 1110
triggerall = roundstate = 2 
triggerall = var(59) = 0
triggerall = command = "Flying Elbow B"
Triggerall = StateType != A
trigger1= ctrl || (stateno=[100,101])
trigger2=(stateno=[200,499]) && movecontact
trigger3= stateno = 5110

[State -1, Flying Elbow A]
type = ChangeState
value = 1120
triggerall = roundstate = 2 
triggerall = var(59) = 0
triggerall = command = "Flying Elbow C"
Triggerall = StateType != A
trigger1= ctrl || (stateno=[100,101])
trigger2=(stateno=[200,499]) && movecontact
trigger3= stateno = 5110

;===========================================================================
[State -1, Ki_Blast X]
type = ChangeState
value = 1200
triggerall = roundstate = 2 
triggerall = var(59) = 0
triggerall = command = "Ki_Blast_X"
Triggerall = StateType != A
trigger1= ctrl || (stateno=[100,101])
trigger2=(stateno=[200,499]) && movecontact

[State -1, Ki_Blast Y]
type = ChangeState
value = 1210
triggerall = roundstate = 2 
triggerall = var(59) = 0
triggerall = command = "Ki_Blast_Y"
Triggerall = StateType != A
trigger1= ctrl || (stateno=[100,101])
trigger2=(stateno=[200,499]) && movecontact

[State -1, Ki_Blast Z]
type = ChangeState
value = 1220
triggerall = roundstate = 2 
triggerall = var(59) = 0
triggerall = command = "Ki_Blast_Z"
Triggerall = StateType != A
trigger1= ctrl || (stateno=[100,101])
trigger2=(stateno=[200,499]) && movecontact
;===========================================================================

[State -1, Feild_on X]
type = ChangeState
value = 1300
triggerall = roundstate = 2 
triggerall = var(59) = 0
triggerall = command = "Feild_on_X"
Triggerall = StateType != A
trigger1= ctrl || (stateno=[100,101])
trigger2=(stateno=[200,499]) && movecontact
trigger3= stateno = 5110

[State -1, Feild_on y]
type = ChangeState
value = 1310
triggerall = roundstate = 2 
triggerall = var(59) = 0
triggerall = command = "Feild_on_Y"
Triggerall = StateType != A
trigger1= ctrl || (stateno=[100,101])
trigger2=(stateno=[200,499]) && movecontact
trigger3= stateno = 5110

[State -1, Feild_on z]
type = ChangeState
value = 1320
triggerall = roundstate = 2 
triggerall = var(59) = 0
triggerall = command = "Feild_on_Z"
Triggerall = StateType != A
trigger1= ctrl || (stateno=[100,101])
trigger2=(stateno=[200,499]) && movecontact
trigger3= stateno = 5110

[State -1, Air_Feild_on X]
type = ChangeState
value = 1330
triggerall = roundstate = 2 
triggerall = var(59) = 0
triggerall = command = "Feild_on_X"
Triggerall = StateType != S
trigger1= ctrl || (stateno=[100,101])
trigger2=(stateno=[600,699]) && movecontact

[State -1, Air_Feild_on y]
type = ChangeState
value = 1340
triggerall = roundstate = 2 
triggerall = var(59) = 0
triggerall = command = "Feild_on_Y"
Triggerall = StateType != S
trigger1= ctrl || (stateno=[100,101])
trigger2=(stateno=[600,699]) && movecontact

[State -1, Air_Feild_on z]
type = ChangeState
value = 1350
triggerall = roundstate = 2 
triggerall = var(59) = 0
triggerall = command = "Feild_on_Z"
Triggerall = StateType != S
trigger1= ctrl || (stateno=[100,101])
trigger2=(stateno=[600,699]) && movecontact

[State -1, Air_ki_blast X]
type = ChangeState
value = 1400
triggerall = roundstate = 2 
triggerall = var(59) = 0
triggerall = command = "Ki_Blast_X"
Triggerall = StateType != S
trigger1= ctrl || (stateno=[100,101])
trigger2=(stateno=[600,699]) && movecontact

[State -1, Air_ki_blast Y]
type = ChangeState
value = 1410
triggerall = roundstate = 2 
triggerall = var(59) = 0
triggerall = command = "Ki_Blast_Y"
Triggerall = StateType != S
trigger1= ctrl || (stateno=[100,101])
trigger2=(stateno=[600,699]) && movecontact

[State -1, Air_ki_blast Z]
type = ChangeState
value = 1420
triggerall = roundstate = 2 
triggerall = var(59) = 0
triggerall = command = "Ki_Blast_Z"
Triggerall = StateType != S
trigger1= ctrl || (stateno=[100,101])
trigger2=(stateno=[600,699]) && movecontact
;--------------------------------------------------------------------

[State -1, Teleport]
type = ChangeState
value = 1600
triggerall = roundstate = 2 
triggerall = var(59) = 0
triggerall = command = "Teleport"
Triggerall = StateType != A
trigger1 = ctrl

;===========================================================================

[State -1,Forward Dash] ;Air Forward Dash
type = ChangeState
value = 100000
triggerall = (StateType = A && command = "FF")
trigger1 = StateNo != [100,109]
trigger1 = ctrl

;===========================================================================

; Counter Moves
[State -1, Counter Move]
type = ChangeState
triggerall = var(59) = 0
value = 8000 + 1 * (command = "CounterB")
;triggerall = AILevel = 0 ;AI control
triggerall = var(58) < 1 ;AI control
triggerall = power >= 1000
triggerall = statetype != A
triggerall = stateno = [150, 152]
trigger1 = (command = "CounterA") || (command = "CounterB")
ignorehitpause = 1

;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 260 
triggerall = roundstate = 2 
triggerall = var(59) = 0
triggerall = command = "du" || command = "abc" 
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno =220 && stateno =420
trigger2 = time > 10

; Push Block (Stand)
[State -1]
type = ChangeState
value = 550
triggerall = roundstate = 2 
triggerall = var(59) = 0
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "y" && command = "z")
trigger1 = stateno = [150,151]

;Push Block (crouching)
[State -1]
type = ChangeState
value = 560
triggerall = roundstate = 2 
triggerall = var(59) = 0
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "y" && command = "z")
trigger1 = stateno = [152,153]

;Push Block (aerial)
[State -1]
type = ChangeState
value = 570
triggerall = roundstate = 2 
triggerall = var(59) = 0
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "y" && command = "z")
trigger1 = stateno = 154
trigger2 = stateno = 155
trigger2 = Time <= 10

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = roundstate = 2 
triggerall = var(59) = 0
triggerall = stateno = 0 || stateno = 10 || stateno = 20 || stateno = 52 || stateno = [105,106]
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "BB"
trigger2 = command = "holdback"
trigger2 = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "y" && command = "z")


;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = roundstate = 2 
triggerall = var(59) = 0
triggerall = stateno = 0 || stateno = 10 || stateno = 20 || stateno = 52 || stateno = [100,101]
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "FF"
trigger2 = command = "x" && command = "y"
trigger3 = command = "y" && command = "z"
trigger4 = command = "x" && command = "y" && command = "z"

;---------------------------------------------------------------------------
;Kung Fu Throw
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = roundstate = 2 
triggerall = P2Name != "Abyss"|| EnemyNear,AuthorName !="XsLaught"
triggerall = P2Name != "Onslaught"|| EnemyNear,AuthorName !="XsLaught"
triggerall = P2Name != "Apocalypse"|| EnemyNear,AuthorName !="OnslaughtX & Kung Fu Man"
triggerall = var(59) = 0
triggerall = command = "z" || command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

[State -1, Forward Recovery Roll]
type = ChangeState
value = 890
triggerall = roundstate = 2 
triggerall = !Var(59)
triggerall = command = "holdfwd"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1

[State -1, Backward Recovery Roll]
type = ChangeState
value = 895
triggerall = roundstate = 2 
triggerall = !Var(59)
triggerall = command = "holdback"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================

;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 215
triggerall = var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "z"
triggerall = command = "holdfwd"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 210) && (Movecontact)
trigger4 = (StateNo = 230) && (Movecontact)
trigger5 = (StateNo = 240) && (Movecontact)
trigger6 = StateNo = 400&& Movecontact
trigger7 = StateNo = 410&& Movecontact
trigger8 = StateNo = 430&& Movecontact
trigger9 = StateNo = 440&& Movecontact
trigger10 = (stateno=[100,101])

;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = (StateType = S) && (Ctrl)

;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (stateno = 200)
trigger3 = (stateno = 230)

;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 210) && (Movecontact)
trigger4 = (StateNo = 230) && (Movecontact)
trigger5 = (StateNo = 240) && (Movecontact)
trigger6 = StateNo = 400&& Movecontact
trigger7 = StateNo = 410&& Movecontact
trigger8 = StateNo = 430&& Movecontact
trigger9 = StateNo = 440&& Movecontact
trigger10 = (stateno=[100,101])
;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (Stateno = 200) && (Movecontact)
trigger3 = (StateNo = 430) && (Movecontact)

;Stand meduim Kick
[State -1, Stand meduim Kick]
type = ChangeState
value = 240
triggerall = var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (Stateno = 200) && (Movecontact)
trigger3 = (StateNo = 430) && (Movecontact)
trigger4 = (StateNo = 230) && (Movecontact)
trigger5 = (stateno=[100,101])

;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 210) && (Movecontact)
trigger4 = (StateNo = 230) && (Movecontact)
trigger5 = (StateNo = 240) && (Movecontact)
trigger6 = StateNo = 400&& Movecontact
trigger7 = StateNo = 410&& Movecontact
trigger8 = StateNo = 430&& Movecontact
trigger9 = StateNo = 440&& Movecontact
trigger10 = (stateno=[100,101])
;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C && (Ctrl)

;Crouching meduim Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 205) && (Movecontact)
trigger4 = (StateNo = 230) && (Movecontact)
trigger5 = StateNo = 400 && Movecontact
trigger6 = StateNo = 430 && Movecontact
trigger7 = (stateno=[100,101])

;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 210) && (Movecontact)
trigger4 = (StateNo = 230) && (Movecontact)
trigger5 = (StateNo = 240) && (Movecontact)
trigger6 = StateNo = 400&& Movecontact
trigger7 = StateNo = 410&& Movecontact
trigger8 = StateNo = 430&& Movecontact
trigger9 = StateNo = 440&& Movecontact
trigger10 = (stateno=[100,101])
;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C && (Ctrl)
trigger2 = (Stateno = 400) && (Movecontact)
trigger3 = (StateNo = 200) && (Movecontact)

;Crouching Strong Kick
[State -1, Crouching med Kick]
type = ChangeState
value = 440
triggerall = var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 400) && (Movecontact)
trigger5 = (StateNo = 430) && (Movecontact)

;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 210) && (Movecontact)
trigger4 = (StateNo = 230) && (Movecontact)
trigger5 = (StateNo = 240) && (Movecontact)
trigger6 = StateNo = 400&& Movecontact
trigger7 = StateNo = 410&& Movecontact
trigger8 = StateNo = 430&& Movecontact
trigger9 = StateNo = 440&& Movecontact
trigger10 = (stateno=[100,101])
;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "x"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 100000

;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "y"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600&& MoveContact
trigger3 = StateNo = 630&& MoveContact 
trigger4 = stateno = 100000

;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "z"
trigger1 = statetype = A && ctrl
trigger2 = StateNo = 600&& MoveContact
trigger3 = StateNo = 610&& MoveContact
trigger4 = StateNo = 630&& MoveContact
trigger5 = StateNo = 640&& MoveContact
trigger6 = stateno = 100000
;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "a"
trigger1 = statetype = A && ctrl
trigger2 = StateNo = 600&& MoveContact
trigger3 = stateno = 100000

;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "b"
trigger1 = statetype = A && ctrl
trigger2 = StateNo = 600&& MoveContact
trigger3 = StateNo = 610&& MoveContact
trigger4 = StateNo = 630&& MoveContact
trigger5 = stateno = 100000

;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = var(59) = 0
triggerall = roundstate = 2 
triggerall = command = "c"
trigger1 = statetype = A && ctrl
trigger2 = StateNo = 600&& MoveContact
trigger3 = StateNo = 610&& MoveContact
trigger4 = StateNo = 630&& MoveContact
trigger5 = StateNo = 640&& MoveContact
trigger6 = stateno = 100000

;Double Jump
[State -1, Stand]
type = ChangeState
value = 45
triggerall = command = "up"
triggerall = vel Y > -40
triggerall = var(25)=2
trigger1 = ctrl
trigger1 = stateno = 50 || stateno = 460 || stateno = 257 || stateno = 5040 || stateno = 461 || stateno = 7000
trigger2 = stateno = [600,650]
trigger2 = movecontact
