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
trigger1 = animelemtime(5) = 0
player= 30, 0
edge=50,0

[State 0, Explod]
type = Explod
trigger1 = animelem = 2
anim = 1007
ID = 1007
pos = 30,-60
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
trigger1 = animelemtime(2)=1;animelem = 3
helpertype = normal
name = "Ki Blasts"
ID = 1000
stateno = 1005
pos = 30,-59
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


;======================<MURAJI HADOUKEN>=============================
[Statedef 1010]
type = S
physics = S
movetype = A
ctrl = 0
velset = 0, 0
poweradd = 72
sprpriority = 1
facep2 = 1

[State 1010, Strength]
type = varset
trigger1 = !time && !AIlevel
var(10) = ifelse(command = "z", 3, ifelse(command = "y", 2, 1))
[State 1010, Strength AI]
type = varset
trigger1 = !time && AIlevel
var(10) = ifelse((p2movetype = H || random < 500), 3, ifelse(random < 500, 2, 1))

[State 1010, Anim]
type = ChangeAnim
Trigger1 = Time = 0
value = Ifelse(var(1),1016+var(10),1009+var(10))
ignorehitpause = 1

[State 1010, VarSet]
type = VarSet
trigger1 = !time
var(6) = 0
ignorehitpause = 1
[State 1010, VarSet]
type = VarSet
trigger1=!time
var(7) = 0
ignorehitpause = 1
[State 1010, Number]
type = varset
trigger1=!time
var(8) = 0
ignorehitpause=1

