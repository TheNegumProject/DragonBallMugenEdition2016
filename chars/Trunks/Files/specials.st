;---------------------------------------------------------------------------
; Ki Blast Light
[statedef 1000]
type = s
movetype = a
physics = s
ctrl = 0
anim = 1000
sprpriority = 2
poweradd = 25
facep2 = 1

[state voice]
type = playsnd
trigger1 = !time
value = s0, 1000 + ((random%3)*10)
channel = 0

[State Helper]
type = Helper
trigger1 = !animelemtime(3)
name = "Ki Blast"
ID = 10000 
stateno = 10000
pos = floor(56*const(size.xscale)), floor(-84*const(size.yscale))
postype = p1
facing = 1
ownpal = 1

[State Explod]
type = Explod
trigger1 = !animelemtime(3)
anim = 10002
ID = 10002
pos = floor(60*const(size.xscale)), floor(-84*const(size.yscale))
postype = p1
facing = 1
removetime = -2
pausemovetime = 0
scale = .9*const(size.xscale), .9*const(size.yscale)
sprpriority = 5
ownpal = 1
removeongethit = 0

[state playsnd]
type = playsnd
trigger1 = !animelemtime(3)
value = s1000,0

[state end]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Ki Blast Medium
[statedef 1010]
type = s
movetype = a
physics = s
ctrl = 0
anim = 1000
sprpriority = 2
poweradd = 25
facep2 = 1

[state voice]
type = playsnd
trigger1 = !time
value = s0, 1000 + ((random%3)*10)
channel = 0

[State Helper]
type = Helper
trigger1 = !animelemtime(3)
name = "Ki Blast"
ID = 10000 
stateno = 10000
pos = floor(56*const(size.xscale)), floor(-84*const(size.yscale))
postype = p1
facing = 1
ownpal = 1

[State Explod]
type = Explod
trigger1 = !animelemtime(3)
anim = 10002
ID = 10002
pos = floor(60*const(size.xscale)), floor(-84*const(size.yscale))
postype = p1
facing = 1
removetime = -2
pausemovetime = 0
scale = .9*const(size.xscale), .9*const(size.yscale)
sprpriority = 5
ownpal = 1
removeongethit = 0

[state playsnd]
type = playsnd
trigger1 = !animelemtime(3)
value = s1000,0

[state end]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Ki Blast Hard
[statedef 1020]
type = s
movetype = a
physics = s
ctrl = 0
anim = 1000
sprpriority = 2
poweradd = 25
facep2 = 1

[state voice]
type = playsnd
trigger1 = !time
value = s0, 1000 + ((random%3)*10)
channel = 0

[State Helper]
type = Helper
trigger1 = !animelemtime(3)
name = "Ki Blast"
ID = 10000 
stateno = 10000
pos = floor(56*const(size.xscale)), floor(-84*const(size.yscale))
postype = p1
facing = 1
ownpal = 1

[State Explod]
type = Explod
trigger1 = !animelemtime(3)
anim = 10002
ID = 10002
pos = floor(60*const(size.xscale)), floor(-84*const(size.yscale))
postype = p1
facing = 1
removetime = -2
pausemovetime = 0
scale = .9*const(size.xscale), .9*const(size.yscale)
sprpriority = 5
ownpal = 1
removeongethit = 0

[state playsnd]
type = playsnd
trigger1 = !animelemtime(3)
value = s1000,0

[state end]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;===============================================================================
; Ki blast helper - Projectile
[Statedef 10000]
movetype = A
physics = n
anim = 10000
sprpriority = 4

[State Trans]
type = Trans
trigger1 = 1
trans = add
ignorehitpause = 1

