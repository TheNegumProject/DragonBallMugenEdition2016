;---------------------------------------------------------------------------
; Ki 1
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
name = "Ki Blasts"
ID = 1000
stateno = 1005
pos = 60,-79
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
;------------------------------------------------------------------------------------
[Statedef 1105]
type = S
movetype = I
physics = S
anim = 1105
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

; headbutt
[StateDef 1200]
type = S
MoveType = A
Physics = N
VelSet = 0, 0
SprPriority = 2 
ctrl = 0
Anim = 1200


[State 901, to charge]
type = Velset
trigger1 = anim=1200
trigger1 = !animtime
X = 15


[State 901, to charge]
type = ChangeAnim
trigger1 = anim=1200
trigger1 = !animtime
value = 1203


[State 901, charging]
type = statetypeset
trigger1 = Anim = 1203
statetype = A

[State 800, hit]
type = hitdef
trigger1 = Anim = 1203   ;&& !var(38)
attr = S,ST
hitflag = MAF
guardflag = MA
damage = 40,4
priority = 4,hit
sparkno = s7030
guard.sparkno = s7000
sparkxy = -10,-55
p1facing = 1
p2facing = 1
p1stateno = 1255
guard.dist = 0
fall = 1
fall.recover = 0
hitsound = s5,2
guardsound = s6,0
guard.slidetime = 17
guard.hittime = 17
guard.velocity = -8
getpower = 0,0
givepower = 35,35
envshake.time = 14
envshake.freq = 60
envshake.ampl = 5


;------------------------
; HIT
[State 901, has hit]
type = ChangeAnim
trigger1 = anim=1203
trigger1 = movecontact
value = 1210

[State 280, go]
type = VelSet
triggerall = anim=1210
trigger1 = animelemtime(1) = 0 
X = -1
Y = -.5

[State 280, go]
type = VelAdd
triggerall = anim=1210
trigger1 = animelemtime(1) > 0 
Y = 1;0.85

[State 280, go]
type = VelMul
triggerall = anim=1210
trigger1 = animelemtime(1) > 0 
X = 0

[State 17100, Dismount Sound]
type = PlaySnd
triggerall = anim=1210
trigger1 = animelemtime(1) = 0
value = 1510, 0

[State 3300, land anim]
type = changeanim
trigger1 = anim=1210 && animelemtime(2)>0 && pos y>=-5
value = 48
persistent = 0

;------------------------
; NO HIT
[State 901, has hit]
type = ChangeAnim
trigger1 = anim=1203
trigger1 = time > 20
value = 1211

[State 280, go]
type = VelAdd
triggerall = anim=1211
trigger1 = animelemtime(4) > 0 
Y = 0.4

[State 280, go]
type = VelMul
triggerall = anim=1211
trigger1 = animelemtime(1) > 0 
X = 0.95

[State 1220,4]
type = ChangeState
trigger1 = pos y > 0 && vel y > 0
value = 1105
ctrl=1

;------------------------
; LAND
[State 3300, sts]
type = statetypeset
trigger1 = anim = 48
statetype = S
physics = N

[State 3300, sts]
type = velmul
trigger1 = anim = 48
x = 0.8

[State 3300, stop]
type = posset
trigger1 = anim = 48
y = 0
[State 3300, stop]
type = velset
trigger1 = anim = 48
y = 0

[state 17100, Landing Effect]
type = explod
trigger1 = anim = 48
trigger1 = animelemtime(1) = 0
anim = 7100
id = 7100
pos = 0,0
postype = P1
sprpriority = -3
ownpal = 1
supermovetime = -1

[State 240, landing sound]
type = PlaySnd
trigger1 = anim = 48
trigger1 = animelemtime(1) = 0
value = 40, 0

[State 1220,4]
type = ChangeState
trigger1 = pos y > 0 && vel y > 0
value = 1105
ctrl=1

[StateDef 1255]
type = A
MoveType = A
Physics = N
VelSet = 15, 0
SprPriority = 2 
ctrl = 0
Anim = 1203

[State Throw]
type = targetstate
trigger1 = !time
value = 1260

[State 810, Bind]
type = TargetBind
trigger1 = 1
pos = 55, -70