[State 1010, Varset]
type = Varset
trigger1=time=60&&var(10)=1
trigger2=time=70&&var(10)=2
trigger3=time=90&&var(10)=3
var(6)=1
ignorehitpause=1
[State 1010, Varadd]
type = Varadd
triggerall=animelemtime(3)>=2&&animelemtime(11)<0
trigger1=!AILevel&&(command="x"||command="y"||command="z")
trigger2=AILevel&&P2bodydist x >90
trigger3=AILevel&&enemynear,vel x>0
var(7)=1
ignorehitpause=1
[State 1010, Number]
type = varset
trigger1=animelemtime(2)>=0
var(8)=(var(7)/3*var(10))
ignorehitpause=1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1=!var(6)&&animelemtime(11)=0&&var(8)
value = Ifelse(var(1),1016+var(10),1009+var(10))
elem = 7
ignorehitpause=1
[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 3
time = 15+3*var(10)
ampl = Ifelse(var(1),4,2)
ignorehitpause =1

[State 1020, width]
type = width
trigger1 = animelemtime(7) = 0
player=40, 0
edge=50,0

[State 1010, Hadouken]
type = helper
trigger1 = animelemtime(7) = 1
helpertype = normal
stateno = 1015
ID = 1015
name = "Muraji Hadouken"
postype = p1
pos = 30, -58
size.xscale =1
size.yscale = 1
ownpal = 1


[State 0, Explod]
type = Explod
trigger1 = animelem = 7
anim = 1007
ID = 1007
pos = 30,-60
postype = p1
removetime = -2
pausemovetime = 0
supermovetime = 0
scale = .5,.5
sprpriority = 5
ownpal = 1

[State 1010, Muraji Charge]
type = helper
trigger1 = animelemtime(3)=0&&!Numhelper(8322)
helpertype = normal
stateno = 8322
ID = 8322
name = "MuarjiCharge"
postype = p1
pos = 0,0
ownpal = 1
[State 1010, Muraji Charge]
type = helper
trigger1 = animelemtime(3)=0&&!Numhelper(8326)&&var(1)
helpertype = normal
stateno = 8326
ID = 8326
name = "MuarjiCharge"
postype = p1
pos = 0,0
ownpal = 1

[State 1010, Snd]
type = playsnd
trigger1 = animelem = 2
value = 3 + (var(1) = 1) * 10, 5 + (var(1) = 1)
channel = 0
persistent=0
[State 1010, Snd]
type = playsnd
trigger1 = animelem = 6
value = 4 + (var(1) = 1) * 10, 0
channel = 0

[State 1010, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

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
x = 2;+2*var(10)



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
x = (1+var(10))*1
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
trigger1 = time=0
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

;-----------------------------------------------------------------------------------------------
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

;======================<HYAKU RETSU BINTA>=============================
[Statedef 1200]
type=S
physics=S
movetype=A
anim=1200
ctrl=0
velset=0,0
sprpriority=1
poweradd=72*!var(20)
facep2=1

[State 0, VarSet]
type = VarSet
triggerall=time=0
trigger1=enemynear,movetype=H
v = 25
value = 1
[State 0, VarSet]
type = VarSet
triggerall=time=0
trigger1=enemynear,movetype != H
v = 25
value = 0


[State 1200, Button]
type=varset
trigger1= !time && !AILevel
var(10)=ifelse(command="c",2,ifelse(command="b",1,0))
[State 1200, Button AI]
type=varset
trigger1= !time && AILevel
var(10)= ifelse((p2movetype=H || random<333), 2, ifelse(random<500, 1, 0))
[State 1200, Anim]
type=changeanim
trigger1= !time
value=ifelse(var(10)=2,1202,ifelse(var(10)=1,1201,1200))

;[State 1200, Snd]
;type=playsnd
;trigger1= animelem=2
;value=5,5
;channel=0

[State 1200, Vel]
type=velset
trigger1= animelem=3
x=8
[State 1200, statetype]
type=statetypeset
trigger1= animelemtime(3)>=0
physics=N

[State 1200, Snd]
type=playsnd
trigger1= animelem=3
value=0,106
[State 1200, Dust]
type=explod
trigger1= animelem=3
anim=7103
sprpriority=3
postype=p1
scale=.5,.5
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 1200, Hit]
type=hitdef
trigger1= animelem=3
attr=S,SA
hitflag=MAF
guardflag=M
priority=4,Hit
damage=0,0
getpower=ifelse(!var(13),144,72)*!var(20),36*!var(20)
givepower=36,36
pausetime=0,0
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=var(21):=-10,var(22):=-55
hitsound=s2,0
guardsound=s3,1
animtype=Hard
air.animtype=Back
fall.animtype=Back
ground.type=Low
air.type=Low
ground.hittime=13
ground.slidetime=13
ground.velocity=-8,0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-20.01
air.hittime=20
air.velocity=-4,-4
air.cornerpush.veloff = 0
guard.velocity=-8
airguard.velocity=-4,-4
yaccel=.5
fall=1
fall.recover=0
hitonce=1
ID=1200
forcestand=1

[State 1200, hit-]
type=hitdef
trigger1= var(14)>=1
trigger1= animelem=3
attr=S,SA
hitflag=MA
guardflag=M
priority=4,Hit
damage=0,0
getpower=ifelse(!var(13),144,72)*!var(20),36*!var(20)
givepower=36,36
pausetime=0,0
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=var(21):=-10,var(22):=-55
hitsound=s2,0
guardsound=s3,1
animtype=Hard
air.animtype=Back
fall.animtype=Back
ground.type=Low
air.type=Low
ground.hittime=13
ground.slidetime=13
ground.velocity=-8,0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-20.01
air.hittime=20
air.velocity=-4,-4
air.cornerpush.veloff = 0
guard.velocity=-8
airguard.velocity=-4,-4
yaccel=.5
fall=1
fall.recover=0
hitonce=1
ID=1200
forcestand=1

[State 1200, p2state]
type=targetstate
trigger1= animelemtime(3)>=0 && movehit && numtarget(1200)
ID=1200
value=1215
[State 1200, p1state]
type=changestate
trigger1= animelemtime(3)>=0 && movehit && numtarget(1200)
value=1210

[State 1200, blocked]
type=changestate
trigger1= animelemtime(3)>=0 && movehit && !numtarget(1200)
trigger2= animelemtime(3)>=0 && (moveguarded || movereversed)
value=1206
[State 1200, End]
type=changestate
trigger1= time>=(16+var(10)*9)
trigger2= frontedgebodydist<=0
trigger2= time>=(6+var(10)*2)
value=1205


;---MISS---
[Statedef 1205]
type=S
physics=N
ctrl=0
anim=1205

[State 1205, Vel]
type=velmul
trigger1= 1
x=.9
[State 1205, Snd]
type=playsnd
trigger1= animelem=1
value=0,103
[State 1205, Dust]
type=explod
trigger1= animelem=1
anim=8103
sprpriority=3
postype=p1
pos=27,0
vel=3,0
scale=.5,.5
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 1205, Vel]
type=velset
trigger1= animelemtime(4)>=0
x=0
[State 1200, statetype]
type=statetypeset
trigger1= animelemtime(4)>=0
physics=S
[State 1205, End]
type=changestate
trigger1= !animtime
value=0
ctrl=1


;---BLOCKED---
[Statedef 1206]
type=A
physics=N
movetype=I
velset=0,0
anim=1206
ctrl=0
sprpriority=1

[State 1206, Vel]
type=velset
trigger1= !time
x=const(velocity.run.back.x)
y=const(velocity.run.back.y)

