;*******************************************************************************
;***************************************************************************
;**************************   Helpers  **************************************
;***************************************************************************
;*******************************************************************************

;===============================================================================
;========================   Fireball Helper   ==================================
;===============================================================================
;--------------------------------------------------------
; Fireball Helper
[Statedef 1010]
type    = U
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 1010
juggle = 5
sprpriority = 5

[State 1010, 1]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1010, VelSet]
type = VelSet
trigger1 = Time = 0
x = 6.4 - 1.6*(Parent,var(11))
y = 0
ignorehitpause = 1

[State 1010, ParentVarSet]
type = ParentVarSet
trigger1 = MoveContact && NumTarget
v = 34
value = 1
ignorehitpause = 1

[State 1010, HitDef]
type = HitDef
trigger1 = !MoveContact
attr = S,SP
hitflag = MAF
guardflag = MA
animtype = medium
air.animtype = medium
priority = 5,Hit
damage = ceil((60+30*(Parent, var(11)))*(parent,fvar(20))),20
pausetime = 4,8
guard.pausetime = 4,4
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = S1010,2
guardsound = S1010,1
ground.type = High
air.type = Low
ground.slidetime = 13 + 5*(Parent, var(11))
guard.slidetime = 6 + 3*(Parent, var(11))
ground.hittime = 13 + 5*(Parent, var(11))
guard.hittime = 6 + 3*(Parent, var(11))
air.hittime = 13 + 6*(Parent, var(11))
ground.velocity = -6.8 - 1.8*(Parent, var(11))
guard.velocity = -4.4
air.velocity = -5.4- 1.8*(Parent, var(11)),-3.6 - 1.4*(Parent, var(11))
airguard.velocity = -3,-2.2
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
getpower = 40,20
givepower = 40,40
envshake.time = 11 + 5*(Parent, var(11))
envshake.freq = 60 + 15*(Parent, var(11))
envshake.ampl = -2
ignorehitpause = 1


[State 1010, ParentVarAdd]
type = ParentVarAdd
trigger1 = (Parent,var(59)) <280
trigger1 = MoveContact
v = 59
value = 6*(MoveGuarded) + 14*(MoveHit)
ignorehitpause = 1
persistent = 0

[State 1010, ParentVarAdd]; Score result
type = ParentVarAdd
trigger1 = MoveContact
v = 52
value = (1*(MoveGuarded) + 3*(MoveHit))*((parent,var(26))+1)
ignorehitpause = 1
persistent = 0

[State 1010 0]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
ignorehitpause = 1

[State 1010, 1]
type = HitOverride
trigger1 = 1
stateno = 1015
attr = SCA,NP,SP,HP
time = -1
ignorehitpause = 1

[State 1010, DestroySelf]
type = DestroySelf
trigger1 = time >= 220
ignorehitpause = 1

[State 1010, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1015
ignorehitpause = 1

;---------------------------------
[Statedef 1015]
type    = U
movetype= A
physics = N
poweradd= 0
ctrl = 0
anim = 11000

[State 1015, 1]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1015, VelMul]
type = VelMul
trigger1 = Time = 0
x = 0.54321
ignorehitpause = 1

[State 1015, Explod]
type = Explod
trigger1 = Time = 0
anim = 1015
ID = 1015
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 2
removetime = -2
pausemovetime = 9999
supermovetime = 9999
scale = .35,.35
sprpriority = 5
shadow = 0,0,0
ownpal = 1
ignorehitpause = 1

[State 1015, Explod]
type = Explod
trigger1 = Time = 0
anim = 9050
ID = 9050
pos = 6,2
postype = p1
facing = 1
vfacing = 1
bindtime = 2
removetime = -2
pausemovetime = 9999
supermovetime = 9999
scale = .4,.4
sprpriority = 8
ontop = 1
shadow = 0,0,0
ownpal = 1
ignorehitpause = 1

[State 1015, DestroySelf]
type = DestroySelf
trigger1 = Time = 26
ignorehitpause = 1


;===============================================================================
;========================   Ki Blast Helper   ==================================
;===============================================================================
;--------------------------------------------------------
; Ki Blast Helper
[Statedef 1110]
type    = U
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 1110
juggle = 5
sprpriority = 4

