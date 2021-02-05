;---------------------------------------------------------------------------
; Burning Attack - Start
[statedef 3000]
type = s
movetype = a
anim = 3000
ctrl = 0
velset = 0,0
facep2 = 1
poweradd = -1000
sprpriority = 3

[State SuperPause]
type = SuperPause
trigger1 = !time
time = 40
movetime = 40
anim = -1
sound = s3000,0
darken = 1
unhittable = 1

[State charge fx helper]
type = Helper
trigger1 = !time
name = "Super-Charge"
ID = 6810
stateno = 6810
pos = floor(const(size.xscale)*25), floor(const(size.yscale)*-90)
postype = p1
ownpal = 1
supermovetime = 999
Pausemovetime = 999

[state voice]
type = playsnd
trigger1 = !time
value = s0,3000
channel = 0

[state changeanim]
type = changeanim
trigger1 = anim = 3000
trigger1 = time = 14
value = 3001

[state end]
type = changestate
trigger1 = time >= 40
value = 3002

;---------------------------------------------------------------------------
; Burning Attack - Fire
[statedef 3002]
type = u
movetype = u
anim = 3002
sprpriority = 3

[State Beam Hitbox Helper]
type = Helper
trigger1 = !time
name = "Beam HitBox"
ID = 3010
stateno = 3010
pos = floor(const(size.xscale)*25), floor(const(size.yscale)*-90)
postype = p1
facing = 1
ownpal = 1
size.xscale = .75
size.yscale = .75

[state Beam Head Helper]
type = helper
trigger1 = !time
name = "Beam Head"
id = 3015
stateno = 3015
pos = floor(const(size.xscale)*40), floor(const(size.yscale)*-90)
postype = p1
facing = 1
ownpal = 1
size.xscale = .75
size.yscale = .75

[state Beam Tail Helper]
type = helper
trigger1 = !time
name = "Beam Tail"
id = 3020
stateno = 3020
pos = floor(const(size.xscale)*25), floor(const(size.yscale)*-90)
postype = p1
facing = 1
ownpal = 1
size.xscale = .75
size.yscale = .75

[State hand explod]
type = Explod
trigger1 = !time
anim = 7900
ID = 7900
pos = floor(const(size.xscale)*25), floor(const(size.yscale)*-90)
bindtime = -1
removetime = -1
scale = .2, .25
sprpriority = 4
ownpal = 1
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999

[State dust]
type = Explod
trigger1 = !time
anim = 9912
ID = 9912
pos = 0,0
postype = p1
bindtime = 1
removetime = -2
supermovetime = 9999
pausemovetime = 9999
scale = .5,.5
sprpriority = 4
ownpal = 1

[state sfx]
type = playsnd
trigger1 = !time
value = s3000,1
channel = 4

[State Modify hand]
type = ModifyExplod
triggerall = numexplod(7900)
trigger1 = numhelper(3010)
trigger1 = helper(3010), stateno = 3011
ID = 7900
scale = .2, ifelse(.25-(helper(3010),time*.025)>0, .25-(helper(3010),time*.025), 0)

[state end]
type = changestate
trigger1 = time >= 200
trigger2 = time && !numhelper(3010)
value = 3003

;---------------------------------------------------------------------------
; Burning Attack - End
[statedef 3003]
type = u
movetype = i
anim = 3003
sprpriority = 1

[state removeexplod]
type = removeexplod
trigger1 = numexplod(7900)
id = 7900

[state end]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Burning Attack - Beam HitBox Helper
[statedef 3010]
type = s
movetype = a
physics = n
sprpriority = 4

[State BindToParent]
type = BindToParent
trigger1 = 1
pos = floor(parent,const(size.xscale)*25), floor(parent,const(size.yscale)*-90)
ignorehitpause = 1

[state destroyself]
type = destroyself
trigger1 = parent, stateno != 3002

[state anim]
type = changeanim
trigger1 = !time
trigger1 = !prevstateno
value = 7801

[state freeze]
type = changeanim
trigger1 = movecontact
value = anim
elem = (animelemno(0))-1

[state reset hitcount]
type = varset
trigger1 = !time
trigger1 = !prevstateno
var(8) = 8