[State 1206, grav]
type=veladd
trigger1= 1
y=.5
[State 1206, Land]
type=changestate
trigger1= vel y>0 && pos y>=0
value=1207


[Statedef 1207]
type=S
physics=S
ctrl=0
anim=1207
velset=0,0
[State 1207, Vel]
type=velset
trigger1= 1
x=0
y=0
[State 1207, Pos]
type=posset
trigger1= 1
y=0
[State 1207, Snd]
type=playsnd
trigger1= !time
value=0,52
[State 1207, Dust]
type=explod
trigger1= !time
anim=8102
sprpriority=-3
postype=p1
scale=.5,.5
pausemovetime=-1
supermovetime=-1
ownpal=1
[State 1207, End]
type=changestate
trigger1= !animtime
value=0
ctrl=1


;---HIT---
[Statedef 1210]
type=S
physics=S
movetype=A
anim=1210
ctrl=0
velset=0,0
sprpriority=1

[State 1210, grabsnd]
type=playsnd
trigger1= !time
value=0,800

[State 1210, Anim]
type=changeanim
triggerall= animelemtime(18)<0
trigger1= var(10)=0 && animelemtime(10)>=0
trigger2= var(10)=1 && animelemtime(14)>=0
value=1210
elem=18

[State 1210, target]
type=targetfacing
trigger1= 1
value=-1
[State 1210, target]
type=targetstate
trigger1= numtarget(1200)
trigger1= animelem=3 || animelem=5 || animelem=7 || animelem=9 || animelem=11 || animelem=13 || animelem=15 || animelem=17
ID=1200
value=1216
[State 1210, target]
type=targetstate
trigger1= numtarget(1200) && animelem=18
ID=1200
value=1217
[State 1210, juggle]
type=varadd
trigger1= numtarget(1200)
trigger1= target(1200),statetype=A
var(14)=1
persistent=0

[State 1210, Bind]
type=targetbind
trigger1= numtarget(1200) && animelemtime(21)<0
ID=1200
pos=16,0
[State 1210, Bind]
type=targetbind
trigger1= numtarget(1200) && animelemtime(21)<0
trigger1= (target(1200),anim=[1231,1234])
ID=1200
pos=28,-78
[State 1210, Bind]
type=targetbind
trigger1= numtarget(1200) && animelem=21
ID=1200
pos=38,-16
[State 1210, Bind]
type=targetbind
trigger1= numtarget(1200) && animelem=21
trigger1= (target(1200),anim=[1231,1234])
ID=1200
pos=38,-78-(target(1200),const(size.head.pos.y))

[State 1210, damage]
type=targetlifeadd
triggerall=Var(25)=1
trigger1= numtarget(1200)
trigger1= animelem=3 || animelem=5 || animelem=7 || animelem=9 || animelem=11 || animelem=13 || animelem=15 || animelem=17
ID=1200
value=ceil(ifelse(3*fvar(10)<7,-7,-3*fvar(10)))
kill=0
[State 1210, damage]
type=targetlifeadd
triggerall=Var(25)=1
trigger1= numtarget(1200) && animelem=21
ID=1200
value=ceil(ifelse(25*fvar(10)<7,-7,-25*fvar(10)))
kill=1

[State 1210, damage]
type=targetlifeadd
triggerall=Var(25)=0
trigger1= numtarget(1200)
trigger1= animelem=3 || animelem=5 || animelem=7 || animelem=9 || animelem=11 || animelem=13 || animelem=15 || animelem=17
ID=1200
value=ceil(ifelse(7*fvar(10)<7,-7,-7*fvar(10)))
kill=0
[State 1210, damage]
type=targetlifeadd
triggerall=Var(25)=0
trigger1= numtarget(1200) && animelem=21
ID=1200
value=ceil(ifelse(55*fvar(10)<7,-7,-55*fvar(10)))
kill=1

[State 1210, givepower]
type=targetpoweradd
trigger1= numtarget(1200)
trigger1= animelem=3 || animelem=5 || animelem=7 || animelem=9 || animelem=11 || animelem=13 || animelem=15 || animelem=17 || animelem=21
ID=1200
value=36

[State 1210, Hit]
type=hitadd
trigger1= numtarget(1200)
trigger1= animelem=3 || animelem=5 || animelem=7 || animelem=9 || animelem=11 || animelem=13 || animelem=15 || animelem=17 || animelem=21
value=1
[State 1210, hitcount]
type=varadd
trigger1= numtarget(1200)
trigger1= animelem=3 || animelem=5 || animelem=7 || animelem=9 || animelem=11 || animelem=13 || animelem=15 || animelem=17 || animelem=21
var(13)=1

