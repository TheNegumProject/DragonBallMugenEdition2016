; �R���t�B�M�����[�V����

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s


;-| CPU�A���S���Y���p�R�}���h |------------------------------

[Command]
name = "cpu1"
command = a,U,D,F,F,B,B,D,U,U
time = 1
[Command]
name = "cpu2"
command = b,U,D,F,B,F,B,D,U,D
time = 1
[Command]
name = "cpu3"
command = c,U,D,B,F,B,F,D,U,B
time = 1
[Command]
name = "cpu4"
command = x,U,D,B,F,F,B,D,U,F
time = 1
[Command]
name = "cpu5"
command = y,U,D,F,F,B,B,D,U,a
time = 1
[Command]
name = "cpu6"
command = z,U,D,F,B,F,B,D,U,b
time = 1
[Command]
name = "cpu7"
command = s,U,D,B,F,B,F,D,U,c
time = 1
[Command]
name = "cpu8"
command = b,U,D,B,F,F,B,D,U,x
time = 1
[Command]
name = "cpu9"
command = c,U,D,F,B,F,B,D,U,y
time = 1
[Command]
name = "cpu10"
command = c,U,D,B,B,F,B,D,U,y
time = 1
[Command]
name = "cpu11"
command = a,U,D,F,F,B,B,B,D,U,U
time = 1
[Command]
name = "cpu12"
command = b,U,D,F,B,F,B,B,D,U,D
time = 1
[Command]
name = "cpu13"
command = c,U,D,B,B,F,B,F,D,U,B
time = 1
[Command]
name = "cpu14"
command = x,U,D,B,F,B,F,B,D,U,F
time = 1
[Command]
name = "cpu15"
command = y,U,D,F,F,B,B,B,D,U,a
time = 1
[Command]
name = "cpu16"
command = z,U,B,D,F,B,F,B,D,U,b
time = 1
[Command]
name = "cpu17"
command = s,U,D,B,F,B,F,B,D,U,c
time = 1
[Command]
name = "cpu18"
command = b,U,D,B,F,B,F,B,D,U,x
time = 1
[Command]
name = "cpu19"
command = c,U,D,F,B,B,F,B,D,U,y
time = 1
[Command]
name = "cpu20"
command = c,U,D,B,B,B,F,B,D,U,y
time = 1
[Command]
name = "cpu21"
command = a,U,D,F,F,s,B,B,D,U,U
time = 1
[Command]
name = "cpu22"
command = b,U,s,D,F,B,F,B,D,U,D
time = 1
[Command]
name = "cpu23"
command = c,U,D,B,F,B,F,s,D,U,B
time = 1
[Command]
name = "cpu24"
command = x,U,D,B,s,F,F,B,D,U,F
time = 1
[Command]
name = "cpu25"
command = y,U,D,s,F,F,B,B,D,U,a
time = 1
[Command]
name = "cpu26"
command = z,U,D,F,B,F,s,B,D,U,b
time = 1
[Command]
name = "cpu27"
command = s,U,D,s,B,F,B,F,D,U,c
time = 1
[Command]
name = "cpu28"
command = b,U,D,B,s,F,F,B,s,D,U,x
time = 1
[Command]
name = "cpu29"
command = c,U,D,F,s,B,F,B,D,U,y
time = 1
[Command]
name = "cpu30"
command = c,U,D,B,B,F,B,s,D,U,y
time = 1

; �R�}���h
;-| Super Motions |--------------------------------------------------------

[Command]
name = "dragonrush"
command = ~D, B, F, b
time = 30

[Command]
name = "milky"
command = ~D, F, D, F, y
time = 25

[Command]
name = "bodychange"
command = ~D, B, F, y
time = 25



;-| Special Motions |------------------------------------------------------

[Command]
name = "hadouken"
command = ~D, F, x
time = 20

[Command]
name = "hadouken2"
command = ~D, F, y
time = 20

[Command]
name = "shoulder"
command = ~D, B, x
time = 20

[Command]
name = "shoulder2"
command = ~D, B, y
time = 20


[command]
name = "slashdown"
command = ~D, F, a
time = 20

[command]
name = "slashdown2"
command = ~D, F, b
time = 20


[Command]
name = "ug3"
command = ~D, B, a+b
time = 20

[Command]
name = "ug"
command = ~D, B, b
time = 20

[Command]
name = "ug2"
command = ~D, B, a
time = 20


[Command]
name = "dash_x"
command = ~F, F, x

[Command]
name = "dash_y"
command = ~F, F, y

[Command]
name = "dash_a"
command = ~F, F, a

[Command]
name = "dash_b"
command = ~F, F, b

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "DD"
command = D, D
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = x+a
time = 1

[Command]
name = "recovery"
command = c
time = 1

[Command]
name = "charge"
command = y+b
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
name = "hold_a"
command = /$a
time = 1

[Command]
name = "hold_b"
command = /$b
time = 1

[Command]
name = "hold_c"
command = /$c
time = 1

[Command]
name = "hold_x"
command = /$x
time = 1

[Command]
name = "hold_y"
command = /$y
time = 1

[Command]
name = "hold_z"
command = /$z
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

[Command]
name = "holddownfwd";Required (do not remove)
command = /$DF
time = 1

[Command]
name = "longjump"
command = ~D, $U
time = 11

[Statedef -1]

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;=============================�K�E�Z========================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

