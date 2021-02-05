
;Kamehameha
[Statedef 3000]
type = S
movetype = A
physics = S
anim = 3000
poweradd = -1000
velset = 0
ctrl = 0
sprpriority = 0

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
pos = -30, -53
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
trigger1 = AnimElem =6
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
time = 60
movetime = 60
anim = -1
sound = s3000, 0
p2defmul = 1
darken = 0

[State 0, Explod]
type = Explod
trigger1 =animelem=5
anim = 3030
ID = 3030
pos = -30, -60;pos = -40,-50
postype = p1
bindtime = -1
removetime = 45
pausemovetime = 999999
supermovetime = 999999
scale = .3,.3
sprpriority = 3
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
facing = -1

[State 2300, 1];w—­‚ß‚é‰¹x
type = PlaySnd
trigger1 = AnimElem = 1
value = 20,0

[State 2300, 1];w—­‚ß‚é‰¹x
type = PlaySnd
trigger1 = AnimElem = 5
value = 2000,5

[State 2300, 1];wŒ‚‚Â‰¹x
type = PlaySnd
trigger1 = AnimElem = 6
value = 2200,4

[State 2300, 1];wŒ‚‚Â‰¹x
type = PlaySnd
trigger1 = AnimElem = 4
value = 1400,0

[State 2300, StopSnd]
type = StopSnd
trigger1 = animelem = 4
channel = 4

[State 0, Super Kamehameha]
type = Helper
trigger1 = anim=3000&&animelem = 7
helpertype = normal
name = "superkamehameha"
ID = 3005
stateno = 3005
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = .3;1
size.yscale = .35;1

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

;Air Kamehameha
[Statedef 3001]
type = A
movetype = A
physics = S
anim = 3001
poweradd = -1000
velset = 0,0
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
pos = -15,-100
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
trigger1 = time = 0
time = 54
movetime = 54
anim = -1
sound = s3000, 0
p2defmul = 1
darken = 0

[State 0, Explod]
type = Explod
trigger1 =animelem=3
anim = 3030
ID = 3030
pos = -20,-100
postype = p1
bindtime = -1
removetime = 45
pausemovetime = 999999
supermovetime = 999999
scale = .3,.3
sprpriority = 3
ownpal = 1
removeongethit = 1

[State 2300, 1];w—­‚ß‚é‰¹x
type = PlaySnd
trigger1 = AnimElem = 4
value = 2200,4

[State 2300, 1];w—­‚ß‚é‰¹x
type = PlaySnd
trigger1 = AnimElem = 2
value = 2000,5

[State 2300, 1];wŒ‚‚Â‰¹x
type = PlaySnd
trigger1 = AnimElem = 3
value = 1400,0


[State 2300, StopSnd]
type = StopSnd
trigger1 = animelem = 4
channel = 4

;[State 2000, proj]
;type = Explod
;trigger1 = AnimElem = 3
;anim = 3001
;sprpriority = 4
;postype = p1
;pos = -7,-17
;bindtime = -1
;removeongethit = 1
;removetime = 67
;supermove = 0
;ownpal = 1
;scale = 1,1.5


[State 0, Super Kamehameha]
type = Helper
trigger1 =  animelem = 5
helpertype = normal
name = "superkamehameha"
ID = 3006
stateno = 3006
pos = -7,-17;0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale =.5
size.yscale = .7

[State 1100, Gravity]
type = Veladd
trigger1 = AnimElem=6
y = 6

[State 3020, End]
type = changestate
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 52

;---------------------------------------------------
;RUSH COMBO
[Statedef 3010]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
poweradd = -1000
anim = 3100
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
ID = 2061
stateno = 2061
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
sound = s3000, 0
p2defmul = 1
darken = 0

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
value = 2200,1


[State 3000, e]
type = ChangeState
trigger1 = time=30
value = 3011

;-----------------------------“Ëi
[Statedef 3011]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 3101

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


