;*******************************************************************************
;***************************************************************************
;************************    Special   *************************************
;***************************************************************************
;*******************************************************************************

;===============================================================================
;===========================   Fireball   ======================================
;===============================================================================
;-----------------------------------
; Fireball
[Statedef 1000]
type = S
movetype = A
physics = S
anim = 1000
poweradd = 100
velset = 0,0
sprpriority = 2
ctrl = 0


[State 1000, VarSet]
type = VarSet
triggerall = Time = 0
trigger1 = PrevStateNo = [200,445]
v = 26
value = 1
ignorehitpause =  1
persistent = 0

[State 1000, VarSet]; Score Result
type = VarSet
trigger1 = Time = 1
v = 52
value = var(52) + var(26) + 1
ignorehitpause =  1
persistent = 0

[State 1000, VarSet]; Command Detect
type = VarSet
triggerall = Ailevel = 0
trigger1 = Time = 0
v = 11
value = 0*(command="Fireball_x") + 1*(command="Fireball_y")
ignorehitpause = 1

[State 1000, VarSet]; Command Detect
type = VarSet
triggerall = Ailevel
trigger1 = Time = 0
v = 11
value = IfElse(Random<500, 0,1)
ignorehitpause = 1

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1000,0
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S1000,1

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1000,2
channel = 3

[State 1000, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 1010
ID = 1020
pos = 60,-84
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = 5
scale = .55,.55
sprpriority = 4
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 1000, Helper]
type = Helper
trigger1 = Animelem = 3
name = "Fireball"
ID = 1010
stateno = 1010
pos = 30,-86
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size.xscale = .575
size.yscale = .575
ignorehitpause = 1

[State 1000, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 1000, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===============================================================================
;===========================   Ki Blast   ======================================
;===============================================================================
;-----------------------------------
; Ki Blast
[Statedef 1100]
type = S
movetype = A
physics = S
anim = 1100
poweradd = 100
velset = 0,0
sprpriority = 0
ctrl = 0

[State 1100, VarSet]
type = VarSet
triggerall = Time = 0
trigger1 = PrevStateNo = [200,445]
v = 26
value = 1
ignorehitpause =  1
persistent = 0

[State 1100, VarSet]; Score Result
type = VarSet
trigger1 = Time = 1
v = 52
value = var(52) + var(26) + 1
ignorehitpause =  1
persistent = 0

[State 1100, VarSet]; Command Detect
type = VarSet
triggerall = Ailevel = 0
trigger1 = Time = 0
v = 12
value = 0*(command="KiBlast_a") + 1*(command="KiBlast_b")
ignorehitpause = 1

[State 1100, VarSet]; Command Detect
type = VarSet
triggerall = Ailevel
trigger1 = Time = 0
v = 12
value = IfElse(Random<500, 0,1)
ignorehitpause = 1

[State 1100, PlaySnd]
type = PlaySnd
triggerall = Anim = 1100
trigger1 = AnimElem = 1
value = S1100,0
channel = 0

[State 1100, PlaySnd]
type = PlaySnd
triggerall = Anim = 1100
trigger1 = AnimElem = 1
value = S1100,1

[State 1100, PlaySnd]
type = PlaySnd
triggerall = Anim = 1100
trigger1 = AnimElem = 4
value = S1100,2
channel = 3

[State 1100, Explod]
type = Explod
triggerall = Anim = 1100
trigger1 = AnimElem = 1
anim = 1115
ID = 1115
pos = 2,-128
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = 5
scale = .375,.375
sprpriority = 4
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 1100, Explod]
type = Explod
triggerall = Anim = 1100
trigger1 = AnimElem = 2
anim = 1116
ID = 1116
pos = -18,-140
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = 4
scale = .375,.375
sprpriority = 4
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 1100, Explod]
type = Explod
triggerall = Anim = 1100
trigger1 = AnimElem = 3
anim = 1117
ID = 1117
pos = -60,-114
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = 4
scale = .375,.375
sprpriority = 4
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 1100, Explod]
type = Explod
triggerall = Anim = 1100
trigger1 = AnimElem = 4
anim = 1118
ID = 1118
pos = 58,-94
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = 6
scale = .215,.215
sprpriority = 6
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1


[State 1100, Helper]
type = Helper
triggerall = Anim = 1100
trigger1 = Animelem = 4
name = "Blast"
ID = 1110
stateno = 1110
pos = 54,-94
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
size.xscale = .465
size.yscale = .595
ignorehitpause = 1

[State 1100, ChangeAnim]
type = ChangeAnim
triggerall = Anim = 1100
trigger1 = var(13)
value = 1105
ignorehitpause = 1

[State 1100, StateTypeSet: Idle]
type = StateTypeSet
triggerall = Anim = 1105
trigger1 = AnimElemTime(2) >= 0
moveType = I