[State 1110, 1]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1110, BindToParent]
type = BindToParent
trigger1 = 1
pos = 54,-94
ignorehitpause = 1

[State 1110, ParentVarSet]
type = ParentVarSet
trigger1 = MoveContact && NumTarget
v = 34
value = 1
ignorehitpause = 1

[State 1110, HitDef]
type = HitDef
trigger1 = !MoveContact
attr = S,SP
hitflag = MAF
guardflag = MA
animtype = medium
air.animtype = medium
priority = 5,Hit
damage = ceil((75+25*(Parent, var(12)))*(parent,fvar(20))),30
pausetime = 0,7
guard.pausetime = 4,4
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = S1110,2
guardsound = S1010,1
ground.type = High
air.type = Low
ground.slidetime = 20 + 6*(Parent, var(12))
guard.slidetime = 10 + 4*(Parent, var(12))
ground.hittime = 20 + 6*(Parent, var(12))
guard.hittime = 10 + 4*(Parent, var(12))
air.hittime = 20 + 6*(Parent, var(12))
ground.velocity = -6.8 - 2.4*(Parent, var(12))
guard.velocity = -4.4
air.velocity = -5.8- 1.8*(Parent, var(12)),-3.8 - 1.4*(Parent, var(12))
airguard.velocity = -3,-2.2
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
getpower = 40,20
givepower = 40,40
envshake.time = 16 + 6*(Parent, var(12))
envshake.freq = 70 + 15*(Parent, var(12))
envshake.ampl = -2
ignorehitpause = 1


[State 1110, ParentVarAdd]
type = ParentVarAdd
trigger1 = (Parent,var(59)) <280
trigger1 = MoveContact
v = 59
value = 6*(MoveGuarded) + 14*(MoveHit)
ignorehitpause = 1
persistent = 0

[State 1110, ParentVarAdd]; Score result
type = ParentVarAdd
trigger1 = MoveContact
v = 52
value = (1*(MoveGuarded) + 3*(MoveHit))*((parent,var(26))+1)
ignorehitpause = 1
persistent = 0

[State 1110 0]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
ignorehitpause = 1

[State 1110, 1]
type = HitOverride
trigger1 = 1
stateno = 1120
attr = SCA,NP,SP,HP
time = -1
ignorehitpause = 1

[State 1110, DestroySelf]
type = DestroySelf
trigger1 = Parent,StateNo !=1100
ignorehitpause = 1

[State 1110, ChangeState]
type = ChangeState
trigger1 = MoveContact
trigger2 = Animtime = 0
value = 1120
ignorehitpause = 1

;---------------------------------
[Statedef 1120]
type    = U
movetype= A
physics = N
poweradd= 0
anim = 1120
ctrl = 0
movehitpersist = 1
hitcountpersist = 1

[State 1120, VarSet]
type = VarSet
trigger1 = Time = 0
v = 1
value = Ceil((P2dist x))
ignorehitpause = 1
persistent = 0

[State 1120, ParentVarSet]
type = ParentVarSet
trigger1 = Time = 0
v = 13
value = 1
ignorehitpause = 1

[State 1120, 1]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1120, Spark 2]
type = Explod
triggerall = movehit
trigger1 = Time = 0
anim = 9022
ID = 9022
postype = P1
pos = var(1),0
facing = 1
sprpriority = 3
removetime = -2
bindtime = 1
ownpal = 1
ontop = 1
scale = 0.245,0.245
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0

[State 1120, Spark 1]
type = Explod
triggerall = movehit
trigger1 = Time = 0
anim = 9020
ID = 9020
postype = P1
pos = var(1),0
facing = 1
sprpriority = 4
removetime = -2
bindtime = 1
ownpal = 1
scale = 0.265,0.265
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0

[State 1120, Spark 3]
type = Explod
triggerall = Moveguarded
trigger1 = Time = 0
anim = 9024
ID = 9024
postype = P1
pos = var(1),0
facing = 1
sprpriority = 4
removetime = -2
bindtime = 1
ownpal = 1
ontop = 1
scale = 0.44,0.44
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0