[State 1210, Snd]
type=playsnd
trigger1= animelem=20
value=4,3
channel=0

[State 1210, slap]
type=playsnd
trigger1= numtarget(1200)
trigger1= animelem=3 || animelem=7 || animelem=11 || animelem=15 || animelem=21
value=s2,1
[State 1210, slap]
type=playsnd
trigger1= numtarget(1200)
trigger1= animelem=5 || animelem=9 || animelem=13 || animelem=17
value=s2,1

[State 1210, slap]
type=playsnd
triggerall= !numtarget(1200)
trigger1= animelem=3 || animelem=7 || animelem=11 || animelem=15 || animelem=21
trigger2= animelem=5 || animelem=9 || animelem=13 || animelem=17
value=1,0
channel=1

[State 1210, shake]
type=envshake
trigger1= numtarget(1200)
trigger1= animelem=3 || animelem=5 || animelem=7 || animelem=9 || animelem=11 || animelem=13 || animelem=15 || animelem=17
time=6
ampl=2
freq=120
[State 1210, shake]
type=envshake
trigger1= numtarget(1200) && animelem=22
time=14
ampl=4
freq=120

[State 1210, Sparks]
type=explod
trigger1= numtarget(1200)
trigger1= animelem=3 || animelem=5 || animelem=7 || animelem=9 || animelem=11 || animelem=13 || animelem=15 || animelem=17
anim=7020+(random%8)
sprpriority=5
postype=p1
pos=38,-78
facing=-1
ownpal=1
pausemovetime=-1
supermovetime=-1
ignorehitpause=1

[State 1210, Sparks]
type=explod
trigger1= numtarget(1200) && animelem=21
anim=7020+(random%8)
sprpriority=5
postype=p1
pos=38,-78
facing=-1
ownpal=1
pausemovetime=-1
supermovetime=-1
ignorehitpause=1

[State 1210, End]
type=changestate
trigger1= !animtime
value=0
ctrl=1


;---TARGET---
[Statedef 1215]
type=A
physics=N
movetype=H
ctrl=0
velset=0,0
[State 1215, Anim]
type=changeanim2
trigger1= !time
value=ifelse(const(size.head.pos.y)>=-60,1231,1215)
[State 1215, camera]
type=screenbound
trigger1= 1
value=0
movecamera=1,0
[State 1215, Safety]
type=selfstate
trigger1= time>=180
value=0
ctrl=1

[Statedef 1216]
type=A
physics=N
movetype=H
ctrl=0
velset=0,0
[State 1216, Anim]
type=changeanim2
trigger1= !time
value=ifelse(const(size.head.pos.y)>=-60,1232,1216)
[State 1216, camera]
type=screenbound
trigger1= 1
value=0
movecamera=1,0


[Statedef 1217]
type=A
physics=N
movetype=H
ctrl=0
velset=0,0
[State 1217, Anim]
type=changeanim2
trigger1= !time
value=ifelse(const(size.head.pos.y)>=-60,1233,1217)
[State 1217, camera]
type=screenbound
trigger1= animelemtime(3)<0
value=0
movecamera=1,0
[State 1217, statetype]
type=statetypeset
trigger1= animelemtime(3)>=0
statetype=A
physics=N
[State 1217, End]
type=changestate
trigger1= !animtime
value=1218


[Statedef 1218]
type=A
physics=N
movetype=H
ctrl=0
velset=0,0

[State 1218, Vel]
type=velset
trigger1= !time
x=-4
y=-9
[State 1218, grav]
type=veladd
trigger1= 1
y=.5
[State 1218, fall]
type=hitfallset
trigger1= 1
value=1

[State 1218, Anim]
type=changeanim
trigger1= !time
value=ifelse(selfanimexist(5051),5051,5050)
[State 1218, Anim]
type=changeanim
trigger1= (anim=[5050,5051])
trigger1= vel y>=ifelse(anim=5050,1,-2) && selfanimexist(anim+10)
value=anim+10

[State 1218, recover]
type= selfstate
trigger1= command="recovery"
trigger1= alive && time>=27 && vel y>-1
value= ifelse(pos y>=-20, 5200, 5210)

[State 1218, End]
type=selfstate
trigger1= vel y>0 && pos y>=0
value=5100


;======================<EX HYAKU RETSU BINTA>=============================
[Statedef 1220]
type=S
physics=S
movetype=A
anim=1220
ctrl=0
velset=0,0
sprpriority=1
poweradd=50
facep2=1


