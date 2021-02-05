;*******************************************************************************
;***************************************************************************
;***********************   DBZ System   ************************************
;***************************************************************************
;*******************************************************************************

;===============================================================================
;=================   Super Jump After launcher  ================================
;===============================================================================
;-----------------------------------
;Super Jump after launcher
[Statedef 700]
type    = S
physics = S
anim = 40
ctrl = 0
velset = 0,0
facep2 = 1

[State 700, VarSet]; Score Result
type = VarSet
trigger1 = Time = 1
v = 52
value = var(52) + 1
ignorehitpause =  1
persistent = 0

[State 700, VarAdd]; Score result
type = VarAdd
trigger1 = Time = 0
v =  52
value = 4
ignorehitpause = 1
persistent = 0

[State 700, Sound]
type = playsnd
trigger1 = Time = 0
value = S40,0
freqmul = 0.6

[State 700, Explod]
type = Explod
trigger1 = Time = 1
anim = 48
ID = 48
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
pausemovetime = 9999
supermovetime = 9999
scale = .45,.45
sprpriority = 4
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 700, vel]
type = VelSet
trigger1 = AnimTime = 0
x = .885 * Const(velocity.jump.fwd.x)
y = Const(velocity.jump.y) - 4.4


[State 700, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1


;===============================================================================
;==========================   Z-Counter   ======================================
;===============================================================================
;-----------------------------------
; Z-Counter Start  (Stand)
[Statedef 750]
type    = S
movetype= I
physics = S
velset = 0,0
ctrl = 0
anim = 750
poweradd = -500
sprpriority = 3

[State 750, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 750, VarAdd]; Score result
type = VarAdd
trigger1 = Time = 0
v =  52
value = 4
ignorehitpause = 1
persistent = 0

[State 750, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 20
anim = -1
sound = S750,1
pos = 0,0
movetime = 20
darken = 0
p2defmul = 1

[State 750, Explod]; Counter Left
type = Explod
triggerall= TeamSide = 1
trigger1= time = 0
anim = 9060
ID = 9060
pos = 0,62
postype = Left
facing = 1
bindtime = 1
removetime = 70
pausemovetime = 9999
supermovetime = 9999
scale = .5,.5
sprpriority = 100
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 750, Explod]; Counter Right
type = Explod
triggerall= TeamSide = 2
trigger1= time = 0
anim = 9061
ID = 9060
pos = 0,62
postype = Right
facing = 1
bindtime = 1
removetime = 70
pausemovetime = 9999
supermovetime = 9999
scale = .5,.5
sprpriority = 100
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1


[State 750,EnvColor]
type = EnvColor
trigger1 = Time = 0
value = 255, 255, 255
time = 6

[State 750, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 751
ctrl = 0

;-----------------------------------
; Z-Counter Attack (Stand)
[Statedef 751]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 751
sprpriority = 2

[State 751, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 751, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S200,1

[State 751, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S750,0
channel = 0

[State 751, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
damage = 120, 40
animtype = med
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 18, 20
sparkno = -1
guard.sparkno = -1
hitsound = S750, 2
guardsound = S6, 0
ground.type = High
air.type = Low
ground.slidetime = 38
guard.slidetime = 20
ground.hittime = 38
guard.hittime = 20
air.hittime = 40
ground.velocity = -17.8
guard.velocity = -6.8
air.velocity = -5.8,-4.8
airguard.velocity = -2.8,-2.4
getpower = 0,0
givepower = 0,0
envshake.time = 28
envshake.freq = 90
envshake.ampl = -2
yaccel = 0.5
kill = 0
fall = 1
air.fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 751, Spark 2]
type = Explod
trigger1 = Movehit = 1
anim = 9022
ID = 9022
postype = P1
pos = 70,-68
facing = 1
sprpriority = 3
removetime = -2
bindtime = 1
ownpal = 1
ontop = 1
scale = 0.415,0.415
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0

[State 751, Spark 1]
type = Explod
trigger1 = Movehit = 1
anim = 9020
ID = 9020
postype = P1
pos = 70,-68
facing = 1
sprpriority = 4
removetime = -2
bindtime = 1
ownpal = 1
scale = 0.55,0.55
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0

[State 751, Spark 3]
type = Explod
trigger1 = Moveguarded = 1
anim = 9024
ID = 9024
postype = P1
pos = 70,-68
facing = 1
sprpriority = 4
removetime = -2
bindtime = 1
ownpal = 1
ontop = 1
scale = 0.66,0.66
removeongethit = 1
pausemovetime = 9999
supermovetime = 9999
ignorehitpause  = 1
persistent = 0

[State 751, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0
moveType = I

[State 751, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;===============================================================================
;=======================     Power Charge   ====================================
;===============================================================================
;-----------------------------------
; Power Charge
[Statedef 900]
type    = S
movetype= I
physics = S
velset = 0,0
ctrl = 0
anim = 900
poweradd = 0
sprpriority = 2

[State 900, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S900,0

[State 900, PlaySnd]
type = PlaySnd
trigger1 = animelem= 1,1
value = S900,1
channel=0

[State 900, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 901

;--------------------------------------
[Statedef 901]
type = S
movetype = I
physics = S
anim = 901
velset = 0,0
ctrl = 0
sprpriority = 2

[State 901, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S900,2
channel = 1

[State 901, Explod];KI
type = Explod
trigger1 = animelem = 1
trigger1 = numexplod(9030)!=1
anim =9030
ID =9030
pos = -3,-2
postype = p1
facing = 1
bindtime = -1
removetime = -1
scale = .625,.595
sprpriority = -1
removeongethit = 1

[State 901, Explod];KI
type = Explod
trigger1 = animelem = 1
trigger1 = numexplod(9031)!=1
anim =9031
ID =9031
pos = 0,-8
postype = p1
facing = 1
bindtime = -1
removetime = -1
scale = .525,.595
sprpriority = 4
removeongethit = 1

[state 901, shake]
type = envshake
trigger1 = ((GameTime%4) = 0)
time = 6
freq = var(9)
ampl = -2

[State 901, 3]
type = PowerAdd
trigger1 = Time = [0,24]
value = 10 - floor(3*(Ailevel /8.0))

[State 901, 1]
type = ChangeState
triggerall = AIlevel = 0
trigger1 = command != "hold_c"
trigger2 = Power >= 3000
value = 902

[State 901, 2]
type = ChangeState
triggerall = AIlevel != 0
trigger1 = p2movetype = A
trigger2 = P2Bodydist x < 80
trigger3 = Power >= 3000
value = 902

[State 901, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 901

;------------------------
[Statedef 902]
type = S
movetype = I
physics = S
anim = 902
velset = 0,0
ctrl = 0

[State 902, StopSnd]
type = StopSnd
trigger1 =time=0
channel = 1

[State 902, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl=1


;===============================================================================
;===========================   Z-Assist   ======================================
;===============================================================================
;-----------------------------------
; Z-Assist
[Statedef 950]
type = S
movetype = A
physics = S
anim = 950
poweradd = -500
velset = 0,0
ctrl = 0

[State 950, VarAdd]; Score result
type = VarAdd
trigger1 = Time = 0
v =  52
value = 6
ignorehitpause = 1
persistent = 0

[State 950, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S950,0
channel = 0

[State 950, VarSet]
type = VarSet
trigger1 = AnimElem = 2
v = 8
value = 0
ignorehitpause = 1

[State 950, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 24
anim = -1
sound = -1
pos = 0,0
movetime = 24
darken = 0
unhittable = 1

[State 950, Helper]
type = Helper
Triggerall = var(57) = 1
trigger1 = Time = 0
name ="Oozaru"
ID = 960
stateno = 960
pos = 150,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size.xscale = 1
size.yscale = 1

[State 950, Helper]
type = Helper
Triggerall = var(57) = 2
trigger1 = Time = 0
name ="Thales"
ID = 980
stateno = 980
pos = 70,-48
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size.xscale = .875
size.yscale = .9

[State 950, Helper]
type = Helper
Triggerall = var(57) = 3
trigger1 = Time = 0
Name ="Saibaiman"
ID = 970
stateno = 970
pos = 110,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size.xscale = 1
size.yscale = 1

[State 950, 4]
type = ChangeState
trigger1 =animtime=0
value = 0
ctrl = 1
