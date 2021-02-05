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

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;

[Command]
name = "Giant Storm"
command = ~D, DF, F, D, DF, F, x+y
time = 20

[Command]
name = "Giant Storm"
command = ~D, DF, F, D, DF, F, x+z
time = 20

[Command]
name = "Giant Storm"
command = ~D, DF, F, D, DF, F, y+z
time = 20

[Command]
name = "Giant Storm"
command = ~D, DF, F, D, DF, F, ~x+y
time = 20

[Command]
name = "Giant Storm"
command = ~D, DF, F, D, DF, F, ~x+z
time = 20

[Command]
name = "Giant Storm"
command = ~D, DF, F, D, DF, F, ~y+z
time = 20

[Command]
name = "BomberDX"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "BomberDX"   ;Same name as above
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "BomberDX"   ;Same name as above
command = ~D, DF, F, D, DF, F, z
time = 20

[Command]
name = "BomberDX"
command = ~D, DF, F, D, DF, F, ~x
time = 20

[Command]
name = "BomberDX"
command = ~D, DF, F, D, DF, F, ~y
time = 20

[Command]
name = "BomberDX"
command = ~D, DF, F, D, DF, F, ~z
time = 20

[Command]
name = "ArmCrash"
command = ~D, DF, F, D, DF, F, a
time = 20

[Command]
name = "ArmCrash"   ;Same name as above
command = ~D, DF, F, D, DF, F, b
time = 20

[Command]
name = "ArmCrash"   ;Same name as above
command = ~D, DF, F, D, DF, F, c
time = 20

[Command]
name = "ArmCrash"
command = ~D, DF, F, D, DF, F, ~a
time = 20

[Command]
name = "ArmCrash"
command = ~D, DF, F, D, DF, F, ~b
time = 20

[Command]
name = "ArmCrash"
command = ~D, DF, F, D, DF, F, ~c
time = 20


[Command]
name = "Kapa"
command = ~D, DB, B, D, DB, B, x
time = 20

[Command]
name = "Kapa"   
command = ~D, DB, B, D, DB, B, y
time = 20

[Command]
name = "Kapa"   
command = ~D, DB, B, D, DB, B, z
time = 20


[Command]
name = "Kapa"
command = ~D, DB, B, D, DB, B, ~x
time = 20

[Command]
name = "Kapa"   
command = ~D, DB, B, D, DB, B, ~y
time = 20

[Command]
name = "Kapa"   
command = ~D, DB, B, D, DB, B, ~z
time = 20

[Command]
name = "Kapalvl2"
command = ~D, DB, B, D, DB, B, a
time = 20

[Command]
name = "Kapalvl2"   
command = ~D, DB, B, D, DB, B, b
time = 20

[Command]
name = "Kapalvl2"   
command = ~D, DB, B, D, DB, B, c
time = 20


[Command]
name = "Kapalvl2"
command = ~D, DB, B, D, DB, B, ~a
time = 20

[Command]
name = "Kapalvl2"   
command = ~D, DB, B, D, DB, B, ~b
time = 20

[Command]
name = "Kapalvl2"   
command = ~D, DB, B, D, DB, B, ~c
time = 20

[Command]
name = "supercounter"
command = ~D, DB, B, x

[Command]
name = "supercounter"
command = ~D, DB, B, y

[Command]
name = "supercounter"
command = ~D, DB, B, z

[Command]
name = "GenocideShell"
command = ~D, B, F, z
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "blocking"
command = $F,x
time = 3

[Command]
name = "blocking" ;Same name as above (buttons in opposite order)
command = x,$F
time = 3

