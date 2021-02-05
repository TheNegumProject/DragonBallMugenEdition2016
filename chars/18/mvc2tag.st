;***********************************************************************;
;************************* TAG System V. 2.0 ***************************;
;***********************************************************************;

; ----------------------------------------------------------------------;
; CREDITS:
; Main tag code implementation and depelovement:
; - R.o.q.u.e.
; Slightly modified by:
; - AeroGP
; PLEASE GIVE CREDIT IF MODIFYING THIS!!!
; ----------------------------------------------------------------------;

;***********************************************************************;
;***********************************************************************;

;------------------------------------------------------------------------
;TagIn
;------------------------------------------------------------------------
;Changes the state number of the player, and that of the player's partner.
;
;Required arguments:
;  stateno = state_no (int)
;    state_no is the number of the state to change to.
;  partnerstateno = state_no (int)
;    state_no is the number of the state to change the partner to.
;  ctrl = ctrl_flag (int)
;    Set to nonzero to have control, or 0 to disable control.
;
;Optional arguments:
;  none
;
;Example:
;  none
;
;Notes:
;  Crashes if triggered without a partner being present.
;
;------------------------------------------------------------------------
;TagIn Implementation
;------------------------------------------------------------------------
; - Number of vars used: 1
; - Assigned var: var(30)
; - Values:
;   *var(30) = 0 --- Tag Disabled
;   *var(30) = 1 --- Tag Enabled
;   *var(30) = 2 --- Dual Hyper Combo performed
;   *var(30) = 3 --- Assist attack performed (alpha assist)
;   *var(30) = 4 --- Assist attack performed (beta assist)
;   *var(30) = 5 --- Assist attack performed (gamma assist)

;***********************************************************************;
;***********************************************************************;

;                   ********************************
;                   *********  TAG states  *********
;                   ********************************

;***********************************************************************;
;***********************************************************************;

; Entering the screen
;--------------------

