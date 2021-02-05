;*******************************************************************************
;***************************************************************************
;**************************   Score   **************************************
;***************************************************************************
;*******************************************************************************


;===============================================================================
;=========================    Result Score   ===================================
;===============================================================================
;--------------------------------------------------------
; Result Score Helper
[Statedef 19000]
type    = U
movetype= I
physics = N
velset = 0,0
ctrl = 0
anim = 18000
sprpriority = 5


[State -3, VarSet]; Life
type = VarSet
trigger1 = Time = 0
v = 54
value = 7*((Parent,var(54))>= 2000) + 6*((Parent,var(54))= [1600,1999]) + 5*((Parent,var(54)) = [1300,1599]) + 4*((Parent,var(54)) = [1000,1299]) + 3*((Parent,var(54)) = [600,999]) + 2*((Parent,var(54)) = [200,599]) + 1*((Parent,var(54))<200)
ignorehitpause = 1

[State -3, VarSet]; Time
type = VarSet
trigger1 = Time = 0
v = 55
value = 7*((Parent,var(55))=[0,1199]) + 6*((Parent,var(55))=[1200,2399]) + 5*((Parent,var(55))=[2400,3599]) + 4*((Parent,var(55))=[3600,4799]) + 3*((Parent,var(55))=[4800,5999]) + 2*((Parent,var(55))=[6000,7199]) + 1*((Parent,var(55))>=7200)
ignorehitpause = 1

[State -3, VarSet]; Attack
type = VarSet
trigger1 = Time = 0
v = 56
value = 1*(((Parent,var(56))*(Parent,fvar(9)))=[0,69]) + 2*(((Parent,var(56))*(Parent,fvar(9)))=[70,119]) + 3*(((Parent,var(56))*(Parent,fvar(9)))=[120,159]) + 4*(((Parent,var(56))*(Parent,fvar(9)))=[160,199]) + 5*(((Parent,var(56))*(Parent,fvar(9)))=[200,229]) + 6*(((Parent,var(56))*(Parent,fvar(9)))=[230,259]) + 7*(((Parent,var(56))*(Parent,fvar(9)))>=260)
ignorehitpause = 1

[State 19000, PlaySnd]
type = PlaySnd
trigger1 = Time = 22
trigger2 = Time = 142
trigger3 = Time = 262
value = S19000,0


[State 19000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S19000,1
channel = 2


[State 19000, Explod]
type = Explod
triggerall = numexplod(19000)!=1
trigger1 = time = 0
anim = 19001 - facing
ID = 19000
pos = 0,0
postype = Back
facing = facing
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 9999
supermovetime = 9999
scale = .5,.5
sprpriority = 1
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 19000, Explod]
type = Explod
triggerall = numexplod(19010)!=1
trigger1 = time = 0
anim = 19011 - facing
ID = 19010
pos = 0,0
postype = Back
facing = facing
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 9999
supermovetime = 9999
scale = .5,.5
sprpriority = 2
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 19000, Explod]
type = Explod
triggerall = numexplod(19020)!=1
trigger1 = time = 0
anim = 19021 - facing
ID = 19020
pos = 0,0
postype = Back
facing = facing
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 9999
supermovetime = 9999
scale = .5,.5
sprpriority = 3
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 19000, Explod]
type = Explod
triggerall = numexplod(19030)!=1
trigger1 = time = 0
anim = 19031 - facing
ID = 19030
pos = 0,0
postype = Back
facing = facing
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 9999
supermovetime = 9999
scale = .5,.5
sprpriority = 4
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 19000, Explod]
type = Explod
triggerall = numexplod(19040)!=1
trigger1 = time = 0
anim = 19041 - facing
ID = 19040
pos = 0,0
postype = Back
facing = facing
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 9999
supermovetime = 9999
scale = .5,.5
sprpriority = 5
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 19000, Explod]
type = Explod
triggerall = numexplod(19050)!=1
trigger1 = time = 0
anim = 19051 - facing
ID = 19050
pos = 0,0
postype = Back
facing = facing
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 9999
supermovetime = 9999
scale = .5,.5
sprpriority = 5
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 19000, Explod]
type = Explod
triggerall = numexplod(19060)!=1
trigger1 = time = 0
anim = 19061 - facing
ID = 19060
pos = 0,0
postype = Back
facing = facing
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 9999
supermovetime = 9999
scale = .5,.5
sprpriority = 6
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1


[State 19000, Explod]; Life
type = Explod
triggerall = numexplod(19100)!=1
trigger1 = time = 22
anim = 100*(var(54)) + 19001 - facing
ID = 19100
pos = 258,58
postype = Back
facing = facing
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 9999
supermovetime = 9999
scale = .5,.5
sprpriority = 8
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1


[State 19000, Explod]; Time
type = Explod
triggerall = numexplod(19200)!=1
trigger1 = time = 142
anim = 100*(var(55)) + 19001 - facing
ID = 19200
pos = 258,120
postype = Back
facing = facing
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 9999
supermovetime = 9999
scale = .5,.5
sprpriority = 8
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1


[State 19000, Explod]; Attack
type = Explod
triggerall = numexplod(19300)!=1
trigger1 = time = 262
anim = 100*(var(56)) + 19001 - facing
ID = 19300
pos = 258,182
postype = Back
facing = facing
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 9999
supermovetime = 9999
scale = .5,.5
sprpriority = 8
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1




[State 19000, Explod]; Light 1
type = Explod
triggerall = numexplod(19080)!=1
trigger1 = time = 20
anim = 19081 - facing
ID = 19080
pos = 256,58
postype = Back
facing = facing
vfacing = 1
bindtime = -1
removetime = -2
pausemovetime = 9999
supermovetime = 9999
scale = .75,.75
sprpriority = 9
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 19000, Explod]; Light 2
type = Explod
triggerall = numexplod(19081)!=1
trigger1 = time = 140
anim = 19081 - facing
ID = 19081
pos = 256,120
postype = Back
facing = facing
vfacing = 1
bindtime = -1
removetime = -2
pausemovetime = 9999
supermovetime = 9999
scale = .75,.75
sprpriority = 9
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 19000, Explod]; Light 3
type = Explod
triggerall = numexplod(19082)!=1
trigger1 = time = 260
anim = 19081 - facing
ID = 19082
pos = 258,182
postype = Back
facing = facing
vfacing = 1
bindtime = -1
removetime = -2
pausemovetime = 9999
supermovetime = 9999
scale = .75,.75
sprpriority = 9
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1



[State 19000, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noBG
flag3 = noFG
ignorehitpause = 1

[State 19000, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = noshadow
ignorehitpause = 1


[State 19000, DestroySelf]
type = DestroySelf
trigger1 = Time = 660

