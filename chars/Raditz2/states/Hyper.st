;*******************************************************************************
;***************************************************************************
;************************    Hyper   *************************************
;***************************************************************************
;*******************************************************************************

;===============================================================================
;==========================  Saiyan Fury  ======================================
;===============================================================================
;-----------------------------------
; Saiyan Fury Start
[Statedef 3000]
type = S
movetype = A
physics = S
anim = 3000
poweradd = -3000
juggle = 8
velset = 0,0
sprpriority = 2
ctrl = 0


[State 3000, VarSet]; Score Result
type = VarSet
trigger1 = Time = 0
v = 52
value = var(52) + 15 + 10*((PrevStateNo = 1100) || (PrevStateNo = 1200) || (PrevStateNo = 1220) || (PrevStateNo = 1410))
ignorehitpause =  1
persistent = 0


[State 3000, Corner Push]
type = VarSet
trigger1 = AnimElem = 2
fvar(5) = 0

[State 3000, Explod]; Hyper FX
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


[State 3000, explod] ;Hyper BG
type = Explod
trigger1 = AnimElem = 1
anim = 9500
id = 9500
postype = back
pos = 0, 0
facing = 1
removetime = -1
sprpriority = -6
scale =.5,.5
supermovetime = 9999
pausemovetime = 9999
bindtime = -1
ownpal = 1
ignorehitpause = 1

[State 3000, explod] ;Hyper BG Portrait
type = Explod
trigger1 = Time = 0
anim = 9110
id = 9510
postype = back
pos = 0,-80
facing = 1
removetime = -1
sprpriority = -3
scale =.5,.5
supermovetime = 9999
pausemovetime = 9999
bindtime = -1
ownpal = 1
ignorehitpause = 1

[State 3000, explod] ;Hyper Portrait
type = Explod
trigger1 = Time = 0
anim = 9120
id = 9510
postype = back
pos = 0,-80
facing = 1
removetime = -1
sprpriority = -2
scale =.5,.5
supermovetime = 9999
pausemovetime = 9999
bindtime = -1
ownpal = 1
ignorehitpause = 1

[State 3000, explod] ;Super Window1
type = Explod
trigger1 = time = 0
anim = 9130
id = 9530
postype = back
pos = 0,-80
facing = 1
removetime = -1
sprpriority = -4
scale = .5,.5
supermovetime = 9999
pausemovetime = 9999
bindtime = -1
ownpal = 1
ignorehitpause = 1