[State 1120, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0
ignorehitpause = 1


;===============================================================================
;===================  Weekly Special Fireball Helper  ==========================
;===============================================================================
;--------------------------------------------------------
; Weekly Special Helper
[Statedef 2100]
type    = U
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 2100
sprpriority = 5

[State 2100, 1]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 2100, VelSet]
type = VelSet
trigger1 = Time = 0
x = 4.1
y = 8.1
ignorehitpause = 1

[State 2100, HitDef]
type = HitDef
trigger1 = !MoveContact
attr = A,HP
hitflag = MAFD
guardflag = MA
animtype = Back
air.animtype = Back
fall.animtype = Back
priority = 6,Hit
damage = ceil((35)*(parent,fvar(20))),7
pausetime = 0,4
guard.pausetime = 4,4
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = S1010,2
guardsound = S1010,1
ground.type = Low
air.type = Low
ground.slidetime = 24
guard.slidetime = 16
ground.hittime = 24
guard.hittime = 16
air.hittime = 26
ground.velocity = -6.8,-4.8
guard.velocity = -4.2
air.velocity = -5.8,-5.8
airguard.velocity = -3,-2.2
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
getpower = 0,0
givepower = 0,0
forcestand = 0
P2StateNo = 2096
fall = 1
air.fall = 1
fall.recovertime = 120
fall.recover = 0
envshake.time = 22
envshake.freq = 100
envshake.ampl = -2
fall.envshake.time = 30
fall.envshake.freq = 130
fall.envshake.ampl = -3

[State 2100 0]
type = HitBy
trigger1 = 1
value = SCA,HP
ignorehitpause = 1

[State 2100, 1]
type = HitOverride
trigger1 = 1
stateno = 2110
attr = SCA,HP
time = -1
ignorehitpause = 1

[State 2100, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 2110
ignorehitpause = 1

[State 2100, DestroySelf]
type = DestroySelf
trigger1 = Time >= 120
ignorehitpause = 1

;---------------------------------
[Statedef 2110]
type    = U
movetype= A
physics = N
poweradd= 0
velset = 0,0
ctrl = 0
anim = 11000

[State 2110, 1]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 2110, Explod]
type = Explod
trigger1 = Time = 0
anim = 1015
ID = 1015
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 2
removetime = -2
pausemovetime = 9999
supermovetime = 9999
scale = .275,.275
sprpriority = 5
shadow = 0,0,0
ownpal = 1
ignorehitpause = 1

[State 2110, Explod]
type = Explod
trigger1 = Time = 0
anim = 9050
ID = 9050
pos = 6,2
postype = p1
facing = 1
vfacing = 1
bindtime = 2
removetime = -2
pausemovetime = 9999
supermovetime = 9999
scale = .4,.4
sprpriority = 8
ontop = 1
shadow = 0,0,0
ownpal = 1
ignorehitpause = 1

[State 2110, DestroySelf]
type = DestroySelf
trigger1 = Time = 30
ignorehitpause = 1


;===============================================================================
;===================  Saturday Crash Fireball Helper  ==========================
;===============================================================================
;--------------------------------------------------------
; Saturday Crash Fireball Helper
[Statedef 2300]
type    = U
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 2300
sprpriority = 5

[State 2300, 1]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 2300, VelSet]
type = VelSet
trigger1 = Time = 0
x = 5.875

[State 2300, VelAdd]
type = VelAdd
triggerall = !MoveContact
trigger1 = Time>=0
x = .205

[State 2300, PlaySnd]
type = PlaySnd
trigger1 = MoveHit
value = S2200,3
persistent = 0

[State 2300, ParentVarSet]; Score Result
type = ParentVarSet
trigger1 = MoveHit
v = 52
value = (parent,var(52)) + (parent,var(26)) + 2
ignorehitpause =  1
persistent = 0