[State 3005, hit]
type = hitdef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 7
attr = S, HA; SP
damage = 0,0
animtype = Light
hitflag = maf
guardflag = ma
numhits = 0
sparkno = s7030
guard.sparkno = s7001
sparkxy = 0,-70
hitsound = -1
guardsound = S6,0
pausetime = 0,0
ground.hittime = 15
ground.type = high
ground.slidetime = 5
ground.velocity = 0,0
air.velocity = 0,0
p2facing = 1
kill = 0
p2stateno= 3060




[State 3005, 4]
type = ChangeState
trigger1 = moveguarded; = 1
value = 3205
ctrl=1

[State 3005, 4]
type = ChangeState
trigger1 = movehit;movehit = 1
value = 3012

[State 3005, end]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl=1
;-----------------------—•‘
[Statedef 3012]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 3010

[State 3005, muteki]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3005, width]
type = width
trigger1 = 1
edge = 75,0

[State 3010, bind]
type = TargetBind
Trigger1 = AnimElem = 1, >= 1 && AnimElem = 42, <= 1
pos =  70,0

[state 3010, dust]
type = explod
trigger1 = animelem = 6
pos = 35,0
spacing = 1
anim = 4040
bindtime = -1
ownpal = 1
removetime = 99
sprpriority = 5
facing = -1

[State 3010, hit]
type = hitdef
trigger1 = AnimElem = 1
attr = S, SP;HA
damage = 15,0
animtype = heavy
hitflag = maf
;snap = 70,0
sparkno = s7030+(random%8)
guard.sparkno = s7001
sparkxy = 0,-80
guardflag = MA
hitsound = s2, 2
guardsound = s2, 0
pausetime = 30,40
ground.hittime = 15
ground.type = low
ground.slidetime = 5
ground.velocity = 0,0
air.velocity = 0,0
envshake.time = 20
envshake.ampl = 6
p2facing = 1
kill = 0
p2stateno= 3060

[State 3010, hit];ŽãƒLƒbƒN
type = hitdef
trigger1 = AnimElem = 6
trigger2 = AnimElem = 20
trigger3 = AnimElem = 35
attr = S, SP
damage = 15,0
animtype = hard
hitflag = maf
;snap = 70,0
sparkno = s7030+(random%8)
guard.sparkno = s7001
sparkxy = -10,-71
guardflag = MA
hitsound = s2, 2
guardsound = s2, 0
pausetime = 2,40
ground.hittime = 10
ground.type = low
ground.slidetime = 5
ground.velocity = 0,0
air.velocity = 0,0
p2facing = 1
p2stateno= 3060

[State 3010, hit];Žãƒpƒ“ƒ`
type = hitdef
trigger1 = AnimElem = 10
trigger2 = AnimElem = 24
trigger3 = AnimElem = 31
attr = S, SP
damage = 15,0
animtype = hard
hitflag = maf
;snap = 70,0
sparkno = s7030+(random%8)
guard.sparkno = s7001
sparkxy = 0,-81
guardflag = MA
hitsound = s2, 2
guardsound = s2, 0
pausetime = 2,40
ground.hittime = 10
ground.type = high
ground.slidetime = 5
ground.velocity = 0,0
air.velocity = 0,0
p2facing = 1
p2stateno= 3065

[State 3010, hit];‹­ƒpƒ“ƒ`
type = hitdef
trigger1 = AnimElem = 15
trigger2 = AnimElem = 27
attr = S, SP
damage = 15,0
animtype = hard
hitflag = maf
;snap = 70,0,0
sparkno = s7030+(random%8)
guard.sparkno = s7001
sparkxy = -20,-76
guardflag = MA
hitsound = s2, 2
guardsound = s2, 0
pausetime = 2,40
ground.hittime = 10
ground.type = low
ground.slidetime = 5
ground.velocity = 0,0
air.velocity = 0,0
p2facing = 1
p2stateno= 3060