[State 1220, Button]
type=varset
trigger1= var(10)!=3
var(10)=3

[State 1220, ECreset]
type=palfx
trigger1= !time
trigger1= var(20):=-1
time=1



[State 1220, Snd]
type=playsnd
trigger1= animelem=2
value=5,5
channel=0

[State 1220, Vel]
type=velset
trigger1= animelem=3
x=10
[State 1220, statetype]
type=statetypeset
trigger1= animelemtime(3)>=0
physics=N

[State 1220, Snd]
type=playsnd
trigger1= animelem=3
value=0,106
[State 1220, Dust]
type=explod
trigger1= animelem=3
anim=8103
sprpriority=3
postype=p1
scale=.5,.5
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 1220, Hit]
type=hitdef
trigger1= animelem=3
attr=S,SA
hitflag=MAF
guardflag=M
priority=4,Hit
damage=0,0
getpower=0,0
givepower=36,36
pausetime=0,0
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=var(21):=-10,var(22):=-55
hitsound=s2,0
guardsound=s3,1
animtype=Hard
air.animtype=Back
fall.animtype=Back
ground.type=Low
air.type=Low
ground.hittime=13
ground.slidetime=13
ground.velocity=-8,0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-20.01
air.hittime=20
air.velocity=-4,-4
air.cornerpush.veloff = 0
guard.velocity=-8
airguard.velocity=-4,-4
yaccel=.5
fall=1
fall.recover=0
hitonce=1
ID=1220
forcestand=1

[State 1220, hit-]
type=hitdef
trigger1= var(14)>=2
trigger1= animelem=3
attr=S,SA
hitflag=MA
guardflag=M
priority=4,Hit
damage=0,0
getpower=0,0
givepower=36,36
pausetime=0,0
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=var(21):=-10,var(22):=-55
hitsound=s2,0
guardsound=s3,1
animtype=Hard
air.animtype=Back
fall.animtype=Back
ground.type=Low
air.type=Low
ground.hittime=13
ground.slidetime=13
ground.velocity=-8,0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-20.01
air.hittime=20
air.velocity=-4,-4
air.cornerpush.veloff = 0
guard.velocity=-8
airguard.velocity=-4,-4
yaccel=.5
fall=1
fall.recover=0
hitonce=1
ID=1220
forcestand=1

[State 1220, p2state]
type=targetstate
trigger1= animelemtime(3)>=0 && movehit && numtarget(1220)
ID=1220
value=1215
[State 1220, p1state]
type=changestate
trigger1= animelemtime(3)>=0 && movehit && numtarget(1220)
value=1230

[State 1220, blocked]
type=changestate
trigger1= animelemtime(3)>=0 && movehit && !numtarget(1220)
trigger2= animelemtime(3)>=0 && (moveguarded || movereversed)
value=1206
[State 1220, End]
type=changestate
trigger1= time>=30
trigger2= frontedgebodydist<=0
trigger2= time>=6
value=1205


;---HIT---
[Statedef 1230]
type=S
physics=S
movetype=A
anim=1230
ctrl=0
velset=0,0
sprpriority=1

[State 1230, grabsnd]
type=playsnd
trigger1= !time
value=0,800

[State 1230, Anim]
type=changeanim
triggerall= animelemtime(18)<0
trigger1= var(10)=0 && animelemtime(10)>=0
trigger2= var(10)=1 && animelemtime(14)>=0
value=1230
elem=18

[State 1230, target]
type=targetfacing
trigger1= 1
value=-1
[State 1230, target]
type=targetstate
triggerall= numtarget(1220)
trigger1= animelem=3 || animelem=5 || animelem=7 || animelem=9 || animelem=11 || animelem=13 || animelem=15
trigger2= animelem=17 || animelem=19 || animelem=21 || animelem=23 || animelem=25
nimelem=17
ID=1220
value=1216
[State 1230, target]
type=targetstate
trigger1= numtarget(1220) && animelem=26
ID=1220
value=1237
[State 1230, juggle]
type=varadd
trigger1= numtarget(1220)
trigger1= target(1220),statetype=A
var(14)=1
persistent=0


[State 1230, Bind]
type=targetbind
trigger1= numtarget(1220) && animelemtime(34)<0
ID=1220
pos=16,0
[State 1230, Bind]
type=targetbind
trigger1= numtarget(1220) && animelemtime(34)<0
trigger1= (target(1220),anim=[1631,1634])
ID=1220
pos=28,-78
[State 1230, Bind]
type=targetbind
trigger1= numtarget(1220) && animelem=34
ID=1220
pos=38,-16
[State 1230, Bind]
type=targetbind
trigger1= numtarget(1220) && animelem=34
trigger1= (target(1220),anim=[1631,1634])
ID=1220
pos=38,-78-(target(1200),const(size.head.pos.y))