[State 2300, HitDef]
type = HitDef
trigger1 = Time >=0
attr = S,HP
hitflag = MAF
guardflag = MA
animtype = Back
air.animtype = Back
fall.animtype = Back
priority = 6,Hit
damage = ceil((45)*(parent,fvar(20))),30
pausetime = 5,8
guard.pausetime = 4,4
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = S2200,4
guardsound = S1010,1
ground.type = Low
air.type = Low
ground.slidetime = 44
guard.slidetime = 20
ground.hittime = 44
guard.hittime = 20
air.hittime = 48
ground.velocity = -6.8,-7.8
guard.velocity = -4.2
air.velocity = -5.8,-7.8
airguard.velocity = -3,-2.4
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
getpower = 0,0
givepower = 0,0
forcestand = 0
fall = 1
air.fall = 1
fall.recovertime = 120
fall.recover = 0
envshake.time = 28
envshake.freq = 90
envshake.ampl = -2
fall.envshake.time = 34
fall.envshake.freq = 120
fall.envshake.ampl = -3

[State 2300 0]
type = HitBy
trigger1 = 1
value = SCA,HP
ignorehitpause = 1

[State 2300, 1]
type = HitOverride
trigger1 = 1
stateno = 2310
attr = SCA,HP
time = -1
ignorehitpause = 1

[State 2300, ChangeState]
type = ChangeState
trigger1 = MoveGuarded
trigger2 = Hitcount = 6
value = 2310
ignorehitpause = 1

[State 2300, DestroySelf]
type = DestroySelf
trigger1 = Time >= 220
ignorehitpause = 1

;---------------------------------
[Statedef 2310]
type    = U
movetype= A
physics = N
poweradd= 0
velset = 0,0
ctrl = 0
anim = 11000

[State 2310, 1]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 2310, Explod]
type = Explod
trigger1 = Time = 0
anim = 1015
ID = 1015
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 2
removetime = -2
pausemovetime = 9999
supermovetime = 9999
scale = .475,.475
sprpriority = 5
shadow = 0,0,0
ownpal = 1
ignorehitpause = 1

[State 2310, Explod]
type = Explod
trigger1 = Time = 0
anim = 9050
ID = 9050
pos = 6,2
postype = p1
facing = 1
vfacing = 1
bindtime = 2
removetime = -2
pausemovetime = 9999
supermovetime = 9999
scale = .575,.575
sprpriority = 8
ontop = 1
shadow = 0,0,0
ownpal = 1
ignorehitpause = 1

[State 2310, DestroySelf]
type = DestroySelf
trigger1 = Time = 30
ignorehitpause = 1


;===============================================================================
;======================  Double Sunday Beam Helper  ============================
;===============================================================================
;--------------------------------------------------------
; Double Sunday Beam Helper
[Statedef 2500]
type    = U
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 2500
sprpriority = 5

[State 2500, 1]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 2500, SprPriority]
type = SprPriority
trigger1 = 1
value = 9
ignorehitpause = 1

[State 2500, Bind]
type = Bindtoparent
trigger1 = 1
pos = 26,-88
ignorehitpause = 1

[State 2500, ParentVarSet]; Score Result
type = ParentVarSet
trigger1 = MoveHit
v = 52
value = (parent,var(52)) + (parent,var(26)) + 1
ignorehitpause =  1
persistent = 0

[State 2500, HitDef]
type = HitDef
trigger1 = Time >=0
attr = S,HP
hitflag = MAF
guardflag = MA
animtype = Back
air.animtype = Back
fall.animtype = Back
priority = 6,Hit
damage = ceil((15)*(parent,fvar(20))),4
pausetime = 0,4
guard.pausetime = 0,1
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = S2400,4
guardsound = S1010,1
ground.type = Low
air.type = Low
ground.slidetime = 46
guard.slidetime = 20
ground.hittime = 46
guard.hittime = 20
air.hittime = 48
ground.velocity = -3.8,-7.8
guard.velocity = -6.8
air.velocity = -4.8,-7.8
airguard.velocity = -6,-3.4
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
getpower = 0,0
givepower = 0,0
forcestand = 0
fall = 1
air.fall = 1
fall.recovertime = 120
fall.recover = 0
envshake.time = 32
envshake.freq = 90
envshake.ampl = -2
fall.envshake.time = 38
fall.envshake.freq = 140
fall.envshake.ampl = -3