[State 3010, hit];ƒAƒbƒp[
type = hitdef
trigger1 = AnimElem = 43
attr = S, SP
damage    = 31,7
priority  = 4, Hit
animtype = Hard
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12 / ((var(20) > 0) + 1), 12 / ((var(20) > 0) + 1)
sparkno = -1;s7020 + (random % 8)
guard.sparkno = s7001
sparkxy = -40, -78
hitsound = s2, 4
guardsound = s2, 10
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -22, -6
air.type = Low
air.velocity = -22, -6
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0;-12.74
getpower = 0
p2stateno = 1111300;5400
givepower = 36, 36
envshake.time = 16
envshake.freq = 120
envshake.ampl = 6
p2facing = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
yaccel = 0.5
fall = 1

[State 3010, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 110
FrameGap = 2
length = 12
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 3010, env]
type = EnvColor
trigger1 = AnimElem = 1
trigger2 = AnimElem = 6
trigger3 = AnimElem = 10
trigger4 = AnimElem = 20
trigger5 = AnimElem = 24
trigger6 = AnimElem = 31
trigger7 = AnimElem = 35
trigger8 = AnimElem = 43
value = 245,245,245
ignorehitpause = 1
time = 1

[State 3010, e]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl=1

;---------------------------------------------------
;KAIOKEN KAMEHAMEHA
[Statedef 3100]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
poweradd = -2000
anim = 3100
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
ignorehitpause=1
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
value = 2200,1


[State 3000, e]
type = ChangeState
trigger1 = time=30
value = 3101

;-----------------------------“Ëi
[Statedef 3101]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 3101

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


[State 3005, hit]
type = hitdef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 7
attr = S, HA; SP
damage = 0,0
animtype = Light
hitflag = maf
guardflag = ma
numhits = 0
sparkno = s7030
guard.sparkno = s7001
sparkxy = 0,-70
hitsound = -1
guardsound = S6,0
pausetime = 0,0
ground.hittime = 15
ground.type = high
ground.slidetime = 5
ground.velocity = 0,0
air.velocity = 0,0
p2facing = 1
kill = 0
p2stateno= 3060




[State 3005, 4]
type = ChangeState
trigger1 = moveguarded; = 1
value = 3205
ctrl=1

[State 3005, 4]
type = ChangeState
trigger1 = movehit;movehit = 1
value = 3102

[State 3005, end]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl=1

;-----------------------—•‘ij
[Statedef 3102]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 3102

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
pos =  70,0



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

[State 0, EnvShake]
type = EnvShake
trigger1 = animelemtime(15)=0
time = 60
freq =70
ampl = -6
phase = 90
ignorehitpause = 1
persistent = 1

[state 2300, super a]
type = PAUSE
trigger1 = animelem=15
time = 120
movetime = 120

[State 6034, HyperBG]
type=helper
trigger1 = AnimElem =16
helpertype=normal
stateno=6029
ID=6034
name="HyperBG"
postype=P1
supermovetime=99999
pausemovetime=99999
ownpal=1
ignorehitpause=1
size.xscale=1
size.yscale=1

[State 2300, 1];wŒ‚‚Â‰¹x
type = PlaySnd
trigger1 = AnimElem = 24
value = s2200,4

[State 2300, 1];wŒ‚‚Â‰¹x
type = PlaySnd
trigger1 = AnimElem = 14
value = s3300,0

[State 2300, 1];wŒ‚‚Â‰¹x
type = PlaySnd
trigger1 = AnimElem = 15
value = s1,13

[State 2001, Var]
type = Varset
trigger1 = animelem=15
var(10) = 90

[State 0, Explod]
type = Explod
trigger1 =animelem=15
anim = 7061
ID = 7061
pos = 0,5
postype = p1
bindtime = -1
removetime = 200
pausemovetime = 9999999
supermovetime = 9999999
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 =animelem=22
anim = 3030
ID = 3030
pos = -40,-50
postype = p1
bindtime = -1
removetime = 45
pausemovetime = 45
supermovetime = 45
scale = .5,.5
sprpriority = -1
ownpal = 1
removeongethit = 1


[State 0, Helper]
type = Helper
trigger1 = animelem=24
helpertype = normal ;player
name = "superkamehameha"
ID = 3150
stateno = 3150
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999999
pausemovetime = 999999

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

;SUPER KAMEHAMEHA
;---------------------------------------------------
[Statedef 3200]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
poweradd = -3000
anim = 3100
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
ID = 2063
stateno = 2063
pos = 0,-60
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48
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
anim = 7060
ID = 7060
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
value = 2200,1


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
anim = 3101

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


[State 3005, hit]
type = hitdef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 7
attr = S, ha; SP
damage = 0,0
animtype = light
hitflag = maf
guardflag = ma
numhits = 0
sparkno = -1
guard.sparkno = s7030
sparkxy = 0,-70
hitsound = -1
guardsound = S6,0
pausetime = 0,0
ground.hittime = 15
ground.type = high
ground.slidetime = 5
ground.velocity = 0,0
air.velocity = 0,0
p2facing = 1
kill = 0
p2stateno= 3060

[State 3005, 4]
type = ChangeState
trigger1 = moveguarded; = 1
value = 3205
ctrl=1

[State 3005, 4]
type = ChangeState
trigger1 = movehit;movehit = 1
value = 3202

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
pos =  70,0


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
type = pause
trigger1 = animelem=16
time = 190
movetime = 190
anim = -1

[State 2300, 1];wŒ‚‚Â‰¹x
type = PlaySnd
trigger1 = AnimElem = 24
value = s2200,4

[State 2300, 1];wŒ‚‚Â‰¹x
type = PlaySnd
trigger1 = AnimElem = 22
value = s1400,0

[State 2300, 1];wŒ‚‚Â‰¹x
type = PlaySnd
trigger1 = AnimElem = 16
value = s1,13


[State 0, EnvShake]
type = EnvShake
trigger1 = animelemtime(17)=0
time = 60
freq =70
ampl = -6
phase = 90
ignorehitpause = 1
persistent = 1

[State 0, Explod]
type = Explod
trigger1 =animelem=17
anim = 7060
ID = 7060
pos = 0,5
postype = p1
bindtime = -1
removetime = 240
pausemovetime = 99999
supermovetime = 99999
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 =animelem=22
anim = 3030
ID = 3030
pos = -40,-50
postype = p1
bindtime = -1
removetime = 45
pausemovetime = 99999
supermovetime = 99999
scale = .5,.5
sprpriority = -1
ownpal = 1
removeongethit = 1

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
size.xscale=1
size.yscale=1

[State 0, Helper]
type = Helper
trigger1 = animelem=24
helpertype = normal ;player
name = "superkamehameha"
ID = 3250
stateno = 3250
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
pausemovetime = 99999
supermovetime = 99999



[State 1200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------
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

;----------------------------------------------------------------------------------
;Kaio Ken Start 
[Statedef 3300]
type=S
movetype=A
physics=N
anim=6000
poweradd=0
ctrl=0
velset=0,0
sprpriority=2

[State 2001, Var]
type = Varset
trigger1 = animelem=1
var(10) = 60

[State 3300,0]
type = VarAdd
trigger1=time = 0
v = 37
value = 0

[State 3300, VarSet]
type = VarSet
trigger1 = time = 0
var(8)=Ifelse(enemynear,Movetype=H,1,0)
ignorehitpause = 1

[State 3300,0]
type = PosFreeze
trigger1 = Time >= 0

[State 3100, NotHitBy]
type=NotHitBy
trigger1=AnimElemTime(7) < 0
value=SCA


[State 3300, No Corner Push]
type=VarSet
trigger1=!time
fvar(5)=0
[State 3300, Unguardable]
type=VarSet
trigger1=!time && NumEnemy
trigger1=(EnemyNear, StateNo !=[120,155])
var(17)=50
[State 3300, Super Cancel Flag]
type=VarSet
trigger1=!Time
var(21)=(PrevStateNo=[1000,2999]) && var(6)
[State 3300, Hyper Cancel Flag]
type=VarSet
trigger1=!Time
var(22)=(PrevStateNo=[3000,4999]) && var(7)
[State 3300, Super Cancel Flash]
type=PalFX
trigger1=var(21) || var(22)
trigger1=!(Time % 2) && Time <=12
time=1
add=255,255,255
ignoreHitPause=1
[State 3300, Super Cancel Juggle Reset]
type=VarSet
trigger1=!Time
trigger1=var(21) || var(22)
var(15)=0
ignoreHitPause=1
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
[State 3300, SuperPause FX]
type=Helper
trigger1 = AnimElem = 7
helperType=Normal
stateNo=2061
ID=2061
name="Superpause FX"
posType=P1
pos=0,-80
superMoveTime=255
size.xScale=1
size.yScale=1
ownPal=1
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
[State 3300, SuperPause]
type=SuperPause
trigger1 = AnimElem = 1
time=50
moveTime=48
p2DefMul=1
unHittable=1
anim=-1
sound=s3000,0
darken=0
poweradd=-1000

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S3300,0
;volumescale = 0
;channel = -1
;lowpriority = -1
;freqmul = 1.0
;loop = 0
;pan = 0
;abspan = 
;ignorehitpause = 
;persistent = 



[State 3300,17]
type = ChangeState
trigger1 = animtime = 0
value = 3301
;-------------------------------------------------------------------------------
;Kaio Ken Dash
[Statedef 3301]
type = A
movetype = A
physics = N
anim = 6010

[State 6034, HyperBG]
type=helper
trigger1 = time=0
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

[State 3301, NotHitBy]
type=NotHitBy
trigger1=AnimElemTime(3) < 0
time=1
value=SCA

[State 3301,0]
type = VelSet
trigger1 = Time = 0
x = 12.5
y = -3.0

[State 3301,1]
type = VelAdd
trigger1 = Time >= 0
x = .24
y = .4

[State 3301,2]
type = ChangeState
trigger1 = AnimTime = 0
value = 3302
;-----------------------------------------------------------------------------------------------
;Kaio Ken HIT
[Statedef 3302]
type = A
movetype = A
physics = N
anim = 6020


[State 3302, VarSet]
type = VarSet
trigger1 =!time
var(2)=0
ignorehitpause =1

[State 3302, VarAdd]
type = VarAdd
trigger1=movecontact
var(2)=1

[State 3302, Width]
type = Width
trigger1 =animelemtime(1)>=0&&animelemtime(2)<0
edge = 10,0
player = 20,0



[State 3302,0]
type = VarAdd
trigger1 = Time = 0
v = 37
value = 1

[State 3302,0]
type = VelSet
trigger1 = Time = 0
y = 0

[State 3101, Width]
type = Width
trigger1 =animelemtime(1)>=0&&animelemtime(5)<0
edge = 20,0
player = 40,0


[State 3302, Hit 1&2]
type = HitDef
trigger1= var(2)<=7
attr = S, HA
damage=20,12
priority = 4, hit
animtype = Hard
getpower = 0, 0
givepower = 35, 35
guardflag = MA
hitflag = MAF
hitsound=S2+10*var(44), 5
guardsound = S130,0
pausetime = 4,4
guard.pausetime = 4,4
sparkNo =s7030+(random%8)
guard.sparkNo = s7001
sparkXY = -10 + 0 * (var(35) := 100), var(36) := -69
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.slidetime = 40
ground.hittime  = 40
guard.hittime = 40
ground.velocity = -4, 0
air.velocity = -4.5, -2.2
guard.velocity = -11
airguard.velocity = -4, -3
airguard.ctrlTime = 16
ground.cornerPush.velOff = -10
guard.cornerPush.velOff = -10
air.cornerPush.velOff = -10
yaccel = .5
fall = 0
air.fall = 1
fall.recover = 0
forcestand = 1
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time = 16
envshake.ampl = 4
envShake.freq = 120
kill =0
p2facing = 1

[State 3303]
type = ChangeState
trigger1 = animtime = 0
value = 3304
;-------------------------------------------------------------------------------
;Kaio Ken Repeater
[Statedef 3303]
type = A
movetype = A
physics = N
anim = 6030

[State 3303, Width]
type = Width
trigger1 =animelemtime(1)>=0&&animelemtime(8)<0
edge = 10,0
player = 40,0


[State 3302,0]
type = VelSet
trigger1 = Time = 0
y = 0




[State 3302, Hit 1&2]
type = HitDef
trigger1 = Animelem = 6
attr = S, HA
damage= 30,12
priority = 4, hit
animtype = Hard
getpower = 0, 0
givepower = 35, 35
guardflag = MA
hitflag = MAF
hitsound=S2+10*var(44), 5
guardsound = S130,0
pausetime = 10,12
guard.pausetime = 12,12
sparkNo = s7030+(random%8)
guard.sparkNo = s7001
sparkXY = -10 + 0 * (var(35) := 100), var(36) := -69
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.slidetime = 40
ground.hittime  = 40
guard.hittime = 40
ground.velocity = -4, 0
air.velocity = -4.5, -2.2
guard.velocity = -11
airguard.velocity = -4, -3
airguard.ctrlTime = 16
ground.cornerPush.velOff = -10
guard.cornerPush.velOff = -10
air.cornerPush.velOff = -10
yaccel = .5
fall = 0
air.fall = 1
fall.recover = 0
forcestand = 1
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time = 16
envshake.ampl = 4
envShake.freq = 120
kill =0


[State 3303]
type = ChangeState
trigger1 = time = 44
value = 3304


;-------------------------------------------------------------------------------
;Kaio Ken Final hit
[Statedef 3304]
type = A
movetype = A
physics = N
anim = 6060


[State 3304, Width]
type = Width
trigger1 =animelemtime(1)>=0&&animelemtime(8)<0
edge = 10,0
player = 50,0


[State 3304,0]
type = VelSet
trigger1 = Animelem = 6
x = 3


[State 3304, Hit 1&2]
type = HitDef
trigger1 = time = 0
attr = S, HA
damage=20,12
priority = 4, hit
animtype = Hard
getpower = 0, 0
givepower = 35, 35
guardflag = MA
hitflag = MAF
hitsound=S2,14
guardsound = S130,0
pausetime = 10,9
guard.pausetime = 12,12
sparkNo = s7030+(random%8)
guard.sparkNo = s7001
sparkXY = -10 + 0 * (var(35) := 100), var(36) := -47
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.slidetime = 40
ground.hittime  = 40
guard.hittime = 40
ground.velocity = -15, -8
air.velocity = -8, -8
guard.velocity = -8
airguard.velocity = -8, -3
airguard.ctrlTime = 16
ground.cornerPush.velOff = -10
guard.cornerPush.velOff = -10
air.cornerPush.velOff = -10
yaccel = .5
fall = 1
air.fall = 1
fall.recover = 0
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time = 16
envshake.ampl = 4
envShake.freq = 120
p2stateno = 1125
kill =1

[State 3304,1]
type = ChangeState
trigger1 = AnimTime = 0
value = 3305

;-------------------------------------------------------------------------------
;Kaio Ken Falling
[Statedef 3305]
type = A
movetype = A
physics = N
anim = 1150


[State 3305, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
ID = 7993
ignorehitpause = 1

[State 3305,0]
type = VelAdd
trigger1 = Time >= 0
x = -.3
y = .28

[State 3305,0]
type = VelSet
trigger1 = Vel X <= 0
x = 0

[State 3305,1]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 1105;3306
;------------------------------------------------------------------------------------------
;Kaio Ken Landing
[Statedef 3306]
type = S
movetype = I
physics = S
anim = 1230
velset = 0, 0
ctrl = 0

[State 3306,0]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3306, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 3306, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8106
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3306,1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;SPIRIT BOMB
[Statedef 3400]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
poweradd = -3000
anim = 3100
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
ID = 2063
stateno = 2063
pos = 0,-60
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48
[State 7500, portrait]
type=helper
trigger1=!time
helpertype=normal
stateno=7511
ID=7511
name="Super Charge Portrait"
postype=p1
supermovetime=300
ownpal=1

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
sound = s3000, 2
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
value = 2200,1


[State 3000, e]
type = ChangeState
trigger1 = time=30
value = 3405


;-----------------------------“Ëi
[Statedef 3405]
type = A
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 3305

[State 3005, nothit]
type = NotHitBy
trigger1 = movehit = 1
value = SCA
ignorehitpause = 1

[State 3005, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 100,2

[State 3005, 1]
type = PosAdd
trigger1 = Time > 0
x = 15
[State 3005, 2]
type = VelSet
trigger1 = Time = 2
x = 8

[State 3005, 3]
type = VelAdd
trigger1 = Time > 2
x = -1.15

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

[State 3050, hit1]
type = hitdef
trigger1 = AnimElem = 1
attr = A,HA
damage = 90,10
animtype = heavy
hitflag = MAf
sparkno = s7030+(random%8);-1
guard.sparkno = s7001
sparkxy = 10,-55
guardflag = MA
pausetime = 23,28
hitsound = S2,3
guardsound = S2,6
ground.hittime = 20
ground.type = high
ground.slidetime = 20
guard.velocity = -10.6
ground.velocity = -10.6,-3.5
air.velocity = -10.6,-3.5
pausetime = 20,19
guard.pausetime = 18,9
envshake.time = 25
envshake.ampl = 5
fall = 1
air.fall = 1
fall.recover = 0
kill = 0
p2stateno= 3360
p2facing = 1
getpower = 0

[State 3005, env]
type = EnvColor
trigger1 = movehit
value = 245,245,245
time = 2
ignorehitpause = 0
;persistent = 0

[State 3005, 4]
type = ChangeState
trigger1 = movehit = 1 && win = 0
value = 3410

[State 3005, end]
type = ChangeState
trigger1 = Animtime = 0
trigger2 = movehit = 1 && win = 1
trigger3 = moveguarded
value = 3105
ctrl = 0


;-----------------------’Ç‚¢“¢‚¿
[Statedef 3410]
type    = A
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 3310

[State 3010, screen]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1,0

[State 3010, nothit]
type = NotHitBy
trigger1 = AnimElem = 1, >= 1 && AnimElem = 15, <= 1
value = SCA

[state 3010, followup1]
type = hitdef
trigger1 = animelem = 12
attr = A,HA
damage = 90, 10
animtype = hard
guarDFlag = ma
hitflag = maf
pausetime = 10,15
sparkno = s7030+(random%8);-1
guard.sparkno = s7001
sparkxy = -40,-70
hitsound = s2,3
guardsound = s2,4
ground.hittime = 20
ground.type = high
ground.slidetime = 20
ground.velocity = 10.6,-6
air.velocity = 10.6,-6
fall = 1
air.fall = 1
fallrecover = 0
kill = 0
envshake.time = 20
envshake.freq = 90
envshake.ampl = -7
;p2stateno= 3060
getpower = 0

[State 3010, targetState]
type = targetState
trigger1 = MoveHit = 1
value = 3360


[State 3010, zanzou2]
type = Explod
trigger1 = animelem = 5
anim = 3350;362
ID = 3350;362
postype = p1
pos = 0,0
bindtime = 1
sprpriority = 2
ownpal = 1
removetime = 10
supermovetime = 10
facing = -1


[State 3010, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 700,0

[state 3010, teleport]
type = bindtotarget
trigger1 = anim = 3310 && animelem = 5
time = -1
pos = -30,85,head;

[State 3010, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 3415
ctrl = 0

;-----------------------’Ç‚¢“¢‚¿2
[Statedef 3415]
type    = A
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 3315


[State 3015, muteki]
type = NotHitBy
trigger1 = 1
value = SCA

[state 3015, followup2]
type = hitdef
trigger1 = animelem = 12
attr = A,HA
damage = 90, 10
animtype = hard
guarDFlag = ma
hitflag = maf
pausetime = 12,12
sparkno = s7030+(random%8);-1
guard.sparkno = s7001
sparkxy = -20,-40
hitsound = s2,4
guardsound = s2,6
ground.hittime = 20
ground.type = high
ground.slidetime = 20
ground.velocity = -13.6,11
air.velocity = -13.6,11
fall = 1
air.fall = 1
fallrecover = 0
kill = 0
envshake.time = 20
envshake.freq = 90
envshake.ampl = -7
;fall.envshake.time = 30
;fall.envshake.freq = 70
;fall.envshake.ampl = -5
;fall.envshake.phase = 20
p2stateno= 3360
id = 3315
p2facing = 1
getpower = 0

[State 3015, zanzou]
type = Explod
trigger1 = animelem = 1
anim = 3350;362
ID = 3350;362
postype = p1
pos = -13,0
bindtime = 1
sprpriority = 2
ownpal = 1
removetime = 10
supermovetime = 10
facing = -1

[State 3015, zanzou2]
type = Explod
trigger1 = animelem = 3
anim = 3350;362
ID = 3350;362
postype = p1
pos = 0,0
bindtime = 1
sprpriority = 2
ownpal = 1
removetime = 10
supermovetime = 10

[State 3015, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 700,0

[state 3015, teleport]
type = bindtotarget
trigger1 = anim = 3315 && animelem = 3
time = -1
pos = 60,75,head


[State 0, Pause]
type = Pause
trigger1 = animelem=20;15
time = 110
movetime = 110

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=17
value = S3200,34




[State 3015, zanzou]
type = Explod
trigger1 = animelem = 18
anim = 3325;362
ID = 3325;362
postype = p1
pos = 0,-260
bindtime = 1
sprpriority = 2
ownpal = 1
removetime = 95
pausemovetime = 9999
supermovetime = 9999
facing = 1
scale=.3,.3



;ignorehitpause =
;trans = 
;persistent =
;supermove = 0
;pausemove = 0



[State 3015, TargetState]
type = TargetState
trigger1 = movehit && p2stateno = 5100
trigger2 = movehit && p2stateno = 5600
value = 3375
elem = 1



[State 3015, bg]
type = assertspecial
trigger1 = time = [59,150]
flag = noFG
flag2 = noBG
flag3 = nobardisplay
ignorehitpause = 1


[State 3015, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 3320
ctrl = 0


;-----------------------------‚²‚Á‚Â‚¢ƒfƒXƒ{[ƒ‹
[Statedef 3320]
type = A
movetype = A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3320
sprpriority = 3

[State 3020, muteki]
type = NotHitBy
trigger1 = 1
value = SCA



[State 3050, hadouken]
type=helper
trigger1= animelem=2
helpertype=normal
stateno=3325
ID=3325
name="SPIRITBOMB"
postype=p1
pos=63,-23
ownpal=1
size.xscale = .3;.5
size.yscale =.3; .7
pausemovetime = 999999
supermovetime = 999999

[State 3020, width]
type = width
trigger1 = 1
edge = 40,0

[State 3020, bg]
type = assertspecial
trigger1 = time = [0,91]
flag = noFG
flag2 = noBG
flag3 = nobardisplay
ignorehitpause = 1



[State 3020, PlaySnd];Œ‚‚Â
type = PlaySnd
trigger1 = animelem = 24
value = 2000,1


[state 3020, Vel]
type = Velset
trigger1 = animelem = 8
y = 6

[State 2101, snd]
type = playsnd
trigger1 = animelem = 8
value = s100,0

[State 3020, e]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 1105;3325
ctrl = 0

;-------------------’…’n