[State 0, ChangeState]
type = ChangeState
trigger1 = FrontEdgeBodyDist <= 40
trigger2 = Time = 150
value = 1265
ctrl = 0

;----------------------------

;Enemy Thrown State
[Statedef 1260]
type = S
movetype = H
physics = N
velset = 0,0
sprpriority = 0

[State 802, anim]
type = changeanim2
trigger1 = !time
value = 1260

[State 820, 2]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050

;----------------------------
;state - hitting wall
[Statedef 1265]
type    = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 1204


[State 100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S5,6
volume = 255

[State 1206, width]
type = width
trigger1 = 1
edge = 40,0

[State 901,1]
type = TargetBind
trigger1 = animelem=1
pos = 55, -50
Time = 5

[State 0, TargetState]
type = TargetState
trigger1 = AnimElemTime(2) = 0
value = 1270

[State 903, EnvShake]
type = EnvShake
trigger1 = AnimElem = 1
time = 25

[State 0, HitAdd]
type = HitAdd
trigger1 = AnimElem = 1
value = 1

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 1
value = -55

[State 1205, ChangeState]
type = ChangeState
Trigger1 = !AnimTime
value = 1266
ctrl = 0


;------------------------
; landing
[Statedef 1266]
type    = A
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 1210

[State 280, go]
type = VelSet
triggerall = anim=1210
trigger1 = animelemtime(1) = 0 
X = -3
Y = -7.5

[State 280, go]
type = VelAdd
triggerall = anim=1210
trigger1 = animelemtime(1) > 0 
Y = 0.45

[State 280, go]
type = VelMul
triggerall = anim=1210
trigger1 = animelemtime(1) > 0 
X = 0.95

[State 17100, Dismount Sound]
type = PlaySnd
triggerall = anim=1210
trigger1 = animelemtime(1) = 0
value = 1210, 0


[State 1220,4]
type = ChangeState
trigger1 = pos y > 0 && vel y > 0
value = 1105
ctrl=1
;------------------------
; P2 hitting wall 
[Statedef 1270]
type    = A
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 2

[State 820, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 820, Turn]
type = Turn
trigger1 = Time%5 = 0

[State 820, SprPriority]
type = SprPriority
trigger1 = 1
value = 2

[State 820, ChangeAnim]
type= ChangeAnim2
trigger1 = Anim !=1270
value = 1270

[State 820, CtrlSet]
type = CtrlSet
trigger1 = 1
value = 0

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = 1

[State 820, SelfState]
type = SelfState
trigger1= vel y > 0
trigger1= pos y > -vel y
value = 5100
;========================<HYAKKI SHU>=============================
[Statedef 1300]
type=A
physics=N
movetype=I
anim=1300
ctrl=0
velset=0,0
sprpriority=1
facep2=1

[State 1300, grav]
type=gravity
trigger1= animelemtime(1)>1

[State 1200, NotHitby]
type = NotHitBy
trigger1 = AnimElemTime(1) = 1
value = SCA,AP
time = 20

[State 1300, strengthvar]
type=varset
trigger1= !time && !AIlevel
var(10)=ifelse(command="c",3,ifelse(command="b",2,1))

[State 1300, strengthvarAI]
type=varset
trigger1= !time && AIlevel
var(10)= ifelse(p2dist x>=200,3,ifelse(p2dist x>=100,2,1))
persistent=0

[State 1300, Combo]
type=varset
triggerall= !time && AIlevel
trigger1= NumTarget(210)
trigger1= Target(210),Statetype=A
trigger2= NumTarget(211)
trigger2= Target(211),Statetype=A
var(10)= 3
persistent=0


[State 1300, snd]
type=playsnd
trigger1= !time
value=0,40
channel=2

[State 1300, snd]
type=playsnd
trigger1= !time
value=3,1
channel=0
[State 1300, dust]
type=helper
trigger1= !time
helpertype=normal
stateno=7100
ID=7100
name="Dust"
postype=p1
ownpal=1

[State 1300, vel]
type=velset
trigger1= animelem=1
x=ifelse(var(10)=3,8,ifelse(var(10)=2,6,4))
y=-5

[State 1300, goushou]
type=changestate
;trigger1 = P2BodyDist X < 60
trigger1= !AIlevel && vel y>-3 && (command="a" || command="b" || command="c") ;|| command="rlsx" || command="rlsy" || command="rlsz")
trigger2= AIlevel && vel y>-2 && (p2dist x=[0,60]) && p2dist y>=-30
trigger2= (p2statetype=A && p2movetype!=H && p2movetype=A)
trigger3= AIlevel && vel y>-2
trigger3= (p2statetype!=A && p2movetype!=A && (p2dist y=[1,65])&&(p2dist x=[-50,60]))
value=1301