[State 2500, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 2500, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno !=2400

[State 2500, ChangeState]
type = ChangeState
trigger1 = Time = 60
value = 2510
ignorehitpause = 1

;---------------------------------
[Statedef 2510]
type    = U
movetype= A
physics = N
poweradd= 0
ctrl = 0
anim = 2510
sprpriority = 3

[State 2510, 1]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 2510, ParentVarSet]
type = ParentVarSet
trigger1 = Time = 0
v = 17
value = 1
ignorehitpause = 1

[State 2510, DestroySelf]
type = DestroySelf
trigger1 = Animtime = 0
ignorehitpause = 1


;===============================================================================
;=====================  Saiyan Fury Beam Helper  ===============================
;===============================================================================
;---------------------------------
; Saiyan Fury Beam Helper
[Statedef 3300]
type    = U
movetype= A
physics = N
ctrl = 0
anim = 3300
velset = 0,0

[State 3300, Bind 1]
type = Bindtoparent
trigger1 = 1
pos = 58,-48

[State 3300, 6]
type = nothitby
trigger1 = 1
value = SCA

[State 3300, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3300, SprPriority]
type = SprPriority
trigger1 = 1
value = 8
ignorehitpause = 1

[State 3300, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -45
ignorehitpause = 1

[State 3300, Trans]
type = Trans
trigger1 = 1
trans = add
;alpha = 256,256
ignorehitpause = 1

[State 3300, 5]
type = HitAdd
trigger1 = movehit = 1
value = 1

[State 3300, Hit]
type = HitDef
trigger1 =time>=0
attr = A,HP
hitflag = MAFD
guardflag = MA
priority= 7,Hit
ID=3300
animtype = hard
air.animtype = hard
damage = ceil(11*(parent,fvar(20))),1
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = S3000,5
guardsound = S6,0
ground.type = High
ground.slidetime = 48
guard.slidetime = 28
ground.hittime  = 44
guard.hittime = 28
ground.velocity = -7.4,-2.4
air.velocity = -3.8,-1.8
air.hittime  = 32
air.fall = 1
fall.recover=0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
getpower = 0,0
givepower = 0,0
envshake.time = 28
envshake.freq = 80
envshake.ampl = -2
fall.envshake.time = 40
fall.envshake.freq = 160
fall.envshake.ampl = -4


[State 3300, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != 3120

[State 3300, change]
type = Changestate
trigger1 = time = 40
value = 3310

;--------------------------------
; Beam Finish
[Statedef 3310]
type    = U
movetype= I
physics = N
ctrl = 0
anim = 2510
velset = 0,0
sprpriority = 3

[State 3310, ParentVarSet]
type = ParentVarSet
trigger1 = Time = 0
v =  18
value = 1

[State 3310, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3310, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -45
ignorehitpause = 1

[State 3310, Trans]
type = Trans
trigger1 = Time>=0
trans = addalpha
alpha = 256-time*25,256
ignorehitpause = 1

[State 3310, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0


;===============================================================================
;=============================     Z     =======================================
;===============================================================================
;--------------------------------------------------------
[Statedef 18000]
type = S
movetype = I
physics = N
ctrl = 0
anim = 18000
velset = 0,0
sprpriority = -2

[State 18000, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S9999,2

[State 18000, 1]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 18000, Explod]; alone
type = Explod
triggerall = time = 0
triggerall = numexplod(20030)!=1
trigger1 = !NumPartner
trigger2 = NumPartner
trigger2 = Partner, AuthorName != "misterr07"
anim = 20029 + Teamside
ID = 20030
pos = (285*Teamside - 274),218
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 9999
supermovetime = 9999
scale = .5,.5
sprpriority = 4
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 18000, Explod]; with partner
type = Explod
triggerall = time = 0
triggerall = numexplod(20030)!=1
trigger1 = NumPartner
trigger1 = Partner, AuthorName = "misterr07"
anim = 20029 + Teamside
ID = 20030
pos = (285*Teamside - 274), 218 - 30*((Parent, var(6)) > (Parent,var(7)))
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 9999
supermovetime = 9999
scale = .5,.5
sprpriority = 4
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 18000, RemoveExplod]; Remove animation
type = RemoveExplod
trigger1 = parent,var(59)!=280
id = 20030
ignorehitpause = 1

[State 18000, End]
type = DestroySelf
trigger1 = parent,var(59)!= 280


;===============================================================================
;========================   Super Finish BG   ==================================
;===============================================================================
;--------------------------------------------------------
[Statedef 11000]
type = A
movetype = I
physics = N
ctrl = 0
anim = 11000
velset = 0,0
sprpriority = -5

[State 11000, PlaySnd]
type = PlaySnd
trigger1 = Time = 2
value = S11000,0
ignorehitpause = 1

[State 11000, Explod]
type = Explod
trigger1 = Time = 0
anim = 11010
ID = 11010
pos = 0,0
postype = Left
facing = 1
bindtime = -1
removetime = -2
pausemovetime = 9999
supermovetime = 9999
scale = .5,.5
sprpriority = -5
ontop = 0
ownpal = 1
ignorehitpause = 1

[State 11000, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
flag3 = nomusic
ignorehitpause =  1

[State 11000, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause =  1

[State 11000, White]
type = EnvColor
trigger1 = Time = 149
value = 255,255,255
time = 2
under = 1
ignorehitpause = 1

[State 11000, Change]
type = ChangeState
trigger1 = Time = 150
value = 11001
ignorehitpause = 1

;--------------------------------------------------------
[Statedef 11001]
type = A
movetype = I
physics = N
ctrl = 0
anim = 11000
velset = 0,0
sprpriority = -5

[State 11001, PalFX]
type = PalFX
trigger1 = Time = [0,45]
ignorehitpause = 1
time = 1
add = 255-6*Time,255-6*Time,255-6*Time

[State 11001, BG2]
type = Explod
trigger1 = Time = 0
anim = 11020
ID = 11020
postype = left
pos = 0,0
bindtime = -1
scale =.5,.5
sprpriority = -5
;ownpal = 0
removetime = 45
pausemovetime = 9999
supermovetime = 9999
ignorehitpause = 1

[State 11001, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
flag3 = nomusic
ignorehitpause =  1

[State 11001, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause =  1

[State 11001, End]
type = DestroySelf
trigger1 = RoundState = 4
trigger1 = Time > 50


;===============================================================================
;========================   Hyper Finish BG   ==================================
;===============================================================================
;--------------------------------------------------------
[Statedef 11100]
type = A
movetype = I
physics = N
ctrl = 0
anim = 11000
velset = 0,0
sprpriority = -5

[State 11100, PlaySnd]
type = PlaySnd
trigger1 = Time = 2
value = S11000,1
ignorehitpause = 1

[State 11100, Explod]
type = Explod
trigger1 = Time = 0
anim = 11011
ID = 11011
pos = 0,0
postype = Left
facing = 1
bindtime = -1
removetime = -2
pausemovetime = 9999
supermovetime = 9999
scale = .5,.5
sprpriority = -5
ontop = 0
ownpal = 1
ignorehitpause = 1

[State 11100, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
flag3 = nomusic
ignorehitpause =  1

[State 11100, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause =  1

[State 11100, White]
type = EnvColor
trigger1 = Time = 149
value = 255,255,255
time = 2
under = 1
ignorehitpause = 1

[State 11100, Change]
type = ChangeState
trigger1 = Time = 150
value = 11101
ignorehitpause = 1

;--------------------------------------------------------
[Statedef 11101]
type = A
movetype = I
physics = N
ctrl = 0
anim = 11000
velset = 0,0
sprpriority = -5

[State 11101, PalFX]
type = PalFX
trigger1 = Time = [0,45]
ignorehitpause = 1
time = 1
add = 255-6*Time,255-6*Time,255-6*Time

[State 11101, BG2]
type = Explod
trigger1 = Time = 0
anim = 11020
ID = 11020
postype = left
pos = 0,0
bindtime = -1
scale =.5,.5
sprpriority = -5
;ownpal = 0
removetime = 45
pausemovetime = 9999
supermovetime = 9999
ignorehitpause = 1

[State 11101, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
flag3 = nomusic
ignorehitpause =  1

[State 11101, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause =  1

[State 11101, End]
type = DestroySelf
trigger1 = RoundState = 4
trigger1 = Time > 50