[State 1100, End]
type = ChangeState
triggerall = Anim = 1105
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;===============================================================================
;===========================   Head Butt   =====================================
;===============================================================================
;-----------------------------------
; Head Butt Start
[Statedef 1200]
type = S
movetype = A
physics = S
anim = 1200
poweradd = 150
velset = 0,0
juggle = 8
sprpriority = 2
ctrl = 0

[State 1200, VarSet] ; Limitation
type = VarSet
trigger1 = Time = 1
v = 27
value = 68
ignorehitpause = 1
persistent = 0

[State 1200, VarSet]
type = VarSet
triggerall = Time = 0
trigger1 = PrevStateNo = [200,445]
v = 26
value = 1
ignorehitpause =  1
persistent = 0

[State 1200, VarSet]; Score Result
type = VarSet
trigger1 = Time = 1
v = 52
value = var(52) + var(26) + 1
ignorehitpause =  1
persistent = 0

[State 1200, VarSet]; Command Detect
type = VarSet
triggerall = Ailevel = 0
trigger1 = Time = 0
v = 14
value = 0*(command="HeadButt_a") + 1*(command="HeadButt_b")
ignorehitpause = 1

[State 1200, VarSet]; Command Detect
type = VarSet
triggerall = Ailevel
trigger1 = Time = 0
v = 14
value = IfElse(Random<500, 0,1)
ignorehitpause = 1

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 8.25 + 1.05*var(14)
y = -3.75 - 1.05*var(14)
ignorehitpause = 1