[State no shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
stateno = 10001
ignorehitpause = 1

[State HitBy]
type = hitby
trigger1 = 1
value = SCA,NP,SP,HP

[state attack level var]
type = varset
trigger1 = !time
var(0) = ifelse(parent, stateno = 1000, 0, ifelse(parent, stateno = 1010, 1, 2))

[State VelSet]
type = VelSet
trigger1 = !time
x = 6 + (var(0)*1.5)

[State Hitdef]
type = Hitdef
Triggerall=!movecontact
Triggerall=!movereversed
Trigger1=time>0
attr = S, SP
hitflag = MAF
guardflag	= MA
animtype	= hard
damage = floor(parent, fvar(39)*(32+(var(0)*5))), 8
hitsound = s1000,1
guardsound = s6,0
pausetime	= 1,7
sparkno = -1 + 0*(var(3) := 8013)
guard.sparkno = -1 + 0*(var(6) := 8001)
sparkxy = 0,0
ground.type = high
air.type = high
ground.slidetime = 19
ground.hittime = 20
air.hittime = 18
ground.velocity = -5
air.velocity = -3.5,-1.5
yaccel = .58
ground.cornerpush.veloff = 0
getpower	= 100,100
givepower	= 35,35
envshake.time = 15
envshake.freq = 120
envshake.ampl = -2

[State -2, Hit Detection]
type = VarSet
trigger1 = MoveContact = 1 && var(2) < 0
var(2) = HitPauseTime
ignoreHitPause = 1

[State -2, Hit Sparks]
type = Helper
triggerAll = MoveContact = 1 && var(2) = HitPauseTime
trigger1 = MoveHit = 1 && NumEnemy
trigger1 = var(3) = 8010 || var(3) = 8011 || var(3) = 8012 || var(3) = 8013 || var(3) = 8014
trigger2 = MoveGuarded = 1 && NumEnemy
trigger2 = var(6) = 8000 || var(6) = 8001
stateNo = ifElse(MoveGuarded, var(6), var(3))
ID = 8000
name = "Spark"
postype = P1
pos = 0,0
facing = -1
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State Hit Detection]
type = VarSet
trigger1 = 1
var(2) = -1

[state update damage dampener]
Type=Parentvarset
Trigger1=movehit=1
fvar(39)=parent,fvar(39)*.9

[State DestroySelf]
type = DestroySelf
trigger1 = frontedgedist <= -50
trigger2 = movereversed

[State ChangeState]
type = ChangeState
trigger1 = movecontact
trigger2 = vel y > 0
trigger2 = pos y > -vel y
value = 10001
ctrl = 0

;-----------------------------------------------
; Ki blast helper - Explosion
[Statedef 10001]
movetype = I
anim = 10001
velset = 0,0
sprpriority = 4
movehitpersist = 1
 
[State Trans]
type = Trans
trigger1 = 1
trans = add
ignorehitpause = 1

[State AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State PosSet]
type = PosSet
trigger1 = !time && !movecontact && pos y >= 0
y = 0

[State end]
type = DestroySelf
trigger1 = !animtime

;---------------------------------------------------------------------------
; Sword Rush Light
[statedef 1200]
type = s
movetype = a
physics = n
ctrl = 0
anim = 1200
sprpriority = 2
poweradd = 25
facep2 = 1
velset = 0,0

[state voice]
type = playsnd
trigger1 = !time
value = s0, 1200
channel = 0

[State no push]
type = PlayerPush
trigger1 = time >= 8
value = 0
ignorehitpause = 1

[State width]
type = Width
trigger1 = time >= 8
edge = ceil(54 * const(size.xscale)),0
ignorehitpause = 1

[state velset]
type = velset
trigger1 = !animelemtime(2)
x = 10

[State dust]
type = Explod
trigger1 = !animelemtime(2)
anim = 9912
ID = 9912
pos = 0,0
postype = p1
bindtime = 1
removetime = -2
supermovetime = 9999
pausemovetime = 9999
scale = .5,.5
sprpriority = 3
ownpal = 1

[state sound]
type = playsnd
trigger1 = !animelemtime(2)
value = s1200,0

[State HitDef]
type = HitDef
Triggerall=!movecontact
Triggerall=!movereversed
Trigger1=time>0
attr = s,sa
hitflag = MAF
guardflag = MA
animtype = hard
damage = 72,8
pausetime = 1,16
sparkno = -1 + 0*(var(3) := 8013)
guard.sparkno = -1 + 0*(var(6) := 8000)
sparkxy = var(4):=100, var(5):=-50
hitsound = S5,2
guardsound = S6,0
ground.type = low
ground.slidetime = 17
ground.hittime = 18
air.type = low
air.animtype = back
air.hittime = 20
yaccel = .5
ground.velocity = 0,0
air.velocity = 0,0
ground.cornerpush.veloff = 0
fall = 1
fall.recover = 0
forcestand = 1
getpower = 100,100
givepower = 40,40
envshake.time = 15
envshake.freq = 100
envshake.ampl = 5

[state end]
type = changestate
trigger1 = time >= 15
value = 1201

;---------------------------------------------------------------------------
; Sword Rush End
[statedef 1201]
type = u
movetype = u
physics = s
ctrl = 0
anim = 1201
hitdefpersist = 1
sprpriority = 2

