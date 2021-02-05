;---------------------------------------------------------------------------
; Ki 1
[Statedef 1000]
type=S
physics=S
movetype=A
anim=1000
ctrl=0
velset=0,0
poweradd=72*!var(20)
sprpriority=1
facep2=1


[State 1000, Strength]
type = varset
trigger1 = !time && !AIlevel
var(10) = ifelse(command = "z", 3, ifelse(command = "y", 2, 1))
[State 1000, Strength AI]
type = varset
trigger1 = !time && AIlevel
var(10) = ifelse((p2movetype = H || random < 500), 3, ifelse(random < 500, 2, 1))

[State 1000, width]
type = width
trigger1 = animelemtime(2) = 8
player= 30, 0
edge=50,0
value = 30,0

[State 0, Explod]
type = Explod
trigger1 = animelem = 2
anim = 1007
ID = 1007
pos = 40,-79
postype = p1
removetime = -2
pausemovetime = 0
supermovetime = 0
scale = .5,.5
sprpriority = 5
ownpal = 1

[State 1205, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1100,0

[State 1205, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1100,1

[State 0, Helper]
type = Helper
trigger1 = animelem = 3
name = "Ki Blasts"
ID = 1000
stateno = 1005
pos = 40,-79
postype = p1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = 1
size.yscale = 1


[State 1000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Ki 2
[Statedef 1010]
type=S
physics=S
movetype=A
anim=1010
ctrl=0
velset=0,0
poweradd=72*!var(20)
sprpriority=1
facep2=1


[State 1010, Strength]
type = varset
trigger1 = !time && !AIlevel
var(10) = ifelse(command = "z", 3, ifelse(command = "y", 2, 1))
[State 1010, Strength AI]
type = varset
trigger1 = !time && AIlevel
var(10) = ifelse((p2movetype = H || random < 500), 3, ifelse(random < 500, 2, 1))

[State 1000, width]
type = width
trigger1 = animelemtime(4) = 2
player= 30, 0
edge=50,0
value = 30,0


[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 1022
ID = 1022
pos = 40,-79
postype = p1
removetime = -2
pausemovetime = 0
supermovetime = 0
scale = .5,.5
sprpriority = 5
ownpal = 1

[State 1205, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1100,0

[State 1205, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1100,1

[State 0, Helper]
type = Helper
trigger1 = animelem = 4
name = "Ki Blasts"
ID = 1025
stateno = 1025
pos = 50,-79
postype = p1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = 1
size.yscale = 1


[State 1000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1
;========================<ZANKUU HADOU KEN>=============================
[Statedef 1050]
type=A
physics=A
movetype=A
anim=1050
ctrl=0
poweradd=72*!var(20)
sprpriority=1


[State 1000, Strength]
type = varset
trigger1 = !time && !AIlevel
var(10) = ifelse(command = "z", 3, ifelse(command = "y", 2, 1))
[State 1050, strengthvarAI]
type=varset
trigger1= !time && AIlevel
var(10)= ifelse((p2movetype=H || random<333), 3, ifelse(random<500, 2, 1))

[State 1050, Hadouken]
type=helper
trigger1=animelem=2; (animelem=2 && var(1)>6) || animelem=5
helpertype=normal
stateno=1055
ID=1055
name="Hadouken"
postype=p1
pos = -5,-51
ownpal=1
size.xscale = 1
size.yscale = 1

[State 0, Helper]
type = Helper
trigger1 = animelem = 2
name = "Ki Blasts Effect"
ID = 1057
stateno = 1057
pos = -5,-51
postype = p1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = .5
size.yscale = .5

[State 1050, ????]
type = Velset
trigger1 = AnimElemtime(2) > 0
x = -2.2
y = -2.5

[State 1050, ????]
type = Veladd
trigger1 = AnimElemtime(5) >= 0
y = 8

;-------------------------------------------------------------------------------------------------------

[Statedef 1100]
type=S
physics=S
movetype=A
anim=1100
ctrl=0
velset=0,0
sprpriority=2
poweradd=72*!var(20)
juggle = 0
facep2=1

[State 1100, VarSet]
type = VarSet
trigger1 =!AILevel&& time =0
var(10) = ifelse(command="x",0,ifelse(command="y",1,2))
ignorehitpause = 1

[State 1100, VarSet]
type = VarSet
trigger1 =AILevel&& time =0
var(10) = ifelse(random<300,1,2)

[State 1100, Anim]
type=changeanim
trigger1= !time
value= ifelse(var(10)=2, 1102, ifelse(var(10)=1, 1101, 1100))

[State 1100, go]
type = VelSet
trigger1 = animelem = 1
x = 4.5+2*var(10)



[State 1100, Width]
type = Width
trigger1 =animelemtime(1)>=0&&animelemtime(5)<0
edge = 20,0
player = 20,0


[State 1100, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 3
statetype = A
physics = N

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 3
x = (5+var(10))*1
y = ifelse(!var(10), -6, ifelse(var(10) = 1, -8, -10))

[State 1100, Snd]
type = playsnd
trigger1 = animelem = 3
value = 41, 0




[State 1100, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1100, 2

[State 1100, Snd]
type = playsnd
trigger1 = animelem = 2
value = 0, 25
channel = 0

[State 1100, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1100, 3
channel = 0

[State 1100, Dust]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 7100
ID = 7100
name = "Jump Dust"
postype = p1
ownpal = 1

[State 1100, Gravity]
type = Veladd
trigger1 = AnimElemTime(3) > 0
y = .6

[State 1100, Velocity]
type = VelMul
trigger1 = AnimElemTime(3) >= 0
x = .98
persistent = 1

[State 1100, Hit]
type=hitdef
trigger1= var(10) = 0 && animelem=2
trigger2= var(10) = 1 && animelem=2
trigger3= var(10) = 2 && animelem=2
attr = A,SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 20,12
getpower=72* !var(20), 36 * !var(20)
givepower=35, 35
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 5)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18 + 4*var(9)
ground.slidetime = 18 + 4*var(9)
guard.hittime = 18
air.hittime = 120
ground.velocity = 3,-6
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -6.83, -12.64)
guard.cornerpush.veloff = 0
air.velocity = -1.32, -6.36
air.cornerpush.veloff = 0
yaccel = .58
fall = 1
fall.recover = 0
fall.recovertime = 120
hitsound=S2+10*var(44), 2
guardsound = S130,0
sparkno = s7020 + (random % 8)
guard.sparkno = s7001
sparkxy = -10 + 0*(var(35):=ifelse((animelem = 5), 7, ifelse((animelem = 4), 30, 40))), var(36):=-89
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
air.juggle = 0
fall.envshake.time = 15
fall.envshake.ampl = 5
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120


[State 1100, Hit]
type=hitdef
trigger1= var(10) = 0 && Animelem  = 3
trigger2 = var(10) = 1 && AnimElem = 3
trigger3 = var(10) = 2 && AnimElem = 3
attr = A,SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 56,12
getpower=72* !var(20), 36 * !var(20)
givepower=35, 35
pausetime = ifelse(var(20), 4, 6), ifelse(var(20), 4, 6)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18 + 4*var(9)
ground.slidetime = 18 + 4*var(9)
guard.hittime = 18
air.hittime = 120
ground.velocity = -3, ifelse(var(10)=2, -12, ifelse(var(10)=1, -11, -10))
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -6.83, -12.64)
guard.cornerpush.veloff = 0
air.velocity = -4.32, -9.36
air.cornerpush.veloff = 0
yaccel = .58
fall = 1
fall.recover = 0
fall.recovertime = 120
hitsound=S2+10*var(44), 2
guardsound = S130,0
sparkno = s7020 + (random % 8)
guard.sparkno = s7001
sparkXY = -10 + 0 * (var(35) := 60), var(36):=-89
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
fall.envshake.time = 15
fall.envshake.ampl = 5
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120

[State 1100, Hit]
type=hitdef
trigger1 = var(10) = 1 && AnimElem = 4
trigger2 = var(10) = 2 && AnimElem = 4
attr = A,SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 15,12
getpower=72* !var(20), 36 * !var(20)
givepower=35, 35
pausetime = ifelse(var(20), 4, 6), ifelse(var(20), 4, 6)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18 + 4*var(9)
ground.slidetime = 18 + 4*var(9)
guard.hittime = 18
air.hittime = 120
ground.velocity = -3, ifelse(var(10)=2, -12, ifelse(var(10)=1, -11, -10))
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -6.83, -12.64)
guard.cornerpush.veloff = 0
air.velocity = -4.32, -7.36
air.cornerpush.veloff = 0
yaccel = .58
fall = 1
fall.recover = 0
fall.recovertime = 120
hitsound=S2+10*var(44), 2
guardsound = S130,0
sparkno = s7020 + (random % 8)
guard.sparkno = s7001
sparkXY = -10 + 0 * (var(35) := 60), var(36):=-95
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
fall.envshake.time = 15
fall.envshake.ampl = 5
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120


[State 1100, Hit]
type=hitdef
trigger1 = var(10) = 2 && AnimElem = 5
attr = A,SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 10,12
getpower=72* !var(20), 36 * !var(20)
givepower=35, 35
pausetime = ifelse(var(20), 4, 6), ifelse(var(20), 4, 6)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18 + 4*var(9)
ground.slidetime = 18 + 4*var(9)
guard.hittime = 18
air.hittime = 120
ground.velocity = -3, ifelse(var(10)=2, -12, ifelse(var(10)=1, -11, -10))
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -6.83, -12.64)
guard.cornerpush.veloff = 0
air.velocity = -4.32, -7.36
air.cornerpush.veloff = 0
yaccel = .58
fall = 1
fall.recover = 0
fall.recovertime = 120
hitsound=S2+10*var(44), 2
guardsound = S130,0
sparkno = s7020 + (random % 8)
guard.sparkno = s7001
sparkXY = -10 + 0 * (var(35) := 60), var(36):=-95
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
fall.envshake.time = 15
fall.envshake.ampl = 5
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120


[State 0, ChangeState]
type = ChangeState
trigger1 = pos y > 0 && vel y > 0
value = 1105
ctrl = 0
;--------------------------------------------------------------------------------
;Land
[Statedef 1105]
type=S
physics=S
movetype=A
anim=1105
ctrl=0
velset=0,0
sprpriority=2
facep2=1

[State 1105, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1105, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 7106
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1105, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1105, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1
;----------------------------------------------------------------------------------
;EX Kohou
[Statedef 1150]
type=S
physics=S
movetype=A
anim=1150
ctrl=0
velset=0,0
sprpriority=2
poweradd=-500
juggle = 0
facep2=1

[State 1150, VarSet]
type = VarSet
trigger1 =!time
var(10) = 3
ignorehitpause = 1

[State 1150, NotHitBy]
type=NotHitBy
trigger1=AnimElemTime(5) < 0
time=1
value=SCA


[State 1150, MAX Timer Drain]
type=VarAdd
trigger1=!Time
trigger1=var(20) > 0
var(20)=-250

[State 1150, Custom Combo Juggle Reset]
type=VarSet
trigger1=!Time && var(20)
var(15)=0
ignoreHitPause=1

[State 1150, EX Flash]
type=VarSet
trigger1=!Time
var(25)=30

[State 1150, EX FX]
type=Explod
trigger1=!Time
anim=8210
ID = 7999
sprPriority=3
posType=p1
pos=15, -68
scale=0.5, 0.5
pausemovetime = 999
supermovetime = 999
ownPal=1

[State 1150, EX-SND]
type=PlaySnd
trigger1 =!time
value=0,1000
channel=3

[State 1150, NotHitBy]
type = NotHitBy
trigger1 =Animelemtime(3)<0
value = SCA,AP
time = 1
ignorehitpause =1


[State 1150, Flame Particles]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 3157
ID = 3157
name = "Flame Particles"
postype = p1
ownpal = 1
ignorehitpause = 1


[State 1150, go]
type = VelSet
trigger1 = animelem = 2
x = 18.5


[State 1150, Width]
type = Width
trigger1 =animelemtime(1)>=0&&animelemtime(5)<0
edge = 20,0
player = 20,0


[State 1150, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 5
statetype = A
physics = N

[State 1150, Velocity]
type = VelSet
trigger1 = AnimElem = 5
x = 3.5
y = -12

[State 1150, Snd]
type = playsnd
trigger1 = animelem = 5
value = 41, 0

[State 1150, Flame Particles]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 1456
ID = 1456
name = "Flame Fist"
postype = p1
size.xScale=.2
size.yScale=.2
ownpal = 1
ignorehitpause = 1
pausemovetime = 999
supermovetime = 999

[State 1150, Flame Particles]
type = helper
trigger1 = animelem = 4
helpertype = normal
stateno = 1457
ID = 1457
name = "Flame Fist"
postype = p1
size.xScale=.2
size.yScale=.2
ownpal = 1
ignorehitpause = 1
pausemovetime = 999
supermovetime = 999

[State 3230,3]
type = Explod
trigger1 = AnimElem = 4
anim = 1408
ID = 1409
pos = 40,-100
scale = .1,.2
postype = P1
sprpriority = 3
removetime = -2
bindtime = -1
ignorehitpause = 0
ownpal = 1
pausemovetime = 999
supermovetime = 999

[State 1150,3]
type = Explod
trigger1 = AnimElem = 5
anim = 1407
ID = 1406
pos = 12,-160
scale = .2,.3
postype = P1
sprpriority = 3
removetime = -2
bindtime = -1
ignorehitpause = 0
ownpal = 1
pausemovetime = 999
supermovetime = 999

[State 1150,3]
type = Explod
trigger1 = AnimElem = 5
anim = 1408
ID = 1406
pos = 20,-180
scale = .3,.3
postype = P1
facing = 1
sprpriority=20
removetime = -2
bindtime = -1
ignorehitpause = 0
ownpal = 1
pausemovetime = 999
supermovetime = 999

[State 1150, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 12
id = 1406

[State 1150, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 4
id = 1408

[State 1150, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 5
id = 1409

[State 3153, Snd]
type = playsnd
trigger1 = animelem = 5
value = 3300, 2

[State 1150, Snd]
type = playsnd
trigger1 = animelem = 3
value = 0, 3

[State 3153,0]
type = PlaySnd
trigger1 = Time = 0
value = 3300, 0

[State 1150, Snd]
type = playsnd
trigger1 = animelem = 5
value = 1100, 1
volume = 255

[State 1150, Snd]
type = playsnd
trigger1 = animelem = 5
value = 1100, 3
volume = 255

[State 1150, Dust]
type = helper
trigger1 = animelem = 5
helpertype = normal
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[State 1150, Gravity]
type = Veladd
trigger1 = AnimElemTime(5) > 0
y = .6

[State 1150, Velocity]
type = VelMul
trigger1 = AnimElemTime(5) >= 0
x = .98
persistent = 1

[State 1150, Helper]
type = Helper
trigger1= movehit&& numtarget &&!numhelper(7181)
trigger1= !(target,time) && target,movetype=H
helpertype = normal
name = "P2 Body Flames"
ID = 7181
stateno = 7181
pos = 0,-57
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
size.xscale=.2*const(size.xscale)
size.yscale=.2*const(size.yscale)


[State 1150, Hit]
type=hitdef
trigger1= animelem=3
attr = A,SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage=20,5
getpower=30* !var(20),15* !var(20)
givepower=20,20
pausetime = 20,20
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = med
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18 + 4*var(9)
ground.slidetime = 18 + 4*var(9)
guard.hittime = 18
air.hittime = 120
ground.velocity = 3,-6
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -6.83, -12.64)
guard.cornerpush.veloff = 0
air.velocity = -1.32, -4.36
air.cornerpush.veloff = 0
yaccel = .58
fall = 1
fall.recover = 0
fall.recovertime = 120
hitsound = S2,12
guardsound = S130,0
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=ifelse((animelem = 5), 7, ifelse((animelem = 4), 30, 40))), var(36):=-89
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
air.juggle = 0
p2facing = 1
fall.envshake.time = 15
fall.envshake.ampl = 5
envshake.time = 20
envshake.ampl = 4
envshake.freq = 120


[State 1150, Hit]
type=hitdef
trigger1= animelem=4
attr = A,SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage=20,5
getpower=30* !var(20),15* !var(20)
givepower=20,20
pausetime = 20,20
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = med
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18 + 4*var(9)
ground.slidetime = 18 + 4*var(9)
guard.hittime = 18
air.hittime = 120
ground.velocity = 3,-5
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -6.83, -12.64)
guard.cornerpush.veloff = 0
air.velocity = -1.32, -4.36
air.cornerpush.veloff = 0
yaccel = .58
fall = 1
fall.recover = 0
fall.recovertime = 120
hitsound = S2,12
guardsound = S130,0
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=ifelse((animelem = 5), 7, ifelse((animelem = 4), 30, 40))), var(36):=-89
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
air.juggle = 0
p2facing = 1
fall.envshake.time = 15
fall.envshake.ampl = 5
envshake.time = 20
envshake.ampl = 4
envshake.freq = 120


[State 1150, Hit]
type=hitdef
trigger1 = AnimElem = 5
attr = A,SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage=20,5
getpower=30* !var(20),15* !var(20)
givepower=20,20
pausetime = 4,3
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18 + 4*var(9)
ground.slidetime = 18 + 4*var(9)
guard.hittime = 18
air.hittime = 120
ground.velocity = -3, ifelse(var(10)=2, -12, ifelse(var(10)=1, -11, -10))
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -6.83, -12.64)
guard.cornerpush.veloff = 0
air.velocity = -4.32, -7.36
air.cornerpush.veloff = 0
yaccel = .58
fall = 1
fall.recover = 0
fall.recovertime = 120
hitsound=S2+10*var(44), 2
guardsound = S130,0
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36):=-89
palfx.time = 40
palfx.mul = 128, 128, 128
palfx.sinadd = 96, 96, 96, 4
p2facing = 1
fall.envshake.time = 15
fall.envshake.ampl = 5
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120

[State 1150, Hit]
type=hitdef
trigger1 = AnimElem = 6
attr = A,SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage=20,5
getpower=30* !var(20),15* !var(20)
givepower=20,20
pausetime = 4,6
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18 + 4*var(9)
ground.slidetime = 18 + 4*var(9)
guard.hittime = 18
air.hittime = 120
ground.velocity = -3, ifelse(var(10)=2, -12, ifelse(var(10)=1, -11, -10))
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -6.83, -12.64)
guard.cornerpush.veloff = 0
air.velocity = -4.32, -9.36
air.cornerpush.veloff = 0
yaccel = .58
fall = 1
fall.recover = 0
fall.recovertime = 120
hitsound=S2+10*var(44), 2
guardsound = S130,0
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36):=-95
palfx.time = 40
palfx.mul = 128, 128, 128
palfx.sinadd = 96, 96, 96, 4
p2facing = 1
fall.envshake.time = 15
fall.envshake.ampl = 5
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120

[State 1150, Hit]
type=hitdef
trigger1 = AnimElem = 7
attr = A,SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage=20,5
getpower=30* !var(20),15* !var(20)
givepower=20,20
pausetime = 4,6
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18 + 4*var(9)
ground.slidetime = 18 + 4*var(9)
guard.hittime = 18
air.hittime = 120
ground.velocity = -3, ifelse(var(10)=2, -12, ifelse(var(10)=1, -11, -10))
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -6.83, -12.64)
guard.cornerpush.veloff = 0
air.velocity = -4.32, -9.36
air.cornerpush.veloff = 0
yaccel = .58
fall = 1
fall.recover = 0
fall.recovertime = 120
hitsound = S2,9
guardsound = S130,0
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36):=-95
palfx.time = 40
palfx.mul = 128, 128, 128
palfx.sinadd = 96, 96, 96, 4
p2facing = 1
fall.envshake.time = 15
fall.envshake.ampl = 5
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120