[State 1300, end]
type=changestate
trigger1= vel y>0 && pos y>=-30
value=1305


;===========<HYAKKI GOU SHOU>==========
[Statedef 1301]
type=A
movetype=A
physics=A
juggle=6
anim=1301
poweradd=72*!var(20)
sprpriority=1
ctrl=0


[State 1301, hit]
type=hitdef
trigger1= animelem=2
attr=A,SA
damage=49,7
animtype=Hard
guardflag=HA
hitflag=MAF
priority=6,Hit
pausetime= ifelse(var(20),6,12), ifelse(var(20),6,12)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-54
hitsound=s2,3
guardsound=s2,0
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-5,-5
air.type=Low
air.velocity=-5,-5
ground.cornerpush.veloff= 0
guard.velocity= -10.52
guard.cornerpush.veloff= -12.74
getpower= ifelse(p2movetype=H,72,144)*!var(20), 36*!var(20)
givepower=36,36
envshake.time=12
envshake.freq=60
envshake.ampl=4
fall=1
fall.recover=0;!var(20)
;fall.recovertime=24
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-4,-8), -1.5
forcestand=1
airguard.cornerpush.veloff= 0


[State 1220,4]
type = ChangeState
trigger1 = Pos Y >= 0
value = 1305

[Statedef 1305]
type = S
movetype = I
physics = S
anim = 1305
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

;==================================================
[Statedef 1500]
type = S
physics = S
movetype = A
anim=1500
ctrl = 0
velset = 0, 0
poweradd = 72 * !var(20)
juggle = 0;ifelse(var(10)=2,7,8)
sprpriority = 1
facep2 = 1


[State 1500, Vel]
type = velset
trigger1 =1500 && animelemtime(5) < 0
x =3

[State 1500, Vel]
type = velset
trigger1 =1500&& animelem = 5
x = 0

[State 3160, NHB]
type = nothitby
trigger1 = anim = 1500 && animelemtime(6) < 1;||anim = 1501 && animelemtime(7) < 1||anim = 1502 && animelemtime(7) < 1
trigger2 = movehit 
time = 1
value = SCA



[State 1500, hit]
type = hitdef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = anim = 1500 && animelem = 4 && (enemynear, statetype!= A)
attr = S, SA
damage = ifelse(var(20), 32 - var(10) * 7, 82 - var(10) * 7), 15
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = ifelse(var(20), 5, 10), ifelse(p2statetype=A, 5,ifelse(var(20) || var(10) = 1, 10, 12))
guard.pauseTime = ifelse(var(20), 4, 10), ifelse(var(20), 4, 10)
sparkno = s7020 + (random % 8)
guard.sparkno = s7000
sparkxy = -10, -16
hitSound = -1 + 0 * (var(31) := 6)
guardSound = -1 + 0 * (var(32) := 0)
ground.type = Low
ground.slidetime = 16 + 4 * var(29)
ground.hittime = 22 + 4 * var(29); 18 + 4 * var(29)
ground.velocity = ifelse(var(20), -13.82, -6.93), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -6.82, -12.74)
air.fall = 1
air.type = Low
air.velocity = -vel x, 15
air.cornerpush.veloff = 0
fall.yvelocity = 0
down.hittime = 20
down.velocity = 0, 0
getpower = ifelse(p2movetype = H, 72, 216) * !var(20), 36 * !var(20)
givepower = 36, 36
yaccel = 0.5
fall = 0;ifelse((p2stateno = [5012,5030]),1,0)
fall.recover = 0
yaccel = 0.5
forcestand = 0
sparkXY = -10 + 0 * (var(35) := 81), var(36) := -7