[State 1230, damage]
type=targetlifeadd
triggerall= numtarget(1220)
trigger1= animelem=3 || animelem=5 || animelem=7 || animelem=9 || animelem=11 || animelem=13 || animelem=15
trigger2= animelem=17 || animelem=19 || animelem=21 || animelem=23 || animelem=25
nimelem=17
ID=1220
value=ceil(ifelse(7*fvar(10)<7,-7,-7*fvar(10)))
kill=0
[State 1230, damage]
type=targetlifeadd
trigger1= numtarget(1220) && animelem=34
ID=1220
value=ceil(ifelse(85*fvar(10)<7,-7,-85*fvar(10)))
kill=1

[State xxx, Explod]
type = Explod
trigger1 = animelem=34
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 1
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 1230, givepower]
type=targetpoweradd
triggerall= numtarget(1220)
trigger1= animelem=3 || animelem=5 || animelem=7 || animelem=9 || animelem=11 || animelem=13 || animelem=15
trigger2= animelem=17 || animelem=19 || animelem=21 || animelem=23 || animelem=25 || animelem=34
ID=1220
value=36

[State 1230, Hit]
type=hitadd
triggerall= numtarget(1220)
trigger1= animelem=3 || animelem=5 || animelem=7 || animelem=9 || animelem=11 || animelem=13 || animelem=15
trigger2= animelem=17 || animelem=19 || animelem=21 || animelem=23 || animelem=25 || animelem=34
value=1
[State 1230, hitcount]
type=varadd
triggerall= numtarget(1220)
trigger1= animelem=5 || animelem=7 || animelem=9 || animelem=11 || animelem=13 || animelem=15
trigger2= animelem=17 || animelem=19 || animelem=21 || animelem=23 || animelem=25 || animelem=34
var(13)=1

[State 1230, Snd]
type=playsnd
trigger1= animelem=32
value=4,1
channel=0

[State 1230, slap]
type=playsnd
trigger1= numtarget(1220)
trigger1= animelem=3 || animelem=7 || animelem=11 || animelem=15 || animelem=19 || animelem=23 || animelem=34
value=s2,2
[State 1230, slap]
type=playsnd
trigger1= numtarget(1220)
trigger1= animelem=5 || animelem=9 || animelem=13 || animelem=17 || animelem=21 || animelem=25
value=s2,2

[State 1230, slap]
type=playsnd
triggerall= !numtarget(1220)
trigger1= animelem=3 || animelem=5 || animelem=7 || animelem=9 || animelem=11 || animelem=13 || animelem=15
trigger2= animelem=17 || animelem=19 || animelem=21 || animelem=23 || animelem=25 || animelem=34
value=1,0
channel=1

[State 1230, shake]
type=envshake
triggerall= numtarget(1220)
trigger1= animelem=3 || animelem=5 || animelem=7 || animelem=9 || animelem=11 || animelem=13 || animelem=15
trigger2= animelem=17 || animelem=19 || animelem=21 || animelem=23 || animelem=25
time=6
ampl=2
freq=120
[State 1230, shake]
type=envshake
trigger1= numtarget(1220) && animelem=34
time=14
ampl=4
freq=120

[State 1230, bishi]
type=explod
triggerall= numtarget(1220)
trigger1= animelem=3 || animelem=5 || animelem=7 || animelem=9 || animelem=11 || animelem=13 || animelem=15
trigger2= animelem=17 || animelem=19 || animelem=21 || animelem=23 || animelem=25
anim=7020+(random%8)
sprpriority=5
postype=p1
pos=38,-78
facing=-1
ownpal=1
pausemovetime=-1
supermovetime=-1
ignorehitpause=1

[State 1230, Sparks]
type=explod
trigger1= numtarget(1220) && animelem=34
anim=7020+(random%8)
sprpriority=5
postype=p1
pos=38,-78
facing=-1
ownpal=1
pausemovetime=-1
supermovetime=-1
ignorehitpause=1

[State 1230, End]
type=changestate
trigger1= !animtime
value=0
ctrl=1