[state update hitcount]
type = varadd
trigger1 = !time
trigger1 = prevstateno
var(8) = -1

[state reset pausetime]
type = varset
trigger1 = !time
var(9) = ifelse(prevstateno=3012||!prevstateno, 0, 8)

[state update pausetime]
type = varadd
trigger1 = var(9)
var(9) = -1

[State HitDef]
type = HitDef
trigger1 = var(8) > 1
trigger1 = !var(9)
attr = S,HP
hitflag = MAF
guardflag = MA
animtype = hard
damage = floor(parent, fvar(39)*40),7
pausetime = 0,8
sparkno = -1 + 0*(var(3) := 8013)
guard.sparkno = -1 + 0*(var(6) := 8001)
sparkxy = 0,0
hitsound = S1000,1
guardsound = S6,0
ground.type = High
ground.slidetime = 18
ground.hittime = 20
air.hittime = 20
yaccel = .58
ground.velocity = 0,0
air.velocity = 0,0
ground.cornerpush.veloff = 0
fall = 0
getpower = 0,0
givepower = 30,30
envshake.time = 15
envshake.freq = 100
envshake.ampl = 5

[State HitDef]
type = HitDef
trigger1 = var(8) = 1
trigger1 = !var(9)
attr = S,HP
hitflag = MAF
guardflag = MA
animtype = hard
damage = floor(parent, fvar(39)*60),7
pausetime = 0,8
sparkno = -1 + 0*(var(3) := 8013)
guard.sparkno = -1 + 0*(var(6) := 8001)
sparkxy = 0,0
hitsound = S1000,1
guardsound = S6,0
ground.type = High
ground.slidetime = 18
ground.hittime = 20
air.hittime = 20
yaccel = .58
ground.velocity = -7,-7
air.velocity = -7,-7
ground.cornerpush.veloff = 0
fall = 1
fall.recover = 0
getpower = 0,0
givepower = 30,30
envshake.time = 15
envshake.freq = 100
envshake.ampl = 5

[State Hit Sparks]
type = Helper
triggerall = MoveContact = 1
triggerall = prevstateno != 3012
trigger1 = MoveHit = 1 && NumEnemy
trigger1 = var(3) = 8010 || var(3) = 8011 || var(3) = 8012 || var(3) = 8013 || var(3) = 8014
trigger2 = MoveGuarded = 1 && NumEnemy
trigger2 = var(6) = 8000 || var(6) = 8001
stateNo = ifElse(MoveGuarded, var(6), var(3))
ID = 8000
name = "Spark"
postype = p1
pos = floor((enemynear,pos x + (enemynear,const(size.ground.back)*facing) - pos x)*facing),0
facing = -1
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[state update damage dampener]
Type=Parentvarset
Trigger1=movehit=1
fvar(39)=parent,fvar(39)*.9