[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_z"
command = ~F, D, DF, z

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y

[Command]
name = "upper_xy"
command = ~F, D, DF, x+z

[Command]
name = "upper_xy"
command = ~F, D, DF, y+z

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_z"
command = ~D, DB, B, z

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_c"
command = ~D, DF, F, c

[Command]
name = "QCF_ab"
command = ~D, DF, F, a+b

[Command]
name = "QCF_ab"
command = ~D, DF, F, a+c

[Command]
name = "QCF_ab"
command = ~D, DF, F, b+c

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+z

[Command]
name = "QCF_xy"
command = ~D, DF, F, y+z

[Command]
name = "HCB_a"
command = ~F, D, B, a

[Command]
name = "HCB_b"
command = ~F, D, B, b

[Command]
name = "HCB_c"
command = ~F, D, B, c

[Command]
name = "FF_c"
command = F, F, c

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

[Command]
name = "BY"
command = /b+y
time = 10

[command]
name = "holdy"
command = /y

[command]
name = "holdb"
command = /b

[command]
name = "holdx"
command = /x

[command]
name = "holda"
command = /a

[command]
name = "dodge"
command = a+x
buffer.time=2

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "superjump"     ;Required (do not remove)
command = $D, U
time = 10

[Command]
name = "superjumpforward"     ;Required (do not remove)
command = $D, UF
time = 10

[Command]
name = "superjumpbackward"     ;Required (do not remove)
command = $D, UB
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
;
;---------------------------------------------------------------------------
;Giant Storm
[State -1, Giant Storm]
type = ChangeState
value = 3500
triggerall = command = "Giant Storm"
triggerall = power >= 3000
triggerall = !NumHelper(9999)   ;Limit timer
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact
trigger3 = stateno = 1310 || stateno = 1330 ;From blocking
;---------------------------------------------------------------------------
;Triple Kung Fu Palm (uses one super bar)
[State -1, BomberDX air]
type = ChangeState
value = 3400
triggerall = command = "BomberDX"
triggerall = power >= 1000
triggerall = !NumHelper(9999)   ;Limit timer
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = statetype != S
trigger2 = statetype != C
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact
trigger3 = stateno = 1310 || stateno = 1330 ;From blocking
;--------------------------------------------------------------------------
;Triple Kung Fu Palm (uses one super bar)
[State -1, Kapalvl2]
type = ChangeState
value = 3450
triggerall = command = "GenocideShell"
triggerall = power >= 2000
triggerall = NumHelper(3451)=0   ;Limit timer
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact
trigger3 = stateno = 1310 || stateno = 1330 ;From blocking
;---------------------------------------------------------------------------
;Triple Kung Fu Palm (uses one super bar)
[State -1, Kapalvl2]
type = ChangeState
value = 3200
triggerall = command = "Kapalvl2"
triggerall = power >= 2000
triggerall = !NumHelper(9999)   ;Limit timer
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact
trigger3 = stateno = 1310 || stateno = 1330 ;From blocking
;---------------------------------------------------------------------------
;Triple Kung Fu Palm (uses one super bar)
[State -1, BomberDX]
type = ChangeState
value = 3300
triggerall = command = "BomberDX"
triggerall = power >= 1000
triggerall = !NumHelper(9999)   ;Limit timer
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact
trigger3 = stateno = 1310 || stateno = 1330 ;From blocking
;---------------------------------------------------------------------------
;Triple Kung Fu Palm (uses one super bar)
[State -1, Kapa]
type = ChangeState
value = 3100
triggerall = command = "Kapa"
triggerall = power >= 1000
triggerall = !NumHelper(9999)   ;Limit timer
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact
trigger3 = stateno = 1310 || stateno = 1330 ;From blocking
;---------------------------------------------------------------------------
;Arm Crash
[State -1, Arm Crash]
type = ChangeState
value = 3000
triggerall = command = "ArmCrash"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact
trigger3 = stateno = 1310 || stateno = 1330 ;From blocking

;---------------------------------------------------------------------------
[State -1, Counter]
type = ChangeState
value = 700
triggerall = command = "supercounter"
trigger1 =  statetype != A
trigger1 = (stateno = [150,155]) && power >= 1000

;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
trigger3 = stateno = 1310 || stateno = 1330 ;From blocking
var(1) = 1
;---------------------------------------------------------------------------
;Fast Kung Fu Blow (1/3 super bar)
[State -1, Fast Kung Fu Blow]
type = ChangeState
value = 1250
triggerall = command = "upper_xy"
triggerall = power >= 500
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Fast Kung Fu Blow (1/3 super bar)
[State -1, Fast Kung Fu Blow]
type = ChangeState
value = 1200
triggerall = command = "upper_z"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Light Kung Fu Blow
[State -1, Light Kung Fu Blow]
type = ChangeState
value = 1200
triggerall = command = "upper_x"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Strong Kung Fu Blow
[State -1, Strong Kung Fu Blow]
type = ChangeState
value = 1200
triggerall = command = "upper_y"
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;EX Power Tackle
[State -1, EX Flame Pillar]
type = ChangeState
value = 1015
triggerall = command = "QCF_xy"
triggerall = power >= 500
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Flame Pillar
[State -1, Flame Pillar]
type = ChangeState
value = 1000
triggerAll = var(1) ;Use combo condition (above)
triggerAll = !AILevel
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(39)
triggerall = !NumHelper(9998)
triggerall = var(1)
triggerall = ctrl
trigger1 = ifelse((anim!=[5,6]),command="QCF_x",command="QCF_x")
trigger1 = (var(10):=1)||1
;trigger2 = var(6)
trigger2 = AILevel <= 0 ;AI Off
trigger2 = ifelse((anim!=[5,6]),command="QCF_y",command="QCF_y")
trigger2 = (var(10):=2)||1
trigger3 = AILevel <= 0 ;AI Off
trigger3 = ifelse((anim!=[5,6]),command="QCF_z",command="QCF_z")
trigger3 = (var(10):=3)||1
;---------------------------------------------------------------------------
;EX Power Tackle
[State -1, EX Power Tackle]
type = ChangeState
value = 1125
triggerall = command = "QCF_ab"
triggerall = power >= 500
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Heavy Power Tackle
[State -1, Heavy Power Tackle]
type = ChangeState
value = 1120
triggerall = command = "QCF_c"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Medium Power Tackle
[State -1, Medium Power Tackle]
type = ChangeState
value = 1110
triggerall = command = "QCF_b"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Light Power Tackle
[State -1, Light Power Tackle]
type = ChangeState
value = 1100
triggerall = command = "QCF_a"
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
[State -1, dodge]
type = Changestate
value = 117
triggerall = command = "dodge"
trigger1 = ctrl
trigger1 = statetype != A
;---------------------------------------------------------------------------
[State -1, Powercharge]
type = Changestate
value = 730
triggerall = command = "holdb" && command = "holdy"
triggerall = power < powermax
trigger1 = ctrl
trigger1 = statetype != A
;===========================================================================
;Air Dash Forward
[State -1, Fwd]
type = ChangeState
value = 110
triggerall = stateno != 105
trigger1 = pos Y < -20
trigger1 = var(55)=0
trigger1 = (command = "FF") && (statetype = A) && (ctrl)
trigger1 = (var(55):=1)||1
;----------------------------------------------------------------------------
;Air Dash Back
[State -1, Back]
type = ChangeState
value = 115
triggerall = stateno != 105
triggerall = anim != 42
trigger1 = pos Y < -20
trigger1 = var(55)=0
trigger1 = (command = "BB") && (statetype = A) && (ctrl)
trigger1 = (var(55):=1)||1
;---------------------------------------------------------------------------
;Air Power dash Fwd
[State -1, Dash Fwd]
type = ChangeState
value = 1021
triggerall = command = "z" && command = "c"
triggerall = power >= 500
triggerall = stateno != 1021
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [200,699])
;---------------------------------------------------------------------------
;Power dash Fwd
[State -1, Dash Fwd]
type = ChangeState
value = 102
triggerall = command = "z" && command = "c"
triggerall = power >= 500
triggerall = stateno != 101
trigger1 = statetype = S 
trigger1 = ctrl
trigger2 = (stateno = [200,699])
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Kung Fu Throw
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "y" && command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H



