
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
pos = -30, -73
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

;[State 2300, juggle]
;type = AssertSpecial
;trigger1 = 1
;flag = nojugglecheck

;[State 2300, Aura1]
;type = Explod
;trigger1 = animelem = 1
;anim = 1226
;sprpriority = 5
;postype = p1
;pos = 0,0;
;bindtime = -1
;removetime = 87
;removeongethit = 1
;supermove = 1

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
trigger1 = AnimElem = 2
value = 2000,5

[State 2300, 1];wŒ‚‚Â‰¹x
type = PlaySnd
trigger1 = AnimElem = 4
value = 2200,4


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
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = .7
size.yscale = .7

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
;Kamehameha
[Statedef 3001]
type = S
movetype = A
physics = S
anim = 3001
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
pos = -30, -73
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

;[State 2300, juggle]
;type = AssertSpecial
;trigger1 = 1
;flag = nojugglecheck

;[State 2300, Aura1]
;type = Explod
;trigger1 = animelem = 1
;anim = 1226
;sprpriority = 5
;postype = p1
;pos = 0,0;
;bindtime = -1
;removetime = 87
;removeongethit = 1
;supermove = 1

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
trigger1 = AnimElem = 2
value = 2000,5

[State 2300, 1];wŒ‚‚Â‰¹x
type = PlaySnd
trigger1 = AnimElem = 4
value = 2200,4


[State 2300, StopSnd]
type = StopSnd
trigger1 = animelem = 4
channel = 4


[State 0, Helper]
type = Helper
trigger1 = stateno=3001&&animelem=5
helpertype = normal ;player
name = "superkamehameha"
ID = 3006
stateno = 3006
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0
;size.xscale = 
;size.yscale = 
;size.ground.back = 
;size.ground.front = 
;size.air.back = 
;size.air.front = 
;size.height = 
;size.proj.doscale = 
;size.head.pos = , 
;size.mid.pos = , 
;size.shadowoffset = 
;ignorehitpause = 
;persistent = 

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
[Statedef 3010]
type = A
movetype = A
physics = S
anim = 3010
poweradd = -1000
velset = 0,0
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
trigger1 = time = 1
time = 45
movetime = 45
anim = -1
sound = s7, 0
p2defmul = 1
darken = 0

;[State 2300, juggle]
;type = AssertSpecial
;trigger1 = 1
;flag = nojugglecheck

;[State 2300, Aura1]
;type = Explod
;trigger1 = animelem = 1
;anim = 1226
;sprpriority = 5
;postype = p1
;pos = 0,0;
;bindtime = -1
;removetime = 87
;removeongethit = 1
;supermove = 1


[State 2300, 1];w—­‚ß‚é‰¹x
type = PlaySnd
trigger1 = AnimElem = 1
value = 20,0

[State 2300, 1];w—­‚ß‚é‰¹x
type = PlaySnd
trigger1 = AnimElem = 2
value = 2000,5

[State 2300, 1];wŒ‚‚Â‰¹x
type = PlaySnd
trigger1 = AnimElem = 3
value = 2200,4


[State 2300, StopSnd]
type = StopSnd
trigger1 = animelem = 4
channel = 4


[State 0, Super Kamehameha]
type = Helper
trigger1 = anim=3010 && animelem = 3
helpertype = normal
name = "superkamehameha"
ID = 3025
stateno = 3025
pos = -7,-17;0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = .7
size.yscale = .7

[State 1100, Gravity]
type = Veladd
trigger1 = AnimElem=6
y = 6

[State 3020, End]
type = changestate
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 52

[statedef 3020, massenko HA]
type = a
movetype = a
physics = s
anim = 3020
poweradd = -1000
ctrl = 0
velset = 0,0
sprpriority = 2

[State 3060, muteki]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 12

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
pos = -15,-130
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
stateno=6030
ID=6034
name="HyperBG"
postype=Back
supermovetime=99999
pausemovetime=99999
ownpal=1
ignorehitpause=1
size.xscale=1
size.yscale=1
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


[State 2300, 1];w—­‚ß‚é‰¹x
type = PlaySnd
trigger1 = AnimElem = 1
value = 20,0

[State 2300, 1];wŒ‚‚Â‰¹x
type = PlaySnd
trigger1 = AnimElem = 3
value = 2200,4

[State 2300, 1];w‚©‚ß‚Í‚ß”g`Ix
type = PlaySnd
trigger1 = animelem = 1
value = 1400,0
channel = 4


[State 2200, 1];w”g‚Ÿ`IIx
type = PlaySnd
trigger1 = AnimElem = 3
value = 1100,0

;[State 3060, proj]
;type = Explod
;trigger1 = animelem = 4
;anim = 3015
;sprpriority = 3
;postype = p1
;pos = -10,28;
;bindtime = -1
;removetime = 48
;removeongethit = 1
;;supermove = 1
;ownpal = 1


[State 0, Super Masenko]
type = Helper
trigger1 = animelem=4
helpertype = normal
name = "Super Masenko"
ID = 3450
stateno = 3450
pos = 30,-20
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 1
size.yscale = 1

;pausetime = 0,13
;ground.hittime = 15
;ground.type = high
;ground.slidetime = 15
;ground.velocity = -12.5
;air.velocity = -6, 7
;air.fall = 1
;fall=1
;fall.recover = 0
;air.juggle = 10
;envshake.time = 10
;envshake.ampl = 4
;yaccel = .5
;removeongethit = 1



