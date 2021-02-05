;*******************************************************************************
;***************************************************************************
;************************    Supers   *************************************
;***************************************************************************
;*******************************************************************************

;===============================================================================
;=========================  Weekly Special =====================================
;===============================================================================
;-----------------------------------
; Weekly Special Attack 1
[Statedef 2000]
type = S
movetype = A
physics = S
anim = 2000
poweradd = -2000
velset = 0,0
sprpriority = 2
ctrl = 0

[State 2000, VarSet]; Score Result
type = VarSet
trigger1 = Time = 0
v = 52
value = var(52) + 6 + 10*((PrevStateNo = 1100) || (PrevStateNo = 1200) || (PrevStateNo = 1220) || (PrevStateNo = 1410)) + 8*(PrevStateNo=[200,445])
ignorehitpause =  1
persistent = 0

[State 2000, Corner Push]
type = VarSet
trigger1 = AnimElem = 2
fvar(5) = 0

[State 2000, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 40
anim = -1
sound = S9999,0
pos = 0,0
movetime = 40
darken = 0
unhittable = 1


[State 2000, Explod]; Super FX
type = Explod
trigger1 = Time = 0
anim = 9040
ID = 9040
pos = -6,-128
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
pausemovetime = 9999
supermovetime = 9999
scale = .45,.45
sprpriority = 8
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1


[State 2000, explod] ;Super BG 0
type = Explod
trigger1 = AnimElem = 1
anim = 9100
id = 9100
postype = back
pos = 0, -10
facing = 1
removetime = -1
sprpriority = -6
scale =.575,.575
supermovetime = 9999
pausemovetime = 9999
bindtime = -1
ownpal = 1
ignorehitpause = 1

[State 2000, explod] ;Super Portrait
type = Explod
trigger1 = Time = 0
anim = 9110
id = 9110
postype = back
pos = 0,-60
facing = 1
removetime = -1
sprpriority = -3
scale =.5,.5
supermovetime = 9999
pausemovetime = 9999
bindtime = -1
ownpal = 1
ignorehitpause = 1

[State 2000, explod] ;Super BG Portrait
type = Explod
trigger1 = Time = 0
anim = 9120
id = 9110
postype = back
pos = 0,-60
facing = 1
removetime = -1
sprpriority = -2
scale =.5,.5
supermovetime = 9999
pausemovetime = 9999
bindtime = -1
ownpal = 1
ignorehitpause = 1

[State 2000, explod] ;Super Window
type = Explod
trigger1 = time = 0
anim = 9130
id = 9130
postype = back
pos = 0, -60
facing = 1
removetime = -1
sprpriority = -4
scale = .5,.5
supermovetime = 9999
pausemovetime = 9999
bindtime = -1
ownpal = 1
ignorehitpause = 1



[State 2000, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = ((P2Bodydist x) + 16.0)/10.0

[State 2000, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 1,24
value = S2000,0
channel = 0

[State 2000, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 2
value = S1200,1

[State 2000, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 9005
ID = 9005
pos = 0,-12
postype = p1
facing = 1
bindtime = 3
removetime = -2
pausemovetime = 9999
supermovetime = 9999
scale = .5,.5
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 2000, HitDef]
type = HitDef
trigger1 = !MoveContact
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = Back
priority = 6,Hit
damage = 60,20
pausetime = 6,8
guard.pausetime = 7,7
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = S5,0
guardsound = S6,0
ground.type = Low
air.type = Low
ground.slidetime = 44
guard.slidetime = 20
ground.hittime = 44
guard.hittime = 20
air.hittime = 40
ground.velocity = -3.8
guard.velocity = -4
air.velocity = -4,-4
airguard.velocity = -2,-2
numhits = 1
getpower = 0,0
givepower = 0,0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
envshake.time = 28
envshake.freq = 93
envshake.ampl = -2


[State 2000, Spark 2]
type = Explod
trigger1 = Movehit = 1
anim = 9022
ID = 9022
postype = P1
pos = 66,-76
facing = 1
sprpriority = 3
removetime = -2
bindtime = 1
ownpal = 1
ontop = 1
scale = 0.335,0.335
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0

[State 2000, Spark 1]
type = Explod
trigger1 = Movehit = 1
anim = 9020
ID = 9020
postype = P1
pos = 66,-76
facing = 1
sprpriority = 4
removetime = -2
bindtime = 1
ownpal = 1
scale = 0.425,0.425
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0

[State 2000, Spark 3]
type = Explod
trigger1 = Moveguarded = 1
anim = 9024
ID = 9024
postype = P1
pos = 66,-76
facing = 1
sprpriority = 4
removetime = -2
bindtime = 1
ownpal = 1
ontop = 1
scale = 0.44,0.44
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0

[State 2000, ChangeState 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 2000, ChangeState 2]
type = ChangeState
trigger1 = MoveHit
value = 2010

;-----------------------------------
; Weekly Special Attack 2
[Statedef 2010]
type = S
movetype = A
physics = S
anim = 2010
sprpriority = 2
ctrl = 0

[State 2010, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S200,1

[State 2010, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S310,random%3
channel = 0

[State 2010, HitDef]
type = HitDef
trigger1 = !MoveContact
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = Back
priority = 6,Hit
damage = 60,20
pausetime = 6,8
guard.pausetime = 7,7
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = S5,1
guardsound = S6,0
ground.type = High
air.type = Low
ground.slidetime = 48
guard.slidetime = 24
ground.hittime = 48
guard.hittime = 24
air.hittime = 44
ground.velocity = -2.4
guard.velocity = -4
air.velocity = -3,-3
airguard.velocity = -2,-2
numhits = 1
getpower = 0,0
givepower = 0,0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
envshake.time = 30
envshake.freq = 95
envshake.ampl = -2


[State 2010, Spark 2]
type = Explod
trigger1 = Movehit = 1
anim = 9022
ID = 9022
postype = P1
pos = 70,-68
facing = 1
sprpriority = 3
removetime = -2
bindtime = 1
ownpal = 1
ontop = 1
scale = 0.415,0.415
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0

[State 2010, Spark 1]
type = Explod
trigger1 = Movehit = 1
anim = 9020
ID = 9020
postype = P1
pos = 70,-68
facing = 1
sprpriority = 4
removetime = -2
bindtime = 1
ownpal = 1
scale = 0.55,0.55
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0

[State 2010, Spark 3]
type = Explod
trigger1 = Moveguarded = 1
anim = 9024
ID = 9024
postype = P1
pos = 70,-68
facing = 1
sprpriority = 4
removetime = -2
bindtime = 1
ownpal = 1
ontop = 1
scale = 0.66,0.66
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0


[State 2010, ChangeState 1]
type = ChangeState
trigger1 = MoveHit
value = 2020

[State 2010, ChangeState 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------
; Weekly Special Attack 3
[Statedef 2020]
type = S
movetype = A
physics = S
anim = 2020
sprpriority = 2
ctrl = 0

[State 2020, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S200,0

[State 2020, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S300,random%3
channel = 0

[State 2020, HitDef]
type = HitDef
trigger1 = !MoveContact
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = Back
priority = 6,Hit
damage = 45,15
pausetime = 6,8
guard.pausetime = 7,7
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = S5,0
guardsound = S6,0
ground.type = Low
air.type = Low
ground.slidetime = 44
guard.slidetime = 20
ground.hittime = 44
guard.hittime = 20
air.hittime = 40
ground.velocity = -2.4
guard.velocity = -4
air.velocity = -4,-4
airguard.velocity = -2,-2
numhits = 1
getpower = 0,0
givepower = 0,0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
envshake.time = 28
envshake.freq = 93
envshake.ampl = -2


[State 2020, Spark 2]
type = Explod
trigger1 = Movehit = 1
anim = 9022
ID = 9022
postype = P1
pos = 66,-76
facing = 1
sprpriority = 3
removetime = -2
bindtime = 1
ownpal = 1
ontop = 1
scale = 0.335,0.335
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0

[State 2020, Spark 1]
type = Explod
trigger1 = Movehit = 1
anim = 9020
ID = 9020
postype = P1
pos = 66,-76
facing = 1
sprpriority = 4
removetime = -2
bindtime = 1
ownpal = 1
scale = 0.425,0.425
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0

[State 2020, Spark 3]
type = Explod
trigger1 = Moveguarded = 1
anim = 9024
ID = 9024
postype = P1
pos = 66,-76
facing = 1
sprpriority = 4
removetime = -2
bindtime = 1
ownpal = 1
ontop = 1
scale = 0.44,0.44
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0

[State 2020, ChangeState 2]
type = ChangeState
trigger1 = MoveHit
value = 2030

[State 2020, ChangeState 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------
; Weekly Special Attack 4
[Statedef 2030]
type = S
movetype = A
physics = S
anim = 2010
sprpriority = 2
ctrl = 0

[State 2030, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S200,1

[State 2030, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S310,random%3
channel = 0

[State 2030, HitDef]
type = HitDef
trigger1 = !MoveContact
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = Back
priority = 6,Hit
damage = 45,15
pausetime = 6,8
guard.pausetime = 7,7
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = S5,1
guardsound = S6,0
ground.type = High
air.type = Low
ground.slidetime = 48
guard.slidetime = 24
ground.hittime = 48
guard.hittime = 24
air.hittime = 44
ground.velocity = -.85
guard.velocity = -4
air.velocity = -3,-3
airguard.velocity = -2,-2
numhits = 1
getpower = 0,0
givepower = 0,0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
envshake.time = 30
envshake.freq = 95
envshake.ampl = -2


[State 2030, Spark 2]
type = Explod
trigger1 = Movehit = 1
anim = 9022
ID = 9022
postype = P1
pos = 70,-68
facing = 1
sprpriority = 3
removetime = -2
bindtime = 1
ownpal = 1
ontop = 1
scale = 0.415,0.415
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0

[State 2030, Spark 1]
type = Explod
trigger1 = Movehit = 1
anim = 9020
ID = 9020
postype = P1
pos = 70,-68
facing = 1
sprpriority = 4
removetime = -2
bindtime = 1
ownpal = 1
scale = 0.55,0.55
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0

[State 2030, Spark 3]
type = Explod
trigger1 = Moveguarded = 1
anim = 9024
ID = 9024
postype = P1
pos = 70,-68
facing = 1
sprpriority = 4
removetime = -2
bindtime = 1
ownpal = 1
ontop = 1
scale = 0.66,0.66
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0


[State 2030, ChangeState 1]
type = ChangeState
trigger1 = MoveHit
value = 2040

[State 2030, ChangeState 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------
; Weekly Special Attack 5
[Statedef 2040]
type = S
movetype = A
physics = S
anim = 2020
sprpriority = 2
ctrl = 0

[State 2040, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S200,0

[State 2040, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S300,random%3
channel = 0

[State 2040, HitDef]
type = HitDef
trigger1 = !MoveContact
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = Back
priority = 6,Hit
damage = 45,15
pausetime = 5,8
guard.pausetime = 7,7
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = S5,0
guardsound = S6,0
ground.type = Low
air.type = Low
ground.slidetime = 44
guard.slidetime = 20
ground.hittime = 44
guard.hittime = 20
air.hittime = 40
ground.velocity = -.85
guard.velocity = -4
air.velocity = -4,-4
airguard.velocity = -2,-2
numhits = 1
getpower = 0,0
givepower = 0,0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
envshake.time = 28
envshake.freq = 93
envshake.ampl = -2


[State 2040, Spark 2]
type = Explod
trigger1 = Movehit = 1
anim = 9022
ID = 9022
postype = P1
pos = 66,-76
facing = 1
sprpriority = 3
removetime = -2
bindtime = 1
ownpal = 1
ontop = 1
scale = 0.335,0.335
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0

[State 2040, Spark 1]
type = Explod
trigger1 = Movehit = 1
anim = 9020
ID = 9020
postype = P1
pos = 66,-76
facing = 1
sprpriority = 4
removetime = -2
bindtime = 1
ownpal = 1
scale = 0.425,0.425
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0

[State 2040, Spark 3]
type = Explod
trigger1 = Moveguarded = 1
anim = 9024
ID = 9024
postype = P1
pos = 66,-76
facing = 1
sprpriority = 4
removetime = -2
bindtime = 1
ownpal = 1
ontop = 1
scale = 0.44,0.44
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0

[State 2040, ChangeState 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 2040, ChangeState 2]
type = ChangeState
trigger1 = MoveHit
value = 2050

;-----------------------------------
; Weekly Special Attack 6
[Statedef 2050]
type = S
movetype = A
physics = S
anim = 2010
sprpriority = 2
ctrl = 0

[State 2050, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S200,1

[State 2050, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S310,random%3
channel = 0

[State 2050, HitDef]
type = HitDef
trigger1 = !MoveContact
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = Back
priority = 6,Hit
damage = 45,15
pausetime = 6,8
guard.pausetime = 7,7
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = S5,1
guardsound = S6,0
ground.type = High
air.type = Low
ground.slidetime = 48
guard.slidetime = 24
ground.hittime = 48
guard.hittime = 24
air.hittime = 44
ground.velocity = -.5
guard.velocity = -4
air.velocity = -3,-3
airguard.velocity = -2,-2
numhits = 1
getpower = 0,0
givepower = 0,0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
envshake.time = 30
envshake.freq = 95
envshake.ampl = -2


[State 2050, Spark 2]
type = Explod
trigger1 = Movehit = 1
anim = 9022
ID = 9022
postype = P1
pos = 70,-68
facing = 1
sprpriority = 3
removetime = -2
bindtime = 1
ownpal = 1
ontop = 1
scale = 0.415,0.415
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0

[State 2050, Spark 1]
type = Explod
trigger1 = Movehit = 1
anim = 9020
ID = 9020
postype = P1
pos = 70,-68
facing = 1
sprpriority = 4
removetime = -2
bindtime = 1
ownpal = 1
scale = 0.55,0.55
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0

[State 2050, Spark 3]
type = Explod
trigger1 = Moveguarded = 1
anim = 9024
ID = 9024
postype = P1
pos = 70,-68
facing = 1
sprpriority = 4
removetime = -2
bindtime = 1
ownpal = 1
ontop = 1
scale = 0.66,0.66
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0


[State 2050, ChangeState 1]
type = ChangeState
trigger1 = MoveHit
value = 2060

[State 2050, ChangeState 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------
; Weekly Special Attack 7
[Statedef 2060]
type = S
movetype = A
physics = S
anim = 2060
sprpriority = 2
ctrl = 0

[State 2060, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S200,1

[State 2060, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S310,random%3
channel = 0

[State 2060, HitDef]
type = HitDef
trigger1 = !MoveContact
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = Back
air.animtype = Back
fall.animtype = Back
priority = 6,Hit
damage = 45,15
pausetime = 4,5
guard.pausetime = 7,7
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = S5,1
guardsound = S6,0
ground.type = High
air.type = Low
ground.slidetime = 48
guard.slidetime = 24
ground.hittime = 48
guard.hittime = 24
air.hittime = 44
ground.velocity = -2.6,-8.8
guard.velocity = -4
air.velocity = -3.8,-8
airguard.velocity = -2,-2
numhits = 1
getpower = 0,0
givepower = 0,0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall = 1
air.fall = 1
fall.recovertime = 120
fall.recover = 0
envshake.time = 30
envshake.freq = 95
envshake.ampl = -2
fall.envshake.time = 42
fall.envshake.freq = 115
fall.envshake.ampl = -3


[State 2060, Spark 2]
type = Explod
trigger1 = Movehit = 1
anim = 9022
ID = 9022
postype = P1
pos = 44,-114
facing = 1
sprpriority = 3
removetime = -2
bindtime = 1
ownpal = 1
ontop = 1
scale = 0.385,0.385
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0

[State 2060, Spark 1]
type = Explod
trigger1 = Movehit = 1
anim = 9020
ID = 9020
postype = P1
pos = 44,-114
facing = 1
sprpriority = 4
removetime = -2
bindtime = 1
ownpal = 1
scale = 0.45,0.45
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0

[State 2060, Spark 3]
type = Explod
trigger1 = Moveguarded = 1
anim = 9024
ID = 9024
postype = P1
pos = 44,-114
facing = 1
sprpriority = 4
removetime = -2
bindtime = 1
ownpal = 1
ontop = 1
scale = 0.66,0.66
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0


[State 2060, ChangeState 1]
type = ChangeState
trigger1 = MoveHit
value = 2070

[State 2060, ChangeState 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------
; Weekly Special Jump
[Statedef 2070]
type = S
movetype = A
physics = S
anim = 2070
sprpriority = 2
ctrl = 0

[State 2070, PlaySnd]
type = PlaySnd
trigger1 = Time = 4
value = S40,0

[State 2070, Explod]
type = Explod
trigger1 = Time = 4
anim = 9003
ID = 9003
pos = 0,-2
postype = p1
facing = 1
bindtime = 1
removetime = -2
pausemovetime = 9999
supermovetime = 9999
scale = .425,.35
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 2070, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 5.15
y = -11.88
ignorehitpause = 1

[State 2070, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 2,>=0
statetype = A
movetype = A
physics = A

[State 2070, ChangeState 1]
type = ChangeState
triggerall = AnimElem = 3,>=0
trigger1 = (P2Bodydist x) < 16
trigger1 = (P2Bodydist y) =[-8,34]
value = 2080

[State 2070, ChangeState 2]
type = ChangeState
triggerall = AnimElem = 3,>=0
trigger1 = Pos Y > - Vel Y
value = 52

;-----------------------------------
; Weekly Special Attack 8
[Statedef 2080]
type = A
movetype = A
physics = A
anim = 2080
sprpriority = 2
ctrl = 0

[State 2080, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S200,1

[State 2080, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S310,random%3
channel = 0

[State 2080, HitDef]
type = HitDef
trigger1 = !MoveContact
attr = A,HA
hitflag = MAF
guardflag = MA
animtype = Back
air.animtype = Back
fall.animtype = Back
priority = 6,Hit
damage = 45,15
pausetime = 6,12
guard.pausetime = 7,7
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = S5,1
guardsound = S6,0
ground.type = High
air.type = Low
ground.slidetime = 68
guard.slidetime = 24
ground.hittime = 68
guard.hittime = 24
air.hittime = 68
ground.velocity = -1.6
guard.velocity = -4
air.velocity = -2.2,5.2
airguard.velocity = -2,-2
numhits = 1
getpower = 0,0
givepower = 0,0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall = 1
air.fall = 1
fall.recovertime = 120
fall.recover = 0
envshake.time = 30
envshake.freq = 120
envshake.ampl = -2
fall.envshake.time = 40
fall.envshake.freq = 125
fall.envshake.ampl = -3


[State 2080, Spark 2]
type = Explod
trigger1 = Movehit = 1
anim = 9022
ID = 9022
postype = P1
pos = 16,-34
facing = 1
sprpriority = 3
removetime = -2
bindtime = 1
ownpal = 1
ontop = 1
scale = 0.415,0.415
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0

[State 2080, Spark 1]
type = Explod
trigger1 = Movehit = 1
anim = 9020
ID = 9020
postype = P1
pos = 16,-34
facing = 1
sprpriority = 4
removetime = -2
bindtime = 1
ownpal = 1
scale = 0.55,0.55
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0

[State 2080, Spark 3]
type = Explod
trigger1 = Moveguarded = 1
anim = 9024
ID = 9024
postype = P1
pos = 16,-34
facing = 1
sprpriority = 4
removetime = -2
bindtime = 1
ownpal = 1
ontop = 1
scale = 0.66,0.66
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0


[State 2080, ChangeState 1]
type = ChangeState
triggerall = AnimElem = 2,>=0
trigger1 = MoveHit
value = 2090

[State 2080, ChangeState 2]
type = ChangeState
triggerall = AnimElem = 2,>=0
trigger1 = Pos Y > - Vel Y
value = 52

;-----------------------------------
; Weekly Special Attack 9
[Statedef 2090]
type = A
movetype = A
physics = N
velset = 0,0
anim = 2090
sprpriority = 2
ctrl = 0

[State 2090, VarSet]; Score Result
type = VarSet
trigger1 = Time = 1
v = 52
value = var(52) + var(26) + 2
ignorehitpause =  1
persistent = 0

[State 2090, PosAdd]
type = PosAdd
trigger1 = Time = 0
y = 12

[State 2090, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5,1
trigger2 = AnimElem = 5,13
trigger3 = AnimElem = 5,25
value = S2000,1
channel = 0

[State 2090, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S2000,2

[State 2090, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5,1
trigger2 = AnimElem = 5,13
trigger3 = AnimElem = 5,25
value = S2000,3


[State 2090, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 2120
ID = 2120
pos = -54,-54
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = 12
scale = .375,.375
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 2090, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 2120
ID = 2120
pos = 32,-67
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = 12
scale = .375,.375
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 1
ignorehitpause = 1


[State 2090, Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 2120
ID = 2120
pos = -22,-46
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = 6
scale = .375,.375
sprpriority = 5
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 2090, Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 2120
ID = 2120
pos = 38,-56
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = 6
scale = .375,.375
sprpriority = 5
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1


[State 2090, Explod]
type = Explod
trigger1 = AnimElem = 5
anim = 2120
ID = 2120
pos = -6,-52
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = 28
scale = .35,.35
sprpriority = 5
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 2090, Explod]
type = Explod
trigger1 = AnimElem = 5
anim = 2120
ID = 2120
pos = 26,-56
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = 28
scale = .35,.35
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1


[State 2090, Helper]
type = Helper
trigger1 = AnimElem = 5,1
trigger2 = AnimElem = 5,13
trigger3 = AnimElem = 5,25
name = "Ball1"
ID = 2100
stateno = 2100
pos = -6,-52
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size.xscale = .35
size.yscale = .35
ignorehitpause = 1

[State 2090, Helper]
type = Helper
trigger1 = AnimElem = 5,1
trigger2 = AnimElem = 5,13
trigger3 = AnimElem = 5,25
name = "Ball2"
ID = 2100
stateno = 2100
pos = 26,-56
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size.xscale = .35
size.yscale = .35
ignorehitpause = 1

[State 2090, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 6
statetype = A
movetype = I
physics = A

[State 2090, VelSet]
type = VelSet
trigger1 = AnimElem = 6
y = 4.2

[State 2090, ChangeState]
type = ChangeState
triggerall = AnimElem = 2,>=0
trigger1 = Pos Y > - Vel Y
value = 2095

;-----------------------------------
; Weekly Special Land
[Statedef 2095]
type = S
movetype = I
physics = S
velset = 0,0
anim = 2095
sprpriority = 2
ctrl = 0

[State 2095, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 2095, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S52,0

[State 2095, Explod]
type = Explod
trigger1 = Time = 0
anim = 9004
ID = 9004
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
pausemovetime = 9999
supermovetime = 9999
scale = .675,.5
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 2095, ChangeState]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;-----------------------------------
; Weekly Special P2 State
[Statedef 2096]
type = L
movetype = H
physics = N
sprpriority = 2
ctrl = 0

[State 2096, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 2096
ignorehitpause = 1

[State 2096, VelSet]
type = VelSet
trigger1 = 1
x = 0
y = 0
ignorehitpause = 1

[State 2096, ChangeState]
type = ChangeState
trigger1 = Animtime = 0
value = 2097

;-----------------------------------
; Weekly Special P2 State
[Statedef 2097]
type = L
movetype = H
physics = N
sprpriority = 2
ctrl = 0

[State 2097, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 2097
ignorehitpause = 1

[State 2097, StateTypeSet]
type = StateTypeSet
trigger1 = Time = 1
statetype = A
movetype = H
physics = A

[State 2097, VelSet]
type = VelSet
trigger1 = Time = 1
x = -4.2
y = -7.6
ignorehitpause = 1

[State 2096, SelfState]
type = SelfState
triggerall = Time >= 2
trigger1 = Pos Y > - Vel Y
value = 5100



;===============================================================================
;=========================  Saturday Crash  ====================================
;===============================================================================
;-----------------------------------
; Saturday Crash
[Statedef 2200]
type = S
movetype = A
physics = S
anim = 2200
poweradd = -1000
velset = 0,0
sprpriority = 2
ctrl = 0

[State 2200, VarSet]; Score Result
type = VarSet
trigger1 = Time = 0
v = 52
value = var(52) + 6 + 10*((PrevStateNo = 1100) || (PrevStateNo = 1200) || (PrevStateNo = 1220) || (PrevStateNo = 1410)) + 8*(PrevStateNo=[200,445])
ignorehitpause =  1
persistent = 0

[State 2200, Corner Push]
type = VarSet
trigger1 = AnimElem = 2
fvar(5) = 0


[State 2200, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 78
anim = -1
sound = S9999,0
pos = 0,0
movetime = 78
darken = 0
unhittable = 1


[State 2200, Explod]; Super FX
type = Explod
trigger1 = Time = 0
anim = 9040
ID = 9040
pos = -6,-128
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
pausemovetime = 9999
supermovetime = 9999
scale = .45,.45
sprpriority = 8
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1


[State 2200, explod] ;Super BG 0
type = Explod
trigger1 = AnimElem = 1
anim = 9100
id = 9101
postype = back
pos = 0, -10
facing = 1
removetime = -1
sprpriority = -6
scale =.575,.575
supermovetime = 9999
pausemovetime = 9999
bindtime = -1
ownpal = 1
ignorehitpause = 1

[State 2200, explod] ;Super Portrait
type = Explod
trigger1 = Time = 0
anim = 9110
id = 9111
postype = back
pos = 0,-60
facing = 1
removetime = -1
sprpriority = -3
scale =.5,.5
supermovetime = 9999
pausemovetime = 9999
bindtime = -1
ownpal = 1
ignorehitpause = 1

[State 2200, explod] ;Super BG Portrait
type = Explod
trigger1 = Time = 0
anim = 9120
id = 9111
postype = back
pos = 0,-60
facing = 1
removetime = -1
sprpriority = -2
scale =.5,.5
supermovetime = 9999
pausemovetime = 9999
bindtime = -1
ownpal = 1
ignorehitpause = 1

[State 2200, explod] ;Super Window
type = Explod
trigger1 = time = 0
anim = 9130
id = 9131
postype = back
pos = 0, -60
facing = 1
removetime = -1
sprpriority = -4
scale = .5,.5
supermovetime = 9999
pausemovetime = 9999
bindtime = -1
ownpal = 1
ignorehitpause = 1


[State 2200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1,22
value = S2200,0
channel = 0

[State 2200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S2200,1

[State 2200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
value = S2200,2

[State 2200, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 2320
ID = 2320
pos = -27,-70
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
pausemovetime = 9999
supermovetime = 9999
scale = .385,.385
sprpriority = 4
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 2200, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 2330
ID = 2330
pos = -32,-76
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
pausemovetime = 9999
supermovetime = 9999
scale = .385,.385
sprpriority = 4
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 2200, Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 2340
ID = 2340
pos = -36,-86
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = 4
pausemovetime = 9999
supermovetime = 9999
scale = .385,.385
sprpriority = 4
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 2200, Explod]
type = Explod
trigger1 = AnimElem = 5
anim = 2340
ID = 2340
pos = -39,-104
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = 20
pausemovetime = 9999
supermovetime = 9999
scale = .385,.385
sprpriority = 4
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 2200, Explod]
type = Explod
trigger1 = AnimElem = 6
anim = 2340
ID = 2340
pos = -46,-47
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = 3
pausemovetime = 9999
supermovetime = 9999
scale = .385,.385
sprpriority = 4
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1


[State 2200, Helper]
type = Helper
trigger1 = AnimElem = 7
name = "Saturday"
ID = 2300
stateno = 2300
pos = 0,-47
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size.xscale = .385
size.yscale = .385
ignorehitpause = 1

[State 2200, ChangeState]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;===============================================================================
;==========================  Double Sunday  ====================================
;===============================================================================
;-----------------------------------
; Double Sunday
[Statedef 2400]
type = S
movetype = A
physics = S
anim = 2400
poweradd = -2000
velset = 0,0
sprpriority = 2
ctrl = 0

[State 2400, VarSet]; Score Result
type = VarSet
trigger1 = Time = 0
v = 52
value = var(52) + 6 + 10*((PrevStateNo = 1100) || (PrevStateNo = 1200) || (PrevStateNo = 1220) || (PrevStateNo = 1410)) + 8*(PrevStateNo=[200,445])
ignorehitpause =  1
persistent = 0

[State 2400, Corner Push]
type = VarSet
triggerall = Anim = 2400
trigger1 = AnimElem = 2
fvar(5) = 0


[State 2400, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 62
anim = -1
sound = S9999,0
pos = 0,0
movetime = 62
darken = 0
unhittable = 1


[State 2400, Explod]; Super FX
type = Explod
trigger1 = Time = 0
anim = 9040
ID = 9040
pos = -6,-128
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
pausemovetime = 9999
supermovetime = 9999
scale = .45,.45
sprpriority = 8
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1


[State 2400, explod] ;Super BG 0
type = Explod
triggerall = Anim = 2400
trigger1 = AnimElem = 1
anim = 9100
id = 9102
postype = back
pos = 0, -10
facing = 1
removetime = -1
sprpriority = -6
scale =.575,.575
supermovetime = 9999
pausemovetime = 9999
bindtime = -1
ownpal = 1
ignorehitpause = 1

[State 2400, explod] ;Super Portrait
type = Explod
trigger1 = Time = 0
anim = 9110
id = 9112
postype = back
pos = 0,-60
facing = 1
removetime = -1
sprpriority = -3
scale =.5,.5
supermovetime = 9999
pausemovetime = 9999
bindtime = -1
ownpal = 1
ignorehitpause = 1

[State 2400, explod] ;Super BG Portrait
type = Explod
trigger1 = Time = 0
anim = 9120
id = 9112
postype = back
pos = 0,-60
facing = 1
removetime = -1
sprpriority = -2
scale =.5,.5
supermovetime = 9999
pausemovetime = 9999
bindtime = -1
ownpal = 1
ignorehitpause = 1

[State 2400, explod] ;Super Window
type = Explod
trigger1 = time = 0
anim = 9130
id = 9132
postype = back
pos = 0, -60
facing = 1
removetime = -1
sprpriority = -4
scale = .5,.5
supermovetime = 9999
pausemovetime = 9999
bindtime = -1
ownpal = 1
ignorehitpause = 1



[State 2400, SprPriority]
type = SprPriority
triggerall = Anim = 2400
trigger1 = AnimElem = 5,>=0
value = 0
ignorehitpause = 1

[State 2400, PlaySnd]
type = PlaySnd
triggerall = Anim = 2400
trigger1 = AnimElem = 1,24
value = S2400,0
channel = 0

[State 2400, PlaySnd]
type = PlaySnd
triggerall = Anim = 2400
trigger1 = AnimElem = 2
value = S2400,1

[State 2400, PlaySnd]
type = PlaySnd
triggerall = Anim = 2400
trigger1 = AnimElem = 5
value = S2400,2

[State 2400, PlaySnd]
type = PlaySnd
triggerall = Anim = 2400
trigger1 = AnimElem = 5
value = S2400,3


[State 2400, Explod]
type = Explod
triggerall = Anim = 2400
trigger1 = AnimElem = 2
anim = 2520
ID = 2520
pos = -54,-58
postype = p1
facing = 1
bindtime = -1
removetime = 12
pausemovetime = 9999
supermovetime = 9999
scale = .35,.35
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 2400, Explod]
type = Explod
triggerall = Anim = 2400
trigger1 = AnimElem = 2
anim = 2520
ID = 2520
pos = 32,-72
postype = p1
facing = 1
bindtime = -1
removetime = 12
pausemovetime = 9999
supermovetime = 9999
scale = .35,.35
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 2400, Explod]
type = Explod
triggerall = Anim = 2400
trigger1 = AnimElem = 3
anim = 2530
ID = 2530
pos = -20,-56
postype = p1
facing = 1
bindtime = -1
removetime = 12
pausemovetime = 9999
supermovetime = 9999
scale = .35,.35
sprpriority = 4
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 2400, Explod]
type = Explod
triggerall = Anim = 2400
trigger1 = AnimElem = 3
anim = 2530
ID = 2530
pos = 36,-64
postype = p1
facing = 1
bindtime = -1
removetime = 12
pausemovetime = 9999
supermovetime = 9999
scale = .35,.35
sprpriority = 4
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 2400, Explod]
type = Explod
triggerall = Anim = 2400
trigger1 = AnimElem = 4
anim = 2530
ID = 2530
pos = 58,-84
postype = p1
facing = 1
bindtime = -1
removetime = 8
pausemovetime = 9999
supermovetime = 9999
scale = .35,.35
sprpriority = 4
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1


[State 2400, Helper]
type = Helper
triggerall = Anim = 2400
trigger1 = AnimElem = 5
name = "SundayBeam"
ID = 2500
stateno = 2500
pos = 26,-88
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size.xscale = .505
size.yscale = .65
ignorehitpause = 1

[State 2400, ChangeAnim]
type = ChangeAnim
triggerall = Anim = 2400
trigger1 = var(17)
value = 2410
ignorehitpause = 1

[State 2400, ChangeState]
type = ChangeState
triggerall = Anim = 2410
trigger1 = Animtime = 0
value = 0
ctrl = 1


;===============================================================================
;========================== Dynamite Monday ====================================
;===============================================================================
;-----------------------------------
; Dynamite Monday Start
[Statedef 2600]
type = S
movetype = A
physics = S
anim = 2000
poweradd = -1000
velset = 0,0
sprpriority = 2
ctrl = 0

[State 2600, VarSet]; Score Result
type = VarSet
trigger1 = Time = 0
v = 52
value = var(52) + 6 + 10*((PrevStateNo = 1100) || (PrevStateNo = 1200) || (PrevStateNo = 1220) || (PrevStateNo = 1410)) + 8*(PrevStateNo=[200,445])
ignorehitpause =  1
persistent = 0

[State 2600, Corner Push]
type = VarSet
trigger1 = AnimElem = 2
fvar(5) = 0

[State 2600, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 40
anim = -1
sound = S9999,0
pos = 0,0
movetime = 40
darken = 0
unhittable = 1


[State 2600, Explod]; Super FX
type = Explod
trigger1 = Time = 0
anim = 9040
ID = 9040
pos = -6,-128
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
pausemovetime = 9999
supermovetime = 9999
scale = .45,.45
sprpriority = 8
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1


[State 2600, explod] ;Super BG 0
type = Explod
trigger1 = AnimElem = 1
anim = 9100
id = 9103
postype = back
pos = 0, -10
facing = 1
removetime = -1
sprpriority = -6
scale =.575,.575
supermovetime = 9999
pausemovetime = 9999
bindtime = -1
ownpal = 1
ignorehitpause = 1

[State 2600, explod] ;Super Portrait
type = Explod
trigger1 = Time = 0
anim = 9110
id = 9113
postype = back
pos = 0,-60
facing = 1
removetime = -1
sprpriority = -3
scale =.5,.5
supermovetime = 9999
pausemovetime = 9999
bindtime = -1
ownpal = 1
ignorehitpause = 1

[State 2600, explod] ;Super BG Portrait
type = Explod
trigger1 = Time = 0
anim = 9120
id = 9113
postype = back
pos = 0,-60
facing = 1
removetime = -1
sprpriority = -2
scale =.5,.5
supermovetime = 9999
pausemovetime = 9999
bindtime = -1
ownpal = 1
ignorehitpause = 1

[State 2600, explod] ;Super Window
type = Explod
trigger1 = time = 0
anim = 9130
id = 9133
postype = back
pos = 0, -60
facing = 1
removetime = -1
sprpriority = -4
scale = .5,.5
supermovetime = 9999
pausemovetime = 9999
bindtime = -1
ownpal = 1
ignorehitpause = 1



[State 2600, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = ((P2Bodydist x) + 20.0)/10.0

[State 2600, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 1,22
value = S2600,0
channel = 0

[State 2600, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 2
value = S1200,1

[State 2600, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 9005
ID = 9005
pos = 0,-12
postype = p1
facing = 1
bindtime = 3
removetime = -2
pausemovetime = 9999
supermovetime = 9999
scale = .5,.5
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 2600, HitDef]
type = HitDef
trigger1 = !MoveContact
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = Back
priority = 6,Hit
damage = 60,20
pausetime = 6,8
guard.pausetime = 7,7
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = S5,0
guardsound = S6,0
ground.type = Low
air.type = Low
ground.slidetime = 44
guard.slidetime = 20
ground.hittime = 44
guard.hittime = 20
air.hittime = 40
ground.velocity = -3.8
guard.velocity = -4
air.velocity = -3,-3
airguard.velocity = -2,-2
numhits = 1
getpower = 0,0
givepower = 0,0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
envshake.time = 28
envshake.freq = 93
envshake.ampl = -2


[State 2600, Spark 2]
type = Explod
trigger1 = Movehit = 1
anim = 9022
ID = 9022
postype = P1
pos = 66,-76
facing = 1
sprpriority = 3
removetime = -2
bindtime = 1
ownpal = 1
ontop = 1
scale = 0.335,0.335
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0

[State 2600, Spark 1]
type = Explod
trigger1 = Movehit = 1
anim = 9020
ID = 9020
postype = P1
pos = 66,-76
facing = 1
sprpriority = 4
removetime = -2
bindtime = 1
ownpal = 1
scale = 0.425,0.425
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0

[State 2600, Spark 3]
type = Explod
trigger1 = Moveguarded = 1
anim = 9024
ID = 9024
postype = P1
pos = 66,-76
facing = 1
sprpriority = 4
removetime = -2
bindtime = 1
ownpal = 1
ontop = 1
scale = 0.44,0.44
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0

[State 2600, ChangeState 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 2600, ChangeState 2]
type = ChangeState
trigger1 = MoveHit
value = 2610

;-----------------------------------
; Dynamite Monday Attack 2
[Statedef 2610]
type = S
movetype = A
physics = S
anim = 2610
sprpriority = 2
ctrl = 0

[State 2610, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S200,2

[State 2610, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S300,random%3
channel = 0


[State 2610, HitDef]
type = HitDef
trigger1 = !MoveContact
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = Back
priority = 6,Hit
damage = 45,15
pausetime = 6,8
guard.pausetime = 5,5
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = S5,2
guardsound = S6,0
ground.type = Low
air.type = Low
ground.slidetime = 44
guard.slidetime = 20
ground.hittime = 44
guard.hittime = 20
air.hittime = 40
ground.velocity = -2.8
guard.velocity = -4
air.velocity = -4,-4
airguard.velocity = -2,-2
numhits = 1
getpower = 0,0
givepower = 0,0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
envshake.time = 20
envshake.freq = 75
envshake.ampl = -2


[State 2610, Spark 2]
type = Explod
trigger1 = Movehit = 1
anim = 9022
ID = 9022
postype = P1
pos = 84,-40
facing = 1
sprpriority = 3
removetime = -2
bindtime = 1
ownpal = 1
ontop = 1
scale = 0.335,0.335
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0

[State 2610, Spark 1]
type = Explod
trigger1 = Movehit = 1
anim = 9020
ID = 9020
postype = P1
pos = 84,-40
facing = 1
sprpriority = 4
removetime = -2
bindtime = 1
ownpal = 1
scale = 0.425,0.425
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0

[State 2610, Spark 3]
type = Explod
trigger1 = Moveguarded = 1
anim = 9024
ID = 9024
postype = P1
pos = 84,-40
facing = 1
sprpriority = 4
removetime = -2
bindtime = 1
ownpal = 1
ontop = 1
scale = 0.44,0.44
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0

[State 2610, ChangeState 2]
type = ChangeState
trigger1 = MoveHit
value = 2620

[State 2610, ChangeState 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------
; Dynamite Monday Attack 3
[Statedef 2620]
type = S
movetype = A
physics = S
anim = 2020
sprpriority = 2
ctrl = 0

[State 2620, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S200,0

[State 2620, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S300,random%3
channel = 0


[State 2620, HitDef]
type = HitDef
trigger1 = !MoveContact
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = Back
priority = 6,Hit
damage = 45,15
pausetime = 6,8
guard.pausetime = 5,5
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = S5,0
guardsound = S6,0
ground.type = Low
air.type = Low
ground.slidetime = 44
guard.slidetime = 20
ground.hittime = 44
guard.hittime = 20
air.hittime = 40
ground.velocity = -2.4
guard.velocity = -4
air.velocity = -4,-4
airguard.velocity = -2,-2
numhits = 1
getpower = 0,0
givepower = 0,0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
envshake.time = 20
envshake.freq = 75
envshake.ampl = -2


[State 2620, Spark 2]
type = Explod
trigger1 = Movehit = 1
anim = 9022
ID = 9022
postype = P1
pos = 66,-76
facing = 1
sprpriority = 3
removetime = -2
bindtime = 1
ownpal = 1
ontop = 1
scale = 0.335,0.335
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0

[State 2620, Spark 1]
type = Explod
trigger1 = Movehit = 1
anim = 9020
ID = 9020
postype = P1
pos = 66,-76
facing = 1
sprpriority = 4
removetime = -2
bindtime = 1
ownpal = 1
scale = 0.425,0.425
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0

[State 2620, Spark 3]
type = Explod
trigger1 = Moveguarded = 1
anim = 9024
ID = 9024
postype = P1
pos = 66,-76
facing = 1
sprpriority = 4
removetime = -2
bindtime = 1
ownpal = 1
ontop = 1
scale = 0.44,0.44
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0

[State 2620, ChangeState 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 2620, ChangeState 2]
type = ChangeState
trigger1 = MoveHit
value = 2630

;-----------------------------------
; Dynamite Monday Attack 4
[Statedef 2630]
type = S
movetype = A
physics = S
anim = 2610
sprpriority = 2
ctrl = 0

[State 2630, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S200,2

[State 2630, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S300,random%3
channel = 0


[State 2630, HitDef]
type = HitDef
trigger1 = !MoveContact
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = Back
priority = 6,Hit
damage = 45,15
pausetime = 6,8
guard.pausetime = 5,5
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = S5,2
guardsound = S6,0
ground.type = Low
air.type = Low
ground.slidetime = 44
guard.slidetime = 20
ground.hittime = 44
guard.hittime = 20
air.hittime = 40
ground.velocity = -2
guard.velocity = -4
air.velocity = -4,-4
airguard.velocity = -2,-2
numhits = 1
getpower = 0,0
givepower = 0,0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
envshake.time = 20
envshake.freq = 75
envshake.ampl = -2


[State 2630, Spark 2]
type = Explod
trigger1 = Movehit = 1
anim = 9022
ID = 9022
postype = P1
pos = 84,-40
facing = 1
sprpriority = 3
removetime = -2
bindtime = 1
ownpal = 1
ontop = 1
scale = 0.335,0.335
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0

[State 2630, Spark 1]
type = Explod
trigger1 = Movehit = 1
anim = 9020
ID = 9020
postype = P1
pos = 84,-40
facing = 1
sprpriority = 4
removetime = -2
bindtime = 1
ownpal = 1
scale = 0.425,0.425
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0

[State 2630, Spark 3]
type = Explod
trigger1 = Moveguarded = 1
anim = 9024
ID = 9024
postype = P1
pos = 84,-40
facing = 1
sprpriority = 4
removetime = -2
bindtime = 1
ownpal = 1
ontop = 1
scale = 0.44,0.44
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0

[State 2630, ChangeState 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 2630, ChangeState 2]
type = ChangeState
trigger1 = MoveHit
value = 2640

;-----------------------------------
; Dynamite Monday Attack 5
[Statedef 2640]
type = S
movetype = A
physics = S
anim = 2640
sprpriority = 2
ctrl = 0

[State 2640, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S200,1

[State 2640, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S310,random%3
channel = 0


[State 2640, HitDef]
type = HitDef
trigger1 = !MoveContact
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = Back
priority = 6,Hit
damage = 45,15
pausetime = 6,8
guard.pausetime = 5,5
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = S5,1
guardsound = S6,0
ground.type = High
air.type = Low
ground.slidetime = 44
guard.slidetime = 20
ground.hittime = 44
guard.hittime = 20
air.hittime = 40
ground.velocity = -2.4
guard.velocity = -4
air.velocity = -4,-4
airguard.velocity = -2,-2
numhits = 1
getpower = 0,0
givepower = 0,0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
envshake.time = 20
envshake.freq = 75
envshake.ampl = -2


[State 2640, Spark 2]
type = Explod
trigger1 = Movehit = 1
anim = 9022
ID = 9022
postype = P1
pos = 70,-68
facing = 1
sprpriority = 3
removetime = -2
bindtime = 1
ownpal = 1
ontop = 1
scale = 0.415,0.415
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0

[State 2640, Spark 1]
type = Explod
trigger1 = Movehit = 1
anim = 9020
ID = 9020
postype = P1
pos = 70,-68
facing = 1
sprpriority = 4
removetime = -2
bindtime = 1
ownpal = 1
scale = 0.55,0.55
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0

[State 2640, Spark 3]
type = Explod
trigger1 = Moveguarded = 1
anim = 9024
ID = 9024
postype = P1
pos = 70,-68
facing = 1
sprpriority = 4
removetime = -2
bindtime = 1
ownpal = 1
ontop = 1
scale = 0.66,0.66
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0

[State 2640, ChangeState 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 2640, ChangeState 2]
type = ChangeState
trigger1 = MoveHit
value = 2650

;-----------------------------------
; Dynamite Monday Attack 6
[Statedef 2650]
type = S
movetype = A
physics = S
anim = 2650
sprpriority = 2
ctrl = 0

[State 2650, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S200,3

[State 2650, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S310,random%3
channel = 0


[State 2650, HitDef]
type = HitDef
trigger1 = !MoveContact
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = Back
priority = 6,Hit
damage = 45,15
pausetime = 6,8
guard.pausetime = 5,5
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = S5,1
guardsound = S6,0
ground.type = High
air.type = Low
ground.slidetime = 44
guard.slidetime = 20
ground.hittime = 44
guard.hittime = 20
air.hittime = 40
ground.velocity = -3.6
guard.velocity = -4
air.velocity = -2,-4
airguard.velocity = -2,-2
numhits = 1
getpower = 0,0
givepower = 0,0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
envshake.time = 20
envshake.freq = 75
envshake.ampl = -2


[State 2650, Spark 2]
type = Explod
trigger1 = Movehit = 1
anim = 9022
ID = 9022
postype = P1
pos = 82,-80
facing = 1
sprpriority = 3
removetime = -2
bindtime = 1
ownpal = 1
ontop = 1
scale = 0.415,0.415
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0

[State 2650, Spark 1]
type = Explod
trigger1 = Movehit = 1
anim = 9020
ID = 9020
postype = P1
pos = 82,-80
facing = 1
sprpriority = 4
removetime = -2
bindtime = 1
ownpal = 1
scale = 0.55,0.55
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0

[State 2650, Spark 3]
type = Explod
trigger1 = Moveguarded = 1
anim = 9024
ID = 9024
postype = P1
pos = 82,-80
facing = 1
sprpriority = 4
removetime = -2
bindtime = 1
ownpal = 1
ontop = 1
scale = 0.66,0.66
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0


[State 2650, ChangeState 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 2650, ChangeState 2]
type = ChangeState
trigger1 = MoveHit
value = 2660

;-----------------------------------
; Dynamite Monday Attack 7
[Statedef 2660]
type = S
movetype = A
physics = S
anim = 2660
sprpriority = 2
ctrl = 0

[State 2660, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 7
ignorehitpause = 1

[State 2650, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
value = S200,1

[State 2650, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S2600,1
channel = 0

[State 2660, VarSet]; Score Result
type = VarSet
trigger1 = Time = 1
v = 52
value = var(52) + var(26) + 1
ignorehitpause =  1
persistent = 0


[State 2660, HitDef1]
type = HitDef
triggerall = Time%3=0
triggerall = Hitcount<8
trigger1 = AnimElem = 3,>=0
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = Back
priority = 6,Hit
damage = 45,15
pausetime = 2,4
guard.pausetime = 5,5
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = S5,1
guardsound = S6,0
ground.type = Low
air.type = Low
ground.slidetime = 44
guard.slidetime = 20
ground.hittime = 44
guard.hittime = 20
air.hittime = 40
ground.velocity = -6.2
guard.velocity = -4
air.velocity = -3,-3
airguard.velocity = -2,-2
numhits = 1
getpower = 0,0
givepower = 0,0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
envshake.time = 20
envshake.freq = 75
envshake.ampl = -2

[State 2660, HitDef2]
type = HitDef
triggerall = Time%3=0
triggerall = Hitcount=8
trigger1 = AnimElem = 3,>=0
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = Back
air.animtype = Back
fall.animtype = Back
priority = 6,Hit
damage = 45,15
pausetime = 7,9
guard.pausetime = 5,5
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = S5,1
guardsound = S6,0
ground.type = Low
air.type = Low
ground.slidetime = 44
guard.slidetime = 20
ground.hittime = 44
guard.hittime = 20
air.hittime = 40
ground.velocity = -4.8,-6.8
guard.velocity = -4
air.velocity = -4,-4
airguard.velocity = -2,-2
numhits = 1
getpower = 0,0
givepower = 0,0
fall= 1
air.fall = 1
fall.recover =0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
envshake.time = 20
envshake.freq = 75
envshake.ampl = -2
fall.envshake.time = 30
fall.envshake.freq = 120
fall.envshake.ampl = -3



[State 2660, Spark 2]
type = Explod
trigger1 = Numexplod(9122) <=3
trigger1 = Movehit = 1
anim = 9022
ID = 9122
postype = P1
pos = 64,-64
random = 20,40
facing = 1
sprpriority = 3
removetime = -2
bindtime = 1
ownpal = 1
ontop = 1
scale = 0.415,0.415
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1

[State 2660, Spark 1]
type = Explod
trigger1 = Numexplod(9122) <=3
trigger1 = Movehit = 1
anim = 9020
ID = 9122
postype = P1
pos = 64,-64
random = 20,40
facing = 1
sprpriority = 4
removetime = -2
bindtime = 1
ownpal = 1
scale = 0.55,0.55
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1

[State 2660, Spark 3]
type = Explod
trigger1 = Numexplod(9124) <=3
trigger1 = Moveguarded = 1
anim = 9024
ID = 9124
postype = P1
pos = 64,-64
random = 20,40
facing = 1
sprpriority = 4
removetime = -2
bindtime = 1
ownpal = 1
ontop = 1
scale = 0.66,0.66
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1


[State 2660, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