[Statedef 4500]
type = A
movetype = I
physics = N
anim = 45	; <- Jumping In (Hey, I'm gonna kick your ass!!!!)
sprpriority = 2
ctrl = 0

; Starting position
[State 4500, 1]
type = PosSet
trigger1 = time = 0
x = -243*(facing)
y = -150

; Attack velocity
[State 4500, 2]
type = VelSet
trigger1 = Time = 0
x = 13
y = 5

[State 4500, 3a] ; the character cannot be hit until he has fully entered on the stage
type = NotHitBy
trigger1 = BackEdgeBodyDist <= 0
value = SCA
time = 2

[State 4500, 3b] ; if partner was KOed, appear being invincible
type = NotHitBy
trigger1 = Partner, Life <= 0
value = SCA
time = 6

[State 4500, 4] ; Prevents the camera from following the char
type = ScreenBound
trigger1 = 1
value = 0

[State 4500, 5a] ; the character attacks his opponent when :
type = ChangeState
triggerall = BackEdgeBodyDist >= 0	; he is on the stage
trigger1 = partner, life > 0		; and his partner is alive
;trigger1 = P2BodyDist X = [0, 50]      ; and his enemy is close
trigger1 = !Win && !Lose
value = 4501

[State 4500, 6]
type = VelSet
triggerall = BackEdgeBodyDist >= 0
trigger1 = FrontEdgeBodyDist <= 0	; he has reached the other side of the screen
trigger2 = partner, life <= 0		; his partner has just died
trigger2 = (Time >= 50) || (P2BodyDist X = [-100, 100])
trigger3 = P2Dist X < 0                 ; his enemy is behind him
trigger4 = P2BodyDist X = [-100, 100]
trigger4 = Win
trigger5 = Win
trigger5 = Time >= 20
trigger6 = Pos Y >= 0                   ; he has landed
trigger6 = Vel Y >= 0
x = 0
y = 0

[State 4500, 7] ; the character does not attack his opponent if:
type = ChangeState
triggerall = BackEdgeBodyDist >= 0
trigger1 = FrontEdgeBodyDist <= 0	; he has reached the other side of the screen
trigger2 = Partner, Life <= 0           ; his partner has just died
trigger2 = (Time >= 50) || (P2BodyDist X = [-100, 100])
trigger3 = P2Dist X < 0                 ; his enemy is behind him
trigger4 = P2BodyDist X = [-100, 100]
trigger4 = Win
trigger5 = Win
trigger5 = Time >= 20
trigger6 = Pos Y >= 0                   ; he has landed
trigger6 = Vel Y >= 0
value = 52
ctrl = 1


; Tag attack (when partner is tagged in)
;---------------------------------------
[Statedef 4501]
type = A
movetype = A
physics = N
sprpriority = 2
ctrl = 0

; Tag in attack (basicaly a flying kick)
[State 4501, 1a]
type = ChangeAnim
triggerall = SelfAnimExist(4501)  ; <--- check if this anim exists
trigger1 = time = 0
value = 4501                     ; <--- then change into it!

; Alternate tag in attack
[State 4501, 1b]
type = ChangeAnim
triggerall = !SelfAnimExist(4501) ; <--- if this anim DOESN'T exist
trigger1 = SelfAnimExist(640)     ; <--- check if this anim exists
trigger1 = time = 0
value = 640                       ; <--- then change into it!

; This can be customized if you need
; different behaviors, alternate sounds,
; etc. ---------------------------------
[State 4501, 2]
type = HitDef
trigger1 = !TIME
attr = A, NA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 4, Hit
damage = 51, 0
pausetime = 9, 9
sparkno = -1
guard.sparkno = -1
hitsound = s8000,6
guardsound = s9, 0
ground.type = High
ground.hittime = 15
air.hittime = 20
ground.velocity = -1.5,-21
air.velocity = -1.5,-21
fall = 1
air.fall = 1
fall.recover = 0
fall.yvelocity = 0
yaccel = .53

[State 4501, TargetState]
type = TargetState
trigger1 = MoveHit = 1
value = 4503
ignorehitpause = 1
persistent = 0

; This MUSN'T be changed unless you change it into a ground attack
[State 4501, 3]
type = PosSet
trigger1 = Pos Y >= 0
y = 0

; Finally, make a taunt when succesfull (or not XD)
[State 4501, 4]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y >= 0
value = ifelse(SelfAnimExist(4502), 4502, 195) ; <--- Add your personal taunt here...
ctrl = 1

;---------------------
; Custom Tag in Taunt
[Statedef 4502]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 2

; Tag in taunt
[State 4502, 1]
type = ChangeAnim
triggerall = SelfAnimExist(4502)  ; <--- Tag in taunt anim
trigger1 = time = 0
value = 4502                      ; <--- ...

; This can be customized depending on the char
; --------------------------------------------
[State 4502, 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = s4570, 0

[State 4502, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; Launched State (spinning around, VS Style)
[Statedef 4503]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0

; This only uses the Hip Up anim, if it doesn't exist it will change into
; normal falling anim
[State 4503, 1a]
type = ChangeAnim
triggerall = Alive
trigger1 = time = 0
value = ifelse(SelfAnimExist(5250), 5250, ifelse(SelfAnimExist(5051), 5051, 5050))

[State 4503, 1b]
type = ChangeAnim
triggerall = !Alive
trigger1 = time = 0
value = ifelse(SelfAnimExist(5030), 5030, ifelse(SelfAnimExist(5035), 5035, 5050))

[State 4503, 2]
type = HitVelSet
trigger1 = time = 0
x = 1
y = 1

[State 4503, 3]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 4503, 4]
type = ChangeState
trigger1 = Vel Y > 0
value = ifelse(Alive, 4504, 5030)

;---------------------------------------------------------------------------
; Launched Part 2
[Statedef 4504]
type    = A
movetype= H
physics = N

[State 4504, 1a] ;Coming down anim
type = ChangeAnim
triggerall = SelfAnimExist(5061)
trigger1 = time = 0
value = 5061
persistent = 0

[State 4504, 1b] ;Coming down anim
type = ChangeAnim
triggerall = !SelfAnimExist(5061)
triggerall = SelfAnimExist(5060)
trigger1 = time = 0
value = 5060
persistent = 0

[State 4504, 1c] ;Coming down anim
type = ChangeAnim
triggerall = !SelfAnimExist(5061)
triggerall = !SelfAnimExist(5060)
trigger1 = time = 0
value = 5050
persistent = 0

[State 4504, 2] ;Gravity
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 4504, 3]
type = SelfState
trigger1 = Vel Y > 5
value = 5050 ;HIT_BOUNCE

; Leaving Taunt
;--------------
[Statedef 4510] ; Define your own taunt here
type = S
movetype = I
physics = S
sprpriority = -2
velset = 0,0
ctrl = 0

; leaving taunt
[State 4510, 1a]
type = ChangeAnim
triggerall = SelfAnimExist(4510)  ; <--- check if this anim exists
trigger1 = time = 0
value = 4510                      ; <--- then change into it!

; leaving taunt (alt)
[State 4510, 1b]
type = ChangeAnim
triggerall = !SelfAnimExist(4510)  ; <--- this anim doesn't exist...
triggerall = SelfAnimExist(4502)    ; <--- so check if this one exists
trigger1 = time = 0
value = 4502                        ; <--- and change into it!

; Customize this according to the
; animation used ----------------
[State 4502, s1]
type = PlaySnd
triggerall = Anim = 195
trigger1 = AnimElem = 2
value = S2, 1

[State 4502, s2]
type = PlaySnd
triggerall = Anim = 4510
trigger1 = AnimElem = 2
value = s2, 1
volumescale = 255

[State 4510, 2] ; the character cannot be hit since he is leaving
type = NotHitBy
trigger1 = 1
value = SCA

[State 4510, 3] ; Prevents the camera from following the char
type = PlayerPush
trigger1 = 1
value = 0

[State 4510, 4]
type = ChangeState
trigger1 = animtime = 0
value = 4511

; Leave the stage
;----------------
[Statedef 4511]
type = S
movetype = I
physics = N
anim = 40	; <- Jump Start (see you later!!!!)
sprpriority = 2
ctrl = 0

; NEW !! Tag active definer
[State 4511, 1]
type = VarSet
trigger1 = time = [0,1]
var(30) = 1

[State 4511, 2] ; Jump Backwards
type = ChangeAnim
trigger1 = AnimTime = 0
value = 46

[State 4511, 3] ; StateTypeSet changes to aerial while jumping
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A

[State 4511, 4]
type = VelSet
trigger1 = Anim = 46
x = -12
y = -4

[State 4511, 5] ; Cannot be hurt if leaving
type = NotHitBy
trigger1 = 1
value = SCA

[State 4511, 6] ; Ghost
type = PlayerPush
trigger1 = 1
value = 0

[State 4511, 7] ; Camera shouldn't follow him
type = ScreenBound
trigger1 = 1
value = 0

[State 4500, 8]
type = VelSet
trigger1 = BackEdgeBodyDist < -30
x = 0
y = 0

[State 4511, 9]
type = ChangeState
trigger1 = BackEdgeDist < -30
trigger2 = Time >= 30
value = 4512

; Standby (offscreen)
;-----------------------
[Statedef 4512]
type = A
movetype = I
physics = N
anim = 0
velset = 0,0
ctrl = 0

[State 4512, 1]
type = NotHitBy
trigger1 = 1
value = SCA

[State 4512, 2]
type = PlayerPush
trigger1 = 1
value = 0

[State 4512, 3] ; Prevents the camera from following the char
type = ScreenBound
trigger1 = 1
value = 0

[State 4512, 4] ; Gains life (optional)
type = LifeAdd
trigger1 = (gametime%10) = 0
value = 1

[State 4512, 5] ; always face the same direction as partner
type = turn
trigger1 = facing != partner,facing

[State 4512, 6] ; always stay behind and at the same distance of the char on the stage
type = posset
trigger1 = 1
x = (partner, pos x) - 1000*facing
y = -150

[State 4512, 7] ; prevent bugs when you win or lose by time over
type = ChangeState
triggerall = Alive
trigger1 = RoundState = 3
trigger1 = time >= 20
value = 4520


;---------------------------------------------------------------------------
; Jumping in (when partner is KOed)
[Statedef 4520]
type = S
movetype = I
physics = N
anim = 42
sprpriority = 2
ctrl = 0

[State 4520, 0]
type = PosSet
trigger1 = time = 0;AnimElem = 2, < 0
x = -243*(facing)
y = -80;0

[State 4520, 1]
type = VelSet
trigger1 = time = 4;AnimElem = 2, = 0
x = 12;4
y = 5; -8.75

[State 4520, 2]
type = NotHitBy
trigger1 = 1
value = SCA
time = 6

[State 4520, 3]
type = ScreenBound
trigger1 = 1
value = 0

;[State 4520, 8]
;type = Gravity
;trigger1 = time >= 4

[State 4520, 9]
type = VelSet
trigger1 = Vel Y >= 0
trigger1 = Pos Y >= 0
;trigger1 = AnimElem = 2, >= 0
x = 0
y = 0

[State 4520, 10]
type = ChangeState
trigger1 = Vel Y >= 0
trigger1 = Pos Y >= 0
;trigger1 = AnimElem = 2, >= 0
value = 4521

;---------------------------------------------------------------------------
; Landing
[Statedef 4521]
type = S
movetype = I
physics = N
anim = 47
sprpriority = 2
ctrl = 0

[State 4520, 0]
type = PosSet
trigger1 = Time = 0
y = 0

[State 4520, 5]
type = NotHitBy
trigger1 = 1
value = SCA
time = 6

[State 4520, 10]
type = ChangeState
trigger1 = AnimTime >= 0
value = 0
ctrl = 1

; Leaving Taunt (for assist attacks)
;--------------
[Statedef 4530]
type = S
movetype = I
physics = S
anim = 4510
sprpriority = -2
velset = 0,0
ctrl = 0

[State 4530, s1]
type = PlaySnd
trigger1 = AnimElem = 2
value = s4570, 0

[State 4510, 1] ; Prevents the camera from following the char
type = PlayerPush
trigger1 = 1
value = 0

[State 4510, 2]
type = ChangeState
trigger1 = animtime = 0
value = 4511 ; Return to your place man!!!!

; =======================================================================
; Dual Hyper Attacks section
; If you have played MvC or MvC2, you should know how this works.
; Basically, you perform a Hyper Move, then your partner jumps and do
; the same, resulting on a Dual Attack. By now is intended to look
; like it is in MvC2.
; This section is customizable, so change it according to your needs.
; =======================================================================

; Standby onscreen for Dual Hyper Attack
;---------------------------------------
[Statedef 4600]
type = S
movetype = I
physics = S
sprpriority = -2
velset = 0,0
ctrl = 0

; NEW !! Tag active definer
[State 4600, 1]
type = VarSet
trigger1 = time = [0,4]
var(30) = 2

; --------------------------------------------------------------------
; This part is customizable, you can add what you need to be done here

[State 4600, 2] ; TEAM ATTACK :
type = ChangeAnim
trigger1 = time = 0
trigger1 = selfanimexist(4600)	  ; <--- find first Hyper type...
value = 4600			  ; <--- do hyper move!

[State 4600, 3] ; Freeze hyper animation
type = ChangeAnim
trigger1 = time > 0
value = anim
; ---------------------------------------------------------------------

[State 4600, 4] ; the character cannot be hit since he is leaving
type = NotHitBy
trigger1 = 1
value = SCA

[State 4600, 5] ; Prevents the camera from following the char
type = PlayerPush
trigger1 = 1
value = 0

[State 4600, 6] ; Do the dual attack when partner reaches the floor
type = ChangeState
trigger1 = time = 8
value = 4612

; Landing on screen first (partner attack)
;-----------------------------------------
[Statedef 4601]
type = A
movetype = I
physics = N
anim = 42  ; <- Jumping In (Hey, I'm gonna kick your ass!!!!)
sprpriority = 2
ctrl = 0

[State 4601, 1] ; Prevents the camera from following the char
type = ScreenBound
trigger1 = 1
value = 0

; Starting position
[State 4601, 2]
type = PosSet
trigger1 = time = 0
x = (partner, pos x) - (200*(facing)) ; variable pos
y = -100

; Attack velocity
[State 4601, 3]
type = VelSet
trigger1 = Time = 0
x = 28
y = 14

[State 4601, 4]
type = PosSet
trigger1 = Pos Y >= 0
y = 0

[State 4601, 5]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y >= 0
value = 4602
ctrl = 0

; Dual Hyper Attack!!! (partner)
; ------------------------------
[Statedef 4602]
type = S
movetype = A
physics = S
sprpriority = 2
velset = 0, 0
ctrl = 0

[State 4602, 1] ; HYPER ATTACK :
type = ChangeAnim
trigger1 = time = 0
trigger1 = selfanimexist(4600)	  ; <--- custom Hyper Anim type...
value = 4600			  ; <--- do hyper anim!

; --------------------------------------------------------------------
; This part is customizable, you can add what you need to be done here
[State 1000, 2]
type = Width
trigger1 = time = [5,40]
value = 30,0

; Hyper BG effects (Dual Hyper Combo Mode)
; Thanks to _nabeshin_ for the Hyper BG Sprites.
[State 4602, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 12 
value = S3000,0 
volumescale = 255

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4 
value = S1201,1 
volumescale = 255

[State 0, VelMul]
type = VelMul
trigger1 = 1
x = 0

[State 0]
type = AfterImage
trigger1 = animelem = 1
time = 99999999
length = 40
framegap = 6
palcolor = 0  
;palinvertall = 0
palbright = 0, 0, 0
palcontrast = 100,100,255      

[State 0, EnvColor]
type = EnvColor
trigger1 = ProjHit = 1
value = 255,255,255
time = 1
under = 0
ignorehitpause = 0
;persistent =

[State 4602, s1]
type = SuperPause
trigger1 = AnimElem = 1
time = 50
anim = S6515
pos = 0, -55
sound = s8889, 0
darken = 0
poweradd = -1000

[State 0]
type = Explod
trigger1 =time = 5
ID = 6120
anim = 6120
postype = p1
pos = 21, 2
bindtime = 1
removetime = -2
sprpriority = 4
ownpal = 1
scale = 1,1
supermovetime = 9999 
pausemovetime = 0

[State Pre-Super Background]
type = Explod
trigger1 = time = 1
ID = 3000
anim = 8500
postype = left
pos = 0, 0
bindtime = -1
removetime = -2
sprpriority = -8
ownpal = 1
supermovetime = 9999

[State Super BG] 
type = Explod
trigger1 = time = 26
anim = 8502
ID = 3000
pos = -25,0
postype = left
bindtime = -1
removetime = 60
pausemovetime = 0
supermovetime = 9999
scale = .75,.76
sprpriority = -9
ownpal = 1
removeongethit = 1

[State 0, Fireball Dust Trail Helper]
type = Helper
trigger1 = AnimElem = 4
helpertype = Normal
name = "Dust Trail"
postype = p1
pos = 48,10
stateno = 10022
ownpal = 1
persistent = 0
size.xscale = 1
size.yscale = 1.07

[State 0, Projectile]
type = Projectile
trigger1 = animelem = 4
ProjID = 3000
projanim = 2000
projhitanim = 2001
projscale = 1.5,1.5
projremove = 1
projhits = 4
projpriority = 8
projsprpriority = 3
offset = 55,-86
velocity = 13.8,0
getpower = 0,0
givepower = 15,0
postype = p1         ;p2,front,back,left,right
; HitDef
attr = SC, HP, HA       ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = hard          ;light,medium,hard,back,up,diagup
air.animtype = hard
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 55,4
pausetime = 4,14
hitsound   = s8000,6
guardsound = S8500,0
sparkno = s6511
guard.sparkno = S6510
sparkxy = 25,0
ground.type = high      ;Low,Trip,None
air.type = high
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 20
guard.hittime = 8
ground.velocity = -26,-9
guard.velocity = -6
air.velocity = -26,-8
airguard.velocity = -6,0
ground.cornerpush.veloff = -20
air.cornerpush.veloff = -20
down.cornerpush.veloff = -20
guard.cornerpush.veloff = -20
airguard.cornerpush.veloff = -20
fall = 1
yaccel = .82
fall.recover = 1
fall.recovertime = 25
fall.xvelocity = 0
fall.yvelocity = -2
forcenofall = 1

[State 3000]
type = ChangeState
trigger1 = AnimTime = 0 
value = 3001
ctrl = 0

[State 4602, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 4603

; Wait for partner to finish his move (if needed)
; -----------------------------------------------
[Statedef 4603]
type = S
movetype = I
physics = S
sprpriority = 2
velset = 0, 0
ctrl = 0

[State 4603, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 12

[State 4603, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 12
trigger1 = Animtime = 0
value = 0

[State 4602, 2]
type = ChangeState
trigger1 = Partner, stateno = 4511
value = 0
ctrl = 1

; Dual Hyper Attack!!! (You)
; ------------------------------
[Statedef 4612]
type = S
movetype = A
physics = S
sprpriority = 2
velset = 0, 0
ctrl = 0

[State 4612, 1] ; HYPER ATTACK :
type = ChangeAnim
trigger1 = time = 0
trigger1 = selfanimexist(4600)	  ; <--- find first Hyper Anim type...
value = 4600			  ; <--- do hyper anim!

; --------------------------------------------------------------------
; This part is customizable, you can add what you need to be done here

[State 0, HandsOff]
type = NotHitBy
trigger1 = AnimElem = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST
time = 28
IgnoreHitPause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 12 
value = S3000,0 
volumescale = 255

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4 
value = S1201,1 
volumescale = 255

[State 0, VelMul]
type = VelMul
trigger1 = 1
x = 0

[State 0]
type = AfterImage
trigger1 = animelem = 1
time = 99999999
length = 40
framegap = 6
palcolor = 0  
;palinvertall = 0
palbright = 0, 0, 0
palcontrast = 100,100,255      

[State 0, EnvColor]
type = EnvColor
trigger1 = ProjHit = 1
value = 255,255,255
time = 1
under = 0
ignorehitpause = 0
;persistent =

[State 0]
type = SuperPause
trigger1 = time = 0
darken = 0
anim = S6515
sound = s8889, 0
pos = 56,-80
movetime = 0;70
poweradd = -1000
Time = 0;70
p2defmul = 1.4;2

[State 0]
type = Explod
trigger1 =time = 5
ID = 6120
anim = 6120
postype = p1
pos = 21, 2
bindtime = 1
removetime = -2
sprpriority = 4
ownpal = 1
scale = 1,1
supermovetime = 9999 
pausemovetime = 0

[State Pre-Super Background]
type = Explod
trigger1 = time = 1
ID = 3000
anim = 8500
postype = left
pos = 0, 0
bindtime = -1
removetime = -2
sprpriority = -8
ownpal = 1
supermovetime = 9999

[State Super BG] 
type = Explod
trigger1 = time = 26
anim = 8502
ID = 3000
pos = -25,0
postype = left
bindtime = -1
removetime = 60
pausemovetime = 0
supermovetime = 9999
scale = .75,.76
sprpriority = -9
ownpal = 1
removeongethit = 1

[State 0, Fireball Dust Trail Helper]
type = Helper
trigger1 = AnimElem = 4
helpertype = Normal
name = "Dust Trail"
postype = p1
pos = 48,10
stateno = 10022
ownpal = 1
persistent = 0
size.xscale = 1
size.yscale = 1.07

[State 0, Projectile]
type = Projectile
trigger1 = animelem = 4
ProjID = 3000
projanim = 2000
projhitanim = 2001
projscale = 1.5,1.5
projremove = 1
projhits = 4
projpriority = 8
projsprpriority = 3
offset = 55,-86
velocity = 13.8,0
getpower = 0,0
givepower = 15,0
postype = p1         ;p2,front,back,left,right
; HitDef
attr = SC, HP, HA       ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = hard          ;light,medium,hard,back,up,diagup
air.animtype = hard
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 55,4
pausetime = 4,14
hitsound   = s8000,6
guardsound = S8500,0
sparkno = s6511
guard.sparkno = S6510
sparkxy = 25,0
ground.type = high      ;Low,Trip,None
air.type = high
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 20
guard.hittime = 8
ground.velocity = -26,-9
guard.velocity = -6
air.velocity = -26,-8
airguard.velocity = -6,0
ground.cornerpush.veloff = -20
air.cornerpush.veloff = -20
down.cornerpush.veloff = -20
guard.cornerpush.veloff = -20
airguard.cornerpush.veloff = -20
fall = 1
yaccel = .82
fall.recover = 1
fall.recovertime = 25
fall.xvelocity = 0
fall.yvelocity = -2
forcenofall = 1

[State 3000]
type = ChangeState
trigger1 = AnimTime = 0 
value = 3001
ctrl = 0

[State 4602, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 4511
ctrl = 1

; =======================================================================
; Assist Attacks section
; As in MvC and MvC2, you can summon your partner to make an assist
; move, then he will taunt and leave, the basic difference between
; MvC2 version and this one is that your can use the alpha, beta or
; gamma assits if you hold a certain direction in the pad, so, the
; order of the attacks are:
; - Alpha Assist: y+b
; - Beta Assist: y+b + holding back
; - Gamma Assist: y+b + holding down.
; The only thing missing is the ability of calling out your partner
; when you are jumping (just normal jump, in super jump this is not
; posible).
; =======================================================================

; Standby onscreen for assist
;----------------------------
[Statedef 4700]
type = S
movetype = I
physics = S
sprpriority = -2
ctrl = 0
velset = 0, 0

; --------------------------------------------------------------------
; This part is customizable, you can add what you need to be done here

[State 4700, 1a] ; TAUNT A :
type = ChangeAnim
triggerall = time = 0
trigger1 = selfanimexist(4700)	  ; <--- find custom taunt anim...
value = 4700			  ; <--- do animation!

[State 4700, 1b] ; TAUNT B :
type = ChangeAnim
triggerall = time = 0
triggerall = !selfanimexist(4700) ; <--- if custom anim not found
trigger1 = selfanimexist(195)	  ; <--- find normal taunt...
value = 195			  ; <--- do animation!

[State 3000, s1]
type = PlaySnd
triggerall = anim = 4700
trigger1 = AnimElem = 2
value = s2, 1

[State 4700, 2]
type = CtrlSet
trigger1 = AnimTime = 40
value = 1

[State 4700, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Jumping into the screen first (partner)
;----------------------------------------
[Statedef 4701]
type = A
movetype = I
physics = N
anim = 45  ; <- Jumping In (Hey, I'm gonna kick your ass!!!!)
sprpriority = 2
ctrl = 0

; NEW !! Tag active definers --------------------------------
[State 4701, 1a]
type = VarSet
trigger1 = time = [0,1]         ;Alpha Assist
var(30) = 3

[State 4701, 1b]
type = VarSet
trigger1 = command = "holdback" ;Beta Assist
var(30) = 4

[State 4701, 1c]
type = VarSet
trigger1 = command = "holddown" ;Gamma Assist
var(30) = 5
; -----------------------------------------------------------

[State 4701, 2] ; Prevents the camera from following the char
type = ScreenBound
trigger1 = 1
value = 0

; Starting position
[State 4701, 3]
type = PosSet
trigger1 = time = 0
x = (partner, pos x) - (200*(facing)) ; variable pos
y = -100

; Attack velocity
[State 4701, 4]
type = VelSet
trigger1 = Time = 0
x = 15
y = 7

[State 4701, 5]
type = PosSet
trigger1 = Pos Y >= 0
y = 0

; --------------------------------------------------------------------
; This part is customizable, you can add what you need to be done here

; Do assist attack depending on what dir is holding the partner
[State 4701, 6]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y >= 0
value = ifelse(var(30) = 4, 4712, ifelse(var(30) = 5, 4722, 4702))
ctrl = 0


; Assist attacks (All attacks can be customized depending on the char)
;------------------------------------------------------------------------

; Alpha
; -------------
[Statedef 4702]
type = S
movetype = A
physics = N
sprpriority = 1
poweradd = 125
velset = 0, 0
ctrl = 0

[State 4601, 1b] ; ASSIST ATTACK :
type = ChangeAnim
triggerall = time = 0
trigger1 = selfanimexist(1000)	  ; <--- find assist attack...
value = 1000			  ; <--- do animation!

; Below code must be modified if you use another type of assist attack
; --------------------------------------------------------------------
[State 0, NotHitBy]
type = NotHitBy
trigger1 = animelem = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST
time = 14

[State 0]
type = Explod
trigger1 =time = 4
ID = 6120
anim = 6120
postype = p1
pos = 21, 2
bindtime = 1
removetime = -2
sprpriority = 4
ownpal = 1
scale = 1,1
supermovetime = 9999

[State 100]
type = Explod
trigger1 = animelem = 3
anim = 6900
id = 6900
pos = -44,-48
scale = .85,.9
bindtime = -1
ownpal = 1
sprpriority = 5
removetime = -1
removeongethit = 1
pausemovetime = 9999999999
supermovetime = 9999999999 

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = Time > 18 
trigger2 = (movecontact)
trigger3 = (movehit)
id = 6900
ignorehitpause = 1

[State 0, PlaySnd] 
type = PlaySnd
trigger1 = time = 7
value = S1010,0
volumescale = 255

[State 0, PlaySnd] 
type = PlaySnd
trigger1 = time = 4
value = S13,0+ (random%2)
volumescale = 255
channel = 1

[State 0, VelAdd]
type = velset
trigger1 = animelem = 2
x = 10

[State 0, Vel]
type = veladd
trigger1 = AnimElemTime(2) > 0
x = .35

[State 0, NotHitBy]
type = NotHitBy
trigger1 = animelem = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST
time = 8

[State 1000, 1]
type = HitDef
trigger1 = !time
attr = SA, NA			
damage = 100, 0			
animtype = hard			
guardflag = MA			
hitflag = MAF			
priority = 3, Hit								
pausetime = 11, 12			
sparkno = s6511
guard.sparkno = S6510				
sparkxy = -10, -48							
hitsound = s8000, 6			
guardsound = S8500,0		
ground.type = High		
ground.slidetime = 18		
ground.hittime  = 18		
ground.velocity = -6,-4		
airguard.velocity = -1.9,-.8	
air.type = low			
air.velocity = -1.4,-3						
air.hittime = 18			
yaccel = .6
fall = 1
fall.xvelocity =0
fall.yvelocity =-2
ground.cornerpush.veloff = -30
guard.cornerpush.veloff = -20
airguard.cornerpush.veloff =-20
air.cornerpush.veloff = -20
forcenofall = 1

[State 1000, 5]
type = ChangeState
trigger1 = Time > 18
trigger2 = (movecontact)
trigger3 = (movehit)
value = 1098 
ctrl = 0

[State 4601, 8]
type = ChangeState
trigger1 = Time > 18
value = 4530

; Beta
; -------------
[Statedef 4712]
type = S
movetype = A
physics = S
sprpriority = 1
poweradd = 100
velset = 0,0
ctrl = 0

[State 4601, 1b] ; ASSIST ATTACK :
type = ChangeAnim
triggerall = time = 0
trigger1 = selfanimexist(1100)	  ; <--- find assist attack...
value = 1100			  ; <--- do animation!

; Below code must be modified if you use another type of assist attack
; --------------------------------------------------------------------

[State 4701, 2] ; Prevents the camera from following the char
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 0]
type = Explod
trigger1 =time = 4
ID = 6120
anim = 6120
postype = p1
pos = 21, 2
bindtime = 1
removetime = -2
sprpriority = 4
ownpal = 1
scale = 1,1
supermovetime = 9999

[State 0, VelAdd]
type = velset
trigger1 = animelem = 1
x = 0


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4 || animelem = 8 || animelem = 12 || animelem = 16 || animelem = 20
value = S1201,0 
volumescale = 255

[State 0, Width]
type = Width
trigger1 = time = [5,9]
value = 30,0

[State 0, Projectile]
type = Projectile
trigger1 = animelem = 3
ProjID = 1200
projanim = 1290
projhitanim = 1295
projscale = 1,1
projremove = 1
projhits = 1
projpriority = 1
projsprpriority = 1
offset = 55,-86
velocity = 8,0
postype = p1         ;p2,front,back,left,right
; HitDef
attr = S, SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = hard          ;light,medium,hard,back,up,diagup
air.animtype = hard
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 25,2
pausetime = 0,12
hitsound   = s8000,6
guardsound = S8500,0
sparkno = s6511
guard.sparkno = S6510
sparkxy = 0,0
ground.type = high      ;Low,Trip,None
air.type = high
ground.slidetime = 10
guard.slidetime = 6
ground.hittime = 20
guard.hittime = 2
ground.velocity = -4,0
guard.velocity = -6
air.velocity = -3,-3
airguard.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
airguard.ctrltime = 0
hitonce = 1
fall = 0
;envshake.time = 10
;envshake.freq = 70
;envshake.ampl = -4
yaccel = .6
fall.recover = 0
fall.xvelocity = 0
fall.yvelocity = 1
forcenofall = 1

[State 0, Projectile]
type = Projectile
trigger1 = animelem = 7
ProjID = 1200
projanim = 1290
projhitanim = 1295
projscale = 1,1
projremove = 1
projhits = 1
projpriority = 1
projsprpriority = 1
offset = 55,-86
velocity = 8,0
postype = p1         ;p2,front,back,left,right
; HitDef
attr = S, SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = hard          ;light,medium,hard,back,up,diagup
air.animtype = hard
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 25,2
pausetime = 0,12
hitsound   = s8000,6
guardsound = S8500,0
sparkno = s6511
guard.sparkno = S6510
sparkxy = 0,0
ground.type = high      ;Low,Trip,None
air.type = high
ground.slidetime = 10
guard.slidetime = 6
ground.hittime = 20
guard.hittime = 2
ground.velocity = -4,0
guard.velocity = -6
air.velocity = -3,-3
airguard.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
airguard.ctrltime = 0
hitonce = 1
fall = 0
;envshake.time = 10
;envshake.freq = 70
;envshake.ampl = -4
yaccel = .6
fall.recover = 0
fall.xvelocity = 0
fall.yvelocity = 1

[State 0, Projectile]
type = Projectile
trigger1 = animelem = 11
ProjID = 1200
projanim = 1290
projhitanim = 1295
projscale = 1,1
projremove = 1
projhits = 1
projpriority = 1
projsprpriority = 1
offset = 55,-86
velocity = 8,0
postype = p1         ;p2,front,back,left,right
; HitDef
attr = S, SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = hard          ;light,medium,hard,back,up,diagup
air.animtype = hard
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 25,2
pausetime = 0,12
hitsound   = s8000,6
guardsound = S8500,0
sparkno = s6511
guard.sparkno = S6510
sparkxy = 0,0
ground.type = high      ;Low,Trip,None
air.type = high
ground.slidetime = 10
guard.slidetime = 6
ground.hittime = 20
guard.hittime = 2
ground.velocity = -4,0
guard.velocity = -6
air.velocity = -3,-3
airguard.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
airguard.ctrltime = 0
hitonce = 1
fall = 0
;envshake.time = 10
;envshake.freq = 70
;envshake.ampl = -4
yaccel = .6
fall.recover = 0
fall.xvelocity = 0
fall.yvelocity = 1
forcenofall = 1

[State 0, Projectile]
type = Projectile
trigger1 = animelem = 15
ProjID = 1200
projanim = 1290
projhitanim = 1295
projscale = 1,1
projremove = 1
projhits = 1
projpriority = 1
projsprpriority = 1
offset = 55,-86
velocity = 8,0
postype = p1         ;p2,front,back,left,right
; HitDef
attr = S, SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = hard          ;light,medium,hard,back,up,diagup
air.animtype = hard
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 25,2
pausetime = 0,12
hitsound   = s8000,6
guardsound = S8500,0
sparkno = s6511
guard.sparkno = S6510
sparkxy = 0,0
ground.type = high      ;Low,Trip,None
air.type = high
ground.slidetime = 10
guard.slidetime = 6
ground.hittime = 20
guard.hittime = 2
ground.velocity = -4,0
guard.velocity = -6
air.velocity = -3,-3
airguard.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
airguard.ctrltime = 0
hitonce = 1
fall = 0
;envshake.time = 10
;envshake.freq = 70
;envshake.ampl = -4
yaccel = .6
fall.recover = 0
fall.xvelocity = 0
fall.yvelocity = 1
forcenofall = 1

[State 0, Projectile]
type = Projectile
trigger1 = animelem = 19
ProjID = 1200
projanim = 1290
projhitanim = 1295
projscale = 1,1
projremove = 1
projhits = 1
projpriority = 1
projsprpriority = 1
offset = 55,-86
velocity = 8,0
postype = p1         ;p2,front,back,left,right
; HitDef
attr = S, SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = hard          ;light,medium,hard,back,up,diagup
air.animtype = hard
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 25,2
pausetime = 0,12
hitsound   = s8000,6
guardsound = S8500,0
sparkno = s6511
guard.sparkno = S6510
sparkxy = 0,0
ground.type = high      ;Low,Trip,None
air.type = high
ground.slidetime = 10
guard.slidetime = 6
ground.hittime = 20
guard.hittime = 2
ground.velocity = -4,0
guard.velocity = -6
air.velocity = -3,-3
airguard.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
airguard.ctrltime = 0
hitonce = 1
fall = 0
;envshake.time = 10
;envshake.freq = 70
;envshake.ampl = -4
yaccel = .6
fall.recover = 0
fall.xvelocity = 0
fall.yvelocity = 1
forcenofall = 1

[State 1103, End]
type = ChangeState
trigger1 = animTime = 0
value = 4713
ctrl = 0
;=================================
[StateDef 4713]
type = A
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 1110
poweradd = 60
facep2 = 1

[State 4701, 2] ; Prevents the camera from following the char
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 1110] 
type = VelAdd
Trigger1 = time >= 12
y = .8

[State 1110, VelSet]
type = VelSet
trigger1 = AnimElem = 1
y = -10

[State 0, HandsOff]
type = NotHitBy
trigger1 = AnimElem = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST
time = 5
IgnoreHitPause = 1

[State 1110]
type = HitDef
trigger1 = Animelem = 1
attr = A, SA
animtype  = UP
damage    = 35, 4
getpower = 0, 0
givepower = 0, 0
priority  = 4
guardflag = MA
pausetime = 8,8
guard.pausetime = 8,8
sparkno = s6514
guard.sparkno = s4023
sparkxy = -10,-60
hitsound   = s8000,3
guardsound = s8500,0
ground.type = Low
ground.slidetime = 4
ground.hittime = 20
ground.velocity = 0,-8
air.velocity = 0,-6
fall = 1
fall.xvelocity =0
fall.yvelocity =-2
fall.recover = 0
air.fall = 1
fall.yvelocity = 20
palfx.time = 60
palfx.color = 0
palfx.add = 100,0,-180
palfx.sinadd = 20,20,40,10
yaccel = .6

[State 1110]
type = HitDef
trigger1 = Animelem = 3
attr = A, SA
animtype  = UP
damage    = 35, 4
getpower = 0, 0
givepower = 0, 0
priority  = 4
guardflag = MA
pausetime = 8,8
guard.pausetime = 8,8
sparkno = s6514
sparkxy = -10,-60
hitsound   = s8000,3
guardsound = s8500,0
ground.type = Low
ground.slidetime = 4
ground.hittime = 20
ground.velocity = 0,-5
air.velocity = 0,-6
fall = 1
fall.xvelocity =0
fall.yvelocity =-2
fall.recover = 0
fall.xvelocity =0
fall.yvelocity =-2
fall.recover = 0
air.fall = 1
fall.yvelocity = 30
palfx.time = 60
palfx.color = 0
palfx.add = 100,0,-180
palfx.sinadd = 20,20,40,10
yaccel = .6

[State 1110]
type = HitDef
trigger1 = Animelem = 5
attr = A, SA
animtype  = UP
damage    = 35, 4
getpower = 0, 0
givepower = 0, 0
priority  = 4
guardflag = MA
pausetime = 8,8
guard.pausetime = 8,8
sparkno = s6514
sparkxy = -10,-60
hitsound   = s8000,3
guardsound = s8500,0
ground.type = Low
ground.slidetime = 4
ground.hittime = 20
ground.velocity = 0,-5
air.velocity = 0,-6
fall = 1
fall.xvelocity =0
fall.yvelocity =-2
fall.recover = 0
fall.xvelocity =0
fall.yvelocity =-2
fall.recover = 0
air.fall = 1
fall.yvelocity = 30
palfx.time = 60
palfx.color = 0
palfx.add = 100,0,-180
palfx.sinadd = 20,20,40,10
yaccel = .6


[State 1110]
type = HitDef
trigger1 = Animelem = 7
attr = A, SA
animtype  = UP
damage    = 35, 4
getpower = 0, 0
givepower = 0, 0
priority  = 4
guardflag = MA
pausetime = 8,8
guard.pausetime = 8,8
sparkno = s6514
sparkxy = -10,-60
hitsound   = s8000,3
guardsound = s8500,0
ground.type = Low
ground.slidetime = 4
ground.hittime = 20
ground.velocity = 0,-5
air.velocity = -2,-8
fall = 1
fall.xvelocity =0
fall.yvelocity =-2
fall.recover = 0
fall.xvelocity =0
fall.yvelocity =-2
fall.recover = 0
air.fall = 1
fall.yvelocity = 30
palfx.time = 60
palfx.color = 0
palfx.add = 100,0,-180
palfx.sinadd = 20,20,40,10
yaccel = .6

[State 1110]
type = HitDef
trigger1 = Animelem = 9
attr = A, SA
animtype  = UP
damage    = 35, 4
getpower = 0, 0
givepower = 0, 0
priority  = 4
guardflag = MA
pausetime = 10,10
guard.pausetime = 8,8
sparkno = s6514
sparkxy = -10,-60
hitsound   = s8000,3
guardsound = s8500,0
ground.type = Low
ground.slidetime = 4
ground.hittime = 20
ground.velocity = 0,-5
air.velocity = -2,-8
fall = 1
fall.xvelocity =0
fall.yvelocity =-2
fall.recover = 0
fall.xvelocity =0
fall.yvelocity =-2
fall.recover = 0
air.fall = 1
fall.yvelocity = 30
palfx.time = 60
palfx.color = 0
palfx.add = 100,0,-180
palfx.sinadd = 20,20,40,10
yaccel = .6

[State 0]
type = Explod
trigger1 = MoveHit
trigger1 = NumExplod(4040) = 0
trigger1 = NumTarget > 0
;trigger1 = floor((target, Pos X - Pos X)*facing) = P2Dist X
;trigger1 = target, Pos Y - Pos Y = P2Dist Y
trigger1 = target, Life = P2Life
trigger1 = target, StateNo = P2StateNo
trigger1 = P2MoveType = H
ID = 4040
postype = p2
anim = 4040
bindtime = -1
ignorehitpause = 1
ownpal = 1
scale = .83,1

[State 1110, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 4714
ctrl = 0

;--------------------------------
[Statedef 4714]
type    = A
movetype= I
physics = N
poweradd = 0
velset = 0,0
anim =1102
ctrl = 0
sprpriority = 4


[State 4701, 2] ; Prevents the camera from following the char
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 1102, VelSet]
type = Gravity
trigger1 = 1

[State 1210, 4]
type = PosSet
Trigger1 = Pos y >= 0
y = 0

[State 1200, 3]
type = ChangeState
trigger1 = Pos Y >= 0
value = 4530

;-----------------------------------------------

;----------------------------------------------------------


; Gamma
; -------------
[Statedef 4722]
type = S
movetype = A
physics = S
sprpriority = 1
poweradd = 110
velset = 0,0
ctrl = 0

[State 4601, 1b] ; ASSIST ATTACK :
type = ChangeAnim
triggerall = time = 0
trigger1 = selfanimexist(1300)	  ; <--- find assist attack...
value = 1300			  ; <--- do animation!

; Below code must be modified if you use another type of assist attack
; --------------------------------------------------------------------


[State 4701, 2] ; Prevents the camera from following the char
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0


[State 0, HandsOff]
type = NotHitBy
trigger1 = AnimElem = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST
time = 15
IgnoreHitPause = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0]
type = PlaySnd
trigger1 = animelem = 2
value = s1000, 0 + (random%4)
channel = 0

[State 0]
type = PlaySnd
trigger1 = time = 6
value = s1009, 1
channel = 1

[State 0]
type = Explod
trigger1 =time = 16
ID = 6125
anim = 6125
postype = p1
pos = 21, 2
bindtime = 1
removetime = 48
sprpriority = 6
ownpal = 1
removeongethit = 1
scale = 1,1
supermovetime = 9999

[State 0]
type = Explod
trigger1 =time = 16
ID = 6125
anim = 6125
postype = p1
pos = -21, 2
bindtime = 1
removetime = 48
sprpriority = 6
facing = -1
ownpal = 1
removeongethit = 1
scale = 1,1
supermovetime = 9999

[State 0]
type = Explod
trigger1 = time = 10
ID = 1398
anim = 1398
postype = p1
pos = 3,-56
bindtime = 9999999999
removetime = 47
sprpriority = 5
ownpal = 1
scale = 0.53,0.57
removeongethit = 1
pausemovetime = 0
supermovetime = 0 

[State 0]
type = Explod
trigger1 = time = 48
ID = 1399
anim = 1399
postype = p1
pos = 3,-56
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1
scale = 0.53,0.57
removeongethit = 1
pausemovetime = 0
supermovetime = 0 

[State 0, EnvColor]
type = EnvColor
trigger1 = moveHit = 1
value = 255,255,255
time = 1
under = 0
ignorehitpause = 0
;persistent =

[State 1000, 1]
type = HitDef
trigger1 = animelem = 4
attr =  SA,SP			
damage = 16, 4			
animtype = hard			
guardflag = MA			
hitflag = MAF			
priority = 5, Hit								
pausetime = 0, 8			
sparkno = s6511
guard.sparkno = S6510				
sparkxy = -10, -43						
hitsound = s8000, 6			
guardsound = S8500,0			
ground.type = low		
ground.slidetime = 14		
ground.hittime  = 24		
ground.velocity = 4.8,-2		
airguard.velocity = -1.9,-.8	
air.type = low			
air.velocity = 4.8,-2						
air.hittime = 16			
yaccel = .6
fall = 0
fall.xvelocity =0
fall.yvelocity =-2
ignorehitpause = 1
palfx.time = 40
Palfx.add = 100,100,180 
Palfx.sinadd = -80,-80,-80,10
Palfx.color = 0 
Palfx.invertall = 0
forcenofall = 1

[State 1000, 1]
type = HitDef
trigger1 = animelem = 6
attr =  SA,SP			
damage = 16, 4			
animtype = med			
guardflag = MA			
hitflag = MAF			
priority = 5, Hit								
pausetime = 0, 8			
sparkno = s6511
guard.sparkno = S6510				
sparkxy = -10, -73						
hitsound = s8000, 6			
guardsound = S8500,0		
ground.type = High		
ground.slidetime = 14		
ground.hittime  = 24		
ground.velocity = 4.8,-2		
airguard.velocity = -1.9,-.8	
air.type = high			
air.velocity = 4.8,-2						
air.hittime = 16			
yaccel = .6
fall = 0
fall.xvelocity =0
fall.yvelocity =-2
ignorehitpause = 1
palfx.time = 40
Palfx.add = 100,100,180 
Palfx.sinadd = -80,-80,-80,10
Palfx.color = 0 
Palfx.invertall = 0
forcenofall = 1

[State 1000, 1]
type = HitDef
trigger1 = animelem = 8
attr =  SA,SP			
damage = 16, 4			
animtype = hard			
guardflag = MA			
hitflag = MAF			
priority = 5, Hit								
pausetime = 0, 8			
sparkno = s6511
guard.sparkno = S6510				
sparkxy = -10, -23						
hitsound = s8000, 6			
guardsound = S8500,0			
ground.type = low		
ground.slidetime = 14		
ground.hittime  = 24		
ground.velocity = 4.8,-2		
airguard.velocity = -1.9,-.8	
air.type = low			
air.velocity = 4.8,-2						
air.hittime = 16			
yaccel = .6
fall = 0
fall.xvelocity =0
fall.yvelocity =-2
ignorehitpause = 1
palfx.time = 40
Palfx.add = 100,100,180 
Palfx.sinadd = -80,-80,-80,10
Palfx.color = 0 
Palfx.invertall = 0
forcenofall = 1

[State 1000, 1]
type = HitDef
trigger1 = time > 47
attr =  SA,SP			
damage = 16, 4			
animtype = hard			
guardflag = MA			
hitflag = MAF			
priority = 5, Hit								
pausetime = 0, 8			
sparkno = s6511
guard.sparkno = S6510				
sparkxy = -10, -46						
hitsound = s8000, 6			
guardsound = S8500,0		
ground.type = High		
ground.slidetime = 14		
ground.hittime  = 24		
ground.velocity = -8,-8		
airguard.velocity = -1.9,-.8	
air.type = low			
air.velocity = -8,-8						
air.hittime = 16			
yaccel = .8
fall = 1
fall.xvelocity =0
fall.yvelocity =-2
ignorehitpause = 1
palfx.time = 40
Palfx.add = 100,100,180 
Palfx.sinadd = -80,-80,-80,10
Palfx.color = 0 
Palfx.invertall = 0
ground.cornerpush.veloff = -20
air.cornerpush.veloff = -20
down.cornerpush.veloff = -20
guard.cornerpush.veloff = -20
airguard.cornerpush.veloff = -20
forcenofall = 1

[State 1300]
type = ChangeState
trigger1 = Time > 48 
value = 1301
ctrl = 1

[State 1120, 7]
type = ChangeState
trigger1 = Time > 48 
value = 4530
ctrl = 0

;---------------------------

; =======================================================================
; Partner Counter Move
; This feature is already used in MvC, consists on changing your partner
; in the middle of guarding, this costs one stock, you can call it an
; emergency tag.
; This section is customizable, so change it according to your needs.
; =======================================================================

; Partner Counter Move (Going Out)
;---------------------------------------
[Statedef 4800]
type = S
movetype = I
physics = S
sprpriority = -2
anim = 40
velset = 0,0
ctrl = 0

; NEW !! Tag active definer
[State 4800, 1]
type = VarSet
trigger1 = time = [0,1]
var(30) = 2

[State 4800, 2]
type = SuperPause
trigger1 = time = 2
time = 20
anim = s9101
sound = s4, 11
pos = 30, -60
poweradd = -1000
unhittable = 1
ignorehitpause = 1

[State 4800, 3] ; the character cannot be hit since he is leaving
type = NotHitBy
trigger1 = 1
value = SCA

[State 4800, 4] ; Prevents the camera from following the char
type = PlayerPush
trigger1 = 1
value = 0

[State 4800, 5] ; Exit screen
type = ChangeState
trigger1 = time = 3
value = 4511

; Landing on screen first (partner)
;----------------------------------
[Statedef 4801]
type = A
movetype = I
physics = N
anim = 42  ; <- Jumping In (Hey, I'm gonna kick your ass!!!!)
sprpriority = 2
ctrl = 0

[State 4801, 1] ; Prevents the camera from following the char
type = ScreenBound
trigger1 = 1
value = 0

; Starting position
[State 4801, 2]
type = PosSet
trigger1 = time = 0
x = (partner, pos x) - (200*(facing)) ; variable pos
y = -120

; Attack velocity
[State 4801, 3]
type = VelSet
trigger1 = Time = 0
x = 22
y = 18

[State 4801, 4]
type = PosSet
trigger1 = Pos Y >= 0
y = 0

[State 4801, 5] ; the character cannot be hit since he is leaving
type = NotHitBy
trigger1 = 1
value = SCA

[State 4801, 6]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y >= 0
value = 4802
ctrl = 0

; Alpha Counter
; ---------------
[Statedef 4802]
type = S
movetype = A
physics = S
sprpriority = 2
poweradd = 125
velset = 0, 0
ctrl = 0

[State 4802, 1] ; COUNTER ATTACK :
type = ChangeAnim
triggerall = time = 0
trigger1 = selfanimexist(1200)	  ; <--- find counter attack...
value = 1200			  ; <--- do animation!

; Below code must be modified if you use another type of assist attack
; --------------------------------------------------------------------

[State 1200, 6]
type = ChangeState
Trigger1 = Pos y < 0
Trigger1 = Vel y >= 0
value = 4803
ctrl = 0

;------------------------------
[Statedef 4803]
type     = A
movetype = A
physics  = N
anim = 1210
velset = 7.5, 6.4
ctrl = 0

[State 1210, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3, 18
channel = 0

[State 1210, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = A, SA
animtype  = Hard
damage    = 20,5
getpower = 20, 10
guardflag = MA
pausetime = 10,10
sparkno = -1
guard.sparkno = -1
hitsound   = s1+(6*var(12)),3-(2*var(12))
guardsound = s9, 0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 17
ground.velocity = -4
air.velocity = -2,-4

[State 1210, Hit/Guard Spark]
type = Explod
trigger1 = MoveContact
anim = ifelse(MoveHit, 9042, 9043)
postype = p1
pos = Floor(P2Dist X - 10), Floor(P2Dist Y - 35)
bindtime = 1
removetime = -2
supermovetime = 50
scale = 0.5, 0.5
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1210, 3]
type = ChangeState
trigger1 = MoveContact
value = 4804
ctrl = 0
ignorehitpause = 0

[State 1210, 4]
type = PosSet
Trigger1 = Pos y >= 0
y = 0

[State 1210, Ch]
type = ChangeState
trigger1 = Pos Y >= 0
value = 52
ctrl = 1

;----------------------------------------------------------
[Statedef 4804]
type    = A
movetype= A
physics = N
anim = 1220
velset = 7,6
ctrl = 0

[State 1220, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = A, SA
animtype  = Hard
damage    = 20,6
getpower = 20, 10
guardflag = MA
pausetime = 12,12
sparkno = -1
guard.sparkno = -1
hitsound   = s1+(6*var(12)),3-(2*var(12))
guardsound = s9, 0
ground.type = Low
ground.slidetime = 19
ground.hittime  = 19
ground.velocity = -4,-4
air.velocity = -15, 8
fall = 1
fall.yvelocity = 0
fall.recover = 0

[State 1220, Hit/Guard Spark]
type = Explod
trigger1 = MoveContact
anim = ifelse(MoveHit, 9042, 9043)
postype = p1
pos = Floor(P2Dist X - 10), Floor(P2Dist Y - 35)
bindtime = 1
removetime = -2
supermovetime = 50
scale = 0.5, 0.5
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1210, 4]
type = PosSet
Trigger1 = Pos y >= 0
y = 0

[State 1210, Ch]
type = ChangeState
trigger1 = Pos Y >= 0
value = 52
ctrl = 1
;======================================================
[StateDef 40001]
type = A
movetype= A
physics = N
velset = 0,0
anim = -1
juggle  = 5
ctrl = 0
sprpriority = 1

[State 3000, Projectile]
type = Projectile
trigger1 = !time
projid = 3000
projanim = 3001
projhitanim = 1002
projpriority = 3
projscale = 2,2
projheightbound = -240, 100
projedgebound = 100
projshadow = -1
projhits = 6
;projremovetime = 20
offset = 0,0
velocity = 14,0
attr = SC, HP, HA
damage   = 32,8
getpower = 0,0
givepower = 20,0
animtype = heavy
guardflag = MA
hitflag = MAF
pausetime = 5,14
guard.sparkno = s4023
guard.pausetime = 5,10
sparkno = S6511
hitsound   = s8000,6
sparkxy = 15, -5
guardsound = s8500,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -4,-13
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0
fall.xvelocity =0
fall.yvelocity =-2
fall= 1
yaccel = .8

[state 3001, parentvaradd]
type = parentvaradd
trigger1 = projhit3001 = 1
v = 18
value = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 0
value = 1002
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact
ignorehitpause = 1
value = 1003
ctrl = 0