[State 1150, Hit]
type=hitdef
trigger1 = AnimElem = 8
attr = A,SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage=25,5
getpower=30* !var(20),15* !var(20)
givepower=20,20
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18 + 4*var(9)
ground.slidetime = 18 + 4*var(9)
guard.hittime = 18
air.hittime = 120
ground.velocity = -5,-10
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -6.83, -12.64)
guard.cornerpush.veloff = 0
air.velocity = -5, -10
air.cornerpush.veloff = 0
yaccel = .58
fall = 1
fall.recover = 0
fall.recovertime = 120
hitsound = S2,9
guardsound = S130,0
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36):=-95
palfx.time = 40
palfx.mul = 128, 128, 128
palfx.sinadd = 96, 96, 96, 4
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120
p2facing = 1
fall.envshake.time = 15
fall.envshake.ampl = 5


[State 1150, ChangeState]
type = ChangeState
trigger1 = pos y > 0 && vel y > 0
value = 3156


;------------------- —‚Ñ‚¹R‚èi‹­j
[Statedef 1200]
type = S
movetype = A
physics = S
anim = 1200
velset = 0,0
juggle = 10
poweradd = 100
ctrl = 0

[State 1100, 24]
type = StateTypeSet
trigger1 = animelem = 1
statetype = A
movetype = A
physics = N