[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 35
anim = -1
sound = S9999,1
movetime = 35
darken = 0
ignorehitpause = 1


[State 3000, VarSet]
type = VarSet
trigger1 = Time = 0
v = 59
value = 0
ignorehitpause = 1

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1,20
value = S3000,0
channel = 0

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S1200,1

[State 3000, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 20.4
ignorehitpause = 1

[State 3000, Explod]
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


[State 3000, HitDef]
type = HitDef
trigger1 = !MoveContact
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = medium
priority = 7,Hit
damage = 100,40
pausetime = 8,10
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = S3000,2
guardsound = S6,0
ground.type = High
air.type = Low
ground.slidetime = 98
guard.slidetime = 34
ground.hittime = 98
guard.hittime = 34
air.hittime = 94
ground.velocity = -23.4
guard.velocity = -8
air.velocity = -12.8,-8.8
airguard.velocity = -5.2,-4.2
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall = 0
air.fall = 1
fall.recover = 0
getpower = 0,0
givepower = 0,0
envshake.time = 40
envshake.freq = 120
envshake.ampl = -2


[State 3000, Spark 2]
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

[State 3000, Spark 1]
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

[State 3000, Spark 3]
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

[State 3000, ChangeState]
type = ChangeState
trigger1 = movehit = 1 && win = 0
value = 3010
ctrl = 0
ignorehitpause = 1

[State 3000, End]
type = ChangeState
trigger1 = movehit = 1 && win = 1
trigger2 = Animtime = 0
value = 0
ctrl = 1

;----------------------------------
; Saiyan Fury Fly
[Statedef 3010]
type = S
movetype = I
physics = S

[State 3010, PlaySnd]
type = PlaySnd
trigger1 = time = 9
value = S40,0

[State 3010, ChangeAnim]
type = ChangeAnim
trigger1 = time = 7
value = 3010

[State 3010, Explod]; Jump Dust
type = Explod
trigger1 = time = 9
anim = 48
ID = 48
pos = 0,-4
postype = p1
facing = 1
bindtime = 1
removetime = -2
pausemovetime = 9999
supermovetime = 9999
scale = .45,.45
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 3010, VelSet]
type = VelSet
trigger1 = time = 9
x = (Ceil(P2dist x))/18.62
y = -9.68

[State 3010, StateTypeSet]
type = StateTypeSet
trigger1 = time >= 9
statetype = A
movetype = A
physics = A
ignorehitpause = 1

[State 3010, Width]
type = Width
trigger1 = 1
edge = 0,0
player = -20,-20

[State 3010, End]
type = ChangeState
triggerall = time > 19
trigger1 = pos y > -vel y
value = 3020

;----------------------------------
; Saiyan Fury Kick
[Statedef 3020]
type = S
movetype = A
physics = S
anim = 3020
velset = 0,0

[State 3020, Width]
type = Width
trigger1 = Time = [0,4]
edge = 0,0
player = -18,-18

[State 3020, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 3020, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S52,0

[State 3020, Turn]
type = Turn
trigger1 = time = 0
ignorehitpause = 1

[State 3020, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S200,3

[State 3020, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S310,random%3
channel = 0

[State 3020, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = S, HA
damage = 60, 20
animtype = hard
guardflag = MA
hitflag = MAF
priority = 7, Hit
pausetime = 12, 13
sparkno = -1
guard.sparkno = -1
hitsound = S5,3
guardsound = S6,0
ground.type = High
air.type = Low
ground.slidetime = 48
guard.slidetime = 20
ground.hittime = 48
guard.hittime = 20
air.hittime = 50
ground.velocity = -18.4
guard.velocity = -5.2
air.velocity = -6.8,-3.8
airguard.velocity = -2.1,-1.9
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
getpower = 0,0
givepower = 0,0
fall = 0
air.fall = 1
fall.recover = 0
envshake.time = 40
envshake.freq = 120
envshake.ampl = -2


[State 3020, Spark 2]
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

[State 3020, Spark 1]
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

[State 3020, Spark 3]
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


[State 3020, End]
type = ChangeState
trigger1 = movehit = 1 && win = 0
value = 3030

[State 3020, End]
type = ChangeState
trigger1 = animtime = 0
trigger1 = movehit = 1 && win = 1
trigger2 = animtime = 0
trigger2 = moveguarded
trigger3 = animtime = 0
value = 0
ctrl = 1

;----------------------------------
; Saiyan Fury Pursuit
[Statedef 3030]
type = S
movetype = I
physics = S
anim = 3030

[State 3030, Explod]; Run Dust
type = Explod
trigger1 = time = 6
anim = 9005
ID = 9005
pos = -10,-2
postype = p1
facing = 1
bindtime = 1
removetime = -2
pausemovetime = 9999
supermovetime = 9999
scale = .5,.4
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 3030, PlaySnd]
type = PlaySnd
trigger1 = time = 6
value = S1200,1

[State 3030, VelSet]
type = VelSet
trigger1 = time = 7
x = 32.8

[State 3030, End]
type = ChangeState
triggerall = time > 11
trigger1 = P2Bodydist x < 52
value = 3040

[State 3030, End]
type = ChangeState
trigger1 = time >50
value = 0
ctrl = 1

;----------------------------------
; Saiyan Fury Attack 1
[Statedef 3040]
type = S
movetype = A
physics = S
anim = 3040

[State 3040, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S200,0

[State 3040, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S300,random%3
channel = 0

[State 3040, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = S, HA
damage = 50, 20
animtype = hard
guardflag = MA
hitflag = MAF
priority = 7, Hit
pausetime = 9, 11
sparkno = -1
guard.sparkno = -1
sparkxy = 0, 0
hitsound = S5, 0
guardsound = S6, 0
ground.type = Low
air.type = Low
ground.slidetime = 34
guard.slidetime = 18
ground.hittime = 36
guard.hittime = 18
air.hittime = 40
ground.velocity = -1.6
guard.velocity = -2.2
air.velocity = -3.6,-2.8
airguard.velocity = -1.8,-1.2
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
numhits = 1
getpower = 0,0
givepower = 0,0
envshake.time = 20
envshake.freq = 80
envshake.ampl = -2


[State 3040, Spark 2]
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

[State 3040, Spark 1]
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

[State 3040, Spark 3]
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


[State 3040, End]
type = ChangeState
trigger1 = movehit = 1 && win = 0
value = 3050

[State 3040, End]
type = ChangeState
trigger1 = animtime = 0
trigger1 = movehit = 1 && win = 1
trigger2 = animtime = 0
trigger2 = moveguarded
trigger3 = animtime = 0
value = 0
ctrl = 1

;----------------------------------
; Saiyan Fury Attack 2
[Statedef 3050]
type = S
movetype = A
physics = S

[State 3050, ChangeAnim]
type = ChangeAnim
triggerall = Anim != 3050
trigger1 = Time = 5
value = 3050
ignorehitpause = 1

[State 3050, PlaySnd]
type = PlaySnd
triggerall = Anim = 3050
trigger1 = AnimElem = 1
value = S200,2

[State 3050, PlaySnd]
type = PlaySnd
triggerall = Anim = 3050
trigger1 = AnimElem = 1
value = S300,random%3
channel = 0

[State 3050, HitDef]
type = HitDef
triggerall = Anim = 3050
trigger1 = AnimElem = 2
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
priority = 7,Hit
damage = 60,20
pausetime = 10,12
guard.pausetime = 4,4
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = S5,2
guardsound = S6,0
ground.type = Low
air.type = Low
ground.slidetime = 40
guard.slidetime = 18
ground.hittime = 42
guard.hittime = 18
air.hittime = 40
ground.velocity = -1.6
guard.velocity = -2.8
air.velocity = -4.6,-2.9
airguard.velocity = -2.5,-1.9
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
numhits = 1
getpower = 0,0
givepower = 0,0
envshake.time = 20
envshake.freq = 80
envshake.ampl = -2


[State 3050, Spark 2]
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

[State 3050, Spark 1]
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


[State 3050, Spark 3]
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


[State 3050, End]
type = ChangeState
triggerall = Anim = 3050
trigger1 = movehit = 1 && win = 0
value = 3060

[State 3050, End]
type = ChangeState
triggerall = Anim = 3050
trigger1 = animtime = 0
trigger1 = movehit = 1 && win = 1
trigger2 = animtime = 0
trigger2 = moveguarded
trigger3 = animtime = 0
value = 0
ctrl = 1

;----------------------------------
; Saiyan Fury Attack 3
[Statedef 3060]
type = S
movetype = A
physics = S

[State 3060, ChangeAnim]
type = ChangeAnim
triggerall = Anim != 3040
trigger1 = Time = 5
value = 3040
ignorehitpause = 1

[State 3060, PlaySnd]
type = PlaySnd
triggerall = Anim = 3040
trigger1 = AnimElem = 2
value = S200,0

[State 3060, PlaySnd]
type = PlaySnd
triggerall = Anim = 3040
trigger1 = AnimElem = 1
value = S300,random%3
channel = 0

[State 3060, HitDef]
type = HitDef
triggerall = Anim = 3040
trigger1 = AnimElem = 3
attr = S, HA
damage = 50, 20
animtype = hard
guardflag = MA
hitflag = MAF
priority = 7, Hit
pausetime = 9, 11
sparkno = -1
guard.sparkno = -1
sparkxy = 0, 0
hitsound = S5, 0
guardsound = S6, 0
ground.type = Low
air.type = Low
ground.slidetime = 34
guard.slidetime = 18
ground.hittime = 36
guard.hittime = 18
air.hittime = 40
ground.velocity = -1.6
guard.velocity = -2.2
air.velocity = -3.6,-2.8
airguard.velocity = -1.8,-1.2
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
numhits = 1
getpower = 0,0
givepower = 0,0
envshake.time = 20
envshake.freq = 80
envshake.ampl = -2


[State 3060, Spark 2]
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

[State 3060, Spark 1]
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

[State 3060, Spark 3]
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

[State 3060, End]
type = ChangeState
triggerall = Anim = 3040
trigger1 = movehit = 1 && win = 0
value = 3070

[State 3060, End]
type = ChangeState
triggerall = Anim = 3040
trigger1 = animtime = 0
trigger1 = movehit = 1 && win = 1
trigger2 = animtime = 0
trigger2 = moveguarded
trigger3 = animtime = 0
value = 0
ctrl = 1

;----------------------------------
; Saiyan Fury Attack 4
[Statedef 3070]
type = S
movetype = A
physics = S

[State 3070, ChangeAnim]
type = ChangeAnim
triggerall = Anim != 3050
trigger1 = Time = 5
value = 3050
ignorehitpause = 1

[State 3070, PlaySnd]
type = PlaySnd
triggerall = Anim = 3050
trigger1 = AnimElem = 1
value = S200,2

[State 3070, PlaySnd]
type = PlaySnd
triggerall = Anim = 3050
trigger1 = AnimElem = 1
value = S300,random%3
channel = 0

[State 3070, HitDef]
type = HitDef
triggerall = Anim = 3050
trigger1 = AnimElem = 2
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
priority = 7,Hit
damage = 60,20
pausetime = 10,12
guard.pausetime = 4,4
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = S5,2
guardsound = S6,0
ground.type = Low
air.type = Low
ground.slidetime = 40
guard.slidetime = 18
ground.hittime = 42
guard.hittime = 18
air.hittime = 40
ground.velocity = -1.6
guard.velocity = -2.8
air.velocity = -4.6,-2.9
airguard.velocity = -2.5,-1.9
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
numhits = 1
getpower = 0,0
givepower = 0,0
envshake.time = 20
envshake.freq = 80
envshake.ampl = -2


[State 3070, Spark 2]
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

[State 3070, Spark 1]
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

[State 3070, Spark 3]
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

[State 3070, End]
type = ChangeState
triggerall = Anim = 3050
trigger1 = movehit = 1 && win = 0
value = 3080

[State 3070, End]
type = ChangeState
triggerall = Anim = 3050
trigger1 = animtime = 0
trigger1 = movehit = 1 && win = 1
trigger2 = animtime = 0
trigger2 = moveguarded
trigger3 = animtime = 0
value = 0
ctrl = 1

;----------------------------------
; Saiyan Fury Attack 5
[Statedef 3080]
type = S
movetype = A
physics = S

[State 3080, ChangeAnim]
type = ChangeAnim
triggerall = Anim != 3040
trigger1 = Time = 5
value = 3040
ignorehitpause = 1

[State 3080, PlaySnd]
type = PlaySnd
triggerall = Anim = 3040
trigger1 = AnimElem = 2
value = S200,0

[State 3080, PlaySnd]
type = PlaySnd
triggerall = Anim = 3040
trigger1 = AnimElem = 1
value = S300,random%3
channel = 0

[State 3080, HitDef]
type = HitDef
triggerall = Anim = 3040
trigger1 = AnimElem = 3
attr = S, HA
damage = 50, 20
animtype = hard
guardflag = MA
hitflag = MAF
priority = 7, Hit
pausetime = 9, 11
sparkno = -1
guard.sparkno = -1
sparkxy = 0, 0
hitsound = S5, 0
guardsound = S6, 0
ground.type = Low
air.type = Low
ground.slidetime = 34
guard.slidetime = 18
ground.hittime = 36
guard.hittime = 18
air.hittime = 40
ground.velocity = -1.6
guard.velocity = -2.2
air.velocity = -3.6,-2.8
airguard.velocity = -1.8,-1.2
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
numhits = 1
getpower = 0,0
givepower = 0,0
envshake.time = 20
envshake.freq = 80
envshake.ampl = -2


[State 3080, Spark 2]
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

[State 3080, Spark 1]
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

[State 3080, Spark 3]
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

[State 3080, End]
type = ChangeState
triggerall = Anim = 3040
trigger1 = movehit = 1 && win = 0
value = 3090

[State 3080, End]
type = ChangeState
triggerall = Anim = 3040
trigger1 = animtime = 0
trigger1 = movehit = 1 && win = 1
trigger2 = animtime = 0
trigger2 = moveguarded
trigger3 = animtime = 0
value = 0
ctrl = 1

;----------------------------------
; Saiyan Fury Attack 6
[Statedef 3090]
type = S
movetype = A
physics = S

[State 3090, ChangeAnim]
type = ChangeAnim
triggerall = Anim != 3050
trigger1 = Time = 5
value = 3050
ignorehitpause = 1

[State 3090, PlaySnd]
type = PlaySnd
triggerall = Anim = 3050
trigger1 = AnimElem = 1
value = S200,2

[State 3090, PlaySnd]
type = PlaySnd
triggerall = Anim = 3050
trigger1 = AnimElem = 1
value = S300,random%3
channel = 0

[State 3090, HitDef]
type = HitDef
triggerall = Anim = 3050
trigger1 = AnimElem = 2
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
priority = 7,Hit
damage = 60,20
pausetime = 10,12
guard.pausetime = 4,4
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = S5,2
guardsound = S6,0
ground.type = Low
air.type = Low
ground.slidetime = 40
guard.slidetime = 18
ground.hittime = 42
guard.hittime = 18
air.hittime = 40
ground.velocity = -1.6
guard.velocity = -2.8
air.velocity = -4.6,-2.9
airguard.velocity = -2.5,-1.9
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
numhits = 1
getpower = 0,0
givepower = 0,0
envshake.time = 20
envshake.freq = 80
envshake.ampl = -2


[State 3090, Spark 2]
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

[State 3090, Spark 1]
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

[State 3090, Spark 3]
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

[State 3090, End]
type = ChangeState
triggerall = Anim = 3050
trigger1 = movehit = 1 && win = 0
value = 3100

[State 3090, End]
type = ChangeState
triggerall = Anim = 3050
trigger1 = animtime = 0
trigger1 = movehit = 1 && win = 1
trigger2 = animtime = 0
trigger2 = moveguarded
trigger3 = animtime = 0
value = 0
ctrl = 1

;----------------------------------
; Saiyan Fury Attack 7
[Statedef 3100]
type = S
movetype = A
physics = S

[State 3100, VarSet]; Score Result
type = VarSet
trigger1 = Time = 1
v = 52
value = var(52) + var(26) + 3
ignorehitpause =  1
persistent = 0

[State 3100, ChangeAnim]
type = ChangeAnim
triggerall = Anim != 3100
trigger1 = Time = 3
value = 3100
ignorehitpause = 1

[State 3100, PlaySnd]
type = PlaySnd
triggerall = Anim = 3100
trigger1 = AnimElem = 2
value = S200,3

[State 3100, PlaySnd]
type = PlaySnd
triggerall = Anim = 3100
trigger1 = AnimElem = 1
value = S310,random%3
channel = 0

[State 3100, HitDef]
type = HitDef
triggerall = Anim = 3100
trigger1 = AnimElem = 3
attr = S, HA
damage = 110, 40
animtype = up
guardflag = MA
hitflag = MAF
priority = 7, Hit
pausetime = 10, 12
sparkno = -1
guard.sparkno = -1
hitsound = S5,3
guardsound = S6,0
ground.type = High
ground.slidetime = 58
ground.hittime  = 58
ground.velocity = -1.05, -23.8
air.velocity = -3.76,-3.84
airguard.velocity = -1.9,-.8
air.type = Low
air.hittime = 40
fall = 1
air.fall = 1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
numhits = 1
getpower = 0,0
givepower = 0,0
envshake.time = 40
envshake.freq = 90
envshake.ampl = -2
p2stateno = 3200


[State 3100, Spark 2]
type = Explod
trigger1 = Movehit = 1
anim = 9022
ID = 9022
postype = P1
pos = 18,-126
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

[State 3100, Spark 1]
type = Explod
trigger1 = Movehit = 1
anim = 9020
ID = 9020
postype = P1
pos = 18,-126
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

[State 3100, Spark 3]
type = Explod
trigger1 = Moveguarded = 1
anim = 9024
ID = 9024
postype = P1
pos = 18,-126
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


[State 3100, End]
type = ChangeState
triggerall = Anim = 3100
trigger1 = movehit = 1 && win = 0
value = 3110

[State 3100, End]
type = ChangeState
triggerall = Anim = 3100
trigger1 = animtime = 0
trigger1 = movehit = 1 && win = 1
trigger2 = animtime = 0
trigger2 = moveguarded
trigger3 = animtime = 0
value = 0
ctrl = 1

;----------------------------------
; Saiyan Fury Jump
[Statedef 3110]
type = S
movetype = A
physics = S

[State 3110, ChangeAnim]
type = ChangeAnim
triggerall = Anim != 3110
trigger1 = Time = 13
value = 3110
ignorehitpause = 1

[State 3110, VelSet]
type = VelSet
triggerall = Anim = 3110
trigger1 = AnimElem = 2
y = -10.025

[State 3110, StateTypeSet]
type = StateTypeSet
triggerall = Anim = 3110
trigger1 = AnimElem = 2,>=0
statetype = A
movetype = I
physics = A

[State 3110, PlaySnd]
type = PlaySnd
triggerall = Anim = 3110
trigger1 = AnimElem = 2
value = S40,0

[State 3110, Explod]
type = Explod
triggerall = Anim = 3110
trigger1 = AnimElem = 2
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


[State 3110, ChangeState]
type = ChangeState
triggerall = Anim = 3110
trigger1 = Pos Y <= -68
value = 3120

;----------------------------------
; Saiyan Fury Attack 8
[Statedef 3120]
type = A
movetype = A
physics = N
anim = 3120
velset = 0,0
sprpriority = 0

[State 3120, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S3000,1
channel = 0

[State 3120, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S3000,3

[State 3120, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
value = S3000,4

[State 3120, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 2520
ID = 2520
pos = 14,-156
postype = p1
facing = 1
bindtime = -1
removetime = 15
pausemovetime = 9999
supermovetime = 9999
scale = .35,.35
sprpriority = 3
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 3120, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 2530
ID = 2530
pos = -6,-136
postype = p1
facing = 1
bindtime = -1
removetime = 32
pausemovetime = 9999
supermovetime = 9999
scale = .35,.35
sprpriority = 3
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 3120, Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 2530
ID = 2530
pos = -6,-138
postype = p1
facing = 1
bindtime = -1
removetime = 9
pausemovetime = 9999
supermovetime = 9999
scale = .35,.35
sprpriority = 3
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 3120, Explod]
type = Explod
trigger1 = AnimElem = 5
anim = 2530
ID = 2530
pos = 48,-114
postype = p1
facing = 1
bindtime = -1
removetime = 6
pausemovetime = 9999
supermovetime = 9999
scale = .35,.35
sprpriority = 3
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1


[State 3120, Helper]
type = Helper
trigger1 = AnimElem = 6
name = "Furybeam"
ID = 3300
stateno = 3300
pos = 56,-50
postype = p1
facing = 1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size.xscale = .5
size.yscale = .65

[State 3120, ChangeState]
type = ChangeState
trigger1 = var(18)
trigger2 = Time >= 120
value = 3130

;----------------------------------
; Saiyan Fury End
[Statedef 3130]
type = A
movetype = I
physics = N
anim = 3130
sprpriority = 0

[State 3130, VelSet]
type = VelSet
trigger1 = Animelem = 2
y = 4.9875

[State 3130, ChangeState]
type = ChangeState
trigger1 = Pos Y > - Vel Y
value = 3140

;----------------------------------
; Saiyan Fury Land
[Statedef 3140]
type = S
movetype = I
physics = S
anim = 2095

[State 3140, VelSet]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 3140, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3140, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S52,0

[State 3140, Explod]
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

[State 3140, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------
; Saiyan Fury P2 Stateno
[Statedef 3200]
type    = A
movetype= H
physics = N

[State 3200, VelSet]
type = VelSet
trigger1 = time = 0
x = 1.05
y = -23.8

[State 3200, VelMul]
type = Veladd
trigger1 = vel y < 0
y = 0.45

[State 3200, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3200

[State 3200, ScreenBound]
type = ScreenBound
trigger1 =  1
value = 1
movecamera = 1,0

[State 3200, 1]
type = ChangeAnim2
Trigger1 = vel y > 0
value = 3210

[State 3200, velset]
type = velset
trigger1 = anim = 3210
trigger1 = animelem =1
y = 23

[State 3200, VelMul]
type = VelMul
trigger1 = anim = 3210
x = .85
y = 0.446

[State 3200, End]
type = SelfState
trigger1 = anim = 3210
trigger1 = Pos Y > -Vel Y
value = 5100
