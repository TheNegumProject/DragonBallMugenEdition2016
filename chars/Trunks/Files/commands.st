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

[Command]
name = "2qcf_x"
command = ~D, DF, F, D, DF, ~x
time = 32
[Command]
name = "2qcf_x"
command = ~D, DF, F, D, DF, x
time = 32

[Command]
name = "2qcf_y"
command = ~D, DF, F, D, DF, ~y
time = 32
[Command]
name = "2qcf_y"
command = ~D, DF, F, D, DF, y
time = 32

[Command]
name = "2qcf_z"
command = ~D, DF, F, D, DF, ~z
time = 32
[Command]
name = "2qcf_z"
command = ~D, DF, F, D, DF, z
time = 32

;-| Special Motions |------------------------------------------------------

[Command]
name = "qcf_x"
command = ~D, DF, F, x

[Command]
name = "qcf_y"
command = ~D, DF, F, y

[Command]
name = "qcf_z"
command = ~D, DF, F, z

[Command]
name = "qcb_x"
command = ~D, DB, B, x

[Command]
name = "qcb_y"
command = ~D, DB, B, y

[Command]
name = "qcb_z"
command = ~D, DB, B, z

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
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = y+z
time = 1

[Command]
name = "recovery";Required (do not remove)
command = x+z
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

;---------------------------------------------------------------------------
[Statedef -1]

;---------------------------------------------------------------------------
[State -1, Burning Attack]
type = changestate
value = 3000
triggerall = (command = "2qcf_x" || command = "2qcf_y" || command = "2qcf_z")
triggerall = statetype != a
triggerall = power >= 1000
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Sword Rush Light]
type = changestate
value = 1200
triggerall = command = "qcb_x"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200, 420]
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, Sword Rush Medium]
type = changestate
value = 1210
triggerall = command = "qcb_y"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200, 420]
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, Sword Rush Hard]
type = changestate
value = 1220
triggerall = command = "qcb_z"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200, 420]
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, Ki Blast Light]
type = changestate
value = 1000
triggerall = command = "qcf_x"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200, 420]
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, Ki Blast Medium]
type = changestate
value = 1010
triggerall = command = "qcf_y"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200, 420]
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, Ki Blast Hard]
type = changestate
value = 1020
triggerall = command = "qcf_z"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200, 420]
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Air dash forward]
type = changestate
value = 110
trigger1 = command = "FF"
trigger1 = statetype = a
trigger1 = var(1) ;air dash available
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Air dash backwards]
type = changestate
value = 115
trigger1 = command = "BB"
trigger1 = statetype = a
trigger1 = var(1) ;air dash available
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Throw]
type = changestate
value = 800
trigger1 = command = "z"
trigger1 = command = "holdfwd" || command = "holdback"
trigger1 = statetype = s
trigger1 = ctrl
trigger1 = p2bodydist x < 10
trigger1 = p2statetype = s || p2statetype = c
trigger1 = p2movetype != h

;---------------------------------------------------------------------------
[State -1, Charge]
type = changestate
value = 900
trigger1 = command = "hold_a"
trigger1 = statetype != a
trigger1 = power < powermax
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Zanzoken]
type = changestate
value = 950
triggerall = command = "c"
trigger1 = statetype != a
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Stand Light attack]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = helper(15630),command != "holddown" ;this helper prevent hitpause buffer
trigger1 = statetype = S
trigger1 = ctrl || (stateno = [101,102])
trigger2 = stateno = 200
trigger2 = time > 6

;---------------------------------------------------------------------------
[State -1, Stand medium attack]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = helper(15630),command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl || (stateno = [101,102])
trigger2 = stateno = 200 || stateno = 400
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, Stand strong attack]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = helper(15630),command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl || (stateno = [101,102])
trigger2 = (stateno = [200, 210]) || (stateno = [400,410])
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, Crouching Light attack]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = helper(15630),command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [101,102]
trigger3 = stateno = 400 && time > 5
trigger4 = stateno = 200
trigger4 = movecontact

;---------------------------------------------------------------------------
[State -1, Crouching medium attack]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = helper(15630),command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [101,102]
trigger3 = stateno = 400 || stateno = [200, 210]
trigger3 = movecontact

;---------------------------------------------------------------------------
[State -1, Crouching strong attack]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = helper(15630),command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [101,102]
trigger3 = (stateno = [200, 210]) || (stateno = [400, 410])
trigger3 = movecontact

;---------------------------------------------------------------------------
[State -1, Jump Light attack]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl || stateno = 111

;---------------------------------------------------------------------------
[State -1, Jump medium attack]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl || stateno = 111
trigger2 = stateno = 600
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, Jump strong attack]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl || stateno = 111
trigger2 = stateno = [600,610]
trigger2 = movecontact