[State 1500, hit]
type = hitdef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = anim = 1500 && animelem = 4 && enemynear, statetype= A
attr = S, SA
;attr=A,SA
damage=90,15
animtype=Hard
guardflag=H
hitflag=MAFD
priority=6,Hit
pausetime= ifelse(var(20),3,6), ifelse(var(20),2,4)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-56
hitsound=s2,6
guardsound=s2,0
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-vel x,10
air.type=Low
air.velocity=-vel x,8
ground.cornerpush.veloff= 0
guard.velocity= -10.52
guard.cornerpush.veloff= -12.74
fall.yvelocity=0
givepower=200
envshake.time=12
envshake.freq=60
envshake.ampl=5
fall=1
fall.recover = 1
fall.recovertime = 120
forcenofall = !var(20)
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-4,-8), -1.5
forcestand=1
airguard.cornerpush.veloff= 0
sparkXY = -10 + 0 * (var(35) := 81), var(36) := -7
palFX.time = 12 * var(29)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48

[State 1500, Hit]
type = hitdef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = anim = 1500 && animelem = 4 ;&& p2statetype != 
trigger1= anim = 1500 && animelem=4&& p2stateno=[5100,5110]
attr=S,SA
damage=90,10
animtype=Hard
guardflag=L
hitflag=MAFD
priority=6,Hit
pausetime= ifelse(var(20),12,24), ifelse(var(20),12,24)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-4
hitsound=s2,6
guardsound=s2,0
ground.type = Low
ground.slidetime = 16 + 4 * var(29)
ground.hittime = 18 + 4 * var(29)
ground.velocity = -2, 0;10
ground.cornerpush.veloff = 0;ifelse(var(20), -6.82, -12.74)
air.type = Low
air.velocity = -vel x, 15
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 4;-12.74
fall.yvelocity = 0
getpower = 0
givepower = 36, 36
envshake.time = 12
envshake.freq = 120
envshake.ampl = 5
fall = 1
fall.recover = 0
down.hittime = 20
down.velocity = 0, 0
down.bounce = 1
hitonce = 1
airguard.ctrltime = 16
airguard.velocity = ifelse(var(20), -4, -8), -1.5
forcestand = 0
airguard.cornerpush.veloff = 0

[State 1304, shake]
type=envshake
trigger1= !time
time=12
freq=60
ampl=4

[State 1500, Shake]
type = envshake
trigger1 = (anim = 1500) && animelemtime(4) >= 0 && animelemtime(5) <= 20
trigger1 = !(animelemtime(4) % 5)
time = 4
freq = 100
ampl = 6 -ceil(animelemtime(4) * 0.25)
ignorehitpause = 1

[State 1500, Snd]
type = playsnd
trigger1 = (anim =1500) && animelem = 4
value = 5, 3
[State 1500, Dust]
type = explod
trigger1 = (anim =1500) && animelem = 4
anim = 7101
ID = 7100
sprpriority = 2
postype = p1
pos = -37, -68
ownpal = 1
[State 1500, Dust]
type = explod
trigger1 = (anim = 1500) && animelem =5
anim = 7101
ID = 7100
sprpriority = 2
postype = p1
pos = -22, -98
ownpal = 1
[State 1500, Dust]
type = explod
trigger1 =  (anim = 1500) && animelem =5
anim = 7101
ID = 7100
sprpriority = 2
postype = p1
pos = 10, -112
ownpal = 1
[State 1500, Dust]
type = explod
trigger1 =  (anim = 1500) && animelem =5
anim = 7100
ID = 7100
sprpriority = 2
postype = p1
pos = 47, 0
ownpal = 1
[State 1500, Dust]
type = explod
trigger1 = (anim = [1500, 1502]) && animelem = 11
anim = 7104
ID = 7104
sprpriority = -2
postype = p1
pos = 47, 0
scale = 0.75, 0.75
ownpal = 1


[State Idle]
type = statetypeset
trigger1 = anim = 1500 && animelemtime(6) >= 0
movetype = I

[State 1500, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