;===========================================================================
;---------------------------------------------------------------------------
;Light punch
[State -1, Standing Light Punch]
type= changestate
value= 200
triggerall= command!="holddown" && command="x"
triggerall= statetype != A
trigger1= ctrl || (stateno=[100,101])
trigger2 = stateno = 230 && movecontact
;---------------------------------------------------------------------------
;Mid punch
[State -1, Standing Mid Punch]
type= changestate
value= 210
triggerall= command!="holddown" && command="y"
triggerall= statetype != A
trigger1= ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
;---------------------------------------------------------------------------
;Strong punch
[State -1, Standing Strong Punch]
type= changestate
value= 220
triggerall= command!="holddown" && command="z"
triggerall= statetype != A
trigger1= ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 240 && movecontact
;---------------------------------------------------------------------------
;Light kick
[State -1, Standing Light kick]
type= changestate
value= 230
triggerall= command!="holddown" && command="a"
triggerall= statetype != A
trigger1= ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
;---------------------------------------------------------------------------
;Mid kick
[State -1, Standing Mid kick]
type= changestate
value= 240
triggerall= command!="holddown" && command="b"
triggerall= statetype != A
trigger1= ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
;---------------------------------------------------------------------------
;Strong kick
[State -1, Standing Strong kick]
type= changestate
value= 250
triggerall= command!="holddown" && command="c"
triggerall= statetype != A
trigger1= ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 240 && movecontact
;---------------------------------------------------------------------------
;Crouch light punch
[State -1, Crouching Light Punch]
type= changestate
value= 400
triggerall= command="holddown" && command="x"
triggerall= statetype!=A
trigger1= ctrl || (stateno=[100,101])
trigger2 = stateno = 430 && movecontact
;---------------------------------------------------------------------------
;Crouch Mid punch
[State -1, Crouching Mid Punch]
type= changestate
value= 410
triggerall= command="holddown" && command="y"
triggerall= statetype!=A
trigger1= ctrl || (stateno=[100,101])
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 430 && movecontact
;---------------------------------------------------------------------------
;Crouch Strong punch
[State -1, Crouching Strong Punch]
type= changestate
value= 420
triggerall= command="holddown" && command="z"
triggerall= statetype!=A
trigger1= ctrl || (stateno=[100,101])
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 410 && movecontact
;---------------------------------------------------------------------------
;Crouch Light kick
[State -1, Crouching Light kick]
type= changestate
value= 430
triggerall= command="holddown" && command="a"
triggerall= statetype!=A
trigger1= ctrl || (stateno=[100,101])
trigger2 = stateno = 400 && movecontact
;---------------------------------------------------------------------------
;Crouch Mid kick
[State -1, Crouching Mid kick]
type= changestate
value= 440
triggerall= command="holddown" && command="b"
triggerall= statetype!=A
trigger1= ctrl || (stateno=[100,101])
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 430 && movecontact
trigger4 = stateno = 420 && movecontact
;---------------------------------------------------------------------------
;Crouch Strong kick
[State -1, Crouching hard kick]
type= changestate
value= 450
triggerall= command="holddown" && command="c"
triggerall= statetype!=A
trigger1= ctrl || (stateno=[100,101])
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 440 && movecontact
;---------------------------------------------------------------------------
;Jump Light punch
[State -1, Jump light punch]
type = ChangeState
value = 600
triggerall = statetype = A
triggerall = command = "x"
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Mid punch
[State -1, Jump Mid punch]
type = ChangeState
value = 610
triggerall = statetype = A
triggerall = command = "y"
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
;---------------------------------------------------------------------------
;Jump Strong punch 
[State -1, Jump Strong punch]
type = ChangeState
value = 620
triggerall = statetype = A
triggerall = command = "z"
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
;---------------------------------------------------------------------------
;Jump Light kick
[State -1, Jump Light kick]
type = ChangeState
value = 630
triggerall = statetype = A
triggerall = command = "a"
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Mid kick
[State -1, Jump Mid kick]
type = ChangeState
value = 640
triggerall = statetype = A
triggerall = command = "b"
trigger1 = ctrl
trigger2 = stateno = 630 && movecontact
trigger3 = stateno = 600 && movecontact
;---------------------------------------------------------------------------
;Jump Strong kick
[State -1, Jump Strong kick]
type = ChangeState
value = 650
triggerall = statetype = A
triggerall = command = "c"
trigger1 = ctrl
trigger2 = stateno = 640 && movecontact
trigger3 = stateno = 610 && movecontact
;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Jump Launcher]
type = ChangeState
value = 10230
triggerall= var(59)<=0 && var(52)<=0
;triggerall = roundstate = 2
triggerall = command = "holdup"
trigger1 = (stateno = 225 || stateno = 226)  && animelemtime(5)>0 && MoveHit

[State -1, Super Jump Straight Up]
type = ChangeState
value = 10231
triggerall= var(59)<=0 && var(52)<=0
;triggerall = roundstate = 2
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = command = "superjump"

[State -1, Super Jump Forward]
type = ChangeState
value = 10232
triggerall= var(59)<=0 && var(52)<=0
;triggerall = roundstate = 2
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = command = "superjumpforward"

[State -1, Super Jump Backward]
type = ChangeState
value = 10233
triggerall= var(59)<=0 && var(52)<=0
;triggerall = roundstate = 2
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = command = "superjumpbackward"
;---------------------------------------------------------------------------
