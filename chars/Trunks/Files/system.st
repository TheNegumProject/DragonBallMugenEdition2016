; ADD004 BASIC PIEs ReBuilded CNS (21-10-2016)
;==============================================
; This file is Made by PIE.
; there is a backup of this file in the same folder, named "<samename>.a4bk".
; to Restore, use assist tool, or delete this file, then remove ".a4bk" from the neme of backup.
;==============================================

;---------------------------------------------------------------------------
; Jump Start
[Statedef 40]
type    = S
physics = S
anim = 40
ctrl = 0
sprpriority = 1
facep2 = 1

[state playsnd]
type = playsnd
trigger1 = !time
value = 40,1

[State 40, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 40, 2]
type = VarSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 40, 3]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 40, Dust Helper]
type = Helper
trigger1 = !AnimTime
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 40, 4]
type = VelSet
trigger1 = AnimTime = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y) 

[State 40, 5]
type = VelSet
trigger1 = prevstateno = 101 && sysvar(1) = 1
x = const(velocity.runjump.fwd.x)

[State 40, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; Jump Land
[Statedef 52]
type    = S
physics = S
ctrl = 0
anim = 47
velset = 0,0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, 3]
type = CtrlSet
trigger1 = Time = 1
value = 1

[State 52, 4]
type = VelSet
trigger1 = abs(vel x) < Const(movement.stand.friction.threshold)
x = 0

[State 52, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Run forward start
[Statedef 100]
type    = S
physics = n
anim = 100
ctrl = 0
sprpriority = 1
velset = 0,0

[State no walk]
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State no turn]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[state end]
type = changestate
trigger1 = !animtime
value = 101

;---------------------------------------------------------------------------
; Run forward
[Statedef 101]
type    = S
physics = n
anim = 101
sprpriority = 1
velset = const(velocity.run.fwd.x), 0

[State no walk]
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State no turn]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[state playsnd]
type = playsnd
trigger1 = !time
value = 100,0

[state width]
type = width
trigger1 = 1
value = floor(20*const(size.xscale)), floor(10*const(size.xscale))

[State dash lines]
type = Explod
trigger1 = !(time%2)
anim = 7200
id = 7200
pos = floor(-20*const(size.xscale)), floor(-60*const(size.yscale))
postype = p1
random = floor(20*const(size.xscale)), floor(-const(size.head.pos.y)*const(size.yscale))
bindtime = 1
sprpriority = random%4
vel = 1+random%2, 0
scale = const(size.xscale), const(size.yscale)
ownpal = 1
supermovetime = 9999
pausemovetime = 9999

[State dust]
type = Explod
trigger1 = !(time%6)
anim = 7100
id = 7100
pos = 0,0
postype = p1
bindtime = 1
sprpriority = 3
scale = .4*const(size.xscale), .25*const(size.yscale)
ownpal = 1
supermovetime = 9999
pausemovetime = 9999

[state to jump]
type = changestate
trigger1 = command = "holdup"
value = 40

[State end]
type = ChangeState
trigger1 = time > 4
trigger1 = command != "holdfwd" ;|| time = 25
value = 102

;---------------------------------------------------------------------------
; Run forward stop
[Statedef 102]
type    = S
physics = S
anim = 102

[state playsnd]
type = playsnd
trigger1 = !time
value = s40,2

[state to jump]
type = null;changestate
trigger1 = command = "holdup"
value = 40

[state to idle]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Hop backwards
[Statedef 105]
type    = A
physics = A
ctrl = 0
anim = 105
sprpriority = 1

[state dust]
type = explod
trigger1 = !time
anim = 7100
id = 7100
pos = 0, floor(-const(velocity.run.back.y))
postype = p1
bindtime = 1
sprpriority = 3
scale = .4*const(size.xscale), .25*const(size.yscale)
ownpal = 1
facing = -1
supermovetime = 9999
pausemovetime = 9999

[State 105, 1]
type = VelSet
trigger1 = !time
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)

[state playsnd]
type = playsnd
trigger1 = !time
value = 40,1

[State 105, 3]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 106

;---------------------------------------------------------------------------
; Hop backwards (land)
[Statedef 106]
type    = S
physics = S
ctrl = 0
anim = 106
velset = 0,0

[State 106, 1]
type = null;VelSet
trigger1 = Time = 0
y = 0

[State 106, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 106, 4]
type = VelSet
trigger1 = abs(vel x) < Const(movement.stand.friction.threshold)
x = 0

[State 106, 5]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Air dash forward start
[statedef 110]
type = a
physics = n
velset = 0,0
anim = 110
ctrl = 0

[state air dash desactivate]
type = varset
trigger1 = !time
var(1) = 0

[state end]
type = changestate
trigger1 = !animtime
value = 111

;---------------------------------------------------------------------------
; Air dash forward
[statedef 111]
type = a
physics = n
anim = 111
velset = 9,0

[state width]
type = width
trigger1 = 1
value = floor(20*const(size.xscale)), floor(10*const(size.xscale))

[state playsnd]
type = playsnd
trigger1 = !time
value = s100,0

[State dash lines]
type = Explod
trigger1 = !(time%2)
anim = 7200
id = 7200
pos = floor(-20*const(size.xscale)), floor(-60*const(size.yscale))
postype = p1
random = floor(20*const(size.xscale)), floor(-const(size.head.pos.y)*const(size.yscale))
bindtime = 1
sprpriority = random%4
vel = 1+random%2, 0
scale = const(size.xscale), const(size.yscale)
ownpal = 1
supermovetime = 9999
pausemovetime = 9999

[state gravity]
type = statetypeset
trigger1 = time > 7
physics = a
persistent = 0

[State end]
type = ChangeState
trigger1 = time > 4
trigger1 = command != "holdfwd"
trigger2 = time > 16
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; Air dash backwards
[statedef 115]
type = a
physics = n
velset = 0,0
anim = 115
ctrl = 0

