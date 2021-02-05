
;IMPRISONMENT BALL
[Statedef 3000]
type = S
movetype = A
physics = S
anim = 3000
poweradd = -1000
velset = 0
ctrl = 0
sprpriority = 2

;[state 2300, super a]
;type = superpause
;trigger1 = time = 0
;time = 75
;anim = -1
[State 3000, Black BG]
type = Explod
trigger1 = Time = 0
removetime = -1
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
sprpriority = -99999
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 60
pausemovetime =  60
[State 0, Helper]
type = Helper
trigger1=!time
helpertype = normal ;player
name = "Super Fx"
ID = 2061
stateno = 2061
pos = 40, -53
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48
[State 0, Helper]
type = Helper
trigger1 =time=0
helpertype = normal ;player
name = "portrait"
ID = 6033
stateno = 6033
postype = back
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 99999
size.xscale =.5
size.yscale =.5
[State 6034, HyperBG]
type=helper
trigger1 = AnimElem =4
helpertype=normal
stateno=6031
ID=6034
name="HyperBG"
postype=Back
supermovetime=99999
pausemovetime=99999
ownpal=1
ignorehitpause=1
size.xscale=.6
size.yscale=.6
[State 0,LV1]
type=afterimage
trigger1=Time=5
time = 999
timegap = 1
framegap = 10
length = 30
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
palcontrast = 128, 128, 128
palpostbright = 0, 0, 0
trans = add1
[State 3000, Super Pause]
type = superpause
trigger1 = time = 0
time = 50
movetime = 50
anim = -1
sound = s3100, 0
p2defmul = 1
darken = 0


[State 305, hit]
type = HitDef
trigger1 = Animelem = 4
attr = S, SA
damage = 0
animtype = back;heavy
hitflag = MAF
guardflag = MA
sparkxy = -30,-70
sparkno = -1;s4200
guard.sparkno = s4500
hitsound = s30000,0
guardsound = S3,0
pausetime = 0,10
ground.hittime = 20
ground.type = high
ground.slidetime = 20
ground.velocity = -8,-6
air.velocity = -8,-6
fall = 1
fall.recover = 0
air.juggle = 10
yaccel = .5
p2stateno = 3011
ID = 305
p2facing = -1

[State 305, Helper]
type = Helper
trigger1 = p2stateno = 3011 && movehit = 1; && moveguarded = 0
id = 3009
name = "kakattane"
pos = 90,-60;55,-50
postype = p1
stateno = 3009
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
size.xscale = 1
size.yscale = 1
supermovetime = 0
pausemovetime = 0

[state 305, change]
type = ChangeState
trigger1 = movehit
value = 3010

[State 2300, dust]
type = Explod
trigger1 = AnimElem = 1
anim = 2215
ID = 2215
postype = p1
pos = -25,0
bindtime = -1
sprpriority = 5
supermovetime = 52
ownpal = 1
removeongethit = 1
facing = -1


[State 2300, 1];w—­‚ß‚é‰¹x
type = PlaySnd
trigger1 = AnimElem = 3
value = 3300,0

[State 2300, 1];w—­‚ß‚é‰¹x
type = PlaySnd
trigger1 = AnimElem = 6
value = 2000,2

[State 2300, 1];wŒ‚‚Â‰¹x
type = PlaySnd
trigger1 = AnimElem = 3
value = 1400,0


[State 2300, StopSnd]
type = StopSnd
trigger1 = animelem = 4
channel = 4


[State 0, Super Kamehameha]
type = Helper
trigger1 = anim=3000&&animelem = 5
helpertype = normal
name = "superkamehameha"
ID = 3005
stateno = 3005
pos =40,-50
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 2200, dust]
type = explod
trigger1 = animelem = 5;time = 25
anim = 2215
pos = 17,5
sprpriority = 5
bindtime = 1
ownpal = 1
removeongethit = 1
facing = -1
removetime = 66