[State 1200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 3,>=0
statetype = A
movetype = A
physics = A

[State 1200, Explod]
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

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 1
value = S1200,0
channel = 0

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 3
value = S1200,1

[State 1200, HitDef]
type = HitDef
trigger1 = !MoveContact
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = medium
air.animtype = Back
fall.animtype = Back
priority = 5,Hit
damage = 110-30*var(14),30
pausetime = 9,10
guard.pausetime = 6,6
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = S1200,2
guardsound = S6,0
ground.type = Low
air.type = Low
ground.slidetime = 15 + 6*var(14)
guard.slidetime = 7 + 3*var(14)
ground.hittime = 15 + 6*var(14)
guard.hittime = 7 + 3*var(14)
air.hittime = 16 + 6*var(14)
ground.velocity = -10.45 - 3.85*var(14)
guard.velocity = -4.1 - 1.1*var(14)
air.velocity = -7.1 - 3.1*var(14),-5.1 - 2.1*var(14)
airguard.velocity = -3.1 - 1.1*var(14),-2.1 - 1.1*var(14)
fall = 0
air.fall = 1
numhits = 1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
getpower = 40,20
givepower = 40,40
envshake.time = 14 + 6*(var(14))
envshake.freq = 95 + 25*(var(14))
envshake.ampl = -2


[State 1200, Spark 2]
type = Explod
trigger1 = Movehit = 1
anim = 9022
ID = 9022
postype = P1
pos = 46,-52
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

[State 1200, Spark 1]
type = Explod
trigger1 = Movehit = 1
anim = 9020
ID = 9020
postype = P1
pos = 46,-52
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

[State 1200, Spark 3]
type = Explod
trigger1 = Moveguarded = 1
anim = 9024
ID = 9024
postype = P1
pos = 46,-52
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


[State 1200, VarAdd]
type = VarAdd
trigger1 = var(59) <280
trigger1 = MoveContact
v =  59
value = 6*(MoveGuarded) + 14*(MoveHit)
ignorehitpause = 1
persistent = 0


[State 1200, VarAdd]; Score result
type = VarAdd
trigger1 = MoveContact
v =  52
value = (1*(MoveGuarded) + 3*(MoveHit))*(var(26)+1)
ignorehitpause = 1
persistent = 0

[State 1200, End]
type = ChangeState
trigger1 = Time = 18 + 6*var(14)
trigger2 = MoveContact
value = 1210
ctrl = 0

;-----------------------------------
; Head Butt Going Down
[Statedef 1210]
type = A
movetype = I
physics = A
anim = 1210
sprpriority = 0
ctrl = 0
movehitpersist = 1
hitcountpersist = 1

[State 1210, VelSet]
type = VelSet
trigger1 = Time = 0
x = 1.85 + 0.75*var(14)
y = 3 + 1.2*var(14)
ignorehitpause = 1

[State 1210, ChangeState]
type = ChangeState
trigger1 = Pos Y > - Vel Y
value = 1220
ctrl = 0

;-----------------------------------
; Head Butt Land
[Statedef 1220]
type = S
movetype = I
physics = S
anim = 1220
sprpriority = 0
velset = 0,0
ctrl = 0
movehitpersist = 1
hitcountpersist = 1

[State 1220, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1220, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S52,0

[State 1220, Explod]
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

[State 1220, ChangeState]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1


;===============================================================================
;===========================   Punishement  ====================================
;===============================================================================
;-----------------------------------
; Punishement Start
[Statedef 1300]
type = S
movetype = A
physics = S
anim = 1300
poweradd = 100
velset = 0,0
juggle = 2
sprpriority = 2
ctrl = 0

[State 1300, VarSet]
type = VarSet
triggerall = Time = 0
trigger1 = PrevStateNo = [200,445]
v = 26
value = 1
ignorehitpause =  1
persistent = 0

[State 1300, VarSet]; Score Result
type = VarSet
trigger1 = Time = 1
v = 52
value = var(52) + var(26) + 1
ignorehitpause =  1
persistent = 0

[State 1300, VarSet]; Command Detect
type = VarSet
triggerall = Ailevel = 0
trigger1 = Time = 0
v = 15
value = 0*(command="Punishement_a") + 1*(command="Punishement_b")
ignorehitpause = 1

[State 1300, VarSet]; Command Detect
type = VarSet
triggerall = Ailevel
trigger1 = Time = 0
v = 15
value = IfElse(Random<500, 0,1)
ignorehitpause = 1

[State 1300, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 3.9 + 1.3*var(15)
y = -7 - 2.2*var(15)

[State 1300, Explod]
type = Explod
trigger1 = AnimElem = 1,2
anim = 9003
ID = 9003
pos = 0,-2
postype = p1
facing = 1
bindtime = 2
removetime = -2
pausemovetime = 9999
supermovetime = 9999
scale = .425,.35
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 1300, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 2,>=0
statetype = A
movetype = A
physics = A

[State 1300, VelAdd]
type = VelAdd
trigger1 = AnimElem = 5
y = 0.864785

[State 1300, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1300,0
channel = 0

[State 1300, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S40,0

[State 1300, 1]
type = HitDef
Trigger1 = AnimElem = 5
attr = A, ST          ;Attributes: Standing, Normal Throw
hitflag = M-          ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
p1facing = 1          ;Turn if holding forwards
p2facing = 1          ;Force p2 to face player
p1stateno = 1310       ;On success, player changes to state 810
p2stateno = 1320       ;If hit, p2 changes to state 820 in player's cns
fall = 1              ;Force p2 into falling down
hitsound = S8,0

[State 1300, ChangeState]
type = ChangeState
triggerall = AnimElem = 3,>=0
trigger1 = Pos Y > - Vel Y
value = 1330
ctrl = 0

;-----------------------------------
; Punishement Ground Attack
[Statedef 1310]
type = S
movetype = A
physics = S
anim = 1310
velset = 0,0
sprpriority = 3
ctrl = 0

[State 1300, VarAdd]; Score result
type = VarAdd
trigger1 = Time = 0
v =  52
value = 6
ignorehitpause = 1
persistent = 0

[State 1300, VarAdd]
type = VarAdd
trigger1 = Time = 0
trigger1 = var(59) <280
v =  59
value = 8
ignorehitpause = 1
persistent = 0

[State 1300, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
trigger3 = AnimElem = 9
value = S1300,1

[State 1310, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1310, 1]
type = TargetBind
Trigger1 = AnimElem = 1
pos = 38,0

[State 1310, 1]
type = TargetBind
Trigger1 = AnimElem = 2,>=0
Trigger1 = AnimElem = 11,<0
pos = 34,-14

[State 1310, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
trigger3 = AnimElem = 9
value = -40

[State 1310, HitAdd]
type = HitAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
trigger3 = AnimElem = 9
value = 1
ignorehitpause = 1

[State 1310, TargetState]
type = TargetState
trigger1 = AnimElem = 11
value = 1325

[State 1310, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------
; Punishement Ground Attack P2 State 1
[Statedef 1320]
type = S
movetype = H
physics = N
velset = 0,0
sprpriority = 1
ctrl = 0

[State 1320, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 1320

;------------------------------------------
; Punishement Ground Attack P2 State 2
[Statedef 1325]
type = S
movetype = H
physics = N
sprpriority = 5
anim = 5160
ctrl = 0

[State 1325, PosAdd]
type = PosAdd
trigger1 = Time = 0
y = 16

[State 1325, VelSet]
type = VelSet
trigger1 = Time = 0
x = -3.1
y = -2.9

[State 1325, StateTypeSet]
type = StateTypeSet
trigger1 = Time >=0
statetype = A
movetype = H
physics = A

[State 1325, SelfState]
type = SelfState
triggerall = Time >= 2
trigger1 = Pos Y > - Vel Y
value = 5110

;-----------------------------------
; Punishement Land
[Statedef 1330]
type = S
movetype = I
physics = S
anim = 1330
sprpriority = 0
velset = 0,0
ctrl = 0

[State 1330, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1330, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S52,0

[State 1330, Explod]
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

[State 1330, ChangeState]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;===============================================================================
;============================  Elbow Rush  =====================================
;===============================================================================
;-----------------------------------
; Elbow Rush
[Statedef 1400]
type = S
movetype = A
physics = S
anim = 1400
poweradd = 150
velset = 0,0
juggle = 9
sprpriority = 2
ctrl = 0

[State 1400, VarSet] ; Limitation
type = VarSet
trigger1 = Time = 1
v = 28
value = 68
ignorehitpause = 1
persistent = 0

[State 1400, VarSet]
type = VarSet
triggerall = Time = 0
trigger1 = PrevStateNo = [200,445]
v = 26
value = 1
ignorehitpause =  1
persistent = 0

[State 1400, VarSet]; Score Result
type = VarSet
trigger1 = Time = 1
v = 52
value = var(52) + var(26) + 1
ignorehitpause =  1
persistent = 0

[State 1400, VarSet]; Command Detect
type = VarSet
triggerall = Ailevel = 0
trigger1 = Time = 0
v = 16
value = 0*(command="ElbowRush_x") + 1*(command="ElbowRush_y")
ignorehitpause = 1

[State 1400, VarSet]; Command Detect
type = VarSet
triggerall = Ailevel
trigger1 = Time = 0
v = 16
value = IfElse(Random<500, 0,1)
ignorehitpause = 1

[State 1400, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 12.25 + 7.85*var(15)

[State 1400, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 9005
ID = 9005
pos = 0,-12
postype = p1
facing = 1
bindtime = 4
removetime = -2
pausemovetime = 9999
supermovetime = 9999
scale = .5,.5
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 1400, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1400,0
channel = 0

[State 1400, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S1400,1

[State 1400, HitDef]
type = HitDef
trigger1 = !MoveContact
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = medium
air.animtype = Hard
priority = 5,Hit
damage = 100-25*var(16),25
pausetime = 12,12
guard.pausetime = 6,6
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = S1400,2
guardsound = S6,0
ground.type = Low
air.type = Low
ground.slidetime = 15 + 6*var(16)
guard.slidetime = 8 + 3*var(16)
ground.hittime = 15 + 6*var(16)
guard.hittime = 8 + 3*var(16)
air.hittime = 15 + 6*var(16)
ground.velocity = -10.75 - 4.05*var(16)
guard.velocity = -4.2 - 1.4*var(16)
air.velocity = -6.8 - 3.4*var(16),-3.4 - 2.2*var(16)
airguard.velocity = -3.2 - 1.2*var(16),-2.2 - 1.2*var(16)
fall = 0
air.fall = 1
numhits = 1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
getpower = 40,20
givepower = 40,40
envshake.time = 12 + 6*(var(14))
envshake.freq = 75 + 20*(var(14))
envshake.ampl = -2


[State 1400, Spark 2]
type = Explod
trigger1 = Movehit = 1
anim = 9022
ID = 9022
postype = P1
pos = 44,-64
facing = 1
sprpriority = 3
removetime = -2
bindtime = 1
ownpal = 1
ontop = 1
scale = 0.4,0.4
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0

[State 1400, Spark 1]
type = Explod
trigger1 = Movehit = 1
anim = 9020
ID = 9020
postype = P1
pos = 44,-64
facing = 1
sprpriority = 4
removetime = -2
bindtime = 1
ownpal = 1
scale = 0.5,0.5
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause  = 1
persistent = 0

[State 1400, Spark 3]
type = Explod
trigger1 = Moveguarded = 1
anim = 9024
ID = 9024
postype = P1
pos = 44,-64
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

[State 1400, VarAdd]
type = VarAdd
trigger1 = var(59) <280
trigger1 = MoveContact
v =  59
value = 6*(MoveGuarded) + 14*(MoveHit)
ignorehitpause = 1
persistent = 0


[State 1400, VarAdd]; Score result
type = VarAdd
trigger1 = MoveContact
v =  52
value = (1*(MoveGuarded) + 3*(MoveHit))*(var(26)+1)
ignorehitpause = 1
persistent = 0

[State 1400, End]
type = ChangeState
trigger1 = Time = 20 + 11*var(16)
trigger2 = MoveContact
value = 1410
ctrl = 0

;-----------------------------------
; Elbow Rush End
[Statedef 1410]
type = S
movetype = I
physics = S
anim = 1410
sprpriority = 2
ctrl = 0
movehitpersist = 1
hitcountpersist = 1

[State 1410, VelAdd]
type = VelAdd
trigger1 = vel x > 0
x = -.23456
ignorehitpause  = 1

[State 1410, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