; �v���l�b�g�o�[�X�g
[State -1,]
type = ChangeState
value = 2400
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "dragonrush"
triggerall = power >= 2000
trigger1 = ctrl
trigger1 = statetype != A
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 200 && movecontact
trigger7 = stateno = 204 && movecontact
trigger8 = stateno = 250 && movecontact
trigger9 = stateno = 260 && movecontact
trigger10 = stateno = 270 && movecontact
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 450 && movecontact
trigger15 = stateno = 500 && movecontact
trigger16 = stateno = 550 && movecontact

; �������g
[State -1,]
type = ChangeState
value = 2200
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "bodychange"
triggerall = power >= 3000
;triggerall = life <=500
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 200 && movecontact
trigger7 = stateno = 204 && movecontact
trigger8 = stateno = 250 && movecontact
trigger9 = stateno = 260 && movecontact
trigger10 = stateno = 270 && movecontact
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 450 && movecontact
trigger15 = stateno = 500 && movecontact

; �M�����b�N�C
[State -1,]
type = ChangeState
value = 2000
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "milky"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 200 && movecontact
trigger7 = stateno = 204 && movecontact
trigger8 = stateno = 250 && movecontact
trigger9 = stateno = 260 && movecontact
trigger10 = stateno = 270 && movecontact
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 450 && movecontact
trigger15 = stateno = 500 && movecontact

; �󒆃M�����b�N�C
[State -1,]
type = ChangeState
value = 2100
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "milky"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 635 && movecontact
trigger7 = stateno = 640 && movecontact
trigger8 = stateno = 650 && movecontact

; �A���G�l���M�[�e�i��j
[State -1]
type = ChangeState
value = 1000
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "hadouken"
triggerall = power >= 100
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 220 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 230 && movecontact = 1
trigger6 = stateno = 200 && movecontact = 1
trigger7 = stateno = 204 && movecontact = 1
trigger8 = stateno = 250 && movecontact = 1
trigger9 = stateno = 260 && movecontact = 1
trigger10 = stateno = 270 && movecontact = 1
trigger11 = stateno = 400 && movecontact = 1
trigger12 = stateno = 410 && movecontact = 1
trigger13 = stateno = 420 && movecontact = 1
trigger14 = stateno = 450 && movecontact = 1
trigger15 = stateno = 500 && movecontact = 1

; �G�l���M�[�e�i���j
[State -1]
type = ChangeState
value = 1005
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "hadouken2"
triggerall = power >= 100
triggerall = numproj = 0 || Numprojid(1005) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 220 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 230 && movecontact = 1
trigger6 = stateno = 200 && movecontact = 1
trigger7 = stateno = 204 && movecontact = 1
trigger8 = stateno = 250 && movecontact = 1
trigger9 = stateno = 260 && movecontact = 1
trigger10 = stateno = 270 && movecontact = 1
trigger11 = stateno = 400 && movecontact = 1
trigger12 = stateno = 410 && movecontact = 1
trigger13 = stateno = 420 && movecontact = 1
trigger14 = stateno = 450 && movecontact = 1
trigger15 = stateno = 500 && movecontact = 1
trigger16 = stateno = 1000 && AnimElem = 9, >= 1 && AnimElem = 11, <= 1

; �󒆘A���G�l���M�[�e�i��j
[State -1,]
type = ChangeState
value = 1100
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "hadouken"
triggerall = power >= 100
triggerall = numproj = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 635 && movecontact
trigger7 = stateno = 640 && movecontact
trigger8 = stateno = 650 && movecontact

; �󒆃G�l���M�[�e�i���j
[State -1,]
type = ChangeState
value = 1105
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "hadouken2"
triggerall = power >= 100
triggerall = numproj = 0 || Numprojid(1100) = 2 || Numprojid(1105) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 635 && movecontact
trigger7 = stateno = 640 && movecontact
trigger8 = stateno = 650 && movecontact
trigger9 = stateno = 1100 && AnimElem = 9, >= 1 && AnimElem = 11, <= 1


; �V�����_�[�^�b�N���i���j
[State -1]
type = ChangeState
value = 1205
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "shoulder2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact
trigger10 = stateno = 261 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger13 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger14 = stateno = 460 && movecontact

; �V�����_�[�^�b�N���i��j
[State -1]
type = ChangeState
value = 1200
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "shoulder"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = (stateno = [200,299]) && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact
trigger10 = stateno = 261 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger13 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger14 = stateno = 460 && movecontact


; �V�����_�[�^�b�N���i��j
[State -1]
type = ChangeState
value = 6500
triggerall = var(59) != 1
triggerall = IsHelper(6000)
triggerall = (command = "shoulder")  || (command = "shoulder2") || (command = "hadouken")  || (command = "hadouken2")
trigger1 = statetype != A
trigger1 = ctrl

; �V�����_�[�^�b�N���i��j
[State -1]
type = ChangeState
value = 6515
triggerall = var(59) != 1
triggerall = IsHelper(6000)
triggerall = (command = "ug")  || (command = "ug2") || (command = "slashdown")  || (command = "slashdown2")
trigger1 = statetype != A
trigger1 = ctrl


; �V�����_�[�^�b�N���i��j
[State -1]
type = ChangeState
value = 6600
triggerall = var(59) != 1
triggerall = IsHelper(6000)
triggerall = (command = "shoulder")  || (command = "shoulder2") || (command = "hadouken")  || (command = "hadouken2")
trigger1 = statetype = A
trigger1 = ctrl

; �V�����_�[�^�b�N���i��j
[State -1]
type = ChangeState
value = 6615
triggerall = var(59) != 1
triggerall = IsHelper(6000)
triggerall = (command = "ug")  || (command = "ug2") || (command = "slashdown")  || (command = "slashdown2")
trigger1 = statetype = A
trigger1 = ctrl


[State -1]
type = ChangeState
value = 1300
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "ug2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = (stateno = [200,299]) && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact
trigger10 = stateno = 261 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger13 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger14 = stateno = 460 && movecontact

[State -1]
type = ChangeState
value = 1350
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "ug"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = (stateno = [200,299]) && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact
trigger10 = stateno = 261 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger13 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger14 = stateno = 460 && movecontact




; �_�b�V�����p���` (�j���[�g����)
[State -1,]
type = ChangeState
value = 1360
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "dash_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 220 && movecontact; = 1
trigger4 = stateno = 210 && movecontact; = 1
trigger5 = stateno = 230 && movecontact; = 1
trigger6 = stateno = 200 && movecontact; = 1
trigger7 = stateno = 204 && movecontact; = 1
trigger8 = stateno = 250 && movecontact; = 1
trigger9 = stateno = 260 && movecontact; = 1
trigger10 = stateno = 270 && movecontact; = 1
trigger11 = stateno = 400 && movecontact = 1
trigger12 = stateno = 410 && movecontact = 1
trigger13 = stateno = 420 && movecontact = 1
trigger14 = stateno = 450 && movecontact = 1
trigger15 = stateno = 500 && movecontact = 1

[State -1]
type = ChangeState
value = 1500
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "slashdown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1

[State -1]
type = ChangeState
value = 1550
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "slashdown2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = (stateno = [200,299]) && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact
trigger10 = stateno = 261 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger13 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger14 = stateno = 460 && movecontact

; �X���b�V���_�E���L�b�N(��)
[State -1,]
type = ChangeState
value = 1800
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "slashdown"
trigger1 = ctrl
trigger1 = statetype = A
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 635 && movecontact
trigger7 = stateno = 640 && movecontact
trigger8 = stateno = 650 && movecontact

; �X���b�V���_�E���L�b�N(��)
[State -1,]
type = ChangeState
value = 1850
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "slashdown2"
trigger1 = ctrl
trigger1 = statetype = A
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 635 && movecontact
trigger7 = stateno = 640 && movecontact
trigger8 = stateno = 650 && movecontact


;---------------------------------------------------------------------------
;============================����Z=========================================
;---------------------------------------------------------------------------

;�_�b�V��
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) != 1
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;�󒆃_�b�V��
[State -1, Run Fwd]
type = ChangeState
value = 110
triggerall = var(59) != 1
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl

; �o�b�N�X�e�b�v
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) != 1
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

; �󒆃o�b�N�_�b�V��
[State -1, Run Back]
type = ChangeState
value = 112
triggerall = var(59) != 1
triggerall = vel x <= 0;-1
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl

; ����
[State -1,]
type = ChangeState
value = 800
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = (command = "holdfwd" || command = "holdback") && (command = "y")
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = p2bodydist X < 7
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

; �����˂��ԉ΁i�J�E���^�[�j
[State -1]
type = ChangeState
value = 305
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "recovery" ^^ command = "z"
trigger1 = (stateno = 150 || stateno = 151) && power >= 1000
trigger2 = (stateno = 152 || stateno = 153) && power >= 1000

; �C�͗���
[State -1]
type = ChangeState
value = 1900
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = statetype = S
triggerall = Power < 3000
triggerall = ctrl = 1
trigger1 = command = "hold_b" && command = "hold_y"
trigger2 = command = "hold_c"

; ����
[State -1]
type = ChangeState
value = 195
triggerall = var(59) != 1
trigger1 = command = "start"
trigger1 = Vel X = 0
trigger1 = stateno != 195
trigger1 = statetype = S
trigger1 = ctrl = 1

; �����ړ� (���)
[State -1]
type = ChangeState
value = 360
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "recovery" ^^ command = "z"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 101
trigger4 = stateno = 102

; �����ړ� (�O��)
[State -1]
type = ChangeState
value = 361
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "recovery" ^^ command = "z"
trigger1 = statetype = S
trigger1 = ctrl

 �_�b�V�������ړ� (�O��)
[State -1]
type = ChangeState
value = 361
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = stateno = 100 || stateno = 101 || stateno = 102
triggerall = ctrl = 0
trigger1 = command = "hold_x" && command = "hold_a"
trigger2 = command = "hold_z"
trigger3 = command = "hold_c"


;---------------------------------------------------------------------------
;=======================�_�b�V���U��========================================
;---------------------------------------------------------------------------

; �_�b�V�����p���` (�_�b�V����)
[State -1,]
type = ChangeState
value = 1360
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = stateno = 101
trigger1 = command = "hold_y"

; �_�b�V����p���` (�_�b�V����)
[State -1,]
type = ChangeState
value = 500
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = stateno = 101
trigger1 = command = "hold_x"

 �_�b�V����L�b�N (�X���C�f�B���O�L�b�N)
[State -1,]
type = ChangeState
value = 550
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = stateno = 101
trigger1 = command = "hold_a"

 �_�b�V�����L�b�N (�_�b�V����)
[State -1,]
type = ChangeState
value = 525
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = stateno = 101
trigger1 = command = "hold_b"

;---------------------------------------------------------------------------
;============================�ʏ�Z=========================================
;---------------------------------------------------------------------------
;-------------�p���`

; ��p���` (�ߋ���)
[State -1,]
type = ChangeState
value = 210
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2bodydist x < 4
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 210
trigger3 = time > 4
trigger4 = stateno = 500 && movecontact
trigger5 = stateno = 1361 && movecontact
trigger6 = stateno = 1501 && movecontact

; ��p���`
[State -1,]
type = ChangeState
value = 200
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200
trigger3 = time > 9
trigger4 = stateno = 210
trigger4 = time > 4
trigger5 = stateno = 260 && movecontact
trigger6 = stateno = 500 && movecontact
trigger7 = stateno = 1361 && movecontact
trigger8 = stateno = 1501 && movecontact




; ���p���` (�ߋ���)
[State -1,]
type = ChangeState
value = 230
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist x < 15
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 210 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 500 && movecontact
trigger5 = stateno = 1361 && movecontact
trigger6 = stateno = 1501 && movecontact

; ���p���`
[State -1,]
type = ChangeState
value = 220
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 260 && movecontact
trigger7 = stateno = 500 && movecontact
trigger8 = stateno = 1361 && movecontact
trigger9 = stateno = 1501 && movecontact

;-------------------------------------------�L�b�N

; ��L�b�N (�ߋ���)
[State -1,]
type = ChangeState
value = 260
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist x < 15
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 235
trigger2 = time > 3
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 200 && movecontact
trigger5 = stateno = 500 && movecontact
trigger6 = stateno = 1361 && movecontact
trigger7 = stateno = 1501 && movecontact

; ��L�b�N
[State -1,]
type = ChangeState
value = 250
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 250
trigger2 = time > 14
trigger3 = stateno = 260
trigger3 = time > 3
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 200 && movecontact
trigger6 = stateno = 500 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 1361 && movecontact
trigger9 = stateno = 1501 && movecontact

; ���L�b�N (�ߋ���)
[State -1,]
type = ChangeState
value = 280
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2bodydist x < 25
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 200 && movecontact
;trigger4 = stateno = 250 && movecontact
trigger4 = stateno = 260 && movecontact
trigger5 = stateno = 500 && movecontact
trigger6 = stateno = 1361 && movecontact
trigger7 = stateno = 1501 && movecontact

; ���L�b�N
[State -1]
type = ChangeState
value = 270
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 200 && movecontact
trigger6 = stateno = 250 && movecontact
;trigger7 = stateno = 260 && movecontact
trigger7 = stateno = 500 && movecontact
trigger8 = stateno = 1361 && movecontact
trigger9 = stateno = 1501 && movecontact

;---------------------------------------------------------------------------
;============================���Ⴊ��=========================================
;---------------------------------------------------------------------------

; ���Ⴊ�ݎ�p���`
[State -1]
type = ChangeState
value = 410
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 =  stateno = 410
trigger3 =  time > 6
trigger4 = stateno = 500 && movecontact
trigger5 = stateno = 1361 && movecontact
trigger6 = stateno = 1501 && movecontact

; ���Ⴊ�݋��p���`
[State -1]
type = ChangeState
value = 400
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 420 && movecontact
trigger4 = stateno = 410 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 200 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 260 && movecontact
trigger9 = stateno = 500 && movecontact
trigger10 = stateno = 1361 && movecontact
trigger11 = stateno = 1501 && movecontact

; ���Ⴊ�ݎ�L�b�N
[State -1]
type = ChangeState
value = 420
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 420 && movecontact
trigger3 = time > 4
trigger4 = stateno = 410 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 200 && movecontact
trigger7 = stateno = 500 && movecontact
trigger8= stateno = 1361 && movecontact
trigger9 = stateno = 1501 && movecontact

; ���Ⴊ�݋��L�b�N
[State -1]
type = ChangeState
value = 450
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 420 && movecontact
trigger4 = stateno = 410 && movecontact
trigger5 = stateno = 200 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 250 && movecontact
;trigger8 = stateno = 280 && movecontact
trigger8 = stateno = 220 && movecontact
trigger9 = stateno = 230 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 500 && movecontact
trigger12 = stateno = 1361 && movecontact
trigger13 = stateno = 1501 && movecontact

;---------------------------------------------------------------------------
;============================�󒆋Z=========================================
;---------------------------------------------------------------------------

; �W�����v��p���`
[State -1]
type = ChangeState
value = 610
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "x"
trigger1 = statetype = A && vel x != 0
trigger1 = ctrl = 1
;trigger2 = stateno = 610 && movecontact = 1

; �W�����v��p���` (����)
[State -1]
type = ChangeState
value = 600
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600 && movecontact = 1

; �W�����v���p���`
[State -1]
type = ChangeState
value = 620
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600 && movecontact = 1
trigger3 = stateno = 610 && movecontact = 1
trigger4 = stateno = 630 && movecontact = 1
trigger5 = stateno = 635 && movecontact = 1

; �W�����v��L�b�N
[State -1]
type = ChangeState
value = 630
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "a"
trigger1 = statetype = A && vel x != 0
trigger1 = ctrl = 1
trigger2 = stateno = 610 && movecontact = 1
;trigger3 = stateno = 630 && movecontact = 1

; �W�����v��L�b�N (����)
[State -1]
type = ChangeState
value = 635
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600 && movecontact = 1
trigger3 = stateno = 635 && movecontact = 1

; �W�����v���L�b�N
[State -1]
type = ChangeState
value = 650
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "b"
trigger1 = statetype = A && vel x != 0
trigger1 = ctrl = 1
trigger2 = stateno = 610 && movecontact = 1
trigger3 = stateno = 630 && movecontact = 1
trigger4 = stateno = 620 && movecontact = 1

; �W�����v���L�b�N (����)
[State -1]
type = ChangeState
value = 640
triggerall = var(59) != 1
triggerall = !IsHelper
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600 && movecontact = 1
trigger3 = stateno = 635 && movecontact = 1
trigger4 = stateno = 620 && movecontact = 1




;=============================�f�o�b�O========================================
[State -1, �f�o�b�O�\��1]
type = null;AppendToClipboard
trigger1 = 1
text = " V59=%d,V58=%d,BodyDist X=%d,Y=%d"
params = var(59),var(58),floor(P2BodyDist X),ceil(P2BodyDist Y)
ignorehitpause = 1

[State -1, �f�o�b�O�\��2]
type = null;AppendToClipboard
trigger1 = 1
text = " Edge F=%d,B=%d"
params = FrontEdgeBodyDist,BackEdgeBodyDist
ignorehitpause = 1

;=============================�`�h�X�C�b�`========================================
[State -1, AI�X�C�b�`]
type     = VarSet
triggerall = !var(59)
triggerall=RoundState = 2
trigger1 = (command="cpu1")||(command="cpu2")
trigger2 = (command="cpu3")||(command="cpu4")
trigger3 = (command="cpu5")||(command="cpu6")
trigger4 = (command="cpu7")||(command="cpu8")
trigger5 = (command="cpu9")||(command="cpu10")
trigger6 = (command="cpu11")||(command="cpu12")
trigger7 = (command="cpu13")||(command="cpu14")
trigger8 = (command="cpu15")||(command="cpu16")
trigger9 = (command="cpu17")||(command="cpu18")
trigger10 = (command="cpu19")||(command="cpu20")
trigger11 = (command="cpu21")||(command="cpu22")
trigger12 = (command="cpu23")||(command="cpu24")
trigger13 = (command="cpu25")||(command="cpu26")
trigger14 = (command="cpu27")||(command="cpu28")
trigger15 = (command="cpu29")||(command="cpu30")
;trigger16 = NumHelper(9741)
;trigger16 = Helper(9741),var(59)
;trigger16 = 1
var(59) = 1

[State -1, Random_AIvar]
type     = VarRandom
trigger1 = stateno != [120,155]
trigger1 = Time = 1
trigger2 = stateno = [0,99]
trigger2 = statetime = 10
v     = 58
range = 0,99

;=============================�K�[�h========================================
[State -1, �󒆃K�[�h]
type  = ChangeState
value = 132
triggerall = inguarddist
triggerall = statetype = A
triggerall = var(59) = 1
triggerall = ctrl
triggerall = stateno != [190,194]
triggerall = p2statetype = A
trigger1 = p2bodydist X = [40,80]
trigger1 = var(58) = [0,69]
trigger2 = p2bodydist X = [-20,39]
trigger2 = var(58) = [0,95]
trigger3 = enemy,Numproj > 0
trigger3 = var(58) = [0,89]

[State -1, �Βn �����K�[�h]
type  = ChangeState
value = 130
triggerall = inguarddist
triggerall = statetype != A
triggerall = var(59) = 1
triggerall = ctrl
triggerall = stateno != [190,194]
triggerall = p2statetype = S
trigger1 = p2bodydist X = [40,90]
trigger1 = var(58) = [0,39]
trigger2 = p2bodydist X = [-15,39]
trigger2 = var(58) = [10,49]
trigger3 = enemy,teammode = simul
trigger3 = p2bodydist X = [-50,-16]
trigger3 = var(58) = [0,79]
trigger4 = p2bodydist X = [-15,39]
trigger4 = enemy,hitdefattr = S, NA,SA,HA
trigger4 = Random < 300

[State -1, �΋� �����K�[�h]
type  = ChangeState
value = 130
triggerall = inguarddist
triggerall = statetype != A
triggerall = var(59) = 1
triggerall = ctrl
triggerall = stateno != [190,194]
triggerall = p2statetype = A
trigger1 = p2bodydist X = [40,90]
trigger1 = var(58) = [0,80]
trigger2 = p2bodydist X = [-40,39]
trigger2 = var(58) = [0,90]
trigger3 = p2bodydist X = [-40,39]
trigger3 = enemy,hitdefattr = A, NA,SA,HA
trigger3 = Random < 600

[State -1, ���Ⴊ�݃K�[�h]
type  = ChangeState
value = 131
triggerall = inguarddist
triggerall = statetype != A
triggerall = var(59) = 1
triggerall = ctrl
triggerall = stateno != [190,194]
trigger1 = p2statetype = C
trigger1 = p2bodydist X = [40,85]
trigger1 = var(58) = [0,50]
trigger2 = p2statetype = C
trigger2 = p2bodydist X = [-20,39]
trigger2 = var(58) = [0,79]
trigger3 = p2statetype = S
trigger3 = p2bodydist X = [-15,39]
trigger3 = var(58) = [0,30]
trigger4 = p2statetype = C
trigger4 = enemy,teammode = simul
trigger4 = p2bodydist X = [-50,-16]
trigger4 = var(58) = [0,79]
trigger5 = p2bodydist X = [-20,39]
trigger5 = enemy,hitdefattr = C, NA,SA,HA
trigger5 = Random < 450
trigger6 = enemy,Numproj > 0
trigger6 = var(58) = [0,89]

;=============================����========================================
[State -1, ����]
type  = ChangeState
value = 800
triggerall = var(59) = 1
triggerall = Random  = [35,59]
triggerall = statetype = S
triggerall = ctrl
triggerall = p2bodydist X = [-1,4]
trigger1 = p2statetype != A
trigger1 = p2statetype != L
trigger1 = p2movetype != H

;=============================AI��p========================================
[State -1, �G���A��]
type = ChangeState
value = 40
triggerall = var(59) = 1
triggerall = roundstate = 2
trigger1 = stateno = 280
trigger1 = movehit
trigger1 = var(58) = [0,94]

[State -1, �G�l���M�[�g�ҋ@]
type  = ChangeState
value = 100
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = Animtime = 0
trigger1 = stateno = 1000
trigger1 = p2bodydist X > 145
trigger2 = stateno = 1005
trigger2 = p2bodydist X > 235

;=============================���K�E�Z========================================
[State -1,�M�����b�N�C]
type = ChangeState
value = 2200
triggerall = var(59) = 1
triggerall = power >= 3000
triggerall = life < 200 ||((life < 400) && (life < p2life))
trigger1 = p2movetype = A
trigger1 = (p2bodydist Y > -100) ||(p2bodydist X > 0)
trigger1 = var(58) = [0,89]
trigger1 = (statetype != A) && (ctrl)


[State -1,�v���l�b�g�o�[�X�g]
type = ChangeState
value = 2400
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = power >= 2000
triggerall = var(58) = [0,75]
triggerall = statetype != A
trigger1 = p2bodydist Y > -100
trigger1 = p2bodydist X > 0
trigger1 = ctrl
trigger2 = stateno = 270
trigger2 = prevstateno = [220,230]
trigger2 = movehit
trigger3 = stateno = 220
trigger3 = (prevstateno = [200,210]) || (prevstateno = [250,260])
trigger3 = movehit
trigger3 = p2bodydist X > 30
trigger4 = stateno = 400
trigger4 = prevstateno = 420
trigger4 = movehit
trigger5 = stateno = 400
trigger5 = prevstateno = 0
trigger5 = movehit

[State -1,�M�����b�N�C]
type = ChangeState
value = 2000
triggerall = var(59) = 1
triggerall = power >= 1100
triggerall = statetype != A
trigger1 = p2bodydist Y > -100
trigger1 = p2bodydist X > 0
trigger1 = var(58) = [0,5]
trigger1 = ctrl
trigger2 = stateno = 270
trigger2 = prevstateno = [220,230]
trigger2 = movehit
trigger2 = var(58) = [0,29]
trigger3 = stateno = 220
trigger3 = (prevstateno = [200,210]) || (prevstateno = [250,260])
trigger3 = movehit
trigger3 = p2bodydist X > 30
trigger3 = var(58) = [0,29]
trigger4 = stateno = 400
trigger4 = prevstateno = 420
trigger4 = movehit
trigger4 = var(58) = [0,29]
trigger5 = stateno = 400
trigger5 = prevstateno = 0
trigger5 = movehit
trigger5 = var(58) = [0,49]
trigger6 = stateno = 100
trigger6 = time > 5
trigger6 = P2MoveType = H && P2StateNo != [120,155]
trigger6 = var(58) = [0,49]
trigger6 = ctrl
trigger7 = ctrl
trigger7 = p2bodydist x > 120 && p2bodydist Y > -30
trigger7 = enemy,Numproj > 0 && !inguarddist
trigger7 = var(58) = [0,1+(P2BodyDist X/30)]

[State -1,�󒆃M�����b�N�C]
type = ChangeState
value = 2100
triggerall = var(59) = 1
triggerall = power >= 1100
trigger1 = ctrl
trigger1 = p2bodydist x > 120 && (p2bodydist Y = [-17,17])
trigger1 = enemy,Numproj > 0 && !inguarddist
trigger1 = var(58) = [0,1+(P2BodyDist X/30)]

;=============================�K�E�Z========================================
;���C�W���O�A�^�b�N��
[State -1,]
type = ChangeState
value = 1500
triggerall = var(59) = 1
trigger1 = random = [201,290]
trigger1 = (statetype != A)  && CTRL
trigger1 = enemynear,statetype != A
trigger1 = p2bodydist x = [0,100]
trigger1 = p2bodydist Y > -50

; �X���b�V���_�E���L�b�N(��)
[State -1,]
type = ChangeState
value = 1850
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype = A
trigger1 = movecontact && (stateno = 650)
trigger2 = movecontact && (stateno = 620)
trigger2 = var(58) = [40,89]

;���C�W���O�A�^�b�N��
[State -1,]
type = ChangeState
value = 1550
triggerall = var(59) = 1
trigger1 = random <= 200
trigger1 = (statetype != A)  && CTRL
trigger1 = (enemynear,movetype = H) || (enemynear,movetype = A)
trigger1 = enemynear,statetype = A
trigger1 = p2bodydist x = [0,40]
trigger1 = p2bodydist Y > -50
trigger2 = stateno = 270
trigger2 = prevstateno = [220,230]
trigger2 = movehit
trigger2 = var(58) = [40,69]
trigger3 = stateno = 220
trigger3 = movecontact
trigger3 = p2bodydist X > 30
trigger3 = var(58) = [0,39]
trigger4 = stateno = 400
trigger4 = movecontact
trigger4 = var(58) = [0,39]


[State -1,�X���b�V���A���[�i��j]
type = ChangeState
value = 1300
triggerall = var(59) = 1
triggerall = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist X < 80 && p2bodydist Y > -75
trigger1 = p2statetype != A
trigger1 = var(58) = [0,10]

[State -1,�X���b�V���A���[�i���j]
type = ChangeState
value = 1350
triggerall = var(59) = 1
triggerall = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist Y > -100
trigger1 = p2bodydist X > 0
trigger1 = var(58) = [5,19]
trigger2 = stateno = 400
trigger2 = prevstateno = 420
trigger2 = movehit
trigger2 = var(58) = [67,79]
trigger3 = stateno = 550
trigger3 = movehit
trigger3 = var(58) = [0,14]
trigger4 = stateno = 550
trigger4 = movecontact
trigger4 = var(58) = [15,19]



[State -1,�X���b�V���A���[�i��j]
type = ChangeState
value = 1200
triggerall = var(59) = 1
triggerall = statetype != A
trigger1 = stateno = 0
trigger1 = p2bodydist Y > -100
trigger1 = p2bodydist X > 0
trigger1 = var(58) = [50,59]
trigger2 = stateno = 400
trigger2 = prevstateno = 420
trigger2 = movehit
trigger2 = var(58) = [67,79]
trigger3 = stateno = 550
trigger3 = movehit
trigger3 = var(58) = [0,14]
trigger4 = stateno = 550
trigger4 = movecontact
trigger4 = var(58) = [15,19]

[State -1,�A���G�l���M�[�e�i��j]
type = ChangeState
value = 1000
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = power >= 100
triggerall = numproj = 0
triggerall = statetype != A
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist X > 150
trigger1 = var(58) = [80,82]
trigger2 = stateno = 270
trigger2 = prevstateno = [220,230]
trigger2 = movehit
trigger2 = var(58) = [0,39]
trigger3 = stateno = 220
trigger3 = movecontact
trigger3 = p2bodydist X > 30
trigger3 = var(58) = [0,39]
trigger4 = stateno = 400
trigger4 = movecontact
trigger4 = var(58) = [0,39]
trigger5 = statetype != A
trigger5 = ctrl
trigger5 = Life < 200
trigger5 = p2bodydist X > 150
trigger5 = random < p2bodydist X*.5
trigger6 = stateno = 8100
trigger6 = Life < 200
trigger6 = time > 5
trigger6 = p2bodydist X > 180
trigger6 = var(58) = [0,66]
trigger7 = (stateno = 106) || (stateno = 360)
trigger7 = (Life < 200) && (p2bodydist X > 165)
trigger7 = AnimTime = 0
trigger7 = var(58) = [0,49]

[State -1,�G�l���M�[�e�i��)]
type = ChangeState
value = 1005
triggerall = var(59) = 1
triggerall = power >= 100
triggerall = numproj = 0 || Numprojid(1005) = 0
triggerall = statetype != A
trigger1 = var(58) = [0,5]
trigger1 = p2bodydist X < 100
trigger1 = ctrl
trigger2 = var(58) = [0,2]
trigger2 = p2bodydist X >= 100
trigger2 = ctrl

[State -1,�󒆘A���G�l���M�[�e�i��j]
type = ChangeState
value = 1100
triggerall = var(59) = 1
triggerall = power >= 100
triggerall = numproj = 0
triggerall = prevstateno != 1301
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist X > 150
trigger1 = random = [800,810]

[State -1,�󒆃G�l���M�[�e�i���j]
type = ChangeState
value = 1105
triggerall = var(59) = 1
triggerall = power >= 100
triggerall = numproj = 0 || Numprojid(1105) = 0
triggerall = ctrl
triggerall = prevstateno != 1301
trigger1 = statetype = A
trigger1 = var(58) = [0,5]


;���C�W���O�A�^�b�N��
[State -1,]
type = ChangeState
value = 1205
triggerall = !IsHelper
triggerall = var(59) = 1
triggerall = p2bodydist x = [0,40]
trigger1 = random <= 200
trigger1 = (statetype != A)  && CTRL
trigger1 = (enemynear,movetype = H) || (enemynear,movetype = A)
trigger1 = enemynear,statetype = A
trigger1 = p2bodydist Y <= -50
trigger2 = stateno = 220
trigger2 = movehit
trigger2 = var(58) = [0,79]
trigger3 = stateno = 400
trigger3 = movecontact
trigger3 = var(58) = [40,69]
;;;-----------------------------------------------------------

[State -1,�_�b�V�����p���` (�j���[�g����)]
type = ChangeState
value = 1360
triggerall = var(59) = 1
trigger1 = power < 3000
trigger1 = stateno = 0
trigger1 = anim = 12
trigger1 = p2bodydist X < 100
trigger1 = var(58) = [50,89]


;============================�ʏ�Z=========================================
[State -1,��p���`]
type = ChangeState
value = ifelse(P2BodyDist X < 4,210,200)
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = p2bodydist x = [4,60]
triggerall = statetype = S
trigger1 = ctrl = 1
trigger1 = random = [0,99]
trigger1 = p2statetype != L
trigger1 = p2movetype != A
trigger2 = var(58) = [0,21]
trigger2 = p2stateno != [120,159]
trigger2 = p2statetype != L
trigger2 = p2movetype = H
trigger2 = ctrl = 1
trigger3 = p2movetype = I
trigger3 = p2statetype != L
trigger3 = enemynear,ctrl = 0
trigger3 = ctrl
trigger3 = var(58) = [0,21]
trigger3 = ctrl = 1
trigger4 = stateno = 1501
trigger4 = movehit
trigger4 = var(58) = [0,85]
trigger5 = stateno = 1361
trigger5 = movehit
trigger5 = var(58) = [0,85]

[State -1,��L�b�N (�ߋ���)]
type = ChangeState
value = 260
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = p2bodydist x < 20
triggerall = statetype = S
trigger1 = random = [300,389]
trigger1 = p2statetype != L
trigger1 = p2movetype != A
trigger1 = ctrl = 1
trigger2 = var(58) = [22,44]
trigger2 = p2stateno != [120,159]
trigger2 = p2statetype != L
trigger2 = p2movetype = H
trigger2 = ctrl = 1
trigger3 = stateno = [200,210]
trigger3 = movecontact
trigger3 = var(58) = [0,89]
trigger4 = stateno = 500
trigger4 = movecontact
trigger4 = var(58) = [0,89]
trigger5 = p2movetype = I
trigger5 = p2statetype != L
trigger5 = enemynear,ctrl = 0
trigger5 = ctrl
trigger5 = var(58) = [22,44]

[State -1,��L�b�N]
type = ChangeState
value = 250
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype = S
trigger1 = stateno = [200,210]
trigger1 = movecontact
trigger1 = var(58) = [0,89]
trigger1 = p2bodydist x <= 12
trigger2 = stateno = 1501
trigger2 = movehit
trigger2 = var(58) = [90,95]

[State -1,���p���`]
type = ChangeState
value = 220
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = p2bodydist x < 80
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = random = [900,919]
trigger2 = stateno = [250,260]
trigger2 = movecontact
trigger2 = prevstateno = [200,210]
trigger2 = var(58) = [0,89]
trigger3 = stateno = [200,210]
trigger3 = movecontact
trigger3 = var(58) = [0,89]
trigger3 = p2bodydist x > 12

[State -1,���L�b�N (�ߋ���)]
type = ChangeState
value = 280
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = p2bodydist x < 25
trigger1 = stateno = 260
trigger1 = movecontact
trigger1 = var(58) = [0,39]
trigger2 = stateno = 260
trigger2 = movehit
trigger2 = var(58) = [40,74]
trigger3 = stateno = 260
trigger3 = prevstateno = 500
trigger3 = movehit
trigger3 = var(58) = [75,89]
trigger4 = stateno = 1361
trigger4 = movehit
trigger4 = var(58) = [98,99]
trigger5 = stateno = 1501
trigger5 = movehit
trigger5 = var(58) = [98,99]

[State -1,���L�b�N]
type = ChangeState
value = 270
triggerall = roundstate = 2
triggerall = var(59) = 1
trigger1 = stateno = 220 && movecontact
trigger1 = (prevstateno = [200,210]) || (prevstateno = [250,260])
trigger1 = var(58) = [0,89]
trigger1 = p2bodydist X < 30
trigger2 = stateno = 220 && movecontact
trigger2 = prevstateno != [250,260]
trigger2 = var(58) = [50,79]

;============================���Ⴊ��=========================================
[State -1,���Ⴊ�ݎ�L�b�N]
type = ChangeState
value = 420
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = p2bodydist x < 33
trigger1 = random = [600,ifelse(p2statetype=A,649,777)]
trigger1 = p2statetype != L
trigger1 = p2movetype != A
trigger1 = ctrl
trigger2 = var(58) = [50,89]
trigger2 = p2stateno != [120,159]
trigger2 = p2statetype != L && p2statetype != A
trigger2 = p2movetype = H
trigger2 = ctrl
trigger3 = p2movetype = I
trigger3 = p2statetype != L && p2statetype != A
trigger3 = enemynear,ctrl = 0
trigger3 = ctrl
trigger3 = var(58) = [50,89]
trigger4 = stateno = 1501
trigger4 = movehit
trigger4 = var(58) = [86,97]
trigger5 = stateno = 1361
trigger5 = movehit
trigger5 = var(58) = [86,97]


[State -1,���Ⴊ�݋��p���`]
type = ChangeState
value = 400
triggerall = roundstate = 2
triggerall = var(59) = 1
trigger1 = stateno = 420 && movecontact
trigger1 = var(58) = [0,89]
trigger2 = stateno = 0
trigger2 = enemynear,Vel Y > 0
trigger2 = (-P2BodyDist Y)/(enemynear,Vel Y) < 22
trigger2 = p2bodydist X < 0
trigger2 = var(58) = [10*(((-P2BodyDist Y)/(enemynear,Vel Y))-12),99]

[State -1,���Ⴊ�݋��L�b�N]
type = ChangeState
value = 450
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype != A
trigger1 = stateno = 400
trigger1 = movecontact
trigger1 = var(58) = [40,89]
trigger1 = p2statetype != A
trigger2 = p2bodydist x = [34,70]
trigger2 = random = [600,639]
trigger2 = p2statetype != L
trigger2 = p2movetype != A
trigger2 = ctrl

;============================�󒆋Z=========================================
[State -1,�W�����v��p���`]
type = ChangeState
value = 610
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = stateno != 105
trigger1 = statetype = A && vel x != 0
trigger1 = stateno = 8050
trigger1 = pos y < -50

[State -1,�W�����v��L�b�N]
type = ChangeState
value = ifelse(vel x = 0,635,630)
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype = A
triggerall = stateno != 105
trigger1 = stateno = 610
trigger1 = movecontact
trigger1 = var(58) = [0,97]
trigger2 = ctrl
trigger2 = P2StateType = A
trigger2 = P2BodyDist X = [-5,25]
trigger2 = P2BodyDist Y = [-15,15]
trigger2 = var(58) = [0,66]

[State -1,�W�����v���p���`]
type = ChangeState
value = 620
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype = A
triggerall = stateno != 105
trigger1 = ctrl = 1
trigger1 = pos Y > -90 && vel Y > 0
trigger1 = var(58) = [0,39]
trigger2 = stateno = [630,635]
trigger2 = movecontact
trigger2 = var(58) = [0,39]

[State -1,�W�����v���L�b�N]
type = ChangeState
value = ifelse(vel x = 0,640,650)
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = statetype = A
triggerall = stateno != 105
trigger1 = ctrl = 1
trigger1 = pos Y > -100 && vel Y > 0
trigger1 = var(58) = [40,79]

;=======================�_�b�V���U��========================================
[State -1,�_�b�V�����p���` (�_�b�V����)]
type = ChangeState
value = 511
triggerall = stateno = 101
triggerall = var(59) = 1
trigger1 = p2bodydist x = [140,190]
trigger1 = p2statetype != L
trigger1 = var(58) = [80,89]

[State -1,�_�b�V����p���` (�_�b�V����)]
type = ChangeState
value = 500
triggerall = stateno = 101
triggerall = var(59) = 1
trigger1 = p2bodydist x < 50
trigger1 = p2statetype != L
trigger1 = var(58) = [0,46]

[State -1,�_�b�V����L�b�N (�X���C�f�B���O�L�b�N)]
type = ChangeState
value = 550
triggerall = stateno = 101
triggerall = var(59) = 1
trigger1 = p2bodydist x = [80,100]
trigger1 = var(58) = [85,94]
trigger1 = p2statetype != L

;============================����Z=========================================
[State -1, �W�����v�J�n]
type = ChangeState
value = 40
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = p2bodydist X > 160
triggerall = statetype = S
triggerall = Random < p2bodydist X
triggerall = ctrl
trigger1 = p2statetype = L
trigger2 = enemy, numproj >= 1

[State -1, �O�ɃW�����v]
type = VarSet
triggerall = var(59) = 1
triggerall = Random < (p2bodydist X) * 4
trigger1 = stateno = 40
sysvar(1)  = 1

[State -1, �_�b�V��]
type = ChangeState
value = 100
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemy,Numproj= 0
trigger1 = p2bodydist X > 45
trigger1 = p2statetype != L && p2movetype != A
trigger1 = ctrl
trigger1 = Random = [400,400+(p2bodydist X*0.2)]
trigger2 = stateno = 8100
trigger2 = Life >= 200
trigger2 = time > 5
trigger2 = p2bodydist X < 180
trigger2 = var(58) = [70,99]

[State -1, �󒆃_�b�V��]
type = ChangeState
value = 110
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist X > 100 && vel Y = 0
trigger1 = var(58) = [10,13]

[State -1, �o�b�N�X�e�b�v]
type = ChangeState
value = 105
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
triggerall = BackEdgeBodyDist > 30
trigger1 = p2stateno = 5120
trigger1 = var(58) = [0,ifelse(life>200,24,33)]
trigger2 = P2BodyDist X > 30
trigger2 = Life < 200
trigger2 = var(58) = [0,17]
trigger3 = stateno = 8100
trigger3 = Life < 200
trigger3 = time > 5
trigger3 = p2bodydist X <= 180
trigger3 = var(58) = [0,33]
trigger4 = (stateno = 106) || (stateno = 360)
trigger4 = (Life < 200) && (p2bodydist X <= 165)
trigger4 = AnimTime = 0
trigger4 = var(58) = [0,33]

[State -1,�����ړ� (���)]
type = ChangeState
value = 360
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = ctrl
triggerall = BackEdgeBodyDist > 30
trigger1 = Var(58) = 15
trigger2 = p2stateno = 5120
trigger2 = var(58) = [50,ifelse(life>200,74,83)]
trigger3 = P2BodyDist X > 30
trigger3 = Life < 200
trigger3 = var(58) = [20,37]
trigger4 = stateno = 8100
trigger4 = Life < 200
trigger4 = time > 5
trigger4 = p2bodydist X <= 180
trigger4 = var(58) = [50,83]
trigger5 = (stateno = 106) || (stateno = 360)
trigger5 = (Life < 200) && (p2bodydist X <= 165)
trigger5 = AnimTime = 0
trigger5 = var(58) = [50,83]

[State -1,�����ړ� (�O��)]
type = ChangeState
value = 361
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = ctrl
trigger1 = Var(58) = 16
trigger2 = ctrl
trigger2 = enemy,Numproj > 0
trigger2 = var(58) = [25,49]
trigger3 = ctrl
trigger3 = BackEdgeBodyDist <= 30
trigger3 = P2BodyDist X <= 50
trigger3 = var(58) = [0,11]
trigger4 = stateno = 101
trigger4 = P2BodyDist X < 50
trigger4 = P2StateType != L
trigger4 = var(58) = [47,79]

[State -1,�����˂��ԉ΁i�J�E���^�[�j]
type = ChangeState
value = 305
triggerall = var(59) = 1
triggerall = stateno = [150,153]
triggerall = power >= 1000
trigger1 = power >= 1500
trigger1 = power < 2800
trigger1 = random = [500,504]
trigger2 = power >= 1500
trigger2 = BackEdgeBodyDist <= 30
trigger2 = random = [0,7]
trigger3 = p2life/((Enemy,Const(data.defence))*.01) < 140*((Const(data.attack))*.01)
trigger3 = random = [300,374-(P2Life*.5)]

[State -1,����]
type = ChangeState
value = 195
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = Vel X = 0
triggerall = stateno != 195
triggerall = statetype != A
triggerall = Life > 250
triggerall = enemy,Numproj= 0
trigger1 = ctrl
trigger1 = p2bodydist X > 200
trigger1 = Life-P2Life > 250
trigger1 = Random = [777,777+((Life-P2Life)*.03)]
trigger2 = stateno = 512
trigger2 = Animtime = 0
trigger2 = p2stateno = [5030,5110]
trigger2 = p2bodydist X > 80
trigger2 = Life-P2Life > 200
trigger2 = var(58) = [0,4+(Life-P2Life)*.1]
trigger3 = stateno = 1600 && MoveHit
trigger3 = Animtime = 0
trigger3 = p2bodydist X > 145
trigger3 = Life-P2Life > 200
trigger3 = var(58) = [0,7+(Life-P2Life)*.1]
trigger4 = stateno = 1750
trigger4 = Animtime = 0
trigger4 = FrontEdgeDist > 160
trigger4 = Life-P2Life > 200
trigger4 = var(58) = [0,9+(Life-P2Life)*.1]
trigger5 = stateno = 1005 || stateno = 2000
trigger5 = AnimTime = 0
trigger5 = p2bodydist X > 145
trigger5 = P2Movetype = H && P2Stateno != [120,152]
trigger5 = var(58) = [0,9+(Life-P2Life)*.1]

[State -1,�C�͗���]
type = ChangeState
value = 1900
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = Power < 3000
triggerall = ctrl = 1
triggerall = enemy,Numproj= 0
trigger1 = p2bodydist X > 35
trigger1 = p2statetype = L
trigger1 = Life > 250
trigger1 = Var(58) = [50,52]
trigger2 = p2bodydist X > 150
trigger2 = Var(58) = [50,79]
trigger3 = Power < 1500
trigger3 = Life > 250
trigger3 = p2bodydist X = [100,149]
trigger3 = Var(58) = [50,69]

[State -1, �C�͗��ߒ��~]
type = ChangeState
value = 1901
triggerall = var(59) = 1
triggerall = stateno = 1900
trigger1 = p2bodydist X < 85
trigger1 = p2statetype != L || P2StateNo = 5120
trigger2 = enemy,Numproj > 0
trigger3 = p2movetype = A
trigger3 = Var(58) = [0,84]
trigger4 = p2bodydist X < 120
trigger4 = Vel X > 0
trigger5 = random < statetime/10
trigger6 = roundstate != 2
trigger7 = inguarddist
trigger7 = Var(58) = [0,89]

[State -1, �K�[�h2]
type = ChangeState
value = 120
triggerall = var(59) = 1
triggerall = alive = 1
triggerall = inguarddist
trigger1 = ctrl
trigger1 = var(58) = [40,99]

[State -1, CPU�p�I�[�g�^�[��]
type = Turn
triggerall = roundstate = 2
triggerall = var(59) = 1
trigger1   = P2BodyDist X < -200
trigger1   = statetype != A
trigger1   = stateno = [200,440]
trigger1   = Time = 1

[State -1, �n���g]
type = ChangeState
value = 5200
triggerall = stateno = 5050
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = vel Y > 0
triggerall = alive
triggerall = canrecover
triggerall = pos Y < ifelse((anim = [5051,5059])||(anim = [5061,5069]), 0, 25)
triggerall = pos Y >= -20
trigger1   = Random < 50
trigger2   = var(58) = [20,39]
trigger2   = enemy,hitdefattr = SC, AA, AT, AP

[State -1, �󒆎�g]
type = ChangeState
value = 5210
triggerall = stateno = 5050
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = vel Y > -1
triggerall = alive
triggerall = canrecover
triggerall = pos Y = [-120,-20)
trigger1   = Random < 30
trigger2   = P2BodyDist X = [-90,90]
trigger2   = var(58) = [30,39]
trigger2   = enemy,hitdefattr = SA, AA, AT, AP