[State 2300, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


[Statedef 3002, imprisonmentball teleport]
type = A
movetype = A
physics = S
anim = 3002
poweradd = -1000
velset = 0,0
ctrl = 0

[State 305, pause]
type = SuperPause
trigger1 = Animelem = 1
time = 20
movetime = 20
anim = -1
darken = 0
p2defmul = 1

[State 0, Helper]
type = Helper
trigger1=!time
helpertype = normal ;player
name = "Super Fx"
ID = 2061
stateno = 2061
pos = 40, -53
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48

[State 305, behind]
type = Turn
trigger1 = Animelem = 2

[State 305, pos]
type = Posadd
trigger1 = Animelem = 1 , =1
x = p2bodydist X + 85

[State 305, BindToTarget]
type = playerpush
trigger1 = 1
value = 0
time = 23

[State 305, nothit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 305, snd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 700,0

[State 305, speedlines1]
type = Explod
trigger1 = AnimElem = 1
anim = 362
postype = p1
pos = 0,0
bindtime = 1
sprpriority = 3
ownpal = 1
removetime = 8
supermovetime = 8

[State 305, speedlines2]
type = Explod
trigger1 = time = 0
anim = 362
postype = p1
pos = -5,-16
bindtime = -1
sprpriority = 3
ownpal = 1
removetime = 25
supermovetime = 20

[State 305, image1]
type = AfterImage
trigger1 = AnimElem = 2
time = 2

[State 305, image2]
type = AfterImageTime
trigger1 = AnimElemTime(2) >= 0
time = 2

[State 305, hit]
type = HitDef
trigger1 = Animelem = 9
attr = S, sA
damage = 0
animtype = back;heavy
hitflag = MAF
guardflag = MA
sparkxy = -30,-70
sparkno = -1;s4200
guard.sparkno = s4500
hitsound = s30000,0
guardsound = S3,0
pausetime = 0,10
ground.hittime = 20
ground.type = high
ground.slidetime = 20
ground.velocity = -8,-6
air.velocity = -8,-6
fall = 1
fall.recover = 0
air.juggle = 10
yaccel = .5
p2stateno = 3011
ID = 305
p2facing = -1

[State 305, Helper]
type = Helper
trigger1 = p2stateno = 3011 && movehit = 1; && moveguarded = 0
id = 3009
name = "kakattane"
pos = 90,-60;55,-50
postype = p1
stateno = 3009
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
size.xscale = 1
size.yscale = 1
supermovetime = 0
pausemovetime = 0

[state 305, change]
type = ChangeState
trigger1 = movehit
value = 3010

[state 305, end]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

[Statedef 3010, IB Success]
type = S
physics = S
anim = 3010
poweradd = 0
velset = 0
ctrl = 0

[State 3000, Black BG]
type = Explod
trigger1 = Time = 0
removetime = -1
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
sprpriority = -99999
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 60
pausemovetime =  60

[State 0, Helper]
type = Helper
trigger1 =time=0
helpertype = normal ;player
name = "portrait"
ID = 6033
stateno = 6033
postype = back
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 99999
size.xscale =.5
size.yscale =.5
[State 6034, HyperBG]
type=helper
trigger1 = AnimElem =4
helpertype=normal
stateno=6031
ID=6034
name="HyperBG"
postype=Back
supermovetime=99999
pausemovetime=99999
ownpal=1
ignorehitpause=1
size.xscale=.6
size.yscale=.6
[State 0,LV1]
type=afterimage
trigger1=Time=5
time = 999
timegap = 1
framegap = 10
length = 30
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
palcontrast = 128, 128, 128
palpostbright = 0, 0, 0
trans = add1


[State 3010, nothit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3010, width]
type = width
trigger1 = 1
edge = 110,0

[State 3010, p2]
type = TargetState
trigger1 = time = 0
value = 3011
elem = 1
ignorehitpause = 1
ID = 3011

[State 3010, targetbind]
type = targetbind
trigger1 = p2stateno = 3011
pos = 90,0

[State 305, voice];w‚©‚©‚Á‚½‚Ëx
type = PlaySnd
trigger1 = time = 10
value = 1000,0
volume = 255

[State 3010, dust]
type = Explod
trigger1 = anim = 3010 && AnimElem = 1
anim = 4040
ID = 3010
postype = p2
pos = -15,0
bindtime = 1
sprpriority = 4
ownpal = 1
facing = 1
supermovetime = 33

[State 3010,snd1]
type = PlaySnd
trigger1 = Time = 80
value = 2000,2

[State 3010, snd2]
type = PlaySnd
trigger1 = Time = 110
value = 2000,3

[State 3010, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;BALL
[Statedef 3009]
type = A
movetype = A
physics = N
ctrl = 0
anim = 3001
velset = 0,0
sprpriority = 4

[State 3009, 0]
type = BindToTarget
trigger1 = time = 0

[State 3009, 0]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 3009, vel1]
type = VelSet
trigger1 = p2stateno = 3012;Time = 74
x = 5

[State 3009, velstop]
type = VelSet
trigger1 = anim = 4650;Time = 104
x = 0

[state 3009, explod1]
type = explod
trigger1 = time = 106
anim = 4035
id = 4035
pos = 0,65
postype = p1
sprpriority = 2
ownpal = 1
removetime = 40
removeongethit = 0
ignorehitpause = 1
persistent = 0

[state 3009, explod2]
type = explod
trigger1 = time = 106
anim = 4020
pos = -20,65
postype = p1
sprpriority = 3
ownpal = 1
removetime = 16
removeongethit = 0
ignorehitpause = 1
persistent = 0

[state 3009, explod3]
type = explod
trigger1 = p2stateno = 3012
anim = 4030
pos = 0,60
postype = p1
sprpriority = 3
ownpal = 1
removetime = 24
removeongethit = 0
ignorehitpause = 1
persistent = 0
bindtime = -1

[State 3009, ChangeAnim]
type = ChangeAnim
trigger1 = time = 104
value = 4650

[State 3009, DestroySelf]
type = DestroySelf
trigger1 = time = 140



;P2STATENO
[Statedef 3011]
type    = A
movetype= H
physics = N
velset = 0,0
poweradd = 0
sprpriority = 0
ctrl = 0

[State 3011, anim]
type = changeanim2
trigger1 = time = 0
value = 3011

[State 3011, nothit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3011, width]
type = width
trigger1 = 1
edge = 0,0

[State 3011, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 3012

;P2STATENO
[Statedef 3012]
type    = A
movetype= H
physics = N
velset = 0,0
poweradd = 0
sprpriority = 0
ctrl = 0

[State 3012, anim]
type = changeanim2
trigger1 = time = 0
value = 3012

[State 3012, nothit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3012, width]
type = width
trigger1 = 1
edge = 0,0

[State 3012, playerpush]
type = playerpush
trigger1 = 1
value = 0

[State 3012, vel]
type = VelSet
trigger1 = Time = 0
x = 5
;x = p2bodydist X + 90

[State 3012, velstop]
type = VelSet
trigger1 = time = 30;animelem = 2
x = 0

[State 3012, life]
type = lifeadd
trigger1 = animelem = 4
value = -150

[State 3012, env]
type = EnvColor
trigger1 = animelem = 4
value = 245,245,245
time = 1
ignorehitpause = 0
;persistent = 0

[State 3012, shake]
type = EnvShake
trigger1 = animelem = 2
time = 30
freq = 120
ampl = 16

[State 3012, change]
type = Selfstate
trigger1 = animtime = 0 && alive
value = 5120
ctrl = 0

[State 3012, dead]
type = SelfState
trigger1 = time = 42 && !alive
value = 5150
ctrl = 0
;-------------------------------------------------------------------------------------
[Statedef 3020, deathball]
type=A
physics=N
movetype=A
anim=3020
ctrl=0
velset=0,0
sprpriority=1
poweradd=-1000

[State 0, Helper]
type = Helper
trigger1 =time=0
helpertype = normal ;player
name = "portrait"
ID = 6033
stateno = 6033
postype = back
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 99999
size.xscale =.5
size.yscale =.5

[State 3050, strengthvar]
type=varset
trigger1= var(10)!=5
var(10)=5


[State 3050, ECreset]
type=palfx
trigger1= !time
trigger1= !(var(20):=0)
time=1
[State 3000, Black BG]
type = Explod
trigger1 = Time = 0
removetime = -1
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
sprpriority = -99999
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 60
pausemovetime =  60
[State 0, Helper]
type = Helper
trigger1=!time
helpertype = normal ;player
name = "Super Fx"
ID = 2061
stateno = 2061
pos = -10,-140
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48
[State 6030, HyperBG]
type=helper
trigger1 = AnimElem =3
helpertype=normal
stateno=6030
ID=6030
name="HyperBG"
postype=Back
supermovetime=99999
pausemovetime=99999
ownpal=1
ignorehitpause=1
size.xscale=1
size.yscale=.8
[State 3050, Super Pause]
type = superpause
trigger1 = time=1
time = 50
anim = -1
sound = s3100, 0
p2defmul = 1
darken = 0
movetime = 50

[State 2300, 1];w—­‚ß‚é‰¹x
type = PlaySnd
trigger1 = AnimElem = 1
value = 20,0

[State 2300, 1];w—­‚ß‚é‰¹x
type = PlaySnd
trigger1 = AnimElem = 1
value = 2100,4
channel=4
[State 2300, StopSnd]
type = StopSnd
trigger1 = animelem = 6
channel = 4

[State 2300, 1];wŒ‚‚Â‰¹x
type = PlaySnd
trigger1 = AnimElem = 5
value = 2200,4

[State 2300, 1];wŒ‚‚Â‰¹x
type = PlaySnd
trigger1 = AnimElem = 4
value = 1400,0

[State 0, Explod]
type = Explod
trigger1 =animelem=1
anim = 3025
ID = 3025
pos = -10,-145
postype = p1
bindtime = -1
removetime = 53
pausemovetime = 999999
supermovetime = 999999
scale = .5,.5
sprpriority = 5
ownpal = 1
removeongethit = 1


[State 3050, nhb]
type=nothitby
trigger1= animelemtime(7)<1
time=1
value=SCA

[State 3050, hadouken]
type=helper
trigger1= animelem=1
helpertype=normal
stateno=3025
ID=3025
name="Hadouken"
postype=p1
pos=-25,-160
ownpal=1
;supermovetime = 1
pausemovetime = 50
sprpriority=1





[State 3050, vel]
type=velset
trigger1= animelem=8
x=0
y=-6

[State 3050, sts]
type=statetypeset
trigger1= animelemtime(8)>0
physics=A
;--------------------------------------------------------------------------------------
[Statedef 3040, Nova Strike]
type = S
physics = S
movetype = A
ctrl = 0
anim = 3040
velset = 0, 0
poweradd = -1000
juggle =6
sprpriority = 1
facep2 = 1

[State 0, Helper]
type = Helper
trigger1 =time=0
helpertype = normal ;player
name = "portrait"
ID = 6033
stateno = 6033
postype = back
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 99999
size.xscale =.5
size.yscale =.5

[State 3040, Strength]
type = varset
trigger1 = var(10) != 5
var(10) = 5

[State 3040, Snd]
type = playsnd
trigger1 = anim = 3040 && animelem = 1
value = 4, 8
channel = 0
[State 3040, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1
[State 3000, Black BG]
type = Explod
trigger1 = Time = 0
removetime = -1
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
sprpriority = -99999
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 60
pausemovetime =  60
[State 0, Helper]
type = Helper
trigger1=!time
helpertype = normal ;player
name = "Super Fx"
ID = 2061
stateno = 2061
pos = 24,-91
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48
[State 0, Super Pause]
type = superpause
trigger1=!time
time = 60
movetime=60
anim = -1
sound = s3000,0
;poweradd=-1000
p2defmul = 1
unhittable=1
darken = 0
[State 6034, HyperBG]
type=helper
trigger1 = AnimElem =3
helpertype=normal
stateno=6031
ID=6034
name="HyperBG"
postype=Back
supermovetime=99999
pausemovetime=99999
ownpal=1
ignorehitpause=1
size.xscale=.6
size.yscale=.6


[State Corner Push]
type = varset
trigger1 = anim = 3040 && animelem = 2
fvar(5) = 0

[State 3040, NHB]
type = nothitby
trigger1 = anim = 3040 && time < 64
time = 1
value = SCA
ignorehitpause = 1

[State 3040, width]
type = width
trigger1 = anim = 3040 && animelemtime(7) >= 0
value = 20
ignorehitpause = 1
[State 3040, Push]
type = playerpush
trigger1 = anim = 3040 && animelemtime(9) >= 0
value = 0
ignorehitpause = 1

[State 3040, nothitby]
type = nothitby
trigger1 = anim = 3040 && animelemtime(8) >= 0
value = , NP, SP
time = 1
ignorehitpause = 1

[State 3040, shield]
type = helper
trigger1 = !numhelper(1007)
trigger1 = anim = 3040 && animelemtime(8) >= 0
helpertype = normal
stateno = 1007
ID = 1007
name = "Projectile Hitter"
postype = p1

[State 3040, Vel]
type = velset
trigger1 = anim = 3040 && animelemtime(9) >= 0
x = 10
y = 0
[State 3040, Vel]
type = velset
trigger1 = anim = 3040 && animelemtime(9) >= 0 && var(14) < 9
trigger1 = (movecontact = [1, 3]) || (movereversed = [1, 3])
x = 0
y = 0

[State 3040, statetype]
type = statetypeset
trigger1 = anim = 3040 && animelemtime(7) >= 0
statetype = A
physics = N


[State 3040, FX]
type = helper
trigger1 = !numhelper(3045)
trigger1 = anim = 3040 && animelemtime(9) >= 0
helpertype = normal
stateno = 3045
ID = 3045
name = "Psycho Crusher"
postype = p1
ownpal = 1
pausemovetime = 999
supermovetime = 999

[State 3040, hitvar]
type = varset
trigger1 = anim != 3040
trigger2 = anim = 3040 && animelemtime(9) < 0
var(14) = 0
[State 3040, hitvar]
type = varadd
trigger1 = anim = 3040 && (movehit = 1 || moveguarded = 1 || movereversed = 1)
var(14) = 1

[State 3040, Hit]
type = hitdef
trigger1 = anim = 3040 && animelemtime(9) >= 0
trigger1 = !(movecontact % 4) && var(14) < 9
attr = S, HA
damage = 37, 7
animtype = Diagup
fall.animtype = Diagup
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 4, 8
sparkno = s7030 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, -59
hitsound = s2, 3
guardsound = s2, 0
ground.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -10, -4.5
ground.cornerpush.veloff = 0
air.type = Low
air.velocity = -10, -4.5
getpower = 0
givepower = 36, 36
forcestand = 1
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
palfx.sinadd = 64, 64, 64, 4
palfx.mul = 128, 128, 128
palfx.time = 32
fall = 1
fall.recover = 0
ID = 3040
yaccel = 0.5

[State 3040, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7180) < 1
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7180
name = "Flames"
postype = p2
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1
persistent = 0

[State 3040, Anim]
type = changeanim
trigger1 = anim = 3040 && (animelemtime(7) >= 85)
trigger2 = anim = 3040 && (animelemtime(7) >= 10) && (frontedgedist <= (const(size.air.front) + 20))
value = 3041

[State 3040, Vel]
type = velmul
trigger1 = anim = 3041
x = 0.85
[State 3040, End]
type = changeanim
trigger1 = anim = 3041 && !animtime
value = 1205

[State 3040, Vel]
type = velset
trigger1 = anim = 1205
x = 0
y = 0
[State 3040, Pos]
type = posset
trigger1 = anim = 1205
y = 0
[State 3040, statetype]
type = statetypeset
trigger1 = anim = 1205
statetype = S
physics = S


[State Idle]
type = statetypeset
trigger1 = anim = [47, 1205]
movetype = I

[State 3040, End]
type = changestate
trigger1 = anim = 1205 && !animtime
value = 0
ctrl = 1
;---------------------------------------------------------------

;---------------------------------------------------
[Statedef 3200, death cannon]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
poweradd = -2000
anim = 3200
sprpriority = 0
juggle = 1

[State 3050, strengthvar]
type=varset
trigger1= var(10)!=6
var(10)=6

[State 3000, Black BG]
type = Explod
trigger1 = Time = 0
removetime = -1
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
sprpriority = -99999
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 60
pausemovetime =  60
[State 0, Helper]
type = Helper
trigger1=!time
helpertype = normal ;player
name = "Super Fx"
ID = 2062
stateno = 2062
pos = 0,-60
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48
[State 0, Helper]
type = Helper
trigger1 =time=0
helpertype = normal ;player
name = "portrait"
ID = 6036
stateno = 6036
postype = back
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 99999
size.xscale =.5
size.yscale =.5
[State 6034, HyperBG]
type=helper
trigger1 = AnimElem =5
helpertype=normal
stateno=6031
ID=6034
name="HyperBG"
postype=Back
supermovetime=99999
pausemovetime=99999
ownpal=1
ignorehitpause=1
size.xscale=.6
size.yscale=.6
[State 0,LV1]
type=afterimage
trigger1=Time=5
time = 999
timegap = 1
framegap = 10
length = 30
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
palcontrast = 128, 128, 128
palpostbright = 0, 0, 0
trans = add1
[State 3000, 8]
type = SuperPause
trigger1 = AnimElem = 1
time = 45
movetime = 45
anim = -1
sound = s3100,1
p2defmul = 1
darken = 0

[State 0, Explod]
type = Explod
trigger1 =animelem=3
anim = 7061
ID = 7061
pos = 0,5
postype = p1
bindtime = -1
removetime = 30
pausemovetime = 45
supermovetime = 45
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 3000, flash]
type = PalFX
triggerall = var(10) = 0
trigger1 = time >= 3; && AnimElem = 3, <= 1
trigger1 = TimeMod = 4,0
trigger1 = Time > 0
time = 1
add = 100,100,100

[State 3000, 1]
type = playerpush
trigger1 = Time >= 0
value = 0

[State 3000, 2]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 15

[State 3000, playsnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2001,1


[State 3000, playsnd];ws‚­‚¼[IIv
type = PlaySnd
trigger1 = Time = 1
value = 2200,0


[State 3000, e]
type = ChangeState
trigger1 = time=30
value = 3201

;-----------------------------“Ëi
[Statedef 3201]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 3201

[State 1600, 1]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 8

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 3000,2

[State 3005, 1]
type = PosAdd
trigger1 = Time > 2
x = 6

[State 3005, 2]
type = VelSet
trigger1 = Time = 2
x = 15

[State 3005, 3]
type = VelAdd
trigger1 = Time > 2
x = .15

[State 3005, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 20
FrameGap = 2
length = 12
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1


[State 210, Hit]
type=hitdef
trigger1= !((EnemyNear, StateNo = 5040) && !(EnemyNear, Ctrl))
trigger1 = !Time
attr = S,HT
damage = 0,0
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = MA
hitflag = MAF
priority= 4,Hit
pausetime = 1,1
sparkno = -1
guard.sparkno = s7001 + 0 * (var(34) := 8061)
guard.sparkxy = (var(22) := 32), var(23):= -87
sparkxy = -19+ 0 * (var(22) := 53),-75+ 0 * (var(23):= -39)
hitsound = -1
guardsound = s2,0
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = 0
guard.pausetime  = 2,2
guard.slidetime = 17
guard.hittime = 17
guard.ctrltime = 19
air.type = High
air.velocity = 0,0
air.hittime = 13
getpower= 0,0
givepower = 36,36
yaccel = .5
airguard.ctrltime = 16
fall=0
air.fall=1
air.fall.recover=0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
kill=0
p1stateno=3202
forcestand=1
;p2stateno= 3060

[State 0, TargetState]
type = TargetState
triggerall = NumTarget(3060)
trigger1 = movehit
value = 3060
ID = -1
;ignorehitpause = 
;persistent = 


[State 3005, 4]
type = ChangeState
trigger1 = moveguarded; = 1
value = 3205
ctrl=1

[State 3005, 4]
type = ChangeState
trigger1 = movehit;movehit = 1
value = 3202
ctrl=0

[State 3005, end]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl=1

;-----------------------—•‘ij
[Statedef 3202]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 3202

[State 3050, muteki]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3050, width]
type = width
trigger1 = 1
edge = 75,0

[State 3050, bind]
type = TargetBind
Trigger1 = AnimElem = 1, >= 1 && AnimElem = 8, <= 1
pos =  50,0



[state 3020, speedline2]
type = explod
trigger1 = time = 0
anim = 6100
postype = back
pos = 0,0
bindtime = -1
supermove = 1
sprpriority = -4
ontop = 0
ownpal = 1
removetime = 100
scale = 2.575, 1.075



[State 2300, 1];w—­‚ß‚é‰¹x
type = PlaySnd
trigger1 = AnimElem = 17
value = 20,0

[State 2300, 1];w—­‚ß‚é‰¹x
type = PlaySnd
trigger1 = AnimElem = 22
value = 2000,5


[State 3050, hit]
type = hitdef
trigger1 = AnimElem = 4
attr = S, HP
damage = 75,10
animtype = heavy
hitflag = MAf
snap = 70,0
sparkno = s7030+(random%8)
guard.sparkno = s7001
sparkxy = 0,-80
guardflag = MA
hitsound = S2,1
guardsound = S6,0
pausetime = 12,25
ground.hittime = 15
ground.type = low
ground.slidetime = 5
ground.velocity = 0,0
air.velocity = 0,0
envshake.time = 20
envshake.ampl = 6
kill = 0
p2facing = 1
;p2stateno= 3060



[state 1710, 1]
type = hitdef
trigger1 = animelem = 9
attr = S, HA
damage = 75, 20
animtype = heavy
guarDFlag = ma
hitflag = maf
priority = 7
pausetime = 10,15
sparkno = s7030+(random%8)
sparkxy = -50,-80
hitsound = S2,3
guardsound = s120,0
ground.type = high
ground.slidetime = 5
ground.hittime  = 30
ground.velocity = -1, -11
airguard.velocity = -1.9,-.8     
air.velocity =  -1, -11
fall = 1
fall.recover = 0                     
envshake.time = 20
envshake.freq = 70
envshake.ampl = -6
envshake.phase = 30
kill = 1

[state 2300, super a]
type = pause
trigger1 = animelem=18
time = 60
movetime = 60
[State 6034, HyperBG]
type=helper
trigger1 = AnimElem =18
helpertype=normal
stateno=6029
ID=6034
name="HyperBG"
postype=P1
supermovetime=99999
pausemovetime=99999
ownpal=1
ignorehitpause=1
size.xscale=.9
size.yscale=1

[State 0, EnvShake]
type = EnvShake
trigger1 = animelemtime(18)=0
time = 45
freq =40
ampl = -6
phase = 90
ignorehitpause = 1
persistent = 1


[State 2300, 1];wŒ‚‚Â‰¹x
type = PlaySnd
trigger1 = AnimElem = 21
value = s2200,4

;[State 2300, 1];wŒ‚‚Â‰¹x
;type = PlaySnd
;trigger1 = AnimElem = 18
;value = 0,36

[State 2300, 1];wŒ‚‚Â‰¹x
type = PlaySnd
trigger1 = AnimElem = 17
value = s1,13

[State 0, Explod]
type = Explod
trigger1 =animelem=18
anim = 3030
ID = 3030
pos = -30,-50
postype = p1
bindtime = -1
removetime = 45
pausemovetime = 45
supermovetime = 45
scale = .5,.5
sprpriority = 1
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 =animelem=18
anim = 7060
ID = 7060
pos = 0,5
postype = p1
bindtime = -1
removetime = 120
pausemovetime = 90
supermovetime = 90
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 1


[State 0, Helper]
type = Helper
trigger1 = animelem=20
helpertype = normal ;player
name = "rebelliontrigger"
ID = 3255
stateno = 3255
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999
pausemovetime = 999999


[State 1200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
[Statedef 3205]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 3205

[State 1730, 1]
type = VelSet
trigger1 = Time = 0
x = -15
y = 0

[State 1730, 3]
type = VelAdd
trigger1 = Time > 0
x = .15

[state 1730, 2]
type = posset
trigger1 = time = 0
y = 0

[State 1730, landdust1]
type = explod
trigger1 = StateNo = 3205 && Time = 1
postype = p1
pos = -17,0
spacing = 1
anim = 7100
ownpal = 1
scale = .5, .5

[State 1730, landdust]
type = explod
trigger1 = StateNo = 3205 && Time = 1
postype = p1
pos = 20,0
facing = -1
spacing = 1
anim = 7100
ownpal = 1
scale = .5, .5

[State 1730, Landing Sound]
type = PlaySnd
trigger1 = animelem = 2
value = s8,0

[State 1730, e]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