[State 3005, 2]
type = VelSet
trigger1 = AnimElem = 1
x = 6
y = -2

[State 0, VelAdd]
type = VelAdd
trigger1 = animelem = 1,>0
x = -.04

[State 3005, 2]
type = VelSet
trigger1 = AnimElem = 2
y = 0

[State 3005, 2]
type = Velset
trigger1 = AnimElem = 10
y = 2
x = 0

[State 0, PosSet]
type = PosSet
trigger1 = AnimElem = 14,>0
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
y = 0


[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 3
trigger3 = AnimElem = 10
value = 0,1

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 400,0
volume = 255

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 400,0
volume = 255

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 12
value = 401,0
volume = 255

[State 1000, dust]
type = Explod
trigger1 = AnimElem = 1
anim = 4010
ID = 1000
postype = p1
pos = -10,0
bindtime = 1
sprpriority = 2
ownpal = 1

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 20,5
animtype = hard
hitflag = MAF
guardflag = MA
sparkxy = -20,-90
sparkno = s7020 + (random % 8)
guard.sparkno = s7001
hitsound = S5,3
guardsound = S6,0
pausetime = 12,13
ground.hittime = 17
ground.type = high
ground.slidetime = 17
ground.velocity = -2.5
guard.velocity = -4.5
air.velocity = -3,-4
air.fall = 1
fall = 0
recover=0
air.recover=0
envshake.time = 4
envshake.ampl = 4
id = 1050
nochainid = 1000


[State 200, 2]
type = HitDef
trigger1 = AnimElem = 7
attr = A, SA
damage = 40,10
animtype = diagup
hitflag = MAF
guardflag = MA
sparkno = s7020 + (random % 8)
guard.sparkno = s7001
sparkxy = -15,-60
hitsound = S5,2
guardsound = S6,0
pausetime = 12,13
ground.type = high
ground.slidetime = 12
ground.hittime  = 16
ground.velocity = -2.5,-4.5
guard.velocity = -4.5
air.velocity = -2.5,-2.5
air.fall = 1
fall = 1
recover=0
air.recover=0
envshake.time = 4
envshake.ampl = 4


[State 200, 2]
type = HitDef
trigger1 = AnimElem = 11
attr = S, NA
damage = 40,10
animtype = diagup
hitflag = MAF
guardflag = MA
pausetime = ifelse(var(20), 7, 14), ifelse(var(20), 7, 14)
sparkno = s7020 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, -70
hitsound = s2, 6
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -8, -6
air.type = Low
air.velocity = -8, -6
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0;-12.74
getpower = ifelse(p2movetype = H, 72, 144) * !var(20), 36 * !var(20)
givepower = 36, 36
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = ifelse(var(20), -4, -8), -1.5
forcestand = 1
airguard.cornerpush.veloff = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = pos y > 0 && vel y > 0
value = 1105
ctrl = 0