;---TARGET---
[Statedef 1237]
type=A
physics=N
movetype=H
ctrl=0
velset=0,0
[State 1237, Anim]
type=changeanim2
trigger1= !time
value=ifelse(const(size.head.pos.y)>=-60,1634,1237)
[State 1237, camera]
type=screenbound
trigger1= animelemtime(3)<0
value=0
movecamera=1,0
[State 1237, statetype]
type=statetypeset
trigger1= animelemtime(3)>=0
statetype=A
physics=N
[State 1237, End]
type=changestate
trigger1= !animtime
value=1238


[Statedef 1238]
type=A
physics=N
movetype=H
ctrl=0
velset=0,0

[State 1238, Vel]
type=velset
trigger1= !time
x=-5
y=-10
[State 1238, grav]
type=veladd
trigger1= 1
y=.5
[State 1238, fall]
type=hitfallset
trigger1= 1
value=1

[State 1238, Anim]
type=changeanim
trigger1= !time
value=ifelse(selfanimexist(5051),5051,5050)
[State 1238, Anim]
type=changeanim
trigger1= (anim=[5050,5051])
trigger1= vel y>=ifelse(anim=5050,1,-2) && selfanimexist(anim+10)
value=anim+10

[State 1218, recover]
type= selfstate
trigger1= command="recovery"
trigger1= alive && time>=27 && vel y>-1
value= ifelse(pos y>=-20, 5200, 5210)

[State 1238, End]
type=selfstate
trigger1= vel y>0 && pos y>=0
value=5100

[Statedef 1550]
type = S
physics = S
movetype = A
anim=1550
ctrl = 0
velset = 0, 0
poweradd = 72
juggle = 12
sprpriority = 1
facep2 = 1

[State xxx, Explod]
type = Explod
trigger1 = !time
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 1
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 1550, Strength]
type = varset
trigger1 = !time && !AIlevel
var(10) = ifelse((command = "c"), 3, ifelse(command = "b", 2, 1))
[State 1550, Strength AI]
type = varset
trigger1 = !time && AIlevel
var(10) = ifelse((p2movetype = H || random < 333), 1, ifelse(random < 500, 2, 3))

[State 1550, Snd]
type = playsnd
trigger1 = animelem = 5
value = 3,4
channel = 0
[State 1550, Snd]
type = playsnd
trigger1 = animelem = 8
value = 0,101
[State 1550, Vel]
type = velset
trigger1=animelemtime(9)<0
x = 3+var(10)
[State 1550, Vel]
type = velset
trigger1=animelemtime(9)>=0&&animelemtime(12)<0&&!movecontact
x = var(10)
ignorehitpause=1
[State 1550, Vel]
type = velset
trigger1=movecontact
x = 1
ignorehitpause=1
[State 0, VelMul]
type = VelMul
trigger1 = animelem=10
x = .8
[State 1550, Vel]
type = velset
trigger1=animelem=12
x = 0
ignorehitpause=1
[State 1550, steps]
type = playsnd
trigger1 = anim = 1550 && (animelem = 3 || animelem = 6)
value = 0, 100
[State 106,2]
type = MakeDust
trigger1=animelemtime(8)>=0&&animelemtime(11)<0
trigger1=time%6
pos =70, 0

[State 1550, Hit]
type = hitdef
trigger1 = !time
priority = 4, Hit
attr = A,SA
damage = 70+10*var(10),12
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = L
hitflag = MAFD
priority = 4, Hit
pausetime = 12,12
sparkno = s7020 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, -15
hitsound = s2, 6
guardsound = s2, 0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff = 0;ifelse(var(20), -4.33, -8.17)
guard.velocity = ifelse(var(20), -4.30, -7.51)
guard.cornerpush.veloff = 0;ifelse(var(20), -5.78, -10.47)
air.type = Low
air.hittime = 18
air.velocity = -6,4
down.velocity=-8
down.hittime = 20
down.velocity = -5, 0
air.cornerpush.veloff = 0
getpower = 35
givepower = 36, 36
fall = 1
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
airguard.cornerpush.veloff = 0
fall.recover =0
fall.recovertime = 120

