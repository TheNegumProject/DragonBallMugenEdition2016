[Statedef 1000]
type=S
physics=S
movetype=A
anim=1000
ctrl=0
velset=0,0
poweradd=72
sprpriority=1
facep2=1

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && Anim != StateNo
value = StateNo

[State 1000, Helper]
type = Helper
trigger1 = AnimElem = 4, = 0
helpertype = normal
stateno = 1005
postype = p1
pos = -30,-60
ownpal = 1
id = 1005
name = "deathbeam"
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = 1
size.yscale = 1

[State 1000, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; push
[Statedef 1010]
type=S
physics=S
movetype=A
anim=1010
ctrl=0
velset=0,0
poweradd=72
sprpriority=1
facep2=1

[State 1010, width]
type = width
trigger1 = animelemtime(5) = -1
value = 30,0

[State 0, Explod]
type = Explod
trigger1 = animelem = 2
anim = 1007
ID = 1007
pos = 50,-70
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
trigger1 = animelemtime(3)=1;animelem = 3
helpertype = normal
name = "kipush"
ID = 1015
stateno = 1015
pos = 40,-59
postype = p1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = .6
size.yscale =2


[State 1010, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;---------------------------------------------------------------------------------------------------
[Statedef 1050]
type=A
physics=A
movetype=A
anim=1050
ctrl=0
poweradd=72*!var(20)
sprpriority=1


[State 1010, Strength]
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
name="deathbeam"
postype=p1
pos = -5,-51
ownpal=1
size.xscale = 1
size.yscale = 1


[State 1050, ????]
type = Velset
trigger1 = AnimElemtime(2) > 0
x = 0
y = 0

[State 1050, ????]
type = Veladd
trigger1 = AnimElemtime(5) >= 0
y = 8
;-------------------------------------------------------------------
; Molecular Sheild
[StateDef 1100]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1100
poweradd = 80
sprpriority = 2

[State 0, VarSet]
type = VarSet
trigger1= !time && !AILevel
var(10) = ifelse(command="z",2,ifelse(command="y",1,0))

[State 1010, VarSet]
type=varset
trigger1= !time && AILevel
var(10)= ifelse((p2movetype=H || random<500), 2, ifelse(random<500, 1, 0))


[State 0, Helper1]
type = Helper
triggerall = anim = 1100
triggerall = numhelper(1100)<5
trigger1 = time = 3
trigger2 = time = 5
trigger3 = time = 7
trigger4 = time = 9
trigger5 = time = 11
helpertype = normal ;player
name = "Rock"
ID = 1100
stateno = 1110
pos = floor(40*const(size.xscale)),floor(-10*const(size.yscale))
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0

[State 0, Helper1]
type = Helper
triggerall = anim = 1100
triggerall = numhelper(1101)<5
trigger1 = time = 2
trigger2 = time = 4
trigger3 = time = 6
trigger4 = time = 8
trigger5 = time = 10
helpertype = normal ;player
name = "Rock"
ID = 1101
stateno = 1120
pos = floor(-40*const(size.xscale)),floor(-10*const(size.yscale))
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = numhelper(1100)=0&&NumHelper(1101)=0
trigger1 = Anim != 1101
trigger1 = AnimElemTime(4)>=0
value = 1101

[State 1010, end]
type = ChangeState
triggerall = anim = 1101
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;======================< HEAD PRESS >=============================
[Statedef 1200, head press]
type = S
physics = N
movetype = A
ctrl = 0
anim = 40
velset = 0, 0
poweradd = 72 * !var(20)
juggle = 8
facep2 = 1
sprpriority = 1



[State 1200, Snd]
type = playsnd
trigger1 = anim = 40 && !animtime
value = 0, 40
[State 1200, Dust]
type = helper
trigger1 = anim = 40 && !animtime
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1
[State 1200, Anim]
type = changeanim
trigger1 = anim = 40 && !animtime
value = 1200

[State 1200, Vel]
type = velset
trigger1 = animelem=1
x =0;
y = -8
persistent = 0
[State 1200, Vel]
type = velset
trigger1 = animelem=3
x =0;
y = 0
persistent = 0
[State 1302, vel]
type=velset
trigger1= animelem=6
x=9
y=7

[State 1200, statetype]
type = statetypeset
trigger1 = anim = 1200
statetype = A
physics = N


[State 1200, Snd]
type = playsnd
trigger1 = anim = 1200 && animelem = 2
value = 3, 0
channel = 0
[State 1200, Snd]
type = playsnd
trigger1 = anim = 1201 && animelem = 4
value = 3, 5
channel = 0


[State 1200, hitstomp]
type = hitdef
trigger1 =time=0
attr = A, SA
damage = 100, 13
animtype = Hard
air.animtype = Back
guardflag = HA
hitflag = MAFD
priority = 4, Hit
pausetime = 0, 22
sparkno = s7020 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, 0
hitsound = s2, 6
guardsound = s2, 0
ground.type = Low
ground.slidetime = 22
ground.hittime = 22
ground.velocity = -7, 0
air.type = Low
air.velocity = -4, -4
air.cornerpush.veloff = 0
down.velocity = 0, 0
getpower = ifelse(p2movetype = H, 72, 144) * !var(20), 36 * !var(20)
givepower = 36, 36
forcestand = 1
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
ID = 1200
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = ifelse(var(20), -4, -8), -1.5
airguard.cornerpush.veloff = 0

[State 1220,4]
type = ChangeState
trigger1 = vel y >= 0 && pos y >= 0
value = 1205

;===========<HYAKKI GOU JIN>==========
[Statedef 1201]
type=A
physics=N
movetype=A
anim=1201
velset=.3*vel x,.3*vel y
ctrl=0
juggle=0
poweradd=40
sprpriority=1

[State 1302, snd]
type=playsnd
trigger1= animelem=3
value=1,6
channel=3

[State 1302, snd]
type=playsnd
trigger1= animelem=3
value=3,9
channel=0

[State 1302, vel]
type=velset
trigger1= animelemtime(4)>0
x=9
y=9


[State 1302, hit]
type=hitdef
trigger1= time=0
attr=A,NA
damage=104,13
animtype=Hard
guardflag=H
hitflag=MAFD
priority=6,Hit
pausetime= ifelse(var(20),6,12), ifelse(var(20),12,18)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-7
hitsound=s2,6
guardsound=s2,0
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-4
air.type=Low
air.velocity = -4, -4
air.cornerpush.veloff = 0
down.velocity = 0, 0
getpower = ifelse(p2movetype = H, 72, 144) * !var(20), 36 * !var(20)
givepower = 36, 36
forcestand = 1
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
ID = 1200
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = ifelse(var(20), -4, -8), -1.5
airguard.cornerpush.veloff = 0


[State 1302, end]
type=changestate
trigger1= pos y>=0
;value=52
value = 1205

[Statedef 1205]
type = S
movetype = I
physics = S
anim = 1205
velset = 0, 0
ctrl = 0

[State 1230,0]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1230, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1230, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 7106
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1230,1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