[state velset]
type = velset
trigger1 = !animelemtime(2)
x = 0

[state sound]
type = playsnd
trigger1 = !animelemtime(2)
value = s1200,1

[state idle]
type = statetypeset
trigger1 = !animelemtime(3)
movetype = i

[state sheathe snd]
type = playsnd
trigger1 = !animelemtime(6)
value = s700,1

[state end]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Sword Rush Medium
[statedef 1210]
type = s
movetype = a
physics = n
ctrl = 0
anim = 1200
sprpriority = 2
poweradd = 25
facep2 = 1
velset = 0,0

[state voice]
type = playsnd
trigger1 = !time
value = s0, 1200
channel = 0

[State no push]
type = PlayerPush
trigger1 = time >= 8
value = 0
ignorehitpause = 1

[State width]
type = Width
trigger1 = time >= 8
edge = ceil(54 * const(size.xscale)),0
ignorehitpause = 1

[state velset]
type = velset
trigger1 = !animelemtime(2)
x = 11.5

[State dust]
type = Explod
trigger1 = !animelemtime(2)
anim = 9912
ID = 9912
pos = 0,0
postype = p1
bindtime = 1
removetime = -2
supermovetime = 9999
pausemovetime = 9999
scale = .5,.5
sprpriority = 3
ownpal = 1

[state sound]
type = playsnd
trigger1 = !animelemtime(2)
value = s1200,0

[State HitDef]
type = HitDef
Triggerall=!movecontact
Triggerall=!movereversed
Trigger1=time>0
attr = s,sa
hitflag = MAF
guardflag = MA
animtype = hard
damage = 83,8
pausetime = 1,16
sparkno = -1 + 0*(var(3) := 8013)
guard.sparkno = -1 + 0*(var(6) := 8000)
sparkxy = var(4):=100, var(5):=-50
hitsound = S5,2
guardsound = S6,0
ground.type = low
ground.slidetime = 17
ground.hittime = 18
air.type = low
air.animtype = back
air.hittime = 20
yaccel = .5
ground.velocity = 0,0
air.velocity = 0,0
ground.cornerpush.veloff = 0
fall = 1
fall.recover = 0
forcestand = 1
getpower = 100,100
givepower = 40,40
envshake.time = 15
envshake.freq = 100
envshake.ampl = 5

[state end]
type = changestate
trigger1 = time >= 17
value = 1201

;---------------------------------------------------------------------------
; Sword Rush Hard
[statedef 1220]
type = s
movetype = a
physics = n
ctrl = 0
anim = 1200
sprpriority = 2
poweradd = 25
facep2 = 1
velset = 0,0

[state voice]
type = playsnd
trigger1 = !time
value = s0, 1200
channel = 0

[State no push]
type = PlayerPush
trigger1 = time >= 8
value = 0
ignorehitpause = 1

[State width]
type = Width
trigger1 = time >= 8
edge = ceil(54 * const(size.xscale)),0
ignorehitpause = 1

[state velset]
type = velset
trigger1 = !animelemtime(2)
x = 13

[State dust]
type = Explod
trigger1 = !animelemtime(2)
anim = 9912
ID = 9912
pos = 0,0
postype = p1
bindtime = 1
removetime = -2
supermovetime = 9999
pausemovetime = 9999
scale = .5,.5
sprpriority = 3
ownpal = 1

[state sound]
type = playsnd
trigger1 = !animelemtime(2)
value = s1200,0

[State HitDef]
type = HitDef
Triggerall=!movecontact
Triggerall=!movereversed
Trigger1=time>0
attr = s,sa
hitflag = MAF
guardflag = MA
animtype = hard
damage = 94,8
pausetime = 1,16
sparkno = -1 + 0*(var(3) := 8013)
guard.sparkno = -1 + 0*(var(6) := 8000)
sparkxy = var(4):=100, var(5):=-50
hitsound = S5,2
guardsound = S6,0
ground.type = low
ground.slidetime = 17
ground.hittime = 18
air.type = low
air.animtype = back
air.hittime = 20
yaccel = .5
ground.velocity = 0,0
air.velocity = 0,0
ground.cornerpush.veloff = 0
fall = 1
fall.recover = 0
forcestand = 1
getpower = 100,100
givepower = 40,40
envshake.time = 15
envshake.freq = 100
envshake.ampl = 5

[state end]
type = changestate
trigger1 = time >= 19
value = 1201