[state air dash desactivate]
type = varset
trigger1 = !time
var(1) = 0

[state velset]
type = velset
trigger1 = !animelemtime(2)
x = -9

[state playsnd]
type = playsnd
trigger1 = !animelemtime(2)
value = 100,0

[State dash lines]
type = Explod
triggerall = animelemtime(2) >= 0
trigger1 = !(time%2)
anim = 7200
id = 7200
pos = floor(20*const(size.xscale)), floor(-60*const(size.yscale))
postype = p1
random = floor(20*const(size.xscale)), floor(-const(size.head.pos.y)*const(size.yscale))
bindtime = 1
sprpriority = random%4
vel = -1+random%2, 0
scale = const(size.xscale), const(size.yscale)
ownpal = 1
supermovetime = 9999
pausemovetime = 9999

[state gravity]
type = statetypeset
trigger1 = time > 10
physics = a
persistent = 0

[State stop]
type = ChangeState
trigger1 = time > 7
trigger1 = command != "holdback" || time = 20
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; Lose by Time Over
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA

;---------------------------------------------------------------------------
; Win state decider
[Statedef 180]
type = S

[State generic win quote]
type = VictoryQuote
trigger1 = 1
value = random%4

[state goku win quote]
type = victoryquote
trigger1 = p2name = "Goku" || p2name = "Goku Z2"
trigger2 = p2name = "Goku SSJ" || p2name = "SSJ Goku" || p2name = "SSJ Goku Z2"
trigger3 = p2name = "Goku SSJ2" || p2name = "SSJ2 Goku"
trigger4 = p2name = "Goku SSJ3" || p2name = "SSJ3 Goku"
value = 80

[state vegeta win quote]
type = victoryquote
trigger1 = p2name = "Vegeta" || p2name = "Vegeta Z2"
trigger2 = p2name = "Vegeta SSJ" || p2name = "SSJ Vegeta" || p2name = "SSJ Vegeta Z2"
trigger3 = p2name = "Vegeta SSJ2" || p2name = "SSJ2 Vegeta"
trigger4 = p2name = "Majin Vegeta" || p2name = "Majin Vegeta Z2"
value = 81

[state androids 17 18 win quote]
type = victoryquote
trigger1 = p2name = "Android 17"
trigger2 = p2name = "Android 18"
value = 82

[state cell win quote]
type = victoryquote
trigger1 = p2name = "Cell"
trigger2 = p2name = "Imperfect Cell"
trigger3 = p2name = "Perfect Cell"
value = 83

[state gotenks win quote]
type = victoryquote
trigger1 = p2name = "Gotenks"
trigger2 = p2name = "Gotenks SSJ" || p2name = "SSJ Gotenks" || p2name = "Super Gotenks"
trigger3 = p2name = "Gotenks SSJ3" || p2name = "SSJ3 Gotenks"
value = 84

[State 180, 1]
type = ChangeState
trigger1 = 1
value = 181

;---------------------------------------------------------------------------
; Win sword throw
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State not hit]
type = NotHitBy
trigger1 = 1
value = SCA

[state width]
type = width
trigger1 = 1
edge = 0, const(size.ground.back) + const(size.ground.front) + 15

[State sword helper]
type = Helper
trigger1 = !animelemtime(3)
name = "Sword"
ID = 6181
stateno = 6181
pos = floor(-22*const(size.xscale)), floor(-113*const(size.yscale))
postype = p1
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[state sword asdf sound]
type = playsnd
trigger1 = !animelemtime(3)
value = s4,4

[state SSJ revert flash]
type = EnvColor
trigger1 = !animelemtime(5)
time = 3
under = 0

[state SSJ revert sound]
type = playsnd
trigger1 = !animelemtime(5)
value = s8,1

[state changeanim]
type = changeanim
triggerall = animelemtime(6) >= 0
triggerall = animelemtime(8) < 0
trigger1 = numhelper(6181)
trigger1 = helper(6181), pos y > (-180*const(size.yscale))
value = anim
elem = animelemno(0)+1

[state sheathe snd]
type = playsnd
trigger1 = !animelemtime(8)
value = 700,1

[state round not over]
type = assertspecial
trigger1 = time < 134
flag = roundnotover

;-------------------
; Win sword helper
[Statedef 6181]
type = a
movetype = i
physics = n
anim = 6181
sprpriority = 5

[state up velocity]
type = velset
trigger1 = !time
y = -12

[state stop]
type = velset
trigger1 = pos y < -gameheight
trigger1 = vel y < 0
y = 0

[state stop]
type = posset
trigger1 = pos y < -gameheight
trigger1 = vel y = 0
x = pos x - floor(30*const(size.xscale)*parent,facing)
y = -gameheight-57
persistent = 0

[state reset anim]
type = changeanim
trigger1 = parent, animelemtime(7) >= 0
trigger1 = vel y = 0
value = anim

[state down velocity]
type = velset
trigger1 = parent, animelemtime(7) >= 0
trigger1 = vel y = 0
y = 12

[state down anim]
type = changeanim
trigger1 = vel y > 0
value = anim
elem = 6

[state end]
type = destroyself
trigger1 = parent, animelemtime(8) >= 0
trigger2 = pos y > (-180*const(size.yscale))
trigger2 = vel y > 0

;---------------------------------------------------------------------------
; Intro decider
[Statedef 190]
type = S
ctrl = 0
velset = 0,0

[State 190, 1]
type = ChangeAnim
trigger1 = SelfAnimExist(190)
value = 190

[State 190, 2] ;Go straight to intro.
type = ChangeState
trigger1 = Time = 0
value = 191

;---------------------------------------------------------------------------
; Intro falling
[Statedef 191]
type = a
ctrl = 0
anim = 191
physics = n
velset = 0,0