[State HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP

[state hitoverride]
type = hitoverride
trigger1 = 1
attr = sca, np, sp, hp
stateno = ifelse(!var(8), 3011, 3012)

[state again]
type = changestate
trigger1 = movecontact = 1
value = stateno

[state end]
type = changestate
trigger1 = time >= 60
trigger2 = !var(8)
value = 3011

;---------------------------------------------------------------------------
; Burning Attack - Beam HitBox Die
[statedef 3011]
type = u
movetype = i
sprpriority = 4
anim = 1

[state destroy]
type = destroyself
trigger1 = time >= 10
trigger2 = parent, stateno != 3002

;---------------------------------------------------------------------------
; Burning Attack - Beam HitBox Hitoverride
[statedef 3012]
type = u
movetype = i
sprpriority = 4

[state nothiby]
type = nothitby
trigger1 = 1
value = sca

[state changeanim]
type = changeanim
trigger1 = 1
value = anim
elem = animelemno(0) - 1

[state destroyself]
type = destroyself
trigger1 = movereversed
trigger2 = parent, stateno != 3002

[state end]
type = changestate
trigger1 = time > 3
value = 3010

;---------------------------------------------------------------------------
; Burning Attack - Beam Head Helper
[statedef 3015]
type = s
movetype = i
physics = n
anim = 1
sprpriority = 4

[state velset]
type = velset
trigger1 = numhelper(3010)
x = ifelse(helper(3010),stateno=3010&&helper(3010),time<2, 2,20)

[state velset]
type = velset
trigger1 = numhelper(3010)
trigger1 = helper(3010), stateno = 3012
x = 0

[State Beam Head explod]
type = Explod
trigger1 = !time
anim = 7800
ID = 7800
pos = 0,0
bindtime = -1
removetime = -1
scale = .7, .7
sprpriority = 4
ownpal = 1
supermovetime = 9999
pausemovetime = 9999

[state removeexplod]
type = removeexplod
triggerall = numexplod(7800)
trigger1 = parent, stateno != 3002
id = 7800

[state destroyself]
type = destroyself
trigger1 = parent, stateno != 3002
trigger2 = !numhelper(3010)

[state end]
type = changestate
trigger1 = numhelper(3010)
trigger1 = helper(3010), stateno = 3011
value = 3016

;---------------------------------------------------------------------------
; Burning Attack - Beam Head Die
[statedef 3016]
type = u
movetype = i
sprpriority = 4

[state velset]
type = velset
trigger1 = !time
x = vel x * .35

[State ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(7800)
ID = 7800
scale = .7, ifelse(.7-(time*.07)>0, .7-(time*.07), 0)
ignorehitpause = 1

[state removeexplod]
type = removeexplod
triggerall = numexplod(7800)
trigger1 = time >= 10
trigger2 = parent, stateno != 3002
id = 7800
ignorehitpause = 1

[state destroy]
type = destroyself
trigger1 = time >= 10
trigger2 = parent, stateno != 3002
trigger3 = !numhelper(3010)

;---------------------------------------------------------------------------
; Burning Attack - Beam Tail Helper
[statedef 3020]
type = s
movetype = a
physics = n
anim = 7602
sprpriority = 4

[state noshadow]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State Trans]
type = Trans
trigger1 = 1
trans = add
ignorehitpause = 1

[state vel x]
type = varset
trigger1 = numhelper(3010)
trigger1 = numhelper(3015)
var(10) = ifelse(helper(3010),stateno=3010&&helper(3010),time<2, 2,20)*facing

[state posset]
type = posset
trigger1 = numhelper(3010)
trigger1 = numhelper(3015)
x = (helper(3015),pos x + helper(3010),pos x + var(10))*.5
ignorehitpause = 1

[State AngleSet]
type = AngleSet
trigger1 = !time
value = 1

[State AngleDraw]
type = AngleDraw
trigger1 = numhelper(3010)
trigger1 = numhelper(3015)
value = -abs(helper(3015),pos x - helper(3010),pos x)*.000005
scale = abs(helper(3015),pos x - helper(3010),pos x)*.133, .4+(sin(time*10)*.03)
ignorehitpause = 1

[state destroyself]
type = destroyself
trigger1 = parent, stateno != 3002
trigger2 = !numhelper(3010)

[state end]
type = changestate
trigger1 = numhelper(3010)
trigger1 = helper(3010), stateno = 3011
value = 3021

;---------------------------------------------------------------------------
; Burning Attack - Beam Tail Helper Die
[statedef 3021]
type = u
movetype = i
sprpriority = 4

[state noshadow]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State Trans]
type = Trans
trigger1 = 1
trans = add
ignorehitpause = 1

[state posset]
type = posset
trigger1 = numhelper(3010)
trigger1 = numhelper(3015)
x = (helper(3015),pos x + helper(3010),pos x + var(10))*.5
ignorehitpause = 1

[state angledraw]
type = angledraw
trigger1 = !time
scale = 1,1

[State AngleDraw]
type = AngleDraw
trigger1 = time
trigger1 = numhelper(3010)
trigger1 = numhelper(3015)
value = -abs(helper(3015),pos x - helper(3010),pos x)*.000005
scale = abs(helper(3015),pos x - helper(3010),pos x)*.133, ifelse(.25-(time*.025)>0, .25-(time*.025), 0)
ignorehitpause = 1

[state destroy]
type = destroyself
trigger1 = time >= 10
trigger2 = parent, stateno != 3002
trigger3 = !numhelper(3010)