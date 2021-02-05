
;Riot Javelin
[Statedef 3000]
type = S
movetype = A
physics = S
anim = 3000
poweradd = -1000
velset = 0
ctrl = 0
sprpriority = 2

[State 3050, strengthvar]
type=varset
trigger1= var(10)!=5
var(10)=5

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
pos = -40, -63
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
trigger1 = time = 1
time = 45
movetime = 45
anim = -1
sound = s7, 0
p2defmul = 1
darken = 0


[State 0, Explod]
type = Explod
trigger1 =animelem=3
anim = 3030
ID = 3030
pos = -40,-60
postype = p1
bindtime = -1
removetime = 45
pausemovetime = 45
supermovetime = 45
scale = .5,.5
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 2300, dust]
type = Explod
trigger1 = AnimElem = 1
anim = 2216
ID = 2216
postype = p1
pos = -25,0
bindtime = -1
sprpriority = 5
supermovetime = 52
ownpal = 1
removeongethit = 1
facing = 1

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
trigger1 = animelem = 5
channel = 4

[State 2300, 1];wŒ‚‚Â‰¹x
type = PlaySnd
trigger1 = AnimElem = 5
value = 2200,4

[State 2300, 1];wŒ‚‚Â‰¹x
type = PlaySnd
trigger1 = AnimElem = 4
value = 1400,0


[State 0, Super Kamehameha]
type = Helper
trigger1 = anim=3000&&animelem = 5
helpertype = normal
name = "saiyanspirit"
ID = 3005
stateno = 3005
pos=83,-68
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 1
size.yscale = 1
sprpriority = 3

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
;Riot Javelin (AIR)
[Statedef 3050]
type=A
physics=N
movetype=A
anim=3050
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
pos = -30,-71
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
size.xscale=.75
size.yscale=.75
[State 3050, Super Pause]
type = superpause
trigger1 = animelem = 2
time = 45
anim = -1
sound = s7, 0
p2defmul = 1
darken = 0
movetime = 45

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
trigger1 =animelem=2
anim = 3030
ID = 3030
pos = -30,-70
postype = p1
bindtime = -1
removetime = 30
pausemovetime = 45
supermovetime = 45
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
trigger1= animelem=7
helpertype=normal
stateno=3055
ID=3055
name="Hadouken"
postype=p1
pos=43,-23
ownpal=1

[State 3050, snd]
type=playsnd
trigger1= animelem=8
value=4,0
channel=0
[State 3050, snd]
type=playsnd
trigger1= animelem=8
value=5,0
channel=5

[State 3050, vel]
type=velset
trigger1= animelem=8
x=-1.5
y=-6
[State 3050, sts]
type=statetypeset
trigger1= animelemtime(8)>0
physics=A

;===================================================
;rebellion trigger
;---------------------------------------------------
[Statedef 3200]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
poweradd = -2000
anim = 3200
sprpriority = 0
juggle = 1

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
sound = s7, 0
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

;---------------------------------
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
hitsound = S200,1
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
hitsound = S5,8
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
type = superpause
trigger1 = animelemtime(20) = 0
time = 90
movetime = 90
anim = -1


[State 0, EnvShake]
type = EnvShake
trigger1 = animelemtime(20)=0
time = 60
freq =70
ampl = -6
phase = 90
ignorehitpause = 1
persistent = 1


[State 2300, 1];wŒ‚‚Â‰¹x
type = PlaySnd
trigger1 = AnimElem = 24
value = 2200,4

[State 2300, 1];wŒ‚‚Â‰¹x
type = PlaySnd
trigger1 = AnimElem = 18
value = 0,36

[State 2300, 1];wŒ‚‚Â‰¹x
type = PlaySnd
trigger1 = AnimElem = 17
value = s1,13

[State 0, Explod]
type = Explod
trigger1 =animelem=22
anim = 3030
ID = 3030
pos = 0,-30
postype = p1
bindtime = -1
removetime = 45
pausemovetime = 45
supermovetime = 45
scale = .5,.5
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 =animelem=17
anim = 7060
ID = 7060
pos = 0,5
postype = p1
bindtime = -1
removetime = 170
pausemovetime = 90
supermovetime = 90
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 1


[State 0, Helper]
type = Helper
trigger1 = animelem=24
helpertype = normal ;player
name = "rebelliontrigger"
ID = 3025
stateno = 3025
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 3050, env]
type = EnvColor
trigger1 = AnimElem = 3
trigger2 = AnimElem = 8
value = 245,245,245
ignorehitpause = 1
time = 1


[State 1200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------ƒ~ƒX‚Á‚½ê‡
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