[State intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[state nothitby]
type = nothitby
trigger1 = 1
value = sca

[State freeze anim]
type = ChangeAnim
trigger1 = RoundState = 0
value = 191

[State no camera follow]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[state posset]
type = posset
trigger1 = !time
y = -gameheight

[state falling]
type = velset
trigger1 = roundstate = 1
y = 18

[State end]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 192

;---------------------------------------------------------------------------
; Intro land
[Statedef 192]
type = s
ctrl = 0
anim = 192
velset = 0,0

[State intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[state nothitby]
type = nothitby
trigger1 = 1
value = sca

[state posset]
type = posset
trigger1 = !time
y = 0

[state voice]
type = playsnd
trigger1 = !animelemtime(4)
value = s0,760
channel = 0

[State flash]
type = EnvColor
trigger1 = !animelemtime(4)
time = 3
under = 0

[State shake]
type = EnvShake
trigger1 = !animelemtime(4)
time = 10
freq = 140
ampl = -4
phase = 90

[State aura]
type = Explod
trigger1 = !animelemtime(4)
Anim = 9410
ID = 9410
pos = 0,-10
sprpriority = 3
removeongethit = 1
removetime = -1
bindtime = -1
ownpal = 1
scale = .7*const(size.xscale), .7*const(size.yscale)
supermovetime = 9999
pausemovetime = 9999

[State random smaller aura]
type = Explod
triggerall = animelemtime(4) >= 0
trigger1 = random >= 500
anim = 9411
ID = 9411
pos = 0, const(size.mid.pos.y)
vel = 0,ifelse(random<499, -.4,-.6)
random = 80, -const(size.mid.pos.y)
removetime = -2
scale = ifelse(random<499, .3, .2)*const(size.xscale), ifelse(random<499 ,.3,.2)*const(size.yscale)
sprpriority = ifelse(random<749, 3,-3)
ownpal = 1
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999

[State random small aura]
type = Explod
triggerall = animelemtime(4) >= 0
trigger1 = random < 499
anim = 9411
ID = 9411
pos = 0, const(size.mid.pos.y)
vel = 0,ifelse(random<499, -.4,-.6)
random = 80, -const(size.mid.pos.y)
removetime = -2
scale = ifelse(random<499, .1,.05)*const(size.xscale), ifelse(random<499, .1,.05)*const(size.yscale)
sprpriority = ifelse(random<749, 3,-3)
ownpal = 1
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999

[State wave ground]
type = Explod
triggerall = animelemtime(4) >= 0
trigger1 = !animelemtime(4)
trigger2 = !(time%20)
anim = 9400
id = 9400
postype = p1
pos = 0,0
sprpriority = -5
removeongethit = 1
bindtime = -1
ownpal = 1
scale = .75*const(size.xscale), .75*const(size.yscale)
supermovetime = 9999
pausemovetime = 9999

[State Small sound]
type = PlaySnd
trigger1 = !animelemtime(4)
value = s8,1

[State long sound]
type = PlaySnd
trigger1 = !animelemtime(4)
value = s8,0
channel = 3

[state voice]
type = playsnd
trigger1 = !animelemtime(6)
value = s0,192
channel = 0

[State RemoveExplod]
type = RemoveExplod
trigger1 = !animtime
id = 9410
[State StopSnd]
type = StopSnd
trigger1 = !animtime
channel = 3

[State Small sound]
type = PlaySnd
trigger1 = !animtime
value = s8,1

[state end]
type = changestate
trigger1 = !animtime
value = 0

;---------------------------------------------------------------------------
; Taunt
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[state voice]
type = playsnd
trigger1 = !animelemtime(2)
value = s0,195
channel = 0

[State 195, 1]
type = CtrlSet
trigger1 = !animelemtime(4)
value = 1

[state sheathe snd]
type = playsnd
trigger1 = !animelemtime(5)
value = 700,1

[State 195, 2]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Charge
[Statedef 900]
type = s
movetype = i
physics = s
ctrl = 0
anim = 900
velset = 0,0

[State aura]
type = Explod
trigger1 = !animelemtime(4)
Anim = 9410
ID = 9410
pos = 0,-10
sprpriority = 3
removeongethit = 1
removetime = -1
bindtime = -1
ownpal = 1
scale = .7*const(size.xscale), .7*const(size.yscale)
supermovetime = 9999
pausemovetime = 9999

[State random smaller aura]
type = Explod
triggerall = animelemtime(4) >= 0
trigger1 = random >= 500
anim = 9411
ID = 9411
pos = 0, const(size.mid.pos.y)
vel = 0, ifelse(random<499, -.4,-.6)
random = 80, -const(size.mid.pos.y)
removetime = -2
scale = ifelse(random<499, .3, .2)*const(size.xscale), ifelse(random<499 ,.3,.2)*const(size.yscale)
sprpriority = ifelse(random<749, 3,-3)
ownpal = 1
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999

[State random small aura]
type = Explod
triggerall = animelemtime(4) >= 0
trigger1 = random < 499
anim = 9411
ID = 9411
pos = 0, const(size.mid.pos.y)
vel = 0,ifelse(random<499, -.4,-.6)
random = 80, -const(size.mid.pos.y)
removetime = -2
scale = ifelse(random<499, .1,.05)*const(size.xscale), ifelse(random<499, .1,.05)*const(size.yscale)
sprpriority = ifelse(random<749, 3,-3)
ownpal = 1
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999

[State wave ground]
type = Explod
triggerall = animelemtime(4) >= 0
trigger1 = !animelemtime(4)
trigger2 = !(time%20)
anim = 9400
id = 9400
postype = p1
pos = 0,0
sprpriority = -5
removeongethit = 1
bindtime = 1
ownpal = 1
scale = .75*const(size.xscale), .75*const(size.yscale)
supermovetime = 9999
pausemovetime = 9999

[state voice]
type = playsnd
trigger1 = !animelemtime(4)
value = s0,730
channel = 0

[state power add]
type = poweradd
trigger1 = animelemtime(4) >= 0
value = 8

[State Small sound]
type = PlaySnd
trigger1 = !animelemtime(4)
value = 8,1

[State long sound]
type = PlaySnd
trigger1 = !animelemtime(4)
trigger2 = animelemtime(4) > 0
trigger2 = !(time%140)
value = 8,0
loop = 1
channel = 3

[State Small sound]
type = PlaySnd
triggerall = animelemtime(4) >= 0
trigger1 = command != "hold_a"
trigger2 = power = powermax
value = 8,1

[state stop voice]
type = stopsnd
triggerall = animelemtime(4) >= 0
trigger1 = command != "hold_a"
trigger2 = power = powermax
channel = 0

[state end]
type = changestate
trigger1 = command != "hold_a"
trigger1 = animelemtime(3) >= 0
trigger2 = power = powermax
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Zanzoken start
[statedef 950]
type = s
movetype = i
physics = n
velset = 0,0
ctrl = 0

[state chageanim]
type = changeanim
trigger1 = !time
value = ifelse(command = "holdback", 951, 950)

[state velset]
type = velset
trigger1 = !animelemtime(2)
x = ifelse(anim = 951, -5.5, 5.5)

[state explod]
type = explod
trigger1 = !animelemtime(2)
anim = 952
postype = p1
pos = 0,0
bindtime = 1
removetime = 8
removeongethit = 1
scale = const(size.xscale), const(size.yscale)
sprpriority = 3

[state explod]
type = explod
trigger1 = time = 16
anim = 952
postype = p1
pos = 0,0
bindtime = -1
removetime = 8
removeongethit = 1
scale = const(size.xscale), const(size.yscale)
sprpriority = 3

[state playsnd]
type = playsnd
trigger1 = !animelemtime(2)
value = s700,0

[State PlayerPush]
type = PlayerPush
trigger1 = animelemtime(2) >= 0
value = 0

[State NotHitBy]
type = NotHitBy
trigger1 = animelemtime(2) >= 0
value = SCA

[State end]
type = ChangeState
trigger1 = time >= 20
value = 951

;---------------------------------------------------------------------------
; Zanzoken end
[statedef 951]
type = s
movetype = i
physics = s
velset = 0,0
ctrl = 0
anim = 102

[state end]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; fall recovery on ground; still falling
; from KFM by DivineWolf
[StateDef 5200]
type = A
moveType = H
physics = N

[State 5200, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 5035 && !AnimTime
value = 5050

[State 5200, VelAdd]
type = VelAdd
trigger1 = 1
y = GetHitVar(yAccel)

[State 5200, End]
type = SelfState
trigger1 = vel y > 0 && pos y >= 10
value = 5201

;---------------------------------------------------------------------------
; fall recovery on ground
[StateDef 5201]
type = S
moveType = I
physics = N
anim = 5200
ctrl = 0
faceP2 = 1

[State 5201, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 5201, VelSet]
type = VelSet
trigger1 = !Time
x = -8
y = 0

[State 5201, VelMul]
type = VelMul
trigger1 = 1
x = 0.9

[State 5201, Voice]
type = PlaySnd
trigger1 = !Time
value = s0,5200
channel = 0

[state ground sound]
type = playsnd
trigger1 = !time
value = s40,2

[State dust]
type = Explod
trigger1 = !time
anim = 7100
id = 7100
pos = 23,0
postype = p1
bindtime = 1
facing = -1
sprpriority = 3
scale = .4*const(size.xscale), .25*const(size.yscale)
ownpal = 1
supermovetime = 9999
pausemovetime = 9999

[State 5201, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5201, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; fall recovery in air
[StateDef 5210]
type = A
moveType = I
physics = N
anim = 5210
ctrl = 0
faceP2 = 1

[State 5210, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.6

[State 5210, VelSet]
type = VelSet
trigger1 = !Time
x = ifElse((command = "holdfwd" && command != "holdback"), 0, ifElse((command != "holdfwd" && command = "holdback"), -4, -2))
y = -7.55

[State 5210, Voice]
type = PlaySnd
trigger1 = !Time
value = s0,5200
channel = 0

[State 5210, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(8) < 0
value = SCA
time = 1

[State 5210, CtrlSet]
type = CtrlSet
trigger1 = AnimElemTime(8) >= 0
value = 1

[State 5210, Land]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;-------------------------------------------------------------------------------
;SuperCharge - From Vegetto by EGC
[Statedef 6810]
physics = N
velset = 0,0
anim = 6810
sprpriority = 5

[State SprPriority]
type = SprPriority
trigger1 = 1
value = 5
ignorehitpause = 1

[state no lifebar]
type = assertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1
[state no bg]
type = assertSpecial
trigger1 = 1
flag = nobg
ignorehitpause = 1
[state no fg]
type = assertSpecial
trigger1 = 1
flag = nofg
ignorehitpause = 1
[state no shadow]
type = assertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State Angle]
type = Angleadd
trigger1 = 1
value = 15

[State Draw]
type = AngleDraw
trigger1 = 1
scale = .04*time,.04*time

[State Trans <= 10]
type = Trans
trigger1 = time <= 10
trans = addalpha
alpha = 256,256

[State Trans > 10]
type = Trans
trigger1 = time > 10
trans = addalpha
alpha = ceil(256-(8.53*(time-10))),256

[State Explod]
type = Explod
trigger1 = time = 24
anim = 6812
ID = 6812
postype = p1
bindtime = -1
removetime = 16
supermovetime = -1
scale = 2,2
sprpriority = 4
ontop = 1
ownpal = 1
removeongethit = 1

[State Scale]
type = ModifyExplod
trigger1 = numexplod(6812)
ID = 6812
scale = 2 -(0.125 * (time -24)), 2 -(0.125 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

[State Explod]
type = Explod
trigger1 = time <= 24
trigger1 = !(time%8)
anim = 6811
ID = 7001 + floor(time/8)
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = 16
supermovetime = -1
scale = 1,1
sprpriority = 4
ontop = 1
ownpal = 1
removeongethit = 1

[State 7001 ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(7001)
ID = 7001
scale = 1-(0.0625*time), 1-(0.0625*time)
trans = addalpha
alpha = ifelse(time < 4,64*time,256),256
[State 7002 ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(7002)
ID = 7002
scale = 1-(0.0625*(time -8)),1-(0.0625*(time-8))
trans = addalpha
alpha = ifelse((time -8) < 4,64*(time -8),256),256
[State 7003 ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(7003)
ID = 7003
scale = 1-(0.0625*(time-16)),1-(0.0625*(time-16))
trans = addalpha
alpha = ifelse((time -16) < 4, 64*(time -16),256),256
[State 7004 ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(7004)
ID = 7004
scale = 1-(0.0625*(time-24)),1-(0.0625*(time-24))
trans = addalpha
alpha = ifelse((time-24) < 4,64*(time -24), 256),256

[State DestroySelf]
type = DestroySelf
trigger1 = time >= 40
trigger2 = parent, movetype = h

;========================<SPARKS>=============================
;Guard Spark (Normal)
[StateDef 8000]
type = A
physics = N
moveType = I
anim = 8000
velset = 0,0
sprPriority = 5

[State 8000, Assert: No Shadow]
type = AssertSpecial
trigger1= 1
flag = NoShadow

[State 8000, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.125 + (0.046875 * Time), 0.125 + (0.046875 * Time)

[State 8000, Transparency]
type = Trans
trigger1 = Time < 4
trans = AddAlpha
alpha = 256, 256

[State 8000, Transparency]
type = Trans
trigger1 = Time >= 4
trans = AddAlpha
alpha = 256 - 64 * (Time - 4), 256

[State 8000, End]
type = DestroySelf
trigger1 = Time >= 8


;Guard Spark (Special)
[StateDef 8001]
type = A
physics = N
moveType = I
anim = 8001
velSet = 0,0
sprPriority = 5

[State 8001, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 8001, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.25 + (0.03125 * Time), 0.25 + (0.03125 * Time)

[State 8001, Transparency]
type = Trans
trigger1 = time < 4
trans = AddAlpha
alpha = 256, 256

[State 8001, Transparency]
type = Trans
trigger1 = Time >= 4
trans = AddAlpha
alpha = 256 - 64 * (Time - 4), 256

[State 8001, End]
type = DestroySelf
trigger1 = Time >= 8


;Weak Hit Spark
[StateDef 8010]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8010, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 8010, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8010, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8010, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = 0.3 - (Time * 0.03), 0.3 - (Time * 0.03)

[State 8010, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0

[State 8010, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256

[State 8010, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8010, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.15 + (0.009375 * Time), 0.15 + (0.009375 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time),256

[State 8010, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8010, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.15 + (0.009375 * Time), 0.15 + (0.009375 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8010, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8010, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 0.3 - (0.0375 * Time), 0.3 - (0.0375 * Time)
trans = AddAlpha
alpha = 128 - (16 * Time), 256

[State 8010, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8010, End]
type = DestroySelf
trigger1 = Time >= 16


;Medium Hit Spark
[StateDef 8011]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8011, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 8011, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8011, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8011, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = 0.35 - (Time * 0.035), 0.35 - (Time * 0.035)

[State 8011, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0

[State 8011, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256

[State 8011, Center]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removetime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8011, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.175 + (0.0109375 * Time), 0.175 + (0.0109375 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8011, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8011, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.175 + (0.0109375 * Time), 0.175 + (0.0109375 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8011, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8011, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 0.35 - (0.04375 * Time), 0.35 - (0.04375 * Time)
trans = AddAlpha
alpha = 128 - (16 * Time), 256

[State 8011, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8011, End]
type = DestroySelf
trigger1 = Time >= 16


;Strong Hit Spark
[StateDef 8012]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8012, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 8012, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8012, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8012, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = 0.4 - (Time * 0.04), 0.4 - (Time * 0.04)

[State 8012, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0

[State 8012, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256

[State 8012, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8012, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.2 + (0.0125 * Time), 0.2 + (0.0125 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8012, Streaks Explod]
type = Explod
trigger1 = !time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8012, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.2 + (0.0125 * Time), 0.2 + (0.0125 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8012, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8012, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 0.4 - (0.05 * Time), 0.4 - (0.05 * Time)
trans = AddAlpha
alpha = 128 - (16 * Time), 256

[State 8012, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8012, End]
type = DestroySelf
trigger1 = Time >= 16


;Special Move Hit Spark
[StateDef 8013]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8013, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 8013, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8013, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8013, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = 0.45 - (Time * 0.045), 0.45 - (Time * 0.045)

[State 8012, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0

[State 8013, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256

[State 8013, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.225 + (0.0140625 * Time), 0.225 + (0.0140625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8013, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.225 + (0.0140625 * Time), 0.225 + (0.0140625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8013, P2 Back Explod]
type = Explod
trigger1 = !Time
anim = 8013
ID = 3
posType = P1
facing = -1
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = -3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale P2 Back Explod]
type = ModifyExplod
trigger1= NumExplod(3)
ID = 3
scale = 0.4, 0.4
trans = AddAlpha
alpha = 256 - (32 * Time), 256

[State 8013, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(random < 500, -1, 1)
vFacing = ifElse(random < 500, -1, 1)
sprPriority=3
removeTime=8
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 0.45 - (0.05625 * Time), 0.45 - (0.05625 * Time)
trans = AddAlpha
alpha = 192 - (24 * Time), 256

[State 8013, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8013, End]
type = DestroySelf
trigger1 = Time >= 16


;Super Hit Spark
[StateDef 8014]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8014, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 8014, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8014, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8014, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = 0.5 - (Time * 0.05), 0.5 - (Time * 0.05)

[State 8012, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0

[State 8014, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256

[State 8014, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.25 + (0.015625 * Time), 0.25 + (0.015625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8014, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.25 + (0.015625 * Time), 0.25 + (0.015625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8014, P2 Back Explod]
type = Explod
trigger1 = !Time
anim = 8013
ID = 3
posType = P1
facing = -1;ifElse((Parent, StateNo = [3100,3150]), -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = -3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale P2 Back Explod]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 0.5,0.5
trans = AddAlpha
alpha = 256 - (32 * Time), 256

[State 8014, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 0.5 - (0.0625 * Time), 0.5 - (0.0625 * Time)
trans = AddAlpha
alpha = 256 - (32 * Time),256

[State 8014, Remove Explods]
type = RemoveExplod
trigger1 = time >= 16

[State 8014, End]
type = DestroySelf
trigger1 = Time >= 16

;---------------------------------------------------------------------------
; Jump dust helper - From KFM by DivineWolf
[StateDef 8100]
type = S
anim = 1
velSet = 0,0

[State 8100, Bind]
type = BindToRoot
trigger1 = Time

[State 8100, Floor Dust]
type = Explod
trigger1 = !Time
anim = 8100
sprPriority = 3
posType = P1
pos = 0, ceil(pos y)
scale = .75*const(size.xscale), .75*const(size.yscale)
pauseMoveTime = -1
superMoveTime = -1
ownpal = 1

[State 8100, Player Dust]
type = Explod
trigger1 = !Time || Time = 2 || Time = 6
anim = 8101
sprPriority = 3
posType = P1
scale = .75*const(size.xscale), .75*const(size.yscale)
pauseMoveTime = -1
superMoveTime = -1
ownpal = 1

[State 8100, End]
type = DestroySelf
trigger1 = Time >= 7

;---------------------------------------------------------------------------
; Recovery FX helper - From KFM by DivineWolf
[StateDef 8200]
type = A
velSet = 0,0
anim = 8200
sprPriority = 5

[State 8200, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8200, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.25 + (0.017 * Time), 0.25 + (0.017 * Time)
ignoreHitPause = 1

[State 8200, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = ceil(256 - 17.1 * Time), 256
ignoreHitPause = 1

[State 8200, End]
type = DestroySelf
trigger1 = Time >= 15

;---------------------------------------------------------------------------
;Helper buffer command
[statedef 15630]
anim = 1
ctrl = 0

[state nothing lol]
type = null
trigger1 = 1

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[statedef -2]

;#ADD004BASIC PIEs#
;//==========================
;// add004 supplementary sctrls v1.103
;//==========================

;// partner jump-out ; ???????
[state 0]
	type=selfstate
	triggerall=!ishelper && numpartner && roundstate=2
	triggerall=(stateno!=[190190,190199]) && alive && sysfvar(0)>0 && playeridexist(floor(sysfvar(0)))
	triggerall=playerid(floor(sysfvar(0))),var(0)=90900 && playerid(floor(sysfvar(0))),var(22)=4
	;;---// change ;(??)
	trigger1=sysfvar(4)<1 && movetype!=h && gethitvar(isbound)=0 && (pos y>=0) && (ctrl||(stateno<600&&time<2)) && (playerid(floor(sysfvar(0))),var(48)=11)
	;;---// as partner-asist ;(??)
	trigger2=sysfvar(4)>0 && (movetype!=h||(stateno=[120,149])) && (ctrl||stateno<600)
	;;---// player priority ;(??)
	trigger3=sysfvar(4)<1 && playerid(floor(sysfvar(0))),var(15)!=id
	value=190190
	ignorehitpause=1

;// edited life & power bar ; ?????
[state 0]
	type=helper
	triggerall=!ishelper && !numhelper(90900)
	trigger1=numpartner
	trigger1=id<(partner,id) && partner,numhelper(90900)=0
	trigger2=!numpartner
	id=90900
	stateno=90900
	helpertype=normal
	ownpal=1
	size.air.front=1602150 ;; <<-version
	size.height=0 ;; 1;; <<-powerbar off mode
	ignorehitpause=1
	supermovetime=88888
	pausemovetime=88888
	pos=0,88888

;// input players id ; ID??
[state 0]
	type=varset
	trigger1=!ishelper && numhelper(90900)
	trigger1=(helper(90900),var(0)=90900) && (sysfvar(0)!=helper(90900),id)
	sysfvar(0)=(helper(90900),id)
[state 0]
	type=varset
	trigger1=!ishelper && numpartner
	trigger1=!numhelper(90900) && (partner,numhelper(90900)) && (sysfvar(0)!=(partner,sysfvar(0)))
	sysfvar(0)=(partner,sysfvar(0))

;// bk/jd system ; ?????/????D
[state 0]
	type=hitoverride
	trigger1=(numprojid(195502)||numprojid(195503)) && !ishelper && roundstate=2 && alive && (ctrl || stateno=52)
	attr=sca,na,sa,ha,np,sp,hp
	stateno=195500
	time=1
	ignorehitpause=1

;//==========================
;;>>@Config.Face>>
;; face / portrait (?)
[state 0]
	type=explod
	trigger1=!ishelper && roundstate=2 && alive && !numexplod(490600) && selfanimexist(909002)
	trigger1=sysfvar(0)>id && playeridexist(floor(sysfvar(0)))
	trigger1=playerid(floor(sysfvar(0))),var(0)=90900 && playerid(floor(sysfvar(0))),numexplod(490600)
	id=490600
	anim=909002
	space=screen
	postype=left
	facing=ifelse(teamside=1,1,-1)
	scale=0,0 ;; <- default
	ownpal=1
	bindtime=-1
	removetime=-1
	ignorehitpause=1
	supermovetime=-1
	pausemovetime=-1

[state 0] ;; player is NOT in a custom state 
	type=modifyexplod
	trigger1=numexplod(490600) && sysfvar(0)>id && playeridexist(floor(sysfvar(0)))
	trigger1=playerid(floor(sysfvar(0))),var(0)=90900
	trigger1=movetype!=h || (stateno=[120,159]) || (stateno=[5000,5199]) || (stateno=[190190,190196])
	id=490600
	scale=playerid(floor(sysfvar(0))),fvar(32-(id=playerid(floor(sysfvar(0))),var(15))*10), playerid(floor(sysfvar(0))),fvar(33-(id=playerid(floor(sysfvar(0))),var(15))*10)
	ignorehitpause=1

[state 0]
	type=modifyexplod
	trigger1=numexplod(490600) && sysfvar(0)>id && playeridexist(floor(sysfvar(0)))
	trigger1=playerid(floor(sysfvar(0))),var(0)=90900
	id=490600
	space=screen
	postype=left
	pos=floor(const240p(playerid(floor(sysfvar(0))),fvar(30-(id=playerid(floor(sysfvar(0))),var(15))*10))), floor(const240p(playerid(floor(sysfvar(0))),fvar(31-(id=playerid(floor(sysfvar(0))),var(15))*10) -(roundstate!=2||(!alive&&stateno=5150))*88888))
;;(* if the player has been placed in a custom state, the result of "scale" is affected" by the different player's local coordinate space
	sprpriority=floor(playerid(floor(sysfvar(0))),fvar(36-(id=playerid(floor(sysfvar(0))),var(15))*10))
	trans=addalpha
	alpha=floor(playerid(floor(sysfvar(0))),fvar(34-(id=playerid(floor(sysfvar(0))),var(15))*10)), floor(playerid(floor(sysfvar(0))),fvar(35-(id=playerid(floor(sysfvar(0))),var(15))*10))
	ignorehitpause=1

;//==========================
;;>>@Config.Camera>>
;; change camera / ????
[state 0]
	type=screenbound
	trigger1=!ishelper && sysfvar(0)>id && playeridexist(floor(sysfvar(0)))
	trigger1=playerid(floor(sysfvar(0))),var(0)=90900 && numpartner && (sysfvar(4)>0 || stateno=5150)
	value=0
	movecamera=0,0
	ignorehitpause=1
[state 0]
	type=playerpush
	trigger1=!ishelper && sysfvar(0)>id && playeridexist(floor(sysfvar(0)))
	trigger1=playerid(floor(sysfvar(0))),var(0)=90900 && numpartner && (sysfvar(4)>0 || stateno=5150)
	value=0
	ignorehitpause=1
[state 0]
	type=screenbound
	trigger1=!ishelper && sysfvar(0)>id && playeridexist(floor(sysfvar(0)))
	trigger1=playerid(floor(sysfvar(0))),var(0)=90900 && (playerid(floor(sysfvar(0))),var(7)&65536) ;; system_switch
	value= ((numpartner && sysfvar(4)<1) || !numpartner) ;; [def=0]
	movecamera=0,0 ;; [x,y]
	ignorehitpause=1

;//==========================
;; optional settings
;//==========================
;;--- guard crush ; ????????
[state 0]
	type=palfx
	trigger1=(stateno=150 || stateno=152) && alive && !ishelper && (gametime%5=0) && sysfvar(0)>id && playeridexist(floor(sysfvar(0)))
	trigger1=(playerid(floor(sysfvar(0))),var(0)=90900) && (playerid(floor(sysfvar(0))),var(36)>=40)
	time=2
	add=200,0,0
[state 0]
	type=changestate
	trigger1=(stateno=150 || stateno=152) && alive && !ishelper && sysfvar(0)>id && playeridexist(floor(sysfvar(0)))
	trigger1=(playerid(floor(sysfvar(0))),var(0)=90900) && (playerid(floor(sysfvar(0))),var(36)>=50)
	value=190010
	ignorehitpause=1
;;--- dizzy
[state 0]
	type=changestate
	trigger1=stateno=5120 && (animtime=0) && !ishelper && numhelper(403000) ;;<-dizzy birds
	value=190116 ;;<- goto dizzy/stun state
;;--- fadeout when KOed ; KO????
[state 0]
	type=varset
	trigger1=stateno=5150 && time=1 && alive=0 && !ishelper && numpartner
	sysvar(1)=(roundstate<=2)
[state 0]
	type=assertspecial
	trigger1=stateno=5150 && alive=0 && !ishelper && numpartner && sysvar(1) && (((time=[80,150]) && time%10<5) || time>150)
	flag=invisible
	flag2=noshadow
[state 0]
	type=posset
	trigger1=stateno=5150 && time>=80 && alive=0 && !ishelper && numpartner && sysvar(1)
	y=(800-partner,pos y) *(((time=[80,150]) && time%10<5) || time>150)

;;--- pos reset debug (for mugen only) ---
[state 0]
	type=turn
	trigger1=roundstate=1 && time=1 && !ishelper && numpartner>1
	trigger1=sysfvar(0)>id && playeridexist(floor(sysfvar(0)))
	trigger1=playerid(floor(sysfvar(0))),var(0)=90900 && id>playerid(floor(sysfvar(0))),sysvar(0)+1
	trigger1=facing=ifelse(teamside=1,-1,1) && cond(teamside=1, screenpos x>playerid(id-2),screenpos x, screenpos x<playerid(id-2),screenpos x)
	persistent=0
[state 0]
	type=posset
	trigger1=roundstate=1 && time=1 && !ishelper && numpartner>1
	trigger1=sysfvar(0)>id && playeridexist(floor(sysfvar(0)))
	trigger1=playerid(floor(sysfvar(0))),var(0)=90900 && id>playerid(floor(sysfvar(0))),sysvar(0)+1
	trigger1=cond(teamside=1, screenpos x>playerid(id-2),screenpos x, screenpos x<playerid(id-2),screenpos x)
	x= playerid(id-1),pos x+const240p(20) *ifelse(teamside=1,-1,1)
	persistent=0
;//==========================
;//==========================


[State -2, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "pos x = %d, pos y = %d, vel x = %f, vel y = %f"
params = pos x, pos y, vel x, vel y
ignorehitpause = 1

[state -2, remove aura]
type = removeexplod
triggerall = numexplod(9410)
trigger1 = stateno != 192
trigger1 = stateno != 900
id = 9410

[state -2, stop aura sound]
type = stopsnd
trigger1 = !numexplod(9410)
channel = 3

[state -2, stop burning attack sound]
type = stopsnd
trigger1 = stateno != [3000,3003]
channel = 4

;--------------------------------------------
;Hitspark - From KFM by DivineWolf

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
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < floor(var(4)*const(size.xscale)), ceil(P2Dist x), floor(var(4)*const(size.xscale)))), floor(var(5)*const(size.yscale))
facing = -1
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State -2, Hit Detection]
type = VarSet
trigger1 = 1
var(2) = -1

[State -2, Hit Detection]
type = VarRangeSet
trigger1 = MoveType = I
trigger2 = MoveType = H && Time
first = 2
last = 6
value = -1
ignoreHitPause = 1

;---------------------------------------------------------------------------
;Damage Dampener Reset - By Seravy
[State -2]
Type=VarSet
Trigger1=Roundstate<2
Trigger2=P2Stateno=[120,160]
Trigger3=enemynear,ctrl
Trigger4=P2StateType!=A
Trigger4=P2MoveType!=H
fvar(39)=1
ignorehitpause=1

;---------------------------------------------------------------------------
;Helper buffer command - Prevent hitpause buffer command
[State -2]
type = Helper
trigger1 = !numhelper(15630)
name = "system"
ID = 15630
stateno = 15630
pos = 0,0
postype = p1
keyctrl = 1
ownpal = 1
supermoveTime = 65535
pausemoveTime = 65535
ignorehitpause = 1

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

[Statedef -3]

[state -3, land sound]
type = playsnd
triggerall = time = 1
trigger1 = stateno = 52
trigger2 = stateno = 106
trigger3 = stateno = 192
value = 40,0

[state -3, land dust]
type = explod
triggerall = time = 1
trigger1 = stateno = 52
trigger2 = stateno = 106
trigger3 = stateno = 192
anim = 8102
id = 8102
postype = p1
pos = 0,0
sprpriority = -5
ownpal = 1
scale = .75*const(size.xscale), .75*const(size.yscale)
bindtime = 1
supermovetime = 9999
pausemovetime = 9999

[state -3, air dash activate]
type = varset
trigger1 = !var(1)
trigger1 = statetype = s
var(1) = 1

[state -3, air dash friction var]
type = varset
trigger1 = statetype = a
trigger1 = abs(vel x) > .5
trigger1 = prevstateno = [111, 115]
trigger1 = var(7) < 0
var(7) = 7

[state -3, air dash friction]
type = veladd
trigger1 = abs(vel x) > const(velocity.jump.fwd.x)
trigger1 = var(7) > -1
x = ifelse(vel x > 0, -.2, .2)

[state -3, air dash friction var]
type = varadd
trigger1 = var(7) > -1
var(7) = -1

[state -3, gethit voice]
type = playsnd
triggerall = alive && time = 1
triggerall = stateno = 5000 || stateno = 5010 || stateno = 5020 || stateno = 5070
trigger1 = gethitvar(animtype) = 0 && random < 250
trigger2 = gethitvar(animtype) = 1 && random < 350
trigger3 = gethitvar(animtype) >= 2 && random < 500
value = s0,5000 + random%6
channel = 0
ignorehitpause = 1

;---------------------------------------------------------------------------
;Corner Push - From KFM by DivineWolf

[State -3, Corner Push]
type = VarSet
triggerAll = fvar(5)
trigger1 = abs(fvar(5)) <= (1 / 0.85)
trigger2 = NumTarget
trigger2 = Target, GetHitVar(HitTime) <= 0 || (Target, GetHitVar(HitShakeTime) > 0 && Target, Time <= 0)
fvar(5) = 0

[State -3, Corner Push]
type = VarSet
trigger1 = NumTarget
trigger1 = Target, GetHitVar(HitShakeTime) <= 0
fvar(5) = fvar(5) * 0.85

[State -3, Corner Push]
type = VarSet
triggerall = movetype != H
trigger1 = MoveContact = 1 && NumTarget
fvar(5) = Target, GetHitVar(xVel)
ignoreHitPause = 1

[State -3, Corner Push]
type = PosAdd
triggerAll = fvar(5)
triggerAll = (StateType = S || StateType = C) && NumTarget
triggerAll = !HitPauseTime && Target, GetHitVar(HitShakeTime) <= 1
triggerAll = (Target, StateType = S || Target, StateType = C) && !(Target, GetHitVar(yVel)) && !(Target, HitFall)
trigger1 = Target, FrontEdgeBodyDist <= 0 && (Target, GetHitVar(xVel) * Target, Facing) > 0
trigger2 = Target, BackEdgeBodyDist <= 0 && (Target, GetHitVar(xVel) * Target, Facing) < 0
x = ifElse(Target, FrontEdgeBodyDist <= 0, -1, 1) * (Target, Facing) * fvar(5)

;---------------------------------------------------------------------------
;Damage Dampener - By Seravy

[state -3, update]
Type=Varset
Trigger1=movehit=1
fvar(39)=fvar(39)*.92

[State -3, apply]
Type=Attackmulset
Trigger1=1
value=fvar(39)
ignorehitpause=1
