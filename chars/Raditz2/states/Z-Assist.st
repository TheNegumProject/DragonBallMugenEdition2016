;===============================================================================
;========================  Z-Assist Helpers  ===================================
;===============================================================================
;--------------------------------------------------------
; Oozaru Helper
[Statedef 960]
type    = U
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 960

[State 960, SprPriority]
type = SprPriority
trigger1 = 1
value = 5
ignorehitpause = 1

[State 960, 1]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 960, Bind 1]
type = Bindtoparent
trigger1 = 1
pos = 150,0

[State 960, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S960,0
channel = 3

[State 960, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 11
value = S960,1

[State 960, EnvShake]
type = EnvShake
trigger1 = AnimElem = 12
time = 15
freq = 120
ampl = -4
ignorehitpause = 1

[State 960, 8]
type = Explod
trigger1 = AnimElem = 12
anim = 9010
pos = 10,-6
sprpriority = -3
scale = .675,.675

[State 960, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 960, Hit]
type = HitDef
trigger1 = !MoveContact
attr = S,NA
hitflag = MAFD
guardflag = MA
priority= 4,Hit
animtype = medium
air.animtype = hard
damage = ceil(100*(parent,fvar(20))),1
pausetime = 6,8
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = S5,3
guardsound = S6,0
ground.type = Low
ground.slidetime = 48
guard.slidetime = 28
ground.hittime  = 48
guard.hittime = 28
ground.velocity = -7.8,-4.8
guard.velocity = -6
air.velocity = -3.8,-4.8
air.hittime  = 44
fall = 1
air.fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
getpower = 0,0
givepower = 0,0
fall.envshake.time = 40
fall.envshake.freq = 180
fall.envshake.ampl = -4

[State 960, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != 950
trigger2 = Animtime = 0


;--------------------------------------------------------
; Saibaiman Helper Start
[Statedef 970]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 970

[State 970, SprPriority]
type = SprPriority
trigger1 = 1
value = 5
ignorehitpause = 1

[State 970, 1]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 970, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1,2
value = S970,0
channel = 3

[State 970, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S40,0

[State 970, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 7.8
y = -5.8

[State 970, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 3,>=0
statetype = A
movetype = A
physics = A

[State 970, 1]
type = HitDef
Trigger1 = AnimElem = 3
attr = A, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
p1facing = 1
p2facing = 1
p1stateno = 972
p2stateno = 975
fall = 0
hitsound = -1

[State 970, ChangeState]
type = ChangeState
trigger1 = AnimElem = 3,>=1
trigger1 = Pos Y > - Vel Y
value = 971
ctrl = 0

;------------------------------------
; Saibaiman Helper End
[Statedef 971]
type    = S
movetype= I
physics = S
velset = 0,0
ctrl = 0
anim = 971

[State 971, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 971, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != 950
trigger2 = Animtime = 0

;------------------------------------
; Saibaiman Helper Explosion
[Statedef 972]
type    = U
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 972

[State 970, PlaySnd]
type = PlaySnd
trigger1 = Time = 12
value = S970,1
channel = 3

[State 970, PlaySnd]
type = PlaySnd
trigger1 = Time = 44
value = S970,2

[State 972, PosSet]
type = PosSet
trigger1 = Time = 0
x = (Enemynear,Pos x)
y = (Enemynear,Pos y) - 54

[State 972, TargetVelSet]
type = TargetVelSet
trigger1 = Time = 54
x = -3.4
y = -5.6

[State 972, TargetState]
type = TargetState
trigger1 = Time = 54
value = 976

[State 972, EnvShake]
type = EnvShake
trigger1 = Time = 44
time = 20
freq = 112
ampl = -4

[State 972, Explod]
type = Explod
trigger1 = Time = 48
anim = 9050
ID = 9050
pos = 0,-20
postype = p1
facing = 1
vfacing = 1
bindtime = 2
removetime = -2
pausemovetime = 9999
supermovetime = 9999
scale = .685,.685
sprpriority = 8
ontop = 1
shadow = 0,0,0
ownpal = 1
ignorehitpause = 1

[State 972, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = Time = 50
value = -100
kill = 1

[State 972, DestroySelf]
type = DestroySelf
trigger1 = Time = 60

;------------------------------------
; Saibaiman P2 State 1
[Statedef 975]
type    = S
movetype= H
physics = S
velset = 0,0
ctrl = 0

[State 975, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 975

[State 975, SelfState]
type = SelfState
trigger1 = Animtime = 0
value = 5050

;------------------------------------
; Saibaiman P2 State2
[Statedef 976]
type    = A
movetype= H
physics = A
velset = -3.4,-5.6
ctrl = 0

[State 976, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
value = 5050

[State 976, SelfState]
type = SelfState
triggerall = Time > 1
trigger1 = Pos Y > - Vel Y
value = 5100


;--------------------------------------------------------
; Thales Helper
[Statedef 980]
type    = U
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 980
sprpriority = 0

[State 980, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 3
value = S980,0
channel = 3

[State 980, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 5
value = S980,1

[State 980, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 6
value = S980,2

[State 980, Explod]
type = Explod
trigger1 = Animelem = 6
anim = 987
ID = 987
pos = -16,-158
postype = p1
facing = 1
bindtime = -1
removetime = 16
pausemovetime = 9999
supermovetime = 9999
scale = .675,.675
sprpriority = 8
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 980, Helper]
type = Helper
trigger1 = Animelem = 7
name = "Thales_Fireball"
ID = 985
stateno = 985
pos = 12,-78
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size.xscale = .675
size.yscale = .675

[State 980, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != 950
trigger2 = Animtime = 0

;--------------------------------------------------------
; Thales Fireball Helper
[Statedef 985]
type    = U
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 985

[State 985, SprPriority]
type = SprPriority
trigger1 = 1
value = 8
ignorehitpause =  1

[State 985, 1]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 985, VelSet]
type = VelSet
trigger1 = Time = 0
x = ((P2Bodydist x) + 14)/12
y = 5.8

[State 985, HitDef]
type = HitDef
trigger1 = !MoveContact
attr = A,NP
hitflag = MAF
guardflag = MA
animtype = Back
air.animtype = Back
fall.animtype = Back
priority = 4,Hit
damage = 100,35
pausetime = 2,6
guard.pausetime = 4,4
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = S1010,2
guardsound = S1010,1
ground.type = High
air.type = Low
ground.slidetime = 44
guard.slidetime = 20
ground.hittime = 46
guard.hittime = 20
air.hittime = 44
ground.velocity = -4.8,-6.8
guard.velocity = -5.8
air.velocity = -4.8,-6.8
airguard.velocity = -4,-3.8
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
envshake.freq = 95
envshake.ampl = -2
fall.envshake.time = 34
fall.envshake.freq = 120
fall.envshake.ampl = -4

[State 985, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 986
ctrl = 0
ignorehitpause = 1

[State 985, DestroySelf]
type = DestroySelf
trigger1 = Time = 100

;---------------------------------
[Statedef 986]
type    = U
movetype= A
physics = N
poweradd= 0
ctrl = 0
anim = 11000
sprpriority = 4

[State 986, 1]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 986, VelMul]
type = VelMul
trigger1 = Time = 0
x = 0.54321
y = 0.4875
ignorehitpause = 1

[State 986, Explod]
type = Explod
trigger1 = Time = 0
anim = 986
ID = 986
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 2
removetime = -2
pausemovetime = 9999
supermovetime = 9999
scale = .675,.675
sprpriority = 5
shadow = 0,0,0
ownpal = 1
ignorehitpause = 1

[State 986, Explod]
type = Explod
trigger1 = Time = 0
anim = 9050
ID = 9050
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 2
removetime = -2
pausemovetime = 9999
supermovetime = 9999
scale = .675,.675
sprpriority = 8
ontop = 1
shadow = 0,0,0
ownpal = 1
ignorehitpause = 1

[State 986, DestroySelf]
type = DestroySelf
trigger1 = Time = 16
ignorehitpause = 1

;----------------------------------------------------------
; Z-Assist Choice Helper
[Statedef 6000]
type    = U
movetype= I
physics = N
velset = 0,0
ctrl = 0
anim = 6000

[State 6000, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = intro

[State 6000, SprPriority]
type = SprPriority
trigger1 = 1
value = 7
ignorehitpause =  1


[State 6000, ChangeAnim] ; Oozaru
type = ChangeAnim
triggerall = Teamside = 1
triggerall = (Parent, var(20)) = 0
triggerall = AnimElemTime(1)>=20
trigger1 = Anim = 6020
trigger1 = (Root,Command = "fwd")
trigger2 = Anim = 6010
trigger2 = (Root,Command = "back")
value = 6000

[State 6000, ChangeAnim] ; Thales
type = ChangeAnim
triggerall = Teamside = 1
triggerall = (Parent, var(20)) = 0
triggerall = AnimElemTime(1)>=20
trigger1 = Anim = 6000
trigger1 = (Root,Command = "fwd")
trigger2 = Anim = 6020
trigger2 = (Root,Command = "back")
value = 6010

[State 6000, ChangeAnim] ; Saibaman
type = ChangeAnim
triggerall = Teamside = 1
triggerall = (Parent, var(20)) = 0
triggerall = AnimElemTime(1)>=20
trigger1 = Anim = 6010
trigger1 = (Root,Command = "fwd")
trigger2 = Anim = 6000
trigger2 = (Root,Command = "back")
value = 6020



[State 6000, ChangeAnim] ; Oozaru
type = ChangeAnim
triggerall = Teamside = 2
triggerall = (Parent, var(20)) = 0
triggerall = AnimElemTime(1)>=20
trigger1 = Anim = 6010
trigger1 = (Root,Command = "fwd")
trigger2 = Anim = 6020
trigger2 = (Root,Command = "back")
value = 6000

[State 6000, ChangeAnim] ; Thales
type = ChangeAnim
triggerall = Teamside = 2
triggerall = (Parent, var(20)) = 0
triggerall = AnimElemTime(1)>=20
trigger1 = Anim = 6020
trigger1 = (Root,Command = "fwd")
trigger2 = Anim = 6000
trigger2 = (Root,Command = "back")
value = 6010

[State 6000, ChangeAnim] ; Saibaman
type = ChangeAnim
triggerall = Teamside = 2
triggerall = (Parent, var(20)) = 0
triggerall = AnimElemTime(1)>=20
trigger1 = Anim = 6000
trigger1 = (Root,Command = "fwd")
trigger2 = Anim = 6010
trigger2 = (Root,Command = "back")
value = 6020



[State 6000, PlaySnd]
type = PlaySnd
triggerall = (Parent, var(20)) = 0
trigger1 = (Root,Command = "fwd")
trigger2 = (Root,Command = "back")
value = S6000,0

[State 6000, PlaySnd]
type = PlaySnd
trigger1 = (Root,command="s")
value = S6000,1

[State 6000, ParentVarSet]
type = ParentVarSet
trigger1 = (Root,command="s")
v = 20
value = 1

[State 6000, ParentVarAdd]
type = ParentVarAdd
trigger1 = (Parent,var(20)) > 0
v = 20
value = 1
ignorehitpause = 1

[State 6000, Explod]
type = Explod
trigger1 = Time = 0
anim = 6030
ID = 6030
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -1
pausemovetime = 9999
supermovetime = 9999
scale = .5,.5
sprpriority = 8
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 6000, ParentVarSet]
type = ParentVarSet
trigger1 = 1
v = 57
value = ((Anim - 6000)/10) + 1

[State 6000, RemoveExplod]
type = RemoveExplod
trigger1 = Roundstate = 2
trigger2 = (Root,command="s")
trigger3 = Root,AILevel
id = 6030

[State 6000, DestroySelf]
type = DestroySelf
trigger1 = Roundstate = 2
trigger2 = Root,AILevel
trigger3 = (Parent,var(20)) = 130

;----------------------------------------------------------
; Z-Assist Portrait
[Statedef 6050]
type    = U
movetype= I
physics = N
velset = 0,0
ctrl = 0
anim = 18000

[State 6050, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 6050, Explod]; alone
type = Explod
triggerall = time = 0
triggerall = numexplod(6050)!=1
trigger1 = !NumPartner
trigger2 = NumPartner
trigger2 = Partner, AuthorName != "misterr07"
anim = 6049 + (Parent,var(57))
ID = 6050
pos = (266*Teamside - 244),228
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 9999
supermovetime = 9999
scale = .25,.25
sprpriority = 4
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 6050, Explod]; with partner
type = Explod
triggerall = time = 0
triggerall = numexplod(6050)!=1
trigger1 = NumPartner
trigger1 = Partner, AuthorName = "misterr07"
anim = 6049 + (Parent,var(57))
ID = 6050
pos = (266*Teamside - 244), 228 - 30*((Parent, var(6)) > (Parent,var(7)))
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 9999
supermovetime = 9999
scale = .25,.25
sprpriority = 4
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 6050, End]
type = DestroySelf
trigger1 = RoundState!=2