[State 1550, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Ravenous
[Statedef 1600]
type    = A
movetype = A
physics = N
ctrl = 0
velset=0,0
juggle = 0
poweradd = 70
facep2=1

[State 1100, VarSet]
type = VarSet
triggerall = !AILevel
trigger1 = Time = 0
var(5) = ifelse(Command = "b", 0, ifelse(Command = "c", 1, 2))

[State 1100, VarSet]
type = VarSet
triggerall = AILevel
trigger1 = Time = 0
var(5) = 2

[State 902, 1]
type = ChangeAnim
Trigger1 = Time = 0
value = ifelse(!var(5), 1600, ifelse(var(5) = 1, 1610, 1620))

[State 3001, Width]
type = Width
trigger1 = 1
edge = 5,0

[State 1600,VelAdd]
type = VelAdd
trigger1 = animelemtime(3) >= 0
y = Ifelse(!var(5),.4,Ifelse(var(5)=1,.3,.2))


[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1600,0
channel = 0

[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElem = 3||AnimElem = 9
value = 1500,1
channel = 1

[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1500,1
channel = 2

[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1500,1
channel = 3

[State 1200, 2]
type = HitDef
trigger1 = AnimElem = 3||AnimElem = 9
attr = A, SA
damage=15-1*var(5),2
hitflag = MAF
guardflag = MA
pausetime = ceil(2*(2-(var(16)>0))/2),ceil(2*(2-(var(16)>0))/2)
sparkno =s7020+(random%8)
guard.sparkno = S7001
sparkxy = 10,-59
hitsound   = S2,2
guardsound = S2,0
animtype = heavy
air.animtype = Back
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
guard.ctrltime = 17
ground.velocity = -2
guard.velocity = -4
air.velocity = -1, -1
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = -5.6
guard.cornerpush.veloff = -5.6
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 0
fall.recover = 0
air.fall = 1
getpower = 10,10
givepower = 10,10
yaccel = .49
envshake.time = 12
envshake.ampl = 6
palfx.time = 12*((var(0)&2**12)/2**12)
palfx.add = 255,255,255
palfx.mul = 128,128,128
forcestand = 1

[State 1200, 2]
type = HitDef
trigger1 = AnimElem = 7
attr = A, SA
damage=15-2*var(5),2
hitflag = MAF
guardflag = MA
pausetime = ceil(2*(2-(var(16)>0))/2),ceil(2*(2-(var(16)>0))/2)
sparkno =s7020+(random%8)
guard.sparkno = S7001
sparkxy = 10,-65
hitsound   = S2,2
guardsound = S2,0
animtype = heavy
air.animtype = Back
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
guard.ctrltime = 17
ground.velocity = -4
guard.velocity = -4
air.velocity = -1, -1
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = -5.6
guard.cornerpush.veloff = -5.6
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 0
fall.recover = 0
air.fall = 1
getpower = 10,10
givepower = 10,10
yaccel = .49
envshake.time = 12
envshake.ampl = 6
palfx.time = 12*((var(0)&2**12)/2**12)
palfx.add = 255,255,255
palfx.mul = 128,128,128
forcestand = 1


[State 1200, 3]
type = HitDef
trigger1 = AnimElem = 5
attr = A, SA
damage=15-2*var(5),2
hitflag = MAF
guardflag = MA
pausetime = ceil(2*(2-(var(16)>0))/2),ceil(2*(2-(var(16)>0))/2)
sparkno = S7020+(random%8)
guard.sparkno = S7001
sparkxy = 10,-44
hitsound   = S2,2
guardsound = S2,0
animtype = heavy
air.animtype = Back
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
guard.ctrltime = 17
ground.velocity = -2
guard.velocity = -4
air.velocity = -1, -1
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = -5.6
guard.cornerpush.veloff = -5.6
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 0
fall.recover = 0
air.fall = 1
getpower = 10,10
givepower = 10,10
yaccel = .49
envshake.time = 12
envshake.ampl = 6
palfx.time = 12*((var(0)&2**12)/2**12)
palfx.add = 255,255,255
palfx.mul = 128,128,128
forcestand = 1

[State 3001, VarSet]
type = VarSet
trigger1 = 1
ignorehitpause = 1
var(38) = -10

[State 3001, VarSet]
type = VarSet
trigger1 = animelem = 3
trigger2 = animelem = 9
ignorehitpause = 1
var(39) = -59

[State 3001, VarSet]
type = VarSet
trigger1 = animelem = 5
ignorehitpause = 1
var(39) = -44

[State 3001, VarSet]
type = VarSet
trigger1 = animelem = 7
ignorehitpause = 1
var(39) = -65

[State 1100, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 1601

;---------------------------------------------------------------------------
;Ravenous-land
[Statedef 1601]
type    = S
physics = S
ctrl = 0
anim = 1601
velset = 0,0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1000, Spark]
type = Explod
trigger1 = Time = 0
Anim = 7100
pos = 0, 0
postype = p1
ownpal = 1
sprpriority = -3
;pausemovetime = -1
supermovetime = -1
scale = .5,.5

[State 52, Effect]
type = PlaySnd
trigger1 = Time = 0
value = 52, 0
channel = 20

[State 52, 4]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1