[State 1100, Gravity]
type = Veladd
trigger1 = AnimElem=6
y = 6




[State 3020, End]
type = changestate
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 52
;---------------------------------------------------
[Statedef 3100, rush kamehameha]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
poweradd = -2000
anim = 3100
sprpriority = 2
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
pos = -30, -73
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48

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

[State 1600, 1]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 8

[State 3005, 1]
type = PosAdd
trigger1 = animelem=4
x = 6

[State 3005, 2]
type = VelSet
trigger1 = animelem=5
x = 18

[State 3005, 3]
type = VelAdd
trigger1 = animelem=6
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
trigger1 = time=0
attr = S, HA; SP
damage = 0,0
animtype = heavy
hitflag = maf
guardflag = ma
numhits = 0
sparkno = s7030
guard.sparkno = s7001
sparkxy = 0,-70
hitsound = -1
guardsound = S6,0
pausetime = 0,14
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
triggerall = var(10) = 0 || var(10) != 0
trigger1 = moveguarded; = 1
value = 1105

[State 3005, 4]
type = ChangeState
trigger1 = movehit 
value = 3101

[State 3005, end]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl=1

;---------------------------------
;-----------------------—•‘ij
[Statedef 3101, rush kamehameha]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 3101

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
Trigger1 = AnimElem = 1;,>=1;&& AnimElem = 8,>=1
pos =  70,0




[State 2300, 1];w—­‚ß‚é‰¹x
type = PlaySnd
trigger1 = AnimElem = 17
value = 20,0



[State 2300, 1];w‚©`‚ß`x
type = PlaySnd
trigger1 = animelem = 17
value = 2300,3

[State 2300, 1];w‚Í`‚ß`x
type = null;PlaySnd
trigger1 = animelem = 19
value = 2300,1

[State 2300, StopSnd]
type = StopSnd
trigger1 = animelem = 3
channel = 4

[State 2200, 1];w”g‚Ÿ`IIx
type = PlaySnd
trigger1 = AnimElem = 44
value = 2300,2





[State 3050, hit]
type = hitdef
trigger1 = AnimElem = 3
attr = S, HP
damage = 75,10
animtype = heavy
hitflag = MAf
snap = 40,0;,0
sparkno = s7030
guard.sparkno = s4500
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
trigger1 = animelem = 8
attr = S, HA
damage = 45, 20
animtype = heavy
guarDFlag = ma
hitflag = maf
priority = 7
pausetime = 10,15
sparkno = s7030
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

;[state 2300, super a]
;type = superpause
;trigger1 = animelemtime(14)=19;time = 65
;time = 45
;movetime = 45
;anim = -1

[State 0, Explod]
type = Explod
trigger1 =animelem=15
anim = 7060
ID = 7060
pos = 0,5
postype = p1
bindtime = -1
removetime = 45
pausemovetime =45
supermovetime = 45
scale = .80,.65
sprpriority = 5
ownpal = 1
removeongethit = 1

[state 2300, super a]
type = superpause
trigger1 = animelem=19;time = 65
time = 35
movetime = 35
anim = -1

[State 0, Helper]
type = Helper
trigger1 = animelem=21
helpertype = normal ;player
name = "superkamehameha"
ID = 3055
stateno = 3055
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0
;size.xscale = 
;size.yscale = 
;size.ground.back = 
;size.ground.front = 
;size.air.back = 
;size.air.front = 
;size.height = 
;size.proj.doscale = 
;size.head.pos = , 
;size.mid.pos = , 
;size.shadowoffset = 
;ignorehitpause = 
;persistent = 




[State 1200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Chou Kamehameha
[Statedef 4100]
type = S
movetype = A
physics = S
anim = 3000
poweradd = -3000
velset = 0
ctrl = 0
sprpriority = 2

[State 3000, VarSet]
type = Varset
trigger1 = time = 0
v = 12
value = -100


[State 3000, VarAdd]
type = VarAdd
trigger1 = time >= 20 && Var(12) < 0
v = 12
value = 6
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
ID = 2063
stateno = 2063
pos = -30, -73
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48

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
trigger1 =time=1
anim = 7060
ID = 7060
pos = 0,5
postype = p1
bindtime = -1
removetime = 110
pausemovetime = 99999
supermovetime = 99999
scale = .80,.65
sprpriority = 5
ownpal = 1
removeongethit = 1

;[State 2300, juggle]
;type = AssertSpecial
;trigger1 = 1
;flag = nojugglecheck

;[State 2300, Aura1]
;type = Explod
;trigger1 = animelem = 1
;anim = 1226
;sprpriority = 5
;postype = p1
;pos = 0,0;
;bindtime = -1
;removetime = 87
;removeongethit = 1
;supermove = 1


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
trigger1 = AnimElem = 2
value = 2000,1
volume = 200

[State 2300, 1];wŒ‚‚Â‰¹x
type = PlaySnd
trigger1 = AnimElem = 4
value = 2200,4

[State 2300, StopSnd]
type = StopSnd
trigger1 = animelem = 4
channel = 4

[State 0, Super Kamehameha]
type = Helper
trigger1 = anim=3000&&animelem = 5
helpertype = normal
name = "superkamehameha"
ID = 3050
stateno = 3050
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 1.5
size.yscale = 1.5

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
